#include "./../Include/Variable.h"

typedef enum
{
	/*静音*/
	Buzzer_Silent,
	/*开关机时蜂鸣一声,蜂鸣时间:500ms*/
	Buzzer_PowerOnOff,
	/*预测温度测量结束时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
	/*预测温度测量结束时蜂鸣,蜂鸣时间:5s,频率:参照体温计C语言架构流程*/
	Buzzer_MeasuredTempForecast,
	/*实测温度测量结束时蜂鸣,蜂鸣时间:10s,频率:1Hz*/
	/*实测温度测量结束时蜂鸣,蜂鸣时间:10s,频率:参照体温计C语言架构流程*/
	Buzzer_MeasuredTempActual,
	/*预测算法转实测算法时蜂鸣,蜂鸣时间:500ms,频率:4Hz,间隔250ms*/
	Buzzer_Forecast_To_Actual,
	/*探头移除时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
	/*预测超时时蜂鸣,蜂鸣时间:5s,频率:1Hz*/
	Buzzer_Er1Er2
}e_Buzzer_Status;

/*蜂鸣电源开关*/
#define Power_Buzzer_Low 	{TRISC1 |= 0x80;PT1 &= 0x7F;}

/*BUZZER*/
#ifdef _App_Buzzer_H_
	e_Buzzer_Status eBuzzer_Status;
	
	/*参照原表不需要蜂鸣*/
	uint8 Flag_No_Buzzer;
#else
	extern e_Buzzer_Status eBuzzer_Status;
	
	/*参照原表在“全显界面进入模式切换后关机”不需要蜂鸣*/
	extern uint8 Flag_No_Buzzer;

	void Buzzer_Drive(void);
#endif