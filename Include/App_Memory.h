#include "./../Include/Variable.h"
#include "./../Include/App_Config.h"

/*E2的起始地址*/
#define E2_Base_Addr						    0x00
#define E2_HeadNo_Addr						 E2_Base_Addr + 0x01
#define E2_pMemTempBuf_Addr			  E2_Base_Addr + 0x02
#define E2_MemTempSum_Addr		     E2_Base_Addr + 0x03
#define E2_MemTempBuf_Addr		       E2_Base_Addr + 0x04

typedef struct
{
	/*记忆温度的头序号(0~9)*/
	uint8 HeadNo;
	/*当前数组存储记忆温度的序号(0~9)*/
	uint8 pMemTempBuf;
	/*记忆温度的总数量(MAX:10)*/
	uint8 MemTempSum;
	/*记忆温度数据*/
	uint16 MemTempBuf[MemTempNum];
}s_Memory;

typedef struct
{
	/*MEM温度更新标志位*/
	uint8 MemTemp_Updated : 1;
	/*写RAM使能标志位*/
	uint8 Write_MemTemp_RAM_EN : 1;
	/*写E2使能标志位*/
	uint8 Write_MemTemp_E2_EN : 1;
	/*仅更新温度值标志位,不更新其他与RAM存储温度相关的标志位*/
	uint8 Write_MemTemp_RAM_Only : 1;
	/*进入记忆温度序号界面仅更新一次显示值标志位*/
	uint8 Update_MemTempDispNo : 1;
	/*进入记忆温度界面仅更新一次显示值标志位*/
	uint8 Update_MemTempDispVlaue : 1;
	/*进入记忆温度序号界面显示序号*/
	uint8 MemTempDispNo;
	/*显示记忆温度值序号*/
	uint8 MemTempDispValue;
}s_MemoryFlag;

/*MEMORY*/
#ifdef _App_Memory_H_
	s_Memory sMemory;
	s_MemoryFlag sMemoryFlag;
#else
	extern s_Memory sMemory;
	extern s_MemoryFlag sMemoryFlag;

	void MemoryTemp_E2Store(void);
	void MemoryTemp_RAMStore(void);
#endif