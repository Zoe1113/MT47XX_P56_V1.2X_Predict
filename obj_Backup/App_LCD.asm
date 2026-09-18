;--------------------------------------------------------
; File Created by SDCC : open source ANSI-C Compiler modified for HYCON CPU
; Version 4.0.4 #65ee8b859 (MSVC)
;--------------------------------------------------------
; Port for HYCON CPU
;--------------------------------------------------------
;	;CCFROM:"F:\陈宇航\001 程序\000 最新程序20230301(增加839，930，新增高精度判稳≤0.01)\DMT2022050508p"
;;	.file	".\Source\App_LCD.c"
	.module App_LCD
	;.list	p=HY17P56
	;--cdb--T:FApp_LCD$__00000000[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000010[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000001[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000011[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000002[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000012[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000003[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000013[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000004[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000014[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000005[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_2S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_1S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB1$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB2$1:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000015[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$F_Receive_First$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Port_Ble_PowerOn$0$0({1}SB6$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000006[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000016[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000007[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000008[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
	;--cdb--T:FApp_LCD$__00000009[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({2}DA1d,SI:U),Z,0,0)]
	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
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
	;--cdb--F:App_LCD:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
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
	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
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
	;--cdb--F:App_LCD:G$DispUnit$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$DispDelta$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$DispDelta$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$DispNum$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$DispNum$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Off_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$Off_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Binding_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$Binding_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Err_Disp$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$Err_Disp$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_LCD:G$LCD_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
.area CCODE (code,REL,CON) ; App_LCD-code 
.globl _LCD_Display

;--------------------------------------------------------
	.FUNC _LCD_Display:0:$C:_Disp_BrownOut:$C:_Disp_All:$C:_UnitExchange_Display:$C:_Disp_Bat\
:$C:_Disp_Version:$C:_Disp_BleSymbol:$C:_Disp_Code:$C:_Off_Display:$C:_PreCalibration_Display\
:$C:_Calibration_Display:$C:_CalibrationOK_Display:$C:_RecentTemp_Display:$C:_MemTempNumber_Display:$C:_MemTempValue_Display\
:$C:_CurrentMode_Display:$C:_ModeExchange_Display:$C:_Binding_Display:$C:_TempDetecting_Display:$C:_Err_Disp\
:$C:_MeasedTemp_Disp:$C:_Disp_Nothing\

;--------------------------------------------------------
;	;.line	1251; ".\Source\App_LCD.c"	if(sTIMx.LCDRefreshFlag)
_LCD_Display:	;Function start
	BTSS	_sTIMx,1
	JMP	_00538_DS_
;	;.line	1254; ".\Source\App_LCD.c"	sTIMx.LCDRefreshFlag = FALSE;
	BCF	_sTIMx,1
;	;.line	1255; ".\Source\App_LCD.c"	switch(eDisplay_Interfaces)
	MVL	0x14
	CPSL	_eDisplay_Interfaces,0
	JMP	_00538_DS_
	MVL	HIGHD2(_00557_DS_)
	MVF	_PCLATH,1,0
	MVF	_eDisplay_Interfaces,0,0
	ADDL	D2(_00557_DS_)
	BTSZ	_STATUS,4
	INF	_PCLATH,1,0
	MVF	_PCLATL,1,0
_00557_DS_:
	RJ	_00538_DS_
	RJ	_00511_DS_
	RJ	_00512_DS_
	RJ	_00515_DS_
	RJ	_00516_DS_
	RJ	_00517_DS_
	RJ	_00518_DS_
	RJ	_00520_DS_
	RJ	_00521_DS_
	RJ	_00522_DS_
	RJ	_00523_DS_
	RJ	_00526_DS_
	RJ	_00527_DS_
	RJ	_00528_DS_
	RJ	_00529_DS_
	RJ	_00530_DS_
	RJ	_00531_DS_
	RJ	_00532_DS_
	RJ	_00533_DS_
	RJ	_00519_DS_
_00511_DS_:
;	;.line	1265; ".\Source\App_LCD.c"	Disp_BrownOut();
	CALL	_Disp_BrownOut
	.CHKPARA _Disp_BrownOut 0
;	;.line	1266; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00512_DS_:
;	;.line	1271; ".\Source\App_LCD.c"	Disp_All();
	CALL	_Disp_All
	.CHKPARA _Disp_All 0
;	;.line	1273; ".\Source\App_LCD.c"	if(!sBacklight.Backlight2SFlag)
	BTSZ	_sBacklight,0
	JMP	_00538_DS_
;	;.line	1275; ".\Source\App_LCD.c"	sBacklight.Backlight2SFlag = TRUE;
	BSF	_sBacklight,0
;	;.line	1277; ".\Source\App_LCD.c"	eBacklight_Status = All_Backlight;
	MVL	0x01
	MVF	_eBacklight_Status,1,0
;	;.line	1279; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00515_DS_:
;	;.line	1284; ".\Source\App_LCD.c"	UnitExchange_Display();
	CALL	_UnitExchange_Display
	.CHKPARA _UnitExchange_Display 0
;	;.line	1287; ".\Source\App_LCD.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1289; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00516_DS_:
;	;.line	1294; ".\Source\App_LCD.c"	Disp_Version(Soft_External_Version);
	MVL	0x0b
	CALL	_Disp_Version
	.CHKPARA _Disp_Version 1
;	;.line	1296; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	1297; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00517_DS_:
;	;.line	1302; ".\Source\App_LCD.c"	Disp_Code(Soft_Code);
	MVL	0x9a
	MVF	_Disp_Code_STK00,1,0
	MVL	0x03
	CALL	_Disp_Code
	.CHKPARA _Disp_Code 2
;	;.line	1304; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	1305; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00518_DS_:
;	;.line	1310; ".\Source\App_LCD.c"	Off_Display();
	CALL	_Off_Display
	.CHKPARA _Off_Display 0
;	;.line	1311; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00519_DS_:
;	;.line	1316; ".\Source\App_LCD.c"	PreCalibration_Display();
	CALL	_PreCalibration_Display
	.CHKPARA _PreCalibration_Display 0
;	;.line	1317; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00520_DS_:
;	;.line	1322; ".\Source\App_LCD.c"	Calibration_Display();
	CALL	_Calibration_Display
	.CHKPARA _Calibration_Display 0
;	;.line	1323; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00521_DS_:
;	;.line	1328; ".\Source\App_LCD.c"	CalibrationOK_Display();
	CALL	_CalibrationOK_Display
	.CHKPARA _CalibrationOK_Display 0
;	;.line	1331; ".\Source\App_LCD.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1333; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00522_DS_:
;	;.line	1338; ".\Source\App_LCD.c"	RecentTemp_Display();
	CALL	_RecentTemp_Display
	.CHKPARA _RecentTemp_Display 0
;	;.line	1341; ".\Source\App_LCD.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1343; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00523_DS_:
;	;.line	1348; ".\Source\App_LCD.c"	MemTempNumber_Display();
	CALL	_MemTempNumber_Display
	.CHKPARA _MemTempNumber_Display 0
;	;.line	1350; ".\Source\App_LCD.c"	if(!sBacklight.Backlight2SFlag)
	BTSZ	_sBacklight,0
	JMP	_00525_DS_
;	;.line	1353; ".\Source\App_LCD.c"	sBacklight.Backlight2SFlag = TRUE;
	BSF	_sBacklight,0
;	;.line	1355; ".\Source\App_LCD.c"	eBacklight_Status = MemTemp_Backlight;
	MVL	0x02
	MVF	_eBacklight_Status,1,0
_00525_DS_:
;	;.line	1359; ".\Source\App_LCD.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1361; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00526_DS_:
;	;.line	1366; ".\Source\App_LCD.c"	MemTempValue_Display();
	CALL	_MemTempValue_Display
	.CHKPARA _MemTempValue_Display 0
;	;.line	1369; ".\Source\App_LCD.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1371; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00527_DS_:
;	;.line	1377; ".\Source\App_LCD.c"	CurrentMode_Display();
	CALL	_CurrentMode_Display
	.CHKPARA _CurrentMode_Display 0
;	;.line	1379; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	1382; ".\Source\App_LCD.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1384; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00528_DS_:
;	;.line	1389; ".\Source\App_LCD.c"	ModeExchange_Display();
	CALL	_ModeExchange_Display
	.CHKPARA _ModeExchange_Display 0
;	;.line	1391; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	1394; ".\Source\App_LCD.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1396; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00529_DS_:
;	;.line	1401; ".\Source\App_LCD.c"	Binding_Display();
	CALL	_Binding_Display
	.CHKPARA _Binding_Display 0
;	;.line	1403; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	1404; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00530_DS_:
;	;.line	1409; ".\Source\App_LCD.c"	TempDetecting_Display();
	CALL	_TempDetecting_Display
	.CHKPARA _TempDetecting_Display 0
;	;.line	1421; ".\Source\App_LCD.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1423; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00531_DS_:
;	;.line	1428; ".\Source\App_LCD.c"	Err_Disp();
	CALL	_Err_Disp
	.CHKPARA _Err_Disp 0
;	;.line	1430; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	1433; ".\Source\App_LCD.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1435; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00532_DS_:
;	;.line	1440; ".\Source\App_LCD.c"	MeasedTemp_Disp();
	CALL	_MeasedTemp_Disp
	.CHKPARA _MeasedTemp_Disp 0
;	;.line	1442; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	1445; ".\Source\App_LCD.c"	Disp_Bat();
	CALL	_Disp_Bat
	.CHKPARA _Disp_Bat 0
;	;.line	1447; ".\Source\App_LCD.c"	break;
	JMP	_00538_DS_
_00533_DS_:
;	;.line	1452; ".\Source\App_LCD.c"	Disp_Nothing();
	CALL	_Disp_Nothing
	.CHKPARA _Disp_Nothing 0
_00538_DS_:
;	;.line	1458; ".\Source\App_LCD.c"	}
	RET	
; exit point of _LCD_Display
	.ENDFUNC	_LCD_Display
;--------------------------------------------------------

.globl _MeasedTemp_Disp

;--------------------------------------------------------
	.FUNC _MeasedTemp_Disp:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_Hi:$C:_DispNum:$C:_DispDelta\
:$C:_DispUnit\
:$L:r0x10D0:$L:r0x10D1
;--------------------------------------------------------
;	;.line	1045; ".\Source\App_LCD.c"	if(sTempCal.Reset_From_CalOK)
_MeasedTemp_Disp:	;Function start
	BTSS	_sTempCal,5
	JMP	_00497_DS_
;	;.line	1048; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00481_DS_
;	;.line	1051; ".\Source\App_LCD.c"	if(sTIMx.ForecastJudgeOKTempFlash)
	BTSS	_sTIMx,6
	JMP	_00467_DS_
;	;.line	1053; ".\Source\App_LCD.c"	tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
	MVF	(_sActual_Forecast + 13),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sActual_Forecast + 14),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	.CHKPARA _Centigrade_Convert_Fahrenheit 2
	MVF	r0x10D1,1,0
	MVF	STK00,0,0
	MVF	r0x10D0,1,0
;	;.line	1055; ".\Source\App_LCD.c"	if(tmp > High_Temp_Centigrade)
	ADDL	0xd9
	MVL	0xee
	ADDC	r0x10D1,0,0
	BTSS	_STATUS,4
	JMP	_00461_DS_
;	;.line	1058; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00462_DS_
_00461_DS_:
;	;.line	1063; ".\Source\App_LCD.c"	DispNum(tmp);
	MVF	r0x10D0,0,0
	MVF	_DispNum_STK00,1,0
	MVF	r0x10D1,0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	1065; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
_00462_DS_:
;	;.line	1071; ".\Source\App_LCD.c"	DispDelta(tmp);
	MVF	r0x10D0,0,0
	MVF	_DispDelta_STK00,1,0
	MVF	r0x10D1,0,0
	CALL	_DispDelta
	.CHKPARA _DispDelta 2
	JMP	_00482_DS_
_00467_DS_:
;	;.line	1081; ".\Source\App_LCD.c"	tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
	MVF	(_sForecast + 20),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sForecast + 21),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	.CHKPARA _Centigrade_Convert_Fahrenheit 2
	MVF	r0x10D1,1,0
	MVF	STK00,0,0
	MVF	r0x10D0,1,0
;	;.line	1083; ".\Source\App_LCD.c"	if(tmp > High_Temp_Centigrade)
	ADDL	0xd9
	MVL	0xee
	ADDC	r0x10D1,0,0
	BTSS	_STATUS,4
	JMP	_00464_DS_
;	;.line	1086; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00465_DS_
_00464_DS_:
;	;.line	1091; ".\Source\App_LCD.c"	DispNum(tmp);
	MVF	r0x10D0,0,0
	MVF	_DispNum_STK00,1,0
	MVF	r0x10D1,0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	1093; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
_00465_DS_:
;	;.line	1099; ".\Source\App_LCD.c"	DispDelta(tmp);
	MVF	r0x10D0,0,0
	MVF	_DispDelta_STK00,1,0
	MVF	r0x10D1,0,0
	CALL	_DispDelta
	.CHKPARA _DispDelta 2
	JMP	_00482_DS_
_00481_DS_:
;	;.line	1109; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00482_DS_
;	;.line	1112; ".\Source\App_LCD.c"	if(sTIMx.ForecastJudgeOKTempFlash)
	BTSS	_sTIMx,6
	JMP	_00476_DS_
;	;.line	1114; ".\Source\App_LCD.c"	tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
	MVF	(_sActual_Forecast + 13),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sActual_Forecast + 14),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	.CHKPARA _Centigrade_Convert_Fahrenheit 2
	MVF	r0x10D1,1,0
	MVF	STK00,0,0
	MVF	r0x10D0,1,0
;	;.line	1116; ".\Source\App_LCD.c"	if(tmp > High_Temp_Fahrenheit)
	ADDL	0xa3
	MVL	0xd4
	ADDC	r0x10D1,0,0
	BTSS	_STATUS,4
	JMP	_00470_DS_
;	;.line	1119; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00471_DS_
_00470_DS_:
;	;.line	1124; ".\Source\App_LCD.c"	DispNum(tmp);
	MVF	r0x10D0,0,0
	MVF	_DispNum_STK00,1,0
	MVF	r0x10D1,0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	1126; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
_00471_DS_:
;	;.line	1132; ".\Source\App_LCD.c"	DispDelta(tmp);
	MVF	r0x10D0,0,0
	MVF	_DispDelta_STK00,1,0
	MVF	r0x10D1,0,0
	CALL	_DispDelta
	.CHKPARA _DispDelta 2
	JMP	_00482_DS_
_00476_DS_:
;	;.line	1142; ".\Source\App_LCD.c"	tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
	MVF	(_sForecast + 20),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sForecast + 21),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	.CHKPARA _Centigrade_Convert_Fahrenheit 2
	MVF	r0x10D1,1,0
	MVF	STK00,0,0
	MVF	r0x10D0,1,0
;	;.line	1144; ".\Source\App_LCD.c"	if(tmp > High_Temp_Fahrenheit)
	ADDL	0xa3
	MVL	0xd4
	ADDC	r0x10D1,0,0
	BTSS	_STATUS,4
	JMP	_00473_DS_
;	;.line	1147; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00474_DS_
_00473_DS_:
;	;.line	1152; ".\Source\App_LCD.c"	DispNum(tmp);
	MVF	r0x10D0,0,0
	MVF	_DispNum_STK00,1,0
	MVF	r0x10D1,0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	1154; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
_00474_DS_:
;	;.line	1160; ".\Source\App_LCD.c"	DispDelta(tmp);
	MVF	r0x10D0,0,0
	MVF	_DispDelta_STK00,1,0
	MVF	r0x10D1,0,0
	CALL	_DispDelta
	.CHKPARA _DispDelta 2
_00482_DS_:
;	;.line	1170; ".\Source\App_LCD.c"	DispUnit();
	CALL	_DispUnit
	.CHKPARA _DispUnit 0
	JMP	_00498_DS_
_00497_DS_:
;	;.line	1175; ".\Source\App_LCD.c"	if(!sADC.UnRefreshTemp)
	BTSZ	_sADC,4
	JMP	_00484_DS_
;	;.line	1178; ".\Source\App_LCD.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
	MVF	(_sActual_Forecast + 3),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sActual_Forecast + 4),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	.CHKPARA _Centigrade_Convert_Fahrenheit 2
	MVFF	STK00,(_sActual_Forecast + 5)
	MVF	(_sActual_Forecast + 6),1,0
_00484_DS_:
;	;.line	1182; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00494_DS_
;	;.line	1185; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd9
	MVL	0xee
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00486_DS_
;	;.line	1188; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00495_DS_
_00486_DS_:
;	;.line	1193; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	1195; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
	JMP	_00495_DS_
_00494_DS_:
;	;.line	1199; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00495_DS_
;	;.line	1202; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xa3
	MVL	0xd4
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00489_DS_
;	;.line	1205; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00495_DS_
_00489_DS_:
;	;.line	1210; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	1212; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
_00495_DS_:
;	;.line	1217; ".\Source\App_LCD.c"	DispUnit();
	CALL	_DispUnit
	.CHKPARA _DispUnit 0
;	;.line	1222; ".\Source\App_LCD.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispDelta_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispDelta
	.CHKPARA _DispDelta 2
_00498_DS_:
;	;.line	1233; ".\Source\App_LCD.c"	if(sForecast.Update_MaxTemp3Min_Arrived && !sTempCal.Reset_From_CalOK)
	BTSZ	_sForecast,1
	BTSZ	_sTempCal,5
	JMP	_00502_DS_
;	;.line	1235; ".\Source\App_LCD.c"	LCD_ForecastP1P2_Clr();
	MVL	0xf9
	ANDF	_LCD4,1,0
	JMP	_00505_DS_
_00502_DS_:
;	;.line	1237; ".\Source\App_LCD.c"	else if(sForecast.Forecast_Start)
	BTSS	_sForecast,0
	JMP	_00505_DS_
;	;.line	1239; ".\Source\App_LCD.c"	LCD_ForecastP1P2_En();
	MVL	0x06
	IORF	_LCD4,1,0
_00505_DS_:
;	;.line	1241; ".\Source\App_LCD.c"	}
	RET	
; exit point of _MeasedTemp_Disp
	.ENDFUNC	_MeasedTemp_Disp
;--------------------------------------------------------

.globl _Err_Disp

;--------------------------------------------------------
	.FUNC _Err_Disp:0:$C:_Disp_ErrNo:$C:_Disp_Err\

;--------------------------------------------------------
;	;.line	985; ".\Source\App_LCD.c"	if(ERR[Err4])
_Err_Disp:	;Function start
	RRF	(_ERR + 4),0,0
	BTSZ	_STATUS,0
	JMP	_00453_DS_
;	;.line	989; ".\Source\App_LCD.c"	Disp_ErrNo(Err4);
	MVL	0x04
	CALL	_Disp_ErrNo
	.CHKPARA _Disp_ErrNo 1
	JMP	_00455_DS_
_00453_DS_:
;	;.line	991; ".\Source\App_LCD.c"	else if(ERR[Err0])
	RRF	(_ERR + 0),0,0
	BTSZ	_STATUS,0
	JMP	_00450_DS_
;	;.line	995; ".\Source\App_LCD.c"	Disp_ErrNo(Err0);
	MVL	0x00
	CALL	_Disp_ErrNo
	.CHKPARA _Disp_ErrNo 1
	JMP	_00455_DS_
_00450_DS_:
;	;.line	997; ".\Source\App_LCD.c"	else if(ERR[Err5])
	RRF	(_ERR + 5),0,0
	BTSZ	_STATUS,0
	JMP	_00447_DS_
;	;.line	1001; ".\Source\App_LCD.c"	Disp_ErrNo(Err5);
	MVL	0x05
	CALL	_Disp_ErrNo
	.CHKPARA _Disp_ErrNo 1
	JMP	_00455_DS_
_00447_DS_:
;	;.line	1003; ".\Source\App_LCD.c"	else if(ERR[Err1])
	RRF	(_ERR + 1),0,0
	BTSZ	_STATUS,0
	JMP	_00444_DS_
;	;.line	1006; ".\Source\App_LCD.c"	Disp_ErrNo(Err1);
	MVL	0x01
	CALL	_Disp_ErrNo
	.CHKPARA _Disp_ErrNo 1
	JMP	_00455_DS_
_00444_DS_:
;	;.line	1008; ".\Source\App_LCD.c"	else if(ERR[Err6])
	RRF	(_ERR + 6),0,0
	BTSZ	_STATUS,0
	JMP	_00441_DS_
;	;.line	1011; ".\Source\App_LCD.c"	Disp_ErrNo(Err6);
	MVL	0x06
	CALL	_Disp_ErrNo
	.CHKPARA _Disp_ErrNo 1
	JMP	_00455_DS_
_00441_DS_:
;	;.line	1013; ".\Source\App_LCD.c"	else if(ERR[Err2])
	RRF	(_ERR + 2),0,0
	BTSZ	_STATUS,0
	JMP	_00438_DS_
;	;.line	1016; ".\Source\App_LCD.c"	Disp_ErrNo(Err2);
	MVL	0x02
	CALL	_Disp_ErrNo
	.CHKPARA _Disp_ErrNo 1
	JMP	_00455_DS_
_00438_DS_:
;	;.line	1018; ".\Source\App_LCD.c"	else if(ERR[Err3])
	RRF	(_ERR + 3),0,0
	BTSZ	_STATUS,0
	JMP	_00435_DS_
;	;.line	1021; ".\Source\App_LCD.c"	Disp_ErrNo(Err3);
	MVL	0x03
	CALL	_Disp_ErrNo
	.CHKPARA _Disp_ErrNo 1
	JMP	_00455_DS_
_00435_DS_:
;	;.line	1023; ".\Source\App_LCD.c"	else if(ERR[Err])
	RRF	(_ERR + 8),0,0
	BTSZ	_STATUS,0
	JMP	_00432_DS_
;	;.line	1026; ".\Source\App_LCD.c"	Disp_Err();
	CALL	_Disp_Err
	.CHKPARA _Disp_Err 0
	JMP	_00455_DS_
_00432_DS_:
;	;.line	1028; ".\Source\App_LCD.c"	else if(ERR[Err7])
	RRF	(_ERR + 7),0,0
	BTSZ	_STATUS,0
	JMP	_00455_DS_
;	;.line	1031; ".\Source\App_LCD.c"	Disp_ErrNo(Err7);
	MVL	0x07
	CALL	_Disp_ErrNo
	.CHKPARA _Disp_ErrNo 1
_00455_DS_:
;	;.line	1033; ".\Source\App_LCD.c"	}
	RET	
; exit point of _Err_Disp
	.ENDFUNC	_Err_Disp
;--------------------------------------------------------

.globl _TempDetecting_Display

;--------------------------------------------------------
	.FUNC _TempDetecting_Display:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_Hi:$C:_EMC_Update_Temp_Fast:$C:_Disp_StaticDash\
:$C:_DispNum:$C:_Disp_UnitFlash:$C:_Disp_DynamicDash:$C:_Disp_DynamicForecastSymbol:$C:_DispUnit\
:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	866; ".\Source\App_LCD.c"	if((eMeasureMode == Bath_Mode) || sActual.Actual_Start)
_TempDetecting_Display:	;Function start
	MVF	_eMeasureMode,0,0
	XORL	0x03
	BTSZ	_STATUS,0
	JMP	_00382_DS_
	BTSS	_sActual,0
	JMP	_00383_DS_
_00382_DS_:
;	;.line	872; ".\Source\App_LCD.c"	if(!sADC.UnRefreshTemp)
	BTSZ	_sADC,4
	JMP	_00378_DS_
;	;.line	878; ".\Source\App_LCD.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
	MVF	(_sActual_Forecast + 3),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sActual_Forecast + 4),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	.CHKPARA _Centigrade_Convert_Fahrenheit 2
	MVFF	STK00,(_sActual_Forecast + 5)
	MVF	(_sActual_Forecast + 6),1,0
;	;.line	881; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00375_DS_
;	;.line	884; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd9
	MVL	0xee
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00364_DS_
;	;.line	887; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
;	;.line	889; ".\Source\App_LCD.c"	EMC_Update_Temp_Fast();
	CALL	_EMC_Update_Temp_Fast
	.CHKPARA _EMC_Update_Temp_Fast 0
	JMP	_00378_DS_
_00364_DS_:
;	;.line	892; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0x80
	MVL	0xf3
	ADDC	(_sActual_Forecast + 6),0,0
	BTSZ	_STATUS,4
	JMP	_00361_DS_
;	;.line	902; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	.CHKPARA _Disp_StaticDash 0
	JMP	_00378_DS_
_00361_DS_:
;	;.line	908; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	910; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
;	;.line	912; ".\Source\App_LCD.c"	EMC_Update_Temp_Fast();
	CALL	_EMC_Update_Temp_Fast
	.CHKPARA _EMC_Update_Temp_Fast 0
	JMP	_00378_DS_
_00375_DS_:
;	;.line	916; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00378_DS_
;	;.line	919; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xa3
	MVL	0xd4
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00370_DS_
;	;.line	922; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
;	;.line	924; ".\Source\App_LCD.c"	EMC_Update_Temp_Fast();
	CALL	_EMC_Update_Temp_Fast
	.CHKPARA _EMC_Update_Temp_Fast 0
	JMP	_00378_DS_
_00370_DS_:
;	;.line	927; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
	MVL	0x23
	CPSL	(_sActual_Forecast + 6),0
	JMP	_00367_DS_
;	;.line	937; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	.CHKPARA _Disp_StaticDash 0
	JMP	_00378_DS_
_00367_DS_:
;	;.line	943; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	945; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
;	;.line	947; ".\Source\App_LCD.c"	EMC_Update_Temp_Fast();
	CALL	_EMC_Update_Temp_Fast
	.CHKPARA _EMC_Update_Temp_Fast 0
_00378_DS_:
;	;.line	952; ".\Source\App_LCD.c"	Disp_UnitFlash();
	CALL	_Disp_UnitFlash
	.CHKPARA _Disp_UnitFlash 0
;	;.line	954; ".\Source\App_LCD.c"	LCD_ForecastP1P2_Clr();
	MVL	0xf9
	ANDF	_LCD4,1,0
	JMP	_00384_DS_
_00383_DS_:
;	;.line	958; ".\Source\App_LCD.c"	if(sForecast.Forecast_Start)
	BTSS	_sForecast,0
	JMP	_00380_DS_
;	;.line	960; ".\Source\App_LCD.c"	Disp_DynamicDash();
	CALL	_Disp_DynamicDash
	.CHKPARA _Disp_DynamicDash 0
;	;.line	961; ".\Source\App_LCD.c"	Disp_DynamicForecastSymbol();
	CALL	_Disp_DynamicForecastSymbol
	.CHKPARA _Disp_DynamicForecastSymbol 0
	JMP	_00381_DS_
_00380_DS_:
;	;.line	966; ".\Source\App_LCD.c"	Disp_StaticDash();
	CALL	_Disp_StaticDash
	.CHKPARA _Disp_StaticDash 0
;	;.line	968; ".\Source\App_LCD.c"	LCD_ForecastP2_En();
	BSF	_LCD4,2
_00381_DS_:
;	;.line	972; ".\Source\App_LCD.c"	DispUnit();
	CALL	_DispUnit
	.CHKPARA _DispUnit 0
_00384_DS_:
;	;.line	975; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	976; ".\Source\App_LCD.c"	}
	RET	
; exit point of _TempDetecting_Display
	.ENDFUNC	_TempDetecting_Display
;--------------------------------------------------------

.globl _EMC_Update_Temp_Fast

;--------------------------------------------------------
	.FUNC _EMC_Update_Temp_Fast:0
;--------------------------------------------------------
;	;.line	855; ".\Source\App_LCD.c"	}
_EMC_Update_Temp_Fast:	;Function start
	RET	
; exit point of _EMC_Update_Temp_Fast
	.ENDFUNC	_EMC_Update_Temp_Fast
;--------------------------------------------------------

.globl _Binding_Display

;--------------------------------------------------------
	.FUNC _Binding_Display:0:$C:_Disp_Version:$C:_Disp_Code\

;--------------------------------------------------------
;	;.line	820; ".\Source\App_LCD.c"	if(eVersionCode == VC_DispOn)
_Binding_Display:	;Function start
	DCSZ	_eVersionCode,0,0
	JMP	_00351_DS_
;	;.line	822; ".\Source\App_LCD.c"	if(sTIMx.BindingSymbolFlash)
	BTSS	_sTIMx,7
	JMP	_00347_DS_
;	;.line	825; ".\Source\App_LCD.c"	Disp_Version(Soft_External_Version);
	MVL	0x0b
	CALL	_Disp_Version
	.CHKPARA _Disp_Version 1
	JMP	_00351_DS_
_00347_DS_:
;	;.line	830; ".\Source\App_LCD.c"	Disp_Code(Soft_Code);
	MVL	0x9a
	MVF	_Disp_Code_STK00,1,0
	MVL	0x03
	CALL	_Disp_Code
	.CHKPARA _Disp_Code 2
_00351_DS_:
;	;.line	833; ".\Source\App_LCD.c"	}
	RET	
; exit point of _Binding_Display
	.ENDFUNC	_Binding_Display
;--------------------------------------------------------

.globl _ModeExchange_Display

;--------------------------------------------------------
	.FUNC _ModeExchange_Display:0:$C:_CurrentMode_Display:$C:_Disp_Nothing\

;--------------------------------------------------------
;	;.line	800; ".\Source\App_LCD.c"	if(sTIMx.ModeSymbolFlash || sTIMx.EnableModeSymbolFlash)
_ModeExchange_Display:	;Function start
	BTSZ	_sTIMx,3
	JMP	_00337_DS_
	BTSS	_sTIMx,4
	JMP	_00338_DS_
_00337_DS_:
;	;.line	803; ".\Source\App_LCD.c"	CurrentMode_Display();
	CALL	_CurrentMode_Display
	.CHKPARA _CurrentMode_Display 0
	JMP	_00341_DS_
_00338_DS_:
;	;.line	808; ".\Source\App_LCD.c"	Disp_Nothing();
	CALL	_Disp_Nothing
	.CHKPARA _Disp_Nothing 0
_00341_DS_:
;	;.line	810; ".\Source\App_LCD.c"	}
	RET	
; exit point of _ModeExchange_Display
	.ENDFUNC	_ModeExchange_Display
;--------------------------------------------------------

.globl _CurrentMode_Display

;--------------------------------------------------------
	.FUNC _CurrentMode_Display:0:$C:_Disp_Orl:$C:_Disp_Udr:$C:_Disp_Rct:$C:_Disp_Bth\

;--------------------------------------------------------
;	;.line	758; ".\Source\App_LCD.c"	if(eMeasureMode == Oral_Mode)
_CurrentMode_Display:	;Function start
	TFSZ	_eMeasureMode,0
	JMP	_00330_DS_
;	;.line	761; ".\Source\App_LCD.c"	Disp_Orl();
	CALL	_Disp_Orl
	.CHKPARA _Disp_Orl 0
	JMP	_00332_DS_
_00330_DS_:
;	;.line	764; ".\Source\App_LCD.c"	else if(eMeasureMode == Underarm_Mode)
	DCSZ	_eMeasureMode,0,0
	JMP	_00327_DS_
;	;.line	767; ".\Source\App_LCD.c"	Disp_Udr();
	CALL	_Disp_Udr
	.CHKPARA _Disp_Udr 0
	JMP	_00332_DS_
_00327_DS_:
;	;.line	770; ".\Source\App_LCD.c"	else if(eMeasureMode == Rectal_Mode)
	MVL	0x02
	CPSE	_eMeasureMode,0
	JMP	_00324_DS_
;	;.line	773; ".\Source\App_LCD.c"	Disp_Rct();
	CALL	_Disp_Rct
	.CHKPARA _Disp_Rct 0
	JMP	_00332_DS_
_00324_DS_:
;	;.line	776; ".\Source\App_LCD.c"	else if(eMeasureMode == Bath_Mode)
	MVL	0x03
	CPSE	_eMeasureMode,0
	JMP	_00332_DS_
;	;.line	779; ".\Source\App_LCD.c"	Disp_Bth();
	CALL	_Disp_Bth
	.CHKPARA _Disp_Bth 0
_00332_DS_:
;	;.line	781; ".\Source\App_LCD.c"	}
	RET	
; exit point of _CurrentMode_Display
	.ENDFUNC	_CurrentMode_Display
;--------------------------------------------------------

.globl _MemTempValue_Display

;--------------------------------------------------------
	.FUNC _MemTempValue_Display:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_StaticDash:$C:_Disp_Hi:$C:_DispNum\
:$C:_DispDelta:$C:_DispUnit:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	660; ".\Source\App_LCD.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
_MemTempValue_Display:	;Function start
	MVF	(_sMemoryFlag + 2),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	LDPR	(_sMemory + 3),0
	MVFF	_PLUSW0,STK00
	INF	_WREG,0,0
	MVFF	_PLUSW0,STK01
	MVF	STK00,0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	STK01,0,0
	CALL	_Centigrade_Convert_Fahrenheit
	.CHKPARA _Centigrade_Convert_Fahrenheit 2
	MVFF	STK00,(_sActual_Forecast + 5)
	MVF	(_sActual_Forecast + 6),1,0
;	;.line	661; ".\Source\App_LCD.c"	if(!sMemory.MemTempSum)
	TFSZ	(_sMemory + 2),0
	JMP	_00315_DS_
;	;.line	668; ".\Source\App_LCD.c"	Disp_StaticDash();
	CALL	_Disp_StaticDash
	.CHKPARA _Disp_StaticDash 0
	JMP	_00316_DS_
_00315_DS_:
;	;.line	674; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00312_DS_
;	;.line	676; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd9
	MVL	0xee
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00301_DS_
;	;.line	678; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00313_DS_
_00301_DS_:
;	;.line	680; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0x80
	MVL	0xf3
	ADDC	(_sActual_Forecast + 6),0,0
	BTSZ	_STATUS,4
	JMP	_00298_DS_
;	;.line	690; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	.CHKPARA _Disp_StaticDash 0
	JMP	_00313_DS_
_00298_DS_:
;	;.line	696; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	698; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
	JMP	_00313_DS_
_00312_DS_:
;	;.line	702; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00313_DS_
;	;.line	704; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xa3
	MVL	0xd4
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00307_DS_
;	;.line	706; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00313_DS_
_00307_DS_:
;	;.line	708; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
	MVL	0x23
	CPSL	(_sActual_Forecast + 6),0
	JMP	_00304_DS_
;	;.line	718; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	.CHKPARA _Disp_StaticDash 0
	JMP	_00313_DS_
_00304_DS_:
;	;.line	724; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	726; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
_00313_DS_:
;	;.line	733; ".\Source\App_LCD.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispDelta_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispDelta
	.CHKPARA _DispDelta 2
_00316_DS_:
;	;.line	743; ".\Source\App_LCD.c"	DispUnit();
	CALL	_DispUnit
	.CHKPARA _DispUnit 0
;	;.line	745; ".\Source\App_LCD.c"	LCD_Mem_En();
	BSF	_LCD3,3
;	;.line	747; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	748; ".\Source\App_LCD.c"	}
	RET	
; exit point of _MemTempValue_Display
	.ENDFUNC	_MemTempValue_Display
;--------------------------------------------------------

.globl _MemTempNumber_Display

;--------------------------------------------------------
	.FUNC _MemTempNumber_Display:0:$C:_DispNum:$C:_Disp_BleSymbol\
:$L:r0x10BD
;--------------------------------------------------------
;	;.line	608; ".\Source\App_LCD.c"	if(sMemoryFlag.Update_MemTempDispNo)
_MemTempNumber_Display:	;Function start
	BTSS	_sMemoryFlag,4
	JMP	_00281_DS_
;	;.line	610; ".\Source\App_LCD.c"	sMemoryFlag.Update_MemTempDispNo = FALSE;
	BCF	_sMemoryFlag,4
;	;.line	612; ".\Source\App_LCD.c"	if(++sMemoryFlag.MemTempDispNo > sMemory.MemTempSum)
	INF	(_sMemoryFlag + 1),1,0
	MVF	(_sMemoryFlag + 1),0,0
	CPSL	(_sMemory + 2),0
	JMP	_00281_DS_
;	;.line	614; ".\Source\App_LCD.c"	sMemoryFlag.MemTempDispNo = 1;
	MVL	0x01
	MVF	(_sMemoryFlag + 1),1,0
_00281_DS_:
;	;.line	618; ".\Source\App_LCD.c"	if(sMemoryFlag.Update_MemTempDispVlaue)
	BTSS	_sMemoryFlag,5
	JMP	_00292_DS_
;	;.line	620; ".\Source\App_LCD.c"	sMemoryFlag.Update_MemTempDispVlaue = FALSE;
	BCF	_sMemoryFlag,5
;	;.line	621; ".\Source\App_LCD.c"	if(sMemory.MemTempSum == MemTempNum/*10*/)
	DCSZ	(_sMemory + 2),0,0
	JMP	_00289_DS_
;	;.line	623; ".\Source\App_LCD.c"	if(!sMemoryFlag.MemTempDispValue)
	MVF	(_sMemoryFlag + 2),0,0
	MVF	r0x10BD,1,0
	TFSZ	_WREG,0
	JMP	_00283_DS_
;	;.line	625; ".\Source\App_LCD.c"	sMemoryFlag.MemTempDispValue = MemTempNum - 1/*9*/;
	CLRF	(_sMemoryFlag + 2),0
	JMP	_00292_DS_
_00283_DS_:
;	;.line	629; ".\Source\App_LCD.c"	--sMemoryFlag.MemTempDispValue;
	DCF	r0x10BD,1,0
	MVF	r0x10BD,0,0
	MVF	(_sMemoryFlag + 2),1,0
	JMP	_00292_DS_
_00289_DS_:
;	;.line	634; ".\Source\App_LCD.c"	if(!sMemoryFlag.MemTempDispValue)
	MVF	(_sMemoryFlag + 2),0,0
	MVF	r0x10BD,1,0
	TFSZ	_WREG,0
	JMP	_00286_DS_
;	;.line	636; ".\Source\App_LCD.c"	sMemoryFlag.MemTempDispValue = sMemory.pMemTempBuf;
	MVF	(_sMemory + 1),0,0
	MVF	(_sMemoryFlag + 2),1,0
	JMP	_00292_DS_
_00286_DS_:
;	;.line	640; ".\Source\App_LCD.c"	--sMemoryFlag.MemTempDispValue;
	DCF	r0x10BD,1,0
	MVF	r0x10BD,0,0
	MVF	(_sMemoryFlag + 2),1,0
_00292_DS_:
;	;.line	646; ".\Source\App_LCD.c"	DispNum(sMemoryFlag.MemTempDispNo);
	MVF	(_sMemoryFlag + 1),0,0
	MVF	_DispNum_STK00,1,0
	MVL	0x00
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	648; ".\Source\App_LCD.c"	LCD_Mem_En();
	BSF	_LCD3,3
;	;.line	650; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	651; ".\Source\App_LCD.c"	}
	RET	
