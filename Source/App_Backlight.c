#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_Backlight.c
说    明：	  背光相关设置集合（应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_Backlight_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	单色背光驱动
  * @param   None
  * @retval    None
*/
void BackLight_SingleDrv(void)
{
	uint8 Result;

	switch(eBacklight_Status)
	{
		/*无背光*/
		case No_Backlight:
			/*关闭绿色/红色背光*/
			/*当选用单色背光时硬件上使用红色背光I/O口*/
			Disable_Red;
			/*拉低PT8.4失能G320_EN*/
			G320_Disable();
			sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;

			if(sBacklight.MeasuredTempLighting)
			{
				sBacklight.MeasuredTempLighting = FALSE;
				/*开启ADC*/
		    	ADC_Enable();
				/*设置CMFR,复位梳状滤波器*/
		    	ADC_CMFREnable();
		    	/*设置OSR分频系数*/
			    /*高精度模式下要求OSR可选:2048/4096/8192/16384*/
			    /*高精度模式下,ENOB和抗干扰能力有效提高,但SPS会下降一半*/
			    ADC_OSRSelect(OSR_2048);
		    	/*重置ADCCounts,防止误报ERR*/
				sADC.ADCCounts = 0;
				/*等待AD稳定,预防误报ERR*/
				Delay_ms(10);
			}
		break;

		/*全显界面总计亮2S*/
		case All_Backlight:
		/*记忆温度界面共计亮2S*/
		case MemTemp_Backlight:
		/*温度开始界面共计亮2S*/
		case TempDetecting_Backlight:
			#if Soft_Code == 983
				if ((eBacklight_Status == All_Backlight)||(eBacklight_Status == TempDetecting_Backlight))
				{
					if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
					{
						sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
						sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
						/*使能G320B*/
						G320_Enable();
					}
					else
					{
						/*80 * 25ms = 2s*/
						Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
						/*预设时间到*/
						if(Result)
						{
							eBacklight_Status = No_Backlight;
						}
						else
						{
							/*打开绿色/红色背光*/
							/*当选用单色背光时硬件上使用红色背光I/O口*/
							Enable_Red;
						}
					}
				}
				else if (eBacklight_Status == MemTemp_Backlight)		// 
				{
					sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
					/*当前温度单位为摄氏度*/
					if(eTempUnit == Centigrade)
					{
						/*当前温度单位为摄氏度大于等于37.8℃*/
						if(sActual_Forecast.ConvertedTempDisp > Fever_Temp_Centigrade)
						{
							Enable_Red;
						}
						else
						{
							Disable_Red;	// 无背光
						}
					}
					/*当前温度单位为华氏度*/
					else if(eTempUnit == Fahrenheit)
					{
						/*当前温度单位为摄氏度大于等于37.8℃*/
						if(sActual_Forecast.ConvertedTempDisp > Fever_Temp_Fahrenheit)
						{
							Enable_Red;
						}
						else
						{
							Disable_Red;	// 无背光
						}
					}
				}
			#else
				if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
				{
					sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
					sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
					/*使能G320B*/
					G320_Enable();
				}
				else
				{
					/*80 * 25ms = 2s*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
					/*预设时间到*/
					if(Result)
					{
						eBacklight_Status = No_Backlight;
					}
					else
					{
						/*打开绿色/红色背光*/
						/*当选用单色背光时硬件上使用红色背光I/O口*/
						Enable_Red;
					}
				}
			#endif
		break;

		/*测量结束界面共计亮10S*/
		case MeasuredTemp_Backlight:
			#if Soft_Code == 983
				/*测量结束背光亮标志位*/
				sBacklight.MeasuredTempLighting = TRUE;
				/*关闭ENAD1*/
				ADC_Disable();

				if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
				{
					sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
					sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
					/*使能G320B*/
					G320_Enable();
				}
				else
				{
					/*预设背光时间10s功能*/
					#if (Func_MeasuredTempBacklight10S == Enable)
						/*400 * 25ms = 10s*/
						Result = Timer_Experience(sTimeStamp.Backlight_Timer,400);
					/*预设背光时间20s功能*/
					#elif (Func_MeasuredTempBacklight20S == Enable)
						/*800 * 25ms = 20s*/
						Result = Timer_Experience(sTimeStamp.Backlight_Timer,800);
					#endif

					/*预设时间到*/
					if(Result)
					{
						eBacklight_Status = No_Backlight;
					}
					else
					{
						sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
						/*当前温度单位为摄氏度*/
						if(eTempUnit == Centigrade)
						{
							/*当前温度单位为摄氏度大于等于37.4℃*/
							if(sActual_Forecast.ConvertedTempDisp > Fever_Temp_Centigrade)
							{
								Enable_Red;
							}
							else
							{
								Disable_Red;	// 无背光
							}
						}
						/*当前温度单位为华氏度*/
						else if(eTempUnit == Fahrenheit)
						{
							/*当前温度单位为摄氏度大于等于99.4℉*/
							if(sActual_Forecast.ConvertedTempDisp > Fever_Temp_Fahrenheit)
							{
								Enable_Red;
							}
							else
							{
								Disable_Red;	// 无背光
							}
						}
					}
				}
			#else
				/*测量结束背光亮标志位*/
				sBacklight.MeasuredTempLighting = TRUE;
				/*关闭ENAD1*/
				ADC_Disable();

				if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
				{
					sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
					sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
					/*使能G320B*/
					G320_Enable();
				}
				else
				{
					/*预设背光时间10s功能*/
					#if (Func_MeasuredTempBacklight10S == Enable)
						/*400 * 25ms = 10s*/
						Result = Timer_Experience(sTimeStamp.Backlight_Timer,400);
					/*预设背光时间20s功能*/
					#elif (Func_MeasuredTempBacklight20S == Enable)
						/*800 * 25ms = 20s*/
						Result = Timer_Experience(sTimeStamp.Backlight_Timer,800);
					#endif

					/*预设时间到*/
					if(Result)
					{
						eBacklight_Status = No_Backlight;
					}
					else
					{
						/*打开绿色/红色背光*/
						/*当选用单色背光时硬件上使用红色背光I/O口*/
						Enable_Red;
					}
				}
			#endif
		break;

		default:break;
	}
}

