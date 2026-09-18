#include "./../Include/Variable.h"

/*靠拢表格起始温度点*/
#define C_StartTemp		272

typedef struct
{
	/*温度校准值写入BIE成功标志*/
	uint8 BIE_Writed : 1;
	/*温度校准60s时间到达标志位*/
	uint8 Cal_60s_Arrived : 1;
	/*没有故障且时间到达60s则允许执行写BIE操作标志位*/
	uint8 Enable_BIE_Write : 1;
	/*BIE写的动作*/
	uint8 BIE_Write_Action : 1;
	/*重新打开LCD标志位*/
	uint8 Reopen_LCD : 1;
	/*温度校准成功3min重启标志位标志位*/
	uint8 Reset_From_CalOK : 1;
	/*数组TempBuf[5],数组成员每隔250ms更新一次数组成员*/
	uint8 pTempBuf;
	/*温度校准偏移系数*/
	uint16 Temp_Ratio;
	/*TempBuf数组*/
	uint16 TempBuf[5];
}s_TempCal;

typedef struct
{	
	/*实测算法开始标志位*/
	uint8 Actual_Start : 1;
	/*实测结束标志位*/
	uint8 TempFastFlag : 1;	
	/*预设测量时间完成标志位*/
	uint8 PresetMeasTimeCompletedFlag : 1;
	/*判稳时间*/
	uint8 StableTime;
	/*实测时间*/
	uint8 ActualTime;
	/*先前1s的实测温度*/
	uint16 Prior1sActualTemp;

}s_Actual;

typedef struct
{
	/*预测算法开始标志位*/
	uint8 Forecast_Start : 1;
		
	uint8 Update_MaxTemp3Min_Arrived : 1;
	
	/*起点算法计数开始标志位*/
	uint8 FlagStartAlgorithmCounts : 1;
	/*预测中t = 0开始计的时间/单位:s*/
	uint8 Forecast_Timer;
	/*起点计数次数*/
	uint8 Start_Counts;
	/*下降计数次数*/
	uint8 Drop_Counts;
	/*进入水槽模式计数(当计数为3时进入水槽模式)*/
	uint8 PreBath_Counts;
	/*预测计数*/
	uint8 Forecast_Counts;
	/*先前250ms实测的温度*/
	uint16 Prior250msForecastTemp;
	/*先前1s实测的温度*/
	uint16 Prior1sForecastTemp;
	/*获取预测温度算法公式区间范围的温度值*/
	uint16 StartTemp;
	/*起点算法温度值*/
	uint16 StartAlgorithmTemp[4];
	/*获取预测温度算法T终的温度值*/
	uint16 EndTemp;
	/*计算出的预测温度*/
	uint32 ForecastTemp;
}s_Forecast;

/*实测预测共用变量*/
typedef struct
{
	/*实测预测算法开始标志位*/
	uint8 AF_Start : 1;
	/*温度稳定蜂鸣标志位*/
	uint8 StableBuzzerFlag : 1;
	/*实测预测算法选择标志位*/
	uint8 ActualForecast_SelectFlag : 1;
	/*获取1S温度值的标志位*/
	uint8 Get_1sTempFlag : 1;
	/*t=0标志位*/
	uint8 ResetTimeFlag : 1;
	/*250ms计数的次数:计4次为1s*/
	uint8 Cnt_1S;
	/*250ms计数的次数:计4次为1s*/
	uint8 Cnt_Test_1S;
	/*实测预测显示温度(取最大值)/℃*/
	uint16 CentigradeTempDisp;
	/*实测预测显示温度(取最大值)/℃/℉*/
	uint16 ConvertedTempDisp;
	/*过滤异常温度---温度T1*/
	uint16 Temp_T1;
	/*过滤异常温度---温度T2*/
	uint16 Temp_T2;
	/*过滤异常温度---温度T3*/
	uint16 Temp_T3;
	/*校准后预测温度值*/
	uint16 Calibrated_Forecast_Temp;
}s_Actual_Forecast;

typedef enum
{
	/*每250ms读取一次AD*/	
	Meas_Get_TEMP,
	/*判断起始条件*/
	Meas_StartConditon,
	/*实测*/
	Meas_ActualMeasuring,
	/*预测*/
	Meas_ForecastMeasuring,
	/*最大温度值更新*/
	Meas_DataUpdate
}e_Meas_Status;

typedef enum
{
	/*预测结束立即转实测*/
	To_Actual_Immediately = 0xA5,
	/*预测结束3分钟转实测*/
	To_Actual_3Min = 0x5A
}e_To_Actual_Ways;

/*Measure*/
#ifdef _App_Measure_H_
	s_Actual sActual;
	s_Forecast sForecast;
	s_TempCal sTempCal;
	e_Meas_Status eMeas_Status;
	s_Actual_Forecast sActual_Forecast;
	
	e_To_Actual_Ways eTo_Actual_Ways;
	
	/*温度补偿表格*/
	uint16 const CloseTable[49] = {  0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,
														0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,
														0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,0xB4B4,
														0xB4B4,0xB4AA,0xAAA0,0xA096,0x968C,0x8C82,0x8278,0x786E,0x6E64,0x645A,
														0x5A50,0x5046,0x463C,0x3C32,0x3228,0x281E,0x1E14,0x1414,0x0A0A
													 };
#else	
	extern s_Actual sActual;
	extern s_Forecast sForecast;
	extern s_TempCal sTempCal;
	extern  e_Meas_Status eMeas_Status;
	extern s_Actual_Forecast sActual_Forecast;
	
	extern e_To_Actual_Ways eTo_Actual_Ways;
	
	extern uint16 const CloseTable[49];
	
	void Temp_Calibration(void);
	void Actual_Measure(void);
	void Forecast_Measure(void);
#endif