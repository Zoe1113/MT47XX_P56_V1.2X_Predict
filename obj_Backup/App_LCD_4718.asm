;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #bf155f72c (MSVC)
;--------------------------------------------------------
; Port for HYCON CPU
;--------------------------------------------------------
;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_ce专标\Src"
;;	.file	".\Source\App_LCD_4718.c"
	.module App_LCD_4718
	;.list	p=HY17P56
	;--cdb--T:FApp_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$DispUnit$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$DispUnit$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$DispDelta$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$DispDelta$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$DispNum$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$DispNum$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$_moduchar$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_BatFlash$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Disp_BatFlash$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Off_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Off_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Binding_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Binding_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Err_Disp$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$Err_Disp$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD_4718:G$LCD_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
.area CCODE (code,REL,CON) ; App_LCD_4718-code 
.globl _LCD_Display

;--------------------------------------------------------
	.FUNC _LCD_Display:$r:0:0:$C:_Disp_BrownOut:$C:_Disp_All:$C:_UnitExchange_Display:$C:_Disp_Bat\
:$C:_Disp_Version:$C:_Disp_BleSymbol:$C:_Disp_Code:$C:_Off_Display:$C:_PreCalibration_Display\
:$C:_Calibration_Display:$C:_CalibrationOK_Display:$C:_RecentTemp_Display:$C:_MemTempNumber_Display:$C:_MemTempValue_Display\
:$C:_CurrentMode_Display:$C:_ModeExchange_Display:$C:_Binding_Display:$C:_TempDetecting_Display:$C:_Err_Disp\
:$C:_MeasedTemp_Disp:$C:_Disp_Nothing\

;--------------------------------------------------------
;	;.line	1254; ".\Source\App_LCD_4718.c"	if(sTIMx.LCDRefreshFlag)
_LCD_Display:	;Function start
	BTSS	_sTIMx,1
	JMP	_00563_DS_
;	;.line	1257; ".\Source\App_LCD_4718.c"	sTIMx.LCDRefreshFlag = FALSE;
	BCF	_sTIMx,1
;	;.line	1258; ".\Source\App_LCD_4718.c"	switch(eDisplay_Interfaces)
	MVL	0x14
	CPSL	_eDisplay_Interfaces,0
	JMP	_00563_DS_
	MVL	HIGHD2(_00590_DS_)
	MVF	_PCLATH,1,0
	MVF	_eDisplay_Interfaces,0,0
	ADDL	D2(_00590_DS_)
	BTSZ	_STATUS,4
	INF	_PCLATH,1,0
	MVF	_PCLATL,1,0
_00590_DS_:
	RJ	_00563_DS_
	RJ	_00536_DS_
	RJ	_00537_DS_
	RJ	_00540_DS_
	RJ	_00541_DS_
	RJ	_00542_DS_
	RJ	_00543_DS_
	RJ	_00545_DS_
	RJ	_00546_DS_
	RJ	_00547_DS_
	RJ	_00548_DS_
	RJ	_00551_DS_
	RJ	_00552_DS_
	RJ	_00553_DS_
	RJ	_00554_DS_
	RJ	_00555_DS_
	RJ	_00556_DS_
	RJ	_00557_DS_
	RJ	_00558_DS_
	RJ	_00544_DS_
_00536_DS_:
;	;.line	1268; ".\Source\App_LCD_4718.c"	Disp_BrownOut();
	CALL	_Disp_BrownOut
	.CHKPARA _Disp_BrownOut 0
;	;.line	1269; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00537_DS_:
;	;.line	1274; ".\Source\App_LCD_4718.c"	Disp_All();
	CALL	_Disp_All
	.CHKPARA _Disp_All 0
;	;.line	1276; ".\Source\App_LCD_4718.c"	if(!sBacklight.Backlight2SFlag)
	BTSZ	_sBacklight,0
	JMP	_00563_DS_
;	;.line	1278; ".\Source\App_LCD_4718.c"	sBacklight.Backlight2SFlag = TRUE;
	BSF	_sBacklight,0
;	;.line	1280; ".\Source\App_LCD_4718.c"	eBacklight_Status = All_Backlight;
	MVL	0x01
	MVF	_eBacklight_Status,1,0
;	;.line	1282; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00540_DS_:
;	;.line	1287; ".\Source\App_LCD_4718.c"	UnitExchange_Display();
	CALL	_UnitExchange_Display
	.CHKPARA _UnitExchange_Display 0
;	;.line	1291; ".\Source\App_LCD_4718.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1294; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00541_DS_:
;	;.line	1299; ".\Source\App_LCD_4718.c"	Disp_Version(Soft_External_Version);
	MVL	0x0a
	CALL	_Disp_Version
;	;.line	1301; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	1302; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00542_DS_:
;	;.line	1307; ".\Source\App_LCD_4718.c"	Disp_Code(Soft_Code);
	MVL	0xaa
	MVF	_Disp_Code_STK00,1,0
	MVL	0x01
	CALL	_Disp_Code
;	;.line	1309; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	1310; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00543_DS_:
;	;.line	1315; ".\Source\App_LCD_4718.c"	Off_Display();
	CALL	_Off_Display
	.CHKPARA _Off_Display 0
;	;.line	1316; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00544_DS_:
;	;.line	1321; ".\Source\App_LCD_4718.c"	PreCalibration_Display();
	CALL	_PreCalibration_Display
	.CHKPARA _PreCalibration_Display 0
;	;.line	1322; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00545_DS_:
;	;.line	1327; ".\Source\App_LCD_4718.c"	Calibration_Display();
	CALL	_Calibration_Display
	.CHKPARA _Calibration_Display 0
;	;.line	1328; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00546_DS_:
;	;.line	1333; ".\Source\App_LCD_4718.c"	CalibrationOK_Display();
	CALL	_CalibrationOK_Display
	.CHKPARA _CalibrationOK_Display 0
;	;.line	1337; ".\Source\App_LCD_4718.c"	Disp_Bat();
	CALL	_Disp_Bat
;	;.line	1340; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00547_DS_:
;	;.line	1345; ".\Source\App_LCD_4718.c"	RecentTemp_Display();
	CALL	_RecentTemp_Display
	.CHKPARA _RecentTemp_Display 0
;	;.line	1349; ".\Source\App_LCD_4718.c"	Disp_Bat();
	CALL	_Disp_Bat
;	;.line	1352; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00548_DS_:
;	;.line	1357; ".\Source\App_LCD_4718.c"	MemTempNumber_Display();
	CALL	_MemTempNumber_Display
	.CHKPARA _MemTempNumber_Display 0
;	;.line	1359; ".\Source\App_LCD_4718.c"	if(!sBacklight.Backlight2SFlag)
	BTSZ	_sBacklight,0
	JMP	_00550_DS_
;	;.line	1362; ".\Source\App_LCD_4718.c"	sBacklight.Backlight2SFlag = TRUE;
	BSF	_sBacklight,0
;	;.line	1364; ".\Source\App_LCD_4718.c"	eBacklight_Status = MemTemp_Backlight;
	MVL	0x02
	MVF	_eBacklight_Status,1,0
_00550_DS_:
;	;.line	1369; ".\Source\App_LCD_4718.c"	Disp_Bat();
	CALL	_Disp_Bat
;	;.line	1372; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00551_DS_:
;	;.line	1377; ".\Source\App_LCD_4718.c"	MemTempValue_Display();
	CALL	_MemTempValue_Display
	.CHKPARA _MemTempValue_Display 0
;	;.line	1381; ".\Source\App_LCD_4718.c"	Disp_Bat();
	CALL	_Disp_Bat
;	;.line	1384; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00552_DS_:
;	;.line	1390; ".\Source\App_LCD_4718.c"	CurrentMode_Display();
	CALL	_CurrentMode_Display
;	;.line	1392; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	1396; ".\Source\App_LCD_4718.c"	Disp_Bat();
	CALL	_Disp_Bat
;	;.line	1399; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00553_DS_:
;	;.line	1404; ".\Source\App_LCD_4718.c"	ModeExchange_Display();
	CALL	_ModeExchange_Display
	.CHKPARA _ModeExchange_Display 0
;	;.line	1406; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	1410; ".\Source\App_LCD_4718.c"	Disp_Bat();
	CALL	_Disp_Bat
;	;.line	1413; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00554_DS_:
;	;.line	1418; ".\Source\App_LCD_4718.c"	Binding_Display();
	CALL	_Binding_Display
	.CHKPARA _Binding_Display 0
;	;.line	1420; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	1421; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00555_DS_:
;	;.line	1426; ".\Source\App_LCD_4718.c"	TempDetecting_Display();
	CALL	_TempDetecting_Display
	.CHKPARA _TempDetecting_Display 0
;	;.line	1438; ".\Source\App_LCD_4718.c"	Disp_Bat();
	CALL	_Disp_Bat
;	;.line	1441; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00556_DS_:
;	;.line	1446; ".\Source\App_LCD_4718.c"	Err_Disp();
	CALL	_Err_Disp
	.CHKPARA _Err_Disp 0
;	;.line	1448; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	1452; ".\Source\App_LCD_4718.c"	Disp_Bat();
	CALL	_Disp_Bat
;	;.line	1455; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00557_DS_:
;	;.line	1460; ".\Source\App_LCD_4718.c"	MeasedTemp_Disp();
	CALL	_MeasedTemp_Disp
	.CHKPARA _MeasedTemp_Disp 0
;	;.line	1462; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	1466; ".\Source\App_LCD_4718.c"	Disp_Bat();
	CALL	_Disp_Bat
;	;.line	1469; ".\Source\App_LCD_4718.c"	break;
	JMP	_00563_DS_
_00558_DS_:
;	;.line	1474; ".\Source\App_LCD_4718.c"	Disp_Nothing();
	CALL	_Disp_Nothing
_00563_DS_:
;	;.line	1480; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _LCD_Display
	.ENDFUNC	_LCD_Display
;--------------------------------------------------------

.globl _MeasedTemp_Disp

;--------------------------------------------------------
	.FUNC _MeasedTemp_Disp:$r:0:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_Hi:$C:_DispNum:$C:_DispDelta\
:$C:_DispUnit\
:$L:r0x10DC:$L:r0x10DD
;--------------------------------------------------------
;	;.line	1048; ".\Source\App_LCD_4718.c"	if(sTempCal.Reset_From_CalOK)
_MeasedTemp_Disp:	;Function start
	BTSS	_sTempCal,5
	JMP	_00524_DS_
;	;.line	1051; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00508_DS_
;	;.line	1054; ".\Source\App_LCD_4718.c"	if(sTIMx.ForecastJudgeOKTempFlash)
	BTSS	_sTIMx,6
	JMP	_00494_DS_
;	;.line	1056; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
	MVF	(_sActual_Forecast + 13),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sActual_Forecast + 14),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	MVF	r0x10DD,1,0
	MVF	STK00,0,0
	MVF	r0x10DC,1,0
;	;.line	1058; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Centigrade)
	ADDL	0xd9
	MVL	0xee
	ADDC	r0x10DD,0,0
	BTSS	_STATUS,4
	JMP	_00488_DS_
;	;.line	1061; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
	JMP	_00489_DS_
