#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_WDT.c
说    明：	  看门狗相关设置集合（底层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _Drv_WDT_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	WDT底层配置
  * @param   None
  * @retval    None
*/
void WDT_Configuration(void)
{
	/*WDT时钟源是LPC_CK:14.5KHZ*/
	/*WDT_CK = LPC / 8 = 1812.5HZ*/
	/*4096分频后为1812.5 / 4096 = 0.44250HZ*/
	/*看门狗溢出时间为1 / 0.44250 = 2.26s*/
	/*4096分频后为1812.5 / 2048 = 0.885HZ*/
	/*看门狗溢出时间为1 / 0.44250 = 1.13s*/

	/*WDT分频*/
	WDT_WDTCKDivSelect(DWDT_WDTCKDIV2048);
	/*清除WDT标志位*/
	WDTIF_ClearFlag();
	/*使能WDT中断事件*/
	WDTIE_Enable();
	/*使能WDT*/
	WDT_Enable() ;
}
