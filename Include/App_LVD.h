#include "./../Include/Variable.h"

typedef struct
{
	/*LVD自检完成标志*/
	uint8 LVD_Test_Completed : 1;
	/*检测电压低于2.6V标志位:4718系列二级电压适用*/
	uint8 LVD_Low : 1;
	/*数组LVDBuf[3],数组成员每隔50ms更新一次数组成员*/
	uint8 pLVDBuf;
	/*LVD数组*/
	uint8 LVDBuf[3];	
}s_LVD;

/*LVD*/
#ifdef _App_LVD_H_
	s_LVD sLVD;
#else
	extern s_LVD sLVD;

	void LVD_Detect(void);
#endif