; exit point of _MemTempNumber_Display
	.ENDFUNC	_MemTempNumber_Display
;--------------------------------------------------------

.globl _RecentTemp_Display

;--------------------------------------------------------
	.FUNC _RecentTemp_Display:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_StaticDash:$C:_Disp_Hi:$C:_DispNum\
:$C:_DispDelta:$C:_DispUnit:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	518; ".\Source\App_LCD.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemory.pMemTempBuf]);
_RecentTemp_Display:	;Function start
	MVF	(_sMemory + 1),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	LDPR	(_sMemory + 3),0
	MVFF	_PLUSW0,STK00
	INF	_WREG,0,0
	MVFF	_PLUSW0,STK01
	MVF	STK00,0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	STK01,0,0
	CALL	_Centigrade_Convert_Fahrenheit
	.CHKPARA _Centigrade_Convert_Fahrenheit 2
	MVFF	STK00,(_sActual_Forecast + 5)
	MVF	(_sActual_Forecast + 6),1,0
;	;.line	520; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00272_DS_
;	;.line	523; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0x80
	MVL	0xf3
	ADDC	(_sActual_Forecast + 6),0,0
	BTSZ	_STATUS,4
	JMP	_00261_DS_
;	;.line	533; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	.CHKPARA _Disp_StaticDash 0
	JMP	_00273_DS_
