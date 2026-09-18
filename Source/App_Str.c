#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_Str.c
说    明：	  字符串/延时相关设置集合（应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_Str_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief     查找指定数组长度中某个字符出现的次数
  * @param  *pMem: 数组的起始地址
  * @param  chr: 要查找的字符
  * @param  Cnt: 一个查找多少个字节
  * @retval   字符chr在数组中出现的次数
*/
uint8 memchrn(uint8* pMem, uint8 chr, uint8 Cnt)
{
	uint8 nchr = 0;

	while(Cnt--)
	{
		if(*pMem++ == chr)
		{
			nchr++;
		}
	}
	return nchr;
}

/*
  * @brief     Delay_ms
  * @param  ms: 数组的起始地址
  * @retval   None
  * @note     主频2M
*/
void Delay_ms(uint8 ms)
{
	uint8 c = 44;
	while(ms)
	{
    	while(c)
    	{
           	c--;
    	}
    	c = 44;
    	ms--;
	}
}

/*函数的调用与返回均为4个时钟周期*/
/* 定义变量与变量赋值均为1个时钟周期*/
/*循环语句for、while、do{}while均为4个时钟周期*/
/*自增、自减为1个时钟周期*/
/*asm("nop");1个时钟周期*/
