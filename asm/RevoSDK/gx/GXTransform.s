.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __GXSetProjection, global
/* 8031E4F0 002E7AB0  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031E4F4 002E7AB4  38 00 00 10 */	li r0, 0x10
/* 8031E4F8 002E7AB8  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8031E4FC 002E7ABC  3C 60 00 06 */	lis r3, 0x00061020@ha
/* 8031E500 002E7AC0  38 03 10 20 */	addi r0, r3, 0x00061020@l
/* 8031E504 002E7AC4  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031E508 002E7AC8  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031E50C 002E7ACC  38 A4 80 00 */	addi r5, r4, -32768
/* 8031E510 002E7AD0  E0 43 05 2C */	psq_l f2, 1324(r3), 0, qr0
/* 8031E514 002E7AD4  E0 23 05 34 */	psq_l f1, 1332(r3), 0, qr0
/* 8031E518 002E7AD8  E0 03 05 3C */	psq_l f0, 1340(r3), 0, qr0
/* 8031E51C 002E7ADC  F0 45 00 00 */	psq_st f2, 0(r5), 0, qr0
/* 8031E520 002E7AE0  F0 25 00 00 */	psq_st f1, 0(r5), 0, qr0
/* 8031E524 002E7AE4  F0 05 00 00 */	psq_st f0, 0(r5), 0, qr0
/* 8031E528 002E7AE8  80 03 05 28 */	lwz r0, 0x528(r3)
/* 8031E52C 002E7AEC  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031E530 002E7AF0  4E 80 00 20 */	blr 
.endfn __GXSetProjection

.balign 16, 0
.fn GXSetProjection, global
/* 8031E540 002E7B00  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031E544 002E7B04  2C 04 00 01 */	cmpwi r4, 1
/* 8031E548 002E7B08  C0 23 00 00 */	lfs f1, 0(r3)
/* 8031E54C 002E7B0C  90 85 05 28 */	stw r4, 0x528(r5)
/* 8031E550 002E7B10  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8031E554 002E7B14  D0 25 05 2C */	stfs f1, 0x52c(r5)
/* 8031E558 002E7B18  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8031E55C 002E7B1C  D0 05 05 34 */	stfs f0, 0x534(r5)
/* 8031E560 002E7B20  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8031E564 002E7B24  D0 25 05 3C */	stfs f1, 0x53c(r5)
/* 8031E568 002E7B28  D0 05 05 40 */	stfs f0, 0x540(r5)
/* 8031E56C 002E7B2C  40 82 00 18 */	bne .L_8031E584
/* 8031E570 002E7B30  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8031E574 002E7B34  D0 05 05 30 */	stfs f0, 0x530(r5)
/* 8031E578 002E7B38  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8031E57C 002E7B3C  D0 05 05 38 */	stfs f0, 0x538(r5)
/* 8031E580 002E7B40  48 00 00 14 */	b .L_8031E594
.L_8031E584:
/* 8031E584 002E7B44  C0 03 00 08 */	lfs f0, 8(r3)
/* 8031E588 002E7B48  D0 05 05 30 */	stfs f0, 0x530(r5)
/* 8031E58C 002E7B4C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8031E590 002E7B50  D0 05 05 38 */	stfs f0, 0x538(r5)
.L_8031E594:
/* 8031E594 002E7B54  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 8031E598 002E7B58  64 00 08 00 */	oris r0, r0, 0x800
/* 8031E59C 002E7B5C  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 8031E5A0 002E7B60  4E 80 00 20 */	blr 
.endfn GXSetProjection

