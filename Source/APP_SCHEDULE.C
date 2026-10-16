#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_Schedule.c
说    明：	  状态机相关设置集合（应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_Schedule_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	上电界面状态机跳转
  * @param   None
  * @retval    None
*/
void PowerOn_Schedule(void)
{
	/*二级电压*/
	#if Bat_4718_MDR == Enable
		/*LVD自检完成*/
		if(sLVD.LVD_Test_Completed)
		{
			/*查询数组LVDBuf中1的个数*/
			/*即查询上电150ms内有几次欠压故障*/
			if(memchrn(sLVD.LVDBuf,1,sizeof(sLVD.LVDBuf)) >= 3)
			{
				/*检测电压低于2.7V标志位*/
				sLVD.LVD_Low = TRUE;
			}
			/*欠压故障小于3次进入全显界面*/
			eDisplay_Interfaces = Display_All;
			/*蓝牙闪烁标志位,频率:1Hz*/
			sTIMx.BLESymbolFlash = 1;
			sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
			/*LCD50ms刷新标志*/
			sTIMx.LCDRefreshFlag = TRUE;
			/*开机、关机或休眠重启后需要蜂鸣*/
			eBuzzer_Status = Buzzer_PowerOnOff;
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
			/*关闭LVD功能*/
			LVD_Off();
		}
	#else
		/*LVD自检完成*/
		if(sLVD.LVD_Test_Completed)
		{
			/*查询数组LVDBuf中1的个数*/
			/*即查询上电150ms内有几次欠压故障*/
			if(memchrn(sLVD.LVDBuf,1,sizeof(sLVD.LVDBuf)) == 3)
			{
				/*3次欠压故障进入欠压显示界面*/
				eDisplay_Interfaces = Display_LowPower;
				/*按键曾经抬起来过*/
				sButton.Flag_Button_Lift_Once = FALSE;
				/*LCD50ms刷新标志*/
				sTIMx.LCDRefreshFlag = TRUE;

				/*开机、关机或休眠重启后需要蜂鸣*/
				eBuzzer_Status = Buzzer_PowerOnOff;
			}
			else
			{
				/*进入全显界面*/
				eDisplay_Interfaces = Display_All;
				/*蓝牙闪烁标志位,频率:1Hz*/
				sTIMx.BLESymbolFlash = 1;
				sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
				/*LCD50ms刷新标志*/
				sTIMx.LCDRefreshFlag = TRUE;

				/*开机、关机或休眠重启后需要蜂鸣*/
				eBuzzer_Status = Buzzer_PowerOnOff;
			}
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
			/*关闭LVD功能*/
			LVD_Off();
		}
	#endif
}

/*
  * @brief  	欠压界面状态机跳转
  * @param   None
  * @retval    None
*/
void LowPower_Schedule(void)
{
	/*按键抬起*/
	if(sButton.Flag_Button_Lift_Transient)
	{
		/*按键曾经抬起来过*/
		sButton.Flag_Button_Lift_Once = TRUE;
	}
	/*按键按下*/
	else if(sButton.Flag_Button_Press_Transient)
	{
		/*按键曾经抬起来过*/
		if(sButton.Flag_Button_Lift_Once)
		{
			/*跳转到休眠模式*/
			eDisplay_Interfaces = Display_SleepMode;
		}
	}
}

