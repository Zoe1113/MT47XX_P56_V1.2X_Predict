;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #bf155f72c (MSVC)
;--------------------------------------------------------
; Port for HYCON CPU
;--------------------------------------------------------
;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
;;	.file	".\Source\APP_Measure.c"
	.module APP_Measure
	;.list	p=HY17P56
	;--cdb--T:FAPP_Measure$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
	;--cdb--T:FAPP_Measure$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
	;--cdb--F:APP_Measure:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FAPP_Measure$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FAPP_Measure$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FAPP_Measure$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
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
	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:APP_Measure:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$_divslong$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$Judge_Stability$0$0({2}DF,SC:U),C,0,0
	;--cdb--F:APP_Measure:G$Judge_Stability$0$0({2}DF,SC:U),C,0,0,0,0,0
	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$_mulint$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$PresetMeasTime$0$0({2}DF,SC:U),C,0,0
	;--cdb--F:APP_Measure:G$PresetMeasTime$0$0({2}DF,SC:U),C,0,0,0,0,0
	;--cdb--S:G$Get_1sTemp$0$0({2}DF,SC:U),C,0,0
	;--cdb--F:APP_Measure:G$Get_1sTemp$0$0({2}DF,SC:U),C,0,0,0,0,0
	;--cdb--S:G$Filter_ErrTemp$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:APP_Measure:G$Filter_ErrTemp$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:APP_Measure:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Start_Algorithm$0$0({2}DF,SC:U),C,0,0
	;--cdb--F:APP_Measure:G$Start_Algorithm$0$0({2}DF,SC:U),C,0,0,0,0,0
	;--cdb--S:G$Temp_Drop$0$0({2}DF,SC:U),C,0,0
	;--cdb--F:APP_Measure:G$Temp_Drop$0$0({2}DF,SC:U),C,0,0,0,0,0
	;--cdb--S:G$Forecast_Calculate_Conditions$0$0({2}DF,SC:U),C,0,0
	;--cdb--F:APP_Measure:G$Forecast_Calculate_Conditions$0$0({2}DF,SC:U),C,0,0,0,0,0
	;--cdb--S:G$Forecast_Calculate$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:APP_Measure:G$Forecast_Calculate$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$_mullong$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$_divulong$0$0({2}DF,SL:UL),C,0,0
	;--cdb--S:G$Update_MaxTempImmediately$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:APP_Measure:G$Update_MaxTempImmediately$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Update_MaxTemp3Min$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:APP_Measure:G$Update_MaxTemp3Min$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$Forecast_To_Actual$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:APP_Measure:G$Forecast_To_Actual$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$ActualForecast_Select$0$0({2}DF,SC:U),C,0,0
	;--cdb--F:APP_Measure:G$ActualForecast_Select$0$0({2}DF,SC:U),C,0,0,0,0,0
	;--cdb--S:G$Temperature_Compensate$0$0({2}DF,SI:U),C,0,0
	;--cdb--F:APP_Measure:G$Temperature_Compensate$0$0({2}DF,SI:U),C,0,0,0,0,0
	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:APP_Measure:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0,0,0,0
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
.area CCODE (code,REL,CON) ; APP_Measure-code 
.globl _Forecast_Measure

;--------------------------------------------------------
	.FUNC _Forecast_Measure:$r:0:0:$C:_ActualForecast_Select:$C:_Filter_ErrTemp:$C:_Judge_Stability:$C:_Temp_Drop\
:$C:_Forecast_Calculate_Conditions:$C:_Forecast_Calculate:$C:_Temperature_Compensate:$C:_Forecast_To_Actual\
:$L:r0x111A:$L:r0x111C:$L:r0x111D:$L:r0x111E:$L:r0x111F\
:$L:r0x1120:$L:r0x1121
;--------------------------------------------------------
;	;.line	871; ".\Source\APP_Measure.c"	switch (eMeas_Status)
_Forecast_Measure:	;Function start
	MVL	0x05
	CPSL	_eMeas_Status,0
	JMP	_00644_DS_
	MVL	HIGHD2(_00829_DS_)
	MVF	_PCLATH,1,0
	MVF	_eMeas_Status,0,0
	ADDL	D2(_00829_DS_)
	BTSZ	_STATUS,4
	INF	_PCLATH,1,0
	MVF	_PCLATL,1,0
_00829_DS_:
	RJ	_00582_DS_
	RJ	_00587_DS_
	RJ	_00595_DS_
	RJ	_00607_DS_
	RJ	_00642_DS_
_00582_DS_:
;	;.line	876; ".\Source\APP_Measure.c"	if(!sTIMx.TempSampleFlag || (eMeasureMode == Bath_Mode) || !sActual_Forecast.AF_Start)
	BTSS	_sTIMx,2
	JMP	_00644_DS_
	MVF	_eMeasureMode,0,0
	XORL	0x03
	BTSZ	_STATUS,0
	JMP	_00644_DS_
	BTSS	_sActual_Forecast,0
	JMP	_00644_DS_
_00587_DS_:
;	;.line	907; ".\Source\APP_Measure.c"	if(!ActualForecast_Select())
	CALL	_ActualForecast_Select
	.CHKPARA _ActualForecast_Select 0
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00644_DS_
;	;.line	912; ".\Source\APP_Measure.c"	if(!sActual_Forecast.ResetTimeFlag)
	BTSZ	_sActual_Forecast,4
	JMP	_00593_DS_
;	;.line	914; ".\Source\APP_Measure.c"	sActual_Forecast.ResetTimeFlag = TRUE;
	BSF	_sActual_Forecast,4
;	;.line	917; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
	CLRF	(_sActual_Forecast + 1),0
;	;.line	919; ".\Source\APP_Measure.c"	sForecast.Forecast_Timer = 0;
	CLRF	(_sForecast + 1),0
;	;.line	921; ".\Source\APP_Measure.c"	sActual.ActualTime = 0;
	CLRF	(_sActual + 2),0
	JMP	_00595_DS_
_00593_DS_:
;	;.line	926; ".\Source\APP_Measure.c"	if(++sActual_Forecast.Cnt_1S >= 4)
	INF	(_sActual_Forecast + 1),0,0
	MVF	r0x111A,1,0
	MVF	(_sActual_Forecast + 1),1,0
	MVL	0x03
	CPSG	r0x111A,0
	JMP	_00595_DS_
;	;.line	928; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
	CLRF	(_sActual_Forecast + 1),0
;	;.line	930; ".\Source\APP_Measure.c"	sForecast.Forecast_Timer++;
	INF	(_sForecast + 1),1,0
;	;.line	932; ".\Source\APP_Measure.c"	sActual.ActualTime++;
	INF	(_sActual + 2),1,0
;	;.line	934; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = TRUE;
	LDPR	(_sActual_Forecast + 0),0x00
	BSF	_INDF0,3
_00595_DS_:
;	;.line	950; ".\Source\APP_Measure.c"	if(sActual.Actual_Start && !sActual_Forecast.StableBuzzerFlag)
	BTSZ	_sActual,0
	BTSZ	_sActual_Forecast,1
	JMP	_00607_DS_
;	;.line	952; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
	BTSS	_sActual_Forecast,3
	JMP	_00601_DS_
;	;.line	955; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
	BCF	_sActual_Forecast,3
;	;.line	958; ".\Source\APP_Measure.c"	Filter_ErrTemp();
	CALL	_Filter_ErrTemp
;	;.line	960; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
	MVF	(_sActual_Forecast + 7),0,0
	MVF	r0x111C,1,0
	MVF	(_sActual_Forecast + 8),0,0
	MVF	r0x111D,1,0
	MVF	r0x111C,0,0
	SUBF	(_sActual_Forecast + 3),0,0
	MVF	r0x111D,0,0
	SUBC	(_sActual_Forecast + 4),0,0
	BTSZ	_STATUS,4
	JMP	_00597_DS_
;	;.line	962; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
	MVF	r0x111C,0,0
	MVF	(_sActual_Forecast + 3),1,0
	MVF	r0x111D,0,0
	MVF	(_sActual_Forecast + 4),1,0
_00597_DS_:
;	;.line	966; ".\Source\APP_Measure.c"	if(Judge_Stability(sActual.Prior1sActualTemp,sActual_Forecast.CentigradeTempDisp,sActual.StableTime))
	MVF	(_sActual + 3),0,0
	MVF	r0x111C,1,0
	MVF	(_sActual + 4),0,0
	MVF	r0x111D,1,0
	MVF	(_sActual_Forecast + 3),0,0
	MVF	r0x111E,1,0
	MVF	(_sActual_Forecast + 4),0,0
	MVF	r0x111F,1,0
	MVF	(_sActual + 1),0,0
	MVF	_Judge_Stability_STK03,1,0
	MVF	r0x111E,0,0
	MVF	_Judge_Stability_STK02,1,0
	MVF	r0x111F,0,0
	MVF	_Judge_Stability_STK01,1,0
	MVF	r0x111C,0,0
	MVF	_Judge_Stability_STK00,1,0
	MVF	r0x111D,0,0
	CALL	_Judge_Stability
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00599_DS_
;	;.line	968; ".\Source\APP_Measure.c"	sActual_Forecast.StableBuzzerFlag = TRUE;
	BSF	_sActual_Forecast,1
;	;.line	969; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
	BSF	_sBleStatus,4
;	;.line	970; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
	BSF	_sMemoryFlag,0
_00599_DS_:
;	;.line	984; ".\Source\APP_Measure.c"	sActual.Prior1sActualTemp = sActual_Forecast.CentigradeTempDisp;
	MVF	(_sActual_Forecast + 3),0,0
	MVF	(_sActual + 3),1,0
	MVF	(_sActual_Forecast + 4),0,0
	MVF	(_sActual + 4),1,0
_00601_DS_:
;	;.line	987; ".\Source\APP_Measure.c"	if(sTempCal.Reset_From_CalOK)
	BTSS	_sTempCal,5
	JMP	_00607_DS_
;	;.line	991; ".\Source\APP_Measure.c"	ERR[Err6] = TRUE;
	MVL	0x01
	MVF	(_ERR + 6),1,0
_00607_DS_:
;	;.line	997; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Start && !sActual_Forecast.StableBuzzerFlag)
	BTSZ	_sForecast,0
	BTSZ	_sActual_Forecast,1
	JMP	_00642_DS_
;	;.line	1000; ".\Source\APP_Measure.c"	if(Temp_Drop())
	CALL	_Temp_Drop
	.CHKPARA _Temp_Drop 0
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00609_DS_
;	;.line	1004; ".\Source\APP_Measure.c"	ERR[Err1] = TRUE;
	MVL	0x01
	MVF	(_ERR + 1),1,0
;	;.line	1008; ".\Source\APP_Measure.c"	eBuzzer_Status = Buzzer_Er1Er2;
	MVL	0x05
	MVF	_eBuzzer_Status,1,0
_00609_DS_:
;	;.line	1018; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
	BTSS	_sActual_Forecast,3
	JMP	_00642_DS_
;	;.line	1021; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
	BCF	_sActual_Forecast,3
;	;.line	1025; ".\Source\APP_Measure.c"	if(sTempCal.Reset_From_CalOK)
	BTSS	_sTempCal,5
	JMP	_00613_DS_
;	;.line	1027; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Timer > 8)
	MVL	0x08
	CPSG	(_sForecast + 1),0
	JMP	_00613_DS_
;	;.line	1031; ".\Source\APP_Measure.c"	ERR[Err6] = TRUE;
	MVL	0x01
	MVF	(_ERR + 6),1,0
_00613_DS_:
;	;.line	1035; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Timer > 15)
	MVF	(_sForecast + 1),0,0
	MVF	r0x111C,1,0
	ADDL	0xf0
	BTSS	_STATUS,4
	JMP	_00635_DS_
;	;.line	1039; ".\Source\APP_Measure.c"	ERR[Err2] = TRUE;
	MVL	0x01
	MVF	(_ERR + 2),1,0
;	;.line	1042; ".\Source\APP_Measure.c"	eBuzzer_Status = Buzzer_Er1Er2;
	MVL	0x05
	MVF	_eBuzzer_Status,1,0
	JMP	_00636_DS_
_00635_DS_:
;	;.line	1044; ".\Source\APP_Measure.c"	else if(sForecast.Forecast_Timer >= 2)
	MVL	0x01
	CPSG	r0x111C,0
	JMP	_00636_DS_
;	;.line	1047; ".\Source\APP_Measure.c"	if(Forecast_Calculate_Conditions())
	CALL	_Forecast_Calculate_Conditions
	.CHKPARA _Forecast_Calculate_Conditions 0
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00636_DS_
;	;.line	1050; ".\Source\APP_Measure.c"	Forecast_Calculate();
	CALL	_Forecast_Calculate
	.CHKPARA _Forecast_Calculate 0
;	;.line	1062; ".\Source\APP_Measure.c"	Temp = sForecast.ForecastTemp + sForecast.EndTemp;
	MVF	(_sForecast + 22),0,0
	MVF	r0x111C,1,0
	MVF	(_sForecast + 23),0,0
	MVF	r0x111D,1,0
	MVF	(_sForecast + 24),0,0
	MVF	r0x111E,1,0
	MVF	(_sForecast + 25),0,0
	MVF	r0x111F,1,0
	MVF	(_sForecast + 20),0,0
	MVF	r0x1120,1,0
	MVF	(_sForecast + 21),0,0
	MVF	r0x1121,1,0
	MVF	r0x111C,0,0
	ADDF	r0x1120,1,0
	MVF	r0x111D,0,0
	ADDC	r0x1121,1,0
;	;.line	1064; ".\Source\APP_Measure.c"	if((eMeasureMode == Oral_Mode) || (eMeasureMode == Rectal_Mode))
	RRF	_eMeasureMode,0,0
	BTSZ	_STATUS,0
	JMP	_00626_DS_
	MVL	0x02
	CPSE	_eMeasureMode,0
	JMP	_00627_DS_
