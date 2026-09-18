#include "./../Include/Variable.h"

typedef enum
{
	/*准备进入休眠模式*/
	Prepare_Sleep,
	/*进入休眠模式*/
	Sleep,
	/*准备进入正常模式*/
	Prepare_Normal,
	/*进入正常模式*/
	Normal
}e_System_Mode;


/*SLEEP*/
#ifdef _App_Sleep_H_
	e_System_Mode eSystem_Mode;
#else
	extern e_System_Mode eSystem_Mode;
	
	void Sleep_Mode(void);
#endif