#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_Measure.c
说    明：	  温度算法的集合（应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_Measure_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief     温度校准模块
  * @param  None
  * @retval   None
*/
void Temp_Calibration(void)
{
	uint8 i;
	uint32 tmp;

	if(!sTempCal.BIE_Writed)
	{
		/*250ms采集一次*/
		if(sTIMx.TempSampleFlag)
		{
			/*清除250ms标志位*/
			sTIMx.TempSampleFlag = 0;
			/*获取温度值*/
			sTempCal.TempBuf[sTempCal.pTempBuf] = sADC.Centigrade250msTemp;
			/*循环往TempBuf数组中存数据*/
			if(++sTempCal.pTempBuf >= 5)
			{
				/*重置数组数据*/
				sTempCal.pTempBuf = 0;
			}
			/*初始化ERR[Err4]*/
			ERR[Err4] = FALSE;
			/*初始化ERR[Err0]*/
			ERR[Err0] = FALSE;

			for(i = 0;i < 4;i++)
			{
				/*五组数据前后差值在0.05℃之外*/
				if(abs(sTempCal.TempBuf[i + 1] - sTempCal.TempBuf[i]) > 5)
				{
					/*有Err4故障发生*/
					ERR[Err4] = TRUE;
				}

				if((sTempCal.TempBuf[i] < 3560/*3640*/) || (sTempCal.TempBuf[i] > 3850/*3750*/))
				{
					/*有Err0故障发生*/
					ERR[Err0] = TRUE;
				}
			}
			/*如果既没有Err4故障,也没有Err0故障且时间达到60s则开始将偏移量存入BIE*/
			if(sTempCal.Enable_BIE_Write)
			{
				/*如果地址可用*/
				if(BIE_Available_Addr <= 0x3F)
				{
					/*放大10000倍*/
					tmp = 30010000 / sADC.RawRntc;
					tmp += 1;
					sTempCal.Temp_Ratio = (uint16)tmp;

					/*LCD倍压电路能力*/
					/*0:高((啟動 BIE 功能時,選擇此設定)*/
					/*1:低(正常使用 LCD 功能時,選用此設定)*/
					LCDCN1 &= 0xFE;

					if(BIE_Write(BIE_Available_Addr,sTempCal.Temp_Ratio >> 8,sTempCal.Temp_Ratio))
					{
						/*有Err5故障发生*/
						/*BIE数据写入不成功*/
						ERR[Err5] = TRUE;
						sTempCal.BIE_Writed = TRUE;
					}

					/*BIE写操作会所有的COM和SEG引脚设置为LCD功能的引脚,为防止LCD鬼影的出现,这里关闭COM功能*/
					LCDCN3 = 0x00;
					/*关闭SEG引脚功能,预防干扰蓝牙功能*/
					LCDCN4 = 0x00;
					#if	Func_Debug == Debug_DSigmaAdc
						UART0_SendByte(0x88);
						UART0_SendByte(sTempCal.Temp_Ratio >> 8);
						UART0_SendByte(sTempCal.Temp_Ratio);
					#endif
				}
				/*会出现鬼影*/
				if(BIE_Read(BIE_Available_Addr) == sTempCal.Temp_Ratio)
				{
					/*无Err5故障发生*/
					/*BIE数据写入成功*/
					ERR[Err5] = FALSE;
					/*温度校准值写入BIE成功标志*/
					sTempCal.BIE_Writed = TRUE;
					/*BIE地址+1*/
					BIE_Available_Addr++;
				}
				else if(BIE_Read(BIE_Available_Addr) == 0xFFFF)
				{
					/*有Err5故障发生*/
					/*BIE数据写入不成功*/
					ERR[Err5] = TRUE;
				}
				else if(BIE_Read(BIE_Available_Addr) != 0xFFFF)
				{
					/*有Err5故障发生*/
					/*BIE数据写入不成功*/
					ERR[Err5] = TRUE;
					/*BIE地址+1*/
					BIE_Available_Addr++;
				}
				/*BIE写的动作*/
				sTempCal.BIE_Write_Action = TRUE;
			}
		}
	}
}

/*
  * @brief     Ns判稳算法
  * @param  PriorTemp:前一秒的温度
  * @param  PresentTemp:当前一秒的温度
  * @param  Timer:判稳的秒数
  * @retval   TRUE:满足判稳条件;FALSE:不满足判稳条件
*/
uint8 Judge_Stability(uint16 PriorTemp,uint16 PresentTemp,uint8 Timer)
{
	/*如果是常规精度,需要降低精度*/
	/*高精度:精确到百分位*/
	/*常规精度:精确到十分位*/
	/*十分位采用四舍五入*/
	PresentTemp = (PresentTemp + 5) / 10 * 10;
	PriorTemp = (PriorTemp + 5) / 10 * 10;

	/*当温度有变化,重新获取起始时间*/
	if(abs(PresentTemp - PriorTemp))
	{
		/*保证温度有变化时且在之后的4s数据不变(温度稳定后再计时4s)*/
		sActual.ActualTime = 0;
	}

	/*判稳时间Timer/s*/
	if(sActual.ActualTime >= Timer)
	{
		return TRUE;
	}
	return FALSE;
}