_00626_DS_:
;	;.line	1066; ".\Source\APP_Measure.c"	if((Temp >= 3700) && (Temp <= 3800))
	MVF	r0x1120,0,0
	ADDL	0x8c
	MVL	0xf1
	ADDC	r0x1121,0,0
	BTSS	_STATUS,4
	JMP	_00628_DS_
	MVF	r0x1120,0,0
	ADDL	0x27
	MVL	0xf1
	ADDC	r0x1121,0,0
	BTSZ	_STATUS,4
	JMP	_00628_DS_
;	;.line	1068; ".\Source\APP_Measure.c"	if(sForecast.ForecastTemp > 80)
	MVF	r0x111C,0,0
	ADDL	0xaf
	MVL	0xff
	ADDC	r0x111D,0,0
	MVL	0xff
	ADDC	r0x111E,0,0
	MVL	0xff
	ADDC	r0x111F,0,0
	BTSS	_STATUS,4
	JMP	_00628_DS_
;	;.line	1070; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 80;
	MVL	0x50
	MVF	(_sForecast + 22),1,0
	CLRF	(_sForecast + 23),0
	CLRF	(_sForecast + 24),0
	CLRF	(_sForecast + 25),0
	JMP	_00628_DS_
_00627_DS_:
;	;.line	1075; ".\Source\APP_Measure.c"	else if(eMeasureMode == Underarm_Mode)
	DCSZ	_eMeasureMode,0,0
	JMP	_00628_DS_
;	;.line	1078; ".\Source\APP_Measure.c"	if((Temp >= 3700) && (Temp <= 3800))
	MVF	r0x1120,0,0
	ADDL	0x8c
	MVL	0xf1
	ADDC	r0x1121,0,0
	BTSS	_STATUS,4
	JMP	_00628_DS_
	MVF	r0x1120,0,0
	ADDL	0x27
	MVL	0xf1
	ADDC	r0x1121,0,0
	BTSZ	_STATUS,4
	JMP	_00628_DS_
;	;.line	1080; ".\Source\APP_Measure.c"	if(sForecast.ForecastTemp > 120)
	MVF	r0x111C,0,0
	ADDL	0x87
	MVL	0xff
	ADDC	r0x111D,0,0
	MVL	0xff
	ADDC	r0x111E,0,0
	MVL	0xff
	ADDC	r0x111F,0,0
	BTSS	_STATUS,4
	JMP	_00628_DS_
;	;.line	1082; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 120;
	MVL	0x78
	MVF	(_sForecast + 22),1,0
	CLRF	(_sForecast + 23),0
	CLRF	(_sForecast + 24),0
	CLRF	(_sForecast + 25),0
_00628_DS_:
;	;.line	1096; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = Temperature_Compensate(sForecast.ForecastTemp + sForecast.EndTemp);
	MVF	(_sForecast + 22),0,0
	MVF	r0x111C,1,0
	MVF	(_sForecast + 23),0,0
	MVF	r0x111D,1,0
	MVF	(_sForecast + 20),0,0
	ADDF	r0x111C,0,0
	MVF	_Temperature_Compensate_STK00,1,0
	MVF	r0x111D,0,0
	ADDC	(_sForecast + 21),0,0
	CALL	_Temperature_Compensate
	.CHKPARA _Temperature_Compensate 2
	MVF	r0x111D,1,0
	MVFF	STK00,(_sForecast + 22)
	MVF	(_sForecast + 23),1,0
	CLRF	(_sForecast + 24),0
	CLRF	(_sForecast + 25),0
;	;.line	1099; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sForecast.ForecastTemp;
	MVF	STK00,0,0
	MVF	(_sActual_Forecast + 3),1,0
	MVF	r0x111D,0,0
	MVF	(_sActual_Forecast + 4),1,0
;	;.line	1102; ".\Source\APP_Measure.c"	sActual_Forecast.StableBuzzerFlag = TRUE;
	BSF	_sActual_Forecast,1
;	;.line	1103; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
	BSF	_sBleStatus,4
;	;.line	1104; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
	BSF	_sMemoryFlag,0
;	;.line	1106; ".\Source\APP_Measure.c"	sTimeStamp.Get_ForecastMeas_Start_Timer_Flag = FALSE;
	BCF	_sTimeStamp,0
_00636_DS_:
;	;.line	1119; ".\Source\APP_Measure.c"	sForecast.Prior1sForecastTemp = sADC.Centigrade250msTemp;
	MVF	(_sADC + 13),0,0
	MVF	(_sForecast + 8),1,0
	MVF	(_sADC + 14),0,0
	MVF	(_sForecast + 9),1,0
_00642_DS_:
;	;.line	1126; ".\Source\APP_Measure.c"	Forecast_To_Actual();
	CALL	_Forecast_To_Actual
	.CHKPARA _Forecast_To_Actual 0
_00644_DS_:
;	;.line	1133; ".\Source\APP_Measure.c"	eMeas_Status = Meas_Get_TEMP;
	CLRF	_eMeas_Status,0
;	;.line	1137; ".\Source\APP_Measure.c"	if(sTIMx.TempSampleFlag)
	BTSS	_sTIMx,2
	JMP	_00647_DS_
;	;.line	1140; ".\Source\APP_Measure.c"	sTIMx.TempSampleFlag = FALSE;
	BCF	_sTIMx,2
;	;.line	1142; ".\Source\APP_Measure.c"	sForecast.Prior250msForecastTemp = sADC.Centigrade250msTemp;
	MVF	(_sADC + 13),0,0
	MVF	(_sForecast + 6),1,0
	MVF	(_sADC + 14),0,0
	MVF	(_sForecast + 7),1,0
_00647_DS_:
;	;.line	1165; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Forecast_Measure
	.ENDFUNC	_Forecast_Measure
;--------------------------------------------------------

.globl _Temperature_Compensate

;--------------------------------------------------------
	.FUNC _Temperature_Compensate:$r:2:2:$C:__divuint:$C:__g2ptrget1:$C:__g2ptrget2\
:$L:r0x110E:$L:_Temperature_Compensate_STK00:$L:r0x110F:$L:r0x1111:$L:r0x1110\
:$L:r0x1112:$L:r0x1113
;--------------------------------------------------------
;	;.line	816; ".\Source\APP_Measure.c"	uint16 Temperature_Compensate(uint16 Temp)
_Temperature_Compensate:	;Function start
	CLRF	r0x110F,0
	MVF	r0x110E,1,0
;	;.line	823; ".\Source\APP_Measure.c"	if((Temp < 3700)&&(Temp > 0))
	MVF	_Temperature_Compensate_STK00,0,0
	ADDL	0x8c
	MVL	0xf1
	ADDC	r0x110E,0,0
	BTSZ	_STATUS,4
	JMP	_00574_DS_
	MVF	_Temperature_Compensate_STK00,0,0
	IORF	r0x110E,0,0
	BTSZ	_STATUS,0
	JMP	_00574_DS_
;	;.line	825; ".\Source\APP_Measure.c"	b = Temp/10;
	MVL	0x0a
	MVF	__divuint_STK02,1,0
	CLRF	__divuint_STK01,0
	MVF	_Temperature_Compensate_STK00,0,0
	MVF	__divuint_STK00,1,0
	MVF	r0x110E,0,0
	CALL	__divuint
	MVF	r0x1111,1,0
	MVF	STK00,0,0
;	;.line	828; ".\Source\APP_Measure.c"	if(b < C_StartTemp)
	ADDL	0xf0
	MVL	0xfe
	ADDC	r0x1111,0,0
	BTSZ	_STATUS,4
	JMP	_00566_DS_
;	;.line	830; ".\Source\APP_Measure.c"	a = 0;
	CLRF	r0x1112,0
	JMP	_00567_DS_
_00566_DS_:
;	;.line	834; ".\Source\APP_Measure.c"	a = (uint8)(b - C_StartTemp);
	MVF	STK00,0,0
	ADDL	0xf0
	MVF	r0x1112,1,0
_00567_DS_:
;	;.line	838; ".\Source\APP_Measure.c"	if((a & 0x01)== 0x01)
	MVF	r0x1112,0,0
	ANDL	0x01
	DCSZ	_WREG,0,0
	JMP	_00569_DS_
;	;.line	840; ".\Source\APP_Measure.c"	F_OddFlag = 1;
	MVL	0x01
	MVF	r0x110F,1,0
_00569_DS_:
;	;.line	843; ".\Source\APP_Measure.c"	a >>= 1;
	BCF	_STATUS,4
	RRFC	r0x1112,0,0
	MVF	r0x1110,1,0
;	;.line	846; ".\Source\APP_Measure.c"	if( F_OddFlag == 1)
	DCSZ	r0x110F,0,0
	JMP	_00571_DS_
;	;.line	848; ".\Source\APP_Measure.c"	a = CloseTable[a];
	MVF	r0x1110,0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_CloseTable + 0)
	MVF	__g2ptrget1_STK00,1,0
	MVL	high (_CloseTable + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget1
	MVF	r0x1113,1,0
	JMP	_00572_DS_
_00571_DS_:
;	;.line	852; ".\Source\APP_Measure.c"	a = CloseTable[a] >> 8;
	MVF	r0x1110,0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_CloseTable + 0)
	MVF	__g2ptrget2_STK00,1,0
	MVL	high (_CloseTable + 0)
	ADDC	_PRODH,0,0
	IORL	0x80
	CALL	__g2ptrget2
	MVF	r0x1113,1,0
_00572_DS_:
;	;.line	855; ".\Source\APP_Measure.c"	return (Temp + a);
	CLRF	r0x1110,0
	MVF	r0x1113,0,0
	ADDF	_Temperature_Compensate_STK00,0,0
	MVF	STK00,1,0
	MVF	r0x110E,0,0
	ADDC	r0x1110,0,0
	JMP	_00577_DS_
_00574_DS_:
;	;.line	859; ".\Source\APP_Measure.c"	return Temp;
	MVF	_Temperature_Compensate_STK00,0,0
	MVF	STK00,1,0
	MVF	r0x110E,0,0
_00577_DS_:
;	;.line	861; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Temperature_Compensate
	.ENDFUNC	_Temperature_Compensate
;--------------------------------------------------------

.globl _ActualForecast_Select

;--------------------------------------------------------
	.FUNC _ActualForecast_Select:$r:1:0:$C:_Start_Algorithm\
:$L:r0x110B
;--------------------------------------------------------
;	;.line	754; ".\Source\APP_Measure.c"	if(!sActual_Forecast.ActualForecast_SelectFlag)
_ActualForecast_Select:	;Function start
	BTSZ	_sActual_Forecast,2
	JMP	_00560_DS_
;	;.line	756; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp > 3400)
	MVF	(_sADC + 13),0,0
	ADDL	0xb7
	MVL	0xf2
	ADDC	(_sADC + 14),0,0
	BTSS	_STATUS,4
	JMP	_00553_DS_
;	;.line	759; ".\Source\APP_Measure.c"	if(++sForecast.PreBath_Counts >= 3)
	INF	(_sForecast + 4),0,0
	MVF	r0x110B,1,0
	MVF	(_sForecast + 4),1,0
	MVL	0x02
	CPSG	r0x110B,0
	JMP	_00554_DS_
;	;.line	762; ".\Source\APP_Measure.c"	sForecast.PreBath_Counts = 3;
	MVL	0x03
	MVF	(_sForecast + 4),1,0
;	;.line	764; ".\Source\APP_Measure.c"	sActual.Actual_Start = TRUE;
	BSF	_sActual,0
;	;.line	766; ".\Source\APP_Measure.c"	sActual_Forecast.ActualForecast_SelectFlag = TRUE;
	BSF	_sActual_Forecast,2
;	;.line	770; ".\Source\APP_Measure.c"	sActual.Prior1sActualTemp = sADC.Centigrade250msTemp;
	MVF	(_sADC + 13),0,0
	MVF	(_sActual + 3),1,0
	MVF	(_sADC + 14),0,0
	MVF	(_sActual + 4),1,0
	JMP	_00554_DS_
_00553_DS_:
;	;.line	782; ".\Source\APP_Measure.c"	sForecast.PreBath_Counts = 0;
	CLRF	(_sForecast + 4),0
_00554_DS_:
;	;.line	786; ".\Source\APP_Measure.c"	if(!sActual.Actual_Start)
	BTSZ	_sActual,0
	JMP	_00558_DS_
;	;.line	789; ".\Source\APP_Measure.c"	if(Start_Algorithm())
	CALL	_Start_Algorithm
	.CHKPARA _Start_Algorithm 0
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00558_DS_
;	;.line	792; ".\Source\APP_Measure.c"	sForecast.Forecast_Start = TRUE;
	BSF	_sForecast,0
;	;.line	794; ".\Source\APP_Measure.c"	sActual_Forecast.ActualForecast_SelectFlag = TRUE;
	LDPR	(_sActual_Forecast + 0),0x00
	BSF	_INDF0,2
_00558_DS_:
;	;.line	805; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sADC.Centigrade250msTemp;
	MVF	(_sADC + 13),0,0
	MVF	(_sActual_Forecast + 3),1,0
	MVF	(_sADC + 14),0,0
	MVF	(_sActual_Forecast + 4),1,0
_00560_DS_:
;	;.line	808; ".\Source\APP_Measure.c"	return sActual_Forecast.ActualForecast_SelectFlag;
	MVL	0x00
	BTSZ	_sActual_Forecast,2
	MVL	0x01
;	;.line	809; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _ActualForecast_Select
	.ENDFUNC	_ActualForecast_Select
;--------------------------------------------------------

.globl _Forecast_To_Actual

;--------------------------------------------------------
	.FUNC _Forecast_To_Actual:$r:0:0:$C:_Update_MaxTempImmediately:$C:_Update_MaxTemp3Min\

;--------------------------------------------------------
;	;.line	729; ".\Source\APP_Measure.c"	switch(eTo_Actual_Ways)
_Forecast_To_Actual:	;Function start
	MVF	_eTo_Actual_Ways,0,0
	XORL	0x5a
	BTSZ	_STATUS,0
	JMP	_00528_DS_
	MVL	0xa5
	CPSE	_eTo_Actual_Ways,0
	JMP	_00531_DS_
;	;.line	734; ".\Source\APP_Measure.c"	Update_MaxTempImmediately();
	CALL	_Update_MaxTempImmediately
	.CHKPARA _Update_MaxTempImmediately 0
