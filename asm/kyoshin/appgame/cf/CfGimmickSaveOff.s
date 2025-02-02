.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__cf_CfGimmickSaveOff, global
/* 802ABB40 00275100  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802ABB44 00275104  7C 08 02 A6 */	mflr r0
/* 802ABB48 00275108  90 01 00 34 */	stw r0, 0x34(r1)
/* 802ABB4C 0027510C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802ABB50 00275110  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802ABB54 00275114  7C 9E 23 78 */	mr r30, r4
/* 802ABB58 00275118  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802ABB5C 0027511C  7C 7D 1B 78 */	mr r29, r3
/* 802ABB60 00275120  4B F5 CD 81 */	bl __ct__cf_CfGimmick
/* 802ABB64 00275124  3C 60 80 54 */	lis r3, __vt__Q22cf16CfGimmickSaveOff@ha
/* 802ABB68 00275128  38 00 00 08 */	li r0, 8
/* 802ABB6C 0027512C  38 63 D9 70 */	addi r3, r3, __vt__Q22cf16CfGimmickSaveOff@l
/* 802ABB70 00275130  90 7D 00 00 */	stw r3, 0(r29)
/* 802ABB74 00275134  B0 1D 00 82 */	sth r0, 0x82(r29)
/* 802ABB78 00275138  4B D8 EE BD */	bl func_8003AA34
/* 802ABB7C 0027513C  80 0D A8 B0 */	lwz r0, lbl_80666A30@sda21(r13)
/* 802ABB80 00275140  7C 7F 1B 78 */	mr r31, r3
/* 802ABB84 00275144  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ABB88 00275148  7F A3 EB 78 */	mr r3, r29
/* 802ABB8C 0027514C  7F E5 FB 78 */	mr r5, r31
/* 802ABB90 00275150  38 9D 00 04 */	addi r4, r29, 4
/* 802ABB94 00275154  B3 DD 00 64 */	sth r30, 0x64(r29)
/* 802ABB98 00275158  38 C1 00 14 */	addi r6, r1, 0x14
/* 802ABB9C 0027515C  4B F5 D3 99 */	bl func_80208F34
/* 802ABBA0 00275160  7F A3 EB 78 */	mr r3, r29
/* 802ABBA4 00275164  7F E5 FB 78 */	mr r5, r31
/* 802ABBA8 00275168  38 9D 00 1C */	addi r4, r29, 0x1c
/* 802ABBAC 0027516C  38 C1 00 14 */	addi r6, r1, 0x14
/* 802ABBB0 00275170  4B F5 D4 71 */	bl func_80209020
/* 802ABBB4 00275174  7F A3 EB 78 */	mr r3, r29
/* 802ABBB8 00275178  7F E5 FB 78 */	mr r5, r31
/* 802ABBBC 0027517C  38 9D 00 10 */	addi r4, r29, 0x10
/* 802ABBC0 00275180  38 C1 00 14 */	addi r6, r1, 0x14
/* 802ABBC4 00275184  4B F5 D6 C5 */	bl func_80209288
/* 802ABBC8 00275188  3F E0 80 54 */	lis r31, lbl_80538FA0@ha
/* 802ABBCC 0027518C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802ABBD0 00275190  3B FF 8F A0 */	addi r31, r31, lbl_80538FA0@l
/* 802ABBD4 00275194  7F C5 F3 78 */	mr r5, r30
/* 802ABBD8 00275198  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 802ABBDC 0027519C  4B D8 EF 6D */	bl func_8003AB48
/* 802ABBE0 002751A0  90 61 00 10 */	stw r3, 0x10(r1)
/* 802ABBE4 002751A4  7F C5 F3 78 */	mr r5, r30
/* 802ABBE8 002751A8  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 802ABBEC 002751AC  B0 1D 00 6C */	sth r0, 0x6c(r29)
/* 802ABBF0 002751B0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802ABBF4 002751B4  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 802ABBF8 002751B8  4B D8 EF 51 */	bl func_8003AB48
/* 802ABBFC 002751BC  90 61 00 0C */	stw r3, 0xc(r1)
/* 802ABC00 002751C0  3C 80 80 51 */	lis r4, lbl_8050C140@ha
/* 802ABC04 002751C4  7F C5 F3 78 */	mr r5, r30
/* 802ABC08 002751C8  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 802ABC0C 002751CC  38 84 C1 40 */	addi r4, r4, lbl_8050C140@l
/* 802ABC10 002751D0  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 802ABC14 002751D4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802ABC18 002751D8  4B D8 EF 31 */	bl func_8003AB48
/* 802ABC1C 002751DC  90 61 00 08 */	stw r3, 8(r1)
/* 802ABC20 002751E0  7F A3 EB 78 */	mr r3, r29
/* 802ABC24 002751E4  88 01 00 08 */	lbz r0, 8(r1)
/* 802ABC28 002751E8  90 1D 00 84 */	stw r0, 0x84(r29)
/* 802ABC2C 002751EC  81 9D 00 00 */	lwz r12, 0(r29)
/* 802ABC30 002751F0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802ABC34 002751F4  7D 89 03 A6 */	mtctr r12
/* 802ABC38 002751F8  4E 80 04 21 */	bctrl 
/* 802ABC3C 002751FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802ABC40 00275200  7F A3 EB 78 */	mr r3, r29
/* 802ABC44 00275204  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802ABC48 00275208  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802ABC4C 0027520C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802ABC50 00275210  7C 08 03 A6 */	mtlr r0
/* 802ABC54 00275214  38 21 00 30 */	addi r1, r1, 0x30
/* 802ABC58 00275218  4E 80 00 20 */	blr 
.endfn __ct__cf_CfGimmickSaveOff

