/*******************************EMC测试***************************************/
/*1. 当进行EMC认证时,放开下面的宏定义 2. 不进行EMC认证时,屏蔽下面的宏定义*/
//#define EMC_Test
/*******************************EMC测试***************************************/
 
/*******************************屏幕文件***************************************/
/*不同型号屏幕文件选择:宏定义只能单选！！！*/
/*适用DMT-4718/19/20*/
//#define LCD_4718
/*适用DMT-4726*/
//#define LCD_4726
/*适用DMT-4726高精度*/
//#define LCD_4726TC								
/*适用DMT-4735/60/63/65/73/75/79系列*/
#define LCD_4718
/*******************************屏幕文件***************************************/
 

/**************************************************************程序编码**********************************************************************/
/*切换程序编码时需先确认定义的屏幕文件！！防止显示乱码！！*/	
#define Soft_Code							426
/**************************************************************程序编码**********************************************************************/
#define Enable								1
#define Disable								0

/*DMT-4759p:890 MDR*/
/*DMT-4760p:817*/
/*DMT-4760b:818*/
/*DMT-4760p:819(CE认证)*/
/*DMT-4760p:984*/
/*DMT-4760b:820(CE认证)*/
/*DMT-4760p:823(国内)*/
/*DMT-4760b:824(国内)*/
/*DMT-4760p:831(国外，四色背光)*/
/*DMT-4760p:833(819去feverline)*/
/*DMT-4760p:940(国内)*/
/*DMT-4759p/DMT-4760p:966*/
/*DMT-4759p/DMT-4760p:973*/
/*DMT-4760b:989*/

/*DMT-4763p/DMT-4765p:829*/
/*DMT-4763p/DMT-4765p:830(CE认证)*/
/*DMT-4763p/DMT-4765p:864(认证) MDR*/
/*DMT-4763p/DMT-4765p:850(CE认证)*/
/*DMT-4763p/DMT-4765p:832(国外，四色背光)*/
/*DMT-4763p/DMT-4765p:835(30组记忆)*/
/*DMT-4763p/DMT-4765p:836(1组记忆，无背光)*/
/*DMT-4763p:854 MDR*/
/*DMT-4763p/DMT-4765p:972*/

/*DMT-4763p/73p/65p/75p:875(国内认证)*/


/*DMT-4726p:203*/
/*DMT-4726p:204*/
/*DMT-4726p:208*/
/*DMT-4726p:219(CE认证)*/
/*DMT-4726p:225(国内)*/
/*DMT-4726p:231*/
/*DMT-4726p:232*/
/*DMT-4726p:235*/
/*DMT-4726p:244*/


/*DMT-4735p:902*/
/*DMT-4735p:914*/
/*DMT-4735p:922(CE认证)*/
/*DMT-4735p:924(作废)*/
/*DMT-4735p:925*/   								//20210911作废，合并到914
/*DMT-4735p:926(国内)*/
/*DMT-4735p:937 AMG定规*/
/*DMT-4735p:965*/
/*DMT-4735p:983*/


/*DMT-4718p:404*/
/*DMT-4718p:402(CE认证)*/

/*请仔细核对基础特性编码表！！！！！！*/


/*DMT-4760p:817*/
#if Soft_Code == 817
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  	   Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/


/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/


/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif


/*DMT-4760b:818*/
#if Soft_Code == 818
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   13  	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Enable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif




/*DMT-4760b:960*/
#if Soft_Code == 960
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   	10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Enable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif






/*DMT-4760p:819(CE认证)*/
#if Soft_Code == 819
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  	   Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/


/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/


/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif




/*DMT-4760p:984*/
#if Soft_Code == 984
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/

/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/

/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  	   Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/


/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/


/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif




/*DMT-4760b:820(CE认证)*/
#if Soft_Code == 820
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   14 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Enable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4760b:989*/
#if Soft_Code == 989
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Enable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4760p:823(国内)*/
#if Soft_Code == 823
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  	   Enable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/


/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/


/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif




/*DMT-4760p:940(国内)*/
#if Soft_Code == 940
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  	   Enable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/


/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/


/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif



/*DMT-4760b:824(国内)*/
#if Soft_Code == 824
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   14 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Enable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Enable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif


/*DMT-4760p:831*/
#if Soft_Code == 831
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional				Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet						Centigrade
	#define Binding_StatusSet				CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  	   Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/


/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/


/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	/*预设四色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_QuadrupleColor					    Enable
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif


/*DMT-4760p:833(819去feverline)*/
#if Soft_Code == 833
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  	   Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/


/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/


/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4760p:891(833升级MDR)*/
#if Soft_Code == 891
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   	10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  	   Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/


