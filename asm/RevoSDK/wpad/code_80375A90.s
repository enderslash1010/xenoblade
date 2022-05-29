.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80375A90
func_80375A90:
/* 80375A90 0033F050  3C 80 80 5E */	lis r4, lbl_805DDAD0@ha
/* 80375A94 0033F054  54 63 10 3A */	slwi r3, r3, 2
/* 80375A98 0033F058  38 84 DA D0 */	addi r4, r4, lbl_805DDAD0@l
/* 80375A9C 0033F05C  38 00 00 00 */	li r0, 0
/* 80375AA0 0033F060  7C 64 18 2E */	lwzx r3, r4, r3
/* 80375AA4 0033F064  90 03 09 98 */	stw r0, 0x998(r3)
/* 80375AA8 0033F068  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80375AAC 0033F06C  B0 03 09 A0 */	sth r0, 0x9a0(r3)
/* 80375AB0 0033F070  90 03 09 A4 */	stw r0, 0x9a4(r3)
/* 80375AB4 0033F074  90 03 09 A8 */	stw r0, 0x9a8(r3)
/* 80375AB8 0033F078  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80375AC0
func_80375AC0:
/* 80375AC0 0033F080  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80375AC4 0033F084  7C 08 02 A6 */	mflr r0
/* 80375AC8 0033F088  90 01 00 34 */	stw r0, 0x34(r1)
/* 80375ACC 0033F08C  39 61 00 30 */	addi r11, r1, 0x30
/* 80375AD0 0033F090  4B F4 46 79 */	bl _savegpr_24
/* 80375AD4 0033F094  3D 00 80 5E */	lis r8, lbl_805DDAD0@ha
/* 80375AD8 0033F098  54 60 10 3A */	slwi r0, r3, 2
/* 80375ADC 0033F09C  39 08 DA D0 */	addi r8, r8, lbl_805DDAD0@l
/* 80375AE0 0033F0A0  7C 78 1B 78 */	mr r24, r3
/* 80375AE4 0033F0A4  7F E8 00 2E */	lwzx r31, r8, r0
/* 80375AE8 0033F0A8  7C 99 23 78 */	mr r25, r4
/* 80375AEC 0033F0AC  7C BA 2B 78 */	mr r26, r5
/* 80375AF0 0033F0B0  7C DB 33 78 */	mr r27, r6
/* 80375AF4 0033F0B4  7C FC 3B 78 */	mr r28, r7
/* 80375AF8 0033F0B8  4B FE 2E B9 */	bl OSDisableInterrupts
/* 80375AFC 0033F0BC  83 BF 08 BC */	lwz r29, 0x8bc(r31)
/* 80375B00 0033F0C0  83 DF 08 DC */	lwz r30, 0x8dc(r31)
/* 80375B04 0033F0C4  4B FE 2E ED */	bl OSRestoreInterrupts
/* 80375B08 0033F0C8  2C 1D FF FF */	cmpwi r29, -1
/* 80375B0C 0033F0CC  41 82 00 40 */	beq lbl_80375B4C
/* 80375B10 0033F0D0  2C 1E 00 00 */	cmpwi r30, 0
/* 80375B14 0033F0D4  40 82 00 0C */	bne lbl_80375B20
/* 80375B18 0033F0D8  3B A0 FF FE */	li r29, -2
/* 80375B1C 0033F0DC  48 00 00 30 */	b lbl_80375B4C
lbl_80375B20:
/* 80375B20 0033F0E0  7F 24 CB 78 */	mr r4, r25
/* 80375B24 0033F0E4  7F 45 D3 78 */	mr r5, r26
/* 80375B28 0033F0E8  7F 87 E3 78 */	mr r7, r28
/* 80375B2C 0033F0EC  38 7F 01 60 */	addi r3, r31, 0x160
/* 80375B30 0033F0F0  67 66 04 A4 */	oris r6, r27, 0x4a4
/* 80375B34 0033F0F4  4B FF A7 ED */	bl WPADiSendWriteData
/* 80375B38 0033F0F8  7C 83 00 D0 */	neg r4, r3
/* 80375B3C 0033F0FC  38 00 FF FE */	li r0, -2
/* 80375B40 0033F100  7C 83 1B 78 */	or r3, r4, r3
/* 80375B44 0033F104  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 80375B48 0033F108  7C 1D 18 78 */	andc r29, r0, r3
lbl_80375B4C:
/* 80375B4C 0033F10C  2C 1D 00 00 */	cmpwi r29, 0
/* 80375B50 0033F110  41 82 00 20 */	beq lbl_80375B70
/* 80375B54 0033F114  2C 1C 00 00 */	cmpwi r28, 0
/* 80375B58 0033F118  41 82 00 18 */	beq lbl_80375B70
/* 80375B5C 0033F11C  7F 8C E3 78 */	mr r12, r28
/* 80375B60 0033F120  7F 03 C3 78 */	mr r3, r24
/* 80375B64 0033F124  7F A4 EB 78 */	mr r4, r29
/* 80375B68 0033F128  7D 89 03 A6 */	mtctr r12
/* 80375B6C 0033F12C  4E 80 04 21 */	bctrl 
lbl_80375B70:
/* 80375B70 0033F130  39 61 00 30 */	addi r11, r1, 0x30
/* 80375B74 0033F134  7F A3 EB 78 */	mr r3, r29
/* 80375B78 0033F138  4B F4 46 1D */	bl _restgpr_24
/* 80375B7C 0033F13C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80375B80 0033F140  7C 08 03 A6 */	mtlr r0
/* 80375B84 0033F144  38 21 00 30 */	addi r1, r1, 0x30
/* 80375B88 0033F148  4E 80 00 20 */	blr 
.balign 16, 0