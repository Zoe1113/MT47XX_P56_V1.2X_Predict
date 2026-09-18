#define  USE_HY17P56_2M
/**************************************************************************
文件名称:  App_Ble.c
说    明：	 蓝牙相关函数集合(应用层)
作    者:	    Jiale.HE
版    本：	  V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注：	 适用公司的MT蓝牙
修订记录：
**************************************************************************/
#define _App_BleMode_H_

/*Includes*/
#include "./../Include/Include.h"

/*********************************************************************************************
1、北大蓝牙模块初始化时间为200ms，需等待；
2、转发型指令由App应答，特殊型指令由BLE应答，具体详见模块要求和协议；
3、如果连接成功后断线，不报错，蓝牙标志由静止显示变为闪烁；
4、如果busy30s未空闲则报错，但依然可以重新连接蓝牙；
5、第3条和第4条均要复位蓝牙让其重启一次；
**********************************************************************************************/

/*
  * @brief  	串口接收数据校验
  * @param   None
  * @retval    None
*/
uint8 BleData_Check(void)
{
	uint8 checksum = 0;
	uint8 L_buf = 0;
	uint8 i;
	uint8 L_Lenth;

	L_Lenth = sBleStatus.g_Ble_RxData_Buf[Index_lenth + 1] - 3;
	/*判断数据长度是否超出接收数组的最大长度，超出则判定接收失败，跳出函数，防止数组越界访问*/
	if(L_Lenth > DataLenth)
	{
		return L_buf;
	}
	/*计算校验和from Data length(include) to Check sum(not include)*/
	for(i = Index_lenth;i < L_Lenth; i++)
	{
		checksum += sBleStatus.g_Ble_RxData_Buf[i];
	}
	/*判断校验和是否相同，是则返回1，否则0*/
	if( checksum == sBleStatus.g_Ble_RxData_Buf[i] )
	{
		L_buf = sBleStatus.g_Ble_RxData_Buf[Index_func];
	}
	return L_buf;
}

/*
  * @brief  	串口接收事件处理
  * @param   None
  * @retval    None
*/
uint8 Uart_Receive_Event(void)
{
	uint8 i;
	/*蓝牙功能码*/
	uint8 L_ble_func;
	/*rx接收数据校验和错误*/
	uint8 L_Success = 0;

	/*UART RX接收事件处理*/
	if(sBleStatus.F_Uart_Receive && sBleStatus.F_Ble_En)
	{
		sBleStatus.F_Uart_Receive = 0;

		/*备份命令(简单的产品不需要)*/
		for( i = 0; i < DataLenth; i++ )
		{
			sBleStatus.g_Ble_RxData_Buf[i] = sBleStatus.g_Ble_RxData[i];
		}

		/*识别接收协议中的功能码*/
		L_ble_func = BleData_Check();
		switch (L_ble_func)
		{
			/*收到设备信息应答则调到广播状态*/
			case RxAck_DeviceInfo:
				eBle_Sta = Ble_Advertising;
				break;

			/*收到温度应答则跳到空闲等待*/
			case RxAck_Temperature:
				eBle_Sta = Ble_Idle;
				break;

			/*校验和错,不管是何种命令,不做任何响应*/
			case RxFunc_Checksumfail:
				/*此处有重发机制,等于有响应*/
			default:
				break;
		}
	}
	return L_Success;
}