.balign 16, 0
.fn GXSetProjectionv, global
/* 8031E5B0 002E7B70  C0 22 BD 20 */	lfs f1, float_8066C0A0@sda21(r2)
/* 8031E5B4 002E7B74  C0 03 00 00 */	lfs f0, 0(r3)
/* 8031E5B8 002E7B78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8031E5BC 002E7B7C  40 82 00 0C */	bne .L_8031E5C8
/* 8031E5C0 002E7B80  38 00 00 00 */	li r0, 0
/* 8031E5C4 002E7B84  48 00 00 08 */	b .L_8031E5CC
.L_8031E5C8:
/* 8031E5C8 002E7B88  38 00 00 01 */	li r0, 1
.L_8031E5CC:
/* 8031E5CC 002E7B8C  80 82 BC 20 */	lwz r4, lbl_8066BFA0@sda21(r2)
/* 8031E5D0 002E7B90  90 04 05 28 */	stw r0, 0x528(r4)
/* 8031E5D4 002E7B94  E0 43 00 04 */	psq_l f2, 4(r3), 0, qr0
/* 8031E5D8 002E7B98  E0 23 00 0C */	psq_l f1, 12(r3), 0, qr0
/* 8031E5DC 002E7B9C  E0 03 00 14 */	psq_l f0, 20(r3), 0, qr0
/* 8031E5E0 002E7BA0  F0 44 05 2C */	psq_st f2, 1324(r4), 0, qr0
/* 8031E5E4 002E7BA4  F0 24 05 34 */	psq_st f1, 1332(r4), 0, qr0
/* 8031E5E8 002E7BA8  F0 04 05 3C */	psq_st f0, 1340(r4), 0, qr0
/* 8031E5EC 002E7BAC  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 8031E5F0 002E7BB0  64 00 08 00 */	oris r0, r0, 0x800
/* 8031E5F4 002E7BB4  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 8031E5F8 002E7BB8  4E 80 00 20 */	blr 
.endfn GXSetProjectionv

.balign 16, 0
.fn GXLoadPosMtxImm, global
/* 8031E600 002E7BC0  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031E604 002E7BC4  38 00 00 10 */	li r0, 0x10
/* 8031E608 002E7BC8  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031E60C 002E7BCC  54 80 10 3A */	slwi r0, r4, 2
/* 8031E610 002E7BD0  64 00 00 0B */	oris r0, r0, 0xb
/* 8031E614 002E7BD4  38 85 80 00 */	addi r4, r5, -32768
/* 8031E618 002E7BD8  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8031E61C 002E7BDC  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 8031E620 002E7BE0  E0 83 00 08 */	psq_l f4, 8(r3), 0, qr0
/* 8031E624 002E7BE4  E0 63 00 10 */	psq_l f3, 16(r3), 0, qr0
/* 8031E628 002E7BE8  E0 43 00 18 */	psq_l f2, 24(r3), 0, qr0
/* 8031E62C 002E7BEC  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 8031E630 002E7BF0  E0 03 00 28 */	psq_l f0, 40(r3), 0, qr0
/* 8031E634 002E7BF4  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 8031E638 002E7BF8  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 8031E63C 002E7BFC  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 8031E640 002E7C00  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 8031E644 002E7C04  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 8031E648 002E7C08  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8031E64C 002E7C0C  4E 80 00 20 */	blr 
.endfn GXLoadPosMtxImm

.balign 16, 0
.fn GXLoadPosMtxIndx, global
/* 8031E650 002E7C10  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031E654 002E7C14  38 00 00 20 */	li r0, 0x20
/* 8031E658 002E7C18  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031E65C 002E7C1C  54 86 10 3A */	slwi r6, r4, 2
/* 8031E660 002E7C20  38 00 00 0B */	li r0, 0xb
/* 8031E664 002E7C24  38 80 00 00 */	li r4, 0
/* 8031E668 002E7C28  50 C4 05 3E */	rlwimi r4, r6, 0, 0x14, 0x1f
/* 8031E66C 002E7C2C  50 04 64 26 */	rlwimi r4, r0, 0xc, 0x10, 0x13
/* 8031E670 002E7C30  50 64 80 1E */	rlwimi r4, r3, 0x10, 0, 0xf
/* 8031E674 002E7C34  90 85 80 00 */	stw r4, -0x8000(r5)
/* 8031E678 002E7C38  4E 80 00 20 */	blr 
.endfn GXLoadPosMtxIndx

