.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__cf_CfObjectNpc, global
/* 800BF340 00088900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF344 00088904  7C 08 02 A6 */	mflr r0
/* 800BF348 00088908  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF34C 0008890C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BF350 00088910  7C 9F 23 78 */	mr r31, r4
/* 800BF354 00088914  93 C1 00 08 */	stw r30, 8(r1)
/* 800BF358 00088918  7C 7E 1B 78 */	mr r30, r3
/* 800BF35C 0008891C  4B FF C8 F1 */	bl __ct__cf_CfObjectMove
/* 800BF360 00088920  3C 60 80 53 */	lis r3, __vt__Q22cf11CfObjectNpc@ha
/* 800BF364 00088924  2C 1F 00 00 */	cmpwi r31, 0
/* 800BF368 00088928  38 63 D0 88 */	addi r3, r3, __vt__Q22cf11CfObjectNpc@l
/* 800BF36C 0008892C  90 7E 00 00 */	stw r3, 0(r30)
/* 800BF370 00088930  41 82 00 2C */	beq .L_800BF39C
/* 800BF374 00088934  4B FA 2C 89 */	bl func_80061FFC
/* 800BF378 00088938  7C 64 1B 78 */	mr r4, r3
/* 800BF37C 0008893C  38 60 00 44 */	li r3, 0x44
/* 800BF380 00088940  48 37 56 DD */	bl heap_malloc
/* 800BF384 00088944  2C 03 00 00 */	cmpwi r3, 0
/* 800BF388 00088948  41 82 00 0C */	beq .L_800BF394
/* 800BF38C 0008894C  7F C4 F3 78 */	mr r4, r30
/* 800BF390 00088950  48 0C D6 35 */	bl __ct__cf_CfResPcImpl
.L_800BF394:
/* 800BF394 00088954  90 7E 00 B0 */	stw r3, 0xb0(r30)
/* 800BF398 00088958  48 00 00 28 */	b .L_800BF3C0
.L_800BF39C:
/* 800BF39C 0008895C  4B FA 2C 61 */	bl func_80061FFC
/* 800BF3A0 00088960  7C 64 1B 78 */	mr r4, r3
/* 800BF3A4 00088964  38 60 00 20 */	li r3, 0x20
/* 800BF3A8 00088968  48 37 56 B5 */	bl heap_malloc
/* 800BF3AC 0008896C  2C 03 00 00 */	cmpwi r3, 0
/* 800BF3B0 00088970  41 82 00 0C */	beq .L_800BF3BC
/* 800BF3B4 00088974  7F C4 F3 78 */	mr r4, r30
/* 800BF3B8 00088978  48 0A DA 09 */	bl __ct__cf_CfResReloadImpl
.L_800BF3BC:
/* 800BF3BC 0008897C  90 7E 00 B0 */	stw r3, 0xb0(r30)
.L_800BF3C0:
/* 800BF3C0 00088980  C0 02 90 28 */	lfs f0, float_806693A8@sda21(r2)
/* 800BF3C4 00088984  38 80 00 00 */	li r4, 0
/* 800BF3C8 00088988  38 00 FF FF */	li r0, -1
/* 800BF3CC 0008898C  90 9E 00 34 */	stw r4, 0x34(r30)
/* 800BF3D0 00088990  7F C3 F3 78 */	mr r3, r30
/* 800BF3D4 00088994  98 9E 07 15 */	stb r4, 0x715(r30)
/* 800BF3D8 00088998  B0 1E 07 16 */	sth r0, 0x716(r30)
/* 800BF3DC 0008899C  D0 1E 07 18 */	stfs f0, 0x718(r30)
/* 800BF3E0 000889A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BF3E4 000889A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BF3E8 000889A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF3EC 000889AC  7C 08 03 A6 */	mtlr r0
/* 800BF3F0 000889B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF3F4 000889B4  4E 80 00 20 */	blr 
.endfn __ct__cf_CfObjectNpc

.fn __dt__800BF3F8, global
/* 800BF3F8 000889B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF3FC 000889BC  7C 08 02 A6 */	mflr r0
/* 800BF400 000889C0  2C 03 00 00 */	cmpwi r3, 0
/* 800BF404 000889C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF408 000889C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BF40C 000889CC  7C 9F 23 78 */	mr r31, r4
/* 800BF410 000889D0  93 C1 00 08 */	stw r30, 8(r1)
/* 800BF414 000889D4  7C 7E 1B 78 */	mr r30, r3
/* 800BF418 000889D8  41 82 00 38 */	beq .L_800BF450
/* 800BF41C 000889DC  3D 80 80 53 */	lis r12, __vt__Q22cf11CfObjectNpc@ha
/* 800BF420 000889E0  39 8C D0 88 */	addi r12, r12, __vt__Q22cf11CfObjectNpc@l
/* 800BF424 000889E4  91 83 00 00 */	stw r12, 0(r3)
/* 800BF428 000889E8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 800BF42C 000889EC  7D 89 03 A6 */	mtctr r12
/* 800BF430 000889F0  4E 80 04 21 */	bctrl 
/* 800BF434 000889F4  7F C3 F3 78 */	mr r3, r30
/* 800BF438 000889F8  38 80 00 00 */	li r4, 0
/* 800BF43C 000889FC  4B FF C9 31 */	bl __dt__800BBD6C
/* 800BF440 00088A00  2C 1F 00 00 */	cmpwi r31, 0
/* 800BF444 00088A04  40 81 00 0C */	ble .L_800BF450
/* 800BF448 00088A08  7F C3 F3 78 */	mr r3, r30
/* 800BF44C 00088A0C  48 37 57 E1 */	bl __dl__FPv
.L_800BF450:
/* 800BF450 00088A10  7F C3 F3 78 */	mr r3, r30
/* 800BF454 00088A14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BF458 00088A18  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BF45C 00088A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF460 00088A20  7C 08 03 A6 */	mtlr r0
/* 800BF464 00088A24  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF468 00088A28  4E 80 00 20 */	blr 
.endfn __dt__800BF3F8