/*
  * @brief  	上传温度信息
  * @param   None
  * @retval    None
*/
void App_Upload_Temperature(void)
{
	uint8 i;
	uint8 l_readloop;
	uint8 L_datalenth;
	uint8 L_MemAdd;
	uint8 L_Checksum = 0;

	uint16 L_Temp;
	/*起始符*/
	sBleStatus.g_Ble_TxData[0] = Ble_Header1;
	sBleStatus.g_Ble_TxData[1] = Ble_Header2;
	sBleStatus.g_Ble_TxData[2] = Ble_Header3;
	sBleStatus.g_Ble_TxData[3] = Ble_Header4;
	/*功能字*/
	sBleStatus.g_Ble_TxData[Index_func] = TxFunc_Temperature;
	L_Checksum += TxFunc_Temperature;

	/*计算数组的数据段标号*/
	L_datalenth = Index_data;

		/*传输蓝牙的值只有温度范围内的原始值例如3200-4299，范围外附近
		的值不能传输，因为蓝牙程序进行四舍五入后会与体温计显示值有误差*/

		if( sActual_Forecast.CentigradeTempDisp < Low_Temp_Centigrade )
		{
			L_Temp = 0;
		}
		 else if( sActual_Forecast.CentigradeTempDisp > High_Temp_Centigrade )
		{
			L_Temp = 5000 ;
		}
		else
		{
			L_Temp = sActual_Forecast.CentigradeTempDisp;
		}


	L_Temp = L_Temp | 0x8000;
	#if (High_Temp_Centigrade == 4290)
		L_Temp &= 0xBFFF;
	#elif (High_Temp_Centigrade == 4390)
		L_Temp |= 0x4000;
	#endif

	sBleStatus.g_Ble_TxData[L_datalenth++] = L_Temp >> 8;
	L_Checksum += L_Temp >> 8;
	sBleStatus.g_Ble_TxData[L_datalenth++] = L_Temp;
	L_Checksum += L_Temp;

	/*加checksum和tail3个字节*/
	L_datalenth = L_datalenth + 3;
	sBleStatus.g_Ble_TxData[Index_lenth] = L_datalenth >> 8;
	L_Checksum += L_datalenth >> 8;
	sBleStatus.g_Ble_TxData[Index_lenth+1] = L_datalenth;
	L_Checksum += L_datalenth;
	L_datalenth = L_datalenth - 3;
	sBleStatus.g_Ble_TxData[L_datalenth++] = L_Checksum;
	sBleStatus.g_Ble_TxData[L_datalenth++] = Ble_End1;
	sBleStatus.g_Ble_TxData[L_datalenth++] = Ble_End2;
}

/*
  * @brief  	上传仪器信息(型号、程序编码Soft_Code、程序版本Soft_External_Version)
  * @param   None
  * @retval    None
*/
void App_Upload_DeviceInfo(void)
{
	uint8 L_Checksum = 0;
	uint8 L_lenth = Index_data;

	/*起始符*/
	sBleStatus.g_Ble_TxData[0] = 0x55;
	sBleStatus.g_Ble_TxData[1] = 0xAA;
	sBleStatus.g_Ble_TxData[2] = 0xAA;
	sBleStatus.g_Ble_TxData[3] = 0x55;
	sBleStatus.g_Ble_TxData[Index_func] = TxFunc_DeviceInfo;
	L_Checksum += TxFunc_DeviceInfo;
	/*发送产品类别*/
	sBleStatus.g_Ble_TxData[L_lenth++] = ASCII_D;
	L_Checksum += ASCII_D;
	sBleStatus.g_Ble_TxData[L_lenth++] = ASCII_M;
	L_Checksum += ASCII_M;
	sBleStatus.g_Ble_TxData[L_lenth++] = ASCII_T;
	L_Checksum += ASCII_T;
	/*发送型号码*/
	sBleStatus.g_Ble_TxData[L_lenth++] = Ble_Name>>8;
	L_Checksum += Ble_Name>>8;
	sBleStatus.g_Ble_TxData[L_lenth++] = Ble_Name;
	L_Checksum += Ble_Name;
	/*发送辅助码*/
	sBleStatus.g_Ble_TxData[L_lenth++] = ASCII_b;
	L_Checksum += ASCII_b;
	/*发送程序编码*/
	sBleStatus.g_Ble_TxData[L_lenth++] = Soft_Code >> 8;
	L_Checksum += Soft_Code >> 8;
	sBleStatus.g_Ble_TxData[L_lenth++] = Soft_Code;
	L_Checksum += Soft_Code;
	/*发送程序版本*/
	sBleStatus.g_Ble_TxData[L_lenth++] = Soft_External_Version;
	L_Checksum += Soft_External_Version;
	/*发送记忆组数,血压计预留位0x00填补*/
	sBleStatus.g_Ble_TxData[L_lenth++] = 00;
	L_Checksum += 00;
	/*发送长度*/
	/*加checksum和tail3个字节*/
	L_lenth += 3;
	sBleStatus.g_Ble_TxData[Index_lenth] = L_lenth >> 8;
	L_Checksum += L_lenth >> 8;
	sBleStatus.g_Ble_TxData[Index_lenth+1] = L_lenth;
	L_Checksum += L_lenth;
	L_lenth = L_lenth - 3;
	sBleStatus.g_Ble_TxData[L_lenth++] = L_Checksum;
	sBleStatus.g_Ble_TxData[L_lenth++] = 0x5A;
	sBleStatus.g_Ble_TxData[L_lenth++] = 0xA5;
}

