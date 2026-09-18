#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_ADC.c
说    明：	  ADC相关设置集合（底层/应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _Drv_ADC_H_

/*Includes*/
#include "./../Include/Include.h"

/*设置ADC*/
/*
  * @brief     ADC的底层配置
  * @param  None
  * @retval   None
*/
void ADC_Configuration(void)
{
	/*失能ADC*/
	ADC_Disable();
	/*ADC时钟源*/
	/*ADC_CK:250K*/
	#ifdef	USE_HY17P56_2M
		CLK_ADCCKDivSelect(DADC_DHSCKDIV8);
	#endif

	#ifdef	USE_HY17P56_4M
		CLK_ADCCKDivSelect(DADC_DHSCKDIV16);
	#endif

	#ifdef	USE_HY17P56_8M
		CLK_ADCCKDivSelect(DADC_DHSCKDIV32);
	#endif

	/*设置ADC的差分信号输入源*/
	ADC_VINSelect(INP_AI2,INN_AI3);
	/*设置差分参考信号输入源*/
    ADC_VRINSelect(VRH_VCMS,VRL_VSS);
    /*设置PGA放大系数和ADGN放大系数*/
    ADC_GainSelect(ADGN_1,PGAGN_1);
    /*设置差分参考信号输入放大系数*/
    ADC_VRXSelect(VREGN_DIV1);
    /*设置差分信号输入偏移*/
    ADC_DCSETSelect(DCSET_N0);
    /*设置OSR分频系数*/
    /*高精度模式下要求OSR可选:2048/4096/8192/16384*/
    /*高精度模式下,ENOB和抗干扰能力有效提高,但SPS会下降一半*/
    ADC_OSRSelect(OSR_2048);
    /*设置VCMS电压源*/
    ADC_VCMSSelect(VCMS_V12);
    /*启用内部LDO下拉电阻*/
    /*有如下两种情况,必须启用下拉电阻,否则ADC结果不如预期*/
    /*1.启用内部LDO*/
    /*2.ADC参考电压选用VDDA/2-VSS*/
    ADC_LDOPLEnable();
	/*开启ADC Common Mode Voltage*/
    ADC_ENACMEnable();
}


