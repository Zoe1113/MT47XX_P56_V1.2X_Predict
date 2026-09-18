#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_Buzzer.c
说    明：	  蜂鸣器相关设置集合（底层/应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_Buzzer_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	蜂鸣驱动模块
  * @param   None
  * @retval    None
*/
void Buzzer_Drive(void)
{
	uint8 Result;
	switch(eBuzzer_Status)
	{
		/*静音*/
		case Buzzer_Silent:
			/*关闭蜂鸣器功能*/
			BZ_Disable();
			/*PT1.7输出为低*/
			Power_Buzzer_Low;
			/*间断性蜂鸣,蜂鸣三次,频率:4Hz,间隔250ms*/
			sTIMx.BuzzerIntervalCnt = 0;
			/*重置频率为4Hz的蜂鸣*/
			sTIMx.BuzzerFlash4Hz = 0;
			/*重置频率为1Hz的蜂鸣*/
			sTIMx.BuzzerFlash1Hz = 0;

			/*取起始时间标志位*/
			sTimeStamp.Get_Buzzer_Start_Timer_Flag = FALSE;
		break;

		/*开关机时蜂鸣一声,蜂鸣时间:500ms*/
		case Buzzer_PowerOnOff:
			if(!sTimeStamp.Get_Buzzer_Start_Timer_Flag)
			{
				/*取起始时间标志位*/
				sTimeStamp.Get_Buzzer_Start_Timer_Flag = TRUE;
				/*获取蜂鸣器蜂鸣起始时间*/
				sTimeStamp.Buzzing_Timer = sTimeStamp.Timer_Journey;
			}
			else
			{
				/*5 * 25ms = 125ms*/
				Result = Timer_Experience(sTimeStamp.Buzzing_Timer,5);
				if(Result)
				{
					/*跳转到静音状态*/
					eBuzzer_Status = Buzzer_Silent;
				}
				else
				{
					/*開啟蜂鳴器功能*/
					BZ_Enable();
				}
			}
		break;

		/*温度测量结束时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
		/*温度测量结束时蜂鸣,蜂鸣时间:5s,频率:4Hz,间隔250ms*/
		case Buzzer_MeasuredTempForecast:
			if(!sTimeStamp.Get_Buzzer_Start_Timer_Flag)
			{
				/*取起始时间标志位*/
				sTimeStamp.Get_Buzzer_Start_Timer_Flag = TRUE;
				/*获取蜂鸣器蜂鸣起始时间*/
				sTimeStamp.Buzzing_Timer = sTimeStamp.Timer_Journey;
			}
			else
			{
				/*200 * 25ms = 5s*/
				Result = Timer_Experience(sTimeStamp.Buzzing_Timer,200);
				if(Result)
				{
					/*跳转到静音状态*/
					eBuzzer_Status = Buzzer_Silent;
				}
				else
				{
					sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
					/*当前温度单位为摄氏度大于等于37.8℃*/
					if(((sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade) && (eTempUnit == Centigrade))
					|| ((sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit) && (eTempUnit == Fahrenheit)))
					{
						/*测量结束蜂鸣*/
						/*eBuzzer_Status = Buzzer_TempOutRange;*/
						/*间断性蜂鸣,蜂鸣三次,频率:4Hz,间隔250ms*/
						if(sTIMx.BuzzerIntervalCnt >= 8)
						{
							/*间断性蜂鸣,蜂鸣三次,频率:4Hz,间隔250ms*/
							sTIMx.BuzzerIntervalCnt = 0;
						}
						/*间断性蜂鸣,蜂鸣三次,频率:4Hz,间隔250ms*/
						else if(sTIMx.BuzzerIntervalCnt < 6)
						{
							/*实现频率为4Hz的蜂鸣*/
							if(sTIMx.BuzzerFlash4Hz)
							{
								/*開啟蜂鳴器功能*/
								BZ_Enable();
							}
							else
							{
								/*关闭蜂鸣器功能*/
								BZ_Disable();
							}
						}
						else
						{
							/*关闭蜂鸣器功能*/
							BZ_Disable();
						}
					}
					/*当前温度单位为摄氏度大于32℃*/
					else
					{
						/*测量结束蜂鸣*/
						/*eBuzzer_Status = Buzzer_TempInRange;*/
						/*实现频率为1Hz的蜂鸣*/
						if(sTIMx.BuzzerFlash1Hz)
						{
							/*開啟蜂鳴器功能*/
							BZ_Enable();
						}
						else
						{
							/*关闭蜂鸣器功能*/
							BZ_Disable();
						}
					}
				}
			}
		break;
		/*温度测量结束时蜂鸣,蜂鸣时间:10s,频率:1Hz*/
		/*温度测量结束时蜂鸣,蜂鸣时间:10s,频率:4Hz,间隔250ms*/
		case Buzzer_MeasuredTempActual:
			if(!sTimeStamp.Get_Buzzer_Start_Timer_Flag)
			{
				/*取起始时间标志位*/
				sTimeStamp.Get_Buzzer_Start_Timer_Flag = TRUE;
				/*获取蜂鸣器蜂鸣起始时间*/
				sTimeStamp.Buzzing_Timer = sTimeStamp.Timer_Journey;
			}
			else
			{
				/*400 * 25ms = 10s*/
				Result = Timer_Experience(sTimeStamp.Buzzing_Timer,400);
				if(Result)
				{
					/*跳转到静音状态*/
					eBuzzer_Status = Buzzer_Silent;
				}
				else
				{
					sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
					/*当前温度单位为摄氏度大于等于37.8℃*/
					if(((sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade) && (eTempUnit == Centigrade))
					|| ((sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit) && (eTempUnit == Fahrenheit)))
					{
						/*测量结束蜂鸣*/
						/*eBuzzer_Status = Buzzer_TempOutRange;*/
						/*间断性蜂鸣,蜂鸣三次,频率:4Hz,间隔250ms*/
						if(sTIMx.BuzzerIntervalCnt >= 8)
						{
							/*间断性蜂鸣,蜂鸣三次,频率:4Hz,间隔250ms*/
							sTIMx.BuzzerIntervalCnt = 0;
						}
						/*间断性蜂鸣,蜂鸣三次,频率:4Hz,间隔250ms*/
						else if(sTIMx.BuzzerIntervalCnt < 6)
						{
							/*实现频率为4Hz的蜂鸣*/
							if(sTIMx.BuzzerFlash4Hz)
							{
								/*開啟蜂鳴器功能*/
								BZ_Enable();
							}
							else
							{
								/*关闭蜂鸣器功能*/
								BZ_Disable();
							}
						}
						else
						{
							/*关闭蜂鸣器功能*/
							BZ_Disable();
						}
					}
					/*当前温度单位为摄氏度大于32℃*/
					else
					{
						/*测量结束蜂鸣*/
						/*eBuzzer_Status = Buzzer_TempInRange;*/
						/*实现频率为1Hz的蜂鸣*/
						if(sTIMx.BuzzerFlash1Hz)
						{
							/*開啟蜂鳴器功能*/
							BZ_Enable();
						}
						else
						{
							/*关闭蜂鸣器功能*/
							BZ_Disable();
						}
					}
				}
			}
		break;
		/*预测算法转实测算法时蜂鸣,蜂鸣时间:500ms,频率:4Hz,间隔250ms*/
		case Buzzer_Forecast_To_Actual:
			if(!sTimeStamp.Get_Buzzer_Start_Timer_Flag)
			{
				/*取起始时间标志位*/
				sTimeStamp.Get_Buzzer_Start_Timer_Flag = TRUE;
				/*获取蜂鸣器蜂鸣起始时间*/
				sTimeStamp.Buzzing_Timer = sTimeStamp.Timer_Journey;
			}
			else
			{
				/*20 * 25ms = 500ms*/
				Result = Timer_Experience(sTimeStamp.Buzzing_Timer,20);
				if(Result)
				{
					/*跳转到静音状态*/
					eBuzzer_Status = Buzzer_Silent;
				}
				else
				{
					/*实现频率为4Hz的蜂鸣*/
					if(sTIMx.BuzzerFlash4Hz)
					{
						/*開啟蜂鳴器功能*/
						BZ_Enable();
					}
					else
					{
						/*关闭蜂鸣器功能*/
						BZ_Disable();
					}
				}
			}
		break;

		/*探头移除时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
		/*预测超时时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
		case Buzzer_Er1Er2:
			if(!sTimeStamp.Get_Buzzer_Start_Timer_Flag)
			{
				/*取起始时间标志位*/
				sTimeStamp.Get_Buzzer_Start_Timer_Flag = TRUE;
				/*获取蜂鸣器蜂鸣起始时间*/
				sTimeStamp.Buzzing_Timer = sTimeStamp.Timer_Journey;
			}
			else
			{
				/*200 * 25ms = 5s*/
				Result = Timer_Experience(sTimeStamp.Buzzing_Timer,200);
				if(Result)
				{
					/*跳转到静音状态*/
					eBuzzer_Status = Buzzer_Silent;
				}
				else
				{
					/*报Er1和Er2时蜂鸣*/
					/*实现频率为1Hz的蜂鸣*/
					if(sTIMx.BuzzerFlash1Hz)
					{
						/*開啟蜂鳴器功能*/
						BZ_Enable();
					}
					else
					{
						/*关闭蜂鸣器功能*/
						BZ_Disable();
					}
				}
			}
		break;

		default:break;
	}
}