/*
  * @brief  	双色背光驱动
  * @param   None
  * @retval    None
*/
void BackLight_DoubleDrv(void)
{
	uint8 Result;

	switch(eBacklight_Status)
	{
		/*无背光*/
		case No_Backlight:
			/*关闭绿色背光*/
			Disable_Green;
			/*关闭红色背光*/
			Disable_Red;
			/*拉低PT8.4失能G320_EN*/
			G320_Disable();
			sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;

			if(sBacklight.MeasuredTempLighting)
			{
				sBacklight.MeasuredTempLighting = FALSE;
				/*开启ADC*/
		    	ADC_Enable();
				/*设置CMFR,复位梳状滤波器*/
		    	ADC_CMFREnable();
		    	/*设置OSR分频系数*/
			    /*高精度模式下要求OSR可选:2048/4096/8192/16384*/
			    /*高精度模式下,ENOB和抗干扰能力有效提高,但SPS会下降一半*/
			    ADC_OSRSelect(OSR_2048);
		    	/*重置ADCCounts,防止误报ERR*/
				sADC.ADCCounts = 0;
				/*等待AD稳定,预防误报ERR*/
				Delay_ms(10);
			}
		break;

		/*全显界面总计亮2S*/
		case All_Backlight:
			if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
			{
				sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
				sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
				/*使能G320B*/
				G320_Enable();
			}
			else
			{
				/*40 * 25ms = 1s*/
				Result = Timer_Experience(sTimeStamp.Backlight_Timer,40);
				/*预设时间到*/
				if(Result)
				{
					/*80 * 25ms = 2s*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
					if(Result)
					{
						eBacklight_Status = No_Backlight;
					}
					else
					{
						/*关闭绿色背光*/
						Disable_Green;
						/*打开红色背光*/
						Enable_Red;
					}
				}
				else
				{
					/*打开绿色背光*/
					Enable_Green;
				}
			}
		break;

		/*记忆温度界面共计亮2S*/
		case MemTemp_Backlight:
		/*温度开始界面共计亮2S*/
		case TempDetecting_Backlight:
			if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
			{
				sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
				sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
				/*使能G320B*/
				G320_Enable();
			}
			else
			{
				/*80 * 25ms = 2s*/
				Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
				/*预设时间到*/
				if(Result)
				{
					eBacklight_Status = No_Backlight;
				}
				else
				{
					if(eBacklight_Status == MemTemp_Backlight)
					{
						sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
						/*当前温度单位为摄氏度*/
						if(eTempUnit == Centigrade)
						{
							/*当前记忆温度单位为摄氏度大于等于37.8℃*/
							if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*打开红色背光*/
								Enable_Red;
							}
							/*当前记忆温度单位为摄氏度小于37.8℃*/
							else
							{
								/*关闭红色背光*/
								Disable_Red;
								/*打开绿色背光*/
								Enable_Green;
							}
						}
						/*当前温度单位为华氏度*/
						else if(eTempUnit == Fahrenheit)
						{
							/*当前温度单位为华氏度大于等于100.0℉*/
							if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*打开红色背光*/
								Enable_Red;
							}
							/*当前记忆温度单位为摄氏度小于37.8℃*/
							else
							{
								/*关闭红色背光*/
								Disable_Red;
								/*打开绿色背光*/
								Enable_Green;
							}
						}
					}
					else
					{
						/*打开绿色背光*/
						Enable_Green;
					}
				}
			}
		break;

		/*测量结束界面共计亮10S*/
		case MeasuredTemp_Backlight:
			/*测量结束背光亮标志位*/
			sBacklight.MeasuredTempLighting = TRUE;
			/*关闭ENAD1*/
			ADC_Disable();

			if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
			{
				sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
				sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
				/*使能G320B*/
				G320_Enable();
			}
			else
			{
				/*预设背光时间10s功能*/
				#if (Func_MeasuredTempBacklight10S == Enable)
					/*400 * 25ms = 10s*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,400);
				/*预设背光时间20s功能*/
				#elif (Func_MeasuredTempBacklight20S == Enable)
					/*800 * 25ms = 20s*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,800);
				#endif

				/*预设时间到*/
				if(Result)
				{
					eBacklight_Status = No_Backlight;
				}
				else
				{
					sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
					/*当前温度单位为摄氏度*/
					if(eTempUnit == Centigrade)
					{
						/*当前温度单位为摄氏度大于等于37.8℃*/
						if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
						{
							/*打开红色背光*/
							Enable_Red;
						}
						/*当前温度单位为摄氏度小于37.8℃*/
						else
						{
							/*打开绿色背光*/
							Enable_Green;
						}
					}
					/*当前温度单位为华氏度*/
					else if(eTempUnit == Fahrenheit)
					{
						/*当前温度单位为华氏度大于等于100.0℉*/
						if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
						{
							/*打开红色背光*/
							Enable_Red;
						}
						/*当前温度单位为摄氏度小于37.8℃*/
						else
						{
							/*打开绿色背光*/
							Enable_Green;
						}
					}
				}
			}
		break;

		default:break;
	}
}


