;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #bf155f72c (MSVC)
;--------------------------------------------------------
; Port for HYCON CPU
;--------------------------------------------------------
;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
;;	.file	".\Source\App_Key.c"
	.module App_Key
	;.list	p=HY17P56
	;--cdb--T:FApp_Key$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
	;--cdb--T:FApp_Key$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
	;--cdb--T:FApp_Key$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
	;--cdb--T:FApp_Key$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_Key$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_Key$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
	;--cdb--T:FApp_Key$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FApp_Key$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
	;--cdb--F:App_Key:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Key$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Key$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Key$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
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
	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
	;--cdb--F:App_Key:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0,0,0,0
	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:App_Key:G$Key_Detect$0$0({2}DF,SV:S),C,0,0,0,0,0
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
.area CCODE (code,REL,CON) ; App_Key-code 
.globl _Key_Detect

;--------------------------------------------------------
	.FUNC _Key_Detect:$r:0:0:$C:_Timer_Experience\
:$L:r0x10A1:$L:r0x10A2:$L:r0x10A3:$L:r0x10A4
;--------------------------------------------------------
;	;.line	46; ".\Source\App_Key.c"	switch(eButton_Status)
_Key_Detect:	;Function start
	RRF	_eButton_Status,0,0
	BTSZ	_STATUS,0
	JMP	_00115_DS_
	DCSUZ	_eButton_Status,0,0
	JMP	_00129_DS_
	MVF	_eButton_Status,0,0
	XORL	0x02
	BTSZ	_STATUS,0
	JMP	_00139_DS_
	JMP	_00151_DS_
_00115_DS_:
;	;.line	53; ".\Source\App_Key.c"	if(GPIO_PT1GET(1))
	BTSS	_PT1,1
	JMP	_00127_DS_
;	;.line	55; ".\Source\App_Key.c"	if(!sTimeStamp.Get_ButtonLift_Flag)
	BTSZ	_sTimeStamp,5
	JMP	_00119_DS_
;	;.line	57; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonLift_Flag = TRUE;
	BSF	_sTimeStamp,5
;	;.line	58; ".\Source\App_Key.c"	sTimeStamp.ButtonLift_Timer = sTimeStamp.Timer_Journey;
	MVF	(_sTimeStamp + 2),0,0
	MVF	(_sTimeStamp + 22),1,0
	MVF	(_sTimeStamp + 3),0,0
	MVF	(_sTimeStamp + 23),1,0
	MVF	(_sTimeStamp + 4),0,0
	MVF	(_sTimeStamp + 24),1,0
	MVF	(_sTimeStamp + 5),0,0
	MVF	(_sTimeStamp + 25),1,0
	JMP	_00120_DS_
_00119_DS_:
;	;.line	63; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,1);
	MVF	(_sTimeStamp + 22),0,0
	MVF	r0x10A1,1,0
	MVF	(_sTimeStamp + 23),0,0
	MVF	r0x10A2,1,0
	MVF	(_sTimeStamp + 24),0,0
	MVF	r0x10A3,1,0
	MVF	(_sTimeStamp + 25),0,0
	MVF	r0x10A4,1,0
	MVL	0x01
	MVF	_Timer_Experience_STK06,1,0
	CLRF	_Timer_Experience_STK05,0
	CLRF	_Timer_Experience_STK04,0
	CLRF	_Timer_Experience_STK03,0
	MVF	r0x10A1,0,0
	MVF	_Timer_Experience_STK02,1,0
	MVF	r0x10A2,0,0
	MVF	_Timer_Experience_STK01,1,0
	MVF	r0x10A3,0,0
	MVF	_Timer_Experience_STK00,1,0
	MVF	r0x10A4,0,0
	CALL	_Timer_Experience
	.CHKPARA _Timer_Experience 8
;	;.line	65; ".\Source\App_Key.c"	if(Result)
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00120_DS_
;	;.line	68; ".\Source\App_Key.c"	eButton_Status = Button_Lift;
	MVL	0x02
	MVF	_eButton_Status,1,0