.fn __dt__cf_CfGimmickSaveOff, global
/* 802ABC5C 0027521C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ABC60 00275220  7C 08 02 A6 */	mflr r0
/* 802ABC64 00275224  2C 03 00 00 */	cmpwi r3, 0
/* 802ABC68 00275228  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ABC6C 0027522C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ABC70 00275230  7C 9F 23 78 */	mr r31, r4
/* 802ABC74 00275234  93 C1 00 08 */	stw r30, 8(r1)
/* 802ABC78 00275238  7C 7E 1B 78 */	mr r30, r3
/* 802ABC7C 0027523C  41 82 00 1C */	beq .L_802ABC98
/* 802ABC80 00275240  38 80 00 00 */	li r4, 0
/* 802ABC84 00275244  4B F5 CC A9 */	bl __dt__cf_CfGimmick
/* 802ABC88 00275248  2C 1F 00 00 */	cmpwi r31, 0
/* 802ABC8C 0027524C  40 81 00 0C */	ble .L_802ABC98
/* 802ABC90 00275250  7F C3 F3 78 */	mr r3, r30
/* 802ABC94 00275254  48 18 8F 99 */	bl __dl__FPv
.L_802ABC98:
/* 802ABC98 00275258  7F C3 F3 78 */	mr r3, r30
/* 802ABC9C 0027525C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ABCA0 00275260  83 C1 00 08 */	lwz r30, 8(r1)
/* 802ABCA4 00275264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ABCA8 00275268  7C 08 03 A6 */	mtlr r0
/* 802ABCAC 0027526C  38 21 00 10 */	addi r1, r1, 0x10
/* 802ABCB0 00275270  4E 80 00 20 */	blr 
.endfn __dt__cf_CfGimmickSaveOff

