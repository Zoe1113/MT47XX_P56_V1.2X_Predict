;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #bf155f72c (MSVC)
;--------------------------------------------------------
; Port for HYCON CPU
;--------------------------------------------------------
;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_ce专标\Src"
;;	.file	".\Source\App_ADC.c"
	.module App_ADC
	;.list	p=HY17P56
	;--cdb--T:FApp_ADC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_ADC$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
	;--cdb--F:App_ADC:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_ADC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_ADC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_ADC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
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
	;--cdb--S:G$ADCGetData$0$0({2}DF,SI:S),C,0,0
	;--cdb--F:App_ADC:G$ADCGetData$0$0({2}DF,SI:S),C,0,0,0,0,0
	;--cdb--S:G$ADC_Average$0$0({2}DF,SC:U),C,0,0
	;--cdb--F:App_ADC:G$ADC_Average$0$0({2}DF,SC:U),C,0,0,0,0,0
	;--cdb--S:G$NTC_ADCData$0$0({2}DF,SC:U),C,0,0
	;--cdb--F:App_ADC:G$NTC_ADCData$0$0({2}DF,SC:U),C,0,0,0,0,0
	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_ADC:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$_mullong$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$_divulong$0$0({2}DF,SL:UL),C,0,0
	;--cdb--S:G$_mulint$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
	;--cdb--F:App_ADC:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0,0,0,0
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
.area CCODE (code,REL,CON) ; App_ADC-code 
.globl _Centigrade_Convert_Fahrenheit

;--------------------------------------------------------
	.FUNC _Centigrade_Convert_Fahrenheit:$r:2:2:$C:__divulong:$C:__mulint:$C:__mullong\
:$L:r0x10D1:$L:_Centigrade_Convert_Fahrenheit_STK00:$L:r0x10D2:$L:r0x10D3:$L:r0x10D4\
:$L:r0x10D5
;--------------------------------------------------------
;	;.line	373; ".\Source\App_ADC.c"	uint16 Centigrade_Convert_Fahrenheit(uint16 temp)
_Centigrade_Convert_Fahrenheit:	;Function start
	MVF	r0x10D1,1,0
;	;.line	377; ".\Source\App_ADC.c"	if( (temp >= Low_Temp_Centigrade )&&(temp <= High_Temp_Centigrade ) )
	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
	ADDL	0xd8
	MVL	0xf5
	ADDC	r0x10D1,0,0
	BTSS	_STATUS,4
	JMP	_00252_DS_
	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
	ADDL	0xd9
	MVL	0xee
	ADDC	r0x10D1,0,0
	BTSZ	_STATUS,4
	JMP	_00252_DS_
;	;.line	380; ".\Source\App_ADC.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00244_DS_
;	;.line	382; ".\Source\App_ADC.c"	tmp = temp;
	CLRF	r0x10D4,0
	CLRF	r0x10D5,0
;	;.line	383; ".\Source\App_ADC.c"	return ((tmp + 5) / 10 * 10);
	MVL	0x05
	ADDF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVL	0x00
	ADDC	r0x10D1,1,0
	ADDC	r0x10D4,1,0
	ADDC	r0x10D5,1,0
	MVL	0x0a
	MVF	__divulong_STK06,1,0
	CLRF	__divulong_STK05,0
	CLRF	__divulong_STK04,0
	CLRF	__divulong_STK03,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
	MVF	__divulong_STK02,1,0
	MVF	r0x10D1,0,0
	MVF	__divulong_STK01,1,0
	MVF	r0x10D4,0,0
	MVF	__divulong_STK00,1,0
	MVF	r0x10D5,0,0
	CALL	__divulong
	MVFF	STK02,__mulint_STK02
	MVFF	STK01,__mulint_STK01
	MVL	0x0a
	MVF	__mulint_STK00,1,0
	MVL	0x00
	CALL	__mulint
	JMP	_00255_DS_
_00244_DS_:
;	;.line	386; ".\Source\App_ADC.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00255_DS_
;	;.line	388; ".\Source\App_ADC.c"	tmp = temp ;
	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
;	;.line	390; ".\Source\App_ADC.c"	tmp = (uint32)tmp * 9 / 5 + 3200;
	MVF	__mullong_STK06,1,0
	MVF	r0x10D1,0,0
	MVF	__mullong_STK05,1,0
	CLRF	__mullong_STK04,0
	CLRF	__mullong_STK03,0
	MVL	0x09
	MVF	__mullong_STK02,1,0
	CLRF	__mullong_STK01,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10D5,1,0
	MVL	0x05
	MVF	__divulong_STK06,1,0
	CLRF	__divulong_STK05,0
	CLRF	__divulong_STK04,0
	CLRF	__divulong_STK03,0
	MVFF	STK02,__divulong_STK02
	MVFF	STK01,__divulong_STK01
	MVFF	STK00,__divulong_STK00
	MVF	r0x10D5,0,0
	CALL	__divulong
	MVF	r0x10D5,1,0
	MVF	STK01,0,0
	MVF	r0x10D3,1,0
	MVF	STK02,0,0
	ADDL	0x80
	MVF	r0x10D2,1,0
	MVL	0x0c
	ADDC	r0x10D3,1,0
	MVL	0x00
	ADDC	STK00,1,0
	ADDC	r0x10D5,1,0
;	;.line	392; ".\Source\App_ADC.c"	return ((tmp + 5) / 10 * 10);
	MVL	0x05
	ADDF	r0x10D2,1,0
	MVL	0x00
	ADDC	r0x10D3,1,0
	ADDC	STK00,1,0
	ADDC	r0x10D5,1,0
	MVL	0x0a
	MVF	__divulong_STK06,1,0
	CLRF	__divulong_STK05,0
	CLRF	__divulong_STK04,0
	CLRF	__divulong_STK03,0
	MVF	r0x10D2,0,0
	MVF	__divulong_STK02,1,0
	MVF	r0x10D3,0,0
	MVF	__divulong_STK01,1,0
	MVFF	STK00,__divulong_STK00
	MVF	r0x10D5,0,0
	CALL	__divulong
	MVFF	STK02,__mulint_STK02
	MVFF	STK01,__mulint_STK01
	MVL	0x0a
	MVF	__mulint_STK00,1,0
	MVL	0x00
	CALL	__mulint
	JMP	_00255_DS_
_00252_DS_:
;	;.line	398; ".\Source\App_ADC.c"	if(eTempUnit == Centigrade)
	MVL	0x5a
	CPSE	_eTempUnit,0
	JMP	_00249_DS_
;	;.line	400; ".\Source\App_ADC.c"	tmp = temp;
	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
;	;.line	401; ".\Source\App_ADC.c"	return tmp;
	MVF	STK00,1,0
	MVF	r0x10D1,0,0
	JMP	_00255_DS_
_00249_DS_:
;	;.line	404; ".\Source\App_ADC.c"	else if(eTempUnit == Fahrenheit)
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00255_DS_
;	;.line	406; ".\Source\App_ADC.c"	tmp = temp ;
	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
;	;.line	408; ".\Source\App_ADC.c"	tmp = (uint32)tmp * 9 / 5 + 3200;
	MVF	__mullong_STK06,1,0
	MVF	r0x10D1,0,0
	MVF	__mullong_STK05,1,0
	CLRF	__mullong_STK04,0
	CLRF	__mullong_STK03,0
	MVL	0x09
	MVF	__mullong_STK02,1,0
	CLRF	__mullong_STK01,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10D3,1,0
	MVL	0x05
	MVF	__divulong_STK06,1,0
	CLRF	__divulong_STK05,0
	CLRF	__divulong_STK04,0
	CLRF	__divulong_STK03,0
	MVFF	STK02,__divulong_STK02
	MVFF	STK01,__divulong_STK01
	MVFF	STK00,__divulong_STK00
	MVF	r0x10D3,0,0
	CALL	__divulong
	MVF	r0x10D3,1,0
	MVF	STK00,0,0
	MVF	r0x10D2,1,0
	MVF	STK02,0,0
	ADDL	0x80
	MVF	STK00,1,0
	MVL	0x0c
	ADDC	STK01,1,0
	MVL	0x00
	ADDC	r0x10D2,1,0
	ADDC	r0x10D3,1,0
;	;.line	409; ".\Source\App_ADC.c"	return tmp;
	MVF	STK01,0,0
_00255_DS_:
;	;.line	412; ".\Source\App_ADC.c"	}
	RET	
; exit point of _Centigrade_Convert_Fahrenheit
	.ENDFUNC	_Centigrade_Convert_Fahrenheit
;--------------------------------------------------------

.globl _Get_250msTemp

;--------------------------------------------------------
	.FUNC _Get_250msTemp:$r:0:0:$C:_NTC_ADCData:$C:__mullong:$C:__divulong:$C:__g2ptrget2\
:$C:__mulint\
:$L:r0x10A5:$L:r0x10A6:$L:r0x10A7:$L:r0x10A8:$L:r0x10A9\
:$L:r0x10AA:$L:r0x10AD:$L:r0x10AE:$L:r0x10AF:$L:r0x10B0\
:$L:r0x10B2:$L:r0x10B1:$L:r0x10B3:$L:r0x10B4:$L:r0x10B5\
:$L:r0x10B6:$L:r0x10B7:$L:r0x10B8
;--------------------------------------------------------
;	;.line	242; ".\Source\App_ADC.c"	uint16 n = 250,lower = 0,upper = 501,i;
_Get_250msTemp:	;Function start
	MVL	0xfa
	CLRF	r0x10A6,0
	CLRF	r0x10A7,0
	CLRF	r0x10A8,0
	MVF	r0x10A5,1,0
	MVL	0xf5
	MVF	r0x10A9,1,0
	MVL	0x01
	MVF	r0x10AA,1,0
