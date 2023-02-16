.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80221E6C, global
/* 80221E6C 001EB42C  C0 02 AA 58 */	lfs f0, float_8066ADD8@sda21(r2)
/* 80221E70 001EB430  3C C0 80 54 */	lis r6, __vt__CMCCylinderGauge@ha
/* 80221E74 001EB434  38 A0 00 00 */	li r5, 0
/* 80221E78 001EB438  38 00 00 01 */	li r0, 1
/* 80221E7C 001EB43C  38 C6 97 00 */	addi r6, r6, __vt__CMCCylinderGauge@l
/* 80221E80 001EB440  90 C3 00 00 */	stw r6, 0(r3)
/* 80221E84 001EB444  90 83 00 04 */	stw r4, 4(r3)
/* 80221E88 001EB448  90 A3 00 08 */	stw r5, 8(r3)
/* 80221E8C 001EB44C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80221E90 001EB450  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80221E94 001EB454  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80221E98 001EB458  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80221E9C 001EB45C  98 A3 00 1C */	stb r5, 0x1c(r3)
/* 80221EA0 001EB460  90 A3 00 20 */	stw r5, 0x20(r3)
/* 80221EA4 001EB464  98 03 00 24 */	stb r0, 0x24(r3)
/* 80221EA8 001EB468  98 03 00 25 */	stb r0, 0x25(r3)
/* 80221EAC 001EB46C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80221EB0 001EB470  4E 80 00 20 */	blr 
.endfn func_80221E6C

.fn __dt__CMCCylinderGauge, global
/* 80221EB4 001EB474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80221EB8 001EB478  7C 08 02 A6 */	mflr r0
/* 80221EBC 001EB47C  2C 03 00 00 */	cmpwi r3, 0
/* 80221EC0 001EB480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80221EC4 001EB484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80221EC8 001EB488  7C 7F 1B 78 */	mr r31, r3
/* 80221ECC 001EB48C  41 82 00 10 */	beq .L_80221EDC
/* 80221ED0 001EB490  2C 04 00 00 */	cmpwi r4, 0
/* 80221ED4 001EB494  40 81 00 08 */	ble .L_80221EDC
/* 80221ED8 001EB498  48 21 2D 55 */	bl __dl__FPv
.L_80221EDC:
/* 80221EDC 001EB49C  7F E3 FB 78 */	mr r3, r31
/* 80221EE0 001EB4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80221EE4 001EB4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80221EE8 001EB4A8  7C 08 03 A6 */	mtlr r0
/* 80221EEC 001EB4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80221EF0 001EB4B0  4E 80 00 20 */	blr 
.endfn __dt__CMCCylinderGauge

.fn func_80221EF4, global
/* 80221EF4 001EB4B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80221EF8 001EB4B8  7C 08 02 A6 */	mflr r0
/* 80221EFC 001EB4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80221F00 001EB4C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80221F04 001EB4C4  3F E0 80 50 */	lis r31, CMCCylinderGauge_strpool@ha
/* 80221F08 001EB4C8  38 BF 49 34 */	addi r5, r31, CMCCylinderGauge_strpool@l
/* 80221F0C 001EB4CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80221F10 001EB4D0  7C 7E 1B 78 */	mr r30, r3
/* 80221F14 001EB4D4  80 83 00 04 */	lwz r4, 4(r3)
/* 80221F18 001EB4D8  38 63 00 08 */	addi r3, r3, 8
/* 80221F1C 001EB4DC  4B F1 4F 69 */	bl func_80136E84
/* 80221F20 001EB4E0  3B FF 49 34 */	addi r31, r31, CMCCylinderGauge_strpool@l
/* 80221F24 001EB4E4  80 7E 00 08 */	lwz r3, 8(r30)
/* 80221F28 001EB4E8  80 BE 00 04 */	lwz r5, 4(r30)
/* 80221F2C 001EB4EC  38 9E 00 0C */	addi r4, r30, 0xc
/* 80221F30 001EB4F0  38 DF 00 16 */	addi r6, r31, 0x16
/* 80221F34 001EB4F4  4B F1 4F D5 */	bl func_80136F08
/* 80221F38 001EB4F8  80 7E 00 08 */	lwz r3, 8(r30)
/* 80221F3C 001EB4FC  38 9E 00 10 */	addi r4, r30, 0x10
/* 80221F40 001EB500  80 BE 00 04 */	lwz r5, 4(r30)
/* 80221F44 001EB504  38 DF 00 2F */	addi r6, r31, 0x2f
/* 80221F48 001EB508  4B F1 4F C1 */	bl func_80136F08
/* 80221F4C 001EB50C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80221F50 001EB510  38 9E 00 14 */	addi r4, r30, 0x14
/* 80221F54 001EB514  80 BE 00 04 */	lwz r5, 4(r30)
/* 80221F58 001EB518  38 DF 00 48 */	addi r6, r31, 0x48
/* 80221F5C 001EB51C  4B F1 4F AD */	bl func_80136F08
/* 80221F60 001EB520  80 7E 00 08 */	lwz r3, 8(r30)
/* 80221F64 001EB524  38 9E 00 18 */	addi r4, r30, 0x18
/* 80221F68 001EB528  80 BE 00 04 */	lwz r5, 4(r30)
/* 80221F6C 001EB52C  38 DF 00 63 */	addi r6, r31, 0x63
/* 80221F70 001EB530  4B F1 4F 99 */	bl func_80136F08
/* 80221F74 001EB534  4B F1 36 2D */	bl func_801355A0
/* 80221F78 001EB538  7C 65 1B 78 */	mr r5, r3
/* 80221F7C 001EB53C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80221F80 001EB540  38 9F 00 7D */	addi r4, r31, 0x7d
/* 80221F84 001EB544  4B F1 49 3D */	bl func_801368C0
/* 80221F88 001EB548  80 7E 00 08 */	lwz r3, 8(r30)
/* 80221F8C 001EB54C  38 9F 00 7D */	addi r4, r31, 0x7d
/* 80221F90 001EB550  88 BE 00 25 */	lbz r5, 0x25(r30)
/* 80221F94 001EB554  4B F1 49 7D */	bl func_80136910
/* 80221F98 001EB558  C0 02 AA 58 */	lfs f0, float_8066ADD8@sda21(r2)
/* 80221F9C 001EB55C  7F C3 F3 78 */	mr r3, r30
/* 80221FA0 001EB560  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80221FA4 001EB564  48 00 05 7D */	bl func_80222520
/* 80221FA8 001EB568  80 7E 00 08 */	lwz r3, 8(r30)
/* 80221FAC 001EB56C  38 80 00 00 */	li r4, 0
/* 80221FB0 001EB570  81 83 00 00 */	lwz r12, 0(r3)
/* 80221FB4 001EB574  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80221FB8 001EB578  7D 89 03 A6 */	mtctr r12
/* 80221FBC 001EB57C  4E 80 04 21 */	bctrl 
/* 80221FC0 001EB580  38 00 00 01 */	li r0, 1
/* 80221FC4 001EB584  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 80221FC8 001EB588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80221FCC 001EB58C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80221FD0 001EB590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80221FD4 001EB594  7C 08 03 A6 */	mtlr r0
/* 80221FD8 001EB598  38 21 00 10 */	addi r1, r1, 0x10
/* 80221FDC 001EB59C  4E 80 00 20 */	blr 
.endfn func_80221EF4