.fn func_802ABCB4, global
/* 802ABCB4 00275274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ABCB8 00275278  7C 08 02 A6 */	mflr r0
/* 802ABCBC 0027527C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ABCC0 00275280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ABCC4 00275284  93 C1 00 08 */	stw r30, 8(r1)
/* 802ABCC8 00275288  7C 7E 1B 78 */	mr r30, r3
/* 802ABCCC 0027528C  A0 03 00 6E */	lhz r0, 0x6e(r3)
/* 802ABCD0 00275290  2C 00 00 00 */	cmpwi r0, 0
/* 802ABCD4 00275294  41 82 00 24 */	beq .L_802ABCF8
/* 802ABCD8 00275298  4B DD 66 1D */	bl func_800822F4
/* 802ABCDC 0027529C  A0 1E 00 6C */	lhz r0, 0x6c(r30)
/* 802ABCE0 002752A0  7C 00 18 40 */	cmplw r0, r3
/* 802ABCE4 002752A4  41 81 00 B4 */	bgt .L_802ABD98
/* 802ABCE8 002752A8  A0 1E 00 6E */	lhz r0, 0x6e(r30)
/* 802ABCEC 002752AC  7C 03 00 40 */	cmplw r3, r0
/* 802ABCF0 002752B0  40 81 00 08 */	ble .L_802ABCF8
/* 802ABCF4 002752B4  48 00 00 A4 */	b .L_802ABD98
.L_802ABCF8:
/* 802ABCF8 002752B8  80 1E 00 60 */	lwz r0, 0x60(r30)
/* 802ABCFC 002752BC  3C A0 80 54 */	lis r5, lbl_80538FE8@ha
/* 802ABD00 002752C0  3C 80 80 58 */	lis r4, lbl_80579D98@ha
/* 802ABD04 002752C4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802ABD08 002752C8  54 00 10 3A */	slwi r0, r0, 2
/* 802ABD0C 002752CC  38 A5 8F E8 */	addi r5, r5, lbl_80538FE8@l
/* 802ABD10 002752D0  7D 85 00 2E */	lwzx r12, r5, r0
/* 802ABD14 002752D4  38 84 9D 98 */	addi r4, r4, lbl_80579D98@l
/* 802ABD18 002752D8  38 BE 00 04 */	addi r5, r30, 4
/* 802ABD1C 002752DC  7D 89 03 A6 */	mtctr r12
/* 802ABD20 002752E0  4E 80 04 21 */	bctrl 
/* 802ABD24 002752E4  2C 03 00 00 */	cmpwi r3, 0
/* 802ABD28 002752E8  41 82 00 70 */	beq .L_802ABD98
/* 802ABD2C 002752EC  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 802ABD30 002752F0  2C 00 00 02 */	cmpwi r0, 2
/* 802ABD34 002752F4  40 82 00 50 */	bne .L_802ABD84
/* 802ABD38 002752F8  4B E0 AE 91 */	bl func_800B6BC8
/* 802ABD3C 002752FC  80 83 00 04 */	lwz r4, 4(r3)
/* 802ABD40 00275300  7C 7F 1B 78 */	mr r31, r3
/* 802ABD44 00275304  83 C4 00 00 */	lwz r30, 0(r4)
/* 802ABD48 00275308  48 00 00 2C */	b .L_802ABD74
.L_802ABD4C:
/* 802ABD4C 0027530C  80 7E 00 08 */	lwz r3, 8(r30)
/* 802ABD50 00275310  81 83 00 00 */	lwz r12, 0(r3)
/* 802ABD54 00275314  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 802ABD58 00275318  7D 89 03 A6 */	mtctr r12
/* 802ABD5C 0027531C  4E 80 04 21 */	bctrl 
/* 802ABD60 00275320  2C 03 00 00 */	cmpwi r3, 0
/* 802ABD64 00275324  41 82 00 0C */	beq .L_802ABD70
/* 802ABD68 00275328  38 63 00 84 */	addi r3, r3, 0x84
/* 802ABD6C 0027532C  4B DD FB F1 */	bl func_8008B95C
.L_802ABD70:
/* 802ABD70 00275330  83 DE 00 00 */	lwz r30, 0(r30)
.L_802ABD74:
/* 802ABD74 00275334  80 1F 00 04 */	lwz r0, 4(r31)
/* 802ABD78 00275338  7C 1E 00 40 */	cmplw r30, r0
/* 802ABD7C 0027533C  40 82 FF D0 */	bne .L_802ABD4C
/* 802ABD80 00275340  48 00 00 18 */	b .L_802ABD98
.L_802ABD84:
/* 802ABD84 00275344  2C 00 00 01 */	cmpwi r0, 1
/* 802ABD88 00275348  40 82 00 0C */	bne .L_802ABD94
/* 802ABD8C 0027534C  4B F5 E2 B1 */	bl func_8020A03C
/* 802ABD90 00275350  48 00 00 08 */	b .L_802ABD98
.L_802ABD94:
/* 802ABD94 00275354  4B F5 E3 39 */	bl func_8020A0CC
.L_802ABD98:
/* 802ABD98 00275358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ABD9C 0027535C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ABDA0 00275360  83 C1 00 08 */	lwz r30, 8(r1)
/* 802ABDA4 00275364  7C 08 03 A6 */	mtlr r0
/* 802ABDA8 00275368  38 21 00 10 */	addi r1, r1, 0x10
/* 802ABDAC 0027536C  4E 80 00 20 */	blr 
.endfn func_802ABCB4

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CfGimmickSaveOff_typestr, global
	.asciz "cf::CfGimmickSaveOff"
	.balign 4
