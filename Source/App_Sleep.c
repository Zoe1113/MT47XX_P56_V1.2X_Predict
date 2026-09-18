#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_Sleep.c
说    明：	  休眠模式的进入与退出（应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_Sleep_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	睡眠模式的进入与退出
  * @param   None
  * @retval    None
*/
void Sleep_Mode(void)
{
	/*系统模式*/
	switch(eSystem_Mode)
	{
		/*准备进入休眠模式*/
		case Prepare_Sleep:
			if(eBuzzer_Status == Buzzer_Silent)
			{
				/*当检测到按键抬起时*/
				if(sButton.Flag_Button_Lift_Transient || Enter_PrepareSleep_Flag)
				{
					Enter_PrepareSleep_Flag = FALSE;
					/*按键抬起标志位*/
					sButton.Flag_Button_Lift_Once = TRUE;
					/*跳转到休眠模式*/
					eSystem_Mode = Sleep;
					/*设置GPIO*/
					GPIO_Configuration();
					/*关闭BZ*/
					BZ_Disable();
					/*配置C/F、CF、V/C、S0、S1、BLE_EN为输出,且输出为低*/
					TRISC1 |= 0x3C;
					PT1 &= 0xC3;
					TRISC8 |= 0xEF;
					PT8 &= 0x11;

					PT1PU &= 0x02;
					PT8PU &= 0x00;
					/**/
					sBleStatus.F_Ble_En = FALSE;
					/*ble除能模式*/
					eBle_Sta = Ble_Disable;
					/*关闭LCD功能*/
					/*关闭LCD输出缓冲器*/
					LCDCN1 &= 0x77;
					/*关闭高精度模式*/
					AccuracyModeADCOFF();
					/*关闭ADC*/
					ADC_Disable();
					/*关闭VDDA*/
					PWR_LDODisable();
					/*关闭低电压检测*/
					LVD_Disable();
					/*关闭BGR*/
					/*关闭LDOPL达到省电效果*/
					PWR_BGRDisable();
					/*关闭ACM*/
					/*关闭ADC*/
					/*关闭LDOPL达到省电效果*/
					AD1CN5 = 0x60;
					/*关闭TIMA1*/
					TMA1Disable();
					/*关闭UART0*/
					UART0Disable();
					/*1.打开总中断;2.打开PT1.1外部中断,用于按键唤醒*/
					/*关闭其他中断:1.ADC中断;2.TIMA1的中断;3.UART0接收中断*/
					INTE0 = 0x82;
					INTE1 = 0x00;
					/*HS_CK:OSCS选择OSC_LPO*/
//					CLK_OSCSelect(OSCS_LPO);
					/*关闭HAO*/
//					CLK_HAODisable();
				}
			}
		break;
		/*进入休眠模式*/
		case Sleep:
			/*执行休眠操作*/
			Sleep();
		break;
		/*准备进入正常模式*/
		case Prepare_Normal:
			/*设置GPIO*/
			GPIO_Configuration();
			/*取消PT8.1-PT8.3上拉*/
//			PT8PU &= 0xF1;

			/*取消PT8.0-PT8.3上拉*/
			/*取消PT8.5-PT8.7上拉*/
			PT8PU &= 0x10;
			/*取消PT1.2、PT1.5上拉*/
			PT1PU &= 0xDB;

			/*清空TMA1计数寄存器*/
			TMA1_ClearTMA1();
			/*打开TIMA1*/
			TMA1Enable();
			/*打开UART0*/
			UART0Enable();
			/*清除ADC中断标志*/
			ADIF_ClearFlag();
			/*清除TMA1中断事件标志*/
			TA1IF_ClearFlag();
			/*参数初始化*/
			Param_Init();
			/*进入正常模式,在Param_Init函数中已设置,不再重复设置*/
			/*eSystem_Mode = Normal;*/
			/*打开HAO*/
//			CLK_HAOEnable();
			/*HS_CK:OSCS选择OSC_HAO*/
//			CLK_OSCSelect(OSCS_HAO);

			/*清LCD所有寄存器*/
			LCD_Clear_Register();
			/*设置LCD*/
			LCD_Configuration();
			/*关闭PT1.1外部中断,用于按键唤醒*/
			/*开启中断:1.开启总中断;2.ADC中断;3.TIMA1的比较中断;4.看门狗中断;5.UART0接收中断*/
			INTE0 = 0xF0;
			INTE1 = 0x10;
			/*打开低电压检测(2.6V)*/
			/*设置2.6v*/
			LVD_VolSelect(VLDX_26);
			/*正确的VDDA开启步骤如下*/
			/*Step1:开启BGR*/
			PWR_BGREnable();
			/*Step2:开启LDOPL*/
			PWR_LDOPLEnable();
			/*Step3:开启LDO*/
			PWR_LDOEnable();
			/*Step3:开启类比(模拟IP)*/
			PWR_LDOSel(LDOC_2V4);
			/*Step4:延时10ms*/
			Delay_ms(10);
			/*开启ADC功能*/
			AD1CN5 |= 0x80;
			/*开启高精度模式*/
			ADCAccuracyMode();
			/*进入正常模式*/
			eSystem_Mode = Normal;
			/*系统初始化后进入的第一个状态*/
			eDisplay_Interfaces = Display_PowerOn;
			/*初始化自动波特率检索状态*/
			eAutoBps_Status = AutoBps_Init;

		break;
		/*进入正常模式*/
		case Normal:
			/*进入准备休眠模式*/
			eSystem_Mode = Prepare_Sleep;
			/*参照原表在“全显界面进入模式切换后关机”不需要蜂鸣*/
			if(!Flag_No_Buzzer)
			{
				/*关机蜂鸣一声,时间:250ms*/
				eBuzzer_Status = Buzzer_PowerOnOff;
			}
			/*关闭背光*/
			eBacklight_Status = No_Backlight;
		break;
		default:break;
	}
}


