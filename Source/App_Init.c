#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_Init.c
说    明：	  初始化相关设置集合（应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_Init_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	参数初始化
  * @param   None
  * @retval    None
*/
void Param_Init(void)
{
	/*重置按键相关标志位*/
	eButton_Status = Button_Debouncing;

	sBleStatus.TempUploadTimes_Cnt = 0;
	sBleStatus.pBleRxBuf = 0;
	memset(sBleStatus.g_Ble_RxData,0,sizeof(sBleStatus.g_Ble_RxData));

	sBleStatus.F_Uart_Receive = 0;
	sBleStatus.F_Temp_Upload = FALSE;
	sBleStatus.F_Temp_Updated = FALSE;

	sMemoryFlag.MemTemp_Updated = FALSE;
	/*BIE写的动作*/
	sTempCal.BIE_Write_Action = FALSE;

	/*清除50ms标志位*/
	sTIMx.LVDSampleFlag = 0;
	sTIMx.Cnt50ms = 0;
	/*重置LVD.LVDBuf数组序号*/
	sLVD.pLVDBuf = 0;
	/*重置LVD自检完成标志位*/
	sLVD.LVD_Test_Completed = FALSE;
	/*检测电压低于2.6V标志位*/
	sLVD.LVD_Low = FALSE;


	/*获取状态机中公共变量起始时间标志位*/
	sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;


	/*按键曾经抬起来过*/
	/*实现短按关机功能*/
	sButton.Flag_Button_Lift_Once = FALSE;
	/*按键曾按下过*/
	/*实现测量结束界面短按关机功能*/
	sButton.Flag_Button_Press_Once = FALSE;


	/*将按键的状态设置成默认消抖状态*/
	eButton_Status = Button_Debouncing;
	/*重置按键抬起起始时间的标志位*/
	sTimeStamp.Get_ButtonLift_Flag = FALSE;
	/*重置按键按下起始时间的标志位*/
	sTimeStamp.Get_ButtonPress_Flag = FALSE;


	/*获取蓝牙起始时间标志位*/
	sTimeStamp.Get_BleMode_Flag = FALSE;
	/*获取蓝牙上电最大允许连接时间标志位*/
	sTimeStamp.Get_Ble_Connect_Max_Time_Flag = FALSE;
	/*获取EMC测试温度更新标志位*/
	sTimeStamp.Get_EMC_Temp_Update_Time_Flag = FALSE;
	/*MCU自动波特率开始标志*/
	sBleStatus.AutoBps_OnOff = 0;

	/*重新获取ADC取平均值起始计数*/
	sADC.ADCCounts = 0;
	/*重置温度值*/
	sADC.Centigrade250msTemp = 0;
	/*重新获取ADC的值标志位*/
	sADC.Flag_ADCDone = FALSE;
	/*间隔ADC采样,间隔时间:250ms*/
	sADC.Get_250msTemp_Flag =FALSE;
	/*首次进入默认AI2_AI3通道*/
	sADC.Flag_DefaultNTCChl_AI12_AI13 = TRUE;
	/*EMC认证*/
	sADC.UnRefreshTemp = FALSE;
	/*EMC快速刷新标志*/
	sADC.RefreshTempFast = TRUE;


	/*重置蜂鸣器起始时间的标志位*/
	sTimeStamp.Get_Buzzer_Start_Timer_Flag = FALSE;


	/*初始化50ms起始位标志位*/
	sTIMx.Cnt50ms = 0;
	/*初始化125ms起始位标志位*/
	sTIMx.Cnt125ms = 0;
	/*初始化250ms起始位标志位*/
	sTIMx.Cnt250ms = 0;
	/*初始化500ms起始位标志位*/
	sTIMx.Cnt500ms = 0;
	/*时间线初始化*/
	sTimeStamp.Timer_Journey = 0;

	/*温度校准成功3min重启标志位标志位*/
	sTempCal.Reset_From_CalOK = FALSE;

	/*切换温度单位标志位,为FALSE时才允许温度单位切换*/
	UnitExchangeCompleted = FALSE;
	sBacklight.Backlight2SFlag = FALSE;
	/*测量结束背光亮标志位*/
	sBacklight.MeasuredTempLighting = FALSE;

	/*进入记忆温度序号界面显示序号*/
	sMemoryFlag.MemTempDispNo = 1;
	/*默认使能写RAM,是为了在蜂鸣时就可以存储*/
	sMemoryFlag.Write_MemTemp_RAM_EN = TRUE;
	/*默认使能写E2,是为了在蜂鸣时就可以存储*/
	sMemoryFlag.Write_MemTemp_E2_EN = TRUE;
	/*重置更新记忆温度序号标志位*/
	sMemoryFlag.Update_MemTempDispNo = FALSE;
	/*重置更新记忆温度标志位*/
	sMemoryFlag.Update_MemTempDispVlaue = FALSE;
	/*显示记忆温度值序号*/
	sMemoryFlag.MemTempDispValue = sMemory.pMemTempBuf;
	//sMemoryFlag.MemTempDispValue = sMemory.HeadNo;
	/*仅更新温度值标志位,不更新其他与RAM存储温度相关的标志位*/
	sMemoryFlag.Write_MemTemp_RAM_Only = FALSE;



	/*重置背光驱动公共变量起始时间标志位*/
	sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;

	/*实测时间*/
	sActual.ActualTime = 0;
	/*重置启用实测算法标志位*/
	sActual.Actual_Start = FALSE;
	/*TempFastFlag:温度快速填充标志位*/
	sActual.TempFastFlag = FALSE;
	/*测量时间 > MeasureTime/标志位*/
	sActual.PresetMeasTimeCompletedFlag = FALSE;


	/*起点算法计数开始标志位*/
	sForecast.FlagStartAlgorithmCounts = FALSE;
	/*重置预测起点计数*/
	sForecast.Start_Counts = 1;
	/*重置预测下降计数*/
	sForecast.Drop_Counts = 0;
	/*重置预测温度*/
	sForecast.ForecastTemp = 0;
	/*重置连续3次温度大于34℃计数*/
	sForecast.PreBath_Counts = 0;
	/*重置起点算法标志位*/
	sForecast.Forecast_Start = FALSE;

	sActual_Forecast.ResetTimeFlag = FALSE;

	sForecast.Update_MaxTemp3Min_Arrived = FALSE;


	/*实测预测算法开始标志位*/
	sActual_Forecast.AF_Start = FALSE;
	/*重置实测算法中1s计数*/
	sActual_Forecast.Cnt_1S = 0;
	sActual_Forecast.Cnt_Test_1S = 0;
	/*重置预测计数*/
	sForecast.Forecast_Counts = 0;

	/*过滤异常温度---温度T1*/
	sActual_Forecast.Temp_T1 = 0;
	/*过滤异常温度---温度T2*/
	sActual_Forecast.Temp_T2 = 0;
	/*过滤异常温度---温度T3*/
	sActual_Forecast.Temp_T3 = 0;

	/*实测显示温度(取最大值)/必须初始化*/
	sActual_Forecast.CentigradeTempDisp = 0;
	/*重置1s获取温度的标志位*/
	sActual_Forecast.Get_1sTempFlag = FALSE;
	/*重置温度稳定蜂鸣标志位*/
	sActual_Forecast.StableBuzzerFlag = FALSE;
	/*实测预测算法选择标志位*/
	sActual_Forecast.ActualForecast_SelectFlag = FALSE;


	/*重置预测温度起始时间的标志位*/
	sTimeStamp.Get_ForecastMeas_Start_Timer_Flag = FALSE;


	/*重置ERR数组*/
	memset(ERR,0,sizeof(ERR));

	#if (Func_UpdateMaxImmediately == Enable)
		/*预测结束立即转实测*/
		eTo_Actual_Ways = To_Actual_Immediately;
	#endif

	#if (Func_UpdateMax3Min == Enable)
		/*预测结束3分钟转实测*/
		eTo_Actual_Ways = To_Actual_3Min;
	#endif

	/*重置测试变量*/
	/*************************************************/
	#if	Func_Debug == Debug_GetTemp250ms
		sTest.Test_Get_Total_Journey_Start_Flag = FALSE;
		sTest.Test_Total_Journey_Start_Timer = 0;
	#endif


	#if	Func_Debug == Debug_250msCounts
		sTest.ISR_AD_Counts = 0;
		sTest.MainCycle_Counts = 0;
		sTest.MainForecast_Counts = 0;
	#endif
	/*************************************************/

	sADC.PreviousCentigrade250msTemp = 0;

	/*参照原表在“全显界面进入模式切换后关机”不需要蜂鸣*/
	Flag_No_Buzzer = FALSE;
}