_00261_DS_:
;	;.line	538; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xd9
	MVL	0xee
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00258_DS_
;	;.line	540; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00273_DS_
_00258_DS_:
;	;.line	545; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	547; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
	JMP	_00273_DS_
_00272_DS_:
;	;.line	551; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00273_DS_
;	;.line	554; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
	MVL	0x23
	CPSL	(_sActual_Forecast + 6),0
	JMP	_00267_DS_
;	;.line	564; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
	CALL	_Disp_StaticDash
	.CHKPARA _Disp_StaticDash 0
	JMP	_00273_DS_
_00267_DS_:
;	;.line	568; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xa3
	MVL	0xd4
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00264_DS_
;	;.line	570; ".\Source\App_LCD.c"	Disp_Hi();
	CALL	_Disp_Hi
	.CHKPARA _Disp_Hi 0
	JMP	_00273_DS_
_00264_DS_:
;	;.line	575; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispNum_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispNum
	.CHKPARA _DispNum 2
;	;.line	577; ".\Source\App_LCD.c"	LCD_Point_En();
	BSF	_LCD2,3
_00273_DS_:
;	;.line	584; ".\Source\App_LCD.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
	MVF	(_sActual_Forecast + 5),0,0
	MVF	_DispDelta_STK00,1,0
	MVF	(_sActual_Forecast + 6),0,0
	CALL	_DispDelta
	.CHKPARA _DispDelta 2