/*
  * @brief     特规品预留(测量时间>M秒)/M/MeasureTime宏定义暂取5s,可以更改
  * @param  None
  * @retval   TRUE:达到预设时间条件;FALSE:未达到预设时间条件
*/
uint8 PresetMeasTime(void)
{
	/*预设时间不满足*/
	if(!sActual.PresetMeasTimeCompletedFlag)
	{
		/*测量时间/s(特规品预留)*/
		/*MeasureTime/s*/
		/*这里不会有蜂鸣和温度单位闪烁次数判断,所有不会减去时间*/
		/*特别说明:预设时间算法是在Get_1sTemp函数满足条件下才开始计时,故预设时间判断要减去至少1S*/
		if(sActual.ActualTime >= MeasureTime)
		{
			/*测量时间 > MeasureTime/标志位*/
			sActual.PresetMeasTimeCompletedFlag = TRUE;

			/*预设条件结束标志*/
			/*************************************************/
			#if	Func_Debug == Debug_Measure
				if(MeasureTime)
				{
					UART0_SendString("PresetTime_End!\t");
					UART0_SendString("\n");
				}
			#endif
			/*************************************************/
		}
	}
	return sActual.PresetMeasTimeCompletedFlag;
}

/*
  * @brief     获取1s温度采样值
  * @param  None
  * @retval   TRUE:获取到一秒的温度值;FALSE:未获取到一秒的温度值
*/
uint8 Get_1sTemp(void)
{
	/*250ms计数的次数:计4次为1s*/
	if(++sActual_Forecast.Cnt_1S >= 4)
	{
		sActual_Forecast.Cnt_1S = 0;

		return TRUE;
	}
	return FALSE;
}

/*
  * @brief     过滤异常温度算法
  * @param  None
  * @retval   None
*/
void Filter_ErrTemp(void)
{
	/*过滤异常温度---温度T3*/
	sActual_Forecast.Temp_T3 = sADC.Centigrade250msTemp;

	if(sActual_Forecast.Temp_T3 >= sActual_Forecast.Temp_T2)
	{
		sActual_Forecast.Temp_T1 = sActual_Forecast.Temp_T2;
		sActual_Forecast.Temp_T2 = sActual_Forecast.Temp_T3;
		sActual_Forecast.Temp_T3 = 0;
	}
	else if(sActual_Forecast.Temp_T3 >= sActual_Forecast.Temp_T1)
	{
		sActual_Forecast.Temp_T2 = sActual_Forecast.Temp_T3;
		sActual_Forecast.Temp_T3 = 0;
	}
}

