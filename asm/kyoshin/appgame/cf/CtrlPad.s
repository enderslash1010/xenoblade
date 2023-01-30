.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_8009689C, global
/* 8009689C 0005FE5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800968A0 0005FE60  7C 08 02 A6 */	mflr r0
/* 800968A4 0005FE64  38 A0 00 00 */	li r5, 0
/* 800968A8 0005FE68  90 01 00 24 */	stw r0, 0x24(r1)
/* 800968AC 0005FE6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800968B0 0005FE70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800968B4 0005FE74  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800968B8 0005FE78  7C 7D 1B 78 */	mr r29, r3
/* 800968BC 0005FE7C  48 00 23 29 */	bl func_80098BE4
/* 800968C0 0005FE80  3C 60 80 53 */	lis r3, __vt__cf_CtrlPad@ha
/* 800968C4 0005FE84  38 63 B4 50 */	addi r3, r3, __vt__cf_CtrlPad@l
/* 800968C8 0005FE88  90 7D 00 00 */	stw r3, 0(r29)
/* 800968CC 0005FE8C  4B FF 08 F1 */	bl func_800871BC
/* 800968D0 0005FE90  3F E0 80 53 */	lis r31, lbl_8052B3D8@ha
/* 800968D4 0005FE94  90 7D 01 D4 */	stw r3, 0x1d4(r29)
/* 800968D8 0005FE98  3B FF B3 D8 */	addi r31, r31, lbl_8052B3D8@l
/* 800968DC 0005FE9C  3B C0 00 00 */	li r30, 0
.L_800968E0:
/* 800968E0 0005FEA0  80 9F 00 00 */	lwz r4, 0(r31)
/* 800968E4 0005FEA4  7F C3 F3 78 */	mr r3, r30
/* 800968E8 0005FEA8  48 00 22 E9 */	bl func_80098BD0
/* 800968EC 0005FEAC  3B DE 00 01 */	addi r30, r30, 1
/* 800968F0 0005FEB0  3B FF 00 04 */	addi r31, r31, 4
/* 800968F4 0005FEB4  2C 1E 00 1E */	cmpwi r30, 0x1e
/* 800968F8 0005FEB8  41 80 FF E8 */	blt .L_800968E0
/* 800968FC 0005FEBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80096900 0005FEC0  7F A3 EB 78 */	mr r3, r29
/* 80096904 0005FEC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80096908 0005FEC8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8009690C 0005FECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80096910 0005FED0  7C 08 03 A6 */	mtlr r0
/* 80096914 0005FED4  38 21 00 20 */	addi r1, r1, 0x20
/* 80096918 0005FED8  4E 80 00 20 */	blr 
.endfn func_8009689C

.fn func_8009691C, global
/* 8009691C 0005FEDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80096920 0005FEE0  7C 08 02 A6 */	mflr r0
/* 80096924 0005FEE4  2C 03 00 00 */	cmpwi r3, 0
/* 80096928 0005FEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009692C 0005FEEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80096930 0005FEF0  7C 9F 23 78 */	mr r31, r4
/* 80096934 0005FEF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80096938 0005FEF8  7C 7E 1B 78 */	mr r30, r3
/* 8009693C 0005FEFC  41 82 00 1C */	beq .L_80096958
/* 80096940 0005FF00  38 80 00 00 */	li r4, 0
/* 80096944 0005FF04  48 00 07 8D */	bl func_800970D0
/* 80096948 0005FF08  2C 1F 00 00 */	cmpwi r31, 0
/* 8009694C 0005FF0C  40 81 00 0C */	ble .L_80096958
/* 80096950 0005FF10  7F C3 F3 78 */	mr r3, r30
/* 80096954 0005FF14  48 39 E2 D9 */	bl __dl__FPv
.L_80096958:
/* 80096958 0005FF18  7F C3 F3 78 */	mr r3, r30
/* 8009695C 0005FF1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80096960 0005FF20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80096964 0005FF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80096968 0005FF28  7C 08 03 A6 */	mtlr r0
/* 8009696C 0005FF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80096970 0005FF30  4E 80 00 20 */	blr 
.endfn func_8009691C