_00488_DS_:
;	;.line	1066; ".\Source\App_LCD_4718.c"	DispNum(tmp);
	MVF	r0x10DC,0,0
	MVF	_DispNum_STK00,1,0
	MVF	r0x10DD,0,0
	CALL	_DispNum
;	;.line	1068; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
_00489_DS_:
;	;.line	1074; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
	MVF	r0x10DC,0,0
	MVF	_DispDelta_STK00,1,0
	MVF	r0x10DD,0,0
	CALL	_DispDelta
	JMP	_00509_DS_
_00494_DS_:
;	;.line	1084; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
	MVF	(_sForecast + 20),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sForecast + 21),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	MVF	r0x10DD,1,0
	MVF	STK00,0,0
	MVF	r0x10DC,1,0
;	;.line	1086; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Centigrade)
	ADDL	0xd9
	MVL	0xee
	ADDC	r0x10DD,0,0
	BTSS	_STATUS,4
	JMP	_00491_DS_
;	;.line	1089; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
	JMP	_00492_DS_
_00491_DS_:
;	;.line	1094; ".\Source\App_LCD_4718.c"	DispNum(tmp);
	MVF	r0x10DC,0,0
	MVF	_DispNum_STK00,1,0
	MVF	r0x10DD,0,0
	CALL	_DispNum
;	;.line	1096; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
_00492_DS_:
;	;.line	1102; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
	MVF	r0x10DC,0,0
	MVF	_DispDelta_STK00,1,0
	MVF	r0x10DD,0,0
	CALL	_DispDelta
	JMP	_00509_DS_
_00508_DS_:
;	;.line	1112; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00509_DS_
;	;.line	1115; ".\Source\App_LCD_4718.c"	if(sTIMx.ForecastJudgeOKTempFlash)
	BTSS	_sTIMx,6
	JMP	_00503_DS_
;	;.line	1117; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
	MVF	(_sActual_Forecast + 13),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sActual_Forecast + 14),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	MVF	r0x10DD,1,0
	MVF	STK00,0,0
	MVF	r0x10DC,1,0
;	;.line	1119; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Fahrenheit)
	ADDL	0xa3
	MVL	0xd4
	ADDC	r0x10DD,0,0
	BTSS	_STATUS,4
	JMP	_00497_DS_
;	;.line	1122; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
	JMP	_00498_DS_
_00497_DS_:
;	;.line	1127; ".\Source\App_LCD_4718.c"	DispNum(tmp);
	MVF	r0x10DC,0,0
	MVF	_DispNum_STK00,1,0
	MVF	r0x10DD,0,0
	CALL	_DispNum
;	;.line	1129; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
_00498_DS_:
;	;.line	1135; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
	MVF	r0x10DC,0,0
	MVF	_DispDelta_STK00,1,0
	MVF	r0x10DD,0,0
	CALL	_DispDelta
	JMP	_00509_DS_
_00503_DS_:
;	;.line	1145; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
	MVF	(_sForecast + 20),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sForecast + 21),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	MVF	r0x10DD,1,0
	MVF	STK00,0,0
	MVF	r0x10DC,1,0
;	;.line	1147; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Fahrenheit)
	ADDL	0xa3
	MVL	0xd4
	ADDC	r0x10DD,0,0
	BTSS	_STATUS,4
	JMP	_00500_DS_
;	;.line	1150; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
	JMP	_00501_DS_
_00500_DS_:
;	;.line	1155; ".\Source\App_LCD_4718.c"	DispNum(tmp);
	MVF	r0x10DC,0,0
	MVF	_DispNum_STK00,1,0
	MVF	r0x10DD,0,0
	CALL	_DispNum
;	;.line	1157; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
_00501_DS_:
;	;.line	1163; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
	MVF	r0x10DC,0,0
	MVF	_DispDelta_STK00,1,0
	MVF	r0x10DD,0,0
	CALL	_DispDelta
_00509_DS_:
;	;.line	1173; ".\Source\App_LCD_4718.c"	DispUnit();
	CALL	_DispUnit
	JMP	_00530_DS_
_00524_DS_:
;	;.line	1178; ".\Source\App_LCD_4718.c"	if(!sADC.UnRefreshTemp)
	BTSZ	_sADC,4
	JMP	_00511_DS_
;	;.line	1181; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
	MVF	(_sActual_Forecast + 3),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sActual_Forecast + 4),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	MVF	(_sActual_Forecast + 6),1,0
	MVF	STK00,0,0
	MVF	(_sActual_Forecast + 5),1,0
_00511_DS_:
;	;.line	1185; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00521_DS_
;	;.line	1188; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd9
	MVL	0xee
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00513_DS_
;	;.line	1191; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
	JMP	_00522_DS_
_00513_DS_:
;	;.line	1196; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
;	;.line	1198; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
	JMP	_00522_DS_
_00521_DS_:
;	;.line	1202; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00522_DS_
;	;.line	1205; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xa3
	MVL	0xd4
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00516_DS_
;	;.line	1208; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
	JMP	_00522_DS_
_00516_DS_:
;	;.line	1213; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
;	;.line	1215; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
_00522_DS_:
;	;.line	1220; ".\Source\App_LCD_4718.c"	DispUnit();
	CALL	_DispUnit
;	;.line	1225; ".\Source\App_LCD_4718.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispDelta_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispDelta
_00530_DS_:
;	;.line	1244; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _MeasedTemp_Disp
	.ENDFUNC	_MeasedTemp_Disp
;--------------------------------------------------------

.globl _Err_Disp

;--------------------------------------------------------
	.FUNC _Err_Disp:$r:0:0:$C:_Disp_ErrNo:$C:_Disp_Err\

;--------------------------------------------------------
;	;.line	988; ".\Source\App_LCD_4718.c"	if(ERR[Err4])
_Err_Disp:	;Function start
	RRF	(_ERR + 4),0,0
	BTSZ	_STATUS,0
	JMP	_00480_DS_
;	;.line	992; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err4);
	MVL	0x04
	CALL	_Disp_ErrNo
	.CHKPARA _Disp_ErrNo 1
	JMP	_00482_DS_
_00480_DS_:
;	;.line	994; ".\Source\App_LCD_4718.c"	else if(ERR[Err0])
	RRF	(_ERR + 0),0,0
	BTSZ	_STATUS,0
	JMP	_00477_DS_
;	;.line	998; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err0);
	MVL	0x00
	CALL	_Disp_ErrNo
	JMP	_00482_DS_
_00477_DS_:
;	;.line	1000; ".\Source\App_LCD_4718.c"	else if(ERR[Err5])
	RRF	(_ERR + 5),0,0
	BTSZ	_STATUS,0
	JMP	_00474_DS_
;	;.line	1004; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err5);
	MVL	0x05
	CALL	_Disp_ErrNo
	JMP	_00482_DS_
_00474_DS_:
;	;.line	1006; ".\Source\App_LCD_4718.c"	else if(ERR[Err1])
	RRF	(_ERR + 1),0,0
	BTSZ	_STATUS,0
	JMP	_00471_DS_
;	;.line	1009; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err1);
	MVL	0x01
	CALL	_Disp_ErrNo
	JMP	_00482_DS_
_00471_DS_:
;	;.line	1011; ".\Source\App_LCD_4718.c"	else if(ERR[Err6])
	RRF	(_ERR + 6),0,0
	BTSZ	_STATUS,0
	JMP	_00468_DS_
;	;.line	1014; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err6);
	MVL	0x06
	CALL	_Disp_ErrNo
	JMP	_00482_DS_
_00468_DS_:
;	;.line	1016; ".\Source\App_LCD_4718.c"	else if(ERR[Err2])
	RRF	(_ERR + 2),0,0
	BTSZ	_STATUS,0
	JMP	_00465_DS_
;	;.line	1019; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err2);
	MVL	0x02
	CALL	_Disp_ErrNo
	JMP	_00482_DS_
_00465_DS_:
;	;.line	1021; ".\Source\App_LCD_4718.c"	else if(ERR[Err3])
	RRF	(_ERR + 3),0,0
	BTSZ	_STATUS,0
	JMP	_00462_DS_
;	;.line	1024; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err3);
	MVL	0x03
	CALL	_Disp_ErrNo
	JMP	_00482_DS_
_00462_DS_:
;	;.line	1026; ".\Source\App_LCD_4718.c"	else if(ERR[Err])
	RRF	(_ERR + 8),0,0
	BTSZ	_STATUS,0
	JMP	_00459_DS_
;	;.line	1029; ".\Source\App_LCD_4718.c"	Disp_Err();
	CALL	_Disp_Err
	.CHKPARA _Disp_Err 0
	JMP	_00482_DS_
_00459_DS_:
;	;.line	1031; ".\Source\App_LCD_4718.c"	else if(ERR[Err7])
	RRF	(_ERR + 7),0,0
	BTSZ	_STATUS,0
	JMP	_00482_DS_
;	;.line	1034; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err7);
	MVL	0x07
	CALL	_Disp_ErrNo
_00482_DS_:
;	;.line	1036; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _Err_Disp
	.ENDFUNC	_Err_Disp
;--------------------------------------------------------

.globl _TempDetecting_Display

;--------------------------------------------------------
	.FUNC _TempDetecting_Display:$r:0:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_Hi:$C:_EMC_Update_Temp_Fast:$C:_Disp_StaticDash\
:$C:_DispNum:$C:_Disp_UnitFlash:$C:_Disp_DynamicDash:$C:_Disp_DynamicForecastSymbol:$C:_DispUnit\
:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	873; ".\Source\App_LCD_4718.c"	if((eMeasureMode == Bath_Mode) || sActual.Actual_Start)
_TempDetecting_Display:	;Function start
	MVF	_eMeasureMode,0,0
	XORL	0x03
	BTSZ	_STATUS,0
	JMP	_00391_DS_
	BTSS	_sActual,0
	JMP	_00392_DS_
_00391_DS_:
;	;.line	879; ".\Source\App_LCD_4718.c"	if(!sADC.UnRefreshTemp)
	BTSZ	_sADC,4
	JMP	_00387_DS_
;	;.line	885; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
	MVF	(_sActual_Forecast + 3),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sActual_Forecast + 4),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	MVF	(_sActual_Forecast + 6),1,0
	MVF	STK00,0,0
	MVF	(_sActual_Forecast + 5),1,0
;	;.line	888; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00384_DS_
;	;.line	891; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd9
	MVL	0xee
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00373_DS_
;	;.line	894; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
;	;.line	896; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
	CALL	_EMC_Update_Temp_Fast
	.CHKPARA _EMC_Update_Temp_Fast 0
	JMP	_00387_DS_
_00373_DS_:
;	;.line	899; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd8
	MVL	0xf5
	ADDC	(_sActual_Forecast + 6),0,0
	BTSZ	_STATUS,4
	JMP	_00370_DS_
;	;.line	909; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	JMP	_00387_DS_
_00370_DS_:
;	;.line	915; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
;	;.line	917; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
;	;.line	919; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
	CALL	_EMC_Update_Temp_Fast
	JMP	_00387_DS_
_00384_DS_:
;	;.line	923; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00387_DS_
;	;.line	926; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xa3
	MVL	0xd4
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00379_DS_
;	;.line	929; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
;	;.line	931; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
	CALL	_EMC_Update_Temp_Fast
	JMP	_00387_DS_