/*
  * @brief  	全显界面状态跳转
  * @param   None
  * @retval    None
*/
void All_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	/*按键抬起*/
	if(sButton.Flag_Button_Lift_Transient)
	{
		/*按键曾经抬起来过*/
		/*实现短按关机功能*/
		sButton.Flag_Button_Lift_Once = TRUE;

		/*80 * 25ms = 2s*/
		Result = Timer_Experience(sTimeStamp.DispCOM_Timer,80);
		//*按键抬起2S/*1.5S*/进入最近一次温度显示界面*/
		if(Result)
		{
			/*跳转到最近一次温度显示模式*/
			eDisplay_Interfaces = Display_RecentTemperature;
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
			sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;

			/*蓝牙处于待机模式*/
			eBle_Sta = Ble_Standby;
			sBleStatus.F_Ble_En = TRUE;
		}
	}
	/*按键按下*/
	else if(sButton.Flag_Button_Press_Transient)
	{
		if(sButton.Flag_Button_Lift_Once)
		{
			/*跳转到休眠模式*/
			eDisplay_Interfaces = Display_SleepMode;
		}
		else
		{
			/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
			#if	(Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch == Enable)
				/*当温度单位不可切换时,需要从全显界面进入*/
				if(sButton.Flag_Button_Press_9S)
				{
					/*跳转到程序版本显示模式*/
					eDisplay_Interfaces = Display_Version;
					/*重置按键相关标志位*/
					eButton_Status = Button_Debouncing;
					sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
					/*蓝牙处于待机模式*/
					eBle_Sta = Ble_Standby;
					sBleStatus.F_Ble_En = TRUE;
				}
				else if(sButton.Flag_Button_Press_3S)
				{
					/*兼容是否具有单位切换功能*/
					if((eBinding_Status == CentigradeFirst_Switchable) || (eBinding_Status == FahrenheitFirst_Switchable))
					{
						/*跳转到单位切换模式*/
						eDisplay_Interfaces = Display_UnitExchange;
						sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
						/*重置按键相关标志位*/
						eButton_Status = Button_Debouncing;

						/*蓝牙处于待机模式*/
						eBle_Sta = Ble_Standby;
						sBleStatus.F_Ble_En = TRUE;
					}
				}
			/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
			#elif	(Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem == Enable)
				if(sButton.Flag_Button_Press_3S)
				{
					eDisplay_Interfaces = Display_ModeExchange;
					/*不需要实现切换到下一个模式时立即显示模式符号*/
					/*因为切换到的下一个模式和当前模式是一个符号,没必要直接显示模式符号*/
					sTIMx.ModeSymbolFlash = 0;
					/*保证模式符号显示到不显的时间间隔是500ms*/
					sTIMx.Cnt500ms = 0;
					/*参照原表在“全显界面进入模式切换后关机”不需要蜂鸣*/
					Flag_No_Buzzer = TRUE;

					sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
					/*重置按键相关标志位*/
					eButton_Status = Button_Debouncing;

					/*蓝牙处于待机模式*/
					eBle_Sta = Ble_Standby;
					sBleStatus.F_Ble_En = TRUE;
				}
			#endif
		}
		/*重置按键曾经抬起来过标志位*/
		sButton.Flag_Button_Lift_Once = FALSE;
	}
	#if Bat_4718_MDR == Enable	//非4718系列不判断PT22,4760的四色背光中白色背光用的也是PT22有冲突
		/*80 * 25ms = 2s*/
		Result = Timer_Experience(sTimeStamp.DispCOM_Timer,80);
		//*按键抬起2S/*1.5S*/进入最近一次温度显示界面*/
		if(Result)
		{
			if((PT2 &  0x04) == 0x00)
			{
				/*进入预校准界面*/
				/*4718预留,因为4718按键硬,不好用工装*/
				eDisplay_Interfaces = Display_PreCalibration;
				/*清屏*/
				Disp_Nothing();
			}
		}
	#endif
}

/*
  * @brief  	单位切换界面状态跳转
  * @param   None
  * @retval    None
*/
void UnitExchange_Schedule(void)
{
	/*按键抬起*/
	if(sButton.Flag_Button_Lift_Transient)
	{
		/*按键曾经抬起来过*/
		/*实现短按关机功能*/
		sButton.Flag_Button_Lift_Once = TRUE;

		/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
		#if	(Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch == Enable)
				/*跳转到最近一次温度显示模式*/
				eDisplay_Interfaces = Display_RecentTemperature;
				/*重置按键相关标志位*/
				eButton_Status = Button_Debouncing;
		#endif

		/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
		#if	(Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem == Enable)
			/*2s预设时间到*/
			if(sButton.Flag_Button_Lift_2S)
			{
				/*跳转到当前测量模式符号模式*/
				eDisplay_Interfaces = Display_CurrentMode;
				/*重置按键相关标志位*/
				eButton_Status = Button_Debouncing;
			}
		#endif
	}
	/*按键按下*/
	else if(sButton.Flag_Button_Press_Transient)
	{
		if(sButton.Flag_Button_Lift_Once)
		{
			/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
			#if	(Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem == Enable)
				/*跳转到单位切换模式*/
				/*因为原本就在单位切换界面,故不需在对eDisplay_Interfaces进行赋值*/
				/*eDisplay_Interfaces = Display_UnitExchange;*/
				/*重置温度单位切换成功标志位*/
				UnitExchangeCompleted = FALSE;
				/*实现1S/2S内短按进入温度单位切换功能*/
				sButton.Flag_Button_Lift_Once = FALSE;
			#endif
		}
		else
		{
			/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
			#if	(Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch == Enable)
				if(sButton.Flag_Button_Press_6S)
				{
					/*跳转到程序版本显示模式*/
					eDisplay_Interfaces = Display_Version;
					/*重置按键相关标志位*/
					eButton_Status = Button_Debouncing;
				}
			#endif
		}
	}
}

