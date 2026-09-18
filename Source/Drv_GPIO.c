#define  USE_HY17P56_2M

/**************************************************************************
文件名称：Drv_GPIO.c
说    明：	  IO口相关设置集合（底层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _Drv_GPIO_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	设置GPIO
  * @param   None
  * @retval    None
*/
void GPIO_Configuration(void)
{
	/*输入引脚接上拉电阻*/
	/*防止在休眠模式时输入引脚悬浮产生漏电流*/
	/*拉高PT1*/
	PT1PU = 0xFF;
	/*PT1.1为按键,设置为输入*/
	/*PT1.2为C/F,设置为输入*/
	/*PT1.3为RX,设置为输入*/
	/*PT1.5为CF,设置为输入*/
	/*配置PT1.x其他引脚为输出*/
	TRISC1 = 0xD1;
	/*设置PT1.0(SCL)、PT1.4(TX)、PT1.6(SDA)、PT1.7(BZ)*/
	PT1 &= 0x2E;

	/*拉高PT2*/
	PT2PU = 0xFF;

	/*PT2.0为Green,设置为输入*/
	/*PT2.1为Yellow,设置为输入*/
	/*PT2.3为white,设置为输入*/
	/*PT2.3为Red,设置为输入*/
	/*配置PT2.x其他引脚为输入*/
	TRISC2 = 0x00;


	/*PT6.0-PT6.3为COM输出,当进入sleep模式前需要关闭其COM输出功能,配置成输入防止产生乱码*/
	LCDCN3 = 0x00;
	/*LCDCN6*/
	/*SEG2~SEG5,设置为数位功能*/
	LCDCN6 = 0x00;
	/*将PT6.0-PT6.7为数位功能时,单片机预设为输入模式,故要接上拉*/
	/*库里没有PT6对应的寄存器定义,问供应商(发现调用的库不对,已更改)*/
	PT6PU = 0xFF;


	/*LCDCN7*/
	/*SEG6~SEG9*/
	/*设置PT7.0-PT7.7为数位功能*/
	LCDCN7 = 0x00;
	/*LCDCN8*/
	/*SEG10~SEG13*/
	LCDCN8 = 0x00;
	/*将PT7.0-PT7.7为数位功能时,单片机预设为输入模式,故要接上拉*/
	PT7PU = 0xFF;


	/*LCDCN4*/
	/*SEG14~SEG21*/
	/*设置PT8.0-PT8.7为数位*/
	LCDCN4 = 0x00;
	/*设置PT8.0-PT8.7为数位功能*/
	PT8DA &= 0x00;
	/*配置PT8.2为BLE_EN,设置为输出*/
	/*配置PT8.4为G320_EN,设置为输出*/
	/*PT8.5为V/C,设置为输入*/
	/*PT8.6为S0,设置为输入*/
	/*PT8.7为S1,设置为输入*/
	TRISC8 = 0x11;
	PT8PU = 0xFE;
	/*拉低PT8.4失能G320_EN*/
	PT8 &= 	0xEF;
	/*拉高PT8.0，BLE&VOC_EN高电平，三极管断开*/
	PT8 |= 	0x01;
}
