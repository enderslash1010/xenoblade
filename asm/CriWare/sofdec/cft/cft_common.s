.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn CFT_Init, global
/* 8039BBE8 003651A8  3C 80 80 52 */	lis r4, cft_ver_str@ha
/* 8039BBEC 003651AC  3C 60 80 60 */	lis r3, lbl_80602788@ha
/* 8039BBF0 003651B0  38 84 CE 58 */	addi r4, r4, cft_ver_str@l
/* 8039BBF4 003651B4  90 83 27 88 */	stw r4, lbl_80602788@l(r3)
/* 8039BBF8 003651B8  4B FF FC 00 */	b CFT_Ycc420plnToArgb8888Init
.endfn CFT_Init

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global cft_ver_str
cft_ver_str:
	.asciz "\nCRI CFT/WII Ver.2.11 Build:Nov 13 2008 18:21:14\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_80602788
lbl_80602788:
	.skip 0x8