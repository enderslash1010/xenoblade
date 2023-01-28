.include "macros.inc"
.file "CriWare/adx/adxt/adx_xpnd.o"

# 0x80385720 - 0x80385B08
.text
.balign 4

.fn ADXPD_Init, global
/* 80385720 0034ECE0  3C 60 80 5F */	lis r3, lbl_805E8600@ha
/* 80385724 0034ECE4  38 80 00 00 */	li r4, 0x0
/* 80385728 0034ECE8  38 63 86 00 */	addi r3, r3, lbl_805E8600@l
/* 8038572C 0034ECEC  38 A0 03 C0 */	li r5, 0x3c0
/* 80385730 0034ECF0  4B C7 EC 20 */	b memset
.endfn ADXPD_Init

.fn ADXPD_Create, global
/* 80385734 0034ECF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80385738 0034ECF8  7C 08 02 A6 */	mflr r0
/* 8038573C 0034ECFC  3C 60 80 5F */	lis r3, lbl_805E8600@ha
/* 80385740 0034ED00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80385744 0034ED04  38 00 00 02 */	li r0, 0x2
/* 80385748 0034ED08  38 63 86 00 */	addi r3, r3, lbl_805E8600@l
/* 8038574C 0034ED0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80385750 0034ED10  3B E0 00 00 */	li r31, 0x0
/* 80385754 0034ED14  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80385758 0034ED18  7C 09 03 A6 */	mtctr r0
.L_8038575C:
/* 8038575C 0034ED1C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 80385760 0034ED20  2C 00 00 00 */	cmpwi r0, 0x0
/* 80385764 0034ED24  41 82 00 80 */	beq .L_803857E4
/* 80385768 0034ED28  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8038576C 0034ED2C  3B FF 00 01 */	addi r31, r31, 0x1
/* 80385770 0034ED30  2C 00 00 00 */	cmpwi r0, 0x0
/* 80385774 0034ED34  41 82 00 70 */	beq .L_803857E4
/* 80385778 0034ED38  80 03 00 78 */	lwz r0, 0x78(r3)
/* 8038577C 0034ED3C  3B FF 00 01 */	addi r31, r31, 0x1
/* 80385780 0034ED40  2C 00 00 00 */	cmpwi r0, 0x0
/* 80385784 0034ED44  41 82 00 60 */	beq .L_803857E4
/* 80385788 0034ED48  80 03 00 B4 */	lwz r0, 0xb4(r3)
/* 8038578C 0034ED4C  3B FF 00 01 */	addi r31, r31, 0x1
/* 80385790 0034ED50  2C 00 00 00 */	cmpwi r0, 0x0
/* 80385794 0034ED54  41 82 00 50 */	beq .L_803857E4
/* 80385798 0034ED58  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 8038579C 0034ED5C  3B FF 00 01 */	addi r31, r31, 0x1
/* 803857A0 0034ED60  2C 00 00 00 */	cmpwi r0, 0x0
/* 803857A4 0034ED64  41 82 00 40 */	beq .L_803857E4
/* 803857A8 0034ED68  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 803857AC 0034ED6C  3B FF 00 01 */	addi r31, r31, 0x1
/* 803857B0 0034ED70  2C 00 00 00 */	cmpwi r0, 0x0
/* 803857B4 0034ED74  41 82 00 30 */	beq .L_803857E4
/* 803857B8 0034ED78  80 03 01 68 */	lwz r0, 0x168(r3)
/* 803857BC 0034ED7C  3B FF 00 01 */	addi r31, r31, 0x1
/* 803857C0 0034ED80  2C 00 00 00 */	cmpwi r0, 0x0
/* 803857C4 0034ED84  41 82 00 20 */	beq .L_803857E4
/* 803857C8 0034ED88  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 803857CC 0034ED8C  3B FF 00 01 */	addi r31, r31, 0x1
/* 803857D0 0034ED90  2C 00 00 00 */	cmpwi r0, 0x0
/* 803857D4 0034ED94  41 82 00 10 */	beq .L_803857E4
/* 803857D8 0034ED98  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 803857DC 0034ED9C  3B FF 00 01 */	addi r31, r31, 0x1
/* 803857E0 0034EDA0  42 00 FF 7C */	bdnz .L_8038575C
.L_803857E4:
/* 803857E4 0034EDA4  2C 1F 00 10 */	cmpwi r31, 0x10
/* 803857E8 0034EDA8  40 82 00 0C */	bne .L_803857F4
/* 803857EC 0034EDAC  38 60 00 00 */	li r3, 0x0
/* 803857F0 0034EDB0  48 00 00 68 */	b .L_80385858
.L_803857F4:
/* 803857F4 0034EDB4  1C 1F 00 3C */	mulli r0, r31, 0x3c
/* 803857F8 0034EDB8  3C 60 80 5F */	lis r3, lbl_805E8600@ha
/* 803857FC 0034EDBC  38 80 00 00 */	li r4, 0x0
/* 80385800 0034EDC0  38 63 86 00 */	addi r3, r3, lbl_805E8600@l
/* 80385804 0034EDC4  7F C3 02 14 */	add r30, r3, r0
/* 80385808 0034EDC8  38 A0 00 3C */	li r5, 0x3c
/* 8038580C 0034EDCC  7F C3 F3 78 */	mr r3, r30
/* 80385810 0034EDD0  4B C7 EB 41 */	bl memset
/* 80385814 0034EDD4  38 00 00 01 */	li r0, 0x1
/* 80385818 0034EDD8  3C 60 00 01 */	lis r3, 0x1
/* 8038581C 0034EDDC  90 1E 00 00 */	stw r0, 0x0(r30)
/* 80385820 0034EDE0  38 83 AC 44 */	addi r4, r3, -0x53bc
/* 80385824 0034EDE4  38 00 00 00 */	li r0, 0x0
/* 80385828 0034EDE8  38 BE 00 30 */	addi r5, r30, 0x30
/* 8038582C 0034EDEC  93 FE 00 04 */	stw r31, 0x4(r30)
/* 80385830 0034EDF0  38 DE 00 32 */	addi r6, r30, 0x32
/* 80385834 0034EDF4  38 60 01 F4 */	li r3, 0x1f4
/* 80385838 0034EDF8  90 1E 00 08 */	stw r0, 0x8(r30)
/* 8038583C 0034EDFC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80385840 0034EE00  48 00 42 85 */	bl ADX_GetCoefficient
/* 80385844 0034EE04  38 7E 00 28 */	addi r3, r30, 0x28
/* 80385848 0034EE08  38 80 00 00 */	li r4, 0x0
/* 8038584C 0034EE0C  38 A0 00 08 */	li r5, 0x8
/* 80385850 0034EE10  4B C7 EB 01 */	bl memset
/* 80385854 0034EE14  7F C3 F3 78 */	mr r3, r30
.L_80385858:
/* 80385858 0034EE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038585C 0034EE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80385860 0034EE20  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80385864 0034EE24  7C 08 03 A6 */	mtlr r0
/* 80385868 0034EE28  38 21 00 10 */	addi r1, r1, 0x10
/* 8038586C 0034EE2C  4E 80 00 20 */	blr
.endfn ADXPD_Create