/*
  * @brief  	绑定检测显示界面状态跳转
  * @param   None
  * @retval    None
  * @note      为简化代码量,将"原不同界面判断是否有绑定功能来决定是否进入绑定界面"
  * @note      改为"需要进绑定界面的全部进来,在绑定界面进行显示绑定信息"。
*/
void Binding_Schedule(void)
{
	/*显示软件版本和编码*/
	if(eVersionCode == VC_DispOn)
	{
		/*按键抬起*/
		if(sButton.Flag_Button_Lift_Transient)
		{
			/*按键抬起1s*/
			if(sButton.Flag_Button_Lift_1S)
			{
				/*跳转到开始测温模式*/
				eDisplay_Interfaces = Display_TemperatureDetecting;
				/*动态显示---℃/℉*/
				sTIMx.TempDetectingSymFlash1Hz = 0;
				/*重置250ms标志位*/
				sTIMx.Cnt250ms = 0;
				/*重置500ms标志位*/
				sTIMx.Cnt500ms = 0;
				/*1Hz闪烁标志,跳转到显示温度界面,优先温度单位不显示*/
				sTIMx.UnitSymbolFlash = 0;
				/*重置温度250ms采集标志*/
				sTIMx.TempSampleFlag = FALSE;

				sTest.ISR_AD_Counts = 0;
				sTest.MainCycle_Counts = 0;
				sTest.MainForecast_Counts = 0;

				/*重置按键相关标志位*/
				eButton_Status = Button_Debouncing;
				/*实测预测算法开始标志位*/
				sActual_Forecast.AF_Start = TRUE;
//				sADC.Get_250msTemp_Flag = FALSE;
			}
		}
		/*按键按下*/
		else if(sButton.Flag_Button_Press_Transient)
		{
			/*跳转到休眠模式*/
			eDisplay_Interfaces = Display_SleepMode;
		}
	}
	/*默认软件版本和编码不显示*/
	else if(eVersionCode == VC_DispOff)
	{
		/*跳转到开始测温模式*/
		eDisplay_Interfaces = Display_TemperatureDetecting;
		/*动态显示---℃/℉*/
		sTIMx.TempDetectingSymFlash1Hz = 0;
		/*重置250ms标志位*/
		sTIMx.Cnt250ms = 0;
		/*重置500ms标志位*/
		sTIMx.Cnt500ms = 0;
		/*1Hz闪烁标志,跳转到显示温度界面,优先温度单位不显示*/
		sTIMx.UnitSymbolFlash = 0;
		/*重置温度250ms采集标志*/
		sTIMx.TempSampleFlag = FALSE;

		sTest.ISR_AD_Counts = 0;
		sTest.MainCycle_Counts = 0;
		sTest.MainForecast_Counts = 0;

		/*重置按键相关标志位*/
		eButton_Status = Button_Debouncing;
		/*置位实测算法标志位*/
		/*实测预测算法开始标志位*/
		sActual_Forecast.AF_Start = TRUE;
	}
}

/*
  * @brief  	程序版本界面状态跳转
  * @param   None
  * @retval    None
*/
void Version_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	if(sButton.Flag_Button_Lift_Transient)
	{
		/*跳转到休眠模式*/
		eDisplay_Interfaces = Display_SleepMode;
	}
	else if(sButton.Flag_Button_Press_Transient)
	{
		/*40 * 25ms = 1S*/
		Result = Timer_Experience(sTimeStamp.DispCOM_Timer,40);
		if(Result)
		{
			/*跳转到编码模式*/
			eDisplay_Interfaces = Display_Code;
			sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
		}
	}
	/*从校准界面跳转到全显界面将温度单位切换回摄氏度*/
	eTempUnit = eBondingTempUnit/*Centigrade*/;
}

/*
  * @brief  	程序编码界面状态跳转
  * @param   None
  * @retval    None
*/
void Code_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	if(sButton.Flag_Button_Lift_Transient)
	{
		/*跳转到休眠模式*/
		eDisplay_Interfaces = Display_SleepMode;
	}
	else if(sButton.Flag_Button_Press_Transient)
	{
		/*40 * 25ms = 1S*/
		Result = Timer_Experience(sTimeStamp.DispCOM_Timer,40);
		if(Result)
		{
			/*跳转到Off模式*/
			eDisplay_Interfaces = Display_Off;
			sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
		}
	}
}


/*
  * @brief  	Off状态跳转
  * @param   None
  * @retval    None
*/
void Off_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	/*200 * 25ms = 5s*/
	Result = Timer_Experience(sTimeStamp.DispCOM_Timer,200);

	if(sButton.Flag_Button_Lift_Transient)
	{
		/*按键曾经抬起来过*/
		sButton.Flag_Button_Lift_Once = TRUE;

		if(Result)
		{
			/*跳转到休眠模式*/
			eDisplay_Interfaces = Display_SleepMode;
		}
	}
	else if(sButton.Flag_Button_Press_Transient)
	{
		if(sButton.Flag_Button_Lift_Once)
		{
			/*跳转预校温界面*/
			eDisplay_Interfaces = Display_PreCalibration/*Display_Calibration*/;
			/*按键曾经抬起来过*/
			sButton.Flag_Button_Lift_Once = FALSE;
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
			sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
			/*实现切换到温度校准模式时立即"CAL"符号*/
			sTIMx.UnitSymbolFlash = 1;
			/*保证"CAL"符号显示到不显的时间间隔是500ms*/
			sTIMx.Cnt500ms = 0;
		}
		else if(Result)
		{
			/*跳转到休眠模式*/
			eDisplay_Interfaces = Display_SleepMode;
		}
	}
}