;	;.line	71; ".\Source\App_Key.c"	sTimeStamp.ButtonLift_Timer = sTimeStamp.Timer_Journey;
	MVF	(_sTimeStamp + 2),0,0
	MVF	(_sTimeStamp + 22),1,0
	MVF	(_sTimeStamp + 3),0,0
	MVF	(_sTimeStamp + 23),1,0
	MVF	(_sTimeStamp + 4),0,0
	MVF	(_sTimeStamp + 24),1,0
	MVF	(_sTimeStamp + 5),0,0
	MVF	(_sTimeStamp + 25),1,0
_00120_DS_:
;	;.line	75; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonPress_Flag = FALSE;
	BCF	_sTimeStamp,4
	JMP	_00128_DS_
_00127_DS_:
;	;.line	80; ".\Source\App_Key.c"	if(!sTimeStamp.Get_ButtonPress_Flag)
	BTSZ	_sTimeStamp,4
	JMP	_00124_DS_
;	;.line	82; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonPress_Flag = TRUE;
	BSF	_sTimeStamp,4
;	;.line	83; ".\Source\App_Key.c"	sTimeStamp.ButtonPress_Timer = sTimeStamp.Timer_Journey;
	MVF	(_sTimeStamp + 2),0,0
	MVF	(_sTimeStamp + 26),1,0
	MVF	(_sTimeStamp + 3),0,0
	MVF	(_sTimeStamp + 27),1,0
	MVF	(_sTimeStamp + 4),0,0
	MVF	(_sTimeStamp + 28),1,0
	MVF	(_sTimeStamp + 5),0,0
	MVF	(_sTimeStamp + 29),1,0
	JMP	_00125_DS_
_00124_DS_:
;	;.line	88; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,1);
	MVF	(_sTimeStamp + 26),0,0
	MVF	r0x10A1,1,0
	MVF	(_sTimeStamp + 27),0,0
	MVF	r0x10A2,1,0
	MVF	(_sTimeStamp + 28),0,0
	MVF	r0x10A3,1,0
	MVF	(_sTimeStamp + 29),0,0
	MVF	r0x10A4,1,0
	MVL	0x01
	MVF	_Timer_Experience_STK06,1,0
	CLRF	_Timer_Experience_STK05,0
	CLRF	_Timer_Experience_STK04,0
	CLRF	_Timer_Experience_STK03,0
	MVF	r0x10A1,0,0
	MVF	_Timer_Experience_STK02,1,0
	MVF	r0x10A2,0,0
	MVF	_Timer_Experience_STK01,1,0
	MVF	r0x10A3,0,0
	MVF	_Timer_Experience_STK00,1,0
	MVF	r0x10A4,0,0
	CALL	_Timer_Experience
;	;.line	90; ".\Source\App_Key.c"	if(Result)
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00125_DS_
;	;.line	93; ".\Source\App_Key.c"	eButton_Status = Button_Press;
	MVL	0x01
	MVF	_eButton_Status,1,0
;	;.line	96; ".\Source\App_Key.c"	sTimeStamp.ButtonPress_Timer = sTimeStamp.Timer_Journey;
	MVF	(_sTimeStamp + 2),0,0
	MVF	(_sTimeStamp + 26),1,0
	MVF	(_sTimeStamp + 3),0,0
	MVF	(_sTimeStamp + 27),1,0
	MVF	(_sTimeStamp + 4),0,0
	MVF	(_sTimeStamp + 28),1,0
	MVF	(_sTimeStamp + 5),0,0
	MVF	(_sTimeStamp + 29),1,0
_00125_DS_:
;	;.line	100; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonLift_Flag = FALSE;
	LDPR	(_sTimeStamp + 0),0x00
	BCF	_INDF0,5
_00128_DS_:
;	;.line	103; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_Transient = FALSE;
	BCF	_sButton,6
;	;.line	105; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_1S = FALSE;
	BCF	_sButton,7
;	;.line	107; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_2S = FALSE;
	BCF	(_sButton+1),0
;	;.line	109; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_60S = FALSE;
	BCF	(_sButton+1),1
;	;.line	113; ".\Source\App_Key.c"	sButton.Flag_Button_Press_Transient = FALSE;
	BCF	_sButton,1
;	;.line	117; ".\Source\App_Key.c"	sButton.Flag_Button_Press_3S = FALSE;
	BCF	_sButton,2
