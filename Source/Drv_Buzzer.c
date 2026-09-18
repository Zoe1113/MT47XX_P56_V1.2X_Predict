#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_Buzzer.c
说    明：	  蜂鸣相关设置集合（底层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _Drv_Buzzer_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	蜂鸣底层配置
  * @param   None
  * @retval    None
*/
void BZ_Configuration(void)
{
	/*蜂鳴器頻率源為 LPC_CK:14.5k*/
	/*蜂鳴器除頻為 2*/
	WDTCN |= 0x40;
}