/*
  * @brief  	预校温界面状态机跳转
  * @param   None
  * @retval    None
*/
void PreCalibration_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	/*72000 * 25ms = 30min*/
	Result = Timer_Experience(sTimeStamp.DispCOM_Timer,72000);

	if(Result)
	{
		/*跳转到休眠模式*/
		eDisplay_Interfaces = Display_SleepMode;
	}

	if(sButton.Flag_Button_Lift_Transient)
	{
		/*按键曾经抬起来过*/
		sButton.Flag_Button_Lift_Once = TRUE;
	}
	else if(sButton.Flag_Button_Press_Transient)
	{
		if(sButton.Flag_Button_Lift_Once)
		{
			/*跳转预校温界面*/
			eDisplay_Interfaces = Display_Calibration;
			/*按键曾经抬起来过*/
			sButton.Flag_Button_Lift_Once = FALSE;
			/*进入到温度校准界面需要重新写Offset值,将写完成标志位置FALSE*/
			sTempCal.BIE_Writed = FALSE;
			/*温度校准60s时间到达标志位*/
			sTempCal.Cal_60s_Arrived = FALSE;
			/*没有故障且时间到达60s则允许执行写BIE操作标志位*/
			sTempCal.Enable_BIE_Write = FALSE;
			/*重新打开LCD标志位*/
			sTempCal.Reopen_LCD = FALSE;
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
			sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
			/*实现切换到温度校准模式时立即"CAL"符号*/
			sTIMx.CalSymbolFlash= 1;
			/*保证"CAL"符号显示到不显的时间间隔是500ms*/
			sTIMx.Cnt500ms = 0;
		}
	}
}


/*
  * @brief  	温度校准界面状态机跳转
  * @param   None
  * @retval    None
*/
void Calibration_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
		/*从校准界面跳转到全显界面将温度单位切换回摄氏度*/
		eTempUnit = eBondingTempUnit/*Centigrade*/;
		/*这里做了兼容,无论当前处于什么模式,校温结束都会默认跳转到口腔模式,完成预测表校温结束后的自检*/
		#ifdef CE_Tset_80601_2_56
			eMeasureMode = Bath_Mode;
		#else
			eMeasureMode = Oral_Mode;
		#endif
	}

	/*2400 * 25ms = 60s*/
	Result = Timer_Experience(sTimeStamp.DispCOM_Timer,2400);
	/*60S后进行下述判断*/
	if(Result)
	{
		/*温度校准60s时间到达标志位*/
		sTempCal.Cal_60s_Arrived = TRUE;

		/*重新打开LCD标志位*/
		if(sTempCal.Reopen_LCD)
		{
			/*查询数组ERR中是否有故障*/
			if(memchrn(ERR,1,sizeof(ERR)))
			{
				/*检测到故障进入故障显示界面*/
				eDisplay_Interfaces = Display_ERR;

				sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
			}
			else
			{
				/*进入温度校准成功界面*/
				eDisplay_Interfaces = Display_CalibrationOK;
				sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
			}
		}
	}
}

/*
  * @brief  	温度校准成功界面状态跳转
  * @param   None
  * @retval    None
*/

void CalibrationOK_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	/*7200 * 25ms = 3min*/
	Result = Timer_Experience(sTimeStamp.DispCOM_Timer,7200);
	/*按键抬起2s*/
	if(Result)
	{
		/*进入全显界面*/
		eDisplay_Interfaces = Display_All;

		/*清除50ms标志位*/
		sTIMx.LVDSampleFlag = 0;
		sTIMx.Cnt50ms = 0;
		/*重置LVD.LVDBuf数组序号*/
		sLVD.pLVDBuf = 0;
		/*重置LVD自检完成标志位*/
//		sLVD.LVD_Test_Completed = FALSE;

		/*温度校准成功3min重启标志位标志位*/
		sTempCal.Reset_From_CalOK = TRUE;
		/*从校准界面跳转到全显界面将温度单位切换回摄氏度*/
		eTempUnit = eBondingTempUnit/*Centigrade*/;
		/*重置按键相关标志位*/
		eButton_Status = Button_Debouncing;
		sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
		/*开关机蜂鸣*/
		eBuzzer_Status = Buzzer_PowerOnOff;
		/*全显亮2s*/
		eBacklight_Status = All_Backlight;
		/*重置温度值*/
		sADC.Centigrade250msTemp = 0;
	}
}

/*
  * @brief  	最近一次温度界面状态跳转
  * @param   None
  * @retval    None
*/
void RecentTemp_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	/*按键抬起*/
	if(sButton.Flag_Button_Lift_Transient)
	{
		/*80 * 25ms = 2s*/
		Result = Timer_Experience(sTimeStamp.DispCOM_Timer,80);
		/*按键抬起2s*/
		if(Result)
		{
			/*跳转到当前测量模式符号模式*/
			eDisplay_Interfaces = Display_CurrentMode;
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
			sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
		}
	}
	/*按键按下*/
	else if(sButton.Flag_Button_Press_Transient)
	{
		/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
		#if	(Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem == Enable)
			/*兼容是否具有单位切换功能*/
			if((eBinding_Status == CentigradeFirst_Switchable) || (eBinding_Status == FahrenheitFirst_Switchable))
			{
				if(sButton.Flag_Button_Press_3S)
				{
					/*跳转到单位切换模式*/
					eDisplay_Interfaces = Display_UnitExchange;

					/*原表逻辑温度单位转换，进入时首先显示的温度单位应该为当前单位，再次按下时单位才会转换*/
					UnitExchangeCompleted = TRUE;

					sButton.Flag_Button_Lift_Once = FALSE;
					/*重置按键相关标志位*/
					eButton_Status = Button_Debouncing;
					sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
				}
			}
		#endif

		/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
		#if	(Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch == Enable)
			/*当记忆温度数量为1时即认为是不需要计入记忆温度界面*/
			#if (MemTempNum == 1)
				/*跳转到休眠模式*/
				eDisplay_Interfaces = Display_SleepMode;
			#else
				if(sButton.Flag_Button_Press_3S)
				{
					/*跳转到显示记忆温度序号模式*/
					eDisplay_Interfaces = Display_MemoryTemperatureNumber;
					/*重置按键曾经抬起来过标志位*/
					sButton.Flag_Button_Lift_Once = FALSE;
					/*重置按键相关标志位*/
					eButton_Status = Button_Debouncing;
					sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
					/*背光亮2S标志位*/
					sBacklight.Backlight2SFlag = FALSE;
				}
			#endif
		#endif
	}
}


