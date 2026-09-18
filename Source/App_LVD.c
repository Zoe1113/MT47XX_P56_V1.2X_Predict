#define  USE_HY17P56_2M
/**************************************************************************
文件名称：App_LVD.c
说    明：	  欠压检测算法的集合（应用层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:
修订记录：
**************************************************************************/
#define _App_LVD_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief     LVD检测模块
  * @param  None
  * @retval   None
*/
void LVD_Detect(void)
{
	/*LVD上电150ms检测完成*/
	if(!sLVD.LVD_Test_Completed)
	{
		/*50ms采集一次*/
		if(sTIMx.LVDSampleFlag)
		{
			/*清除50ms标志位*/
			sTIMx.LVDSampleFlag = 0;
			/*获取LVD状态*/
			sLVD.LVDBuf[sLVD.pLVDBuf] = LVD_GetLVDO();
			/*数组LVDBuf[3],数组成员每隔50ms更新一次数组成员*/
			if(++sLVD.pLVDBuf >= 3)
			{
				/*重置pLVDBuf序号*/
				sLVD.pLVDBuf = 0;
				/*LVD自检完成*/
				sLVD.LVD_Test_Completed = TRUE;
			}
		}
	}
}