.balign 16, 0
.fn GXLoadNrmMtxImm, global
/* 8031E680 002E7C40  54 80 10 3A */	slwi r0, r4, 2
/* 8031E684 002E7C44  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031E688 002E7C48  7C 84 00 50 */	subf r4, r4, r0
/* 8031E68C 002E7C4C  38 00 00 10 */	li r0, 0x10
/* 8031E690 002E7C50  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031E694 002E7C54  38 84 04 00 */	addi r4, r4, 0x400
/* 8031E698 002E7C58  64 80 00 08 */	oris r0, r4, 8
/* 8031E69C 002E7C5C  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8031E6A0 002E7C60  38 85 80 00 */	addi r4, r5, -32768
/* 8031E6A4 002E7C64  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 8031E6A8 002E7C68  C0 83 00 08 */	lfs f4, 8(r3)
/* 8031E6AC 002E7C6C  E0 63 00 10 */	psq_l f3, 16(r3), 0, qr0
/* 8031E6B0 002E7C70  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 8031E6B4 002E7C74  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 8031E6B8 002E7C78  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8031E6BC 002E7C7C  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 8031E6C0 002E7C80  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 8031E6C4 002E7C84  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 8031E6C8 002E7C88  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 8031E6CC 002E7C8C  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 8031E6D0 002E7C90  D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 8031E6D4 002E7C94  4E 80 00 20 */	blr 
.endfn GXLoadNrmMtxImm

.balign 16, 0
.fn GXLoadNrmMtxIndx3x3, global
/* 8031E6E0 002E7CA0  54 80 10 3A */	slwi r0, r4, 2
/* 8031E6E4 002E7CA4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031E6E8 002E7CA8  7C 84 00 50 */	subf r4, r4, r0
/* 8031E6EC 002E7CAC  38 C0 00 00 */	li r6, 0
/* 8031E6F0 002E7CB0  38 00 00 28 */	li r0, 0x28
/* 8031E6F4 002E7CB4  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031E6F8 002E7CB8  38 84 04 00 */	addi r4, r4, 0x400
/* 8031E6FC 002E7CBC  38 00 00 08 */	li r0, 8
/* 8031E700 002E7CC0  50 86 05 3E */	rlwimi r6, r4, 0, 0x14, 0x1f
/* 8031E704 002E7CC4  50 06 64 26 */	rlwimi r6, r0, 0xc, 0x10, 0x13
/* 8031E708 002E7CC8  50 66 80 1E */	rlwimi r6, r3, 0x10, 0, 0xf
/* 8031E70C 002E7CCC  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 8031E710 002E7CD0  4E 80 00 20 */	blr 
.endfn GXLoadNrmMtxIndx3x3

.balign 16, 0
.fn GXSetCurrentMtx, global
/* 8031E720 002E7CE0  80 82 BC 20 */	lwz r4, lbl_8066BFA0@sda21(r2)
/* 8031E724 002E7CE4  80 04 00 80 */	lwz r0, 0x80(r4)
/* 8031E728 002E7CE8  50 60 06 BE */	rlwimi r0, r3, 0, 0x1a, 0x1f
/* 8031E72C 002E7CEC  90 04 00 80 */	stw r0, 0x80(r4)
/* 8031E730 002E7CF0  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 8031E734 002E7CF4  64 00 04 00 */	oris r0, r0, 0x400
/* 8031E738 002E7CF8  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 8031E73C 002E7CFC  4E 80 00 20 */	blr 
.endfn GXSetCurrentMtx