/*
  * @brief     实测算法
  * @param  None
  * @retval   None
*/
void Actual_Measure(void)
{
	/*TempSampleFlag:温度250ms采集标志位*/
	/*当处于校温界面,不进行实测算法*/
	if(sTIMx.TempSampleFlag && sActual_Forecast.AF_Start && (eMeasureMode == Bath_Mode))
	{
		/*清除250ms标志位*/
		sTIMx.TempSampleFlag = 0;

		/*************************************************/
		#if	Func_Debug == Debug_Measure
			UART0_SendString("R_T_250MS:\t");
			UART0_SendASCII(sADC.Centigrade250msTemp);
			UART0_SendString("\n");
		#endif
		/*************************************************/

		/*间隔1s采样温度*/
		if(Get_1sTemp())
		{
			/*过滤异常温度算法*/
			Filter_ErrTemp();

			sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Temp_T1);

			if(((sActual_Forecast.ConvertedTempDisp >= Low_Temp_Centigrade) && (eTempUnit == Centigrade))
			|| ((sActual_Forecast.ConvertedTempDisp >= Low_Temp_Fahrenheit) && (eTempUnit == Fahrenheit)))
			{
				sActual.Actual_Start = TRUE;
				/*当实测值 大于显示值且当前蜂鸣状态处于非蜂鸣状态才允许更新显示值*/
				if((sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp) && (eBuzzer_Status == Buzzer_Silent))
				{
				    /*更新最大值*/
				    sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
					sBleStatus.F_Temp_Updated = TRUE;
					sMemoryFlag.MemTemp_Updated = TRUE;
				}

				/*预设测量时间*/
				/*测量时间 > MeasureTime/标志位*/
				if(PresetMeasTime())
				{
					/*实测时间*/
					sActual.ActualTime++;
					/*温度稳定蜂鸣标志位*/
					if(!sActual_Forecast.StableBuzzerFlag)
					{
						/*当前温度单位为摄氏度大于36℃*/
					    if(((sActual_Forecast.ConvertedTempDisp >= 3600) && (eTempUnit == Centigrade))
						|| ((sActual_Forecast.ConvertedTempDisp >= 9680) && (eTempUnit == Fahrenheit)))
						{
							/*判稳时间StableTime/s*/
							if(Judge_Stability(sActual.Prior1sActualTemp,sActual_Forecast.CentigradeTempDisp,sActual.StableTime))
							{
								sActual_Forecast.StableBuzzerFlag = TRUE;
								sBleStatus.F_Temp_Updated = TRUE;
								sMemoryFlag.MemTemp_Updated = TRUE;
							}
						}
						else
						{
							/*16s判稳*/
							if(Judge_Stability(sActual.Prior1sActualTemp,sActual_Forecast.CentigradeTempDisp,16))
							{
								sActual_Forecast.StableBuzzerFlag = TRUE;
								sBleStatus.F_Temp_Updated = TRUE;
								sMemoryFlag.MemTemp_Updated = TRUE;
							}
						}
					}
					/*获取先前1s的温度值*/
					sActual.Prior1sActualTemp = sActual_Forecast.CentigradeTempDisp;
				}
				else
				{
					/*实测时间*/
					sActual.ActualTime++;
				}

				if(!sActual_Forecast.ResetTimeFlag)
				{
					sActual_Forecast.ResetTimeFlag = TRUE;

					/*相当于t = 0的作用*/
					sActual_Forecast.Cnt_1S = 0;
					/*实测时间*/
					sActual.ActualTime = 0;
				}

				/*预设条件结束发送的数据*/
				/*************************************************/
				#if	Func_Debug == Debug_Measure
						UART0_SendString("R_T_1S:\t");
						/*如果是常规精度,需要降低精度*/
						/*高精度:精确到百分位*/
						/*常规精度:精确到十分位*/
						/*十分位采用四舍五入*/
						/*1.2:常规精度*/
						UART0_SendASCII(sADC.Centigrade250msTemp);
						UART0_SendString("\t-Meas_Time:\t");
						UART0_SendASCII(sActual.ActualTime);
						UART0_SendString("\n");

						if(sActual_Forecast.StableBuzzerFlag)
						{
							UART0_SendString("\tSucceed");
							UART0_SendString("\tWaterTank");
							UART0_SendString("\tTemperature:");
							UART0_SendASCII(sActual_Forecast.CentigradeTempDisp);
							UART0_SendString("\n");
						}
				#endif
				/*************************************************/
			}
		}
		/*温度校准成功3min重启标志位标志位*/
		if(sTempCal.Reset_From_CalOK)
		{
			/*有Err6故障发生*/
			/*预测判定超时(超过8s)*/
			ERR[Err6] = TRUE;
		}
	}
}

/*
  * @brief     起点算法
  * @param  None
  * @retval   TRUE:满足起点算法条件;FALSE:未满足起点算法条件
*/
uint8 Start_Algorithm(void)
{
	uint8 i;

	/*间隔250ms的温度对比*/
	if(sADC.Centigrade250msTemp > 10 + sForecast.Prior250msForecastTemp)
	{

		if(!sForecast.FlagStartAlgorithmCounts)
		{
			sForecast.FlagStartAlgorithmCounts = TRUE;
			/*将最新获取到的温度赋值给sForecast.StartAlgorithmTemp[4]*/
			sForecast.StartAlgorithmTemp[3] = sForecast.Prior250msForecastTemp;
		}
		else
		{
			for(i = 0;i < 3;i++)
			{
				sForecast.StartAlgorithmTemp[i] = sForecast.StartAlgorithmTemp[i + 1];
			}
			/*将最新获取到的温度赋值给sForecast.StartAlgorithmTemp[4]*/
			sForecast.StartAlgorithmTemp[3] = sForecast.Prior250msForecastTemp;
		}

		/*连续4次250ms前后温度大于0.1摄氏度*/
		if(sForecast.Start_Counts++ >= 4)
		{
			/*避免溢出*/
			sForecast.Start_Counts = 4;
		

			#if (Soft_Code == 850) || (Soft_Code == 854)
				if(sADC.Centigrade250msTemp >= 2700)
				{
					/*获取预测温度算法公式区间范围的温度值*/
					sForecast.StartTemp = sForecast.StartAlgorithmTemp[0];
					return TRUE;
				}
			#else
				/*第五次温度大于34℃*/
				if(sADC.Centigrade250msTemp >= 3100)
				{
					/*获取预测温度算法公式区间范围的温度值*/
					sForecast.StartTemp = sForecast.StartAlgorithmTemp[0];
					return TRUE;
				}
			#endif  
		}
	}
	else
	{
		/*重置起点计数*/
		sForecast.Start_Counts = 1;
		/*起点算法计数开始标志位*/
		sForecast.FlagStartAlgorithmCounts = FALSE;
	}

	return FALSE;
}

