.include "macros.inc"
.file "RevoSDK/bte/utl.o"

# 0x802DED80 - 0x802DEDC4
.text
.balign 16

.fn utl_freebuf, global
/* 802DED80 002A8340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DED84 002A8344  7C 08 02 A6 */	mflr r0
/* 802DED88 002A8348  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DED8C 002A834C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DED90 002A8350  7C 7F 1B 78 */	mr r31, r3
/* 802DED94 002A8354  80 03 00 00 */	lwz r0, 0x0(r3)
/* 802DED98 002A8358  2C 00 00 00 */	cmpwi r0, 0x0
/* 802DED9C 002A835C  41 82 00 14 */	beq .L_802DEDB0
/* 802DEDA0 002A8360  7C 03 03 78 */	mr r3, r0
/* 802DEDA4 002A8364  4B FF C7 3D */	bl GKI_freebuf
/* 802DEDA8 002A8368  38 00 00 00 */	li r0, 0x0
/* 802DEDAC 002A836C  90 1F 00 00 */	stw r0, 0x0(r31)
.L_802DEDB0:
/* 802DEDB0 002A8370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DEDB4 002A8374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DEDB8 002A8378  7C 08 03 A6 */	mtlr r0
/* 802DEDBC 002A837C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DEDC0 002A8380  4E 80 00 20 */	blr
.endfn utl_freebuf
