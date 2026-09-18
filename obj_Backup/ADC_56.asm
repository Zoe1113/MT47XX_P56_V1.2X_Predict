;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #bf155f72c (MSVC)
;--------------------------------------------------------
; Port for HYCON CPU
;--------------------------------------------------------
;	;CCFROM:"F:\³ÂÓîº½\00 MT ³ÌÐò\01 MT47XX_P56_Ô¤²â\00 MT47XX_P56_V1.2X_Ô¤²â\Src"
;;	.file	"C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"
	.module ADC_56
	;.list	p=HY17P56
	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
	;--cdb--F:ADC_56:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0,0,0,0
	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:ADC_56:G$ADC_Open$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ENSDRVEnable$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:ADC_56:G$ENSDRVEnable$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$ENSDRVDisable$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:ADC_56:G$ENSDRVDisable$0$0({2}DF,SV:S),C,0,0,0,0,0
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
.area CCODE (code,REL,CON) ; ADC_56-code 
.globl _ENSDRVDisable

;--------------------------------------------------------
	.FUNC _ENSDRVDisable:$r:0:0
;--------------------------------------------------------
;	;.line	119; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	PWR_CSFONEnable();
_ENSDRVDisable:	;Function start
	BSF	_PWRCN,0
;	;.line	120; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	CSFCN1 &= 0x7F;
	BCF	_CSFCN1,7
;	;.line	121; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	PWR_CSFONDisable();
	BCF	_PWRCN,0
;	;.line	122; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	}
	RET	
; exit point of _ENSDRVDisable
	.ENDFUNC	_ENSDRVDisable
;--------------------------------------------------------

.globl _ENSDRVEnable

;--------------------------------------------------------
	.FUNC _ENSDRVEnable:$r:0:0
;--------------------------------------------------------
;	;.line	113; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	PWR_CSFONEnable();
_ENSDRVEnable:	;Function start
	BSF	_PWRCN,0
;	;.line	114; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	CSFCN1 |= 0x80;
	BSF	_CSFCN1,7
;	;.line	115; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	PWR_CSFONDisable();
	BCF	_PWRCN,0
;	;.line	116; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	}
	RET	
; exit point of _ENSDRVEnable
	.ENDFUNC	_ENSDRVEnable
;--------------------------------------------------------

.globl _ADC_GetData

;--------------------------------------------------------
	.FUNC _ADC_GetData:$r:4:0:$L:_ADC_GetData_ADCData_10000_8
;--------------------------------------------------------
;	;.line	97; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	((char *)(&ADCData))[0] = AD1L;
_ADC_GetData:	;Function start
	MVF	_AD1L,0,0
	MVF	(_ADC_GetData_ADCData_10000_8 + 0),1,0
;	;.line	98; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	((char *)(&ADCData))[1] = AD1M;
	MVF	_AD1M,0,0
	MVF	(_ADC_GetData_ADCData_10000_8 + 1),1,0
;	;.line	99; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	((char *)(&ADCData))[2] = AD1H;
	MVF	_AD1H,0,0
	MVF	(_ADC_GetData_ADCData_10000_8 + 2),1,0
;	;.line	101; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	if (ADCData&0x800000L)
	BTSS	(_ADC_GetData_ADCData_10000_8 + 2),7
	JMP	_00110_DS_
;	;.line	102; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	((char *)(&ADCData))[3] = 0xFF;
	SETF	(_ADC_GetData_ADCData_10000_8 + 3),0
	JMP	_00111_DS_
_00110_DS_:
;	;.line	104; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	((char *)(&ADCData))[3] = 0x00;
	CLRF	(_ADC_GetData_ADCData_10000_8 + 3),0
_00111_DS_:
;	;.line	105; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	return ADCData;
	MVF	_ADC_GetData_ADCData_10000_8,0,0
	MVF	STK02,1,0
	MVF	(_ADC_GetData_ADCData_10000_8 + 1),0,0
	MVF	STK01,1,0
	MVF	(_ADC_GetData_ADCData_10000_8 + 2),0,0
	MVF	STK00,1,0
	MVF	(_ADC_GetData_ADCData_10000_8 + 3),0,0
;	;.line	106; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	}
	RET	
; exit point of _ADC_GetData
	.ENDFUNC	_ADC_GetData
;--------------------------------------------------------

.globl _ADC_Open

;--------------------------------------------------------
	.FUNC _ADC_Open:$r:0:12:$L:r0x108C:$L:_ADC_Open_STK00:$L:_ADC_Open_STK01:$L:_ADC_Open_STK02:$L:_ADC_Open_STK03\