.fn func_800BF46C, global
/* 800BF46C 00088A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF470 00088A30  7C 08 02 A6 */	mflr r0
/* 800BF474 00088A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF478 00088A38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BF47C 00088A3C  7C 7F 1B 78 */	mr r31, r3
/* 800BF480 00088A40  4B FF B4 81 */	bl func_800BA900
/* 800BF484 00088A44  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 800BF488 00088A48  7F E3 FB 78 */	mr r3, r31
/* 800BF48C 00088A4C  38 80 00 01 */	li r4, 1
/* 800BF490 00088A50  64 00 00 10 */	oris r0, r0, 0x10
/* 800BF494 00088A54  90 1F 00 68 */	stw r0, 0x68(r31)
/* 800BF498 00088A58  4B FF EE A5 */	bl func_800BE33C
/* 800BF49C 00088A5C  7F E3 FB 78 */	mr r3, r31
/* 800BF4A0 00088A60  38 80 00 01 */	li r4, 1
/* 800BF4A4 00088A64  4B FF F3 81 */	bl func_800BE824
/* 800BF4A8 00088A68  C0 22 90 2C */	lfs f1, float_806693AC@sda21(r2)
/* 800BF4AC 00088A6C  38 7F 06 0C */	addi r3, r31, 0x60c
/* 800BF4B0 00088A70  C0 42 90 30 */	lfs f2, float_806693B0@sda21(r2)
/* 800BF4B4 00088A74  38 80 00 00 */	li r4, 0
/* 800BF4B8 00088A78  48 3F 16 1D */	bl func_804B0AD4
/* 800BF4BC 00088A7C  38 00 01 5E */	li r0, 0x15e
/* 800BF4C0 00088A80  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 800BF4C4 00088A84  38 60 00 01 */	li r3, 1
/* 800BF4C8 00088A88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BF4CC 00088A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF4D0 00088A90  7C 08 03 A6 */	mtlr r0
/* 800BF4D4 00088A94  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF4D8 00088A98  4E 80 00 20 */	blr 
.endfn func_800BF46C