/*
  * @brief     温度下降算法
  * @param  None
  * @retval   TRUE:满足下降算法条件;FALSE:未满足下降算法条件
*/
uint8 Temp_Drop(void)
{
	/*间隔250ms的温度对比*/
	/*温度下降超过0.03℃*/
	if(sForecast.Prior250msForecastTemp > 3 + sADC.Centigrade250msTemp)
	{
		/*判断下降次数是否达到5次*/
		if(++sForecast.Drop_Counts >= 5)
		{
			/*避免溢出*/
			sForecast.Drop_Counts = 5;
			return TRUE;
		}
	}
	else
	{
		/*重置下降计数*/
		sForecast.Drop_Counts = 0;
	}

	return FALSE;
}

/*
  * @brief     计算预测温度条件
  * @param  None
  * @retval   TRUE:满足预测的起点算法条件;FALSE:未满足预测的起点算法条件
*/
uint8 Forecast_Calculate_Conditions(void)
{
	/*连续三次前后温差在0~0.4℃范围内,第一个温差为第三个数据减去第二个数据,这样才能满足预测是5s*/
	if(sForecast.Forecast_Timer >= 3)
	{
		/*必须保证当前温度要比前一秒的大,否则后面的预测补偿K计算会有问题*/
		if(abs(sADC.Centigrade250msTemp - sForecast.Prior1sForecastTemp) >= 0)
		{
			/*前后1s温差大于0*/
			/*前后1s温差小于0.4℃*/
			if(sADC.Centigrade250msTemp < /*45*/40 + sForecast.Prior1sForecastTemp)
			{
				/*计数达到三次*/
				if(++sForecast.Forecast_Counts >= 3)
				{
					/*防止溢出*/
					sForecast.Forecast_Counts = 3;
					sForecast.EndTemp = sADC.Centigrade250msTemp/* / 10 * 10*/;
					return TRUE;
				}
			}
			else
			{
				/*重置预测计数*/
				sForecast.Forecast_Counts = 0;
			}
		}
		else
		{
			/*重置预测计数*/
			sForecast.Forecast_Counts = 0;
		}
	}
	return FALSE;
}

/*
  * @brief     计算预测温度
  * @param  None
  * @retval   None
*/
void Forecast_Calculate(void)
{
	uint32 K;

	/*终点温度与前一秒的温度差*/
	K = abs(sADC.Centigrade250msTemp - sForecast.Prior1sForecastTemp);


	/*当前模式处于口腔模式*/
	/*当前模式处于直肠模式*/
	if((eMeasureMode == Oral_Mode) || (eMeasureMode == Rectal_Mode))
	{
		/*温度大于34℃*/
		if(sForecast.StartTemp >= 3400)
		{
			/*No Operation*/
		}
		/*温度位于28℃和34℃之间*/
		else if(sForecast.StartTemp >= 2800)
		{
			sForecast.ForecastTemp = 3910 * K + 29000;
		}
		/*温度位于22℃和28℃之间*/
		else if(sForecast.StartTemp >= 2200)
		{
			sForecast.ForecastTemp = 4150 * K + 33000;
		}
		/*温度位于16℃和22℃之间*/
		else if(sForecast.StartTemp >= 1600)
		{
			sForecast.ForecastTemp = 4390 * K + 37000;
		}
		/*温度位于10℃和16℃之间*/
		/*小于10℃也是下面这个补偿*/
		else/*if(sForecast.StartTemp > 1000)*/
		{
			sForecast.ForecastTemp = 4630 * K + 41000;
		}
	}
	/*当前模式处于腋下模式*/
	else if(eMeasureMode == Underarm_Mode)
	{
		/*温度大于34℃*/
		if(sForecast.StartTemp >= 3400)
		{
			/*No Operation*/
		}
		/*温度位于28℃和33.9℃之间*/
		else if(sForecast.StartTemp >= 2800)
		{
			sForecast.ForecastTemp =6900 * K + 56000;
		}
		/*温度位于22℃和28℃之间*/
		else if(sForecast.StartTemp >= 2200)
		{
			sForecast.ForecastTemp =  7000 * K + 60000;
		}
		/*温度位于16℃和22℃之间*/
		else if(sForecast.StartTemp >= 1600)
		{
			sForecast.ForecastTemp = 7100 * K + 64000;
		}
		/*温度位于10℃和16℃之间*/
		/*小于10℃也是下面这个补偿*/
		else/*if(sForecast.StartTemp > 1000)*/
		{
			sForecast.ForecastTemp = 7200 * K + 68000;
		}
	}

	sForecast.ForecastTemp = (sForecast.ForecastTemp + 500) / 1000;
}