.fn func_80096974, global
/* 80096974 0005FF34  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80096978 0005FF38  7C 08 02 A6 */	mflr r0
/* 8009697C 0005FF3C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80096980 0005FF40  39 61 00 50 */	addi r11, r1, 0x50
/* 80096984 0005FF44  48 22 37 C5 */	bl _savegpr_24
/* 80096988 0005FF48  7C 79 1B 78 */	mr r25, r3
/* 8009698C 0005FF4C  4B FE 70 F1 */	bl func_8007DA7C
/* 80096990 0005FF50  4B FE B8 69 */	bl func_800821F8
/* 80096994 0005FF54  7C 7F 1B 78 */	mr r31, r3
/* 80096998 0005FF58  48 06 7C F5 */	bl func_800FE68C
/* 8009699C 0005FF5C  3C 63 00 01 */	addis r3, r3, 1
/* 800969A0 0005FF60  80 63 90 E4 */	lwz r3, -0x6f1c(r3)
/* 800969A4 0005FF64  48 02 06 E9 */	bl func_800B708C
/* 800969A8 0005FF68  83 19 00 5C */	lwz r24, 0x5c(r25)
/* 800969AC 0005FF6C  7C 7E 1B 78 */	mr r30, r3
/* 800969B0 0005FF70  80 78 00 04 */	lwz r3, 4(r24)
/* 800969B4 0005FF74  81 83 00 00 */	lwz r12, 0(r3)
/* 800969B8 0005FF78  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 800969BC 0005FF7C  7D 89 03 A6 */	mtctr r12
/* 800969C0 0005FF80  4E 80 04 21 */	bctrl 
/* 800969C4 0005FF84  80 03 00 00 */	lwz r0, 0(r3)
/* 800969C8 0005FF88  7F 03 C3 78 */	mr r3, r24
/* 800969CC 0005FF8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800969D0 0005FF90  38 81 00 10 */	addi r4, r1, 0x10
/* 800969D4 0005FF94  38 A0 00 01 */	li r5, 1
/* 800969D8 0005FF98  48 0D E2 C1 */	bl func_80174C98
/* 800969DC 0005FF9C  2C 03 00 00 */	cmpwi r3, 0
/* 800969E0 0005FFA0  40 82 04 F0 */	bne .L_80096ED0
/* 800969E4 0005FFA4  83 19 00 5C */	lwz r24, 0x5c(r25)
/* 800969E8 0005FFA8  80 78 00 04 */	lwz r3, 4(r24)
/* 800969EC 0005FFAC  81 83 00 00 */	lwz r12, 0(r3)
/* 800969F0 0005FFB0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 800969F4 0005FFB4  7D 89 03 A6 */	mtctr r12
/* 800969F8 0005FFB8  4E 80 04 21 */	bctrl 
/* 800969FC 0005FFBC  80 03 00 00 */	lwz r0, 0(r3)
/* 80096A00 0005FFC0  7F 03 C3 78 */	mr r3, r24
/* 80096A04 0005FFC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80096A08 0005FFC8  38 81 00 0C */	addi r4, r1, 0xc
/* 80096A0C 0005FFCC  38 A0 00 02 */	li r5, 2
/* 80096A10 0005FFD0  48 0D E2 89 */	bl func_80174C98
/* 80096A14 0005FFD4  2C 03 00 00 */	cmpwi r3, 0
/* 80096A18 0005FFD8  41 82 00 08 */	beq .L_80096A20
/* 80096A1C 0005FFDC  48 00 04 B4 */	b .L_80096ED0
.L_80096A20:
/* 80096A20 0005FFE0  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096A24 0005FFE4  3B A0 00 00 */	li r29, 0
/* 80096A28 0005FFE8  3B 80 00 00 */	li r28, 0
/* 80096A2C 0005FFEC  3B 60 00 00 */	li r27, 0
/* 80096A30 0005FFF0  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096A34 0005FFF4  3B 40 00 00 */	li r26, 0
/* 80096A38 0005FFF8  38 80 04 00 */	li r4, 0x400
/* 80096A3C 0005FFFC  38 A0 00 01 */	li r5, 1
/* 80096A40 00060000  81 83 00 00 */	lwz r12, 0(r3)
/* 80096A44 00060004  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80096A48 00060008  7D 89 03 A6 */	mtctr r12
/* 80096A4C 0006000C  4E 80 04 21 */	bctrl 
/* 80096A50 00060010  38 60 00 12 */	li r3, 0x12
/* 80096A54 00060014  48 00 21 21 */	bl func_80098B74
/* 80096A58 00060018  81 99 00 00 */	lwz r12, 0(r25)
/* 80096A5C 0006001C  7C 78 1B 78 */	mr r24, r3
/* 80096A60 00060020  7F 23 CB 78 */	mr r3, r25
/* 80096A64 00060024  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80096A68 00060028  7D 89 03 A6 */	mtctr r12
/* 80096A6C 0006002C  4E 80 04 21 */	bctrl 
/* 80096A70 00060030  80 03 00 00 */	lwz r0, 0(r3)
/* 80096A74 00060034  7C 00 C0 38 */	and r0, r0, r24
/* 80096A78 00060038  7C 00 00 34 */	cntlzw r0, r0
/* 80096A7C 0006003C  54 00 D9 7E */	srwi r0, r0, 5
/* 80096A80 00060040  7C 00 00 34 */	cntlzw r0, r0
/* 80096A84 00060044  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80096A88 00060048  41 82 00 88 */	beq .L_80096B10
/* 80096A8C 0006004C  2C 1E 00 00 */	cmpwi r30, 0
/* 80096A90 00060050  41 82 00 78 */	beq .L_80096B08
/* 80096A94 00060054  81 99 00 00 */	lwz r12, 0(r25)
/* 80096A98 00060058  7F 23 CB 78 */	mr r3, r25
/* 80096A9C 0006005C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80096AA0 00060060  7D 89 03 A6 */	mtctr r12
/* 80096AA4 00060064  4E 80 04 21 */	bctrl 
/* 80096AA8 00060068  80 03 00 00 */	lwz r0, 0(r3)
/* 80096AAC 0006006C  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80096AB0 00060070  7C 00 00 34 */	cntlzw r0, r0
/* 80096AB4 00060074  54 00 D9 7E */	srwi r0, r0, 5
/* 80096AB8 00060078  7C 00 00 34 */	cntlzw r0, r0
/* 80096ABC 0006007C  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80096AC0 00060080  40 82 00 48 */	bne .L_80096B08
/* 80096AC4 00060084  38 60 00 12 */	li r3, 0x12
/* 80096AC8 00060088  48 00 20 AD */	bl func_80098B74
/* 80096ACC 0006008C  81 99 00 00 */	lwz r12, 0(r25)
/* 80096AD0 00060090  7C 78 1B 78 */	mr r24, r3
/* 80096AD4 00060094  7F 23 CB 78 */	mr r3, r25
/* 80096AD8 00060098  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80096ADC 0006009C  7D 89 03 A6 */	mtctr r12
/* 80096AE0 000600A0  4E 80 04 21 */	bctrl 
/* 80096AE4 000600A4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80096AE8 000600A8  7C 00 C0 38 */	and r0, r0, r24
/* 80096AEC 000600AC  7C 00 00 34 */	cntlzw r0, r0
/* 80096AF0 000600B0  54 00 D9 7E */	srwi r0, r0, 5
/* 80096AF4 000600B4  7C 00 00 34 */	cntlzw r0, r0
/* 80096AF8 000600B8  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80096AFC 000600BC  41 82 00 24 */	beq .L_80096B20
/* 80096B00 000600C0  3B A0 00 01 */	li r29, 1
/* 80096B04 000600C4  48 00 00 1C */	b .L_80096B20
.L_80096B08:
/* 80096B08 000600C8  3B 80 00 01 */	li r28, 1
/* 80096B0C 000600CC  48 00 00 14 */	b .L_80096B20
.L_80096B10:
/* 80096B10 000600D0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80096B14 000600D4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80096B18 000600D8  41 82 00 08 */	beq .L_80096B20
/* 80096B1C 000600DC  3B 80 00 01 */	li r28, 1
.L_80096B20:
/* 80096B20 000600E0  38 60 00 10 */	li r3, 0x10
/* 80096B24 000600E4  48 00 20 51 */	bl func_80098B74
/* 80096B28 000600E8  81 99 00 00 */	lwz r12, 0(r25)
/* 80096B2C 000600EC  7C 78 1B 78 */	mr r24, r3
/* 80096B30 000600F0  7F 23 CB 78 */	mr r3, r25
/* 80096B34 000600F4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80096B38 000600F8  7D 89 03 A6 */	mtctr r12
/* 80096B3C 000600FC  4E 80 04 21 */	bctrl 
/* 80096B40 00060100  80 03 00 00 */	lwz r0, 0(r3)
/* 80096B44 00060104  7C 00 C0 38 */	and r0, r0, r24
/* 80096B48 00060108  7C 00 00 34 */	cntlzw r0, r0
/* 80096B4C 0006010C  54 00 D9 7E */	srwi r0, r0, 5
/* 80096B50 00060110  7C 00 00 34 */	cntlzw r0, r0
/* 80096B54 00060114  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80096B58 00060118  40 82 00 20 */	bne .L_80096B78
/* 80096B5C 0006011C  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096B60 00060120  38 80 20 00 */	li r4, 0x2000
/* 80096B64 00060124  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096B68 00060128  81 83 00 00 */	lwz r12, 0(r3)
/* 80096B6C 0006012C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80096B70 00060130  7D 89 03 A6 */	mtctr r12
/* 80096B74 00060134  4E 80 04 21 */	bctrl 
.L_80096B78:
/* 80096B78 00060138  2C 1C 00 00 */	cmpwi r28, 0
/* 80096B7C 0006013C  41 82 00 64 */	beq .L_80096BE0
/* 80096B80 00060140  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096B84 00060144  38 80 20 00 */	li r4, 0x2000
/* 80096B88 00060148  38 A0 00 01 */	li r5, 1
/* 80096B8C 0006014C  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096B90 00060150  81 83 00 00 */	lwz r12, 0(r3)
/* 80096B94 00060154  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80096B98 00060158  7D 89 03 A6 */	mtctr r12
/* 80096B9C 0006015C  4E 80 04 21 */	bctrl 
/* 80096BA0 00060160  80 1F 00 04 */	lwz r0, 4(r31)
/* 80096BA4 00060164  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80096BA8 00060168  41 82 00 38 */	beq .L_80096BE0
/* 80096BAC 0006016C  7F E3 FB 78 */	mr r3, r31
/* 80096BB0 00060170  38 80 00 10 */	li r4, 0x10
/* 80096BB4 00060174  4B FD 50 69 */	bl func_8006BC1C
/* 80096BB8 00060178  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096BBC 0006017C  38 80 04 00 */	li r4, 0x400
/* 80096BC0 00060180  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096BC4 00060184  81 83 00 00 */	lwz r12, 0(r3)
/* 80096BC8 00060188  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80096BCC 0006018C  7D 89 03 A6 */	mtctr r12
/* 80096BD0 00060190  4E 80 04 21 */	bctrl 
/* 80096BD4 00060194  2C 03 00 00 */	cmpwi r3, 0
/* 80096BD8 00060198  40 82 00 08 */	bne .L_80096BE0
/* 80096BDC 0006019C  3B 40 00 01 */	li r26, 1
.L_80096BE0:
/* 80096BE0 000601A0  2C 1D 00 00 */	cmpwi r29, 0
/* 80096BE4 000601A4  41 82 00 48 */	beq .L_80096C2C
/* 80096BE8 000601A8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80096BEC 000601AC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80096BF0 000601B0  40 82 00 3C */	bne .L_80096C2C
/* 80096BF4 000601B4  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096BF8 000601B8  38 80 20 00 */	li r4, 0x2000
/* 80096BFC 000601BC  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096C00 000601C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80096C04 000601C4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80096C08 000601C8  7D 89 03 A6 */	mtctr r12
/* 80096C0C 000601CC  4E 80 04 21 */	bctrl 
/* 80096C10 000601D0  2C 03 00 00 */	cmpwi r3, 0
/* 80096C14 000601D4  40 82 00 18 */	bne .L_80096C2C
/* 80096C18 000601D8  7F E3 FB 78 */	mr r3, r31
/* 80096C1C 000601DC  38 80 00 10 */	li r4, 0x10
/* 80096C20 000601E0  38 A0 00 01 */	li r5, 1
/* 80096C24 000601E4  4B FD 4F D1 */	bl func_8006BBF4
/* 80096C28 000601E8  3B 60 00 01 */	li r27, 1
.L_80096C2C:
/* 80096C2C 000601EC  80 1F 00 04 */	lwz r0, 4(r31)
/* 80096C30 000601F0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80096C34 000601F4  41 82 00 30 */	beq .L_80096C64
/* 80096C38 000601F8  81 9E 00 00 */	lwz r12, 0(r30)
/* 80096C3C 000601FC  7F C3 F3 78 */	mr r3, r30
/* 80096C40 00060200  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 80096C44 00060204  7D 89 03 A6 */	mtctr r12
/* 80096C48 00060208  4E 80 04 21 */	bctrl 
/* 80096C4C 0006020C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80096C50 00060210  7C 64 1B 78 */	mr r4, r3
/* 80096C54 00060214  7F E3 FB 78 */	mr r3, r31
/* 80096C58 00060218  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80096C5C 0006021C  7D 89 03 A6 */	mtctr r12
/* 80096C60 00060220  4E 80 04 21 */	bctrl 
.L_80096C64:
/* 80096C64 00060224  38 60 00 13 */	li r3, 0x13
/* 80096C68 00060228  48 00 1F 0D */	bl func_80098B74
/* 80096C6C 0006022C  81 99 00 00 */	lwz r12, 0(r25)
/* 80096C70 00060230  7C 7C 1B 78 */	mr r28, r3
/* 80096C74 00060234  7F 23 CB 78 */	mr r3, r25
/* 80096C78 00060238  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80096C7C 0006023C  7D 89 03 A6 */	mtctr r12
/* 80096C80 00060240  4E 80 04 21 */	bctrl 
/* 80096C84 00060244  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80096C88 00060248  7C 00 E0 38 */	and r0, r0, r28
/* 80096C8C 0006024C  7C 00 00 34 */	cntlzw r0, r0
/* 80096C90 00060250  54 00 D9 7E */	srwi r0, r0, 5
/* 80096C94 00060254  7C 00 00 34 */	cntlzw r0, r0
/* 80096C98 00060258  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80096C9C 0006025C  41 82 00 14 */	beq .L_80096CB0
/* 80096CA0 00060260  7F E3 FB 78 */	mr r3, r31
/* 80096CA4 00060264  38 80 00 20 */	li r4, 0x20
/* 80096CA8 00060268  38 A0 00 01 */	li r5, 1
/* 80096CAC 0006026C  4B FD 4F 49 */	bl func_8006BBF4
.L_80096CB0:
/* 80096CB0 00060270  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096CB4 00060274  38 80 04 00 */	li r4, 0x400
/* 80096CB8 00060278  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096CBC 0006027C  81 83 00 00 */	lwz r12, 0(r3)
/* 80096CC0 00060280  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80096CC4 00060284  7D 89 03 A6 */	mtctr r12
/* 80096CC8 00060288  4E 80 04 21 */	bctrl 
/* 80096CCC 0006028C  7C 60 00 34 */	cntlzw r0, r3
/* 80096CD0 00060290  7F E3 FB 78 */	mr r3, r31
/* 80096CD4 00060294  54 05 D9 7E */	srwi r5, r0, 5
/* 80096CD8 00060298  38 80 00 03 */	li r4, 3
/* 80096CDC 0006029C  4B FD 4F 19 */	bl func_8006BBF4
/* 80096CE0 000602A0  38 60 00 14 */	li r3, 0x14
/* 80096CE4 000602A4  48 00 1E 91 */	bl func_80098B74
/* 80096CE8 000602A8  81 99 00 00 */	lwz r12, 0(r25)
/* 80096CEC 000602AC  7C 7C 1B 78 */	mr r28, r3
/* 80096CF0 000602B0  7F 23 CB 78 */	mr r3, r25
/* 80096CF4 000602B4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80096CF8 000602B8  7D 89 03 A6 */	mtctr r12
/* 80096CFC 000602BC  4E 80 04 21 */	bctrl 
/* 80096D00 000602C0  80 03 00 04 */	lwz r0, 4(r3)
/* 80096D04 000602C4  7C 00 E0 38 */	and r0, r0, r28
/* 80096D08 000602C8  7C 00 00 34 */	cntlzw r0, r0
/* 80096D0C 000602CC  54 00 D9 7E */	srwi r0, r0, 5
/* 80096D10 000602D0  7C 00 00 34 */	cntlzw r0, r0
/* 80096D14 000602D4  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80096D18 000602D8  41 82 00 38 */	beq .L_80096D50
/* 80096D1C 000602DC  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096D20 000602E0  38 80 10 00 */	li r4, 0x1000
/* 80096D24 000602E4  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096D28 000602E8  81 83 00 00 */	lwz r12, 0(r3)
/* 80096D2C 000602EC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80096D30 000602F0  7D 89 03 A6 */	mtctr r12
/* 80096D34 000602F4  4E 80 04 21 */	bctrl 
/* 80096D38 000602F8  2C 03 00 00 */	cmpwi r3, 0
/* 80096D3C 000602FC  41 82 00 08 */	beq .L_80096D44
/* 80096D40 00060300  3B 40 00 01 */	li r26, 1
.L_80096D44:
/* 80096D44 00060304  2C 03 00 00 */	cmpwi r3, 0
/* 80096D48 00060308  40 82 00 08 */	bne .L_80096D50
/* 80096D4C 0006030C  3B 60 00 01 */	li r27, 1
.L_80096D50:
/* 80096D50 00060310  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096D54 00060314  38 80 10 00 */	li r4, 0x1000
/* 80096D58 00060318  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096D5C 0006031C  81 83 00 00 */	lwz r12, 0(r3)
/* 80096D60 00060320  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80096D64 00060324  7D 89 03 A6 */	mtctr r12
/* 80096D68 00060328  4E 80 04 21 */	bctrl 
/* 80096D6C 0006032C  2C 03 00 00 */	cmpwi r3, 0
/* 80096D70 00060330  41 82 00 8C */	beq .L_80096DFC
/* 80096D74 00060334  2C 1E 00 00 */	cmpwi r30, 0
/* 80096D78 00060338  41 82 00 80 */	beq .L_80096DF8
/* 80096D7C 0006033C  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096D80 00060340  85 83 3E 9C */	lwzu r12, 0x3e9c(r3)
/* 80096D84 00060344  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 80096D88 00060348  7D 89 03 A6 */	mtctr r12
/* 80096D8C 0006034C  4E 80 04 21 */	bctrl 
/* 80096D90 00060350  81 9E 00 00 */	lwz r12, 0(r30)
/* 80096D94 00060354  7C 78 1B 78 */	mr r24, r3
/* 80096D98 00060358  7F C3 F3 78 */	mr r3, r30
/* 80096D9C 0006035C  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 80096DA0 00060360  7D 89 03 A6 */	mtctr r12
/* 80096DA4 00060364  4E 80 04 21 */	bctrl 
/* 80096DA8 00060368  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 80096DAC 0006036C  38 81 00 14 */	addi r4, r1, 0x14
/* 80096DB0 00060370  E0 38 00 00 */	psq_l f1, 0(r24), 0, qr0
/* 80096DB4 00060374  10 02 08 28 */	ps_sub f0, f2, f1
/* 80096DB8 00060378  E0 43 80 08 */	psq_l f2, 8(r3), 1, qr0
/* 80096DBC 0006037C  E0 38 80 08 */	psq_l f1, 8(r24), 1, qr0
/* 80096DC0 00060380  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 80096DC4 00060384  10 02 08 28 */	ps_sub f0, f2, f1
/* 80096DC8 00060388  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80096DCC 0006038C  F0 04 80 08 */	psq_st f0, 8(r4), 1, qr0
/* 80096DD0 00060390  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80096DD4 00060394  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80096DD8 00060398  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80096DDC 0006039C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80096DE0 000603A0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80096DE4 000603A4  48 37 40 75 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 80096DE8 000603A8  C0 02 8C 20 */	lfs f0, float_80668FA0@sda21(r2)
/* 80096DEC 000603AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80096DF0 000603B0  D0 19 00 10 */	stfs f0, 0x10(r25)
/* 80096DF4 000603B4  48 00 00 08 */	b .L_80096DFC
.L_80096DF8:
/* 80096DF8 000603B8  3B 40 00 01 */	li r26, 1
.L_80096DFC:
/* 80096DFC 000603BC  83 19 00 5C */	lwz r24, 0x5c(r25)
/* 80096E00 000603C0  80 78 00 04 */	lwz r3, 4(r24)
/* 80096E04 000603C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80096E08 000603C8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80096E0C 000603CC  7D 89 03 A6 */	mtctr r12
/* 80096E10 000603D0  4E 80 04 21 */	bctrl 
/* 80096E14 000603D4  80 03 00 00 */	lwz r0, 0(r3)
/* 80096E18 000603D8  7F 03 C3 78 */	mr r3, r24
/* 80096E1C 000603DC  90 01 00 08 */	stw r0, 8(r1)
/* 80096E20 000603E0  38 81 00 08 */	addi r4, r1, 8
/* 80096E24 000603E4  38 A0 00 03 */	li r5, 3
/* 80096E28 000603E8  48 0D DE 71 */	bl func_80174C98
/* 80096E2C 000603EC  2C 03 00 00 */	cmpwi r3, 0
/* 80096E30 000603F0  41 82 00 0C */	beq .L_80096E3C
/* 80096E34 000603F4  3B 40 00 01 */	li r26, 1
/* 80096E38 000603F8  3B 60 00 00 */	li r27, 0
.L_80096E3C:
/* 80096E3C 000603FC  2C 1B 00 00 */	cmpwi r27, 0
/* 80096E40 00060400  41 82 00 48 */	beq .L_80096E88
/* 80096E44 00060404  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096E48 00060408  38 80 10 00 */	li r4, 0x1000
/* 80096E4C 0006040C  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096E50 00060410  81 83 00 00 */	lwz r12, 0(r3)
/* 80096E54 00060414  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80096E58 00060418  7D 89 03 A6 */	mtctr r12
/* 80096E5C 0006041C  4E 80 04 21 */	bctrl 
/* 80096E60 00060420  2C 03 00 00 */	cmpwi r3, 0
/* 80096E64 00060424  40 82 00 24 */	bne .L_80096E88
/* 80096E68 00060428  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096E6C 0006042C  38 80 10 00 */	li r4, 0x1000
/* 80096E70 00060430  38 A0 00 01 */	li r5, 1
/* 80096E74 00060434  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096E78 00060438  81 83 00 00 */	lwz r12, 0(r3)
/* 80096E7C 0006043C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80096E80 00060440  7D 89 03 A6 */	mtctr r12
/* 80096E84 00060444  4E 80 04 21 */	bctrl 
.L_80096E88:
/* 80096E88 00060448  2C 1A 00 00 */	cmpwi r26, 0
/* 80096E8C 0006044C  41 82 00 44 */	beq .L_80096ED0
/* 80096E90 00060450  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096E94 00060454  38 80 10 00 */	li r4, 0x1000
/* 80096E98 00060458  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096E9C 0006045C  81 83 00 00 */	lwz r12, 0(r3)
/* 80096EA0 00060460  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80096EA4 00060464  7D 89 03 A6 */	mtctr r12
/* 80096EA8 00060468  4E 80 04 21 */	bctrl 
/* 80096EAC 0006046C  2C 03 00 00 */	cmpwi r3, 0
/* 80096EB0 00060470  41 82 00 20 */	beq .L_80096ED0
/* 80096EB4 00060474  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 80096EB8 00060478  38 80 10 00 */	li r4, 0x1000
/* 80096EBC 0006047C  80 63 3E D4 */	lwz r3, 0x3ed4(r3)
/* 80096EC0 00060480  81 83 00 00 */	lwz r12, 0(r3)
/* 80096EC4 00060484  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80096EC8 00060488  7D 89 03 A6 */	mtctr r12
/* 80096ECC 0006048C  4E 80 04 21 */	bctrl 
.L_80096ED0:
/* 80096ED0 00060490  39 61 00 50 */	addi r11, r1, 0x50
/* 80096ED4 00060494  48 22 32 C1 */	bl _restgpr_24
/* 80096ED8 00060498  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80096EDC 0006049C  7C 08 03 A6 */	mtlr r0
/* 80096EE0 000604A0  38 21 00 50 */	addi r1, r1, 0x50
/* 80096EE4 000604A4  4E 80 00 20 */	blr 
.endfn func_80096974

