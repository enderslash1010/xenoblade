.include "macros.inc"
.file "kyoshin/appgame/cf/voice/cvs/CVS_THREAD_SUDDEN.o"

# 0x8001AE98 - 0x8001AEDC
.section extab, "a"
.balign 4

.obj "@etb_8001AE98", local
.hidden "@etb_8001AE98"
	.4byte 0x10180000
	.4byte 0x0000005C
	.4byte 0x00000018
	.4byte 0x00000084
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x90000000
	.4byte 0x00000000
	.4byte 0x00000074
	.4byte 0x00000008
	.4byte 0x8D000008
.endobj "@etb_8001AE98"

.obj "@etb_8001AEC4", local
.hidden "@etb_8001AEC4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AEC4"

.obj "@etb_8001AECC", local
.hidden "@etb_8001AECC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AECC"

.obj "@etb_8001AED4", local
.hidden "@etb_8001AED4"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001AED4"

# 0x80032D38 - 0x80032D68
.section extabindex, "a"
.balign 4

.obj "@eti_80032D38", local
.hidden "@eti_80032D38"
	.4byte fn_802A8C04
	.4byte 0x000000C8
	.4byte "@etb_8001AE98"
.endobj "@eti_80032D38"

.obj "@eti_80032D44", local
.hidden "@eti_80032D44"
	.4byte fn_802A8CCC
	.4byte 0x0000003C
	.4byte "@etb_8001AEC4"
.endobj "@eti_80032D44"

.obj "@eti_80032D50", local
.hidden "@eti_80032D50"
	.4byte fn_802A8D08
	.4byte 0x00000058
	.4byte "@etb_8001AECC"
.endobj "@eti_80032D50"

.obj "@eti_80032D5C", local
.hidden "@eti_80032D5C"
	.4byte fn_802A8D60
	.4byte 0x00000080
	.4byte "@etb_8001AED4"
.endobj "@eti_80032D5C"

# 0x802A8C04 - 0x802A8DE8
.text
.balign 4

.fn fn_802A8C04, global
/* 802A8C04 002721C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A8C08 002721C8  7C 08 02 A6 */	mflr r0
/* 802A8C0C 002721CC  38 60 00 01 */	li r3, 0x1
/* 802A8C10 002721D0  38 80 00 00 */	li r4, 0x0
/* 802A8C14 002721D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A8C18 002721D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A8C1C 002721DC  7C 3F 0B 78 */	mr r31, r1
/* 802A8C20 002721E0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A8C24 002721E4  4B FF A6 E9 */	bl fn_802A330C
/* 802A8C28 002721E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8C2C 002721EC  40 82 00 0C */	bne .L_802A8C38
/* 802A8C30 002721F0  38 60 00 00 */	li r3, 0x0
/* 802A8C34 002721F4  48 00 00 78 */	b .L_802A8CAC
.L_802A8C38:
/* 802A8C38 002721F8  38 60 00 24 */	li r3, 0x24
/* 802A8C3C 002721FC  4B FF A8 A9 */	bl fn_802A34E4
/* 802A8C40 00272200  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8C44 00272204  7C 7E 1B 78 */	mr r30, r3
/* 802A8C48 00272208  40 82 00 0C */	bne .L_802A8C54
/* 802A8C4C 0027220C  38 60 00 00 */	li r3, 0x0
/* 802A8C50 00272210  48 00 00 5C */	b .L_802A8CAC
.L_802A8C54:
/* 802A8C54 00272214  41 82 00 34 */	beq .L_802A8C88
/* 802A8C58 00272218  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A8C5C 0027221C  4B FF AE 25 */	bl fn_802A3A80
/* 802A8C60 00272220  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_SUDDEN@ha
/* 802A8C64 00272224  38 00 00 00 */	li r0, 0x0
/* 802A8C68 00272228  38 63 D4 84 */	addi r3, r3, __vt__cf_CVS_THREAD_SUDDEN@l
/* 802A8C6C 0027222C  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802A8C70 00272230  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802A8C74 00272234  48 00 00 14 */	b .L_802A8C88
/* 802A8C78 00272238  38 60 00 00 */	li r3, 0x0
/* 802A8C7C 0027223C  38 80 00 00 */	li r4, 0x0
/* 802A8C80 00272240  38 A0 00 00 */	li r5, 0x0
/* 802A8C84 00272244  48 01 2F 39 */	bl __throw
.L_802A8C88:
/* 802A8C88 00272248  3C A0 80 54 */	lis r5, lbl_8053D478@ha
/* 802A8C8C 0027224C  7F C3 F3 78 */	mr r3, r30
/* 802A8C90 00272250  38 A5 D4 78 */	addi r5, r5, lbl_8053D478@l
/* 802A8C94 00272254  80 05 00 04 */	lwz r0, 0x4(r5)
/* 802A8C98 00272258  80 85 00 00 */	lwz r4, 0x0(r5)
/* 802A8C9C 0027225C  90 9E 00 00 */	stw r4, 0x0(r30)
/* 802A8CA0 00272260  90 1E 00 04 */	stw r0, 0x4(r30)
/* 802A8CA4 00272264  80 05 00 08 */	lwz r0, 0x8(r5)
/* 802A8CA8 00272268  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802A8CAC:
/* 802A8CAC 0027226C  7F EA FB 78 */	mr r10, r31
/* 802A8CB0 00272270  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802A8CB4 00272274  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802A8CB8 00272278  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802A8CBC 0027227C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802A8CC0 00272280  7D 41 53 78 */	mr r1, r10
/* 802A8CC4 00272284  7C 08 03 A6 */	mtlr r0
/* 802A8CC8 00272288  4E 80 00 20 */	blr
.endfn fn_802A8C04

