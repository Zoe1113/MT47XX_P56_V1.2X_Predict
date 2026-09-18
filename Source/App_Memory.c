#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_Memory.c
说    明：	  记忆温度相关设置集合（应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_Memory_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	记忆温度RAM存储
  * @param   None
  * @retval    None
*/
void MemoryTemp_RAMStore(void)
{
	/*写RAM使能标志位*/
	if(sMemoryFlag.Write_MemTemp_RAM_EN)
	{
		/*写RAM使能标志位*/
		sMemoryFlag.Write_MemTemp_RAM_EN = FALSE;

		/*仅更新温度值标志位,不更新其他与RAM存储温度相关的标志位*/
		/*在一个上电周期内只允许更新一次与RAM存储温度有关的标志位*/
		if(!sMemoryFlag.Write_MemTemp_RAM_Only)
		{
			sMemoryFlag.Write_MemTemp_RAM_Only = TRUE;
			/*兼容第0组数据(数据序号0~9)*/
			if(!sMemory.pMemTempBuf && !sMemory.MemTempSum)
			{
				/*No operation*/
			}
			else
			{
				/*记忆温度序号递增*/
				if(++sMemory.pMemTempBuf >= MemTempNum)
				{
					sMemory.pMemTempBuf = 0;
				}
			}

			/*温度校准成功3min重启标志位标志位*/
			if(sTempCal.Reset_From_CalOK)
			{
				/*获取当前测量结束时的温度值/℃*/
				sMemory.MemTempBuf[sMemory.pMemTempBuf] = sActual_Forecast.Calibrated_Forecast_Temp;
			}
			else
			{
				/*EMC异常温度不更新*/
//				if(!sADC.UnRefreshTemp)
//				{
					/*获取当前测量结束时的温度值/℃*/
					sMemory.MemTempBuf[sMemory.pMemTempBuf] = sActual_Forecast.CentigradeTempDisp;
//				}
			}

			/*计算当前存储的记忆温度有多少组*/
			if(++sMemory.MemTempSum > MemTempNum)
			{
				/*第一组数据位置偏移*/
				if(++sMemory.HeadNo >= MemTempNum)
				{
					sMemory.HeadNo = 0;
				}
				/*当前记忆温度数量达到上限*/
				sMemory.MemTempSum = MemTempNum;
			}
			else
			{
				/*获取第一组数据在MemTemp数组中的位置*/
				sMemory.HeadNo = 0;
			}

			/*显示记忆温度值序号*/
			sMemoryFlag.MemTempDispValue = sMemory.pMemTempBuf;
		}
		else
		{
			/*温度校准成功3min重启标志位标志位*/
			if(sTempCal.Reset_From_CalOK)
			{
				/*获取当前测量结束时的温度值/℃*/
				sMemory.MemTempBuf[sMemory.pMemTempBuf] = sActual_Forecast.Calibrated_Forecast_Temp;
			}
			else
			{
				/*EMC异常温度不更新*/
//				if(!sADC.UnRefreshTemp)
//				{
					/*获取当前测量结束时的温度值/℃*/
					sMemory.MemTempBuf[sMemory.pMemTempBuf] = sActual_Forecast.CentigradeTempDisp;
//				}
			}
		}
	}
}

/*
  * @brief  	记忆温度E2存储
  * @param   None
  * @retval    None
*/
void MemoryTemp_E2Store(void)
{
	uint8 addr,Write_Time;
	uint8 DH,DL;
	uint16 Data;

	/*目前规定10组记忆数据更新时才写E2*/
	/*写E2使能标志位*/
	if(sMemoryFlag.Write_MemTemp_E2_EN)
	{
		/*写E2使能标志位*/
		sMemoryFlag.Write_MemTemp_E2_EN = FALSE;
		/*关闭总中断*/
		GIE_Disable();
		INTE0 = 0x00;
		INTE1 = 0x00;

		Write_Time = 0;

		do
		{
			/*写"记忆温度的头序号(0~9)"*/
			I2C_WriteByte(E2_HeadNo_Addr,sMemory.HeadNo);
			Write_Time++;
			/*写周期时间最大10ms*/
			Delay_ms(10);
		}
		/*判断写入成功与否*/
		while((I2C_ReadByte(E2_HeadNo_Addr) != sMemory.HeadNo) && (Write_Time <= 3));


		if(Write_Time > 3)
		{
			ERR[Err5] = TRUE;
		}

		Write_Time = 0;
		do
		{
			/*写"当前数组存储记忆温度的序号(0~9)"*/
			I2C_WriteByte(E2_pMemTempBuf_Addr,sMemory.pMemTempBuf);
			Write_Time++;
			/*写周期时间最大10ms*/
			Delay_ms(10);
		}
		/*判断写入成功与否*/
		while((I2C_ReadByte(E2_pMemTempBuf_Addr) != sMemory.pMemTempBuf) && (Write_Time <= 3));

		if(Write_Time > 3)
		{
			ERR[Err5] = TRUE;
		}

		Write_Time = 0;
		do
		{
			/*写"记忆温度的总数量(MAX:10)"*/
			I2C_WriteByte(E2_MemTempSum_Addr,sMemory.MemTempSum);
			Write_Time++;
			/*写周期时间最大10ms*/
			Delay_ms(10);
		}
		/*判断写入成功与否*/
		while((I2C_ReadByte(E2_MemTempSum_Addr) != sMemory.MemTempSum) && (Write_Time <= 3));

		if(Write_Time > 3)
		{
			ERR[Err5] = TRUE;
		}

		Write_Time = 0;
		/*仅写入更新的温度值*/
		addr = E2_MemTempBuf_Addr + sMemory.pMemTempBuf * 2;
		/*调试过程发现个编译器存在一个bug:16位的结构体成员不能进行右移八位的操作*/
		/*移位的结果是还是低八位的数据*/
		Data = sMemory.MemTempBuf[sMemory.pMemTempBuf];
		DH = Data >> 8;
		DL = Data;

		do
		{
			/*写"记忆温度数据高字节"*/
			I2C_WriteByte(addr,DH);
			Write_Time++;
			/*写周期时间最大10ms*/
			Delay_ms(10);
		}
		/*判断写入成功与否*/
		while((I2C_ReadByte(addr) != DH) && (Write_Time <= 3));

		if(Write_Time > 3)
		{
			ERR[Err5] = TRUE;
		}

		Write_Time = 0;
		addr += 1;
		do
		{
			/*写"记忆温度数据低字节"*/
			I2C_WriteByte(addr,DL);
			Write_Time++;
			/*写周期时间最大10ms*/
			Delay_ms(10);
		}
		/*判断写入成功与否*/
		while((I2C_ReadByte(addr) != DL) && (Write_Time <= 3));

		if(Write_Time > 3)
		{
			ERR[Err5] = TRUE;
		}

		/*开启总中断*/
		GIE_Enable();
		INTE0 = 0xF0;
		INTE1 = 0x10;

		#if	Func_Debug == Debug_DSigmaAdc
			UART0_SendByte(0x99);
			UART0_SendByte(0x99);
		#endif
	}
}