.fn func_80221FE0, global
/* 80221FE0 001EB5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80221FE4 001EB5A4  7C 08 02 A6 */	mflr r0
/* 80221FE8 001EB5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80221FEC 001EB5AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80221FF0 001EB5B0  7C 7F 1B 78 */	mr r31, r3
/* 80221FF4 001EB5B4  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80221FF8 001EB5B8  2C 00 00 00 */	cmpwi r0, 0
/* 80221FFC 001EB5BC  41 82 00 60 */	beq .L_8022205C
/* 80222000 001EB5C0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80222004 001EB5C4  2C 00 00 01 */	cmpwi r0, 1
/* 80222008 001EB5C8  41 82 00 20 */	beq .L_80222028
/* 8022200C 001EB5CC  2C 00 00 02 */	cmpwi r0, 2
/* 80222010 001EB5D0  41 82 00 20 */	beq .L_80222030
/* 80222014 001EB5D4  2C 00 00 03 */	cmpwi r0, 3
/* 80222018 001EB5D8  41 82 00 20 */	beq .L_80222038
/* 8022201C 001EB5DC  2C 00 00 04 */	cmpwi r0, 4
/* 80222020 001EB5E0  41 82 00 20 */	beq .L_80222040
/* 80222024 001EB5E4  48 00 00 20 */	b .L_80222044
.L_80222028:
/* 80222028 001EB5E8  48 00 02 9D */	bl func_802222C4
/* 8022202C 001EB5EC  48 00 00 18 */	b .L_80222044
.L_80222030:
/* 80222030 001EB5F0  48 00 02 E9 */	bl func_80222318
/* 80222034 001EB5F4  48 00 00 10 */	b .L_80222044
.L_80222038:
/* 80222038 001EB5F8  48 00 04 35 */	bl func_8022246C
/* 8022203C 001EB5FC  48 00 00 08 */	b .L_80222044
.L_80222040:
/* 80222040 001EB600  48 00 04 71 */	bl func_802224B0
.L_80222044:
/* 80222044 001EB604  80 7F 00 08 */	lwz r3, 8(r31)
/* 80222048 001EB608  38 80 00 00 */	li r4, 0
/* 8022204C 001EB60C  81 83 00 00 */	lwz r12, 0(r3)
/* 80222050 001EB610  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80222054 001EB614  7D 89 03 A6 */	mtctr r12
/* 80222058 001EB618  4E 80 04 21 */	bctrl 
.L_8022205C:
/* 8022205C 001EB61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222060 001EB620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80222064 001EB624  7C 08 03 A6 */	mtlr r0
/* 80222068 001EB628  38 21 00 10 */	addi r1, r1, 0x10
/* 8022206C 001EB62C  4E 80 00 20 */	blr 
.endfn func_80221FE0

.fn func_80222070, global
/* 80222070 001EB630  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80222074 001EB634  2C 00 00 00 */	cmpwi r0, 0
/* 80222078 001EB638  4D 82 00 20 */	beqlr 
/* 8022207C 001EB63C  80 63 00 08 */	lwz r3, 8(r3)
/* 80222080 001EB640  38 A0 00 00 */	li r5, 0
/* 80222084 001EB644  38 C0 00 01 */	li r6, 1
/* 80222088 001EB648  4B F1 4F B0 */	b func_80137038
/* 8022208C 001EB64C  4E 80 00 20 */	blr 
.endfn func_80222070

.fn func_80222090, global
/* 80222090 001EB650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80222094 001EB654  7C 08 02 A6 */	mflr r0
/* 80222098 001EB658  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022209C 001EB65C  38 00 00 00 */	li r0, 0
/* 802220A0 001EB660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802220A4 001EB664  7C 7F 1B 78 */	mr r31, r3
/* 802220A8 001EB668  80 83 00 08 */	lwz r4, 8(r3)
/* 802220AC 001EB66C  98 03 00 1C */	stb r0, 0x1c(r3)
/* 802220B0 001EB670  2C 04 00 00 */	cmpwi r4, 0
/* 802220B4 001EB674  41 82 00 28 */	beq .L_802220DC
/* 802220B8 001EB678  41 82 00 1C */	beq .L_802220D4
/* 802220BC 001EB67C  7C 83 23 78 */	mr r3, r4
/* 802220C0 001EB680  38 80 00 01 */	li r4, 1
/* 802220C4 001EB684  81 83 00 00 */	lwz r12, 0(r3)
/* 802220C8 001EB688  81 8C 00 08 */	lwz r12, 8(r12)
/* 802220CC 001EB68C  7D 89 03 A6 */	mtctr r12
/* 802220D0 001EB690  4E 80 04 21 */	bctrl 
.L_802220D4:
/* 802220D4 001EB694  38 00 00 00 */	li r0, 0
/* 802220D8 001EB698  90 1F 00 08 */	stw r0, 8(r31)
.L_802220DC:
/* 802220DC 001EB69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802220E0 001EB6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802220E4 001EB6A4  7C 08 03 A6 */	mtlr r0
/* 802220E8 001EB6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802220EC 001EB6AC  4E 80 00 20 */	blr 
.endfn func_80222090

