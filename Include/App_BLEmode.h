#include "./../Include/Variable.h"

//常用ASCII表
#define ASCII_Dash 		45
#define ASCII_Point 	 46
#define ASCII_B 		   66
#define ASCII_D 		   68
#define ASCII_E 		   69
#define ASCII_G 		   71
#define ASCII_M 		   77
#define ASCII_T			    84
#define ASCII_b 		    98
#define ASCII_0 			48
#define ASCII_1 			49
#define ASCII_2 			50
#define ASCII_3 			51
#define ASCII_4 			52
#define ASCII_5 			53
#define ASCII_6 			54
#define ASCII_7 			55
#define ASCII_8 			56
#define ASCII_9 			57



/*蓝牙使能脚(低电平有效，输出使能口)*/
#define Port_Ble_Enable 	{TRISC8 |= 0x04;PT8 |= 0x04;}
#define Port_Ble_Disable 	{TRISC8 |= 0x04;PT8 &= 0xFB;}

/*蓝牙电路高断低开*/
/*蓝牙关闭时，相关IO口(PT8.0输出高电平取消上拉)设置为输出低电平取消上拉电阻,关闭UART0TX功能*/
/*蓝牙开启时，相关PT8.0输出低电平取消上拉，PT8.2输出高电平取消上拉，PT8.1、PT8.3输入取消上拉电阻，PT1.4输出低电平上拉电阻，PT1.3输入上拉电阻，打开UART0TX功能*/
#define Power_Ble_Off	 {TRISC8 |= 0x0F;PT8 |= 0x01;PT8 &= 0xF1;PT8PU &= 0xF0;UART0Disable();TRISC1 |= 0x18;PT1 &= 0xE7;PT1PU &= 0xE7;}
#define Power_Ble_On 	 {TRISC8 &= 0xF5;PT8 &= 0xFE;PT8 |= 0x04;PT8PU &= 0xF0;TRISC1 &= 0xF7;TRISC1 |= 0x10;PT1 &= 0xEF;PT1PU |= 0x18;}


/*功能码*/
/*mcu to ble的命令码*/
/*空闲*/
#define TxFunc_Default 						0x00
/*ET产品温度功能码*/
#define TxFunc_Temperature 			   0x04
/*仪器广播信息功能码*/
#define TxFunc_DeviceInfo 				  0x09

/*app to mcu的应答码*/
/*ET产品温度应答码*/
#define RxAck_Temperature 				0x83	
#define RxAck_Unit 							   0x85
/*仪器广播信息应答码*/
#define RxAck_DeviceInfo 				  0x89	

/*ble to mcu的应答码*/
/*所有Rx接受校验和错误均为0x00,校验和错,MCU不做任何响应*/
#define RxFunc_Checksumfail 		  0x00
#define RxFunc_UpdateTime 			  0x86

/*以下是蓝牙协议格式的预定义*/
/*蓝牙协议数据-总字节数(接收数据不可以超出此长度)*/
#define DataLenth 								18
/*蓝牙协议数据-数据长度位标(特别注意数据长度是2字节,很多时候直接用的是低字节)	*/
#define Index_lenth 							4
/*蓝牙协议数据-功能码位标	*/
#define Index_func 								6
/*蓝牙协议数据-数据段位标*/
#define Index_data 								7
/*蓝牙协议数据-数据段*/
//#define MaxData 								240
/*注:不可以增加校验和和包尾的位标(可变)*/

/* 唤醒帧 */
#define Ble_WakeupHeader 			   0x00


/*帧头*/
#define Ble_Header1 						 0xFA
#define Ble_Header2 						 0xAA
#define Ble_Header3 						 0xAA
#define Ble_Header4 						 0xAF

#define Ble_Header21 						0x55
#define Ble_Header22 						0xAA
#define Ble_Header23 						0xAA
#define Ble_Header24 						0x55

/*帧尾*/
#define Ble_End1 								0xF5
#define Ble_End2 								0x5F

#define Ble_End21 							   0x5A
#define Ble_End22 							   0xA5

/*开机允许连接蓝牙时间*/
/*单位分钟*/
#define Allow_Ble_Connect_Max_Time_Ratio		1

#define Allow_Ble_Connect_Max_Time		Allow_Ble_Connect_Max_Time_Ratio * 2400

/*蓝牙状态*/
typedef enum
{
	Ble_Standby,
	Ble_DeviceInfo,
	Ble_Disable,
	Ble_Advertising,
//	BLE_UpdateTime,
	Ble_Idle,
	Ble_UploadData,
	Ble_LinkErr,
	Ble_TimeoutErr
}eBleModeTask;

typedef struct
{
	/*蓝牙使能*/
	uint8 F_Ble_En : 1;
	/*uart接收成功*/
	uint8 F_Uart_Receive : 1;
	/*蓝牙标志闪烁*/
	uint8 F_Ble_Blink : 1;
	
	/*蓝牙温度上传标志*/
	uint8 F_Temp_Upload : 1;
	/*蓝牙温度更新标志*/
	uint8 F_Temp_Updated : 1;
	/*蓝牙数据接收到首帧标志*/
//	uint8 F_Receive_First : 1;
	/*MCU自动波特率开始标志*/	
	uint8 AutoBps_OnOff : 1;
	/*先前蓝牙忙状态*/
	uint8 F_Previous_Ble_Busy;
	/*蓝牙温度上传计数,上限三次*/
	uint8 TempUploadTimes_Cnt;
	/*g_Ble_RxData[DataLenth]*/
	uint8 pBleRxBuf;
	/*蓝牙接收数据缓冲区	*/
	uint8 g_Ble_RxData[DataLenth];
	/*蓝牙接收数据缓冲区备份区*/
	uint8 g_Ble_RxData_Buf[DataLenth];
	/*蓝牙发送数据缓冲区(最大10组记忆*8byte + 10 byte = 250byte)*/
	uint8 g_Ble_TxData[20];
}s_BleStatus;


/*BleMode*/
#ifdef _App_BleMode_H_
	eBleModeTask eBle_Sta;
	s_BleStatus sBleStatus;
#else
	extern eBleModeTask eBle_Sta;
	extern s_BleStatus sBleStatus;
	
	void App_BleMode(void);
	void BleData_Rcv(void);
#endif