.fn func_80096EE8, global
/* 80096EE8 000604A8  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096EEC 000604AC  54 03 4F FE */	rlwinm r3, r0, 9, 0x1f, 0x1f
/* 80096EF0 000604B0  4E 80 00 20 */	blr 
.endfn func_80096EE8

.fn func_80096EF4, global
/* 80096EF4 000604B4  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096EF8 000604B8  54 03 57 FE */	rlwinm r3, r0, 0xa, 0x1f, 0x1f
/* 80096EFC 000604BC  4E 80 00 20 */	blr 
.endfn func_80096EF4

.fn func_80096F00, global
/* 80096F00 000604C0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F04 000604C4  54 03 5F FE */	rlwinm r3, r0, 0xb, 0x1f, 0x1f
/* 80096F08 000604C8  4E 80 00 20 */	blr 
.endfn func_80096F00

.fn func_80096F0C, global
/* 80096F0C 000604CC  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F10 000604D0  54 03 67 FE */	rlwinm r3, r0, 0xc, 0x1f, 0x1f
/* 80096F14 000604D4  4E 80 00 20 */	blr 
.endfn func_80096F0C

.fn func_80096F18, global
/* 80096F18 000604D8  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F1C 000604DC  54 03 6F FE */	rlwinm r3, r0, 0xd, 0x1f, 0x1f
/* 80096F20 000604E0  4E 80 00 20 */	blr 
.endfn func_80096F18

