.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802D0908
func_802D0908:
/* 802D0908 00299EC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D090C 00299ECC  7C 08 02 A6 */	mflr r0
/* 802D0910 00299ED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0914 00299ED4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0918 00299ED8  4B FE 98 39 */	bl _savegpr_26
/* 802D091C 00299EDC  2C 05 00 00 */	cmpwi r5, 0
/* 802D0920 00299EE0  41 82 01 5C */	beq lbl_802D0A7C
/* 802D0924 00299EE4  2C 84 00 00 */	cmpwi cr1, r4, 0
/* 802D0928 00299EE8  38 00 00 00 */	li r0, 0
/* 802D092C 00299EEC  38 E0 00 00 */	li r7, 0
/* 802D0930 00299EF0  40 85 01 44 */	ble cr1, lbl_802D0A74
/* 802D0934 00299EF4  2C 04 00 08 */	cmpwi r4, 8
/* 802D0938 00299EF8  39 24 FF F8 */	addi r9, r4, -8
/* 802D093C 00299EFC  40 81 01 04 */	ble lbl_802D0A40
/* 802D0940 00299F00  39 00 00 00 */	li r8, 0
/* 802D0944 00299F04  41 84 00 18 */	blt cr1, lbl_802D095C
/* 802D0948 00299F08  3C C0 80 00 */	lis r6, 0x7FFFFFFE@ha
/* 802D094C 00299F0C  38 C6 FF FE */	addi r6, r6, 0x7FFFFFFE@l
/* 802D0950 00299F10  7C 04 30 00 */	cmpw r4, r6
/* 802D0954 00299F14  41 81 00 08 */	bgt lbl_802D095C
/* 802D0958 00299F18  39 00 00 01 */	li r8, 1
lbl_802D095C:
/* 802D095C 00299F1C  2C 08 00 00 */	cmpwi r8, 0
/* 802D0960 00299F20  41 82 00 E0 */	beq lbl_802D0A40
/* 802D0964 00299F24  39 09 00 07 */	addi r8, r9, 7
/* 802D0968 00299F28  7C 66 1B 78 */	mr r6, r3
/* 802D096C 00299F2C  55 08 E8 FE */	srwi r8, r8, 3
/* 802D0970 00299F30  7D 09 03 A6 */	mtctr r8
/* 802D0974 00299F34  2C 09 00 00 */	cmpwi r9, 0
/* 802D0978 00299F38  40 81 00 C8 */	ble lbl_802D0A40
lbl_802D097C:
/* 802D097C 00299F3C  21 27 00 03 */	subfic r9, r7, 3
/* 802D0980 00299F40  39 07 00 01 */	addi r8, r7, 1
/* 802D0984 00299F44  23 88 00 03 */	subfic r28, r8, 3
/* 802D0988 00299F48  89 46 00 00 */	lbz r10, 0(r6)
/* 802D098C 00299F4C  39 07 00 02 */	addi r8, r7, 2
/* 802D0990 00299F50  8B 66 00 01 */	lbz r27, 1(r6)
/* 802D0994 00299F54  23 A8 00 03 */	subfic r29, r8, 3
/* 802D0998 00299F58  57 9C 18 38 */	slwi r28, r28, 3
/* 802D099C 00299F5C  55 28 18 38 */	slwi r8, r9, 3
/* 802D09A0 00299F60  7D 87 00 D0 */	neg r12, r7
/* 802D09A4 00299F64  7D 5A 40 30 */	slw r26, r10, r8
/* 802D09A8 00299F68  57 BE 18 38 */	slwi r30, r29, 3
/* 802D09AC 00299F6C  8B E6 00 02 */	lbz r31, 2(r6)
/* 802D09B0 00299F70  39 07 00 04 */	addi r8, r7, 4
/* 802D09B4 00299F74  21 68 00 03 */	subfic r11, r8, 3
/* 802D09B8 00299F78  7C 00 D3 78 */	or r0, r0, r26
/* 802D09BC 00299F7C  7F 7C E0 30 */	slw r28, r27, r28
/* 802D09C0 00299F80  39 07 00 05 */	addi r8, r7, 5
/* 802D09C4 00299F84  7F FF F0 30 */	slw r31, r31, r30
/* 802D09C8 00299F88  8B A6 00 03 */	lbz r29, 3(r6)
/* 802D09CC 00299F8C  55 8C 18 38 */	slwi r12, r12, 3
/* 802D09D0 00299F90  7C 00 E3 78 */	or r0, r0, r28
/* 802D09D4 00299F94  21 48 00 03 */	subfic r10, r8, 3
/* 802D09D8 00299F98  39 07 00 06 */	addi r8, r7, 6
/* 802D09DC 00299F9C  7F BD 60 30 */	slw r29, r29, r12
/* 802D09E0 00299FA0  7C 00 FB 78 */	or r0, r0, r31
/* 802D09E4 00299FA4  21 28 00 03 */	subfic r9, r8, 3
/* 802D09E8 00299FA8  39 07 00 07 */	addi r8, r7, 7
/* 802D09EC 00299FAC  55 4C 18 38 */	slwi r12, r10, 3
/* 802D09F0 00299FB0  8B E6 00 05 */	lbz r31, 5(r6)
/* 802D09F4 00299FB4  21 08 00 03 */	subfic r8, r8, 3
/* 802D09F8 00299FB8  55 2A 18 38 */	slwi r10, r9, 3
/* 802D09FC 00299FBC  8B C6 00 04 */	lbz r30, 4(r6)
/* 802D0A00 00299FC0  55 6B 18 38 */	slwi r11, r11, 3
/* 802D0A04 00299FC4  7C 00 EB 78 */	or r0, r0, r29
/* 802D0A08 00299FC8  89 26 00 07 */	lbz r9, 7(r6)
/* 802D0A0C 00299FCC  7F DE 58 30 */	slw r30, r30, r11
/* 802D0A10 00299FD0  89 66 00 06 */	lbz r11, 6(r6)
/* 802D0A14 00299FD4  55 08 18 38 */	slwi r8, r8, 3
/* 802D0A18 00299FD8  7F EC 60 30 */	slw r12, r31, r12
/* 802D0A1C 00299FDC  7C 00 F3 78 */	or r0, r0, r30
/* 802D0A20 00299FE0  7D 6A 50 30 */	slw r10, r11, r10
/* 802D0A24 00299FE4  7C 00 63 78 */	or r0, r0, r12
/* 802D0A28 00299FE8  7D 28 40 30 */	slw r8, r9, r8
/* 802D0A2C 00299FEC  7C 00 53 78 */	or r0, r0, r10
/* 802D0A30 00299FF0  38 E7 00 08 */	addi r7, r7, 8
/* 802D0A34 00299FF4  7C 00 43 78 */	or r0, r0, r8
/* 802D0A38 00299FF8  38 C6 00 08 */	addi r6, r6, 8
/* 802D0A3C 00299FFC  42 00 FF 40 */	bdnz lbl_802D097C
lbl_802D0A40:
/* 802D0A40 0029A000  7C C7 20 50 */	subf r6, r7, r4
/* 802D0A44 0029A004  7D 23 3A 14 */	add r9, r3, r7
/* 802D0A48 0029A008  7C C9 03 A6 */	mtctr r6
/* 802D0A4C 0029A00C  7C 07 20 00 */	cmpw r7, r4
/* 802D0A50 0029A010  40 80 00 24 */	bge lbl_802D0A74
lbl_802D0A54:
/* 802D0A54 0029A014  20 C7 00 03 */	subfic r6, r7, 3
/* 802D0A58 0029A018  89 09 00 00 */	lbz r8, 0(r9)
/* 802D0A5C 0029A01C  54 C6 18 38 */	slwi r6, r6, 3
/* 802D0A60 0029A020  39 29 00 01 */	addi r9, r9, 1
/* 802D0A64 0029A024  7D 06 30 30 */	slw r6, r8, r6
/* 802D0A68 0029A028  38 E7 00 01 */	addi r7, r7, 1
/* 802D0A6C 0029A02C  7C 00 33 78 */	or r0, r0, r6
/* 802D0A70 0029A030  42 00 FF E4 */	bdnz lbl_802D0A54
lbl_802D0A74:
/* 802D0A74 0029A034  3C C0 CD 00 */	lis r6, 0xCD006838@ha
/* 802D0A78 0029A038  90 06 68 38 */	stw r0, 0xCD006838@l(r6)
lbl_802D0A7C:
/* 802D0A7C 0029A03C  54 A6 10 3A */	slwi r6, r5, 2
/* 802D0A80 0029A040  38 04 FF FF */	addi r0, r4, -1
/* 802D0A84 0029A044  60 C7 00 01 */	ori r7, r6, 1
/* 802D0A88 0029A048  54 00 20 36 */	slwi r0, r0, 4
/* 802D0A8C 0029A04C  3C C0 CD 00 */	lis r6, 0xCD006834@ha
/* 802D0A90 0029A050  7C E0 03 78 */	or r0, r7, r0
/* 802D0A94 0029A054  90 06 68 34 */	stw r0, 0xCD006834@l(r6)
lbl_802D0A98:
/* 802D0A98 0029A058  80 06 68 34 */	lwz r0, 0x6834(r6)
/* 802D0A9C 0029A05C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D0AA0 0029A060  40 82 FF F8 */	bne lbl_802D0A98
/* 802D0AA4 0029A064  2C 05 00 00 */	cmpwi r5, 0
/* 802D0AA8 0029A068  40 82 01 2C */	bne lbl_802D0BD4
/* 802D0AAC 0029A06C  3C A0 CD 00 */	lis r5, 0xCD006838@ha
/* 802D0AB0 0029A070  2C 84 00 00 */	cmpwi cr1, r4, 0
/* 802D0AB4 0029A074  80 05 68 38 */	lwz r0, 0xCD006838@l(r5)
/* 802D0AB8 0029A078  38 A0 00 00 */	li r5, 0
/* 802D0ABC 0029A07C  40 85 01 18 */	ble cr1, lbl_802D0BD4
/* 802D0AC0 0029A080  2C 04 00 08 */	cmpwi r4, 8
/* 802D0AC4 0029A084  38 E4 FF F8 */	addi r7, r4, -8
/* 802D0AC8 0029A088  40 81 00 E0 */	ble lbl_802D0BA8
/* 802D0ACC 0029A08C  39 00 00 00 */	li r8, 0
/* 802D0AD0 0029A090  41 84 00 18 */	blt cr1, lbl_802D0AE8
/* 802D0AD4 0029A094  3C C0 80 00 */	lis r6, 0x7FFFFFFE@ha
/* 802D0AD8 0029A098  38 C6 FF FE */	addi r6, r6, 0x7FFFFFFE@l
/* 802D0ADC 0029A09C  7C 04 30 00 */	cmpw r4, r6
/* 802D0AE0 0029A0A0  41 81 00 08 */	bgt lbl_802D0AE8
/* 802D0AE4 0029A0A4  39 00 00 01 */	li r8, 1
lbl_802D0AE8:
/* 802D0AE8 0029A0A8  2C 08 00 00 */	cmpwi r8, 0
/* 802D0AEC 0029A0AC  41 82 00 BC */	beq lbl_802D0BA8
/* 802D0AF0 0029A0B0  38 C7 00 07 */	addi r6, r7, 7
/* 802D0AF4 0029A0B4  54 C6 E8 FE */	srwi r6, r6, 3
/* 802D0AF8 0029A0B8  7C C9 03 A6 */	mtctr r6
/* 802D0AFC 0029A0BC  2C 07 00 00 */	cmpwi r7, 0
/* 802D0B00 0029A0C0  40 81 00 A8 */	ble lbl_802D0BA8
lbl_802D0B04:
/* 802D0B04 0029A0C4  20 C5 00 03 */	subfic r6, r5, 3
/* 802D0B08 0029A0C8  38 E5 00 01 */	addi r7, r5, 1
/* 802D0B0C 0029A0CC  54 C8 18 38 */	slwi r8, r6, 3
/* 802D0B10 0029A0D0  7C 09 44 30 */	srw r9, r0, r8
/* 802D0B14 0029A0D4  20 E7 00 03 */	subfic r7, r7, 3
/* 802D0B18 0029A0D8  54 E8 18 38 */	slwi r8, r7, 3
/* 802D0B1C 0029A0DC  99 23 00 00 */	stb r9, 0(r3)
/* 802D0B20 0029A0E0  38 E5 00 02 */	addi r7, r5, 2
/* 802D0B24 0029A0E4  7C C5 00 D0 */	neg r6, r5
/* 802D0B28 0029A0E8  7C 09 44 30 */	srw r9, r0, r8
/* 802D0B2C 0029A0EC  54 C8 18 38 */	slwi r8, r6, 3
/* 802D0B30 0029A0F0  20 E7 00 03 */	subfic r7, r7, 3
/* 802D0B34 0029A0F4  54 E6 18 38 */	slwi r6, r7, 3
/* 802D0B38 0029A0F8  99 23 00 01 */	stb r9, 1(r3)
/* 802D0B3C 0029A0FC  7C 09 34 30 */	srw r9, r0, r6
/* 802D0B40 0029A100  7C 08 44 30 */	srw r8, r0, r8
/* 802D0B44 0029A104  38 C5 00 04 */	addi r6, r5, 4
/* 802D0B48 0029A108  99 23 00 02 */	stb r9, 2(r3)
/* 802D0B4C 0029A10C  20 E6 00 03 */	subfic r7, r6, 3
/* 802D0B50 0029A110  38 C5 00 05 */	addi r6, r5, 5
/* 802D0B54 0029A114  99 03 00 03 */	stb r8, 3(r3)
/* 802D0B58 0029A118  54 E7 18 38 */	slwi r7, r7, 3
/* 802D0B5C 0029A11C  7C 09 3C 30 */	srw r9, r0, r7
/* 802D0B60 0029A120  20 C6 00 03 */	subfic r6, r6, 3
/* 802D0B64 0029A124  54 C8 18 38 */	slwi r8, r6, 3
/* 802D0B68 0029A128  99 23 00 04 */	stb r9, 4(r3)
/* 802D0B6C 0029A12C  38 C5 00 06 */	addi r6, r5, 6
/* 802D0B70 0029A130  20 E6 00 03 */	subfic r7, r6, 3
/* 802D0B74 0029A134  7C 08 44 30 */	srw r8, r0, r8
/* 802D0B78 0029A138  38 C5 00 07 */	addi r6, r5, 7
/* 802D0B7C 0029A13C  99 03 00 05 */	stb r8, 5(r3)
/* 802D0B80 0029A140  54 E7 18 38 */	slwi r7, r7, 3
/* 802D0B84 0029A144  38 A5 00 08 */	addi r5, r5, 8
/* 802D0B88 0029A148  20 C6 00 03 */	subfic r6, r6, 3
/* 802D0B8C 0029A14C  7C 07 3C 30 */	srw r7, r0, r7
/* 802D0B90 0029A150  54 C6 18 38 */	slwi r6, r6, 3
/* 802D0B94 0029A154  98 E3 00 06 */	stb r7, 6(r3)
/* 802D0B98 0029A158  7C 06 34 30 */	srw r6, r0, r6
/* 802D0B9C 0029A15C  98 C3 00 07 */	stb r6, 7(r3)
/* 802D0BA0 0029A160  38 63 00 08 */	addi r3, r3, 8
/* 802D0BA4 0029A164  42 00 FF 60 */	bdnz lbl_802D0B04
lbl_802D0BA8:
/* 802D0BA8 0029A168  7C C5 20 50 */	subf r6, r5, r4
/* 802D0BAC 0029A16C  7C C9 03 A6 */	mtctr r6
/* 802D0BB0 0029A170  7C 05 20 00 */	cmpw r5, r4
/* 802D0BB4 0029A174  40 80 00 20 */	bge lbl_802D0BD4
lbl_802D0BB8:
/* 802D0BB8 0029A178  20 85 00 03 */	subfic r4, r5, 3
/* 802D0BBC 0029A17C  38 A5 00 01 */	addi r5, r5, 1
/* 802D0BC0 0029A180  54 84 18 38 */	slwi r4, r4, 3
/* 802D0BC4 0029A184  7C 04 24 30 */	srw r4, r0, r4
/* 802D0BC8 0029A188  98 83 00 00 */	stb r4, 0(r3)
/* 802D0BCC 0029A18C  38 63 00 01 */	addi r3, r3, 1
/* 802D0BD0 0029A190  42 00 FF E8 */	bdnz lbl_802D0BB8
lbl_802D0BD4:
/* 802D0BD4 0029A194  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0BD8 0029A198  38 60 00 01 */	li r3, 1
/* 802D0BDC 0029A19C  4B FE 95 C1 */	bl _restgpr_26
/* 802D0BE0 0029A1A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0BE4 0029A1A4  7C 08 03 A6 */	mtlr r0
/* 802D0BE8 0029A1A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0BEC 0029A1AC  4E 80 00 20 */	blr 

