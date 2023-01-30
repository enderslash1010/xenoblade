.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn gdev_cc_initialize, global
/* 802CB52C 00294AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CB530 00294AF0  7C 08 02 A6 */	mflr r0
/* 802CB534 00294AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CB538 00294AF8  48 00 50 E5 */	bl DBInitComm
/* 802CB53C 00294AFC  3C 60 80 58 */	lis r3, lbl_8057B868@ha
/* 802CB540 00294B00  3C 80 80 58 */	lis r4, lbl_8057B368@ha
/* 802CB544 00294B04  38 63 B8 68 */	addi r3, r3, lbl_8057B868@l
/* 802CB548 00294B08  38 A0 05 00 */	li r5, 0x500
/* 802CB54C 00294B0C  38 84 B3 68 */	addi r4, r4, lbl_8057B368@l
/* 802CB550 00294B10  48 00 02 99 */	bl CircleBufferInitialize
/* 802CB554 00294B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CB558 00294B18  38 60 00 00 */	li r3, 0
/* 802CB55C 00294B1C  7C 08 03 A6 */	mtlr r0
/* 802CB560 00294B20  38 21 00 10 */	addi r1, r1, 0x10
/* 802CB564 00294B24  4E 80 00 20 */	blr
.endfn gdev_cc_initialize

.fn gdev_cc_shutdown, global
/* 802CB568 00294B28  38 60 00 00 */	li r3, 0
/* 802CB56C 00294B2C  4E 80 00 20 */	blr
.endfn gdev_cc_shutdown

.fn gdev_cc_open, global
/* 802CB570 00294B30  80 0D B3 E0 */	lwz r0, lbl_80667560@sda21(r13)
/* 802CB574 00294B34  2C 00 00 00 */	cmpwi r0, 0
/* 802CB578 00294B38  41 82 00 0C */	beq .L_802CB584
/* 802CB57C 00294B3C  38 60 D8 EB */	li r3, -10005
/* 802CB580 00294B40  4E 80 00 20 */	blr
.L_802CB584:
/* 802CB584 00294B44  38 00 00 01 */	li r0, 1
/* 802CB588 00294B48  90 0D B3 E0 */	stw r0, lbl_80667560@sda21(r13)
/* 802CB58C 00294B4C  38 60 00 00 */	li r3, 0
/* 802CB590 00294B50  4E 80 00 20 */	blr
.endfn gdev_cc_open

.fn gdev_cc_close, global
/* 802CB594 00294B54  38 60 00 00 */	li r3, 0
/* 802CB598 00294B58  4E 80 00 20 */	blr
.endfn gdev_cc_close

