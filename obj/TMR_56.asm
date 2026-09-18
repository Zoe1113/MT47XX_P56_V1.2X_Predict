;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #bf155f72c (MSVC)
;--------------------------------------------------------
; Port for HYCON CPU
;--------------------------------------------------------
;	;CCFROM:"F:\³ÂÓîº½\00 MT ³ÌÐò\01 MT47XX_P56_Ô¤²â\00 MT47XX_P56_V1.2X_Ô¤²â\Src"
;;	.file	"C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"
	.module TMR_56
	;.list	p=HY17P56
	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:TMR_56:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:TMR_56:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:TMR_56:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0,0,0,0
	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
	;--cdb--F:TMR_56:G$PWMOpen$0$0({2}DF,SV:S),C,0,0,0,0,0
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
.area CCODE (code,REL,CON) ; TMR_56-code 
.globl _TB1C2Set

;--------------------------------------------------------
	.FUNC _TB1C2Set:$r:0:2:$L:_TB1C2Set_STK00
;--------------------------------------------------------
;	;.line	107; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C2H=(TMB>>8);
_TB1C2Set:	;Function start
	MVF	_TB1C2H,1,0
;	;.line	108; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C2L= (0x00FF & TMB);
	MVF	_TB1C2Set_STK00,0,0
	MVF	_TB1C2L,1,0
;	;.line	109; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	}
	RET	
; exit point of _TB1C2Set
	.ENDFUNC	_TB1C2Set
;--------------------------------------------------------

.globl _TB1C1Set

;--------------------------------------------------------
	.FUNC _TB1C1Set:$r:0:2:$L:_TB1C1Set_STK00
;--------------------------------------------------------
;	;.line	101; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C1H=(TMB>>8);
_TB1C1Set:	;Function start
	MVF	_TB1C1H,1,0
;	;.line	102; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C1L= (0x00FF & TMB);
	MVF	_TB1C1Set_STK00,0,0
	MVF	_TB1C1L,1,0
;	;.line	103; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	}
	RET	
; exit point of _TB1C1Set
	.ENDFUNC	_TB1C1Set
;--------------------------------------------------------

.globl _TB1C0Set

;--------------------------------------------------------
	.FUNC _TB1C0Set:$r:0:2:$L:_TB1C0Set_STK00
;--------------------------------------------------------
;	;.line	95; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C0H=(TMB>>8);
_TB1C0Set:	;Function start
	MVF	_TB1C0H,1,0
;	;.line	96; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C0L= (0x00FF & TMB);
	MVF	_TB1C0Set_STK00,0,0
	MVF	_TB1C0L,1,0
;	;.line	97; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	}
	RET	
; exit point of _TB1C0Set
	.ENDFUNC	_TB1C0Set
;--------------------------------------------------------

.globl _PWMOpen

;--------------------------------------------------------
	.FUNC _PWMOpen:$r:0:3:$L:r0x108C:$L:_PWMOpen_STK00:$L:_PWMOpen_STK01
;--------------------------------------------------------
;	;.line	37; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	void PWMOpen(unsigned char mode,  //Select PWM mode
_PWMOpen:	;Function start
	MVF	r0x108C,1,0
;	;.line	42; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_TRIG_MODE(TB1RT_LogicH);
	MVL	0xe7
	ANDF	_TB1CN0,1,0
;	;.line	43; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ClearTMB1();
	BSF	_TB1CN0,2
;	;.line	44; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	switch(mode)
	MVL	0x08
	CPSL	r0x108C,0
	JMP	_00112_DS_
	MVL	HIGHD2(_00121_DS_)
	MVF	_PCLATH,1,0
	MVF	r0x108C,0,0
	ADDL	D2(_00121_DS_)
	BTSZ	_STATUS,4
	INF	_PCLATH,1,0
	MVF	_PCLATL,1,0
_00121_DS_:
	RJ	_00112_DS_
	RJ	_00105_DS_
	RJ	_00106_DS_
	RJ	_00107_DS_
	RJ	_00108_DS_
	RJ	_00109_DS_
	RJ	_00110_DS_
	RJ	_00111_DS_
_00105_DS_:
;	;.line	47; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_16bit);
	MVL	0x9f
	ANDF	_TB1CN0,1,0