.balign 16, 0
.fn GXLoadTexMtxImm, global
/* 8031E740 002E7D00  28 04 00 40 */	cmplwi r4, 0x40
/* 8031E744 002E7D04  41 80 00 14 */	blt .L_8031E758
/* 8031E748 002E7D08  38 04 FF C0 */	addi r0, r4, -64
/* 8031E74C 002E7D0C  54 04 10 3A */	slwi r4, r0, 2
/* 8031E750 002E7D10  38 E4 05 00 */	addi r7, r4, 0x500
/* 8031E754 002E7D14  48 00 00 08 */	b .L_8031E75C
.L_8031E758:
/* 8031E758 002E7D18  54 87 10 3A */	slwi r7, r4, 2
.L_8031E75C:
/* 8031E75C 002E7D1C  2C 05 00 01 */	cmpwi r5, 1
/* 8031E760 002E7D20  40 82 00 0C */	bne .L_8031E76C
/* 8031E764 002E7D24  38 C0 00 08 */	li r6, 8
/* 8031E768 002E7D28  48 00 00 08 */	b .L_8031E770
.L_8031E76C:
/* 8031E76C 002E7D2C  38 C0 00 0C */	li r6, 0xc
.L_8031E770:
/* 8031E770 002E7D30  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031E774 002E7D34  38 C6 FF FF */	addi r6, r6, -1
/* 8031E778 002E7D38  38 00 00 10 */	li r0, 0x10
/* 8031E77C 002E7D3C  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8031E780 002E7D40  54 C0 80 1E */	slwi r0, r6, 0x10
/* 8031E784 002E7D44  2C 05 00 00 */	cmpwi r5, 0
/* 8031E788 002E7D48  7C E0 03 78 */	or r0, r7, r0
/* 8031E78C 002E7D4C  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031E790 002E7D50  40 82 00 3C */	bne .L_8031E7CC
/* 8031E794 002E7D54  38 84 80 00 */	addi r4, r4, -32768
/* 8031E798 002E7D58  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 8031E79C 002E7D5C  E0 83 00 08 */	psq_l f4, 8(r3), 0, qr0
/* 8031E7A0 002E7D60  E0 63 00 10 */	psq_l f3, 16(r3), 0, qr0
/* 8031E7A4 002E7D64  E0 43 00 18 */	psq_l f2, 24(r3), 0, qr0
/* 8031E7A8 002E7D68  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 8031E7AC 002E7D6C  E0 03 00 28 */	psq_l f0, 40(r3), 0, qr0
/* 8031E7B0 002E7D70  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 8031E7B4 002E7D74  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 8031E7B8 002E7D78  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 8031E7BC 002E7D7C  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 8031E7C0 002E7D80  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 8031E7C4 002E7D84  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8031E7C8 002E7D88  4E 80 00 20 */	blr
.L_8031E7CC:
/* 8031E7CC 002E7D8C  38 84 80 00 */	addi r4, r4, -32768
/* 8031E7D0 002E7D90  E0 63 00 00 */	psq_l f3, 0(r3), 0, qr0
/* 8031E7D4 002E7D94  E0 43 00 08 */	psq_l f2, 8(r3), 0, qr0
/* 8031E7D8 002E7D98  E0 23 00 10 */	psq_l f1, 16(r3), 0, qr0
/* 8031E7DC 002E7D9C  E0 03 00 18 */	psq_l f0, 24(r3), 0, qr0
/* 8031E7E0 002E7DA0  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 8031E7E4 002E7DA4  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 8031E7E8 002E7DA8  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 8031E7EC 002E7DAC  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8031E7F0 002E7DB0  4E 80 00 20 */	blr 
.endfn GXLoadTexMtxImm

