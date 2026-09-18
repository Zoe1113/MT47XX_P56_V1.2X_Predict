#include "./../Include/Variable.h"

#ifdef LCD_4735

	/*适用于MT4735系列、MT4759系列、MT4760系列、MT4763系列、MT4765系列液晶片*/


	/*定义LCD的SEG的宏,方便后面统一修改,也可扩充*/
	#define LCD0_Macro				LCD0
	#define LCD1_Macro				LCD1
	#define LCD2_Macro				LCD2
	#define LCD3_Macro				LCD3
	#define LCD4_Macro				LCD4
	#define LCD5_Macro				LCD5


	/*常用lcd符号宏定义*/
	#define LCD_Mem								0x08     /*'M'符号*/


	#define LCD_BatOut				 	  		0x08     /*电池符号外部显示*/
	#define LCD_BatIn				 	  		0x80     /*电池符号内部显示*/
	#define LCD_BatAll			 	  		  	0x88     /*电池符号全显*/


	#define LCD_Dash							0x02     /*'-'符号*/
	#define LCD_Point				 		 	0x08     /*'小数点'符号*/
	#define LCD_Badface		 	  		  		0x04     /*'哭脸'符号*/
	#define LCD_Smileface		 		 		0x02     /*'笑脸'符号*/
	#define LCD_BLE    	 						0x08     /*'蓝牙'符号*/
	#define LCD_Delta1 		       		   		0x01     /*'FL1'符号*/
	#define LCD_Delta2 			   		   		0x02		/*'FL2'符号*/
	#define LCD_Delta3 			   		   		0x04		/*'FL3'符号*/
	#define LCD_Delta4 			   		   		0x80		/*'FL4'符号*/
	#define LCD_Centigrade			    		0x50     /*'℃'符号*/
	#define LCD_Fahrenheit						0x30     /*'℉'符号*/
	#define LCD_Hundred							0x08     /*'1'符号*/
	#define LCD_Forecast_P1	 		 			0x02     /*'P1'符号*/
	#define LCD_Forecast_P2	 		 			0x04     /*'P2'符号*/
	#define LCD_Forecast_P1P2	   				0x06     /*'P1 P2'符号*/
	#define LCD_Smile	 				   		0x02     /*'笑脸'符号*/
	#define LCD_Cry	 					    	0x04     /*'哭脸'符号*/

	/*LCD*/
	#ifdef _Drv_LCD_4735_H_
		void Disp_Nothing(void);
	#else
		/*显示指定lcd图标*/
		#define LCD_BatOut_En()				{LCD4_Macro |= LCD_BatOut;}
		#define LCD_BatAll_En()				{LCD4_Macro |= LCD_BatAll;}
		#define LCD_Mem_En()    	  		{LCD3_Macro |= LCD_Mem;}	
		#define LCD_Unit_C_En()     		{LCD4_Macro |= LCD_Centigrade;}
		#define LCD_Unit_F_En()     		{LCD4_Macro |= LCD_Fahrenheit;}
		#define LCD_Delta1_En()				{LCD5_Macro |= LCD_Delta1;}
		#define LCD_Delta2_En()				{LCD5_Macro |= LCD_Delta2;}
		#define LCD_Delta3_En()				{LCD5_Macro |= LCD_Delta3;}
		#define LCD_Smile_En()				{LCD5_Macro |= LCD_Smile;}
		#define LCD_Cry_En()				  {LCD5_Macro |= LCD_Cry;}
		#define LCD_Point_En()				 {LCD2_Macro |= LCD_Point;}
		#define LCD_Dash1_En()			   {LCD0_Macro |= LCD_Dash;}
		#define LCD_Dash2_En()			   {LCD1_Macro |= LCD_Dash;}
		#define LCD_Dash3_En()			   {LCD2_Macro |= LCD_Dash;}
		#define LCD_Hundred_En()    	  {LCD0_Macro |= LCD_Hundred;}
		#define LCD_BLE_En()    	  		 {LCD1_Macro |= LCD_BLE;}
		#define LCD_ForecastP1_En()    	{LCD4_Macro |= LCD_Forecast_P1;}
		#define LCD_ForecastP2_En()    	{LCD4_Macro |= LCD_Forecast_P2;}
		#define LCD_ForecastP1P2_En()    	{LCD4_Macro |= LCD_Forecast_P1P2;}
		
		//清除指定lcd图标
		#define LCD_BatOut_Clr()			{LCD4_Macro &= ~LCD_BatOut;}
		#define LCD_BatIn_Clr()				{LCD4_Macro &= ~LCD_BatIn;}
		#define LCD_Unit_C_Clr()     		{LCD4_Macro &= ~LCD_Centigrade;}
		#define LCD_Unit_F_Clr()     		{LCD4_Macro &= ~LCD_Fahrenheit;}
	//	#define LCD_Delta1_En()				{LCD5_Macro &= ~LCD_Delta1;}
	//	#define LCD_Delta2_En()				{LCD5_Macro &= ~LCD_Delta2;}
		#define LCD_Delta3_Clr()			{LCD5_Macro &= ~LCD_Delta3;}
		#define LCD_Smile_Clr()				{LCD5_Macro |= LCD_Smile;}
		#define LCD_Cry_Clr()				  {LCD5_Macro |= LCD_Cry;}
	//	#define LCD_Dash1_Clr()			   {LCD0_Macro &= ~LCD_Dash;}
	//	#define LCD_Dash2_Clr()			   {LCD1_Macro &= ~LCD_Dash;}
	//	#define LCD_Dash3_Clr()			   {LCD2_Macro &= ~LCD_Dash;}
		#define LCD_Hundred_Clr()		 {LCD0_Macro &= ~LCD_Hundred;}
		#define LCD_BLE_Clr()		 	 	{LCD1_Macro &= ~LCD_BLE;}
		#define LCD_ForecastP1_Clr()    {LCD4_Macro &= ~LCD_Forecast_P1;}
		#define LCD_ForecastP2_Clr()    {LCD4_Macro &= ~LCD_Forecast_P2;}
		#define LCD_ForecastP1P2_Clr()    {LCD4_Macro &= ~LCD_Forecast_P1P2;}

		void Disp_Off(void);
		void Disp_Hi(void);
		void Disp_All(void);		
		void Disp_Orl(void);
		void Disp_Udr(void);
		void Disp_Rct(void);
		void Disp_Bth(void);
		void Disp_End(void);
		void Disp_CAL(void);
		void Disp_Low(void);
		void Disp_Code(uint16 num);
		void Disp_Version(uint8 num);
		void Disp_Nothing(void);
		void Disp_BrownOut(void);
		void Disp_Err(void);
		void Disp_ErrNo(uint8 No);
		void Disp_StaticDash(void);	
		void LCD_Configuration(void);
		void LCD_Clear_Register(void);
	#endif

#endif