:$L:_ADC_Open_STK04:$L:_ADC_Open_STK05:$L:_ADC_Open_STK06:$L:_ADC_Open_STK07:$L:_ADC_Open_STK08\
:$L:_ADC_Open_STK09:$L:_ADC_Open_STK10
;--------------------------------------------------------
;	;.line	51; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	void ADC_Open(unsigned char ck,    //Selector of SD18 peripheral operating clock source
_ADC_Open:	;Function start
	MVF	r0x108C,1,0
	MVF	_OSCCN1,0,0
;	;.line	66; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_CLK_DivSelect(ck);
	ANDL	0xcf
	IORF	r0x108C,0,0
	MVF	_OSCCN1,1,0
;	;.line	67; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	CLK_DHSCKSelect(cks);
	MVF	_OSCCN0,0,0
	ANDL	0xcf
	IORF	_ADC_Open_STK00,0,0
	MVF	_OSCCN0,1,0
;	;.line	70; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_VINSelect(inh,inl);             // Config ADC Input Channel
	MVF	_ADC_Open_STK02,0,0
	IORF	_ADC_Open_STK01,0,0
	MVF	_AD1CN3,1,0
;	;.line	71; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_VRINSelect(vrh,vrl);            // Config ADC Ref. Voltage Input Channel
	MVF	_AD1CN4,0,0
	ANDL	0x0f
	IORF	_ADC_Open_STK04,0,0
	IORF	_ADC_Open_STK03,0,0
	MVF	_AD1CN4,1,0
;	;.line	72; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_GainSelect(adgn,pgagn);         // Config PGA Gain and AD Gain
	MVF	_AD1CN1,0,0
	ANDL	0xe0
	IORF	_ADC_Open_STK06,0,0
	IORF	_ADC_Open_STK05,0,0
	MVF	_AD1CN1,1,0
;	;.line	73; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_VRXSelect(vrgn);             // Config Ref. Gain and DC offset
	ANDL	0xdf
	IORF	_ADC_Open_STK07,0,0
	MVF	_AD1CN1,1,0
;	;.line	74; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_DCSETSelect(dcset);             // Config Ref. Gain and DC offset
	MVF	_AD1CN2,0,0
	ANDL	0xf0
	IORF	_ADC_Open_STK08,0,0
	MVF	_AD1CN2,1,0
;	;.line	75; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_OSRSelect(osr);                 // Config Over sampling ratio
	MVF	_AD1CN0,0,0
	ANDL	0xe1
	IORF	_ADC_Open_STK09,0,0
	MVF	_AD1CN0,1,0
;	;.line	76; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_VCMSSelect(vcms); 
	MVF	_AD1CN5,0,0
	ANDL	0xdf
	IORF	_ADC_Open_STK10,0,0
	MVF	_AD1CN5,1,0
;	;.line	78; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_ENACMEnable();
	BSF	_AD1CN5,7
;	;.line	79; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_Enable();
	BSF	_AD1CN0,7
;	;.line	80; "C:\HYCON\H08 CIDE\DRIVER\HY17P\ADC_56.c"	}
	RET	
; exit point of _ADC_Open
	.ENDFUNC	_ADC_Open
;--------------------------------------------------------

	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ENSDRVEnable$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ENSDRVDisable$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
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
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_vcms_10000_5$vcms$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK10]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_osr_10000_5$osr$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK09]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_dcset_10000_5$dcset$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK08]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_vrgn_10000_5$vrgn$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK07]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_pgagn_10000_5$pgagn$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK06]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_adgn_10000_5$adgn$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK05]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_vrl_10000_5$vrl$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK04]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_vrh_10000_5$vrh$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK03]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_inl_10000_5$inl$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK02]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_inh_10000_5$inh$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK01]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_cks_10000_5$cks$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK00]
	;--cdb--S:LADC_56.ADC_Open._ADC_Open_ck_10000_5$ck$2710$5({1}SC:U),R,0,0,[r0x108C]
	;--cdb--S:LADC_56.ADC_GetData._ADC_GetData_ADCData_10000_8$ADCData$2710$8({4}SL:SL),E,0,0
	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	.globl	_FSR0
	.globl	_FSR1
	.globl	_FSR2
	.globl	_ADCR

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
	.globl	_ADC_Open

	.globl	_memcpy
;--------------------------------------------------------
; global -2 definitions
;--------------------------------------------------------
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
	.area UDATA (DATA,REL,CON) ;UDL_ADC_56_0	udata
r0x108C:	.ds	1
	.area LOCALSTK (STK); local stack var
_ADC_Open_STK00:	.ds	1
	.globl _ADC_Open_STK00
_ADC_Open_STK01:	.ds	1
	.globl _ADC_Open_STK01
_ADC_Open_STK02:	.ds	1
	.globl _ADC_Open_STK02
_ADC_Open_STK03:	.ds	1
	.globl _ADC_Open_STK03
_ADC_Open_STK04:	.ds	1
	.globl _ADC_Open_STK04
_ADC_Open_STK05:	.ds	1
	.globl _ADC_Open_STK05
_ADC_Open_STK06:	.ds	1
	.globl _ADC_Open_STK06
_ADC_Open_STK07:	.ds	1
	.globl _ADC_Open_STK07
_ADC_Open_STK08:	.ds	1
	.globl _ADC_Open_STK08
_ADC_Open_STK09:	.ds	1
	.globl _ADC_Open_STK09
_ADC_Open_STK10:	.ds	1
	.globl _ADC_Open_STK10
_ADC_GetData_ADCData_10000_8:	.ds	4
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data - mirror
;--------------------------------------------------------
	;Following is optimization info, 
	;xxcdbxxW:dst:src+offset:srclit:just-remove
	;--cdb--W:r0x10AA:NULL+0:-1:1
	;--cdb--W:r0x1098:NULL+0:-1:1
	;--cdb--W:r0x108C:NULL+0:-1:1
	;--c2db--RNG$_ADC_Open_vcms_10000_5$112$155
	;--c2db--RNG$_ADC_Open_osr_10000_5$112$150
	;--c2db--RNG$_ADC_Open_dcset_10000_5$112$145
	;--c2db--RNG$_ADC_Open_vrgn_10000_5$112$140
	;--c2db--RNG$_ADC_Open_pgagn_10000_5$112$136
	;--c2db--RNG$_ADC_Open_adgn_10000_5$112$136
	;--c2db--RNG$_ADC_Open_vrl_10000_5$112$130
	;--c2db--RNG$_ADC_Open_vrh_10000_5$112$130
	;--c2db--RNG$_ADC_Open_inl_10000_5$112$124
	;--c2db--RNG$_ADC_Open_inh_10000_5$112$124
	;--c2db--RNG$_ADC_Open_cks_10000_5$112$120
	;--c2db--RNG$_ADC_Open_ck_10000_5$112$115
	END