;	;.line	248; ".\Source\App_ADC.c"	if((eDisplay_Interfaces == Display_TemperatureDetecting) || (eDisplay_Interfaces == Display_MeasuredTemperature) || (eDisplay_Interfaces == Display_Calibration))
	MVF	_eDisplay_Interfaces,0,0
	ADDL	0xF1
	BTSZ	_STATUS,0
	JMP	_00156_DS_
	ADDL	0xFE
	BTSZ	_STATUS,0
	JMP	_00156_DS_
	MVL	0x07
	CPSE	_eDisplay_Interfaces,0
	JMP	_00163_DS_
_00156_DS_:
;	;.line	250; ".\Source\App_ADC.c"	if(sADC.Get_250msTemp_Flag)
	BTSS	_sADC,0
	JMP	_00163_DS_
;	;.line	262; ".\Source\App_ADC.c"	if(NTC_ADCData())
	CALL	_NTC_ADCData
	.CHKPARA _NTC_ADCData 0
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00163_DS_
;	;.line	272; ".\Source\App_ADC.c"	sADC.RawRntc = (uint32)sADC.AI2_AI3_Data * 30000 / (65536 - sADC.AI2_AI3_Data);
	MVF	(_sADC + 9),0,0
	MVF	r0x10AD,1,0
	MVF	(_sADC + 10),0,0
	MVF	r0x10AE,1,0
	MVL	0x00
	BTSZ	r0x10AE,7
	MVL	0xff
	MVF	r0x10B2,1,0
	MVF	r0x10B1,1,0
	MVF	r0x10AD,0,0
	MVF	__mullong_STK06,1,0
	MVF	r0x10AE,0,0
	MVF	__mullong_STK05,1,0
	MVF	r0x10B1,0,0
	MVF	__mullong_STK04,1,0
	MVF	r0x10B2,0,0
	MVF	__mullong_STK03,1,0
	MVL	0x30
	MVF	__mullong_STK02,1,0
	MVL	0x75
	MVF	__mullong_STK01,1,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	.CHKPARA __mullong 8
	CLRF	r0x10B5,0
	MVF	r0x10B2,1,0
	BTSZ	r0x10AE,7
	SETF	r0x10B5,0
	COMF	r0x10AD,0,0
	ADDL	0x01
	COMF	r0x10AE,1,0
	MVF	r0x10AD,1,0
	COMF	r0x10B5,0,0
	MVF	r0x10B6,1,0
	MVL	0x00
	ADDC	r0x10AE,1,0
	MVL	0x01
	ADDC	r0x10B6,1,0
	CLRF	r0x10B7,0
	BTSZ	r0x10B6,7
	SETF	r0x10B7,0
	MVF	r0x10AD,0,0
	MVF	__divulong_STK06,1,0
	MVF	r0x10AE,0,0
	MVF	__divulong_STK05,1,0
	MVF	r0x10B6,0,0
	MVF	__divulong_STK04,1,0
	MVF	r0x10B7,0,0
	MVF	__divulong_STK03,1,0
	MVFF	STK02,__divulong_STK02
	MVFF	STK01,__divulong_STK01
	MVFF	STK00,__divulong_STK00
	MVF	r0x10B2,0,0
	CALL	__divulong
	.CHKPARA __divulong 8
	MVF	STK02,0,0
	MVF	(_sADC + 21),1,0
	MVF	STK01,0,0
	MVF	(_sADC + 22),1,0
;	;.line	275; ".\Source\App_ADC.c"	sADC.Rntc = (uint32)sADC.RawRntc * sTempCal.Temp_Ratio / 10000;
	MVF	STK01,1,0
	MVF	(_sTempCal + 2),0,0
	MVF	__mullong_STK06,1,0
	MVF	(_sTempCal + 3),0,0
	MVF	__mullong_STK05,1,0
	CLRF	__mullong_STK04,0
	CLRF	__mullong_STK03,0
	MVFF	STK02,__mullong_STK02
	MVFF	STK01,__mullong_STK01
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10B0,1,0
	MVL	0x10
	MVF	__divulong_STK06,1,0
	MVL	0x27
	MVF	__divulong_STK05,1,0
	CLRF	__divulong_STK04,0
	CLRF	__divulong_STK03,0
	MVFF	STK02,__divulong_STK02
	MVFF	STK01,__divulong_STK01
	MVFF	STK00,__divulong_STK00
	MVF	r0x10B0,0,0
	CALL	__divulong
	MVF	STK02,0,0
	MVF	(_sADC + 23),1,0
	MVF	STK01,0,0
	MVF	(_sADC + 24),1,0
;	;.line	282; ".\Source\App_ADC.c"	for(i = lower;i < upper;i++)
	CLRF	r0x10AD,0
	CLRF	r0x10AE,0
_00161_DS_:
	MVF	r0x10A9,0,0
	SUBF	r0x10AD,0,0
	MVF	r0x10AA,0,0
	SUBC	r0x10AE,0,0
	BTSZ	_STATUS,4
	JMP	_00163_DS_
;	;.line	284; ".\Source\App_ADC.c"	if(sADC.Rntc < R_Table[n])
	MVF	(_sADC + 23),0,0
	MVF	r0x10AF,1,0
	MVF	(_sADC + 24),0,0
	MVF	r0x10B0,1,0
	BCF	_STATUS,4
	RLFC	r0x10A5,0,0
	MVF	r0x10B1,1,0
	RLFC	r0x10A6,0,0
	MVF	r0x10B2,1,0
	MVF	r0x10B1,0,0
	ADDL	(_R_Table + 0)
	MVF	__g2ptrget2_STK00,1,0
	MVL	high (_R_Table + 0)
	ADDC	r0x10B2,0,0
	IORL	0x80
	CALL	__g2ptrget2
	MVF	r0x10B4,1,0
	MVF	STK00,0,0
	SUBF	r0x10AF,0,0
	MVF	r0x10B4,0,0
	SUBC	r0x10B0,0,0
	BTSZ	_STATUS,4
	JMP	_00141_DS_
;	;.line	286; ".\Source\App_ADC.c"	lower = n;
	MVF	r0x10A5,0,0
	MVF	r0x10A7,1,0
	MVF	r0x10A6,0,0
	MVF	r0x10A8,1,0
;	;.line	287; ".\Source\App_ADC.c"	n = (lower + upper) / 2;
	MVF	r0x10A9,0,0
	ADDF	r0x10A5,0,0
	MVF	r0x10AF,1,0
	MVF	r0x10A6,0,0
	ADDC	r0x10AA,0,0
	BCF	_STATUS,4
	RRFC	_WREG,0,0
	MVF	r0x10A6,1,0
	RRFC	r0x10AF,0,0
	MVF	r0x10A5,1,0
	JMP	_00142_DS_
_00141_DS_:
;	;.line	291; ".\Source\App_ADC.c"	upper = n;
	MVF	r0x10A5,0,0
	MVF	r0x10A9,1,0
	MVF	r0x10A6,0,0
	MVF	r0x10AA,1,0
;	;.line	292; ".\Source\App_ADC.c"	n = (lower + upper) / 2;
	MVF	r0x10A5,0,0
	ADDF	r0x10A7,0,0
	MVF	r0x10AF,1,0
	MVF	r0x10A8,0,0
	ADDC	r0x10A6,0,0
	BCF	_STATUS,4
	RRFC	_WREG,0,0
	MVF	r0x10A6,1,0
	RRFC	r0x10AF,0,0
	MVF	r0x10A5,1,0
_00142_DS_:
;	;.line	295; ".\Source\App_ADC.c"	if	(sADC.Rntc < 330)
	MVF	(_sADC + 23),0,0
	ADDL	0xb6
	MVL	0xfe
	ADDC	(_sADC + 24),0,0
	BTSZ	_STATUS,4
	JMP	_00149_DS_
;	;.line	298; ".\Source\App_ADC.c"	i = upper;
	MVF	r0x10A9,0,0
	MVF	r0x10AD,1,0
	MVF	r0x10AA,0,0
	MVF	r0x10AE,1,0
;	;.line	300; ".\Source\App_ADC.c"	sADC.Centigrade250msTemp = 10000;
	MVL	0x10
	MVF	(_sADC + 13),1,0
	MVL	0x27
	MVF	(_sADC + 14),1,0
	JMP	_00162_DS_
_00149_DS_:
;	;.line	303; ".\Source\App_ADC.c"	else if(sADC.Rntc > 16335)
	MVF	(_sADC + 23),0,0
	ADDL	0x30
	MVL	0xc0
	ADDC	(_sADC + 24),0,0
	BTSS	_STATUS,4
	JMP	_00146_DS_
;	;.line	306; ".\Source\App_ADC.c"	i = upper;
	MVF	r0x10A9,0,0
	MVF	r0x10AD,1,0
	MVF	r0x10AA,0,0
	MVF	r0x10AE,1,0
;	;.line	308; ".\Source\App_ADC.c"	sADC.Centigrade250msTemp = 0;
	CLRF	(_sADC + 13),0
	CLRF	(_sADC + 14),0
	JMP	_00162_DS_
_00146_DS_:
;	;.line	310; ".\Source\App_ADC.c"	else if(upper - lower == 1)
	MVF	r0x10A7,0,0
	SUBF	r0x10A9,0,0
	MVF	r0x10AF,1,0
	MVF	r0x10A8,0,0
	SUBC	r0x10AA,0,0
	MVF	r0x10B0,1,0
	DCF	r0x10AF,0,0
	IORF	r0x10B0,0,0
	BTSS	_STATUS,0
	JMP	_00162_DS_
