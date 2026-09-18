#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_LCD.c
说    明：	  LCD相关设置集合（底层/应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:		适用MT18、MT18FL液晶片
修订记录：
**************************************************************************/
#define _Drv_LCD_4718_H_

/*Includes*/
#include "./../Include/Include.h"

#ifdef LCD_4718

	/*
	* @brief  	LCD底层设置
	* @param   None
	* @retval    None
	*/
	void LCD_Configuration(void)
	{
		/*LCDCN1*/
		/*LCD倍压电路控制器*/
		LCD_Enable();
		/*设置VLCD输出电压:3.0V*/
		LCD_ChargePumpSelect(LCDV_4V05);
		/*打开LCD输出缓冲器*/
		LCD_OutBufferEnable();
		/*LCD倍压电路时钟源:7KHZ*/
		LCD_ChargePumpClk(SELPCLK_7KHZ);

		/*设置LCD时钟源:LS_CK*/
		/*LS_CK = DMS_CK / 8*/
		LCD_CLK_ClkSelect(LCDS_LPCCK);
		/*DLCD_CK:3.6KHZ*/
		#ifdef	USE_HY17P56_2M
			LCD_CLK_DivSelect(DLCD_LCDCKDIV2);
		#endif

		#ifdef	USE_HY17P56_4M
			LCD_CLK_DivSelect(DLCD_LCDCKDIV4);
		#endif

		#ifdef	USE_HY17P56_8M
			LCD_CLK_DivSelect(DLCD_LCDCKDIV8);
		#endif

		/*LCD倍压电路能力*/
		/*0:高((啟動 BIE 功能時,選擇此設定)*/
		/*1:低(正常使用 LCD 功能時,選用此設定)*/
		LCDCN1 |= 0x01;

		/*LCDCN2*/
		/*LCD正常显示*/
		LCD_DisplayOn();

		/*LCDCN3*/
		/*COM0~COM3*/
		LCDCN3 = 0xFF;

		/*LCDCN6*/
		/*SEG2~SEG5*/
		LCDCN6 = 0xFF;

		/*LCDCN7*/
		/*SEG6~SEG9*/
		LCDCN7 = 0xFF;

		/*LCDCN8*/
		/*SEG10~SEG12*/
		LCDCN8 = 0xFF;

		/*LCDCN4*/
		/*SEG14~SEG21*/
		LCDCN4 = 0x01;

		Disp_Nothing();
	}


	/*
	* @brief  	清LCD所有寄存器
	* @param   None
	* @retval    None
	*/
	void LCD_Clear_Register(void)
	{
		/*清LCDCN1*/
		LCDCN1 = 0x00;

		/*清LCDCN2*/
		/*LCD正常显示*/
		LCDCN2 = 0x00;

		/*清LCDCN3*/
		/*COM0~COM3*/
		LCDCN3 = 0x00;

		/*清LCDCN4*/
		/*SEG14~SEG21*/
		LCDCN4 = 0x00;

		/*清LCDCN6*/
		/*SEG2~SEG5*/
		LCDCN6 = 0x00;

		/*清LCDCN7*/
		/*SEG6~SEG9*/
		LCDCN7 = 0x00;

		/*LCDCN8*/
		/*SEG10~SEG12*/
		LCDCN8 = 0x00;
	}

	/*
	* @brief  	显示Low
	* @param   None
	* @retval    None
	*/
	void Disp_Low(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x00;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x30;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x04;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x62;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x02;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示Hi
	* @param   None
	* @retval    None
	*/
	void Disp_Hi(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x00;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x30;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x32;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x02;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x00;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示全显
	* @param   None
	* @retval    None
	*/
	void Disp_All(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x77;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x33;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x77;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x77;

		/*预设FL(Fever Line)功能*/
		#if	(Func_FL == Enable)
			/*十分位局部段码(CB) + 电池符号 + FL*/
			LCD4_Macro = 0x77;
		#else
			/*十分位局部段码(CB) + 电池符号 + FL*/
			LCD4_Macro = 0x07;
		#endif

		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x07;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	清屏
	* @param   None
	* @retval    None
	*/
	void Disp_Nothing(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x00;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x00;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x00;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x00;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x00;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示故障信息
	* @param   None
	* @retval    None
	*/
	void Disp_ErrNo(uint8 No)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x73;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x20;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x02;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = NUM_CODE[No];
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = NUM_CODE[No] >> 8;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示Err
	* @param   None
	* @retval    None
	*/
	void Disp_Err(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x73;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x20;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x02;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x22;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x00;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示---
	* @param   None
	* @retval    None
	*/
	void Disp_StaticDash(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x20;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x00;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x02;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x20;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x00;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示绑定程序版本信息
	* @param   None
	* @retval    None
	*/
	void Disp_Version(uint8 num)
	{
		uint8 NumDisp[2];

		/*提取温度的各个位上的数字*/
		/*个位*/
		NumDisp[1] = num / 10;
		/*十分位*/
		NumDisp[0] = num % 10;

		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x00;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = NUM_CODE[NumDisp[1]] << 4;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = (NUM_CODE[NumDisp[1]] >> 4) + 0x40;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = NUM_CODE[NumDisp[0]];
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = NUM_CODE[NumDisp[0]] >> 8;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示绑定程序编码信息
	* @param   None
	* @retval    None
	*/
	void Disp_Code(uint16 num)
	{
		uint8 NumDisp[3];

		/*提取温度的各个位上的数字*/
		/*百位*/
		NumDisp[2] = num / 100;
		/*十位*/
		NumDisp[1] = num % 100 / 10;
		/*个位*/
		NumDisp[0] = num % 10;

		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = NUM_CODE[NumDisp[2]];
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = (NUM_CODE[NumDisp[2]] >> 8) + (NUM_CODE[NumDisp[1]] << 4);
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = NUM_CODE[NumDisp[1]] >> 4;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = NUM_CODE[NumDisp[0]];
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = NUM_CODE[NumDisp[0]] >> 8;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示口腔符号
	* @param   None
	* @retval    None
	*/
	void Disp_Orl(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x62;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x22;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x02;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x43;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x00;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示腋下符号
	* @param   None
	* @retval    None
	*/
	void Disp_Udr(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x42;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x22;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x36;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x22;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x00;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示直肠符号
	* @param   None
	* @retval    None
	*/
	void Disp_Rct(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x22;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x20;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x06;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x63;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x00;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示水槽符号
	* @param   None
	* @retval    None
	*/
	void Disp_Bth(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x63;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x32;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x06;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x23;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x02;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示校准符号
	* @param   None
	* @retval    None
	*/
	void Disp_CAL(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x53;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x30;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x33;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x43;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x00;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示欠压符号
	* @param   None
	* @retval    None
	*/
	void Disp_BrownOut(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x00;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x00;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x00;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x00;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x04;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示End符号
	* @param   None
	* @retval    None
	*/
	void Disp_End(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x73;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x20;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x22;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x62;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x03;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

	/*
	* @brief  	显示Off符号
	* @param   None
	* @retval    None
	*/
	void Disp_Off(void)
	{
		/*十位局部段码(DGAEF) + 百位*/
		LCD0_Macro = 0x53;
		/*十位局部段码(CB) + 个位局部段码(EF)*/
		LCD1_Macro = 0x33;
		/*个位局部段码(CBDGA) + 小数点*/
		LCD2_Macro = 0x03;
		/*十分位局部段码(DGAEF) + (M)*/
		LCD3_Macro = 0x33;
		/*十分位局部段码(CB) + 电池符号 + FL**/
		LCD4_Macro = 0x00;
		/*温度单位(低精度液晶屏)*/
		LCD5_Macro = 0x00;
		/*温度单位(高精度液晶屏)*/
		LCD6_Macro = 0x00;
	}

#endif


