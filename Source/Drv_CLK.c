#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_CLK.c
说    明：	  时钟相关设置集合（底层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_CLK_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	设置时钟
  * @param   None
  * @retval    None
*/
void CLK_Configuration(void)
{
	/*选择HAO主频(在Project Option中IC Type选取,有2M/4M/8M可选)*/

	/*使能ENHAO*/
	CLK_HAOEnable();

	/*HS_CK:OSCS选择OSC_HAO*/
	/*默认选择OSC_HAO*/
	CLK_OSCSelect(OSCS_HAO);

	/*DHS_CK:DHS选择分频系数1*/
	/*默认选择分频系数1*/
	CLK_DHSCKSelect(DHS_HSCKDIV1);

	/*DMS_CK:DMS选择分频系数2*/
	/*默认选择分频系数2*/
	CLK_DMSCKSelect(DMS_DHSCKDIV2);

	/*LS_CK由DMS_CK八分频所得,分频系数是单片机预设好的*/

	/*LPC_CK:LCPS选择OSC_LPO*/
	/*LPC_CK时钟源来源于OSC_XT或OSC_LPO,外部没接晶振,所以OSC_XT没启用,LC_CK的时钟源来源于OSC_LPO*/
	/*默认LPC_CK来源于OSC_LPO*/
	CLK_LPCCKSelect(LCPS_LPO);

	/*CPU_CK:CPUS选择DHS_CK*/
	CLK_CPUCKSelect(CPUS_HSCK/*CPUS_DHSCK*/);

	/*HAO频率中心调整(0.00%)*/
//	CSFCN0 = 0x40;

	/*不启用CSF功能*/
	PWRCN &= 0xFE;
}