.fn fn_802A8CCC, global
/* 802A8CCC 0027228C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8CD0 00272290  7C 08 02 A6 */	mflr r0
/* 802A8CD4 00272294  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8CD8 00272298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8CDC 0027229C  7C 7F 1B 78 */	mr r31, r3
/* 802A8CE0 002722A0  4B FF B1 A9 */	bl fn_802A3E88
/* 802A8CE4 002722A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8CE8 002722A8  40 82 00 0C */	bne .L_802A8CF4
/* 802A8CEC 002722AC  38 00 00 00 */	li r0, 0x0
/* 802A8CF0 002722B0  90 1F 00 20 */	stw r0, 0x20(r31)
.L_802A8CF4:
/* 802A8CF4 002722B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8CF8 002722B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8CFC 002722BC  7C 08 03 A6 */	mtlr r0
/* 802A8D00 002722C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8D04 002722C4  4E 80 00 20 */	blr
.endfn fn_802A8CCC

.fn fn_802A8D08, global
/* 802A8D08 002722C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8D0C 002722CC  7C 08 02 A6 */	mflr r0
/* 802A8D10 002722D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8D14 002722D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8D18 002722D8  7C 9F 23 78 */	mr r31, r4
/* 802A8D1C 002722DC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A8D20 002722E0  7C 7E 1B 78 */	mr r30, r3
/* 802A8D24 002722E4  4B FF AE C9 */	bl fn_802A3BEC
/* 802A8D28 002722E8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A8D2C 002722EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8D30 002722F0  41 82 00 08 */	beq .L_802A8D38
/* 802A8D34 002722F4  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A8D38:
/* 802A8D38 002722F8  7C 03 F8 40 */	cmplw r3, r31
/* 802A8D3C 002722FC  40 82 00 0C */	bne .L_802A8D48
/* 802A8D40 00272300  38 00 00 00 */	li r0, 0x0
/* 802A8D44 00272304  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802A8D48:
/* 802A8D48 00272308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8D4C 0027230C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8D50 00272310  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A8D54 00272314  7C 08 03 A6 */	mtlr r0
/* 802A8D58 00272318  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8D5C 0027231C  4E 80 00 20 */	blr
.endfn fn_802A8D08