_00379_DS_:
;	;.line	934; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0x38
	MVL	0xe1
	ADDC	(_sActual_Forecast + 6),0,0
	BTSZ	_STATUS,4
	JMP	_00376_DS_
;	;.line	944; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	JMP	_00387_DS_
_00376_DS_:
;	;.line	950; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
;	;.line	952; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
;	;.line	954; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
	CALL	_EMC_Update_Temp_Fast
_00387_DS_:
;	;.line	959; ".\Source\App_LCD_4718.c"	Disp_UnitFlash();
	CALL	_Disp_UnitFlash
	JMP	_00393_DS_
_00392_DS_:
;	;.line	963; ".\Source\App_LCD_4718.c"	if(sForecast.Forecast_Start)
	BTSS	_sForecast,0
	JMP	_00389_DS_
;	;.line	965; ".\Source\App_LCD_4718.c"	Disp_DynamicDash();
	CALL	_Disp_DynamicDash
	.CHKPARA _Disp_DynamicDash 0
;	;.line	966; ".\Source\App_LCD_4718.c"	Disp_DynamicForecastSymbol();
	CALL	_Disp_DynamicForecastSymbol
	.CHKPARA _Disp_DynamicForecastSymbol 0
	JMP	_00390_DS_
_00389_DS_:
;	;.line	971; ".\Source\App_LCD_4718.c"	Disp_StaticDash();
	CALL	_Disp_StaticDash
_00390_DS_:
;	;.line	975; ".\Source\App_LCD_4718.c"	DispUnit();
	CALL	_DispUnit
_00393_DS_:
;	;.line	978; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	979; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _TempDetecting_Display
	.ENDFUNC	_TempDetecting_Display
;--------------------------------------------------------

.globl _EMC_Update_Temp_Fast

;--------------------------------------------------------
	.FUNC _EMC_Update_Temp_Fast:$r:0:0
;--------------------------------------------------------
;	;.line	862; ".\Source\App_LCD_4718.c"	}
_EMC_Update_Temp_Fast:	;Function start
	RET	
; exit point of _EMC_Update_Temp_Fast
	.ENDFUNC	_EMC_Update_Temp_Fast
;--------------------------------------------------------

.globl _Binding_Display

;--------------------------------------------------------
	.FUNC _Binding_Display:$r:0:0:$C:_Disp_Version:$C:_Disp_Code\

;--------------------------------------------------------
;	;.line	827; ".\Source\App_LCD_4718.c"	if(eVersionCode == VC_DispOn)
_Binding_Display:	;Function start
	RRF	_eVersionCode,0,0
	BTSZ	_STATUS,0
	JMP	_00360_DS_
;	;.line	829; ".\Source\App_LCD_4718.c"	if(sTIMx.BindingSymbolFlash)
	BTSS	_sTIMx,7
	JMP	_00356_DS_
;	;.line	832; ".\Source\App_LCD_4718.c"	Disp_Version(Soft_External_Version);
	MVL	0x0a
	CALL	_Disp_Version
	.CHKPARA _Disp_Version 1
	JMP	_00360_DS_
_00356_DS_:
;	;.line	837; ".\Source\App_LCD_4718.c"	Disp_Code(Soft_Code);
	MVL	0xaa
	MVF	_Disp_Code_STK00,1,0
	MVL	0x01
	CALL	_Disp_Code
	.CHKPARA _Disp_Code 2
_00360_DS_:
;	;.line	840; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _Binding_Display
	.ENDFUNC	_Binding_Display
;--------------------------------------------------------

.globl _ModeExchange_Display

;--------------------------------------------------------
	.FUNC _ModeExchange_Display:$r:0:0:$C:_CurrentMode_Display:$C:_Disp_Nothing\

;--------------------------------------------------------
;	;.line	807; ".\Source\App_LCD_4718.c"	if(sTIMx.ModeSymbolFlash || sTIMx.EnableModeSymbolFlash)
_ModeExchange_Display:	;Function start
	BTSZ	_sTIMx,3
	JMP	_00346_DS_
	BTSS	_sTIMx,4
	JMP	_00347_DS_
_00346_DS_:
;	;.line	810; ".\Source\App_LCD_4718.c"	CurrentMode_Display();
	CALL	_CurrentMode_Display
	.CHKPARA _CurrentMode_Display 0
	JMP	_00350_DS_
_00347_DS_:
;	;.line	815; ".\Source\App_LCD_4718.c"	Disp_Nothing();
	CALL	_Disp_Nothing
_00350_DS_:
;	;.line	817; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _ModeExchange_Display
	.ENDFUNC	_ModeExchange_Display
;--------------------------------------------------------

.globl _CurrentMode_Display

;--------------------------------------------------------
	.FUNC _CurrentMode_Display:$r:0:0:$C:_Disp_Orl:$C:_Disp_Udr:$C:_Disp_Rct:$C:_Disp_Bth\

;--------------------------------------------------------
;	;.line	765; ".\Source\App_LCD_4718.c"	if(eMeasureMode == Oral_Mode)
_CurrentMode_Display:	;Function start
	TFSZ	_eMeasureMode,0
	JMP	_00339_DS_
;	;.line	768; ".\Source\App_LCD_4718.c"	Disp_Orl();
	CALL	_Disp_Orl
	.CHKPARA _Disp_Orl 0
	JMP	_00341_DS_
_00339_DS_:
;	;.line	771; ".\Source\App_LCD_4718.c"	else if(eMeasureMode == Underarm_Mode)
	DCSZ	_eMeasureMode,0,0
	JMP	_00336_DS_
;	;.line	774; ".\Source\App_LCD_4718.c"	Disp_Udr();
	CALL	_Disp_Udr
	.CHKPARA _Disp_Udr 0
	JMP	_00341_DS_
_00336_DS_:
;	;.line	777; ".\Source\App_LCD_4718.c"	else if(eMeasureMode == Rectal_Mode)
	MVL	0x02
	CPSE	_eMeasureMode,0
	JMP	_00333_DS_
;	;.line	780; ".\Source\App_LCD_4718.c"	Disp_Rct();
	CALL	_Disp_Rct
	.CHKPARA _Disp_Rct 0
	JMP	_00341_DS_
_00333_DS_:
;	;.line	783; ".\Source\App_LCD_4718.c"	else if(eMeasureMode == Bath_Mode)
	MVL	0x03
	CPSE	_eMeasureMode,0
	JMP	_00341_DS_
;	;.line	786; ".\Source\App_LCD_4718.c"	Disp_Bth();
	CALL	_Disp_Bth
	.CHKPARA _Disp_Bth 0
_00341_DS_:
;	;.line	788; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _CurrentMode_Display
	.ENDFUNC	_CurrentMode_Display
;--------------------------------------------------------

.globl _MemTempValue_Display

;--------------------------------------------------------
	.FUNC _MemTempValue_Display:$r:0:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_StaticDash:$C:_Disp_Hi:$C:_DispNum\
:$C:_DispDelta:$C:_DispUnit:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	667; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
_MemTempValue_Display:	;Function start
	MVF	(_sMemoryFlag + 2),0,0
	MULL	0x02
	LDPR	(_sMemory + 3),0
	MVF	_PRODL,0,0
	MVFF	_PLUSW0,STK00
	INF	_WREG,0,0
	MVFF	_PLUSW0,STK01
	MVFF	STK00,_Centigrade_Convert_Fahrenheit_STK00
	MVF	STK01,0,0
	CALL	_Centigrade_Convert_Fahrenheit
	MVF	(_sActual_Forecast + 6),1,0
	MVF	STK00,0,0
	MVF	(_sActual_Forecast + 5),1,0
;	;.line	668; ".\Source\App_LCD_4718.c"	if(!sMemory.MemTempSum)
	TFSZ	(_sMemory + 2),0
	JMP	_00324_DS_
;	;.line	675; ".\Source\App_LCD_4718.c"	Disp_StaticDash();
	CALL	_Disp_StaticDash
	JMP	_00325_DS_
_00324_DS_:
;	;.line	681; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00321_DS_
;	;.line	683; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd9
	MVL	0xee
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00310_DS_
;	;.line	685; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
	JMP	_00322_DS_
_00310_DS_:
;	;.line	687; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd8
	MVL	0xf5
	ADDC	(_sActual_Forecast + 6),0,0
	BTSZ	_STATUS,4
	JMP	_00307_DS_
;	;.line	697; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	JMP	_00322_DS_
_00307_DS_:
;	;.line	703; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
;	;.line	705; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
	JMP	_00322_DS_
_00321_DS_:
;	;.line	709; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00322_DS_
;	;.line	711; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xa3
	MVL	0xd4
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00316_DS_
;	;.line	713; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
	JMP	_00322_DS_
_00316_DS_:
;	;.line	715; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0x38
	MVL	0xe1
	ADDC	(_sActual_Forecast + 6),0,0
	BTSZ	_STATUS,4
	JMP	_00313_DS_
;	;.line	725; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	JMP	_00322_DS_
_00313_DS_:
;	;.line	731; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
;	;.line	733; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
_00322_DS_:
;	;.line	740; ".\Source\App_LCD_4718.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispDelta_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispDelta
_00325_DS_:
;	;.line	750; ".\Source\App_LCD_4718.c"	DispUnit();
	CALL	_DispUnit
;	;.line	752; ".\Source\App_LCD_4718.c"	LCD_Mem_En();
	BSF	_LCD3,2
;	;.line	754; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	755; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _MemTempValue_Display
	.ENDFUNC	_MemTempValue_Display
;--------------------------------------------------------

.globl _MemTempNumber_Display

;--------------------------------------------------------
	.FUNC _MemTempNumber_Display:$r:0:0:$C:_DispNum:$C:_Disp_BleSymbol\
:$L:r0x10C7
;--------------------------------------------------------
;	;.line	615; ".\Source\App_LCD_4718.c"	if(sMemoryFlag.Update_MemTempDispNo)
_MemTempNumber_Display:	;Function start
	BTSS	_sMemoryFlag,4
	JMP	_00290_DS_
;	;.line	617; ".\Source\App_LCD_4718.c"	sMemoryFlag.Update_MemTempDispNo = FALSE;
	BCF	_sMemoryFlag,4
;	;.line	619; ".\Source\App_LCD_4718.c"	if(++sMemoryFlag.MemTempDispNo > sMemory.MemTempSum)
	INF	(_sMemoryFlag + 1),1,0
	MVF	(_sMemoryFlag + 1),0,0
	CPSL	(_sMemory + 2),0
	JMP	_00290_DS_
;	;.line	621; ".\Source\App_LCD_4718.c"	sMemoryFlag.MemTempDispNo = 1;
	MVL	0x01
	MVF	(_sMemoryFlag + 1),1,0
_00290_DS_:
;	;.line	625; ".\Source\App_LCD_4718.c"	if(sMemoryFlag.Update_MemTempDispVlaue)
	BTSS	_sMemoryFlag,5
	JMP	_00301_DS_
;	;.line	627; ".\Source\App_LCD_4718.c"	sMemoryFlag.Update_MemTempDispVlaue = FALSE;
	BCF	_sMemoryFlag,5
;	;.line	628; ".\Source\App_LCD_4718.c"	if(sMemory.MemTempSum == MemTempNum/*10*/)
	MVL	0x0a
	CPSE	(_sMemory + 2),0
	JMP	_00298_DS_
