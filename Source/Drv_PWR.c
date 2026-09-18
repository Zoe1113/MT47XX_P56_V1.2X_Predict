#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_PWR.c
说    明：	  电源管理相关设置集合（底层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _Drv_PWR_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	VDDA底层配置
  * @param   None
  * @retval    None
*/
void PWR_Configuration(void)
{
	/*使能ADC参考电压*/
	PWR_BGREnable();

	/*使能LDO下拉电阻(250KΩ)*/
	PWR_LDOPLEnable();

	/*使能内部LDO线性稳压源*/
	PWR_LDOEnable();

	/*2.4V使能*/
	PWR_LDOSel(LDOC_2V4);
}
