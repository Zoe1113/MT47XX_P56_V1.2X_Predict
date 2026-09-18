#define  USE_HY17P56_2M

/**************************************************************************
文件名称：Drv_Timer.c
说    明：	  定时器相关设置集合（底层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _Drv_Timer_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	TMA1底层配置/用作定时器
  * @param   None
  * @retval    None
*/
void TMA1_Configuration(void)
{
	/*选择TMA1的时钟源*/
	TMA1_CLKSelect ( TMAS1_DMSCK );

	/*设置时基:25ms*/
	#ifdef	USE_HY17P56_2M
		/*DTMA1_CK:DTMA1选择分频系数为2*/
		TMA1_CLKDiv (DTMA1_TMA1CKDIV2);
	#endif

	#ifdef	USE_HY17P56_4M
		/*DTMA1_CK:DTMA1选择分频系数为4*/
		TMA1_CLKDiv (DTMA1_TMA1CKDIV4);
	#endif

	#ifdef	USE_HY17P56_8M
		/*DTMA1_CK:DTMA1选择分频系数为8*/
		TMA1_CLKDiv (DTMA1_TMA1CKDIV8);
	#endif

	/*清空TMA1计数寄存器*/
	TMA1_ClearTMA1();
	/*使能TMA1*/
	TMA1Enable();
	
	/*設定 TMA1比較點為 45, 45*25ms = 25ms*/ 
	TMA1_CompSet(45);
	/*清除 TA1CIF 旗標 */ 
	TA1CIF_ClearFlag();
	/*開啟 TMA1 比較中斷 */ 
	TA1CIE_Enable ();
}