.fn ADXPD_SetCoef, global
/* 80385870 0034EE30  7C 66 1B 78 */	mr r6, r3
/* 80385874 0034EE34  7C A3 2B 78 */	mr r3, r5
/* 80385878 0034EE38  38 A6 00 30 */	addi r5, r6, 0x30
/* 8038587C 0034EE3C  38 C6 00 32 */	addi r6, r6, 0x32
/* 80385880 0034EE40  48 00 42 44 */	b ADX_GetCoefficient
.endfn ADXPD_SetCoef

.fn ADXPD_SetDly, global
/* 80385884 0034EE44  A8 04 00 00 */	lha r0, 0x0(r4)
/* 80385888 0034EE48  B0 03 00 28 */	sth r0, 0x28(r3)
/* 8038588C 0034EE4C  A8 05 00 00 */	lha r0, 0x0(r5)
/* 80385890 0034EE50  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 80385894 0034EE54  A8 04 00 02 */	lha r0, 0x2(r4)
/* 80385898 0034EE58  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 8038589C 0034EE5C  A8 05 00 02 */	lha r0, 0x2(r5)
/* 803858A0 0034EE60  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 803858A4 0034EE64  4E 80 00 20 */	blr
.endfn ADXPD_SetDly

.fn ADXPD_GetDly, global
/* 803858A8 0034EE68  A8 03 00 28 */	lha r0, 0x28(r3)
/* 803858AC 0034EE6C  B0 04 00 00 */	sth r0, 0x0(r4)
/* 803858B0 0034EE70  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 803858B4 0034EE74  B0 05 00 00 */	sth r0, 0x0(r5)
/* 803858B8 0034EE78  A8 03 00 2C */	lha r0, 0x2c(r3)
/* 803858BC 0034EE7C  B0 04 00 02 */	sth r0, 0x2(r4)
/* 803858C0 0034EE80  A8 03 00 2E */	lha r0, 0x2e(r3)
/* 803858C4 0034EE84  B0 05 00 02 */	sth r0, 0x2(r5)
/* 803858C8 0034EE88  4E 80 00 20 */	blr
.endfn ADXPD_GetDly