;	;.line	119; ".\Source\App_Key.c"	sButton.Flag_Button_Press_6S = FALSE;
	BCF	_sButton,3
;	;.line	121; ".\Source\App_Key.c"	sButton.Flag_Button_Press_9S = FALSE;
	BCF	_sButton,4
;	;.line	122; ".\Source\App_Key.c"	break;
	JMP	_00151_DS_
_00129_DS_:
;	;.line	126; ".\Source\App_Key.c"	if(GPIO_PT1GET(1))
	BTSS	_PT1,1
	JMP	_00137_DS_
;	;.line	129; ".\Source\App_Key.c"	eButton_Status = Button_Debouncing;
	CLRF	_eButton_Status,0
;	;.line	131; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonPress_Flag = FALSE;
	BCF	_sTimeStamp,4
;	;.line	133; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonLift_Flag = FALSE;
	BCF	_sTimeStamp,5
	JMP	_00151_DS_
_00137_DS_:
;	;.line	139; ".\Source\App_Key.c"	sButton.Flag_Button_Press_Transient = TRUE;
	BSF	_sButton,1
;	;.line	148; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,120);
	MVF	(_sTimeStamp + 26),0,0
	MVF	r0x10A1,1,0
	MVF	(_sTimeStamp + 27),0,0
	MVF	r0x10A2,1,0
	MVF	(_sTimeStamp + 28),0,0
	MVF	r0x10A3,1,0
	MVF	(_sTimeStamp + 29),0,0
	MVF	r0x10A4,1,0
	MVL	0x78
	MVF	_Timer_Experience_STK06,1,0
	CLRF	_Timer_Experience_STK05,0
	CLRF	_Timer_Experience_STK04,0
	CLRF	_Timer_Experience_STK03,0
	MVF	r0x10A1,0,0
	MVF	_Timer_Experience_STK02,1,0
	MVF	r0x10A2,0,0
	MVF	_Timer_Experience_STK01,1,0
	MVF	r0x10A3,0,0
	MVF	_Timer_Experience_STK00,1,0
	MVF	r0x10A4,0,0
	CALL	_Timer_Experience
;	;.line	149; ".\Source\App_Key.c"	if(Result)
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00131_DS_
;	;.line	152; ".\Source\App_Key.c"	sButton.Flag_Button_Press_3S = TRUE;
	LDPR	(_sButton + 0),0x00
	BSF	_INDF0,2
_00131_DS_:
;	;.line	155; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,240);
	MVF	(_sTimeStamp + 26),0,0
	MVF	r0x10A1,1,0
	MVF	(_sTimeStamp + 27),0,0
	MVF	r0x10A2,1,0
	MVF	(_sTimeStamp + 28),0,0
	MVF	r0x10A3,1,0
	MVF	(_sTimeStamp + 29),0,0
	MVF	r0x10A4,1,0
	MVL	0xf0
	MVF	_Timer_Experience_STK06,1,0
	CLRF	_Timer_Experience_STK05,0
	CLRF	_Timer_Experience_STK04,0
	CLRF	_Timer_Experience_STK03,0
	MVF	r0x10A1,0,0
	MVF	_Timer_Experience_STK02,1,0
	MVF	r0x10A2,0,0
	MVF	_Timer_Experience_STK01,1,0
	MVF	r0x10A3,0,0
	MVF	_Timer_Experience_STK00,1,0
	MVF	r0x10A4,0,0
	CALL	_Timer_Experience
;	;.line	156; ".\Source\App_Key.c"	if(Result)
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00133_DS_
;	;.line	159; ".\Source\App_Key.c"	sButton.Flag_Button_Press_6S = TRUE;
	LDPR	(_sButton + 0),0x00
	BSF	_INDF0,3
