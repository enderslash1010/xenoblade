.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__Q44nw4r3snd6detail14BankFileReaderFPCv, global
/* 804119F0 003DAFB0  80 A4 00 00 */	lwz r5, 0(r4)
/* 804119F4 003DAFB4  38 C0 00 00 */	li r6, 0
/* 804119F8 003DAFB8  90 C3 00 00 */	stw r6, 0(r3)
/* 804119FC 003DAFBC  3C 05 AD BE */	addis r0, r5, 0xadbe
/* 80411A00 003DAFC0  28 00 4E 4B */	cmplwi r0, 0x4e4b
/* 80411A04 003DAFC4  90 C3 00 04 */	stw r6, 4(r3)
/* 80411A08 003DAFC8  90 C3 00 08 */	stw r6, 8(r3)
/* 80411A0C 003DAFCC  41 82 00 0C */	beq .L_80411A18
/* 80411A10 003DAFD0  38 00 00 00 */	li r0, 0
/* 80411A14 003DAFD4  48 00 00 30 */	b .L_80411A44
.L_80411A18:
/* 80411A18 003DAFD8  A0 C4 00 06 */	lhz r6, 6(r4)
/* 80411A1C 003DAFDC  28 06 01 00 */	cmplwi r6, 0x100
/* 80411A20 003DAFE0  40 80 00 0C */	bge .L_80411A2C
/* 80411A24 003DAFE4  38 00 00 00 */	li r0, 0
/* 80411A28 003DAFE8  48 00 00 1C */	b .L_80411A44
.L_80411A2C:
/* 80411A2C 003DAFEC  20 06 01 02 */	subfic r0, r6, 0x102
/* 80411A30 003DAFF0  38 A0 01 02 */	li r5, 0x102
/* 80411A34 003DAFF4  7C A5 33 38 */	orc r5, r5, r6
/* 80411A38 003DAFF8  54 00 F8 7E */	srwi r0, r0, 1
/* 80411A3C 003DAFFC  7C 00 28 50 */	subf r0, r0, r5
/* 80411A40 003DB000  54 00 0F FE */	srwi r0, r0, 0x1f
.L_80411A44:
/* 80411A44 003DB004  2C 00 00 00 */	cmpwi r0, 0
/* 80411A48 003DB008  4D 82 00 20 */	beqlr 
/* 80411A4C 003DB00C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80411A50 003DB010  90 83 00 00 */	stw r4, 0(r3)
/* 80411A54 003DB014  2C 00 00 00 */	cmpwi r0, 0
/* 80411A58 003DB018  41 82 00 0C */	beq .L_80411A64
/* 80411A5C 003DB01C  7C 00 22 14 */	add r0, r0, r4
/* 80411A60 003DB020  90 03 00 04 */	stw r0, 4(r3)
.L_80411A64:
/* 80411A64 003DB024  80 83 00 00 */	lwz r4, 0(r3)
/* 80411A68 003DB028  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80411A6C 003DB02C  2C 00 00 00 */	cmpwi r0, 0
/* 80411A70 003DB030  4D 82 00 20 */	beqlr 
/* 80411A74 003DB034  7C 00 22 14 */	add r0, r0, r4
/* 80411A78 003DB038  90 03 00 08 */	stw r0, 8(r3)
/* 80411A7C 003DB03C  4E 80 00 20 */	blr 
.endfn __ct__Q44nw4r3snd6detail14BankFileReaderFPCv

