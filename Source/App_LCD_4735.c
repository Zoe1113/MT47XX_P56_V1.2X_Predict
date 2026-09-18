#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_LCD.c
说    明：	  LCD算法的集合（应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:		适用于MT4735系列、MT4759系列、MT4760系列、MT4763系列、MT4765系列液晶片
修订记录：
**************************************************************************/
#define _App_LCD_4735_H_

/*Includes*/
#include "./../Include/Include.h"

#ifdef LCD_4735

	/*
	* @brief     显示温度单位
	* @param  None
	* @retval   None
	*/
	void DispUnit(void)
	{
		/*当为摄氏度时*/
		if(eTempUnit == Centigrade)
		{
			/*显示华氏度单位*/
			LCD_Unit_C_En();
		}
		/*当为华氏度时*/
		else if(eTempUnit == Fahrenheit)
		{
			/*显示摄氏度单位*/
			LCD_Unit_F_En();
		}
	}

	/*
	* @brief     显示FL
	* @param  None
	* @retval   None
	*/
	void DispDelta(uint16 temp)
	{
		/*预设FL(Fever Line)功能*/
		#if	(Func_FL == Enable)
			/*当前温度单位为摄氏度*/
			if(eTempUnit == Centigrade)
			{
				/*当前温度大于发热温度*/
				if(temp >= Fever_Temp_Centigrade)
				{
					/*显示Delta3*/
					LCD_Delta3_En();
				}
				/*当前温度位于警告温度和发热温度之间*/
				else if(temp >= Warn_Temp_Centigrade)
				{
					/*显示Delta2*/
					LCD_Delta2_En();
				}
				/*当前温度位于正常温度和警告温度之间*/
				else if(temp >= Noamal_Temp_Centigrade)
				{
					/*显示Delta1*/
					LCD_Delta1_En();
				}
			}
			/*当前温度单位为华氏度*/
			else if(eTempUnit == Fahrenheit)
			{
				/*当前温度大于发热温度*/
				if(temp >= Fever_Temp_Fahrenheit)
				{
					/*显示Delta3*/
					LCD_Delta3_En();
				}
				/*当前温度位于警告温度和发热温度之间*/
				else if(temp >= Warn_Temp_Fahrenheit)
				{
					/*显示Delta2*/
					LCD_Delta2_En();
				}
				/*当前温度位于正常温度和警告温度之间*/
				else if(temp >= Noamal_Temp_Fahrenheit)
				{
					/*显示Delta1*/
					LCD_Delta1_En();
				}
			}
		#endif

		/*预设哭笑脸(Smile Cry)功能*/
		#if	(Func_SC == Enable)
			/*当前温度单位为摄氏度*/
			if(eTempUnit == Centigrade)
			{
				/*当前温度大于发热温度*/
				if(temp >= Fever_Temp_Centigrade)
				{
					LCD_Cry_En();
				}
				/*当前温度位于正常温度和警告温度之间*/
				else if(temp >= Noamal_Temp_Centigrade)
				{
					LCD_Smile_En();
				}
			}
			/*当前温度单位为华氏度*/
			else if(eTempUnit == Fahrenheit)
			{
				/*当前温度大于发热温度*/
				if(temp >= Fever_Temp_Fahrenheit)
				{
					LCD_Cry_En();
				}
				/*当前温度位于正常温度和警告温度之间*/
				else if(temp >= Noamal_Temp_Fahrenheit)
				{
					LCD_Smile_En();
				}
			}
		#endif
	}

	/*
	* @brief     显示数字
	* @param  num:要显示的数字
	* @retval   None
	* @note     占用时间(主频2M):14 * 25ms ≈ 7.77ms
	*/
	void DispNum(uint16 num)
	{
		uint8 NumDisp[5];

		/*提取温度的各个位上的数字*/
		/*百位*/
		NumDisp[4] = num / 10000;
		/*十位*/
		NumDisp[3] = num / 1000 % 10;
		/*个位*/
		NumDisp[2] = num / 100 % 10;
		/*十分位*/
		NumDisp[1] = num / 10 % 10;
		/*百分位*/
		NumDisp[0] = num % 10;

		/*显示记忆温度序号界面*/
		if(eDisplay_Interfaces == Display_MemoryTemperatureNumber)
		{
			NumDisp[4]	= 10;
			NumDisp[3]	= 10;
			NumDisp[2]	= 10;
			/*下面描述指的是显示记忆序号时*/
			/*十位为0时,十位不显示*/
			if(NumDisp[1] == 0)
			{
				NumDisp[1] = 10;
			}
			/*十位 + 百位*/
			LCD0_Macro = 0x00;
			/*个位 + 蓝牙符号*/
			LCD1_Macro = NUM_CODE[NumDisp[1]];
			/*十分位 + 小数点*/
			LCD2_Macro = NUM_CODE[NumDisp[0]];
			/*百分位(单精度表失能) + (MEM)*/
			LCD3_Macro = 0x00;
			/*预测符号 + 电池符号 + 温度单位*/
			LCD4_Macro = 0x00;
			/*FL*/
			LCD5_Macro = 0x00;
		}
		else
		{
			/*百位为0时,百位不显示*/
			if(NumDisp[4] == 0)
			{
				/*十位为0时,不显示*/
				if(NumDisp[3] == 0)
				{
					NumDisp[3] = 10;
				}
				/*十位 + 百位*/
				LCD0_Macro = NUM_CODE[NumDisp[3]];
				/*百位*/
				LCD_Hundred_Clr();
			}
			/*百位控制段码比较特殊,单独处理*/
			else
			{
				/*十位 + 百位*/
				LCD0_Macro = NUM_CODE[NumDisp[3]];
				/*百位*/
				LCD_Hundred_En();
			}
			/*个位 + 蓝牙符号*/
			LCD1_Macro = NUM_CODE[NumDisp[2]];
			/*十分位 + 小数点*/
			LCD2_Macro = NUM_CODE[NumDisp[1]];
			/*百分位(单精度表失能) + (MEM)*/
			LCD3_Macro = 0x00;
			/*预测符号 + 电池符号 + 温度单位*/
			LCD4_Macro = 0x00;
			/*FL*/
			LCD5_Macro = 0x00;
		}
	}


	/*
	* @brief     蓝牙符号闪烁
	* @param  None
	* @retval   None
	*/
	void Disp_BLEFlash(void)
	{
		/*1Hz闪烁标志*/
		if(sTIMx.BLESymbolFlash)
		{
			/*显示蓝牙符号*/
			LCD_BLE_En();
		}
		else
		{
			/*清除蓝牙符号*/
			LCD_BLE_Clr();
		}
	}


	/*
	* @brief     电池常显
	* @param  None
	* @retval   None
	*/
	void Disp_Bat(void)
	{
		/*高于2.6V电池符号全显*/
		LCD_BatAll_En();
	}




	/*
	* @brief     温度单位闪烁
	* @param  None
	* @retval   None
	*/
	void Disp_UnitFlash(void)
	{
		/*当为摄氏度时*/
		if(eTempUnit == Centigrade)
		{
			/*1Hz闪烁标志*/
			if(sTIMx.UnitSymbolFlash)
			{
				/*显示"℃"*/
				LCD_Unit_C_En();
			}
			else
			{
				/*清除"℃"*/
				LCD_Unit_C_Clr();
			}
		}
		/*当为华氏度时*/
		else if(eTempUnit == Fahrenheit)
		{
			/*1Hz闪烁标志*/
			if(sTIMx.UnitSymbolFlash)
			{
				/*显示"℉"*/
				LCD_Unit_F_En();
			}
			else
			{
				/*清除"℉"*/
				LCD_Unit_F_Clr();
			}
		}
	}

	/*
	* @brief     温度测量中显示动态---
	* @param  None
	* @retval   None
	*/
	void Disp_DynamicDash(void)
	{
		/*清屏*/
		Disp_Nothing();
		/*250ms标志位,250ms加1*/
		if(sTIMx.TempDetectingSymFlash1Hz == 0)
		{
			/*显示-  */
			LCD_Dash1_En();
		}
		/*250ms标志位,250ms加1*/
		else if(sTIMx.TempDetectingSymFlash1Hz == 1)
		{
			/*显示 - */
			LCD_Dash2_En();
		}
		else
		{
			/*显示  -*/
			LCD_Dash3_En();
		}
	}

	/*
	* @brief     温度测量中预测符号动态显示(P2常显,P1闪烁)
	* @param  None
	* @retval   None
	*/
	void Disp_DynamicForecastSymbol(void)
	{
		/*预测符号闪烁标志位,频率:1Hz*/
		if(sTIMx.ForecastSymbolFlash)
		{
			/*显示预测符号"P1"*/
			LCD_ForecastP1_En();
		}
		else
		{
			/*清除预测符号"P1"*/
			LCD_ForecastP1_Clr();
		}
		/*显示预测符号"P2"*/
		LCD_ForecastP2_En();
	}

	/*
	* @brief     显示蓝牙符号
	* @param  None
	* @retval   None
	*/
	void Disp_BleSymbol(void)
	{
		/*预设蓝牙功能*/
		#if	(Func_BLE == Enable)
			if(eBle_Sta == Ble_Disable)
			{
				LCD_BLE_Clr();
			}
			else if((eBle_Sta == Ble_Idle) || (eBle_Sta == Ble_UploadData))
			{
				LCD_BLE_En();
			}
			else
			{
				Disp_BLEFlash();
			}
		#endif
	}

	/*
	* @brief     显示单位符号
	* @param  None
	* @retval   None
	*/
	void UnitExchange_Display(void)
	{
		/*温度单位切换成功标志位*/
		if(!UnitExchangeCompleted)
		{
			/*清屏*/
			Disp_Nothing();

			UnitExchangeCompleted = TRUE;
			/*当前温度单位为摄氏度*/
			if(eTempUnit == Centigrade)
			{
				/*切换为华氏度*/
				eTempUnit = Fahrenheit;
				/*显示华氏度单位*/
				LCD_Unit_F_En();
			}
			/*当前温度单位为华氏度*/
			else if(eTempUnit == Fahrenheit)
			{
				/*切换为摄氏度*/
				eTempUnit = Centigrade;
				/*显示摄氏度单位*/
				LCD_Unit_C_En();
			}
		}
		else
		{
			/*清屏*/
			Disp_Nothing();

			/*当前温度单位为摄氏度*/
			if(eTempUnit == Centigrade)
			{
				/*显示摄氏度单位*/
				LCD_Unit_C_En();
			}
			/*当前温度单位为华氏度*/
			else if(eTempUnit == Fahrenheit)
			{
				/*显示华氏度单位*/
				LCD_Unit_F_En();
			}
		}



		/*显示蓝牙符号*/
		Disp_BleSymbol();
	}

	/*
	* @brief     显示校准符号
	* @param  None
	* @retval   None
	*/
	void Off_Display(void)
	{
		if(sButton.Flag_Button_Lift_Once)
		{
			/*清屏*/
			Disp_Nothing();
		}
		else
		{
			Disp_Off();
			/*显示蓝牙符号*/
			Disp_BleSymbol();
		}
	}

	/*
	* @brief     显示预校准符号
	* @param  None
	* @retval   None
	*/
	void PreCalibration_Display(void)
	{
		Disp_UnitFlash();

		Disp_BleSymbol();
	}


	/*
	* @brief     显示校准符号
	* @param  None
	* @retval   None
	*/
	void Calibration_Display(void)
	{
		/*过滤鬼影*/
		/*如果数组ERR既没有故障,60s校准时间达到,则开始将偏移量存入BIE*/
		if(!memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
		{
			/*关闭LCD的COM输出*/
	//		LCDCN3 = 0x00;
			/*没有故障且时间到达60s则允许执行写BIE操作标志位*/
			sTempCal.Enable_BIE_Write = TRUE;
		}
		else if(memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
		{
			/*BIE写的动作*/
			sTempCal.BIE_Write_Action = TRUE;
		}
		else
		{
			/*校准符号闪烁标志位,频率:1Hz*/
			if(sTIMx.CalSymbolFlash)
			{
				/*显示CAL*/
				Disp_CAL();
			}
			else
			{
				/*清屏*/
				Disp_Nothing();
			}
			/*显示蓝牙符号*/
			Disp_BleSymbol();
		}

		/*BIE写入完成,重新打开LCD*/
		if(sTempCal.BIE_Write_Action)
		{
			/*清屏*/
	//		Disp_Nothing();
			/*清LCD所有寄存器*/
			LCD_Clear_Register();
			/*设置LCD*/
			LCD_Configuration();
			/*重新打开LCD标志位*/
			sTempCal.Reopen_LCD = TRUE;
		}
	}

	/*
	* @brief     显示校准结束后的温度值
	* @param  None
	* @retval   None
	*/
	void CalibrationOK_Display(void)
	{
		/*显示End*/
		Disp_End();
		/*显示蓝牙符号*/
		Disp_BleSymbol();
	}

	/*
	* @brief     显示最近一次温度
	* @param  None
	* @retval   None
	*/
	void RecentTemp_Display(void)
	{
		sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemory.pMemTempBuf]);
		/*当前温度单位为摄氏度*/
		if(eTempUnit == Centigrade)
		{
			/*摄氏度<32℃*/
			if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
			{
				/*显示Low*/
				/*Disp_Low();*/

				#if (Soft_Code == 203)  || (Soft_Code == 204) || (Soft_Code == 208)|| (Soft_Code == 404)|| (Soft_Code == 902)
					/*显示Low*/
					Disp_Low();
				#else
						/*显示---*/
					Disp_StaticDash(); /*20210319改*/
				#endif   /* 20210607改，芯片更换遵循原表 */

			}
			/*摄氏度>43.9℃*/
			else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
			{
				Disp_Hi();
			}
			else
			{
				/*显示记忆温度/℃/℉*/
				DispNum(sActual_Forecast.ConvertedTempDisp);
				/*显示小数点*/
				LCD_Point_En();
			}
		}
		/*当前温度单位为华氏度*/
		else if(eTempUnit == Fahrenheit)
		{
			/*摄氏度<32℃*/
			if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
			{
				/*显示Low*/
				/*Disp_Low();*/

				#if (Soft_Code == 203)  || (Soft_Code == 204) || (Soft_Code == 208)|| (Soft_Code == 404)|| (Soft_Code == 902)
					/*显示Low*/
					Disp_Low();
				#else
						/*显示---*/
					Disp_StaticDash(); /*20210319改*/
				#endif   /* 20210607改，芯片更换遵循原表 */
			}
			/*摄氏度>42.9℃*/
			else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
			{
				Disp_Hi();
			}
			else
			{
				/*显示记忆温度/℃/℉*/
				DispNum(sActual_Forecast.ConvertedTempDisp);
				/*显示小数点*/
				LCD_Point_En();
			}
		}

		/*预设FL(Fever Line)功能*/
		#if	(Func_FL == Enable)
			/*显示FL*/
			DispDelta(sActual_Forecast.ConvertedTempDisp);
		#elif	(Func_SC == Enable)
			/*显示FL*/
			DispDelta(sActual_Forecast.ConvertedTempDisp);
		#else
			/*No Operation*/
		#endif

		/*显示温度单位*/
		DispUnit();
		/*显示'M'符号*/
		LCD_Mem_En();
		/*显示蓝牙符号*/
		Disp_BleSymbol();
	}

	/*
	* @brief     显示记忆序号
	* @param  None
	* @retval   None
	*/
	void MemTempNumber_Display(void)
	{
		/*进入记忆温度序号仅更新一次显示值标志位*/
		if(sMemoryFlag.Update_MemTempDispNo)
		{
			sMemoryFlag.Update_MemTempDispNo = FALSE;
			/*更新的记忆温度序号大于记忆温度数量的上限值时,返回循环显示*/
			if(++sMemoryFlag.MemTempDispNo > sMemory.MemTempSum)
			{
				sMemoryFlag.MemTempDispNo = 1;
			}
		}

		if(sMemoryFlag.Update_MemTempDispVlaue)
		{
			sMemoryFlag.Update_MemTempDispVlaue = FALSE;
			if(sMemory.MemTempSum == MemTempNum/*10*/)
			{
				if(!sMemoryFlag.MemTempDispValue)
				{
					sMemoryFlag.MemTempDispValue = MemTempNum - 1/*9*/;
				}
				else
				{
					--sMemoryFlag.MemTempDispValue;
				}
			}
			else
			{
				if(!sMemoryFlag.MemTempDispValue)
				{
					sMemoryFlag.MemTempDispValue = sMemory.pMemTempBuf;
				}
				else
				{
					--sMemoryFlag.MemTempDispValue;
				}
			}
		}

		/*显示记忆温度序号*/
		DispNum(sMemoryFlag.MemTempDispNo);
		/*显示'M'符号*/
		LCD_Mem_En();
		/*显示蓝牙符号*/
		Disp_BleSymbol();
	}

	/*
	* @brief     显示记忆温度值
	* @param  None
	* @retval   None
	*/
	void MemTempValue_Display(void)
	{
		sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
		if(!sMemory.MemTempSum)
		{
				#if (Soft_Code == 203)  || (Soft_Code == 204) || (Soft_Code == 208)|| (Soft_Code == 404)|| (Soft_Code == 902)
					/*显示Low*/
					Disp_Low();
				#else
						/*显示---*/
					Disp_StaticDash();
				#endif   /* 20210607改，芯片更换遵循原表 */
		}
		else
		{
			/*当前温度单位为摄氏度*/
			if(eTempUnit == Centigrade)
			{
				if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
				{
					Disp_Hi();
				}
				else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
				{
					/*显示Low*/
					/*Disp_Low();*/

				#if (Soft_Code == 203)  || (Soft_Code == 204) || (Soft_Code == 208)|| (Soft_Code == 404)|| (Soft_Code == 902)
					/*显示Low*/
					Disp_Low();
				#else
						/*显示---*/
					Disp_StaticDash(); /*20210319改*/
				#endif   /* 20210607改，芯片更换遵循原表 */
				}
				else
				{
					/*显示记忆温度/℃*/
					DispNum(sActual_Forecast.ConvertedTempDisp);
					/*显示小数点*/
					LCD_Point_En();
				}
			}
			/*当前温度单位为华氏度*/
			else if(eTempUnit == Fahrenheit)
			{
				if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
				{
					Disp_Hi();
				}
				else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
				{
					/*显示Low*/
					/*Disp_Low();*/

				#if (Soft_Code == 203)  || (Soft_Code == 204) || (Soft_Code == 208)|| (Soft_Code == 404)|| (Soft_Code == 902)
					/*显示Low*/
					Disp_Low();
				#else
						/*显示---*/
					Disp_StaticDash(); /*20210319改*/
				#endif   /* 20210607改，芯片更换遵循原表 */
				}
				else
				{
					/*显示记忆温度/℉*/
					DispNum(sActual_Forecast.ConvertedTempDisp);
					/*显示小数点*/
					LCD_Point_En();
				}
			}

			/*预设FL(Fever Line)功能*/
			#if	(Func_FL == Enable)
				/*显示FL*/
				DispDelta(sActual_Forecast.ConvertedTempDisp);
			#elif	(Func_SC == Enable)
				/*显示FL*/
				DispDelta(sActual_Forecast.ConvertedTempDisp);
			#else
				/*No Operation*/
			#endif
		}

		/*显示温度单位*/
		DispUnit();
		/*显示'M'符号*/
		LCD_Mem_En();
		/*显示蓝牙符号*/
		Disp_BleSymbol();
	}

	/*
	* @brief     显示当前模式符号
	* @param  None
	* @retval   None
	*/
	void CurrentMode_Display(void)
	{
		/*当前模式处于口腔模式*/
		if(eMeasureMode == Oral_Mode)
		{
			/*显示口腔符号符号*/
			Disp_Orl();
		}
		/*当前模式处于腋下模式*/
		else if(eMeasureMode == Underarm_Mode)
		{
			/*显示腋下符号符号*/
			Disp_Udr();
		}
		/*当前模式处于直肠模式*/
		else if(eMeasureMode == Rectal_Mode)
		{
			/*显示直肠模式符号*/
			Disp_Rct();
		}
		/*当前模式处于水槽模式*/
		else if(eMeasureMode == Bath_Mode)
		{
			/*显示水槽模式符号*/
			Disp_Bth();
		}
	}

	/*
	* @brief     显示模式切换界面信息
	* @param  None
	* @retval   None
	*/
	void ModeExchange_Display(void)
	{
		/*模式切换符号闪烁使能*/
		/*在模式界面跳转到模式切换界面闪烁才能清楚的看到模式切换成功*/
		/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
		#if	(Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch == Enable)
			/*No Operation*/
		#else
			/*禁用模式符号闪烁功能*/
			sTIMx.EnableModeSymbolFlash = 1;
		#endif

		if(sTIMx.ModeSymbolFlash || sTIMx.EnableModeSymbolFlash)
		{
			/*显示当前模式符号*/
			CurrentMode_Display();
		}
		else
		{
			/*清屏*/
			Disp_Nothing();
		}
	}

	/*
	* @brief     显示绑定信息,目前仅显示软件版本号和编码,后期可扩充
	* @param  None
	* @retval   None
	*/
	void Binding_Display(void)
	{
		/*绑定显示信息功能打开*/
		if(eVersionCode == VC_DispOn)
		{
			if(sTIMx.BindingSymbolFlash)
			{
				/*显示程序版本*/
				Disp_Version(Soft_External_Version);
			}
			else
			{
				/*显示程序编码*/
				Disp_Code(Soft_Code);
			}
		}
	}


	void EMC_Update_Temp_Fast(void)
	{
		#ifdef EMC_Test
			uint8 Result;

			if(!sTimeStamp.Get_EMC_Temp_Update_Time_Flag)
			{
				sTimeStamp.Get_EMC_Temp_Update_Time_Flag = TRUE;
				sTimeStamp.EMC_Temp_Update_Timer = sTimeStamp.Timer_Journey;
			}

			/*120 * 25ms = 3s*/
			Result = Timer_Experience(sTimeStamp.EMC_Temp_Update_Timer,120);
			/*预设3s显示温度*/
			if(Result)
			{
				sADC.RefreshTempFast = FALSE;
			}
		#endif
	}


	/*
	* @brief     显示测量温度
	* @param  None
	* @retval   None
	*/
	void TempDetecting_Display(void)
	{
		/*测量模式为水槽模式*/
		if((eMeasureMode == Bath_Mode) || sActual.Actual_Start)
		{
			/*EMC认证*/
			#ifdef EMC_Test
				if(!sADC.UnRefreshTemp || sADC.RefreshTempFast)
			#else
				if(!sADC.UnRefreshTemp)
			#endif
			/*EMC认证*/
	//		if(!sADC.UnRefreshTemp || sADC.RefreshTempFast)
			{
				/*进行四舍五入,保留十分位*/
				sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);

				/*当前温度单位为摄氏度*/
				if(eTempUnit == Centigrade)
				{
					/*当前温度单位为摄氏度大于等于42.9/43.9℃*/
					if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
					{
						/*显示Hi*/
						Disp_Hi();

						EMC_Update_Temp_Fast();
					}
					/*当前温度单位为摄氏度小于32℃*/
					else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
					{
						/*显示Low*/
						/*Disp_Low();*/

				#if (Soft_Code == 203)  || (Soft_Code == 204) || (Soft_Code == 208)|| (Soft_Code == 404)|| (Soft_Code == 902)
					/*显示Low*/
					Disp_Low();
				#else
						/*显示---*/
					Disp_StaticDash(); /*20210319改*/
				#endif   /* 20210607改，芯片更换遵循原表 */
					}
					else
					{
						/*显示温度/℃/℉*/
						DispNum(sActual_Forecast.ConvertedTempDisp);
						/*显示小数点*/
						LCD_Point_En();

						EMC_Update_Temp_Fast();
					}
				}
				/*当前温度单位为华氏度*/
				else if(eTempUnit == Fahrenheit)
				{
					/*当前温度单位为摄氏度大于等于42.9/43.9℃*/
					if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
					{
						/*显示Hi*/
						Disp_Hi();

						EMC_Update_Temp_Fast();
					}
					/*当前温度单位为摄氏度小于32℃*/
					else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
					{
						/*显示Low*/
						/*Disp_Low();*/

				#if (Soft_Code == 203)  || (Soft_Code == 204) || (Soft_Code == 208)|| (Soft_Code == 404)|| (Soft_Code == 902)
					/*显示Low*/
					Disp_Low();
				#else
						/*显示---*/
					Disp_StaticDash(); /*20210319改*/
				#endif   /* 20210607改，芯片更换遵循原表 */
					}
					else
					{
						/*显示温度/℃/℉*/
						DispNum(sActual_Forecast.ConvertedTempDisp);
						/*显示小数点*/
						LCD_Point_En();

						EMC_Update_Temp_Fast();
					}
				}
			}
			/*单位闪烁*/
			Disp_UnitFlash();
			/*清除预测符号P1 P2*/
			LCD_ForecastP1P2_Clr();
		}
		else
		{
			if(sForecast.Forecast_Start)
			{
				Disp_DynamicDash();
				Disp_DynamicForecastSymbol();
			}
			else
			{
				/*显示---*/
				Disp_StaticDash();
				/*显示预测符号P2*/
				LCD_ForecastP2_En();
			}

			/*显示温度单位*/
			DispUnit();
		}
		/*显示蓝牙符号*/
		Disp_BleSymbol();
	}

	/*
	* @brief     显示故障信息
	* @param  None
	* @retval   None
	*/
	void Err_Disp(void)
	{
		if(ERR[Err4])
		{
			/*校准失败判定:连续五次0.25s前后两次温度≥0.05℃*/
			/*温度校准失败*/
			Disp_ErrNo(Err4);
		}
		else if(ERR[Err0])
		{
			/*有效温度范围:36.4-37.5℃*/
			/*校准温度超范围*/
			Disp_ErrNo(Err0);
		}
		else if(ERR[Err5])
		{
			/*温度校准值比对是将存进去的值读出来判断是否相等*/
			/*温度校准值比对错误*/
			Disp_ErrNo(Err5);
		}
		else if(ERR[Err1])
		{
			/*探头移除*/
			Disp_ErrNo(Err1);
		}
		else if(ERR[Err6])
		{
			/*预测判定超时(超过8s)*/
			Disp_ErrNo(Err6);
		}
		else if(ERR[Err2])
		{
			/*预测超时*/
			Disp_ErrNo(Err2);
		}
		else if(ERR[Err3])
		{
			/*预留*/
			Disp_ErrNo(Err3);
		}
		else if(ERR[Err])
		{
			/*探头开路短路*/
			Disp_Err();
		}
		else if(ERR[Err7])
		{
			/*预留*/
			Disp_ErrNo(Err7);
		}
	}

	/*
	* @brief     显示测量结束信息
	* @param  None
	* @retval   None
	*/
	void MeasedTemp_Disp(void)
	{
		uint16 tmp;

		/*温度校准成功3min重启标志位标志位*/
		if(sTempCal.Reset_From_CalOK)
		{
			/*当前温度单位为摄氏度*/
			if(eTempUnit == Centigrade)
			{
				/*1Hz闪烁标志*/
				if(sTIMx.ForecastJudgeOKTempFlash)
				{
					tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
					/*当前温度单位为摄氏度大于等于42.9/43.9℃*/
					if(tmp > High_Temp_Centigrade)
					{
						/*显示Hi*/
						Disp_Hi();
					}
					else
					{
						/*校准后预测温度值*/
						DispNum(tmp);
						/*显示小数点*/
						LCD_Point_En();
					}

					/*预设FL(Fever Line)功能*/
					#if	(Func_FL == Enable)
						/*显示FL*/
						DispDelta(tmp);
					#elif	(Func_SC == Enable)
						/*显示FL*/
						DispDelta(tmp);
					#else
						/*No Operation*/
					#endif
				}
				else
				{
					tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
					/*当前温度单位为摄氏度大于等于42.9/43.9℃*/
					if(tmp > High_Temp_Centigrade)
					{
						/*显示Hi*/
						Disp_Hi();
					}
					else
					{
						/*校准后预测温度值*/
						DispNum(tmp);
						/*显示小数点*/
						LCD_Point_En();
					}

					/*预设FL(Fever Line)功能*/
					#if	(Func_FL == Enable)
						/*显示FL*/
						DispDelta(tmp);
					#elif	(Func_SC == Enable)
						/*显示FL*/
						DispDelta(tmp);
					#else
						/*No Operation*/
					#endif
				}
			}
			/*当前温度单位为华氏度*/
			else if(eTempUnit == Fahrenheit)
			{
				/*1Hz闪烁标志*/
				if(sTIMx.ForecastJudgeOKTempFlash)
				{
					tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
					/*当前温度单位为摄氏度大于等于42.9/43.9℃*/
					if(tmp > High_Temp_Fahrenheit)
					{
						/*显示Hi*/
						Disp_Hi();
					}
					else
					{
						/*校准后预测温度值*/
						DispNum(tmp);
						/*显示小数点*/
						LCD_Point_En();
					}

					/*预设FL(Fever Line)功能*/
					#if	(Func_FL == Enable)
						/*显示FL*/
						DispDelta(tmp);
					#elif	(Func_SC == Enable)
						/*显示FL*/
						DispDelta(tmp);
					#else
						/*No Operation*/
					#endif
				}
				else
				{
					tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
					/*当前温度单位为摄氏度大于等于42.9/43.9℃*/
					if(tmp > High_Temp_Fahrenheit)
					{
						/*显示Hi*/
						Disp_Hi();
					}
					else
					{
						/*校准后预测温度值*/
						DispNum(tmp);
						/*显示小数点*/
						LCD_Point_En();
					}

					/*预设FL(Fever Line)功能*/
					#if	(Func_FL == Enable)
						/*显示FL*/
						DispDelta(tmp);
					#elif	(Func_SC == Enable)
						/*显示FL*/
						DispDelta(tmp);
					#else
						/*No Operation*/
					#endif
				}
			}
			/*显示温度单位*/
			DispUnit();
		}
		else
		{
			/*EMC认证*/
			if(!sADC.UnRefreshTemp)
			{
				/*进行四舍五入,保留十分位*/
				sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
			}

			/*当前温度单位为摄氏度*/
			if(eTempUnit == Centigrade)
			{
				/*当前温度单位为摄氏度大于等于42.9/43.9℃*/
				if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
				{
					/*显示Hi*/
					Disp_Hi();
				}
				else
				{
					/*显示温度/℃/℉*/
					DispNum(sActual_Forecast.ConvertedTempDisp);
					/*显示小数点*/
					LCD_Point_En();
				}
			}
			/*当前温度单位为华氏度*/
			else if(eTempUnit == Fahrenheit)
			{
				/*当前温度单位为摄氏度大于等于42.9/43.9℃*/
				if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
				{
					/*显示Hi*/
					Disp_Hi();
				}
				else
				{
					/*显示温度/℃/℉*/
					DispNum(sActual_Forecast.ConvertedTempDisp);
					/*显示小数点*/
					LCD_Point_En();
				}
			}

			/*显示温度单位*/
			DispUnit();
			/*显示FL3*/
			/*预设FL(Fever Line)功能*/
			#if	(Func_FL == Enable)
				/*显示FL*/
				DispDelta(sActual_Forecast.ConvertedTempDisp);
			#elif	(Func_SC == Enable)
				/*显示FL*/
				DispDelta(sActual_Forecast.ConvertedTempDisp);
			#else
				/*No Operation*/
			#endif
		}

		/*预测结束3分钟转实测预测符号消失*/
		/*且在温度校准结束跳转到测温界面3分钟后不转实测*/
		if(sForecast.Update_MaxTemp3Min_Arrived && !sTempCal.Reset_From_CalOK)
		{
			LCD_ForecastP1P2_Clr();
		}
		else if(sForecast.Forecast_Start)
		{
			LCD_ForecastP1P2_En();
		}
	}

	/*
	* @brief     LCD显示模块
	* @param  None
	* @retval   None
	*/
	void LCD_Display(void)
	{
		/*LCD50ms刷新标志*/
		if(sTIMx.LCDRefreshFlag)
		{
			/*重置LCD50ms刷新标志*/
			sTIMx.LCDRefreshFlag = FALSE;
			switch(eDisplay_Interfaces)
			{
				/*上电界面:0*/
				case Display_PowerOn:
					/*No Operation*/
				break;

				/*欠压界面:1*/
				case Display_LowPower:
					/*显示欠压符号*/
					Disp_BrownOut();
				break;

				/*全显界面:2*/
				case Display_All:
					/*显示全显信息*/
					Disp_All();

					if(!sBacklight.Backlight2SFlag)
					{
						sBacklight.Backlight2SFlag = TRUE;
						/*全显界面总计亮2S*/
						eBacklight_Status = All_Backlight;
					}
				break;

				/*单位切换界面:3*/
				case Display_UnitExchange:
					/*显示单位符号*/
					UnitExchange_Display();
					#if Bat_MDR == Enable
						/*显示电池符号*/
						Disp_Bat();
					#endif
				break;

				/*程序版本显示界面:4*/
				case Display_Version:
					/*显示程序版本*/
					Disp_Version(Soft_External_Version);
					/*显示蓝牙符号*/
					Disp_BleSymbol();
				break;

				/*程序编码显示界面:5*/
				case Display_Code:
					/*显示程序编码*/
					Disp_Code(Soft_Code);
					/*显示蓝牙符号*/
					Disp_BleSymbol();
				break;

				/*Off显示界面:6*/
				case Display_Off:
					/*显示Off符号*/
					Off_Display();
				break;

				/*预校温界面:19*/
				case Display_PreCalibration:
					/*显示预校准符号*/
					PreCalibration_Display();
				break;

				/*温度校准界面:7*/
				case Display_Calibration:
					/*显示校准符号*/
					Calibration_Display();
				break;

				/*温度校准成功界面:8*/
				case Display_CalibrationOK:
					/*显示校准后的温度*/
					CalibrationOK_Display();
					#if Bat_MDR == Enable
						/*显示电池符号*/
						Disp_Bat();
					#endif
				break;

				/*最近一次温度显示界面:9*/
				case Display_RecentTemperature:
					/*显示最近一次温度*/
					RecentTemp_Display();
					#if Bat_MDR == Enable
						/*显示电池符号*/
						Disp_Bat();
					#endif
				break;

				/*记忆温度序号显示界面:10*/
				case Display_MemoryTemperatureNumber:
					/*显示记忆序号*/
					MemTempNumber_Display();

					if(!sBacklight.Backlight2SFlag)
					{
						/*背光亮2S标志位*/
						sBacklight.Backlight2SFlag = TRUE;
						/*记忆温度界面共计亮2S*/
						eBacklight_Status = MemTemp_Backlight;
					}
					#if Bat_MDR == Enable
						/*显示电池符号*/
						Disp_Bat();
					#endif
				break;

				/*记忆温度显示界面:11*/
				case Display_MemoryTemperatureValue:
					/*显示记忆温度值*/
					MemTempValue_Display();
					#if Bat_MDR == Enable
						/*显示电池符号*/
						Disp_Bat();
					#endif
				break;

				/*有四种模式可选:Oral(口腔)、Underarm(腋下)、Rectal(直肠)、Bath(水槽)*/
				/*当前模式符号显示界面:12*/
				case Display_CurrentMode:
					/*显示当前模式符号*/
					CurrentMode_Display();
					/*显示蓝牙符号*/
					Disp_BleSymbol();
					#if Bat_MDR == Enable
						/*显示电池符号*/
						Disp_Bat();
					#endif
				break;

				/*模式切换显示界面:13*/
				case Display_ModeExchange:
					/*显示模式切换界面信息*/
					ModeExchange_Display();
					/*显示蓝牙符号*/
					Disp_BleSymbol();
					#if Bat_MDR == Enable
						/*显示电池符号*/
						Disp_Bat();
					#endif
				break;

				/*绑定检测显示界面:14*/
				case Display_Binding:
					/*显示软件版本和编码*/
					Binding_Display();
					/*显示蓝牙符号*/
					Disp_BleSymbol();
				break;

				/*开始测温显示界面:15*/
				case Display_TemperatureDetecting:
					/*显示测量过程中的温度*/
					TempDetecting_Display();

					#if	(Func_TempDetectingBacklight == Enable)
						if(!sBacklight.Backlight2SFlag)
						{
							sBacklight.Backlight2SFlag = TRUE;
							eBacklight_Status = TempDetecting_Backlight;
						}
					#endif

					#if Bat_MDR == Enable
						/*显示电池符号*/
						Disp_Bat();
					#endif
				break;

				/*显示故障界面:16*/
				case Display_ERR:
					/*显示错误编码*/
					Err_Disp();
					/*显示蓝牙符号*/
					Disp_BleSymbol();
					#if Bat_MDR == Enable
						/*显示电池符号*/
						Disp_Bat();
					#endif
				break;

				/*显示温度界面:17*/
				case Display_MeasuredTemperature:
					/*显示稳定蜂鸣后的温度*/
					MeasedTemp_Disp();
					/*显示蓝牙符号*/
					Disp_BleSymbol();
					#if Bat_MDR == Enable
						/*显示电池符号*/
						Disp_Bat();
					#endif
				break;

				/*休眠模式界面:18*/
				case Display_SleepMode:
					/*清屏*/
					Disp_Nothing();
				break;

				default:break;
			}
		}
	}

#endif