.fn func_80096F24, global
/* 80096F24 000604E4  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F28 000604E8  54 03 77 FE */	rlwinm r3, r0, 0xe, 0x1f, 0x1f
/* 80096F2C 000604EC  4E 80 00 20 */	blr 
.endfn func_80096F24

.fn func_80096F30, global
/* 80096F30 000604F0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F34 000604F4  54 03 7F FE */	rlwinm r3, r0, 0xf, 0x1f, 0x1f
/* 80096F38 000604F8  4E 80 00 20 */	blr 
.endfn func_80096F30

.fn func_80096F3C, global
/* 80096F3C 000604FC  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F40 00060500  54 03 87 FE */	rlwinm r3, r0, 0x10, 0x1f, 0x1f
/* 80096F44 00060504  4E 80 00 20 */	blr 
.endfn func_80096F3C

.fn func_80096F48, global
/* 80096F48 00060508  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F4C 0006050C  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 80096F50 00060510  4E 80 00 20 */	blr 
.endfn func_80096F48

.fn func_80096F54, global
/* 80096F54 00060514  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F58 00060518  54 03 97 FE */	rlwinm r3, r0, 0x12, 0x1f, 0x1f
/* 80096F5C 0006051C  4E 80 00 20 */	blr 
.endfn func_80096F54