/*
  * @brief  	数据上传任务
  * @param   None
  * @retval    None
*/
void App_UploadData(uint8 L_Upload_func)
{
	switch( L_Upload_func )
	{
		case TxFunc_Temperature:
			App_Upload_Temperature();
			L_Upload_func = TxFunc_Default;
			break;

		case TxFunc_DeviceInfo:
			App_Upload_DeviceInfo();
			L_Upload_func = TxFunc_Default;
			break;

		case TxFunc_Default :
		default:break;
	}
}

/*
  * @brief  	串口发送
  * @param   None
  * @retval    None
*/
void UART_Send_To_Ble(void)
{
	uint8 i;
	uint8 L_lenth;
	uint8 *p = sBleStatus.g_Ble_TxData;

	L_lenth = sBleStatus.g_Ble_TxData[Index_lenth + 1] ;

	UART0_SendBuffer(sBleStatus.g_Ble_TxData,L_lenth);
}

/*
  * @brief  	串口给蓝牙发送唤醒帧
  * @param   None
  * @retval    None
*/
void Uart_Send_Wakeup(void)
{
	uint8 i;
	for(i = 0;i < 20;i++)
	{
		UART0_SendByte(0xFF);
	}
}

/*
  * @brief  	蓝牙功能
  * @param   None
  * @retval    None
*/
void App_BleMode(void)
{
	/*预设蓝牙功能*/
	#if	(Func_BLE == Enable)
		uint8 Result;
		uint8 Port_Ble_Link,Port_Ble_Busy;
		/*蓝牙连接成功脚(低电平有效,输入检测口)*/
		Port_Ble_Link = PT8 & 0x02;
		/*蓝牙忙闲脚(低电平有效,输入检测口)*/
		Port_Ble_Busy = PT8 & 0x08;

		/*UART RX接收事件处理*/
		Uart_Receive_Event();

		switch (eBle_Sta)
		{
			/*待机模式*/
			case Ble_Standby:
				if(sBleStatus.F_Ble_En)
				{
					/*打开蓝牙电路开关*/
					Power_Ble_On;
					/*使能蓝牙*/
					Port_Ble_Enable;
					/*MCU自动波特率开始标志*/
					sBleStatus.AutoBps_OnOff = 1;
					/*打开RC中断*/
					INTE1 |= 0x10;

					/*等待200ms等待蓝牙上电后串口可以正常工作*/
					if(!sTimeStamp.Get_BleMode_Flag)
					{
						sTimeStamp.Get_BleMode_Flag = TRUE;
						sTimeStamp.BleMode_Timer = sTimeStamp.Timer_Journey;
					}
					/*8 * 25ms = 200ms*/
					Result = Timer_Experience(sTimeStamp.BleMode_Timer,8);
					/*上电复位200ms再发送设备信息,此处不判断busy忙闲*/
					if(Result)
					{
						/*自动检测初始化*/
						eAutoBps_Status = AutoBps_Init;
						/*广播前上传设备信息*/
						eBle_Sta = Ble_DeviceInfo;
						sTimeStamp.Get_BleMode_Flag = FALSE;
					}
				}
			break;

			/*广播前上传设备信息*/
			case Ble_DeviceInfo:

				if(!sTimeStamp.Get_BleMode_Flag)
				{
					sTimeStamp.Get_BleMode_Flag = TRUE;
					sTimeStamp.BleMode_Timer = sTimeStamp.Timer_Journey;
				}
				/*1分钟广播计时*/
				if(!sTimeStamp.Get_Ble_Connect_Max_Time_Flag)
				{
					sTimeStamp.Get_Ble_Connect_Max_Time_Flag = TRUE;
					sTimeStamp.BleMode_Connect_Max_Timer = sTimeStamp.Timer_Journey;
				}

				/*200ms发送一次广播名称*/
				/*8 * 25ms = 200ms*/
				Result = Timer_Experience(sTimeStamp.BleMode_Timer,8);
				
				if(Result)
				{
					/*2400 * 25ms = 60s，波特率校准时长1min*/
					Result = Timer_Experience(sTimeStamp.BleMode_Connect_Max_Timer,Allow_Ble_Connect_Max_Time);
					if(Result)
					{
						eBle_Sta = Ble_Disable;
					}

					App_UploadData(TxFunc_DeviceInfo);
					Uart_Send_Wakeup();
					UART_Send_To_Ble();
					sTimeStamp.Get_BleMode_Flag = FALSE;
					/*自动波特率完成*/
					if(eAutoBps_Status != AutoBps_Searched)
					{
						/*固定波特率广播报文发送计数,上限3次*/
						sAutoBps.Cnt_DeviceInfoSend++;
					}
				}
			break;
			/*广播模式等待连接*/
			case Ble_Advertising:
				/*这个地方蓝牙断线不用报错,因为在这个地方是允许蓝牙连接的,如果超时没连接蓝牙,则关闭蓝牙,重要！！！*/
				/*如果连接成功，则立即更新时间，用户可以一直尝试连接*/
				if(!Port_Ble_Link)
				{
					eBle_Sta = Ble_Idle;
					sTimeStamp.Get_BleMode_Flag = FALSE;
				}

				/*2400 * 25ms = 60s，蓝牙广播时长1min：等待连接*/
				Result = Timer_Experience(sTimeStamp.BleMode_Connect_Max_Timer,Allow_Ble_Connect_Max_Time);
				if(Result)
				{
					eBle_Sta = Ble_Disable;
				}

			break;

			/*连接后空闲等待*/
			case Ble_Idle:
				/*如果等待空闲时时断开连接则报错*/
				if(Port_Ble_Link)
				{
					eBle_Sta = Ble_LinkErr;
				}
				/*有几下几种情况时允许上传温度*/
				/*1.已测量结束只要不关机,立即上传*/
				/*2.未测量,等蜂鸣结束再上传*/
				/*3.蜂鸣后每隔5s有更新时再传,暂不考虑*/
				else if(sBleStatus.F_Temp_Upload)
				{
					sBleStatus.F_Temp_Upload = FALSE;
				 	eBle_Sta = Ble_UploadData;
				 	sBleStatus.TempUploadTimes_Cnt = 0;
				}
			break;

			/*上传温度数据*/
			case Ble_UploadData:
				/*如果等待空闲时时断开连接则报错*/
				if(Port_Ble_Link)
				{
					eBle_Sta = Ble_LinkErr;
				}

				if(!sTimeStamp.Get_BleMode_Flag || (sBleStatus.F_Previous_Ble_Busy != (PT8 & 0x08)))
				{
					sTimeStamp.Get_BleMode_Flag = TRUE;
					sTimeStamp.BleMode_Timer = sTimeStamp.Timer_Journey;
				}

				/*如连接成功等待空闲，则上传数据，否则等待空闲*/
				if(!Port_Ble_Busy)
				{
					/*8 * 25ms = 200ms*/
					Result = Timer_Experience(sTimeStamp.BleMode_Timer,8);
					/*200ms反复发送直到接收到ack为止*/
					if(Result)
					{
						/*体温数据需发三次*/
						if(sBleStatus.TempUploadTimes_Cnt++ < 3)
						{
							App_UploadData(TxFunc_Temperature);
							/*立即发送命令*/
							Uart_Send_Wakeup();
							UART_Send_To_Ble();
							sTimeStamp.Get_BleMode_Flag = FALSE;
						}
						else
						{
							eBle_Sta = Ble_Idle;
							sTimeStamp.Get_BleMode_Flag = FALSE;
						}
					}
				}
				else
				{
					/*1200 * 25ms = 30s*/
					Result = Timer_Experience(sTimeStamp.BleMode_Timer,1200);
					/*如果30s到了还未空闲，则关闭蓝牙并报错*/
					if(Result)
					{
						eBle_Sta = Ble_TimeoutErr;
						sTimeStamp.Get_BleMode_Flag = FALSE;
					}
				}
				sBleStatus.F_Previous_Ble_Busy = PT8 & 0x08;
			break;

			/*断线错误*/
			case Ble_LinkErr:
				/*蓝牙睡眠重启*/
				Port_Ble_Disable;
				/*断开蓝牙电路*/
				Power_Ble_Off;
				/*MCU自动波特率开始标志*/
				sBleStatus.AutoBps_OnOff = 0;
				/*依然允许开启蓝牙*/
				sBleStatus.F_Ble_En = 1;
				eBle_Sta = Ble_Standby;
				/*蓝牙断开后重新1分钟广播*/
				sTimeStamp.Get_Ble_Connect_Max_Time_Flag = FALSE;
				/*这里是蓝牙断开重连后且测量蜂鸣已经结束后才允许再进行一次温度上传*/
				if(sActual_Forecast.StableBuzzerFlag)
				{
					sBleStatus.F_Temp_Updated = TRUE;
					sMemoryFlag.MemTemp_Updated = TRUE;
				}
			break;

			/*busy超时错误*/
			case Ble_TimeoutErr:
				/*依然允许开启蓝牙*/
				sBleStatus.F_Ble_En = 1;
				/*关闭RC中断*/
				INTE1 &= 0xEF;
				/*蓝牙睡眠重启*/
				Port_Ble_Disable;
				/*断开蓝牙电路*/
				Power_Ble_Off;
				/*MCU自动波特率开始标志*/
				sBleStatus.AutoBps_OnOff = 0;
				/*禁用UART接收*/
				sBleStatus.F_Uart_Receive = 0;
				if(!sTimeStamp.Get_BleMode_Flag)
				{
					sTimeStamp.Get_BleMode_Flag = TRUE;
					sTimeStamp.BleMode_Timer = sTimeStamp.Timer_Journey;
				}

				/*200 * 25ms = 5s*/
				Result = Timer_Experience(sTimeStamp.BleMode_Timer,200);
				/*等待5S后开始重连,2020-0614修改,因为EN需要持续5s以上低电平才可正常运行*/
				if(Result)
				{
					eBle_Sta = Ble_Standby;
					sTimeStamp.Get_BleMode_Flag = FALSE;
					/*蓝牙断开后重新1分钟广播*/
					sTimeStamp.Get_Ble_Connect_Max_Time_Flag = FALSE;
				}
			break;

			/*ble除能模式*/
			case Ble_Disable:
				/*蓝牙睡眠*/
				Port_Ble_Disable;
				/*断开蓝牙电路*/
				Power_Ble_Off;
				/*MCU自动波特率开始标志*/
				sBleStatus.AutoBps_OnOff = 0;
				sBleStatus.F_Ble_En = 0;
				/*关闭RC中断*/
				INTE1 &= 0xEF;
				/*禁用UART接收*/
				sBleStatus.F_Uart_Receive = 0;
			break;

			default:break;
		}
	#endif
}