/*
  * @brief  	三色背光驱动
  * @param   None
  * @retval    None
*/
void BackLight_TribleDrv(void)
{
	uint8 Result;

	switch(eBacklight_Status)
	{
		/*无背光*/
		case No_Backlight:
			/*关闭绿色背光*/
			Disable_Green;
			/*关闭黄色背光*/
			Disable_Yellow;
			/*关闭红色背光*/
			Disable_Red;
			/*拉低PT8.4失能G320_EN*/
			G320_Disable();
			sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;

			if(sBacklight.MeasuredTempLighting)
			{
				sBacklight.MeasuredTempLighting = FALSE;
				/*开启ADC*/
		    	ADC_Enable();
				/*设置CMFR,复位梳状滤波器*/
		    	ADC_CMFREnable();
		    	/*设置OSR分频系数*/
			    /*高精度模式下要求OSR可选:2048/4096/8192/16384*/
			    /*高精度模式下,ENOB和抗干扰能力有效提高,但SPS会下降一半*/
			    ADC_OSRSelect(OSR_2048);
		    	/*重置ADCCounts,防止误报ERR*/
				sADC.ADCCounts = 0;
				/*等待AD稳定,预防误报ERR*/
				Delay_ms(10);
			}
		break;

		/*全显界面总计亮2S*/
		case All_Backlight:
			if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
			{
				sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
				sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
				/*使能G320B*/
				G320_Enable();
			}
			else
			{
				/*26 * 25ms = 666ms*/
				Result = Timer_Experience(sTimeStamp.Backlight_Timer,26);
				/*预设时间到*/
				if(Result)
				{
					/*52 * 25ms = (666 * 2)ms*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,52);
					if(Result)
					{
						/*78 * 25ms = (666 * 3)ms*/
						Result = Timer_Experience(sTimeStamp.Backlight_Timer,78);
						if(Result)
						{
							eBacklight_Status = No_Backlight;
						}
						else
						{
							/*关闭黄色背光*/
							Disable_Yellow;
							/*打开红色背光*/
							Enable_Red;
						}
					}
					else
					{
						/*关闭绿色背光*/
						Disable_Green;
						/*打开黄色背光*/
						Enable_Yellow;
					}
				}
				else
				{
					/*打开绿色背光*/
					Enable_Green;
				}
			}
		break;

		/*记忆温度界面共计亮2S*/
		case MemTemp_Backlight:
		/*温度开始界面共计亮2S*/
		case TempDetecting_Backlight:
			if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
			{
				sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
				sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
				/*使能G320B*/
				G320_Enable();
			}
			else
			{
				/*80 * 25ms = 2s*/
				Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
				/*预设时间到*/
				if(Result)
				{
					eBacklight_Status = No_Backlight;
				}
				else
				{
					if(eBacklight_Status == MemTemp_Backlight)
					{
						sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
						/*当前温度单位为摄氏度*/
						if(eTempUnit == Centigrade)
						{
							/*当前记忆温度单位为摄氏度大于等于37.8℃*/
							if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*关闭黄色背光*/
								Disable_Yellow;
								/*打开红色背光*/
								Enable_Red;
							}
							/*当前记忆温度单位为摄氏度大于等于37.3℃*/
							else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Centigrade)
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*关闭红色背光*/
								Disable_Red;
								/*打开红色背光*/
								Enable_Yellow;
							}
							/*当前记忆温度单位为摄氏度小于37.3℃*/
							else
							{
								/*关闭黄色背光*/
								Disable_Yellow;
								/*关闭红色背光*/
								Disable_Red;
								/*打开绿色背光*/
								Enable_Green;
							}
						}
						/*当前温度单位为华氏度*/
						else if(eTempUnit == Fahrenheit)
						{
							/*当前记忆温度单位为摄氏度大于等于37.8℃*/
							if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*关闭黄色背光*/
								Disable_Yellow;
								/*打开红色背光*/
								Enable_Red;
							}
							/*当前记忆温度单位为摄氏度大于等于37.3℃*/
							else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Fahrenheit)
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*关闭红色背光*/
								Disable_Red;
								/*打开红色背光*/
								Enable_Yellow;
							}
							/*当前记忆温度单位为摄氏度小于37.3℃*/
							else
							{
								/*关闭黄色背光*/
								Disable_Yellow;
								/*关闭红色背光*/
								Disable_Red;
								/*打开绿色背光*/
								Enable_Green;
							}
						}
					}
					else
					{
						/*打开绿色背光*/
						Enable_Green;
					}
				}
			}
		break;

		/*测量结束界面共计亮10S*/
		case MeasuredTemp_Backlight:
			/*关闭ENAD1*/
			ADC_Disable();
			/*测量结束背光亮标志位*/
			sBacklight.MeasuredTempLighting = TRUE;

			if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
			{
				sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
				sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
				/*使能G320B*/
				G320_Enable();
			}
			else
			{
				/*预设背光时间10s功能*/
				#if (Func_MeasuredTempBacklight10S == Enable)
					/*400 * 25ms = 10s*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,400);
				/*预设背光时间20s功能*/
				#elif (Func_MeasuredTempBacklight20S == Enable)
					/*800 * 25ms = 20s*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,800);
				#endif

				/*预设时间到*/
				if(Result)
				{
					eBacklight_Status = No_Backlight;
				}
				else
				{
					sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
					/*当前温度单位为摄氏度*/
					if(eTempUnit == Centigrade)
					{
						/*当前温度单位为摄氏度大于等于37.8℃*/
						if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
						{
							Enable_Red;
						}
						/*当前温度单位为摄氏度大于等于37.3℃*/
						else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Centigrade)
						{
							/*打开黄色背光*/
							Enable_Yellow;
						}
						/*当前温度单位为摄氏度小于37.3℃*/
						else
						{
							/*打开绿色背光*/
							Enable_Green;
						}
					}
					/*当前温度单位为华氏度*/
					else if(eTempUnit == Fahrenheit)
					{
						/*当前温度单位为摄氏度大于等于37.8℃*/
						if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
						{
							Enable_Red;
						}
						/*当前温度单位为摄氏度大于等于37.3℃*/
						else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Fahrenheit)
						{
							/*打开黄色背光*/
							Enable_Yellow;
						}
						/*当前温度单位为摄氏度小于37.3℃*/
						else
						{
							/*打开绿色背光*/
							Enable_Green;
						}
					}
				}
			}
		break;

		default:break;
	}
}