/*
  * @brief  	记忆温度序号/记忆温度界面状态跳转
  * @param   None
  * @retval    None
*/
void MemTemp_Schedule(void)
{
	/*按键抬起*/
	if(sButton.Flag_Button_Lift_Transient)
	{
		/*按键曾经抬起来过*/
		/*实现短按关机功能*/
		sButton.Flag_Button_Lift_Once = TRUE;

		/*60S内无操作进入到休眠模式*/
		if(sButton.Flag_Button_Lift_60S)
		{
			/*跳转到休眠模式*/
			eDisplay_Interfaces = Display_SleepMode;
		}

		/*在记忆温度序号界面检测到按键抬起直接跳转到记忆温度显示界面*/
		if(eDisplay_Interfaces == Display_MemoryTemperatureNumber)
		{
			/*跳转到记忆温度显示模式*/
			eDisplay_Interfaces = Display_MemoryTemperatureValue;
			/*置更新记忆温度标志位*/
			sMemoryFlag.Update_MemTempDispNo = TRUE;
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
		}
	}
	/*按键按下*/
	else if(sButton.Flag_Button_Press_Transient)
	{
		if(sButton.Flag_Button_Lift_Once)
		{
			if(sButton.Flag_Button_Press_3S)
			{
				/*跳转到休眠模式*/
				eDisplay_Interfaces = Display_SleepMode;
			}

			if(eDisplay_Interfaces == Display_MemoryTemperatureValue)
			{
				/*跳转到显示记忆温度序号模式*/
				eDisplay_Interfaces = Display_MemoryTemperatureNumber;
				/*置更新记忆温度序号标志位*/
				sMemoryFlag.Update_MemTempDispVlaue = TRUE;
				/*重置按键相关标志位*/
				eButton_Status = Button_Debouncing;
				/*置快速切换记忆温度标志位*/
				sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;
				/*背光亮2S标志位*/
				sBacklight.Backlight2SFlag = FALSE;
			}
		}
		else
		{
			if(sButton.Flag_Button_Press_3S)
			{
				/*跳转到休眠模式*/
				eDisplay_Interfaces = Display_SleepMode;
			}
		}
	}
}

/*
  * @brief  	当前模式符号显示界面状态跳转
  * @param   None
  * @retval    None
*/
void CurrentMode_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	#if	(Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem == Enable)
		/*80 * 25ms = 2s*/
		Result = Timer_Experience(sTimeStamp.DispCOM_Timer,80);
		if(Result)
		{
			/*跳转到绑定检测模式*/
			eDisplay_Interfaces = Display_Binding;
			/*实现切换到绑定模式时立即显示软件版本号*/
			sTIMx.BindingSymbolFlash = 1;
			/*保证模式符号显示到不显的时间间隔是500ms*/
			sTIMx.Cnt500ms = 0;
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
			sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
		}
	#endif

	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	#if	(Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch == Enable)
		/*按键按下3S*/
		if(sButton.Flag_Button_Press_3S)
		{
			eDisplay_Interfaces = Display_ModeExchange;
			sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
			/*按键曾经抬起来过*/
			/*实现1S/2S内短按进入校温功能*/
			sButton.Flag_Button_Lift_Once = FALSE;
			/*不需要实现切换到下一个模式时立即显示模式符号*/
			/*因为切换到的下一个模式和当前模式是一个符号,没必要直接显示模式符号*/
			sTIMx.ModeSymbolFlash = 0;
			/*保证模式符号显示到不显的时间间隔是500ms*/
			sTIMx.Cnt500ms = 0;
		}
		/*按键抬起2S*/
		else if(sButton.Flag_Button_Lift_Transient)
		{
			/*80 * 25ms = 2s*/
			Result = Timer_Experience(sTimeStamp.DispCOM_Timer,80);
			if(Result)
			{
				/*跳转到绑定检测模式*/
				eDisplay_Interfaces = Display_Binding;
				/*实现切换到绑定模式时立即显示软件版本号*/
				sTIMx.BindingSymbolFlash = 1;
				/*保证模式符号显示到不显的时间间隔是500ms*/
				sTIMx.Cnt500ms = 0;
				/*重置按键相关标志位*/
				eButton_Status = Button_Debouncing;
				sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
			}
		}
	#endif
}