.fn func_802220F0, global
/* 802220F0 001EB6B0  88 63 00 24 */	lbz r3, 0x24(r3)
/* 802220F4 001EB6B4  4E 80 00 20 */	blr 
.endfn func_802220F0

.fn func_802220F8, global
/* 802220F8 001EB6B8  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802220FC 001EB6BC  2C 00 00 00 */	cmpwi r0, 0
/* 80222100 001EB6C0  4C 82 00 20 */	bnelr 
/* 80222104 001EB6C4  38 80 00 01 */	li r4, 1
/* 80222108 001EB6C8  38 00 00 00 */	li r0, 0
/* 8022210C 001EB6CC  90 83 00 20 */	stw r4, 0x20(r3)
/* 80222110 001EB6D0  98 03 00 24 */	stb r0, 0x24(r3)
/* 80222114 001EB6D4  4E 80 00 20 */	blr 
.endfn func_802220F8

.fn func_80222118, global
/* 80222118 001EB6D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022211C 001EB6DC  7C 08 02 A6 */	mflr r0
/* 80222120 001EB6E0  C0 02 AA 58 */	lfs f0, float_8066ADD8@sda21(r2)
/* 80222124 001EB6E4  38 80 00 03 */	li r4, 3
/* 80222128 001EB6E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022212C 001EB6EC  38 00 00 00 */	li r0, 0
/* 80222130 001EB6F0  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 80222134 001EB6F4  90 83 00 20 */	stw r4, 0x20(r3)
/* 80222138 001EB6F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8022213C 001EB6FC  98 03 00 24 */	stb r0, 0x24(r3)
/* 80222140 001EB700  40 81 00 50 */	ble .L_80222190
/* 80222144 001EB704  88 83 00 25 */	lbz r4, 0x25(r3)
/* 80222148 001EB708  3C 00 43 30 */	lis r0, 0x4330
/* 8022214C 001EB70C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80222150 001EB710  C8 22 AA 60 */	lfd f1, double_8066ADE0@sda21(r2)
/* 80222154 001EB714  90 01 00 08 */	stw r0, 8(r1)
/* 80222158 001EB718  C8 01 00 08 */	lfd f0, 8(r1)
/* 8022215C 001EB71C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80222160 001EB720  EC 00 10 2A */	fadds f0, f0, f2
/* 80222164 001EB724  FC 00 00 1E */	fctiwz f0, f0
/* 80222168 001EB728  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8022216C 001EB72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222170 001EB730  98 03 00 25 */	stb r0, 0x25(r3)
/* 80222174 001EB734  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80222178 001EB738  28 00 00 09 */	cmplwi r0, 9
/* 8022217C 001EB73C  40 81 00 0C */	ble .L_80222188
/* 80222180 001EB740  38 00 00 09 */	li r0, 9
/* 80222184 001EB744  98 03 00 25 */	stb r0, 0x25(r3)
.L_80222188:
/* 80222188 001EB748  C0 02 AA 58 */	lfs f0, float_8066ADD8@sda21(r2)
/* 8022218C 001EB74C  D0 03 00 28 */	stfs f0, 0x28(r3)
.L_80222190:
/* 80222190 001EB750  48 00 05 29 */	bl func_802226B8
/* 80222194 001EB754  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80222198 001EB758  7C 08 03 A6 */	mtlr r0
/* 8022219C 001EB75C  38 21 00 20 */	addi r1, r1, 0x20
/* 802221A0 001EB760  4E 80 00 20 */	blr 
.endfn func_80222118

.fn func_802221A4, global
/* 802221A4 001EB764  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802221A8 001EB768  7C 08 02 A6 */	mflr r0
/* 802221AC 001EB76C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802221B0 001EB770  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802221B4 001EB774  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802221B8 001EB778  FF E0 08 90 */	fmr f31, f1
/* 802221BC 001EB77C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802221C0 001EB780  7C 7F 1B 78 */	mr r31, r3
/* 802221C4 001EB784  48 21 31 D9 */	bl getInstanceMTRand__Q22mm3mtlFv
/* 802221C8 001EB788  48 21 39 15 */	bl rand__Q32mm3mtl6MTRandFv
/* 802221CC 001EB78C  38 A0 00 29 */	li r5, 0x29
/* 802221D0 001EB790  3C 00 43 30 */	lis r0, 0x4330
/* 802221D4 001EB794  7C 83 2B D6 */	divw r4, r3, r5
/* 802221D8 001EB798  90 01 00 08 */	stw r0, 8(r1)
/* 802221DC 001EB79C  C8 82 AA 70 */	lfd f4, double_8066ADF0@sda21(r2)
/* 802221E0 001EB7A0  C0 42 AA 68 */	lfs f2, float_8066ADE8@sda21(r2)
/* 802221E4 001EB7A4  C0 22 AA 6C */	lfs f1, float_8066ADEC@sda21(r2)
/* 802221E8 001EB7A8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 802221EC 001EB7AC  7C 04 29 D6 */	mullw r0, r4, r5
/* 802221F0 001EB7B0  7C 00 18 50 */	subf r0, r0, r3
/* 802221F4 001EB7B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802221F8 001EB7B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802221FC 001EB7BC  C8 61 00 08 */	lfd f3, 8(r1)
/* 80222200 001EB7C0  EC 63 20 28 */	fsubs f3, f3, f4
/* 80222204 001EB7C4  EC 63 10 2A */	fadds f3, f3, f2
/* 80222208 001EB7C8  EC 63 F8 2A */	fadds f3, f3, f31
/* 8022220C 001EB7CC  EC 63 00 72 */	fmuls f3, f3, f1
/* 80222210 001EB7D0  EC 00 18 2A */	fadds f0, f0, f3
/* 80222214 001EB7D4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80222218 001EB7D8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8022221C 001EB7DC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80222220 001EB7E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80222224 001EB7E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80222228 001EB7E8  7C 08 03 A6 */	mtlr r0
/* 8022222C 001EB7EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80222230 001EB7F0  4E 80 00 20 */	blr 
.endfn func_802221A4

