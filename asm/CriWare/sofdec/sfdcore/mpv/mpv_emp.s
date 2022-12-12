.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global MPV_IsEmptyBpic
MPV_IsEmptyBpic:
/* 803A5AEC 0036F0AC  54 67 00 3A */	rlwinm r7, r3, 0, 0, 0x1d
/* 803A5AF0 0036F0B0  7C 07 18 50 */	subf r0, r7, r3
/* 803A5AF4 0036F0B4  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5AF8 0036F0B8  54 06 18 39 */	rlwinm. r6, r0, 3, 0, 0x1c
/* 803A5AFC 0036F0BC  81 07 00 04 */	lwz r8, 4(r7)
/* 803A5B00 0036F0C0  7D 4A 30 30 */	slw r10, r10, r6
/* 803A5B04 0036F0C4  41 82 00 18 */	beq lbl_803A5B1C
/* 803A5B08 0036F0C8  20 06 00 20 */	subfic r0, r6, 0x20
/* 803A5B0C 0036F0CC  7D 09 30 30 */	slw r9, r8, r6
/* 803A5B10 0036F0D0  7D 00 04 30 */	srw r0, r8, r0
/* 803A5B14 0036F0D4  7D 4A 03 78 */	or r10, r10, r0
/* 803A5B18 0036F0D8  48 00 00 08 */	b lbl_803A5B20
lbl_803A5B1C:
/* 803A5B1C 0036F0DC  7D 09 43 78 */	mr r9, r8
lbl_803A5B20:
/* 803A5B20 0036F0E0  28 0A 01 01 */	cmplwi r10, 0x101
/* 803A5B24 0036F0E4  81 47 00 08 */	lwz r10, 8(r7)
/* 803A5B28 0036F0E8  38 E7 00 0C */	addi r7, r7, 0xc
/* 803A5B2C 0036F0EC  41 82 00 0C */	beq lbl_803A5B38
/* 803A5B30 0036F0F0  38 60 00 00 */	li r3, 0
/* 803A5B34 0036F0F4  4E 80 00 20 */	blr
lbl_803A5B38:
/* 803A5B38 0036F0F8  2C 06 00 1B */	cmpwi r6, 0x1b
/* 803A5B3C 0036F0FC  41 80 00 20 */	blt lbl_803A5B5C
/* 803A5B40 0036F100  34 C6 FF E5 */	addic. r6, r6, -27
/* 803A5B44 0036F104  7D 49 53 78 */	mr r9, r10
/* 803A5B48 0036F108  41 82 00 08 */	beq lbl_803A5B50
/* 803A5B4C 0036F10C  7D 49 30 30 */	slw r9, r10, r6
lbl_803A5B50:
/* 803A5B50 0036F110  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5B54 0036F114  38 E7 00 04 */	addi r7, r7, 4
/* 803A5B58 0036F118  48 00 00 0C */	b lbl_803A5B64
lbl_803A5B5C:
/* 803A5B5C 0036F11C  55 29 28 34 */	slwi r9, r9, 5
/* 803A5B60 0036F120  38 C6 00 05 */	addi r6, r6, 5
lbl_803A5B64:
/* 803A5B64 0036F124  2C 06 00 1F */	cmpwi r6, 0x1f
/* 803A5B68 0036F128  55 20 0F FE */	srwi r0, r9, 0x1f
/* 803A5B6C 0036F12C  40 82 00 18 */	bne lbl_803A5B84
/* 803A5B70 0036F130  7D 49 53 78 */	mr r9, r10
/* 803A5B74 0036F134  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5B78 0036F138  38 C0 00 00 */	li r6, 0
/* 803A5B7C 0036F13C  38 E7 00 04 */	addi r7, r7, 4
/* 803A5B80 0036F140  48 00 00 0C */	b lbl_803A5B8C
lbl_803A5B84:
/* 803A5B84 0036F144  55 29 08 3C */	slwi r9, r9, 1
/* 803A5B88 0036F148  38 C6 00 01 */	addi r6, r6, 1
lbl_803A5B8C:
/* 803A5B8C 0036F14C  2C 00 00 00 */	cmpwi r0, 0
/* 803A5B90 0036F150  41 82 00 0C */	beq lbl_803A5B9C
/* 803A5B94 0036F154  38 60 00 00 */	li r3, 0
/* 803A5B98 0036F158  4E 80 00 20 */	blr
lbl_803A5B9C:
/* 803A5B9C 0036F15C  2C 06 00 1F */	cmpwi r6, 0x1f
/* 803A5BA0 0036F160  55 20 0F FE */	srwi r0, r9, 0x1f
/* 803A5BA4 0036F164  40 82 00 18 */	bne lbl_803A5BBC
/* 803A5BA8 0036F168  7D 49 53 78 */	mr r9, r10
/* 803A5BAC 0036F16C  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5BB0 0036F170  38 C0 00 00 */	li r6, 0
/* 803A5BB4 0036F174  38 E7 00 04 */	addi r7, r7, 4
/* 803A5BB8 0036F178  48 00 00 0C */	b lbl_803A5BC4
lbl_803A5BBC:
/* 803A5BBC 0036F17C  55 29 08 3C */	slwi r9, r9, 1
/* 803A5BC0 0036F180  38 C6 00 01 */	addi r6, r6, 1
lbl_803A5BC4:
/* 803A5BC4 0036F184  2C 00 00 00 */	cmpwi r0, 0
/* 803A5BC8 0036F188  40 82 00 0C */	bne lbl_803A5BD4
/* 803A5BCC 0036F18C  38 60 00 00 */	li r3, 0
/* 803A5BD0 0036F190  4E 80 00 20 */	blr
lbl_803A5BD4:
/* 803A5BD4 0036F194  2C 06 00 1A */	cmpwi r6, 0x1a
/* 803A5BD8 0036F198  55 28 36 BE */	srwi r8, r9, 0x1a
/* 803A5BDC 0036F19C  40 81 00 10 */	ble lbl_803A5BEC
/* 803A5BE0 0036F1A0  20 06 00 3A */	subfic r0, r6, 0x3a
/* 803A5BE4 0036F1A4  7D 40 04 30 */	srw r0, r10, r0
/* 803A5BE8 0036F1A8  7D 08 03 78 */	or r8, r8, r0
lbl_803A5BEC:
/* 803A5BEC 0036F1AC  2C 08 00 16 */	cmpwi r8, 0x16
/* 803A5BF0 0036F1B0  40 80 00 10 */	bge lbl_803A5C00
/* 803A5BF4 0036F1B4  2C 08 00 0B */	cmpwi r8, 0xb
/* 803A5BF8 0036F1B8  41 82 00 38 */	beq lbl_803A5C30
/* 803A5BFC 0036F1BC  48 00 00 5C */	b lbl_803A5C58
lbl_803A5C00:
/* 803A5C00 0036F1C0  2C 08 00 18 */	cmpwi r8, 0x18
/* 803A5C04 0036F1C4  40 80 00 54 */	bge lbl_803A5C58
/* 803A5C08 0036F1C8  38 C6 00 05 */	addi r6, r6, 5
/* 803A5C0C 0036F1CC  2C 06 00 20 */	cmpwi r6, 0x20
/* 803A5C10 0036F1D0  41 80 00 18 */	blt lbl_803A5C28
/* 803A5C14 0036F1D4  38 C6 FF E0 */	addi r6, r6, -32
/* 803A5C18 0036F1D8  7D 49 30 30 */	slw r9, r10, r6
/* 803A5C1C 0036F1DC  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5C20 0036F1E0  38 E7 00 04 */	addi r7, r7, 4
/* 803A5C24 0036F1E4  48 00 00 3C */	b lbl_803A5C60
lbl_803A5C28:
/* 803A5C28 0036F1E8  55 29 28 34 */	slwi r9, r9, 5
/* 803A5C2C 0036F1EC  48 00 00 34 */	b lbl_803A5C60
lbl_803A5C30:
/* 803A5C30 0036F1F0  38 C6 00 06 */	addi r6, r6, 6
/* 803A5C34 0036F1F4  2C 06 00 20 */	cmpwi r6, 0x20
/* 803A5C38 0036F1F8  41 80 00 18 */	blt lbl_803A5C50
/* 803A5C3C 0036F1FC  38 C6 FF E0 */	addi r6, r6, -32
/* 803A5C40 0036F200  7D 49 30 30 */	slw r9, r10, r6
/* 803A5C44 0036F204  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5C48 0036F208  38 E7 00 04 */	addi r7, r7, 4
/* 803A5C4C 0036F20C  48 00 00 14 */	b lbl_803A5C60
lbl_803A5C50:
/* 803A5C50 0036F210  55 29 30 32 */	slwi r9, r9, 6
/* 803A5C54 0036F214  48 00 00 0C */	b lbl_803A5C60
lbl_803A5C58:
/* 803A5C58 0036F218  38 60 00 00 */	li r3, 0
/* 803A5C5C 0036F21C  4E 80 00 20 */	blr
lbl_803A5C60:
/* 803A5C60 0036F220  39 05 FF FF */	addi r8, r5, -1
lbl_803A5C64:
/* 803A5C64 0036F224  2C 06 00 15 */	cmpwi r6, 0x15
/* 803A5C68 0036F228  55 25 5D 7E */	srwi r5, r9, 0x15
/* 803A5C6C 0036F22C  40 81 00 10 */	ble lbl_803A5C7C
/* 803A5C70 0036F230  20 06 00 35 */	subfic r0, r6, 0x35
/* 803A5C74 0036F234  7D 40 04 30 */	srw r0, r10, r0
/* 803A5C78 0036F238  7C A5 03 78 */	or r5, r5, r0
lbl_803A5C7C:
/* 803A5C7C 0036F23C  28 05 00 08 */	cmplwi r5, 8
/* 803A5C80 0036F240  40 82 00 34 */	bne lbl_803A5CB4
/* 803A5C84 0036F244  38 C6 00 0B */	addi r6, r6, 0xb
/* 803A5C88 0036F248  2C 06 00 20 */	cmpwi r6, 0x20
/* 803A5C8C 0036F24C  41 80 00 18 */	blt lbl_803A5CA4
/* 803A5C90 0036F250  38 C6 FF E0 */	addi r6, r6, -32
/* 803A5C94 0036F254  7D 49 30 30 */	slw r9, r10, r6
/* 803A5C98 0036F258  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5C9C 0036F25C  38 E7 00 04 */	addi r7, r7, 4
/* 803A5CA0 0036F260  48 00 00 08 */	b lbl_803A5CA8
lbl_803A5CA4:
/* 803A5CA4 0036F264  55 29 58 28 */	slwi r9, r9, 0xb
lbl_803A5CA8:
/* 803A5CA8 0036F268  39 08 FF DF */	addi r8, r8, -33
/* 803A5CAC 0036F26C  2C 08 00 21 */	cmpwi r8, 0x21
/* 803A5CB0 0036F270  41 81 FF B4 */	bgt lbl_803A5C64
lbl_803A5CB4:
/* 803A5CB4 0036F274  2C 08 00 00 */	cmpwi r8, 0
/* 803A5CB8 0036F278  40 81 00 0C */	ble lbl_803A5CC4
/* 803A5CBC 0036F27C  2C 08 00 21 */	cmpwi r8, 0x21
/* 803A5CC0 0036F280  40 81 00 0C */	ble lbl_803A5CCC
lbl_803A5CC4:
/* 803A5CC4 0036F284  38 60 00 00 */	li r3, 0
/* 803A5CC8 0036F288  4E 80 00 20 */	blr
lbl_803A5CCC:
/* 803A5CCC 0036F28C  3C A0 80 52 */	lis r5, lbl_8051F708@ha
/* 803A5CD0 0036F290  55 00 08 3C */	slwi r0, r8, 1
/* 803A5CD4 0036F294  38 A5 F7 08 */	addi r5, r5, lbl_8051F708@l
/* 803A5CD8 0036F298  7C A5 02 AE */	lhax r5, r5, r0
/* 803A5CDC 0036F29C  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803A5CE0 0036F2A0  21 00 00 20 */	subfic r8, r0, 0x20
/* 803A5CE4 0036F2A4  7C 06 40 00 */	cmpw r6, r8
/* 803A5CE8 0036F2A8  41 80 00 38 */	blt lbl_803A5D20
/* 803A5CEC 0036F2AC  7C C8 30 51 */	subf. r6, r8, r6
/* 803A5CF0 0036F2B0  41 82 00 1C */	beq lbl_803A5D0C
/* 803A5CF4 0036F2B4  7C 06 00 50 */	subf r0, r6, r0
/* 803A5CF8 0036F2B8  7D 40 04 30 */	srw r0, r10, r0
/* 803A5CFC 0036F2BC  7D 29 03 78 */	or r9, r9, r0
/* 803A5D00 0036F2C0  7D 28 44 30 */	srw r8, r9, r8
/* 803A5D04 0036F2C4  7D 49 30 30 */	slw r9, r10, r6
/* 803A5D08 0036F2C8  48 00 00 0C */	b lbl_803A5D14
lbl_803A5D0C:
/* 803A5D0C 0036F2CC  7D 28 44 30 */	srw r8, r9, r8
/* 803A5D10 0036F2D0  7D 49 53 78 */	mr r9, r10
lbl_803A5D14:
/* 803A5D14 0036F2D4  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5D18 0036F2D8  38 E7 00 04 */	addi r7, r7, 4
/* 803A5D1C 0036F2DC  48 00 00 10 */	b lbl_803A5D2C
lbl_803A5D20:
/* 803A5D20 0036F2E0  7D 28 44 30 */	srw r8, r9, r8
/* 803A5D24 0036F2E4  7C C6 02 14 */	add r6, r6, r0
/* 803A5D28 0036F2E8  7D 29 00 30 */	slw r9, r9, r0
lbl_803A5D2C:
/* 803A5D2C 0036F2EC  54 A0 C2 3E */	srwi r0, r5, 8
/* 803A5D30 0036F2F0  7C 08 00 40 */	cmplw r8, r0
/* 803A5D34 0036F2F4  41 82 00 0C */	beq lbl_803A5D40
/* 803A5D38 0036F2F8  38 60 00 00 */	li r3, 0
/* 803A5D3C 0036F2FC  4E 80 00 20 */	blr
lbl_803A5D40:
/* 803A5D40 0036F300  2C 06 00 1A */	cmpwi r6, 0x1a
/* 803A5D44 0036F304  55 25 36 BE */	srwi r5, r9, 0x1a
/* 803A5D48 0036F308  40 81 00 10 */	ble lbl_803A5D58
/* 803A5D4C 0036F30C  20 06 00 3A */	subfic r0, r6, 0x3a
/* 803A5D50 0036F310  7D 40 04 30 */	srw r0, r10, r0
/* 803A5D54 0036F314  7C A5 03 78 */	or r5, r5, r0
lbl_803A5D58:
/* 803A5D58 0036F318  2C 05 00 16 */	cmpwi r5, 0x16
/* 803A5D5C 0036F31C  40 80 00 10 */	bge lbl_803A5D6C
/* 803A5D60 0036F320  2C 05 00 0B */	cmpwi r5, 0xb
/* 803A5D64 0036F324  41 82 00 28 */	beq lbl_803A5D8C
/* 803A5D68 0036F328  48 00 00 3C */	b lbl_803A5DA4
lbl_803A5D6C:
/* 803A5D6C 0036F32C  2C 05 00 18 */	cmpwi r5, 0x18
/* 803A5D70 0036F330  40 80 00 34 */	bge lbl_803A5DA4
/* 803A5D74 0036F334  38 C6 00 05 */	addi r6, r6, 5
/* 803A5D78 0036F338  2C 06 00 20 */	cmpwi r6, 0x20
/* 803A5D7C 0036F33C  41 80 00 30 */	blt lbl_803A5DAC
/* 803A5D80 0036F340  38 C6 FF E0 */	addi r6, r6, -32
/* 803A5D84 0036F344  38 E7 00 04 */	addi r7, r7, 4
/* 803A5D88 0036F348  48 00 00 24 */	b lbl_803A5DAC
lbl_803A5D8C:
/* 803A5D8C 0036F34C  38 C6 00 06 */	addi r6, r6, 6
/* 803A5D90 0036F350  2C 06 00 20 */	cmpwi r6, 0x20
/* 803A5D94 0036F354  41 80 00 18 */	blt lbl_803A5DAC
/* 803A5D98 0036F358  38 C6 FF E0 */	addi r6, r6, -32
/* 803A5D9C 0036F35C  38 E7 00 04 */	addi r7, r7, 4
/* 803A5DA0 0036F360  48 00 00 0C */	b lbl_803A5DAC
lbl_803A5DA4:
/* 803A5DA4 0036F364  38 60 00 00 */	li r3, 0
/* 803A5DA8 0036F368  4E 80 00 20 */	blr
lbl_803A5DAC:
/* 803A5DAC 0036F36C  38 06 00 07 */	addi r0, r6, 7
/* 803A5DB0 0036F370  7C 00 1E 70 */	srawi r0, r0, 3
/* 803A5DB4 0036F374  7C C7 02 14 */	add r6, r7, r0
/* 803A5DB8 0036F378  7C 85 FE 70 */	srawi r5, r4, 0x1f
/* 803A5DBC 0036F37C  38 06 FF F8 */	addi r0, r6, -8
/* 803A5DC0 0036F380  7C 03 00 50 */	subf r0, r3, r0
/* 803A5DC4 0036F384  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803A5DC8 0036F388  7C 00 20 10 */	subfc r0, r0, r4
/* 803A5DCC 0036F38C  7C 65 19 14 */	adde r3, r5, r3
/* 803A5DD0 0036F390  4E 80 00 20 */	blr 