.global func_802D0BF0
func_802D0BF0:
/* 802D0BF0 0029A1B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0BF4 0029A1B4  7C 08 02 A6 */	mflr r0
/* 802D0BF8 0029A1B8  3C 60 00 02 */	lis r3, 0x00018000@ha
/* 802D0BFC 0029A1BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0C00 0029A1C0  38 63 80 00 */	addi r3, r3, 0x00018000@l
/* 802D0C04 0029A1C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D0C08 0029A1C8  48 08 81 79 */	bl __OSMaskInterrupts
/* 802D0C0C 0029A1CC  3C 60 CD 00 */	lis r3, 0xCD006834@ha
lbl_802D0C10:
/* 802D0C10 0029A1D0  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 802D0C14 0029A1D4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802D0C18 0029A1D8  28 00 00 01 */	cmplwi r0, 1
/* 802D0C1C 0029A1DC  41 82 FF F4 */	beq lbl_802D0C10
/* 802D0C20 0029A1E0  3F E0 CD 00 */	lis r31, 0xCD006828@ha
/* 802D0C24 0029A1E4  38 00 00 00 */	li r0, 0
/* 802D0C28 0029A1E8  90 1F 68 28 */	stw r0, 0xCD006828@l(r31)
/* 802D0C2C 0029A1EC  3C 60 B4 00 */	lis r3, 0xb400
/* 802D0C30 0029A1F0  3C 00 D4 00 */	lis r0, 0xd400
/* 802D0C34 0029A1F4  38 80 00 04 */	li r4, 4
/* 802D0C38 0029A1F8  90 61 00 0C */	stw r3, 0xc(r1)
/* 802D0C3C 0029A1FC  38 61 00 0C */	addi r3, r1, 0xc
/* 802D0C40 0029A200  38 A0 00 01 */	li r5, 1
/* 802D0C44 0029A204  90 01 00 08 */	stw r0, 8(r1)
/* 802D0C48 0029A208  80 1F 68 28 */	lwz r0, 0x6828(r31)
/* 802D0C4C 0029A20C  70 00 04 05 */	andi. r0, r0, 0x405
/* 802D0C50 0029A210  60 00 00 C0 */	ori r0, r0, 0xc0
/* 802D0C54 0029A214  90 1F 68 28 */	stw r0, 0x6828(r31)
/* 802D0C58 0029A218  4B FF FC B1 */	bl func_802D0908
lbl_802D0C5C:
/* 802D0C5C 0029A21C  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 802D0C60 0029A220  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D0C64 0029A224  40 82 FF F8 */	bne lbl_802D0C5C
/* 802D0C68 0029A228  38 61 00 08 */	addi r3, r1, 8
/* 802D0C6C 0029A22C  38 80 00 04 */	li r4, 4
/* 802D0C70 0029A230  38 A0 00 01 */	li r5, 1
/* 802D0C74 0029A234  4B FF FC 95 */	bl func_802D0908
/* 802D0C78 0029A238  3C 60 CD 00 */	lis r3, 0xCD006834@ha
lbl_802D0C7C:
/* 802D0C7C 0029A23C  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 802D0C80 0029A240  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D0C84 0029A244  40 82 FF F8 */	bne lbl_802D0C7C
/* 802D0C88 0029A248  3C 60 CD 00 */	lis r3, 0xCD006828@ha
/* 802D0C8C 0029A24C  80 03 68 28 */	lwz r0, 0xCD006828@l(r3)
/* 802D0C90 0029A250  70 00 04 05 */	andi. r0, r0, 0x405
/* 802D0C94 0029A254  90 03 68 28 */	stw r0, 0x6828(r3)
/* 802D0C98 0029A258  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0C9C 0029A25C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D0CA0 0029A260  7C 08 03 A6 */	mtlr r0
/* 802D0CA4 0029A264  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0CA8 0029A268  4E 80 00 20 */	blr 