/*
  * @brief     预测结束立刻更新最大值算法
  * @param  None
  * @retval   None
*/
void Update_MaxTempImmediately(void)
{
	/*1s标志位*/
	if(sActual_Forecast.Get_1sTempFlag)
	{
		/*重置1s获取温度的标志位*/
		sActual_Forecast.Get_1sTempFlag = FALSE;

		/*过滤异常温度算法*/
		Filter_ErrTemp();

		/*预测算法*/
		if((sActual_Forecast.Temp_T1 > sForecast.ForecastTemp) && (eBuzzer_Status == Buzzer_Silent))
		{
			/*判断最大温度值*/
			if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
			{
				/*取最大温度值*/
				/*更新实测温度为最终温度*/
				sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
			}
		}
	}
}

/*
  * @brief     预测结束3分钟后更新最大值算法
  * @param  None
  * @retval   None
*/
void Update_MaxTemp3Min(void)
{
	uint8 Result;
	if(sForecast.Forecast_Start)
	{
		if(!sTimeStamp.Get_ForecastMeas_Start_Timer_Flag)
		{
			sTimeStamp.Get_ForecastMeas_Start_Timer_Flag = TRUE;
			sTimeStamp.ForecastMeas_Timer = sTimeStamp.Timer_Journey;
		}

		/*7200 * 25ms = 3Min*/
		Result = Timer_Experience(sTimeStamp.ForecastMeas_Timer,7200);
		if(Result)
		{
			if(!sForecast.Update_MaxTemp3Min_Arrived)
			{
				sForecast.Update_MaxTemp3Min_Arrived = TRUE;
				sTIMx.Cnt125ms = 0;
				/*温度校准结束跳转到测温界面预测结束3分钟后不需要转实测*/
				if(!sTempCal.Reset_From_CalOK)
				{
					/*预测算法转实测算法时蜂鸣,蜂鸣时间:500ms,频率:4Hz,间隔250ms*/
					/*eBuzzer_Status = Buzzer_Forecast_To_Actual;*/

					/*实测温度测量结束时蜂鸣,蜂鸣时间:10s,频率:1Hz*/
					/*实测温度测量结束时蜂鸣,蜂鸣时间:10s,频率:参照体温计C语言架构流程*/
					eBuzzer_Status = Buzzer_MeasuredTempActual;
				}
				sActual_Forecast.Get_1sTempFlag = TRUE;
			}

			/*1s标志位*/
			if(sActual_Forecast.Get_1sTempFlag)
			{
				/*重置1s获取温度的标志位*/
				sActual_Forecast.Get_1sTempFlag = FALSE;

				/*过滤异常温度算法*/
				Filter_ErrTemp();

				if(sActual_Forecast.Temp_T1 <= 3680)
				{
					/*实测值预测值比较*/
					if(sActual_Forecast.Temp_T1 >= sActual_Forecast.CentigradeTempDisp)
					{
						/*此时如果预测温度＜实测温度,则按实测值立即更新*/
						sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
					}
					else
					{
						if(sActual_Forecast.CentigradeTempDisp > 3680)
						{
							/*如果预测值>实测温度,此时预测值可能>36.8,则按36.8更新*/
							sActual_Forecast.CentigradeTempDisp = 3680;
						}
						/*也有可能小于36.8,则按预测值更新*/
						else
						{
							/*No Operation*/
						}
					}
				}
				else
				{
					/*取最大温度值*/
					/*更新实测温度为最终温度*/
					sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
				}
				sBleStatus.F_Temp_Updated = TRUE;
				sMemoryFlag.MemTemp_Updated = TRUE;
			}
		}
		else
		{
			/*1s标志位*/
			if(sActual_Forecast.Get_1sTempFlag)
			{
				/*重置1s获取温度的标志位*/
				sActual_Forecast.Get_1sTempFlag = FALSE;
				/*过滤异常温度算法*/
				Filter_ErrTemp();
			}
		}
	}
	else if(sActual.Actual_Start)
	{
		/*1s标志位*/
		if(sActual_Forecast.Get_1sTempFlag)
		{
			/*重置1s获取温度的标志位*/
			sActual_Forecast.Get_1sTempFlag = FALSE;

			/*过滤异常温度算法*/
			Filter_ErrTemp();

			/*蜂鸣结束*/
			if(eBuzzer_Status == Buzzer_Silent)
			{
				/*判断最大温度值*/
				if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
				{
					/*取最大温度值*/
					/*更新实测温度为最终温度*/
					sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
					sBleStatus.F_Temp_Updated = TRUE;
					sMemoryFlag.MemTemp_Updated = TRUE;
				}
			}
		}
	}
}