/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/


/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif




/*DMT-4763p/DMT-4765p:829*/
#if Soft_Code == 829
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   10
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/	
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif


/*DMT-4763p:830(CE认证)*/
#if Soft_Code == 830
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/


/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif




/*DMT-4763p/73p/65p/75p:875(国内认证)*/
#if Soft_Code == 875
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有 Enable/Disable 可选*/
	#define Bat_MDR							Disable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable 可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Disable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   	Centigrade
	#define Binding_StatusSet				CentigradeFirst_NonSwitchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately					Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/


/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif




/*DMT-4773p:972(CE认证) MDR*/
#if Soft_Code == 972
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/



/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/


/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif



/*DMT-4773p:864(CE认证) MDR*/
#if Soft_Code == 864
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/



/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/


/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif








/*DMT-4763p:850*/
#if Soft_Code == 850
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/


/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4290
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				2800		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 10920
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8240
/****************************温度间隔点***************************************/
#endif


/*DMT-4760p:832*/
#if Soft_Code == 832
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Fahrenheit
	#define Binding_StatusSet			FahrenheitFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  	   Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129D
/********************************蓝牙功能**************************************/


/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/


/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	/*预设四色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_QuadrupleColor					    Enable
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif



/*DMT-4763p:854 MDR*/
#if Soft_Code == 854
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   	10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   	Centigrade
	#define Binding_StatusSet				CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/


/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4290
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				2800		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 10920
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8240
/****************************温度间隔点***************************************/
#endif




/*DMT-4759p:890*/
#if Soft_Code == 890
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   	10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min						Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/


/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   	3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 	3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  	9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				8960
/****************************温度间隔点***************************************/
#endif






/*DMT-4759p/DMT-4760p:966*/
#if Soft_Code == 966
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   	10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min						Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Enable
/***********************哭笑脸和FL功能(二者择其一)*************************/
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/


/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   	3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 	3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  	9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				8960
/****************************温度间隔点***************************************/
#endif







/*DMT-4759p/DMT-4760p:973*/
#if Soft_Code == 973
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   	10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min						Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Enable
/***********************哭笑脸和FL功能(二者择其一)*************************/
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/


/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/


	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   	3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 	3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  	9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				8960
/****************************温度间隔点***************************************/
#endif







/*DMT-4763p/DMT-4765p:835*/
#if Soft_Code == 835
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   10
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/	
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   30
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif



/*DMT-4763p/DMT-4765p:836*/
#if Soft_Code == 836
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   10
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/	
	
	
/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/
	
	
/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x129B
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
		
		
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade			4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade			3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade				3200		
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit			10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 8960
/****************************温度间隔点***************************************/
#endif



/*DMT-4726p:203*/
#if Soft_Code == 203
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1276
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Enable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Disable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Centigrade			3900
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*6.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Fahrenheit			10220
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*6.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif




/*DMT-4726p:204*/
#if Soft_Code == 204
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		 Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1276
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Enable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Disable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Enable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Centigrade			3900
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*6.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Fahrenheit			10220
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*6.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif



/*DMT-4726p:208*/
#if Soft_Code == 208
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		 Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Enable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1276
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Enable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Disable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Centigrade			3900
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*6.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Fahrenheit			10220
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*6.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif




/*DMT-4726p:219*/
#if Soft_Code == 219
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version		12 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1276
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Centigrade			3900
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*6.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Fahrenheit			10220
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*6.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4726p:244*/
#if Soft_Code == 244
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version		10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有 Enable / Disable 可选*/
	#define Bat_MDR							Disable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1276
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Centigrade			3900
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*6.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Fahrenheit			10220
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*6.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4726p:235*/
#if Soft_Code == 235
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Enable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1276
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Centigrade			3900
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*6.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Fahrenheit			10220
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*6.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4726p:225(国内)*/
#if Soft_Code == 225
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Enable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1276
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Centigrade			3900
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*6.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Fahrenheit			10220
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*6.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4726p:231*/
#if Soft_Code == 231
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Enable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1276
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Centigrade			3900
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*6.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Fahrenheit			10220
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*6.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif






/*DMT-4726p:232*/
#if Soft_Code == 232
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Enable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1276
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Enable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Centigrade			3900
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3760
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*6.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.高烧温度/High Fever分割点*/
	#define High_Fever_Temp_Fahrenheit			10220
	/*3.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					9968
	/*4.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*5.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*6.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4735p:902*/
#if Soft_Code == 902
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x127F
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Enable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Disable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif




/*DMT-4735p:914*/
#if Soft_Code == 914
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   12 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
		/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Enable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Disable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif






/*DMT-4735p:937*/
#if Soft_Code == 937
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
		/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Enable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Disable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif






/*DMT-4735p:922(CE认证)*/
#if Soft_Code == 922
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x127F
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif






/*DMT-4735p:965*/
#if Soft_Code == 965
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   	10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有 Enable / Disable 可选*/
	#define Bat_MDR							Disable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x127F
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif






/*DMT-4735p:924(作废)*/
#if Soft_Code == 924
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
		/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif



/*DMT-4735p:925*/
#if Soft_Code == 925
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
		/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif



/*DMT-4735p:926(国内)*/
#if Soft_Code == 926
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
		/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Enable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4735p:963*/
#if Soft_Code == 963
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   	10 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/

/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/

/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately					Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
		/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  	Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4735p:983*/
#if Soft_Code == 983
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  	/*对内程序版本*/
#define Soft_External_Version 	   	11 		/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/

/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有Enable/Disable可选*/
	#define Bat_MDR							Enable
/***********************电池符号分段显示**************************/

/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately					Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Disable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
		/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Enable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  	Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3740
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					9940
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif





/*DMT-4718p:404*/
#if Soft_Code == 404
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有 Enable/Disable 可选*/
	#define Bat_4718_MDR							Disable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Enable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Disable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4290
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 10920
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif


/*DMT-4718p:402*/
#if Soft_Code == 402
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有 Enable/Disable 可选*/
	#define Bat_4718_MDR							Disable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   1
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif



/*DMT-4718p:426*/
#if Soft_Code == 426
/*******************************程序版本***************************************/
#define Soft_Internal_Version 		10 	  /*对内程序版本*/
#define Soft_External_Version 	   11 	/*对外程序版本(不可轻易修改)*/
/*******************************程序版本***************************************/


/***********************电池符号分段显示**************************/
/*电池符号分段显示，MDR新规适用*/
	/*目前有 Enable/Disable 可选*/
	#define Bat_4718_MDR							Enable
/***********************电池符号分段显示**************************/


/***********************预设测量时间/s(特规品预留)**************************/
	/*测量时间/s(特规品预留)*/
	/*适用范围:仅适用于实测算法,预测算法无预设时间*/
	#define MeasureTime		 	 			0
/***********************预设测量时间/s(特规品预留)**************************/


/************预设摄氏度华氏度特性是短路可选或是不可选*****************/
	/*预设温度单位特性是否可选*/
	/*可选特性有如下四种:*/
	/*1.摄氏度优先,可切换:			Centigrade	CentigradeFirst_Switchable*/
	/*2.摄氏度优先,不可切换:		 Centigrade	 CentigradeFirst_NonSwitchable*/
	/*3.华氏度优先,可切换:			Fahrenheit	FahrenheitFirst_Switchable*/
	/*4.华氏度优先,不可切换:		 Fahrenheit	 FahrenheitFirst_NonSwitchable*/
	/*若短路可选功能打开,温度单位特性可根据I/O口属性进行如上选择,此时不关心TempUnitSet、Binding_StatusSet的取值*/
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	
	/*预设温度单位特性是否可选*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define TempUnitOptional		 	 Enable
	
	/*若短路可选功能关闭,温度单位特性仅能从上述四种特性中选择一种*/
	#define TempUnitSet				   	   Centigrade
	#define Binding_StatusSet			CentigradeFirst_Switchable	
/************预设摄氏度华氏度特性是短路可选或是不可选*****************/


/******************预设判稳时间是短路可选或是不可选**********************/
	/*预设判稳时间是否可选*/
	/*可选4s/8s/16s则Enable改功能,不可选则Disable该功能*/
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define StableTimeOptional		 	Enable
	
	/*StableTimeSet预设的判稳时间仅在短路功能可选关闭时有效,短路可选功能时不关心StableTimeSet的取值*/
	#define StableTimeSet				   16
/******************预设判稳时间是短路可选或是不可选**********************/


/**************************最大值更新算法选择*******************************/
	/*预设最大值算法*/
	/*目前有两种算法可选*/
	/*二者择其一,只允许选择其中一种算法*/	
	
	/*1.1.预测结束即进行最大值更新*/
	#define	Func_UpdateMaxImmediately				Disable
	/*1.2.预测结束3分钟后进行最大值更新*/
	#define Func_UpdateMax3Min							Enable
/**************************最大值更新算法选择*******************************/


/***********************哭笑脸和FL功能(二者择其一)*************************/
	/*FL(Fever Line)和哭笑脸(Smile Cry)可选*/
	/*哭笑脸和FL功能二者择其一,只允许最多选择一种功能(允许都不选)*/
	
	/*预设FL(Fever Line)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_FL				  		Enable
	
	/*预设哭笑脸(Smile Cry)功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_SC				  		Disable
/***********************哭笑脸和FL功能(二者择其一)*************************/