;	;.line	630; ".\Source\App_LCD_4718.c"	if(!sMemoryFlag.MemTempDispValue)
	MVF	(_sMemoryFlag + 2),0,0
	MVF	r0x10C7,1,0
	TFSZ	_WREG,0
	JMP	_00292_DS_
;	;.line	632; ".\Source\App_LCD_4718.c"	sMemoryFlag.MemTempDispValue = MemTempNum - 1/*9*/;
	MVL	0x09
	MVF	(_sMemoryFlag + 2),1,0
	JMP	_00301_DS_
_00292_DS_:
;	;.line	636; ".\Source\App_LCD_4718.c"	--sMemoryFlag.MemTempDispValue;
	DCF	r0x10C7,0,0
	MVF	(_sMemoryFlag + 2),1,0
	JMP	_00301_DS_
_00298_DS_:
;	;.line	641; ".\Source\App_LCD_4718.c"	if(!sMemoryFlag.MemTempDispValue)
	MVF	(_sMemoryFlag + 2),0,0
	MVF	r0x10C7,1,0
	TFSZ	_WREG,0
	JMP	_00295_DS_
;	;.line	643; ".\Source\App_LCD_4718.c"	sMemoryFlag.MemTempDispValue = sMemory.pMemTempBuf;
	MVF	(_sMemory + 1),0,0
	MVF	(_sMemoryFlag + 2),1,0
	JMP	_00301_DS_
_00295_DS_:
;	;.line	647; ".\Source\App_LCD_4718.c"	--sMemoryFlag.MemTempDispValue;
	DCF	r0x10C7,0,0
	MVF	(_sMemoryFlag + 2),1,0
_00301_DS_:
;	;.line	653; ".\Source\App_LCD_4718.c"	DispNum(sMemoryFlag.MemTempDispNo);
	MVF	(_sMemoryFlag + 1),0,0
	MVF	_DispNum_STK00,1,0
	MVL	0x00
	CALL	_DispNum
;	;.line	655; ".\Source\App_LCD_4718.c"	LCD_Mem_En();
	BSF	_LCD3,2
;	;.line	657; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	658; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _MemTempNumber_Display
	.ENDFUNC	_MemTempNumber_Display
;--------------------------------------------------------

.globl _RecentTemp_Display

;--------------------------------------------------------
	.FUNC _RecentTemp_Display:$r:0:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_StaticDash:$C:_Disp_Hi:$C:_DispNum\
:$C:_DispDelta:$C:_DispUnit:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	525; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemory.pMemTempBuf]);
_RecentTemp_Display:	;Function start
	MVF	(_sMemory + 1),0,0
	MULL	0x02
	LDPR	(_sMemory + 3),0
	MVF	_PRODL,0,0
	MVFF	_PLUSW0,STK00
	INF	_WREG,0,0
	MVFF	_PLUSW0,STK01
	MVFF	STK00,_Centigrade_Convert_Fahrenheit_STK00
	MVF	STK01,0,0
	CALL	_Centigrade_Convert_Fahrenheit
	.CHKPARA _Centigrade_Convert_Fahrenheit 2
	MVF	(_sActual_Forecast + 6),1,0
	MVF	STK00,0,0
	MVF	(_sActual_Forecast + 5),1,0
;	;.line	527; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00281_DS_
;	;.line	530; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd8
	MVL	0xf5
	ADDC	(_sActual_Forecast + 6),0,0
	BTSZ	_STATUS,4
	JMP	_00270_DS_
;	;.line	540; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	.CHKPARA _Disp_StaticDash 0
	JMP	_00282_DS_
_00270_DS_:
;	;.line	545; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd9
	MVL	0xee
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00267_DS_
;	;.line	547; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00282_DS_
_00267_DS_:
;	;.line	552; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	554; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
	JMP	_00282_DS_
_00281_DS_:
;	;.line	558; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00282_DS_
;	;.line	561; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0x38
	MVL	0xe1
	ADDC	(_sActual_Forecast + 6),0,0
	BTSZ	_STATUS,4
	JMP	_00276_DS_
;	;.line	571; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	JMP	_00282_DS_
_00276_DS_:
;	;.line	575; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xa3
	MVL	0xd4
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00273_DS_
;	;.line	577; ".\Source\App_LCD_4718.c"	Disp_Hi();
	CALL	_Disp_Hi
	JMP	_00282_DS_
_00273_DS_:
;	;.line	582; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
;	;.line	584; ".\Source\App_LCD_4718.c"	LCD_Point_En();
	BSF	_LCD2,6
_00282_DS_:
;	;.line	591; ".\Source\App_LCD_4718.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispDelta_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispDelta
	.CHKPARA _DispDelta 2
;	;.line	600; ".\Source\App_LCD_4718.c"	DispUnit();
	CALL	_DispUnit
	.CHKPARA _DispUnit 0
;	;.line	602; ".\Source\App_LCD_4718.c"	LCD_Mem_En();
	BSF	_LCD3,2
;	;.line	604; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	605; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _RecentTemp_Display
	.ENDFUNC	_RecentTemp_Display
;--------------------------------------------------------

.globl _CalibrationOK_Display

;--------------------------------------------------------
	.FUNC _CalibrationOK_Display:$r:0:0:$C:_Disp_End:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	513; ".\Source\App_LCD_4718.c"	Disp_End();
_CalibrationOK_Display:	;Function start
	CALL	_Disp_End
	.CHKPARA _Disp_End 0
;	;.line	515; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
;	;.line	516; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _CalibrationOK_Display
	.ENDFUNC	_CalibrationOK_Display
;--------------------------------------------------------

.globl _Calibration_Display

;--------------------------------------------------------
	.FUNC _Calibration_Display:$r:0:0:$C:_memchrn:$C:_Disp_CAL:$C:_Disp_Nothing:$C:_Disp_BleSymbol\
:$C:_LCD_Clear_Register:$C:_LCD_Configuration\

;--------------------------------------------------------
;	;.line	460; ".\Source\App_LCD_4718.c"	if(!memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
_Calibration_Display:	;Function start
	MVL	0x09
	MVF	_memchrn_STK02,1,0
	MVL	0x01
	MVF	_memchrn_STK01,1,0
	MVL	(_ERR + 0)
	MVF	_memchrn_STK00,1,0
	MVL	high (_ERR + 0)
	CALL	_memchrn
	.CHKPARA _memchrn 4
	TFSZ	_WREG,0
	JMP	_00252_DS_
	BTSS	_sTempCal,1
	JMP	_00252_DS_
;	;.line	465; ".\Source\App_LCD_4718.c"	sTempCal.Enable_BIE_Write = TRUE;
	BSF	_sTempCal,2
	JMP	_00253_DS_
_00252_DS_:
;	;.line	467; ".\Source\App_LCD_4718.c"	else if(memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
	MVL	0x09
	MVF	_memchrn_STK02,1,0
	MVL	0x01
	MVF	_memchrn_STK01,1,0
	MVL	(_ERR + 0)
	MVF	_memchrn_STK00,1,0
	MVL	high (_ERR + 0)
	CALL	_memchrn
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00248_DS_
	BTSS	_sTempCal,1
	JMP	_00248_DS_
;	;.line	470; ".\Source\App_LCD_4718.c"	sTempCal.BIE_Write_Action = TRUE;
	BSF	_sTempCal,3
	JMP	_00253_DS_
_00248_DS_:
;	;.line	475; ".\Source\App_LCD_4718.c"	if(sTIMx.CalSymbolFlash)
	BTSS	_sTIMx,5
	JMP	_00245_DS_
;	;.line	478; ".\Source\App_LCD_4718.c"	Disp_CAL();
	CALL	_Disp_CAL
	.CHKPARA _Disp_CAL 0
	JMP	_00246_DS_
_00245_DS_:
;	;.line	483; ".\Source\App_LCD_4718.c"	Disp_Nothing();
	CALL	_Disp_Nothing
_00246_DS_:
;	;.line	486; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
_00253_DS_:
;	;.line	490; ".\Source\App_LCD_4718.c"	if(sTempCal.BIE_Write_Action)
	BTSS	_sTempCal,3
	JMP	_00257_DS_
;	;.line	496; ".\Source\App_LCD_4718.c"	LCD_Clear_Register();
	CALL	_LCD_Clear_Register
	.CHKPARA _LCD_Clear_Register 0
;	;.line	499; ".\Source\App_LCD_4718.c"	LCD_Configuration();
	CALL	_LCD_Configuration
	.CHKPARA _LCD_Configuration 0
;	;.line	501; ".\Source\App_LCD_4718.c"	sTempCal.Reopen_LCD = TRUE;
	LDPR	(_sTempCal + 0),0x00
	BSF	_INDF0,4
_00257_DS_:
;	;.line	503; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _Calibration_Display
	.ENDFUNC	_Calibration_Display
;--------------------------------------------------------

.globl _PreCalibration_Display

;--------------------------------------------------------
	.FUNC _PreCalibration_Display:$r:0:0:$C:_Disp_UnitFlash\

;--------------------------------------------------------
;	;.line	446; ".\Source\App_LCD_4718.c"	Disp_UnitFlash();
_PreCalibration_Display:	;Function start
	CALL	_Disp_UnitFlash
	.CHKPARA _Disp_UnitFlash 0
;	;.line	448; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _PreCalibration_Display
	.ENDFUNC	_PreCalibration_Display
;--------------------------------------------------------

.globl _Off_Display

;--------------------------------------------------------
	.FUNC _Off_Display:$r:0:0:$C:_Disp_Nothing:$C:_Disp_Off:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	426; ".\Source\App_LCD_4718.c"	if(sButton.Flag_Button_Lift_Once)
_Off_Display:	;Function start
	BTSS	_sButton,5
	JMP	_00233_DS_
;	;.line	429; ".\Source\App_LCD_4718.c"	Disp_Nothing();
	CALL	_Disp_Nothing
	JMP	_00235_DS_
_00233_DS_:
;	;.line	433; ".\Source\App_LCD_4718.c"	Disp_Off();
	CALL	_Disp_Off
	.CHKPARA _Disp_Off 0
;	;.line	435; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
_00235_DS_:
;	;.line	437; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _Off_Display
	.ENDFUNC	_Off_Display
;--------------------------------------------------------

.globl _UnitExchange_Display

;--------------------------------------------------------
	.FUNC _UnitExchange_Display:$r:0:0:$C:_Disp_Nothing:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	371; ".\Source\App_LCD_4718.c"	if(!UnitExchangeCompleted)
_UnitExchange_Display:	;Function start
	TFSZ	_UnitExchangeCompleted,0
	JMP	_00226_DS_
;	;.line	374; ".\Source\App_LCD_4718.c"	Disp_Nothing();
	CALL	_Disp_Nothing
;	;.line	376; ".\Source\App_LCD_4718.c"	UnitExchangeCompleted = TRUE;
	MVL	0x01
	MVF	_UnitExchangeCompleted,1,0
;	;.line	378; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00218_DS_
;	;.line	381; ".\Source\App_LCD_4718.c"	eTempUnit = Fahrenheit;
	MVL	0xa5
	MVF	_eTempUnit,1,0
;	;.line	383; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
	MVL	0x03
	IORF	_LCD5,1,0
	JMP	_00227_DS_
_00218_DS_:
;	;.line	386; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00227_DS_
;	;.line	389; ".\Source\App_LCD_4718.c"	eTempUnit = Centigrade;
	MVL	0x5a
	MVF	_eTempUnit,1,0
;	;.line	391; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
	MVL	0x05
	IORF	_LCD5,1,0
	JMP	_00227_DS_
_00226_DS_:
;	;.line	397; ".\Source\App_LCD_4718.c"	Disp_Nothing();
	CALL	_Disp_Nothing
;	;.line	400; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00223_DS_
;	;.line	403; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
	MVL	0x05
	IORF	_LCD5,1,0
	JMP	_00227_DS_
_00223_DS_:
;	;.line	406; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00227_DS_
;	;.line	409; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
	MVL	0x03
	IORF	_LCD5,1,0
_00227_DS_:
;	;.line	416; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	417; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _UnitExchange_Display
	.ENDFUNC	_UnitExchange_Display
;--------------------------------------------------------

.globl _Disp_BleSymbol

;--------------------------------------------------------
	.FUNC _Disp_BleSymbol:$r:0:0
;--------------------------------------------------------
;	;.line	361; ".\Source\App_LCD_4718.c"	}
_Disp_BleSymbol:	;Function start
	RET	
; exit point of _Disp_BleSymbol
	.ENDFUNC	_Disp_BleSymbol
;--------------------------------------------------------

.globl _Disp_DynamicForecastSymbol

;--------------------------------------------------------
	.FUNC _Disp_DynamicForecastSymbol:$r:0:0
;--------------------------------------------------------
;	;.line	337; ".\Source\App_LCD_4718.c"	}
_Disp_DynamicForecastSymbol:	;Function start
	RET	