/*
  * @brief     预测转实测算法
  * @param  None
  * @retval   None
*/
void Forecast_To_Actual(void)
{
	switch(eTo_Actual_Ways)
	{
		/*预测结束立即转实测*/
		case To_Actual_Immediately:
			/*预测结束更新最大值算法*/
			Update_MaxTempImmediately();
		break;
		/*预测结束3分钟转实测*/
		case To_Actual_3Min:
			/*预测结束3分钟后更新最大值算法*/
			Update_MaxTemp3Min();
		break;

		default:break;
	}
}

/*
  * @brief     计算预测温度条件
  * @param  None
  * @retval   TRUE:判断出满足温度算法(实测算法或预测算法)的条件;FALSE:未满足温度算法(实测算法或预测算法)的条件
*/
uint8 ActualForecast_Select(void)
{
	/*判断是否满足实测条件*/
	if(!sActual_Forecast.ActualForecast_SelectFlag)
	{
		if(sADC.Centigrade250msTemp > 3400)
		{
			/*判断是否连续3次温度大于34℃*/
			if(++sForecast.PreBath_Counts >= 3)
			{
				/*避免溢出*/
				sForecast.PreBath_Counts = 3;
				/*置启用实测算法标志位*/
				sActual.Actual_Start = TRUE;
				/*实测预测算法选择标志位*/
				sActual_Forecast.ActualForecast_SelectFlag = TRUE;

				/*获取先前1s的温度值*/
				/*放在这里确保预测转实测测量时间为4s*/
				sActual.Prior1sActualTemp = sADC.Centigrade250msTemp;
				/***************************************************/
				#if	Func_Debug == Debug_Measure
					UART0_SendString("ActualStart: OK");
					UART0_SendString("\n");
				#endif
				/***************************************************/
			}
		}
		else
		{
			/*重置实测计数*/
			sForecast.PreBath_Counts = 0;
		}

		/*当不满足实测条件进行预测判断*/
		if(!sActual.Actual_Start)
		{
			/*判断是否满足起点算法条件*/
			if(Start_Algorithm())
			{
				/*置起点算法标志位*/
				sForecast.Forecast_Start = TRUE;
				/*实测预测算法选择标志位*/
				sActual_Forecast.ActualForecast_SelectFlag = TRUE;

				/***************************************************/
				#if	Func_Debug == Debug_Measure
					UART0_SendString("ForecastStart: OK");
					UART0_SendString("\n");
				#endif
				/***************************************************/
			}
		}
		/*加在此处用意:当处于预测模式,检测到满足实测条件,屏显对应温度,防止显示Lo的情况*/
		sActual_Forecast.CentigradeTempDisp = sADC.Centigrade250msTemp;
	}
	/*实测预测算法选择标志位*/
	return sActual_Forecast.ActualForecast_SelectFlag;
}

/*
  * @brief     温度补偿
  * @param  Temp:补偿前的输入温度
  * @retval   Temp:补偿后的输出温度
*/
uint16 Temperature_Compensate(uint16 Temp)
{
	uint8 F_OddFlag = 0;
	uint8 a;
	uint16 b;

	/*高于37.0℃不做处理*/
	if((Temp < 3700)&&(Temp > 0))
	{
		b = Temp/10;

		/*如果目标温度＜27.2℃,则从27.2度起查表*/
		if(b < C_StartTemp)
		{
			a = 0;
		}
		else
		{
			a = (uint8)(b - C_StartTemp);
		}

		/*如果最低位为奇数,则奇数标志位置1(和表格有关)*/
		if((a & 0x01)== 0x01)
		{
			F_OddFlag = 1;
		}

		a >>= 1;

		/*奇数取低字节,偶数取高字节*/
		if( F_OddFlag == 1)
		{
			a = CloseTable[a];
		}
		else
		{
			a = CloseTable[a] >> 8;
		}

		return (Temp + a);
	}
	else
	{
		return Temp;
	}
}