;	;.line	735; ".\Source\APP_Measure.c"	break;
	JMP	_00531_DS_
_00528_DS_:
;	;.line	739; ".\Source\APP_Measure.c"	Update_MaxTemp3Min();
	CALL	_Update_MaxTemp3Min
	.CHKPARA _Update_MaxTemp3Min 0
_00531_DS_:
;	;.line	744; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Forecast_To_Actual
	.ENDFUNC	_Forecast_To_Actual
;--------------------------------------------------------

.globl _Update_MaxTemp3Min

;--------------------------------------------------------
	.FUNC _Update_MaxTemp3Min:$r:0:0:$C:_Timer_Experience:$C:_Filter_ErrTemp\
:$L:r0x10FC:$L:r0x10FD:$L:r0x10FE:$L:r0x10FF
;--------------------------------------------------------
;	;.line	612; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Start)
_Update_MaxTemp3Min:	;Function start
	BTSS	_sForecast,0
	JMP	_00520_DS_
;	;.line	614; ".\Source\APP_Measure.c"	if(!sTimeStamp.Get_ForecastMeas_Start_Timer_Flag)
	BTSZ	_sTimeStamp,0
	JMP	_00491_DS_
;	;.line	616; ".\Source\APP_Measure.c"	sTimeStamp.Get_ForecastMeas_Start_Timer_Flag = TRUE;
	BSF	_sTimeStamp,0
;	;.line	617; ".\Source\APP_Measure.c"	sTimeStamp.ForecastMeas_Timer = sTimeStamp.Timer_Journey;
	MVF	(_sTimeStamp + 2),0,0
	MVF	(_sTimeStamp + 18),1,0
	MVF	(_sTimeStamp + 3),0,0
	MVF	(_sTimeStamp + 19),1,0
	MVF	(_sTimeStamp + 4),0,0
	MVF	(_sTimeStamp + 20),1,0
	MVF	(_sTimeStamp + 5),0,0
	MVF	(_sTimeStamp + 21),1,0
_00491_DS_:
;	;.line	621; ".\Source\APP_Measure.c"	Result = Timer_Experience(sTimeStamp.ForecastMeas_Timer,7200);
	MVF	(_sTimeStamp + 18),0,0
	MVF	r0x10FC,1,0
	MVF	(_sTimeStamp + 19),0,0
	MVF	r0x10FD,1,0
	MVF	(_sTimeStamp + 20),0,0
	MVF	r0x10FE,1,0
	MVF	(_sTimeStamp + 21),0,0
	MVF	r0x10FF,1,0
	MVL	0x20
	MVF	_Timer_Experience_STK06,1,0
	MVL	0x1c
	MVF	_Timer_Experience_STK05,1,0
	CLRF	_Timer_Experience_STK04,0
	CLRF	_Timer_Experience_STK03,0
	MVF	r0x10FC,0,0
	MVF	_Timer_Experience_STK02,1,0
	MVF	r0x10FD,0,0
	MVF	_Timer_Experience_STK01,1,0
	MVF	r0x10FE,0,0
	MVF	_Timer_Experience_STK00,1,0
	MVF	r0x10FF,0,0
	CALL	_Timer_Experience
	.CHKPARA _Timer_Experience 8
;	;.line	622; ".\Source\APP_Measure.c"	if(Result)
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00509_DS_
;	;.line	624; ".\Source\APP_Measure.c"	if(!sForecast.Update_MaxTemp3Min_Arrived)
	BTSZ	_sForecast,1
	JMP	_00495_DS_
;	;.line	626; ".\Source\APP_Measure.c"	sForecast.Update_MaxTemp3Min_Arrived = TRUE;
	BSF	_sForecast,1
;	;.line	627; ".\Source\APP_Measure.c"	sTIMx.Cnt125ms = 0;
	CLRF	(_sTIMx + 5),0
	CLRF	(_sTIMx + 6),0
;	;.line	629; ".\Source\APP_Measure.c"	if(!sTempCal.Reset_From_CalOK)
	BTSZ	_sTempCal,5
	JMP	_00493_DS_
;	;.line	636; ".\Source\APP_Measure.c"	eBuzzer_Status = Buzzer_MeasuredTempActual;
	MVL	0x03
	MVF	_eBuzzer_Status,1,0
_00493_DS_:
;	;.line	638; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = TRUE;
	BSF	_sActual_Forecast,3
_00495_DS_:
;	;.line	642; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
	BTSS	_sActual_Forecast,3
	JMP	_00522_DS_
;	;.line	645; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
	BCF	_sActual_Forecast,3
;	;.line	648; ".\Source\APP_Measure.c"	Filter_ErrTemp();
	CALL	_Filter_ErrTemp
;	;.line	650; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 <= 3680)
	MVF	(_sActual_Forecast + 7),0,0
	MVF	r0x10FC,1,0
	MVF	(_sActual_Forecast + 8),0,0
	MVF	r0x10FD,1,0
	MVF	r0x10FC,0,0
	ADDL	0x9f
	MVL	0xf1
	ADDC	r0x10FD,0,0
	BTSZ	_STATUS,4
	JMP	_00502_DS_
;	;.line	653; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 >= sActual_Forecast.CentigradeTempDisp)
	MVF	(_sActual_Forecast + 3),0,0
	MVF	r0x10FE,1,0
	MVF	(_sActual_Forecast + 4),0,0
	MVF	r0x10FF,1,0
	MVF	r0x10FE,0,0
	SUBF	r0x10FC,0,0
	MVF	r0x10FF,0,0
	SUBC	r0x10FD,0,0
	BTSS	_STATUS,4
	JMP	_00499_DS_
;	;.line	656; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
	MVF	r0x10FC,0,0
	MVF	(_sActual_Forecast + 3),1,0
	MVF	r0x10FD,0,0
	MVF	(_sActual_Forecast + 4),1,0
	JMP	_00503_DS_
_00499_DS_:
;	;.line	660; ".\Source\APP_Measure.c"	if(sActual_Forecast.CentigradeTempDisp > 3680)
	MVF	r0x10FE,0,0
	ADDL	0x9f
	MVL	0xf1
	ADDC	r0x10FF,0,0
	BTSS	_STATUS,4
	JMP	_00503_DS_
;	;.line	663; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = 3680;
	MVL	0x60
	MVF	(_sActual_Forecast + 3),1,0
	MVL	0x0e
	MVF	(_sActual_Forecast + 4),1,0
	JMP	_00503_DS_
_00502_DS_:
;	;.line	676; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
	MVF	r0x10FC,0,0
	MVF	(_sActual_Forecast + 3),1,0
	MVF	r0x10FD,0,0
	MVF	(_sActual_Forecast + 4),1,0
_00503_DS_:
;	;.line	678; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
	BSF	_sBleStatus,4
;	;.line	679; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
	BSF	_sMemoryFlag,0
	JMP	_00522_DS_
_00509_DS_:
;	;.line	685; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
	BTSS	_sActual_Forecast,3
	JMP	_00522_DS_
;	;.line	688; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
	BCF	_sActual_Forecast,3
;	;.line	690; ".\Source\APP_Measure.c"	Filter_ErrTemp();
	CALL	_Filter_ErrTemp
	JMP	_00522_DS_
_00520_DS_:
;	;.line	694; ".\Source\APP_Measure.c"	else if(sActual.Actual_Start)
	BTSZ	_sActual,0
;	;.line	697; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
	BTSS	_sActual_Forecast,3
	JMP	_00522_DS_
;	;.line	700; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
	BCF	_sActual_Forecast,3
;	;.line	703; ".\Source\APP_Measure.c"	Filter_ErrTemp();
	CALL	_Filter_ErrTemp
;	;.line	706; ".\Source\APP_Measure.c"	if(eBuzzer_Status == Buzzer_Silent)
	TFSZ	_eBuzzer_Status,0
	JMP	_00522_DS_
;	;.line	709; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
	MVF	(_sActual_Forecast + 7),0,0
	MVF	r0x10FC,1,0
	MVF	(_sActual_Forecast + 8),0,0
	MVF	r0x10FD,1,0
	MVF	r0x10FC,0,0
	SUBF	(_sActual_Forecast + 3),0,0
	MVF	r0x10FD,0,0
	SUBC	(_sActual_Forecast + 4),0,0
	BTSZ	_STATUS,4
	JMP	_00522_DS_
;	;.line	713; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
	MVF	r0x10FC,0,0
	MVF	(_sActual_Forecast + 3),1,0
	MVF	r0x10FD,0,0
	MVF	(_sActual_Forecast + 4),1,0
;	;.line	714; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
	BSF	_sBleStatus,4
;	;.line	715; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
	BSF	_sMemoryFlag,0
_00522_DS_:
;	;.line	720; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Update_MaxTemp3Min
	.ENDFUNC	_Update_MaxTemp3Min
;--------------------------------------------------------

.globl _Update_MaxTempImmediately

;--------------------------------------------------------
	.FUNC _Update_MaxTempImmediately:$r:0:0:$C:_Filter_ErrTemp\
:$L:r0x10F2:$L:r0x10F3:$L:r0x10F4:$L:r0x10F5:$L:r0x10F6\
:$L:r0x10F7
;--------------------------------------------------------
;	;.line	582; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
_Update_MaxTempImmediately:	;Function start
	BTSS	_sActual_Forecast,3
	JMP	_00485_DS_
;	;.line	585; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
	BCF	_sActual_Forecast,3
;	;.line	588; ".\Source\APP_Measure.c"	Filter_ErrTemp();
	CALL	_Filter_ErrTemp
;	;.line	591; ".\Source\APP_Measure.c"	if((sActual_Forecast.Temp_T1 > sForecast.ForecastTemp) && (eBuzzer_Status == Buzzer_Silent))
	MVF	(_sActual_Forecast + 7),0,0
	MVF	r0x10F2,1,0
	MVF	(_sActual_Forecast + 8),0,0
	MVF	r0x10F3,1,0
	MVF	(_sForecast + 22),0,0
	MVF	r0x10F4,1,0
	MVF	(_sForecast + 23),0,0
	MVF	r0x10F5,1,0
	MVF	(_sForecast + 24),0,0
	MVF	r0x10F6,1,0
	MVF	(_sForecast + 25),0,0
	MVF	r0x10F7,1,0
	MVF	r0x10F2,0,0
	SUBF	r0x10F4,0,0
	MVF	r0x10F3,0,0
	SUBC	r0x10F5,0,0
	MVL	0x00
	SUBC	r0x10F6,0,0
	MVL	0x00
	SUBC	r0x10F7,0,0
	BTSZ	_STATUS,4
	JMP	_00485_DS_
	TFSZ	_eBuzzer_Status,0
	JMP	_00485_DS_
;	;.line	594; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
	MVF	r0x10F2,0,0
	SUBF	(_sActual_Forecast + 3),0,0
	MVF	r0x10F3,0,0
	SUBC	(_sActual_Forecast + 4),0,0
	BTSZ	_STATUS,4
	JMP	_00485_DS_
;	;.line	598; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
	MVF	r0x10F2,0,0
	MVF	(_sActual_Forecast + 3),1,0
	MVF	r0x10F3,0,0
	MVF	(_sActual_Forecast + 4),1,0
_00485_DS_:
;	;.line	602; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Update_MaxTempImmediately
	.ENDFUNC	_Update_MaxTempImmediately
;--------------------------------------------------------

.globl _Forecast_Calculate

;--------------------------------------------------------
	.FUNC _Forecast_Calculate:$r:0:0:$C:_abs:$C:__mullong:$C:__divulong\
:$L:r0x10DA:$L:r0x10DB:$L:r0x10DC:$L:r0x10DD:$L:r0x10DF\
:$L:r0x10DE:$L:r0x10E3:$L:r0x10E1
;--------------------------------------------------------
;	;.line	506; ".\Source\APP_Measure.c"	K = abs(sADC.Centigrade250msTemp - sForecast.Prior1sForecastTemp);
_Forecast_Calculate:	;Function start
	MVF	(_sForecast + 8),0,0
	SUBF	(_sADC + 13),0,0
	MVF	_abs_STK00,1,0
	MVF	(_sForecast + 9),0,0
	SUBC	(_sADC + 14),0,0
	CALL	_abs
	MVF	r0x10DD,1,0
	MVL	0x00
	BTSZ	r0x10DD,7
	MVL	0xff
	MVF	r0x10DF,1,0
	MVF	r0x10DE,1,0
;	;.line	511; ".\Source\APP_Measure.c"	if((eMeasureMode == Oral_Mode) || (eMeasureMode == Rectal_Mode))
	RRF	_eMeasureMode,0,0
	BTSZ	_STATUS,0
	JMP	_00471_DS_
	MVL	0x02
	CPSE	_eMeasureMode,0
	JMP	_00472_DS_
_00471_DS_:
;	;.line	514; ".\Source\APP_Measure.c"	if(sForecast.StartTemp >= 3400)
	MVF	(_sForecast + 10),0,0
	MVF	r0x10DA,1,0
	MVF	(_sForecast + 11),0,0
	MVF	r0x10DB,1,0
	MVF	r0x10DA,0,0
	ADDL	0xb8
	MVL	0xf2
	ADDC	r0x10DB,0,0
	BTSZ	_STATUS,4
	JMP	_00473_DS_
;	;.line	519; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2800)
	MVF	r0x10DA,0,0
	ADDL	0x10
	MVL	0xf5
	ADDC	r0x10DB,0,0
	BTSS	_STATUS,4
	JMP	_00452_DS_
;	;.line	521; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 3910 * K + 29000;
	MVFF	STK00,__mullong_STK06
	MVF	r0x10DD,0,0
	MVF	__mullong_STK05,1,0
	MVF	r0x10DE,0,0
	MVF	__mullong_STK04,1,0
	MVF	r0x10DF,0,0
	MVF	__mullong_STK03,1,0
	MVL	0x46
	MVF	__mullong_STK02,1,0
	MVL	0x0f
	MVF	__mullong_STK01,1,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	.CHKPARA __mullong 8
	MVF	r0x10E3,1,0
	MVF	STK02,0,0
	ADDL	0x48
	MVF	(_sForecast + 22),1,0
	MVL	0x71
	ADDC	STK01,0,0
	MVF	(_sForecast + 23),1,0
	MVL	0x00
	ADDC	STK00,0,0
	MVF	(_sForecast + 24),1,0
	MVL	0x00
	ADDC	r0x10E3,0,0
	MVF	(_sForecast + 25),1,0
	JMP	_00473_DS_
