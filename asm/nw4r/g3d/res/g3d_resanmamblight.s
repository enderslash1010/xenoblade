.include "macros.inc"
.file "nw4r/g3d/res/g3d_resanmamblight.o"

# 0x803E0488 - 0x803E0558
.text
.balign 4

# nw4r::g3d::ResAnmAmbLight::GetAnmResult(nw4r::g3d::AmbLightAnmResult*, float) const
.fn GetAnmResult__Q34nw4r3g3d14ResAnmAmbLightCFPQ34nw4r3g3d17AmbLightAnmResultf, global
/* 803E0488 003A9A48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E048C 003A9A4C  7C 08 02 A6 */	mflr r0
/* 803E0490 003A9A50  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 803E0494 003A9A54  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E0498 003A9A58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E049C 003A9A5C  7C 9F 23 78 */	mr r31, r4
/* 803E04A0 003A9A60  80 05 00 04 */	lwz r0, 0x4(r5)
/* 803E04A4 003A9A64  80 C5 00 14 */	lwz r6, 0x14(r5)
/* 803E04A8 003A9A68  2C 00 00 00 */	cmpwi r0, 0x0
/* 803E04AC 003A9A6C  54 C7 0F FE */	srwi r7, r6, 31
/* 803E04B0 003A9A70  41 82 00 0C */	beq .L_803E04BC
/* 803E04B4 003A9A74  7C 65 02 14 */	add r3, r5, r0
/* 803E04B8 003A9A78  48 00 00 08 */	b .L_803E04C0
.L_803E04BC:
/* 803E04BC 003A9A7C  38 60 00 00 */	li r3, 0x0
.L_803E04C0:
/* 803E04C0 003A9A80  C0 02 BF 90 */	lfs f0, lbl_8066C310@sda21(r2)
/* 803E04C4 003A9A84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803E04C8 003A9A88  4C 40 13 82 */	cror eq, lt, eq
/* 803E04CC 003A9A8C  40 82 00 08 */	bne .L_803E04D4
/* 803E04D0 003A9A90  48 00 00 44 */	b .L_803E0514
.L_803E04D4:
/* 803E04D4 003A9A94  A0 63 00 34 */	lhz r3, 0x34(r3)
/* 803E04D8 003A9A98  3C 00 43 30 */	lis r0, 0x4330
/* 803E04DC 003A9A9C  90 01 00 08 */	stw r0, 0x8(r1)
/* 803E04E0 003A9AA0  C8 42 BF 98 */	lfd f2, lbl_8066C318@sda21(r2)
/* 803E04E4 003A9AA4  90 61 00 0C */	stw r3, 0xc(r1)
/* 803E04E8 003A9AA8  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 803E04EC 003A9AAC  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E04F0 003A9AB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803E04F4 003A9AB4  4C 40 13 82 */	cror eq, lt, eq
/* 803E04F8 003A9AB8  40 82 00 18 */	bne .L_803E0510
/* 803E04FC 003A9ABC  90 61 00 14 */	stw r3, 0x14(r1)
/* 803E0500 003A9AC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 803E0504 003A9AC4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803E0508 003A9AC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E050C 003A9ACC  48 00 00 08 */	b .L_803E0514
.L_803E0510:
/* 803E0510 003A9AD0  FC 00 08 90 */	fmr f0, f1
.L_803E0514:
/* 803E0514 003A9AD4  54 C0 07 BE */	clrlwi r0, r6, 30
/* 803E0518 003A9AD8  2C 07 00 00 */	cmpwi r7, 0x0
/* 803E051C 003A9ADC  90 04 00 00 */	stw r0, 0x0(r4)
/* 803E0520 003A9AE0  41 82 00 0C */	beq .L_803E052C
/* 803E0524 003A9AE4  80 65 00 18 */	lwz r3, 0x18(r5)
/* 803E0528 003A9AE8  48 00 00 18 */	b .L_803E0540
.L_803E052C:
/* 803E052C 003A9AEC  80 05 00 18 */	lwz r0, 0x18(r5)
/* 803E0530 003A9AF0  FC 20 00 90 */	fmr f1, f0
/* 803E0534 003A9AF4  7C 65 02 14 */	add r3, r5, r0
/* 803E0538 003A9AF8  38 63 00 18 */	addi r3, r3, 0x18
/* 803E053C 003A9AFC  4B FF D6 99 */	bl GetResColorAnmResult__Q34nw4r3g3d6detailFPCQ34nw4r3g3d21ResColorAnmFramesDataf
.L_803E0540:
/* 803E0540 003A9B00  90 7F 00 04 */	stw r3, 0x4(r31)
/* 803E0544 003A9B04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E0548 003A9B08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E054C 003A9B0C  7C 08 03 A6 */	mtlr r0
/* 803E0550 003A9B10  38 21 00 20 */	addi r1, r1, 0x20
/* 803E0554 003A9B14  4E 80 00 20 */	blr
.endfn GetAnmResult__Q34nw4r3g3d14ResAnmAmbLightCFPQ34nw4r3g3d17AmbLightAnmResultf

# 0x8066C310 - 0x8066C320
.section .sdata2, "a"
.balign 8
.sym lbl_8066C310, global
	.4byte 0x00000000
	.4byte 0x00000000
.sym lbl_8066C318, global
	.4byte 0x43300000
	.4byte 0x00000000
