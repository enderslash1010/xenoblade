.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn ADX_DecodeInfoSpsd, global
/* 80397A0C 00360FCC  88 03 00 07 */	lbz r0, 7(r3)
/* 80397A10 00360FD0  81 81 00 08 */	lwz r12, 8(r1)
/* 80397A14 00360FD4  54 00 20 36 */	slwi r0, r0, 4
/* 80397A18 00360FD8  81 61 00 0C */	lwz r11, 0xc(r1)
/* 80397A1C 00360FDC  B0 05 00 00 */	sth r0, 0(r5)
/* 80397A20 00360FE0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80397A24 00360FE4  88 03 00 09 */	lbz r0, 9(r3)
/* 80397A28 00360FE8  54 05 07 BE */	clrlwi r5, r0, 0x1e
/* 80397A2C 00360FEC  38 05 00 01 */	addi r0, r5, 1
/* 80397A30 00360FF0  98 09 00 00 */	stb r0, 0(r9)
/* 80397A34 00360FF4  A0 03 00 2A */	lhz r0, 0x2a(r3)
/* 80397A38 00360FF8  90 0A 00 00 */	stw r0, 0(r10)
/* 80397A3C 00360FFC  88 03 00 08 */	lbz r0, 8(r3)
/* 80397A40 00361000  2C 00 00 01 */	cmpwi r0, 1
/* 80397A44 00361004  41 82 00 60 */	beq .L_80397AA4
/* 80397A48 00361008  40 80 00 10 */	bge .L_80397A58
/* 80397A4C 0036100C  2C 00 00 00 */	cmpwi r0, 0
/* 80397A50 00361010  40 80 00 14 */	bge .L_80397A64
/* 80397A54 00361014  48 00 00 A0 */	b .L_80397AF4
.L_80397A58:
/* 80397A58 00361018  2C 00 00 04 */	cmpwi r0, 4
/* 80397A5C 0036101C  40 80 00 98 */	bge .L_80397AF4
/* 80397A60 00361020  48 00 00 6C */	b .L_80397ACC
.L_80397A64:
/* 80397A64 00361024  38 00 00 10 */	li r0, 0x10
/* 80397A68 00361028  38 A0 00 01 */	li r5, 1
/* 80397A6C 0036102C  98 07 00 00 */	stb r0, 0(r7)
/* 80397A70 00361030  38 00 00 00 */	li r0, 0
/* 80397A74 00361034  89 29 00 00 */	lbz r9, 0(r9)
/* 80397A78 00361038  7D 29 07 74 */	extsb r9, r9
/* 80397A7C 0036103C  55 29 08 3C */	slwi r9, r9, 1
/* 80397A80 00361040  99 28 00 00 */	stb r9, 0(r8)
/* 80397A84 00361044  90 AB 00 00 */	stw r5, 0(r11)
/* 80397A88 00361048  81 23 00 0C */	lwz r9, 0xc(r3)
/* 80397A8C 0036104C  55 25 0F FE */	srwi r5, r9, 0x1f
/* 80397A90 00361050  7C A5 4A 14 */	add r5, r5, r9
/* 80397A94 00361054  7C A5 0E 70 */	srawi r5, r5, 1
/* 80397A98 00361058  90 AC 00 00 */	stw r5, 0(r12)
/* 80397A9C 0036105C  B0 04 00 00 */	sth r0, 0(r4)
/* 80397AA0 00361060  48 00 00 54 */	b .L_80397AF4
.L_80397AA4:
/* 80397AA4 00361064  38 00 00 08 */	li r0, 8
/* 80397AA8 00361068  38 A0 00 01 */	li r5, 1
/* 80397AAC 0036106C  98 07 00 00 */	stb r0, 0(r7)
/* 80397AB0 00361070  88 09 00 00 */	lbz r0, 0(r9)
/* 80397AB4 00361074  98 08 00 00 */	stb r0, 0(r8)
/* 80397AB8 00361078  90 AB 00 00 */	stw r5, 0(r11)
/* 80397ABC 0036107C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80397AC0 00361080  90 0C 00 00 */	stw r0, 0(r12)
/* 80397AC4 00361084  B0 A4 00 00 */	sth r5, 0(r4)
/* 80397AC8 00361088  48 00 00 2C */	b .L_80397AF4
.L_80397ACC:
/* 80397ACC 0036108C  38 00 00 04 */	li r0, 4
/* 80397AD0 00361090  38 A0 00 02 */	li r5, 2
/* 80397AD4 00361094  98 07 00 00 */	stb r0, 0(r7)
/* 80397AD8 00361098  88 09 00 00 */	lbz r0, 0(r9)
/* 80397ADC 0036109C  98 08 00 00 */	stb r0, 0(r8)
/* 80397AE0 003610A0  90 AB 00 00 */	stw r5, 0(r11)
/* 80397AE4 003610A4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80397AE8 003610A8  54 00 08 3C */	slwi r0, r0, 1
/* 80397AEC 003610AC  90 0C 00 00 */	stw r0, 0(r12)
/* 80397AF0 003610B0  B0 A4 00 00 */	sth r5, 0(r4)
.L_80397AF4:
/* 80397AF4 003610B4  38 00 00 02 */	li r0, 2
/* 80397AF8 003610B8  38 A0 00 01 */	li r5, 1
/* 80397AFC 003610BC  98 08 00 00 */	stb r0, 0(r8)
/* 80397B00 003610C0  38 80 00 10 */	li r4, 0x10
/* 80397B04 003610C4  38 00 FF FF */	li r0, -1
/* 80397B08 003610C8  90 AB 00 00 */	stw r5, 0(r11)
/* 80397B0C 003610CC  81 03 00 0C */	lwz r8, 0xc(r3)
/* 80397B10 003610D0  38 60 00 00 */	li r3, 0
/* 80397B14 003610D4  55 05 0F FE */	srwi r5, r8, 0x1f
/* 80397B18 003610D8  7C A5 42 14 */	add r5, r5, r8
/* 80397B1C 003610DC  7C A5 0E 70 */	srawi r5, r5, 1
/* 80397B20 003610E0  90 AC 00 00 */	stw r5, 0(r12)
/* 80397B24 003610E4  98 87 00 00 */	stb r4, 0(r7)
/* 80397B28 003610E8  98 06 00 00 */	stb r0, 0(r6)
/* 80397B2C 003610EC  4E 80 00 20 */	blr 
.endfn ADX_DecodeInfoSpsd