.fn GetInstParam__Q44nw4r3snd6detail14BankFileReaderCFiii, global
/* 80411A80 003DB040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411A84 003DB044  7C 08 02 A6 */	mflr r0
/* 80411A88 003DB048  90 01 00 14 */	stw r0, 0x14(r1)
/* 80411A8C 003DB04C  80 03 00 00 */	lwz r0, 0(r3)
/* 80411A90 003DB050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80411A94 003DB054  7C DF 33 78 */	mr r31, r6
/* 80411A98 003DB058  2C 00 00 00 */	cmpwi r0, 0
/* 80411A9C 003DB05C  93 C1 00 08 */	stw r30, 8(r1)
/* 80411AA0 003DB060  7C 7E 1B 78 */	mr r30, r3
/* 80411AA4 003DB064  40 82 00 0C */	bne .L_80411AB0
/* 80411AA8 003DB068  38 60 00 00 */	li r3, 0
/* 80411AAC 003DB06C  48 00 00 C8 */	b .L_80411B74
.L_80411AB0:
/* 80411AB0 003DB070  2C 04 00 00 */	cmpwi r4, 0
/* 80411AB4 003DB074  41 80 00 14 */	blt .L_80411AC8
/* 80411AB8 003DB078  80 C3 00 04 */	lwz r6, 4(r3)
/* 80411ABC 003DB07C  80 06 00 08 */	lwz r0, 8(r6)
/* 80411AC0 003DB080  7C 04 00 00 */	cmpw r4, r0
/* 80411AC4 003DB084  41 80 00 0C */	blt .L_80411AD0
.L_80411AC8:
/* 80411AC8 003DB088  38 60 00 00 */	li r3, 0
/* 80411ACC 003DB08C  48 00 00 A8 */	b .L_80411B74
.L_80411AD0:
/* 80411AD0 003DB090  54 80 18 38 */	slwi r0, r4, 3
/* 80411AD4 003DB094  7C 86 02 14 */	add r4, r6, r0
/* 80411AD8 003DB098  38 84 00 0C */	addi r4, r4, 0xc
/* 80411ADC 003DB09C  88 04 00 01 */	lbz r0, 1(r4)
/* 80411AE0 003DB0A0  28 00 00 04 */	cmplwi r0, 4
/* 80411AE4 003DB0A4  40 82 00 0C */	bne .L_80411AF0
/* 80411AE8 003DB0A8  38 60 00 00 */	li r3, 0
/* 80411AEC 003DB0AC  48 00 00 88 */	b .L_80411B74
.L_80411AF0:
/* 80411AF0 003DB0B0  28 00 00 01 */	cmplwi r0, 1
/* 80411AF4 003DB0B4  41 82 00 1C */	beq .L_80411B10
/* 80411AF8 003DB0B8  48 00 02 39 */	bl GetReferenceToSubRegion__Q44nw4r3snd6detail14BankFileReaderCFPCQ54nw4r3snd6detail4Util128DataRef_v_Q54nw4r3snd6detail8BankFile9InstParam_Q54nw4r3snd6detail8BankFile10RangeTable_Q54nw4r3snd6detail8BankFile10IndexTable_i
/* 80411AFC 003DB0BC  2C 03 00 00 */	cmpwi r3, 0
/* 80411B00 003DB0C0  7C 64 1B 78 */	mr r4, r3
/* 80411B04 003DB0C4  40 82 00 0C */	bne .L_80411B10
/* 80411B08 003DB0C8  38 60 00 00 */	li r3, 0
/* 80411B0C 003DB0CC  48 00 00 68 */	b .L_80411B74
.L_80411B10:
/* 80411B10 003DB0D0  88 04 00 01 */	lbz r0, 1(r4)
/* 80411B14 003DB0D4  28 00 00 04 */	cmplwi r0, 4
/* 80411B18 003DB0D8  40 82 00 0C */	bne .L_80411B24
/* 80411B1C 003DB0DC  38 60 00 00 */	li r3, 0
/* 80411B20 003DB0E0  48 00 00 54 */	b .L_80411B74
.L_80411B24:
/* 80411B24 003DB0E4  28 00 00 01 */	cmplwi r0, 1
/* 80411B28 003DB0E8  41 82 00 24 */	beq .L_80411B4C
/* 80411B2C 003DB0EC  7F C3 F3 78 */	mr r3, r30
/* 80411B30 003DB0F0  7F E5 FB 78 */	mr r5, r31
/* 80411B34 003DB0F4  48 00 01 FD */	bl GetReferenceToSubRegion__Q44nw4r3snd6detail14BankFileReaderCFPCQ54nw4r3snd6detail4Util128DataRef_v_Q54nw4r3snd6detail8BankFile9InstParam_Q54nw4r3snd6detail8BankFile10RangeTable_Q54nw4r3snd6detail8BankFile10IndexTable_i
/* 80411B38 003DB0F8  2C 03 00 00 */	cmpwi r3, 0
/* 80411B3C 003DB0FC  7C 64 1B 78 */	mr r4, r3
/* 80411B40 003DB100  40 82 00 0C */	bne .L_80411B4C
/* 80411B44 003DB104  38 60 00 00 */	li r3, 0
/* 80411B48 003DB108  48 00 00 2C */	b .L_80411B74
.L_80411B4C:
/* 80411B4C 003DB10C  88 04 00 01 */	lbz r0, 1(r4)
/* 80411B50 003DB110  28 00 00 01 */	cmplwi r0, 1
/* 80411B54 003DB114  41 82 00 0C */	beq .L_80411B60
/* 80411B58 003DB118  38 60 00 00 */	li r3, 0
/* 80411B5C 003DB11C  48 00 00 18 */	b .L_80411B74
.L_80411B60:
/* 80411B60 003DB120  80 BE 00 04 */	lwz r5, 4(r30)
/* 80411B64 003DB124  88 64 00 00 */	lbz r3, 0(r4)
/* 80411B68 003DB128  80 84 00 04 */	lwz r4, 4(r4)
/* 80411B6C 003DB12C  38 A5 00 08 */	addi r5, r5, 8
/* 80411B70 003DB130  48 01 7C B9 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
.L_80411B74:
/* 80411B74 003DB134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80411B78 003DB138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411B7C 003DB13C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80411B80 003DB140  7C 08 03 A6 */	mtlr r0
/* 80411B84 003DB144  38 21 00 10 */	addi r1, r1, 0x10
/* 80411B88 003DB148  4E 80 00 20 */	blr 
.endfn GetInstParam__Q44nw4r3snd6detail14BankFileReaderCFiii