.fn func_800BF4DC, global
/* 800BF4DC 00088A9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BF4E0 00088AA0  7C 08 02 A6 */	mflr r0
/* 800BF4E4 00088AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BF4E8 00088AA8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800BF4EC 00088AAC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 800BF4F0 00088AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BF4F4 00088AB4  93 C1 00 08 */	stw r30, 8(r1)
/* 800BF4F8 00088AB8  7C 7E 1B 78 */	mr r30, r3
/* 800BF4FC 00088ABC  81 83 00 00 */	lwz r12, 0(r3)
/* 800BF500 00088AC0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 800BF504 00088AC4  7D 89 03 A6 */	mtctr r12
/* 800BF508 00088AC8  4E 80 04 21 */	bctrl 
/* 800BF50C 00088ACC  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 800BF510 00088AD0  3B E0 00 01 */	li r31, 1
/* 800BF514 00088AD4  74 00 09 84 */	andis. r0, r0, 0x984
/* 800BF518 00088AD8  40 82 00 24 */	bne .L_800BF53C
/* 800BF51C 00088ADC  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF520 00088AE0  7F C3 F3 78 */	mr r3, r30
/* 800BF524 00088AE4  38 80 00 01 */	li r4, 1
/* 800BF528 00088AE8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800BF52C 00088AEC  7D 89 03 A6 */	mtctr r12
/* 800BF530 00088AF0  4E 80 04 21 */	bctrl 
/* 800BF534 00088AF4  2C 03 00 00 */	cmpwi r3, 0
/* 800BF538 00088AF8  41 82 01 F4 */	beq .L_800BF72C
.L_800BF53C:
/* 800BF53C 00088AFC  4B FB E5 41 */	bl func_8007DA7C
/* 800BF540 00088B00  3C 60 00 04 */	lis r3, 4
/* 800BF544 00088B04  4B FA F9 C1 */	bl func_8006EF04
/* 800BF548 00088B08  2C 03 00 00 */	cmpwi r3, 0
/* 800BF54C 00088B0C  40 82 00 B0 */	bne .L_800BF5FC
/* 800BF550 00088B10  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF554 00088B14  7F C3 F3 78 */	mr r3, r30
/* 800BF558 00088B18  38 80 00 01 */	li r4, 1
/* 800BF55C 00088B1C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800BF560 00088B20  7D 89 03 A6 */	mtctr r12
/* 800BF564 00088B24  4E 80 04 21 */	bctrl 
/* 800BF568 00088B28  2C 03 00 00 */	cmpwi r3, 0
/* 800BF56C 00088B2C  40 82 00 90 */	bne .L_800BF5FC
/* 800BF570 00088B30  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF574 00088B34  7F C3 F3 78 */	mr r3, r30
/* 800BF578 00088B38  38 80 00 01 */	li r4, 1
/* 800BF57C 00088B3C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800BF580 00088B40  7D 89 03 A6 */	mtctr r12
/* 800BF584 00088B44  4E 80 04 21 */	bctrl 
/* 800BF588 00088B48  2C 03 00 00 */	cmpwi r3, 0
/* 800BF58C 00088B4C  40 82 00 70 */	bne .L_800BF5FC
/* 800BF590 00088B50  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF594 00088B54  7F C3 F3 78 */	mr r3, r30
/* 800BF598 00088B58  38 80 00 10 */	li r4, 0x10
/* 800BF59C 00088B5C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800BF5A0 00088B60  7D 89 03 A6 */	mtctr r12
/* 800BF5A4 00088B64  4E 80 04 21 */	bctrl 
/* 800BF5A8 00088B68  2C 03 00 00 */	cmpwi r3, 0
/* 800BF5AC 00088B6C  40 82 00 50 */	bne .L_800BF5FC
/* 800BF5B0 00088B70  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 800BF5B4 00088B74  2C 03 00 00 */	cmpwi r3, 0
/* 800BF5B8 00088B78  41 82 00 10 */	beq .L_800BF5C8
/* 800BF5BC 00088B7C  80 03 07 A4 */	lwz r0, 0x7a4(r3)
/* 800BF5C0 00088B80  64 00 80 00 */	oris r0, r0, 0x8000
/* 800BF5C4 00088B84  90 03 07 A4 */	stw r0, 0x7a4(r3)
.L_800BF5C8:
/* 800BF5C8 00088B88  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF5CC 00088B8C  7F C3 F3 78 */	mr r3, r30
/* 800BF5D0 00088B90  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 800BF5D4 00088B94  7D 89 03 A6 */	mtctr r12
/* 800BF5D8 00088B98  4E 80 04 21 */	bctrl 
/* 800BF5DC 00088B9C  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF5E0 00088BA0  7F C3 F3 78 */	mr r3, r30
/* 800BF5E4 00088BA4  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 800BF5E8 00088BA8  7D 89 03 A6 */	mtctr r12
/* 800BF5EC 00088BAC  4E 80 04 21 */	bctrl 
/* 800BF5F0 00088BB0  C0 02 90 28 */	lfs f0, float_806693A8@sda21(r2)
/* 800BF5F4 00088BB4  D0 1E 07 18 */	stfs f0, 0x718(r30)
/* 800BF5F8 00088BB8  48 00 01 4C */	b .L_800BF744
.L_800BF5FC:
/* 800BF5FC 00088BBC  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 800BF600 00088BC0  48 3D 6C 89 */	bl func_80496288
/* 800BF604 00088BC4  C0 02 90 28 */	lfs f0, float_806693A8@sda21(r2)
/* 800BF608 00088BC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BF60C 00088BCC  40 81 01 20 */	ble .L_800BF72C
/* 800BF610 00088BD0  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF614 00088BD4  7F C3 F3 78 */	mr r3, r30
/* 800BF618 00088BD8  38 80 00 01 */	li r4, 1
/* 800BF61C 00088BDC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800BF620 00088BE0  7D 89 03 A6 */	mtctr r12
/* 800BF624 00088BE4  4E 80 04 21 */	bctrl 
/* 800BF628 00088BE8  2C 03 00 00 */	cmpwi r3, 0
/* 800BF62C 00088BEC  41 82 01 00 */	beq .L_800BF72C
/* 800BF630 00088BF0  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF634 00088BF4  7F C3 F3 78 */	mr r3, r30
/* 800BF638 00088BF8  38 80 00 01 */	li r4, 1
/* 800BF63C 00088BFC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800BF640 00088C00  7D 89 03 A6 */	mtctr r12
/* 800BF644 00088C04  4E 80 04 21 */	bctrl 
/* 800BF648 00088C08  2C 03 00 00 */	cmpwi r3, 0
/* 800BF64C 00088C0C  40 82 00 E0 */	bne .L_800BF72C
/* 800BF650 00088C10  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF654 00088C14  7F C3 F3 78 */	mr r3, r30
/* 800BF658 00088C18  38 80 00 10 */	li r4, 0x10
/* 800BF65C 00088C1C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800BF660 00088C20  7D 89 03 A6 */	mtctr r12
/* 800BF664 00088C24  4E 80 04 21 */	bctrl 
/* 800BF668 00088C28  2C 03 00 00 */	cmpwi r3, 0
/* 800BF66C 00088C2C  40 82 00 C0 */	bne .L_800BF72C
/* 800BF670 00088C30  38 60 00 01 */	li r3, 1
/* 800BF674 00088C34  48 07 F5 1D */	bl func_8013EB90
/* 800BF678 00088C38  2C 03 00 00 */	cmpwi r3, 0
/* 800BF67C 00088C3C  40 82 00 B0 */	bne .L_800BF72C
/* 800BF680 00088C40  C0 3E 07 18 */	lfs f1, 0x718(r30)
/* 800BF684 00088C44  C0 02 90 34 */	lfs f0, float_806693B4@sda21(r2)
/* 800BF688 00088C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BF68C 00088C4C  40 81 00 60 */	ble .L_800BF6EC
/* 800BF690 00088C50  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF694 00088C54  7F C3 F3 78 */	mr r3, r30
/* 800BF698 00088C58  38 80 00 03 */	li r4, 3
/* 800BF69C 00088C5C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800BF6A0 00088C60  7D 89 03 A6 */	mtctr r12
/* 800BF6A4 00088C64  4E 80 04 21 */	bctrl 
/* 800BF6A8 00088C68  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF6AC 00088C6C  7F C3 F3 78 */	mr r3, r30
/* 800BF6B0 00088C70  38 80 00 00 */	li r4, 0
/* 800BF6B4 00088C74  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 800BF6B8 00088C78  7D 89 03 A6 */	mtctr r12
/* 800BF6BC 00088C7C  4E 80 04 21 */	bctrl 
/* 800BF6C0 00088C80  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF6C4 00088C84  3C A0 80 4F */	lis r5, CfObjectNpc_strpool@ha
/* 800BF6C8 00088C88  7F C3 F3 78 */	mr r3, r30
/* 800BF6CC 00088C8C  38 80 00 00 */	li r4, 0
/* 800BF6D0 00088C90  81 8C 01 AC */	lwz r12, 0x1ac(r12)
/* 800BF6D4 00088C94  38 A5 7D A8 */	addi r5, r5, CfObjectNpc_strpool@l
/* 800BF6D8 00088C98  7D 89 03 A6 */	mtctr r12
/* 800BF6DC 00088C9C  4E 80 04 21 */	bctrl 
/* 800BF6E0 00088CA0  C0 02 90 28 */	lfs f0, float_806693A8@sda21(r2)
/* 800BF6E4 00088CA4  D0 1E 07 18 */	stfs f0, 0x718(r30)
/* 800BF6E8 00088CA8  48 00 00 40 */	b .L_800BF728
.L_800BF6EC:
/* 800BF6EC 00088CAC  81 9E 00 00 */	lwz r12, 0(r30)
/* 800BF6F0 00088CB0  7F C3 F3 78 */	mr r3, r30
/* 800BF6F4 00088CB4  83 ED A5 94 */	lwz r31, lbl_80666714@sda21(r13)
/* 800BF6F8 00088CB8  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 800BF6FC 00088CBC  7D 89 03 A6 */	mtctr r12
/* 800BF700 00088CC0  4E 80 04 21 */	bctrl 
/* 800BF704 00088CC4  FF E0 08 90 */	fmr f31, f1
/* 800BF708 00088CC8  7F E3 FB 78 */	mr r3, r31
/* 800BF70C 00088CCC  48 3D 6B 7D */	bl func_80496288
/* 800BF710 00088CD0  EC 41 07 F2 */	fmuls f2, f1, f31
/* 800BF714 00088CD4  C0 22 90 38 */	lfs f1, float_806693B8@sda21(r2)
/* 800BF718 00088CD8  C0 1E 07 18 */	lfs f0, 0x718(r30)
/* 800BF71C 00088CDC  EC 22 08 24 */	fdivs f1, f2, f1
/* 800BF720 00088CE0  EC 00 08 2A */	fadds f0, f0, f1
/* 800BF724 00088CE4  D0 1E 07 18 */	stfs f0, 0x718(r30)
.L_800BF728:
/* 800BF728 00088CE8  3B E0 00 00 */	li r31, 0
.L_800BF72C:
/* 800BF72C 00088CEC  2C 1F 00 00 */	cmpwi r31, 0
/* 800BF730 00088CF0  41 82 00 0C */	beq .L_800BF73C
/* 800BF734 00088CF4  C0 02 90 28 */	lfs f0, float_806693A8@sda21(r2)
/* 800BF738 00088CF8  D0 1E 07 18 */	stfs f0, 0x718(r30)
.L_800BF73C:
/* 800BF73C 00088CFC  7F C3 F3 78 */	mr r3, r30
/* 800BF740 00088D00  4B FF C6 CD */	bl func_800BBE0C
.L_800BF744:
/* 800BF744 00088D04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BF748 00088D08  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 800BF74C 00088D0C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800BF750 00088D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BF754 00088D14  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BF758 00088D18  7C 08 03 A6 */	mtlr r0
/* 800BF75C 00088D1C  38 21 00 20 */	addi r1, r1, 0x20
/* 800BF760 00088D20  4E 80 00 20 */	blr 
.endfn func_800BF4DC