.fn func_80222234, global
/* 80222234 001EB7F4  88 A3 00 25 */	lbz r5, 0x25(r3)
/* 80222238 001EB7F8  3C 80 80 50 */	lis r4, CMCCylinderGauge_strpool@ha
/* 8022223C 001EB7FC  38 84 49 34 */	addi r4, r4, CMCCylinderGauge_strpool@l
/* 80222240 001EB800  38 05 FF FF */	addi r0, r5, -1
/* 80222244 001EB804  98 03 00 25 */	stb r0, 0x25(r3)
/* 80222248 001EB808  80 63 00 08 */	lwz r3, 8(r3)
/* 8022224C 001EB80C  38 84 00 7D */	addi r4, r4, 0x7d
/* 80222250 001EB810  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80222254 001EB814  4B F1 46 BC */	b func_80136910
.endfn func_80222234

.fn func_80222258, global
/* 80222258 001EB818  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022225C 001EB81C  3C 00 43 30 */	lis r0, 0x4330
/* 80222260 001EB820  C8 42 AA 60 */	lfd f2, double_8066ADE0@sda21(r2)
/* 80222264 001EB824  88 83 00 25 */	lbz r4, 0x25(r3)
/* 80222268 001EB828  90 81 00 0C */	stw r4, 0xc(r1)
/* 8022226C 001EB82C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80222270 001EB830  90 01 00 08 */	stw r0, 8(r1)
/* 80222274 001EB834  C8 21 00 08 */	lfd f1, 8(r1)
/* 80222278 001EB838  EC 21 10 28 */	fsubs f1, f1, f2
/* 8022227C 001EB83C  EC 01 00 2A */	fadds f0, f1, f0
/* 80222280 001EB840  FC 00 00 1E */	fctiwz f0, f0
/* 80222284 001EB844  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80222288 001EB848  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8022228C 001EB84C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80222290 001EB850  28 00 00 09 */	cmplwi r0, 9
/* 80222294 001EB854  40 81 00 08 */	ble .L_8022229C
/* 80222298 001EB858  38 60 00 09 */	li r3, 9
.L_8022229C:
/* 8022229C 001EB85C  38 21 00 20 */	addi r1, r1, 0x20
/* 802222A0 001EB860  4E 80 00 20 */	blr 
.endfn func_80222258

.fn func_802222A4, global
/* 802222A4 001EB864  98 83 00 25 */	stb r4, 0x25(r3)
/* 802222A8 001EB868  7C 65 1B 78 */	mr r5, r3
/* 802222AC 001EB86C  3C 80 80 50 */	lis r4, CMCCylinderGauge_strpool@ha
/* 802222B0 001EB870  80 63 00 08 */	lwz r3, 8(r3)
/* 802222B4 001EB874  38 84 49 34 */	addi r4, r4, CMCCylinderGauge_strpool@l
/* 802222B8 001EB878  88 A5 00 25 */	lbz r5, 0x25(r5)
/* 802222BC 001EB87C  38 84 00 7D */	addi r4, r4, 0x7d
/* 802222C0 001EB880  4B F1 46 50 */	b func_80136910
.endfn func_802222A4

.fn func_802222C4, global
/* 802222C4 001EB884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802222C8 001EB888  7C 08 02 A6 */	mflr r0
/* 802222CC 001EB88C  C0 22 AA 78 */	lfs f1, float_8066ADF8@sda21(r2)
/* 802222D0 001EB890  90 01 00 14 */	stw r0, 0x14(r1)
/* 802222D4 001EB894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802222D8 001EB898  7C 7F 1B 78 */	mr r31, r3
/* 802222DC 001EB89C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802222E0 001EB8A0  4B F1 51 65 */	bl func_80137444
/* 802222E4 001EB8A4  2C 03 00 00 */	cmpwi r3, 0
/* 802222E8 001EB8A8  41 82 00 1C */	beq .L_80222304
/* 802222EC 001EB8AC  38 60 00 01 */	li r3, 1
/* 802222F0 001EB8B0  38 00 00 02 */	li r0, 2
/* 802222F4 001EB8B4  98 7F 00 24 */	stb r3, 0x24(r31)
/* 802222F8 001EB8B8  7F E3 FB 78 */	mr r3, r31
/* 802222FC 001EB8BC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80222300 001EB8C0  48 00 02 A9 */	bl func_802225A8
.L_80222304:
/* 80222304 001EB8C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222308 001EB8C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022230C 001EB8CC  7C 08 03 A6 */	mtlr r0
/* 80222310 001EB8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80222314 001EB8D4  4E 80 00 20 */	blr 
.endfn func_802222C4