.fn ADXB_DecodeHeaderSpsd, global
/* 80397B30 003610F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80397B34 003610F4  7C 08 02 A6 */	mflr r0
/* 80397B38 003610F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80397B3C 003610FC  38 00 00 01 */	li r0, 1
/* 80397B40 00361100  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80397B44 00361104  7C 7F 1B 78 */	mr r31, r3
/* 80397B48 00361108  38 DF 00 10 */	addi r6, r31, 0x10
/* 80397B4C 0036110C  B0 03 00 02 */	sth r0, 2(r3)
/* 80397B50 00361110  38 1F 00 18 */	addi r0, r31, 0x18
/* 80397B54 00361114  7C 83 23 78 */	mr r3, r4
/* 80397B58 00361118  7C A4 2B 78 */	mr r4, r5
/* 80397B5C 0036111C  90 01 00 08 */	stw r0, 8(r1)
/* 80397B60 00361120  38 1F 00 9C */	addi r0, r31, 0x9c
/* 80397B64 00361124  38 A1 00 18 */	addi r5, r1, 0x18
/* 80397B68 00361128  38 FF 00 0D */	addi r7, r31, 0xd
/* 80397B6C 0036112C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80397B70 00361130  38 DF 00 0C */	addi r6, r31, 0xc
/* 80397B74 00361134  39 1F 00 0F */	addi r8, r31, 0xf
/* 80397B78 00361138  39 3F 00 0E */	addi r9, r31, 0xe
/* 80397B7C 0036113C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80397B80 00361140  39 5F 00 14 */	addi r10, r31, 0x14
/* 80397B84 00361144  4B FF FE 89 */	bl ADX_DecodeInfoSpsd
/* 80397B88 00361148  2C 03 00 00 */	cmpwi r3, 0
/* 80397B8C 0036114C  40 80 00 0C */	bge .L_80397B98
/* 80397B90 00361150  38 60 00 00 */	li r3, 0
/* 80397B94 00361154  48 00 00 74 */	b .L_80397C08
.L_80397B98:
/* 80397B98 00361158  88 9F 00 0E */	lbz r4, 0xe(r31)
/* 80397B9C 0036115C  39 20 00 00 */	li r9, 0
/* 80397BA0 00361160  88 7F 00 0F */	lbz r3, 0xf(r31)
/* 80397BA4 00361164  38 00 00 02 */	li r0, 2
/* 80397BA8 00361168  7C 88 07 74 */	extsb r8, r4
/* 80397BAC 0036116C  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 80397BB0 00361170  7C 67 07 74 */	extsb r7, r3
/* 80397BB4 00361174  80 BF 00 3C */	lwz r5, 0x3c(r31)
/* 80397BB8 00361178  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 80397BBC 0036117C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80397BC0 00361180  B1 3F 00 1C */	sth r9, 0x1c(r31)
/* 80397BC4 00361184  B1 3F 00 26 */	sth r9, 0x26(r31)
/* 80397BC8 00361188  B1 3F 00 24 */	sth r9, 0x24(r31)
/* 80397BCC 0036118C  91 3F 00 34 */	stw r9, 0x34(r31)
/* 80397BD0 00361190  91 3F 00 30 */	stw r9, 0x30(r31)
/* 80397BD4 00361194  91 3F 00 2C */	stw r9, 0x2c(r31)
/* 80397BD8 00361198  91 3F 00 28 */	stw r9, 0x28(r31)
/* 80397BDC 0036119C  91 3F 00 20 */	stw r9, 0x20(r31)
/* 80397BE0 003611A0  91 1F 00 50 */	stw r8, 0x50(r31)
/* 80397BE4 003611A4  90 FF 00 54 */	stw r7, 0x54(r31)
/* 80397BE8 003611A8  90 DF 00 58 */	stw r6, 0x58(r31)
/* 80397BEC 003611AC  90 BF 00 5C */	stw r5, 0x5c(r31)
/* 80397BF0 003611B0  90 9F 00 60 */	stw r4, 0x60(r31)
/* 80397BF4 003611B4  90 7F 00 64 */	stw r3, 0x64(r31)
/* 80397BF8 003611B8  91 3F 00 8C */	stw r9, 0x8c(r31)
/* 80397BFC 003611BC  91 3F 00 88 */	stw r9, 0x88(r31)
/* 80397C00 003611C0  B0 1F 00 98 */	sth r0, 0x98(r31)
/* 80397C04 003611C4  A8 61 00 18 */	lha r3, 0x18(r1)
.L_80397C08:
/* 80397C08 003611C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80397C0C 003611CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80397C10 003611D0  7C 08 03 A6 */	mtlr r0
/* 80397C14 003611D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80397C18 003611D8  4E 80 00 20 */	blr 
.endfn ADXB_DecodeHeaderSpsd