.fn func_800BF764, global
/* 800BF764 00088D24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800BF768 00088D28  7C 08 02 A6 */	mflr r0
/* 800BF76C 00088D2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800BF770 00088D30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800BF774 00088D34  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800BF778 00088D38  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800BF77C 00088D3C  93 81 00 20 */	stw r28, 0x20(r1)
/* 800BF780 00088D40  7C 7C 1B 78 */	mr r28, r3
/* 800BF784 00088D44  4B F7 B2 B1 */	bl func_8003AA34
/* 800BF788 00088D48  38 7C 00 78 */	addi r3, r28, 0x78
/* 800BF78C 00088D4C  4B F7 B3 19 */	bl func_8003AAA4
/* 800BF790 00088D50  3F C0 80 4F */	lis r30, CfObjectNpc_strpool@ha
/* 800BF794 00088D54  A0 BC 00 8C */	lhz r5, 0x8c(r28)
/* 800BF798 00088D58  3B DE 7D A8 */	addi r30, r30, CfObjectNpc_strpool@l
/* 800BF79C 00088D5C  7C 7D 1B 78 */	mr r29, r3
/* 800BF7A0 00088D60  38 9E 00 07 */	addi r4, r30, 7
/* 800BF7A4 00088D64  4B F7 B3 A5 */	bl func_8003AB48
/* 800BF7A8 00088D68  81 9C 00 00 */	lwz r12, 0(r28)
/* 800BF7AC 00088D6C  7C 64 1B 78 */	mr r4, r3
/* 800BF7B0 00088D70  7F 83 E3 78 */	mr r3, r28
/* 800BF7B4 00088D74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800BF7B8 00088D78  7D 89 03 A6 */	mtctr r12
/* 800BF7BC 00088D7C  4E 80 04 21 */	bctrl 
/* 800BF7C0 00088D80  81 9C 00 00 */	lwz r12, 0(r28)
/* 800BF7C4 00088D84  7F 83 E3 78 */	mr r3, r28
/* 800BF7C8 00088D88  C0 22 90 3C */	lfs f1, float_806693BC@sda21(r2)
/* 800BF7CC 00088D8C  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 800BF7D0 00088D90  7D 89 03 A6 */	mtctr r12
/* 800BF7D4 00088D94  4E 80 04 21 */	bctrl 
/* 800BF7D8 00088D98  81 9C 00 00 */	lwz r12, 0(r28)
/* 800BF7DC 00088D9C  7F 83 E3 78 */	mr r3, r28
/* 800BF7E0 00088DA0  C0 22 90 40 */	lfs f1, float_806693C0@sda21(r2)
/* 800BF7E4 00088DA4  81 8C 01 D4 */	lwz r12, 0x1d4(r12)
/* 800BF7E8 00088DA8  7D 89 03 A6 */	mtctr r12
/* 800BF7EC 00088DAC  4E 80 04 21 */	bctrl 
/* 800BF7F0 00088DB0  A0 BC 00 8C */	lhz r5, 0x8c(r28)
/* 800BF7F4 00088DB4  7F A3 EB 78 */	mr r3, r29
/* 800BF7F8 00088DB8  38 9E 00 0C */	addi r4, r30, 0xc
/* 800BF7FC 00088DBC  4B F7 B3 4D */	bl func_8003AB48
/* 800BF800 00088DC0  81 9C 00 00 */	lwz r12, 0(r28)
/* 800BF804 00088DC4  90 61 00 0C */	stw r3, 0xc(r1)
/* 800BF808 00088DC8  7F 83 E3 78 */	mr r3, r28
/* 800BF80C 00088DCC  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 800BF810 00088DD0  7D 89 03 A6 */	mtctr r12
/* 800BF814 00088DD4  4E 80 04 21 */	bctrl 
/* 800BF818 00088DD8  88 01 00 0C */	lbz r0, 0xc(r1)
/* 800BF81C 00088DDC  3F E0 43 30 */	lis r31, 0x4330
/* 800BF820 00088DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF824 00088DE4  C0 43 00 00 */	lfs f2, 0(r3)
/* 800BF828 00088DE8  7F 83 E3 78 */	mr r3, r28
/* 800BF82C 00088DEC  93 E1 00 10 */	stw r31, 0x10(r1)
/* 800BF830 00088DF0  C8 22 90 48 */	lfd f1, double_806693C8@sda21(r2)
/* 800BF834 00088DF4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800BF838 00088DF8  81 9C 00 00 */	lwz r12, 0(r28)
/* 800BF83C 00088DFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800BF840 00088E00  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 800BF844 00088E04  EC 20 10 24 */	fdivs f1, f0, f2
/* 800BF848 00088E08  7D 89 03 A6 */	mtctr r12
/* 800BF84C 00088E0C  4E 80 04 21 */	bctrl 
/* 800BF850 00088E10  A0 BC 00 8C */	lhz r5, 0x8c(r28)
/* 800BF854 00088E14  7F A3 EB 78 */	mr r3, r29
/* 800BF858 00088E18  38 9E 00 17 */	addi r4, r30, 0x17
/* 800BF85C 00088E1C  4B F7 B2 ED */	bl func_8003AB48
/* 800BF860 00088E20  90 61 00 08 */	stw r3, 8(r1)
/* 800BF864 00088E24  7F 83 E3 78 */	mr r3, r28
/* 800BF868 00088E28  81 9C 00 00 */	lwz r12, 0(r28)
/* 800BF86C 00088E2C  A0 01 00 08 */	lhz r0, 8(r1)
/* 800BF870 00088E30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800BF874 00088E34  C8 42 90 48 */	lfd f2, double_806693C8@sda21(r2)
/* 800BF878 00088E38  93 E1 00 18 */	stw r31, 0x18(r1)
/* 800BF87C 00088E3C  C0 02 90 44 */	lfs f0, float_806693C4@sda21(r2)
/* 800BF880 00088E40  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800BF884 00088E44  81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 800BF888 00088E48  EC 21 10 28 */	fsubs f1, f1, f2
/* 800BF88C 00088E4C  EC 21 00 24 */	fdivs f1, f1, f0
/* 800BF890 00088E50  7D 89 03 A6 */	mtctr r12
/* 800BF894 00088E54  4E 80 04 21 */	bctrl 
/* 800BF898 00088E58  81 9C 00 00 */	lwz r12, 0(r28)
/* 800BF89C 00088E5C  7F 83 E3 78 */	mr r3, r28
/* 800BF8A0 00088E60  81 8C 02 24 */	lwz r12, 0x224(r12)
/* 800BF8A4 00088E64  7D 89 03 A6 */	mtctr r12
/* 800BF8A8 00088E68  4E 80 04 21 */	bctrl 
/* 800BF8AC 00088E6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800BF8B0 00088E70  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800BF8B4 00088E74  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800BF8B8 00088E78  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800BF8BC 00088E7C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 800BF8C0 00088E80  7C 08 03 A6 */	mtlr r0
/* 800BF8C4 00088E84  38 21 00 30 */	addi r1, r1, 0x30
/* 800BF8C8 00088E88  4E 80 00 20 */	blr 
.endfn func_800BF764

