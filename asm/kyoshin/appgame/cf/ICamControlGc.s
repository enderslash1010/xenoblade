.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80274DD8, global
/* 80274DD8 0023E398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274DDC 0023E39C  7C 08 02 A6 */	mflr r0
/* 80274DE0 0023E3A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274DE4 0023E3A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80274DE8 0023E3A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274DEC 0023E3AC  7D 89 03 A6 */	mtctr r12
/* 80274DF0 0023E3B0  4E 80 04 21 */	bctrl 
/* 80274DF4 0023E3B4  80 03 00 00 */	lwz r0, 0(r3)
/* 80274DF8 0023E3B8  54 03 6F FE */	rlwinm r3, r0, 0xd, 0x1f, 0x1f
/* 80274DFC 0023E3BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274E00 0023E3C0  7C 08 03 A6 */	mtlr r0
/* 80274E04 0023E3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80274E08 0023E3C8  4E 80 00 20 */	blr 
.endfn func_80274DD8

.fn func_80274E0C, global
/* 80274E0C 0023E3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274E10 0023E3D0  7C 08 02 A6 */	mflr r0
/* 80274E14 0023E3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274E18 0023E3D8  81 83 00 00 */	lwz r12, 0(r3)
/* 80274E1C 0023E3DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274E20 0023E3E0  7D 89 03 A6 */	mtctr r12
/* 80274E24 0023E3E4  4E 80 04 21 */	bctrl 
/* 80274E28 0023E3E8  80 03 00 00 */	lwz r0, 0(r3)
/* 80274E2C 0023E3EC  54 03 67 FE */	rlwinm r3, r0, 0xc, 0x1f, 0x1f
/* 80274E30 0023E3F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274E34 0023E3F4  7C 08 03 A6 */	mtlr r0
/* 80274E38 0023E3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80274E3C 0023E3FC  4E 80 00 20 */	blr 
.endfn func_80274E0C

.fn func_80274E40, global
/* 80274E40 0023E400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274E44 0023E404  7C 08 02 A6 */	mflr r0
/* 80274E48 0023E408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274E4C 0023E40C  81 83 00 00 */	lwz r12, 0(r3)
/* 80274E50 0023E410  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274E54 0023E414  7D 89 03 A6 */	mtctr r12
/* 80274E58 0023E418  4E 80 04 21 */	bctrl 
/* 80274E5C 0023E41C  80 03 00 00 */	lwz r0, 0(r3)
/* 80274E60 0023E420  54 03 7F FE */	rlwinm r3, r0, 0xf, 0x1f, 0x1f
/* 80274E64 0023E424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274E68 0023E428  7C 08 03 A6 */	mtlr r0
/* 80274E6C 0023E42C  38 21 00 10 */	addi r1, r1, 0x10
/* 80274E70 0023E430  4E 80 00 20 */	blr 
.endfn func_80274E40

.fn func_80274E74, global
/* 80274E74 0023E434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274E78 0023E438  7C 08 02 A6 */	mflr r0
/* 80274E7C 0023E43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274E80 0023E440  81 83 00 00 */	lwz r12, 0(r3)
/* 80274E84 0023E444  81 8C 00 08 */	lwz r12, 8(r12)
/* 80274E88 0023E448  7D 89 03 A6 */	mtctr r12
/* 80274E8C 0023E44C  4E 80 04 21 */	bctrl 
/* 80274E90 0023E450  80 03 00 00 */	lwz r0, 0(r3)
/* 80274E94 0023E454  54 03 77 FE */	rlwinm r3, r0, 0xe, 0x1f, 0x1f
/* 80274E98 0023E458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274E9C 0023E45C  7C 08 03 A6 */	mtlr r0
/* 80274EA0 0023E460  38 21 00 10 */	addi r1, r1, 0x10
/* 80274EA4 0023E464  4E 80 00 20 */	blr 
.endfn func_80274E74

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80018508", local
.hidden "@etb_80018508"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018508"

.obj "@etb_80018510", local
.hidden "@etb_80018510"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018510"

.obj "@etb_80018518", local
.hidden "@etb_80018518"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018518"

.obj "@etb_80018520", local
.hidden "@etb_80018520"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018520"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80030B48", local
.hidden "@eti_80030B48"
	.4byte func_80274DD8
	.4byte 0x00000034
	.4byte "@etb_80018508"
.endobj "@eti_80030B48"

.obj "@eti_80030B54", local
.hidden "@eti_80030B54"
	.4byte func_80274E0C
	.4byte 0x00000034
	.4byte "@etb_80018510"
.endobj "@eti_80030B54"

.obj "@eti_80030B60", local
.hidden "@eti_80030B60"
	.4byte func_80274E40
	.4byte 0x00000034
	.4byte "@etb_80018518"
.endobj "@eti_80030B60"

.obj "@eti_80030B6C", local
.hidden "@eti_80030B6C"
	.4byte func_80274E74
	.4byte 0x00000034
	.4byte "@etb_80018520"
.endobj "@eti_80030B6C"