.global func_802D0CAC
func_802D0CAC:
/* 802D0CAC 0029A26C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0CB0 0029A270  7C 08 02 A6 */	mflr r0
/* 802D0CB4 0029A274  38 C0 00 00 */	li r6, 0
/* 802D0CB8 0029A278  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0CBC 0029A27C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D0CC0 0029A280  7C BF 2B 78 */	mr r31, r5
/* 802D0CC4 0029A284  38 A0 00 01 */	li r5, 1
/* 802D0CC8 0029A288  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D0CCC 0029A28C  7C 9E 23 78 */	mr r30, r4
/* 802D0CD0 0029A290  38 80 00 04 */	li r4, 4
/* 802D0CD4 0029A294  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D0CD8 0029A298  93 81 00 10 */	stw r28, 0x10(r1)
/* 802D0CDC 0029A29C  3F 80 CD 00 */	lis r28, 0xCD006828@ha
/* 802D0CE0 0029A2A0  90 61 00 08 */	stw r3, 8(r1)
/* 802D0CE4 0029A2A4  38 61 00 08 */	addi r3, r1, 8
/* 802D0CE8 0029A2A8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802D0CEC 0029A2AC  80 1C 68 28 */	lwz r0, 0xCD006828@l(r28)
/* 802D0CF0 0029A2B0  70 00 04 05 */	andi. r0, r0, 0x405
/* 802D0CF4 0029A2B4  60 00 00 C0 */	ori r0, r0, 0xc0
/* 802D0CF8 0029A2B8  90 1C 68 28 */	stw r0, 0x6828(r28)
/* 802D0CFC 0029A2BC  4B FF FC 0D */	bl func_802D0908
/* 802D0D00 0029A2C0  7C 60 00 34 */	cntlzw r0, r3
/* 802D0D04 0029A2C4  54 1D D9 7E */	srwi r29, r0, 5
lbl_802D0D08:
/* 802D0D08 0029A2C8  80 1C 68 34 */	lwz r0, 0x6834(r28)
/* 802D0D0C 0029A2CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D0D10 0029A2D0  40 82 FF F8 */	bne lbl_802D0D08
/* 802D0D14 0029A2D4  38 61 00 0C */	addi r3, r1, 0xc
/* 802D0D18 0029A2D8  38 80 00 04 */	li r4, 4
/* 802D0D1C 0029A2DC  38 A0 00 00 */	li r5, 0
/* 802D0D20 0029A2E0  4B FF FB E9 */	bl func_802D0908
/* 802D0D24 0029A2E4  7C 60 00 34 */	cntlzw r0, r3
/* 802D0D28 0029A2E8  3C 60 CD 00 */	lis r3, 0xCD006834@ha
/* 802D0D2C 0029A2EC  54 00 D9 7E */	srwi r0, r0, 5
/* 802D0D30 0029A2F0  7F A6 03 78 */	or r6, r29, r0
lbl_802D0D34:
/* 802D0D34 0029A2F4  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 802D0D38 0029A2F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D0D3C 0029A2FC  40 82 FF F8 */	bne lbl_802D0D34
/* 802D0D40 0029A300  3C 60 CD 00 */	lis r3, 0xCD006828@ha
/* 802D0D44 0029A304  2C 9F 00 02 */	cmpwi cr1, r31, 2
/* 802D0D48 0029A308  80 03 68 28 */	lwz r0, 0xCD006828@l(r3)
/* 802D0D4C 0029A30C  70 00 04 05 */	andi. r0, r0, 0x405
/* 802D0D50 0029A310  90 03 68 28 */	stw r0, 0x6828(r3)
/* 802D0D54 0029A314  41 86 00 24 */	beq cr1, lbl_802D0D78
/* 802D0D58 0029A318  40 84 00 34 */	bge cr1, lbl_802D0D8C
/* 802D0D5C 0029A31C  2C 1F 00 01 */	cmpwi r31, 1
/* 802D0D60 0029A320  40 80 00 08 */	bge lbl_802D0D68
/* 802D0D64 0029A324  48 00 00 28 */	b lbl_802D0D8C
lbl_802D0D68:
/* 802D0D68 0029A328  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D0D6C 0029A32C  54 00 46 3E */	srwi r0, r0, 0x18
/* 802D0D70 0029A330  98 1E 00 00 */	stb r0, 0(r30)
/* 802D0D74 0029A334  48 00 00 34 */	b lbl_802D0DA8
lbl_802D0D78:
/* 802D0D78 0029A338  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802D0D7C 0029A33C  54 60 C4 2E */	rlwinm r0, r3, 0x18, 0x10, 0x17
/* 802D0D80 0029A340  50 60 46 3E */	rlwimi r0, r3, 8, 0x18, 0x1f
/* 802D0D84 0029A344  B0 1E 00 00 */	sth r0, 0(r30)
/* 802D0D88 0029A348  48 00 00 20 */	b lbl_802D0DA8
lbl_802D0D8C:
/* 802D0D8C 0029A34C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 802D0D90 0029A350  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 802D0D94 0029A354  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 802D0D98 0029A358  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 802D0D9C 0029A35C  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 802D0DA0 0029A360  7C 60 03 78 */	or r0, r3, r0
/* 802D0DA4 0029A364  90 1E 00 00 */	stw r0, 0(r30)
lbl_802D0DA8:
/* 802D0DA8 0029A368  7C C0 00 34 */	cntlzw r0, r6
/* 802D0DAC 0029A36C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D0DB0 0029A370  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D0DB4 0029A374  54 03 D9 7E */	srwi r3, r0, 5
/* 802D0DB8 0029A378  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D0DBC 0029A37C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802D0DC0 0029A380  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0DC4 0029A384  7C 08 03 A6 */	mtlr r0
/* 802D0DC8 0029A388  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0DCC 0029A38C  4E 80 00 20 */	blr 

