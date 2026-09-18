#include "./../Include/Variable.h"

#ifdef LCD_4718

	/*适用MT18、MT18FL液晶片*/


	typedef enum
	{
		/*校准温度超范围(有效温度范围:36.4-37.5℃)*/
		Err0,
		/*探头移除*/
		Err1,
		/*预测超时*/
		Err2,
		/*预留*/
		Err3,
		/*温度校准失败*/
		/*校准失败判定:连续五次0.25s前后两次温度≥0.05℃*/
		Err4,
		/*温度校准值比对错误*/
		/*温度校准值比对是将存进去的值读出来判断是否相等*/
		Err5,
		/*预测判定超时(超过8s)*/
		Err6,
		/*未收到蓝牙数据报错*/
		Err7,	
		/*探头开路短路*/
		Err,
		/*总的Err*/
		Err_Num
	}e_Err;

	typedef enum
	{
		/*上电界面:0*/
		Display_PowerOn,
		/*欠压界面:1*/
		Display_LowPower,
		/*全显界面:2*/
		Display_All,
		/*单位切换界面:3*/
		Display_UnitExchange,
		/*程序版本显示界面:4*/
		Display_Version,
		/*程序编码显示界面:5*/
		Display_Code,
		/*Off显示界面:6*/
		Display_Off,
		/*温度校准界面:7*/
		Display_Calibration,
		/*温度校准成功界面:8*/
		Display_CalibrationOK,
		/*最近一次温度显示界面:9*/
		Display_RecentTemperature,
		/*记忆温度序号显示界面:10*/
		Display_MemoryTemperatureNumber,
		/*记忆温度显示界面:11*/
		Display_MemoryTemperatureValue,
		/*有四种模式可选:Oral(口腔)、Underarm(腋下)、Rectal(直肠)、Bath(水槽)*/
		/*当前模式符号显示界面:12*/
		Display_CurrentMode,
		/*模式切换显示界面:13*/
		Display_ModeExchange,
		/*绑定检测显示界面:14*/
		Display_Binding,
		/*开始测温显示界面:15*/
		Display_TemperatureDetecting,
		/*显示故障界面:16*/
		Display_ERR,	
		/*显示温度界面:17*/
		Display_MeasuredTemperature,
		/*休眠模式界面:18*/
		Display_SleepMode,
		/*预校温界面:19*/
		Display_PreCalibration
	}e_Display;



	/*LCD*/
	#ifdef _App_LCD_4718_H_
		e_Err eErr;
		e_Display eDisplay_Interfaces;
		
		/*定义成bool数据类型竟然不可以置FALSE,很奇怪*/
		uint8 UnitExchangeCompleted/*,Filterred_Ghost,DispLowSymbolFlag,DispLowSymbolCompletedFlag*/;
		uint8 ERR[Err_Num];	
		const uint16 NUM_CODE[11] = {0x353, 0x300, 0x172, 0x370, 0x321, 0x271, 0x273, 0x310, 0x373, 0x371, 0x000}; /*0~9~不显示*/
	#else
		extern uint8 UnitExchangeCompleted/*,Filterred_Ghost,DispLowSymbolFlag,DispLowSymbolCompletedFlag*/;
		extern uint8 ERR[Err_Num];
		extern const uint16 NUM_CODE[11];
		
		extern e_Err eErr;
		extern e_Display eDisplay_Interfaces;
		
		void LCD_Display(void);
		void LCD_Configuration(void);
		void LCD_Disp(uint8 *pDispBuf);
	#endif

#endif
