#include "./../Include/Variable.h"

/*说明:背光的开启与关闭可以与IO口配置成输入与输出相关联(配置成输出,背光打开;配置成输入,背光关闭)*/
#define Enable_Green		{GPIO_PT2OutputMode(0);GPIO_PT2CLR(0);}
#define Disable_Green		GPIO_PT2InputMode(0)

#define Enable_Yellow		{GPIO_PT2OutputMode(1);GPIO_PT2CLR(2);}
#define Disable_Yellow		GPIO_PT2InputMode(1)

#define Enable_Red			{GPIO_PT2OutputMode(3);GPIO_PT2CLR(3);}
#define Disable_Red			GPIO_PT2InputMode(3)

#define Enable_white			{GPIO_PT2OutputMode(2);GPIO_PT2CLR(2);}
#define Disable_white			GPIO_PT2InputMode(2)

/*使能G320B*/				
#define	G320_Enable()		   {PT8 |= 0x10;}
/*拉低PT8.4失能G320_EN*/	  
#define	G320_Disable()	   {PT8 &= 0xEF;}


typedef enum
{
	/*无背光*/
	No_Backlight,
	/*全显界面总计亮2S*/
	All_Backlight,
	/*记忆温度界面共计亮2S*/
	MemTemp_Backlight,
	/*温度开始界面共计亮2S*/
	TempDetecting_Backlight,
	/*测量结束界面共计亮10S*/
	MeasuredTemp_Backlight
}e_Backlight_Status;

typedef struct
{
	/*温度校准值写入BIE成功标志*/
	uint8 Backlight2SFlag : 1;
	/*测量结束背光亮标志位*/
	uint8 MeasuredTempLighting : 1;
}s_Backlight;

/*BACKLIGHT*/
#ifdef _App_Backlight_H_
	e_Backlight_Status eBacklight_Status;	
	s_Backlight sBacklight;
#else
	extern e_Backlight_Status eBacklight_Status;
	extern s_Backlight sBacklight;

	void Backlight_Drive(void);
#endif





