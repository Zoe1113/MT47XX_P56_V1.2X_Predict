#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_LVD.c
说    明：	  欠压相关设置集合（底层/应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _Drv_LVD_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	LVD底层配置(开启)
  * @param   None
  * @retval    None
*/
void LVD_Configuration(void)
{
	/*选择LVD检测的电压源*/
	LVD_PWRSelect(PWRS_VDD);

	/*选择检测的电压:2.6V*/
	LVD_VolSelect(VLDX_26);
}


/*
  * @brief  	LVD底层配置(关闭)
  * @param   None
  * @retval    None
*/
void LVD_Off(void)
{
	/*关闭LVD检测*/
	LVD_VolSelect(VLDX_OFF);
}


