#include "./../Include/Variable.h"

/*设置串口波特率*/
#define UART0_BGR		9600

/*Register_Value:寄存器里写入的值,仅需要设置UART0_BGR即可*/
#ifdef	USE_HY17P56_2M
	#define	Register_Value ((4607500 / UART0_BGR - 5) / 10)//((4607500 / UART0_BGR + 5) / 10)
#endif

/*Register_Value:寄存器里写入的值,仅需要设置UART0_BGR即可*/
#ifdef	USE_HY17P56_4M
	#define Register_Value	((9215000 / UART0_BGR  + 5) /10 - 1)
#endif

/*Register_Value:寄存器里写入的值,仅需要设置UART0_BGR即可*/
#ifdef	USE_HY17P56_8M
	#define Register_Value	(1958500 / UART0_BGR - 1)
#endif

typedef enum
{
	/*自动波特率初始化*/
	AutoBps_Init,
	/*自动波特率检索中*/
	AutoBps_Searching,
	/*自动波特率检索完成*/
	AutoBps_Searched,
}e_AutoBps_Status;

typedef struct
{
	/*串口接收到的数据*/
	//uint8 UART0_RcvBuff;
	/*串口接收到的数据*/
	uint8 Num[5];
	uint8 StringArray[10];
}s_UARTx;

typedef struct
{
	/*自动波特率校准完成*/
	uint8 Flag_AutoBps_Completed : 1;
	
	/*波特率自检发送次数*/
    uint8 BSP_Number; 
	/*固定波特率广播报文发送计数,上限3次*/
	uint8 Cnt_DeviceInfoSend;
	
	/*检索的自动波特率值*/
	uint16 AutoBpsValue;
}s_AutoBps;

/*UART*/
#ifdef _Drv_UART_H_
	s_UARTx sUARTx;	
	s_AutoBps sAutoBps;
	e_AutoBps_Status eAutoBps_Status;
#else
	extern s_UARTx sUARTx;
	extern s_AutoBps sAutoBps;
	extern e_AutoBps_Status eAutoBps_Status;
	
	void UART0_Configuration(uint16 UartBps);
	void UART0_SendString(uint8 *p);
	void UART0_SendByte(uint8 Byte);
	void UART0_SendBuffer(uint8 *pBuffer, uint8 NumByte);
	void UART0_SendASCII(uint16 L_buf);
	void AutoBps_Configuration(void);
#endif