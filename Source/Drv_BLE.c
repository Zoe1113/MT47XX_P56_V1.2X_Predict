#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_BIE.c
说    明：   Build-In EPROM函数（应用层）
程序编码：XXX
版    本：	  V1.0
适用 PCB:	XXX
芯	  片:	HY17P56(2M/4M/8M)
作    者:		Jiale.He
修订记录：
1、
2、
**************************************************************************/
#define _Drv_BIE_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	BIE读函数
  * @param   addr:待读取的BIE的地址
  * @retval    BIE_Data:addr中对应的数据
*/
uint16 BIE_Read(uint8 Addr)
{
	uint16 BIE_Data;
	#ifndef USE_HY17P56_2M
		/*操作BIE函數前,務必將CPU頻率切至內部HAO=1.843MHz*/
		CLK_HAOSelect(HAOM_1843KHZ);
	#endif
	/*讀取BIE函式時,由於非呼叫函式,因此需要開發者自行關閉GIE/ENAD1*/
	/*关闭中断服务控制器*/
	GIE_Disable();
	/*关闭ENAD1*/
	ADC_Disable();
	/*待读取BIE的地址*/
	BIEARL = Addr;
	/*置位BIE可读标志位*/
	BIECN=BIECN | 0x01;
	/*等待BIE可读标志位清零*/
	while((BIECN& 0x01)==1);
	/*获取BIE的数据*/
    BIE_Data = (BIEDRH << 8) | BIEDRL;
    /*打开中断服务控制器*/
	GIE_Enable();
	/*开启ADC*/
    ADC_Enable();
    /*设置CMFR,复位梳状滤波器*/
    ADC_CMFREnable();
    /*设置OSR分频系数*/
    /*高精度模式下要求OSR可选:2048/4096/8192/16384*/
    /*高精度模式下,ENOB和抗干扰能力有效提高,但SPS会下降一半*/
    ADC_OSRSelect(OSR_2048);
    /*BIE操作结束后,恢复原始时钟*/
    #ifdef USE_HY17P56_4M
    	CLK_HAOSelect(HAOM_3686KHZ);
    #endif
    /*BIE操作结束后,恢复原始时钟*/
    #ifdef USE_HY17P56_8M
    	CLK_HAOSelect(HAOM_7834KHZ);
    #endif

    /*重置ADCCounts,防止误报ERR*/
	sADC.ADCCounts = 0;
	/*等待AD稳定,预防误报ERR*/
	Delay_ms(10);
    return BIE_Data;
}

/*
  * @brief  	BIE写函数
  * @param   Addr:待执行写入操作的BIE的地址
  * @param   DH:待写入数据的高字节
  * @param   DL:待写入数据的低字节
  * @retval    None
*/
uint8 BIE_Write(uint8 Addr,uint8 DH,uint8 DL)
{
	uint8 tmp;

	#ifndef USE_HY17P56_2M
		/*操作BIE函數前,務必將CPU頻率切至內部HAO=1.843MHz*/
		CLK_HAOSelect(HAOM_1843KHZ);
	#endif

	/*BIE燒入前需要關閉高精度模式*/
	AccuracyModeADCOFF();

	/*执行BIE写操作,并返回结果(0:写入成功,1:写入失败)*/
	tmp = HY17P56WR3_Delay(Addr,DH,DL,5);
	/*原厂建议执行完HY17P56WR3_Delay再次进行Delay*/
	Delay_ms(10);

	/*燒入完成後需重新呼叫開啟高精度模式的函式*/
	ADCAccuracyMode();

	/*再來開啟GIE、ENAD1*/
	/*打开中断服务控制器*/
	GIE_Enable();
	/*开启ADC*/
    ADC_Enable();
    /*设置CMFR,复位梳状滤波器*/
    ADC_CMFREnable();
    /*设置OSR分频系数*/
    /*高精度模式下要求OSR可选:2048/4096/8192/16384*/
    /*高精度模式下,ENOB和抗干扰能力有效提高,但SPS会下降一半*/
    ADC_OSRSelect(OSR_2048);
	#ifdef USE_HY17P56_4M
    	CLK_HAOSelect(HAOM_3686KHZ);
    #endif
    /*BIE操作结束后,恢复原始时钟*/
    #ifdef USE_HY17P56_8M
    	CLK_HAOSelect(HAOM_7834KHZ);
    #endif
    /*重置ADCCounts,防止误报ERR*/
	sADC.ADCCounts = 0;
	/*等待AD稳定,预防误报ERR*/
	Delay_ms(10);

	return tmp;
}

/*
  * @brief  	轮询BIE可写的地址
  * @param   None
  * @retval    BIE_Addr:可供写操作的地址
  * @retval    当返回值为0xFF时,代表BIE空间已满,无法再写入新的数据
*/
uint8 BIE_Polling(void)
{
	uint8 BIE_Addr;
	/*轮询BIE可写的地址*/
	for(BIE_Addr = 0;BIE_Addr < 64;BIE_Addr++)
	{
		if(BIE_Read(BIE_Addr) == 0xFFFF)
		{
			return BIE_Addr;
		}
	}
	return 0xFF;
}