.fn ReadInstInfo__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8InstInfoiii, global
/* 80411B8C 003DB14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411B90 003DB150  7C 08 02 A6 */	mflr r0
/* 80411B94 003DB154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80411B98 003DB158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80411B9C 003DB15C  7C 9F 23 78 */	mr r31, r4
/* 80411BA0 003DB160  7C A4 2B 78 */	mr r4, r5
/* 80411BA4 003DB164  7C C5 33 78 */	mr r5, r6
/* 80411BA8 003DB168  93 C1 00 08 */	stw r30, 8(r1)
/* 80411BAC 003DB16C  7C 7E 1B 78 */	mr r30, r3
/* 80411BB0 003DB170  7C E6 3B 78 */	mr r6, r7
/* 80411BB4 003DB174  4B FF FE CD */	bl GetInstParam__Q44nw4r3snd6detail14BankFileReaderCFiii
/* 80411BB8 003DB178  2C 03 00 00 */	cmpwi r3, 0
/* 80411BBC 003DB17C  40 82 00 0C */	bne .L_80411BC8
/* 80411BC0 003DB180  38 60 00 00 */	li r3, 0
/* 80411BC4 003DB184  48 00 01 54 */	b .L_80411D18
.L_80411BC8:
/* 80411BC8 003DB188  88 03 00 09 */	lbz r0, 9(r3)
/* 80411BCC 003DB18C  2C 00 00 00 */	cmpwi r0, 0
/* 80411BD0 003DB190  40 82 00 2C */	bne .L_80411BFC
/* 80411BD4 003DB194  80 03 00 00 */	lwz r0, 0(r3)
/* 80411BD8 003DB198  2C 00 00 00 */	cmpwi r0, 0
/* 80411BDC 003DB19C  40 80 00 0C */	bge .L_80411BE8
/* 80411BE0 003DB1A0  38 60 00 00 */	li r3, 0
/* 80411BE4 003DB1A4  48 00 01 34 */	b .L_80411D18
.L_80411BE8:
/* 80411BE8 003DB1A8  38 00 00 00 */	li r0, 0
/* 80411BEC 003DB1AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80411BF0 003DB1B0  80 03 00 00 */	lwz r0, 0(r3)
/* 80411BF4 003DB1B4  90 1F 00 04 */	stw r0, 4(r31)
/* 80411BF8 003DB1B8  48 00 00 6C */	b .L_80411C64
.L_80411BFC:
/* 80411BFC 003DB1BC  28 00 00 01 */	cmplwi r0, 1
/* 80411C00 003DB1C0  40 82 00 2C */	bne .L_80411C2C
/* 80411C04 003DB1C4  80 03 00 00 */	lwz r0, 0(r3)
/* 80411C08 003DB1C8  2C 00 00 00 */	cmpwi r0, 0
/* 80411C0C 003DB1CC  40 82 00 0C */	bne .L_80411C18
/* 80411C10 003DB1D0  38 60 00 00 */	li r3, 0
/* 80411C14 003DB1D4  48 00 01 04 */	b .L_80411D18
.L_80411C18:
/* 80411C18 003DB1D8  38 00 00 01 */	li r0, 1
/* 80411C1C 003DB1DC  90 1F 00 00 */	stw r0, 0(r31)
/* 80411C20 003DB1E0  80 03 00 00 */	lwz r0, 0(r3)
/* 80411C24 003DB1E4  90 1F 00 04 */	stw r0, 4(r31)
/* 80411C28 003DB1E8  48 00 00 3C */	b .L_80411C64
.L_80411C2C:
/* 80411C2C 003DB1EC  28 00 00 02 */	cmplwi r0, 2
/* 80411C30 003DB1F0  40 82 00 2C */	bne .L_80411C5C
/* 80411C34 003DB1F4  80 03 00 00 */	lwz r0, 0(r3)
/* 80411C38 003DB1F8  2C 00 00 00 */	cmpwi r0, 0
/* 80411C3C 003DB1FC  40 82 00 0C */	bne .L_80411C48
/* 80411C40 003DB200  38 60 00 00 */	li r3, 0
/* 80411C44 003DB204  48 00 00 D4 */	b .L_80411D18
.L_80411C48:
/* 80411C48 003DB208  38 00 00 02 */	li r0, 2
/* 80411C4C 003DB20C  90 1F 00 00 */	stw r0, 0(r31)
/* 80411C50 003DB210  80 03 00 00 */	lwz r0, 0(r3)
/* 80411C54 003DB214  90 1F 00 04 */	stw r0, 4(r31)
/* 80411C58 003DB218  48 00 00 0C */	b .L_80411C64
.L_80411C5C:
/* 80411C5C 003DB21C  38 60 00 00 */	li r3, 0
/* 80411C60 003DB220  48 00 00 B8 */	b .L_80411D18
.L_80411C64:
/* 80411C64 003DB224  88 03 00 04 */	lbz r0, 4(r3)
/* 80411C68 003DB228  80 9E 00 00 */	lwz r4, 0(r30)
/* 80411C6C 003DB22C  98 1F 00 08 */	stb r0, 8(r31)
/* 80411C70 003DB230  88 03 00 08 */	lbz r0, 8(r3)
/* 80411C74 003DB234  98 1F 00 09 */	stb r0, 9(r31)
/* 80411C78 003DB238  88 03 00 05 */	lbz r0, 5(r3)
/* 80411C7C 003DB23C  98 1F 00 0A */	stb r0, 0xa(r31)
/* 80411C80 003DB240  88 03 00 06 */	lbz r0, 6(r3)
/* 80411C84 003DB244  98 1F 00 0B */	stb r0, 0xb(r31)
/* 80411C88 003DB248  88 03 00 07 */	lbz r0, 7(r3)
/* 80411C8C 003DB24C  98 1F 00 0C */	stb r0, 0xc(r31)
/* 80411C90 003DB250  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80411C94 003DB254  98 1F 00 15 */	stb r0, 0x15(r31)
/* 80411C98 003DB258  88 03 00 0E */	lbz r0, 0xe(r3)
/* 80411C9C 003DB25C  98 1F 00 16 */	stb r0, 0x16(r31)
/* 80411CA0 003DB260  A0 04 00 06 */	lhz r0, 6(r4)
/* 80411CA4 003DB264  28 00 01 01 */	cmplwi r0, 0x101
/* 80411CA8 003DB268  41 80 00 18 */	blt .L_80411CC0
/* 80411CAC 003DB26C  88 03 00 0D */	lbz r0, 0xd(r3)
/* 80411CB0 003DB270  98 1F 00 17 */	stb r0, 0x17(r31)
/* 80411CB4 003DB274  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80411CB8 003DB278  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80411CBC 003DB27C  48 00 00 14 */	b .L_80411CD0
.L_80411CC0:
/* 80411CC0 003DB280  C0 02 C3 58 */	lfs f0, float_8066C6D8@sda21(r2)
/* 80411CC4 003DB284  38 00 00 7F */	li r0, 0x7f
/* 80411CC8 003DB288  98 1F 00 17 */	stb r0, 0x17(r31)
/* 80411CCC 003DB28C  D0 1F 00 18 */	stfs f0, 0x18(r31)
.L_80411CD0:
/* 80411CD0 003DB290  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80411CD4 003DB294  2C 00 00 01 */	cmpwi r0, 1
/* 80411CD8 003DB298  41 82 00 20 */	beq .L_80411CF8
/* 80411CDC 003DB29C  40 80 00 28 */	bge .L_80411D04
/* 80411CE0 003DB2A0  2C 00 00 00 */	cmpwi r0, 0
/* 80411CE4 003DB2A4  40 80 00 08 */	bge .L_80411CEC
/* 80411CE8 003DB2A8  48 00 00 1C */	b .L_80411D04
.L_80411CEC:
/* 80411CEC 003DB2AC  38 00 00 00 */	li r0, 0
/* 80411CF0 003DB2B0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80411CF4 003DB2B4  48 00 00 18 */	b .L_80411D0C
.L_80411CF8:
/* 80411CF8 003DB2B8  38 00 00 01 */	li r0, 1
/* 80411CFC 003DB2BC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80411D00 003DB2C0  48 00 00 0C */	b .L_80411D0C
.L_80411D04:
/* 80411D04 003DB2C4  38 60 00 00 */	li r3, 0
/* 80411D08 003DB2C8  48 00 00 10 */	b .L_80411D18
.L_80411D0C:
/* 80411D0C 003DB2CC  88 03 00 0B */	lbz r0, 0xb(r3)
/* 80411D10 003DB2D0  38 60 00 01 */	li r3, 1
/* 80411D14 003DB2D4  98 1F 00 14 */	stb r0, 0x14(r31)
.L_80411D18:
/* 80411D18 003DB2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80411D1C 003DB2DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411D20 003DB2E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80411D24 003DB2E4  7C 08 03 A6 */	mtlr r0
/* 80411D28 003DB2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80411D2C 003DB2EC  4E 80 00 20 */	blr 
.endfn ReadInstInfo__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8InstInfoiii

