.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CScnLightMan, global
/* 8048D024 004565E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048D028 004565E8  7C 08 02 A6 */	mflr r0
/* 8048D02C 004565EC  3C A0 80 57 */	lis r5, __vt__12CScnLightMan@ha
/* 8048D030 004565F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048D034 004565F4  38 A5 1D B0 */	addi r5, r5, __vt__12CScnLightMan@l
/* 8048D038 004565F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8048D03C 004565FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8048D040 00456600  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8048D044 00456604  93 81 00 10 */	stw r28, 0x10(r1)
/* 8048D048 00456608  7C 7C 1B 78 */	mr r28, r3
/* 8048D04C 0045660C  90 A3 00 00 */	stw r5, 0(r3)
/* 8048D050 00456610  7F 85 E3 78 */	mr r5, r28
/* 8048D054 00456614  90 83 00 04 */	stw r4, 4(r3)
/* 8048D058 00456618  7C 83 23 78 */	mr r3, r4
/* 8048D05C 0045661C  38 80 00 00 */	li r4, 0
/* 8048D060 00456620  4B FF 53 39 */	bl func_80482398
/* 8048D064 00456624  90 7C 00 08 */	stw r3, 8(r28)
/* 8048D068 00456628  38 80 00 03 */	li r4, 3
/* 8048D06C 0045662C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8048D070 00456630  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8048D074 00456634  4B FF F6 25 */	bl func_8048C698
/* 8048D078 00456638  80 83 00 04 */	lwz r4, 4(r3)
/* 8048D07C 0045663C  7C 7F 1B 78 */	mr r31, r3
/* 8048D080 00456640  83 A4 00 00 */	lwz r29, 0(r4)
/* 8048D084 00456644  48 00 00 30 */	b .L_8048D0B4
.L_8048D088:
/* 8048D088 00456648  83 DD 00 08 */	lwz r30, 8(r29)
/* 8048D08C 0045664C  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 8048D090 00456650  38 7E 00 14 */	addi r3, r30, 0x14
/* 8048D094 00456654  7C 00 00 34 */	cntlzw r0, r0
/* 8048D098 00456658  54 04 D9 7E */	srwi r4, r0, 5
/* 8048D09C 0045665C  48 00 84 11 */	bl func_804954AC
/* 8048D0A0 00456660  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 8048D0A4 00456664  2C 00 00 00 */	cmpwi r0, 0
/* 8048D0A8 00456668  40 82 00 08 */	bne .L_8048D0B0
/* 8048D0AC 0045666C  93 DC 00 08 */	stw r30, 8(r28)
.L_8048D0B0:
/* 8048D0B0 00456670  83 BD 00 00 */	lwz r29, 0(r29)
.L_8048D0B4:
/* 8048D0B4 00456674  80 1F 00 04 */	lwz r0, 4(r31)
/* 8048D0B8 00456678  7C 1D 00 40 */	cmplw r29, r0
/* 8048D0BC 0045667C  40 82 FF CC */	bne .L_8048D088
/* 8048D0C0 00456680  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8048D0C4 00456684  7F 83 E3 78 */	mr r3, r28
/* 8048D0C8 00456688  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8048D0CC 0045668C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8048D0D0 00456690  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8048D0D4 00456694  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048D0D8 00456698  7C 08 03 A6 */	mtlr r0
/* 8048D0DC 0045669C  38 21 00 20 */	addi r1, r1, 0x20
/* 8048D0E0 004566A0  4E 80 00 20 */	blr 
.endfn __ct__CScnLightMan

.fn __dt__CScnLightMan, global
/* 8048D0E4 004566A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D0E8 004566A8  7C 08 02 A6 */	mflr r0
/* 8048D0EC 004566AC  2C 03 00 00 */	cmpwi r3, 0
/* 8048D0F0 004566B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D0F4 004566B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D0F8 004566B8  7C 7F 1B 78 */	mr r31, r3
/* 8048D0FC 004566BC  41 82 00 10 */	beq .L_8048D10C
/* 8048D100 004566C0  2C 04 00 00 */	cmpwi r4, 0
/* 8048D104 004566C4  40 81 00 08 */	ble .L_8048D10C
/* 8048D108 004566C8  4B FA 7B 25 */	bl __dl__FPv
.L_8048D10C:
/* 8048D10C 004566CC  7F E3 FB 78 */	mr r3, r31
/* 8048D110 004566D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D114 004566D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D118 004566D8  7C 08 03 A6 */	mtlr r0
/* 8048D11C 004566DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D120 004566E0  4E 80 00 20 */	blr
.endfn __dt__CScnLightMan

