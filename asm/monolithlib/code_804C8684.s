.include "macros.inc"
.file "monolithlib/code_804C8684.o"

# 0x804C8684 - 0x804C8718
.text
.balign 4

.fn fn_804C8684, global
/* 804C8684 00491C44  4E 80 00 20 */	blr
.endfn fn_804C8684

.fn fn_804C8688, global
/* 804C8688 00491C48  4E 80 00 20 */	blr
.endfn fn_804C8688

.fn fn_804C868C, global
/* 804C868C 00491C4C  4E 80 00 20 */	blr
.endfn fn_804C868C

.fn fn_804C8690, global
/* 804C8690 00491C50  2C 04 00 00 */	cmpwi r4, 0x0
/* 804C8694 00491C54  98 6D C0 F8 */	stb r3, lbl_80668278@sda21(r13)
/* 804C8698 00491C58  4D 82 00 20 */	beqlr
/* 804C869C 00491C5C  3C A0 80 66 */	lis r5, lbl_806624C8@ha
/* 804C86A0 00491C60  80 64 00 00 */	lwz r3, 0x0(r4)
/* 804C86A4 00491C64  80 04 00 04 */	lwz r0, 0x4(r4)
/* 804C86A8 00491C68  38 A5 24 C8 */	addi r5, r5, lbl_806624C8@l
/* 804C86AC 00491C6C  90 05 00 04 */	stw r0, 0x4(r5)
/* 804C86B0 00491C70  90 65 00 00 */	stw r3, 0x0(r5)
/* 804C86B4 00491C74  80 04 00 08 */	lwz r0, 0x8(r4)
/* 804C86B8 00491C78  90 05 00 08 */	stw r0, 0x8(r5)
/* 804C86BC 00491C7C  4E 80 00 20 */	blr
.endfn fn_804C8690

.fn sinit_804C86C0, global
/* 804C86C0 00491C80  3C C0 80 66 */	lis r6, lbl_806624A8@ha
/* 804C86C4 00491C84  C0 82 D4 B8 */	lfs f4, lbl_8066D838@sda21(r2)
/* 804C86C8 00491C88  38 C6 24 A8 */	addi r6, r6, lbl_806624A8@l
/* 804C86CC 00491C8C  C0 22 D4 C4 */	lfs f1, lbl_8066D844@sda21(r2)
/* 804C86D0 00491C90  38 86 00 10 */	addi r4, r6, 0x10
/* 804C86D4 00491C94  C0 42 D4 C0 */	lfs f2, lbl_8066D840@sda21(r2)
/* 804C86D8 00491C98  38 A6 00 00 */	addi r5, r6, 0x0
/* 804C86DC 00491C9C  C0 62 D4 BC */	lfs f3, lbl_8066D83C@sda21(r2)
/* 804C86E0 00491CA0  38 66 00 20 */	addi r3, r6, 0x20
/* 804C86E4 00491CA4  C0 02 D4 C8 */	lfs f0, lbl_8066D848@sda21(r2)
/* 804C86E8 00491CA8  D0 86 00 00 */	stfs f4, 0x0(r6)
/* 804C86EC 00491CAC  D0 65 00 04 */	stfs f3, 0x4(r5)
/* 804C86F0 00491CB0  D0 65 00 08 */	stfs f3, 0x8(r5)
/* 804C86F4 00491CB4  D0 45 00 0C */	stfs f2, 0xc(r5)
/* 804C86F8 00491CB8  D0 86 00 10 */	stfs f4, 0x10(r6)
/* 804C86FC 00491CBC  D0 84 00 04 */	stfs f4, 0x4(r4)
/* 804C8700 00491CC0  D0 84 00 08 */	stfs f4, 0x8(r4)
/* 804C8704 00491CC4  D0 44 00 0C */	stfs f2, 0xc(r4)
/* 804C8708 00491CC8  D0 26 00 20 */	stfs f1, 0x20(r6)
/* 804C870C 00491CCC  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 804C8710 00491CD0  D0 63 00 08 */	stfs f3, 0x8(r3)
/* 804C8714 00491CD4  4E 80 00 20 */	blr
.endfn sinit_804C86C0

# 0x804F5AC4 - 0x804F5AC8
.section .ctors, "a"
.balign 4
	.4byte sinit_804C86C0

# 0x806624A8 - 0x806624D8
.section .bss, "wa", @nobits
.balign 8
.sym lbl_806624A8, global
	.skip 0x20
.sym lbl_806624C8, global
	.skip 0x10

# 0x80668278 - 0x80668280
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80668278, global
	.skip 0x8

# 0x8066D838 - 0x8066D850
.section .sdata2, "a"
.balign 8
.sym lbl_8066D838, global
	.4byte 0x3F800000
.sym lbl_8066D83C, global
	.4byte 0x00000000
.sym lbl_8066D840, global
	.4byte 0x3F4CCCCD
.sym lbl_8066D844, global
	.4byte 0x40A00000
.sym lbl_8066D848, global
	.4byte 0x43C58000
	.4byte 0x00000000