;	;.line	313; ".\Source\App_ADC.c"	i = upper;
	MVF	r0x10A9,0,0
	MVF	r0x10AD,1,0
	MVF	r0x10AA,0,0
	MVF	r0x10AE,1,0
;	;.line	317; ".\Source\App_ADC.c"	tmp = (uint32)(R_Table[lower] - sADC.Rntc);
	BCF	_STATUS,4
	RLFC	r0x10A7,0,0
	MVF	r0x10AF,1,0
	RLFC	r0x10A8,0,0
	MVF	r0x10B0,1,0
	MVF	r0x10AF,0,0
	ADDL	(_R_Table + 0)
	MVF	__g2ptrget2_STK00,1,0
	MVL	high (_R_Table + 0)
	ADDC	r0x10B0,0,0
	IORL	0x80
	CALL	__g2ptrget2
	MVF	r0x10B2,1,0
	MVF	STK00,0,0
	MVF	r0x10B1,1,0
	MVF	(_sADC + 23),0,0
	SUBF	r0x10B1,0,0
	MVF	__mullong_STK06,1,0
	MVF	(_sADC + 24),0,0
	SUBC	r0x10B2,0,0
;	;.line	318; ".\Source\App_ADC.c"	tmp *= 100;
	MVF	__mullong_STK05,1,0
	CLRF	__mullong_STK04,0
	CLRF	__mullong_STK03,0
	MVL	0x64
	MVF	__mullong_STK02,1,0
	CLRF	__mullong_STK01,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10B4,1,0
	MVF	STK00,0,0
	MVF	r0x10B3,1,0
	MVF	STK01,0,0
	MVF	r0x10B0,1,0
	MVF	STK02,0,0
	MVF	r0x10AF,1,0
;	;.line	319; ".\Source\App_ADC.c"	tmp /= (R_Table[lower] - R_Table[upper]);
	BCF	_STATUS,4
	RLFC	r0x10A9,0,0
	MVF	r0x10B5,1,0
	RLFC	r0x10AA,0,0
	MVF	r0x10B6,1,0
	MVF	r0x10B5,0,0
	ADDL	(_R_Table + 0)
	MVF	__g2ptrget2_STK00,1,0
	MVL	high (_R_Table + 0)
	ADDC	r0x10B6,0,0
	IORL	0x80
	CALL	__g2ptrget2
	MVF	r0x10B8,1,0
	MVF	STK00,0,0
	SUBF	r0x10B1,0,0
	MVF	__divulong_STK06,1,0
	MVF	r0x10B8,0,0
	SUBC	r0x10B2,0,0
	MVF	__divulong_STK05,1,0
	CLRF	__divulong_STK04,0
	CLRF	__divulong_STK03,0
	MVF	r0x10AF,0,0
	MVF	__divulong_STK02,1,0
	MVF	r0x10B0,0,0
	MVF	__divulong_STK01,1,0
	MVF	r0x10B3,0,0
	MVF	__divulong_STK00,1,0
	MVF	r0x10B4,0,0
	CALL	__divulong
	MVF	r0x10B2,1,0
;	;.line	320; ".\Source\App_ADC.c"	tmp = tmp / 10;
	MVL	0x0a
	MVF	__divulong_STK06,1,0
	CLRF	__divulong_STK05,0
	CLRF	__divulong_STK04,0
	CLRF	__divulong_STK03,0
	MVFF	STK02,__divulong_STK02
	MVFF	STK01,__divulong_STK01
	MVFF	STK00,__divulong_STK00
	MVF	r0x10B2,0,0
	CALL	__divulong
	MVF	STK01,0,0
	MVF	r0x10B0,1,0
	MVF	STK02,0,0
	MVF	r0x10AF,1,0
;	;.line	322; ".\Source\App_ADC.c"	sADC.Centigrade250msTemp = lower * 10 + tmp;
	MVF	r0x10A7,0,0
	MVF	__mulint_STK02,1,0
	MVF	r0x10A8,0,0
	MVF	__mulint_STK01,1,0
	MVL	0x0a
	MVF	__mulint_STK00,1,0
	MVL	0x00
	CALL	__mulint
	.CHKPARA __mulint 4
	MVF	r0x10B4,1,0
	MVF	r0x10AF,0,0
	ADDF	STK00,0,0
	MVF	(_sADC + 13),1,0
	MVF	r0x10B4,0,0
	ADDC	r0x10B0,0,0
	MVF	(_sADC + 14),1,0
;	;.line	324; ".\Source\App_ADC.c"	sADC.Get_250msTemp_Flag = FALSE;
	BCF	_sADC,0
;	;.line	327; ".\Source\App_ADC.c"	sTIMx.TempSampleFlag = TRUE;
	BSF	_sTIMx,2
_00162_DS_:
;	;.line	282; ".\Source\App_ADC.c"	for(i = lower;i < upper;i++)
	INSUZ	r0x10AD,1,0
	INF	r0x10AE,1,0
	JMP	_00161_DS_
_00163_DS_:
;	;.line	366; ".\Source\App_ADC.c"	}
	RET	
; exit point of _Get_250msTemp
	.ENDFUNC	_Get_250msTemp
;--------------------------------------------------------

.globl _NTC_ADCData

;--------------------------------------------------------
	.FUNC _NTC_ADCData:$r:1:0:$C:_ADC_Average\

;--------------------------------------------------------
;	;.line	224; ".\Source\App_ADC.c"	if(ADC_Average())
_NTC_ADCData:	;Function start
	CALL	_ADC_Average
	.CHKPARA _ADC_Average 0
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00134_DS_
;	;.line	227; ".\Source\App_ADC.c"	sADC.AI2_AI3_Data = sADC.ADCSum;
	MVF	(_sADC + 17),0,0
	MVF	(_sADC + 9),1,0
	MVF	(_sADC + 18),0,0
	MVF	(_sADC + 10),1,0
;	;.line	228; ".\Source\App_ADC.c"	return TRUE;
	MVL	0x01
	JMP	_00135_DS_
_00134_DS_:
;	;.line	230; ".\Source\App_ADC.c"	return FALSE;
	MVL	0x00
_00135_DS_:
;	;.line	231; ".\Source\App_ADC.c"	}
	RET	
; exit point of _NTC_ADCData
	.ENDFUNC	_NTC_ADCData
;--------------------------------------------------------

.globl _ADC_Average

;--------------------------------------------------------
	.FUNC _ADC_Average:$r:1:0:$C:_ADCGetData\
:$L:r0x1096:$L:r0x1097:$L:r0x1098:$L:r0x1099:$L:r0x109C\
:$L:r0x109D:$L:r0x109F:$L:r0x109E
;--------------------------------------------------------
;	;.line	61; ".\Source\App_ADC.c"	if(sADC.Flag_ADCDone)
_ADC_Average:	;Function start
	BTSS	_sADC,1
	JMP	_00121_DS_
;	;.line	63; ".\Source\App_ADC.c"	sADC.Flag_ADCDone = FALSE;
	BCF	_sADC,1
;	;.line	66; ".\Source\App_ADC.c"	sADC.ADCData = ADCGetData();
	CALL	_ADCGetData
	.CHKPARA _ADCGetData 0
	MVF	(_sADC + 4),1,0
	MVF	STK00,0,0
	MVF	(_sADC + 3),1,0
;	;.line	69; ".\Source\App_ADC.c"	ADC_INT_Enable();
	BSF	_INTE0,5
;	;.line	80; ".\Source\App_ADC.c"	if(++sADC.ADCCounts > FilterNum)
	INF	(_sADC + 2),0,0
	MVF	r0x1096,1,0
	MVF	(_sADC + 2),1,0
	MVL	0x04
	CPSG	r0x1096,0
	JMP	_00121_DS_
;	;.line	92; ".\Source\App_ADC.c"	if(sADC.ADCData > 0x6666 || sADC.ADCData < 222)
	MVF	(_sADC + 3),0,0
	MVF	r0x1096,1,0
	MVF	(_sADC + 4),0,0
	MVF	r0x1097,1,0
	MVF	r0x1096,0,0
	ADDL	0x99
	MVL	0x19
	ADDC	r0x1097,0,0
	BTSZ	_STATUS,1
	JMP	_00109_DS_
	MVF	r0x1096,0,0
	ADDL	0x22
	MVL	0x7f
	ADDC	r0x1097,0,0
	BTSZ	_STATUS,1
	JMP	_00110_DS_
_00109_DS_:
;	;.line	95; ".\Source\App_ADC.c"	ERR[Err] = TRUE;
	MVL	0x01
	MVF	(_ERR + 8),1,0
_00110_DS_:
;	;.line	100; ".\Source\App_ADC.c"	if(sADC.ADCCounts == FilterNum + 1)
	MVL	0x05
	CPSE	(_sADC + 2),0
	JMP	_00113_DS_
;	;.line	102; ".\Source\App_ADC.c"	sADC.ADCSum = 0;
	CLRF	(_sADC + 17),0
	CLRF	(_sADC + 18),0
	CLRF	(_sADC + 19),0
	CLRF	(_sADC + 20),0
;	;.line	103; ".\Source\App_ADC.c"	sADC.MinData = sADC.ADCData;
	MVF	(_sADC + 3),0,0
	MVF	(_sADC + 5),1,0
	MVF	(_sADC + 4),0,0
	MVF	(_sADC + 6),1,0