;	;.line	48; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO1);
	MVL	0x8f
	ANDF	_TB1CN1,1,0
;	;.line	49; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO1);
	MVL	0xf8
	ANDF	_TB1CN1,1,0
;	;.line	50; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
	JMP	_00112_DS_
_00106_DS_:
;	;.line	53; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_16bit);
	MVL	0x9f
	ANDF	_TB1CN0,1,0
;	;.line	54; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO2);
	MVF	_TB1CN1,0,0
	ANDL	0x8f
	IORL	0x10
	MVF	_TB1CN1,1,0
;	;.line	55; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO2);
	ANDL	0xf8
	IORL	0x01
	MVF	_TB1CN1,1,0
;	;.line	56; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
	JMP	_00112_DS_
_00107_DS_:
;	;.line	59; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_2_8bit);
	MVF	_TB1CN0,0,0
	ANDL	0x9f
	IORL	0x40
	MVF	_TB1CN0,1,0
;	;.line	60; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO3);
	MVF	_TB1CN1,0,0
	ANDL	0x8f
	IORL	0x20
	MVF	_TB1CN1,1,0
;	;.line	61; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO3);
	ANDL	0xf8
	IORL	0x02
	MVF	_TB1CN1,1,0
;	;.line	62; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
	JMP	_00112_DS_
_00108_DS_:
;	;.line	65; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_2_8bit);
	MVF	_TB1CN0,0,0
	ANDL	0x9f
	IORL	0x40
	MVF	_TB1CN0,1,0
;	;.line	66; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO4);
	MVF	_TB1CN1,0,0
	ANDL	0x8f
	IORL	0x30
	MVF	_TB1CN1,1,0
;	;.line	67; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO4);
	ANDL	0xf8
	IORL	0x03
	MVF	_TB1CN1,1,0
;	;.line	68; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
	JMP	_00112_DS_
_00109_DS_:
;	;.line	71; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_8_8bit);
	MVF	_TB1CN0,0,0
	ANDL	0x9f
	IORL	0x60
	MVF	_TB1CN0,1,0
;	;.line	72; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO5);
	MVF	_TB1CN1,0,0
	ANDL	0x8f
	IORL	0x40
	MVF	_TB1CN1,1,0
;	;.line	73; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO5);
	ANDL	0xf8
	IORL	0x04
	MVF	_TB1CN1,1,0
;	;.line	74; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
	JMP	_00112_DS_
_00110_DS_:
;	;.line	77; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_17bit);
	MVF	_TB1CN0,0,0
	ANDL	0x9f
	IORL	0x20
	MVF	_TB1CN0,1,0
;	;.line	78; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO6);
	MVF	_TB1CN1,0,0
	ANDL	0x8f
	IORL	0x50
	MVF	_TB1CN1,1,0
;	;.line	79; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO6);
	ANDL	0xf8
	IORL	0x05
	MVF	_TB1CN1,1,0
;	;.line	80; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
	JMP	_00112_DS_
_00111_DS_:
;	;.line	83; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_16bit);
	MVL	0x9f
	ANDF	_TB1CN0,1,0
;	;.line	84; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO7);
	MVF	_TB1CN1,0,0
	ANDL	0x8f
	IORL	0x60
	MVF	_TB1CN1,1,0
;	;.line	85; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO7);
	ANDL	0xf8
	IORL	0x06
	MVF	_TB1CN1,1,0
_00112_DS_:
;	;.line	88; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1Enable();
	BSF	_TB1CN0,7
;	;.line	89; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1CN0 |= (pwm0 | pwm1);  //Note: TB1CN0[1:0] must be the last to configured
	MVF	_PWMOpen_STK01,0,0
	IORF	_PWMOpen_STK00,0,0
	IORF	_TB1CN0,1,0