.fn func_800BF8CC, global
/* 800BF8CC 00088E8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BF8D0 00088E90  7C 08 02 A6 */	mflr r0
/* 800BF8D4 00088E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BF8D8 00088E98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BF8DC 00088E9C  7C 7F 1B 78 */	mr r31, r3
/* 800BF8E0 00088EA0  4B F7 B1 55 */	bl func_8003AA34
/* 800BF8E4 00088EA4  38 7F 00 78 */	addi r3, r31, 0x78
/* 800BF8E8 00088EA8  4B F7 B1 BD */	bl func_8003AAA4
/* 800BF8EC 00088EAC  3C 80 80 4F */	lis r4, CfObjectNpc_strpool@ha
/* 800BF8F0 00088EB0  A0 BF 00 8C */	lhz r5, 0x8c(r31)
/* 800BF8F4 00088EB4  38 84 7D A8 */	addi r4, r4, CfObjectNpc_strpool@l
/* 800BF8F8 00088EB8  38 84 00 1D */	addi r4, r4, 0x1d
/* 800BF8FC 00088EBC  4B F7 B2 4D */	bl func_8003AB48
/* 800BF900 00088EC0  90 61 00 08 */	stw r3, 8(r1)
/* 800BF904 00088EC4  88 01 00 08 */	lbz r0, 8(r1)
/* 800BF908 00088EC8  98 1F 07 15 */	stb r0, 0x715(r31)
/* 800BF90C 00088ECC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BF910 00088ED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BF914 00088ED4  7C 08 03 A6 */	mtlr r0
/* 800BF918 00088ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 800BF91C 00088EDC  4E 80 00 20 */	blr 
.endfn func_800BF8CC

