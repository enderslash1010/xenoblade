.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __msl_assertion_failed
__msl_assertion_failed:
/* 802BDC7C 0028723C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDC80 00287240  7C 08 02 A6 */	mflr r0
/* 802BDC84 00287244  3D 00 80 54 */	lis r8, lbl_8053F0F0@ha
/* 802BDC88 00287248  7C C7 33 78 */	mr r7, r6
/* 802BDC8C 0028724C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BDC90 00287250  7C 80 23 78 */	mr r0, r4
/* 802BDC94 00287254  3C 80 80 51 */	lis r4, lbl_8050CFF8@ha
/* 802BDC98 00287258  39 08 F0 F0 */	addi r8, r8, lbl_8053F0F0@l
/* 802BDC9C 0028725C  7C 65 1B 78 */	mr r5, r3
/* 802BDCA0 00287260  7C 06 03 78 */	mr r6, r0
/* 802BDCA4 00287264  38 84 CF F8 */	addi r4, r4, lbl_8050CFF8@l
/* 802BDCA8 00287268  38 68 00 A0 */	addi r3, r8, 0xa0
/* 802BDCAC 0028726C  4C C6 31 82 */	crclr 6
/* 802BDCB0 00287270  48 00 30 45 */	bl printf
/* 802BDCB4 00287274  48 00 95 35 */	bl abort
/* 802BDCB8 00287278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BDCBC 0028727C  7C 08 03 A6 */	mtlr r0
/* 802BDCC0 00287280  38 21 00 10 */	addi r1, r1, 0x10
/* 802BDCC4 00287284  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0
.global lbl_8050CFF8
lbl_8050CFF8:
	.asciz "Assertion (%s) failed in \"%s\", line %d\n"