;	;.line	593; ".\Source\App_LCD.c"	DispUnit();
	CALL	_DispUnit
	.CHKPARA _DispUnit 0
;	;.line	595; ".\Source\App_LCD.c"	LCD_Mem_En();
	BSF	_LCD3,3
;	;.line	597; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	598; ".\Source\App_LCD.c"	}
	RET	
; exit point of _RecentTemp_Display
	.ENDFUNC	_RecentTemp_Display
;--------------------------------------------------------

.globl _CalibrationOK_Display

;--------------------------------------------------------
	.FUNC _CalibrationOK_Display:0:$C:_Disp_End:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	506; ".\Source\App_LCD.c"	Disp_End();
_CalibrationOK_Display:	;Function start
	CALL	_Disp_End
	.CHKPARA _Disp_End 0
;	;.line	508; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	509; ".\Source\App_LCD.c"	}
	RET	
; exit point of _CalibrationOK_Display
	.ENDFUNC	_CalibrationOK_Display
;--------------------------------------------------------

.globl _Calibration_Display

;--------------------------------------------------------
	.FUNC _Calibration_Display:0:$C:_memchrn:$C:_Disp_CAL:$C:_Disp_Nothing:$C:_Disp_BleSymbol\
:$C:_LCD_Clear_Register:$C:_LCD_Configuration\