.global MPV_IsEmptyPpic
MPV_IsEmptyPpic:
/* 803A5DD4 0036F394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A5DD8 0036F398  7C 08 02 A6 */	mflr r0
/* 803A5DDC 0036F39C  54 67 00 3A */	rlwinm r7, r3, 0, 0, 0x1d
/* 803A5DE0 0036F3A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A5DE4 0036F3A4  7C 07 18 50 */	subf r0, r7, r3
/* 803A5DE8 0036F3A8  54 06 18 39 */	rlwinm. r6, r0, 3, 0, 0x1c
/* 803A5DEC 0036F3AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A5DF0 0036F3B0  7C 9F 23 78 */	mr r31, r4
/* 803A5DF4 0036F3B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A5DF8 0036F3B8  7C 7E 1B 78 */	mr r30, r3
/* 803A5DFC 0036F3BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A5E00 0036F3C0  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5E04 0036F3C4  81 07 00 04 */	lwz r8, 4(r7)
/* 803A5E08 0036F3C8  7D 4A 30 30 */	slw r10, r10, r6
/* 803A5E0C 0036F3CC  41 82 00 18 */	beq lbl_803A5E24
/* 803A5E10 0036F3D0  20 06 00 20 */	subfic r0, r6, 0x20
/* 803A5E14 0036F3D4  7D 09 30 30 */	slw r9, r8, r6
/* 803A5E18 0036F3D8  7D 00 04 30 */	srw r0, r8, r0
/* 803A5E1C 0036F3DC  7D 4A 03 78 */	or r10, r10, r0
/* 803A5E20 0036F3E0  48 00 00 08 */	b lbl_803A5E28
lbl_803A5E24:
/* 803A5E24 0036F3E4  7D 09 43 78 */	mr r9, r8
lbl_803A5E28:
/* 803A5E28 0036F3E8  28 0A 01 01 */	cmplwi r10, 0x101
/* 803A5E2C 0036F3EC  81 47 00 08 */	lwz r10, 8(r7)
/* 803A5E30 0036F3F0  38 E7 00 0C */	addi r7, r7, 0xc
/* 803A5E34 0036F3F4  41 82 00 0C */	beq lbl_803A5E40
/* 803A5E38 0036F3F8  38 60 00 00 */	li r3, 0
/* 803A5E3C 0036F3FC  48 00 02 FC */	b lbl_803A6138
lbl_803A5E40:
/* 803A5E40 0036F400  2C 06 00 1B */	cmpwi r6, 0x1b
/* 803A5E44 0036F404  41 80 00 20 */	blt lbl_803A5E64
/* 803A5E48 0036F408  34 C6 FF E5 */	addic. r6, r6, -27
/* 803A5E4C 0036F40C  7D 49 53 78 */	mr r9, r10
/* 803A5E50 0036F410  41 82 00 08 */	beq lbl_803A5E58
/* 803A5E54 0036F414  7D 49 30 30 */	slw r9, r10, r6
lbl_803A5E58:
/* 803A5E58 0036F418  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5E5C 0036F41C  38 E7 00 04 */	addi r7, r7, 4
/* 803A5E60 0036F420  48 00 00 0C */	b lbl_803A5E6C
lbl_803A5E64:
/* 803A5E64 0036F424  55 29 28 34 */	slwi r9, r9, 5
/* 803A5E68 0036F428  38 C6 00 05 */	addi r6, r6, 5
lbl_803A5E6C:
/* 803A5E6C 0036F42C  2C 06 00 1F */	cmpwi r6, 0x1f
/* 803A5E70 0036F430  55 20 0F FE */	srwi r0, r9, 0x1f
/* 803A5E74 0036F434  40 82 00 18 */	bne lbl_803A5E8C
/* 803A5E78 0036F438  7D 49 53 78 */	mr r9, r10
/* 803A5E7C 0036F43C  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5E80 0036F440  38 C0 00 00 */	li r6, 0
/* 803A5E84 0036F444  38 E7 00 04 */	addi r7, r7, 4
/* 803A5E88 0036F448  48 00 00 0C */	b lbl_803A5E94
lbl_803A5E8C:
/* 803A5E8C 0036F44C  55 29 08 3C */	slwi r9, r9, 1
/* 803A5E90 0036F450  38 C6 00 01 */	addi r6, r6, 1
lbl_803A5E94:
/* 803A5E94 0036F454  2C 00 00 00 */	cmpwi r0, 0
/* 803A5E98 0036F458  41 82 00 0C */	beq lbl_803A5EA4
/* 803A5E9C 0036F45C  38 60 00 00 */	li r3, 0
/* 803A5EA0 0036F460  48 00 02 98 */	b lbl_803A6138
lbl_803A5EA4:
/* 803A5EA4 0036F464  2C 06 00 1F */	cmpwi r6, 0x1f
/* 803A5EA8 0036F468  55 20 0F FE */	srwi r0, r9, 0x1f
/* 803A5EAC 0036F46C  40 82 00 18 */	bne lbl_803A5EC4
/* 803A5EB0 0036F470  7D 49 53 78 */	mr r9, r10
/* 803A5EB4 0036F474  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5EB8 0036F478  38 C0 00 00 */	li r6, 0
/* 803A5EBC 0036F47C  38 E7 00 04 */	addi r7, r7, 4
/* 803A5EC0 0036F480  48 00 00 0C */	b lbl_803A5ECC
lbl_803A5EC4:
/* 803A5EC4 0036F484  55 29 08 3C */	slwi r9, r9, 1
/* 803A5EC8 0036F488  38 C6 00 01 */	addi r6, r6, 1
lbl_803A5ECC:
/* 803A5ECC 0036F48C  2C 00 00 00 */	cmpwi r0, 0
/* 803A5ED0 0036F490  40 82 00 0C */	bne lbl_803A5EDC
/* 803A5ED4 0036F494  38 60 00 00 */	li r3, 0
/* 803A5ED8 0036F498  48 00 02 60 */	b lbl_803A6138
lbl_803A5EDC:
/* 803A5EDC 0036F49C  2C 06 00 1B */	cmpwi r6, 0x1b
/* 803A5EE0 0036F4A0  55 28 2E FE */	srwi r8, r9, 0x1b
/* 803A5EE4 0036F4A4  40 81 00 10 */	ble lbl_803A5EF4
/* 803A5EE8 0036F4A8  20 06 00 3B */	subfic r0, r6, 0x3b
/* 803A5EEC 0036F4AC  7D 40 04 30 */	srw r0, r10, r0
/* 803A5EF0 0036F4B0  7D 08 03 78 */	or r8, r8, r0
lbl_803A5EF4:
/* 803A5EF4 0036F4B4  28 08 00 07 */	cmplwi r8, 7
/* 803A5EF8 0036F4B8  41 82 00 0C */	beq lbl_803A5F04
/* 803A5EFC 0036F4BC  38 60 00 00 */	li r3, 0
/* 803A5F00 0036F4C0  48 00 02 38 */	b lbl_803A6138
lbl_803A5F04:
/* 803A5F04 0036F4C4  38 C6 00 05 */	addi r6, r6, 5
/* 803A5F08 0036F4C8  2C 06 00 20 */	cmpwi r6, 0x20
/* 803A5F0C 0036F4CC  41 80 00 18 */	blt lbl_803A5F24
/* 803A5F10 0036F4D0  38 C6 FF E0 */	addi r6, r6, -32
/* 803A5F14 0036F4D4  7D 49 30 30 */	slw r9, r10, r6
/* 803A5F18 0036F4D8  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5F1C 0036F4DC  38 E7 00 04 */	addi r7, r7, 4
/* 803A5F20 0036F4E0  48 00 00 08 */	b lbl_803A5F28
lbl_803A5F24:
/* 803A5F24 0036F4E4  55 29 28 34 */	slwi r9, r9, 5
lbl_803A5F28:
/* 803A5F28 0036F4E8  39 05 FF FF */	addi r8, r5, -1
lbl_803A5F2C:
/* 803A5F2C 0036F4EC  2C 06 00 15 */	cmpwi r6, 0x15
/* 803A5F30 0036F4F0  55 25 5D 7E */	srwi r5, r9, 0x15
/* 803A5F34 0036F4F4  40 81 00 10 */	ble lbl_803A5F44
/* 803A5F38 0036F4F8  20 06 00 35 */	subfic r0, r6, 0x35
/* 803A5F3C 0036F4FC  7D 40 04 30 */	srw r0, r10, r0
/* 803A5F40 0036F500  7C A5 03 78 */	or r5, r5, r0
lbl_803A5F44:
/* 803A5F44 0036F504  28 05 00 08 */	cmplwi r5, 8
/* 803A5F48 0036F508  40 82 00 34 */	bne lbl_803A5F7C
/* 803A5F4C 0036F50C  38 C6 00 0B */	addi r6, r6, 0xb
/* 803A5F50 0036F510  2C 06 00 20 */	cmpwi r6, 0x20
/* 803A5F54 0036F514  41 80 00 18 */	blt lbl_803A5F6C
/* 803A5F58 0036F518  38 C6 FF E0 */	addi r6, r6, -32
/* 803A5F5C 0036F51C  7D 49 30 30 */	slw r9, r10, r6
/* 803A5F60 0036F520  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5F64 0036F524  38 E7 00 04 */	addi r7, r7, 4
/* 803A5F68 0036F528  48 00 00 08 */	b lbl_803A5F70
lbl_803A5F6C:
/* 803A5F6C 0036F52C  55 29 58 28 */	slwi r9, r9, 0xb
lbl_803A5F70:
/* 803A5F70 0036F530  39 08 FF DF */	addi r8, r8, -33
/* 803A5F74 0036F534  2C 08 00 21 */	cmpwi r8, 0x21
/* 803A5F78 0036F538  41 81 FF B4 */	bgt lbl_803A5F2C
lbl_803A5F7C:
/* 803A5F7C 0036F53C  2C 08 00 00 */	cmpwi r8, 0
/* 803A5F80 0036F540  40 81 00 0C */	ble lbl_803A5F8C
/* 803A5F84 0036F544  2C 08 00 21 */	cmpwi r8, 0x21
/* 803A5F88 0036F548  40 81 00 0C */	ble lbl_803A5F94
lbl_803A5F8C:
/* 803A5F8C 0036F54C  38 60 00 00 */	li r3, 0
/* 803A5F90 0036F550  48 00 01 A8 */	b lbl_803A6138
lbl_803A5F94:
/* 803A5F94 0036F554  3C A0 80 52 */	lis r5, lbl_8051F708@ha
/* 803A5F98 0036F558  55 00 08 3C */	slwi r0, r8, 1
/* 803A5F9C 0036F55C  38 A5 F7 08 */	addi r5, r5, lbl_8051F708@l
/* 803A5FA0 0036F560  7C A5 02 AE */	lhax r5, r5, r0
/* 803A5FA4 0036F564  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803A5FA8 0036F568  21 00 00 20 */	subfic r8, r0, 0x20
/* 803A5FAC 0036F56C  7C 06 40 00 */	cmpw r6, r8
/* 803A5FB0 0036F570  41 80 00 38 */	blt lbl_803A5FE8
/* 803A5FB4 0036F574  7C C8 30 51 */	subf. r6, r8, r6
/* 803A5FB8 0036F578  41 82 00 1C */	beq lbl_803A5FD4
/* 803A5FBC 0036F57C  7C 06 00 50 */	subf r0, r6, r0
/* 803A5FC0 0036F580  7D 40 04 30 */	srw r0, r10, r0
/* 803A5FC4 0036F584  7D 29 03 78 */	or r9, r9, r0
/* 803A5FC8 0036F588  7D 28 44 30 */	srw r8, r9, r8
/* 803A5FCC 0036F58C  7D 49 30 30 */	slw r9, r10, r6
/* 803A5FD0 0036F590  48 00 00 0C */	b lbl_803A5FDC
lbl_803A5FD4:
/* 803A5FD4 0036F594  7D 28 44 30 */	srw r8, r9, r8
/* 803A5FD8 0036F598  7D 49 53 78 */	mr r9, r10
lbl_803A5FDC:
/* 803A5FDC 0036F59C  81 47 00 00 */	lwz r10, 0(r7)
/* 803A5FE0 0036F5A0  38 E7 00 04 */	addi r7, r7, 4
/* 803A5FE4 0036F5A4  48 00 00 10 */	b lbl_803A5FF4
lbl_803A5FE8:
/* 803A5FE8 0036F5A8  7D 28 44 30 */	srw r8, r9, r8
/* 803A5FEC 0036F5AC  7C C6 02 14 */	add r6, r6, r0
/* 803A5FF0 0036F5B0  7D 29 00 30 */	slw r9, r9, r0
lbl_803A5FF4:
/* 803A5FF4 0036F5B4  54 A0 C2 3E */	srwi r0, r5, 8
/* 803A5FF8 0036F5B8  7C 08 00 40 */	cmplw r8, r0
/* 803A5FFC 0036F5BC  41 82 00 0C */	beq lbl_803A6008
/* 803A6000 0036F5C0  38 60 00 00 */	li r3, 0
/* 803A6004 0036F5C4  48 00 01 34 */	b lbl_803A6138
lbl_803A6008:
/* 803A6008 0036F5C8  2C 06 00 1B */	cmpwi r6, 0x1b
/* 803A600C 0036F5CC  55 25 2E FE */	srwi r5, r9, 0x1b
/* 803A6010 0036F5D0  40 81 00 10 */	ble lbl_803A6020
/* 803A6014 0036F5D4  20 06 00 3B */	subfic r0, r6, 0x3b
/* 803A6018 0036F5D8  7D 40 04 30 */	srw r0, r10, r0
/* 803A601C 0036F5DC  7C A5 03 78 */	or r5, r5, r0
lbl_803A6020:
/* 803A6020 0036F5E0  28 05 00 07 */	cmplwi r5, 7
/* 803A6024 0036F5E4  41 82 00 0C */	beq lbl_803A6030
/* 803A6028 0036F5E8  38 60 00 00 */	li r3, 0
/* 803A602C 0036F5EC  48 00 01 0C */	b lbl_803A6138
lbl_803A6030:
/* 803A6030 0036F5F0  38 C6 00 05 */	addi r6, r6, 5
/* 803A6034 0036F5F4  2C 06 00 20 */	cmpwi r6, 0x20
/* 803A6038 0036F5F8  41 80 00 0C */	blt lbl_803A6044
/* 803A603C 0036F5FC  38 C6 FF E0 */	addi r6, r6, -32
/* 803A6040 0036F600  38 E7 00 04 */	addi r7, r7, 4
lbl_803A6044:
/* 803A6044 0036F604  38 06 00 07 */	addi r0, r6, 7
/* 803A6048 0036F608  7C 00 1E 70 */	srawi r0, r0, 3
/* 803A604C 0036F60C  7C A7 02 14 */	add r5, r7, r0
/* 803A6050 0036F610  38 05 FF F8 */	addi r0, r5, -8
/* 803A6054 0036F614  7C A3 00 50 */	subf r5, r3, r0
/* 803A6058 0036F618  7C 05 20 00 */	cmpw r5, r4
/* 803A605C 0036F61C  40 81 00 0C */	ble lbl_803A6068
/* 803A6060 0036F620  38 60 00 00 */	li r3, 0
/* 803A6064 0036F624  48 00 00 D4 */	b lbl_803A6138
lbl_803A6068:
/* 803A6068 0036F628  7C 85 F8 50 */	subf r4, r5, r31
/* 803A606C 0036F62C  7C 03 03 78 */	mr r3, r0
/* 803A6070 0036F630  38 A0 00 CC */	li r5, 0xcc
/* 803A6074 0036F634  4B FF FA 21 */	bl MPV_SearchDelim
/* 803A6078 0036F638  2C 03 00 00 */	cmpwi r3, 0
/* 803A607C 0036F63C  7C 7D 1B 78 */	mr r29, r3
/* 803A6080 0036F640  40 82 00 0C */	bne lbl_803A608C
/* 803A6084 0036F644  38 60 00 00 */	li r3, 0
/* 803A6088 0036F648  48 00 00 B0 */	b lbl_803A6138
lbl_803A608C:
/* 803A608C 0036F64C  4B FF F9 69 */	bl func_803A59F4
/* 803A6090 0036F650  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 803A6094 0036F654  41 82 00 30 */	beq lbl_803A60C4
/* 803A6098 0036F658  88 1D 00 06 */	lbz r0, 6(r29)
/* 803A609C 0036F65C  88 7D 00 05 */	lbz r3, 5(r29)
/* 803A60A0 0036F660  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 803A60A4 0036F664  50 60 0F 7C */	rlwimi r0, r3, 1, 0x1d, 0x1e
/* 803A60A8 0036F668  2C 00 00 03 */	cmpwi r0, 3
/* 803A60AC 0036F66C  41 82 00 0C */	beq lbl_803A60B8
/* 803A60B0 0036F670  38 60 00 00 */	li r3, 0
/* 803A60B4 0036F674  48 00 00 84 */	b lbl_803A6138
lbl_803A60B8:
/* 803A60B8 0036F678  38 1D 00 01 */	addi r0, r29, 1
/* 803A60BC 0036F67C  7C BE 00 50 */	subf r5, r30, r0
/* 803A60C0 0036F680  4B FF FF A8 */	b lbl_803A6068
lbl_803A60C4:
/* 803A60C4 0036F684  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 803A60C8 0036F688  41 82 00 10 */	beq lbl_803A60D8
/* 803A60CC 0036F68C  38 1D 00 01 */	addi r0, r29, 1
/* 803A60D0 0036F690  7C BE 00 50 */	subf r5, r30, r0
/* 803A60D4 0036F694  4B FF FF 94 */	b lbl_803A6068
lbl_803A60D8:
/* 803A60D8 0036F698  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 803A60DC 0036F69C  41 82 00 1C */	beq lbl_803A60F8
/* 803A60E0 0036F6A0  38 1D 00 04 */	addi r0, r29, 4
/* 803A60E4 0036F6A4  7C 1E 00 50 */	subf r0, r30, r0
/* 803A60E8 0036F6A8  7C 00 F8 00 */	cmpw r0, r31
/* 803A60EC 0036F6AC  40 81 00 48 */	ble lbl_803A6134
/* 803A60F0 0036F6B0  38 60 00 00 */	li r3, 0
/* 803A60F4 0036F6B4  48 00 00 44 */	b lbl_803A6138
lbl_803A60F8:
/* 803A60F8 0036F6B8  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 803A60FC 0036F6BC  41 82 00 30 */	beq lbl_803A612C
/* 803A6100 0036F6C0  88 1D 00 07 */	lbz r0, 7(r29)
/* 803A6104 0036F6C4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 803A6108 0036F6C8  41 82 00 1C */	beq lbl_803A6124
/* 803A610C 0036F6CC  38 1D 00 07 */	addi r0, r29, 7
/* 803A6110 0036F6D0  7C 1E 00 50 */	subf r0, r30, r0
/* 803A6114 0036F6D4  7C 00 F8 00 */	cmpw r0, r31
/* 803A6118 0036F6D8  40 81 00 1C */	ble lbl_803A6134
/* 803A611C 0036F6DC  38 60 00 00 */	li r3, 0
/* 803A6120 0036F6E0  48 00 00 18 */	b lbl_803A6138
lbl_803A6124:
/* 803A6124 0036F6E4  38 60 00 00 */	li r3, 0
/* 803A6128 0036F6E8  48 00 00 10 */	b lbl_803A6138
lbl_803A612C:
/* 803A612C 0036F6EC  38 60 00 00 */	li r3, 0
/* 803A6130 0036F6F0  48 00 00 08 */	b lbl_803A6138
lbl_803A6134:
/* 803A6134 0036F6F4  38 60 00 01 */	li r3, 1
lbl_803A6138:
/* 803A6138 0036F6F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A613C 0036F6FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A6140 0036F700  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A6144 0036F704  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A6148 0036F708  7C 08 03 A6 */	mtlr r0
/* 803A614C 0036F70C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A6150 0036F710  4E 80 00 20 */	blr 
