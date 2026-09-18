#include "./../Include/Variable.h"

typedef enum
{
	/*摄氏度*/
	Centigrade = 0x5A,
	/*华氏度*/
	Fahrenheit = 0xA5
}e_TempUnit;

typedef enum
{
	/*默认软件版本和编码不显示*/
	VC_DispOff,
	/*显示软件版本和编码*/
	VC_DispOn
}e_VersionCode;

typedef enum
{
	/*口腔*/
	Oral_Mode,
	/*腋下*/
	Underarm_Mode,
	/*直肠*/
	Rectal_Mode,
	/*水槽模式*/
	Bath_Mode
}e_MeasureMode;


typedef enum
{
	/*摄氏度优先,可切换*/
	CentigradeFirst_Switchable,
	/*摄氏度优先,不可切换*/
	CentigradeFirst_NonSwitchable,
	/*华氏度优先,可切换*/
	FahrenheitFirst_Switchable,
	/*华氏度优先,不可切换*/
	FahrenheitFirst_NonSwitchable
}e_Binding_Status;

/*************************************************/
typedef struct
{
	/*获取总测试起始时间标志位*/
	uint8 Test_Get_Total_Journey_Start_Flag : 1;
	
	/*总测试起始时间*/
	uint32 Test_Total_Journey_Start_Timer;		
	
	/*在测试起始时间之后计的时间*/
	uint16 Test_Total_Journey_Timer;
	
	/*AD中断计数*/
	uint32 ISR_AD_Counts;
		
	/*AD主循环计数*/
	uint32 MainCycle_Counts;
	
	/*AD主循环计数*/
	uint32 MainForecast_Counts;
}s_Test;
/*************************************************/


/*INIT*/
#ifdef _App_Init_H_
/*************************************************/	
	s_Test sTest;
/*************************************************/
	e_TempUnit eTempUnit,eBondingTempUnit;
	e_VersionCode eVersionCode;
	e_MeasureMode eMeasureMode;
	e_Binding_Status eBinding_Status;
	
	uint8 Enter_PrepareSleep_Flag;
#else
	
/*************************************************/
	extern s_Test sTest;
/*************************************************/

	extern e_TempUnit eTempUnit,eBondingTempUnit;
	extern e_VersionCode eVersionCode;
	extern e_MeasureMode eMeasureMode;
	extern e_Binding_Status eBinding_Status;
	
	extern uint8 Enter_PrepareSleep_Flag;
	
	void Param_Init(void);
	void System_Init(void);
	void E2_Init(void);
	void BIE_Init(void);
	void Binding_Init(void);
#endif