.fn func_80096F60, global
/* 80096F60 00060520  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F64 00060524  54 03 9F FE */	rlwinm r3, r0, 0x13, 0x1f, 0x1f
/* 80096F68 00060528  4E 80 00 20 */	blr 
.endfn func_80096F60

.fn func_80096F6C, global
/* 80096F6C 0006052C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F70 00060530  54 03 A7 FE */	rlwinm r3, r0, 0x14, 0x1f, 0x1f
/* 80096F74 00060534  4E 80 00 20 */	blr 
.endfn func_80096F6C

.fn func_80096F78, global
/* 80096F78 00060538  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F7C 0006053C  54 03 AF FE */	rlwinm r3, r0, 0x15, 0x1f, 0x1f
/* 80096F80 00060540  4E 80 00 20 */	blr 
.endfn func_80096F78

.fn func_80096F84, global
/* 80096F84 00060544  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F88 00060548  54 03 B7 FE */	rlwinm r3, r0, 0x16, 0x1f, 0x1f
/* 80096F8C 0006054C  4E 80 00 20 */	blr 
.endfn func_80096F84

.fn func_80096F90, global
/* 80096F90 00060550  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096F94 00060554  54 03 BF FE */	rlwinm r3, r0, 0x17, 0x1f, 0x1f
/* 80096F98 00060558  4E 80 00 20 */	blr 
.endfn func_80096F90