/*
  * @brief  	bie初始化
  * @param   None
  * @retval    None
*/
void BIE_Init(void)
{
	/*轮询出可以使用的BIE地址*/
	BIE_Available_Addr = BIE_Polling();
	/*当轮询出BIE数据为空时,温度校准偏移量为0*/
	if(BIE_Available_Addr == 0)
	{
		/*重置温度校准偏移量*/
		sTempCal.Temp_Ratio = 10000;
		/*关机上电后读取到BIE为空时,认为没只执行过BIE写操作*/
		sTempCal.BIE_Writed = FALSE;
	}
	/*当轮询出BIE数据为满时,温度校准偏移量读取最后一个地址的数值*/
	else if(BIE_Available_Addr == 0xFF)
	{
		sTempCal.Temp_Ratio = BIE_Read(0x3F);
		/*温度校准值写入BIE成功标志*/
		sTempCal.BIE_Writed = TRUE;
	}
	/*当轮询出BIE有数据且没满时,温度校准偏移量读取轮询出的地址前面一个地址的数据*/
	else
	{
		sTempCal.Temp_Ratio = BIE_Read(BIE_Available_Addr - 1);
		/*温度校准值写入BIE成功标志*/
		sTempCal.BIE_Writed = TRUE;
	}
}

/*
  * @brief  	绑定初始化
  * @param   None
  * @retval    None
*/
void Binding_Init(void)
{
	uint8 tmp;

	/*1.1:可选情况下根据IO输入属性来决定温度单位特性*/
	#if	(TempUnitOptional == Enable)
		tmp = PT1 &  0x24;
		/*绑定功能*/
		if(tmp== 0x24)
		{
			/*摄氏度优先,可切换*/
			eBinding_Status = CentigradeFirst_Switchable;
			/*默认摄氏度*/
			eTempUnit = Centigrade;
			/*默认绑定的温度单位,温度校准后恢复成绑定的温度单位*/
			eBondingTempUnit = Centigrade;
		}
		else if(tmp == 0x20)
		{
			/*摄氏度优先,不可切换*/
			eBinding_Status = CentigradeFirst_NonSwitchable;
			/*默认摄氏度*/
			eTempUnit = Centigrade;
			/*默认绑定的温度单位,温度校准后恢复成绑定的温度单位*/
			eBondingTempUnit = Centigrade;
		}
		else if(tmp == 0x04)
		{
			/*华氏度优先,可切换*/
			eBinding_Status = FahrenheitFirst_Switchable;
			/*默认华氏度*/
			eTempUnit = Fahrenheit;
			/*默认绑定的温度单位,温度校准后恢复成绑定的温度单位*/
			eBondingTempUnit = Fahrenheit;
		}
		else if(tmp == 0x00)
		{
			/*华氏度优先,不可切换*/
			eBinding_Status = FahrenheitFirst_NonSwitchable;
			/*默认华氏度*/
			eTempUnit = Fahrenheit;
			/*默认绑定的温度单位,温度校准后恢复成绑定的温度单位*/
			eBondingTempUnit = Fahrenheit;
		}
	/*1.2:不可选情况下默认一个判稳时间,宏定义可设置*/
	#else
		eBinding_Status = Binding_StatusSet;
		eTempUnit = TempUnitSet;
		/*默认绑定的温度单位,温度校准后恢复成绑定的温度单位*/
		eBondingTempUnit = TempUnitSet;
	#endif

	/*1.1:可选情况下根据IO输入属性来决定判稳时间4s/8s/16s*/
	#if	(StableTimeOptional == Enable)
		tmp = PT8 & 0xC0;
		/*绑定功能*/
		if(tmp == 0xC0)
		{
			/*温度稳定时间:4s;水槽相应时间:10s*/
			/*判稳时间:4s*/
			sActual.StableTime = 4;
		}
		else if(tmp == 0x80)
		{
			/*温度稳定时间:8s;水槽相应时间:20s/30s*/
			/*判稳时间:8s*/
			sActual.StableTime = 8;
		}
		else if(tmp == 0x40)
		{
			/*温度稳定时间:16s;水槽相应时间:60s*/
			/*判稳时间:16s*/
			sActual.StableTime = 16;
		}
		else if(tmp == 0x00)
		{
			/*温度稳定时间:32s;水槽相应时间:N/As*/
			/*判稳时间:32s*/
			//sActual.StableTime = 32;
			/*没有32,归到16s*/
			sActual.StableTime = 16;
		}
	/*1.2:不可选情况下默认一个判稳时间,宏定义可设置*/
	#else
		sActual.StableTime = StableTimeSet;
	#endif

	tmp = PT8 & 0x20;
	/*显示软件版本和编码*/
	if(tmp == 0x20)
	{
		/*默认软件版本和编码不显示*/
		eVersionCode = VC_DispOff;
	}
	else if(tmp == 0x00)
	{
		/*显示软件版本和编码*/
		eVersionCode = VC_DispOn;
	}
}