.fn fn_802A8D60, global
/* 802A8D60 00272320  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A8D64 00272324  7C 08 02 A6 */	mflr r0
/* 802A8D68 00272328  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A8D6C 0027232C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A8D70 00272330  7C BF 2B 78 */	mr r31, r5
/* 802A8D74 00272334  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A8D78 00272338  7C 9E 23 78 */	mr r30, r4
/* 802A8D7C 0027233C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A8D80 00272340  7C 7D 1B 78 */	mr r29, r3
/* 802A8D84 00272344  4B FF B1 05 */	bl fn_802A3E88
/* 802A8D88 00272348  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8D8C 0027234C  41 82 00 0C */	beq .L_802A8D98
/* 802A8D90 00272350  7F A3 EB 78 */	mr r3, r29
/* 802A8D94 00272354  4B FF B0 95 */	bl fn_802A3E28
.L_802A8D98:
/* 802A8D98 00272358  2C 1E 00 00 */	cmpwi r30, 0x0
/* 802A8D9C 0027235C  41 82 00 08 */	beq .L_802A8DA4
/* 802A8DA0 00272360  3B DE C1 64 */	addi r30, r30, -0x3e9c
.L_802A8DA4:
/* 802A8DA4 00272364  2C 1E 00 00 */	cmpwi r30, 0x0
/* 802A8DA8 00272368  93 DD 00 20 */	stw r30, 0x20(r29)
/* 802A8DAC 0027236C  41 82 00 08 */	beq .L_802A8DB4
/* 802A8DB0 00272370  3B DE 3E 9C */	addi r30, r30, 0x3e9c
.L_802A8DB4:
/* 802A8DB4 00272374  7F A3 EB 78 */	mr r3, r29
/* 802A8DB8 00272378  7F C4 F3 78 */	mr r4, r30
/* 802A8DBC 0027237C  7F E5 FB 78 */	mr r5, r31
/* 802A8DC0 00272380  4B FF AE 85 */	bl fn_802A3C44
/* 802A8DC4 00272384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A8DC8 00272388  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A8DCC 0027238C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A8DD0 00272390  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A8DD4 00272394  7C 08 03 A6 */	mtlr r0
/* 802A8DD8 00272398  38 21 00 20 */	addi r1, r1, 0x20
/* 802A8DDC 0027239C  4E 80 00 20 */	blr
.endfn fn_802A8D60

.fn fn_802A8DE0, global
/* 802A8DE0 002723A0  38 60 00 01 */	li r3, 0x1
/* 802A8DE4 002723A4  4E 80 00 20 */	blr
.endfn fn_802A8DE0

# 0x8050BE18 - 0x8050BE30
.rodata
.balign 8

.obj cf_CVS_THREAD_SUDDEN_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4356535F
	.4byte 0x54485245
	.4byte 0x41445F53
	.4byte 0x55444445
	.4byte 0x4E000000

# 0x8053D478 - 0x8053D4B0
.data
.balign 8
.sym lbl_8053D478, global
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte fn_802A8CCC

.obj __vt__cf_CVS_THREAD_SUDDEN, global
	.4byte __RTTI__cf_CVS_THREAD_SUDDEN
	.4byte 0x00000000
	.4byte fn_802A3B50
	.4byte fn_802A8D08
	.4byte fn_802A8DE0
	.4byte fn_802A1EA0
	.4byte fn_802A8D60

.obj cf_CVS_THREAD_SUDDEN_hierarchy, global
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

# 0x80665628 - 0x80665630
.section .sdata, "wa"
.balign 8

.obj __RTTI__cf_CVS_THREAD_SUDDEN, global
	.4byte cf_CVS_THREAD_SUDDEN_typestr
	.4byte cf_CVS_THREAD_SUDDEN_hierarchy