/*
  * @brief  	模式切换显示界面状态跳转
  * @param   None
  * @retval    None
*/
void ModeExchange_Schedule(void)
{
	if(sButton.Flag_Button_Lift_Transient)
	{
		/*按键曾经抬起来过*/
		/*实现1S内短按进入校温功能*/   /*短按模式切换*/
		sButton.Flag_Button_Lift_Once = TRUE;
	}

	/*按键抬起2s后进入xx模式*/
	if(sButton.Flag_Button_Lift_2S)
	{
		/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
		#if	(Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem == Enable)
			/*跳转到休眠界面*/
			eDisplay_Interfaces = Display_SleepMode;
		#endif

		/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
		#if	(Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch == Enable)
			/*跳转到绑定检测模式*/
			eDisplay_Interfaces = Display_Binding;
			/*实现切换到绑定模式时立即显示软件版本号*/
			sTIMx.BindingSymbolFlash = 1;
			/*保证模式符号显示到不显的时间间隔是500ms*/
			sTIMx.Cnt500ms = 0;
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
		#endif
	}
	/*2S内按键抬起并按下进入到模式切换*/
	else if(sButton.Flag_Button_Lift_Once && sButton.Flag_Button_Press_Transient)
	{
		if(eMeasureMode++ >= 3)		//4个模式
		{
			eMeasureMode = 0;
		}
		/*按键曾经抬起来过*/
		/*实现1S/2S内短按进入温度切换功能*/
		sButton.Flag_Button_Lift_Once = FALSE;
		/*实现切换到下一个模式时立即显示模式符号*/
		sTIMx.ModeSymbolFlash = 1;
		/*保证模式符号显示到不显的时间间隔是500ms*/
		sTIMx.Cnt500ms = 0;
	}
	/*按下6S跳转到程序版本显示模式*/
	else if(sButton.Flag_Button_Press_6S)
	{
		/*跳转到程序版本显示模式*/
		eDisplay_Interfaces = Display_Version;
		/*重置按键相关标志位*/
		eButton_Status = Button_Debouncing;
		/*参照原表在“全显界面进入模式切换后关机”不需要蜂鸣*/
		Flag_No_Buzzer = FALSE;
	}
}

/*
  * @brief  	测量温度界面状态跳转
  * @param   None
  * @retval    None
*/
void TemperatureDetecting_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	if(sButton.Flag_Button_Lift_Transient)
	{
		/*按键曾经抬起来过*/
		/*实现1S内短按进入校温功能*/  /*短按关机*/
		sButton.Flag_Button_Lift_Once = TRUE;

		if(sActual_Forecast.StableBuzzerFlag)
		{
			/*跳转到显示温度界面*/
			eDisplay_Interfaces = Display_MeasuredTemperature;
			/*重置按键相关标志位*/
			eButton_Status = Button_Debouncing;
			sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
			/*重置蜂鸣器4Hz计数*/
			sTIMx.Cnt125ms = 0;
			/*重置1Hz计数*/
			sTIMx.Cnt500ms = 0;
			/*间断性蜂鸣,蜂鸣三次,频率:4Hz,间隔250ms*/
			sTIMx.BuzzerIntervalCnt = 0;
			/*实现频率为4Hz的蜂鸣*/
			sTIMx.BuzzerFlash4Hz = 0;
			/*实现频率为1Hz的蜂鸣*/
			sTIMx.BuzzerFlash1Hz = 0;

			/*温度校准成功3min重启标志位标志位*/
			if(sTempCal.Reset_From_CalOK)
			{
				sTIMx.Cnt1s = 0;
				/*预测判定成功后先显示T终,1s后再显示预测温度,交替显示*/
				sTIMx.ForecastJudgeOKTempFlash = 0;
				/*校准后预测温度值*/
				sActual_Forecast.Calibrated_Forecast_Temp = sActual_Forecast.CentigradeTempDisp;
			}
			if(memchrn(ERR,1,sizeof(ERR)))
			{
				if(ERR[Err1] || ERR[Err2])
				{
					/*探头移除时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
					/*预测超时时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
					eBuzzer_Status = Buzzer_Er1Er2;
				}
			}
			else
			{
				/*测量结束蜂鸣共计10S*/
				/*eBuzzer_Status = Buzzer_MeasuredTemp;*/

				/*实测算法*/
				if(sActual.Actual_Start)
				{
					eBuzzer_Status = Buzzer_MeasuredTempActual;
				}
				/*预测算法*/
				else if(sForecast.Forecast_Start)
				{
					#if (Soft_Code == 203)  || (Soft_Code == 204) || (Soft_Code == 208) || (Soft_Code == 404)|| (Soft_Code == 902)
						eBuzzer_Status = Buzzer_MeasuredTempActual;
 					#else
						eBuzzer_Status = Buzzer_MeasuredTempForecast;
					#endif   /* 20210607改，芯片更换遵循原表 */
				}
			}

			/*测量结束界面共计亮10S*/
			eBacklight_Status = MeasuredTemp_Backlight;
		}
	}
	else if(sButton.Flag_Button_Lift_Once && sButton.Flag_Button_Press_Transient)
	{
		/*跳转到休眠界面*/
		eDisplay_Interfaces = Display_SleepMode;
	}


	#ifndef EMC_Test
		/*当处在测温界面且实测与预测皆没开始10分钟后关机*/
		if(!sActual.Actual_Start && !sForecast.Forecast_Start)
		{
			/*10MIN内无操作 跳转到休眠模式*/
			/*24000 * 25ms = 10min*/
			Result = Timer_Experience(sTimeStamp.DispCOM_Timer,24000);
			if(Result)
			{
				/*跳转到休眠界面*/
				eDisplay_Interfaces = Display_SleepMode;
			}
		}
	#else
		/*3MIN内无操作 跳转到休眠模式*/
		/*72000 * 25ms = 30min*/
		Result = Timer_Experience(sTimeStamp.DispCOM_Timer,72000);
		if(Result)
		{
			/*跳转到休眠界面*/
			eDisplay_Interfaces = Display_SleepMode;
		}
	#endif

	/*查询数组ERR中是否有故障*/
	if(memchrn(ERR,1,sizeof(ERR)))
	{
		/*检测到故障进入故障显示界面*/
		eDisplay_Interfaces = Display_ERR;
		/*重置启用实测算法标志位*/
		/*实测预测算法开始标志位*/
		sActual_Forecast.AF_Start = FALSE;

		sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;

		/*重置1Hz计数*/
		sTIMx.Cnt500ms = 0;
		/*实现频率为1Hz的蜂鸣*/
		sTIMx.BuzzerFlash1Hz = 0;
	}
}