_00452_DS_:
;	;.line	524; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2200)
	MVF	r0x10DA,0,0
	ADDL	0x68
	MVL	0xf7
	ADDC	r0x10DB,0,0
	BTSS	_STATUS,4
	JMP	_00449_DS_
;	;.line	526; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 4150 * K + 33000;
	MVFF	STK00,__mullong_STK06
	MVF	r0x10DD,0,0
	MVF	__mullong_STK05,1,0
	MVF	r0x10DE,0,0
	MVF	__mullong_STK04,1,0
	MVF	r0x10DF,0,0
	MVF	__mullong_STK03,1,0
	MVL	0x36
	MVF	__mullong_STK02,1,0
	MVL	0x10
	MVF	__mullong_STK01,1,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10E3,1,0
	MVF	STK02,0,0
	ADDL	0xe8
	MVF	(_sForecast + 22),1,0
	MVL	0x80
	ADDC	STK01,0,0
	MVF	(_sForecast + 23),1,0
	MVL	0x00
	ADDC	STK00,0,0
	MVF	(_sForecast + 24),1,0
	MVL	0x00
	ADDC	r0x10E3,0,0
	MVF	(_sForecast + 25),1,0
	JMP	_00473_DS_
_00449_DS_:
;	;.line	529; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 1600)
	MVF	r0x10DA,0,0
	ADDL	0xc0
	MVL	0xf9
	ADDC	r0x10DB,0,0
	BTSS	_STATUS,4
	JMP	_00446_DS_
;	;.line	531; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 4390 * K + 37000;
	MVFF	STK00,__mullong_STK06
	MVF	r0x10DD,0,0
	MVF	__mullong_STK05,1,0
	MVF	r0x10DE,0,0
	MVF	__mullong_STK04,1,0
	MVF	r0x10DF,0,0
	MVF	__mullong_STK03,1,0
	MVL	0x26
	MVF	__mullong_STK02,1,0
	MVL	0x11
	MVF	__mullong_STK01,1,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10E1,1,0
	MVF	STK02,0,0
	ADDL	0x88
	MVF	(_sForecast + 22),1,0
	MVL	0x90
	ADDC	STK01,0,0
	MVF	(_sForecast + 23),1,0
	MVL	0x00
	ADDC	STK00,0,0
	MVF	(_sForecast + 24),1,0
	MVL	0x00
	ADDC	r0x10E1,0,0
	MVF	(_sForecast + 25),1,0
	JMP	_00473_DS_
_00446_DS_:
;	;.line	537; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 4630 * K + 41000;
	MVFF	STK00,__mullong_STK06
	MVF	r0x10DD,0,0
	MVF	__mullong_STK05,1,0
	MVF	r0x10DE,0,0
	MVF	__mullong_STK04,1,0
	MVF	r0x10DF,0,0
	MVF	__mullong_STK03,1,0
	MVL	0x16
	MVF	__mullong_STK02,1,0
	MVL	0x12
	MVF	__mullong_STK01,1,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10E1,1,0
	MVF	STK02,0,0
	ADDL	0x28
	MVF	(_sForecast + 22),1,0
	MVL	0xa0
	ADDC	STK01,0,0
	MVF	(_sForecast + 23),1,0
	MVL	0x00
	ADDC	STK00,0,0
	MVF	(_sForecast + 24),1,0
	MVL	0x00
	ADDC	r0x10E1,0,0
	MVF	(_sForecast + 25),1,0
	JMP	_00473_DS_
_00472_DS_:
;	;.line	541; ".\Source\APP_Measure.c"	else if(eMeasureMode == Underarm_Mode)
	DCSZ	_eMeasureMode,0,0
	JMP	_00473_DS_
;	;.line	544; ".\Source\APP_Measure.c"	if(sForecast.StartTemp >= 3400)
	MVF	(_sForecast + 10),0,0
	MVF	r0x10DA,1,0
	MVF	(_sForecast + 11),0,0
	MVF	r0x10DB,1,0
	MVF	r0x10DA,0,0
	ADDL	0xb8
	MVL	0xf2
	ADDC	r0x10DB,0,0
	BTSZ	_STATUS,4
	JMP	_00473_DS_
;	;.line	549; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2800)
	MVF	r0x10DA,0,0
	ADDL	0x10
	MVL	0xf5
	ADDC	r0x10DB,0,0
	BTSS	_STATUS,4
	JMP	_00464_DS_
;	;.line	551; ".\Source\APP_Measure.c"	sForecast.ForecastTemp =6900 * K + 56000;
	MVFF	STK00,__mullong_STK06
	MVF	r0x10DD,0,0
	MVF	__mullong_STK05,1,0
	MVF	r0x10DE,0,0
	MVF	__mullong_STK04,1,0
	MVF	r0x10DF,0,0
	MVF	__mullong_STK03,1,0
	MVL	0xf4
	MVF	__mullong_STK02,1,0
	MVL	0x1a
	MVF	__mullong_STK01,1,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10E3,1,0
	MVF	STK02,0,0
	ADDL	0xc0
	MVF	(_sForecast + 22),1,0
	MVL	0xda
	ADDC	STK01,0,0
	MVF	(_sForecast + 23),1,0
	MVL	0x00
	ADDC	STK00,0,0
	MVF	(_sForecast + 24),1,0
	MVL	0x00
	ADDC	r0x10E3,0,0
	MVF	(_sForecast + 25),1,0
	JMP	_00473_DS_
_00464_DS_:
;	;.line	554; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2200)
	MVF	r0x10DA,0,0
	ADDL	0x68
	MVL	0xf7
	ADDC	r0x10DB,0,0
	BTSS	_STATUS,4
	JMP	_00461_DS_
;	;.line	556; ".\Source\APP_Measure.c"	sForecast.ForecastTemp =  7000 * K + 60000;
	MVFF	STK00,__mullong_STK06
	MVF	r0x10DD,0,0
	MVF	__mullong_STK05,1,0
	MVF	r0x10DE,0,0
	MVF	__mullong_STK04,1,0
	MVF	r0x10DF,0,0
	MVF	__mullong_STK03,1,0
	MVL	0x58
	MVF	__mullong_STK02,1,0
	MVL	0x1b
	MVF	__mullong_STK01,1,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10E3,1,0
	MVF	STK02,0,0
	ADDL	0x60
	MVF	(_sForecast + 22),1,0
	MVL	0xea
	ADDC	STK01,0,0
	MVF	(_sForecast + 23),1,0
	MVL	0x00
	ADDC	STK00,0,0
	MVF	(_sForecast + 24),1,0
	MVL	0x00
	ADDC	r0x10E3,0,0
	MVF	(_sForecast + 25),1,0
	JMP	_00473_DS_
_00461_DS_:
;	;.line	559; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 1600)
	MVF	r0x10DA,0,0
	ADDL	0xc0
	MVL	0xf9
	ADDC	r0x10DB,0,0
	BTSS	_STATUS,4
	JMP	_00458_DS_
;	;.line	561; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 7100 * K + 64000;
	MVFF	STK00,__mullong_STK06
	MVF	r0x10DD,0,0
	MVF	__mullong_STK05,1,0
	MVF	r0x10DE,0,0
	MVF	__mullong_STK04,1,0
	MVF	r0x10DF,0,0
	MVF	__mullong_STK03,1,0
	MVL	0xbc
	MVF	__mullong_STK02,1,0
	MVL	0x1b
	MVF	__mullong_STK01,1,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10E1,1,0
	MVF	STK02,0,0
	MVF	(_sForecast + 22),1,0
	MVF	STK01,0,0
	ADDL	0xfa
	MVF	(_sForecast + 23),1,0
	MVL	0x00
	ADDC	STK00,0,0
	MVF	(_sForecast + 24),1,0
	MVL	0x00
	ADDC	r0x10E1,0,0
	MVF	(_sForecast + 25),1,0
	JMP	_00473_DS_
_00458_DS_:
;	;.line	567; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 7200 * K + 68000;
	MVFF	STK00,__mullong_STK06
	MVF	r0x10DD,0,0
	MVF	__mullong_STK05,1,0
	MVF	r0x10DE,0,0
	MVF	__mullong_STK04,1,0
	MVF	r0x10DF,0,0
	MVF	__mullong_STK03,1,0
	MVL	0x20
	MVF	__mullong_STK02,1,0
	MVL	0x1c
	MVF	__mullong_STK01,1,0
	CLRF	__mullong_STK00,0
	MVL	0x00
	CALL	__mullong
	MVF	r0x10DD,1,0
	MVF	STK02,0,0
	ADDL	0xa0
	MVF	(_sForecast + 22),1,0
	MVL	0x09
	ADDC	STK01,0,0
	MVF	(_sForecast + 23),1,0
	MVL	0x01
	ADDC	STK00,0,0
	MVF	(_sForecast + 24),1,0
	MVL	0x00
	ADDC	r0x10DD,0,0
	MVF	(_sForecast + 25),1,0
_00473_DS_:
;	;.line	571; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = (sForecast.ForecastTemp + 500) / 1000;
	MVF	(_sForecast + 22),0,0
	ADDL	0xf4
	MVF	r0x10DA,1,0
	MVL	0x01
	ADDC	(_sForecast + 23),0,0
	MVF	r0x10DB,1,0
	MVL	0x00
	ADDC	(_sForecast + 24),0,0
	MVF	r0x10DC,1,0
	MVL	0x00
	ADDC	(_sForecast + 25),0,0
	MVF	r0x10DD,1,0
	MVL	0xe8
	MVF	__divulong_STK06,1,0
	MVL	0x03
	MVF	__divulong_STK05,1,0
	CLRF	__divulong_STK04,0
	CLRF	__divulong_STK03,0
	MVF	r0x10DA,0,0
	MVF	__divulong_STK02,1,0
	MVF	r0x10DB,0,0
	MVF	__divulong_STK01,1,0
	MVF	r0x10DC,0,0
	MVF	__divulong_STK00,1,0
	MVF	r0x10DD,0,0
	CALL	__divulong
	.CHKPARA __divulong 8
	MVF	(_sForecast + 25),1,0
	MVF	STK00,0,0
	MVF	(_sForecast + 24),1,0
	MVF	STK01,0,0
	MVF	(_sForecast + 23),1,0
	MVF	STK02,0,0
	MVF	(_sForecast + 22),1,0
;	;.line	572; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Forecast_Calculate
	.ENDFUNC	_Forecast_Calculate
;--------------------------------------------------------

.globl _Forecast_Calculate_Conditions

;--------------------------------------------------------
	.FUNC _Forecast_Calculate_Conditions:$r:1:0:$C:_abs\
:$L:r0x10D6:$L:r0x10D8:$L:r0x10D9
;--------------------------------------------------------
;	;.line	463; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Timer >= 3)
_Forecast_Calculate_Conditions:	;Function start
	MVL	0x02
	CPSG	(_sForecast + 1),0
	JMP	_00439_DS_
;	;.line	466; ".\Source\APP_Measure.c"	if(abs(sADC.Centigrade250msTemp - sForecast.Prior1sForecastTemp) >= 0)
	MVF	(_sForecast + 8),0,0
	SUBF	(_sADC + 13),0,0
	MVF	_abs_STK00,1,0
	MVF	(_sForecast + 9),0,0
	SUBC	(_sADC + 14),0,0
	CALL	_abs
	BTSZ	_WREG,7
	JMP	_00436_DS_
;	;.line	470; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp < /*45*/40 + sForecast.Prior1sForecastTemp)
	MVF	(_sForecast + 8),0,0
	ADDL	0x28
	MVF	r0x10D8,1,0
	MVL	0x00
	ADDC	(_sForecast + 9),0,0
	MVF	r0x10D9,1,0
	MVF	r0x10D8,0,0
	SUBF	(_sADC + 13),0,0
	MVF	r0x10D9,0,0
	SUBC	(_sADC + 14),0,0
	BTSZ	_STATUS,4
	JMP	_00433_DS_
;	;.line	473; ".\Source\APP_Measure.c"	if(++sForecast.Forecast_Counts >= 3)
	INF	(_sForecast + 5),0,0
	MVF	r0x10D6,1,0
	MVF	(_sForecast + 5),1,0
	MVL	0x02
	CPSG	r0x10D6,0
	JMP	_00439_DS_
;	;.line	476; ".\Source\APP_Measure.c"	sForecast.Forecast_Counts = 3;
	MVL	0x03
	MVF	(_sForecast + 5),1,0
;	;.line	477; ".\Source\APP_Measure.c"	sForecast.EndTemp = sADC.Centigrade250msTemp/* / 10 * 10*/;
	MVF	(_sADC + 13),0,0
	MVF	(_sForecast + 20),1,0
	MVF	(_sADC + 14),0,0
	MVF	(_sForecast + 21),1,0
;	;.line	478; ".\Source\APP_Measure.c"	return TRUE;
	MVL	0x01
	JMP	_00440_DS_
_00433_DS_:
;	;.line	484; ".\Source\APP_Measure.c"	sForecast.Forecast_Counts = 0;
	CLRF	(_sForecast + 5),0
	JMP	_00439_DS_
_00436_DS_:
;	;.line	490; ".\Source\APP_Measure.c"	sForecast.Forecast_Counts = 0;
	CLRF	(_sForecast + 5),0
_00439_DS_:
;	;.line	493; ".\Source\APP_Measure.c"	return FALSE;
	MVL	0x00
_00440_DS_:
;	;.line	494; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Forecast_Calculate_Conditions
	.ENDFUNC	_Forecast_Calculate_Conditions
;--------------------------------------------------------

.globl _Temp_Drop

;--------------------------------------------------------
	.FUNC _Temp_Drop:$r:1:0:$L:r0x10D2:$L:r0x10D3:$L:r0x10D4:$L:r0x10D5