.fn ADXPD_SetExtPrm, global
/* 803858CC 0034EE8C  B0 83 00 34 */	sth r4, 0x34(r3)
/* 803858D0 0034EE90  B0 A3 00 36 */	sth r5, 0x36(r3)
/* 803858D4 0034EE94  B0 C3 00 38 */	sth r6, 0x38(r3)
/* 803858D8 0034EE98  4E 80 00 20 */	blr
.endfn ADXPD_SetExtPrm

.fn ADXPD_GetExtPrm, global
/* 803858DC 0034EE9C  A8 03 00 34 */	lha r0, 0x34(r3)
/* 803858E0 0034EEA0  B0 04 00 00 */	sth r0, 0x0(r4)
/* 803858E4 0034EEA4  A8 03 00 36 */	lha r0, 0x36(r3)
/* 803858E8 0034EEA8  B0 05 00 00 */	sth r0, 0x0(r5)
/* 803858EC 0034EEAC  A8 03 00 38 */	lha r0, 0x38(r3)
/* 803858F0 0034EEB0  B0 06 00 00 */	sth r0, 0x0(r6)
/* 803858F4 0034EEB4  4E 80 00 20 */	blr
.endfn ADXPD_GetExtPrm

.fn ADXPD_Destroy, global
/* 803858F8 0034EEB8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803858FC 0034EEBC  4D 82 00 20 */	beqlr
/* 80385900 0034EEC0  38 00 00 00 */	li r0, 0x0
/* 80385904 0034EEC4  38 80 00 00 */	li r4, 0x0
/* 80385908 0034EEC8  90 03 00 00 */	stw r0, 0x0(r3)
/* 8038590C 0034EECC  38 A0 00 3C */	li r5, 0x3c
/* 80385910 0034EED0  4B C7 EA 40 */	b memset
/* 80385914 0034EED4  4E 80 00 20 */	blr
.endfn ADXPD_Destroy

.fn ADXPD_GetStat, global
/* 80385918 0034EED8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8038591C 0034EEDC  4E 80 00 20 */	blr
.endfn ADXPD_GetStat

.fn ADXPD_EntryMono, global
/* 80385920 0034EEE0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80385924 0034EEE4  2C 00 00 00 */	cmpwi r0, 0x0
/* 80385928 0034EEE8  40 82 00 24 */	bne .L_8038594C
/* 8038592C 0034EEEC  38 00 00 01 */	li r0, 0x1
/* 80385930 0034EEF0  90 83 00 18 */	stw r4, 0x18(r3)
/* 80385934 0034EEF4  90 03 00 14 */	stw r0, 0x14(r3)
/* 80385938 0034EEF8  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 8038593C 0034EEFC  90 C3 00 20 */	stw r6, 0x20(r3)
/* 80385940 0034EF00  90 E3 00 24 */	stw r7, 0x24(r3)
/* 80385944 0034EF04  38 60 00 01 */	li r3, 0x1
/* 80385948 0034EF08  4E 80 00 20 */	blr
.L_8038594C:
/* 8038594C 0034EF0C  38 60 00 00 */	li r3, 0x0
/* 80385950 0034EF10  4E 80 00 20 */	blr
.endfn ADXPD_EntryMono