.fn func_800BF920, global
/* 800BF920 00088EE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BF924 00088EE4  7C 08 02 A6 */	mflr r0
/* 800BF928 00088EE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BF92C 00088EEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BF930 00088EF0  7C 7F 1B 78 */	mr r31, r3
/* 800BF934 00088EF4  A8 03 07 16 */	lha r0, 0x716(r3)
/* 800BF938 00088EF8  2C 00 FF FF */	cmpwi r0, -1
/* 800BF93C 00088EFC  40 82 00 30 */	bne .L_800BF96C
/* 800BF940 00088F00  4B F7 B0 F5 */	bl func_8003AA34
/* 800BF944 00088F04  38 7F 00 78 */	addi r3, r31, 0x78
/* 800BF948 00088F08  4B F7 B1 5D */	bl func_8003AAA4
/* 800BF94C 00088F0C  3C 80 80 4F */	lis r4, CfObjectNpc_strpool@ha
/* 800BF950 00088F10  A0 BF 00 8C */	lhz r5, 0x8c(r31)
/* 800BF954 00088F14  38 84 7D A8 */	addi r4, r4, CfObjectNpc_strpool@l
/* 800BF958 00088F18  38 84 00 27 */	addi r4, r4, 0x27
/* 800BF95C 00088F1C  4B F7 B1 ED */	bl func_8003AB48
/* 800BF960 00088F20  90 61 00 08 */	stw r3, 8(r1)
/* 800BF964 00088F24  A8 01 00 08 */	lha r0, 8(r1)
/* 800BF968 00088F28  B0 1F 07 16 */	sth r0, 0x716(r31)
.L_800BF96C:
/* 800BF96C 00088F2C  A8 7F 07 16 */	lha r3, 0x716(r31)
/* 800BF970 00088F30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BF974 00088F34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BF978 00088F38  7C 08 03 A6 */	mtlr r0
/* 800BF97C 00088F3C  38 21 00 20 */	addi r1, r1, 0x20
/* 800BF980 00088F40  4E 80 00 20 */	blr 
.endfn func_800BF920