;--------------------------------------------------------
;	;.line	436; ".\Source\APP_Measure.c"	if(sForecast.Prior250msForecastTemp > 3 + sADC.Centigrade250msTemp)
_Temp_Drop:	;Function start
	MVF	(_sForecast + 6),0,0
	MVF	r0x10D2,1,0
	MVF	(_sForecast + 7),0,0
	MVF	r0x10D3,1,0
	MVF	(_sADC + 13),0,0
	ADDL	0x03
	MVF	r0x10D4,1,0
	MVL	0x00
	ADDC	(_sADC + 14),0,0
	MVF	r0x10D5,1,0
	MVF	r0x10D2,0,0
	SUBF	r0x10D4,0,0
	MVF	r0x10D3,0,0
	SUBC	r0x10D5,0,0
	BTSZ	_STATUS,4
	JMP	_00423_DS_
;	;.line	439; ".\Source\APP_Measure.c"	if(++sForecast.Drop_Counts >= 5)
	INF	(_sForecast + 3),0,0
	MVF	r0x10D2,1,0
	MVF	(_sForecast + 3),1,0
	MVL	0x04
	CPSG	r0x10D2,0
	JMP	_00424_DS_
;	;.line	442; ".\Source\APP_Measure.c"	sForecast.Drop_Counts = 5;
	MVL	0x05
	MVF	(_sForecast + 3),1,0
;	;.line	443; ".\Source\APP_Measure.c"	return TRUE;
	MVL	0x01
	JMP	_00425_DS_
_00423_DS_:
;	;.line	449; ".\Source\APP_Measure.c"	sForecast.Drop_Counts = 0;
	CLRF	(_sForecast + 3),0
_00424_DS_:
;	;.line	452; ".\Source\APP_Measure.c"	return FALSE;
	MVL	0x00
_00425_DS_:
;	;.line	453; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Temp_Drop
	.ENDFUNC	_Temp_Drop
;--------------------------------------------------------

.globl _Start_Algorithm

;--------------------------------------------------------
	.FUNC _Start_Algorithm:$r:1:0:$L:r0x10CA:$L:r0x10CB:$L:r0x10CC:$L:r0x10CD
;--------------------------------------------------------
;	;.line	372; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp > 10 + sForecast.Prior250msForecastTemp)
_Start_Algorithm:	;Function start
	MVF	(_sForecast + 6),0,0
	ADDL	0x0a
	MVF	r0x10CC,1,0
	MVL	0x00
	ADDC	(_sForecast + 7),0,0
	MVF	r0x10CD,1,0
	MVF	(_sADC + 13),0,0
	SUBF	r0x10CC,0,0
	MVF	(_sADC + 14),0,0
	SUBC	r0x10CD,0,0
	BTSZ	_STATUS,4
	JMP	_00411_DS_
;	;.line	375; ".\Source\APP_Measure.c"	if(!sForecast.FlagStartAlgorithmCounts)
	BTSZ	_sForecast,2
	JMP	_00404_DS_
;	;.line	377; ".\Source\APP_Measure.c"	sForecast.FlagStartAlgorithmCounts = TRUE;
	BSF	_sForecast,2
;	;.line	379; ".\Source\APP_Measure.c"	sForecast.StartAlgorithmTemp[3] = sForecast.Prior250msForecastTemp;
	MVF	(_sForecast + 6),0,0
	MVF	(_sForecast + 18),1,0
	MVF	(_sForecast + 7),0,0
	MVF	(_sForecast + 19),1,0
	JMP	_00405_DS_
_00404_DS_:
;	;.line	383; ".\Source\APP_Measure.c"	for(i = 0;i < 3;i++)
	CLRF	r0x10CA,0
_00413_DS_:
;	;.line	385; ".\Source\APP_Measure.c"	sForecast.StartAlgorithmTemp[i] = sForecast.StartAlgorithmTemp[i + 1];
	MVF	r0x10CA,0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_sForecast + 12)
	MVF	r0x10CB,1,0
	MVL	high (_sForecast + 12)
	BTSZ	_STATUS,4
	ADDL	0x01
	MVF	r0x10CC,1,0
	INF	r0x10CA,0,0
	MULL	0x02
	MVF	_PRODL,0,0
	LDPR	(_sForecast + 12),0
	MVFF	_PLUSW0,STK00
	INF	_WREG,0,0
	MVFF	_PLUSW0,STK01
	MVF	r0x10CB,0,0
	MVF	_FSR0L,1,0
	MVF	r0x10CC,0,0
	MVF	_FSR0H,1,0
	MVF	STK00,0,0
	MVF	_POINC0,1,0
	MVF	STK01,0,0
	MVF	_INDF0,1,0
;	;.line	383; ".\Source\APP_Measure.c"	for(i = 0;i < 3;i++)
	INF	r0x10CA,1,0
	MVL	0x02
	CPSG	r0x10CA,0
	JMP	_00413_DS_
;	;.line	388; ".\Source\APP_Measure.c"	sForecast.StartAlgorithmTemp[3] = sForecast.Prior250msForecastTemp;
	MVF	(_sForecast + 6),0,0
	MVF	(_sForecast + 18),1,0
	MVF	(_sForecast + 7),0,0
	MVF	(_sForecast + 19),1,0
_00405_DS_:
;	;.line	392; ".\Source\APP_Measure.c"	if(sForecast.Start_Counts++ >= 4)
	MVF	(_sForecast + 2),0,0
	MVF	r0x10CA,1,0
	INF	_WREG,0,0
	MVF	(_sForecast + 2),1,0
	MVL	0x03
	CPSG	r0x10CA,0
	JMP	_00412_DS_
;	;.line	395; ".\Source\APP_Measure.c"	sForecast.Start_Counts = 4;
	MVL	0x04
	MVF	(_sForecast + 2),1,0
;	;.line	407; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp >= 3100)
	MVF	(_sADC + 13),0,0
	ADDL	0xe4
	MVL	0xf3
	ADDC	(_sADC + 14),0,0
	BTSS	_STATUS,4
	JMP	_00412_DS_
;	;.line	410; ".\Source\APP_Measure.c"	sForecast.StartTemp = sForecast.StartAlgorithmTemp[0];
	MVF	(_sForecast + 12),0,0
	MVF	(_sForecast + 10),1,0
	MVF	(_sForecast + 13),0,0
	MVF	(_sForecast + 11),1,0
;	;.line	411; ".\Source\APP_Measure.c"	return TRUE;
	MVL	0x01
	JMP	_00415_DS_
_00411_DS_:
;	;.line	419; ".\Source\APP_Measure.c"	sForecast.Start_Counts = 1;
	MVL	0x01
	MVF	(_sForecast + 2),1,0
;	;.line	421; ".\Source\APP_Measure.c"	sForecast.FlagStartAlgorithmCounts = FALSE;
	LDPR	(_sForecast + 0),0x00
	BCF	_INDF0,2
_00412_DS_:
;	;.line	424; ".\Source\APP_Measure.c"	return FALSE;
	MVL	0x00
_00415_DS_:
;	;.line	425; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Start_Algorithm
	.ENDFUNC	_Start_Algorithm
;--------------------------------------------------------

.globl _Actual_Measure

;--------------------------------------------------------
	.FUNC _Actual_Measure:$r:0:0:$C:_Get_1sTemp:$C:_Filter_ErrTemp:$C:_Centigrade_Convert_Fahrenheit:$C:_PresetMeasTime\
:$C:_Judge_Stability\
:$L:r0x10BD:$L:r0x10BE:$L:r0x10BF:$L:r0x10C0:$L:r0x10C1\
:$L:r0x10C2
;--------------------------------------------------------
;	;.line	241; ".\Source\APP_Measure.c"	if(sTIMx.TempSampleFlag && sActual_Forecast.AF_Start && (eMeasureMode == Bath_Mode))
_Actual_Measure:	;Function start
	BTSZ	_sTIMx,2
	BTSS	_sActual_Forecast,0
	JMP	_00298_DS_
	MVL	0x03
	CPSE	_eMeasureMode,0
	JMP	_00298_DS_
;	;.line	244; ".\Source\APP_Measure.c"	sTIMx.TempSampleFlag = 0;
	BCF	_sTIMx,2
;	;.line	255; ".\Source\APP_Measure.c"	if(Get_1sTemp())
	CALL	_Get_1sTemp
	.CHKPARA _Get_1sTemp 0
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00291_DS_
;	;.line	258; ".\Source\APP_Measure.c"	Filter_ErrTemp();
	CALL	_Filter_ErrTemp
	.CHKPARA _Filter_ErrTemp 0
;	;.line	260; ".\Source\APP_Measure.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Temp_T1);
	MVF	(_sActual_Forecast + 7),0,0
	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
	MVF	(_sActual_Forecast + 8),0,0
	CALL	_Centigrade_Convert_Fahrenheit
	.CHKPARA _Centigrade_Convert_Fahrenheit 2
	MVF	r0x10BE,1,0
	MVFF	STK00,(_sActual_Forecast + 5)
	MVF	(_sActual_Forecast + 6),1,0
;	;.line	262; ".\Source\APP_Measure.c"	if(((sActual_Forecast.ConvertedTempDisp >= Low_Temp_Centigrade) && (eTempUnit == Centigrade))
	MVF	STK00,0,0
	ADDL	0x80
	MVL	0xf3
	ADDC	r0x10BE,0,0
	BTSS	_STATUS,4
	JMP	_00289_DS_
	MVF	_eTempUnit,0,0
	XORL	0x5a
	BTSZ	_STATUS,0
	JMP	_00285_DS_
_00289_DS_:
;	;.line	263; ".\Source\APP_Measure.c"	|| ((sActual_Forecast.ConvertedTempDisp >= Low_Temp_Fahrenheit) && (eTempUnit == Fahrenheit)))
	MVL	0x22
	CPSG	(_sActual_Forecast + 6),0
	JMP	_00291_DS_
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00291_DS_
_00285_DS_:
;	;.line	265; ".\Source\APP_Measure.c"	sActual.Actual_Start = TRUE;
	BSF	_sActual,0
;	;.line	267; ".\Source\APP_Measure.c"	if((sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp) && (eBuzzer_Status == Buzzer_Silent))
	MVF	(_sActual_Forecast + 7),0,0
	MVF	r0x10BD,1,0
	MVF	(_sActual_Forecast + 8),0,0
	MVF	r0x10BE,1,0
	MVF	r0x10BD,0,0
	SUBF	(_sActual_Forecast + 3),0,0
	MVF	r0x10BE,0,0
	SUBC	(_sActual_Forecast + 4),0,0
	BTSZ	_STATUS,4
	JMP	_00266_DS_
	TFSZ	_eBuzzer_Status,0
	JMP	_00266_DS_
;	;.line	270; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
	MVF	r0x10BD,0,0
	MVF	(_sActual_Forecast + 3),1,0
	MVF	r0x10BE,0,0
	MVF	(_sActual_Forecast + 4),1,0
;	;.line	271; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
	BSF	_sBleStatus,4
;	;.line	272; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
	BSF	_sMemoryFlag,0
_00266_DS_:
;	;.line	277; ".\Source\APP_Measure.c"	if(PresetMeasTime())
	CALL	_PresetMeasTime
	.CHKPARA _PresetMeasTime 0
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00281_DS_
;	;.line	280; ".\Source\APP_Measure.c"	sActual.ActualTime++;
	INF	(_sActual + 2),1,0
;	;.line	282; ".\Source\APP_Measure.c"	if(!sActual_Forecast.StableBuzzerFlag)
	BTSZ	_sActual_Forecast,1
	JMP	_00279_DS_
;	;.line	285; ".\Source\APP_Measure.c"	if(((sActual_Forecast.ConvertedTempDisp >= 3600) && (eTempUnit == Centigrade))
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0xf0
	MVL	0xf1
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00277_DS_
	MVF	_eTempUnit,0,0
	XORL	0x5a
	BTSZ	_STATUS,0
	JMP	_00272_DS_
_00277_DS_:
;	;.line	286; ".\Source\APP_Measure.c"	|| ((sActual_Forecast.ConvertedTempDisp >= 9680) && (eTempUnit == Fahrenheit)))
	MVF	(_sActual_Forecast + 5),0,0
	ADDL	0x30
	MVL	0xda
	ADDC	(_sActual_Forecast + 6),0,0
	BTSS	_STATUS,4
	JMP	_00273_DS_
	MVL	0xa5
	CPSE	_eTempUnit,0
	JMP	_00273_DS_
_00272_DS_:
;	;.line	289; ".\Source\APP_Measure.c"	if(Judge_Stability(sActual.Prior1sActualTemp,sActual_Forecast.CentigradeTempDisp,sActual.StableTime))
	MVF	(_sActual + 3),0,0
	MVF	r0x10BF,1,0
	MVF	(_sActual + 4),0,0
	MVF	r0x10C0,1,0
	MVF	(_sActual_Forecast + 3),0,0
	MVF	r0x10C1,1,0
	MVF	(_sActual_Forecast + 4),0,0
	MVF	r0x10C2,1,0
	MVF	(_sActual + 1),0,0
	MVF	_Judge_Stability_STK03,1,0
	MVF	r0x10C1,0,0
	MVF	_Judge_Stability_STK02,1,0
	MVF	r0x10C2,0,0
	MVF	_Judge_Stability_STK01,1,0
	MVF	r0x10BF,0,0
	MVF	_Judge_Stability_STK00,1,0
	MVF	r0x10C0,0,0
	CALL	_Judge_Stability
	.CHKPARA _Judge_Stability 5
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00279_DS_
;	;.line	291; ".\Source\APP_Measure.c"	sActual_Forecast.StableBuzzerFlag = TRUE;
	BSF	_sActual_Forecast,1
;	;.line	292; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
	BSF	_sBleStatus,4
;	;.line	293; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
	BSF	_sMemoryFlag,0
	JMP	_00279_DS_
