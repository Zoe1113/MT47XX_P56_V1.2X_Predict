001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	"D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"
009                     	.module TMR_56
010                     	;.list	p=HY17P56
011                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
012                     	;--cdb--F:TMR_56:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0,0,0,0
013                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
014                     	;--cdb--F:TMR_56:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0,0,0,0
015                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
016                     	;--cdb--F:TMR_56:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0,0,0,0
017                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
018                     	;--cdb--F:TMR_56:G$PWMOpen$0$0({2}DF,SV:S),C,0,0,0,0,0
019                     ;--------------------------------------------------------
020                     ; overlayable items in internal ram 
021                     ;--------------------------------------------------------
022                     ;	udata_ovr
023                     .area CCODE (code,REL,CON) ; TMR_56-code 
024                     .globl _TB1C2Set
025                     
026                     ;--------------------------------------------------------
027                     	.FUNC _TB1C2Set:$r:0:2:$L:_TB1C2Set_STK00
028                     ;--------------------------------------------------------
029                     ;	;.line	107; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C2H=(TMB>>8);
030                     _TB1C2Set:	;Function start
031                     	MVF	_TB1C2H,1,0
032                     ;	;.line	108; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C2L= (0x00FF & TMB);
033                     	MVF	_TB1C2Set_STK00,0,0
034                     	MVF	_TB1C2L,1,0
035                     ;	;.line	109; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	}
036                     	RET	
037                     ; exit point of _TB1C2Set
038                     	.ENDFUNC	_TB1C2Set
039                     ;--------------------------------------------------------
040                     
041                     .globl _TB1C1Set
042                     
043                     ;--------------------------------------------------------
044                     	.FUNC _TB1C1Set:$r:0:2:$L:_TB1C1Set_STK00
045                     ;--------------------------------------------------------
046                     ;	;.line	101; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C1H=(TMB>>8);
047                     _TB1C1Set:	;Function start
048                     	MVF	_TB1C1H,1,0
049                     ;	;.line	102; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C1L= (0x00FF & TMB);
050                     	MVF	_TB1C1Set_STK00,0,0
051                     	MVF	_TB1C1L,1,0
052                     ;	;.line	103; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	}
053                     	RET	
054                     ; exit point of _TB1C1Set
055                     	.ENDFUNC	_TB1C1Set
056                     ;--------------------------------------------------------
057                     
058                     .globl _TB1C0Set
059                     
060                     ;--------------------------------------------------------
061                     	.FUNC _TB1C0Set:$r:0:2:$L:_TB1C0Set_STK00
062                     ;--------------------------------------------------------
063                     ;	;.line	95; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C0H=(TMB>>8);
064                     _TB1C0Set:	;Function start
065                     	MVF	_TB1C0H,1,0
066                     ;	;.line	96; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1C0L= (0x00FF & TMB);
067                     	MVF	_TB1C0Set_STK00,0,0
068                     	MVF	_TB1C0L,1,0
069                     ;	;.line	97; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	}
070                     	RET	
071                     ; exit point of _TB1C0Set
072                     	.ENDFUNC	_TB1C0Set
073                     ;--------------------------------------------------------
074                     
075                     .globl _PWMOpen
076                     
077                     ;--------------------------------------------------------
078                     	.FUNC _PWMOpen:$r:0:3:$L:r0x108C:$L:_PWMOpen_STK00:$L:_PWMOpen_STK01
079                     ;--------------------------------------------------------
080                     ;	;.line	37; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	void PWMOpen(unsigned char mode,  //Select PWM mode
081                     _PWMOpen:	;Function start
082                     	MVF	r0x108C,1,0
083                     ;	;.line	42; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_TRIG_MODE(TB1RT_LogicH);
084                     	MVL	0xe7
085                     	ANDF	_TB1CN0,1,0
086                     ;	;.line	43; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ClearTMB1();
087                     	BSF	_TB1CN0,2
088                     ;	;.line	44; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	switch(mode)
089                     	MVL	0x08
090                     	CPSL	r0x108C,0
091                     	JMP	_00112_DS_
092                     	MVL	HIGHD2(_00121_DS_)
093                     	MVF	_PCLATH,1,0
094                     	MVF	r0x108C,0,0
095                     	ADDL	D2(_00121_DS_)
096                     	BTSZ	_STATUS,4
097                     	INF	_PCLATH,1,0
098                     	MVF	_PCLATL,1,0
099                     _00121_DS_:
100                     	RJ	_00112_DS_
101                     	RJ	_00105_DS_
102                     	RJ	_00106_DS_
103                     	RJ	_00107_DS_
104                     	RJ	_00108_DS_
105                     	RJ	_00109_DS_
106                     	RJ	_00110_DS_
107                     	RJ	_00111_DS_
108                     _00105_DS_:
109                     ;	;.line	47; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_16bit);
110                     	MVL	0x9f
111                     	ANDF	_TB1CN0,1,0
112                     ;	;.line	48; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO1);
113                     	MVL	0x8f
114                     	ANDF	_TB1CN1,1,0
115                     ;	;.line	49; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO1);
116                     	MVL	0xf8
117                     	ANDF	_TB1CN1,1,0
118                     ;	;.line	50; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
119                     	JMP	_00112_DS_
120                     _00106_DS_:
121                     ;	;.line	53; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_16bit);
122                     	MVL	0x9f
123                     	ANDF	_TB1CN0,1,0
124                     ;	;.line	54; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO2);
125                     	MVF	_TB1CN1,0,0
126                     	ANDL	0x8f
127                     	IORL	0x10
128                     	MVF	_TB1CN1,1,0
129                     ;	;.line	55; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO2);
130                     	ANDL	0xf8
131                     	IORL	0x01
132                     	MVF	_TB1CN1,1,0
133                     ;	;.line	56; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
134                     	JMP	_00112_DS_
135                     _00107_DS_:
136                     ;	;.line	59; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_2_8bit);
137                     	MVF	_TB1CN0,0,0
138                     	ANDL	0x9f
139                     	IORL	0x40
140                     	MVF	_TB1CN0,1,0
141                     ;	;.line	60; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO3);
142                     	MVF	_TB1CN1,0,0
143                     	ANDL	0x8f
144                     	IORL	0x20
145                     	MVF	_TB1CN1,1,0
146                     ;	;.line	61; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO3);
147                     	ANDL	0xf8
148                     	IORL	0x02
149                     	MVF	_TB1CN1,1,0
150                     ;	;.line	62; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
151                     	JMP	_00112_DS_
152                     _00108_DS_:
153                     ;	;.line	65; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_2_8bit);
154                     	MVF	_TB1CN0,0,0
155                     	ANDL	0x9f
156                     	IORL	0x40
157                     	MVF	_TB1CN0,1,0
158                     ;	;.line	66; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO4);
159                     	MVF	_TB1CN1,0,0
160                     	ANDL	0x8f
161                     	IORL	0x30
162                     	MVF	_TB1CN1,1,0
163                     ;	;.line	67; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO4);
164                     	ANDL	0xf8
165                     	IORL	0x03
166                     	MVF	_TB1CN1,1,0
167                     ;	;.line	68; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
168                     	JMP	_00112_DS_
169                     _00109_DS_:
170                     ;	;.line	71; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_8_8bit);
171                     	MVF	_TB1CN0,0,0
172                     	ANDL	0x9f
173                     	IORL	0x60
174                     	MVF	_TB1CN0,1,0
175                     ;	;.line	72; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO5);
176                     	MVF	_TB1CN1,0,0
177                     	ANDL	0x8f
178                     	IORL	0x40
179                     	MVF	_TB1CN1,1,0
180                     ;	;.line	73; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO5);
181                     	ANDL	0xf8
182                     	IORL	0x04
183                     	MVF	_TB1CN1,1,0
184                     ;	;.line	74; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
185                     	JMP	_00112_DS_
186                     _00110_DS_:
187                     ;	;.line	77; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_17bit);
188                     	MVF	_TB1CN0,0,0
189                     	ANDL	0x9f
190                     	IORL	0x20
191                     	MVF	_TB1CN0,1,0
192                     ;	;.line	78; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO6);
193                     	MVF	_TB1CN1,0,0
194                     	ANDL	0x8f
195                     	IORL	0x50
196                     	MVF	_TB1CN1,1,0
197                     ;	;.line	79; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO6);
198                     	ANDL	0xf8
199                     	IORL	0x05
200                     	MVF	_TB1CN1,1,0
201                     ;	;.line	80; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	break;
202                     	JMP	_00112_DS_
203                     _00111_DS_:
204                     ;	;.line	83; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_ModeSelect(TB1M_16bit);
205                     	MVL	0x9f
206                     	ANDF	_TB1CN0,1,0
207                     ;	;.line	84; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM1ModeSelect(PWMA1_PWMO7);
208                     	MVF	_TB1CN1,0,0
209                     	ANDL	0x8f
210                     	IORL	0x60
211                     	MVF	_TB1CN1,1,0
212                     ;	;.line	85; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1_PWM0ModeSelect(PWMA0_PWMO7);
213                     	ANDL	0xf8
214                     	IORL	0x06
215                     	MVF	_TB1CN1,1,0
216                     _00112_DS_:
217                     ;	;.line	88; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1Enable();
218                     	BSF	_TB1CN0,7
219                     ;	;.line	89; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	TB1CN0 |= (pwm0 | pwm1);  //Note: TB1CN0[1:0] must be the last to configured
220                     	MVF	_PWMOpen_STK01,0,0
221                     	IORF	_PWMOpen_STK00,0,0
222                     	IORF	_TB1CN0,1,0
223                     ;	;.line	91; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"	}
224                     	RET	
225                     ; exit point of _PWMOpen
226                     	.ENDFUNC	_PWMOpen
227                     ;--------------------------------------------------------
228                     
229                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
230                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
231                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
232                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
233                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
234                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
235                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
236                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
237                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
238                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
239                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
240                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
241                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
242                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
243                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
244                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
245                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
246                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
247                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
248                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
249                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
250                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
251                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
252                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
253                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
254                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
255                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
256                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
257                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
258                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
259                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
260                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
261                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
262                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
263                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
264                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
265                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
266                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
267                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
268                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
269                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
270                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
271                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
272                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
273                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
274                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
275                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
276                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
277                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
278                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
279                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
280                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
281                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
282                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
283                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
284                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
285                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
286                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
287                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
288                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
289                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
290                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
291                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
292                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
293                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
294                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
295                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
296                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
297                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
298                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
299                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
300                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
301                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
302                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
303                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
304                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
305                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
306                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
307                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
308                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
309                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
310                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
311                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
312                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
313                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
314                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
315                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
316                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
317                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
318                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
319                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
320                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
321                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
322                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
323                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
324                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
325                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
326                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
327                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
328                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
329                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
330                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
331                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
332                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
333                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
334                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
335                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
336                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
337                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
338                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
339                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
340                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
341                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
342                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
343                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
344                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
345                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
346                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
347                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
348                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
349                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
350                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
351                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
352                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
353                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
354                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
355                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
356                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
357                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
358                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
359                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
360                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
361                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
362                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
363                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
364                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
365                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
366                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
367                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
368                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
369                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
370                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
371                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
372                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
373                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
374                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
375                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
376                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
377                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
378                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
379                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
380                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
381                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
382                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
383                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
384                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
385                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
386                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
387                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
388                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
389                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
390                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
391                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
392                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
393                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
394                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
395                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
396                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
397                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
398                     	;--cdb--S:LTMR_56.PWMOpen._PWMOpen_pwm1_10000_5$pwm1$2710$5({1}SC:U),R,0,0,[_PWMOpen_STK01]
399                     	;--cdb--S:LTMR_56.PWMOpen._PWMOpen_pwm0_10000_5$pwm0$2710$5({1}SC:U),R,0,0,[_PWMOpen_STK00]
400                     	;--cdb--S:LTMR_56.PWMOpen._PWMOpen_mode_10000_5$mode$2710$5({1}SC:U),R,0,0,[r0x108C]
401                     	;--cdb--S:LTMR_56.TB1C0Set._TB1C0Set_TMB_10000_9$TMB$2710$9({2}SI:U),R,0,0,[_TB1C0Set_STK00,r0x1093]
402                     	;--cdb--S:LTMR_56.TB1C1Set._TB1C1Set_TMB_10000_11$TMB$2710$11({2}SI:U),R,0,0,[_TB1C1Set_STK00,r0x1099]
403                     	;--cdb--S:LTMR_56.TB1C2Set._TB1C2Set_TMB_10000_13$TMB$2710$13({2}SI:U),R,0,0,[_TB1C2Set_STK00,r0x109F]
404                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
405                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
406                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
407                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
408                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
409                     	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
410                     	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
411                     ;--------------------------------------------------------
412                     ; external declarations
413                     ;--------------------------------------------------------
414                     	.globl	_FSR0
415                     	.globl	_FSR1
416                     	.globl	_FSR2
417                     	.globl	_ADCR
418                     
419                     	.globl STK07
420                     	.globl STK07_SAVE
421                     	.globl STK06
422                     	.globl STK06_SAVE
423                     	.globl STK05
424                     	.globl STK05_SAVE
425                     	.globl STK04
426                     	.globl STK04_SAVE
427                     	.globl STK03
428                     	.globl STK03_SAVE
429                     	.globl STK02
430                     	.globl STK02_SAVE
431                     	.globl STK01
432                     	.globl STK01_SAVE
433                     	.globl STK00
434                     	.globl STK00_SAVE
435                     ;--------------------------------------------------------
436                     ; global -1 declarations
437                     ;--------------------------------------------------------
438                     	.globl	_TB1C2Set
439                     	.globl	_TB1C1Set
440                     	.globl	_TB1C0Set
441                     	.globl	_PWMOpen
442                     
443                     	.globl	_memcpy
444                     ;--------------------------------------------------------
445                     ; global -2 definitions
446                     ;--------------------------------------------------------
447                     	.area DSEG(DATA)
448                     __SWTGTID	.equ	0xA6A6B2CF
449                     
450                     	.area DSEG(DATA)
451                     _INDF0	.equ	0x0
452                     
453                     	.area DSEG(DATA)
454                     _POINC0	.equ	0x1
455                     
456                     	.area DSEG(DATA)
457                     _PODEC0	.equ	0x2
458                     
459                     	.area DSEG(DATA)
460                     _PRINC0	.equ	0x3
461                     
462                     	.area DSEG(DATA)
463                     _PLUSW0	.equ	0x4
464                     
465                     	.area DSEG(DATA)
466                     _INDF1	.equ	0x5
467                     
468                     	.area DSEG(DATA)
469                     _POINC1	.equ	0x6
470                     
471                     	.area DSEG(DATA)
472                     _PODEC1	.equ	0x7
473                     
474                     	.area DSEG(DATA)
475                     _PRINC1	.equ	0x8
476                     
477                     	.area DSEG(DATA)
478                     _PLUSW1	.equ	0x9
479                     
480                     	.area DSEG(DATA)
481                     _INDF2	.equ	0xA
482                     
483                     	.area DSEG(DATA)
484                     _POINC2	.equ	0xB
485                     
486                     	.area DSEG(DATA)
487                     _PODEC2	.equ	0xC
488                     
489                     	.area DSEG(DATA)
490                     _PRINC2	.equ	0xD
491                     
492                     	.area DSEG(DATA)
493                     _PLUSW2	.equ	0xE
494                     
495                     	.area DSEG(DATA)
496                     _FSR0H	.equ	0xF
497                     
498                     	.area DSEG(DATA)
499                     _FSR0L	.equ	0x10
500                     
501                     	.area DSEG(DATA)
502                     _FSR1H	.equ	0x11
503                     
504                     	.area DSEG(DATA)
505                     _FSR1L	.equ	0x12
506                     
507                     	.area DSEG(DATA)
508                     _FSR2H	.equ	0x13
509                     
510                     	.area DSEG(DATA)
511                     _FSR2L	.equ	0x14
512                     
513                     	.area DSEG(DATA)
514                     _TOSH	.equ	0x16
515                     
516                     	.area DSEG(DATA)
517                     _TOSL	.equ	0x17
518                     
519                     	.area DSEG(DATA)
520                     _SKCN	.equ	0x18
521                     
522                     	.area DSEG(DATA)
523                     _PCLATH	.equ	0x1A
524                     
525                     	.area DSEG(DATA)
526                     _PCLATL	.equ	0x1B
527                     
528                     	.area DSEG(DATA)
529                     _TBLPTRH	.equ	0x1D
530                     
531                     	.area DSEG(DATA)
532                     _TBLPTRL	.equ	0x1E
533                     
534                     	.area DSEG(DATA)
535                     _TBLDH	.equ	0x1F
536                     
537                     	.area DSEG(DATA)
538                     _TBLDL	.equ	0x20
539                     
540                     	.area DSEG(DATA)
541                     _PRODH	.equ	0x21
542                     
543                     	.area DSEG(DATA)
544                     _PRODL	.equ	0x22
545                     
546                     	.area DSEG(DATA)
547                     _INTE0	.equ	0x23
548                     
549                     	.area DSEG(DATA)
550                     _INTE1	.equ	0x24
551                     
552                     	.area DSEG(DATA)
553                     _INTE2	.equ	0x25
554                     
555                     	.area DSEG(DATA)
556                     _INTF0	.equ	0x26
557                     
558                     	.area DSEG(DATA)
559                     _INTF1	.equ	0x27
560                     
561                     	.area DSEG(DATA)
562                     _INTF2	.equ	0x28
563                     
564                     	.area DSEG(DATA)
565                     _WREG	.equ	0x29
566                     
567                     	.area DSEG(DATA)
568                     _BSRCN	.equ	0x2A
569                     
570                     	.area DSEG(DATA)
571                     _STATUS	.equ	0x2B
572                     
573                     	.area DSEG(DATA)
574                     _MSTAT	.equ	0x2B
575                     
576                     	.area DSEG(DATA)
577                     _PSTAT	.equ	0x2C
578                     
579                     	.area DSEG(DATA)
580                     _BIECN	.equ	0x2E
581                     
582                     	.area DSEG(DATA)
583                     _BIEARH	.equ	0x2F
584                     
585                     	.area DSEG(DATA)
586                     _BIEARL	.equ	0x30
587                     
588                     	.area DSEG(DATA)
589                     _BIEDRH	.equ	0x31
590                     
591                     	.area DSEG(DATA)
592                     _BIEDRL	.equ	0x32
593                     
594                     	.area DSEG(DATA)
595                     _PWRCN	.equ	0x33
596                     
597                     	.area DSEG(DATA)
598                     _OSCCN0	.equ	0x34
599                     
600                     	.area DSEG(DATA)
601                     _OSCCN1	.equ	0x35
602                     
603                     	.area DSEG(DATA)
604                     _OSCCN2	.equ	0x36
605                     
606                     	.area DSEG(DATA)
607                     _CSFCN0	.equ	0x37
608                     
609                     	.area DSEG(DATA)
610                     _CSFCN1	.equ	0x38
611                     
612                     	.area DSEG(DATA)
613                     _WDTCN	.equ	0x39
614                     
615                     	.area DSEG(DATA)
616                     _AD1H	.equ	0x3A
617                     
618                     	.area DSEG(DATA)
619                     _AD1M	.equ	0x3B
620                     
621                     	.area DSEG(DATA)
622                     _AD1L	.equ	0x3C
623                     
624                     	.area DSEG(DATA)
625                     _AD1CN0	.equ	0x3D
626                     
627                     	.area DSEG(DATA)
628                     _AD1CN1	.equ	0x3E
629                     
630                     	.area DSEG(DATA)
631                     _AD1CN2	.equ	0x3F
632                     
633                     	.area DSEG(DATA)
634                     _AD1CN3	.equ	0x40
635                     
636                     	.area DSEG(DATA)
637                     _AD1CN4	.equ	0x41
638                     
639                     	.area DSEG(DATA)
640                     _AD1CN5	.equ	0x42
641                     
642                     	.area DSEG(DATA)
643                     _LVDCN	.equ	0x43
644                     
645                     	.area DSEG(DATA)
646                     _TMA1CN	.equ	0x44
647                     
648                     	.area DSEG(DATA)
649                     _TMA1R	.equ	0x45
650                     
651                     	.area DSEG(DATA)
652                     _TMA1C	.equ	0x46
653                     
654                     	.area DSEG(DATA)
655                     _TB1FLAG	.equ	0x47
656                     
657                     	.area DSEG(DATA)
658                     _TB1CN0	.equ	0x48
659                     
660                     	.area DSEG(DATA)
661                     _TB1CN1	.equ	0x49
662                     
663                     	.area DSEG(DATA)
664                     _TB1RH	.equ	0x4A
665                     
666                     	.area DSEG(DATA)
667                     _TB1RL	.equ	0x4B
668                     
669                     	.area DSEG(DATA)
670                     _TB1C0H	.equ	0x4C
671                     
672                     	.area DSEG(DATA)
673                     _TB1C0L	.equ	0x4D
674                     
675                     	.area DSEG(DATA)
676                     _TB1C1H	.equ	0x4E
677                     
678                     	.area DSEG(DATA)
679                     _TB1C1L	.equ	0x4F
680                     
681                     	.area DSEG(DATA)
682                     _TB1C2H	.equ	0x50
683                     
684                     	.area DSEG(DATA)
685                     _TB1C2L	.equ	0x51
686                     
687                     	.area DSEG(DATA)
688                     _TC1CN0	.equ	0x52
689                     
690                     	.area DSEG(DATA)
691                     _PT1	.equ	0x53
692                     
693                     	.area DSEG(DATA)
694                     _TRISC1	.equ	0x54
695                     
696                     	.area DSEG(DATA)
697                     _PT1DA	.equ	0x55
698                     
699                     	.area DSEG(DATA)
700                     _PT1PU	.equ	0x56
701                     
702                     	.area DSEG(DATA)
703                     _PT1M1	.equ	0x57
704                     
705                     	.area DSEG(DATA)
706                     _PT1INT	.equ	0x58
707                     
708                     	.area DSEG(DATA)
709                     _PT1INTE	.equ	0x59
710                     
711                     	.area DSEG(DATA)
712                     _PT1INTF	.equ	0x5A
713                     
714                     	.area DSEG(DATA)
715                     _PT2	.equ	0x5B
716                     
717                     	.area DSEG(DATA)
718                     _TRISC2	.equ	0x5C
719                     
720                     	.area DSEG(DATA)
721                     _PT2DA	.equ	0x5D
722                     
723                     	.area DSEG(DATA)
724                     _PT2PU	.equ	0x5E
725                     
726                     	.area DSEG(DATA)
727                     _PT2INT	.equ	0x5F
728                     
729                     	.area DSEG(DATA)
730                     _PT2INTE	.equ	0x60
731                     
732                     	.area DSEG(DATA)
733                     _PT2INTF	.equ	0x61
734                     
735                     	.area DSEG(DATA)
736                     _PT6	.equ	0x62
737                     
738                     	.area DSEG(DATA)
739                     _TRISC6	.equ	0x63
740                     
741                     	.area DSEG(DATA)
742                     _PT6DA	.equ	0x64
743                     
744                     	.area DSEG(DATA)
745                     _PT6PU	.equ	0x65
746                     
747                     	.area DSEG(DATA)
748                     _PT7	.equ	0x66
749                     
750                     	.area DSEG(DATA)
751                     _TRISC7	.equ	0x67
752                     
753                     	.area DSEG(DATA)
754                     _PT7DA	.equ	0x68
755                     
756                     	.area DSEG(DATA)
757                     _PT7PU	.equ	0x69
758                     
759                     	.area DSEG(DATA)
760                     _PT8	.equ	0x6A
761                     
762                     	.area DSEG(DATA)
763                     _TRISC8	.equ	0x6B
764                     
765                     	.area DSEG(DATA)
766                     _PT8DA	.equ	0x6C
767                     
768                     	.area DSEG(DATA)
769                     _PT8PU	.equ	0x6D
770                     
771                     	.area DSEG(DATA)
772                     _SSPCN0	.equ	0x6E
773                     
774                     	.area DSEG(DATA)
775                     _SSPSTA0	.equ	0x6F
776                     
777                     	.area DSEG(DATA)
778                     _SSPBUF0	.equ	0x70
779                     
780                     	.area DSEG(DATA)
781                     _CFG0	.equ	0x71
782                     
783                     	.area DSEG(DATA)
784                     _ACT0	.equ	0x72
785                     
786                     	.area DSEG(DATA)
787                     _STA0	.equ	0x73
788                     
789                     	.area DSEG(DATA)
790                     _CRG0	.equ	0x74
791                     
792                     	.area DSEG(DATA)
793                     _TOC0	.equ	0x75
794                     
795                     	.area DSEG(DATA)
796                     _RDB0	.equ	0x76
797                     
798                     	.area DSEG(DATA)
799                     _TDB0	.equ	0x77
800                     
801                     	.area DSEG(DATA)
802                     _SID0	.equ	0x78
803                     
804                     	.area DSEG(DATA)
805                     _UR0CN	.equ	0x79
806                     
807                     	.area DSEG(DATA)
808                     _UR0STA	.equ	0x7A
809                     
810                     	.area DSEG(DATA)
811                     _BA0CN	.equ	0x7B
812                     
813                     	.area DSEG(DATA)
814                     _BG0RH	.equ	0x7C
815                     
816                     	.area DSEG(DATA)
817                     _BG0RL	.equ	0x7D
818                     
819                     	.area DSEG(DATA)
820                     _TX0R	.equ	0x7E
821                     
822                     	.area DSEG(DATA)
823                     _RC0REG	.equ	0x7F
824                     
825                     	.area DSEG(DATA)
826                     _LCDCN1	.equ	0x180
827                     
828                     	.area DSEG(DATA)
829                     _LCDCN2	.equ	0x181
830                     
831                     	.area DSEG(DATA)
832                     _LCDCN3	.equ	0x182
833                     
834                     	.area DSEG(DATA)
835                     _LCDCN4	.equ	0x183
836                     
837                     	.area DSEG(DATA)
838                     _LCDCN5	.equ	0x184
839                     
840                     	.area DSEG(DATA)
841                     _LCDCN6	.equ	0x185
842                     
843                     	.area DSEG(DATA)
844                     _LCDCN7	.equ	0x186
845                     
846                     	.area DSEG(DATA)
847                     _LCDCN8	.equ	0x187
848                     
849                     	.area DSEG(DATA)
850                     _LCD0	.equ	0x188
851                     
852                     	.area DSEG(DATA)
853                     _LCD1	.equ	0x189
854                     
855                     	.area DSEG(DATA)
856                     _LCD2	.equ	0x18A
857                     
858                     	.area DSEG(DATA)
859                     _LCD3	.equ	0x18B
860                     
861                     	.area DSEG(DATA)
862                     _LCD4	.equ	0x18C
863                     
864                     	.area DSEG(DATA)
865                     _LCD5	.equ	0x18D
866                     
867                     	.area DSEG(DATA)
868                     _LCD6	.equ	0x18E
869                     
870                     	.area DSEG(DATA)
871                     _LCD7	.equ	0x18F
872                     
873                     	.area DSEG(DATA)
874                     _LCD8	.equ	0x190
875                     
876                     	.area DSEG(DATA)
877                     _LCD9	.equ	0x191
878                     
879                     	.area DSEG(DATA)
880                     _UR2CN	.equ	0x192
881                     
882                     	.area DSEG(DATA)
883                     _UR2STA	.equ	0x193
884                     
885                     	.area DSEG(DATA)
886                     _BA2CN	.equ	0x194
887                     
888                     	.area DSEG(DATA)
889                     _BG2RH	.equ	0x195
890                     
891                     	.area DSEG(DATA)
892                     _BG2RL	.equ	0x196
893                     
894                     	.area DSEG(DATA)
895                     _TX2R	.equ	0x197
896                     
897                     	.area DSEG(DATA)
898                     _RC2REG	.equ	0x198
899                     
900                     	.area DSEG(DATA)
901                     _TMA2R	.equ	0x1E8
902                     
903                     	.area DSEG(DATA)
904                     _TMA2C	.equ	0x1E9
905                     
906                     	.area DSEG(DATA)
907                     _LEDCN	.equ	0x1EA
908                     
909                     	.area DSEG(DATA)
910                     _IQ0	.equ	0x1EB
911                     
912                     	.area DSEG(DATA)
913                     _IQ1	.equ	0x1EC
914                     
915                     	.area DSEG(DATA)
916                     _DGCON1	.equ	0x1ED
917                     
918                     	.area DSEG(DATA)
919                     _DGCON2	.equ	0x1EE
920                     
921                     	.area DSEG(DATA)
922                     _ADCRH	.equ	0x3A
923                     
924                     	.area DSEG(DATA)
925                     _ADCRM	.equ	0x3B
926                     
927                     	.area DSEG(DATA)
928                     _ADCRL	.equ	0x3C
929                     
930                     ;--------------------------------------------------------
931                     ; absolute symbol definitions
932                     ;--------------------------------------------------------
933                     ;--------------------------------------------------------
934                     ; compiler-defined variables
935                     ;--------------------------------------------------------
936                     	.area IDATA (DATA,REL,CON); pre-def
937                     	.area IDATAROM (CODE,REL,CON); pre-def
938                     	.area UDATA (DATA,REL,CON); pre-def
939                     	.area UDATA (DATA,REL,CON) ;UDL_TMR_56_0	udata
940 0000 --             r0x108C:	.ds	1
941                     	.area LOCALSTK (STK); local stack var
942 0000 --             _PWMOpen_STK00:	.ds	1
943                     	.globl _PWMOpen_STK00
944 0000 --             _PWMOpen_STK01:	.ds	1
945                     	.globl _PWMOpen_STK01
946 0000 --             _TB1C0Set_STK00:	.ds	1
947                     	.globl _TB1C0Set_STK00
948 0000 --             _TB1C1Set_STK00:	.ds	1
949                     	.globl _TB1C1Set_STK00
950 0000 --             _TB1C2Set_STK00:	.ds	1
951                     	.globl _TB1C2Set_STK00
952                     ;--------------------------------------------------------
953                     ; initialized data
954                     ;--------------------------------------------------------
955                     ;--------------------------------------------------------
956                     ; initialized data - mirror
957                     ;--------------------------------------------------------
958                     	;Following is optimization info, 
959                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
960                     	;--cdb--W:r0x10A1:NULL+0:-1:1
961                     	;--cdb--W:r0x10A0:NULL+0:-1:1
962                     	;--cdb--W:r0x10A2:NULL+0:-1:1
963                     	;--cdb--W:r0x109F:NULL+0:-1:1
964                     	;--cdb--W:r0x109B:NULL+0:-1:1
965                     	;--cdb--W:r0x109A:NULL+0:-1:1
966                     	;--cdb--W:r0x109C:NULL+0:-1:1
967                     	;--cdb--W:r0x1099:NULL+0:-1:1
968                     	;--cdb--W:r0x1095:NULL+0:-1:1
969                     	;--cdb--W:r0x1094:NULL+0:-1:1
970                     	;--cdb--W:r0x1096:NULL+0:-1:1
971                     	;--cdb--W:r0x1093:NULL+0:-1:1
972                     	;--cdb--W:r0x108C:NULL+0:-1:1
973                     	;--cdb--W:_PWMOpen_STK00:NULL+0:-1:1
974                     	;--c2db--RNG$_PWMOpen_pwm1_10000_5$83$222
975                     	;--c2db--RNG$_PWMOpen_pwm0_10000_5$83$222
976                     	;--c2db--RNG$_PWMOpen_mode_10000_5$83$108
977                     	;--c2db--RNG$_TB1C0Set_TMB_10000_9$63$68
978                     	;--c2db--RNG$_TB1C1Set_TMB_10000_11$46$51
979                     	;--c2db--RNG$_TB1C2Set_TMB_10000_13$29$34
980                     	END
