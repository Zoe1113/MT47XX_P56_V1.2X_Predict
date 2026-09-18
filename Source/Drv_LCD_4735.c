#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_LCD.c
说    明：	  LCD相关设置集合（底层/应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:		适用于MT4735系列、MT4759系列、MT4760系列、MT4763系列、MT4765系列液晶片
修订记录：
**************************************************************************/
#define _Drv_LCD_4735_H_

/*Includes*/
#include "./../Include/Include.h"

#ifdef LCD_4735

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
		LCD_ChargePumpSelect(LCDV_3V0);
		/*打开LCD输出缓冲器*/
		LCD_OutBufferEnable();
		/*LCD倍压电路时钟源:7KHZ*/
		LCD_ChargePumpClk(SELPCLK_7KHZ);

		/*设置LCD时钟源:LS_CK*/
		/*LS_CK = DMS_CK / 8*/
		LCD_CLK_ClkSelect(LCDS_LSCK);
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
		LCDCN8 = 0x3F;

		/*LCDCN4*/
		/*SEG14~SEG21*/
		LCDCN4 = 0x00;

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
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0xC6;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x85;
		/*十位 + 百位*/
		LCD0_Macro = 0x00;
	}

	/*
	* @brief  	显示Hi
	* @param   None
	* @retval    None
	*/
	void Disp_Hi(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x04;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x67;
		/*十位 + 百位*/
		LCD0_Macro = 0x00;
	}

	/*
	* @brief  	显示全显
	* @param   None
	* @retval    None
	*/
	void Disp_All(void)
	{
		/*预设FL(Fever Line)功能*/
		#if	(Func_FL == Enable)
			/*FL*/
			LCD5_Macro = 0x07;
		#elif	(Func_SC == Enable)
			/*哭笑脸*/
			LCD5_Macro = 0x06;
		#else
			/*失能FL和哭笑脸*/
			LCD5_Macro = 0x00;
		#endif
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0xFF;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x08;
		/*十分位 + 小数点*/
		LCD2_Macro = 0xFF;
		/*预设蓝牙功能*/
		#if	(Func_BLE == Enable)
			/*个位 + 蓝牙符号*/
			LCD1_Macro = 0xFF;
		#endif

		#if	(Func_BLE == Disable)
			/*个位 + 蓝牙符号*/
			LCD1_Macro = 0xF7;
		#endif

		/*十位 + 百位*/
		LCD0_Macro = 0xFF;
	}

	/*
	* @brief  	清屏
	* @param   None
	* @retval    None
	*/
	void Disp_Nothing(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x00;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x00;
		/*十位 + 百位*/
		LCD0_Macro = 0x00;
	}

	/*
	* @brief  	显示故障信息
	* @param   None
	* @retval    None
	*/
	void Disp_ErrNo(uint8 No)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = NUM_CODE[No];
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x06;
		/*十位 + 百位*/
		LCD0_Macro = 0x97;
	}

	/*
	* @brief  	显示Err
	* @param   None
	* @retval    None
	*/
	void Disp_Err(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x06;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x06;
		/*十位 + 百位*/
		LCD0_Macro = 0x97;
	}

	/*
	* @brief  	显示---
	* @param   None
	* @retval    None
	*/
	void Disp_StaticDash(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x02;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x02;
		/*十位 + 百位*/
		LCD0_Macro = 0x02;
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


		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = NUM_CODE[NumDisp[0]] + 0x08;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = NUM_CODE[NumDisp[1]];
		/*十位 + 百位*/
		LCD0_Macro = 0x00;
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

		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = NUM_CODE[NumDisp[0]];
		/*个位 + 蓝牙符号*/
		LCD1_Macro = NUM_CODE[NumDisp[1]];
		/*十位 + 百位*/
		LCD0_Macro = NUM_CODE[NumDisp[2]];
	}

	/*
	* @brief  	显示口腔符号
	* @param   None
	* @retval    None
	*/
	void Disp_Orl(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x85;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x06;
		/*十位 + 百位*/
		LCD0_Macro = 0xC6;
	}

	/*
	* @brief  	显示腋下符号
	* @param   None
	* @retval    None
	*/
	void Disp_Udr(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x06;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0xE6;
		/*十位 + 百位*/
		LCD0_Macro = 0xC4;
	}

	/*
	* @brief  	显示直肠符号
	* @param   None
	* @retval    None
	*/
	void Disp_Rct(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x87;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x86;
		/*十位 + 百位*/
		LCD0_Macro = 0x06;
	}

	/*
	* @brief  	显示水槽符号
	* @param   None
	* @retval    None
	*/
	void Disp_Bth(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x47;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x87;
		/*十位 + 百位*/
		LCD0_Macro = 0xC7;
	}

	/*
	* @brief  	显示校准符号
	* @param   None
	* @retval    None
	*/
	void Disp_CAL(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x85;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x77;
		/*十位 + 百位*/
		LCD0_Macro = 0x95;
	}

	/*
	* @brief  	显示欠压符号
	* @param   None
	* @retval    None
	*/
	void Disp_BrownOut(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x08;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x00;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x00;
		/*十位 + 百位*/
		LCD0_Macro = 0x00;
	}

	/*
	* @brief  	显示End符号
	* @param   None
	* @retval    None
	*/
	void Disp_End(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0xE6;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x46;
		/*十位 + 百位*/
		LCD0_Macro = 0x97;
	}

	/*
	* @brief  	显示Off符号
	* @param   None
	* @retval    None
	*/
	void Disp_Off(void)
	{
		/*FL*/
		LCD5_Macro = 0x00;
		/*预测符号 + 电池符号 + 温度单位*/
		LCD4_Macro = 0x00;
		/*百分位(单精度表失能) + (MEM)*/
		LCD3_Macro = 0x00;
		/*十分位 + 小数点*/
		LCD2_Macro = 0x17;
		/*个位 + 蓝牙符号*/
		LCD1_Macro = 0x17;
		/*十位 + 百位*/
		LCD0_Macro = 0xF5;
	}

#endif