;--------------------------------------------------------
;	;.line	455; ".\Source\App_LCD.c"	if(!memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
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
	JMP	_00243_DS_
	BTSS	_sTempCal,1
	JMP	_00243_DS_
;	;.line	460; ".\Source\App_LCD.c"	sTempCal.Enable_BIE_Write = TRUE;
	BSF	_sTempCal,2
	JMP	_00244_DS_
_00243_DS_:
;	;.line	462; ".\Source\App_LCD.c"	else if(memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
	MVL	0x09
	MVF	_memchrn_STK02,1,0
	MVL	0x01
	MVF	_memchrn_STK01,1,0
	MVL	(_ERR + 0)
	MVF	_memchrn_STK00,1,0
	MVL	high (_ERR + 0)
	CALL	_memchrn
	.CHKPARA _memchrn 4
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00239_DS_
	BTSS	_sTempCal,1
	JMP	_00239_DS_
;	;.line	465; ".\Source\App_LCD.c"	sTempCal.BIE_Write_Action = TRUE;
	BSF	_sTempCal,3
	JMP	_00244_DS_
_00239_DS_:
;	;.line	470; ".\Source\App_LCD.c"	if(sTIMx.CalSymbolFlash)
	BTSS	_sTIMx,5
	JMP	_00236_DS_
;	;.line	473; ".\Source\App_LCD.c"	Disp_CAL();
	CALL	_Disp_CAL
	.CHKPARA _Disp_CAL 0
	JMP	_00237_DS_
_00236_DS_:
;	;.line	478; ".\Source\App_LCD.c"	Disp_Nothing();
	CALL	_Disp_Nothing
	.CHKPARA _Disp_Nothing 0
_00237_DS_:
;	;.line	481; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
_00244_DS_:
;	;.line	485; ".\Source\App_LCD.c"	if(sTempCal.BIE_Write_Action)
	BTSS	_sTempCal,3
	JMP	_00248_DS_
;	;.line	490; ".\Source\App_LCD.c"	LCD_Clear_Register();
	CALL	_LCD_Clear_Register
	.CHKPARA _LCD_Clear_Register 0
;	;.line	492; ".\Source\App_LCD.c"	LCD_Configuration();
	CALL	_LCD_Configuration
	.CHKPARA _LCD_Configuration 0
;	;.line	494; ".\Source\App_LCD.c"	sTempCal.Reopen_LCD = TRUE;
	BSF	_sTempCal,4
_00248_DS_:
;	;.line	496; ".\Source\App_LCD.c"	}
	RET	
; exit point of _Calibration_Display
	.ENDFUNC	_Calibration_Display
;--------------------------------------------------------

.globl _PreCalibration_Display

;--------------------------------------------------------
	.FUNC _PreCalibration_Display:0:$C:_Disp_UnitFlash:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	440; ".\Source\App_LCD.c"	Disp_UnitFlash();
_PreCalibration_Display:	;Function start
	CALL	_Disp_UnitFlash
	.CHKPARA _Disp_UnitFlash 0
;	;.line	442; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	443; ".\Source\App_LCD.c"	}
	RET	
; exit point of _PreCalibration_Display
	.ENDFUNC	_PreCalibration_Display
;--------------------------------------------------------

.globl _Off_Display

;--------------------------------------------------------
	.FUNC _Off_Display:0:$C:_Disp_Nothing:$C:_Disp_Off:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	420; ".\Source\App_LCD.c"	if(sButton.Flag_Button_Lift_Once)
_Off_Display:	;Function start
	BTSS	_sButton,6
	JMP	_00224_DS_
;	;.line	423; ".\Source\App_LCD.c"	Disp_Nothing();
	CALL	_Disp_Nothing
	.CHKPARA _Disp_Nothing 0
	JMP	_00226_DS_
_00224_DS_:
;	;.line	427; ".\Source\App_LCD.c"	Disp_Off();
	CALL	_Disp_Off
	.CHKPARA _Disp_Off 0
;	;.line	429; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
_00226_DS_:
;	;.line	431; ".\Source\App_LCD.c"	}
	RET	
; exit point of _Off_Display
	.ENDFUNC	_Off_Display
;--------------------------------------------------------

.globl _UnitExchange_Display

;--------------------------------------------------------
	.FUNC _UnitExchange_Display:0:$C:_Disp_Nothing:$C:_Disp_BleSymbol\