.fn func_800BF984, global
/* 800BF984 00088F44  88 63 07 15 */	lbz r3, 0x715(r3)
/* 800BF988 00088F48  4E 80 00 20 */	blr 
.endfn func_800BF984


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CfObjectNpc_typestr, global
	.asciz "cf::CfObjectNpc"
.endobj cf_CfObjectNpc_typestr


.obj CfObjectNpc_strpool, global
	.asciz "JUhead"
	.asciz "name"
	.asciz "move_speed"
	.asciz "scale"
	.asciz "icon_type"
	.asciz "rlt_meet"
.endobj CfObjectNpc_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__Q22cf11CfObjectNpc, global
	.4byte __RTTI__Q22cf11CfObjectNpc
	.4byte 0
	.4byte CObjectState_func_8003DC64
	.4byte CObjectState_func_8003CB58
	.4byte CObjectState_func_8003DD34
	.4byte CObjectState_func_800A34A8
	.4byte CObjectState_func_8009489C
	.4byte CObjectState_func_800A349C
	.4byte CObjectState_func_80086B4C
	.4byte CObjectState_func_8003CB20
	.4byte CObjectState_func_8003D98C
	.4byte CObjectState_func_8003D8C0
	.4byte CObjectState_func_8003D7B0
	.4byte CObjectState_func_800A3494
	.4byte CObjectState_func_800A3488
	.4byte CObjectParam_func_8003C7F8
	.4byte func_800BE0F4
	.4byte CObjectParam_func_800A34B4
	.4byte func_800BF764
	.4byte CObjectParam_func_8003E664
	.4byte CObjectParam_func_8003DC74
	.4byte __dt__800BF3F8
	.4byte func_800BF46C
	.4byte CfObject_func_800AC75C
	.4byte func_800BF4DC
	.4byte func_800BC758
	.4byte func_800BC040
	.4byte func_800BC020
	.4byte func_800BABBC
	.4byte func_800BE984
	.4byte func_800BE998
	.4byte CfObject_func_800AC5E4
	.4byte func_800BE9E4
	.4byte func_800BE088
	.4byte func_800BE1C4
	.4byte func_800BE1F8
	.4byte func_800BE214
	.4byte func_800BE248
	.4byte func_8008F9CC
	.4byte func_800BDB6C
	.4byte func_800BB0E8
	.4byte CfObject_func_800AC5A8
	.4byte func_800BDBC0
	.4byte func_800BDE8C
	.4byte func_800BB168
	.4byte func_800BDC24
	.4byte func_800BDD58
	.4byte func_800BDEC4
	.4byte func_800BB200
	.4byte func_800BDF78
	.4byte func_800BDFE0
	.4byte func_800BB290
	.4byte func_800BE058
	.4byte func_800BE070
	.4byte func_800BB2E4
	.4byte func_800BB318
	.4byte func_800BB338
	.4byte func_800BEC4C
	.4byte func_800BECF8
	.4byte func_800BEE34
	.4byte func_800BEF20
	.4byte CfObject_func_800AC570
	.4byte func_800BF014
	.4byte func_800BF100
	.4byte CfObject_func_800AC558
	.4byte func_800BF1F4
	.4byte func_800BD774
	.4byte func_800BD860
	.4byte func_8004ABD8
	.4byte func_800BDA10
	.4byte func_8003BD64
	.4byte func_8003BD70
	.4byte func_800BB3AC
	.4byte func_800BB454
	.4byte func_800BB4FC
	.4byte func_800BB534
	.4byte func_800BB364
	.4byte func_800BE0B8
	.4byte func_8008E064
	.4byte func_800AEAE4
	.4byte func_80087EE4
	.4byte func_800BE9BC
	.4byte func_800BE9D0
	.4byte func_800BACDC
	.4byte func_800BDA9C
	.4byte func_800BDAF4
	.4byte func_800BEB28
	.4byte func_800BB684
	.4byte func_800BB974
	.4byte func_800BB954
	.4byte func_800BB708
	.4byte func_80094FF8
	.4byte func_800BB730
	.4byte func_80094FF0
	.4byte func_800BC0DC
	.4byte func_800BC21C
	.4byte func_800BB5F0
	.4byte func_800B0618
	.4byte func_800B0610
	.4byte func_800BEC30
	.4byte func_800BBABC
	.4byte func_800BBA9C
	.4byte func_800B0608
	.4byte func_800BB738
	.4byte func_800B0600
	.4byte func_800BB740
	.4byte func_800BB748
	.4byte func_800BB7B0
	.4byte func_800BB914
	.4byte func_8003E3C8
	.4byte func_800B05F8
	.4byte func_800BE7AC
	.4byte func_800BEB98
	.4byte func_800B05EC
	.4byte func_800BC364
	.4byte func_800BC2E0
	.4byte func_800BEA40
	.4byte func_800BE0DC
	.4byte func_80092CA8
	.4byte func_80093924
	.4byte func_800BE264
	.4byte func_800BE278
	.4byte func_800BE2A0
	.4byte func_800BE2D8
	.4byte func_800BE2EC
	.4byte func_800BE300
	.4byte func_800BE314
	.4byte func_800BE328
	.4byte func_800B4B04
	.4byte func_800BE474
	.4byte func_800BE504
	.4byte func_800BE57C
	.4byte func_800BE6B4
	.4byte func_800BE734
	.4byte func_800BE5F4
	.4byte func_800BE65C
	.4byte func_800BE858
	.4byte func_800BF8CC
	.4byte func_800BF984
	.4byte func_800BF920