_00273_DS_:
;	;.line	299; ".\Source\APP_Measure.c"	if(Judge_Stability(sActual.Prior1sActualTemp,sActual_Forecast.CentigradeTempDisp,16))
	MVF	(_sActual + 3),0,0
	MVF	r0x10BF,1,0
	MVF	(_sActual + 4),0,0
	MVF	r0x10C0,1,0
	MVF	(_sActual_Forecast + 3),0,0
	MVF	r0x10C1,1,0
	MVF	(_sActual_Forecast + 4),0,0
	MVF	r0x10C2,1,0
	MVL	0x10
	MVF	_Judge_Stability_STK03,1,0
	MVF	r0x10C1,0,0
	MVF	_Judge_Stability_STK02,1,0
	MVF	r0x10C2,0,0
	MVF	_Judge_Stability_STK01,1,0
	MVF	r0x10BF,0,0
	MVF	_Judge_Stability_STK00,1,0
	MVF	r0x10C0,0,0
	CALL	_Judge_Stability
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00279_DS_
;	;.line	301; ".\Source\APP_Measure.c"	sActual_Forecast.StableBuzzerFlag = TRUE;
	BSF	_sActual_Forecast,1
;	;.line	302; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
	BSF	_sBleStatus,4
;	;.line	303; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
	BSF	_sMemoryFlag,0
_00279_DS_:
;	;.line	308; ".\Source\APP_Measure.c"	sActual.Prior1sActualTemp = sActual_Forecast.CentigradeTempDisp;
	MVF	(_sActual_Forecast + 3),0,0
	MVF	(_sActual + 3),1,0
	MVF	(_sActual_Forecast + 4),0,0
	MVF	(_sActual + 4),1,0
	JMP	_00282_DS_
_00281_DS_:
;	;.line	313; ".\Source\APP_Measure.c"	sActual.ActualTime++;
	INF	(_sActual + 2),1,0
_00282_DS_:
;	;.line	316; ".\Source\APP_Measure.c"	if(!sActual_Forecast.ResetTimeFlag)
	BTSZ	_sActual_Forecast,4
	JMP	_00291_DS_
;	;.line	318; ".\Source\APP_Measure.c"	sActual_Forecast.ResetTimeFlag = TRUE;
	BSF	_sActual_Forecast,4
;	;.line	321; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
	CLRF	(_sActual_Forecast + 1),0
;	;.line	323; ".\Source\APP_Measure.c"	sActual.ActualTime = 0;
	CLRF	(_sActual + 2),0
_00291_DS_:
;	;.line	353; ".\Source\APP_Measure.c"	if(sTempCal.Reset_From_CalOK)
	BTSS	_sTempCal,5
	JMP	_00298_DS_
;	;.line	357; ".\Source\APP_Measure.c"	ERR[Err6] = TRUE;
	MVL	0x01
	MVF	(_ERR + 6),1,0
_00298_DS_:
;	;.line	360; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Actual_Measure
	.ENDFUNC	_Actual_Measure
;--------------------------------------------------------

.globl _Filter_ErrTemp

;--------------------------------------------------------
	.FUNC _Filter_ErrTemp:$r:0:0:$L:r0x10B9:$L:r0x10BA:$L:r0x10BB:$L:r0x10BC
;--------------------------------------------------------
;	;.line	217; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T3 = sADC.Centigrade250msTemp;
_Filter_ErrTemp:	;Function start
	MVF	(_sADC + 13),0,0
	MVF	(_sActual_Forecast + 11),1,0
	MVF	(_sADC + 14),0,0
	MVF	(_sActual_Forecast + 12),1,0
;	;.line	219; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T3 >= sActual_Forecast.Temp_T2)
	MVF	(_sActual_Forecast + 9),0,0
	MVF	r0x10BB,1,0
	MVF	(_sActual_Forecast + 10),0,0
	MVF	r0x10BC,1,0
	MVF	r0x10BB,0,0
	SUBF	(_sADC + 13),0,0
	MVF	r0x10BC,0,0
	SUBC	(_sADC + 14),0,0
	BTSS	_STATUS,4
	JMP	_00258_DS_
;	;.line	221; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T1 = sActual_Forecast.Temp_T2;
	MVF	r0x10BB,0,0
	MVF	(_sActual_Forecast + 7),1,0
	MVF	r0x10BC,0,0
	MVF	(_sActual_Forecast + 8),1,0
;	;.line	222; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T2 = sActual_Forecast.Temp_T3;
	MVF	(_sActual_Forecast + 11),0,0
	MVF	(_sActual_Forecast + 9),1,0
	MVF	(_sActual_Forecast + 12),0,0
	MVF	(_sActual_Forecast + 10),1,0
;	;.line	223; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T3 = 0;
	CLRF	(_sActual_Forecast + 11),0
	CLRF	(_sActual_Forecast + 12),0
	JMP	_00260_DS_
_00258_DS_:
;	;.line	225; ".\Source\APP_Measure.c"	else if(sActual_Forecast.Temp_T3 >= sActual_Forecast.Temp_T1)
	MVF	(_sActual_Forecast + 11),0,0
	MVF	r0x10B9,1,0
	MVF	(_sActual_Forecast + 12),0,0
	MVF	r0x10BA,1,0
	MVF	(_sActual_Forecast + 7),0,0
	SUBF	r0x10B9,0,0
	MVF	(_sActual_Forecast + 8),0,0
	SUBC	r0x10BA,0,0
	BTSS	_STATUS,4
	JMP	_00260_DS_
;	;.line	227; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T2 = sActual_Forecast.Temp_T3;
	MVF	r0x10B9,0,0
	MVF	(_sActual_Forecast + 9),1,0
	MVF	r0x10BA,0,0
	MVF	(_sActual_Forecast + 10),1,0
;	;.line	228; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T3 = 0;
	CLRF	(_sActual_Forecast + 11),0
	CLRF	(_sActual_Forecast + 12),0
_00260_DS_:
;	;.line	230; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Filter_ErrTemp
	.ENDFUNC	_Filter_ErrTemp
;--------------------------------------------------------

.globl _Get_1sTemp

;--------------------------------------------------------
	.FUNC _Get_1sTemp:$r:1:0:$L:r0x10B7
;--------------------------------------------------------
;	;.line	200; ".\Source\APP_Measure.c"	if(++sActual_Forecast.Cnt_1S >= 4)
_Get_1sTemp:	;Function start
	INF	(_sActual_Forecast + 1),0,0
	MVF	r0x10B7,1,0
	MVF	(_sActual_Forecast + 1),1,0
	MVL	0x03
	CPSG	r0x10B7,0
	JMP	_00249_DS_
;	;.line	202; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
	CLRF	(_sActual_Forecast + 1),0
;	;.line	204; ".\Source\APP_Measure.c"	return TRUE;
	MVL	0x01
	JMP	_00250_DS_
_00249_DS_:
;	;.line	206; ".\Source\APP_Measure.c"	return FALSE;
	MVL	0x00
_00250_DS_:
;	;.line	207; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Get_1sTemp
	.ENDFUNC	_Get_1sTemp
;--------------------------------------------------------

.globl _PresetMeasTime

;--------------------------------------------------------
	.FUNC _PresetMeasTime:$r:1:0
;--------------------------------------------------------
;	;.line	166; ".\Source\APP_Measure.c"	if(!sActual.PresetMeasTimeCompletedFlag)
_PresetMeasTime:	;Function start
	BTSZ	_sActual,2
	JMP	_00243_DS_
;	;.line	175; ".\Source\APP_Measure.c"	sActual.PresetMeasTimeCompletedFlag = TRUE;
	LDPR	(_sActual + 0),0x00
	BSF	_INDF0,2
_00243_DS_:
;	;.line	189; ".\Source\APP_Measure.c"	return sActual.PresetMeasTimeCompletedFlag;
	MVL	0x00
	BTSZ	_sActual,2
	MVL	0x01
;	;.line	190; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _PresetMeasTime
	.ENDFUNC	_PresetMeasTime
;--------------------------------------------------------

.globl _Judge_Stability

;--------------------------------------------------------
	.FUNC _Judge_Stability:$r:1:5:$C:__divuint:$C:__mulint:$C:_abs\
:$L:r0x10A5:$L:_Judge_Stability_STK00:$L:_Judge_Stability_STK01:$L:_Judge_Stability_STK02:$L:_Judge_Stability_STK03\

;--------------------------------------------------------
;	;.line	134; ".\Source\APP_Measure.c"	uint8 Judge_Stability(uint16 PriorTemp,uint16 PresentTemp,uint8 Timer)
_Judge_Stability:	;Function start
	MVF	r0x10A5,1,0
;	;.line	140; ".\Source\APP_Measure.c"	PresentTemp = (PresentTemp + 5) / 10 * 10;
	MVL	0x05
	ADDF	_Judge_Stability_STK02,1,0
	BTSZ	_STATUS,4
	INF	_Judge_Stability_STK01,1,0
	MVL	0x0a
	MVF	__divuint_STK02,1,0
	CLRF	__divuint_STK01,0
	MVF	_Judge_Stability_STK02,0,0
	MVF	__divuint_STK00,1,0
	MVF	_Judge_Stability_STK01,0,0
	CALL	__divuint
	.CHKPARA __divuint 4
	MVFF	STK00,__mulint_STK02
	MVF	__mulint_STK01,1,0
	MVL	0x0a
	MVF	__mulint_STK00,1,0
	MVL	0x00
	CALL	__mulint
	.CHKPARA __mulint 4
	MVF	_Judge_Stability_STK01,1,0
	MVF	STK00,0,0
	MVF	_Judge_Stability_STK02,1,0
;	;.line	141; ".\Source\APP_Measure.c"	PriorTemp = (PriorTemp + 5) / 10 * 10;
	MVL	0x05
	ADDF	_Judge_Stability_STK00,1,0
	BTSZ	_STATUS,4
	INF	r0x10A5,1,0
	MVL	0x0a
	MVF	__divuint_STK02,1,0
	CLRF	__divuint_STK01,0
	MVF	_Judge_Stability_STK00,0,0
	MVF	__divuint_STK00,1,0
	MVF	r0x10A5,0,0
	CALL	__divuint
	MVFF	STK00,__mulint_STK02
	MVF	__mulint_STK01,1,0
	MVL	0x0a
	MVF	__mulint_STK00,1,0
	MVL	0x00
	CALL	__mulint
	MVF	r0x10A5,1,0
	MVF	STK00,0,0
;	;.line	144; ".\Source\APP_Measure.c"	if(abs(PresentTemp - PriorTemp))
	SUBF	_Judge_Stability_STK02,0,0
	MVF	_abs_STK00,1,0
	MVF	r0x10A5,0,0
	SUBC	_Judge_Stability_STK01,0,0
	CALL	_abs
	IORF	STK00,0,0
	BTSS	_STATUS,0
;	;.line	147; ".\Source\APP_Measure.c"	sActual.ActualTime = 0;
	CLRF	(_sActual + 2),0
;	;.line	151; ".\Source\APP_Measure.c"	if(sActual.ActualTime >= Timer)
	MVF	_Judge_Stability_STK03,0,0
	SUBF	(_sActual + 2),0,0
	BTSS	_STATUS,4
	JMP	_00234_DS_
;	;.line	153; ".\Source\APP_Measure.c"	return TRUE;
	MVL	0x01
	JMP	_00235_DS_
_00234_DS_:
;	;.line	155; ".\Source\APP_Measure.c"	return FALSE;
	MVL	0x00
_00235_DS_:
;	;.line	156; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Judge_Stability
	.ENDFUNC	_Judge_Stability
;--------------------------------------------------------

.globl _Temp_Calibration

;--------------------------------------------------------
	.FUNC _Temp_Calibration:$r:0:0:$C:_abs:$C:__divslong:$C:_BIE_Write:$C:_BIE_Read\
:$L:r0x108F:$L:r0x1091:$L:r0x1090:$L:r0x1092:$L:r0x1093\

;--------------------------------------------------------
;	;.line	26; ".\Source\APP_Measure.c"	if(!sTempCal.BIE_Writed)
_Temp_Calibration:	;Function start
	BTSS	_sTempCal,0
;	;.line	29; ".\Source\APP_Measure.c"	if(sTIMx.TempSampleFlag)
	BTSS	_sTIMx,2
	JMP	_00133_DS_
;	;.line	32; ".\Source\APP_Measure.c"	sTIMx.TempSampleFlag = 0;
	BCF	_sTIMx,2
;	;.line	34; ".\Source\APP_Measure.c"	sTempCal.TempBuf[sTempCal.pTempBuf] = sADC.Centigrade250msTemp;
	MVF	(_sTempCal + 1),0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_sTempCal + 4)
	MVF	r0x108F,1,0
	MVL	high (_sTempCal + 4)
	BTSZ	_STATUS,4
	ADDL	0x01
	MVSF	r0x108F,_FSR0L
	MVF	_FSR0H,1,0
	MVF	(_sADC + 13),0,0
	MVF	_POINC0,1,0
	MVF	(_sADC + 14),0,0
	MVF	_INDF0,1,0
;	;.line	36; ".\Source\APP_Measure.c"	if(++sTempCal.pTempBuf >= 5)
	INF	(_sTempCal + 1),0,0
	MVF	r0x108F,1,0
	MVF	(_sTempCal + 1),1,0
	MVL	0x04
	CPSG	r0x108F,0
	JMP	_00106_DS_
;	;.line	39; ".\Source\APP_Measure.c"	sTempCal.pTempBuf = 0;
	CLRF	(_sTempCal + 1),0
_00106_DS_:
;	;.line	42; ".\Source\APP_Measure.c"	ERR[Err4] = FALSE;
	CLRF	(_ERR + 4),0
;	;.line	44; ".\Source\APP_Measure.c"	ERR[Err0] = FALSE;
	CLRF	(_ERR + 0),0
;	;.line	46; ".\Source\APP_Measure.c"	for(i = 0;i < 4;i++)
	CLRF	r0x108F,0