; exit point of _Disp_DynamicForecastSymbol
	.ENDFUNC	_Disp_DynamicForecastSymbol
;--------------------------------------------------------

.globl _Disp_DynamicDash

;--------------------------------------------------------
	.FUNC _Disp_DynamicDash:$r:0:0:$C:_Disp_Nothing\
:$L:r0x10B2
;--------------------------------------------------------
;	;.line	309; ".\Source\App_LCD_4718.c"	Disp_Nothing();
_Disp_DynamicDash:	;Function start
	CALL	_Disp_Nothing
	.CHKPARA _Disp_Nothing 0
;	;.line	311; ".\Source\App_LCD_4718.c"	if(sTIMx.TempDetectingSymFlash1Hz == 0)
	MVF	(_sTIMx + 2),0,0
	MVF	r0x10B2,1,0
	TFSZ	_WREG,0
	JMP	_00200_DS_
;	;.line	314; ".\Source\App_LCD_4718.c"	LCD_Dash1_En();
	BSF	_LCD0,5
	JMP	_00202_DS_
_00200_DS_:
;	;.line	317; ".\Source\App_LCD_4718.c"	else if(sTIMx.TempDetectingSymFlash1Hz == 1)
	DCSZ	r0x10B2,0,0
	JMP	_00197_DS_
;	;.line	320; ".\Source\App_LCD_4718.c"	LCD_Dash2_En();
	BSF	_LCD2,1
	JMP	_00202_DS_
_00197_DS_:
;	;.line	325; ".\Source\App_LCD_4718.c"	LCD_Dash3_En();
	BSF	_LCD3,5
_00202_DS_:
;	;.line	327; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _Disp_DynamicDash
	.ENDFUNC	_Disp_DynamicDash
;--------------------------------------------------------

.globl _Disp_Bat

;--------------------------------------------------------
	.FUNC _Disp_Bat:$r:0:0:$C:_Disp_BatFlash\

;--------------------------------------------------------
;	;.line	287; ".\Source\App_LCD_4718.c"	if (sLVD.LVD_Low)
_Disp_Bat:	;Function start
	BTSS	_sLVD,1
	JMP	_00189_DS_
;	;.line	290; ".\Source\App_LCD_4718.c"	Disp_BatFlash();
	CALL	_Disp_BatFlash
	.CHKPARA _Disp_BatFlash 0
	JMP	_00191_DS_
_00189_DS_:
;	;.line	295; ".\Source\App_LCD_4718.c"	LCD_Bat_En();
	BSF	_LCD4,2
_00191_DS_:
;	;.line	297; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _Disp_Bat
	.ENDFUNC	_Disp_Bat
;--------------------------------------------------------

.globl _Disp_BatFlash

;--------------------------------------------------------
	.FUNC _Disp_BatFlash:$r:0:0
;--------------------------------------------------------
;	;.line	268; ".\Source\App_LCD_4718.c"	if(sTIMx.UnitSymbolFlash)
_Disp_BatFlash:	;Function start
	BTSS	(_sTIMx+1),0
	JMP	_00181_DS_
;	;.line	271; ".\Source\App_LCD_4718.c"	LCD_Bat_En();
	BSF	_LCD4,2
	JMP	_00183_DS_
_00181_DS_:
;	;.line	276; ".\Source\App_LCD_4718.c"	LCD_Bat_Clr();
	BCF	_LCD4,2
_00183_DS_:
;	;.line	278; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _Disp_BatFlash
	.ENDFUNC	_Disp_BatFlash
;--------------------------------------------------------

.globl _Disp_UnitFlash

;--------------------------------------------------------
	.FUNC _Disp_UnitFlash:$r:0:0
;--------------------------------------------------------
;	;.line	228; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
_Disp_UnitFlash:	;Function start
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00173_DS_
;	;.line	231; ".\Source\App_LCD_4718.c"	if(sTIMx.UnitSymbolFlash)
	BTSS	(_sTIMx+1),0
	JMP	_00165_DS_
;	;.line	234; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
	MVL	0x05
	IORF	_LCD5,1,0
	JMP	_00175_DS_
_00165_DS_:
;	;.line	239; ".\Source\App_LCD_4718.c"	LCD_Unit_C_Clr();
	MVL	0xfa
	ANDF	_LCD5,1,0
	JMP	_00175_DS_
_00173_DS_:
;	;.line	243; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00175_DS_
;	;.line	246; ".\Source\App_LCD_4718.c"	if(sTIMx.UnitSymbolFlash)
	BTSS	(_sTIMx+1),0
	JMP	_00168_DS_
;	;.line	249; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
	MVL	0x03
	IORF	_LCD5,1,0
	JMP	_00175_DS_
_00168_DS_:
;	;.line	254; ".\Source\App_LCD_4718.c"	LCD_Unit_F_Clr();
	MVL	0xfc
	ANDF	_LCD5,1,0
_00175_DS_:
;	;.line	257; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _Disp_UnitFlash
	.ENDFUNC	_Disp_UnitFlash
;--------------------------------------------------------

.globl _Disp_BLEFlash

;--------------------------------------------------------
	.FUNC _Disp_BLEFlash:$r:0:0
;--------------------------------------------------------
;	;.line	208; ".\Source\App_LCD_4718.c"	if(sTIMx.BLESymbolFlash)
_Disp_BLEFlash:	;Function start
	BTSS	(_sTIMx+1),1
	JMP	_00157_DS_
;	;.line	211; ".\Source\App_LCD_4718.c"	LCD_BLE_En();
	BSF	_LCD1,3
	JMP	_00159_DS_
_00157_DS_:
;	;.line	216; ".\Source\App_LCD_4718.c"	LCD_BLE_Clr();
	BCF	_LCD1,3
_00159_DS_:
;	;.line	218; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _Disp_BLEFlash
	.ENDFUNC	_Disp_BLEFlash
;--------------------------------------------------------

.globl _DispNum

;--------------------------------------------------------
	.FUNC _DispNum:$r:0:2:$C:__divuint:$C:__moduchar:$C:__moduint:$C:__g2ptrget1\
:$C:__g2ptrget2\
:$L:r0x1093:$L:_DispNum_STK00:$L:r0x1095:$L:r0x1094:$L:_DispNum_NumDisp_10000_448\
:$L:r0x1096:$L:r0x1099:$L:r0x109C
;--------------------------------------------------------
;	;.line	101; ".\Source\App_LCD_4718.c"	void DispNum(uint16 num)
_DispNum:	;Function start
	MVF	r0x1093,1,0
;	;.line	107; ".\Source\App_LCD_4718.c"	NumDisp[4] = num / 10000;
	MVL	0x10
	MVF	__divuint_STK02,1,0
	MVL	0x27
	MVF	__divuint_STK01,1,0
	MVF	_DispNum_STK00,0,0
	MVF	__divuint_STK00,1,0
	MVF	r0x1093,0,0
	CALL	__divuint
	.CHKPARA __divuint 4
	MVF	STK00,0,0
	MVF	(_DispNum_NumDisp_10000_448 + 4),1,0
;	;.line	109; ".\Source\App_LCD_4718.c"	NumDisp[3] = num / 1000 % 10;
	MVL	0xe8
	MVF	__divuint_STK02,1,0
	MVL	0x03
	MVF	__divuint_STK01,1,0
	MVF	_DispNum_STK00,0,0
	MVF	__divuint_STK00,1,0
	MVF	r0x1093,0,0
	CALL	__divuint
	MVL	0x0a
	MVF	__moduchar_STK00,1,0
	MVF	STK00,0,0
	CALL	__moduchar
	.CHKPARA __moduchar 2
	MVF	(_DispNum_NumDisp_10000_448 + 3),1,0
;	;.line	111; ".\Source\App_LCD_4718.c"	NumDisp[2] = num / 100 % 10;
	MVL	0x64
	MVF	__divuint_STK02,1,0
	CLRF	__divuint_STK01,0
	MVF	_DispNum_STK00,0,0
	MVF	__divuint_STK00,1,0
	MVF	r0x1093,0,0
	CALL	__divuint
	MVF	r0x1095,1,0
	MVL	0x0a
	MVF	__moduint_STK02,1,0
	CLRF	__moduint_STK01,0
	MVFF	STK00,__moduint_STK00
	MVF	r0x1095,0,0
	CALL	__moduint
	.CHKPARA __moduint 4
	MVF	STK00,0,0
	MVF	(_DispNum_NumDisp_10000_448 + 2),1,0
;	;.line	113; ".\Source\App_LCD_4718.c"	NumDisp[1] = num / 10 % 10;
	MVL	0x0a
	MVF	__divuint_STK02,1,0
	CLRF	__divuint_STK01,0
	MVF	_DispNum_STK00,0,0
	MVF	__divuint_STK00,1,0
	MVF	r0x1093,0,0
	CALL	__divuint
	MVF	r0x1095,1,0
	MVL	0x0a
	MVF	__moduint_STK02,1,0
	CLRF	__moduint_STK01,0
	MVFF	STK00,__moduint_STK00
	MVF	r0x1095,0,0
	CALL	__moduint
	MVF	STK00,0,0
	MVF	(_DispNum_NumDisp_10000_448 + 1),1,0
;	;.line	115; ".\Source\App_LCD_4718.c"	NumDisp[0] = num % 10;
	MVL	0x0a
	MVF	__moduint_STK02,1,0
	CLRF	__moduint_STK01,0
	MVF	_DispNum_STK00,0,0
	MVF	__moduint_STK00,1,0
	MVF	r0x1093,0,0
	CALL	__moduint
	MVF	STK00,0,0
	MVF	(_DispNum_NumDisp_10000_448 + 0),1,0