.fn func_80222318, global
/* 80222318 001EB8D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8022231C 001EB8DC  7C 08 02 A6 */	mflr r0
/* 80222320 001EB8E0  C0 02 AA 78 */	lfs f0, float_8066ADF8@sda21(r2)
/* 80222324 001EB8E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80222328 001EB8E8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8022232C 001EB8EC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80222330 001EB8F0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80222334 001EB8F4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 80222338 001EB8F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8022233C 001EB8FC  7C 7F 1B 78 */	mr r31, r3
/* 80222340 001EB900  C3 E3 00 28 */	lfs f31, 0x28(r3)
/* 80222344 001EB904  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80222348 001EB908  40 81 00 08 */	ble .L_80222350
/* 8022234C 001EB90C  FF E0 00 90 */	fmr f31, f0
.L_80222350:
/* 80222350 001EB910  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80222354 001EB914  C0 02 AA 78 */	lfs f0, float_8066ADF8@sda21(r2)
/* 80222358 001EB918  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8022235C 001EB91C  EF C0 08 2A */	fadds f30, f0, f1
/* 80222360 001EB920  48 1E 66 61 */	bl GetFrameSize__Q34nw4r3lyt13AnimTransformCFv
/* 80222364 001EB924  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80222368 001EB928  3C 00 43 30 */	lis r0, 0x4330
/* 8022236C 001EB92C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80222370 001EB930  C8 42 AA 60 */	lfd f2, double_8066ADE0@sda21(r2)
/* 80222374 001EB934  90 01 00 08 */	stw r0, 8(r1)
/* 80222378 001EB938  C0 22 AA 78 */	lfs f1, float_8066ADF8@sda21(r2)
/* 8022237C 001EB93C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80222380 001EB940  EC 00 10 28 */	fsubs f0, f0, f2
/* 80222384 001EB944  EC 00 08 28 */	fsubs f0, f0, f1
/* 80222388 001EB948  EC 5F 00 32 */	fmuls f2, f31, f0
/* 8022238C 001EB94C  FC 1E 10 40 */	fcmpo cr0, f30, f2
/* 80222390 001EB950  40 81 00 98 */	ble .L_80222428
/* 80222394 001EB954  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80222398 001EB958  FF C0 10 90 */	fmr f30, f2
/* 8022239C 001EB95C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802223A0 001EB960  4C 41 13 82 */	cror 2, 1, 2
/* 802223A4 001EB964  40 82 00 84 */	bne .L_80222428
/* 802223A8 001EB968  88 7F 00 25 */	lbz r3, 0x25(r31)
/* 802223AC 001EB96C  28 03 00 09 */	cmplwi r3, 9
/* 802223B0 001EB970  40 80 00 6C */	bge .L_8022241C
/* 802223B4 001EB974  3C 80 80 50 */	lis r4, CMCCylinderGauge_strpool@ha
/* 802223B8 001EB978  38 03 00 01 */	addi r0, r3, 1
/* 802223BC 001EB97C  38 84 49 34 */	addi r4, r4, CMCCylinderGauge_strpool@l
/* 802223C0 001EB980  98 1F 00 25 */	stb r0, 0x25(r31)
/* 802223C4 001EB984  80 7F 00 08 */	lwz r3, 8(r31)
/* 802223C8 001EB988  38 84 00 7D */	addi r4, r4, 0x7d
/* 802223CC 001EB98C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 802223D0 001EB990  4B F1 45 41 */	bl func_80136910
/* 802223D4 001EB994  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 802223D8 001EB998  C0 22 AA 78 */	lfs f1, float_8066ADF8@sda21(r2)
/* 802223DC 001EB99C  C0 02 AA 58 */	lfs f0, float_8066ADD8@sda21(r2)
/* 802223E0 001EB9A0  EC 22 08 28 */	fsubs f1, f2, f1
/* 802223E4 001EB9A4  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 802223E8 001EB9A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802223EC 001EB9AC  40 80 00 08 */	bge .L_802223F4
/* 802223F0 001EB9B0  D0 1F 00 28 */	stfs f0, 0x28(r31)
.L_802223F4:
/* 802223F4 001EB9B4  38 00 00 04 */	li r0, 4
/* 802223F8 001EB9B8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802223FC 001EB9BC  7F E3 FB 78 */	mr r3, r31
/* 80222400 001EB9C0  48 00 02 31 */	bl func_80222630
/* 80222404 001EB9C4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80222408 001EB9C8  38 60 00 B1 */	li r3, 0xb1
/* 8022240C 001EB9CC  C0 02 AA 58 */	lfs f0, float_8066ADD8@sda21(r2)
/* 80222410 001EB9D0  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80222414 001EB9D4  4B F1 5C 65 */	bl func_80138078
/* 80222418 001EB9D8  48 00 00 10 */	b .L_80222428
.L_8022241C:
/* 8022241C 001EB9DC  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 80222420 001EB9E0  38 60 00 80 */	li r3, 0x80
/* 80222424 001EB9E4  4B F1 90 05 */	bl func_8013B428
.L_80222428:
/* 80222428 001EB9E8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8022242C 001EB9EC  38 80 00 00 */	li r4, 0
/* 80222430 001EB9F0  D3 C3 00 10 */	stfs f30, 0x10(r3)
/* 80222434 001EB9F4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80222438 001EB9F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8022243C 001EB9FC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80222440 001EBA00  7D 89 03 A6 */	mtctr r12
/* 80222444 001EBA04  4E 80 04 21 */	bctrl 
/* 80222448 001EBA08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022244C 001EBA0C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80222450 001EBA10  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80222454 001EBA14  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80222458 001EBA18  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8022245C 001EBA1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80222460 001EBA20  7C 08 03 A6 */	mtlr r0
/* 80222464 001EBA24  38 21 00 40 */	addi r1, r1, 0x40
/* 80222468 001EBA28  4E 80 00 20 */	blr 
.endfn func_80222318