;--------------------------------------------------------
;	;.line	365; ".\Source\App_LCD.c"	if(!UnitExchangeCompleted)
_UnitExchange_Display:	;Function start
	TFSZ	_UnitExchangeCompleted,0
	JMP	_00217_DS_
;	;.line	368; ".\Source\App_LCD.c"	Disp_Nothing();
	CALL	_Disp_Nothing
	.CHKPARA _Disp_Nothing 0
;	;.line	370; ".\Source\App_LCD.c"	UnitExchangeCompleted = TRUE;
	MVL	0x01
	MVF	_UnitExchangeCompleted,1,0
;	;.line	372; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00209_DS_
;	;.line	375; ".\Source\App_LCD.c"	eTempUnit = Fahrenheit;
	MVL	0xa5
	MVF	_eTempUnit,1,0
;	;.line	377; ".\Source\App_LCD.c"	LCD_Unit_F_En();
	MVL	0x30
	IORF	_LCD4,1,0
	JMP	_00218_DS_
_00209_DS_:
;	;.line	380; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00218_DS_
;	;.line	383; ".\Source\App_LCD.c"	eTempUnit = Centigrade;
	MVL	0x5a
	MVF	_eTempUnit,1,0
;	;.line	385; ".\Source\App_LCD.c"	LCD_Unit_C_En();
	MVL	0x50
	IORF	_LCD4,1,0
	JMP	_00218_DS_
_00217_DS_:
;	;.line	391; ".\Source\App_LCD.c"	Disp_Nothing();
	CALL	_Disp_Nothing
	.CHKPARA _Disp_Nothing 0
;	;.line	394; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00214_DS_
;	;.line	397; ".\Source\App_LCD.c"	LCD_Unit_C_En();
	MVL	0x50
	IORF	_LCD4,1,0
	JMP	_00218_DS_
_00214_DS_:
;	;.line	400; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00218_DS_
;	;.line	403; ".\Source\App_LCD.c"	LCD_Unit_F_En();
	MVL	0x30
	IORF	_LCD4,1,0
_00218_DS_:
;	;.line	410; ".\Source\App_LCD.c"	Disp_BleSymbol();
	CALL	_Disp_BleSymbol
	.CHKPARA _Disp_BleSymbol 0
;	;.line	411; ".\Source\App_LCD.c"	}
	RET	
; exit point of _UnitExchange_Display
	.ENDFUNC	_UnitExchange_Display
;--------------------------------------------------------

.globl _Disp_BleSymbol

;--------------------------------------------------------
	.FUNC _Disp_BleSymbol:0
;--------------------------------------------------------
;	;.line	355; ".\Source\App_LCD.c"	}
_Disp_BleSymbol:	;Function start
	RET	
; exit point of _Disp_BleSymbol
	.ENDFUNC	_Disp_BleSymbol
;--------------------------------------------------------

.globl _Disp_DynamicForecastSymbol

;--------------------------------------------------------
	.FUNC _Disp_DynamicForecastSymbol:0
;--------------------------------------------------------
;	;.line	319; ".\Source\App_LCD.c"	if(sTIMx.ForecastSymbolFlash)
_Disp_DynamicForecastSymbol:	;Function start
	BTSS	(_sTIMx+1),2
	JMP	_00196_DS_
;	;.line	322; ".\Source\App_LCD.c"	LCD_ForecastP1_En();
	BSF	_LCD4,1
	JMP	_00197_DS_
_00196_DS_:
;	;.line	327; ".\Source\App_LCD.c"	LCD_ForecastP1_Clr();
	BCF	_LCD4,1
_00197_DS_:
;	;.line	330; ".\Source\App_LCD.c"	LCD_ForecastP2_En();
	BSF	_LCD4,2
;	;.line	331; ".\Source\App_LCD.c"	}
	RET	
; exit point of _Disp_DynamicForecastSymbol
	.ENDFUNC	_Disp_DynamicForecastSymbol
;--------------------------------------------------------

.globl _Disp_DynamicDash

;--------------------------------------------------------
	.FUNC _Disp_DynamicDash:0:$C:_Disp_Nothing\

;--------------------------------------------------------
;	;.line	291; ".\Source\App_LCD.c"	Disp_Nothing();
_Disp_DynamicDash:	;Function start
	CALL	_Disp_Nothing
	.CHKPARA _Disp_Nothing 0
;	;.line	293; ".\Source\App_LCD.c"	if(sTIMx.TempDetectingSymFlash1Hz == 0)
	TFSZ	(_sTIMx + 2),0
	JMP	_00188_DS_
;	;.line	296; ".\Source\App_LCD.c"	LCD_Dash1_En();
	BSF	_LCD0,1
	JMP	_00190_DS_
_00188_DS_:
;	;.line	299; ".\Source\App_LCD.c"	else if(sTIMx.TempDetectingSymFlash1Hz == 1)
	DCSZ	(_sTIMx + 2),0,0
	JMP	_00185_DS_
;	;.line	302; ".\Source\App_LCD.c"	LCD_Dash2_En();
	BSF	_LCD1,1
	JMP	_00190_DS_
_00185_DS_:
;	;.line	307; ".\Source\App_LCD.c"	LCD_Dash3_En();
	BSF	_LCD2,1
_00190_DS_:
;	;.line	309; ".\Source\App_LCD.c"	}
	RET	
; exit point of _Disp_DynamicDash
	.ENDFUNC	_Disp_DynamicDash
;--------------------------------------------------------

.globl _Disp_UnitFlash

;--------------------------------------------------------
	.FUNC _Disp_UnitFlash:0
;--------------------------------------------------------
;	;.line	252; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
_Disp_UnitFlash:	;Function start
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00177_DS_
;	;.line	255; ".\Source\App_LCD.c"	if(sTIMx.UnitSymbolFlash)
	BTSS	(_sTIMx+1),0
	JMP	_00169_DS_
;	;.line	258; ".\Source\App_LCD.c"	LCD_Unit_C_En();
	MVL	0x50
	IORF	_LCD4,1,0
	JMP	_00179_DS_
_00169_DS_:
;	;.line	263; ".\Source\App_LCD.c"	LCD_Unit_C_Clr();
	MVL	0xaf
	ANDF	_LCD4,1,0
	JMP	_00179_DS_
_00177_DS_:
;	;.line	267; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00179_DS_
;	;.line	270; ".\Source\App_LCD.c"	if(sTIMx.UnitSymbolFlash)
	BTSS	(_sTIMx+1),0
	JMP	_00172_DS_
;	;.line	273; ".\Source\App_LCD.c"	LCD_Unit_F_En();
	MVL	0x30
	IORF	_LCD4,1,0
	JMP	_00179_DS_
_00172_DS_:
;	;.line	278; ".\Source\App_LCD.c"	LCD_Unit_F_Clr();
	MVL	0xcf
	ANDF	_LCD4,1,0
_00179_DS_:
;	;.line	281; ".\Source\App_LCD.c"	}
	RET	
; exit point of _Disp_UnitFlash
	.ENDFUNC	_Disp_UnitFlash
;--------------------------------------------------------

.globl _Disp_Bat

;--------------------------------------------------------
	.FUNC _Disp_Bat:0
;--------------------------------------------------------
;	;.line	238; ".\Source\App_LCD.c"	LCD_BatAll_En();
_Disp_Bat:	;Function start
	MVL	0x88
	IORF	_LCD4,1,0
;	;.line	239; ".\Source\App_LCD.c"	}
	RET	
; exit point of _Disp_Bat
	.ENDFUNC	_Disp_Bat
;--------------------------------------------------------

.globl _Disp_BLEFlash

;--------------------------------------------------------
	.FUNC _Disp_BLEFlash:0
;--------------------------------------------------------
;	;.line	217; ".\Source\App_LCD.c"	if(sTIMx.BLESymbolFlash)
_Disp_BLEFlash:	;Function start
	BTSS	(_sTIMx+1),1
	JMP	_00157_DS_
;	;.line	220; ".\Source\App_LCD.c"	LCD_BLE_En();
	BSF	_LCD1,3
	JMP	_00159_DS_
_00157_DS_:
;	;.line	225; ".\Source\App_LCD.c"	LCD_BLE_Clr();
	BCF	_LCD1,3
_00159_DS_:
;	;.line	227; ".\Source\App_LCD.c"	}
	RET	
; exit point of _Disp_BLEFlash
	.ENDFUNC	_Disp_BLEFlash
;--------------------------------------------------------

.globl _DispNum

;--------------------------------------------------------
	.FUNC _DispNum:2:$C:__divuint:$C:__moduint:$C:__cptrget1\
:$L:r0x1099:$L:_DispNum_STK00:$L:r0x109B:$L:_DispNum_NumDisp_65536_388
;--------------------------------------------------------
;	;.line	131; ".\Source\App_LCD.c"	void DispNum(uint16 num)
_DispNum:	;Function start
	MVF	r0x1099,1,0
;	;.line	137; ".\Source\App_LCD.c"	NumDisp[4] = num / 10000;
	MVL	0x10
	MVF	__divuint_STK02,1,0
	MVL	0x27
	MVF	__divuint_STK01,1,0
	MVF	_DispNum_STK00,0,0
	MVF	__divuint_STK00,1,0
	MVF	r0x1099,0,0
	CALL	__divuint
	.CHKPARA __divuint 4
	MVF	STK00,0,0
	MVF	(_DispNum_NumDisp_65536_388 + 4),1,0
