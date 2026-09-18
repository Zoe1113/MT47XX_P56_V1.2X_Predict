#include "./../Include/Variable.h"

/*IIC地址输入端*/
#define	ADDRR	 0xA1
#define	ADDRW	0xA0


#define Set_SCL					 GPIO_PT1SET(0)
#define Reset_SCL			   GPIO_PT1CLR(0)

#define Set_SDA				 	 GPIO_PT1SET(6)
#define Reset_SDA			   GPIO_PT1CLR(6)
#define Get_SDA			  	    GPIO_PT1GET(6)

#define Set_SCL_OUT		    GPIO_PT1OutputMode(0)
#define Set_SDA_OUT		   GPIO_PT1OutputMode(6)

/*SDA写模式*/
#define SDA_WRITE			GPIO_PT1OutputMode(6)
/*SDA读模式*/
#define SDA_READ			GPIO_PT1InputMode(6)

typedef struct
{
	/*IIC从机应答错误*/
	uint8 IICErr : 1;		
}s_IIC;


/*IIC*/
#ifdef _Drv_IIC_H_
	s_IIC sIIC;
#else
	extern s_IIC sIIC;

	void IIC_Configuration(void);
	uint8 I2C_ReadByte(uint8 R_E2Address);
	void I2C_WriteByte(uint8 R_E2Address, uint8 R_I2C_TXDATA);
#endif