#include "./../Include/Variable.h"

typedef enum
{
	/*按键消抖状态*/
	Button_Debouncing,
	/*按键按下状态*/
	Button_Press,
	/*按键抬起状态*/
	Button_Lift
}e_Button_Status;

typedef struct
{
	/*按键曾按下过*/
	uint8 Flag_Button_Press_Once : 1;	
	/*按键按下瞬态标志位*/
	uint8 Flag_Button_Press_Transient : 1;
	/*按键按下2S标志位*/
//	uint8 Flag_Button_Press_2S : 1;
	/*按键按下3S标志位*/
	uint8 Flag_Button_Press_3S : 1;
	/*按键按下6S标志位*/
	uint8 Flag_Button_Press_6S : 1;
	/*按键按下9S标志位*/
	uint8 Flag_Button_Press_9S : 1;
	
	/*按键曾抬起过*/
	uint8 Flag_Button_Lift_Once : 1;
	/*按键抬起瞬态标志位*/
	uint8 Flag_Button_Lift_Transient : 1;
	/*按键抬起1S标志位*/
	uint8 Flag_Button_Lift_1S : 1;
	/*按键抬起2S标志位*/
	uint8 Flag_Button_Lift_2S : 1;
	/*按键抬起60S标志位*/
	uint8 Flag_Button_Lift_60S : 1;
}s_Button;

typedef struct
{
	/*获取预测温度测量起始时间标志位*/
	uint8 Get_ForecastMeas_Start_Timer_Flag : 1;
	/*获取状态机中公共变量起始时间标志位*/
	uint8 Get_DispCOM_Start_Time_Flag : 1;
	/*获取背光驱动公共变量起始时间标志位*/
	uint8 Get_Backlight_Start_Time_Flag : 1;
	/*获取蜂鸣器起始时间标志位*/
	uint8 Get_Buzzer_Start_Timer_Flag : 1;
	/*获取按键按下起始时间标志位*/
	uint8 Get_ButtonPress_Flag : 1;
	/*获取按键抬起起始时间标志位*/
	uint8 Get_ButtonLift_Flag : 1;
	/*获取蓝牙起始时间标志位*/
	uint8 Get_BleMode_Flag : 1;
	/*获取蓝牙上电最大允许连接时间标志位*/
	uint8 Get_Ble_Connect_Max_Time_Flag : 1;
	/*获取EMC测试温度更新标志位*/
	uint8 Get_EMC_Temp_Update_Time_Flag : 1;
	

	/*时间线*/
	uint32 Timer_Journey;	
	/*蜂鸣器在起始时间之后累加的时间*/
	uint32 Buzzing_Timer;		
	/*状态机中公共变量在起始时间之后累加的时间*/
	uint32 DispCOM_Timer;
	/*状态机中公共变量在起始时间之后累加的时间*/
	uint32 Backlight_Timer;
	/*预测温度测量在起始时间之后累加的时间*/
	uint32 ForecastMeas_Timer;
	/*按键抬起在起始时间之后累加的时间*/
	uint32 ButtonLift_Timer;		
	/*按键按下在起始时间之后累加的时间*/
	uint32 ButtonPress_Timer;
	/*蓝牙计时在起始时间之后累加的时间*/
	uint32 BleMode_Timer;
	/*蓝牙计时在起始时间之后累加的时间*/
	uint32 BleMode_Connect_Max_Timer;
	/*EMC测试温度更新在起始时间之后累加的时间*/
	uint32 EMC_Temp_Update_Timer;
}s_TimeStamp;

/*KEY*/
#ifdef _App_Key_H_
	s_Button sButton;
	s_TimeStamp sTimeStamp;	
	e_Button_Status eButton_Status;
#else
	extern s_Button sButton;
	extern s_TimeStamp sTimeStamp;
	extern e_Button_Status eButton_Status;
	
	void Key_Detect(void);
	uint8 Timer_Experience(uint32 Start_Time,uint32 Time_Interval);
#endif