;	;.line	118; ".\Source\App_LCD_4718.c"	if(eDisplay_Interfaces == Display_MemoryTemperatureNumber)
	MVL	0x0a
	CPSE	_eDisplay_Interfaces,0
	JMP	_00149_DS_
;	;.line	120; ".\Source\App_LCD_4718.c"	NumDisp[4]	= 10;
	MVL	0x0a
	MVF	(_DispNum_NumDisp_10000_448 + 4),1,0
;	;.line	121; ".\Source\App_LCD_4718.c"	NumDisp[3]	= 10;
	MVF	(_DispNum_NumDisp_10000_448 + 3),1,0
;	;.line	122; ".\Source\App_LCD_4718.c"	NumDisp[2]	= 10;
	MVF	(_DispNum_NumDisp_10000_448 + 2),1,0
;	;.line	125; ".\Source\App_LCD_4718.c"	if(NumDisp[1] == 0)
	TFSZ	(_DispNum_NumDisp_10000_448 + 1),0
	JMP	_00142_DS_
;	;.line	127; ".\Source\App_LCD_4718.c"	NumDisp[1] = 10;
	MVL	0x0a
	MVF	(_DispNum_NumDisp_10000_448 + 1),1,0
_00142_DS_:
;	;.line	130; ".\Source\App_LCD_4718.c"	LCD0_Macro = 0x00;
	CLRF	_LCD0,0
;	;.line	132; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[1]] << 4) & 0x30;
	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget1_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget1
	MVF	r0x1093,1,0
	SWPF	r0x1093,0,0
	ANDL	0x30
;	;.line	134; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
	MVF	_LCD1,1,0
;	;.line	136; ".\Source\App_LCD_4718.c"	LCD2_Macro = NUM_CODE[NumDisp[1]]  >> 4;
	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget2_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget2
	MVF	r0x1094,1,0
	SWPF	STK00,0,0
	ANDL	0x0f
	MVF	_DispNum_STK00,1,0
	SWPF	r0x1094,0,0
	MVF	r0x1096,1,0
	ANDL	0xf0
	IORF	_DispNum_STK00,1,0
	XORF	r0x1096,1,0
	MVF	_DispNum_STK00,0,0
	MVF	_LCD2,1,0
;	;.line	138; ".\Source\App_LCD_4718.c"	LCD3_Macro = NUM_CODE[NumDisp[0]];
	MVF	(_DispNum_NumDisp_10000_448 + 0),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget1_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget1
	MVF	_LCD3,1,0
;	;.line	140; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[0]] >> 8) & 0x03;
	MVF	(_DispNum_NumDisp_10000_448 + 0),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget2_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget2
	ANDL	0x03
;	;.line	142; ".\Source\App_LCD_4718.c"	LCD4_Macro = tmp;
	MVF	_LCD4,1,0
;	;.line	144; ".\Source\App_LCD_4718.c"	LCD5_Macro = 0x00;
	CLRF	_LCD5,0
;	;.line	146; ".\Source\App_LCD_4718.c"	LCD6_Macro = 0x00;
	CLRF	_LCD6,0
	JMP	_00151_DS_
_00149_DS_:
;	;.line	151; ".\Source\App_LCD_4718.c"	if(NumDisp[4] == 0)
	TFSZ	(_DispNum_NumDisp_10000_448 + 4),0
	JMP	_00146_DS_
;	;.line	154; ".\Source\App_LCD_4718.c"	if(NumDisp[3] == 0)
	TFSZ	(_DispNum_NumDisp_10000_448 + 3),0
	JMP	_00144_DS_
;	;.line	156; ".\Source\App_LCD_4718.c"	NumDisp[3] = 10;
	MVL	0x0a
	MVF	(_DispNum_NumDisp_10000_448 + 3),1,0
_00144_DS_:
;	;.line	159; ".\Source\App_LCD_4718.c"	LCD0_Macro = NUM_CODE[NumDisp[3]];
	MVF	(_DispNum_NumDisp_10000_448 + 3),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget1_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget1
	MVF	_LCD0,1,0
;	;.line	161; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[3]] >> 8) & 0x03;
	MVF	(_DispNum_NumDisp_10000_448 + 3),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget2_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget2
	ANDL	0x03
	MVF	_DispNum_STK00,1,0
;	;.line	163; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
	MVF	_LCD1,1,0
;	;.line	165; ".\Source\App_LCD_4718.c"	LCD_Hundred_Clr();
	BCF	_LCD0,2
	JMP	_00147_DS_
_00146_DS_:
;	;.line	171; ".\Source\App_LCD_4718.c"	LCD0_Macro = NUM_CODE[NumDisp[3]];
	MVF	(_DispNum_NumDisp_10000_448 + 3),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget2_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget2
;	;.line	173; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[3]] >> 8) & 0x03;
	MVFF	STK00,_LCD0
	ANDL	0x03
	MVF	_DispNum_STK00,1,0
;	;.line	175; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
	MVF	_LCD1,1,0
;	;.line	177; ".\Source\App_LCD_4718.c"	LCD_Hundred_En();
	BSF	_LCD0,2
_00147_DS_:
;	;.line	179; ".\Source\App_LCD_4718.c"	tmp = tmp | (NUM_CODE[NumDisp[2]] << 4 & 0x30);
	MVF	(_DispNum_NumDisp_10000_448 + 2),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget1_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget1
	MVF	r0x1099,1,0
	SWPF	r0x1099,0,0
	ANDL	0x30
	IORF	_DispNum_STK00,0,0
;	;.line	182; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
	MVF	_LCD1,1,0
;	;.line	184; ".\Source\App_LCD_4718.c"	LCD2_Macro = NUM_CODE[NumDisp[2]]  >> 4;
	MVF	(_DispNum_NumDisp_10000_448 + 2),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget2_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget2
	MVF	r0x1099,1,0
	SWPF	STK00,0,0
	ANDL	0x0f
	MVF	_DispNum_STK00,1,0
	SWPF	r0x1099,0,0
	MVF	r0x109C,1,0
	ANDL	0xf0
	IORF	_DispNum_STK00,1,0
	XORF	r0x109C,1,0
	MVF	_DispNum_STK00,0,0
	MVF	_LCD2,1,0
;	;.line	187; ".\Source\App_LCD_4718.c"	LCD3_Macro = NUM_CODE[NumDisp[1]];
	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget1_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget1
	MVF	_LCD3,1,0
;	;.line	189; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[1]] >> 8) & 0x03;
	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_NUM_CODE + 0)
	MVF	__g2ptrget2_STK00,1,0
	MVL	high (_NUM_CODE + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget2
	ANDL	0x03
;	;.line	191; ".\Source\App_LCD_4718.c"	LCD4_Macro = tmp;
	MVF	_LCD4,1,0
;	;.line	193; ".\Source\App_LCD_4718.c"	LCD5_Macro = 0x00;
	CLRF	_LCD5,0
;	;.line	195; ".\Source\App_LCD_4718.c"	LCD6_Macro = 0x00;
	CLRF	_LCD6,0
_00151_DS_:
;	;.line	197; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _DispNum
	.ENDFUNC	_DispNum
;--------------------------------------------------------

.globl _DispDelta

;--------------------------------------------------------
	.FUNC _DispDelta:$r:0:2:$L:r0x108F:$L:_DispDelta_STK00
;--------------------------------------------------------
;	;.line	44; ".\Source\App_LCD_4718.c"	void DispDelta(uint16 temp)
_DispDelta:	;Function start
	MVF	r0x108F,1,0
	MVL	0x5a
;	;.line	49; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
	CPSE	_eTempUnit,0
	JMP	_00134_DS_
;	;.line	52; ".\Source\App_LCD_4718.c"	if(temp >= Fever_Temp_Centigrade)
	MVF	_DispDelta_STK00,0,0
	ADDL	0x3c
	MVL	0xf1
	ADDC	r0x108F,0,0
	BTSS	_STATUS,4
	JMP	_00121_DS_
;	;.line	55; ".\Source\App_LCD_4718.c"	LCD_Delta3_En();
	BSF	_LCD4,4
	JMP	_00136_DS_
_00121_DS_:
;	;.line	58; ".\Source\App_LCD_4718.c"	else if(temp >= Warn_Temp_Centigrade)
	MVF	_DispDelta_STK00,0,0
	ADDL	0x6e
	MVL	0xf1
	ADDC	r0x108F,0,0
	BTSS	_STATUS,4
	JMP	_00118_DS_
;	;.line	61; ".\Source\App_LCD_4718.c"	LCD_Delta2_En();
	BSF	_LCD4,5
	JMP	_00136_DS_
_00118_DS_:
;	;.line	64; ".\Source\App_LCD_4718.c"	else if(temp >= Noamal_Temp_Centigrade)
	MVF	_DispDelta_STK00,0,0
	ADDL	0x04
	MVL	0xf2
	ADDC	r0x108F,0,0
	BTSS	_STATUS,4
	JMP	_00136_DS_
;	;.line	67; ".\Source\App_LCD_4718.c"	LCD_Delta1_En();
	BSF	_LCD4,6
	JMP	_00136_DS_
_00134_DS_:
;	;.line	71; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00136_DS_
;	;.line	74; ".\Source\App_LCD_4718.c"	if(temp >= Fever_Temp_Fahrenheit)
	MVF	_DispDelta_STK00,0,0
	ADDL	0xf0
	MVL	0xd8
	ADDC	r0x108F,0,0
	BTSS	_STATUS,4
	JMP	_00129_DS_
;	;.line	77; ".\Source\App_LCD_4718.c"	LCD_Delta3_En();
	BSF	_LCD4,4
	JMP	_00136_DS_
_00129_DS_:
;	;.line	80; ".\Source\App_LCD_4718.c"	else if(temp >= Warn_Temp_Fahrenheit)
	MVF	_DispDelta_STK00,0,0
	ADDL	0x4a
	MVL	0xd9
	ADDC	r0x108F,0,0
	BTSS	_STATUS,4
	JMP	_00126_DS_
;	;.line	83; ".\Source\App_LCD_4718.c"	LCD_Delta2_En();
	BSF	_LCD4,5
	JMP	_00136_DS_
_00126_DS_:
;	;.line	86; ".\Source\App_LCD_4718.c"	else if(temp >= Noamal_Temp_Fahrenheit)
	MVF	_DispDelta_STK00,0,0
	ADDL	0x58
	MVL	0xda
	ADDC	r0x108F,0,0
	BTSZ	_STATUS,4
;	;.line	89; ".\Source\App_LCD_4718.c"	LCD_Delta1_En();
	BSF	_LCD4,6
_00136_DS_:
;	;.line	93; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _DispDelta
	.ENDFUNC	_DispDelta
;--------------------------------------------------------

.globl _DispUnit

;--------------------------------------------------------
	.FUNC _DispUnit:$r:0:0
;--------------------------------------------------------
;	;.line	26; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
_DispUnit:	;Function start
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00108_DS_
;	;.line	29; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
	MVL	0x05
	IORF	_LCD5,1,0
	JMP	_00110_DS_
_00108_DS_:
;	;.line	32; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00110_DS_
;	;.line	35; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
	MVL	0x03
	IORF	_LCD5,1,0
_00110_DS_:
;	;.line	37; ".\Source\App_LCD_4718.c"	}
	RET	
