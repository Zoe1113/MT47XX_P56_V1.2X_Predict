#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_Main.c
说    明：   主函数/中断服务函数（应用层）
程序编码：XXX
版    本：	  V1.0
适用 PCB:	XXX
芯	  片:	HY17P56(2M/4M/8M)
作    者:		Jiale.He
修订记录：
1、
2、
**************************************************************************/
/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	Main函数
  * @param   None
  * @retval    None
*/
void main(void)
{
	/*系统上电初始化*/
	System_Init();

	/*主任务循环*/
	while(1)
	{
		/*自动波特率检索*/
		AutoBps_Configuration();

		/*喂狗*/
		/*1.13s不喂狗就会溢出复位*/
		WDT_CLEAR();

		/*按键检测模块*/
		Key_Detect();

		/*ADC采样及处理模块*/
		Get_250msTemp();

		/*状态机模块*/
		Task_Schedule();

		/*LCD显示模块*/
		LCD_Display();

		/*蜂鸣驱动模块*/
		Buzzer_Drive();

		/*背光驱动*/
		Backlight_Drive();

		/*蓝牙*/
		App_BleMode();

		/*实测算法*/
		Actual_Measure();

		/*预测算法*/
		Forecast_Measure();
	}
}

/*
  * @brief  	中断处理函数
  * @param   None
  * @retval    None
*/
void ISR(void) __interrupt
{
	/*ADC中断事件标志位*/
	if(ADIF_IsFlag())
	{
		/*清除中断事件标志位*/
		ADIF_ClearFlag();

		/*AD转化完成标志位*/
		sADC.Flag_ADCDone = TRUE;
		/*失能ADC中断*/
		ADC_INT_Disable();
	}


	/*UART0接收中断标志位*/
	if(RCIF_IsFlag())
	{
		/*获取串口数据，清除RCIF*/
		sBleStatus.g_Ble_RxData[sBleStatus.pBleRxBuf] = RC0REG;
		/*先判断是否接收完成*/
		if((sBleStatus.g_Ble_RxData[sBleStatus.pBleRxBuf] == Ble_End2) || (sBleStatus.g_Ble_RxData[sBleStatus.pBleRxBuf] == Ble_End22))
		{
			sBleStatus.F_Uart_Receive = TRUE;
			sBleStatus.pBleRxBuf = 0;
		}
		/*若正确的接收到包头，数组递增*/
		else if((sBleStatus.g_Ble_RxData[0] == Ble_Header1) || (sBleStatus.g_Ble_RxData[0] == Ble_Header21))
		{
			sBleStatus.pBleRxBuf++;
			/*防止数组越位*/
			if(sBleStatus.pBleRxBuf == DataLenth)
			{
				sBleStatus.pBleRxBuf = 0;
			}
		}		
	}


	/*时基:25ms*/
	if(TA1CIF_IsFlag())
	{
		/*清除中断事件标志位*/
		TA1CIF_ClearFlag();
		/*TMA1R寄存器的累加值需要手动清除*/
		TMA1R = 0x00;
		/*上电定时器开启后就开始累加作为一个上电后的时间线*/
		/*时间线最大值:(2的32幂次方 * 25ms) / 1000 / 60 / 60 / 24 = 1243 天*/
		/*可以从这个时间线上随时取时间起点,计算时间间隔*/
		/*相关函数:(取时间起点)、Timer_Experience(计算时间段)*/
		sTimeStamp.Timer_Journey++;

		/*2 * 25ms:50ms*/
		if(++sTIMx.Cnt50ms >= 2)
		{
			sTIMx.Cnt50ms = 0;
			/*LVD50ms采集标志*/
			sTIMx.LVDSampleFlag = TRUE;
			/*LCD50ms刷新标志*/
			sTIMx.LCDRefreshFlag = TRUE;
		}

		/*5 * 25ms:125ms*/
		if(++sTIMx.Cnt125ms >= 5)
		{
			sTIMx.Cnt125ms = 0;
			sTIMx.BuzzerIntervalCnt++;
			sTIMx.BuzzerFlash4Hz = !sTIMx.BuzzerFlash4Hz;
		}

		/*10 * 25ms:250ms*/
		if(++sTIMx.Cnt250ms >= 10)
		{
			sTIMx.Cnt250ms = 0;
			/*间隔ADC采样,间隔时间:250ms*/
			sADC.Get_250msTemp_Flag = TRUE;

			if(++sTIMx.TempDetectingSymFlash1Hz >= 3)
			{
				sTIMx.TempDetectingSymFlash1Hz = 0;
			}

			/*************************************************/
			#if	Func_Debug == Debug_250msCounts
				sTest.ISR_AD_Counts++;
			#endif
			/*************************************************/
		}

		/*20 * 25ms:500ms*/
		if(++sTIMx.Cnt500ms >= 20)
		{
			sTIMx.Cnt500ms = 0;
			/*模式符号闪烁标志位,频率:1Hz*/
			sTIMx.ModeSymbolFlash = !sTIMx.ModeSymbolFlash;
			/*蜂鸣标志位,频率:1Hz*/
			sTIMx.BuzzerFlash1Hz = !sTIMx.BuzzerFlash1Hz;
			/*校准符号闪烁标志位,频率:1Hz*/
			sTIMx.CalSymbolFlash = !sTIMx.CalSymbolFlash;
			/*绑定信息闪烁显示标志位,频率:1Hz*/
			sTIMx.BindingSymbolFlash = !sTIMx.BindingSymbolFlash;
			/*温度单位闪烁标志位,频率:1Hz*/
			sTIMx.UnitSymbolFlash = !sTIMx.UnitSymbolFlash;
			/*蓝牙闪烁标志位,频率:1Hz*/
			sTIMx.BLESymbolFlash = !sTIMx.BLESymbolFlash;
			/*预测符号闪烁标志位,频率:1Hz*/
			sTIMx.ForecastSymbolFlash = !sTIMx.ForecastSymbolFlash;
		}

		/*40 * 25ms:1s*/
		if(++sTIMx.Cnt1s >= 40)
		{
			sTIMx.Cnt1s = 0;
			/*预测判定成功后先显示T终,1s后再显示预测温度,交替显示*/
			sTIMx.ForecastJudgeOKTempFlash = !sTIMx.ForecastJudgeOKTempFlash;
		}
	}


	/*看门狗中断事件标志位*/
	if(WDTIF_IsFlag())
	{
		/*清除中断事件标志位*/
		WDTIF_ClearFlag();
	}


	/*外部按键中断*/
	if(E1IF_IsFlag())
	{
		/*清除按键中断标志位*/
		E1IF_ClearFlag();
		/*仅当当前模式为休眠模式时,才允许按键唤醒*/
		if(eSystem_Mode == Sleep)
		{
			/*系统经过按键唤醒,进入准备进入正常模式*/
			eSystem_Mode = Prepare_Normal;
		}
	}
}