;	;.line	139; ".\Source\App_LCD.c"	NumDisp[3] = num / 1000 % 10;
	MVL	0xe8
	MVF	__divuint_STK02,1,0
	MVL	0x03
	MVF	__divuint_STK01,1,0
	MVF	_DispNum_STK00,0,0
	MVF	__divuint_STK00,1,0
	MVF	r0x1099,0,0
	CALL	__divuint
	.CHKPARA __divuint 4
	MVF	r0x109B,1,0
	MVL	0x0a
	MVF	__moduint_STK02,1,0
	CLRF	__moduint_STK01,0
	MVF	STK00,0,0
	MVF	__moduint_STK00,1,0
	MVF	r0x109B,0,0
	CALL	__moduint
	.CHKPARA __moduint 4
	MVF	STK00,0,0
	MVF	(_DispNum_NumDisp_65536_388 + 3),1,0
;	;.line	141; ".\Source\App_LCD.c"	NumDisp[2] = num / 100 % 10;
	MVL	0x64
	MVF	__divuint_STK02,1,0
	CLRF	__divuint_STK01,0
	MVF	_DispNum_STK00,0,0
	MVF	__divuint_STK00,1,0
	MVF	r0x1099,0,0
	CALL	__divuint
	.CHKPARA __divuint 4
	MVF	r0x109B,1,0
	MVL	0x0a
	MVF	__moduint_STK02,1,0
	CLRF	__moduint_STK01,0
	MVF	STK00,0,0
	MVF	__moduint_STK00,1,0
	MVF	r0x109B,0,0
	CALL	__moduint
	.CHKPARA __moduint 4
	MVF	STK00,0,0
	MVF	(_DispNum_NumDisp_65536_388 + 2),1,0
;	;.line	143; ".\Source\App_LCD.c"	NumDisp[1] = num / 10 % 10;
	MVL	0x0a
	MVF	__divuint_STK02,1,0
	CLRF	__divuint_STK01,0
	MVF	_DispNum_STK00,0,0
	MVF	__divuint_STK00,1,0
	MVF	r0x1099,0,0
	CALL	__divuint
	.CHKPARA __divuint 4
	MVF	r0x109B,1,0
	MVL	0x0a
	MVF	__moduint_STK02,1,0
	CLRF	__moduint_STK01,0
	MVF	STK00,0,0
	MVF	__moduint_STK00,1,0
	MVF	r0x109B,0,0
	CALL	__moduint
	.CHKPARA __moduint 4
	MVF	STK00,0,0
	MVF	(_DispNum_NumDisp_65536_388 + 1),1,0
;	;.line	145; ".\Source\App_LCD.c"	NumDisp[0] = num % 10;
	MVL	0x0a
	MVF	__moduint_STK02,1,0
	CLRF	__moduint_STK01,0
	MVF	_DispNum_STK00,0,0
	MVF	__moduint_STK00,1,0
	MVF	r0x1099,0,0
	CALL	__moduint
	.CHKPARA __moduint 4
	MVF	STK00,0,0
	MVF	(_DispNum_NumDisp_65536_388 + 0),1,0
;	;.line	148; ".\Source\App_LCD.c"	if(eDisplay_Interfaces == Display_MemoryTemperatureNumber)
	MVL	0x0a
	CPSE	_eDisplay_Interfaces,0
	JMP	_00149_DS_
;	;.line	150; ".\Source\App_LCD.c"	NumDisp[4]	= 10;
	MVL	0x0a
	MVF	(_DispNum_NumDisp_65536_388 + 4),1,0
;	;.line	151; ".\Source\App_LCD.c"	NumDisp[3]	= 10;
	MVF	(_DispNum_NumDisp_65536_388 + 3),1,0
;	;.line	152; ".\Source\App_LCD.c"	NumDisp[2]	= 10;
	MVF	(_DispNum_NumDisp_65536_388 + 2),1,0
;	;.line	155; ".\Source\App_LCD.c"	if(NumDisp[1] == 0)
	TFSZ	(_DispNum_NumDisp_65536_388 + 1),0
	JMP	_00142_DS_
;	;.line	157; ".\Source\App_LCD.c"	NumDisp[1] = 10;
	MVL	0x0a
	MVF	(_DispNum_NumDisp_65536_388 + 1),1,0
_00142_DS_:
;	;.line	160; ".\Source\App_LCD.c"	LCD0_Macro = 0x00;
	CLRF	_LCD0,0
;	;.line	162; ".\Source\App_LCD.c"	LCD1_Macro = NUM_CODE[NumDisp[1]];
	MVLP	(_NUM_CODE + 0)
	MVF	(_DispNum_NumDisp_65536_388 + 1),0,0
	CALL	__cptrget1
	MVF	_LCD1,1,0
;	;.line	164; ".\Source\App_LCD.c"	LCD2_Macro = NUM_CODE[NumDisp[0]];
	MVLP	(_NUM_CODE + 0)
	MVF	(_DispNum_NumDisp_65536_388 + 0),0,0
	CALL	__cptrget1
	MVF	_LCD2,1,0
;	;.line	166; ".\Source\App_LCD.c"	LCD3_Macro = 0x00;
	CLRF	_LCD3,0
;	;.line	168; ".\Source\App_LCD.c"	LCD4_Macro = 0x00;
	CLRF	_LCD4,0
;	;.line	170; ".\Source\App_LCD.c"	LCD5_Macro = 0x00;
	CLRF	_LCD5,0
	JMP	_00151_DS_
_00149_DS_:
;	;.line	175; ".\Source\App_LCD.c"	if(NumDisp[4] == 0)
	TFSZ	(_DispNum_NumDisp_65536_388 + 4),0
	JMP	_00146_DS_
;	;.line	178; ".\Source\App_LCD.c"	if(NumDisp[3] == 0)
	TFSZ	(_DispNum_NumDisp_65536_388 + 3),0
	JMP	_00144_DS_
;	;.line	180; ".\Source\App_LCD.c"	NumDisp[3] = 10;
	MVL	0x0a
	MVF	(_DispNum_NumDisp_65536_388 + 3),1,0
_00144_DS_:
;	;.line	183; ".\Source\App_LCD.c"	LCD0_Macro = NUM_CODE[NumDisp[3]];
	MVLP	(_NUM_CODE + 0)
	MVF	(_DispNum_NumDisp_65536_388 + 3),0,0
	CALL	__cptrget1
	MVF	_LCD0,1,0
;	;.line	185; ".\Source\App_LCD.c"	LCD_Hundred_Clr();
	BCF	_LCD0,3
	JMP	_00147_DS_
_00146_DS_:
;	;.line	191; ".\Source\App_LCD.c"	LCD0_Macro = NUM_CODE[NumDisp[3]];
	MVLP	(_NUM_CODE + 0)
	MVF	(_DispNum_NumDisp_65536_388 + 3),0,0
	CALL	__cptrget1
	MVF	_LCD0,1,0
;	;.line	193; ".\Source\App_LCD.c"	LCD_Hundred_En();
	BSF	_LCD0,3
_00147_DS_:
;	;.line	196; ".\Source\App_LCD.c"	LCD1_Macro = NUM_CODE[NumDisp[2]];
	MVLP	(_NUM_CODE + 0)
	MVF	(_DispNum_NumDisp_65536_388 + 2),0,0
	CALL	__cptrget1
	MVF	_LCD1,1,0
;	;.line	198; ".\Source\App_LCD.c"	LCD2_Macro = NUM_CODE[NumDisp[1]];
	MVLP	(_NUM_CODE + 0)
	MVF	(_DispNum_NumDisp_65536_388 + 1),0,0
	CALL	__cptrget1
	MVF	_LCD2,1,0
;	;.line	200; ".\Source\App_LCD.c"	LCD3_Macro = 0x00;
	CLRF	_LCD3,0
;	;.line	202; ".\Source\App_LCD.c"	LCD4_Macro = 0x00;
	CLRF	_LCD4,0
;	;.line	204; ".\Source\App_LCD.c"	LCD5_Macro = 0x00;
	CLRF	_LCD5,0
_00151_DS_:
;	;.line	206; ".\Source\App_LCD.c"	}
	RET	
; exit point of _DispNum
	.ENDFUNC	_DispNum
;--------------------------------------------------------

.globl _DispDelta

;--------------------------------------------------------
	.FUNC _DispDelta:2:$L:r0x1096:$L:_DispDelta_STK00
;--------------------------------------------------------
;	;.line	42; ".\Source\App_LCD.c"	void DispDelta(uint16 temp)
_DispDelta:	;Function start
	MVF	r0x1096,1,0
	MVL	0x5a
;	;.line	47; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
	CPSE	_eTempUnit,0
	JMP	_00134_DS_
;	;.line	50; ".\Source\App_LCD.c"	if(temp >= Fever_Temp_Centigrade)
	MVF	_DispDelta_STK00,0,0
	ADDL	0x3c
	MVL	0xf1
	ADDC	r0x1096,0,0
	BTSS	_STATUS,4
	JMP	_00121_DS_
;	;.line	53; ".\Source\App_LCD.c"	LCD_Delta3_En();
	BSF	_LCD5,2
	JMP	_00136_DS_
_00121_DS_:
;	;.line	56; ".\Source\App_LCD.c"	else if(temp >= Warn_Temp_Centigrade)
	MVF	_DispDelta_STK00,0,0
	ADDL	0x6e
	MVL	0xf1
	ADDC	r0x1096,0,0
	BTSS	_STATUS,4
	JMP	_00118_DS_
;	;.line	59; ".\Source\App_LCD.c"	LCD_Delta2_En();
	BSF	_LCD5,1
	JMP	_00136_DS_