/*
  * @brief  	E2初始化(读取E2中的参数)
  * @param   None
  * @retval    None
*/
void E2_Init(void)
{
	uint8 i,addr,DH,DL;

	/*获取"记忆温度的头序号(0~9)"*/
	sMemory.HeadNo = I2C_ReadByte(E2_HeadNo_Addr);
	/*E2芯片缺省状态*/
	if(sMemory.HeadNo == 0xFF)
	{
		sMemory.HeadNo = 0;
	}

	/*获取"当前数组存储记忆温度的序号(0~9)"*/
	sMemory.pMemTempBuf = I2C_ReadByte(E2_pMemTempBuf_Addr);
	/*E2芯片缺省状态*/
	if(sMemory.pMemTempBuf == 0xFF)
	{
		sMemory.pMemTempBuf = 0;
	}

	/*获取"记忆温度的总数量(MAX:10)"*/
	sMemory.MemTempSum = I2C_ReadByte(E2_MemTempSum_Addr);
	/*E2芯片缺省状态*/
	if(sMemory.MemTempSum == 0xFF)
	{
		sMemory.MemTempSum = 0;
	}
	else
	{
		/*防止越界,根据MemTempNum的最大记忆存储数量加限制条件*/
		if(sMemory.MemTempSum > MemTempNum)
		{
			sMemory.MemTempSum = MemTempNum;
		}
		/*获取"记忆温度数据"*/
		for(i = 0;i < sMemory.MemTempSum;i++)
		{
			addr = E2_MemTempBuf_Addr + i * 2;
			DH = I2C_ReadByte(addr);

			addr = E2_MemTempBuf_Addr + i * 2 + 1;
			DL = I2C_ReadByte(addr);
			/*获取E2中的记忆温度赋值给sMemory结构体成员*/
			sMemory.MemTempBuf[i] = (DH << 8) + DL;
		}
	}
}

