.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn CfCamTargetIntf_update, global
/* 8006B5D4 00034B94  4E 80 00 20 */	blr 
.endfn CfCamTargetIntf_update

.fn CfCamTargetIntf_setPos, global
/* 8006B5D8 00034B98  80 C5 00 00 */	lwz r6, 0(r5)
/* 8006B5DC 00034B9C  80 65 00 04 */	lwz r3, 4(r5)
/* 8006B5E0 00034BA0  80 05 00 08 */	lwz r0, 8(r5)
/* 8006B5E4 00034BA4  C0 02 87 70 */	lfs f0, float_80668AF0@sda21(r2)
/* 8006B5E8 00034BA8  90 C4 00 28 */	stw r6, 0x28(r4)
/* 8006B5EC 00034BAC  90 64 00 2C */	stw r3, 0x2c(r4)
/* 8006B5F0 00034BB0  90 04 00 30 */	stw r0, 0x30(r4)
/* 8006B5F4 00034BB4  90 C4 02 74 */	stw r6, 0x274(r4)
/* 8006B5F8 00034BB8  90 64 02 78 */	stw r3, 0x278(r4)
/* 8006B5FC 00034BBC  90 04 02 7C */	stw r0, 0x27c(r4)
/* 8006B600 00034BC0  D0 04 02 64 */	stfs f0, 0x264(r4)
/* 8006B604 00034BC4  4E 80 00 20 */	blr 
.endfn CfCamTargetIntf_setPos

.fn CfCamTargetIntf_setDir, global
/* 8006B608 00034BC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006B60C 00034BCC  7C 08 02 A6 */	mflr r0
/* 8006B610 00034BD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006B614 00034BD4  38 61 00 08 */	addi r3, r1, 8
/* 8006B618 00034BD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8006B61C 00034BDC  7C BF 2B 78 */	mr r31, r5
/* 8006B620 00034BE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8006B624 00034BE4  7C 9E 23 78 */	mr r30, r4
/* 8006B628 00034BE8  C0 24 02 84 */	lfs f1, 0x284(r4)
/* 8006B62C 00034BEC  38 84 02 68 */	addi r4, r4, 0x268
/* 8006B630 00034BF0  48 00 8E 59 */	bl func_80074488
/* 8006B634 00034BF4  80 61 00 08 */	lwz r3, 8(r1)
/* 8006B638 00034BF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8006B63C 00034BFC  90 1E 02 78 */	stw r0, 0x278(r30)
/* 8006B640 00034C00  90 7E 02 74 */	stw r3, 0x274(r30)
/* 8006B644 00034C04  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8006B648 00034C08  90 1E 02 7C */	stw r0, 0x27c(r30)
/* 8006B64C 00034C0C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8006B650 00034C10  80 1F 00 04 */	lwz r0, 4(r31)
/* 8006B654 00034C14  90 1E 02 60 */	stw r0, 0x260(r30)
/* 8006B658 00034C18  90 7E 02 5C */	stw r3, 0x25c(r30)
/* 8006B65C 00034C1C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8006B660 00034C20  90 1E 02 64 */	stw r0, 0x264(r30)
/* 8006B664 00034C24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8006B668 00034C28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8006B66C 00034C2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006B670 00034C30  7C 08 03 A6 */	mtlr r0
/* 8006B674 00034C34  38 21 00 20 */	addi r1, r1, 0x20
/* 8006B678 00034C38  4E 80 00 20 */	blr 
.endfn CfCamTargetIntf_setDir

.fn CfCamTargetIntf_setLookat, global
/* 8006B67C 00034C3C  80 C5 00 00 */	lwz r6, 0(r5)
/* 8006B680 00034C40  80 65 00 04 */	lwz r3, 4(r5)
/* 8006B684 00034C44  80 05 00 08 */	lwz r0, 8(r5)
/* 8006B688 00034C48  C0 02 87 70 */	lfs f0, float_80668AF0@sda21(r2)
/* 8006B68C 00034C4C  90 C4 02 68 */	stw r6, 0x268(r4)
/* 8006B690 00034C50  90 64 02 6C */	stw r3, 0x26c(r4)
/* 8006B694 00034C54  90 04 02 70 */	stw r0, 0x270(r4)
/* 8006B698 00034C58  D0 04 02 64 */	stfs f0, 0x264(r4)
/* 8006B69C 00034C5C  4E 80 00 20 */	blr 
.endfn CfCamTargetIntf_setLookat

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800080A0", local
.hidden "@etb_800080A0"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_800080A0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800233C0", local
.hidden "@eti_800233C0"
	.4byte CfCamTargetIntf_setDir
	.4byte 0x00000074
	.4byte "@etb_800080A0"
.endobj "@eti_800233C0"