_00118_DS_:
;	;.line	62; ".\Source\App_LCD.c"	else if(temp >= Noamal_Temp_Centigrade)
	MVF	_DispDelta_STK00,0,0
	ADDL	0x04
	MVL	0xf2
	ADDC	r0x1096,0,0
	BTSS	_STATUS,4
	JMP	_00136_DS_
;	;.line	65; ".\Source\App_LCD.c"	LCD_Delta1_En();
	BSF	_LCD5,0
	JMP	_00136_DS_
_00134_DS_:
;	;.line	69; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00136_DS_
;	;.line	72; ".\Source\App_LCD.c"	if(temp >= Fever_Temp_Fahrenheit)
	MVF	_DispDelta_STK00,0,0
	ADDL	0xf0
	MVL	0xd8
	ADDC	r0x1096,0,0
	BTSS	_STATUS,4
	JMP	_00129_DS_
;	;.line	75; ".\Source\App_LCD.c"	LCD_Delta3_En();
	BSF	_LCD5,2
	JMP	_00136_DS_
_00129_DS_:
;	;.line	78; ".\Source\App_LCD.c"	else if(temp >= Warn_Temp_Fahrenheit)
	MVF	_DispDelta_STK00,0,0
	ADDL	0x4a
	MVL	0xd9
	ADDC	r0x1096,0,0
	BTSS	_STATUS,4
	JMP	_00126_DS_
;	;.line	81; ".\Source\App_LCD.c"	LCD_Delta2_En();
	BSF	_LCD5,1
	JMP	_00136_DS_
_00126_DS_:
;	;.line	84; ".\Source\App_LCD.c"	else if(temp >= Noamal_Temp_Fahrenheit)
	MVF	_DispDelta_STK00,0,0
	ADDL	0x58
	MVL	0xda
	ADDC	r0x1096,0,0
	BTSZ	_STATUS,4
;	;.line	87; ".\Source\App_LCD.c"	LCD_Delta1_En();
	BSF	_LCD5,0
_00136_DS_:
;	;.line	123; ".\Source\App_LCD.c"	}
	RET	
; exit point of _DispDelta
	.ENDFUNC	_DispDelta
;--------------------------------------------------------

.globl _DispUnit

;--------------------------------------------------------
	.FUNC _DispUnit:0
;--------------------------------------------------------
;	;.line	24; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
_DispUnit:	;Function start
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00108_DS_
;	;.line	27; ".\Source\App_LCD.c"	LCD_Unit_C_En();
	MVL	0x50
	IORF	_LCD4,1,0
	JMP	_00110_DS_
_00108_DS_:
;	;.line	30; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00110_DS_
;	;.line	33; ".\Source\App_LCD.c"	LCD_Unit_F_En();
	MVL	0x30
	IORF	_LCD4,1,0
_00110_DS_:
;	;.line	35; ".\Source\App_LCD.c"	}
	RET	
; exit point of _DispUnit
	.ENDFUNC	_DispUnit
;--------------------------------------------------------

	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
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
	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
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
	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0
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
	;--cdb--S:G$sIIC$0$0({1}ST__00000000:S),E,0,0
	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sTIMx$0$0({13}ST__00000001:S),E,0,0
	;--cdb--S:G$sUARTx$0$0({15}ST__00000002:S),E,0,0
	;--cdb--S:G$sAutoBps$0$0({5}ST__00000003:S),E,0,0
	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sTest$0$0({19}ST__00000004:S),E,0,0
	;--cdb--S:G$eTempUnit$0$0({1}SC:U),E,0,0
	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U),E,0,0
	;--cdb--S:G$eVersionCode$0$0({1}SC:U),E,0,0
	;--cdb--S:G$eMeasureMode$0$0({1}SC:U),E,0,0
	;--cdb--S:G$eBinding_Status$0$0({1}SC:U),E,0,0
	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sButton$0$0({2}ST__00000005:S),E,0,0
	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000006:S),E,0,0
	;--cdb--S:G$eButton_Status$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sLVD$0$0({5}ST__00000007:S),E,0,0
	;--cdb--S:G$eErr$0$0({1}SC:U),E,0,0
	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U),E,0,0
	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
	;--cdb--S:G$sADC$0$0({45}ST__00000008:S),E,0,0
	;--cdb--S:G$eADCChannel$0$0({1}SC:U),E,0,0
	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U),E,0,0
	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U),E,0,0
	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sMemory$0$0({5}ST__00000009:S),E,0,0
	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000010:S),E,0,0
	;--cdb--S:G$sActual$0$0({5}ST__00000012:S),E,0,0
	;--cdb--S:G$sForecast$0$0({26}ST__00000013:S),E,0,0
	;--cdb--S:G$sTempCal$0$0({14}ST__00000011:S),E,0,0
	;--cdb--S:G$eMeas_Status$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000014:S),E,0,0
	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U),E,0,0
	;--cdb--S:G$eBle_Sta$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sBleStatus$0$0({60}ST__00000015:S),E,0,0
	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sBacklight$0$0({1}ST__00000016:S),E,0,0
	;--cdb--S:G$NUM_CODE$0$0({11}DA11d,SC:U),D,0,0
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
	;--cdb--S:LApp_LCD.aligned_alloc._aligned_alloc_size_65536_25$size$10000$25({2}SI:U),E,0,0
	;--cdb--S:LApp_LCD.aligned_alloc._aligned_alloc_alignment_65536_25$alignment$10000$25({2}SI:U),E,0,0
	;--cdb--S:LApp_LCD.DispDelta._DispDelta_temp_65536_371$temp$10000$371({2}SI:U),R,0,0,[_DispDelta_STK00,r0x1096]
	;--cdb--S:LApp_LCD.DispNum._DispNum_num_65536_387$num$10000$387({2}SI:U),R,0,0,[_DispNum_STK00,r0x1099]
	;--cdb--S:LApp_LCD.DispNum._DispNum_NumDisp_65536_388$NumDisp$10000$388({5}DA5d,SC:U),E,0,0
	;--cdb--S:LApp_LCD.MeasedTemp_Disp._MeasedTemp_Disp_tmp_65536_553$tmp$10000$553({2}SI:U),R,0,0,[r0x10D0,r0x10D1]
	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
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
	.globl	__cptrget1

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
	.globl	_Disp_Bat
	.globl	_Disp_UnitFlash
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

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
	.area IDATA (DATA,REL,CON); pre-def
	.area IDATAROM (CODE,REL,CON); pre-def
	.area UDATA (DATA,REL,CON); pre-def
	.area UDATA (DATA,REL,CON) ;UDL_App_LCD_0	udata
r0x1096:	.ds	1
r0x1099:	.ds	1
r0x109B:	.ds	1
r0x10BD:	.ds	1
r0x10D0:	.ds	1
r0x10D1:	.ds	1
	.area LOCALSTK (STK); local stack var
_DispDelta_STK00:	.ds	1
	.globl _DispDelta_STK00
_DispNum_STK00:	.ds	1
	.globl _DispNum_STK00
	.globl __divuint_STK02
	.globl __divuint_STK01
	.globl __divuint_STK00
_DispNum_NumDisp_65536_388:	.ds	5
	.globl __moduint_STK02
	.globl __moduint_STK01
	.globl __moduint_STK00
	.globl _memchrn_STK02
	.globl _memchrn_STK01
	.globl _memchrn_STK00
	.globl _Centigrade_Convert_Fahrenheit_STK00
	.globl _Disp_Code_STK00
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

	.area	CONST   (CODE)	 ;App_LCD-0-code, const

_NUM_CODE:
	.db #0xf5	; 245
	.db #0x60	; 96
	.db #0xb6	; 182
	.db #0xf2	; 242
	.db #0x63	; 99	'c'
	.db #0xd3	; 211
	.db #0xd7	; 215
	.db #0x70	; 112	'p'
	.db #0xf7	; 247
	.db #0xf3	; 243
	.db #0x00	; 0

;--------------------------------------------------------
; initialized data - mirror
;--------------------------------------------------------

	;Following is optimization info, 
	;xxcdbxxW:dst:src+offset:srclit:just-remove
	;--cdb--W:r0x10D0:NULL+0:-1:1
	;--cdb--W:r0x10D1:NULL+0:-1:1
	;--cdb--W:r0x10CF:NULL+0:-1:1
	;--cdb--W:r0x10CA:NULL+0:-1:1
	;--cdb--W:r0x10CB:NULL+0:-1:1
	;--cdb--W:r0x10C1:NULL+0:-1:1
	;--cdb--W:r0x10C2:NULL+0:-1:1
	;--cdb--W:r0x10C2:STK00+0:-1:0
	;--cdb--W:r0x10C4:STK01+0:-1:0
	;--cdb--W:r0x10BD:NULL+0:-1:1
	;--cdb--W:r0x10BE:NULL+0:-1:1
	;--cdb--W:r0x10BF:NULL+0:0:0
	;--cdb--W:r0x10BF:NULL+0:-1:1
	;--cdb--W:r0x10B6:NULL+0:-1:1
	;--cdb--W:r0x10B7:NULL+0:-1:1
	;--cdb--W:r0x10B7:STK00+0:-1:0
	;--cdb--W:r0x10B9:STK01+0:-1:0
	;--cdb--W:r0x10AF:NULL+0:-1:1
	;--cdb--W:r0x10B0:NULL+0:-1:1
	;--cdb--W:r0x109B:NULL+0:-1:1
	;--cdb--W:r0x109A:NULL+0:-1:1
	;--cdb--W:r0x109C:NULL+0:-1:1
	;--cdb--W:r0x1099:NULL+0:-1:1
	;--cdb--W:_DispNum_STK00:NULL+0:-1:1
	;--cdb--W:r0x109A:STK00+0:-1:0
	end
