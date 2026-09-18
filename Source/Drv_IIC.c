#define  USE_HY17P56_2M
/**************************************************************************
文件名称：Drv_IIC.c
说    明：	  IIC相关设置集合（底层）
作    者:		Jiale.He
版    本:		V1.0
芯	  片:	HY17P56(2M/4M/8M)
备    注:		24C02(2Kbit/256Bytes)
修订记录：
**************************************************************************/
#define _Drv_IIC_H_

/*Includes*/
#include "./../Include/Include.h"

/*
  * @brief  	IIC初始化配置
  * @param   None
  * @retval    None
*/
void IIC_Configuration(void)
{
	/*设置SDA、SCL为输出模式*/
	/*配置成输出模式后上拉电阻就起不到效果*/
	/*实际测试过程中证明配置成输出模式后,PT1.0电压由4v→0v!!!*/
	Set_SCL_OUT;
	Set_SDA_OUT;
}

/*
  * @brief  	读写开始信号函数
  * @param   None
  * @retval    None
*/
void I2C_Start(void)
{
	Set_SCL;
	Set_SDA;
	Reset_SDA;
	NOP();
	NOP();
	NOP();
	Reset_SCL;
	NOP();
	NOP();
	NOP();
}

/*
  * @brief  	读写开始信号函数
  * @param   None
  * @retval    None
*/
void I2C_RespeatStart(void)
{
	Set_SCL;
	Set_SDA;
	Reset_SDA;
	NOP();
	NOP();
	NOP();
	Reset_SCL;
	NOP();
	NOP();
	NOP();
}

/*
  * @brief  	读写停止信号函数
  * @param   None
  * @retval    None
*/
void I2C_Stop(void)
{
	Reset_SDA;
	Reset_SCL;
	Set_SCL;
	NOP();
	NOP();
	NOP();
	Set_SDA;
	NOP();
	NOP();
	NOP();
}

/*
  * @brief  	应答信号函数(主机发出)
  * @param   None
  * @retval    None
*/
void I2C_ACK(void)
{
	Set_SDA;
	Reset_SDA;
	Set_SCL;
	NOP();
	NOP();
	NOP();
	Reset_SCL;
	NOP();
	NOP();
	NOP();
}

/*
  * @brief  	等待应答信号函数(从机发出)
  * @param   None
  * @retval    None
*/
void I2C_Wait_ACK(void)
{
	/*切换为读模式*/
	SDA_READ;
	Set_SCL;
	NOP();
	NOP();
	NOP();
	/*判断从机是否没有应答*/
	if(Get_SDA != 0)
	{
		SDA_WRITE;
		I2C_Stop();
		sIIC.IICErr = TRUE;
		SDA_READ;
	}
	Reset_SCL;
	NOP();
	NOP();
	NOP();
	/*切换为写模式*/
	SDA_WRITE;
}

/*
  * @brief  	没有应答信号函数(主机发出)
  * @param   None
  * @retval    None
*/
void I2C_No_ACK(void)
{
	Set_SDA;
	Reset_SCL;
	NOP();
	NOP();
	NOP();
	Set_SCL;
	NOP();
	NOP();
	NOP();
}

/*
  * @brief  	写函数
  * @param   None
  * @retval    None
*/
void Write(unsigned char WData)
{
	unsigned char i;
	for(i=0;i<8;i++)
	{
		Reset_SCL;
		NOP();
		NOP();
		NOP();
		if(WData & 0x80)
		{
			Set_SDA;
		}
		else
		{
			Reset_SDA;
		}
		NOP();
		NOP();
		NOP();
		Set_SCL;
		NOP();
		NOP();
		NOP();
		WData = WData << 1;
	}
	Reset_SCL;
	NOP();
	NOP();
	NOP();
}

/*
  * @brief  	读函数
  * @param   None
  * @retval    RData:读取的数据
*/
unsigned char Read(void)
{
	unsigned char i,RData = 0;
	/*切换为读模式*/
	SDA_READ;
	for(i=0;i<8;i++)
	{
		/*数据左移(先读高位再读低位)*/
		RData = RData << 1;
		Set_SCL;
		NOP();
		NOP();
		NOP();
		if(Get_SDA)
			/*读取数据*/
			RData |= 0x01;
		Reset_SCL;
		NOP();
		NOP();
		NOP();
	}
	/*切换为写模式*/
	SDA_WRITE;
	/*返回读取的数据*/
	return RData;
}

/*
  * @brief  	单字节写函数
  * @param   R_E2Address:待写入数据的地址
  * @param   R_I2C_TXDATA:待写入的数据
  * @retval    None
*/
void I2C_WriteByte(uint8 R_E2Address, uint8 R_I2C_TXDATA)
{
	/*发送起始信号*/
	I2C_Start();
	/*写入器件写地址*/
	Write(ADDRW);
	/*等待从机应答*/
	I2C_Wait_ACK();
	/*写入数据地址*/
	Write(R_E2Address);
	I2C_Wait_ACK();
	/*写入数据*/
	Write(R_I2C_TXDATA);
	I2C_Wait_ACK();
	/*发送结束信号*/
	I2C_Stop();
}

/*
  * @brief  	随机读函数
  * @param   R_E2Address:待读数据的地址
  * @retval    IIC_RcvData:读取到的数据
*/
uint8 I2C_ReadByte(uint8 R_E2Address)
{
	uint8 IIC_RcvData;
	I2C_Start();
	Write(ADDRW);
	I2C_Wait_ACK();
	Write(R_E2Address);
	I2C_Wait_ACK();
	I2C_RespeatStart();
	Write(ADDRR);
	I2C_Wait_ACK();
	IIC_RcvData = Read();
	I2C_No_ACK();
	I2C_Stop();
	return 	IIC_RcvData;
}