;	;.line	104; ".\Source\App_ADC.c"	sADC.MaxData = sADC.ADCData;
	MVF	(_sADC + 3),0,0
	MVF	(_sADC + 7),1,0
	MVF	(_sADC + 4),0,0
	MVF	(_sADC + 8),1,0
_00113_DS_:
;	;.line	112; ".\Source\App_ADC.c"	sADC.ADCSum += sADC.ADCData;
	MVF	(_sADC + 17),0,0
	MVF	r0x1096,1,0
	MVF	(_sADC + 18),0,0
	MVF	r0x1097,1,0
	MVF	(_sADC + 19),0,0
	MVF	r0x1098,1,0
	MVF	(_sADC + 20),0,0
	MVF	r0x1099,1,0
	MVF	(_sADC + 3),0,0
	MVF	r0x109C,1,0
	MVF	(_sADC + 4),0,0
	MVF	r0x109D,1,0
	MVL	0x00
	BTSZ	r0x109D,7
	MVL	0xff
	MVF	r0x109F,1,0
	MVF	r0x109E,1,0
	MVF	r0x109C,0,0
	ADDF	r0x1096,0,0
	MVF	(_sADC + 17),1,0
	MVF	r0x1097,0,0
	ADDC	r0x109D,0,0
	MVF	(_sADC + 18),1,0
	MVF	r0x1098,0,0
	ADDC	r0x109E,0,0
	MVF	(_sADC + 19),1,0
	MVF	r0x1099,0,0
	ADDC	r0x109F,0,0
	MVF	(_sADC + 20),1,0
;	;.line	115; ".\Source\App_ADC.c"	if(sADC.MaxData < sADC.ADCData)
	MVF	(_sADC + 7),0,0
	MVF	r0x1096,1,0
	MVF	(_sADC + 8),0,0
	MVF	r0x1097,1,0
	MVF	(_sADC + 3),0,0
	SUBF	r0x1096,0,0
	MVF	r0x1097,0,0
	XORL	0x80
	MVF	STK00,1,0
	MVF	(_sADC + 4),0,0
	XORL	0x80
	SUBC	STK00,0,0
	BTSZ	_STATUS,4
	JMP	_00115_DS_
;	;.line	117; ".\Source\App_ADC.c"	sADC.MaxData = sADC.ADCData;
	MVF	(_sADC + 3),0,0
	MVF	(_sADC + 7),1,0
	MVF	(_sADC + 4),0,0
	MVF	(_sADC + 8),1,0
_00115_DS_:
;	;.line	120; ".\Source\App_ADC.c"	if(sADC.MinData > sADC.ADCData)
	MVF	(_sADC + 5),0,0
	MVF	r0x1096,1,0
	MVF	(_sADC + 6),0,0
	MVF	r0x1097,1,0
	MVF	r0x1096,0,0
	SUBF	(_sADC + 3),0,0
	MVF	(_sADC + 4),0,0
	XORL	0x80
	MVF	STK00,1,0
	MVF	r0x1097,0,0
	XORL	0x80
	SUBC	STK00,0,0
	BTSZ	_STATUS,4
	JMP	_00121_DS_
;	;.line	122; ".\Source\App_ADC.c"	sADC.MinData = sADC.ADCData;
	MVF	(_sADC + 3),0,0
	MVF	(_sADC + 5),1,0
	MVF	(_sADC + 4),0,0
	MVF	(_sADC + 6),1,0
_00121_DS_:
;	;.line	136; ".\Source\App_ADC.c"	if(sADC.ADCCounts > (FilterNum + 5))
	MVL	0x09
	CPSG	(_sADC + 2),0
	JMP	_00126_DS_
;	;.line	144; ".\Source\App_ADC.c"	if(eDisplay_Interfaces == Display_Calibration)
	MVL	0x07
	CPSE	_eDisplay_Interfaces,0
	JMP	_00123_DS_
;	;.line	146; ".\Source\App_ADC.c"	sADC.ADCSum = sADC.ADCSum - sADC.MinData - sADC.MaxData;
	MVF	(_sADC + 17),0,0
	MVF	r0x1096,1,0
	MVF	(_sADC + 18),0,0
	MVF	r0x1097,1,0
	MVF	(_sADC + 19),0,0
	MVF	r0x1098,1,0
	MVF	(_sADC + 20),0,0
	MVF	r0x1099,1,0
	MVF	(_sADC + 5),0,0
	MVF	r0x109C,1,0
	MVF	(_sADC + 6),0,0
	MVF	r0x109D,1,0
	MVL	0x00
	BTSZ	r0x109D,7
	MVL	0xff
	MVF	r0x109F,1,0
	MVF	r0x109E,1,0
	MVF	r0x109C,0,0
	SUBF	r0x1096,1,0
	MVF	r0x109D,0,0
	SUBC	r0x1097,1,0
	MVF	r0x109E,0,0
	SUBC	r0x1098,1,0
	MVF	r0x109F,0,0
	SUBC	r0x1099,1,0
	MVF	(_sADC + 7),0,0
	MVF	r0x109C,1,0
	MVF	(_sADC + 8),0,0
	MVF	r0x109D,1,0
	MVL	0x00
	BTSZ	r0x109D,7
	MVL	0xff
	MVF	r0x109F,1,0
	MVF	r0x109E,1,0
	MVF	r0x109C,0,0
	SUBF	r0x1096,1,0
	MVF	r0x109D,0,0
	SUBC	r0x1097,1,0
	MVF	r0x109E,0,0
	SUBC	r0x1098,1,0
	MVF	r0x109F,0,0
	SUBC	r0x1099,1,0
	MVF	r0x1096,0,0
	MVF	(_sADC + 17),1,0
	MVF	r0x1097,0,0
	MVF	(_sADC + 18),1,0
	MVF	r0x1098,0,0
	MVF	(_sADC + 19),1,0
	MVF	r0x1099,0,0
	MVF	(_sADC + 20),1,0
;	;.line	150; ".\Source\App_ADC.c"	sADC.ADCSum >>= 2;
	ARRC	r0x1099,0,0
	MVF	(_sADC + 20),1,0
	RRFC	r0x1098,0,0
	MVF	(_sADC + 19),1,0
	RRFC	r0x1097,0,0
	MVF	(_sADC + 18),1,0
	RRFC	r0x1096,0,0
	MVF	(_sADC + 17),1,0
	ARRC	(_sADC + 20),1,0
	RRFC	(_sADC + 19),1,0
	RRFC	(_sADC + 18),1,0
	RRFC	(_sADC + 17),1,0
;	;.line	153; ".\Source\App_ADC.c"	sADC.ADCCounts = 0;
	CLRF	(_sADC + 2),0
	JMP	_00124_DS_
_00123_DS_:
;	;.line	200; ".\Source\App_ADC.c"	sADC.ADCSum = sADC.ADCSum - sADC.MinData - sADC.MaxData;
	MVF	(_sADC + 17),0,0
	MVF	r0x1096,1,0
	MVF	(_sADC + 18),0,0
	MVF	r0x1097,1,0
	MVF	(_sADC + 19),0,0
	MVF	r0x1098,1,0
	MVF	(_sADC + 20),0,0
	MVF	r0x1099,1,0
	MVF	(_sADC + 5),0,0
	MVF	r0x109C,1,0
	MVF	(_sADC + 6),0,0
	MVF	r0x109D,1,0
	MVL	0x00
	BTSZ	r0x109D,7
	MVL	0xff
	MVF	r0x109F,1,0
	MVF	r0x109E,1,0
	MVF	r0x109C,0,0
	SUBF	r0x1096,1,0
	MVF	r0x109D,0,0
	SUBC	r0x1097,1,0
	MVF	r0x109E,0,0
	SUBC	r0x1098,1,0
	MVF	r0x109F,0,0
	SUBC	r0x1099,1,0
	MVF	(_sADC + 7),0,0
	MVF	r0x109C,1,0
	MVF	(_sADC + 8),0,0
	MVF	r0x109D,1,0
	MVL	0x00
	BTSZ	r0x109D,7
	MVL	0xff
	MVF	r0x109F,1,0
	MVF	r0x109E,1,0
	MVF	r0x109C,0,0
	SUBF	r0x1096,1,0
	MVF	r0x109D,0,0
	SUBC	r0x1097,1,0
	MVF	r0x109E,0,0
	SUBC	r0x1098,1,0
	MVF	r0x109F,0,0
	SUBC	r0x1099,1,0
	MVF	r0x1096,0,0
	MVF	(_sADC + 17),1,0
	MVF	r0x1097,0,0
	MVF	(_sADC + 18),1,0
	MVF	r0x1098,0,0
	MVF	(_sADC + 19),1,0
	MVF	r0x1099,0,0
	MVF	(_sADC + 20),1,0
;	;.line	201; ".\Source\App_ADC.c"	sADC.ADCSum >>= 2;
	ARRC	r0x1099,0,0
	MVF	(_sADC + 20),1,0
	RRFC	r0x1098,0,0
	MVF	(_sADC + 19),1,0
	RRFC	r0x1097,0,0
	MVF	(_sADC + 18),1,0
	RRFC	r0x1096,0,0
	MVF	(_sADC + 17),1,0
	ARRC	(_sADC + 20),1,0
	RRFC	(_sADC + 19),1,0
	RRFC	(_sADC + 18),1,0
	RRFC	(_sADC + 17),1,0
;	;.line	203; ".\Source\App_ADC.c"	sADC.ADCCounts = 0;
	CLRF	(_sADC + 2),0
_00124_DS_:
;	;.line	206; ".\Source\App_ADC.c"	return TRUE;
	MVL	0x01
	JMP	_00128_DS_
