.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CScnFilter, global
/* 8049C7F8 00465DB8  38 80 00 00 */	li r4, 0
/* 8049C7FC 00465DBC  C0 02 CF D0 */	lfs f0, float_8066D350@sda21(r2)
/* 8049C800 00465DC0  3C A0 80 57 */	lis r5, __vt__10CScnFilter@ha
/* 8049C804 00465DC4  98 83 00 04 */	stb r4, 4(r3)
/* 8049C808 00465DC8  38 A5 23 A8 */	addi r5, r5, __vt__10CScnFilter@l
/* 8049C80C 00465DCC  60 80 00 03 */	ori r0, r4, 3
/* 8049C810 00465DD0  90 A3 00 00 */	stw r5, 0(r3)
/* 8049C814 00465DD4  90 83 00 0C */	stw r4, 0xc(r3)
/* 8049C818 00465DD8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8049C81C 00465DDC  90 83 00 14 */	stw r4, 0x14(r3)
/* 8049C820 00465DE0  90 03 00 08 */	stw r0, 8(r3)
/* 8049C824 00465DE4  4E 80 00 20 */	blr 
.endfn __ct__CScnFilter

.fn __dt__CScnFilter, global
/* 8049C828 00465DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049C82C 00465DEC  7C 08 02 A6 */	mflr r0
/* 8049C830 00465DF0  2C 03 00 00 */	cmpwi r3, 0
/* 8049C834 00465DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049C838 00465DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049C83C 00465DFC  7C 7F 1B 78 */	mr r31, r3
/* 8049C840 00465E00  41 82 00 10 */	beq .L_8049C850
/* 8049C844 00465E04  2C 04 00 00 */	cmpwi r4, 0
/* 8049C848 00465E08  40 81 00 08 */	ble .L_8049C850
/* 8049C84C 00465E0C  4B F9 83 E1 */	bl __dl__FPv
.L_8049C850:
/* 8049C850 00465E10  7F E3 FB 78 */	mr r3, r31
/* 8049C854 00465E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049C858 00465E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049C85C 00465E1C  7C 08 03 A6 */	mtlr r0
/* 8049C860 00465E20  38 21 00 10 */	addi r1, r1, 0x10
/* 8049C864 00465E24  4E 80 00 20 */	blr 
.endfn __dt__CScnFilter

.fn func_8049C868, global
/* 8049C868 00465E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049C86C 00465E2C  7C 08 02 A6 */	mflr r0
/* 8049C870 00465E30  7C 65 1B 78 */	mr r5, r3
/* 8049C874 00465E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049C878 00465E38  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8049C87C 00465E3C  2C 00 00 00 */	cmpwi r0, 0
/* 8049C880 00465E40  41 82 00 B8 */	beq .L_8049C938
/* 8049C884 00465E44  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8049C888 00465E48  2C 06 00 00 */	cmpwi r6, 0
/* 8049C88C 00465E4C  41 82 00 30 */	beq .L_8049C8BC
/* 8049C890 00465E50  3C 00 43 30 */	lis r0, 0x4330
/* 8049C894 00465E54  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8049C898 00465E58  C8 22 CF D8 */	lfd f1, double_8066D358@sda21(r2)
/* 8049C89C 00465E5C  90 01 00 08 */	stw r0, 8(r1)
/* 8049C8A0 00465E60  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 8049C8A4 00465E64  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049C8A8 00465E68  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049C8AC 00465E6C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8049C8B0 00465E70  40 81 00 0C */	ble .L_8049C8BC
/* 8049C8B4 00465E74  38 00 00 01 */	li r0, 1
/* 8049C8B8 00465E78  48 00 00 08 */	b .L_8049C8C0
.L_8049C8BC:
/* 8049C8BC 00465E7C  38 00 00 00 */	li r0, 0
.L_8049C8C0:
/* 8049C8C0 00465E80  2C 00 00 00 */	cmpwi r0, 0
/* 8049C8C4 00465E84  40 82 00 74 */	bne .L_8049C938
/* 8049C8C8 00465E88  80 C4 00 84 */	lwz r6, 0x84(r4)
/* 8049C8CC 00465E8C  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 8049C8D0 00465E90  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 8049C8D4 00465E94  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8049C8D8 00465E98  2C 07 00 00 */	cmpwi r7, 0
/* 8049C8DC 00465E9C  EC 40 08 2A */	fadds f2, f0, f1
/* 8049C8E0 00465EA0  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 8049C8E4 00465EA4  41 82 00 2C */	beq .L_8049C910
/* 8049C8E8 00465EA8  3C 00 43 30 */	lis r0, 0x4330
/* 8049C8EC 00465EAC  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8049C8F0 00465EB0  C8 22 CF D8 */	lfd f1, double_8066D358@sda21(r2)
/* 8049C8F4 00465EB4  90 01 00 08 */	stw r0, 8(r1)
/* 8049C8F8 00465EB8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049C8FC 00465EBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049C900 00465EC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8049C904 00465EC4  40 81 00 0C */	ble .L_8049C910
/* 8049C908 00465EC8  38 00 00 01 */	li r0, 1
/* 8049C90C 00465ECC  48 00 00 08 */	b .L_8049C914
.L_8049C910:
/* 8049C910 00465ED0  38 00 00 00 */	li r0, 0
.L_8049C914:
/* 8049C914 00465ED4  2C 00 00 00 */	cmpwi r0, 0
/* 8049C918 00465ED8  41 82 00 20 */	beq .L_8049C938
/* 8049C91C 00465EDC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8049C920 00465EE0  2C 03 00 00 */	cmpwi r3, 0
/* 8049C924 00465EE4  41 82 00 14 */	beq .L_8049C938
/* 8049C928 00465EE8  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C92C 00465EEC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8049C930 00465EF0  7D 89 03 A6 */	mtctr r12
/* 8049C934 00465EF4  4E 80 04 21 */	bctrl 
.L_8049C938:
/* 8049C938 00465EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049C93C 00465EFC  7C 08 03 A6 */	mtlr r0
/* 8049C940 00465F00  38 21 00 10 */	addi r1, r1, 0x10
/* 8049C944 00465F04  4E 80 00 20 */	blr 
.endfn func_8049C868

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__10CScnFilter, global
	.4byte __RTTI__10CScnFilter
	.4byte 0
	.4byte __dt__CScnFilter
	.4byte func_8049C868
	.4byte 0
	.4byte 0
.endobj __vt__10CScnFilter

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066D350, global
	.float 0
	.4byte 0
.endobj float_8066D350


.obj double_8066D358, global
	.8byte 0x4330000000000000 #unsigned int to float constant
.endobj double_8066D358

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001F4E4", local
.hidden "@etb_8001F4E4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001F4E4"

.obj "@etb_8001F4EC", local
.hidden "@etb_8001F4EC"
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_8001F4EC"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80036F74", local
.hidden "@eti_80036F74"
	.4byte __dt__CScnFilter
	.4byte 0x00000040
	.4byte "@etb_8001F4E4"
.endobj "@eti_80036F74"

.obj "@eti_80036F80", local
.hidden "@eti_80036F80"
	.4byte func_8049C868
	.4byte 0x000000E0
	.4byte "@etb_8001F4EC"
.endobj "@eti_80036F80"