.fn func_80096F9C, global
/* 80096F9C 0006055C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80096FA0 00060560  54 03 C7 FE */	rlwinm r3, r0, 0x18, 0x1f, 0x1f
/* 80096FA4 00060564  4E 80 00 20 */	blr 
.endfn func_80096F9C

.fn func_80096FA8, global
/* 80096FA8 00060568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80096FAC 0006056C  7C 08 02 A6 */	mflr r0
/* 80096FB0 00060570  2C 03 00 00 */	cmpwi r3, 0
/* 80096FB4 00060574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80096FB8 00060578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80096FBC 0006057C  7C 9F 23 78 */	mr r31, r4
/* 80096FC0 00060580  93 C1 00 08 */	stw r30, 8(r1)
/* 80096FC4 00060584  7C 7E 1B 78 */	mr r30, r3
/* 80096FC8 00060588  41 82 00 20 */	beq .L_80096FE8
/* 80096FCC 0006058C  41 82 00 0C */	beq .L_80096FD8
/* 80096FD0 00060590  38 80 00 00 */	li r4, 0
/* 80096FD4 00060594  48 00 00 FD */	bl func_800970D0
.L_80096FD8:
/* 80096FD8 00060598  2C 1F 00 00 */	cmpwi r31, 0
/* 80096FDC 0006059C  40 81 00 0C */	ble .L_80096FE8
/* 80096FE0 000605A0  7F C3 F3 78 */	mr r3, r30
/* 80096FE4 000605A4  48 39 DC 49 */	bl __dl__FPv
.L_80096FE8:
/* 80096FE8 000605A8  7F C3 F3 78 */	mr r3, r30
/* 80096FEC 000605AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80096FF0 000605B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80096FF4 000605B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80096FF8 000605B8  7C 08 03 A6 */	mtlr r0
/* 80096FFC 000605BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80097000 000605C0  4E 80 00 20 */	blr 
.endfn func_80096FA8


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0




