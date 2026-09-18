#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_UART.c
说    明：	  串口相关设置集合（底层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _Drv_UART_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	通过UART0发送一个字节的数据
  * @param   None
  * @retval    None
*/
void UART0_SendByte(uint8 Byte)
{
	while(!(INTF1 & 0x20));
	TX0R = Byte;
	INTF1 = INTF1 & 0xDF;
}

/**************************************************************************
*修订记录：于2024.06.07作废，此中写法byte和Byte之间的准备时间过长，
		  函数执行效率较差，在一些对时序要求较高的通讯场景下(SST1
		  120蓝牙模块)通讯成功率会受很大影响；
		  *注：具体参考文档 -> 《HY17PXX_UART发送程序不同写法说明_V01》
*作	  者: Yuhang.Chen 
**************************************************************************/
//void UART0_SendByte(uint8 Byte)
//{
//	uint8 tmp=1;
//	/*将发送的数据放入TXxR暂存器*/
//	TX0R = Byte;
//	while(tmp)
//	{
//		/*读取TXIF中断标志*/
//		if(TXIF_IsFlag())
//		{
//			/*查询TSR暂存器是否为空*/
//			/*1:TSR为空*/
//			if(UART0_GetTRMT())
//			{
//				tmp=0;
//			}
//		}
//	}
//}

/*
  * @brief  通过UART0发送一串
  * @param  *pBuffer: 指向待发送的数据串
  * @param  NumByte: 待发送的字节数
  * @retval None
*/
void UART0_SendBuffer(uint8 *pBuffer, uint8 NumByte)
{
	while(NumByte)
	{
		UART0_SendByte(*pBuffer++);
		NumByte--;
	}
}

/*
  * @brief  	通过UART0发送字符串
  * @param   *p: 指向待发送的数据串的首地址
  * @retval    None
*/
void UART0_SendString(uint8 *p)
{
	while(*p != '\0')
	{
		UART0_SendByte(*p);
		p++;
	}
}

/*
  * @brief  	16进制转10进制(2字节)
  * @param   L_Hex_Value(16进制)
  * @retval    None
*/
void HexToBcd_2Byte(uint16 L_Hex_Value)
{
	sUARTx.Num[4] = L_Hex_Value / 10000;
	sUARTx.Num[3] = L_Hex_Value / 1000 % 10;
	sUARTx.Num[2] = L_Hex_Value / 100 % 10;
	sUARTx.Num[1] = L_Hex_Value / 10 % 10;
	sUARTx.Num[0] = L_Hex_Value % 10;
}

/*
  * @brief  	将2byte数据装换为ASCII格式
  * @param   L_buf: 待转换数据;s:ASCII数据存放的首地址
  * @retval    None
*/
void HexToASCII(uint16 L_buf, unsigned char *s)
{
	HexToBcd_2Byte(L_buf);
	s[0] = sUARTx.Num[4] + 0x30;
	s[1] = sUARTx.Num[3] + 0x30;
	s[2] = sUARTx.Num[2] + 0x30;
	s[3] = sUARTx.Num[1] + 0x30;
	s[4] = sUARTx.Num[0] + 0x30;
}

/*
  * @brief  	发送数据
  * @param   s:数据存放的首地址
  * @retval    None
  * @Note     要留意不能用完整个数组保证能退出while循环
*/
void UART_Tx_String1(uint8 *s)
{
	while(*s)
	{
		UART0_SendByte(*s++);
	}
}

/*
  * @brief  	发送ASCII
  * @param   L_buf: 待转换数据
  * @retval    None
*/
void UART0_SendASCII(uint16 L_buf)
{
	HexToASCII(L_buf,sUARTx.StringArray);
	UART_Tx_String1(sUARTx.StringArray);
}


/*
  * @brief  	UART0底层配置
  * @param   None
  * @retval    None
*/
void UART0_Configuration(uint16 UartBps)
{
	/*串口波特率计算公式:CPU_CK / (4 * (n + 1))*/
	/*设置串口波特率(UART0_BGR):9600*/
	/*串口波特率在头文件(user.h)中设置*/
	UART0_BGRSet(UartBps);
	/*启动UART0端口,IO口会自动配置为TX,RC*/
    UART0Enable();
    /*开启UART0发送功能*/
    UART0_TXEnable();
    /*启动RC接收功能*/
	UART0_CREnable();
    /*使能RC接收中断*/
    RCIE_Enable();
}

/*
  * @brief  	自动波特率配置
  * @param   None
  * @retval    None
*/
void AutoBps_Configuration(void)
{
	if( sBleStatus.AutoBps_OnOff )
	{
		switch(eAutoBps_Status)
		{
			/*自动波特率初始化*/
			case AutoBps_Init:
			{
				/*清空波特率累计变更次数*/
				sAutoBps.BSP_Number = 0;
				/*初始化广播发送次数*/
				sAutoBps.Cnt_DeviceInfoSend = 4;
				/*初始化自动波特率完成标志*/
				sAutoBps.Flag_AutoBps_Completed = FALSE;
				/*自动波特率检索中*/
				eAutoBps_Status = AutoBps_Searching;
			}
			break;
			/*自动波特率检索中*/
			case AutoBps_Searching:
			{
				/*自动波特率完成标志*/
				if(!sAutoBps.Flag_AutoBps_Completed)
				{
					/*自动波特率搜索,每种波特率发送三次,通讯不成功,切换波特率*/
					if(sAutoBps.Cnt_DeviceInfoSend > 3)
					{
						/*初始化广播发送次数*/
						sAutoBps.Cnt_DeviceInfoSend = 0;
						/*关闭UART0端口*/
					    UART0Disable();
					    /*关闭UART0发送功能*/
					    UART0_TXDisable();
					    /*关闭RC接收功能*/
						UART0_CRDisable();
					    /*关闭RC接收中断*/
					    RCIE_Disable();
						/*波特率更改次数变量++*/
						sAutoBps.BSP_Number++;
						/*更换波特率次数对2取余，这样写的原因是减小代码量*/
						if(sAutoBps.BSP_Number & 1)
						{
							sAutoBps.AutoBpsValue = Register_Value + (sAutoBps.BSP_Number>>1);
						}
						else
						{
							sAutoBps.AutoBpsValue = Register_Value - (sAutoBps.BSP_Number>>1);
						}
						/*2021.8.11新增,波特率参数一直减下去会出现死机情况,加范围*/
					    if((sAutoBps.AutoBpsValue <= Register_Value - 10) || (sAutoBps.AutoBpsValue >= Register_Value + 10))
					    {
					    	/*自动波特率检索完成*/
							eAutoBps_Status = AutoBps_Searched;
							sAutoBps.Flag_AutoBps_Completed = FALSE;
							/*清空波特率累计变更次数*/
							sAutoBps.BSP_Number = 0;
							ERR[Err7] = TRUE;
					    }
					    else
					    {
					    	/*重新配置波特率*/
							UART0_Configuration(sAutoBps.AutoBpsValue);
					    }
					}
					else
					{
						/*收到有效广播应答报文*/
						if((eBle_Sta == Ble_Advertising) || (eBle_Sta == Ble_Idle))
						{
							/*自动波特率检索完成*/
							eAutoBps_Status = AutoBps_Searched;
							sAutoBps.Flag_AutoBps_Completed = TRUE;
							/*清空波特率累计变更次数*/
							sAutoBps.BSP_Number = 0;
						}
					}
				}
				else
				{
					/*No Operation*/
				}
			}
			break;
			/*自动波特率检索完成*/
			case AutoBps_Searched:
			{
				/*No Operation*/
			}
			break;

			default:break;
		}
	}
}