_00126_DS_:
;	;.line	210; ".\Source\App_ADC.c"	return FALSE;
	MVL	0x00
_00128_DS_:
;	;.line	212; ".\Source\App_ADC.c"	}
	RET	
; exit point of _ADC_Average
	.ENDFUNC	_ADC_Average
;--------------------------------------------------------

.globl _ADCGetData

;--------------------------------------------------------
	.FUNC _ADCGetData:$r:2:0:$L:_ADCGetData_ADCData1_10000_417
;--------------------------------------------------------
;	;.line	29; ".\Source\App_ADC.c"	((int8 *)(&ADCData1))[0] = AD1L;
_ADCGetData:	;Function start
	MVF	_AD1L,0,0
	MVF	(_ADCGetData_ADCData1_10000_417 + 0),1,0
;	;.line	30; ".\Source\App_ADC.c"	((int8 *)(&ADCData1))[1] = AD1M;
	MVF	_AD1M,0,0
	MVF	(_ADCGetData_ADCData1_10000_417 + 1),1,0
;	;.line	31; ".\Source\App_ADC.c"	((int8 *)(&ADCData1))[2] = AD1H;
	MVF	_AD1H,0,0
	MVF	(_ADCGetData_ADCData1_10000_417 + 2),1,0
;	;.line	34; ".\Source\App_ADC.c"	ADCData2  = (int16)(ADCData1 >> 8);
	MVF	(_ADCGetData_ADCData1_10000_417 + 1),0,0
;	;.line	36; ".\Source\App_ADC.c"	return ADCData2;
	MVF	STK00,1,0
	MVF	(_ADCGetData_ADCData1_10000_417 + 2),0,0
;	;.line	37; ".\Source\App_ADC.c"	}
	RET	
; exit point of _ADCGetData
	.ENDFUNC	_ADCGetData
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
	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_ADC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_ADC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_ADC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
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
	;--cdb--S:G$ADCGetData$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$ADC_Average$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$NTC_ADCData$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_mullong$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$_divulong$0$0({2}DF,SL:UL),C,0,0
	;--cdb--S:G$_mulint$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
	;--cdb--S:LApp_ADC.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
	;--cdb--S:LApp_ADC.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_ADC$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_ADC$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_ADC$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_ADC$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_ADC$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_ADC$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_ADC$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_ADC$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_ADC$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_ADC$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_ADC$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_ADC$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_ADC$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_ADC$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_ADC$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_ADC$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_ADC$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
	;--cdb--S:G$R_Table$0$0({1002}DA501d,SI:U),D,0,0
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
	;--cdb--S:LApp_ADC.ADCGetData._ADCGetData_ADCData1_10000_417$ADCData1$2710$417({4}SL:SL),E,0,0
	;--cdb--S:LApp_ADC.ADCGetData._ADCGetData_ADCData2_10000_417$ADCData2$2710$417({2}SI:S),R,0,0,[r0x1090,r0x1091]
	;--cdb--S:LApp_ADC.Get_250msTemp._Get_250msTemp_n_10000_443$n$2710$443({2}SI:U),R,0,0,[r0x10A5,r0x10A6]
	;--cdb--S:LApp_ADC.Get_250msTemp._Get_250msTemp_lower_10000_443$lower$2710$443({2}SI:U),R,0,0,[r0x10A7,r0x10A8]
	;--cdb--S:LApp_ADC.Get_250msTemp._Get_250msTemp_upper_10000_443$upper$2710$443({2}SI:U),R,0,0,[r0x10A9,r0x10AA]
	;--cdb--S:LApp_ADC.Get_250msTemp._Get_250msTemp_i_10000_443$i$2710$443({2}SI:U),R,0,0,[r0x10AD,r0x10AE]
	;--cdb--S:LApp_ADC.Get_250msTemp._Get_250msTemp_tmp_10000_443$tmp$2710$443({4}SL:UL),R,0,0,[r0x10AF,r0x10B0,r0x10B1,r0x10B2]
	;--cdb--S:LApp_ADC.Centigrade_Convert_Fahrenheit._Centigrade_Convert_Fahrenheit_temp_10000_461$temp$2710$461({2}SI:U),R,0,0,[_Centigrade_Convert_Fahrenheit_STK00,r0x10D1]
	;--cdb--S:LApp_ADC.Centigrade_Convert_Fahrenheit._Centigrade_Convert_Fahrenheit_tmp_10000_462$tmp$2710$462({4}SL:UL),R,0,0,[r0x10D2,r0x10D3,r0x10D4,r0x10D5]
	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
	;--cdb--S:G$_INTE0$0$0({0}:U),Z,0,0
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.globl	__mullong
	.globl	__divulong
	.globl	__mulint
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
	.globl	_UnitExchangeCompleted
	.globl	_ERR
	.globl	_eErr
	.globl	_eDisplay_Interfaces
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
	.globl	_NUM_CODE
	.globl	_CloseTable
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
	.globl	_ADCGetData
	.globl	_ADC_Average
	.globl	_NTC_ADCData
	.globl	_Centigrade_Convert_Fahrenheit
	.globl	_sADC
	.globl	_eADCChannel
	.globl	_R_Table

	.globl	_memcpy
;--------------------------------------------------------
; global -2 definitions
;--------------------------------------------------------
	.area DSEG(DATA)
_sADC:	.ds	45

	.area DSEG(DATA)
_eADCChannel:	.ds	1

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
	.area UDATA (DATA,REL,CON) ;UDL_App_ADC_0	udata
r0x1096:	.ds	1
r0x1097:	.ds	1
r0x1098:	.ds	1
r0x1099:	.ds	1
r0x109C:	.ds	1
r0x109D:	.ds	1
r0x109E:	.ds	1
r0x109F:	.ds	1
r0x10A5:	.ds	1
r0x10A6:	.ds	1
r0x10A7:	.ds	1
r0x10A8:	.ds	1
r0x10A9:	.ds	1
r0x10AA:	.ds	1
r0x10AD:	.ds	1
r0x10AE:	.ds	1
r0x10AF:	.ds	1
r0x10B0:	.ds	1
r0x10B1:	.ds	1
r0x10B2:	.ds	1
r0x10B3:	.ds	1
r0x10B4:	.ds	1
r0x10B5:	.ds	1
r0x10B6:	.ds	1
r0x10B7:	.ds	1
r0x10B8:	.ds	1
r0x10D1:	.ds	1
r0x10D2:	.ds	1
r0x10D3:	.ds	1
r0x10D4:	.ds	1
r0x10D5:	.ds	1
	.area LOCALSTK (STK); local stack var
_ADCGetData_ADCData1_10000_417:	.ds	4
	.globl __mullong_STK06
	.globl __mullong_STK05
	.globl __mullong_STK04
	.globl __mullong_STK03
	.globl __mullong_STK02
	.globl __mullong_STK01
	.globl __mullong_STK00
	.globl __divulong_STK06
	.globl __divulong_STK05
	.globl __divulong_STK04
	.globl __divulong_STK03
	.globl __divulong_STK02
	.globl __divulong_STK01
	.globl __divulong_STK00
	.globl __g2ptrget2_STK00
	.globl __mulint_STK02
	.globl __mulint_STK01
	.globl __mulint_STK00
_Centigrade_Convert_Fahrenheit_STK00:	.ds	1
	.globl _Centigrade_Convert_Fahrenheit_STK00
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

	.area	CONST   (CODE)	 ;App_ADC-0-code, const