.endobj cf_CfGimmickSaveOff_typestr


.obj lbl_8050C140, global
	.asciz "naviOff"
.endobj lbl_8050C140

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__Q22cf16CfGimmickSaveOff, global
	.4byte __RTTI__Q22cf16CfGimmickSaveOff
	.4byte 0
	.4byte __dt__cf_CfGimmickSaveOff
	.4byte func_8020896C
	.4byte func_802ABCB4
	.4byte func_801F4B64
	.4byte func_801F4BF8
	.4byte func_801F4C8C
	.4byte func_80208988
.endobj __vt__Q22cf16CfGimmickSaveOff

.obj cf_CfGimmickSaveOff_hierarchy, global
	.4byte __RTTI__Q22cf11IObjectInfo
	.4byte 0
	.4byte __RTTI__Q22cf9CfGimmick
	.4byte 0
	.4byte 0
.endobj cf_CfGimmickSaveOff_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__Q22cf16CfGimmickSaveOff, global
	.4byte cf_CfGimmickSaveOff_typestr
	.4byte cf_CfGimmickSaveOff_hierarchy
.endobj __RTTI__Q22cf16CfGimmickSaveOff

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001B10C", local
.hidden "@etb_8001B10C"
	.4byte 0x18080000
	.4byte 0x0000003C
	.4byte 0x00300010
	.4byte 0x00000000
	.4byte 0x8680001D
	.4byte 0x00000000
	.4byte __dt__cf_CfGimmick
.endobj "@etb_8001B10C"

.obj "@etb_8001B128", local
.hidden "@etb_8001B128"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001B128"

.obj "@etb_8001B130", local
.hidden "@etb_8001B130"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001B130"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80032F24", local
.hidden "@eti_80032F24"
	.4byte __ct__cf_CfGimmickSaveOff
	.4byte 0x0000011C
	.4byte "@etb_8001B10C"
.endobj "@eti_80032F24"

.obj "@eti_80032F30", local
.hidden "@eti_80032F30"
	.4byte __dt__cf_CfGimmickSaveOff
	.4byte 0x00000058
	.4byte "@etb_8001B128"
.endobj "@eti_80032F30"

.obj "@eti_80032F3C", local
.hidden "@eti_80032F3C"
	.4byte func_802ABCB4
	.4byte 0x000000FC
	.4byte "@etb_8001B130"
.endobj "@eti_80032F3C"
