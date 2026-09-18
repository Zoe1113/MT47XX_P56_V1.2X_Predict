#include "./../Include/Variable.h"

typedef struct
{
	/*LVD50ms采集标志*/
	uint8 LVDSampleFlag : 1;
	/*LCD50ms刷新标志*/
	uint8 LCDRefreshFlag : 1;
	/*温度250ms采集标志*/
	uint8 TempSampleFlag : 1;	
	/*模式符号闪烁标志位,频率:1Hz*/
	uint8 ModeSymbolFlash : 1;
	/*模式符号闪烁使能标志位*/
	uint8 EnableModeSymbolFlash : 1;
	/*校准符号闪烁标志位,频率:1Hz*/
	uint8 CalSymbolFlash : 1;
	/*预测判定OK后温度闪烁闪烁标志位,频率:1Hz*/
	uint8 ForecastJudgeOKTempFlash : 1;
	/*绑定信息闪烁显示标志位,频率:1Hz*/
	uint8 BindingSymbolFlash : 1;
	/*温度单位闪烁标志位,频率:1Hz*/
	uint8 UnitSymbolFlash : 1;
	/*蓝牙闪烁标志位,频率:1Hz*/
	uint8 BLESymbolFlash : 1;
	/*预测符号闪烁标志位,频率:1Hz*/
	uint8 ForecastSymbolFlash : 1;
	/*蜂鸣标志位,频率:1Hz*/
	uint8 BuzzerFlash1Hz : 1;
	/*蜂鸣标志位,频率:4Hz*/
	uint8 BuzzerFlash4Hz : 1;
	/*进入测温界面如果温度低于32℃,Low符号至少显示500ms标志位*/
//	uint8 DispLowSymbol : 1;
	/*测温符号闪烁,频率1Hz*/
	uint8 TempDetectingSymFlash1Hz;
	/*间断性蜂鸣,蜂鸣三次,频率:4Hz,间隔250ms*/
	uint8 BuzzerIntervalCnt;
	/*50ms计数*/
	uint8 Cnt50ms;
	/*125ms计数*/
	uint16 Cnt125ms;
	/*250ms计数*/
	uint16 Cnt250ms;
	/*500ms计数*/
	uint16 Cnt500ms;
	/*1s计数*/
	uint16 Cnt1s;
}s_TIMx;


/*TIMER*/
#ifdef _Drv_Timer_H_
	s_TIMx sTIMx;
#else
	extern s_TIMx sTIMx;
	
	void TMA1_Configuration(void);
#endif