.global func_802D0DD0
func_802D0DD0:
/* 802D0DD0 0029A390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0DD4 0029A394  7C 08 02 A6 */	mflr r0
/* 802D0DD8 0029A398  2C 05 00 02 */	cmpwi r5, 2
/* 802D0DDC 0029A39C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0DE0 0029A3A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D0DE4 0029A3A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D0DE8 0029A3A8  90 61 00 08 */	stw r3, 8(r1)
/* 802D0DEC 0029A3AC  41 82 00 24 */	beq lbl_802D0E10
/* 802D0DF0 0029A3B0  40 80 00 34 */	bge lbl_802D0E24
/* 802D0DF4 0029A3B4  2C 05 00 01 */	cmpwi r5, 1
/* 802D0DF8 0029A3B8  40 80 00 08 */	bge lbl_802D0E00
/* 802D0DFC 0029A3BC  48 00 00 28 */	b lbl_802D0E24
lbl_802D0E00:
/* 802D0E00 0029A3C0  88 04 00 00 */	lbz r0, 0(r4)
/* 802D0E04 0029A3C4  54 00 C0 0E */	slwi r0, r0, 0x18
/* 802D0E08 0029A3C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D0E0C 0029A3CC  48 00 00 34 */	b lbl_802D0E40
lbl_802D0E10:
/* 802D0E10 0029A3D0  A0 64 00 00 */	lhz r3, 0(r4)
/* 802D0E14 0029A3D4  54 60 42 1E */	rlwinm r0, r3, 8, 8, 0xf
/* 802D0E18 0029A3D8  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D0E1C 0029A3DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D0E20 0029A3E0  48 00 00 20 */	b lbl_802D0E40
lbl_802D0E24:
/* 802D0E24 0029A3E4  80 84 00 00 */	lwz r4, 0(r4)
/* 802D0E28 0029A3E8  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 802D0E2C 0029A3EC  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 802D0E30 0029A3F0  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 802D0E34 0029A3F4  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 802D0E38 0029A3F8  7C 60 03 78 */	or r0, r3, r0
/* 802D0E3C 0029A3FC  90 01 00 0C */	stw r0, 0xc(r1)
lbl_802D0E40:
/* 802D0E40 0029A400  3F C0 CD 00 */	lis r30, 0xCD006828@ha
/* 802D0E44 0029A404  38 61 00 08 */	addi r3, r1, 8
/* 802D0E48 0029A408  80 1E 68 28 */	lwz r0, 0xCD006828@l(r30)
/* 802D0E4C 0029A40C  38 80 00 04 */	li r4, 4
/* 802D0E50 0029A410  38 A0 00 01 */	li r5, 1
/* 802D0E54 0029A414  70 00 04 05 */	andi. r0, r0, 0x405
/* 802D0E58 0029A418  60 00 00 C0 */	ori r0, r0, 0xc0
/* 802D0E5C 0029A41C  90 1E 68 28 */	stw r0, 0x6828(r30)
/* 802D0E60 0029A420  4B FF FA A9 */	bl func_802D0908
/* 802D0E64 0029A424  7C 60 00 34 */	cntlzw r0, r3
/* 802D0E68 0029A428  54 1F D9 7E */	srwi r31, r0, 5
lbl_802D0E6C:
/* 802D0E6C 0029A42C  80 1E 68 34 */	lwz r0, 0x6834(r30)
/* 802D0E70 0029A430  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D0E74 0029A434  40 82 FF F8 */	bne lbl_802D0E6C
/* 802D0E78 0029A438  38 61 00 0C */	addi r3, r1, 0xc
/* 802D0E7C 0029A43C  38 80 00 04 */	li r4, 4
/* 802D0E80 0029A440  38 A0 00 01 */	li r5, 1
/* 802D0E84 0029A444  4B FF FA 85 */	bl func_802D0908
/* 802D0E88 0029A448  7C 60 00 34 */	cntlzw r0, r3
/* 802D0E8C 0029A44C  3C 60 CD 00 */	lis r3, 0xCD006834@ha
/* 802D0E90 0029A450  54 00 D9 7E */	srwi r0, r0, 5
/* 802D0E94 0029A454  7F E5 03 78 */	or r5, r31, r0
lbl_802D0E98:
/* 802D0E98 0029A458  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 802D0E9C 0029A45C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D0EA0 0029A460  40 82 FF F8 */	bne lbl_802D0E98
/* 802D0EA4 0029A464  3C 80 CD 00 */	lis r4, 0xCD006828@ha
/* 802D0EA8 0029A468  7C A0 00 34 */	cntlzw r0, r5
/* 802D0EAC 0029A46C  80 A4 68 28 */	lwz r5, 0xCD006828@l(r4)
/* 802D0EB0 0029A470  54 03 D9 7E */	srwi r3, r0, 5
/* 802D0EB4 0029A474  70 A0 04 05 */	andi. r0, r5, 0x405
/* 802D0EB8 0029A478  90 04 68 28 */	stw r0, 0x6828(r4)
/* 802D0EBC 0029A47C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0EC0 0029A480  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D0EC4 0029A484  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D0EC8 0029A488  7C 08 03 A6 */	mtlr r0
/* 802D0ECC 0029A48C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0ED0 0029A490  4E 80 00 20 */	blr 