;	;.line	91; "C:\HYCON\H08 CIDE\DRIVER\HY17P\TMR_56.c"	}
	RET	
; exit point of _PWMOpen
	.ENDFUNC	_PWMOpen
;--------------------------------------------------------

	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
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
	;--cdb--S:LTMR_56.PWMOpen._PWMOpen_pwm1_10000_5$pwm1$2710$5({1}SC:U),R,0,0,[_PWMOpen_STK01]
	;--cdb--S:LTMR_56.PWMOpen._PWMOpen_pwm0_10000_5$pwm0$2710$5({1}SC:U),R,0,0,[_PWMOpen_STK00]
	;--cdb--S:LTMR_56.PWMOpen._PWMOpen_mode_10000_5$mode$2710$5({1}SC:U),R,0,0,[r0x108C]
	;--cdb--S:LTMR_56.TB1C0Set._TB1C0Set_TMB_10000_9$TMB$2710$9({2}SI:U),R,0,0,[_TB1C0Set_STK00,r0x1093]
	;--cdb--S:LTMR_56.TB1C1Set._TB1C1Set_TMB_10000_11$TMB$2710$11({2}SI:U),R,0,0,[_TB1C1Set_STK00,r0x1099]
	;--cdb--S:LTMR_56.TB1C2Set._TB1C2Set_TMB_10000_13$TMB$2710$13({2}SI:U),R,0,0,[_TB1C2Set_STK00,r0x109F]
	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
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
	.globl	_TB1C2Set
	.globl	_TB1C1Set
	.globl	_TB1C0Set
	.globl	_PWMOpen

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
	.area UDATA (DATA,REL,CON) ;UDL_TMR_56_0	udata
r0x108C:	.ds	1
	.area LOCALSTK (STK); local stack var
_PWMOpen_STK00:	.ds	1
	.globl _PWMOpen_STK00
_PWMOpen_STK01:	.ds	1
	.globl _PWMOpen_STK01
_TB1C0Set_STK00:	.ds	1
	.globl _TB1C0Set_STK00
_TB1C1Set_STK00:	.ds	1
	.globl _TB1C1Set_STK00
_TB1C2Set_STK00:	.ds	1
	.globl _TB1C2Set_STK00
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data - mirror
;--------------------------------------------------------
	;Following is optimization info, 
	;xxcdbxxW:dst:src+offset:srclit:just-remove
	;--cdb--W:r0x10A1:NULL+0:-1:1
	;--cdb--W:r0x10A0:NULL+0:-1:1
	;--cdb--W:r0x10A2:NULL+0:-1:1
	;--cdb--W:r0x109F:NULL+0:-1:1
	;--cdb--W:r0x109B:NULL+0:-1:1
	;--cdb--W:r0x109A:NULL+0:-1:1
	;--cdb--W:r0x109C:NULL+0:-1:1
	;--cdb--W:r0x1099:NULL+0:-1:1
	;--cdb--W:r0x1095:NULL+0:-1:1
	;--cdb--W:r0x1094:NULL+0:-1:1
	;--cdb--W:r0x1096:NULL+0:-1:1
	;--cdb--W:r0x1093:NULL+0:-1:1
	;--cdb--W:r0x108C:NULL+0:-1:1
	;--cdb--W:_PWMOpen_STK00:NULL+0:-1:1
	;--c2db--RNG$_PWMOpen_pwm1_10000_5$83$222
	;--c2db--RNG$_PWMOpen_pwm0_10000_5$83$222
	;--c2db--RNG$_PWMOpen_mode_10000_5$83$108
	;--c2db--RNG$_TB1C0Set_TMB_10000_9$63$68
	;--c2db--RNG$_TB1C1Set_TMB_10000_11$46$51
	;--c2db--RNG$_TB1C2Set_TMB_10000_13$29$34
	END