.fn func_8022246C, global
/* 8022246C 001EBA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80222470 001EBA30  7C 08 02 A6 */	mflr r0
/* 80222474 001EBA34  C0 22 AA 78 */	lfs f1, float_8066ADF8@sda21(r2)
/* 80222478 001EBA38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022247C 001EBA3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80222480 001EBA40  7C 7F 1B 78 */	mr r31, r3
/* 80222484 001EBA44  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80222488 001EBA48  4B F1 4F BD */	bl func_80137444
/* 8022248C 001EBA4C  2C 03 00 00 */	cmpwi r3, 0
/* 80222490 001EBA50  41 82 00 0C */	beq .L_8022249C
/* 80222494 001EBA54  38 00 00 01 */	li r0, 1
/* 80222498 001EBA58  98 1F 00 24 */	stb r0, 0x24(r31)
.L_8022249C:
/* 8022249C 001EBA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802224A0 001EBA60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802224A4 001EBA64  7C 08 03 A6 */	mtlr r0
/* 802224A8 001EBA68  38 21 00 10 */	addi r1, r1, 0x10
/* 802224AC 001EBA6C  4E 80 00 20 */	blr 
.endfn func_8022246C

.fn func_802224B0, global
/* 802224B0 001EBA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802224B4 001EBA74  7C 08 02 A6 */	mflr r0
/* 802224B8 001EBA78  C0 22 AA 78 */	lfs f1, float_8066ADF8@sda21(r2)
/* 802224BC 001EBA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802224C0 001EBA80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802224C4 001EBA84  7C 7F 1B 78 */	mr r31, r3
/* 802224C8 001EBA88  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802224CC 001EBA8C  4B F1 4F 79 */	bl func_80137444
/* 802224D0 001EBA90  2C 03 00 00 */	cmpwi r3, 0
/* 802224D4 001EBA94  41 82 00 38 */	beq .L_8022250C
/* 802224D8 001EBA98  38 00 00 02 */	li r0, 2
/* 802224DC 001EBA9C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802224E0 001EBAA0  7F E3 FB 78 */	mr r3, r31
/* 802224E4 001EBAA4  48 00 00 C5 */	bl func_802225A8
/* 802224E8 001EBAA8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802224EC 001EBAAC  38 80 00 00 */	li r4, 0
/* 802224F0 001EBAB0  C0 02 AA 58 */	lfs f0, float_8066ADD8@sda21(r2)
/* 802224F4 001EBAB4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802224F8 001EBAB8  80 7F 00 08 */	lwz r3, 8(r31)
/* 802224FC 001EBABC  81 83 00 00 */	lwz r12, 0(r3)
/* 80222500 001EBAC0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80222504 001EBAC4  7D 89 03 A6 */	mtctr r12
/* 80222508 001EBAC8  4E 80 04 21 */	bctrl 
.L_8022250C:
/* 8022250C 001EBACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222510 001EBAD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80222514 001EBAD4  7C 08 03 A6 */	mtlr r0
/* 80222518 001EBAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022251C 001EBADC  4E 80 00 20 */	blr 
.endfn func_802224B0

.fn func_80222520, global
/* 80222520 001EBAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80222524 001EBAE4  7C 08 02 A6 */	mflr r0
/* 80222528 001EBAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022252C 001EBAEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80222530 001EBAF0  7C 7F 1B 78 */	mr r31, r3
/* 80222534 001EBAF4  80 63 00 08 */	lwz r3, 8(r3)
/* 80222538 001EBAF8  81 83 00 00 */	lwz r12, 0(r3)
/* 8022253C 001EBAFC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80222540 001EBB00  7D 89 03 A6 */	mtctr r12
/* 80222544 001EBB04  4E 80 04 21 */	bctrl 
/* 80222548 001EBB08  80 7F 00 08 */	lwz r3, 8(r31)
/* 8022254C 001EBB0C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80222550 001EBB10  81 83 00 00 */	lwz r12, 0(r3)
/* 80222554 001EBB14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80222558 001EBB18  7D 89 03 A6 */	mtctr r12
/* 8022255C 001EBB1C  4E 80 04 21 */	bctrl 
/* 80222560 001EBB20  80 7F 00 08 */	lwz r3, 8(r31)
/* 80222564 001EBB24  38 A0 00 01 */	li r5, 1
/* 80222568 001EBB28  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8022256C 001EBB2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80222570 001EBB30  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80222574 001EBB34  7D 89 03 A6 */	mtctr r12
/* 80222578 001EBB38  4E 80 04 21 */	bctrl 
/* 8022257C 001EBB3C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80222580 001EBB40  38 80 00 00 */	li r4, 0
/* 80222584 001EBB44  81 83 00 00 */	lwz r12, 0(r3)
/* 80222588 001EBB48  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8022258C 001EBB4C  7D 89 03 A6 */	mtctr r12
/* 80222590 001EBB50  4E 80 04 21 */	bctrl 
/* 80222594 001EBB54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222598 001EBB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022259C 001EBB5C  7C 08 03 A6 */	mtlr r0
/* 802225A0 001EBB60  38 21 00 10 */	addi r1, r1, 0x10
/* 802225A4 001EBB64  4E 80 00 20 */	blr 
.endfn func_80222520

.fn func_802225A8, global
/* 802225A8 001EBB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802225AC 001EBB6C  7C 08 02 A6 */	mflr r0
/* 802225B0 001EBB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802225B4 001EBB74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802225B8 001EBB78  7C 7F 1B 78 */	mr r31, r3
/* 802225BC 001EBB7C  80 63 00 08 */	lwz r3, 8(r3)
/* 802225C0 001EBB80  81 83 00 00 */	lwz r12, 0(r3)
/* 802225C4 001EBB84  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802225C8 001EBB88  7D 89 03 A6 */	mtctr r12
/* 802225CC 001EBB8C  4E 80 04 21 */	bctrl 
/* 802225D0 001EBB90  80 7F 00 08 */	lwz r3, 8(r31)
/* 802225D4 001EBB94  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802225D8 001EBB98  81 83 00 00 */	lwz r12, 0(r3)
/* 802225DC 001EBB9C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802225E0 001EBBA0  7D 89 03 A6 */	mtctr r12
/* 802225E4 001EBBA4  4E 80 04 21 */	bctrl 
/* 802225E8 001EBBA8  80 7F 00 08 */	lwz r3, 8(r31)
/* 802225EC 001EBBAC  38 A0 00 01 */	li r5, 1
/* 802225F0 001EBBB0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802225F4 001EBBB4  81 83 00 00 */	lwz r12, 0(r3)
/* 802225F8 001EBBB8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802225FC 001EBBBC  7D 89 03 A6 */	mtctr r12
/* 80222600 001EBBC0  4E 80 04 21 */	bctrl 
/* 80222604 001EBBC4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80222608 001EBBC8  38 80 00 00 */	li r4, 0
/* 8022260C 001EBBCC  81 83 00 00 */	lwz r12, 0(r3)
/* 80222610 001EBBD0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80222614 001EBBD4  7D 89 03 A6 */	mtctr r12
/* 80222618 001EBBD8  4E 80 04 21 */	bctrl 
/* 8022261C 001EBBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222620 001EBBE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80222624 001EBBE4  7C 08 03 A6 */	mtlr r0
/* 80222628 001EBBE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022262C 001EBBEC  4E 80 00 20 */	blr 
.endfn func_802225A8