_00133_DS_:
;	;.line	162; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,360);
	MVF	(_sTimeStamp + 26),0,0
	MVF	r0x10A1,1,0
	MVF	(_sTimeStamp + 27),0,0
	MVF	r0x10A2,1,0
	MVF	(_sTimeStamp + 28),0,0
	MVF	r0x10A3,1,0
	MVF	(_sTimeStamp + 29),0,0
	MVF	r0x10A4,1,0
	MVL	0x68
	MVF	_Timer_Experience_STK06,1,0
	MVL	0x01
	MVF	_Timer_Experience_STK05,1,0
	CLRF	_Timer_Experience_STK04,0
	CLRF	_Timer_Experience_STK03,0
	MVF	r0x10A1,0,0
	MVF	_Timer_Experience_STK02,1,0
	MVF	r0x10A2,0,0
	MVF	_Timer_Experience_STK01,1,0
	MVF	r0x10A3,0,0
	MVF	_Timer_Experience_STK00,1,0
	MVF	r0x10A4,0,0
	CALL	_Timer_Experience
;	;.line	163; ".\Source\App_Key.c"	if(Result)
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00151_DS_
;	;.line	166; ".\Source\App_Key.c"	sButton.Flag_Button_Press_9S = TRUE;
	BSF	_sButton,4
;	;.line	169; ".\Source\App_Key.c"	break;
	JMP	_00151_DS_
_00139_DS_:
;	;.line	173; ".\Source\App_Key.c"	if(!GPIO_PT1GET(1))
	BTSZ	_PT1,1
	JMP	_00147_DS_
;	;.line	176; ".\Source\App_Key.c"	eButton_Status = Button_Debouncing;
	CLRF	_eButton_Status,0
;	;.line	178; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonPress_Flag = FALSE;
	BCF	_sTimeStamp,4
;	;.line	180; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonLift_Flag = FALSE;
	BCF	_sTimeStamp,5
	JMP	_00151_DS_
_00147_DS_:
;	;.line	186; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_Transient = TRUE;
	BSF	_sButton,6
;	;.line	189; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,40);
	MVF	(_sTimeStamp + 22),0,0
	MVF	r0x10A1,1,0
	MVF	(_sTimeStamp + 23),0,0
	MVF	r0x10A2,1,0
	MVF	(_sTimeStamp + 24),0,0
	MVF	r0x10A3,1,0
	MVF	(_sTimeStamp + 25),0,0
	MVF	r0x10A4,1,0
	MVL	0x28
	MVF	_Timer_Experience_STK06,1,0
	CLRF	_Timer_Experience_STK05,0
	CLRF	_Timer_Experience_STK04,0
	CLRF	_Timer_Experience_STK03,0
	MVF	r0x10A1,0,0
	MVF	_Timer_Experience_STK02,1,0
	MVF	r0x10A2,0,0
	MVF	_Timer_Experience_STK01,1,0
	MVF	r0x10A3,0,0
	MVF	_Timer_Experience_STK00,1,0
	MVF	r0x10A4,0,0
	CALL	_Timer_Experience
;	;.line	190; ".\Source\App_Key.c"	if(Result)
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00141_DS_
;	;.line	193; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_1S = TRUE;
	LDPR	(_sButton + 0),0x00
	BSF	_INDF0,7
_00141_DS_:
;	;.line	197; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,80);
	MVF	(_sTimeStamp + 22),0,0
	MVF	r0x10A1,1,0
	MVF	(_sTimeStamp + 23),0,0
	MVF	r0x10A2,1,0
	MVF	(_sTimeStamp + 24),0,0
	MVF	r0x10A3,1,0
	MVF	(_sTimeStamp + 25),0,0
	MVF	r0x10A4,1,0
	MVL	0x50
	MVF	_Timer_Experience_STK06,1,0
	CLRF	_Timer_Experience_STK05,0
	CLRF	_Timer_Experience_STK04,0
	CLRF	_Timer_Experience_STK03,0
	MVF	r0x10A1,0,0
	MVF	_Timer_Experience_STK02,1,0
	MVF	r0x10A2,0,0
	MVF	_Timer_Experience_STK01,1,0
	MVF	r0x10A3,0,0
	MVF	_Timer_Experience_STK00,1,0
	MVF	r0x10A4,0,0
	CALL	_Timer_Experience
;	;.line	198; ".\Source\App_Key.c"	if(Result)
	TFSZ	_WREG,0
;	;.line	201; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_2S = TRUE;
	BSF	(_sButton+1),0
