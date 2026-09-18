#include <hy17p56sfr.h>
#include <CLK.h>
#include <INT.h>
#include <ADC_56.h>
#include <PWR.h>
#include <GPIO.h>
#include <LCD.h>
#include <TMR_56.h>
#include <WDT.h>
#include <SFRType.h>
#include <RST.h>
#include <UART_56.h>
#include <LCD.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "./../Include/App_Config.h"


/* exact-width signed integer types */
typedef   signed              char 		int8;
typedef   signed 		      int 		  int16;
typedef   signed              long      int32;
typedef   signed      long long      int64;

/* exact-width unsigned integer types */
typedef unsigned            char 	 uint8;
typedef unsigned		    int 	   uint16;
typedef unsigned            long 	 uint32;
typedef unsigned    long long     uint64;

#define FALSE		0
#define TRUE		 1


/*实际测试过程中只需要过滤两组数据*/
/*保险起见过滤三组数据*/
#define FilterNum   					4


#define	Func_Debug						0       /*uart 调试*/

#define Debug_SarAdc        		    1       /*1.调试SAR AD*/
#define Debug_Measure       		    2       /*2.调试测温算法*/
#define Debug_PID_Ntc       		    3       /*3.调试PID算法（ntc温度）*/
#define Debug_PID_Pram     		        4       /*4.调试PID算法（PID参数）*/
#define Debug_DSigmaAdc     	        5       /*5调试DSigma原始adc*/
#define Debug_GetTemp250ms              6       /*6调试250取温算法*/
#define Debug_250msCounts    	        7       /*7.250计数,三个地方计数:1.中断250ms计数;2.250ms获取温度计数;3.预测温度计数;目的:保证每一次计数都在250ms内*/
#define Debug_ISR250ms	      	        8       /*8.判断中断250ms是否准确*/