/***********************数据外部存储功能************************************/
	/*目前仅存储10组记忆数据,可更改,修改MemTempNum宏即可*/
	/*如果更改MemTempNum的取值需要测试*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define 	Func_E2						 Disable
	
	/*兼容功能*/
	/*兼容记忆温度数量,数量可更改*/
	/*MemTempNum的取值原则:1.可用RAM的大小;2.外部EEPROM可用的大小*/
	#define 	MemTempNum	 		   10
/***********************数据外部存储功能************************************/


/********************************蓝牙功能**************************************/
	/*预设蓝牙功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define		Func_BLE				  Disable
	/*蓝牙设备名*/
	#define 	Ble_Name		 		  0x1298
/********************************蓝牙功能**************************************/
	
	
/******************************界面跳转功能***********************************/	
	/*兼容体温计型号:2.预测型*/
	/*二者选其一(在预测型中只能选择一个小型号),不允许开启多个功能*/
	/*2.预测型,预测型目前分为两种,后面有特殊型号可扩充*/
	/*目前两种预测型型号:2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*目前两种预测型型号:2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	
	
	/*2.1.全显界面长按3s进入模式切换界面,最近一次温度界面长按3s进入温度单位切换界面,温度测量结束界面蜂鸣结束长按3s进入记忆温度界面*/
	/*记忆温度界面由测量蜂鸣结束进入*/ 		/*全显界面、测温界面、测温结束界面短按关机*/			/*最近一次温度界面和当前模式界面短按无需关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/	
	#define Func_AllEntrModeExch_RecTempEntrUnitExch_MeasedTempEntrMem		Disable
	
	/*2.2.全显界面长按3s进入温度单位切换界面,最近一次温度界面长按3s进入记忆温度界面,当前模式界面长按3s进入到模式切换界面*/
	/*记忆温度界面由最近一次温度界面进入*/ /*全显界面、测温界面、测温结束界面短按关机*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_AllEntrUnitExch_RecTempEntrMem_RecModeEntrModeExch				Enable
/******************************界面跳转功能***********************************/
	
	
/********************************背光功能**************************************/	
	/*兼容三种背光颜色,共计三种方案:1.单色;2.双色;3.三色*/
	/*三者者择其一或者都不选择(无背光),不允许开启多个功能*/
	
	/*预设单色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_SingleColor	   					Disable
	
	/*预设双色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define	Func_DoubleColor					  Disable
	
	/*预设三色背光功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TribleColor					    Disable
	
	
	/*兼容测温结束背光时间,共计两种方案:1.亮10s;2.亮20s*/
	/*二者择其一,不允许开启多个功能,不允许不选*/
	/*当三种背光颜色方案都失能时,背光时间设置无效*/
	
	/*预设背光时间10s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight10S	   					Enable
	
	/*预设背光时间20s功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_MeasuredTempBacklight20S	   					Disable
/********************************背光功能**************************************/
	
	
/**************************测温界面背光功能**********************************/
	/*预设进入测温界面背光亮2S功能*/
	/*目前有Enable/Disable可选*/
	/*Enable:打开该功能*/
	/*Disable:关闭该功能*/
	#define Func_TempDetectingBacklight			Disable
/**************************测温界面背光功能**********************************/
	
/****************************温度间隔点***************************************/
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℃*/
	/*1.高温/High分割点*/
	#define High_Temp_Centigrade					 4390
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Centigrade					3780
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Centigrade		   			3730
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Centigrade		 		  3580
	/*5.低温/Low分割点*/
	#define Low_Temp_Centigrade						 3200
	
	/*温度间隔点,分为三个点:1.高温/High分割点;2.发烧温度/Fever分割点;3.警告温度/Warn分割点;4.正常温/Normal度分割点;5.低温/Low分割点*/
	/*温度分割点温度可设,修改下方宏即可*/
	/*温度单位:℉*/
	/*1.高温/High分割点*/
	#define High_Temp_Fahrenheit			 		 11100
	/*2.发烧温度/Fever分割点*/
	#define Fever_Temp_Fahrenheit					10000
	/*3.警告温度/Warn分割点*/
	#define Warn_Temp_Fahrenheit		    		9910
	/*4.正常温度/Normal度分割点*/
	#define Noamal_Temp_Fahrenheit		  		  9640
	/*5.低温/Low分割点*/
	#define Low_Temp_Fahrenheit				 		 8960
/****************************温度间隔点***************************************/
#endif