/*
  * @brief  	四色背光驱动
  * @param   None
  * @retval    None
*/
void BackLight_QuadrupleDrv(void)
{
	uint8 Result;

	switch(eBacklight_Status)
	{
		/*无背光*/
		case No_Backlight:
			/*关闭绿色背光*/
			Disable_Green;
			/*关闭黄色背光*/
			Disable_Yellow;
			/*关闭红色背光*/
			Disable_Red;
			/*关闭白色背光*/
			Disable_white;
			/*拉低PT8.4失能G320_EN*/
			G320_Disable();
			sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;

			if(sBacklight.MeasuredTempLighting)
			{
				sBacklight.MeasuredTempLighting = FALSE;
				/*开启ADC*/
		    	ADC_Enable();
				/*设置CMFR,复位梳状滤波器*/
		    	ADC_CMFREnable();
		    	/*设置OSR分频系数*/
			    /*高精度模式下要求OSR可选:2048/4096/8192/16384*/
			    /*高精度模式下,ENOB和抗干扰能力有效提高,但SPS会下降一半*/
			    ADC_OSRSelect(OSR_2048);
		    	/*重置ADCCounts,防止误报ERR*/
				sADC.ADCCounts = 0;
				/*等待AD稳定,预防误报ERR*/
				Delay_ms(10);
			}
		break;

		/*全显界面总计亮2S*/
		case All_Backlight:
			/*进绑定全显时点亮四色背光：方便绑定厂检验四色背光*/
			if(eVersionCode == VC_DispOn)
			{
				if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
				{
					sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
					sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
					/*使能G320B*/
					G320_Enable();
				}
				else
				{
					/*20 * 25ms = 500ms*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,20);
					/*预设时间到*/
					if(Result)
					{
						/*40 * 25ms = 1000ms*/
						Result = Timer_Experience(sTimeStamp.Backlight_Timer,40);
						if(Result)
						{
							/*60 * 25ms = 1500ms*/
							Result = Timer_Experience(sTimeStamp.Backlight_Timer,60);
							if(Result)
							{
								/*80 * 25ms = 2000ms*/
								Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
								if(Result)
								{
									eBacklight_Status = No_Backlight;
								}
								else
								{
									/*关闭黄色背光*/
									Disable_Yellow;
									/*打开红色背光*/
									Enable_Red;
								}
							}
							else
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*打开黄色背光*/
								Enable_Yellow;
							}
						}
						else
						{
							/*关闭白色背光*/
							Disable_white;
							/*打开绿色背光*/
							Enable_Green;
						}
					}
					else
					{
						/*打开白色背光*/
						Enable_white;
					}
				}
			}
			else
			{
				if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
				{
					sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
					sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
					/*使能G320B*/
					G320_Enable();
				}
				else
				{
					/*80 * 25ms = 2s*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
					/*预设时间到*/
					if(Result)
					{
						eBacklight_Status = No_Backlight;
					}
					else
					{
						/*打开白色背光*/
						Enable_white;
					}
				}
			}
		break;

		/*记忆温度界面共计亮2S*/
		case MemTemp_Backlight:
		/*温度开始界面共计亮2S*/
		case TempDetecting_Backlight:
			if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
			{
				sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
				sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
				/*使能G320B*/
				G320_Enable();
			}
			else
			{
				/*80 * 25ms = 2s*/
				Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
				/*预设时间到*/
				if(Result)
				{
					eBacklight_Status = No_Backlight;
				}
				else
				{
					if(eBacklight_Status == MemTemp_Backlight)
					{
						sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
						/*当前温度单位为摄氏度*/
						if(eTempUnit == Centigrade)
						{
							/*当前记忆温度单位为摄氏度大于等于37.8℃*/
							if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*关闭黄色背光*/
								Disable_Yellow;
								/*打开红色背光*/
								Enable_Red;
							}
							/*当前记忆温度单位为摄氏度大于等于37.3℃*/
							else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Centigrade)
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*关闭红色背光*/
								Disable_Red;
								/*打开红色背光*/
								Enable_Yellow;
							}
							/*当前记忆温度单位为摄氏度小于37.3℃*/
							else
							{
								/*关闭黄色背光*/
								Disable_Yellow;
								/*关闭红色背光*/
								Disable_Red;
								/*打开绿色背光*/
								Enable_Green;
							}
						}
						/*当前温度单位为华氏度*/
						else if(eTempUnit == Fahrenheit)
						{
							/*当前记忆温度单位为摄氏度大于等于37.8℃*/
							if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*关闭黄色背光*/
								Disable_Yellow;
								/*打开红色背光*/
								Enable_Red;
							}
							/*当前记忆温度单位为摄氏度大于等于37.3℃*/
							else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Fahrenheit)
							{
								/*关闭绿色背光*/
								Disable_Green;
								/*关闭红色背光*/
								Disable_Red;
								/*打开红色背光*/
								Enable_Yellow;
							}
							/*当前记忆温度单位为摄氏度小于37.3℃*/
							else
							{
								/*关闭黄色背光*/
								Disable_Yellow;
								/*关闭红色背光*/
								Disable_Red;
								/*打开绿色背光*/
								Enable_Green;
							}
						}
					}
					else
					{
						/*打开绿色背光*/
						Enable_Green;
					}
				}
			}
		break;

		/*测量结束界面共计亮10S*/
		case MeasuredTemp_Backlight:
			/*关闭ENAD1*/
			ADC_Disable();
			/*测量结束背光亮标志位*/
			sBacklight.MeasuredTempLighting = TRUE;

			if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
			{
				sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
				sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
				/*使能G320B*/
				G320_Enable();
			}
			else
			{
				/*预设背光时间10s功能*/
				#if (Func_MeasuredTempBacklight10S == Enable)
					/*400 * 25ms = 10s*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,400);
				/*预设背光时间20s功能*/
				#elif (Func_MeasuredTempBacklight20S == Enable)
					/*800 * 25ms = 20s*/
					Result = Timer_Experience(sTimeStamp.Backlight_Timer,800);
				#endif

				/*预设时间到*/
				if(Result)
				{
					eBacklight_Status = No_Backlight;
				}
				else
				{
					sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
					/*当前温度单位为摄氏度*/
					if(eTempUnit == Centigrade)
					{
						/*当前温度单位为摄氏度大于等于37.8℃*/
						if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
						{
							Enable_Red;
						}
						/*当前温度单位为摄氏度大于等于37.3℃*/
						else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Centigrade)
						{
							/*打开黄色背光*/
							Enable_Yellow;
						}
						/*当前温度单位为摄氏度小于37.3℃*/
						else
						{
							/*打开绿色背光*/
							Enable_Green;
						}
					}
					/*当前温度单位为华氏度*/
					else if(eTempUnit == Fahrenheit)
					{
						/*当前温度单位为摄氏度大于等于37.8℃*/
						if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
						{
							Enable_Red;
						}
						/*当前温度单位为摄氏度大于等于37.3℃*/
						else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Fahrenheit)
						{
							/*打开黄色背光*/
							Enable_Yellow;
						}
						/*当前温度单位为摄氏度小于37.3℃*/
						else
						{
							/*打开绿色背光*/
							Enable_Green;
						}
					}
				}
			}
		break;

		default:break;
	}
}




