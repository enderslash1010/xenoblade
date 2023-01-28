.include "macros.inc"
.file "monolithlib/CSchedule.o"

# 0x80020B08 - 0x80020B20
.section extab, "a"
.balign 4

.obj "@etb_80020B08", local
.hidden "@etb_80020B08"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_80020B08"

.obj "@etb_80020B10", local
.hidden "@etb_80020B10"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80020B10"

.obj "@etb_80020B18", local
.hidden "@etb_80020B18"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80020B18"

# 0x80038C0C - 0x80038C30
.section extabindex, "a"
.balign 4

.obj "@eti_80038C0C", local
.hidden "@eti_80038C0C"
	.4byte fn_804E3340
	.4byte 0x000000F4
	.4byte "@etb_80020B08"
.endobj "@eti_80038C0C"

.obj "@eti_80038C18", local
.hidden "@eti_80038C18"
	.4byte fn_804E3434
	.4byte 0x000001E0
	.4byte "@etb_80020B10"
.endobj "@eti_80038C18"

.obj "@eti_80038C24", local
.hidden "@eti_80038C24"
	.4byte fn_804E3614
	.4byte 0x000000C8
	.4byte "@etb_80020B18"
.endobj "@eti_80038C24"

# 0x804E3294 - 0x804E36DC
.text
.balign 4

.fn fn_804E3294, global
/* 804E3294 004AC854  3C A0 80 57 */	lis r5, __vt__CSchedule@ha
/* 804E3298 004AC858  38 80 00 00 */	li r4, 0x0
/* 804E329C 004AC85C  38 A5 38 B0 */	addi r5, r5, __vt__CSchedule@l
/* 804E32A0 004AC860  90 A3 00 EC */	stw r5, 0xec(r3)
/* 804E32A4 004AC864  38 00 FF FF */	li r0, -0x1
/* 804E32A8 004AC868  90 83 00 04 */	stw r4, 0x4(r3)
/* 804E32AC 004AC86C  90 83 00 08 */	stw r4, 0x8(r3)
/* 804E32B0 004AC870  90 83 00 0C */	stw r4, 0xc(r3)
/* 804E32B4 004AC874  90 83 00 10 */	stw r4, 0x10(r3)
/* 804E32B8 004AC878  98 83 00 D8 */	stb r4, 0xd8(r3)
/* 804E32BC 004AC87C  B0 03 00 98 */	sth r0, 0x98(r3)
/* 804E32C0 004AC880  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 804E32C4 004AC884  B0 03 00 9C */	sth r0, 0x9c(r3)
/* 804E32C8 004AC888  B0 03 00 9E */	sth r0, 0x9e(r3)
/* 804E32CC 004AC88C  B0 03 00 A0 */	sth r0, 0xa0(r3)
/* 804E32D0 004AC890  B0 03 00 A2 */	sth r0, 0xa2(r3)
/* 804E32D4 004AC894  B0 03 00 A4 */	sth r0, 0xa4(r3)
/* 804E32D8 004AC898  B0 03 00 A6 */	sth r0, 0xa6(r3)
/* 804E32DC 004AC89C  B0 03 00 A8 */	sth r0, 0xa8(r3)
/* 804E32E0 004AC8A0  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 804E32E4 004AC8A4  B0 03 00 AC */	sth r0, 0xac(r3)
/* 804E32E8 004AC8A8  B0 03 00 AE */	sth r0, 0xae(r3)
/* 804E32EC 004AC8AC  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804E32F0 004AC8B0  B0 03 00 B2 */	sth r0, 0xb2(r3)
/* 804E32F4 004AC8B4  B0 03 00 B4 */	sth r0, 0xb4(r3)
/* 804E32F8 004AC8B8  B0 03 00 B6 */	sth r0, 0xb6(r3)
/* 804E32FC 004AC8BC  B0 03 00 B8 */	sth r0, 0xb8(r3)
/* 804E3300 004AC8C0  B0 03 00 BA */	sth r0, 0xba(r3)
/* 804E3304 004AC8C4  B0 03 00 BC */	sth r0, 0xbc(r3)
/* 804E3308 004AC8C8  B0 03 00 BE */	sth r0, 0xbe(r3)
/* 804E330C 004AC8CC  B0 03 00 C0 */	sth r0, 0xc0(r3)
/* 804E3310 004AC8D0  B0 03 00 C2 */	sth r0, 0xc2(r3)
/* 804E3314 004AC8D4  B0 03 00 C4 */	sth r0, 0xc4(r3)
/* 804E3318 004AC8D8  B0 03 00 C6 */	sth r0, 0xc6(r3)
/* 804E331C 004AC8DC  B0 03 00 C8 */	sth r0, 0xc8(r3)
/* 804E3320 004AC8E0  B0 03 00 CA */	sth r0, 0xca(r3)
/* 804E3324 004AC8E4  B0 03 00 CC */	sth r0, 0xcc(r3)
/* 804E3328 004AC8E8  B0 03 00 CE */	sth r0, 0xce(r3)
/* 804E332C 004AC8EC  B0 03 00 D0 */	sth r0, 0xd0(r3)
/* 804E3330 004AC8F0  B0 03 00 D2 */	sth r0, 0xd2(r3)
/* 804E3334 004AC8F4  B0 03 00 D4 */	sth r0, 0xd4(r3)
/* 804E3338 004AC8F8  B0 03 00 D6 */	sth r0, 0xd6(r3)
/* 804E333C 004AC8FC  4E 80 00 20 */	blr
.endfn fn_804E3294