.global cf_CtrlPad_typestr
cf_CtrlPad_typestr:
	.asciz "cf::CtrlPad"

.global cf_CtrlRemote_typestr
cf_CtrlRemote_typestr:
	.asciz "cf::CtrlRemote"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global lbl_8052B3D8
lbl_8052B3D8:
	.4byte 0
	.4byte 0
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000010
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00001000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x00000008
	.4byte 0x00000800
	.4byte 0
	.4byte 0x00000800
	.4byte 0x00000800
	.4byte 0x00000080
	.4byte 0x00000600
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__cf_CtrlPad
__vt__cf_CtrlPad:
	.4byte __RTTI__cf_CtrlPad
	.4byte 0
	.4byte func_80096FA8
	.4byte func_80098CB8
	.4byte func_8009C860
	.4byte func_8009C87C
	.4byte func_80096F9C
	.4byte func_80096F90
	.4byte func_80096F84
	.4byte func_80096F78
	.4byte func_80096F6C
	.4byte func_80096F60
	.4byte func_80096F54
	.4byte func_80096F48
	.4byte func_80096F3C
	.4byte func_800888A0
	.4byte func_80096F24
	.4byte func_80096F18
	.4byte func_80096F0C
	.4byte func_80096F00
	.4byte func_80096EF4
	.4byte func_80096EE8
	.4byte func_800D1F0C
	.4byte func_8009C6BC
	.4byte func_800D11B0
	.4byte func_800987A0
	.4byte func_800987EC
	.4byte func_800987F8
	.4byte func_80098800
	.4byte func_80098808
	.4byte func_800D2A5C
	.4byte func_800D2D64
	.4byte func_80098810
	.4byte func_80098A04
	.4byte func_800D34D4
	.4byte func_80098EF8
	.4byte func_80097A5C
	.4byte func_80097C74
	.4byte func_80097DFC
	.4byte func_80098AF0
	.4byte func_80098B64
	.4byte func_8009A1DC
	.4byte func_80096974
	.4byte func_8009AE80
	.4byte func_8009B788
	.4byte func_8009BD14
	.4byte func_8009C1BC
	.4byte func_80096F30