_00131_DS_:
;	;.line	49; ".\Source\APP_Measure.c"	if(abs(sTempCal.TempBuf[i + 1] - sTempCal.TempBuf[i]) > 5)
	INF	r0x108F,0,0
	MULL	0x02
	MVF	_PRODL,0,0
	ADDL	(_sTempCal + 4)
	MVF	r0x1090,1,0
	MVL	high (_sTempCal + 4)
	BTSZ	_STATUS,4
	ADDL	0x01
	MVF	r0x1092,1,0
	MVF	r0x108F,0,0
	MULL	0x02
	LDPR	(_sTempCal + 4),0
	MVF	_PRODL,0,0
	MVFF	_PLUSW0,STK00
	INF	_WREG,0,0
	MVFF	_PLUSW0,STK01
	MVF	r0x1090,0,0
	MVF	_FSR0L,1,0
	MVF	r0x1092,0,0
	MVF	_FSR0H,1,0
	MVF	_POINC0,0,0
	MVF	r0x1091,1,0
	MVF	_POINC0,0,0
	MVF	r0x1093,1,0
	MVF	STK00,0,0
	SUBF	r0x1091,0,0
	MVF	_abs_STK00,1,0
	MVF	STK01,0,0
	SUBC	r0x1093,0,0
	CALL	_abs
	.CHKPARA _abs 2
	MVF	r0x1091,1,0
	MVF	STK00,0,0
	ADDL	0xfa
	MVL	0x7f
	ADDC	r0x1091,0,0
	BTSS	_STATUS,1
	JMP	_00108_DS_
;	;.line	52; ".\Source\APP_Measure.c"	ERR[Err4] = TRUE;
	MVL	0x01
	MVF	(_ERR + 4),1,0
_00108_DS_:
;	;.line	55; ".\Source\APP_Measure.c"	if((sTempCal.TempBuf[i] < 3560/*3640*/) || (sTempCal.TempBuf[i] > 3850/*3750*/))
	MVF	r0x108F,0,0
	MULL	0x02
	LDPR	(_sTempCal + 4),0
	MVF	_PRODL,0,0
	MVFF	_PLUSW0,STK00
	INF	_WREG,0,0
	MVFF	_PLUSW0,STK01
	MVF	STK00,0,0
	ADDL	0x18
	MVL	0xf2
	ADDC	STK01,0,0
	BTSS	_STATUS,4
	JMP	_00109_DS_
	MVF	STK00,0,0
	ADDL	0xf5
	MVL	0xf0
	ADDC	STK01,0,0
	BTSS	_STATUS,4
	JMP	_00132_DS_
_00109_DS_:
;	;.line	58; ".\Source\APP_Measure.c"	ERR[Err0] = TRUE;
	MVL	0x01
	MVF	(_ERR + 0),1,0
_00132_DS_:
;	;.line	46; ".\Source\APP_Measure.c"	for(i = 0;i < 4;i++)
	INF	r0x108F,1,0
	MVL	0x03
	CPSG	r0x108F,0
	JMP	_00131_DS_
;	;.line	62; ".\Source\APP_Measure.c"	if(sTempCal.Enable_BIE_Write)
	BTSS	_sTempCal,2
	JMP	_00133_DS_
;	;.line	65; ".\Source\APP_Measure.c"	if(BIE_Available_Addr <= 0x3F)
	MVL	0x40
	CPSL	_BIE_Available_Addr,0
	JMP	_00116_DS_
;	;.line	68; ".\Source\APP_Measure.c"	tmp = 30010000 / sADC.RawRntc;
	MVF	(_sADC + 21),0,0
	MVF	__divslong_STK06,1,0
	MVF	(_sADC + 22),0,0
	MVF	__divslong_STK05,1,0
	CLRF	__divslong_STK04,0
	CLRF	__divslong_STK03,0
	MVL	0x90
	MVF	__divslong_STK02,1,0
	MVL	0xea
	MVF	__divslong_STK01,1,0
	MVL	0xc9
	MVF	__divslong_STK00,1,0
	MVL	0x01
	CALL	__divslong
	.CHKPARA __divslong 8
	MVF	r0x1092,1,0
	MVF	STK00,0,0
	MVF	r0x1091,1,0
	MVF	STK01,0,0
	MVF	r0x1090,1,0
	INF	STK02,0,0
	MVF	r0x108F,1,0
;	;.line	69; ".\Source\APP_Measure.c"	tmp += 1;
	MVL	0x00
	ADDC	r0x1090,1,0
	ADDC	r0x1091,1,0
	ADDC	r0x1092,1,0
;	;.line	70; ".\Source\APP_Measure.c"	sTempCal.Temp_Ratio = (uint16)tmp;
	MVF	r0x108F,0,0
	MVF	(_sTempCal + 2),1,0
	MVF	r0x1090,0,0
	MVF	(_sTempCal + 3),1,0
;	;.line	75; ".\Source\APP_Measure.c"	LCDCN1 &= 0xFE;
	BCF	_LCDCN1,0
;	;.line	77; ".\Source\APP_Measure.c"	if(BIE_Write(BIE_Available_Addr,sTempCal.Temp_Ratio >> 8,sTempCal.Temp_Ratio))
	MVF	r0x108F,0,0
	MVF	_BIE_Write_STK01,1,0
	MVF	r0x1090,0,0
	MVF	_BIE_Write_STK00,1,0
	MVF	_BIE_Available_Addr,0,0
	CALL	_BIE_Write
	.CHKPARA _BIE_Write 3
	IORL	0x00
	BTSZ	_STATUS,0
	JMP	_00114_DS_
;	;.line	81; ".\Source\APP_Measure.c"	ERR[Err5] = TRUE;
	MVL	0x01
	MVF	(_ERR + 5),1,0
;	;.line	82; ".\Source\APP_Measure.c"	sTempCal.BIE_Writed = TRUE;
	LDPR	(_sTempCal + 0),0x00
	BSF	_INDF0,0
_00114_DS_:
;	;.line	86; ".\Source\APP_Measure.c"	LCDCN3 = 0x00;
	CLRF	_LCDCN3,0
;	;.line	88; ".\Source\APP_Measure.c"	LCDCN4 = 0x00;
	CLRF	_LCDCN4,0
_00116_DS_:
;	;.line	96; ".\Source\APP_Measure.c"	if(BIE_Read(BIE_Available_Addr) == sTempCal.Temp_Ratio)
	MVF	_BIE_Available_Addr,0,0
	CALL	_BIE_Read
	.CHKPARA _BIE_Read 1
	MVF	r0x1091,1,0
	MVF	(_sTempCal + 3),0,0
	CPSE	r0x1091,0
	JMP	_00123_DS_
	MVF	(_sTempCal + 2),0,0
	CPSE	STK00,0
	JMP	_00123_DS_
;	;.line	100; ".\Source\APP_Measure.c"	ERR[Err5] = FALSE;
	CLRF	(_ERR + 5),0
;	;.line	102; ".\Source\APP_Measure.c"	sTempCal.BIE_Writed = TRUE;
	BSF	_sTempCal,0
;	;.line	104; ".\Source\APP_Measure.c"	BIE_Available_Addr++;
	INF	_BIE_Available_Addr,1,0
	JMP	_00124_DS_
_00123_DS_:
;	;.line	106; ".\Source\APP_Measure.c"	else if(BIE_Read(BIE_Available_Addr) == 0xFFFF)
	MVF	_BIE_Available_Addr,0,0
	CALL	_BIE_Read
	ANDF	STK00,0,0
	INSZ	_WREG,0,0
	JMP	_00120_DS_
;	;.line	110; ".\Source\APP_Measure.c"	ERR[Err5] = TRUE;
	MVL	0x01
	MVF	(_ERR + 5),1,0
	JMP	_00124_DS_
_00120_DS_:
;	;.line	112; ".\Source\APP_Measure.c"	else if(BIE_Read(BIE_Available_Addr) != 0xFFFF)
	MVF	_BIE_Available_Addr,0,0
	CALL	_BIE_Read
	ANDF	STK00,0,0
	INSUZ	_WREG,0,0
	JMP	_00124_DS_
;	;.line	116; ".\Source\APP_Measure.c"	ERR[Err5] = TRUE;
	MVL	0x01
	MVF	(_ERR + 5),1,0
;	;.line	118; ".\Source\APP_Measure.c"	BIE_Available_Addr++;
	INF	_BIE_Available_Addr,1,0
_00124_DS_:
;	;.line	121; ".\Source\APP_Measure.c"	sTempCal.BIE_Write_Action = TRUE;
	LDPR	(_sTempCal + 0),0x00
	BSF	_INDF0,3
_00133_DS_:
;	;.line	125; ".\Source\APP_Measure.c"	}
	RET	
; exit point of _Temp_Calibration
	.ENDFUNC	_Temp_Calibration
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
	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FAPP_Measure$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FAPP_Measure$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FAPP_Measure$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
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
	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_divslong$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$Judge_Stability$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$_mulint$0$0({2}DF,SI:S),C,0,0
	;--cdb--S:G$PresetMeasTime$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$Get_1sTemp$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$Filter_ErrTemp$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Start_Algorithm$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$Temp_Drop$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$Forecast_Calculate_Conditions$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$Forecast_Calculate$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_mullong$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$_divulong$0$0({2}DF,SL:UL),C,0,0
	;--cdb--S:G$Update_MaxTempImmediately$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Update_MaxTemp3Min$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$Forecast_To_Actual$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ActualForecast_Select$0$0({2}DF,SC:U),C,0,0
	;--cdb--S:G$Temperature_Compensate$0$0({2}DF,SI:U),C,0,0
	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
	;--cdb--S:LAPP_Measure.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
	;--cdb--S:LAPP_Measure.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FAPP_Measure$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FAPP_Measure$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FAPP_Measure$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FAPP_Measure$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FAPP_Measure$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FAPP_Measure$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FAPP_Measure$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FAPP_Measure$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FAPP_Measure$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FAPP_Measure$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FAPP_Measure$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FAPP_Measure$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FAPP_Measure$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FAPP_Measure$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FAPP_Measure$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FAPP_Measure$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FAPP_Measure$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
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
	;--cdb--S:LAPP_Measure.Temp_Calibration._Temp_Calibration_i_10000_416$i$2710$416({1}SC:U),R,0,0,[r0x108F]
	;--cdb--S:LAPP_Measure.Temp_Calibration._Temp_Calibration_tmp_10000_416$tmp$2710$416({4}SL:UL),R,0,0,[r0x108F,r0x1090,r0x1091,r0x1092]
	;--cdb--S:LAPP_Measure.Judge_Stability._Judge_Stability_Timer_10000_441$Timer$2710$441({1}SC:U),R,0,0,[_Judge_Stability_STK03]
	;--cdb--S:LAPP_Measure.Judge_Stability._Judge_Stability_PresentTemp_10000_441$PresentTemp$2710$441({2}SI:U),R,0,0,[_Judge_Stability_STK02,_Judge_Stability_STK01]
	;--cdb--S:LAPP_Measure.Judge_Stability._Judge_Stability_PriorTemp_10000_441$PriorTemp$2710$441({2}SI:U),R,0,0,[_Judge_Stability_STK00,r0x10A5]
	;--cdb--S:LAPP_Measure.Start_Algorithm._Start_Algorithm_i_10000_490$i$2710$490({1}SC:U),R,0,0,[r0x10CA]
	;--cdb--S:LAPP_Measure.Forecast_Calculate._Forecast_Calculate_K_10000_523$K$2710$523({4}SL:UL),R,0,0,[r0x10DC,r0x10DD,r0x10DE,r0x10DF]
	;--cdb--S:LAPP_Measure.Update_MaxTemp3Min._Update_MaxTemp3Min_Result_10000_555$Result$2710$555({1}SC:U),R,0,0,[r0x10FC]
	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_Temp_10000_605$Temp$2710$605({2}SI:U),R,0,0,[_Temperature_Compensate_STK00,r0x110E]
	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_F_OddFlag_10000_606$F_OddFlag$2710$606({1}SC:U),R,0,0,[r0x110F]
	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_a_10000_606$a$2710$606({1}SC:U),R,0,0,[r0x1110]
	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_b_10000_606$b$2710$606({2}SI:U),R,0,0,[r0x1110,r0x1111]
	;--cdb--S:LAPP_Measure.Forecast_Measure._Forecast_Measure_Temp_10000_619$Temp$2710$619({2}SI:U),R,0,0,[r0x1120,r0x1121]
	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
	;--cdb--S:G$_FSR0L$0$0({0}:U),Z,0,0
	;--cdb--S:G$_FSR0H$0$0({0}:U),Z,0,0
	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
	;--cdb--S:G$_POINC0$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PRODH$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.globl	_abs
	.globl	_BIE_Read
	.globl	_BIE_Write
	.globl	_Timer_Experience
	.globl	_Centigrade_Convert_Fahrenheit
	.globl	__divslong
	.globl	__divuint
	.globl	__mulint
	.globl	__mullong
	.globl	__divulong
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
	.globl	_sADC
	.globl	_eADCChannel
	.globl	_eSystem_Mode
	.globl	_eBuzzer_Status
	.globl	_Flag_No_Buzzer
	.globl	_sMemory
	.globl	_sMemoryFlag
	.globl	_eBle_Sta
	.globl	_sBleStatus
	.globl	_eBacklight_Status
	.globl	_sBacklight
	.globl	_NUM_CODE
	.globl	_R_Table
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
	.globl	_Judge_Stability
	.globl	_PresetMeasTime
	.globl	_Get_1sTemp
	.globl	_Filter_ErrTemp
	.globl	_Start_Algorithm
	.globl	_Temp_Drop
	.globl	_Forecast_Calculate_Conditions
	.globl	_Forecast_Calculate
	.globl	_Update_MaxTempImmediately
	.globl	_Update_MaxTemp3Min
	.globl	_Forecast_To_Actual
	.globl	_ActualForecast_Select
	.globl	_Temperature_Compensate
	.globl	_sActual
	.globl	_sForecast
	.globl	_sTempCal
	.globl	_eMeas_Status
	.globl	_sActual_Forecast
	.globl	_eTo_Actual_Ways
	.globl	_CloseTable

	.globl	_memcpy
;--------------------------------------------------------
; global -2 definitions
;--------------------------------------------------------
	.area DSEG(DATA)
_sActual:	.ds	5

	.area DSEG(DATA)
_sForecast:	.ds	26

	.area DSEG(DATA)