;	;.line	205; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,2400);
	MVF	(_sTimeStamp + 22),0,0
	MVF	r0x10A1,1,0
	MVF	(_sTimeStamp + 23),0,0
	MVF	r0x10A2,1,0
	MVF	(_sTimeStamp + 24),0,0
	MVF	r0x10A3,1,0
	MVF	(_sTimeStamp + 25),0,0
	MVF	r0x10A4,1,0
	MVL	0x60
	MVF	_Timer_Experience_STK06,1,0
	MVL	0x09
	MVF	_Timer_Experience_STK05,1,0
	CLRF	_Timer_Experience_STK04,0
	CLRF	_Timer_Experience_STK03,0
	MVF	r0x10A1,0,0
	MVF	_Timer_Experience_STK02,1,0
	MVF	r0x10A2,0,0
	MVF	_Timer_Experience_STK01,1,0
	MVF	r0x10A3,0,0
	MVF	_Timer_Experience_STK00,1,0
	MVF	r0x10A4,0,0
	CALL	_Timer_Experience
;	;.line	206; ".\Source\App_Key.c"	if(Result)
	TFSZ	_WREG,0
;	;.line	209; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_60S = TRUE;
	BSF	(_sButton+1),1
_00151_DS_:
;	;.line	215; ".\Source\App_Key.c"	}
	RET	
; exit point of _Key_Detect
	.ENDFUNC	_Key_Detect
;--------------------------------------------------------

.globl _Timer_Experience

;--------------------------------------------------------
	.FUNC _Timer_Experience:$r:1:8:$L:r0x108F:$L:_Timer_Experience_STK00:$L:_Timer_Experience_STK01:$L:_Timer_Experience_STK02:$L:_Timer_Experience_STK03\
:$L:_Timer_Experience_STK04:$L:_Timer_Experience_STK05:$L:_Timer_Experience_STK06:$L:r0x1094:$L:r0x1095\
:$L:r0x1096:$L:r0x1097
;--------------------------------------------------------
;	;.line	22; ".\Source\App_Key.c"	uint8 Timer_Experience(uint32 Start_Time,uint32 Time_Interval)
_Timer_Experience:	;Function start
	MVF	r0x108F,1,0
	MVF	(_sTimeStamp + 2),0,0
;	;.line	24; ".\Source\App_Key.c"	if(sTimeStamp.Timer_Journey >= Start_Time)
	MVF	r0x1094,1,0
	MVF	(_sTimeStamp + 3),0,0
	MVF	r0x1095,1,0
	MVF	(_sTimeStamp + 4),0,0
	MVF	r0x1096,1,0
	MVF	(_sTimeStamp + 5),0,0
	MVF	r0x1097,1,0
	MVF	_Timer_Experience_STK02,0,0
	SUBF	r0x1094,0,0
	MVF	_Timer_Experience_STK01,0,0
	SUBC	r0x1095,0,0
	MVF	_Timer_Experience_STK00,0,0
	SUBC	r0x1096,0,0
	MVF	r0x108F,0,0
	SUBC	r0x1097,0,0
	BTSS	_STATUS,4
	JMP	_00110_DS_
;	;.line	26; ".\Source\App_Key.c"	if(sTimeStamp.Timer_Journey > (Time_Interval  + Start_Time))
	MVF	_Timer_Experience_STK06,0,0
	ADDF	_Timer_Experience_STK02,1,0
	MVF	_Timer_Experience_STK05,0,0
	ADDC	_Timer_Experience_STK01,1,0
	MVF	_Timer_Experience_STK04,0,0
	ADDC	_Timer_Experience_STK00,1,0
	MVF	_Timer_Experience_STK03,0,0
	ADDC	r0x108F,1,0
	MVF	r0x1094,0,0
	SUBF	_Timer_Experience_STK02,0,0
	MVF	r0x1095,0,0
	SUBC	_Timer_Experience_STK01,0,0
	MVF	r0x1096,0,0
	SUBC	_Timer_Experience_STK00,0,0
	MVF	r0x1097,0,0
	SUBC	r0x108F,0,0
	BTSZ	_STATUS,4
	JMP	_00106_DS_
;	;.line	28; ".\Source\App_Key.c"	return TRUE;
	MVL	0x01
	JMP	_00110_DS_