#GetReferenceToSubRegion__Q44nw4r3snd6detail14BankFileReaderCFPCQ54nw4r3snd6detail4Util128DataRef<v,Q54nw4r3snd6detail8BankFile9InstParam,Q54nw4r3snd6detail8BankFile10RangeTable,Q54nw4r3snd6detail8BankFile10IndexTable>i
.fn GetReferenceToSubRegion__Q44nw4r3snd6detail14BankFileReaderCFPCQ54nw4r3snd6detail4Util128DataRef_v_Q54nw4r3snd6detail8BankFile9InstParam_Q54nw4r3snd6detail8BankFile10RangeTable_Q54nw4r3snd6detail8BankFile10IndexTable_i, global
/* 80411D30 003DB2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411D34 003DB2F4  7C 08 02 A6 */	mflr r0
/* 80411D38 003DB2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80411D3C 003DB2FC  88 04 00 01 */	lbz r0, 1(r4)
/* 80411D40 003DB300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80411D44 003DB304  7C BF 2B 78 */	mr r31, r5
/* 80411D48 003DB308  2C 00 00 02 */	cmpwi r0, 2
/* 80411D4C 003DB30C  38 A0 00 00 */	li r5, 0
/* 80411D50 003DB310  41 82 00 2C */	beq .L_80411D7C
/* 80411D54 003DB314  40 80 00 14 */	bge .L_80411D68
/* 80411D58 003DB318  2C 00 00 00 */	cmpwi r0, 0
/* 80411D5C 003DB31C  41 82 00 E4 */	beq .L_80411E40
/* 80411D60 003DB320  40 80 00 14 */	bge .L_80411D74
/* 80411D64 003DB324  48 00 00 DC */	b .L_80411E40
.L_80411D68:
/* 80411D68 003DB328  2C 00 00 04 */	cmpwi r0, 4
/* 80411D6C 003DB32C  40 80 00 D4 */	bge .L_80411E40
/* 80411D70 003DB330  48 00 00 7C */	b .L_80411DEC
.L_80411D74:
/* 80411D74 003DB334  7C 85 23 78 */	mr r5, r4
/* 80411D78 003DB338  48 00 00 C8 */	b .L_80411E40
.L_80411D7C:
/* 80411D7C 003DB33C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80411D80 003DB340  88 64 00 00 */	lbz r3, 0(r4)
/* 80411D84 003DB344  80 84 00 04 */	lwz r4, 4(r4)
/* 80411D88 003DB348  38 A5 00 08 */	addi r5, r5, 8
/* 80411D8C 003DB34C  48 01 7A 9D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 80411D90 003DB350  2C 03 00 00 */	cmpwi r3, 0
/* 80411D94 003DB354  40 82 00 0C */	bne .L_80411DA0
/* 80411D98 003DB358  38 60 00 00 */	li r3, 0
/* 80411D9C 003DB35C  48 00 00 A8 */	b .L_80411E44
.L_80411DA0:
/* 80411DA0 003DB360  38 A0 00 00 */	li r5, 0
/* 80411DA4 003DB364  48 00 00 1C */	b .L_80411DC0
.L_80411DA8:
/* 80411DA8 003DB368  88 03 00 00 */	lbz r0, 0(r3)
/* 80411DAC 003DB36C  38 A5 00 01 */	addi r5, r5, 1
/* 80411DB0 003DB370  7C 05 00 00 */	cmpw r5, r0
/* 80411DB4 003DB374  41 80 00 0C */	blt .L_80411DC0
/* 80411DB8 003DB378  38 60 00 00 */	li r3, 0
/* 80411DBC 003DB37C  48 00 00 88 */	b .L_80411E44
.L_80411DC0:
/* 80411DC0 003DB380  7C 83 2A 14 */	add r4, r3, r5
/* 80411DC4 003DB384  88 04 00 01 */	lbz r0, 1(r4)
/* 80411DC8 003DB388  7C 1F 00 00 */	cmpw r31, r0
/* 80411DCC 003DB38C  41 81 FF DC */	bgt .L_80411DA8
/* 80411DD0 003DB390  88 83 00 00 */	lbz r4, 0(r3)
/* 80411DD4 003DB394  54 A0 18 38 */	slwi r0, r5, 3
/* 80411DD8 003DB398  7C 03 02 14 */	add r0, r3, r0
/* 80411DDC 003DB39C  38 64 00 04 */	addi r3, r4, 4
/* 80411DE0 003DB3A0  54 63 00 3A */	rlwinm r3, r3, 0, 0, 0x1d
/* 80411DE4 003DB3A4  7C A3 02 14 */	add r5, r3, r0
/* 80411DE8 003DB3A8  48 00 00 58 */	b .L_80411E40
.L_80411DEC:
/* 80411DEC 003DB3AC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80411DF0 003DB3B0  88 64 00 00 */	lbz r3, 0(r4)
/* 80411DF4 003DB3B4  80 84 00 04 */	lwz r4, 4(r4)
/* 80411DF8 003DB3B8  38 A5 00 08 */	addi r5, r5, 8
/* 80411DFC 003DB3BC  48 01 7A 2D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 80411E00 003DB3C0  2C 03 00 00 */	cmpwi r3, 0
/* 80411E04 003DB3C4  40 82 00 0C */	bne .L_80411E10
/* 80411E08 003DB3C8  38 60 00 00 */	li r3, 0
/* 80411E0C 003DB3CC  48 00 00 38 */	b .L_80411E44
.L_80411E10:
/* 80411E10 003DB3D0  88 83 00 00 */	lbz r4, 0(r3)
/* 80411E14 003DB3D4  7C 1F 20 00 */	cmpw r31, r4
/* 80411E18 003DB3D8  41 80 00 10 */	blt .L_80411E28
/* 80411E1C 003DB3DC  88 03 00 01 */	lbz r0, 1(r3)
/* 80411E20 003DB3E0  7C 1F 00 00 */	cmpw r31, r0
/* 80411E24 003DB3E4  40 81 00 0C */	ble .L_80411E30
.L_80411E28:
/* 80411E28 003DB3E8  38 60 00 00 */	li r3, 0
/* 80411E2C 003DB3EC  48 00 00 18 */	b .L_80411E44
.L_80411E30:
/* 80411E30 003DB3F0  7C 04 F8 50 */	subf r0, r4, r31
/* 80411E34 003DB3F4  54 00 18 38 */	slwi r0, r0, 3
/* 80411E38 003DB3F8  7C 63 02 14 */	add r3, r3, r0
/* 80411E3C 003DB3FC  38 A3 00 04 */	addi r5, r3, 4
.L_80411E40:
/* 80411E40 003DB400  7C A3 2B 78 */	mr r3, r5
.L_80411E44:
/* 80411E44 003DB404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80411E48 003DB408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411E4C 003DB40C  7C 08 03 A6 */	mtlr r0
/* 80411E50 003DB410  38 21 00 10 */	addi r1, r1, 0x10
/* 80411E54 003DB414  4E 80 00 20 */	blr 
.endfn GetReferenceToSubRegion__Q44nw4r3snd6detail14BankFileReaderCFPCQ54nw4r3snd6detail4Util128DataRef_v_Q54nw4r3snd6detail8BankFile9InstParam_Q54nw4r3snd6detail8BankFile10RangeTable_Q54nw4r3snd6detail8BankFile10IndexTable_i