/*
  * @brief  	背光驱动模块
  * @param   None
  * @retval    None
*/
void Backlight_Drive(void)
{
	/*1.单色*/
	#if	(Func_SingleColor == Enable)
		/*欠压检测屏蔽背光灯亮,防止欠压检测时背光拉低纽扣电池供电电压造成欠压误检测*/
		if(sLVD.LVD_Test_Completed)
		{
			BackLight_SingleDrv();
		}
	#endif

	/*2.双色*/
	#if	(Func_DoubleColor == Enable)
		/*欠压检测屏蔽背光灯亮,防止欠压检测时背光拉低纽扣电池供电电压造成欠压误检测*/
		if(sLVD.LVD_Test_Completed)
		{
			BackLight_DoubleDrv();
		}
	#endif

	/*3.三色*/
	#if	(Func_TribleColor == Enable)
		/*欠压检测屏蔽背光灯亮,防止欠压检测时背光拉低纽扣电池供电电压造成欠压误检测*/
		if(sLVD.LVD_Test_Completed)
		{
			BackLight_TribleDrv();
		}
	#endif

	/*3.四色*/
	#if	(Func_QuadrupleColor == Enable)
		/*欠压检测屏蔽背光灯亮,防止欠压检测时背光拉低纽扣电池供电电压造成欠压误检测*/
		if(sLVD.LVD_Test_Completed)
		{
			BackLight_QuadrupleDrv();
		}
	#endif

}