/*
  * @brief     5s预测算法
  * @param  None
  * @retval   None
*/
void Forecast_Measure(void)
{
	uint16 Temp;
	switch (eMeas_Status)
	{
		/*每250ms获取一次温度*/
		case Meas_Get_TEMP:
		/*TempSampleFlag:温度250ms采集标志位*/
		if(!sTIMx.TempSampleFlag || (eMeasureMode == Bath_Mode) || !sActual_Forecast.AF_Start)
		{
			/*读取温度,未成功读取直接跳出*/
			break;
		}

		/*************************************************/
		#if	Func_Debug == Debug_Measure
			UART0_SendString("R_T_250MS:\t");
			UART0_SendASCII(sADC.Centigrade250msTemp);
			UART0_SendString("\n");

			if(!sActual_Forecast.ResetTimeFlag)
			{
				/*250ms计数的次数:计4次为1s*/
				if(++sActual_Forecast.Cnt_Test_1S >= 4)
				{
					sActual_Forecast.Cnt_Test_1S = 0;

					UART0_SendString("R_T_1S:\t");
					UART0_SendASCII(sADC.Centigrade250msTemp);
					UART0_SendString("\n");
				}
			}

		#endif
		/*************************************************/

        /*起始条件判断*/
		case Meas_StartConditon:
			/*根据判断条件选择实测算法或预测算法*/
			if(!ActualForecast_Select())
			{
				break;
			}

			if(!sActual_Forecast.ResetTimeFlag)
			{
				sActual_Forecast.ResetTimeFlag = TRUE;

				/*相当于t = 0的作用*/
				sActual_Forecast.Cnt_1S = 0;
				/*预测中t = 0开始计的时间/单位:s*/
				sForecast.Forecast_Timer = 0;
				/*实测时间*/
				sActual.ActualTime = 0;
			}
			else
			{
				/*250ms计数的次数:计4次为1s*/
				if(++sActual_Forecast.Cnt_1S >= 4)
				{
					sActual_Forecast.Cnt_1S = 0;
					/*预测中t = 0开始计的时间/单位:s*/
					sForecast.Forecast_Timer++;
					/*实测时间*/
					sActual.ActualTime++;
					/*1S标志位*/
					sActual_Forecast.Get_1sTempFlag = TRUE;

					/*************************************************/
					#if	Func_Debug == Debug_Measure
						UART0_SendString("R_T_1S:\t");
						UART0_SendASCII(sADC.Centigrade250msTemp);
						UART0_SendString("\t-Meas_Time:\t");
						UART0_SendASCII(sForecast.Forecast_Timer);
						UART0_SendString("\n");
					#endif
					/*************************************************/
				}
			}

        /*实测*/
		case Meas_ActualMeasuring:
			if(sActual.Actual_Start && !sActual_Forecast.StableBuzzerFlag)
			{
				if(sActual_Forecast.Get_1sTempFlag)
				{
					/*1S标志位*/
					sActual_Forecast.Get_1sTempFlag = FALSE;

					/*过滤异常温度算法*/
					Filter_ErrTemp();

					if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
					{
						sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
					}
					/*Ns判稳算法*/
					/*判稳时间StableTime/s*/
					if(Judge_Stability(sActual.Prior1sActualTemp,sActual_Forecast.CentigradeTempDisp,sActual.StableTime))
					{
						sActual_Forecast.StableBuzzerFlag = TRUE;
						sBleStatus.F_Temp_Updated = TRUE;
						sMemoryFlag.MemTemp_Updated = TRUE;

						/***************************************************/
						#if	Func_Debug == Debug_Measure
							UART0_SendString("\tSucceed");
							UART0_SendString("\tWaterTank");
							UART0_SendString("\tTemperature:");
							UART0_SendASCII(sActual_Forecast.CentigradeTempDisp);
							UART0_SendString("\n");
						#endif
						/***************************************************/
					}

					/*获取先前1s的温度值*/
					sActual.Prior1sActualTemp = sActual_Forecast.CentigradeTempDisp;
				}
				/*温度校准成功3min重启标志位标志位*/
				if(sTempCal.Reset_From_CalOK)
				{
					/*有Err6故障发生*/
					/*预测判定超时(超过8s)*/
					ERR[Err6] = TRUE;
				}
			}

		/*预测*/
		case Meas_ForecastMeasuring:
			if(sForecast.Forecast_Start && !sActual_Forecast.StableBuzzerFlag)
			{
				/*判断探头移除状态*/
				if(Temp_Drop())
				{
					/*有Err1故障发生*/
					/*探头移除*/
					ERR[Err1] = TRUE;

					/*探头移除时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
					/*预测超时时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
					eBuzzer_Status = Buzzer_Er1Er2;

					/***************************************************/
					#if	Func_Debug == Debug_Measure
						UART0_SendString("\tErr1");
						UART0_SendString("\tProbe removed");
					#endif
					/***************************************************/
				}

				if(sActual_Forecast.Get_1sTempFlag)
				{
					/*1S标志位*/
					sActual_Forecast.Get_1sTempFlag = FALSE;


					/*温度校准成功3min重启标志位标志位*/
					if(sTempCal.Reset_From_CalOK)
					{
						if(sForecast.Forecast_Timer > 8)
						{
							/*有Err6故障发生*/
							/*预测判定超时(超过8s)*/
							ERR[Err6] = TRUE;
						}
					}

					if(sForecast.Forecast_Timer > 15)
					{
						/*有Err2故障发生*/
						/*预测超时(超过15s)*/
						ERR[Err2] = TRUE;
						/*探头移除时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
						/*预测超时时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
						eBuzzer_Status = Buzzer_Er1Er2;
					}
					else if(sForecast.Forecast_Timer >= 2)
					{
						/*计算预测温度条件满足*/
						if(Forecast_Calculate_Conditions())
						{
							/*计算预测温度算法*/
							Forecast_Calculate();

							/*打印预测计算值*/
							/***************************************************/
							#if	Func_Debug == Debug_Measure
								UART0_SendString("\tSucceed");
								UART0_SendString("\tCorData:");
								UART0_SendASCII(sForecast.ForecastTemp);
							#endif
							/***************************************************/

							/*预测补偿*/
							Temp = sForecast.ForecastTemp + sForecast.EndTemp;
							/*当前模式处于口腔模式或直肠模式*/
							if((eMeasureMode == Oral_Mode) || (eMeasureMode == Rectal_Mode))
							{
								if((Temp >= 3700) && (Temp <= 3800))
								{
									if(sForecast.ForecastTemp > 80)
									{
										sForecast.ForecastTemp = 80;
									}
								}
							}
							/*当前模式处于腋下模式*/
							else if(eMeasureMode == Underarm_Mode)
							{
								/*预测补偿*/
								if((Temp >= 3700) && (Temp <= 3800))
								{
									if(sForecast.ForecastTemp > 120)
									{
										sForecast.ForecastTemp = 120;
									}
								}
							}

							/*打印预测补偿值*/
							/***************************************************/
							#if	Func_Debug == Debug_Measure
								UART0_SendString("\tTemperature_Cor:");
								UART0_SendASCII(sForecast.ForecastTemp);
							#endif
							/***************************************************/

							/*温度补偿算法*/
							sForecast.ForecastTemp = Temperature_Compensate(sForecast.ForecastTemp + sForecast.EndTemp);

							/*将补偿完的温度显示出去*/
							sActual_Forecast.CentigradeTempDisp = sForecast.ForecastTemp;

							/*温度稳定蜂鸣标志位*/
							sActual_Forecast.StableBuzzerFlag = TRUE;
							sBleStatus.F_Temp_Updated = TRUE;
							sMemoryFlag.MemTemp_Updated = TRUE;
							/*预测结束3分钟转实测计时开始标志*/
							sTimeStamp.Get_ForecastMeas_Start_Timer_Flag = FALSE;

							/*打印屏显温度*/
							/***************************************************/
							#if	Func_Debug == Debug_Measure
								UART0_SendString("\tTemperature:");
								UART0_SendASCII(sActual_Forecast.CentigradeTempDisp);
								UART0_SendString("\n");
							#endif
							/***************************************************/
						}
					}
					/*获取前1s的温度值*/
					sForecast.Prior1sForecastTemp = sADC.Centigrade250msTemp;
				}
			}

        /*数据更新*/
		case Meas_DataUpdate:
			/*预测转实测算法*/
			Forecast_To_Actual();
		break;

		default:break;
	}

	/*重新获取温度值*/
	eMeas_Status = Meas_Get_TEMP;


	/*TempSampleFlag:温度250ms采集标志位*/
	if(sTIMx.TempSampleFlag)
	{
		/*清除250ms标志位*/
		sTIMx.TempSampleFlag = FALSE;
		/*获取先前的温度*/
		sForecast.Prior250msForecastTemp = sADC.Centigrade250msTemp;

		/*************************************************/
		#if	Func_Debug == Debug_250msCounts
			sTest.MainForecast_Counts++;
			UART0_SendString("F:");
			UART0_SendASCII(sTest.MainForecast_Counts);
			UART0_SendString("\n");
		#endif

		/*测试250MS温度采样的时间*/
		/*串口打印部分的代码占用时间:53 * 0.555 = 29.415ms*/
		#if	Func_Debug == Debug_GetTemp250ms
			sTest.Test_Total_Journey_Timer = sTimeStamp.Timer_Journey - sTest.Test_Total_Journey_Start_Timer;
			sTest.Test_Get_Total_Journey_Start_Flag = FALSE;

			UART0_SendString("TotalTime:\t");
			UART0_SendASCII(sTest.Test_Total_Journey_Timer);

			UART0_SendString("\n");
		#endif
		/*************************************************/
	}
}