/*
  * @brief  	系统上电初始化
  * @param   None
  * @retval    None
*/
void System_Init(void)
{
	/*使能CSFON才可以修改ENBOR2*/
	PWRCN = 0x01;
	/*关闭ENBOR2*/
	CSFCN1 = 0x00;

	/*开机进入休眠模式标志位*/
	Enter_PrepareSleep_Flag = TRUE;

	/*进入准备休眠模式*/
	eSystem_Mode = Prepare_Sleep;

	/*状态机进入睡眠状态*/
	eDisplay_Interfaces = Display_SleepMode;

	/*设置GPIO*/
	GPIO_Configuration();

	/*设置时钟*/
	CLK_Configuration();

	/*设置VDDA*/
	PWR_Configuration();

	/*设置LVD*/
	LVD_Configuration();

	/*设置TMA1*/
	TMA1_Configuration();

	/*设置BZ*/
	BZ_Configuration();

	/*设置ADC*/
	ADC_Configuration();

	/*设置UART0*/
	//UART0_Configuration(Register_Value);

	/*数据存储模块*/
	#if	(Func_E2 == Enable)
		/*设置IIC*/
		IIC_Configuration();
		/*E2初始化(读取E2中的参数)*/
		E2_Init();
	#endif

	/*设置WDT*/
	WDT_Configuration();

	/*获取BIE中的温度校准的偏移量*/
	BIE_Init();

	/*获取绑定信息*/
	Binding_Init();

	//上电默认模式选择，改初始化模式时，校准结束后的模式初始化也要同步改！！！
	#ifdef CE_Tset_80601_2_56
		eMeasureMode = Bath_Mode;
	#else
		eMeasureMode = Oral_Mode;
	#endif
}