.fn func_8048D124, global
/* 8048D124 004566E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D128 004566E8  7C 08 02 A6 */	mflr r0
/* 8048D12C 004566EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D130 004566F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D134 004566F4  7C 7F 1B 78 */	mr r31, r3
/* 8048D138 004566F8  7C 83 23 78 */	mr r3, r4
/* 8048D13C 004566FC  48 03 28 09 */	bl func_804BF944
/* 8048D140 00456700  80 7F 00 08 */	lwz r3, 8(r31)
/* 8048D144 00456704  38 00 00 01 */	li r0, 1
/* 8048D148 00456708  98 03 12 1C */	stb r0, 0x121c(r3)
/* 8048D14C 0045670C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D150 00456710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D154 00456714  7C 08 03 A6 */	mtlr r0
/* 8048D158 00456718  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D15C 0045671C  4E 80 00 20 */	blr 
.endfn func_8048D124

.fn func_8048D160, global
/* 8048D160 00456720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D164 00456724  7C 08 02 A6 */	mflr r0
/* 8048D168 00456728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D16C 0045672C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D170 00456730  7C 7F 1B 78 */	mr r31, r3
/* 8048D174 00456734  80 83 00 08 */	lwz r4, 8(r3)
/* 8048D178 00456738  88 04 12 1C */	lbz r0, 0x121c(r4)
/* 8048D17C 0045673C  2C 00 00 00 */	cmpwi r0, 0
/* 8048D180 00456740  41 82 00 1C */	beq .L_8048D19C
/* 8048D184 00456744  38 64 00 14 */	addi r3, r4, 0x14
/* 8048D188 00456748  38 80 00 00 */	li r4, 0
/* 8048D18C 0045674C  48 00 88 5D */	bl func_804959E8
/* 8048D190 00456750  80 7F 00 08 */	lwz r3, 8(r31)
/* 8048D194 00456754  38 00 00 00 */	li r0, 0
/* 8048D198 00456758  98 03 12 1C */	stb r0, 0x121c(r3)
.L_8048D19C:
/* 8048D19C 0045675C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D1A0 00456760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D1A4 00456764  7C 08 03 A6 */	mtlr r0
/* 8048D1A8 00456768  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D1AC 0045676C  4E 80 00 20 */	blr 
.endfn func_8048D160

.fn func_8048D1B0, global
/* 8048D1B0 00456770  80 63 00 08 */	lwz r3, 8(r3)
/* 8048D1B4 00456774  81 83 00 00 */	lwz r12, 0(r3)
/* 8048D1B8 00456778  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8048D1BC 0045677C  7D 89 03 A6 */	mtctr r12
/* 8048D1C0 00456780  4E 80 04 20 */	bctr 
.endfn func_8048D1B0

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CScnLightMan_typestr, global
	.asciz "CScnLightMan"
	.balign 4
.endobj CScnLightMan_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__12CScnLightMan, global
	.4byte __RTTI__12CScnLightMan
	.4byte 0
	.4byte __dt__CScnLightMan
	.4byte 0
.endobj __vt__12CScnLightMan


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__12CScnLightMan, global
	.4byte CScnLightMan_typestr
	.4byte 0
.endobj __RTTI__12CScnLightMan

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001EB70", local
.hidden "@etb_8001EB70"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001EB70"

.obj "@etb_8001EB78", local
.hidden "@etb_8001EB78"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001EB78"

.obj "@etb_8001EB80", local
.hidden "@etb_8001EB80"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001EB80"

.obj "@etb_8001EB88", local
.hidden "@etb_8001EB88"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001EB88"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80036740", local
.hidden "@eti_80036740"
	.4byte __ct__CScnLightMan
	.4byte 0x000000C0
	.4byte "@etb_8001EB70"
.endobj "@eti_80036740"

.obj "@eti_8003674C", local
.hidden "@eti_8003674C"
	.4byte __dt__CScnLightMan
	.4byte 0x00000040
	.4byte "@etb_8001EB78"
.endobj "@eti_8003674C"

.obj "@eti_80036758", local
.hidden "@eti_80036758"
	.4byte func_8048D124
	.4byte 0x0000003C
	.4byte "@etb_8001EB80"
.endobj "@eti_80036758"

.obj "@eti_80036764", local
.hidden "@eti_80036764"
	.4byte func_8048D160
	.4byte 0x00000050
	.4byte "@etb_8001EB88"
.endobj "@eti_80036764"
