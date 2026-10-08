#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_ADC.c
说    明：	  模数转换算法的集合（应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_ADC_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	获取ADC的原始数据
  * @param   None
  * @retval    输出ADC的原始数据
*/
int16 ADCGetData(void)
{
	/*只取ADC原始数据H、M字节,L字节过滤掉*/
	/*虽然L字节数据不需要,但仍要读取,宏康单片机机制*/
	/*不按照从低字节到高字节顺序读取会导致数据出错*/
	/*在串口输出数据时效果明显,会出现通道切换时的前n笔的数据都是另外一个通道的数据!!!*/
    int32 ADCData1;
    int16 ADCData2;
    ((int8 *)(&ADCData1))[0] = AD1L;
    ((int8 *)(&ADCData1))[1] = AD1M;
    ((int8 *)(&ADCData1))[2] = AD1H;

	/*对外输出的数据只取H字节和M字节*/
	ADCData2  = (int16)(ADCData1 >> 8);

    return ADCData2;
}

/*
  * @brief  	丢弃前FilterNum笔数据,采集10(非Debug)/32(Debug)笔,去除极值,求8(非Debug)/30(Debug)笔平均值
  * @param   None
  * @retval    0:未完成一组数据平均    1:完成采样一组数据平均
*/
uint8 ADC_Average(void)
{
	#ifdef EMC_Test
		uint8  R_IncCnt;   //递增计数器
	  	uint8  R_DecCnt;   //递减计数器
	 	uint8  R_EquCnt;   //相等计数器
	 	uint8  cnt;

	 	R_IncCnt = 0;
		R_DecCnt = 0;
		R_EquCnt = 0;

		sADC.UnRefreshTemp = FALSE;
  	#endif



	if(sADC.Flag_ADCDone)
	{
		sADC.Flag_ADCDone = FALSE;

		/*获取ADC的值*/
		sADC.ADCData = ADCGetData();

		/*使能ADC中断*/
		ADC_INT_Enable();

		/*AI2_AI3通道*/
		#if	Func_Debug == Debug_DSigmaAdc
			UART0_SendByte(0x55);
			UART0_SendByte(0xBB);
			UART0_SendByte((uint8)(sADC.ADCData >> 8));
			UART0_SendByte((uint8)sADC.ADCData);
		#endif

		/*丢弃前FilterNum笔数据*/
		if(++sADC.ADCCounts > FilterNum)
		{
			/*判断AD是否在有效范围内*/
			/*短路理论AD值:0*/
			/*短路测试AD值:65,保守取值222*/
			/*短路取值原则:不影响R-T参照表中R的正常取值,同时对短路测试值留有余量*/
			/*R-T对照表中当NTC取最小阻值(100℃对应的阻值)时,原则上对应的AD值应该最小,理论AD值:288*/

			#ifndef EMC_Test
				/*开路理论AD值:7FFF*/
				/*开路测试AD值:7FFF,保守取值:6666*/
				/*R-T对照表中当NTC取最大阻值(0℃对应的阻值)时,原则上对应的AD值应该最大,理论AD值:5F00*/
				if(sADC.ADCData > 0x6666 || sADC.ADCData < 222)
				{
					/*AD值过大过小,ERR*/
					ERR[Err] = TRUE;
				}
			#endif

			/*当数据为第一组时最大最小赋初值*/
			if(sADC.ADCCounts == FilterNum + 1)
			{
				sADC.ADCSum = 0;
				sADC.MinData = sADC.ADCData;
				sADC.MaxData = sADC.ADCData;

				#ifdef EMC_Test
					sADC.EMCADCDataCnt = 0;
				#endif
			}

			/*求和*/
			sADC.ADCSum += sADC.ADCData;

			/*找最大值*/
			if(sADC.MaxData < sADC.ADCData)
			{
				sADC.MaxData = sADC.ADCData;
			}
			/*找最小值*/
			if(sADC.MinData > sADC.ADCData)
			{
				sADC.MinData = sADC.ADCData;
			}

			#ifdef EMC_Test
				sADC.EMCADCData[sADC.EMCADCDataCnt++] = (sADC.ADCData & 0xFFFC);
			#endif
		}
	}

	#ifdef EMC_Test
		/*取8笔平均值*/
		if(sADC.ADCCounts > (FilterNum + 9))
	#else
		/*取4笔平均值*/
		if(sADC.ADCCounts > (FilterNum + 5))
	#endif
	{

		#if	Func_Debug == Debug_DSigmaAdc
			UART0_SendByte(0xFF);
		#endif

		if(eDisplay_Interfaces == Display_Calibration)
		{
			sADC.ADCSum = sADC.ADCSum - sADC.MinData - sADC.MaxData;
				#ifdef EMC_Test
					sADC.ADCSum >>= 3;
				#else
					sADC.ADCSum >>= 2;
				#endif

			sADC.ADCCounts = 0;
		}
		else
		{
			#ifdef EMC_Test
				/*以下部分只有认证程序需要，大货需屏蔽!!!*/
				if( (sADC.MaxData - sADC.MinData) > 32768 )
				{
					/*不要刷新*/
					sADC.UnRefreshTemp = TRUE;
				}

				//循环判断
			  	for(cnt =0; cnt < 9/*5*/;cnt++)
			  	{
					if(sADC.EMCADCData[cnt] > sADC.EMCADCData[cnt+1] )
					{
						R_DecCnt++;
					}
					else if(sADC.EMCADCData[cnt] < sADC.EMCADCData[cnt+1] )
					{
						R_IncCnt++;
					}
					else
					{
						R_EquCnt++;
					}
				}

				//只允许递增递减，比宏康稍微放宽了1个count点，认证开启，大货屏蔽
			   if( (((R_DecCnt + R_EquCnt) < 9/*6*/) || ((R_IncCnt + R_EquCnt) < 9/*6*/)) && !sADC.RefreshTempFast)
			   {
					//要跳过传感器Err判断或Err允许恢复
					//也要跳过更新
					sADC.UnRefreshTemp = TRUE; //不要刷新
					sADC.ADCSum = 11203;

					sADC.ADCCounts = 0;
			   }
			   else
			   {
			   		sADC.ADCSum = sADC.ADCSum - sADC.MinData - sADC.MaxData;
					sADC.ADCSum >>= 3;

					sADC.ADCCounts = 0;
			   }
			#else
				sADC.ADCSum = sADC.ADCSum - sADC.MinData - sADC.MaxData;
				sADC.ADCSum >>= 2;

				sADC.ADCCounts = 0;
			#endif
		 }
		return TRUE;
	}
	else
	{
		return FALSE;
	}
}

