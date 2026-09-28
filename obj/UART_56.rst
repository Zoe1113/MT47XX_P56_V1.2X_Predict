001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	"D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\UART_56.c"
009                     	.module UART_56
010                     	;.list	p=HY17P56
011                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
012                     	;--cdb--F:UART_56:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0,0,0,0
013                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
014                     	;--cdb--F:UART_56:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0,0,0,0
015                     ;--------------------------------------------------------
016                     ; overlayable items in internal ram 
017                     ;--------------------------------------------------------
018                     ;	udata_ovr
019                     .area CCODE (code,REL,CON) ; UART_56-code 
020                     .globl _UART2_BGRSet
021                     
022                     ;--------------------------------------------------------
023                     	.FUNC _UART2_BGRSet:$r:0:2:$L:_UART2_BGRSet_STK00
024                     ;--------------------------------------------------------
025                     ;	;.line	29; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\UART_56.c"	BG2RH = BGR >> 8;
026                     _UART2_BGRSet:	;Function start
027                     	MVF	_BG2RH,1,0
028                     ;	;.line	30; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\UART_56.c"	BG2RL= (0x00FF & BGR);
029                     	MVF	_UART2_BGRSet_STK00,0,0
030                     	MVF	_BG2RL,1,0
031                     ;	;.line	31; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\UART_56.c"	}
032                     	RET	
033                     ; exit point of _UART2_BGRSet
034                     	.ENDFUNC	_UART2_BGRSet
035                     ;--------------------------------------------------------
036                     
037                     .globl _UART0_BGRSet
038                     
039                     ;--------------------------------------------------------
040                     	.FUNC _UART0_BGRSet:$r:0:2:$L:_UART0_BGRSet_STK00
041                     ;--------------------------------------------------------
042                     ;	;.line	23; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\UART_56.c"	BG0RH = BGR >> 8;
043                     _UART0_BGRSet:	;Function start
044 13F7 [00] [Y] 667C      	MVF	_BG0RH,1,0
045                     ;	;.line	24; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\UART_56.c"	BG0RL= (0x00FF & BGR);
046 13F8 [00] [Y] 6480      	MVF	_UART0_BGRSet_STK00,0,0
047 13F9 [00] [Y] 667D      	MVF	_BG0RL,1,0
048                     ;	;.line	25; "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\UART_56.c"	}
049 13FA [00] [Y] C4BF 000A 	RET	
050                     ; exit point of _UART0_BGRSet
051                     	.ENDFUNC	_UART0_BGRSet
052                     ;--------------------------------------------------------
053                     
054                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
055                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
056                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
057                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
058                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
059                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
060                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
061                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
062                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
063                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
064                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
065                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
066                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
067                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
068                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
069                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
070                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
071                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
072                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
073                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
074                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
075                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
076                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
077                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
078                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
079                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
080                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
081                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
082                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
083                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
084                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
085                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
086                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
087                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
088                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
089                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
090                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
091                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
092                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
093                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
094                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
095                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
096                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
097                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
098                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
099                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
100                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
101                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
102                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
103                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
104                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
105                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
106                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
107                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
108                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
109                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
110                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
111                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
112                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
113                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
114                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
115                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
116                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
117                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
118                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
119                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
120                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
121                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
122                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
123                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
124                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
125                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
126                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
127                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
128                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
129                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
130                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
131                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
132                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
133                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
134                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
135                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
136                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
137                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
138                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
139                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
140                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
141                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
142                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
143                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
144                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
145                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
146                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
147                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
148                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
149                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
150                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
151                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
152                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
153                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
154                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
155                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
156                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
157                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
158                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
159                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
160                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
161                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
162                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
163                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
164                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
165                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
166                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
167                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
168                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
169                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
170                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
171                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
172                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
173                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
174                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
175                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
176                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
177                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
178                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
179                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
180                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
181                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
182                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
183                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
184                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
185                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
186                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
187                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
188                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
189                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
190                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
191                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
192                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
193                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
194                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
195                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
196                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
197                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
198                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
199                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
200                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
201                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
202                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
203                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
204                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
205                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
206                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
207                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
208                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
209                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
210                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
211                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
212                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
213                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
214                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
215                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
216                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
217                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
218                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
219                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
220                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
221                     	;--cdb--S:LUART_56.UART0_BGRSet._UART0_BGRSet_BGR_10000_3$BGR$2710$3({2}SI:U),R,0,0,[_UART0_BGRSet_STK00,r0x108D]
222                     	;--cdb--S:LUART_56.UART2_BGRSet._UART2_BGRSet_BGR_10000_5$BGR$2710$5({2}SI:U),R,0,0,[_UART2_BGRSet_STK00,r0x1093]
223                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
224                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
225                     ;--------------------------------------------------------
226                     ; external declarations
227                     ;--------------------------------------------------------
228                     	.globl	_FSR0
229                     	.globl	_FSR1
230                     	.globl	_FSR2
231                     	.globl	_ADCR
232                     
233                     	.globl STK07
234                     	.globl STK07_SAVE
235                     	.globl STK06
236                     	.globl STK06_SAVE
237                     	.globl STK05
238                     	.globl STK05_SAVE
239                     	.globl STK04
240                     	.globl STK04_SAVE
241                     	.globl STK03
242                     	.globl STK03_SAVE
243                     	.globl STK02
244                     	.globl STK02_SAVE
245                     	.globl STK01
246                     	.globl STK01_SAVE
247                     	.globl STK00
248                     	.globl STK00_SAVE
249                     ;--------------------------------------------------------
250                     ; global -1 declarations
251                     ;--------------------------------------------------------
252                     	.globl	_UART2_BGRSet
253                     	.globl	_UART0_BGRSet
254                     
255                     	.globl	_memcpy
256                     ;--------------------------------------------------------
257                     ; global -2 definitions
258                     ;--------------------------------------------------------
259                     	.area DSEG(DATA)
260                     __SWTGTID	.equ	0xA6A6B2CF
261                     
262                     	.area DSEG(DATA)
263                     _INDF0	.equ	0x0
264                     
265                     	.area DSEG(DATA)
266                     _POINC0	.equ	0x1
267                     
268                     	.area DSEG(DATA)
269                     _PODEC0	.equ	0x2
270                     
271                     	.area DSEG(DATA)
272                     _PRINC0	.equ	0x3
273                     
274                     	.area DSEG(DATA)
275                     _PLUSW0	.equ	0x4
276                     
277                     	.area DSEG(DATA)
278                     _INDF1	.equ	0x5
279                     
280                     	.area DSEG(DATA)
281                     _POINC1	.equ	0x6
282                     
283                     	.area DSEG(DATA)
284                     _PODEC1	.equ	0x7
285                     
286                     	.area DSEG(DATA)
287                     _PRINC1	.equ	0x8
288                     
289                     	.area DSEG(DATA)
290                     _PLUSW1	.equ	0x9
291                     
292                     	.area DSEG(DATA)
293                     _INDF2	.equ	0xA
294                     
295                     	.area DSEG(DATA)
296                     _POINC2	.equ	0xB
297                     
298                     	.area DSEG(DATA)
299                     _PODEC2	.equ	0xC
300                     
301                     	.area DSEG(DATA)
302                     _PRINC2	.equ	0xD
303                     
304                     	.area DSEG(DATA)
305                     _PLUSW2	.equ	0xE
306                     
307                     	.area DSEG(DATA)
308                     _FSR0H	.equ	0xF
309                     
310                     	.area DSEG(DATA)
311                     _FSR0L	.equ	0x10
312                     
313                     	.area DSEG(DATA)
314                     _FSR1H	.equ	0x11
315                     
316                     	.area DSEG(DATA)
317                     _FSR1L	.equ	0x12
318                     
319                     	.area DSEG(DATA)
320                     _FSR2H	.equ	0x13
321                     
322                     	.area DSEG(DATA)
323                     _FSR2L	.equ	0x14
324                     
325                     	.area DSEG(DATA)
326                     _TOSH	.equ	0x16
327                     
328                     	.area DSEG(DATA)
329                     _TOSL	.equ	0x17
330                     
331                     	.area DSEG(DATA)
332                     _SKCN	.equ	0x18
333                     
334                     	.area DSEG(DATA)
335                     _PCLATH	.equ	0x1A
336                     
337                     	.area DSEG(DATA)
338                     _PCLATL	.equ	0x1B
339                     
340                     	.area DSEG(DATA)
341                     _TBLPTRH	.equ	0x1D
342                     
343                     	.area DSEG(DATA)
344                     _TBLPTRL	.equ	0x1E
345                     
346                     	.area DSEG(DATA)
347                     _TBLDH	.equ	0x1F
348                     
349                     	.area DSEG(DATA)
350                     _TBLDL	.equ	0x20
351                     
352                     	.area DSEG(DATA)
353                     _PRODH	.equ	0x21
354                     
355                     	.area DSEG(DATA)
356                     _PRODL	.equ	0x22
357                     
358                     	.area DSEG(DATA)
359                     _INTE0	.equ	0x23
360                     
361                     	.area DSEG(DATA)
362                     _INTE1	.equ	0x24
363                     
364                     	.area DSEG(DATA)
365                     _INTE2	.equ	0x25
366                     
367                     	.area DSEG(DATA)
368                     _INTF0	.equ	0x26
369                     
370                     	.area DSEG(DATA)
371                     _INTF1	.equ	0x27
372                     
373                     	.area DSEG(DATA)
374                     _INTF2	.equ	0x28
375                     
376                     	.area DSEG(DATA)
377                     _WREG	.equ	0x29
378                     
379                     	.area DSEG(DATA)
380                     _BSRCN	.equ	0x2A
381                     
382                     	.area DSEG(DATA)
383                     _STATUS	.equ	0x2B
384                     
385                     	.area DSEG(DATA)
386                     _MSTAT	.equ	0x2B
387                     
388                     	.area DSEG(DATA)
389                     _PSTAT	.equ	0x2C
390                     
391                     	.area DSEG(DATA)
392                     _BIECN	.equ	0x2E
393                     
394                     	.area DSEG(DATA)
395                     _BIEARH	.equ	0x2F
396                     
397                     	.area DSEG(DATA)
398                     _BIEARL	.equ	0x30
399                     
400                     	.area DSEG(DATA)
401                     _BIEDRH	.equ	0x31
402                     
403                     	.area DSEG(DATA)
404                     _BIEDRL	.equ	0x32
405                     
406                     	.area DSEG(DATA)
407                     _PWRCN	.equ	0x33
408                     
409                     	.area DSEG(DATA)
410                     _OSCCN0	.equ	0x34
411                     
412                     	.area DSEG(DATA)
413                     _OSCCN1	.equ	0x35
414                     
415                     	.area DSEG(DATA)
416                     _OSCCN2	.equ	0x36
417                     
418                     	.area DSEG(DATA)
419                     _CSFCN0	.equ	0x37
420                     
421                     	.area DSEG(DATA)
422                     _CSFCN1	.equ	0x38
423                     
424                     	.area DSEG(DATA)
425                     _WDTCN	.equ	0x39
426                     
427                     	.area DSEG(DATA)
428                     _AD1H	.equ	0x3A
429                     
430                     	.area DSEG(DATA)
431                     _AD1M	.equ	0x3B
432                     
433                     	.area DSEG(DATA)
434                     _AD1L	.equ	0x3C
435                     
436                     	.area DSEG(DATA)
437                     _AD1CN0	.equ	0x3D
438                     
439                     	.area DSEG(DATA)
440                     _AD1CN1	.equ	0x3E
441                     
442                     	.area DSEG(DATA)
443                     _AD1CN2	.equ	0x3F
444                     
445                     	.area DSEG(DATA)
446                     _AD1CN3	.equ	0x40
447                     
448                     	.area DSEG(DATA)
449                     _AD1CN4	.equ	0x41
450                     
451                     	.area DSEG(DATA)
452                     _AD1CN5	.equ	0x42
453                     
454                     	.area DSEG(DATA)
455                     _LVDCN	.equ	0x43
456                     
457                     	.area DSEG(DATA)
458                     _TMA1CN	.equ	0x44
459                     
460                     	.area DSEG(DATA)
461                     _TMA1R	.equ	0x45
462                     
463                     	.area DSEG(DATA)
464                     _TMA1C	.equ	0x46
465                     
466                     	.area DSEG(DATA)
467                     _TB1FLAG	.equ	0x47
468                     
469                     	.area DSEG(DATA)
470                     _TB1CN0	.equ	0x48
471                     
472                     	.area DSEG(DATA)
473                     _TB1CN1	.equ	0x49
474                     
475                     	.area DSEG(DATA)
476                     _TB1RH	.equ	0x4A
477                     
478                     	.area DSEG(DATA)
479                     _TB1RL	.equ	0x4B
480                     
481                     	.area DSEG(DATA)
482                     _TB1C0H	.equ	0x4C
483                     
484                     	.area DSEG(DATA)
485                     _TB1C0L	.equ	0x4D
486                     
487                     	.area DSEG(DATA)
488                     _TB1C1H	.equ	0x4E
489                     
490                     	.area DSEG(DATA)
491                     _TB1C1L	.equ	0x4F
492                     
493                     	.area DSEG(DATA)
494                     _TB1C2H	.equ	0x50
495                     
496                     	.area DSEG(DATA)
497                     _TB1C2L	.equ	0x51
498                     
499                     	.area DSEG(DATA)
500                     _TC1CN0	.equ	0x52
501                     
502                     	.area DSEG(DATA)
503                     _PT1	.equ	0x53
504                     
505                     	.area DSEG(DATA)
506                     _TRISC1	.equ	0x54
507                     
508                     	.area DSEG(DATA)
509                     _PT1DA	.equ	0x55
510                     
511                     	.area DSEG(DATA)
512                     _PT1PU	.equ	0x56
513                     
514                     	.area DSEG(DATA)
515                     _PT1M1	.equ	0x57
516                     
517                     	.area DSEG(DATA)
518                     _PT1INT	.equ	0x58
519                     
520                     	.area DSEG(DATA)
521                     _PT1INTE	.equ	0x59
522                     
523                     	.area DSEG(DATA)
524                     _PT1INTF	.equ	0x5A
525                     
526                     	.area DSEG(DATA)
527                     _PT2	.equ	0x5B
528                     
529                     	.area DSEG(DATA)
530                     _TRISC2	.equ	0x5C
531                     
532                     	.area DSEG(DATA)
533                     _PT2DA	.equ	0x5D
534                     
535                     	.area DSEG(DATA)
536                     _PT2PU	.equ	0x5E
537                     
538                     	.area DSEG(DATA)
539                     _PT2INT	.equ	0x5F
540                     
541                     	.area DSEG(DATA)
542                     _PT2INTE	.equ	0x60
543                     
544                     	.area DSEG(DATA)
545                     _PT2INTF	.equ	0x61
546                     
547                     	.area DSEG(DATA)
548                     _PT6	.equ	0x62
549                     
550                     	.area DSEG(DATA)
551                     _TRISC6	.equ	0x63
552                     
553                     	.area DSEG(DATA)
554                     _PT6DA	.equ	0x64
555                     
556                     	.area DSEG(DATA)
557                     _PT6PU	.equ	0x65
558                     
559                     	.area DSEG(DATA)
560                     _PT7	.equ	0x66
561                     
562                     	.area DSEG(DATA)
563                     _TRISC7	.equ	0x67
564                     
565                     	.area DSEG(DATA)
566                     _PT7DA	.equ	0x68
567                     
568                     	.area DSEG(DATA)
569                     _PT7PU	.equ	0x69
570                     
571                     	.area DSEG(DATA)
572                     _PT8	.equ	0x6A
573                     
574                     	.area DSEG(DATA)
575                     _TRISC8	.equ	0x6B
576                     
577                     	.area DSEG(DATA)
578                     _PT8DA	.equ	0x6C
579                     
580                     	.area DSEG(DATA)
581                     _PT8PU	.equ	0x6D
582                     
583                     	.area DSEG(DATA)
584                     _SSPCN0	.equ	0x6E
585                     
586                     	.area DSEG(DATA)
587                     _SSPSTA0	.equ	0x6F
588                     
589                     	.area DSEG(DATA)
590                     _SSPBUF0	.equ	0x70
591                     
592                     	.area DSEG(DATA)
593                     _CFG0	.equ	0x71
594                     
595                     	.area DSEG(DATA)
596                     _ACT0	.equ	0x72
597                     
598                     	.area DSEG(DATA)
599                     _STA0	.equ	0x73
600                     
601                     	.area DSEG(DATA)
602                     _CRG0	.equ	0x74
603                     
604                     	.area DSEG(DATA)
605                     _TOC0	.equ	0x75
606                     
607                     	.area DSEG(DATA)
608                     _RDB0	.equ	0x76
609                     
610                     	.area DSEG(DATA)
611                     _TDB0	.equ	0x77
612                     
613                     	.area DSEG(DATA)
614                     _SID0	.equ	0x78
615                     
616                     	.area DSEG(DATA)
617                     _UR0CN	.equ	0x79
618                     
619                     	.area DSEG(DATA)
620                     _UR0STA	.equ	0x7A
621                     
622                     	.area DSEG(DATA)
623                     _BA0CN	.equ	0x7B
624                     
625                     	.area DSEG(DATA)
626                     _BG0RH	.equ	0x7C
627                     
628                     	.area DSEG(DATA)
629                     _BG0RL	.equ	0x7D
630                     
631                     	.area DSEG(DATA)
632                     _TX0R	.equ	0x7E
633                     
634                     	.area DSEG(DATA)
635                     _RC0REG	.equ	0x7F
636                     
637                     	.area DSEG(DATA)
638                     _LCDCN1	.equ	0x180
639                     
640                     	.area DSEG(DATA)
641                     _LCDCN2	.equ	0x181
642                     
643                     	.area DSEG(DATA)
644                     _LCDCN3	.equ	0x182
645                     
646                     	.area DSEG(DATA)
647                     _LCDCN4	.equ	0x183
648                     
649                     	.area DSEG(DATA)
650                     _LCDCN5	.equ	0x184
651                     
652                     	.area DSEG(DATA)
653                     _LCDCN6	.equ	0x185
654                     
655                     	.area DSEG(DATA)
656                     _LCDCN7	.equ	0x186
657                     
658                     	.area DSEG(DATA)
659                     _LCDCN8	.equ	0x187
660                     
661                     	.area DSEG(DATA)
662                     _LCD0	.equ	0x188
663                     
664                     	.area DSEG(DATA)
665                     _LCD1	.equ	0x189
666                     
667                     	.area DSEG(DATA)
668                     _LCD2	.equ	0x18A
669                     
670                     	.area DSEG(DATA)
671                     _LCD3	.equ	0x18B
672                     
673                     	.area DSEG(DATA)
674                     _LCD4	.equ	0x18C
675                     
676                     	.area DSEG(DATA)
677                     _LCD5	.equ	0x18D
678                     
679                     	.area DSEG(DATA)
680                     _LCD6	.equ	0x18E
681                     
682                     	.area DSEG(DATA)
683                     _LCD7	.equ	0x18F
684                     
685                     	.area DSEG(DATA)
686                     _LCD8	.equ	0x190
687                     
688                     	.area DSEG(DATA)
689                     _LCD9	.equ	0x191
690                     
691                     	.area DSEG(DATA)
692                     _UR2CN	.equ	0x192
693                     
694                     	.area DSEG(DATA)
695                     _UR2STA	.equ	0x193
696                     
697                     	.area DSEG(DATA)
698                     _BA2CN	.equ	0x194
699                     
700                     	.area DSEG(DATA)
701                     _BG2RH	.equ	0x195
702                     
703                     	.area DSEG(DATA)
704                     _BG2RL	.equ	0x196
705                     
706                     	.area DSEG(DATA)
707                     _TX2R	.equ	0x197
708                     
709                     	.area DSEG(DATA)
710                     _RC2REG	.equ	0x198
711                     
712                     	.area DSEG(DATA)
713                     _TMA2R	.equ	0x1E8
714                     
715                     	.area DSEG(DATA)
716                     _TMA2C	.equ	0x1E9
717                     
718                     	.area DSEG(DATA)
719                     _LEDCN	.equ	0x1EA
720                     
721                     	.area DSEG(DATA)
722                     _IQ0	.equ	0x1EB
723                     
724                     	.area DSEG(DATA)
725                     _IQ1	.equ	0x1EC
726                     
727                     	.area DSEG(DATA)
728                     _DGCON1	.equ	0x1ED
729                     
730                     	.area DSEG(DATA)
731                     _DGCON2	.equ	0x1EE
732                     
733                     	.area DSEG(DATA)
734                     _ADCRH	.equ	0x3A
735                     
736                     	.area DSEG(DATA)
737                     _ADCRM	.equ	0x3B
738                     
739                     	.area DSEG(DATA)
740                     _ADCRL	.equ	0x3C
741                     
742                     ;--------------------------------------------------------
743                     ; absolute symbol definitions
744                     ;--------------------------------------------------------
745                     ;--------------------------------------------------------
746                     ; compiler-defined variables
747                     ;--------------------------------------------------------
748                     	.area IDATA (DATA,REL,CON); pre-def
749                     	.area IDATAROM (CODE,REL,CON); pre-def
750                     	.area UDATA (DATA,REL,CON); pre-def
751                     	.area LOCALSTK (STK); local stack var
752 @FSR2-00 --         _UART0_BGRSet_STK00:	.ds	1
753                     	.globl _UART0_BGRSet_STK00
754 0000 --             _UART2_BGRSet_STK00:	.ds	1
755                     	.globl _UART2_BGRSet_STK00
756                     ;--------------------------------------------------------
757                     ; initialized data
758                     ;--------------------------------------------------------
759                     ;--------------------------------------------------------
760                     ; initialized data - mirror
761                     ;--------------------------------------------------------
762                     	;Following is optimization info, 
763                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
764                     	;--cdb--W:r0x1095:NULL+0:-1:1
765                     	;--cdb--W:r0x1094:NULL+0:-1:1
766                     	;--cdb--W:r0x1096:NULL+0:-1:1
767                     	;--cdb--W:r0x1093:NULL+0:-1:1
768                     	;--cdb--W:r0x108F:NULL+0:-1:1
769                     	;--cdb--W:r0x108E:NULL+0:-1:1
770                     	;--cdb--W:r0x1090:NULL+0:-1:1
771                     	;--cdb--W:r0x108D:NULL+0:-1:1
772                     	;--c2db--RNG$_UART0_BGRSet_BGR_10000_3$42$47
773                     	;--c2db--RNG$_UART2_BGRSet_BGR_10000_5$25$30
774                     	END