.global func_802D0ED4
func_802D0ED4:
/* 802D0ED4 0029A494  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0ED8 0029A498  7C 08 02 A6 */	mflr r0
/* 802D0EDC 0029A49C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0EE0 0029A4A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D0EE4 0029A4A4  3F E0 CD 00 */	lis r31, 0xCD006828@ha
/* 802D0EE8 0029A4A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D0EEC 0029A4AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D0EF0 0029A4B0  7C 9D 23 78 */	mr r29, r4
/* 802D0EF4 0029A4B4  38 80 00 04 */	li r4, 4
/* 802D0EF8 0029A4B8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802D0EFC 0029A4BC  7C BC 2B 78 */	mr r28, r5
/* 802D0F00 0029A4C0  38 A0 00 01 */	li r5, 1
/* 802D0F04 0029A4C4  90 61 00 08 */	stw r3, 8(r1)
/* 802D0F08 0029A4C8  38 61 00 08 */	addi r3, r1, 8
/* 802D0F0C 0029A4CC  80 1F 68 28 */	lwz r0, 0xCD006828@l(r31)
/* 802D0F10 0029A4D0  70 00 04 05 */	andi. r0, r0, 0x405
/* 802D0F14 0029A4D4  60 00 00 C0 */	ori r0, r0, 0xc0
/* 802D0F18 0029A4D8  90 1F 68 28 */	stw r0, 0x6828(r31)
/* 802D0F1C 0029A4DC  4B FF F9 ED */	bl func_802D0908
/* 802D0F20 0029A4E0  7C 60 00 34 */	cntlzw r0, r3
/* 802D0F24 0029A4E4  54 1E D9 7E */	srwi r30, r0, 5
lbl_802D0F28:
/* 802D0F28 0029A4E8  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 802D0F2C 0029A4EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D0F30 0029A4F0  40 82 FF F8 */	bne lbl_802D0F28
/* 802D0F34 0029A4F4  3F E0 CD 00 */	lis r31, 0xcd00
/* 802D0F38 0029A4F8  48 00 00 3C */	b lbl_802D0F74
lbl_802D0F3C:
/* 802D0F3C 0029A4FC  38 61 00 0C */	addi r3, r1, 0xc
/* 802D0F40 0029A500  38 80 00 04 */	li r4, 4
/* 802D0F44 0029A504  38 A0 00 00 */	li r5, 0
/* 802D0F48 0029A508  4B FF F9 C1 */	bl func_802D0908
/* 802D0F4C 0029A50C  7C 60 00 34 */	cntlzw r0, r3
/* 802D0F50 0029A510  54 00 D9 7E */	srwi r0, r0, 5
/* 802D0F54 0029A514  7F DE 03 78 */	or r30, r30, r0
lbl_802D0F58:
/* 802D0F58 0029A518  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 802D0F5C 0029A51C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D0F60 0029A520  40 82 FF F8 */	bne lbl_802D0F58
/* 802D0F64 0029A524  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D0F68 0029A528  3B 9C FF FC */	addi r28, r28, -4
/* 802D0F6C 0029A52C  90 1D 00 00 */	stw r0, 0(r29)
/* 802D0F70 0029A530  3B BD 00 04 */	addi r29, r29, 4
lbl_802D0F74:
/* 802D0F74 0029A534  2C 1C 00 00 */	cmpwi r28, 0
/* 802D0F78 0029A538  41 81 FF C4 */	bgt lbl_802D0F3C
/* 802D0F7C 0029A53C  3C 80 CD 00 */	lis r4, 0xCD006828@ha
/* 802D0F80 0029A540  7F C0 00 34 */	cntlzw r0, r30
/* 802D0F84 0029A544  80 A4 68 28 */	lwz r5, 0xCD006828@l(r4)
/* 802D0F88 0029A548  54 03 D9 7E */	srwi r3, r0, 5
/* 802D0F8C 0029A54C  70 A0 04 05 */	andi. r0, r5, 0x405
/* 802D0F90 0029A550  90 04 68 28 */	stw r0, 0x6828(r4)
/* 802D0F94 0029A554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0F98 0029A558  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D0F9C 0029A55C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D0FA0 0029A560  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D0FA4 0029A564  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802D0FA8 0029A568  7C 08 03 A6 */	mtlr r0
/* 802D0FAC 0029A56C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0FB0 0029A570  4E 80 00 20 */	blr 