/*
  * @brief  	选择ADC通道,获取滤波后的AI2_AI3和AI14_AI15通道的ADC值
  * @param   None
  * @retval    0:未完成一次完整的采集    1:完成一次完整的采集(两个通道的数据)
  * @Note     主频为2M的最大时间: 248.085ms   	主频为4M的最大时间:247.53ms
   * @Note    (测试条件电阻:3.7kΩ)
*/
uint8 NTC_ADCData(void)
{
	/*当完成当前通道采样则切换到下一个通道*/
	if(ADC_Average())
	{
		/*AI2_AI3通道*/
		sADC.AI2_AI3_Data = sADC.ADCSum;
		return TRUE;
	}
	return FALSE;
}

/*
  * @brief  	ADC采样及处理模块
  * @param   None
  * @retval    None
  * @note     占用时间:246ms(测试条件电阻:3.7kΩ,取平均笔数:8笔,过滤笔数:3笔)
  * @note     占用时间:183.15ms(测试条件电阻:取平均笔数:4笔,过滤笔数:3笔)
*/
void Get_250msTemp(void)
{
	uint16 n = 250,lower = 0,upper = 501,i;
	uint32 tmp;

	/*ADC的处理模块仅在温度测量模式下进行*/
	/*上面这点再考虑,温度算法需在温度测量模式下进行*/
	/*这个函数是非常占用时间的,不加这个限制条件,会导致扫描按键不能及时处理*/
	if((eDisplay_Interfaces == Display_TemperatureDetecting) || (eDisplay_Interfaces == Display_MeasuredTemperature) || (eDisplay_Interfaces == Display_Calibration))
	{
		if(sADC.Get_250msTemp_Flag)
		{
			/*获取起始时间*/
			/*************************************************/
			#if	Func_Debug == Debug_GetTemp250ms
				if(!sTest.Test_Get_Total_Journey_Start_Flag)
				{
					sTest.Test_Get_Total_Journey_Start_Flag = TRUE;
					sTest.Test_Total_Journey_Start_Timer = sTimeStamp.Timer_Journey;
				}
			#endif
			/*************************************************/
			if(NTC_ADCData())
			{
				/*Rntc = ADCR * Vref *(R3 + RF1) / (2的23次方 * VDDA - ADCR * Vref)*/
				/*Vref = 1.2V;VDDA = 2.4V;R3 + RF1 = 300K*/
				/*消去公因数得:Rntc = ADCR * 300K / (2的24次方 - ADCR)*/
				/*即Rntc = ADCR * 300K / (16777216 - ADCR)*/
				/*因ADCR是放大256倍,故将16777216缩小256倍得65536*/
				/*同时将Rntc缩小10倍,即Rntc = ADCR * 30000 / (65536 - ADCR)*/

				/*计算时间:10 * 0.555 = 5.55ms(主频2M)*/
				sADC.RawRntc = (uint32)sADC.AI2_AI3_Data * 30000 / (65536 - sADC.AI2_AI3_Data);

				/*计算时间:10 * 0.555 = 5.55ms(主频2M)*/
				sADC.Rntc = (uint32)sADC.RawRntc * sTempCal.Temp_Ratio / 10000;

				/*根据Rntc的阻值计算T的温度值*/
				/*T的温度值放大100倍*/
				/*先快速定位sADC.Rntc在数组R_Table中的位置*/
				/*采用二分法*/
				/*计算时间:16 * 0.555 = 8.88ms(主频2M)*/
				for(i = lower;i < upper;i++)
				{
					if(sADC.Rntc < R_Table[n])
					{
						lower = n;
						n = (lower + upper) / 2;
					}
					else
					{
						upper = n;
						n = (lower + upper) / 2;
					}
					/*定位到sADC.Rntc所在数组的最小阻值区间R_Table[1000],停止搜索*/
					if	(sADC.Rntc < 330)
					{
						/*跳出for循环语句*/
						i = upper;
						/*温度值放大100倍*/
						sADC.Centigrade250msTemp = 10000;
					}
					/*定位到sADC.Rntc所在数组的最大阻值区间R_Table[0],停止搜索*/
					else if(sADC.Rntc > 16335)
					{
						/*跳出for循环语句*/
						i = upper;
						/*温度值放大100倍*/
						sADC.Centigrade250msTemp = 0;
					}
					else if(upper - lower == 1)
					{
						/*跳出for循环语句*/
						i = upper;

						/*计算时间:30 * 0.555 = 16.65ms(主频2M)*/
						/*计算时间截止到sADC.Centigrade250msTemp = lower * 10 + tmp;*/
						tmp = (uint32)(R_Table[lower] - sADC.Rntc);
						tmp *= 100;
						tmp /= (R_Table[lower] - R_Table[upper]);
						tmp = tmp / 10;
						/*温度值放大100倍*/
						sADC.Centigrade250msTemp = lower * 10 + tmp;
						/*间隔ADC采样,间隔时间:250ms*/
						sADC.Get_250msTemp_Flag = FALSE;

						/*温度250ms采集标志*/
						sTIMx.TempSampleFlag = TRUE;

						#if	Func_Debug == Debug_DSigmaAdc
							if(sADC.PreviousCentigrade250msTemp != sADC.Centigrade250msTemp)
							{
								UART0_SendByte(0x88);
								UART0_SendByte(0x88);
								UART0_SendByte(sADC.Centigrade250msTemp >> 8);
								UART0_SendByte(sADC.Centigrade250msTemp);
								UART0_SendByte(sTempCal.Temp_Ratio >> 8);
								UART0_SendByte(sTempCal.Temp_Ratio);
							}
							sADC.PreviousCentigrade250msTemp = sADC.Centigrade250msTemp;
						#endif


						/*************************************************/
						#if	Func_Debug == Debug_250msCounts
							sTest.MainCycle_Counts++;


							UART0_SendString("I:");
							UART0_SendASCII(sTest.ISR_AD_Counts);


							UART0_SendString("M:");
							UART0_SendASCII(sTest.MainCycle_Counts);
						#endif


						#if	Func_Debug == Debug_ISR250ms
							UART0_SendASCII(1);
						#endif
						/*************************************************/
					}
				}
			}
		}
	}
}