; exit point of _DispUnit
	.ENDFUNC	_DispUnit
;--------------------------------------------------------

	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$DispUnit$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$DispDelta$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$DispNum$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$_moduchar$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_BatFlash$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Off_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Binding_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Err_Disp$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
	;--cdb--S:LApp_LCD_4718.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
	;--cdb--S:LApp_LCD_4718.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
	;--cdb--S:LApp_LCD_4718.DispDelta._DispDelta_temp_10000_423$temp$2710$423({2}SI:U),R,0,0,[_DispDelta_STK00,r0x108F]
	;--cdb--S:LApp_LCD_4718.DispNum._DispNum_num_10000_447$num$2710$447({2}SI:U),R,0,0,[_DispNum_STK00,r0x1093]
	;--cdb--S:LApp_LCD_4718.DispNum._DispNum_NumDisp_10000_448$NumDisp$2710$448({5}DA5d,SC:U),E,0,0
	;--cdb--S:LApp_LCD_4718.DispNum._DispNum_tmp_10000_448$tmp$2710$448({1}SC:U),R,0,0,[r0x1092]
	;--cdb--S:LApp_LCD_4718.MeasedTemp_Disp._MeasedTemp_Disp_tmp_10000_682$tmp$2710$682({2}SI:U),R,0,0,[r0x10DC,r0x10DD]
	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PRODH$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.globl	_Disp_Off
	.globl	_Disp_Hi
	.globl	_Disp_All
	.globl	_Disp_Orl
	.globl	_Disp_Udr
	.globl	_Disp_Rct
	.globl	_Disp_Bth
	.globl	_Disp_End
	.globl	_Disp_CAL
	.globl	_Disp_Code
	.globl	_Disp_Version
	.globl	_Disp_Nothing
	.globl	_Disp_BrownOut
	.globl	_Disp_Err
	.globl	_Disp_ErrNo
	.globl	_Disp_StaticDash
	.globl	_LCD_Configuration
	.globl	_LCD_Clear_Register
	.globl	_memchrn
	.globl	_Centigrade_Convert_Fahrenheit
	.globl	__divuint
	.globl	__moduchar
	.globl	__moduint
	.globl	_FSR0
	.globl	_FSR1
	.globl	_FSR2
	.globl	_ADCR
	.globl	_sIIC
	.globl	_BIE_Available_Addr
	.globl	_sTIMx
	.globl	_sUARTx
	.globl	_sAutoBps
	.globl	_eAutoBps_Status
	.globl	_sTest
	.globl	_eTempUnit
	.globl	_eBondingTempUnit
	.globl	_eVersionCode
	.globl	_eMeasureMode
	.globl	_eBinding_Status
	.globl	_Enter_PrepareSleep_Flag
	.globl	_sButton
	.globl	_sTimeStamp
	.globl	_eButton_Status
	.globl	_sLVD
	.globl	_sADC
	.globl	_eADCChannel
	.globl	_eSystem_Mode
	.globl	_eBuzzer_Status
	.globl	_Flag_No_Buzzer
	.globl	_sMemory
	.globl	_sMemoryFlag
	.globl	_sActual
	.globl	_sForecast
	.globl	_sTempCal
	.globl	_eMeas_Status
	.globl	_sActual_Forecast
	.globl	_eTo_Actual_Ways
	.globl	_eBle_Sta
	.globl	_sBleStatus
	.globl	_eBacklight_Status
	.globl	_sBacklight
	.globl	_R_Table
	.globl	_CloseTable
	.globl	__g2ptrget1
	.globl	__g2ptrget2

	.globl STK07
	.globl STK07_SAVE
	.globl STK06
	.globl STK06_SAVE
	.globl STK05
	.globl STK05_SAVE
	.globl STK04
	.globl STK04_SAVE
	.globl STK03
	.globl STK03_SAVE
	.globl STK02
	.globl STK02_SAVE
	.globl STK01
	.globl STK01_SAVE
	.globl STK00
	.globl STK00_SAVE
;--------------------------------------------------------
; global -1 declarations
;--------------------------------------------------------
	.globl	_DispUnit
	.globl	_DispDelta
	.globl	_DispNum
	.globl	_Disp_UnitFlash
	.globl	_Disp_BatFlash
	.globl	_Disp_Bat
	.globl	_Disp_DynamicDash
	.globl	_Disp_DynamicForecastSymbol
	.globl	_Disp_BleSymbol
	.globl	_UnitExchange_Display
	.globl	_Off_Display
	.globl	_PreCalibration_Display
	.globl	_Calibration_Display
	.globl	_CalibrationOK_Display
	.globl	_RecentTemp_Display
	.globl	_MemTempNumber_Display
	.globl	_MemTempValue_Display
	.globl	_CurrentMode_Display
	.globl	_ModeExchange_Display
	.globl	_Binding_Display
	.globl	_EMC_Update_Temp_Fast
	.globl	_TempDetecting_Display
	.globl	_Err_Disp
	.globl	_MeasedTemp_Disp
	.globl	_eErr
	.globl	_eDisplay_Interfaces
	.globl	_UnitExchangeCompleted
	.globl	_ERR
	.globl	_NUM_CODE

	.globl	_memcpy
;--------------------------------------------------------
; global -2 definitions
;--------------------------------------------------------
	.area DSEG(DATA)
_eErr:	.ds	1

	.area DSEG(DATA)
_eDisplay_Interfaces:	.ds	1

	.area DSEG(DATA)
_UnitExchangeCompleted:	.ds	1

	.area DSEG(DATA)
_ERR:	.ds	9

	.area DSEG(DATA)
__SWTGTID	.equ	0xA6A6B2CF

	.area DSEG(DATA)
_INDF0	.equ	0x0

	.area DSEG(DATA)
_POINC0	.equ	0x1

	.area DSEG(DATA)
_PODEC0	.equ	0x2

	.area DSEG(DATA)
_PRINC0	.equ	0x3

	.area DSEG(DATA)
_PLUSW0	.equ	0x4

	.area DSEG(DATA)
_INDF1	.equ	0x5

	.area DSEG(DATA)
_POINC1	.equ	0x6

	.area DSEG(DATA)
_PODEC1	.equ	0x7

	.area DSEG(DATA)
_PRINC1	.equ	0x8

	.area DSEG(DATA)
_PLUSW1	.equ	0x9

	.area DSEG(DATA)
_INDF2	.equ	0xA

	.area DSEG(DATA)
_POINC2	.equ	0xB

	.area DSEG(DATA)
_PODEC2	.equ	0xC

	.area DSEG(DATA)
_PRINC2	.equ	0xD

	.area DSEG(DATA)
_PLUSW2	.equ	0xE

	.area DSEG(DATA)
_FSR0H	.equ	0xF

	.area DSEG(DATA)
_FSR0L	.equ	0x10

	.area DSEG(DATA)
_FSR1H	.equ	0x11

	.area DSEG(DATA)
_FSR1L	.equ	0x12

	.area DSEG(DATA)
_FSR2H	.equ	0x13

	.area DSEG(DATA)
_FSR2L	.equ	0x14

	.area DSEG(DATA)
_TOSH	.equ	0x16

	.area DSEG(DATA)
_TOSL	.equ	0x17

	.area DSEG(DATA)
_SKCN	.equ	0x18

	.area DSEG(DATA)
_PCLATH	.equ	0x1A

	.area DSEG(DATA)
_PCLATL	.equ	0x1B

	.area DSEG(DATA)
_TBLPTRH	.equ	0x1D

	.area DSEG(DATA)
_TBLPTRL	.equ	0x1E

	.area DSEG(DATA)
_TBLDH	.equ	0x1F

	.area DSEG(DATA)
_TBLDL	.equ	0x20

	.area DSEG(DATA)
_PRODH	.equ	0x21

	.area DSEG(DATA)
_PRODL	.equ	0x22

	.area DSEG(DATA)
_INTE0	.equ	0x23

	.area DSEG(DATA)
_INTE1	.equ	0x24

	.area DSEG(DATA)
_INTE2	.equ	0x25

	.area DSEG(DATA)
_INTF0	.equ	0x26

	.area DSEG(DATA)
_INTF1	.equ	0x27

	.area DSEG(DATA)
_INTF2	.equ	0x28

	.area DSEG(DATA)
_WREG	.equ	0x29

	.area DSEG(DATA)
_BSRCN	.equ	0x2A

	.area DSEG(DATA)
_STATUS	.equ	0x2B

	.area DSEG(DATA)
_MSTAT	.equ	0x2B

	.area DSEG(DATA)
_PSTAT	.equ	0x2C

	.area DSEG(DATA)
_BIECN	.equ	0x2E

	.area DSEG(DATA)
_BIEARH	.equ	0x2F

	.area DSEG(DATA)
_BIEARL	.equ	0x30

	.area DSEG(DATA)
_BIEDRH	.equ	0x31

	.area DSEG(DATA)
_BIEDRL	.equ	0x32

	.area DSEG(DATA)
_PWRCN	.equ	0x33

	.area DSEG(DATA)
_OSCCN0	.equ	0x34

	.area DSEG(DATA)
_OSCCN1	.equ	0x35

	.area DSEG(DATA)
_OSCCN2	.equ	0x36

	.area DSEG(DATA)
_CSFCN0	.equ	0x37

	.area DSEG(DATA)
_CSFCN1	.equ	0x38

	.area DSEG(DATA)
_WDTCN	.equ	0x39

	.area DSEG(DATA)
_AD1H	.equ	0x3A

	.area DSEG(DATA)
_AD1M	.equ	0x3B

	.area DSEG(DATA)
_AD1L	.equ	0x3C

	.area DSEG(DATA)
_AD1CN0	.equ	0x3D

	.area DSEG(DATA)
_AD1CN1	.equ	0x3E

	.area DSEG(DATA)
_AD1CN2	.equ	0x3F

	.area DSEG(DATA)
_AD1CN3	.equ	0x40

	.area DSEG(DATA)
_AD1CN4	.equ	0x41

	.area DSEG(DATA)
_AD1CN5	.equ	0x42

	.area DSEG(DATA)
_LVDCN	.equ	0x43

	.area DSEG(DATA)
_TMA1CN	.equ	0x44

	.area DSEG(DATA)
_TMA1R	.equ	0x45

	.area DSEG(DATA)
_TMA1C	.equ	0x46

	.area DSEG(DATA)
_TB1FLAG	.equ	0x47

	.area DSEG(DATA)
_TB1CN0	.equ	0x48

	.area DSEG(DATA)
_TB1CN1	.equ	0x49

	.area DSEG(DATA)
_TB1RH	.equ	0x4A

	.area DSEG(DATA)
_TB1RL	.equ	0x4B

	.area DSEG(DATA)
_TB1C0H	.equ	0x4C

	.area DSEG(DATA)
_TB1C0L	.equ	0x4D

	.area DSEG(DATA)
_TB1C1H	.equ	0x4E

	.area DSEG(DATA)
_TB1C1L	.equ	0x4F

	.area DSEG(DATA)
_TB1C2H	.equ	0x50

	.area DSEG(DATA)
_TB1C2L	.equ	0x51

	.area DSEG(DATA)