.fn fn_804E3340, global
/* 804E3340 004AC900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E3344 004AC904  7C 08 02 A6 */	mflr r0
/* 804E3348 004AC908  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E334C 004AC90C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E3350 004AC910  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 804E3354 004AC914  7C 7B 1B 78 */	mr r27, r3
/* 804E3358 004AC918  7C 9C 23 78 */	mr r28, r4
/* 804E335C 004AC91C  41 82 00 C0 */	beq .L_804E341C
/* 804E3360 004AC920  80 03 00 04 */	lwz r0, 0x4(r3)
/* 804E3364 004AC924  3C 80 80 57 */	lis r4, __vt__CSchedule@ha
/* 804E3368 004AC928  38 84 38 B0 */	addi r4, r4, __vt__CSchedule@l
/* 804E336C 004AC92C  90 83 00 EC */	stw r4, 0xec(r3)
/* 804E3370 004AC930  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E3374 004AC934  41 82 00 98 */	beq .L_804E340C
/* 804E3378 004AC938  7F 7D DB 78 */	mr r29, r27
/* 804E337C 004AC93C  3B C0 00 00 */	li r30, 0x0
.L_804E3380:
/* 804E3380 004AC940  80 7D 00 DC */	lwz r3, 0xdc(r29)
/* 804E3384 004AC944  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E3388 004AC948  41 82 00 18 */	beq .L_804E33A0
/* 804E338C 004AC94C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 804E3390 004AC950  7F 64 DB 78 */	mr r4, r27
/* 804E3394 004AC954  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804E3398 004AC958  7D 89 03 A6 */	mtctr r12
/* 804E339C 004AC95C  4E 80 04 21 */	bctrl
.L_804E33A0:
/* 804E33A0 004AC960  3B DE 00 01 */	addi r30, r30, 0x1
/* 804E33A4 004AC964  3B BD 00 04 */	addi r29, r29, 0x4
/* 804E33A8 004AC968  28 1E 00 04 */	cmplwi r30, 0x4
/* 804E33AC 004AC96C  41 80 FF D4 */	blt .L_804E3380
/* 804E33B0 004AC970  88 1B 00 D8 */	lbz r0, 0xd8(r27)
/* 804E33B4 004AC974  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E33B8 004AC978  41 82 00 3C */	beq .L_804E33F4
/* 804E33BC 004AC97C  7F 7D DB 78 */	mr r29, r27
/* 804E33C0 004AC980  3B C0 00 00 */	li r30, 0x0
/* 804E33C4 004AC984  3B E0 FF FF */	li r31, -0x1
.L_804E33C8:
/* 804E33C8 004AC988  A8 7D 00 98 */	lha r3, 0x98(r29)
/* 804E33CC 004AC98C  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E33D0 004AC990  41 80 00 0C */	blt .L_804E33DC
/* 804E33D4 004AC994  4B FF C7 B5 */	bl fn_804DFB88
/* 804E33D8 004AC998  B3 FD 00 98 */	sth r31, 0x98(r29)
.L_804E33DC:
/* 804E33DC 004AC99C  3B DE 00 01 */	addi r30, r30, 0x1
/* 804E33E0 004AC9A0  3B BD 00 02 */	addi r29, r29, 0x2
/* 804E33E4 004AC9A4  2C 1E 00 20 */	cmpwi r30, 0x20
/* 804E33E8 004AC9A8  41 80 FF E0 */	blt .L_804E33C8
/* 804E33EC 004AC9AC  38 00 00 00 */	li r0, 0x0
/* 804E33F0 004AC9B0  98 1B 00 D8 */	stb r0, 0xd8(r27)
.L_804E33F4:
/* 804E33F4 004AC9B4  38 00 00 00 */	li r0, 0x0
/* 804E33F8 004AC9B8  90 1B 00 04 */	stw r0, 0x4(r27)
/* 804E33FC 004AC9BC  90 1B 00 08 */	stw r0, 0x8(r27)
/* 804E3400 004AC9C0  90 1B 00 0C */	stw r0, 0xc(r27)
/* 804E3404 004AC9C4  90 1B 00 10 */	stw r0, 0x10(r27)
/* 804E3408 004AC9C8  98 1B 00 D8 */	stb r0, 0xd8(r27)
.L_804E340C:
/* 804E340C 004AC9CC  2C 1C 00 00 */	cmpwi r28, 0x0
/* 804E3410 004AC9D0  40 81 00 0C */	ble .L_804E341C
/* 804E3414 004AC9D4  7F 63 DB 78 */	mr r3, r27
/* 804E3418 004AC9D8  4B F5 18 15 */	bl __dl__FPv
.L_804E341C:
/* 804E341C 004AC9DC  7F 63 DB 78 */	mr r3, r27
/* 804E3420 004AC9E0  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 804E3424 004AC9E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E3428 004AC9E8  7C 08 03 A6 */	mtlr r0
/* 804E342C 004AC9EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E3430 004AC9F0  4E 80 00 20 */	blr
.endfn fn_804E3340

