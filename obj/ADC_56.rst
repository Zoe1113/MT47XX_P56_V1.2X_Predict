001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	"D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"
009                     	.module ADC_56
010                     	;.list	p=HY17P56
011                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
012                     	;--cdb--F:ADC_56:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0,0,0,0
013                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
014                     	;--cdb--F:ADC_56:G$ADC_Open$0$0({2}DF,SV:S),C,0,0,0,0,0
015                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
016                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
017                     	;--cdb--S:G$ENSDRVEnable$0$0({2}DF,SV:S),C,0,0
018                     	;--cdb--F:ADC_56:G$ENSDRVEnable$0$0({2}DF,SV:S),C,0,0,0,0,0
019                     	;--cdb--S:G$ENSDRVDisable$0$0({2}DF,SV:S),C,0,0
020                     	;--cdb--F:ADC_56:G$ENSDRVDisable$0$0({2}DF,SV:S),C,0,0,0,0,0
021                     ;--------------------------------------------------------
022                     ; overlayable items in internal ram 
023                     ;--------------------------------------------------------
024                     ;	udata_ovr
025                     .area CCODE (code,REL,CON) ; ADC_56-code 
026                     .globl _ENSDRVDisable
027                     
028                     ;--------------------------------------------------------
029                     	.FUNC _ENSDRVDisable:$r:0:0
030                     ;--------------------------------------------------------
031                     ;	;.line	119; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	PWR_CSFONEnable();
032                     _ENSDRVDisable:	;Function start
033                     	BSF	_PWRCN,0
034                     ;	;.line	120; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	CSFCN1 &= 0x7F;
035                     	BCF	_CSFCN1,7
036                     ;	;.line	121; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	PWR_CSFONDisable();
037                     	BCF	_PWRCN,0
038                     ;	;.line	122; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	}
039                     	RET	
040                     ; exit point of _ENSDRVDisable
041                     	.ENDFUNC	_ENSDRVDisable
042                     ;--------------------------------------------------------
043                     
044                     .globl _ENSDRVEnable
045                     
046                     ;--------------------------------------------------------
047                     	.FUNC _ENSDRVEnable:$r:0:0
048                     ;--------------------------------------------------------
049                     ;	;.line	113; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	PWR_CSFONEnable();
050                     _ENSDRVEnable:	;Function start
051                     	BSF	_PWRCN,0
052                     ;	;.line	114; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	CSFCN1 |= 0x80;
053                     	BSF	_CSFCN1,7
054                     ;	;.line	115; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	PWR_CSFONDisable();
055                     	BCF	_PWRCN,0
056                     ;	;.line	116; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	}
057                     	RET	
058                     ; exit point of _ENSDRVEnable
059                     	.ENDFUNC	_ENSDRVEnable
060                     ;--------------------------------------------------------
061                     
062                     .globl _ADC_GetData
063                     
064                     ;--------------------------------------------------------
065                     	.FUNC _ADC_GetData:$r:4:0:$L:_ADC_GetData_ADCData_10000_8
066                     ;--------------------------------------------------------
067                     ;	;.line	97; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	((char *)(&ADCData))[0] = AD1L;
068                     _ADC_GetData:	;Function start
069                     	MVF	_AD1L,0,0
070                     	MVF	(_ADC_GetData_ADCData_10000_8 + 0),1,0
071                     ;	;.line	98; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	((char *)(&ADCData))[1] = AD1M;
072                     	MVF	_AD1M,0,0
073                     	MVF	(_ADC_GetData_ADCData_10000_8 + 1),1,0
074                     ;	;.line	99; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	((char *)(&ADCData))[2] = AD1H;
075                     	MVF	_AD1H,0,0
076                     	MVF	(_ADC_GetData_ADCData_10000_8 + 2),1,0
077                     ;	;.line	101; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	if (ADCData&0x800000L)
078                     	BTSS	(_ADC_GetData_ADCData_10000_8 + 2),7
079                     	JMP	_00110_DS_
080                     ;	;.line	102; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	((char *)(&ADCData))[3] = 0xFF;
081                     	SETF	(_ADC_GetData_ADCData_10000_8 + 3),0
082                     	JMP	_00111_DS_
083                     _00110_DS_:
084                     ;	;.line	104; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	((char *)(&ADCData))[3] = 0x00;
085                     	CLRF	(_ADC_GetData_ADCData_10000_8 + 3),0
086                     _00111_DS_:
087                     ;	;.line	105; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	return ADCData;
088                     	MVF	_ADC_GetData_ADCData_10000_8,0,0
089                     	MVF	STK02,1,0
090                     	MVF	(_ADC_GetData_ADCData_10000_8 + 1),0,0
091                     	MVF	STK01,1,0
092                     	MVF	(_ADC_GetData_ADCData_10000_8 + 2),0,0
093                     	MVF	STK00,1,0
094                     	MVF	(_ADC_GetData_ADCData_10000_8 + 3),0,0
095                     ;	;.line	106; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	}
096                     	RET	
097                     ; exit point of _ADC_GetData
098                     	.ENDFUNC	_ADC_GetData
099                     ;--------------------------------------------------------
100                     
101                     .globl _ADC_Open
102                     
103                     ;--------------------------------------------------------
104                     	.FUNC _ADC_Open:$r:0:12:$L:r0x108C:$L:_ADC_Open_STK00:$L:_ADC_Open_STK01:$L:_ADC_Open_STK02:$L:_ADC_Open_STK03\
105                     :$L:_ADC_Open_STK04:$L:_ADC_Open_STK05:$L:_ADC_Open_STK06:$L:_ADC_Open_STK07:$L:_ADC_Open_STK08\
106                     :$L:_ADC_Open_STK09:$L:_ADC_Open_STK10
107                     ;--------------------------------------------------------
108                     ;	;.line	51; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	void ADC_Open(unsigned char ck,    //Selector of SD18 peripheral operating clock source
109                     _ADC_Open:	;Function start
110                     	MVF	r0x108C,1,0
111                     	MVF	_OSCCN1,0,0
112                     ;	;.line	66; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_CLK_DivSelect(ck);
113                     	ANDL	0xcf
114                     	IORF	r0x108C,0,0
115                     	MVF	_OSCCN1,1,0
116                     ;	;.line	67; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	CLK_DHSCKSelect(cks);
117                     	MVF	_OSCCN0,0,0
118                     	ANDL	0xcf
119                     	IORF	_ADC_Open_STK00,0,0
120                     	MVF	_OSCCN0,1,0
121                     ;	;.line	70; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_VINSelect(inh,inl);             // Config ADC Input Channel
122                     	MVF	_ADC_Open_STK02,0,0
123                     	IORF	_ADC_Open_STK01,0,0
124                     	MVF	_AD1CN3,1,0
125                     ;	;.line	71; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_VRINSelect(vrh,vrl);            // Config ADC Ref. Voltage Input Channel
126                     	MVF	_AD1CN4,0,0
127                     	ANDL	0x0f
128                     	IORF	_ADC_Open_STK04,0,0
129                     	IORF	_ADC_Open_STK03,0,0
130                     	MVF	_AD1CN4,1,0
131                     ;	;.line	72; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_GainSelect(adgn,pgagn);         // Config PGA Gain and AD Gain
132                     	MVF	_AD1CN1,0,0
133                     	ANDL	0xe0
134                     	IORF	_ADC_Open_STK06,0,0
135                     	IORF	_ADC_Open_STK05,0,0
136                     	MVF	_AD1CN1,1,0
137                     ;	;.line	73; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_VRXSelect(vrgn);             // Config Ref. Gain and DC offset
138                     	ANDL	0xdf
139                     	IORF	_ADC_Open_STK07,0,0
140                     	MVF	_AD1CN1,1,0
141                     ;	;.line	74; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_DCSETSelect(dcset);             // Config Ref. Gain and DC offset
142                     	MVF	_AD1CN2,0,0
143                     	ANDL	0xf0
144                     	IORF	_ADC_Open_STK08,0,0
145                     	MVF	_AD1CN2,1,0
146                     ;	;.line	75; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_OSRSelect(osr);                 // Config Over sampling ratio
147                     	MVF	_AD1CN0,0,0
148                     	ANDL	0xe1
149                     	IORF	_ADC_Open_STK09,0,0
150                     	MVF	_AD1CN0,1,0
151                     ;	;.line	76; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_VCMSSelect(vcms); 
152                     	MVF	_AD1CN5,0,0
153                     	ANDL	0xdf
154                     	IORF	_ADC_Open_STK10,0,0
155                     	MVF	_AD1CN5,1,0
156                     ;	;.line	78; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_ENACMEnable();
157                     	BSF	_AD1CN5,7
158                     ;	;.line	79; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	ADC_Enable();
159                     	BSF	_AD1CN0,7
160                     ;	;.line	80; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"	}
161                     	RET	
162                     ; exit point of _ADC_Open
163                     	.ENDFUNC	_ADC_Open
164                     ;--------------------------------------------------------
165                     
166                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
167                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
168                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
169                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
170                     	;--cdb--S:G$ENSDRVEnable$0$0({2}DF,SV:S),C,0,0
171                     	;--cdb--S:G$ENSDRVDisable$0$0({2}DF,SV:S),C,0,0
172                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
173                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
174                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
175                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
176                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
177                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
178                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
179                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
180                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
181                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
182                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
183                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
184                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
185                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
186                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
187                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
188                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
189                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
190                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
191                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
192                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
193                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
194                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
195                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
196                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
197                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
198                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
199                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
200                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
201                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
202                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
203                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
204                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
205                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
206                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
207                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
208                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
209                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
210                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
211                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
212                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
213                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
214                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
215                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
216                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
217                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
218                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
219                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
220                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
221                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
222                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
223                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
224                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
225                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
226                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
227                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
228                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
229                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
230                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
231                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
232                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
233                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
234                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
235                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
236                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
237                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
238                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
239                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
240                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
241                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
242                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
243                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
244                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
245                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
246                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
247                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
248                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
249                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
250                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
251                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
252                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
253                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
254                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
255                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
256                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
257                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
258                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
259                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
260                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
261                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
262                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
263                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
264                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
265                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
266                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
267                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
268                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
269                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
270                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
271                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
272                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
273                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
274                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
275                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
276                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
277                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
278                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
279                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
280                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
281                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
282                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
283                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
284                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
285                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
286                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
287                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
288                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
289                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
290                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
291                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
292                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
293                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
294                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
295                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
296                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
297                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
298                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
299                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
300                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
301                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
302                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
303                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
304                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
305                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
306                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
307                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
308                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
309                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
310                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
311                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
312                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
313                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
314                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
315                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
316                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
317                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
318                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
319                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
320                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
321                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
322                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
323                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
324                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
325                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
326                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
327                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
328                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
329                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
330                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
331                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
332                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
333                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
334                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
335                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
336                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
337                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_vcms_10000_5$vcms$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK10]
338                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_osr_10000_5$osr$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK09]
339                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_dcset_10000_5$dcset$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK08]
340                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_vrgn_10000_5$vrgn$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK07]
341                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_pgagn_10000_5$pgagn$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK06]
342                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_adgn_10000_5$adgn$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK05]
343                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_vrl_10000_5$vrl$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK04]
344                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_vrh_10000_5$vrh$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK03]
345                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_inl_10000_5$inl$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK02]
346                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_inh_10000_5$inh$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK01]
347                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_cks_10000_5$cks$2710$5({1}SC:U),R,0,0,[_ADC_Open_STK00]
348                     	;--cdb--S:LADC_56.ADC_Open._ADC_Open_ck_10000_5$ck$2710$5({1}SC:U),R,0,0,[r0x108C]
349                     	;--cdb--S:LADC_56.ADC_GetData._ADC_GetData_ADCData_10000_8$ADCData$2710$8({4}SL:SL),E,0,0
350                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
351                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
352                     ;--------------------------------------------------------
353                     ; external declarations
354                     ;--------------------------------------------------------
355                     	.globl	_FSR0
356                     	.globl	_FSR1
357                     	.globl	_FSR2
358                     	.globl	_ADCR
359                     
360                     	.globl STK07
361                     	.globl STK07_SAVE
362                     	.globl STK06
363                     	.globl STK06_SAVE
364                     	.globl STK05
365                     	.globl STK05_SAVE
366                     	.globl STK04
367                     	.globl STK04_SAVE
368                     	.globl STK03
369                     	.globl STK03_SAVE
370                     	.globl STK02
371                     	.globl STK02_SAVE
372                     	.globl STK01
373                     	.globl STK01_SAVE
374                     	.globl STK00
375                     	.globl STK00_SAVE
376                     ;--------------------------------------------------------
377                     ; global -1 declarations
378                     ;--------------------------------------------------------
379                     	.globl	_ADC_Open
380                     
381                     	.globl	_memcpy
382                     ;--------------------------------------------------------
383                     ; global -2 definitions
384                     ;--------------------------------------------------------
385                     	.area DSEG(DATA)
386                     __SWTGTID	.equ	0xA6A6B2CF
387                     
388                     	.area DSEG(DATA)
389                     _INDF0	.equ	0x0
390                     
391                     	.area DSEG(DATA)
392                     _POINC0	.equ	0x1
393                     
394                     	.area DSEG(DATA)
395                     _PODEC0	.equ	0x2
396                     
397                     	.area DSEG(DATA)
398                     _PRINC0	.equ	0x3
399                     
400                     	.area DSEG(DATA)
401                     _PLUSW0	.equ	0x4
402                     
403                     	.area DSEG(DATA)
404                     _INDF1	.equ	0x5
405                     
406                     	.area DSEG(DATA)
407                     _POINC1	.equ	0x6
408                     
409                     	.area DSEG(DATA)
410                     _PODEC1	.equ	0x7
411                     
412                     	.area DSEG(DATA)
413                     _PRINC1	.equ	0x8
414                     
415                     	.area DSEG(DATA)
416                     _PLUSW1	.equ	0x9
417                     
418                     	.area DSEG(DATA)
419                     _INDF2	.equ	0xA
420                     
421                     	.area DSEG(DATA)
422                     _POINC2	.equ	0xB
423                     
424                     	.area DSEG(DATA)
425                     _PODEC2	.equ	0xC
426                     
427                     	.area DSEG(DATA)
428                     _PRINC2	.equ	0xD
429                     
430                     	.area DSEG(DATA)
431                     _PLUSW2	.equ	0xE
432                     
433                     	.area DSEG(DATA)
434                     _FSR0H	.equ	0xF
435                     
436                     	.area DSEG(DATA)
437                     _FSR0L	.equ	0x10
438                     
439                     	.area DSEG(DATA)
440                     _FSR1H	.equ	0x11
441                     
442                     	.area DSEG(DATA)
443                     _FSR1L	.equ	0x12
444                     
445                     	.area DSEG(DATA)
446                     _FSR2H	.equ	0x13
447                     
448                     	.area DSEG(DATA)
449                     _FSR2L	.equ	0x14
450                     
451                     	.area DSEG(DATA)
452                     _TOSH	.equ	0x16
453                     
454                     	.area DSEG(DATA)
455                     _TOSL	.equ	0x17
456                     
457                     	.area DSEG(DATA)
458                     _SKCN	.equ	0x18
459                     
460                     	.area DSEG(DATA)
461                     _PCLATH	.equ	0x1A
462                     
463                     	.area DSEG(DATA)
464                     _PCLATL	.equ	0x1B
465                     
466                     	.area DSEG(DATA)
467                     _TBLPTRH	.equ	0x1D
468                     
469                     	.area DSEG(DATA)
470                     _TBLPTRL	.equ	0x1E
471                     
472                     	.area DSEG(DATA)
473                     _TBLDH	.equ	0x1F
474                     
475                     	.area DSEG(DATA)
476                     _TBLDL	.equ	0x20
477                     
478                     	.area DSEG(DATA)
479                     _PRODH	.equ	0x21
480                     
481                     	.area DSEG(DATA)
482                     _PRODL	.equ	0x22
483                     
484                     	.area DSEG(DATA)
485                     _INTE0	.equ	0x23
486                     
487                     	.area DSEG(DATA)
488                     _INTE1	.equ	0x24
489                     
490                     	.area DSEG(DATA)
491                     _INTE2	.equ	0x25
492                     
493                     	.area DSEG(DATA)
494                     _INTF0	.equ	0x26
495                     
496                     	.area DSEG(DATA)
497                     _INTF1	.equ	0x27
498                     
499                     	.area DSEG(DATA)
500                     _INTF2	.equ	0x28
501                     
502                     	.area DSEG(DATA)
503                     _WREG	.equ	0x29
504                     
505                     	.area DSEG(DATA)
506                     _BSRCN	.equ	0x2A
507                     
508                     	.area DSEG(DATA)
509                     _STATUS	.equ	0x2B
510                     
511                     	.area DSEG(DATA)
512                     _MSTAT	.equ	0x2B
513                     
514                     	.area DSEG(DATA)
515                     _PSTAT	.equ	0x2C
516                     
517                     	.area DSEG(DATA)
518                     _BIECN	.equ	0x2E
519                     
520                     	.area DSEG(DATA)
521                     _BIEARH	.equ	0x2F
522                     
523                     	.area DSEG(DATA)
524                     _BIEARL	.equ	0x30
525                     
526                     	.area DSEG(DATA)
527                     _BIEDRH	.equ	0x31
528                     
529                     	.area DSEG(DATA)
530                     _BIEDRL	.equ	0x32
531                     
532                     	.area DSEG(DATA)
533                     _PWRCN	.equ	0x33
534                     
535                     	.area DSEG(DATA)
536                     _OSCCN0	.equ	0x34
537                     
538                     	.area DSEG(DATA)
539                     _OSCCN1	.equ	0x35
540                     
541                     	.area DSEG(DATA)
542                     _OSCCN2	.equ	0x36
543                     
544                     	.area DSEG(DATA)
545                     _CSFCN0	.equ	0x37
546                     
547                     	.area DSEG(DATA)
548                     _CSFCN1	.equ	0x38
549                     
550                     	.area DSEG(DATA)
551                     _WDTCN	.equ	0x39
552                     
553                     	.area DSEG(DATA)
554                     _AD1H	.equ	0x3A
555                     
556                     	.area DSEG(DATA)
557                     _AD1M	.equ	0x3B
558                     
559                     	.area DSEG(DATA)
560                     _AD1L	.equ	0x3C
561                     
562                     	.area DSEG(DATA)
563                     _AD1CN0	.equ	0x3D
564                     
565                     	.area DSEG(DATA)
566                     _AD1CN1	.equ	0x3E
567                     
568                     	.area DSEG(DATA)
569                     _AD1CN2	.equ	0x3F
570                     
571                     	.area DSEG(DATA)
572                     _AD1CN3	.equ	0x40
573                     
574                     	.area DSEG(DATA)
575                     _AD1CN4	.equ	0x41
576                     
577                     	.area DSEG(DATA)
578                     _AD1CN5	.equ	0x42
579                     
580                     	.area DSEG(DATA)
581                     _LVDCN	.equ	0x43
582                     
583                     	.area DSEG(DATA)
584                     _TMA1CN	.equ	0x44
585                     
586                     	.area DSEG(DATA)
587                     _TMA1R	.equ	0x45
588                     
589                     	.area DSEG(DATA)
590                     _TMA1C	.equ	0x46
591                     
592                     	.area DSEG(DATA)
593                     _TB1FLAG	.equ	0x47
594                     
595                     	.area DSEG(DATA)
596                     _TB1CN0	.equ	0x48
597                     
598                     	.area DSEG(DATA)
599                     _TB1CN1	.equ	0x49
600                     
601                     	.area DSEG(DATA)
602                     _TB1RH	.equ	0x4A
603                     
604                     	.area DSEG(DATA)
605                     _TB1RL	.equ	0x4B
606                     
607                     	.area DSEG(DATA)
608                     _TB1C0H	.equ	0x4C
609                     
610                     	.area DSEG(DATA)
611                     _TB1C0L	.equ	0x4D
612                     
613                     	.area DSEG(DATA)
614                     _TB1C1H	.equ	0x4E
615                     
616                     	.area DSEG(DATA)
617                     _TB1C1L	.equ	0x4F
618                     
619                     	.area DSEG(DATA)
620                     _TB1C2H	.equ	0x50
621                     
622                     	.area DSEG(DATA)
623                     _TB1C2L	.equ	0x51
624                     
625                     	.area DSEG(DATA)
626                     _TC1CN0	.equ	0x52
627                     
628                     	.area DSEG(DATA)
629                     _PT1	.equ	0x53
630                     
631                     	.area DSEG(DATA)
632                     _TRISC1	.equ	0x54
633                     
634                     	.area DSEG(DATA)
635                     _PT1DA	.equ	0x55
636                     
637                     	.area DSEG(DATA)
638                     _PT1PU	.equ	0x56
639                     
640                     	.area DSEG(DATA)
641                     _PT1M1	.equ	0x57
642                     
643                     	.area DSEG(DATA)
644                     _PT1INT	.equ	0x58
645                     
646                     	.area DSEG(DATA)
647                     _PT1INTE	.equ	0x59
648                     
649                     	.area DSEG(DATA)
650                     _PT1INTF	.equ	0x5A
651                     
652                     	.area DSEG(DATA)
653                     _PT2	.equ	0x5B
654                     
655                     	.area DSEG(DATA)
656                     _TRISC2	.equ	0x5C
657                     
658                     	.area DSEG(DATA)
659                     _PT2DA	.equ	0x5D
660                     
661                     	.area DSEG(DATA)
662                     _PT2PU	.equ	0x5E
663                     
664                     	.area DSEG(DATA)
665                     _PT2INT	.equ	0x5F
666                     
667                     	.area DSEG(DATA)
668                     _PT2INTE	.equ	0x60
669                     
670                     	.area DSEG(DATA)
671                     _PT2INTF	.equ	0x61
672                     
673                     	.area DSEG(DATA)
674                     _PT6	.equ	0x62
675                     
676                     	.area DSEG(DATA)
677                     _TRISC6	.equ	0x63
678                     
679                     	.area DSEG(DATA)
680                     _PT6DA	.equ	0x64
681                     
682                     	.area DSEG(DATA)
683                     _PT6PU	.equ	0x65
684                     
685                     	.area DSEG(DATA)
686                     _PT7	.equ	0x66
687                     
688                     	.area DSEG(DATA)
689                     _TRISC7	.equ	0x67
690                     
691                     	.area DSEG(DATA)
692                     _PT7DA	.equ	0x68
693                     
694                     	.area DSEG(DATA)
695                     _PT7PU	.equ	0x69
696                     
697                     	.area DSEG(DATA)
698                     _PT8	.equ	0x6A
699                     
700                     	.area DSEG(DATA)
701                     _TRISC8	.equ	0x6B
702                     
703                     	.area DSEG(DATA)
704                     _PT8DA	.equ	0x6C
705                     
706                     	.area DSEG(DATA)
707                     _PT8PU	.equ	0x6D
708                     
709                     	.area DSEG(DATA)
710                     _SSPCN0	.equ	0x6E
711                     
712                     	.area DSEG(DATA)
713                     _SSPSTA0	.equ	0x6F
714                     
715                     	.area DSEG(DATA)
716                     _SSPBUF0	.equ	0x70
717                     
718                     	.area DSEG(DATA)
719                     _CFG0	.equ	0x71
720                     
721                     	.area DSEG(DATA)
722                     _ACT0	.equ	0x72
723                     
724                     	.area DSEG(DATA)
725                     _STA0	.equ	0x73
726                     
727                     	.area DSEG(DATA)
728                     _CRG0	.equ	0x74
729                     
730                     	.area DSEG(DATA)
731                     _TOC0	.equ	0x75
732                     
733                     	.area DSEG(DATA)
734                     _RDB0	.equ	0x76
735                     
736                     	.area DSEG(DATA)
737                     _TDB0	.equ	0x77
738                     
739                     	.area DSEG(DATA)
740                     _SID0	.equ	0x78
741                     
742                     	.area DSEG(DATA)
743                     _UR0CN	.equ	0x79
744                     
745                     	.area DSEG(DATA)
746                     _UR0STA	.equ	0x7A
747                     
748                     	.area DSEG(DATA)
749                     _BA0CN	.equ	0x7B
750                     
751                     	.area DSEG(DATA)
752                     _BG0RH	.equ	0x7C
753                     
754                     	.area DSEG(DATA)
755                     _BG0RL	.equ	0x7D
756                     
757                     	.area DSEG(DATA)
758                     _TX0R	.equ	0x7E
759                     
760                     	.area DSEG(DATA)
761                     _RC0REG	.equ	0x7F
762                     
763                     	.area DSEG(DATA)
764                     _LCDCN1	.equ	0x180
765                     
766                     	.area DSEG(DATA)
767                     _LCDCN2	.equ	0x181
768                     
769                     	.area DSEG(DATA)
770                     _LCDCN3	.equ	0x182
771                     
772                     	.area DSEG(DATA)
773                     _LCDCN4	.equ	0x183
774                     
775                     	.area DSEG(DATA)
776                     _LCDCN5	.equ	0x184
777                     
778                     	.area DSEG(DATA)
779                     _LCDCN6	.equ	0x185
780                     
781                     	.area DSEG(DATA)
782                     _LCDCN7	.equ	0x186
783                     
784                     	.area DSEG(DATA)
785                     _LCDCN8	.equ	0x187
786                     
787                     	.area DSEG(DATA)
788                     _LCD0	.equ	0x188
789                     
790                     	.area DSEG(DATA)
791                     _LCD1	.equ	0x189
792                     
793                     	.area DSEG(DATA)
794                     _LCD2	.equ	0x18A
795                     
796                     	.area DSEG(DATA)
797                     _LCD3	.equ	0x18B
798                     
799                     	.area DSEG(DATA)
800                     _LCD4	.equ	0x18C
801                     
802                     	.area DSEG(DATA)
803                     _LCD5	.equ	0x18D
804                     
805                     	.area DSEG(DATA)
806                     _LCD6	.equ	0x18E
807                     
808                     	.area DSEG(DATA)
809                     _LCD7	.equ	0x18F
810                     
811                     	.area DSEG(DATA)
812                     _LCD8	.equ	0x190
813                     
814                     	.area DSEG(DATA)
815                     _LCD9	.equ	0x191
816                     
817                     	.area DSEG(DATA)
818                     _UR2CN	.equ	0x192
819                     
820                     	.area DSEG(DATA)
821                     _UR2STA	.equ	0x193
822                     
823                     	.area DSEG(DATA)
824                     _BA2CN	.equ	0x194
825                     
826                     	.area DSEG(DATA)
827                     _BG2RH	.equ	0x195
828                     
829                     	.area DSEG(DATA)
830                     _BG2RL	.equ	0x196
831                     
832                     	.area DSEG(DATA)
833                     _TX2R	.equ	0x197
834                     
835                     	.area DSEG(DATA)
836                     _RC2REG	.equ	0x198
837                     
838                     	.area DSEG(DATA)
839                     _TMA2R	.equ	0x1E8
840                     
841                     	.area DSEG(DATA)
842                     _TMA2C	.equ	0x1E9
843                     
844                     	.area DSEG(DATA)
845                     _LEDCN	.equ	0x1EA
846                     
847                     	.area DSEG(DATA)
848                     _IQ0	.equ	0x1EB
849                     
850                     	.area DSEG(DATA)
851                     _IQ1	.equ	0x1EC
852                     
853                     	.area DSEG(DATA)
854                     _DGCON1	.equ	0x1ED
855                     
856                     	.area DSEG(DATA)
857                     _DGCON2	.equ	0x1EE
858                     
859                     	.area DSEG(DATA)
860                     _ADCRH	.equ	0x3A
861                     
862                     	.area DSEG(DATA)
863                     _ADCRM	.equ	0x3B
864                     
865                     	.area DSEG(DATA)
866                     _ADCRL	.equ	0x3C
867                     
868                     ;--------------------------------------------------------
869                     ; absolute symbol definitions
870                     ;--------------------------------------------------------
871                     ;--------------------------------------------------------
872                     ; compiler-defined variables
873                     ;--------------------------------------------------------
874                     	.area IDATA (DATA,REL,CON); pre-def
875                     	.area IDATAROM (CODE,REL,CON); pre-def
876                     	.area UDATA (DATA,REL,CON); pre-def
877                     	.area UDATA (DATA,REL,CON) ;UDL_ADC_56_0	udata
878 0000 --             r0x108C:	.ds	1
879                     	.area LOCALSTK (STK); local stack var
880 0000 --             _ADC_Open_STK00:	.ds	1
881                     	.globl _ADC_Open_STK00
882 0000 --             _ADC_Open_STK01:	.ds	1
883                     	.globl _ADC_Open_STK01
884 0000 --             _ADC_Open_STK02:	.ds	1
885                     	.globl _ADC_Open_STK02
886 0000 --             _ADC_Open_STK03:	.ds	1
887                     	.globl _ADC_Open_STK03
888 0000 --             _ADC_Open_STK04:	.ds	1
889                     	.globl _ADC_Open_STK04
890 0000 --             _ADC_Open_STK05:	.ds	1
891                     	.globl _ADC_Open_STK05
892 0000 --             _ADC_Open_STK06:	.ds	1
893                     	.globl _ADC_Open_STK06
894 0000 --             _ADC_Open_STK07:	.ds	1
895                     	.globl _ADC_Open_STK07
896 0000 --             _ADC_Open_STK08:	.ds	1
897                     	.globl _ADC_Open_STK08
898 0000 --             _ADC_Open_STK09:	.ds	1
899                     	.globl _ADC_Open_STK09
900 0000 --             _ADC_Open_STK10:	.ds	1
901                     	.globl _ADC_Open_STK10
902 0000 -- -- -- --    _ADC_GetData_ADCData_10000_8:	.ds	4
903                     ;--------------------------------------------------------
904                     ; initialized data
905                     ;--------------------------------------------------------
906                     ;--------------------------------------------------------
907                     ; initialized data - mirror
908                     ;--------------------------------------------------------
909                     	;Following is optimization info, 
910                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
911                     	;--cdb--W:r0x10AA:NULL+0:-1:1
912                     	;--cdb--W:r0x1098:NULL+0:-1:1
913                     	;--cdb--W:r0x108C:NULL+0:-1:1
914                     	;--c2db--RNG$_ADC_Open_vcms_10000_5$112$155
915                     	;--c2db--RNG$_ADC_Open_osr_10000_5$112$150
916                     	;--c2db--RNG$_ADC_Open_dcset_10000_5$112$145
917                     	;--c2db--RNG$_ADC_Open_vrgn_10000_5$112$140
918                     	;--c2db--RNG$_ADC_Open_pgagn_10000_5$112$136
919                     	;--c2db--RNG$_ADC_Open_adgn_10000_5$112$136
920                     	;--c2db--RNG$_ADC_Open_vrl_10000_5$112$130
921                     	;--c2db--RNG$_ADC_Open_vrh_10000_5$112$130
922                     	;--c2db--RNG$_ADC_Open_inl_10000_5$112$124
923                     	;--c2db--RNG$_ADC_Open_inh_10000_5$112$124
924                     	;--c2db--RNG$_ADC_Open_cks_10000_5$112$120
925                     	;--c2db--RNG$_ADC_Open_ck_10000_5$112$115
926                     	END