.fn func_80222630, global
/* 80222630 001EBBF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80222634 001EBBF4  7C 08 02 A6 */	mflr r0
/* 80222638 001EBBF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022263C 001EBBFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80222640 001EBC00  7C 7F 1B 78 */	mr r31, r3
/* 80222644 001EBC04  80 63 00 08 */	lwz r3, 8(r3)
/* 80222648 001EBC08  81 83 00 00 */	lwz r12, 0(r3)
/* 8022264C 001EBC0C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80222650 001EBC10  7D 89 03 A6 */	mtctr r12
/* 80222654 001EBC14  4E 80 04 21 */	bctrl 
/* 80222658 001EBC18  80 7F 00 08 */	lwz r3, 8(r31)
/* 8022265C 001EBC1C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80222660 001EBC20  81 83 00 00 */	lwz r12, 0(r3)
/* 80222664 001EBC24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80222668 001EBC28  7D 89 03 A6 */	mtctr r12
/* 8022266C 001EBC2C  4E 80 04 21 */	bctrl 
/* 80222670 001EBC30  80 7F 00 08 */	lwz r3, 8(r31)
/* 80222674 001EBC34  38 A0 00 01 */	li r5, 1
/* 80222678 001EBC38  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8022267C 001EBC3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80222680 001EBC40  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80222684 001EBC44  7D 89 03 A6 */	mtctr r12
/* 80222688 001EBC48  4E 80 04 21 */	bctrl 
/* 8022268C 001EBC4C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80222690 001EBC50  38 80 00 00 */	li r4, 0
/* 80222694 001EBC54  81 83 00 00 */	lwz r12, 0(r3)
/* 80222698 001EBC58  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8022269C 001EBC5C  7D 89 03 A6 */	mtctr r12
/* 802226A0 001EBC60  4E 80 04 21 */	bctrl 
/* 802226A4 001EBC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802226A8 001EBC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802226AC 001EBC6C  7C 08 03 A6 */	mtlr r0
/* 802226B0 001EBC70  38 21 00 10 */	addi r1, r1, 0x10
/* 802226B4 001EBC74  4E 80 00 20 */	blr 
.endfn func_80222630

.fn func_802226B8, global
/* 802226B8 001EBC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802226BC 001EBC7C  7C 08 02 A6 */	mflr r0
/* 802226C0 001EBC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802226C4 001EBC84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802226C8 001EBC88  7C 7F 1B 78 */	mr r31, r3
/* 802226CC 001EBC8C  80 63 00 08 */	lwz r3, 8(r3)
/* 802226D0 001EBC90  81 83 00 00 */	lwz r12, 0(r3)
/* 802226D4 001EBC94  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802226D8 001EBC98  7D 89 03 A6 */	mtctr r12
/* 802226DC 001EBC9C  4E 80 04 21 */	bctrl 
/* 802226E0 001EBCA0  80 7F 00 08 */	lwz r3, 8(r31)
/* 802226E4 001EBCA4  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 802226E8 001EBCA8  81 83 00 00 */	lwz r12, 0(r3)
/* 802226EC 001EBCAC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802226F0 001EBCB0  7D 89 03 A6 */	mtctr r12
/* 802226F4 001EBCB4  4E 80 04 21 */	bctrl 
/* 802226F8 001EBCB8  80 7F 00 08 */	lwz r3, 8(r31)
/* 802226FC 001EBCBC  38 A0 00 01 */	li r5, 1
/* 80222700 001EBCC0  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80222704 001EBCC4  81 83 00 00 */	lwz r12, 0(r3)
/* 80222708 001EBCC8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022270C 001EBCCC  7D 89 03 A6 */	mtctr r12
/* 80222710 001EBCD0  4E 80 04 21 */	bctrl 
/* 80222714 001EBCD4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80222718 001EBCD8  38 80 00 00 */	li r4, 0
/* 8022271C 001EBCDC  81 83 00 00 */	lwz r12, 0(r3)
/* 80222720 001EBCE0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80222724 001EBCE4  7D 89 03 A6 */	mtctr r12
/* 80222728 001EBCE8  4E 80 04 21 */	bctrl 
/* 8022272C 001EBCEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222730 001EBCF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80222734 001EBCF4  7C 08 03 A6 */	mtlr r0
/* 80222738 001EBCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022273C 001EBCFC  4E 80 00 20 */	blr 
.endfn func_802226B8


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global CMCCylinderGauge_typestr
CMCCylinderGauge_typestr:
	.asciz "CMCCylinderGauge"
	.balign 4


.global CMCCylinderGauge_strpool
CMCCylinderGauge_strpool:
	.asciz "mf10_cry01_gage.brlyt"
	.asciz "mf10_cry01_gage_in.brlan"
	.asciz "mf10_cry01_gage_up.brlan"
	.asciz "mf10_cry01_gage_full.brlan"
	.asciz "mf10_cry01_gage_out.brlan"
	.asciz "txt_sylinder"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60