/*进入故障界面状态跳转*/
void ERR_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	if(sButton.Flag_Button_Press_Transient)
	{
		/*跳转到休眠模式*/
		eDisplay_Interfaces = Display_SleepMode;
	}

	/*10MIN内无操作 跳转到休眠模式*/
	/*24000 * 25ms = 10min*/
	Result = Timer_Experience(sTimeStamp.DispCOM_Timer,24000);
	if(Result)
	{
		/*跳转到休眠界面*/
		eDisplay_Interfaces = Display_SleepMode;
	}
}



/*
  * @brief  	显示温度界面状态跳转
  * @param   None
  * @retval    None
*/
void MeasuredTemp_Schedule(void)
{
	uint8 Result;

	if(!sTimeStamp.Get_DispCOM_Start_Time_Flag)
	{
		sTimeStamp.Get_DispCOM_Start_Time_Flag = TRUE;
		sTimeStamp.DispCOM_Timer = sTimeStamp.Timer_Journey;
	}

	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	#if	(Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch == Enable)
		/*进入休眠界面状态跳转*/
		if(sButton.Flag_Button_Press_Transient)
		{
			/*跳转到休眠模式*/
			eDisplay_Interfaces = Display_SleepMode;
		}
	#endif

	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	#if	(Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem == Enable)
		/*按键抬起*/
		if(sButton.Flag_Button_Lift_Transient && sButton.Flag_Button_Press_Once)
		{
			/*跳转到休眠模式*/
			eDisplay_Interfaces = Display_SleepMode;
		}
		/*按键按下*/
		else if(sButton.Flag_Button_Press_Transient)
		{
			/*当记忆温度数量为1时即认为是不需要计入记忆温度界面*/
			#if (MemTempNum == 1)
				/*跳转到休眠模式*/
				eDisplay_Interfaces = Display_SleepMode;
			#else
				/*按键曾按下过*/
				/*实现测量结束界面短按关机功能*/
				sButton.Flag_Button_Press_Once = TRUE;

				/*蜂鸣情况下按下关机*/
				if(eBuzzer_Status != Buzzer_Silent)
				{
					/*跳转到休眠模式*/
					eDisplay_Interfaces = Display_SleepMode;
				}
				/*蜂鸣结束才允许进入记忆温度查看界面*/
				else if(sButton.Flag_Button_Press_3S)
				{
					/*跳转到显示记忆温度序号模式*/
					eDisplay_Interfaces = Display_MemoryTemperatureNumber;
					/*重置按键曾经抬起来过标志位*/
					sButton.Flag_Button_Lift_Once = FALSE;
					/*重置按键相关标志位*/
					eButton_Status = Button_Debouncing;
					/*背光亮2S标志位*/
					sBacklight.Backlight2SFlag = FALSE;
					/*实测预测算法开始标志位*/
					sActual_Forecast.AF_Start = FALSE;

					/*蜂鸣结束还在一种背光状态下切换另一种背光需要将该标志位置FALSE,否则进入第一组背光时不亮*/
					sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;
				}
			#endif
		}
	#endif


	/*温度校准成功3min重启标志位标志位*/
	if(sTempCal.Reset_From_CalOK)
	{
		/*1MIN内无操作 跳转到休眠模式*/
			/*2400* 25ms = 1min*/
			Result = Timer_Experience(sTimeStamp.DispCOM_Timer,2400);
			if(Result)
			{
				/*跳转到休眠界面*/
				eDisplay_Interfaces = Display_SleepMode;
			}
	}
	else
	{
		#ifndef EMC_Test
			/*10MIN内无操作 跳转到休眠模式*/
			/*24000 * 25ms = 10min*/
			Result = Timer_Experience(sTimeStamp.DispCOM_Timer,24000);
			if(Result)
			{
				/*跳转到休眠界面*/
				eDisplay_Interfaces = Display_SleepMode;
			}
		#else
			/*3MIN内无操作 跳转到休眠模式*/
			/*72000 * 25ms = 30min*/
			Result = Timer_Experience(sTimeStamp.DispCOM_Timer,72000);
			if(Result)
			{
				/*跳转到休眠界面*/
				eDisplay_Interfaces = Display_SleepMode;
			}
		#endif
	}



	/*查询数组ERR中是否有故障*/
	if(memchrn(ERR,1,sizeof(ERR)))
	{
		/*检测到故障进入故障显示界面*/
		eDisplay_Interfaces = Display_ERR;
		/*重置启用实测算法标志位*/
		/*实测预测算法开始标志位*/
		sActual_Forecast.AF_Start = FALSE;

		sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
	}

	if(sBleStatus.F_Temp_Updated)
	{
		sBleStatus.F_Temp_Updated = FALSE;
		sBleStatus.F_Temp_Upload = TRUE;

	}
	/*MEM温度更新标志位*/
	if(sMemoryFlag.MemTemp_Updated)
	{
		sMemoryFlag.MemTemp_Updated = FALSE;
		/*写RAM使能标志位*/
		sMemoryFlag.Write_MemTemp_RAM_EN = TRUE;
		/*数据存储模块*/
		#if	(Func_E2 == Enable)
			/*写E2使能标志位*/
			sMemoryFlag.Write_MemTemp_E2_EN = TRUE;
		#endif
	}
}

