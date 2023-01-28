.include "macros.inc"
.file "monolithlib/CFontLayer.o"

# 0x8001CB78 - 0x8001CB90
.section extab, "a"
.balign 4

.obj "@etb_8001CB78", local
.hidden "@etb_8001CB78"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CB78"

.obj "@etb_8001CB80", local
.hidden "@etb_8001CB80"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001CB80"

.obj "@etb_8001CB88", local
.hidden "@etb_8001CB88"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001CB88"

# 0x80034778 - 0x8003479C
.section extabindex, "a"
.balign 4

.obj "@eti_80034778", local
.hidden "@eti_80034778"
	.4byte fn_80448FDC
	.4byte 0x0000003C
	.4byte "@etb_8001CB78"
.endobj "@eti_80034778"

.obj "@eti_80034784", local
.hidden "@eti_80034784"
	.4byte fn_80449018
	.4byte 0x00000060
	.4byte "@etb_8001CB80"
.endobj "@eti_80034784"

.obj "@eti_80034790", local
.hidden "@eti_80034790"
	.4byte fn_80449078
	.4byte 0x000000D0
	.4byte "@etb_8001CB88"
.endobj "@eti_80034790"

# 0x80448FDC - 0x80449164
.text
.balign 4

.fn fn_80448FDC, global
/* 80448FDC 0041259C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80448FE0 004125A0  7C 08 02 A6 */	mflr r0
/* 80448FE4 004125A4  3C 80 80 57 */	lis r4, __vt__CFontLayer@ha
/* 80448FE8 004125A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80448FEC 004125AC  38 84 F7 C0 */	addi r4, r4, __vt__CFontLayer@l
/* 80448FF0 004125B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80448FF4 004125B4  7C 7F 1B 78 */	mr r31, r3
/* 80448FF8 004125B8  90 83 00 00 */	stw r4, 0x0(r3)
/* 80448FFC 004125BC  48 00 95 F5 */	bl fn_804525F0
/* 80449000 004125C0  7F E3 FB 78 */	mr r3, r31
/* 80449004 004125C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80449008 004125C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044900C 004125CC  7C 08 03 A6 */	mtlr r0
/* 80449010 004125D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80449014 004125D4  4E 80 00 20 */	blr
.endfn fn_80448FDC

.fn fn_80449018, global
/* 80449018 004125D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044901C 004125DC  7C 08 02 A6 */	mflr r0
/* 80449020 004125E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 80449024 004125E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80449028 004125E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044902C 004125EC  7C 9F 23 78 */	mr r31, r4
/* 80449030 004125F0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80449034 004125F4  7C 7E 1B 78 */	mr r30, r3
/* 80449038 004125F8  41 82 00 24 */	beq .L_8044905C
/* 8044903C 004125FC  3C 80 80 57 */	lis r4, __vt__CFontLayer@ha
/* 80449040 00412600  38 84 F7 C0 */	addi r4, r4, __vt__CFontLayer@l
/* 80449044 00412604  90 83 00 00 */	stw r4, 0x0(r3)
/* 80449048 00412608  48 00 96 49 */	bl fn_80452690
/* 8044904C 0041260C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80449050 00412610  40 81 00 0C */	ble .L_8044905C
/* 80449054 00412614  7F C3 F3 78 */	mr r3, r30
/* 80449058 00412618  4B FE BB D5 */	bl __dl__FPv
.L_8044905C:
/* 8044905C 0041261C  7F C3 F3 78 */	mr r3, r30
/* 80449060 00412620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80449064 00412624  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80449068 00412628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044906C 0041262C  7C 08 03 A6 */	mtlr r0
/* 80449070 00412630  38 21 00 10 */	addi r1, r1, 0x10
/* 80449074 00412634  4E 80 00 20 */	blr
.endfn fn_80449018