.global cf_CtrlPad_hierarchy
cf_CtrlPad_hierarchy:
	.4byte __RTTI__CActInput
	.4byte 0
	.4byte __RTTI__cf_CtrlBase
	.4byte 0
	.4byte __RTTI__cf_CtrlAct
	.4byte 0
	.4byte __RTTI__cf_CtrlPc
	.4byte 0
	.4byte __RTTI__cf_CtrlRemote
	.4byte 0
	.4byte 0

.global cf_CtrlRemote_hierarchy
cf_CtrlRemote_hierarchy:
	.4byte __RTTI__CActInput
	.4byte 0
	.4byte __RTTI__cf_CtrlBase
	.4byte 0
	.4byte __RTTI__cf_CtrlAct
	.4byte 0
	.4byte __RTTI__cf_CtrlPc
	.4byte 0
	.4byte 0

.global cf_CtrlPc_hierarchy
cf_CtrlPc_hierarchy:
	.4byte __RTTI__CActInput
	.4byte 0
	.4byte __RTTI__cf_CtrlBase
	.4byte 0
	.4byte __RTTI__cf_CtrlAct
	.4byte 0
	.4byte 0
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global __RTTI__cf_CtrlPad
__RTTI__cf_CtrlPad:
	.4byte cf_CtrlPad_typestr
	.4byte cf_CtrlPad_hierarchy

.global __RTTI__cf_CtrlRemote
__RTTI__cf_CtrlRemote:
	.4byte cf_CtrlRemote_typestr
	.4byte cf_CtrlRemote_hierarchy

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0



.global float_80668FA0
float_80668FA0:
	.float 0.0245436933 #0x3CC90FDB
	.4byte 0
	

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80008DA4", local
.hidden "@etb_80008DA4"
	.4byte 0x18080000
	.4byte 0x00000034
	.4byte 0x00070010
	.4byte 0x00000000
	.4byte 0x8680001D
	.4byte 0x00000000
	.4byte func_8009691C
.endobj "@etb_80008DA4"

.obj "@etb_80008DC0", local
.hidden "@etb_80008DC0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80008DC0"

.obj "@etb_80008DC8", local
.hidden "@etb_80008DC8"
	.4byte 0x400A0000
	.4byte 0x00000000
.endobj "@etb_80008DC8"

.obj "@etb_80008DD0", local
.hidden "@etb_80008DD0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80008DD0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80024458", local
.hidden "@eti_80024458"
	.4byte func_8009689C
	.4byte 0x00000080
	.4byte "@etb_80008DA4"
.endobj "@eti_80024458"

.obj "@eti_80024464", local
.hidden "@eti_80024464"
	.4byte func_8009691C
	.4byte 0x00000058
	.4byte "@etb_80008DC0"
.endobj "@eti_80024464"

.obj "@eti_80024470", local
.hidden "@eti_80024470"
	.4byte func_80096974
	.4byte 0x00000574
	.4byte "@etb_80008DC8"
.endobj "@eti_80024470"

.obj "@eti_8002447C", local
.hidden "@eti_8002447C"
	.4byte func_80096FA8
	.4byte 0x0000005C
	.4byte "@etb_80008DD0"
.endobj "@eti_8002447C"