/*
  * @brief  	状态机模块
  * @param   None
  * @retval    None
*/
void Task_Schedule(void)
{
	switch(eDisplay_Interfaces)
	{
		/*上电界面:0*/
		case Display_PowerOn:
			/*LVD检测模块*/
			LVD_Detect();
			/*上电界面状态跳转*/
			PowerOn_Schedule();
		break;

		/*欠压界面:1*/
		case Display_LowPower:
			/*欠压界面状态跳转*/
			LowPower_Schedule();
		break;

		/*全显界面:2*/
		case Display_All:
			/*全显界面状态跳转*/
			All_Schedule();
		break;

		/*单位切换界面:3*/
		case Display_UnitExchange:
			/*单位切换界面状态跳转*/
			UnitExchange_Schedule();
		break;

		/*程序版本显示界面:4*/
		case Display_Version:
			/*程序版本界面状态跳转*/
			Version_Schedule();
		break;

		/*程序编码显示界面:5*/
		case Display_Code:
			/*程序编码界面状态跳转*/
			Code_Schedule();
		break;

		/*Off显示界面:6*/
		case Display_Off:
			/*程序编码界面状态跳转*/
			Off_Schedule();
		break;

		/*预校温界面:19*/
		case Display_PreCalibration:
			/*预校温界面状态机跳转*/
			PreCalibration_Schedule();
		break;

		/*温度校准界面:7*/
		case Display_Calibration:
			/*温度校准界面状态跳转*/
			Calibration_Schedule();

			/*温度校准*/
			Temp_Calibration();
		break;

		/*温度校准成功界面:8*/
		case Display_CalibrationOK:
			/*温度校准成功界面状态跳转*/
			CalibrationOK_Schedule();
		break;

		/*最近一次温度显示界面:9*/
		case Display_RecentTemperature:
			/*最近一次温度界面状态跳转*/
			RecentTemp_Schedule();
		break;

		/*记忆温度序号显示界面:10*/
		case Display_MemoryTemperatureNumber:
		/*记忆温度显示界面:10*/
		case Display_MemoryTemperatureValue:
			/*记忆温度序号/记忆温度界面状态跳转*/
			MemTemp_Schedule();
		break;

		/*有四种模式可选:Oral(口腔)、Underarm(腋下)、Rectal(直肠)、Bath(水槽)*/
		/*当前模式符号显示界面:12*/
		case Display_CurrentMode:
			/*当前模式符号显示界面状态跳转*/
			CurrentMode_Schedule();
		break;

		/*模式切换显示界面:13*/
		case Display_ModeExchange:
			/*模式切换显示界面状态跳转*/
			ModeExchange_Schedule();
		break;

		/*绑定检测显示界面:14*/
		case Display_Binding:
			/*绑定检测显示界面状态跳转*/
			Binding_Schedule();
		break;

		/*开始测温显示界面:15*/
		case Display_TemperatureDetecting:
			/*测量温度显示界面状态跳转*/
			TemperatureDetecting_Schedule();
		break;

		/*显示故障界面:16*/
		case Display_ERR:
			/*进入故障界面状态跳转*/
			ERR_Schedule();
		break;

		/*显示温度界面:17*/
		case Display_MeasuredTemperature:
			/*显示温度界面状态跳转*/
			MeasuredTemp_Schedule();

			/*存储记忆温度*/
			MemoryTemp_RAMStore();
			/*数据存储模块*/
			#if	(Func_E2 == Enable)
				/*规定数据外部存储*/
				/*目前仅存储10组记忆数据(记忆组数可设)*/
				MemoryTemp_E2Store();
			#endif
		break;

		/*休眠模式界面:18*/
		case Display_SleepMode:
			Sleep_Mode();
		break;

		default:break;
	}
}