_sTempCal:	.ds	14

	.area DSEG(DATA)
_eMeas_Status:	.ds	1

	.area DSEG(DATA)
_sActual_Forecast:	.ds	15

	.area DSEG(DATA)
_eTo_Actual_Ways:	.ds	1

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
	.area UDATA (DATA,REL,CON) ;UDL_APP_Measure_0	udata
r0x108F:	.ds	1
r0x1090:	.ds	1
r0x1091:	.ds	1
r0x1092:	.ds	1
r0x1093:	.ds	1
r0x10A5:	.ds	1
r0x10B7:	.ds	1
r0x10B9:	.ds	1
r0x10BA:	.ds	1
r0x10BB:	.ds	1
r0x10BC:	.ds	1
r0x10BD:	.ds	1
r0x10BE:	.ds	1
r0x10BF:	.ds	1
r0x10C0:	.ds	1
r0x10C1:	.ds	1
r0x10C2:	.ds	1
r0x10CA:	.ds	1
r0x10CB:	.ds	1
r0x10CC:	.ds	1
r0x10CD:	.ds	1
r0x10D2:	.ds	1
r0x10D3:	.ds	1
r0x10D4:	.ds	1
r0x10D5:	.ds	1
r0x10D6:	.ds	1
r0x10D8:	.ds	1
r0x10D9:	.ds	1
r0x10DA:	.ds	1
r0x10DB:	.ds	1
r0x10DC:	.ds	1
r0x10DD:	.ds	1
r0x10DE:	.ds	1
r0x10DF:	.ds	1
r0x10E1:	.ds	1
r0x10E3:	.ds	1
r0x10F2:	.ds	1
r0x10F3:	.ds	1
r0x10F4:	.ds	1
r0x10F5:	.ds	1
r0x10F6:	.ds	1
r0x10F7:	.ds	1
r0x10FC:	.ds	1
r0x10FD:	.ds	1
r0x10FE:	.ds	1
r0x10FF:	.ds	1
r0x110B:	.ds	1
r0x110E:	.ds	1
r0x110F:	.ds	1
r0x1110:	.ds	1
r0x1111:	.ds	1
r0x1112:	.ds	1
r0x1113:	.ds	1
r0x111A:	.ds	1
r0x111C:	.ds	1
r0x111D:	.ds	1
r0x111E:	.ds	1
r0x111F:	.ds	1
r0x1120:	.ds	1
r0x1121:	.ds	1
	.area LOCALSTK (STK); local stack var
	.globl _abs_STK00
	.globl __divslong_STK06
	.globl __divslong_STK05
	.globl __divslong_STK04
	.globl __divslong_STK03
	.globl __divslong_STK02
	.globl __divslong_STK01
	.globl __divslong_STK00
	.globl _BIE_Write_STK01
	.globl _BIE_Write_STK00
_Judge_Stability_STK00:	.ds	1
	.globl _Judge_Stability_STK00
_Judge_Stability_STK01:	.ds	1
	.globl _Judge_Stability_STK01
_Judge_Stability_STK02:	.ds	1
	.globl _Judge_Stability_STK02
_Judge_Stability_STK03:	.ds	1
	.globl _Judge_Stability_STK03
	.globl __divuint_STK02
	.globl __divuint_STK01
	.globl __divuint_STK00
	.globl __mulint_STK02
	.globl __mulint_STK01
	.globl __mulint_STK00
	.globl _Centigrade_Convert_Fahrenheit_STK00
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
	.globl _Timer_Experience_STK06
	.globl _Timer_Experience_STK05
	.globl _Timer_Experience_STK04
	.globl _Timer_Experience_STK03
	.globl _Timer_Experience_STK02
	.globl _Timer_Experience_STK01
	.globl _Timer_Experience_STK00
_Temperature_Compensate_STK00:	.ds	1
	.globl _Temperature_Compensate_STK00
	.globl __g2ptrget1_STK00
	.globl __g2ptrget2_STK00
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

	.area	CONST   (CODE)	 ;APP_Measure-0-code, const

_CloseTable:
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xb4, #0xb4	; 46260
	.byte #0xaa, #0xb4	; 46250
	.byte #0xa0, #0xaa	; 43680
	.byte #0x96, #0xa0	; 41110
	.byte #0x8c, #0x96	; 38540
	.byte #0x82, #0x8c	; 35970
	.byte #0x78, #0x82	; 33400
	.byte #0x6e, #0x78	; 30830
	.byte #0x64, #0x6e	; 28260
	.byte #0x5a, #0x64	; 25690
	.byte #0x50, #0x5a	; 23120
	.byte #0x46, #0x50	; 20550
	.byte #0x3c, #0x46	; 17980
	.byte #0x32, #0x3c	; 15410
	.byte #0x28, #0x32	; 12840
	.byte #0x1e, #0x28	; 10270
	.byte #0x14, #0x1e	; 7700
	.byte #0x14, #0x14	; 5140
	.byte #0x0a, #0x0a	; 2570

;--------------------------------------------------------
; initialized data - mirror
;--------------------------------------------------------

	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FAPP_Measure$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FAPP_Measure$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
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
	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FAPP_Measure$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FAPP_Measure$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FAPP_Measure$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FAPP_Measure$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FAPP_Measure$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FAPP_Measure$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FAPP_Measure$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FAPP_Measure$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FAPP_Measure$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FAPP_Measure$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
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
	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FAPP_Measure$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FAPP_Measure$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FAPP_Measure$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FAPP_Measure$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
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
	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FAPP_Measure$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FAPP_Measure$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FAPP_Measure$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FAPP_Measure$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
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
	;--cdb--W:r0x111A:NULL+0:-1:1
	;--cdb--W:r0x1120:NULL+0:-1:1
	;--cdb--W:r0x111C:NULL+0:-1:1
	;--cdb--W:r0x111A:NULL+0:-1:0
	;--cdb--W:r0x111B:NULL+0:-1:0
	;--cdb--W:r0x111C:NULL+0:-1:0
	;--cdb--W:r0x111D:NULL+0:-1:0
	;--cdb--W:r0x111E:STK00+0:-1:0
	;--cdb--W:r0x1120:NULL+0:0:0
	;--cdb--W:r0x1121:NULL+0:0:0
	;--cdb--W:r0x1122:r0x111C+0:-1:0
	;--cdb--W:r0x1123:r0x111D+1:-1:0
	;--cdb--W:r0x111B:NULL+0:-1:1
	;--cdb--W:r0x111D:NULL+0:-1:1
	;--cdb--W:r0x1121:NULL+0:-1:1
	;--cdb--W:r0x111F:r0x111D+1:-1:0
	;--cdb--W:r0x111F:NULL+0:-1:1
	;--cdb--W:r0x1113:NULL+0:-1:1
	;--cdb--W:r0x1110:NULL+0:-1:1
	;--cdb--W:r0x110F:NULL+0:-1:1
	;--cdb--W:r0x1114:NULL+0:-1:1
	;--cdb--W:r0x1110:STK00+0:-1:0
	;--cdb--W:r0x1112:NULL+0:-1:1
	;--cdb--W:r0x110B:NULL+0:-1:1
	;--cdb--W:r0x1109:NULL+0:-1:0
	;--cdb--W:r0x110A:NULL+0:-1:0
	;--cdb--W:r0x110B:NULL+0:-1:0
	;--cdb--W:r0x110C:NULL+0:-1:0
	;--cdb--W:r0x1109:NULL+0:-1:1
	;--cdb--W:r0x110A:NULL+0:-1:1
	;--cdb--W:r0x110C:NULL+0:-1:1
	;--cdb--W:r0x10FC:NULL+0:-1:1
	;--cdb--W:r0x10FC:NULL+0:-1:0
	;--cdb--W:r0x10FD:NULL+0:-1:0
	;--cdb--W:r0x10FD:NULL+0:-1:1
	;--cdb--W:r0x10F2:NULL+0:-1:0
	;--cdb--W:r0x10F3:NULL+0:-1:0
	;--cdb--W:r0x10F8:r0x10F2+0:-1:0
	;--cdb--W:r0x10FA:NULL+0:0:0
	;--cdb--W:r0x10FB:NULL+0:0:0
	;--cdb--W:r0x10F2:NULL+0:-1:1
	;--cdb--W:r0x10F3:NULL+0:-1:1
	;--cdb--W:r0x10FA:NULL+0:-1:1
	;--cdb--W:r0x10FB:NULL+0:-1:1
	;--cdb--W:r0x10F9:r0x10F3+1:-1:0
	;--cdb--W:r0x10DA:NULL+0:-1:1
	;--cdb--W:r0x10DA:STK02+0:-1:0
	;--cdb--W:r0x10DB:STK01+0:-1:0
	;--cdb--W:r0x10DC:STK00+0:-1:0
	;--cdb--W:r0x10E2:STK00+0:-1:0
	;--cdb--W:r0x10E1:STK01+0:-1:0
	;--cdb--W:r0x10E0:STK02+0:-1:0
	;--cdb--W:r0x10E0:STK00+0:-1:0
	;--cdb--W:r0x10DB:NULL+0:-1:1
	;--cdb--W:r0x10DB:NULL+0:-1:0
	;--cdb--W:r0x10DA:NULL+0:-1:0
	;--cdb--W:r0x10D6:NULL+0:-1:1
	;--cdb--W:r0x10D6:NULL+0:-1:0
	;--cdb--W:r0x10D7:NULL+0:-1:0
	;--cdb--W:r0x10D7:NULL+0:-1:1
	;--cdb--W:r0x10CE:NULL+0:-1:1
	;--cdb--W:r0x10CA:NULL+0:-1:0
	;--cdb--W:r0x10CB:NULL+0:-1:0
	;--cdb--W:r0x10CE:STK00+0:-1:0
	;--cdb--W:r0x10D0:STK01+0:-1:0
	;--cdb--W:r0x10CA:NULL+0:-1:1
	;--cdb--W:r0x10CB:NULL+0:-1:1
	;--cdb--W:r0x10CD:NULL+0:-1:1
	;--cdb--W:r0x10BD:NULL+0:-1:1
	;--cdb--W:r0x10C3:NULL+0:-1:1
	;--cdb--W:r0x10BF:NULL+0:-1:1
	;--cdb--W:r0x10BD:NULL+0:-1:0
	;--cdb--W:r0x10BD:STK00+0:-1:0
	;--cdb--W:r0x10BE:NULL+0:-1:0
	;--cdb--W:r0x10BF:NULL+0:-1:0
	;--cdb--W:r0x10C0:NULL+0:-1:0
	;--cdb--W:r0x10BE:NULL+0:-1:1
	;--cdb--W:r0x10C0:NULL+0:-1:1
	;--cdb--W:r0x10B9:NULL+0:-1:0
	;--cdb--W:r0x10BA:NULL+0:-1:0
	;--cdb--W:r0x10B6:NULL+0:-1:1
	;--cdb--W:r0x10B4:NULL+0:-1:0
	;--cdb--W:r0x10B5:NULL+0:-1:0
	;--cdb--W:r0x10B4:NULL+0:-1:1
	;--cdb--W:r0x10B5:NULL+0:-1:1
	;--cdb--W:_Judge_Stability_STK02:NULL+0:-1:1
	;--cdb--W:_Judge_Stability_STK00:NULL+0:-1:1
	;--cdb--W:r0x10A5:NULL+0:-1:1
	;--cdb--W:_Judge_Stability_STK01:NULL+0:-1:1
	;--cdb--W:r0x1091:NULL+0:-1:1
	;--cdb--W:r0x1090:NULL+0:-1:1
	;--cdb--W:r0x108F:NULL+0:-1:1
	;--cdb--W:r0x108D:NULL+0:-1:1
	;--cdb--W:r0x108D:NULL+0:-1:0
	;--cdb--W:r0x108E:NULL+0:-1:0
	;--cdb--W:r0x108F:NULL+0:-1:0
	;--cdb--W:r0x108F:STK00+0:-1:0
	;--cdb--W:r0x1091:NULL+0:-1:0
	;--cdb--W:r0x1091:r0x1094+1:-1:0
	;--cdb--W:r0x1090:STK00+0:-1:0
	;--cdb--W:r0x1090:NULL+0:-1:0
	;--cdb--W:r0x1092:STK00+0:-1:0
	;--cdb--W:r0x1094:STK00+0:-1:0
	;--cdb--W:r0x1094:NULL+0:0:0
	;--cdb--W:r0x1094:r0x1090+1:-1:0
	;--cdb--W:r0x1095:STK01+0:-1:0
	;--cdb--W:r0x1093:STK01+0:-1:0
	;--cdb--W:r0x1093:NULL+0:0:0
	;--cdb--W:r0x108E:NULL+0:-1:1
	;--cdb--W:r0x1093:NULL+0:-1:1
	;--cdb--W:r0x1094:NULL+0:-1:1
	;--cdb--W:r0x1092:NULL+0:-1:0
	;--cdb--W:r0x1093:r0x108F+0:-1:0
	;--cdb--W:r0x1092:NULL+0:-1:1
	;--c2db--RNG$_Temp_Calibration_i_10000_416$2061$2136
	;--c2db--RNG$_Temp_Calibration_tmp_10000_416$2167$2176
	;--c2db--RNG$_Judge_Stability_Timer_10000_441$1946$2003
	;--c2db--RNG$_Judge_Stability_PresentTemp_10000_441$1969$1996
	;--c2db--RNG$_Judge_Stability_PriorTemp_10000_441$1989$1996
	;--c2db--RNG$_Start_Algorithm_i_10000_490$1532$1564
	;--c2db--RNG$_Forecast_Calculate_K_10000_523$1029$1342
	;--c2db--RNG$_Update_MaxTemp3Min_Result_10000_555$817$820
	;--c2db--RNG$_Temperature_Compensate_Temp_10000_605$568$658
	;--c2db--RNG$_Temperature_Compensate_F_OddFlag_10000_606$568$619
	;--c2db--RNG$_Temperature_Compensate_a_10000_606$613$644
	;--c2db--RNG$_Temperature_Compensate_b_10000_606$589$603
	;--c2db--RNG$_Forecast_Measure_Temp_10000_619$423$478
	END