.fn gdev_cc_read, global
/* 802CB59C 00294B5C  94 21 FA E0 */	stwu r1, -0x520(r1)
/* 802CB5A0 00294B60  7C 08 02 A6 */	mflr r0
/* 802CB5A4 00294B64  90 01 05 24 */	stw r0, 0x524(r1)
/* 802CB5A8 00294B68  BF 61 05 0C */	stmw r27, 0x50c(r1)
/* 802CB5AC 00294B6C  7C 7B 1B 78 */	mr r27, r3
/* 802CB5B0 00294B70  7C 9C 23 78 */	mr r28, r4
/* 802CB5B4 00294B74  3B C0 00 00 */	li r30, 0
/* 802CB5B8 00294B78  80 0D B3 E0 */	lwz r0, lbl_80667560@sda21(r13)
/* 802CB5BC 00294B7C  2C 00 00 00 */	cmpwi r0, 0
/* 802CB5C0 00294B80  40 82 00 0C */	bne .L_802CB5CC
/* 802CB5C4 00294B84  38 60 D8 EF */	li r3, -10001
/* 802CB5C8 00294B88  48 00 00 74 */	b .L_802CB63C
.L_802CB5CC:
/* 802CB5CC 00294B8C  3F E0 80 58 */	lis r31, lbl_8057B868@ha
/* 802CB5D0 00294B90  48 00 00 40 */	b .L_802CB610
.L_802CB5D4:
/* 802CB5D4 00294B94  3B C0 00 00 */	li r30, 0
/* 802CB5D8 00294B98  48 00 50 F5 */	bl DBQueryData
/* 802CB5DC 00294B9C  2C 03 00 00 */	cmpwi r3, 0
/* 802CB5E0 00294BA0  7C 7D 1B 78 */	mr r29, r3
/* 802CB5E4 00294BA4  41 82 00 2C */	beq .L_802CB610
/* 802CB5E8 00294BA8  7F 84 E3 78 */	mr r4, r28
/* 802CB5EC 00294BAC  38 61 00 08 */	addi r3, r1, 8
/* 802CB5F0 00294BB0  48 00 51 81 */	bl DBRead
/* 802CB5F4 00294BB4  2C 03 00 00 */	cmpwi r3, 0
/* 802CB5F8 00294BB8  7C 7E 1B 78 */	mr r30, r3
/* 802CB5FC 00294BBC  40 82 00 14 */	bne .L_802CB610
/* 802CB600 00294BC0  7F A5 EB 78 */	mr r5, r29
/* 802CB604 00294BC4  38 7F B8 68 */	addi r3, r31, lbl_8057B868@l
/* 802CB608 00294BC8  38 81 00 08 */	addi r4, r1, 8
/* 802CB60C 00294BCC  48 00 02 01 */	bl CircleBufferReadBytes
.L_802CB610:
/* 802CB610 00294BD0  38 7F B8 68 */	addi r3, r31, lbl_8057B868@l
/* 802CB614 00294BD4  48 00 01 CD */	bl CBGetBytesAvailableForRead
/* 802CB618 00294BD8  7C 03 E0 40 */	cmplw r3, r28
/* 802CB61C 00294BDC  41 80 FF B8 */	blt .L_802CB5D4
/* 802CB620 00294BE0  2C 1E 00 00 */	cmpwi r30, 0
/* 802CB624 00294BE4  40 82 00 14 */	bne .L_802CB638
/* 802CB628 00294BE8  7F 64 DB 78 */	mr r4, r27
/* 802CB62C 00294BEC  7F 85 E3 78 */	mr r5, r28
/* 802CB630 00294BF0  38 7F B8 68 */	addi r3, r31, lbl_8057B868@l
/* 802CB634 00294BF4  48 00 02 E1 */	bl CircleBufferWriteBytes
.L_802CB638:
/* 802CB638 00294BF8  7F C3 F3 78 */	mr r3, r30
.L_802CB63C:
/* 802CB63C 00294BFC  BB 61 05 0C */	lmw r27, 0x50c(r1)
/* 802CB640 00294C00  80 01 05 24 */	lwz r0, 0x524(r1)
/* 802CB644 00294C04  7C 08 03 A6 */	mtlr r0
/* 802CB648 00294C08  38 21 05 20 */	addi r1, r1, 0x520
/* 802CB64C 00294C0C  4E 80 00 20 */	blr
.endfn gdev_cc_read

.fn gdev_cc_write, global
/* 802CB650 00294C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CB654 00294C14  7C 08 02 A6 */	mflr r0
/* 802CB658 00294C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CB65C 00294C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CB660 00294C20  7C 9F 23 78 */	mr r31, r4
/* 802CB664 00294C24  93 C1 00 08 */	stw r30, 8(r1)
/* 802CB668 00294C28  7C 7E 1B 78 */	mr r30, r3
/* 802CB66C 00294C2C  80 0D B3 E0 */	lwz r0, lbl_80667560@sda21(r13)
/* 802CB670 00294C30  2C 00 00 00 */	cmpwi r0, 0
/* 802CB674 00294C34  40 82 00 2C */	bne .L_802CB6A0
/* 802CB678 00294C38  38 60 D8 EF */	li r3, -10001
/* 802CB67C 00294C3C  48 00 00 30 */	b .L_802CB6AC
/* 802CB680 00294C40  48 00 00 20 */	b .L_802CB6A0
.L_802CB684:
/* 802CB684 00294C44  7F C3 F3 78 */	mr r3, r30
/* 802CB688 00294C48  7F E4 FB 78 */	mr r4, r31
/* 802CB68C 00294C4C  48 00 51 65 */	bl DBWrite
/* 802CB690 00294C50  2C 03 00 00 */	cmpwi r3, 0
/* 802CB694 00294C54  41 82 00 14 */	beq .L_802CB6A8
/* 802CB698 00294C58  7F DE 1A 14 */	add r30, r30, r3
/* 802CB69C 00294C5C  7F E3 F8 50 */	subf r31, r3, r31
.L_802CB6A0:
/* 802CB6A0 00294C60  2C 1F 00 00 */	cmpwi r31, 0
/* 802CB6A4 00294C64  41 81 FF E0 */	bgt .L_802CB684
.L_802CB6A8:
/* 802CB6A8 00294C68  38 60 00 00 */	li r3, 0
.L_802CB6AC:
/* 802CB6AC 00294C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CB6B0 00294C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CB6B4 00294C74  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CB6B8 00294C78  7C 08 03 A6 */	mtlr r0
/* 802CB6BC 00294C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CB6C0 00294C80  4E 80 00 20 */	blr
.endfn gdev_cc_write

