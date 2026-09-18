#include "./../Include/Variable.h"

/*BIE*/
#ifdef _Drv_BIE_H_
	uint8 BIE_Available_Addr;
	
	unsigned char HY17P56WR3_Delay(unsigned char Addr,unsigned char DataH,unsigned char DataL,unsigned char delaytime);
#else
	extern uint8 BIE_Available_Addr;

	uint8 BIE_Polling(void);
	uint16 BIE_Read(uint8 addr);
	uint8 BIE_Write(uint8 Addr,uint8 DataH,uint8 DataL);
#endif