_00106_DS_:
;	;.line	32; ".\Source\App_Key.c"	return FALSE;
	MVL	0x00
_00110_DS_:
;	;.line	35; ".\Source\App_Key.c"	}
	RET	
; exit point of _Timer_Experience
	.ENDFUNC	_Timer_Experience
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
	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Key$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Key$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Key$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
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
	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
	;--cdb--S:LApp_Key.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
	;--cdb--S:LApp_Key.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_Key$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_Key$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_Key$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_Key$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_Key$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_Key$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_Key$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_Key$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_Key$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_Key$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_Key$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_Key$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_Key$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_Key$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_Key$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_Key$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_Key$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
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
	;--cdb--S:LApp_Key.Timer_Experience._Timer_Experience_Time_Interval_10000_416$Time_Interval$2710$416({4}SL:UL),R,0,0,[_Timer_Experience_STK06,_Timer_Experience_STK05,_Timer_Experience_STK04,_Timer_Experience_STK03]
	;--cdb--S:LApp_Key.Timer_Experience._Timer_Experience_Start_Time_10000_416$Start_Time$2710$416({4}SL:UL),R,0,0,[_Timer_Experience_STK02,_Timer_Experience_STK01,_Timer_Experience_STK00,r0x108F]
	;--cdb--S:LApp_Key.Key_Detect._Key_Detect_Result_10000_424$Result$2710$424({1}SC:U),R,0,0,[r0x10A1]
	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
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
	.globl	_sLVD
	.globl	_UnitExchangeCompleted
	.globl	_ERR
	.globl	_eErr
	.globl	_eDisplay_Interfaces
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
	.globl	_NUM_CODE
	.globl	_R_Table
	.globl	_CloseTable

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
	.globl	_Timer_Experience
	.globl	_sButton
	.globl	_sTimeStamp
	.globl	_eButton_Status

	.globl	_memcpy
;--------------------------------------------------------
; global -2 definitions
;--------------------------------------------------------
	.area DSEG(DATA)
_sButton:	.ds	2

	.area DSEG(DATA)
_sTimeStamp:	.ds	42

	.area DSEG(DATA)
_eButton_Status:	.ds	1

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
	.area UDATA (DATA,REL,CON) ;UDL_App_Key_0	udata
r0x108F:	.ds	1
r0x1094:	.ds	1
r0x1095:	.ds	1
r0x1096:	.ds	1
r0x1097:	.ds	1
r0x10A1:	.ds	1
r0x10A2:	.ds	1
r0x10A3:	.ds	1
r0x10A4:	.ds	1
	.area LOCALSTK (STK); local stack var
_Timer_Experience_STK00:	.ds	1
	.globl _Timer_Experience_STK00
_Timer_Experience_STK01:	.ds	1
	.globl _Timer_Experience_STK01
_Timer_Experience_STK02:	.ds	1
	.globl _Timer_Experience_STK02
_Timer_Experience_STK03:	.ds	1
	.globl _Timer_Experience_STK03
_Timer_Experience_STK04:	.ds	1
	.globl _Timer_Experience_STK04
_Timer_Experience_STK05:	.ds	1
	.globl _Timer_Experience_STK05
_Timer_Experience_STK06:	.ds	1
	.globl _Timer_Experience_STK06
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data - mirror
;--------------------------------------------------------
	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_Key$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_Key$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
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
	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_Key$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_Key$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_Key$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_Key$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_Key$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_Key$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_Key$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_Key$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_Key$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_Key$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
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
	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_Key$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_Key$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_Key$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_Key$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
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
	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_Key$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_Key$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_Key$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_Key$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
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
	;--cdb--W:r0x10A1:NULL+0:-1:1
	;--cdb--W:r0x10A1:NULL+0:-1:0
	;--cdb--W:r0x10A2:NULL+0:-1:0
	;--cdb--W:r0x10A2:NULL+0:-1:1
	;--c2db--RNG$_Timer_Experience_Time_Interval_10000_416$550$586
	;--c2db--RNG$_Timer_Experience_Start_Time_10000_416$550$586
	;--c2db--RNG$_Key_Detect_Result_10000_424$427$430
	END