.fn fn_804E3434, global
/* 804E3434 004AC9F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E3438 004AC9F8  7C 08 02 A6 */	mflr r0
/* 804E343C 004AC9FC  2C 04 00 00 */	cmpwi r4, 0x0
/* 804E3440 004ACA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E3444 004ACA04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E3448 004ACA08  93 C1 00 08 */	stw r30, 0x8(r1)
/* 804E344C 004ACA0C  7C 7E 1B 78 */	mr r30, r3
/* 804E3450 004ACA10  40 82 00 0C */	bne .L_804E345C
/* 804E3454 004ACA14  38 60 00 00 */	li r3, 0x0
/* 804E3458 004ACA18  48 00 01 A4 */	b .L_804E35FC
.L_804E345C:
/* 804E345C 004ACA1C  2C 05 00 00 */	cmpwi r5, 0x0
/* 804E3460 004ACA20  40 82 00 0C */	bne .L_804E346C
/* 804E3464 004ACA24  38 60 00 00 */	li r3, 0x0
/* 804E3468 004ACA28  48 00 01 94 */	b .L_804E35FC
.L_804E346C:
/* 804E346C 004ACA2C  C0 22 D7 08 */	lfs f1, lbl_8066DA88@sda21(r2)
/* 804E3470 004ACA30  3B E0 00 00 */	li r31, 0x0
/* 804E3474 004ACA34  C0 02 D7 0C */	lfs f0, lbl_8066DA8C@sda21(r2)
/* 804E3478 004ACA38  63 E0 C0 00 */	ori r0, r31, 0xc000
/* 804E347C 004ACA3C  50 E0 55 6A */	rlwimi r0, r7, 10, 21, 21
/* 804E3480 004ACA40  90 83 00 04 */	stw r4, 0x4(r3)
/* 804E3484 004ACA44  51 00 4D AC */	rlwimi r0, r8, 9, 22, 22
/* 804E3488 004ACA48  3D 40 80 66 */	lis r10, lbl_80659FB8@ha
/* 804E348C 004ACA4C  90 A3 00 08 */	stw r5, 0x8(r3)
/* 804E3490 004ACA50  38 E0 00 40 */	li r7, 0x40
/* 804E3494 004ACA54  38 80 00 00 */	li r4, 0x0
/* 804E3498 004ACA58  38 A0 00 10 */	li r5, 0x10
/* 804E349C 004ACA5C  B0 03 00 00 */	sth r0, 0x0(r3)
/* 804E34A0 004ACA60  38 00 FF FF */	li r0, -0x1
/* 804E34A4 004ACA64  90 C3 00 0C */	stw r6, 0xc(r3)
/* 804E34A8 004ACA68  91 23 00 10 */	stw r9, 0x10(r3)
/* 804E34AC 004ACA6C  93 E3 00 14 */	stw r31, 0x14(r3)
/* 804E34B0 004ACA70  93 E3 00 18 */	stw r31, 0x18(r3)
/* 804E34B4 004ACA74  D0 23 00 50 */	stfs f1, 0x50(r3)
/* 804E34B8 004ACA78  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 804E34BC 004ACA7C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804E34C0 004ACA80  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804E34C4 004ACA84  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 804E34C8 004ACA88  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 804E34CC 004ACA8C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 804E34D0 004ACA90  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 804E34D4 004ACA94  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 804E34D8 004ACA98  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 804E34DC 004ACA9C  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 804E34E0 004ACAA0  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 804E34E4 004ACAA4  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 804E34E8 004ACAA8  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 804E34EC 004ACAAC  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 804E34F0 004ACAB0  85 0A 9F B8 */	lwzu r8, lbl_80659FB8@l(r10)
/* 804E34F4 004ACAB4  80 CA 00 04 */	lwz r6, 0x4(r10)
/* 804E34F8 004ACAB8  90 C3 00 64 */	stw r6, 0x64(r3)
/* 804E34FC 004ACABC  91 03 00 60 */	stw r8, 0x60(r3)
/* 804E3500 004ACAC0  81 0A 00 08 */	lwz r8, 0x8(r10)
/* 804E3504 004ACAC4  80 CA 00 0C */	lwz r6, 0xc(r10)
/* 804E3508 004ACAC8  90 C3 00 6C */	stw r6, 0x6c(r3)
/* 804E350C 004ACACC  91 03 00 68 */	stw r8, 0x68(r3)
/* 804E3510 004ACAD0  81 0A 00 10 */	lwz r8, 0x10(r10)
/* 804E3514 004ACAD4  80 CA 00 14 */	lwz r6, 0x14(r10)
/* 804E3518 004ACAD8  90 C3 00 74 */	stw r6, 0x74(r3)
/* 804E351C 004ACADC  91 03 00 70 */	stw r8, 0x70(r3)
/* 804E3520 004ACAE0  81 0A 00 18 */	lwz r8, 0x18(r10)
/* 804E3524 004ACAE4  80 CA 00 1C */	lwz r6, 0x1c(r10)
/* 804E3528 004ACAE8  90 C3 00 7C */	stw r6, 0x7c(r3)
/* 804E352C 004ACAEC  91 03 00 78 */	stw r8, 0x78(r3)
/* 804E3530 004ACAF0  81 0A 00 20 */	lwz r8, 0x20(r10)
/* 804E3534 004ACAF4  80 CA 00 24 */	lwz r6, 0x24(r10)
/* 804E3538 004ACAF8  90 C3 00 84 */	stw r6, 0x84(r3)
/* 804E353C 004ACAFC  91 03 00 80 */	stw r8, 0x80(r3)
/* 804E3540 004ACB00  81 0A 00 28 */	lwz r8, 0x28(r10)
/* 804E3544 004ACB04  80 CA 00 2C */	lwz r6, 0x2c(r10)
/* 804E3548 004ACB08  90 C3 00 8C */	stw r6, 0x8c(r3)
/* 804E354C 004ACB0C  91 03 00 88 */	stw r8, 0x88(r3)
/* 804E3550 004ACB10  D0 03 00 90 */	stfs f0, 0x90(r3)
/* 804E3554 004ACB14  D0 23 00 94 */	stfs f1, 0x94(r3)
/* 804E3558 004ACB18  98 E3 00 58 */	stb r7, 0x58(r3)
/* 804E355C 004ACB1C  9B E3 00 59 */	stb r31, 0x59(r3)
/* 804E3560 004ACB20  93 E3 00 5C */	stw r31, 0x5c(r3)
/* 804E3564 004ACB24  B0 03 00 98 */	sth r0, 0x98(r3)
/* 804E3568 004ACB28  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 804E356C 004ACB2C  B0 03 00 9C */	sth r0, 0x9c(r3)
/* 804E3570 004ACB30  B0 03 00 9E */	sth r0, 0x9e(r3)
/* 804E3574 004ACB34  B0 03 00 A0 */	sth r0, 0xa0(r3)
/* 804E3578 004ACB38  B0 03 00 A2 */	sth r0, 0xa2(r3)
/* 804E357C 004ACB3C  B0 03 00 A4 */	sth r0, 0xa4(r3)
/* 804E3580 004ACB40  B0 03 00 A6 */	sth r0, 0xa6(r3)
/* 804E3584 004ACB44  B0 03 00 A8 */	sth r0, 0xa8(r3)
/* 804E3588 004ACB48  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 804E358C 004ACB4C  B0 03 00 AC */	sth r0, 0xac(r3)
/* 804E3590 004ACB50  B0 03 00 AE */	sth r0, 0xae(r3)
/* 804E3594 004ACB54  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804E3598 004ACB58  B0 03 00 B2 */	sth r0, 0xb2(r3)
/* 804E359C 004ACB5C  B0 03 00 B4 */	sth r0, 0xb4(r3)
/* 804E35A0 004ACB60  B0 03 00 B6 */	sth r0, 0xb6(r3)
/* 804E35A4 004ACB64  B0 03 00 B8 */	sth r0, 0xb8(r3)
/* 804E35A8 004ACB68  B0 03 00 BA */	sth r0, 0xba(r3)
/* 804E35AC 004ACB6C  B0 03 00 BC */	sth r0, 0xbc(r3)
/* 804E35B0 004ACB70  B0 03 00 BE */	sth r0, 0xbe(r3)
/* 804E35B4 004ACB74  B0 03 00 C0 */	sth r0, 0xc0(r3)
/* 804E35B8 004ACB78  B0 03 00 C2 */	sth r0, 0xc2(r3)
/* 804E35BC 004ACB7C  B0 03 00 C4 */	sth r0, 0xc4(r3)
/* 804E35C0 004ACB80  B0 03 00 C6 */	sth r0, 0xc6(r3)
/* 804E35C4 004ACB84  B0 03 00 C8 */	sth r0, 0xc8(r3)
/* 804E35C8 004ACB88  B0 03 00 CA */	sth r0, 0xca(r3)
/* 804E35CC 004ACB8C  B0 03 00 CC */	sth r0, 0xcc(r3)
/* 804E35D0 004ACB90  B0 03 00 CE */	sth r0, 0xce(r3)
/* 804E35D4 004ACB94  B0 03 00 D0 */	sth r0, 0xd0(r3)
/* 804E35D8 004ACB98  B0 03 00 D2 */	sth r0, 0xd2(r3)
/* 804E35DC 004ACB9C  B0 03 00 D4 */	sth r0, 0xd4(r3)
/* 804E35E0 004ACBA0  B0 03 00 D6 */	sth r0, 0xd6(r3)
/* 804E35E4 004ACBA4  38 63 00 DC */	addi r3, r3, 0xdc
/* 804E35E8 004ACBA8  4B B2 0D 69 */	bl memset
/* 804E35EC 004ACBAC  9B FE 00 D8 */	stb r31, 0xd8(r30)
/* 804E35F0 004ACBB0  7F C3 F3 78 */	mr r3, r30
/* 804E35F4 004ACBB4  9B FE 00 D9 */	stb r31, 0xd9(r30)
/* 804E35F8 004ACBB8  48 00 00 1D */	bl fn_804E3614
.L_804E35FC:
/* 804E35FC 004ACBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E3600 004ACBC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E3604 004ACBC4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 804E3608 004ACBC8  7C 08 03 A6 */	mtlr r0
/* 804E360C 004ACBCC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E3610 004ACBD0  4E 80 00 20 */	blr
.endfn fn_804E3434

