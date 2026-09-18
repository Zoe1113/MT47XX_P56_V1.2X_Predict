#include "./../Include/Variable.h"

#ifdef LCD_4726

	/*ÊÊÓÃMT4726_TFLºÍMT_4726_TÒº¾§Æ¬*/


	/*¶¨ÒåLCDµÄSEGµÄºê,·½±ãºóÃæÍ³Ò»ÐÞ¸Ä,Ò²¿ÉÀ©³ä*/
	#define LCD0_Macro				LCD0
	#define LCD1_Macro				LCD1
	#define LCD2_Macro				LCD2
	#define LCD3_Macro				LCD3
	#define LCD4_Macro				LCD4
	#define LCD5_Macro				LCD5


	/*³£ÓÃlcd·ûºÅºê¶¨Òå*/
	#define LCD_Mem								0x02     /*'M'·ûºÅ*/
	#define LCD_BatIn				 	  	0x01     /*'µç³Ø'ÄÚ²¿·ûºÅ*/
	#define LCD_BatOut				 	  	0x01     /*'µç³Ø'Íâ²¿·ûºÅ*/	
	#define LCD_Dash							0x02     /*'-'·ûºÅ*/
	#define LCD_Point				 		 	0x80     /*'Ð¡Êýµã'·ûºÅ*/

	#define LCD_Badface		 	  		  		0x08     /*'¿ÞÁ³'·ûºÅ*/
	#define LCD_Smileface		 		 		0x04     /*'Ð¦Á³'·ûºÅ*/

	#define LCD_BLE    	 						0x08     /*'À¶ÑÀ'·ûºÅ*/

	#define LCD_Delta1 		       		   		0x04     /*'FL1'·ûºÅ*/
	#define LCD_Delta2 			   		   		0x08		/*'FL2'·ûºÅ*/
	#define LCD_Delta3 			   		   		0x40	/*'FL3'·ûºÅ*/
	#define LCD_Delta4 			   		   		0x80		/*'FL4'·ûºÅ*/

	//#define LCD_Centigrade			    	0x50     /*'¡æ'·ûºÅ*/
	#define LCD_Fahrenheit						0x30     /*'¨H'·ûºÅ*/

	#define LCD_Hundred							0x80     /*'1'·ûºÅ*/

	#define LCD_Forecast_P1	 			 		0x02     /*'P1'·ûºÅ*/
	#define LCD_Forecast_P2	 		 			0x04     /*'P2'·ûºÅ*/
	#define LCD_Forecast_P1P2	   				0x06     /*'P1 P2'·ûºÅ*/

	#define LCD_Smile	 				   		0x04     /*'Ð¦Á³'·ûºÅ*/
	#define LCD_Cry	 					    	0x08     /*'¿ÞÁ³'·ûºÅ*/

	/*LCD*/
	#ifdef _Drv_LCD_4726_H_
		void Disp_Nothing(void);
	#else
		/*ÏÔÊ¾Ö¸¶¨lcdÍ¼±ê*/
		#define LCD_Mem_En()    	  		{LCD3_Macro |= LCD_Mem;}

		#define LCD_BatAll_En()				{LCD4_Macro |= LCD_BatIn;LCD3_Macro |= LCD_BatOut;}
			
		#define LCD_Unit_C_En()     		{LCD2_Macro |= 0x80;LCD3_Macro |= 0x10;}
		#define LCD_Unit_F_En()     		{LCD3_Macro |= LCD_Fahrenheit;}
		
		#define LCD_Delta1_En()				{LCD3_Macro |= LCD_Delta1;}
		#define LCD_Delta2_En()				{LCD3_Macro |= LCD_Delta2;}
		#define LCD_Delta3_En()				{LCD3_Macro |= LCD_Delta3;}
		#define LCD_Delta4_En()				{LCD3_Macro |= LCD_Delta4;}
		
		#define LCD_Smile_En()				{LCD3_Macro |= LCD_Smile;}
		#define LCD_Cry_En()				{LCD3_Macro |= LCD_Cry;}
		#define LCD_Point_En()				{LCD1_Macro |= LCD_Point;}
		#define LCD_Dash1_En()			   	{LCD0_Macro |= LCD_Dash;}
		#define LCD_Dash2_En()			   	{LCD1_Macro |= LCD_Dash;}
		#define LCD_Dash3_En()			   	{LCD2_Macro |= LCD_Dash;}
		#define LCD_Hundred_En()    	  	{LCD0_Macro |= LCD_Hundred;}
		#define LCD_BLE_En()    	  		{LCD1_Macro |= LCD_BLE;}
		#define LCD_ForecastP1_En()    		{LCD4_Macro |= LCD_Forecast_P1;}
		#define LCD_ForecastP2_En()    		{LCD4_Macro |= LCD_Forecast_P2;}
		#define LCD_ForecastP1P2_En()    	{LCD4_Macro |= LCD_Forecast_P1P2;}
		
		//Çå³ýÖ¸¶¨lcdÍ¼±ê
		#define LCD_Unit_C_Clr()     		{LCD2_Macro &= ~0x80;LCD3_Macro &= ~0x10;}
		#define LCD_Unit_F_Clr()     		{LCD3_Macro &= ~LCD_Fahrenheit;}
		
		#define LCD_Delta1_Clr()			{LCD3_Macro &= ~LCD_Delta1;}
		#define LCD_Delta2_Clr()			{LCD3_Macro &= ~LCD_Delta2;}
		#define LCD_Delta3_Clr()			{LCD3_Macro &= ~LCD_Delta3;}
		#define LCD_Delta4_Clr()			{LCD3_Macro &= ~LCD_Delta4;}
		
		#define LCD_Smile_Clr()				{LCD3_Macro |= LCD_Smile;}
		#define LCD_Cry_Clr()				{LCD3_Macro |= LCD_Cry;}
	//	#define LCD_Dash1_Clr()			   	{LCD0_Macro &= ~LCD_Dash;}
	//	#define LCD_Dash2_Clr()			   	{LCD1_Macro &= ~LCD_Dash;}
	//	#define LCD_Dash3_Clr()			   	{LCD2_Macro &= ~LCD_Dash;}
		#define LCD_Hundred_Clr()		 	{LCD0_Macro &= ~LCD_Hundred;}
		#define LCD_BLE_Clr()		 	 	{LCD1_Macro &= ~LCD_BLE;}
		#define LCD_ForecastP1_Clr()    	{LCD4_Macro &= ~LCD_Forecast_P1;}
		#define LCD_ForecastP2_Clr()    	{LCD4_Macro &= ~LCD_Forecast_P2;}
		#define LCD_ForecastP1P2_Clr()    	{LCD4_Macro &= ~LCD_Forecast_P1P2;}

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