.fn ADXB_ExecOneSpsd, global
/* 80397C1C 003611DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80397C20 003611E0  7C 08 02 A6 */	mflr r0
/* 80397C24 003611E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80397C28 003611E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80397C2C 003611EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80397C30 003611F0  7C 7E 1B 78 */	mr r30, r3
/* 80397C34 003611F4  80 03 00 04 */	lwz r0, 4(r3)
/* 80397C38 003611F8  83 E3 00 48 */	lwz r31, 0x48(r3)
/* 80397C3C 003611FC  2C 00 00 01 */	cmpwi r0, 1
/* 80397C40 00361200  40 82 02 B8 */	bne .L_80397EF8
/* 80397C44 00361204  80 63 00 08 */	lwz r3, 8(r3)
/* 80397C48 00361208  4B FE DC D1 */	bl ADXPD_GetStat
/* 80397C4C 0036120C  2C 03 00 00 */	cmpwi r3, 0
/* 80397C50 00361210  40 82 02 A8 */	bne .L_80397EF8
/* 80397C54 00361214  81 9E 00 78 */	lwz r12, 0x78(r30)
/* 80397C58 00361218  38 9E 00 68 */	addi r4, r30, 0x68
/* 80397C5C 0036121C  38 BE 00 6C */	addi r5, r30, 0x6c
/* 80397C60 00361220  38 DE 00 70 */	addi r6, r30, 0x70
/* 80397C64 00361224  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 80397C68 00361228  7D 89 03 A6 */	mtctr r12
/* 80397C6C 0036122C  4E 80 04 21 */	bctrl 
/* 80397C70 00361230  80 DE 00 68 */	lwz r6, 0x68(r30)
/* 80397C74 00361234  80 1E 00 60 */	lwz r0, 0x60(r30)
/* 80397C78 00361238  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 80397C7C 0036123C  7C A6 00 50 */	subf r5, r6, r0
/* 80397C80 00361240  7C 05 18 00 */	cmpw r5, r3
/* 80397C84 00361244  40 81 00 08 */	ble .L_80397C8C
/* 80397C88 00361248  7C 65 1B 78 */	mr r5, r3
.L_80397C8C:
/* 80397C8C 0036124C  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 80397C90 00361250  7C 05 00 00 */	cmpw r5, r0
/* 80397C94 00361254  40 81 00 08 */	ble .L_80397C9C
/* 80397C98 00361258  7C 05 03 78 */	mr r5, r0
.L_80397C9C:
/* 80397C9C 0036125C  88 1E 00 0E */	lbz r0, 0xe(r30)
/* 80397CA0 00361260  54 C3 08 3C */	slwi r3, r6, 1
/* 80397CA4 00361264  80 FE 00 5C */	lwz r7, 0x5c(r30)
/* 80397CA8 00361268  7C 00 07 74 */	extsb r0, r0
/* 80397CAC 0036126C  2C 00 00 02 */	cmpwi r0, 2
/* 80397CB0 00361270  7C 07 1A 14 */	add r0, r7, r3
/* 80397CB4 00361274  40 82 01 4C */	bne .L_80397E00
/* 80397CB8 00361278  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80397CBC 0036127C  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 80397CC0 00361280  38 80 00 00 */	li r4, 0
/* 80397CC4 00361284  7C 63 32 14 */	add r3, r3, r6
/* 80397CC8 00361288  54 63 08 3C */	slwi r3, r3, 1
/* 80397CCC 0036128C  7C 67 1A 14 */	add r3, r7, r3
/* 80397CD0 00361290  40 85 02 08 */	ble cr1, .L_80397ED8
/* 80397CD4 00361294  2C 05 00 08 */	cmpwi r5, 8
/* 80397CD8 00361298  38 E5 FF F8 */	addi r7, r5, -8
/* 80397CDC 0036129C  40 81 00 DC */	ble .L_80397DB8
/* 80397CE0 003612A0  39 00 00 00 */	li r8, 0
/* 80397CE4 003612A4  41 84 00 18 */	blt cr1, .L_80397CFC
/* 80397CE8 003612A8  3C C0 80 00 */	lis r6, 0x7FFFFFFE@ha
/* 80397CEC 003612AC  38 C6 FF FE */	addi r6, r6, 0x7FFFFFFE@l
/* 80397CF0 003612B0  7C 05 30 00 */	cmpw r5, r6
/* 80397CF4 003612B4  41 81 00 08 */	bgt .L_80397CFC
/* 80397CF8 003612B8  39 00 00 01 */	li r8, 1
.L_80397CFC:
/* 80397CFC 003612BC  2C 08 00 00 */	cmpwi r8, 0
/* 80397D00 003612C0  41 82 00 B8 */	beq .L_80397DB8
/* 80397D04 003612C4  38 C7 00 07 */	addi r6, r7, 7
/* 80397D08 003612C8  7F E8 FB 78 */	mr r8, r31
/* 80397D0C 003612CC  54 C6 E8 FE */	srwi r6, r6, 3
/* 80397D10 003612D0  7C 09 03 78 */	mr r9, r0
/* 80397D14 003612D4  7C 6A 1B 78 */	mr r10, r3
/* 80397D18 003612D8  7C C9 03 A6 */	mtctr r6
/* 80397D1C 003612DC  2C 07 00 00 */	cmpwi r7, 0
/* 80397D20 003612E0  40 81 00 98 */	ble .L_80397DB8
.L_80397D24:
/* 80397D24 003612E4  A0 C8 00 00 */	lhz r6, 0(r8)
/* 80397D28 003612E8  38 84 00 08 */	addi r4, r4, 8
/* 80397D2C 003612EC  B0 C9 00 00 */	sth r6, 0(r9)
/* 80397D30 003612F0  A0 C8 00 02 */	lhz r6, 2(r8)
/* 80397D34 003612F4  B0 CA 00 00 */	sth r6, 0(r10)
/* 80397D38 003612F8  A0 C8 00 04 */	lhz r6, 4(r8)
/* 80397D3C 003612FC  B0 C9 00 02 */	sth r6, 2(r9)
/* 80397D40 00361300  A0 C8 00 06 */	lhz r6, 6(r8)
/* 80397D44 00361304  B0 CA 00 02 */	sth r6, 2(r10)
/* 80397D48 00361308  A0 C8 00 08 */	lhz r6, 8(r8)
/* 80397D4C 0036130C  B0 C9 00 04 */	sth r6, 4(r9)
/* 80397D50 00361310  A0 C8 00 0A */	lhz r6, 0xa(r8)
/* 80397D54 00361314  B0 CA 00 04 */	sth r6, 4(r10)
/* 80397D58 00361318  A0 C8 00 0C */	lhz r6, 0xc(r8)
/* 80397D5C 0036131C  B0 C9 00 06 */	sth r6, 6(r9)
/* 80397D60 00361320  A0 C8 00 0E */	lhz r6, 0xe(r8)
/* 80397D64 00361324  B0 CA 00 06 */	sth r6, 6(r10)
/* 80397D68 00361328  A0 C8 00 10 */	lhz r6, 0x10(r8)
/* 80397D6C 0036132C  B0 C9 00 08 */	sth r6, 8(r9)
/* 80397D70 00361330  A0 C8 00 12 */	lhz r6, 0x12(r8)
/* 80397D74 00361334  B0 CA 00 08 */	sth r6, 8(r10)
/* 80397D78 00361338  A0 C8 00 14 */	lhz r6, 0x14(r8)
/* 80397D7C 0036133C  B0 C9 00 0A */	sth r6, 0xa(r9)
/* 80397D80 00361340  A0 C8 00 16 */	lhz r6, 0x16(r8)
/* 80397D84 00361344  B0 CA 00 0A */	sth r6, 0xa(r10)
/* 80397D88 00361348  A0 C8 00 18 */	lhz r6, 0x18(r8)
/* 80397D8C 0036134C  B0 C9 00 0C */	sth r6, 0xc(r9)
/* 80397D90 00361350  A0 C8 00 1A */	lhz r6, 0x1a(r8)
/* 80397D94 00361354  B0 CA 00 0C */	sth r6, 0xc(r10)
/* 80397D98 00361358  A0 C8 00 1C */	lhz r6, 0x1c(r8)
/* 80397D9C 0036135C  B0 C9 00 0E */	sth r6, 0xe(r9)
/* 80397DA0 00361360  39 29 00 10 */	addi r9, r9, 0x10
/* 80397DA4 00361364  A0 C8 00 1E */	lhz r6, 0x1e(r8)
/* 80397DA8 00361368  39 08 00 20 */	addi r8, r8, 0x20
/* 80397DAC 0036136C  B0 CA 00 0E */	sth r6, 0xe(r10)
/* 80397DB0 00361370  39 4A 00 10 */	addi r10, r10, 0x10
/* 80397DB4 00361374  42 00 FF 70 */	bdnz .L_80397D24
.L_80397DB8:
/* 80397DB8 00361378  54 89 08 3C */	slwi r9, r4, 1
/* 80397DBC 0036137C  54 87 10 3A */	slwi r7, r4, 2
/* 80397DC0 00361380  7C C4 28 50 */	subf r6, r4, r5
/* 80397DC4 00361384  7C FF 3A 14 */	add r7, r31, r7
/* 80397DC8 00361388  7D 00 4A 14 */	add r8, r0, r9
/* 80397DCC 0036138C  7C 63 4A 14 */	add r3, r3, r9
/* 80397DD0 00361390  7C C9 03 A6 */	mtctr r6
/* 80397DD4 00361394  7C 04 28 00 */	cmpw r4, r5
/* 80397DD8 00361398  40 80 01 00 */	bge .L_80397ED8
.L_80397DDC:
/* 80397DDC 0036139C  A0 07 00 00 */	lhz r0, 0(r7)
/* 80397DE0 003613A0  B0 08 00 00 */	sth r0, 0(r8)
/* 80397DE4 003613A4  39 08 00 02 */	addi r8, r8, 2
/* 80397DE8 003613A8  A0 07 00 02 */	lhz r0, 2(r7)
/* 80397DEC 003613AC  38 E7 00 04 */	addi r7, r7, 4
/* 80397DF0 003613B0  B0 03 00 00 */	sth r0, 0(r3)
/* 80397DF4 003613B4  38 63 00 02 */	addi r3, r3, 2
/* 80397DF8 003613B8  42 00 FF E4 */	bdnz .L_80397DDC
/* 80397DFC 003613BC  48 00 00 DC */	b .L_80397ED8
.L_80397E00:
/* 80397E00 003613C0  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 80397E04 003613C4  39 00 00 00 */	li r8, 0
/* 80397E08 003613C8  40 85 00 D0 */	ble cr1, .L_80397ED8
/* 80397E0C 003613CC  2C 05 00 08 */	cmpwi r5, 8
/* 80397E10 003613D0  38 85 FF F8 */	addi r4, r5, -8
/* 80397E14 003613D4  40 81 00 94 */	ble .L_80397EA8
/* 80397E18 003613D8  38 C0 00 00 */	li r6, 0
/* 80397E1C 003613DC  41 84 00 18 */	blt cr1, .L_80397E34
/* 80397E20 003613E0  3C 60 80 00 */	lis r3, 0x7FFFFFFE@ha
/* 80397E24 003613E4  38 63 FF FE */	addi r3, r3, 0x7FFFFFFE@l
/* 80397E28 003613E8  7C 05 18 00 */	cmpw r5, r3
/* 80397E2C 003613EC  41 81 00 08 */	bgt .L_80397E34
/* 80397E30 003613F0  38 C0 00 01 */	li r6, 1
.L_80397E34:
/* 80397E34 003613F4  2C 06 00 00 */	cmpwi r6, 0
/* 80397E38 003613F8  41 82 00 70 */	beq .L_80397EA8
/* 80397E3C 003613FC  38 64 00 07 */	addi r3, r4, 7
/* 80397E40 00361400  7F E6 FB 78 */	mr r6, r31
/* 80397E44 00361404  54 63 E8 FE */	srwi r3, r3, 3
/* 80397E48 00361408  7C 07 03 78 */	mr r7, r0
/* 80397E4C 0036140C  7C 69 03 A6 */	mtctr r3
/* 80397E50 00361410  2C 04 00 00 */	cmpwi r4, 0
/* 80397E54 00361414  40 81 00 54 */	ble .L_80397EA8
.L_80397E58:
/* 80397E58 00361418  A0 66 00 00 */	lhz r3, 0(r6)
/* 80397E5C 0036141C  39 08 00 08 */	addi r8, r8, 8
/* 80397E60 00361420  B0 67 00 00 */	sth r3, 0(r7)
/* 80397E64 00361424  A0 66 00 02 */	lhz r3, 2(r6)
/* 80397E68 00361428  B0 67 00 02 */	sth r3, 2(r7)
/* 80397E6C 0036142C  A0 66 00 04 */	lhz r3, 4(r6)
/* 80397E70 00361430  B0 67 00 04 */	sth r3, 4(r7)
/* 80397E74 00361434  A0 66 00 06 */	lhz r3, 6(r6)
/* 80397E78 00361438  B0 67 00 06 */	sth r3, 6(r7)
/* 80397E7C 0036143C  A0 66 00 08 */	lhz r3, 8(r6)
/* 80397E80 00361440  B0 67 00 08 */	sth r3, 8(r7)
/* 80397E84 00361444  A0 66 00 0A */	lhz r3, 0xa(r6)
/* 80397E88 00361448  B0 67 00 0A */	sth r3, 0xa(r7)
/* 80397E8C 0036144C  A0 66 00 0C */	lhz r3, 0xc(r6)
/* 80397E90 00361450  B0 67 00 0C */	sth r3, 0xc(r7)
/* 80397E94 00361454  A0 66 00 0E */	lhz r3, 0xe(r6)
/* 80397E98 00361458  38 C6 00 10 */	addi r6, r6, 0x10
/* 80397E9C 0036145C  B0 67 00 0E */	sth r3, 0xe(r7)
/* 80397EA0 00361460  38 E7 00 10 */	addi r7, r7, 0x10
/* 80397EA4 00361464  42 00 FF B4 */	bdnz .L_80397E58
.L_80397EA8:
/* 80397EA8 00361468  55 06 08 3C */	slwi r6, r8, 1
/* 80397EAC 0036146C  7C 68 28 50 */	subf r3, r8, r5
/* 80397EB0 00361470  7C 9F 32 14 */	add r4, r31, r6
/* 80397EB4 00361474  7C C0 32 14 */	add r6, r0, r6
/* 80397EB8 00361478  7C 69 03 A6 */	mtctr r3
/* 80397EBC 0036147C  7C 08 28 00 */	cmpw r8, r5
/* 80397EC0 00361480  40 80 00 18 */	bge .L_80397ED8
.L_80397EC4:
/* 80397EC4 00361484  A0 04 00 00 */	lhz r0, 0(r4)
/* 80397EC8 00361488  38 84 00 02 */	addi r4, r4, 2
/* 80397ECC 0036148C  B0 06 00 00 */	sth r0, 0(r6)
/* 80397ED0 00361490  38 C6 00 02 */	addi r6, r6, 2
/* 80397ED4 00361494  42 00 FF F0 */	bdnz .L_80397EC4
.L_80397ED8:
/* 80397ED8 00361498  88 9E 00 0E */	lbz r4, 0xe(r30)
/* 80397EDC 0036149C  38 00 00 02 */	li r0, 2
/* 80397EE0 003614A0  54 A3 08 3C */	slwi r3, r5, 1
/* 80397EE4 003614A4  90 BE 00 90 */	stw r5, 0x90(r30)
/* 80397EE8 003614A8  7C 84 07 74 */	extsb r4, r4
/* 80397EEC 003614AC  7C 64 19 D6 */	mullw r3, r4, r3
/* 80397EF0 003614B0  90 1E 00 04 */	stw r0, 4(r30)
/* 80397EF4 003614B4  90 7E 00 94 */	stw r3, 0x94(r30)
.L_80397EF8:
/* 80397EF8 003614B8  80 1E 00 04 */	lwz r0, 4(r30)
/* 80397EFC 003614BC  2C 00 00 02 */	cmpwi r0, 2
/* 80397F00 003614C0  40 82 00 24 */	bne .L_80397F24
/* 80397F04 003614C4  81 9E 00 80 */	lwz r12, 0x80(r30)
/* 80397F08 003614C8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80397F0C 003614CC  80 9E 00 94 */	lwz r4, 0x94(r30)
/* 80397F10 003614D0  80 BE 00 90 */	lwz r5, 0x90(r30)
/* 80397F14 003614D4  7D 89 03 A6 */	mtctr r12
/* 80397F18 003614D8  4E 80 04 21 */	bctrl 
/* 80397F1C 003614DC  38 00 00 03 */	li r0, 3
/* 80397F20 003614E0  90 1E 00 04 */	stw r0, 4(r30)
.L_80397F24:
/* 80397F24 003614E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80397F28 003614E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80397F2C 003614EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80397F30 003614F0  7C 08 03 A6 */	mtlr r0
/* 80397F34 003614F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80397F38 003614F8  4E 80 00 20 */	blr 
.endfn ADXB_ExecOneSpsd

.fn ADXB_CheckSpsd, global
/* 80397F3C 003614FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80397F40 00361500  7C 08 02 A6 */	mflr r0
/* 80397F44 00361504  3C 80 80 52 */	lis r4, lbl_8051C748@ha
/* 80397F48 00361508  38 A0 00 04 */	li r5, 4
/* 80397F4C 0036150C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80397F50 00361510  38 84 C7 48 */	addi r4, r4, lbl_8051C748@l
/* 80397F54 00361514  4B F2 68 D9 */	bl memcmp
/* 80397F58 00361518  7C 60 00 34 */	cntlzw r0, r3
/* 80397F5C 0036151C  54 03 D9 7E */	srwi r3, r0, 5
/* 80397F60 00361520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80397F64 00361524  7C 08 03 A6 */	mtlr r0
/* 80397F68 00361528  38 21 00 10 */	addi r1, r1, 0x10
/* 80397F6C 0036152C  4E 80 00 20 */	blr 
.endfn ADXB_CheckSpsd


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_8051C748
lbl_8051C748:
	.asciz "SPSD"
	.balign 4