.balign 16, 0
.fn __GXSetViewport, global
/* 8031E800 002E7DC0  80 C2 BC 20 */	lwz r6, lbl_8066BFA0@sda21(r2)
/* 8031E804 002E7DC4  3C 60 00 05 */	lis r3, 0x0005101A@ha
/* 8031E808 002E7DC8  C0 E2 BD 24 */	lfs f7, float_8066C0A4@sda21(r2)
/* 8031E80C 002E7DCC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031E810 002E7DD0  C0 26 05 50 */	lfs f1, 0x550(r6)
/* 8031E814 002E7DD4  38 A0 00 10 */	li r5, 0x10
/* 8031E818 002E7DD8  C0 46 05 4C */	lfs f2, 0x54c(r6)
/* 8031E81C 002E7DDC  38 03 10 1A */	addi r0, r3, 0x0005101A@l
/* 8031E820 002E7DE0  FC 00 08 50 */	fneg f0, f1
/* 8031E824 002E7DE4  C0 C6 05 44 */	lfs f6, 0x544(r6)
/* 8031E828 002E7DE8  ED 02 01 F2 */	fmuls f8, f2, f7
/* 8031E82C 002E7DEC  C0 86 05 48 */	lfs f4, 0x548(r6)
/* 8031E830 002E7DF0  EC A1 01 F2 */	fmuls f5, f1, f7
/* 8031E834 002E7DF4  C0 66 05 54 */	lfs f3, 0x554(r6)
/* 8031E838 002E7DF8  C0 46 05 60 */	lfs f2, 0x560(r6)
/* 8031E83C 002E7DFC  EC E0 01 F2 */	fmuls f7, f0, f7
/* 8031E840 002E7E00  C0 26 05 58 */	lfs f1, 0x558(r6)
/* 8031E844 002E7E04  C0 06 05 5C */	lfs f0, 0x55c(r6)
/* 8031E848 002E7E08  ED 23 00 B2 */	fmuls f9, f3, f2
/* 8031E84C 002E7E0C  ED 41 00 B2 */	fmuls f10, f1, f2
/* 8031E850 002E7E10  C0 42 BD 28 */	lfs f2, float_8066C0A8@sda21(r2)
/* 8031E854 002E7E14  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8031E858 002E7E18  EC 24 28 2A */	fadds f1, f4, f5
/* 8031E85C 002E7E1C  EC 66 40 2A */	fadds f3, f6, f8
/* 8031E860 002E7E20  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031E864 002E7E24  EC 8A 48 28 */	fsubs f4, f10, f9
/* 8031E868 002E7E28  D1 04 80 00 */	stfs f8, -0x8000(r4)
/* 8031E86C 002E7E2C  EC 62 18 2A */	fadds f3, f2, f3
/* 8031E870 002E7E30  EC 22 08 2A */	fadds f1, f2, f1
/* 8031E874 002E7E34  D0 E4 80 00 */	stfs f7, -0x8000(r4)
/* 8031E878 002E7E38  EC 0A 00 2A */	fadds f0, f10, f0
/* 8031E87C 002E7E3C  D0 84 80 00 */	stfs f4, -0x8000(r4)
/* 8031E880 002E7E40  D0 64 80 00 */	stfs f3, -0x8000(r4)
/* 8031E884 002E7E44  D0 24 80 00 */	stfs f1, -0x8000(r4)
/* 8031E888 002E7E48  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8031E88C 002E7E4C  4E 80 00 20 */	blr 
.endfn __GXSetViewport

.balign 16, 0
.fn GXSetViewportJitter, global
/* 8031E890 002E7E50  2C 03 00 00 */	cmpwi r3, 0
/* 8031E894 002E7E54  40 82 00 0C */	bne .L_8031E8A0
/* 8031E898 002E7E58  C0 02 BD 24 */	lfs f0, float_8066C0A4@sda21(r2)
/* 8031E89C 002E7E5C  EC 42 00 28 */	fsubs f2, f2, f0
.L_8031E8A0:
/* 8031E8A0 002E7E60  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031E8A4 002E7E64  D0 23 05 44 */	stfs f1, 0x544(r3)
/* 8031E8A8 002E7E68  D0 43 05 48 */	stfs f2, 0x548(r3)
/* 8031E8AC 002E7E6C  D0 63 05 4C */	stfs f3, 0x54c(r3)
/* 8031E8B0 002E7E70  D0 83 05 50 */	stfs f4, 0x550(r3)
/* 8031E8B4 002E7E74  D0 A3 05 54 */	stfs f5, 0x554(r3)
/* 8031E8B8 002E7E78  D0 C3 05 58 */	stfs f6, 0x558(r3)
/* 8031E8BC 002E7E7C  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 8031E8C0 002E7E80  64 00 10 00 */	oris r0, r0, 0x1000
/* 8031E8C4 002E7E84  90 03 05 FC */	stw r0, 0x5fc(r3)
/* 8031E8C8 002E7E88  4E 80 00 20 */	blr 
.endfn GXSetViewportJitter

.balign 16, 0
.fn GXSetViewport, global
/* 8031E8D0 002E7E90  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031E8D4 002E7E94  D0 23 05 44 */	stfs f1, 0x544(r3)
/* 8031E8D8 002E7E98  D0 43 05 48 */	stfs f2, 0x548(r3)
/* 8031E8DC 002E7E9C  D0 63 05 4C */	stfs f3, 0x54c(r3)
/* 8031E8E0 002E7EA0  D0 83 05 50 */	stfs f4, 0x550(r3)
/* 8031E8E4 002E7EA4  D0 A3 05 54 */	stfs f5, 0x554(r3)
/* 8031E8E8 002E7EA8  D0 C3 05 58 */	stfs f6, 0x558(r3)
/* 8031E8EC 002E7EAC  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 8031E8F0 002E7EB0  64 00 10 00 */	oris r0, r0, 0x1000
/* 8031E8F4 002E7EB4  90 03 05 FC */	stw r0, 0x5fc(r3)
/* 8031E8F8 002E7EB8  4E 80 00 20 */	blr 
.endfn GXSetViewport