_R_Table:
	.byte #0xcf, #0x3f	; 16335
	.byte #0x7b, #0x3f	; 16251
	.byte #0x28, #0x3f	; 16168
	.byte #0xd6, #0x3e	; 16086
	.byte #0x84, #0x3e	; 16004
	.byte #0x33, #0x3e	; 15923
	.byte #0xe2, #0x3d	; 15842
	.byte #0x91, #0x3d	; 15761
	.byte #0x41, #0x3d	; 15681
	.byte #0xf2, #0x3c	; 15602
	.byte #0xa3, #0x3c	; 15523
	.byte #0x54, #0x3c	; 15444
	.byte #0x06, #0x3c	; 15366
	.byte #0xb8, #0x3b	; 15288
	.byte #0x6b, #0x3b	; 15211
	.byte #0x1e, #0x3b	; 15134
	.byte #0xd1, #0x3a	; 15057
	.byte #0x85, #0x3a	; 14981
	.byte #0x3a, #0x3a	; 14906
	.byte #0xef, #0x39	; 14831
	.byte #0xa4, #0x39	; 14756
	.byte #0x5a, #0x39	; 14682
	.byte #0x10, #0x39	; 14608
	.byte #0xc6, #0x38	; 14534
	.byte #0x7d, #0x38	; 14461
	.byte #0x34, #0x38	; 14388
	.byte #0xec, #0x37	; 14316
	.byte #0xa4, #0x37	; 14244
	.byte #0x5d, #0x37	; 14173
	.byte #0x16, #0x37	; 14102
	.byte #0xcf, #0x36	; 14031
	.byte #0x89, #0x36	; 13961
	.byte #0x43, #0x36	; 13891
	.byte #0xfe, #0x35	; 13822
	.byte #0xb9, #0x35	; 13753
	.byte #0x74, #0x35	; 13684
	.byte #0x30, #0x35	; 13616
	.byte #0xec, #0x34	; 13548
	.byte #0xa9, #0x34	; 13481
	.byte #0x65, #0x34	; 13413
	.byte #0x23, #0x34	; 13347
	.byte #0xe0, #0x33	; 13280
	.byte #0x9e, #0x33	; 13214
	.byte #0x5d, #0x33	; 13149
	.byte #0x1b, #0x33	; 13083
	.byte #0xdb, #0x32	; 13019
	.byte #0x9a, #0x32	; 12954
	.byte #0x5a, #0x32	; 12890
	.byte #0x1a, #0x32	; 12826
	.byte #0xdb, #0x31	; 12763
	.byte #0x9b, #0x31	; 12699
	.byte #0x5d, #0x31	; 12637
	.byte #0x1e, #0x31	; 12574
	.byte #0xe0, #0x30	; 12512
	.byte #0xa2, #0x30	; 12450
	.byte #0x65, #0x30	; 12389
	.byte #0x28, #0x30	; 12328
	.byte #0xeb, #0x2f	; 12267
	.byte #0xaf, #0x2f	; 12207
	.byte #0x73, #0x2f	; 12147
	.byte #0x37, #0x2f	; 12087
	.byte #0xfc, #0x2e	; 12028
	.byte #0xc1, #0x2e	; 11969
	.byte #0x86, #0x2e	; 11910
	.byte #0x4c, #0x2e	; 11852
	.byte #0x12, #0x2e	; 11794
	.byte #0xd8, #0x2d	; 11736
	.byte #0x9f, #0x2d	; 11679
	.byte #0x65, #0x2d	; 11621
	.byte #0x2d, #0x2d	; 11565
	.byte #0xf4, #0x2c	; 11508
	.byte #0xbc, #0x2c	; 11452
	.byte #0x84, #0x2c	; 11396
	.byte #0x4d, #0x2c	; 11341
	.byte #0x15, #0x2c	; 11285
	.byte #0xde, #0x2b	; 11230
	.byte #0xa8, #0x2b	; 11176
	.byte #0x71, #0x2b	; 11121
	.byte #0x3b, #0x2b	; 11067
	.byte #0x06, #0x2b	; 11014
	.byte #0xd0, #0x2a	; 10960
	.byte #0x9b, #0x2a	; 10907
	.byte #0x66, #0x2a	; 10854
	.byte #0x32, #0x2a	; 10802
	.byte #0xfd, #0x29	; 10749
	.byte #0xc9, #0x29	; 10697
	.byte #0x95, #0x29	; 10645
	.byte #0x62, #0x29	; 10594
	.byte #0x2f, #0x29	; 10543
	.byte #0xfc, #0x28	; 10492
	.byte #0xc9, #0x28	; 10441
	.byte #0x97, #0x28	; 10391
	.byte #0x65, #0x28	; 10341
	.byte #0x33, #0x28	; 10291
	.byte #0x02, #0x28	; 10242
	.byte #0xd0, #0x27	; 10192
	.byte #0x9f, #0x27	; 10143
	.byte #0x6f, #0x27	; 10095
	.byte #0x3e, #0x27	; 10046
	.byte #0x0e, #0x27	; 9998
	.byte #0xde, #0x26	; 9950
	.byte #0xae, #0x26	; 9902
	.byte #0x7f, #0x26	; 9855
	.byte #0x50, #0x26	; 9808
	.byte #0x21, #0x26	; 9761
	.byte #0xf2, #0x25	; 9714
	.byte #0xc4, #0x25	; 9668
	.byte #0x96, #0x25	; 9622
	.byte #0x68, #0x25	; 9576
	.byte #0x3a, #0x25	; 9530
	.byte #0x0d, #0x25	; 9485
	.byte #0xe0, #0x24	; 9440
	.byte #0xb3, #0x24	; 9395
	.byte #0x86, #0x24	; 9350
	.byte #0x59, #0x24	; 9305
	.byte #0x2d, #0x24	; 9261
	.byte #0x01, #0x24	; 9217
	.byte #0xd6, #0x23	; 9174
	.byte #0xaa, #0x23	; 9130
	.byte #0x7f, #0x23	; 9087
	.byte #0x54, #0x23	; 9044
	.byte #0x29, #0x23	; 9001
	.byte #0xfe, #0x22	; 8958
	.byte #0xd4, #0x22	; 8916
	.byte #0xaa, #0x22	; 8874
	.byte #0x80, #0x22	; 8832
	.byte #0x56, #0x22	; 8790
	.byte #0x2d, #0x22	; 8749
	.byte #0x04, #0x22	; 8708
	.byte #0xdb, #0x21	; 8667
	.byte #0xb2, #0x21	; 8626
	.byte #0x89, #0x21	; 8585
	.byte #0x61, #0x21	; 8545
	.byte #0x39, #0x21	; 8505
	.byte #0x11, #0x21	; 8465
	.byte #0xe9, #0x20	; 8425
	.byte #0xc1, #0x20	; 8385
	.byte #0x9a, #0x20	; 8346
	.byte #0x73, #0x20	; 8307
	.byte #0x4c, #0x20	; 8268
	.byte #0x25, #0x20	; 8229
	.byte #0xff, #0x1f	; 8191
	.byte #0xd9, #0x1f	; 8153
	.byte #0xb3, #0x1f	; 8115
	.byte #0x8d, #0x1f	; 8077
	.byte #0x67, #0x1f	; 8039
	.byte #0x42, #0x1f	; 8002
	.byte #0x1c, #0x1f	; 7964
	.byte #0xf7, #0x1e	; 7927
	.byte #0xd2, #0x1e	; 7890
	.byte #0xae, #0x1e	; 7854
	.byte #0x89, #0x1e	; 7817
	.byte #0x65, #0x1e	; 7781
	.byte #0x41, #0x1e	; 7745
	.byte #0x1d, #0x1e	; 7709
	.byte #0xf9, #0x1d	; 7673
	.byte #0xd5, #0x1d	; 7637
	.byte #0xb2, #0x1d	; 7602
	.byte #0x8f, #0x1d	; 7567
	.byte #0x6c, #0x1d	; 7532
	.byte #0x49, #0x1d	; 7497
	.byte #0x26, #0x1d	; 7462
	.byte #0x04, #0x1d	; 7428
	.byte #0xe2, #0x1c	; 7394
	.byte #0xbf, #0x1c	; 7359
	.byte #0x9e, #0x1c	; 7326
	.byte #0x7c, #0x1c	; 7292
	.byte #0x5a, #0x1c	; 7258
	.byte #0x39, #0x1c	; 7225
	.byte #0x18, #0x1c	; 7192
	.byte #0xf7, #0x1b	; 7159
	.byte #0xd6, #0x1b	; 7126
	.byte #0xb5, #0x1b	; 7093
	.byte #0x94, #0x1b	; 7060
	.byte #0x74, #0x1b	; 7028
	.byte #0x54, #0x1b	; 6996
	.byte #0x34, #0x1b	; 6964
	.byte #0x14, #0x1b	; 6932
	.byte #0xf4, #0x1a	; 6900
	.byte #0xd5, #0x1a	; 6869
	.byte #0xb5, #0x1a	; 6837
	.byte #0x96, #0x1a	; 6806
	.byte #0x77, #0x1a	; 6775
	.byte #0x58, #0x1a	; 6744
	.byte #0x39, #0x1a	; 6713
	.byte #0x1b, #0x1a	; 6683
	.byte #0xfc, #0x19	; 6652
	.byte #0xde, #0x19	; 6622
	.byte #0xc0, #0x19	; 6592
	.byte #0xa2, #0x19	; 6562
	.byte #0x84, #0x19	; 6532
	.byte #0x67, #0x19	; 6503
	.byte #0x49, #0x19	; 6473
	.byte #0x2c, #0x19	; 6444
	.byte #0x0e, #0x19	; 6414
	.byte #0xf1, #0x18	; 6385
	.byte #0xd5, #0x18	; 6357
	.byte #0xb8, #0x18	; 6328
	.byte #0x9b, #0x18	; 6299
	.byte #0x7f, #0x18	; 6271
	.byte #0x62, #0x18	; 6242
	.byte #0x46, #0x18	; 6214
	.byte #0x2a, #0x18	; 6186
	.byte #0x0e, #0x18	; 6158
	.byte #0xf3, #0x17	; 6131
	.byte #0xd7, #0x17	; 6103
	.byte #0xbc, #0x17	; 6076
	.byte #0xa0, #0x17	; 6048
	.byte #0x85, #0x17	; 6021
	.byte #0x6a, #0x17	; 5994
	.byte #0x4f, #0x17	; 5967
	.byte #0x34, #0x17	; 5940
	.byte #0x1a, #0x17	; 5914
	.byte #0xff, #0x16	; 5887
	.byte #0xe5, #0x16	; 5861
	.byte #0xcb, #0x16	; 5835
	.byte #0xb0, #0x16	; 5808
	.byte #0x97, #0x16	; 5783
	.byte #0x7d, #0x16	; 5757
	.byte #0x63, #0x16	; 5731
	.byte #0x49, #0x16	; 5705
	.byte #0x30, #0x16	; 5680
	.byte #0x17, #0x16	; 5655
	.byte #0xfd, #0x15	; 5629
	.byte #0xe4, #0x15	; 5604
	.byte #0xcb, #0x15	; 5579
	.byte #0xb3, #0x15	; 5555
	.byte #0x9a, #0x15	; 5530
	.byte #0x81, #0x15	; 5505
	.byte #0x69, #0x15	; 5481
	.byte #0x51, #0x15	; 5457
	.byte #0x38, #0x15	; 5432
	.byte #0x20, #0x15	; 5408
	.byte #0x08, #0x15	; 5384
	.byte #0xf1, #0x14	; 5361
	.byte #0xd9, #0x14	; 5337
	.byte #0xc1, #0x14	; 5313
	.byte #0xaa, #0x14	; 5290
	.byte #0x92, #0x14	; 5266
	.byte #0x7b, #0x14	; 5243
	.byte #0x64, #0x14	; 5220
	.byte #0x4d, #0x14	; 5197
	.byte #0x36, #0x14	; 5174
	.byte #0x1f, #0x14	; 5151
	.byte #0x09, #0x14	; 5129
	.byte #0xf2, #0x13	; 5106
	.byte #0xdc, #0x13	; 5084
	.byte #0xc5, #0x13	; 5061
	.byte #0xaf, #0x13	; 5039
	.byte #0x99, #0x13	; 5017
	.byte #0x83, #0x13	; 4995
	.byte #0x6d, #0x13	; 4973
	.byte #0x57, #0x13	; 4951
	.byte #0x42, #0x13	; 4930
	.byte #0x2c, #0x13	; 4908
	.byte #0x17, #0x13	; 4887
	.byte #0x01, #0x13	; 4865
	.byte #0xec, #0x12	; 4844
	.byte #0xd7, #0x12	; 4823
	.byte #0xc2, #0x12	; 4802
	.byte #0xad, #0x12	; 4781
	.byte #0x98, #0x12	; 4760
	.byte #0x83, #0x12	; 4739
	.byte #0x6f, #0x12	; 4719
	.byte #0x5a, #0x12	; 4698
	.byte #0x46, #0x12	; 4678
	.byte #0x31, #0x12	; 4657
	.byte #0x1d, #0x12	; 4637
	.byte #0x09, #0x12	; 4617
	.byte #0xf5, #0x11	; 4597
	.byte #0xe1, #0x11	; 4577
	.byte #0xcd, #0x11	; 4557
	.byte #0xba, #0x11	; 4538
	.byte #0xa6, #0x11	; 4518
	.byte #0x92, #0x11	; 4498
	.byte #0x7f, #0x11	; 4479
	.byte #0x6c, #0x11	; 4460
	.byte #0x58, #0x11	; 4440
	.byte #0x45, #0x11	; 4421
	.byte #0x32, #0x11	; 4402
	.byte #0x1f, #0x11	; 4383
	.byte #0x0c, #0x11	; 4364
	.byte #0xf9, #0x10	; 4345
	.byte #0xe7, #0x10	; 4327
	.byte #0xd4, #0x10	; 4308
	.byte #0xc2, #0x10	; 4290
	.byte #0xaf, #0x10	; 4271
	.byte #0x9d, #0x10	; 4253
	.byte #0x8b, #0x10	; 4235
	.byte #0x78, #0x10	; 4216
	.byte #0x66, #0x10	; 4198
	.byte #0x54, #0x10	; 4180
	.byte #0x42, #0x10	; 4162
	.byte #0x31, #0x10	; 4145
	.byte #0x1f, #0x10	; 4127
	.byte #0x0d, #0x10	; 4109
	.byte #0xfc, #0x0f	; 4092
	.byte #0xea, #0x0f	; 4074
	.byte #0xd9, #0x0f	; 4057
	.byte #0xc8, #0x0f	; 4040
	.byte #0xb6, #0x0f	; 4022
	.byte #0xa5, #0x0f	; 4005
	.byte #0x94, #0x0f	; 3988
	.byte #0x83, #0x0f	; 3971
	.byte #0x72, #0x0f	; 3954
	.byte #0x61, #0x0f	; 3937
	.byte #0x51, #0x0f	; 3921
	.byte #0x40, #0x0f	; 3904
	.byte #0x30, #0x0f	; 3888
	.byte #0x1f, #0x0f	; 3871
	.byte #0x0d, #0x0f	; 3853
	.byte #0xfe, #0x0e	; 3838
	.byte #0xee, #0x0e	; 3822
	.byte #0xde, #0x0e	; 3806
	.byte #0xce, #0x0e	; 3790
	.byte #0xbe, #0x0e	; 3774
	.byte #0xae, #0x0e	; 3758
	.byte #0x9e, #0x0e	; 3742
	.byte #0x8e, #0x0e	; 3726
	.byte #0x7f, #0x0e	; 3711
	.byte #0x6f, #0x0e	; 3695
	.byte #0x5f, #0x0e	; 3679
	.byte #0x50, #0x0e	; 3664
	.byte #0x40, #0x0e	; 3648
	.byte #0x31, #0x0e	; 3633
	.byte #0x22, #0x0e	; 3618
	.byte #0x13, #0x0e	; 3603
	.byte #0x03, #0x0e	; 3587
	.byte #0xf4, #0x0d	; 3572
	.byte #0xe5, #0x0d	; 3557
	.byte #0xd7, #0x0d	; 3543
	.byte #0xc8, #0x0d	; 3528
	.byte #0xb9, #0x0d	; 3513
	.byte #0xaa, #0x0d	; 3498
	.byte #0x9c, #0x0d	; 3484
	.byte #0x8d, #0x0d	; 3469
	.byte #0x7f, #0x0d	; 3455
	.byte #0x70, #0x0d	; 3440
	.byte #0x62, #0x0d	; 3426
	.byte #0x54, #0x0d	; 3412
	.byte #0x45, #0x0d	; 3397
	.byte #0x37, #0x0d	; 3383
	.byte #0x29, #0x0d	; 3369
	.byte #0x1b, #0x0d	; 3355
	.byte #0x0d, #0x0d	; 3341
	.byte #0xff, #0x0c	; 3327
	.byte #0xf1, #0x0c	; 3313
	.byte #0xe4, #0x0c	; 3300
	.byte #0xd6, #0x0c	; 3286
	.byte #0xc8, #0x0c	; 3272
	.byte #0xba, #0x0c	; 3258
	.byte #0xad, #0x0c	; 3245
	.byte #0xa0, #0x0c	; 3232
	.byte #0x92, #0x0c	; 3218
	.byte #0x85, #0x0c	; 3205
	.byte #0x78, #0x0c	; 3192
	.byte #0x6b, #0x0c	; 3179
	.byte #0x5e, #0x0c	; 3166
	.byte #0x51, #0x0c	; 3153
	.byte #0x44, #0x0c	; 3140
	.byte #0x37, #0x0c	; 3127
	.byte #0x2a, #0x0c	; 3114
	.byte #0x1d, #0x0c	; 3101
	.byte #0x10, #0x0c	; 3088
	.byte #0x03, #0x0c	; 3075
	.byte #0xf7, #0x0b	; 3063
	.byte #0xea, #0x0b	; 3050
	.byte #0xde, #0x0b	; 3038
	.byte #0xd1, #0x0b	; 3025
	.byte #0xc5, #0x0b	; 3013
	.byte #0xb9, #0x0b	; 3001
	.byte #0xac, #0x0b	; 2988
	.byte #0xa0, #0x0b	; 2976
	.byte #0x94, #0x0b	; 2964
	.byte #0x88, #0x0b	; 2952
	.byte #0x7c, #0x0b	; 2940
	.byte #0x70, #0x0b	; 2928
	.byte #0x64, #0x0b	; 2916
	.byte #0x58, #0x0b	; 2904
	.byte #0x4c, #0x0b	; 2892
	.byte #0x40, #0x0b	; 2880
	.byte #0x34, #0x0b	; 2868
	.byte #0x29, #0x0b	; 2857
	.byte #0x1d, #0x0b	; 2845
	.byte #0x12, #0x0b	; 2834
	.byte #0x06, #0x0b	; 2822
	.byte #0xfb, #0x0a	; 2811
	.byte #0xef, #0x0a	; 2799
	.byte #0xe4, #0x0a	; 2788
	.byte #0xd9, #0x0a	; 2777
	.byte #0xcd, #0x0a	; 2765
	.byte #0xc2, #0x0a	; 2754
	.byte #0xb7, #0x0a	; 2743
	.byte #0xac, #0x0a	; 2732
	.byte #0xa1, #0x0a	; 2721
	.byte #0x96, #0x0a	; 2710
	.byte #0x8b, #0x0a	; 2699
	.byte #0x80, #0x0a	; 2688
	.byte #0x75, #0x0a	; 2677
	.byte #0x6a, #0x0a	; 2666
	.byte #0x60, #0x0a	; 2656
	.byte #0x55, #0x0a	; 2645
	.byte #0x4a, #0x0a	; 2634
	.byte #0x40, #0x0a	; 2624
	.byte #0x35, #0x0a	; 2613
	.byte #0x2b, #0x0a	; 2603
	.byte #0x20, #0x0a	; 2592
	.byte #0x16, #0x0a	; 2582
	.byte #0x0b, #0x0a	; 2571
	.byte #0x01, #0x0a	; 2561
	.byte #0xf8, #0x09	; 2552
	.byte #0xec, #0x09	; 2540
	.byte #0xe2, #0x09	; 2530
	.byte #0xd8, #0x09	; 2520
	.byte #0xce, #0x09	; 2510
	.byte #0xc4, #0x09	; 2500
	.byte #0xba, #0x09	; 2490
	.byte #0xb0, #0x09	; 2480
	.byte #0xa6, #0x09	; 2470
	.byte #0x9c, #0x09	; 2460
	.byte #0x93, #0x09	; 2451
	.byte #0x89, #0x09	; 2441
	.byte #0x7f, #0x09	; 2431
	.byte #0x75, #0x09	; 2421
	.byte #0x6c, #0x09	; 2412
	.byte #0x62, #0x09	; 2402
	.byte #0x59, #0x09	; 2393
	.byte #0x4f, #0x09	; 2383
	.byte #0x46, #0x09	; 2374
	.byte #0x3c, #0x09	; 2364
	.byte #0x33, #0x09	; 2355
	.byte #0x2a, #0x09	; 2346
	.byte #0x20, #0x09	; 2336
	.byte #0x17, #0x09	; 2327
	.byte #0x0e, #0x09	; 2318
	.byte #0x05, #0x09	; 2309
	.byte #0xfb, #0x08	; 2299
	.byte #0xf2, #0x08	; 2290
	.byte #0xe9, #0x08	; 2281
	.byte #0xe0, #0x08	; 2272
	.byte #0xd7, #0x08	; 2263
	.byte #0xce, #0x08	; 2254
	.byte #0xc6, #0x08	; 2246
	.byte #0xbd, #0x08	; 2237
	.byte #0xb4, #0x08	; 2228
	.byte #0xab, #0x08	; 2219
	.byte #0xa2, #0x08	; 2210
	.byte #0x9a, #0x08	; 2202
	.byte #0x91, #0x08	; 2193
	.byte #0x89, #0x08	; 2185
	.byte #0x80, #0x08	; 2176
	.byte #0x77, #0x08	; 2167
	.byte #0x6f, #0x08	; 2159
	.byte #0x66, #0x08	; 2150
	.byte #0x5e, #0x08	; 2142
	.byte #0x56, #0x08	; 2134
	.byte #0x4d, #0x08	; 2125
	.byte #0x45, #0x08	; 2117
	.byte #0x3d, #0x08	; 2109
	.byte #0x35, #0x08	; 2101
	.byte #0x2c, #0x08	; 2092
	.byte #0x24, #0x08	; 2084
	.byte #0x1c, #0x08	; 2076
	.byte #0x14, #0x08	; 2068
	.byte #0x0c, #0x08	; 2060
	.byte #0x04, #0x08	; 2052
	.byte #0xfc, #0x07	; 2044
	.byte #0xf4, #0x07	; 2036
	.byte #0xec, #0x07	; 2028
	.byte #0xe4, #0x07	; 2020
	.byte #0xdc, #0x07	; 2012
	.byte #0xd5, #0x07	; 2005
	.byte #0xcd, #0x07	; 1997
	.byte #0xc5, #0x07	; 1989
	.byte #0xbd, #0x07	; 1981
	.byte #0xb6, #0x07	; 1974
	.byte #0xae, #0x07	; 1966
	.byte #0xa6, #0x07	; 1958
	.byte #0x9f, #0x07	; 1951
	.byte #0x97, #0x07	; 1943
	.byte #0x90, #0x07	; 1936
	.byte #0x88, #0x07	; 1928
	.byte #0x81, #0x07	; 1921
	.byte #0x79, #0x07	; 1913
	.byte #0x72, #0x07	; 1906
	.byte #0x6b, #0x07	; 1899
	.byte #0x63, #0x07	; 1891
	.byte #0x5c, #0x07	; 1884
	.byte #0x55, #0x07	; 1877
	.byte #0x4e, #0x07	; 1870
	.byte #0x47, #0x07	; 1863
	.byte #0x3f, #0x07	; 1855
	.byte #0x38, #0x07	; 1848
	.byte #0x31, #0x07	; 1841
	.byte #0x2a, #0x07	; 1834
	.byte #0x23, #0x07	; 1827
	.byte #0x1c, #0x07	; 1820
	.byte #0x15, #0x07	; 1813
	.byte #0x0e, #0x07	; 1806
	.byte #0x07, #0x07	; 1799
	.byte #0x00, #0x07	; 1792