.fn fn_80449078, global
/* 80449078 00412638  94 21 FD 70 */	stwu r1, -0x290(r1)
/* 8044907C 0041263C  7C 08 02 A6 */	mflr r0
/* 80449080 00412640  90 01 02 94 */	stw r0, 0x294(r1)
/* 80449084 00412644  93 E1 02 8C */	stw r31, 0x28c(r1)
/* 80449088 00412648  93 C1 02 88 */	stw r30, 0x288(r1)
/* 8044908C 0041264C  7C BE 2B 78 */	mr r30, r5
/* 80449090 00412650  93 A1 02 84 */	stw r29, 0x284(r1)
/* 80449094 00412654  7C 9D 23 78 */	mr r29, r4
/* 80449098 00412658  93 81 02 80 */	stw r28, 0x280(r1)
/* 8044909C 0041265C  7C 7C 1B 78 */	mr r28, r3
/* 804490A0 00412660  40 86 00 24 */	bne cr1, .L_804490C4
/* 804490A4 00412664  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 804490A8 00412668  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 804490AC 0041266C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 804490B0 00412670  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 804490B4 00412674  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 804490B8 00412678  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 804490BC 0041267C  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 804490C0 00412680  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_804490C4:
/* 804490C4 00412684  90 61 00 08 */	stw r3, 0x8(r1)
/* 804490C8 00412688  39 61 02 98 */	addi r11, r1, 0x298
/* 804490CC 0041268C  38 01 00 08 */	addi r0, r1, 0x8
/* 804490D0 00412690  3D 80 04 00 */	lis r12, 0x400
/* 804490D4 00412694  90 81 00 0C */	stw r4, 0xc(r1)
/* 804490D8 00412698  3B E1 00 68 */	addi r31, r1, 0x68
/* 804490DC 0041269C  38 61 00 78 */	addi r3, r1, 0x78
/* 804490E0 004126A0  38 80 02 00 */	li r4, 0x200
/* 804490E4 004126A4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804490E8 004126A8  7C C5 33 78 */	mr r5, r6
/* 804490EC 004126AC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804490F0 004126B0  7F E6 FB 78 */	mr r6, r31
/* 804490F4 004126B4  90 E1 00 18 */	stw r7, 0x18(r1)
/* 804490F8 004126B8  91 01 00 1C */	stw r8, 0x1c(r1)
/* 804490FC 004126BC  91 21 00 20 */	stw r9, 0x20(r1)
/* 80449100 004126C0  91 41 00 24 */	stw r10, 0x24(r1)
/* 80449104 004126C4  91 81 00 68 */	stw r12, 0x68(r1)
/* 80449108 004126C8  91 61 00 6C */	stw r11, 0x6c(r1)
/* 8044910C 004126CC  90 01 00 70 */	stw r0, 0x70(r1)
/* 80449110 004126D0  4B E7 7D 29 */	bl vsnprintf
/* 80449114 004126D4  7F 83 E3 78 */	mr r3, r28
/* 80449118 004126D8  7F A4 EB 78 */	mr r4, r29
/* 8044911C 004126DC  7F C5 F3 78 */	mr r5, r30
/* 80449120 004126E0  38 C1 00 78 */	addi r6, r1, 0x78
/* 80449124 004126E4  48 00 95 F9 */	bl fn_8045271C
/* 80449128 004126E8  80 01 02 94 */	lwz r0, 0x294(r1)
/* 8044912C 004126EC  83 E1 02 8C */	lwz r31, 0x28c(r1)
/* 80449130 004126F0  83 C1 02 88 */	lwz r30, 0x288(r1)
/* 80449134 004126F4  83 A1 02 84 */	lwz r29, 0x284(r1)
/* 80449138 004126F8  83 81 02 80 */	lwz r28, 0x280(r1)
/* 8044913C 004126FC  7C 08 03 A6 */	mtlr r0
/* 80449140 00412700  38 21 02 90 */	addi r1, r1, 0x290
/* 80449144 00412704  4E 80 00 20 */	blr
.endfn fn_80449078

.fn fn_80449148, global
/* 80449148 00412708  48 00 96 5C */	b fn_804527A4
.endfn fn_80449148

.fn fn_8044914C, global
/* 8044914C 0041270C  48 00 96 F0 */	b fn_8045283C
.endfn fn_8044914C

.fn fn_80449150, global
/* 80449150 00412710  48 00 97 74 */	b fn_804528C4
.endfn fn_80449150

.fn fn_80449154, global
/* 80449154 00412714  48 00 97 F8 */	b fn_8045294C
.endfn fn_80449154

.fn fn_80449158, global
/* 80449158 00412718  48 00 98 7C */	b fn_804529D4
.endfn fn_80449158

.fn fn_8044915C, global
/* 8044915C 0041271C  48 00 9B 9C */	b fn_80452CF8
.endfn fn_8044915C

.fn fn_80449160, global
/* 80449160 00412720  48 00 9A 18 */	b fn_80452B78
.endfn fn_80449160

# 0x8056F7C0 - 0x8056F7D0
.data
.balign 8

.obj __vt__CFontLayer, global
	.4byte __RTTI__CFontLayer
	.4byte 0x00000000
	.4byte fn_80449018
	.4byte 0x00000000
