;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #bf155f72c (MSVC)
;--------------------------------------------------------
; Port for HYCON CPU
;--------------------------------------------------------
;	;CCFROM:"F:\³ÂÓîº½\00 MT ³ÌÐò\01 MT47XX_P56_Ô¤²â\00 MT47XX_P56_V1.2X_Ô¤²â\Src"
;;	.file	".\DOC\Readme.c"
	.module Readme
	;.list	p=HY17P56
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
.area CCODE (code,REL,CON) ; Readme-code 
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------

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

	.globl	_memcpy
;--------------------------------------------------------
; global -2 definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
	.area IDATA (DATA,REL,CON); pre-def
	.area IDATAROM (CODE,REL,CON); pre-def
	.area UDATA (DATA,REL,CON); pre-def
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data - mirror
;--------------------------------------------------------
	END
