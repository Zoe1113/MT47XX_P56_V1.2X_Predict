#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_Key.c
说    明：	  按键相关设置集合（底层/应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_Key_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief     在Timer_Journey时间线上取固定的时间段
  * @param  Start_Time: 起始时间
  * @param  Time_Interval: 时间间隔
  * @retval   以Start_Time为起始时间Time_Interval时间是否达到
*/
uint8 Timer_Experience(uint32 Start_Time,uint32 Time_Interval)
{
	if(sTimeStamp.Timer_Journey >= Start_Time)
	{
		if(sTimeStamp.Timer_Journey > (Time_Interval  + Start_Time))
		{
			return TRUE;
		}
		else
		{
			return FALSE;
		}
	}
}

/*
  * @brief     按键检测模块
  * @param  None
  * @retval   None
*/
void Key_Detect(void)
{
	uint8 Result;

	switch(eButton_Status)
	{
		/*消除按键抖动*/
		/*消除抖动时间:10ms*/
		case Button_Debouncing:
			/*按键IO口:PT11*/
			/*抬起按键*/
			if(GPIO_PT1GET(1))
			{
				if(!sTimeStamp.Get_ButtonLift_Flag)
				{
					sTimeStamp.Get_ButtonLift_Flag = TRUE;
					sTimeStamp.ButtonLift_Timer = sTimeStamp.Timer_Journey;
				}
				else
				{
					/*1 * 25ms = 25ms*/
					Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,1);
					/*预设时间到*/
					if(Result)
					{
						/*跳转到按键抬起模式*/
						eButton_Status = Button_Lift;
						/*重新获取按键抬起的起始时间*/
						/*目的:是为了按键抬起多少秒之内按下提供个起始时间*/
						sTimeStamp.ButtonLift_Timer = sTimeStamp.Timer_Journey;
					}
				}
				/*当按键抬起10ms内按下会返回按下消抖判断里重新判断*/
				sTimeStamp.Get_ButtonPress_Flag = FALSE;
			}
			/*按下那键*/
			else
			{
				if(!sTimeStamp.Get_ButtonPress_Flag)
				{
					sTimeStamp.Get_ButtonPress_Flag = TRUE;
					sTimeStamp.ButtonPress_Timer = sTimeStamp.Timer_Journey;
				}
				else
				{
					/*1 * 25ms = 25ms*/
					Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,1);
					/*预设时间到*/
					if(Result)
					{
						/*跳转到按键按下模式*/
						eButton_Status = Button_Press;
						/*重新获取按键按下的起始时间*/
						/*目的:是为了在case Button_Press情况下判断按键按下多久提供个起始时间*/
						sTimeStamp.ButtonPress_Timer = sTimeStamp.Timer_Journey;
					}
				}
				/*当按键按下10ms内抬起会返回抬起消抖判断里重新判断*/
				sTimeStamp.Get_ButtonLift_Flag = FALSE;
			}
			/*抬起瞬态标志位*/
			sButton.Flag_Button_Lift_Transient = FALSE;
			/*抬起1s标志位*/
			sButton.Flag_Button_Lift_1S = FALSE;
			/*抬起2s标志位*/
			sButton.Flag_Button_Lift_2S = FALSE;
			/*抬起60s标志位*/
			sButton.Flag_Button_Lift_60S = FALSE;


			/*按下瞬态标志位*/
			sButton.Flag_Button_Press_Transient = FALSE;
			/*按下2s标志位*/
//			sButton.Flag_Button_Press_2S = FALSE;
			/*按下3s标志位*/
			sButton.Flag_Button_Press_3S = FALSE;
			/*按下6s标志位*/
			sButton.Flag_Button_Press_6S = FALSE;
			/*按下9s标志位*/
			sButton.Flag_Button_Press_9S = FALSE;
		break;
		/*按键按下*/
		case Button_Press:
			/*按键抬起*/
			if(GPIO_PT1GET(1))
			{
				/*跳转到按键消抖状态*/
				eButton_Status = Button_Debouncing;
				/*重新获取按键按下起始时间*/
				sTimeStamp.Get_ButtonPress_Flag = FALSE;
				/*重新获取按键抬起起始时间*/
				sTimeStamp.Get_ButtonLift_Flag = FALSE;
			}
			/*按键按下*/
			else
			{
				/*按下瞬态标志位*/
				sButton.Flag_Button_Press_Transient = TRUE;
				/*80 * 25ms ≈ 2s*/
//				Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,80);
//				if(Result)
//				{
//					/*按下2s标志位*/
//					sButton.Flag_Button_Press_2S = TRUE;
//				}
				/*120 * 25ms ≈ 3s*/
				Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,120);
				if(Result)
				{
					/*按下3s标志位*/
					sButton.Flag_Button_Press_3S = TRUE;
				}
				/*240 * 25ms ≈ 6s*/
				Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,240);
				if(Result)
				{
					/*按下6s标志位*/
					sButton.Flag_Button_Press_6S = TRUE;
				}
				/*360 * 25ms ≈ 9s*/
				Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,360);
				if(Result)
				{
					/*按下9s标志位*/
					sButton.Flag_Button_Press_9S = TRUE;
				}
			}
		break;
		/*按键抬起*/
		case Button_Lift:
			/*按键按下*/
			if(!GPIO_PT1GET(1))
			{
				/*跳转到按键消抖状态*/
				eButton_Status = Button_Debouncing;
				/*重新获取按键按下起始时间*/
				sTimeStamp.Get_ButtonPress_Flag = FALSE;
				/*重新获取按键抬起起始时间*/
				sTimeStamp.Get_ButtonLift_Flag = FALSE;
			}
			/*按键抬起*/
			else
			{
				/*抬起瞬态标志位*/
				sButton.Flag_Button_Lift_Transient = TRUE;

				/*40 * 25ms ≈ 1S*/
				Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,40);
				if(Result)
				{
					/*抬起1S标志位*/
					sButton.Flag_Button_Lift_1S = TRUE;
				}

				/*80 * 25ms ≈ 2S*/
				Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,80);
				if(Result)
				{
					/*抬起2S标志位*/
					sButton.Flag_Button_Lift_2S = TRUE;
				}

				/*2400 * 25ms ≈ 60S*/
				Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,2400);
				if(Result)
				{
					/*抬起60S标志位*/
					sButton.Flag_Button_Lift_60S = TRUE;
				}
			}
		break;
		default:break;
	}
}