.fn gdev_cc_pre_continue, global
/* 802CB6C4 00294C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CB6C8 00294C88  7C 08 02 A6 */	mflr r0
/* 802CB6CC 00294C8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CB6D0 00294C90  48 00 52 35 */	bl DBClose
/* 802CB6D4 00294C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CB6D8 00294C98  38 60 00 00 */	li r3, 0
/* 802CB6DC 00294C9C  7C 08 03 A6 */	mtlr r0
/* 802CB6E0 00294CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 802CB6E4 00294CA4  4E 80 00 20 */	blr
.endfn gdev_cc_pre_continue

.fn gdev_cc_post_stop, global
/* 802CB6E8 00294CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CB6EC 00294CAC  7C 08 02 A6 */	mflr r0
/* 802CB6F0 00294CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CB6F4 00294CB4  48 00 52 0D */	bl DBOpen
/* 802CB6F8 00294CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CB6FC 00294CBC  38 60 00 00 */	li r3, 0
/* 802CB700 00294CC0  7C 08 03 A6 */	mtlr r0
/* 802CB704 00294CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CB708 00294CC8  4E 80 00 20 */	blr
.endfn gdev_cc_post_stop

.fn gdev_cc_peek, global
/* 802CB70C 00294CCC  94 21 FA F0 */	stwu r1, -0x510(r1)
/* 802CB710 00294CD0  7C 08 02 A6 */	mflr r0
/* 802CB714 00294CD4  90 01 05 14 */	stw r0, 0x514(r1)
/* 802CB718 00294CD8  93 E1 05 0C */	stw r31, 0x50c(r1)
/* 802CB71C 00294CDC  48 00 4F B1 */	bl DBQueryData
/* 802CB720 00294CE0  2C 03 00 00 */	cmpwi r3, 0
/* 802CB724 00294CE4  7C 7F 1B 78 */	mr r31, r3
/* 802CB728 00294CE8  41 81 00 0C */	bgt .L_802CB734
/* 802CB72C 00294CEC  38 60 00 00 */	li r3, 0
/* 802CB730 00294CF0  48 00 00 3C */	b .L_802CB76C
.L_802CB734:
/* 802CB734 00294CF4  7F E4 FB 78 */	mr r4, r31
/* 802CB738 00294CF8  38 61 00 08 */	addi r3, r1, 8
/* 802CB73C 00294CFC  48 00 50 35 */	bl DBRead
/* 802CB740 00294D00  2C 03 00 00 */	cmpwi r3, 0
/* 802CB744 00294D04  40 82 00 1C */	bne .L_802CB760
/* 802CB748 00294D08  3C 60 80 58 */	lis r3, lbl_8057B868@ha
/* 802CB74C 00294D0C  7F E5 FB 78 */	mr r5, r31
/* 802CB750 00294D10  38 63 B8 68 */	addi r3, r3, lbl_8057B868@l
/* 802CB754 00294D14  38 81 00 08 */	addi r4, r1, 8
/* 802CB758 00294D18  48 00 00 B5 */	bl CircleBufferReadBytes
/* 802CB75C 00294D1C  48 00 00 0C */	b .L_802CB768
.L_802CB760:
/* 802CB760 00294D20  38 60 D8 E7 */	li r3, -10009
/* 802CB764 00294D24  48 00 00 08 */	b .L_802CB76C
.L_802CB768:
/* 802CB768 00294D28  7F E3 FB 78 */	mr r3, r31
.L_802CB76C:
/* 802CB76C 00294D2C  80 01 05 14 */	lwz r0, 0x514(r1)
/* 802CB770 00294D30  83 E1 05 0C */	lwz r31, 0x50c(r1)
/* 802CB774 00294D34  7C 08 03 A6 */	mtlr r0
/* 802CB778 00294D38  38 21 05 10 */	addi r1, r1, 0x510
/* 802CB77C 00294D3C  4E 80 00 20 */	blr
.endfn gdev_cc_peek

.fn gdev_cc_initinterrupts, global
/* 802CB780 00294D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CB784 00294D44  7C 08 02 A6 */	mflr r0
/* 802CB788 00294D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CB78C 00294D4C  48 00 4E ED */	bl DBInitInterrupts
/* 802CB790 00294D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CB794 00294D54  38 60 00 00 */	li r3, 0
/* 802CB798 00294D58  7C 08 03 A6 */	mtlr r0
/* 802CB79C 00294D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CB7A0 00294D60  4E 80 00 20 */	blr
.endfn gdev_cc_initinterrupts

.section .bss, "wa"  # 0x80573C80 - 0x8066417B
.global lbl_8057B368
lbl_8057B368:
	.skip 0x500
.global lbl_8057B868
lbl_8057B868:
	.skip 0x20

.section .sbss, "wa"  # 0x80666600 - 0x8066836F
.global lbl_80667560
lbl_80667560:
	.skip 0x8