.balign 16, 0
.fn GXSetScissor, global
/* 8031E900 002E7EC0  81 02 BC 20 */	lwz r8, lbl_8066BFA0@sda21(r2)
/* 8031E904 002E7EC4  38 84 01 56 */	addi r4, r4, 0x156
/* 8031E908 002E7EC8  39 23 01 56 */	addi r9, r3, 0x156
/* 8031E90C 002E7ECC  3C E0 CC 01 */	lis r7, 0xCC008000@ha
/* 8031E910 002E7ED0  80 08 01 48 */	lwz r0, 0x148(r8)
/* 8031E914 002E7ED4  50 80 05 7E */	rlwimi r0, r4, 0, 0x15, 0x1f
/* 8031E918 002E7ED8  51 20 62 66 */	rlwimi r0, r9, 0xc, 9, 0x13
/* 8031E91C 002E7EDC  90 08 01 48 */	stw r0, 0x148(r8)
/* 8031E920 002E7EE0  7C C4 32 14 */	add r6, r4, r6
/* 8031E924 002E7EE4  7C 69 2A 14 */	add r3, r9, r5
/* 8031E928 002E7EE8  38 06 FF FF */	addi r0, r6, -1
/* 8031E92C 002E7EEC  80 A8 01 4C */	lwz r5, 0x14c(r8)
/* 8031E930 002E7EF0  50 05 05 7E */	rlwimi r5, r0, 0, 0x15, 0x1f
/* 8031E934 002E7EF4  38 63 FF FF */	addi r3, r3, -1
/* 8031E938 002E7EF8  50 65 62 66 */	rlwimi r5, r3, 0xc, 9, 0x13
/* 8031E93C 002E7EFC  90 A8 01 4C */	stw r5, 0x14c(r8)
/* 8031E940 002E7F00  38 80 00 61 */	li r4, 0x61
/* 8031E944 002E7F04  38 00 00 00 */	li r0, 0
/* 8031E948 002E7F08  98 87 80 00 */	stb r4, 0xCC008000@l(r7)
/* 8031E94C 002E7F0C  80 68 01 48 */	lwz r3, 0x148(r8)
/* 8031E950 002E7F10  90 67 80 00 */	stw r3, -0x8000(r7)
/* 8031E954 002E7F14  98 87 80 00 */	stb r4, -0x8000(r7)
/* 8031E958 002E7F18  80 68 01 4C */	lwz r3, 0x14c(r8)
/* 8031E95C 002E7F1C  90 67 80 00 */	stw r3, -0x8000(r7)
/* 8031E960 002E7F20  B0 08 00 02 */	sth r0, 2(r8)
/* 8031E964 002E7F24  4E 80 00 20 */	blr 
.endfn GXSetScissor

.balign 16, 0
.fn GXSetScissorBoxOffset, global
/* 8031E970 002E7F30  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031E974 002E7F34  38 00 00 61 */	li r0, 0x61
/* 8031E978 002E7F38  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031E97C 002E7F3C  38 04 01 56 */	addi r0, r4, 0x156
/* 8031E980 002E7F40  38 63 01 56 */	addi r3, r3, 0x156
/* 8031E984 002E7F44  38 80 00 59 */	li r4, 0x59
/* 8031E988 002E7F48  38 C0 00 00 */	li r6, 0
/* 8031E98C 002E7F4C  50 66 FD BE */	rlwimi r6, r3, 0x1f, 0x16, 0x1f
/* 8031E990 002E7F50  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031E994 002E7F54  50 06 4B 2A */	rlwimi r6, r0, 9, 0xc, 0x15
/* 8031E998 002E7F58  38 00 00 00 */	li r0, 0
/* 8031E99C 002E7F5C  50 86 C0 0E */	rlwimi r6, r4, 0x18, 0, 7
/* 8031E9A0 002E7F60  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 8031E9A4 002E7F64  B0 03 00 02 */	sth r0, 2(r3)
/* 8031E9A8 002E7F68  4E 80 00 20 */	blr 
.endfn GXSetScissorBoxOffset