;--------------------------------------------------------
; initialized data - mirror
;--------------------------------------------------------

	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_ADC$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_ADC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
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
	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_ADC$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_ADC$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_ADC$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_ADC$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_ADC$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_ADC$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_ADC$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_ADC$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_ADC$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_ADC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
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
	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_ADC$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_ADC$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_ADC$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_ADC$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
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
	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_ADC$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_ADC$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_ADC$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_ADC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
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
	;--cdb--W:r0x10D5:NULL+0:-1:1
	;--cdb--W:r0x10D4:NULL+0:-1:1
	;--cdb--W:r0x10D2:NULL+0:-1:1
	;--cdb--W:r0x10D1:STK01+0:-1:0
	;--cdb--W:_Centigrade_Convert_Fahrenheit_STK00:STK02+0:-1:0
	;--cdb--W:r0x10D2:_Centigrade_Convert_Fahrenheit_STK00+0:-1:0
	;--cdb--W:r0x10D2:STK02+0:-1:0
	;--cdb--W:r0x10D2:STK00+0:-1:0
	;--cdb--W:r0x10D3:STK01+0:-1:0
	;--cdb--W:r0x10D3:r0x10D1+1:-1:0
	;--cdb--W:r0x10D4:NULL+0:0:0
	;--cdb--W:r0x10D4:STK00+0:-1:0
	;--cdb--W:r0x10D4:_Centigrade_Convert_Fahrenheit_STK00+0:-1:0
	;--cdb--W:r0x10D5:NULL+0:0:0
	;--cdb--W:r0x10D5:STK01+0:-1:0
	;--cdb--W:r0x10D6:STK02+0:-1:0
	;--cdb--W:r0x10D6:_Centigrade_Convert_Fahrenheit_STK00+0:-1:0
	;--cdb--W:r0x10D7:STK01+0:-1:0
	;--cdb--W:r0x10D7:r0x10D1+1:-1:0
	;--cdb--W:r0x10D3:NULL+0:-1:1
	;--cdb--W:r0x10AD:NULL+0:-1:1
	;--cdb--W:r0x10B0:NULL+0:-1:1
	;--cdb--W:r0x10AF:NULL+0:-1:1
	;--cdb--W:r0x10B3:NULL+0:-1:1
	;--cdb--W:r0x10B7:NULL+0:-1:1
	;--cdb--W:r0x10B2:NULL+0:-1:1
	;--cdb--W:r0x10B1:NULL+0:-1:1
	;--cdb--W:r0x10AB:NULL+0:-1:0
	;--cdb--W:r0x10AC:NULL+0:-1:0
	;--cdb--W:r0x10AD:r0x10B1+0:-1:0
	;--cdb--W:r0x10AD:STK02+0:-1:0
	;--cdb--W:r0x10AE:STK01+0:-1:0
	;--cdb--W:r0x10AF:r0x10AD+0:-1:0
	;--cdb--W:r0x10AF:STK02+0:-1:0
	;--cdb--W:r0x10AF:NULL+0:0:0
	;--cdb--W:r0x10AF:STK00+0:-1:0
	;--cdb--W:r0x10AF:NULL+0:-1:0
	;--cdb--W:r0x10B0:r0x10AE+1:-1:0
	;--cdb--W:r0x10B0:STK01+0:-1:0
	;--cdb--W:r0x10B0:NULL+0:0:0
	;--cdb--W:r0x10B0:NULL+0:-1:0
	;--cdb--W:r0x10B2:STK01+0:-1:0
	;--cdb--W:r0x10B1:STK00+0:-1:0
	;--cdb--W:r0x10B1:STK02+0:-1:0
	;--cdb--W:r0x10B3:r0x10AD+0:-1:0
	;--cdb--W:r0x10B3:NULL+0:-1:0
	;--cdb--W:r0x10B3:NULL+0:0:0
	;--cdb--W:r0x10B3:STK00+0:-1:0
	;--cdb--W:r0x10B4:r0x10AE+1:-1:0
	;--cdb--W:r0x10B4:NULL+0:0:0
	;--cdb--W:r0x10B5:NULL+0:0:0
	;--cdb--W:r0x10B5:r0x10AF+0:-1:0
	;--cdb--W:r0x10B6:NULL+0:0:0
	;--cdb--W:r0x10B6:r0x10B0+1:-1:0
	;--cdb--W:r0x10B9:NULL+0:0:0
	;--cdb--W:r0x10BA:NULL+0:0:0
	;--cdb--W:r0x10AB:NULL+0:-1:1
	;--cdb--W:r0x10AC:NULL+0:-1:1
	;--cdb--W:r0x10B5:NULL+0:-1:1
	;--cdb--W:r0x10B6:NULL+0:-1:1
	;--cdb--W:r0x10B4:NULL+0:-1:1
	;--cdb--W:r0x10B9:NULL+0:-1:1
	;--cdb--W:r0x10BA:NULL+0:-1:1
	;--cdb--W:r0x10B4:NULL+0:-1:0
	;--cdb--W:r0x10B5:r0x10B6+2:-1:0
	;--cdb--W:r0x10A3:NULL+0:-1:1
	;--cdb--W:r0x1096:NULL+0:-1:0
	;--cdb--W:r0x1097:NULL+0:-1:0
	;--cdb--W:r0x1096:NULL+0:-1:1
	;--cdb--W:r0x1097:NULL+0:-1:1
	;--cdb--W:r0x108F:NULL+0:-1:1
	;--c2db--RNG$_ADCGetData_ADCData2_10000_417$1081$1083
	;--c2db--RNG$_Get_250msTemp_n_10000_443$375$728
	;--c2db--RNG$_Get_250msTemp_lower_10000_443$386$728
	;--c2db--RNG$_Get_250msTemp_upper_10000_443$386$728
	;--c2db--RNG$_Get_250msTemp_i_10000_443$497$728
	;--c2db--RNG$_Get_250msTemp_tmp_10000_443$687$701
	;--c2db--RNG$_Centigrade_Convert_Fahrenheit_temp_10000_461$190$321
	;--c2db--RNG$_Centigrade_Convert_Fahrenheit_tmp_10000_462$309$315
	END