/*
  * @brief  	摄氏度转化为华氏度
  * @param   temp:摄氏度温度
  * @retval    temp:华氏度温度
*/
uint16 Centigrade_Convert_Fahrenheit(uint16 temp)
{
	uint32 tmp;

		if( (temp >= Low_Temp_Centigrade )&&(temp <= High_Temp_Centigrade ) )
		{
			/*当前温度单位为摄氏度*/
			if(eTempUnit == Centigrade)
			{
				tmp = temp;
				return ((tmp + 5) / 10 * 10);
			}
			/*当前温度单位为华氏度*/
			else if(eTempUnit == Fahrenheit)
			{
				tmp = temp ;
				/*放大100倍,四舍五入后保留十分位*/
				tmp = (uint32)tmp * 9 / 5 + 3200;
				/*进行四舍五入*/
				return ((tmp + 5) / 10 * 10);
			}
		}
		else
		{
			/*当前温度单位为摄氏度*/
			if(eTempUnit == Centigrade)
			{
				tmp = temp;
				return tmp;
			}
			/*当前温度单位为华氏度*/
			else if(eTempUnit == Fahrenheit)
			{
				tmp = temp ;
				/*放大100倍,保留十分位*/
				tmp = (uint32)tmp * 9 / 5 + 3200;
				return tmp;
			}
		}
}