.fn ReadWaveInfo__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8WaveInfoRCQ54nw4r3snd6detail8InstInfo16WaveDataLocationPCvPPCQ44nw4r3snd6detail8WaveInfo, global
/* 80411E58 003DB418  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80411E5C 003DB41C  7C 08 02 A6 */	mflr r0
/* 80411E60 003DB420  2C 07 00 00 */	cmpwi r7, 0
/* 80411E64 003DB424  90 01 00 34 */	stw r0, 0x34(r1)
/* 80411E68 003DB428  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80411E6C 003DB42C  7C 9F 23 78 */	mr r31, r4
/* 80411E70 003DB430  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80411E74 003DB434  7C FE 3B 78 */	mr r30, r7
/* 80411E78 003DB438  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80411E7C 003DB43C  7C DD 33 78 */	mr r29, r6
/* 80411E80 003DB440  41 82 00 0C */	beq .L_80411E8C
/* 80411E84 003DB444  38 00 00 00 */	li r0, 0
/* 80411E88 003DB448  90 07 00 00 */	stw r0, 0(r7)
.L_80411E8C:
/* 80411E8C 003DB44C  80 03 00 00 */	lwz r0, 0(r3)
/* 80411E90 003DB450  2C 00 00 00 */	cmpwi r0, 0
/* 80411E94 003DB454  40 82 00 0C */	bne .L_80411EA0
/* 80411E98 003DB458  38 60 00 00 */	li r3, 0
/* 80411E9C 003DB45C  48 00 01 F4 */	b .L_80412090
.L_80411EA0:
/* 80411EA0 003DB460  80 05 00 00 */	lwz r0, 0(r5)
/* 80411EA4 003DB464  2C 00 00 00 */	cmpwi r0, 0
/* 80411EA8 003DB468  40 82 00 B8 */	bne .L_80411F60
/* 80411EAC 003DB46C  80 63 00 08 */	lwz r3, 8(r3)
/* 80411EB0 003DB470  83 C5 00 04 */	lwz r30, 4(r5)
/* 80411EB4 003DB474  2C 03 00 00 */	cmpwi r3, 0
/* 80411EB8 003DB478  40 82 00 4C */	bne .L_80411F04
/* 80411EBC 003DB47C  7F A4 EB 78 */	mr r4, r29
/* 80411EC0 003DB480  38 61 00 10 */	addi r3, r1, 0x10
/* 80411EC4 003DB484  48 01 79 89 */	bl __ct__Q44nw4r3snd6detail17WaveArchiveReaderFPCv
/* 80411EC8 003DB488  7F C4 F3 78 */	mr r4, r30
/* 80411ECC 003DB48C  38 61 00 10 */	addi r3, r1, 0x10
/* 80411ED0 003DB490  48 01 79 F1 */	bl GetWaveFile__Q44nw4r3snd6detail17WaveArchiveReaderCFi
/* 80411ED4 003DB494  2C 03 00 00 */	cmpwi r3, 0
/* 80411ED8 003DB498  40 82 00 0C */	bne .L_80411EE4
/* 80411EDC 003DB49C  38 60 00 00 */	li r3, 0
/* 80411EE0 003DB4A0  48 00 01 B0 */	b .L_80412090
.L_80411EE4:
/* 80411EE4 003DB4A4  7C 64 1B 78 */	mr r4, r3
/* 80411EE8 003DB4A8  38 61 00 0C */	addi r3, r1, 0xc
/* 80411EEC 003DB4AC  48 01 7A 5D */	bl __ct__Q44nw4r3snd6detail14WaveFileReaderFPCQ54nw4r3snd6detail8WaveFile10FileHeader
/* 80411EF0 003DB4B0  7F E4 FB 78 */	mr r4, r31
/* 80411EF4 003DB4B4  38 61 00 0C */	addi r3, r1, 0xc
/* 80411EF8 003DB4B8  38 A0 00 00 */	li r5, 0
/* 80411EFC 003DB4BC  48 01 7A 75 */	bl ReadWaveInfo__Q44nw4r3snd6detail14WaveFileReaderCFPQ44nw4r3snd6detail8WaveInfoPCv
/* 80411F00 003DB4C0  48 00 01 90 */	b .L_80412090
.L_80411F04:
/* 80411F04 003DB4C4  80 03 00 08 */	lwz r0, 8(r3)
/* 80411F08 003DB4C8  38 A3 00 08 */	addi r5, r3, 8
/* 80411F0C 003DB4CC  7C 1E 00 40 */	cmplw r30, r0
/* 80411F10 003DB4D0  41 80 00 0C */	blt .L_80411F1C
/* 80411F14 003DB4D4  38 60 00 00 */	li r3, 0
/* 80411F18 003DB4D8  48 00 01 78 */	b .L_80412090
.L_80411F1C:
/* 80411F1C 003DB4DC  57 C0 18 38 */	slwi r0, r30, 3
/* 80411F20 003DB4E0  7C 83 02 14 */	add r4, r3, r0
/* 80411F24 003DB4E4  88 64 00 0C */	lbz r3, 0xc(r4)
/* 80411F28 003DB4E8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80411F2C 003DB4EC  48 01 78 FD */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 80411F30 003DB4F0  2C 03 00 00 */	cmpwi r3, 0
/* 80411F34 003DB4F4  40 82 00 0C */	bne .L_80411F40
/* 80411F38 003DB4F8  38 60 00 00 */	li r3, 0
/* 80411F3C 003DB4FC  48 00 01 54 */	b .L_80412090
.L_80411F40:
/* 80411F40 003DB500  7C 64 1B 78 */	mr r4, r3
/* 80411F44 003DB504  38 61 00 08 */	addi r3, r1, 8
/* 80411F48 003DB508  48 01 7A 21 */	bl __ct__Q44nw4r3snd6detail14WaveFileReaderFPCQ54nw4r3snd6detail8WaveFile8WaveInfo
/* 80411F4C 003DB50C  7F E4 FB 78 */	mr r4, r31
/* 80411F50 003DB510  7F A5 EB 78 */	mr r5, r29
/* 80411F54 003DB514  38 61 00 08 */	addi r3, r1, 8
/* 80411F58 003DB518  48 01 7A 19 */	bl ReadWaveInfo__Q44nw4r3snd6detail14WaveFileReaderCFPQ44nw4r3snd6detail8WaveInfoPCv
/* 80411F5C 003DB51C  48 00 01 34 */	b .L_80412090
.L_80411F60:
/* 80411F60 003DB520  2C 00 00 01 */	cmpwi r0, 1
/* 80411F64 003DB524  40 82 00 84 */	bne .L_80411FE8
/* 80411F68 003DB528  80 05 00 04 */	lwz r0, 4(r5)
/* 80411F6C 003DB52C  2C 00 00 00 */	cmpwi r0, 0
/* 80411F70 003DB530  40 82 00 0C */	bne .L_80411F7C
/* 80411F74 003DB534  38 60 00 00 */	li r3, 0
/* 80411F78 003DB538  48 00 01 18 */	b .L_80412090
.L_80411F7C:
/* 80411F7C 003DB53C  2C 07 00 00 */	cmpwi r7, 0
/* 80411F80 003DB540  41 82 00 08 */	beq .L_80411F88
/* 80411F84 003DB544  90 07 00 00 */	stw r0, 0(r7)
.L_80411F88:
/* 80411F88 003DB548  80 E5 00 04 */	lwz r7, 4(r5)
/* 80411F8C 003DB54C  38 00 00 0D */	li r0, 0xd
/* 80411F90 003DB550  38 C4 00 14 */	addi r6, r4, 0x14
/* 80411F94 003DB554  80 67 00 00 */	lwz r3, 0(r7)
/* 80411F98 003DB558  38 A7 00 14 */	addi r5, r7, 0x14
/* 80411F9C 003DB55C  90 64 00 00 */	stw r3, 0(r4)
/* 80411FA0 003DB560  88 67 00 04 */	lbz r3, 4(r7)
/* 80411FA4 003DB564  98 64 00 04 */	stb r3, 4(r4)
/* 80411FA8 003DB568  80 67 00 08 */	lwz r3, 8(r7)
/* 80411FAC 003DB56C  90 64 00 08 */	stw r3, 8(r4)
/* 80411FB0 003DB570  80 67 00 0C */	lwz r3, 0xc(r7)
/* 80411FB4 003DB574  90 64 00 0C */	stw r3, 0xc(r4)
/* 80411FB8 003DB578  80 67 00 10 */	lwz r3, 0x10(r7)
/* 80411FBC 003DB57C  90 64 00 10 */	stw r3, 0x10(r4)
/* 80411FC0 003DB580  80 67 00 14 */	lwz r3, 0x14(r7)
/* 80411FC4 003DB584  90 64 00 14 */	stw r3, 0x14(r4)
/* 80411FC8 003DB588  7C 09 03 A6 */	mtctr r0
.L_80411FCC:
/* 80411FCC 003DB58C  80 65 00 04 */	lwz r3, 4(r5)
/* 80411FD0 003DB590  84 05 00 08 */	lwzu r0, 8(r5)
/* 80411FD4 003DB594  90 66 00 04 */	stw r3, 4(r6)
/* 80411FD8 003DB598  94 06 00 08 */	stwu r0, 8(r6)
/* 80411FDC 003DB59C  42 00 FF F0 */	bdnz .L_80411FCC
/* 80411FE0 003DB5A0  38 60 00 01 */	li r3, 1
/* 80411FE4 003DB5A4  48 00 00 AC */	b .L_80412090
.L_80411FE8:
/* 80411FE8 003DB5A8  2C 00 00 02 */	cmpwi r0, 2
/* 80411FEC 003DB5AC  40 82 00 A0 */	bne .L_8041208C
/* 80411FF0 003DB5B0  80 65 00 04 */	lwz r3, 4(r5)
/* 80411FF4 003DB5B4  2C 03 00 00 */	cmpwi r3, 0
/* 80411FF8 003DB5B8  40 82 00 0C */	bne .L_80412004
/* 80411FFC 003DB5BC  38 60 00 00 */	li r3, 0
/* 80412000 003DB5C0  48 00 00 90 */	b .L_80412090
.L_80412004:
/* 80412004 003DB5C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80412008 003DB5C8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8041200C 003DB5CC  7D 89 03 A6 */	mtctr r12
/* 80412010 003DB5D0  4E 80 04 21 */	bctrl 
/* 80412014 003DB5D4  2C 03 00 00 */	cmpwi r3, 0
/* 80412018 003DB5D8  40 82 00 0C */	bne .L_80412024
/* 8041201C 003DB5DC  38 60 00 00 */	li r3, 0
/* 80412020 003DB5E0  48 00 00 70 */	b .L_80412090
.L_80412024:
/* 80412024 003DB5E4  2C 1E 00 00 */	cmpwi r30, 0
/* 80412028 003DB5E8  41 82 00 08 */	beq .L_80412030
/* 8041202C 003DB5EC  90 7E 00 00 */	stw r3, 0(r30)
.L_80412030:
/* 80412030 003DB5F0  80 C3 00 00 */	lwz r6, 0(r3)
/* 80412034 003DB5F4  38 83 00 14 */	addi r4, r3, 0x14
/* 80412038 003DB5F8  38 00 00 0D */	li r0, 0xd
/* 8041203C 003DB5FC  38 BF 00 14 */	addi r5, r31, 0x14
/* 80412040 003DB600  90 DF 00 00 */	stw r6, 0(r31)
/* 80412044 003DB604  88 C3 00 04 */	lbz r6, 4(r3)
/* 80412048 003DB608  98 DF 00 04 */	stb r6, 4(r31)
/* 8041204C 003DB60C  80 C3 00 08 */	lwz r6, 8(r3)
/* 80412050 003DB610  90 DF 00 08 */	stw r6, 8(r31)
/* 80412054 003DB614  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 80412058 003DB618  90 DF 00 0C */	stw r6, 0xc(r31)
/* 8041205C 003DB61C  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 80412060 003DB620  90 DF 00 10 */	stw r6, 0x10(r31)
/* 80412064 003DB624  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80412068 003DB628  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8041206C 003DB62C  7C 09 03 A6 */	mtctr r0
.L_80412070:
/* 80412070 003DB630  80 64 00 04 */	lwz r3, 4(r4)
/* 80412074 003DB634  84 04 00 08 */	lwzu r0, 8(r4)
/* 80412078 003DB638  90 65 00 04 */	stw r3, 4(r5)
/* 8041207C 003DB63C  94 05 00 08 */	stwu r0, 8(r5)
/* 80412080 003DB640  42 00 FF F0 */	bdnz .L_80412070
/* 80412084 003DB644  38 60 00 01 */	li r3, 1
/* 80412088 003DB648  48 00 00 08 */	b .L_80412090
.L_8041208C:
/* 8041208C 003DB64C  38 60 00 00 */	li r3, 0
.L_80412090:
/* 80412090 003DB650  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80412094 003DB654  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80412098 003DB658  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8041209C 003DB65C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 804120A0 003DB660  7C 08 03 A6 */	mtlr r0
/* 804120A4 003DB664  38 21 00 30 */	addi r1, r1, 0x30
/* 804120A8 003DB668  4E 80 00 20 */	blr 
.endfn ReadWaveInfo__Q44nw4r3snd6detail14BankFileReaderCFPQ44nw4r3snd6detail8WaveInfoRCQ54nw4r3snd6detail8InstInfo16WaveDataLocationPCvPPCQ44nw4r3snd6detail8WaveInfo

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066C6D8
float_8066C6D8:
	.float 1.0
	.4byte 0