.fn ADXPD_EntrySte, global
/* 80385954 0034EF14  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80385958 0034EF18  2C 00 00 00 */	cmpwi r0, 0x0
/* 8038595C 0034EF1C  40 82 00 24 */	bne .L_80385980
/* 80385960 0034EF20  38 00 00 02 */	li r0, 0x2
/* 80385964 0034EF24  90 83 00 18 */	stw r4, 0x18(r3)
/* 80385968 0034EF28  90 03 00 14 */	stw r0, 0x14(r3)
/* 8038596C 0034EF2C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80385970 0034EF30  90 C3 00 20 */	stw r6, 0x20(r3)
/* 80385974 0034EF34  90 E3 00 24 */	stw r7, 0x24(r3)
/* 80385978 0034EF38  38 60 00 01 */	li r3, 0x1
/* 8038597C 0034EF3C  4E 80 00 20 */	blr
.L_80385980:
/* 80385980 0034EF40  38 60 00 00 */	li r3, 0x0
/* 80385984 0034EF44  4E 80 00 20 */	blr
.endfn ADXPD_EntrySte

.fn ADXPD_EntryPl2, global
/* 80385988 0034EF48  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8038598C 0034EF4C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80385990 0034EF50  40 82 00 24 */	bne .L_803859B4
/* 80385994 0034EF54  38 00 00 01 */	li r0, 0x1
/* 80385998 0034EF58  90 83 00 18 */	stw r4, 0x18(r3)
/* 8038599C 0034EF5C  90 03 00 14 */	stw r0, 0x14(r3)
/* 803859A0 0034EF60  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 803859A4 0034EF64  90 C3 00 20 */	stw r6, 0x20(r3)
/* 803859A8 0034EF68  90 E3 00 24 */	stw r7, 0x24(r3)
/* 803859AC 0034EF6C  38 60 00 01 */	li r3, 0x1
/* 803859B0 0034EF70  4E 80 00 20 */	blr
.L_803859B4:
/* 803859B4 0034EF74  38 60 00 00 */	li r3, 0x0
/* 803859B8 0034EF78  4E 80 00 20 */	blr
.endfn ADXPD_EntryPl2

.fn ADXPD_Start, global
/* 803859BC 0034EF7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803859C0 0034EF80  2C 00 00 00 */	cmpwi r0, 0x0
/* 803859C4 0034EF84  4C 82 00 20 */	bnelr
/* 803859C8 0034EF88  38 80 00 00 */	li r4, 0x0
/* 803859CC 0034EF8C  38 00 00 01 */	li r0, 0x1
/* 803859D0 0034EF90  90 83 00 10 */	stw r4, 0x10(r3)
/* 803859D4 0034EF94  90 03 00 0C */	stw r0, 0xc(r3)
/* 803859D8 0034EF98  4E 80 00 20 */	blr
.endfn ADXPD_Start

.fn ADXPD_Stop, global
/* 803859DC 0034EF9C  38 00 00 00 */	li r0, 0x0
/* 803859E0 0034EFA0  38 80 00 00 */	li r4, 0x0
/* 803859E4 0034EFA4  90 03 00 0C */	stw r0, 0xc(r3)
/* 803859E8 0034EFA8  38 A0 00 08 */	li r5, 0x8
/* 803859EC 0034EFAC  38 63 00 28 */	addi r3, r3, 0x28
/* 803859F0 0034EFB0  4B C7 E9 60 */	b memset
.endfn ADXPD_Stop

.fn ADXPD_Reset, global
/* 803859F4 0034EFB4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803859F8 0034EFB8  2C 00 00 03 */	cmpwi r0, 0x3
/* 803859FC 0034EFBC  4C 82 00 20 */	bnelr
/* 80385A00 0034EFC0  38 00 00 00 */	li r0, 0x0
/* 80385A04 0034EFC4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80385A08 0034EFC8  4E 80 00 20 */	blr
.endfn ADXPD_Reset

.fn ADXPD_GetNumBlk, global
/* 80385A0C 0034EFCC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80385A10 0034EFD0  4E 80 00 20 */	blr
.endfn ADXPD_GetNumBlk