.global func_802D0FB4
func_802D0FB4:
/* 802D0FB4 0029A574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0FB8 0029A578  7C 08 02 A6 */	mflr r0
/* 802D0FBC 0029A57C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0FC0 0029A580  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D0FC4 0029A584  3F E0 CD 00 */	lis r31, 0xCD006828@ha
/* 802D0FC8 0029A588  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D0FCC 0029A58C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D0FD0 0029A590  7C 9D 23 78 */	mr r29, r4
/* 802D0FD4 0029A594  38 80 00 04 */	li r4, 4
/* 802D0FD8 0029A598  93 81 00 10 */	stw r28, 0x10(r1)
/* 802D0FDC 0029A59C  7C BC 2B 78 */	mr r28, r5
/* 802D0FE0 0029A5A0  38 A0 00 01 */	li r5, 1
/* 802D0FE4 0029A5A4  90 61 00 08 */	stw r3, 8(r1)
/* 802D0FE8 0029A5A8  38 61 00 08 */	addi r3, r1, 8
/* 802D0FEC 0029A5AC  80 1F 68 28 */	lwz r0, 0xCD006828@l(r31)
/* 802D0FF0 0029A5B0  70 00 04 05 */	andi. r0, r0, 0x405
/* 802D0FF4 0029A5B4  60 00 00 C0 */	ori r0, r0, 0xc0
/* 802D0FF8 0029A5B8  90 1F 68 28 */	stw r0, 0x6828(r31)
/* 802D0FFC 0029A5BC  4B FF F9 0D */	bl func_802D0908
/* 802D1000 0029A5C0  7C 60 00 34 */	cntlzw r0, r3
/* 802D1004 0029A5C4  54 1E D9 7E */	srwi r30, r0, 5
lbl_802D1008:
/* 802D1008 0029A5C8  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 802D100C 0029A5CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D1010 0029A5D0  40 82 FF F8 */	bne lbl_802D1008
/* 802D1014 0029A5D4  3F E0 CD 00 */	lis r31, 0xcd00
/* 802D1018 0029A5D8  48 00 00 3C */	b lbl_802D1054
lbl_802D101C:
/* 802D101C 0029A5DC  80 1D 00 00 */	lwz r0, 0(r29)
/* 802D1020 0029A5E0  38 61 00 0C */	addi r3, r1, 0xc
/* 802D1024 0029A5E4  38 80 00 04 */	li r4, 4
/* 802D1028 0029A5E8  38 A0 00 01 */	li r5, 1
/* 802D102C 0029A5EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D1030 0029A5F0  3B BD 00 04 */	addi r29, r29, 4
/* 802D1034 0029A5F4  4B FF F8 D5 */	bl func_802D0908
/* 802D1038 0029A5F8  7C 60 00 34 */	cntlzw r0, r3
/* 802D103C 0029A5FC  54 00 D9 7E */	srwi r0, r0, 5
/* 802D1040 0029A600  7F DE 03 78 */	or r30, r30, r0
lbl_802D1044:
/* 802D1044 0029A604  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 802D1048 0029A608  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802D104C 0029A60C  40 82 FF F8 */	bne lbl_802D1044
/* 802D1050 0029A610  3B 9C FF FC */	addi r28, r28, -4
lbl_802D1054:
/* 802D1054 0029A614  2C 1C 00 00 */	cmpwi r28, 0
/* 802D1058 0029A618  41 81 FF C4 */	bgt lbl_802D101C
/* 802D105C 0029A61C  3C 80 CD 00 */	lis r4, 0xCD006828@ha
/* 802D1060 0029A620  7F C0 00 34 */	cntlzw r0, r30
/* 802D1064 0029A624  80 A4 68 28 */	lwz r5, 0xCD006828@l(r4)
/* 802D1068 0029A628  54 03 D9 7E */	srwi r3, r0, 5
/* 802D106C 0029A62C  70 A0 04 05 */	andi. r0, r5, 0x405
/* 802D1070 0029A630  90 04 68 28 */	stw r0, 0x6828(r4)
/* 802D1074 0029A634  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D1078 0029A638  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D107C 0029A63C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D1080 0029A640  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D1084 0029A644  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802D1088 0029A648  7C 08 03 A6 */	mtlr r0
/* 802D108C 0029A64C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D1090 0029A650  4E 80 00 20 */	blr 
#.balign 16, 0
.4byte 0
.4byte 0
.4byte 0