_TC1CN0	.equ	0x52

	.area DSEG(DATA)
_PT1	.equ	0x53

	.area DSEG(DATA)
_TRISC1	.equ	0x54

	.area DSEG(DATA)
_PT1DA	.equ	0x55

	.area DSEG(DATA)
_PT1PU	.equ	0x56

	.area DSEG(DATA)
_PT1M1	.equ	0x57

	.area DSEG(DATA)
_PT1INT	.equ	0x58

	.area DSEG(DATA)
_PT1INTE	.equ	0x59

	.area DSEG(DATA)
_PT1INTF	.equ	0x5A

	.area DSEG(DATA)
_PT2	.equ	0x5B

	.area DSEG(DATA)
_TRISC2	.equ	0x5C

	.area DSEG(DATA)
_PT2DA	.equ	0x5D

	.area DSEG(DATA)
_PT2PU	.equ	0x5E

	.area DSEG(DATA)
_PT2INT	.equ	0x5F

	.area DSEG(DATA)
_PT2INTE	.equ	0x60

	.area DSEG(DATA)
_PT2INTF	.equ	0x61

	.area DSEG(DATA)
_PT6	.equ	0x62

	.area DSEG(DATA)
_TRISC6	.equ	0x63

	.area DSEG(DATA)
_PT6DA	.equ	0x64

	.area DSEG(DATA)
_PT6PU	.equ	0x65

	.area DSEG(DATA)
_PT7	.equ	0x66

	.area DSEG(DATA)
_TRISC7	.equ	0x67

	.area DSEG(DATA)
_PT7DA	.equ	0x68

	.area DSEG(DATA)
_PT7PU	.equ	0x69

	.area DSEG(DATA)
_PT8	.equ	0x6A

	.area DSEG(DATA)
_TRISC8	.equ	0x6B

	.area DSEG(DATA)
_PT8DA	.equ	0x6C

	.area DSEG(DATA)
_PT8PU	.equ	0x6D

	.area DSEG(DATA)
_SSPCN0	.equ	0x6E

	.area DSEG(DATA)
_SSPSTA0	.equ	0x6F

	.area DSEG(DATA)
_SSPBUF0	.equ	0x70

	.area DSEG(DATA)
_CFG0	.equ	0x71

	.area DSEG(DATA)
_ACT0	.equ	0x72

	.area DSEG(DATA)
_STA0	.equ	0x73

	.area DSEG(DATA)
_CRG0	.equ	0x74

	.area DSEG(DATA)
_TOC0	.equ	0x75

	.area DSEG(DATA)
_RDB0	.equ	0x76

	.area DSEG(DATA)
_TDB0	.equ	0x77

	.area DSEG(DATA)
_SID0	.equ	0x78

	.area DSEG(DATA)
_UR0CN	.equ	0x79

	.area DSEG(DATA)
_UR0STA	.equ	0x7A

	.area DSEG(DATA)
_BA0CN	.equ	0x7B

	.area DSEG(DATA)
_BG0RH	.equ	0x7C

	.area DSEG(DATA)
_BG0RL	.equ	0x7D

	.area DSEG(DATA)
_TX0R	.equ	0x7E

	.area DSEG(DATA)
_RC0REG	.equ	0x7F

	.area DSEG(DATA)
_LCDCN1	.equ	0x180

	.area DSEG(DATA)
_LCDCN2	.equ	0x181

	.area DSEG(DATA)
_LCDCN3	.equ	0x182

	.area DSEG(DATA)
_LCDCN4	.equ	0x183

	.area DSEG(DATA)
_LCDCN5	.equ	0x184

	.area DSEG(DATA)
_LCDCN6	.equ	0x185

	.area DSEG(DATA)
_LCDCN7	.equ	0x186

	.area DSEG(DATA)
_LCDCN8	.equ	0x187

	.area DSEG(DATA)
_LCD0	.equ	0x188

	.area DSEG(DATA)
_LCD1	.equ	0x189

	.area DSEG(DATA)
_LCD2	.equ	0x18A

	.area DSEG(DATA)
_LCD3	.equ	0x18B

	.area DSEG(DATA)
_LCD4	.equ	0x18C

	.area DSEG(DATA)
_LCD5	.equ	0x18D

	.area DSEG(DATA)
_LCD6	.equ	0x18E

	.area DSEG(DATA)
_LCD7	.equ	0x18F

	.area DSEG(DATA)
_LCD8	.equ	0x190

	.area DSEG(DATA)
_LCD9	.equ	0x191

	.area DSEG(DATA)
_UR2CN	.equ	0x192

	.area DSEG(DATA)
_UR2STA	.equ	0x193

	.area DSEG(DATA)
_BA2CN	.equ	0x194

	.area DSEG(DATA)
_BG2RH	.equ	0x195

	.area DSEG(DATA)
_BG2RL	.equ	0x196

	.area DSEG(DATA)
_TX2R	.equ	0x197

	.area DSEG(DATA)
_RC2REG	.equ	0x198

	.area DSEG(DATA)
_TMA2R	.equ	0x1E8

	.area DSEG(DATA)
_TMA2C	.equ	0x1E9

	.area DSEG(DATA)
_LEDCN	.equ	0x1EA

	.area DSEG(DATA)
_IQ0	.equ	0x1EB

	.area DSEG(DATA)
_IQ1	.equ	0x1EC

	.area DSEG(DATA)
_DGCON1	.equ	0x1ED

	.area DSEG(DATA)
_DGCON2	.equ	0x1EE

	.area DSEG(DATA)
_ADCRH	.equ	0x3A

	.area DSEG(DATA)
_ADCRM	.equ	0x3B

	.area DSEG(DATA)
_ADCRL	.equ	0x3C

	.area DSEG(DATA)
_TEMDATA	.equ	0x2E0

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
	.area IDATA (DATA,REL,CON); pre-def
	.area IDATAROM (CODE,REL,CON); pre-def
	.area UDATA (DATA,REL,CON); pre-def
	.area UDATA (DATA,REL,CON) ;UDL_App_LCD_4718_0	udata
r0x108F:	.ds	1
r0x1093:	.ds	1
r0x1094:	.ds	1
r0x1095:	.ds	1
r0x1096:	.ds	1
r0x1099:	.ds	1
r0x109C:	.ds	1
r0x10B2:	.ds	1
r0x10C7:	.ds	1
r0x10DC:	.ds	1
r0x10DD:	.ds	1
	.area LOCALSTK (STK); local stack var
_DispDelta_STK00:	.ds	1
	.globl _DispDelta_STK00
_DispNum_STK00:	.ds	1
	.globl _DispNum_STK00
	.globl __divuint_STK02
	.globl __divuint_STK01
	.globl __divuint_STK00
_DispNum_NumDisp_10000_448:	.ds	5
	.globl __moduchar_STK00
	.globl __moduint_STK02
	.globl __moduint_STK01
	.globl __moduint_STK00
	.globl __g2ptrget1_STK00
	.globl __g2ptrget2_STK00
	.globl _memchrn_STK02
	.globl _memchrn_STK01
	.globl _memchrn_STK00
	.globl _Centigrade_Convert_Fahrenheit_STK00
	.globl _Disp_Code_STK00
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

	.area	CONST   (CODE)	 ;App_LCD_4718-0-code, const

_NUM_CODE:
	.byte #0x53, #0x03	; 851
	.byte #0x00, #0x03	; 768
	.byte #0x72, #0x01	; 370
	.byte #0x70, #0x03	; 880
	.byte #0x21, #0x03	; 801
	.byte #0x71, #0x02	; 625
	.byte #0x73, #0x02	; 627
	.byte #0x10, #0x03	; 784
	.byte #0x73, #0x03	; 883
	.byte #0x71, #0x03	; 881
	.byte #0x00, #0x00	; 0

;--------------------------------------------------------
; initialized data - mirror
;--------------------------------------------------------

	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
	;Following is optimization info, 
	;xxcdbxxW:dst:src+offset:srclit:just-remove
	;--cdb--W:r0x10DC:NULL+0:-1:0
	;--cdb--W:r0x10DD:NULL+0:-1:0
	;--cdb--W:r0x10D6:NULL+0:-1:0
	;--cdb--W:r0x10D7:NULL+0:-1:0
	;--cdb--W:r0x10D0:NULL+0:-1:0
	;--cdb--W:r0x10D1:NULL+0:-1:0
	;--cdb--W:r0x10D0:NULL+0:-1:1
	;--cdb--W:r0x10D1:NULL+0:-1:1
	;--cdb--W:r0x10CC:STK00+0:-1:0
	;--cdb--W:r0x10CC:NULL+0:-1:0
	;--cdb--W:r0x10CE:STK01+0:-1:0
	;--cdb--W:r0x10CB:NULL+0:-1:0
	;--cdb--W:r0x10C7:NULL+0:-1:1
	;--cdb--W:r0x10C8:NULL+0:-1:1
	;--cdb--W:r0x10C7:NULL+0:-1:0
	;--cdb--W:r0x10C8:NULL+0:-1:0
	;--cdb--W:r0x10C9:NULL+0:0:0
	;--cdb--W:r0x10C9:NULL+0:-1:1
	;--cdb--W:r0x10C1:STK00+0:-1:0
	;--cdb--W:r0x10C1:NULL+0:-1:0
	;--cdb--W:r0x10C3:STK01+0:-1:0
	;--cdb--W:r0x10C0:NULL+0:-1:0
	;--cdb--W:r0x10B8:NULL+0:-1:1
	;--cdb--W:r0x10B8:NULL+0:-1:0
	;--cdb--W:r0x10B9:NULL+0:-1:0
	;--cdb--W:r0x10B9:NULL+0:-1:1
	;--cdb--W:r0x1095:NULL+0:-1:1
	;--cdb--W:r0x1094:NULL+0:-1:1
	;--cdb--W:r0x1093:NULL+0:-1:1
	;--cdb--W:_DispNum_STK00:NULL+0:-1:1
	;--cdb--W:r0x1097:NULL+0:-1:1
	;--cdb--W:r0x1099:NULL+0:-1:1
	;--cdb--W:r0x109C:NULL+0:-1:1
	;--cdb--W:r0x109E:NULL+0:-1:1
	;--cdb--W:r0x1093:STK00+0:-1:0
	;--cdb--W:r0x1093:r0x1096+1:-1:0
	;--cdb--W:r0x1093:r0x1098+1:-1:0
	;--cdb--W:r0x1093:r0x109C+1:-1:0
	;--cdb--W:r0x1094:STK00+0:-1:0
	;--cdb--W:r0x1096:STK00+0:-1:0
	;--cdb--W:r0x1099:r0x109A+1:-1:0
	;--cdb--W:r0x1096:NULL+0:-1:1
	;--cdb--W:r0x1098:NULL+0:-1:1
	;--cdb--W:r0x109A:NULL+0:-1:1
	;--cdb--W:r0x109B:NULL+0:-1:1
	;--cdb--W:r0x109D:NULL+0:-1:1
	;--c2db--RNG$_DispDelta_temp_10000_423$2009$2076
	;--c2db--RNG$_DispNum_num_10000_447$1712$1783
	;--c2db--RNG$_DispNum_tmp_10000_448$1903$1941
	;--c2db--RNG$_MeasedTemp_Disp_tmp_10000_682$540$564
	END