.fn fn_804E3614, global
/* 804E3614 004ACBD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E3618 004ACBD8  7C 08 02 A6 */	mflr r0
/* 804E361C 004ACBDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E3620 004ACBE0  38 00 00 00 */	li r0, 0x0
/* 804E3624 004ACBE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E3628 004ACBE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E362C 004ACBEC  3B C0 00 00 */	li r30, 0x0
/* 804E3630 004ACBF0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804E3634 004ACBF4  7C 7D 1B 78 */	mr r29, r3
/* 804E3638 004ACBF8  98 03 00 D8 */	stb r0, 0xd8(r3)
/* 804E363C 004ACBFC  83 E3 00 04 */	lwz r31, 0x4(r3)
/* 804E3640 004ACC00  48 00 00 70 */	b .L_804E36B0
.L_804E3644:
/* 804E3644 004ACC04  7F C0 07 34 */	extsh r0, r30
/* 804E3648 004ACC08  2C 00 00 20 */	cmpwi r0, 0x20
/* 804E364C 004ACC0C  40 80 00 70 */	bge .L_804E36BC
/* 804E3650 004ACC10  A0 1F 00 02 */	lhz r0, 0x2(r31)
/* 804E3654 004ACC14  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E3658 004ACC18  41 82 00 0C */	beq .L_804E3664
/* 804E365C 004ACC1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 804E3660 004ACC20  41 80 00 0C */	blt .L_804E366C
.L_804E3664:
/* 804E3664 004ACC24  38 60 00 00 */	li r3, 0x0
/* 804E3668 004ACC28  48 00 00 58 */	b .L_804E36C0
.L_804E366C:
/* 804E366C 004ACC2C  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 804E3670 004ACC30  7F E4 FB 78 */	mr r4, r31
/* 804E3674 004ACC34  7F A5 EB 78 */	mr r5, r29
/* 804E3678 004ACC38  4B FF C4 0D */	bl fn_804DFA84
/* 804E367C 004ACC3C  7C 60 07 35 */	extsh. r0, r3
/* 804E3680 004ACC40  40 80 00 0C */	bge .L_804E368C
/* 804E3684 004ACC44  38 60 00 00 */	li r3, 0x0
/* 804E3688 004ACC48  48 00 00 38 */	b .L_804E36C0
.L_804E368C:
/* 804E368C 004ACC4C  7F C0 07 34 */	extsh r0, r30
/* 804E3690 004ACC50  3B DE 00 01 */	addi r30, r30, 0x1
/* 804E3694 004ACC54  54 00 08 3C */	slwi r0, r0, 1
/* 804E3698 004ACC58  3B FF 00 04 */	addi r31, r31, 0x4
/* 804E369C 004ACC5C  7C 9D 02 14 */	add r4, r29, r0
/* 804E36A0 004ACC60  B0 64 00 98 */	sth r3, 0x98(r4)
/* 804E36A4 004ACC64  88 7D 00 D8 */	lbz r3, 0xd8(r29)
/* 804E36A8 004ACC68  38 03 00 01 */	addi r0, r3, 0x1
/* 804E36AC 004ACC6C  98 1D 00 D8 */	stb r0, 0xd8(r29)
.L_804E36B0:
/* 804E36B0 004ACC70  A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 804E36B4 004ACC74  28 00 FF FF */	cmplwi r0, 0xffff
/* 804E36B8 004ACC78  40 82 FF 8C */	bne .L_804E3644
.L_804E36BC:
/* 804E36BC 004ACC7C  38 60 00 01 */	li r3, 0x1
.L_804E36C0:
/* 804E36C0 004ACC80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E36C4 004ACC84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E36C8 004ACC88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E36CC 004ACC8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804E36D0 004ACC90  7C 08 03 A6 */	mtlr r0
/* 804E36D4 004ACC94  38 21 00 20 */	addi r1, r1, 0x20
/* 804E36D8 004ACC98  4E 80 00 20 */	blr
.endfn fn_804E3614

# 0x80528028 - 0x80528038
.rodata
.balign 8

.obj CSchedule_typestr, global
	.4byte 0x43536368
	.4byte 0x6564756C
	.4byte 0x65000000
	.4byte 0x00000000

# 0x805738B0 - 0x805738C0
.data
.balign 8

.obj __vt__CSchedule, global
	.4byte __RTTI__CSchedule
	.4byte 0x00000000
	.4byte fn_804E3340
	.4byte 0x00000000

# 0x80666520 - 0x80666528
.section .sdata, "wa"
.balign 8

.obj __RTTI__CSchedule, global
	.4byte CSchedule_typestr
	.4byte 0x00000000