.endobj __vt__Q22cf11CfObjectNpc

.obj cf_CfObjectNpc_hierarchy, global
	.4byte __RTTI__Q22cf12CObjectState
	.4byte 0
	.4byte __RTTI__Q22cf12CObjectParam
	.4byte 0
	.4byte __RTTI__Q22cf8CfObject
	.4byte 0
	.4byte __RTTI__Q22cf13CfObjectModel
	.4byte 0
	.4byte __RTTI__Q22cf12CfObjectMove
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_CfObjectNpc_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__Q22cf11CfObjectNpc, global
	.4byte cf_CfObjectNpc_typestr
	.4byte cf_CfObjectNpc_hierarchy
.endobj __RTTI__Q22cf11CfObjectNpc

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_806693A8, global
	.float 0
.endobj float_806693A8


.obj float_806693AC, global
	.float 0.6
.endobj float_806693AC


.obj float_806693B0, global
	.float 1.8
.endobj float_806693B0


.obj float_806693B4, global
	.float 0.1
.endobj float_806693B4


.obj float_806693B8, global
	.float 30
.endobj float_806693B8


.obj float_806693BC, global
	.float 25
.endobj float_806693BC


.obj float_806693C0, global
	.float 12.5
.endobj float_806693C0


.obj float_806693C4, global
	.float 100.0
.endobj float_806693C4


.obj double_806693C8, global
	.8byte 0x4330000000000000 #unsigned int to float constant
.endobj double_806693C8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80009EB8", local
.hidden "@etb_80009EB8"
	.4byte 0x100A0000
	.4byte 0x00000038
	.4byte 0x00110010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__800BBD6C
.endobj "@etb_80009EB8"

.obj "@etb_80009ED4", local
.hidden "@etb_80009ED4"
	.4byte 0x10080000
	.4byte 0x0000003C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__800BBD6C
.endobj "@etb_80009ED4"

.obj "@etb_80009EF0", local
.hidden "@etb_80009EF0"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80009EF0"

.obj "@etb_80009EF8", local
.hidden "@etb_80009EF8"
	.4byte 0x104A0000
	.4byte 0x00000000
.endobj "@etb_80009EF8"

.obj "@etb_80009F00", local
.hidden "@etb_80009F00"
	.4byte 0x200A0000
	.4byte 0x00000000
.endobj "@etb_80009F00"

.obj "@etb_80009F08", local
.hidden "@etb_80009F08"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80009F08"

.obj "@etb_80009F10", local
.hidden "@etb_80009F10"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80009F10"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800259DC", local
.hidden "@eti_800259DC"
	.4byte __ct__cf_CfObjectNpc
	.4byte 0x000000B8
	.4byte "@etb_80009EB8"
.endobj "@eti_800259DC"

.obj "@eti_800259E8", local
.hidden "@eti_800259E8"
	.4byte __dt__800BF3F8
	.4byte 0x00000074
	.4byte "@etb_80009ED4"
.endobj "@eti_800259E8"

.obj "@eti_800259F4", local
.hidden "@eti_800259F4"
	.4byte func_800BF46C
	.4byte 0x00000070
	.4byte "@etb_80009EF0"
.endobj "@eti_800259F4"

.obj "@eti_80025A00", local
.hidden "@eti_80025A00"
	.4byte func_800BF4DC
	.4byte 0x00000288
	.4byte "@etb_80009EF8"
.endobj "@eti_80025A00"

.obj "@eti_80025A0C", local
.hidden "@eti_80025A0C"
	.4byte func_800BF764
	.4byte 0x00000168
	.4byte "@etb_80009F00"
.endobj "@eti_80025A0C"

.obj "@eti_80025A18", local
.hidden "@eti_80025A18"
	.4byte func_800BF8CC
	.4byte 0x00000054
	.4byte "@etb_80009F08"
.endobj "@eti_80025A18"

.obj "@eti_80025A24", local
.hidden "@eti_80025A24"
	.4byte func_800BF920
	.4byte 0x00000064
	.4byte "@etb_80009F10"
.endobj "@eti_80025A24"