.fn ADXPD_ExecHndl, global
/* 80385A14 0034EFD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80385A18 0034EFD8  7C 08 02 A6 */	mflr r0
/* 80385A1C 0034EFDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80385A20 0034EFE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80385A24 0034EFE4  7C 7F 1B 78 */	mr r31, r3
/* 80385A28 0034EFE8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80385A2C 0034EFEC  2C 00 00 01 */	cmpwi r0, 0x1
/* 80385A30 0034EFF0  40 82 00 0C */	bne .L_80385A3C
/* 80385A34 0034EFF4  38 00 00 02 */	li r0, 0x2
/* 80385A38 0034EFF8  90 03 00 0C */	stw r0, 0xc(r3)
.L_80385A3C:
/* 80385A3C 0034EFFC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80385A40 0034F000  2C 00 00 02 */	cmpwi r0, 0x2
/* 80385A44 0034F004  40 82 00 B0 */	bne .L_80385AF4
/* 80385A48 0034F008  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80385A4C 0034F00C  2C 00 00 01 */	cmpwi r0, 0x1
/* 80385A50 0034F010  40 82 00 38 */	bne .L_80385A88
/* 80385A54 0034F014  A8 03 00 38 */	lha r0, 0x38(r3)
/* 80385A58 0034F018  38 DF 00 28 */	addi r6, r31, 0x28
/* 80385A5C 0034F01C  39 3F 00 34 */	addi r9, r31, 0x34
/* 80385A60 0034F020  90 01 00 08 */	stw r0, 0x8(r1)
/* 80385A64 0034F024  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80385A68 0034F028  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80385A6C 0034F02C  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 80385A70 0034F030  A8 FF 00 30 */	lha r7, 0x30(r31)
/* 80385A74 0034F034  A9 1F 00 32 */	lha r8, 0x32(r31)
/* 80385A78 0034F038  A9 5F 00 36 */	lha r10, 0x36(r31)
/* 80385A7C 0034F03C  48 00 39 91 */	bl ADX_DecodeMono4
/* 80385A80 0034F040  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80385A84 0034F044  48 00 00 68 */	b .L_80385AEC
.L_80385A88:
/* 80385A88 0034F048  38 03 00 34 */	addi r0, r3, 0x34
/* 80385A8C 0034F04C  38 DF 00 28 */	addi r6, r31, 0x28
/* 80385A90 0034F050  90 01 00 08 */	stw r0, 0x8(r1)
/* 80385A94 0034F054  39 1F 00 2C */	addi r8, r31, 0x2c
/* 80385A98 0034F058  A8 03 00 36 */	lha r0, 0x36(r3)
/* 80385A9C 0034F05C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80385AA0 0034F060  A8 03 00 38 */	lha r0, 0x38(r3)
/* 80385AA4 0034F064  90 01 00 10 */	stw r0, 0x10(r1)
/* 80385AA8 0034F068  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80385AAC 0034F06C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80385AB0 0034F070  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 80385AB4 0034F074  80 FF 00 24 */	lwz r7, 0x24(r31)
/* 80385AB8 0034F078  A9 3F 00 30 */	lha r9, 0x30(r31)
/* 80385ABC 0034F07C  A9 5F 00 32 */	lha r10, 0x32(r31)
/* 80385AC0 0034F080  48 00 3F A9 */	bl ADX_DecodeSte4
/* 80385AC4 0034F084  54 64 0F FE */	srwi r4, r3, 31
/* 80385AC8 0034F088  54 60 07 FE */	clrlwi r0, r3, 31
/* 80385ACC 0034F08C  7C 00 22 78 */	xor r0, r0, r4
/* 80385AD0 0034F090  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80385AD4 0034F094  7C 04 00 50 */	subf r0, r4, r0
/* 80385AD8 0034F098  2C 00 00 01 */	cmpwi r0, 0x1
/* 80385ADC 0034F09C  40 82 00 10 */	bne .L_80385AEC
/* 80385AE0 0034F0A0  38 00 00 01 */	li r0, 0x1
/* 80385AE4 0034F0A4  3C 60 80 5F */	lis r3, adxpd_internal_error@ha
/* 80385AE8 0034F0A8  90 03 89 C0 */	stw r0, adxpd_internal_error@l(r3)
.L_80385AEC:
/* 80385AEC 0034F0AC  38 00 00 03 */	li r0, 0x3
/* 80385AF0 0034F0B0  90 1F 00 0C */	stw r0, 0xc(r31)
.L_80385AF4:
/* 80385AF4 0034F0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80385AF8 0034F0B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80385AFC 0034F0BC  7C 08 03 A6 */	mtlr r0
/* 80385B00 0034F0C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80385B04 0034F0C4  4E 80 00 20 */	blr
.endfn ADXPD_ExecHndl

# 0x805E8600 - 0x805E89C8
.section .bss, "wa", @nobits
.balign 8
.sym lbl_805E8600, global
	.skip 0x3C0

.obj adxpd_internal_error, global
	.skip 0x8