.global __vt__CMCCylinderGauge
__vt__CMCCylinderGauge:
	.4byte __RTTI__CMCCylinderGauge
	.4byte 0
	.4byte __dt__CMCCylinderGauge
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global __RTTI__CMCCylinderGauge
__RTTI__CMCCylinderGauge:
	.4byte CMCCylinderGauge_typestr
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0



.global float_8066ADD8
float_8066ADD8:
	.float 0
	.4byte 0


.global double_8066ADE0
double_8066ADE0:
	.8byte 0x4330000000000000 #unsigned int to float constant

.global float_8066ADE8
float_8066ADE8:
	.float 30 #0x41F00000


.global float_8066ADEC
float_8066ADEC:
	.float 0.01 #0x3C23D70A


.global double_8066ADF0
double_8066ADF0:
	.8byte 0x4330000080000000 #signed int to float constant

.global float_8066ADF8
float_8066ADF8:
	.float 1.0
	.4byte 0

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80014DE8", local
.hidden "@etb_80014DE8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014DE8"

.obj "@etb_80014DF0", local
.hidden "@etb_80014DF0"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80014DF0"

.obj "@etb_80014DF8", local
.hidden "@etb_80014DF8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014DF8"

.obj "@etb_80014E00", local
.hidden "@etb_80014E00"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014E00"

.obj "@etb_80014E08", local
.hidden "@etb_80014E08"
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80014E08"

.obj "@etb_80014E10", local
.hidden "@etb_80014E10"
	.4byte 0x084A0000
	.4byte 0x00000000
.endobj "@etb_80014E10"

.obj "@etb_80014E18", local
.hidden "@etb_80014E18"
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80014E18"

.obj "@etb_80014E20", local
.hidden "@etb_80014E20"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80014E20"

.obj "@etb_80014E28", local
.hidden "@etb_80014E28"
	.4byte 0x088A0000
	.4byte 0x00000000
.endobj "@etb_80014E28"

.obj "@etb_80014E30", local
.hidden "@etb_80014E30"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80014E30"

.obj "@etb_80014E38", local
.hidden "@etb_80014E38"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80014E38"

.obj "@etb_80014E40", local
.hidden "@etb_80014E40"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014E40"

.obj "@etb_80014E48", local
.hidden "@etb_80014E48"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014E48"

.obj "@etb_80014E50", local
.hidden "@etb_80014E50"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014E50"

.obj "@etb_80014E58", local
.hidden "@etb_80014E58"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014E58"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002DC14", local
.hidden "@eti_8002DC14"
	.4byte __dt__CMCCylinderGauge
	.4byte 0x00000040
	.4byte "@etb_80014DE8"
.endobj "@eti_8002DC14"

.obj "@eti_8002DC20", local
.hidden "@eti_8002DC20"
	.4byte func_80221EF4
	.4byte 0x000000EC
	.4byte "@etb_80014DF0"
.endobj "@eti_8002DC20"

.obj "@eti_8002DC2C", local
.hidden "@eti_8002DC2C"
	.4byte func_80221FE0
	.4byte 0x00000090
	.4byte "@etb_80014DF8"
.endobj "@eti_8002DC2C"

.obj "@eti_8002DC38", local
.hidden "@eti_8002DC38"
	.4byte func_80222090
	.4byte 0x00000060
	.4byte "@etb_80014E00"
.endobj "@eti_8002DC38"

.obj "@eti_8002DC44", local
.hidden "@eti_8002DC44"
	.4byte func_80222118
	.4byte 0x0000008C
	.4byte "@etb_80014E08"
.endobj "@eti_8002DC44"

.obj "@eti_8002DC50", local
.hidden "@eti_8002DC50"
	.4byte func_802221A4
	.4byte 0x00000090
	.4byte "@etb_80014E10"
.endobj "@eti_8002DC50"

.obj "@eti_8002DC5C", local
.hidden "@eti_8002DC5C"
	.4byte func_80222258
	.4byte 0x0000004C
	.4byte "@etb_80014E18"
.endobj "@eti_8002DC5C"

.obj "@eti_8002DC68", local
.hidden "@eti_8002DC68"
	.4byte func_802222C4
	.4byte 0x00000054
	.4byte "@etb_80014E20"
.endobj "@eti_8002DC68"

.obj "@eti_8002DC74", local
.hidden "@eti_8002DC74"
	.4byte func_80222318
	.4byte 0x00000154
	.4byte "@etb_80014E28"
.endobj "@eti_8002DC74"

.obj "@eti_8002DC80", local
.hidden "@eti_8002DC80"
	.4byte func_8022246C
	.4byte 0x00000044
	.4byte "@etb_80014E30"
.endobj "@eti_8002DC80"

.obj "@eti_8002DC8C", local
.hidden "@eti_8002DC8C"
	.4byte func_802224B0
	.4byte 0x00000070
	.4byte "@etb_80014E38"
.endobj "@eti_8002DC8C"

.obj "@eti_8002DC98", local
.hidden "@eti_8002DC98"
	.4byte func_80222520
	.4byte 0x00000088
	.4byte "@etb_80014E40"
.endobj "@eti_8002DC98"

.obj "@eti_8002DCA4", local
.hidden "@eti_8002DCA4"
	.4byte func_802225A8
	.4byte 0x00000088
	.4byte "@etb_80014E48"
.endobj "@eti_8002DCA4"

.obj "@eti_8002DCB0", local
.hidden "@eti_8002DCB0"
	.4byte func_80222630
	.4byte 0x00000088
	.4byte "@etb_80014E50"
.endobj "@eti_8002DCB0"

.obj "@eti_8002DCBC", local
.hidden "@eti_8002DCBC"
	.4byte func_802226B8
	.4byte 0x00000088
	.4byte "@etb_80014E58"
.endobj "@eti_8002DCBC"