.balign 16, 0
.fn GXSetClipMode, global
/* 8031E9B0 002E7F70  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 8031E9B4 002E7F74  38 00 00 10 */	li r0, 0x10
/* 8031E9B8 002E7F78  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 8031E9BC 002E7F7C  38 A0 10 05 */	li r5, 0x1005
/* 8031E9C0 002E7F80  80 82 BC 20 */	lwz r4, lbl_8066BFA0@sda21(r2)
/* 8031E9C4 002E7F84  38 00 00 01 */	li r0, 1
/* 8031E9C8 002E7F88  90 A6 80 00 */	stw r5, -0x8000(r6)
/* 8031E9CC 002E7F8C  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031E9D0 002E7F90  B0 04 00 02 */	sth r0, 2(r4)
/* 8031E9D4 002E7F94  4E 80 00 20 */	blr 
.endfn GXSetClipMode

.balign 16, 0
.fn __GXSetMatrixIndex, global
/* 8031E9E0 002E7FA0  2C 03 00 05 */	cmpwi r3, 5
/* 8031E9E4 002E7FA4  40 80 00 40 */	bge .L_8031EA24
/* 8031E9E8 002E7FA8  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031E9EC 002E7FAC  38 00 00 08 */	li r0, 8
/* 8031E9F0 002E7FB0  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031E9F4 002E7FB4  38 00 00 30 */	li r0, 0x30
/* 8031E9F8 002E7FB8  80 C2 BC 20 */	lwz r6, lbl_8066BFA0@sda21(r2)
/* 8031E9FC 002E7FBC  38 60 00 10 */	li r3, 0x10
/* 8031EA00 002E7FC0  98 05 80 00 */	stb r0, -0x8000(r5)
/* 8031EA04 002E7FC4  38 00 10 18 */	li r0, 0x1018
/* 8031EA08 002E7FC8  80 86 00 80 */	lwz r4, 0x80(r6)
/* 8031EA0C 002E7FCC  90 85 80 00 */	stw r4, -0x8000(r5)
/* 8031EA10 002E7FD0  98 65 80 00 */	stb r3, -0x8000(r5)
/* 8031EA14 002E7FD4  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8031EA18 002E7FD8  80 06 00 80 */	lwz r0, 0x80(r6)
/* 8031EA1C 002E7FDC  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8031EA20 002E7FE0  48 00 00 3C */	b .L_8031EA5C
.L_8031EA24:
/* 8031EA24 002E7FE4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031EA28 002E7FE8  38 00 00 08 */	li r0, 8
/* 8031EA2C 002E7FEC  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031EA30 002E7FF0  38 00 00 40 */	li r0, 0x40
/* 8031EA34 002E7FF4  80 C2 BC 20 */	lwz r6, lbl_8066BFA0@sda21(r2)
/* 8031EA38 002E7FF8  38 60 00 10 */	li r3, 0x10
/* 8031EA3C 002E7FFC  98 05 80 00 */	stb r0, -0x8000(r5)
/* 8031EA40 002E8000  38 00 10 19 */	li r0, 0x1019
/* 8031EA44 002E8004  80 86 00 84 */	lwz r4, 0x84(r6)
/* 8031EA48 002E8008  90 85 80 00 */	stw r4, -0x8000(r5)
/* 8031EA4C 002E800C  98 65 80 00 */	stb r3, -0x8000(r5)
/* 8031EA50 002E8010  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8031EA54 002E8014  80 06 00 84 */	lwz r0, 0x84(r6)
/* 8031EA58 002E8018  90 05 80 00 */	stw r0, -0x8000(r5)
.L_8031EA5C:
/* 8031EA5C 002E801C  38 00 00 01 */	li r0, 1
/* 8031EA60 002E8020  B0 06 00 02 */	sth r0, 2(r6)
/* 8031EA64 002E8024  4E 80 00 20 */	blr 
.endfn __GXSetMatrixIndex

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066C0A0
float_8066C0A0:
	.float 0


.global float_8066C0A4
float_8066C0A4:
	.float 0.5


.global float_8066C0A8
float_8066C0A8:
	.4byte 0x43AB0000
	.4byte 0