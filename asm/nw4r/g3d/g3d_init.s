.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn G3dInit__Q24nw4r3g3dFb, global
/* 803FCD3C 003C62FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FCD40 003C6300  7C 08 02 A6 */	mflr r0
/* 803FCD44 003C6304  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FCD48 003C6308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FCD4C 003C630C  7C 7F 1B 78 */	mr r31, r3
/* 803FCD50 003C6310  80 6D 9C 60 */	lwz r3, lbl_80665DE0@sda21(r13)
/* 803FCD54 003C6314  4B F5 5F AD */	bl OSRegisterVersion
/* 803FCD58 003C6318  2C 1F 00 00 */	cmpwi r31, 0
/* 803FCD5C 003C631C  41 82 00 0C */	beq .L_803FCD68
/* 803FCD60 003C6320  48 02 F0 C1 */	bl Enable__Q34nw4r2ut2LCFv
/* 803FCD64 003C6324  48 00 00 08 */	b .L_803FCD6C
.L_803FCD68:
/* 803FCD68 003C6328  48 02 F1 19 */	bl Disable__Q34nw4r2ut2LCFv
.L_803FCD6C:
/* 803FCD6C 003C632C  38 60 00 04 */	li r3, 4
/* 803FCD70 003C6330  64 63 00 04 */	oris r3, r3, 4
/* 803FCD74 003C6334  7C 72 E3 A6 */	mtspr 0x392, r3
/* 803FCD78 003C6338  38 60 00 05 */	li r3, 5
/* 803FCD7C 003C633C  64 63 00 05 */	oris r3, r3, 5
/* 803FCD80 003C6340  7C 73 E3 A6 */	mtspr 0x393, r3
/* 803FCD84 003C6344  38 60 00 06 */	li r3, 6
/* 803FCD88 003C6348  64 63 00 06 */	oris r3, r3, 6
/* 803FCD8C 003C634C  7C 74 E3 A6 */	mtspr 0x394, r3
/* 803FCD90 003C6350  38 60 00 07 */	li r3, 7
/* 803FCD94 003C6354  64 63 00 07 */	oris r3, r3, 7
/* 803FCD98 003C6358  7C 75 E3 A6 */	mtspr 0x395, r3
/* 803FCD9C 003C635C  3C 80 05 07 */	lis r4, 0x05070507@ha
/* 803FCDA0 003C6360  38 04 05 07 */	addi r0, r4, 0x05070507@l
/* 803FCDA4 003C6364  7C 16 E3 A6 */	mtspr 0x396, r0
/* 803FCDA8 003C6368  3C 80 08 07 */	lis r4, 0x08070807@ha
/* 803FCDAC 003C636C  38 04 08 07 */	addi r0, r4, 0x08070807@l
/* 803FCDB0 003C6370  7C 17 E3 A6 */	mtspr 0x397, r0
/* 803FCDB4 003C6374  4B F6 97 4D */	bl VIGetTvFormat
/* 803FCDB8 003C6378  2C 03 00 02 */	cmpwi r3, 2
/* 803FCDBC 003C637C  41 82 00 48 */	beq .L_803FCE04
/* 803FCDC0 003C6380  40 80 00 14 */	bge .L_803FCDD4
/* 803FCDC4 003C6384  2C 03 00 00 */	cmpwi r3, 0
/* 803FCDC8 003C6388  41 82 00 18 */	beq .L_803FCDE0
/* 803FCDCC 003C638C  40 80 00 20 */	bge .L_803FCDEC
/* 803FCDD0 003C6390  48 00 00 40 */	b .L_803FCE10
.L_803FCDD4:
/* 803FCDD4 003C6394  2C 03 00 05 */	cmpwi r3, 5
/* 803FCDD8 003C6398  41 82 00 20 */	beq .L_803FCDF8
/* 803FCDDC 003C639C  48 00 00 34 */	b .L_803FCE10
.L_803FCDE0:
/* 803FCDE0 003C63A0  3C 60 80 55 */	lis r3, lbl_8054BA74@ha
/* 803FCDE4 003C63A4  38 63 BA 74 */	addi r3, r3, lbl_8054BA74@l
/* 803FCDE8 003C63A8  48 00 00 30 */	b .L_803FCE18
.L_803FCDEC:
/* 803FCDEC 003C63AC  3C 60 80 55 */	lis r3, lbl_8054BCCC@ha
/* 803FCDF0 003C63B0  38 63 BC CC */	addi r3, r3, lbl_8054BCCC@l
/* 803FCDF4 003C63B4  48 00 00 24 */	b .L_803FCE18
.L_803FCDF8:
/* 803FCDF8 003C63B8  3C 60 80 55 */	lis r3, lbl_8054BD80@ha
/* 803FCDFC 003C63BC  38 63 BD 80 */	addi r3, r3, lbl_8054BD80@l
/* 803FCE00 003C63C0  48 00 00 18 */	b .L_803FCE18
.L_803FCE04:
/* 803FCE04 003C63C4  3C 60 80 55 */	lis r3, lbl_8054BBA0@ha
/* 803FCE08 003C63C8  38 63 BB A0 */	addi r3, r3, lbl_8054BBA0@l
/* 803FCE0C 003C63CC  48 00 00 0C */	b .L_803FCE18
.L_803FCE10:
/* 803FCE10 003C63D0  3C 60 80 55 */	lis r3, lbl_8054BA74@ha
/* 803FCE14 003C63D4  38 63 BA 74 */	addi r3, r3, lbl_8054BA74@l
.L_803FCE18:
/* 803FCE18 003C63D8  4B FE DE C5 */	bl SetRenderModeObj__Q34nw4r3g3d8G3DStateFRC16_GXRenderModeObj
/* 803FCE1C 003C63DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FCE20 003C63E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FCE24 003C63E4  7C 08 03 A6 */	mtlr r0
/* 803FCE28 003C63E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803FCE2C 003C63EC  4E 80 00 20 */	blr 
.endfn G3dInit__Q24nw4r3g3dFb

.fn G3dReset__Q24nw4r3g3dFv, global
/* 803FCE30 003C63F0  38 60 07 FF */	li r3, 0x7ff
/* 803FCE34 003C63F4  4B FE E0 B4 */	b Invalidate__Q34nw4r3g3d8G3DStateFUl
.endfn G3dReset__Q24nw4r3g3dFv


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056D108
lbl_8056D108:
	.asciz "<< NW4R    - G3D \tfinal   build: Nov 20 2008 03:23:14 (0x4199_60831) >>"

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_80665DE0
lbl_80665DE0:
	.4byte lbl_8056D108
	.4byte 0
