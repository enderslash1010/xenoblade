.include "macros.inc"
.file "RevoSDK/bte/bta_hh_main.o"

# 0x802E3C00 - 0x802E4154
.text
.balign 16

.fn bta_hh_sm_execute, global
/* 802E3C00 002AD1C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E3C04 002AD1C4  7C 08 02 A6 */	mflr r0
/* 802E3C08 002AD1C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E3C0C 002AD1CC  39 61 00 40 */	addi r11, r1, 0x40
/* 802E3C10 002AD1D0  4B FD 65 41 */	bl _savegpr_26
/* 802E3C14 002AD1D4  3F E0 80 54 */	lis r31, lbl_805446C0@ha
/* 802E3C18 002AD1D8  7C 7B 1B 78 */	mr r27, r3
/* 802E3C1C 002AD1DC  7C 9C 23 78 */	mr r28, r4
/* 802E3C20 002AD1E0  7C BD 2B 78 */	mr r29, r5
/* 802E3C24 002AD1E4  3B FF 46 C0 */	addi r31, r31, lbl_805446C0@l
/* 802E3C28 002AD1E8  38 61 00 08 */	addi r3, r1, 0x8
/* 802E3C2C 002AD1EC  3B C0 00 00 */	li r30, 0x0
/* 802E3C30 002AD1F0  38 80 00 00 */	li r4, 0x0
/* 802E3C34 002AD1F4  38 A0 00 20 */	li r5, 0x20
/* 802E3C38 002AD1F8  4B D2 07 19 */	bl memset
/* 802E3C3C 002AD1FC  2C 1B 00 00 */	cmpwi r27, 0x0
/* 802E3C40 002AD200  40 82 01 58 */	bne .L_802E3D98
/* 802E3C44 002AD204  3C 60 80 5C */	lis r3, lbl_805BF7C8@ha
/* 802E3C48 002AD208  38 63 F7 C8 */	addi r3, r3, lbl_805BF7C8@l
/* 802E3C4C 002AD20C  80 03 02 24 */	lwz r0, 0x224(r3)
/* 802E3C50 002AD210  2C 00 00 00 */	cmpwi r0, 0x0
/* 802E3C54 002AD214  41 82 02 E8 */	beq .L_802E3F3C
/* 802E3C58 002AD218  2C 1C 17 08 */	cmpwi r28, 0x1708
/* 802E3C5C 002AD21C  41 82 00 90 */	beq .L_802E3CEC
/* 802E3C60 002AD220  40 80 00 1C */	bge .L_802E3C7C
/* 802E3C64 002AD224  2C 1C 17 01 */	cmpwi r28, 0x1701
/* 802E3C68 002AD228  41 82 00 D8 */	beq .L_802E3D40
/* 802E3C6C 002AD22C  40 80 00 EC */	bge .L_802E3D58
/* 802E3C70 002AD230  2C 1C 17 00 */	cmpwi r28, 0x1700
/* 802E3C74 002AD234  40 80 00 14 */	bge .L_802E3C88
/* 802E3C78 002AD238  48 00 00 E0 */	b .L_802E3D58
.L_802E3C7C:
/* 802E3C7C 002AD23C  2C 1C 17 0A */	cmpwi r28, 0x170a
/* 802E3C80 002AD240  41 82 00 2C */	beq .L_802E3CAC
/* 802E3C84 002AD244  48 00 00 D4 */	b .L_802E3D58
.L_802E3C88:
/* 802E3C88 002AD248  38 61 00 08 */	addi r3, r1, 0x8
/* 802E3C8C 002AD24C  38 9D 00 08 */	addi r4, r29, 0x8
/* 802E3C90 002AD250  3B C0 00 02 */	li r30, 0x2
/* 802E3C94 002AD254  4B FF A9 A1 */	bl bdcpy
/* 802E3C98 002AD258  38 60 00 09 */	li r3, 0x9
/* 802E3C9C 002AD25C  38 00 00 FF */	li r0, 0xff
/* 802E3CA0 002AD260  98 61 00 0E */	stb r3, 0xe(r1)
/* 802E3CA4 002AD264  98 01 00 0F */	stb r0, 0xf(r1)
/* 802E3CA8 002AD268  48 00 00 CC */	b .L_802E3D74
.L_802E3CAC:
/* 802E3CAC 002AD26C  A3 DD 00 10 */	lhz r30, 0x10(r29)
/* 802E3CB0 002AD270  28 1E 00 0B */	cmplwi r30, 0xb
/* 802E3CB4 002AD274  40 82 00 24 */	bne .L_802E3CD8
/* 802E3CB8 002AD278  38 61 00 08 */	addi r3, r1, 0x8
/* 802E3CBC 002AD27C  38 9D 00 08 */	addi r4, r29, 0x8
/* 802E3CC0 002AD280  4B FF A9 75 */	bl bdcpy
/* 802E3CC4 002AD284  38 60 00 09 */	li r3, 0x9
/* 802E3CC8 002AD288  38 00 00 FF */	li r0, 0xff
/* 802E3CCC 002AD28C  98 61 00 0E */	stb r3, 0xe(r1)
/* 802E3CD0 002AD290  98 01 00 0F */	stb r0, 0xf(r1)
/* 802E3CD4 002AD294  48 00 00 A0 */	b .L_802E3D74
.L_802E3CD8:
/* 802E3CD8 002AD298  38 00 00 0D */	li r0, 0xd
/* 802E3CDC 002AD29C  98 01 00 0E */	stb r0, 0xe(r1)
/* 802E3CE0 002AD2A0  A0 1D 00 06 */	lhz r0, 0x6(r29)
/* 802E3CE4 002AD2A4  98 01 00 0F */	stb r0, 0xf(r1)
/* 802E3CE8 002AD2A8  48 00 00 8C */	b .L_802E3D74
.L_802E3CEC:
/* 802E3CEC 002AD2AC  8B DD 00 08 */	lbz r30, 0x8(r29)
/* 802E3CF0 002AD2B0  28 1E 00 07 */	cmplwi r30, 0x7
/* 802E3CF4 002AD2B4  41 82 00 14 */	beq .L_802E3D08
/* 802E3CF8 002AD2B8  28 1E 00 05 */	cmplwi r30, 0x5
/* 802E3CFC 002AD2BC  41 82 00 0C */	beq .L_802E3D08
/* 802E3D00 002AD2C0  28 1E 00 09 */	cmplwi r30, 0x9
/* 802E3D04 002AD2C4  40 82 00 18 */	bne .L_802E3D1C
.L_802E3D08:
/* 802E3D08 002AD2C8  38 00 00 0D */	li r0, 0xd
/* 802E3D0C 002AD2CC  98 01 00 08 */	stb r0, 0x8(r1)
/* 802E3D10 002AD2D0  A0 1D 00 06 */	lhz r0, 0x6(r29)
/* 802E3D14 002AD2D4  98 01 00 09 */	stb r0, 0x9(r1)
/* 802E3D18 002AD2D8  48 00 00 5C */	b .L_802E3D74
.L_802E3D1C:
/* 802E3D1C 002AD2DC  28 1E 00 0A */	cmplwi r30, 0xa
/* 802E3D20 002AD2E0  41 82 00 54 */	beq .L_802E3D74
/* 802E3D24 002AD2E4  28 1E 00 01 */	cmplwi r30, 0x1
/* 802E3D28 002AD2E8  41 82 00 4C */	beq .L_802E3D74
/* 802E3D2C 002AD2EC  A0 7D 00 06 */	lhz r3, 0x6(r29)
/* 802E3D30 002AD2F0  38 00 00 0D */	li r0, 0xd
/* 802E3D34 002AD2F4  98 61 00 09 */	stb r3, 0x9(r1)
/* 802E3D38 002AD2F8  98 01 00 08 */	stb r0, 0x8(r1)
/* 802E3D3C 002AD2FC  48 00 00 38 */	b .L_802E3D74
.L_802E3D40:
/* 802E3D40 002AD300  38 00 00 0D */	li r0, 0xd
/* 802E3D44 002AD304  3B C0 00 03 */	li r30, 0x3
/* 802E3D48 002AD308  98 01 00 08 */	stb r0, 0x8(r1)
/* 802E3D4C 002AD30C  A0 1D 00 06 */	lhz r0, 0x6(r29)
/* 802E3D50 002AD310  98 01 00 09 */	stb r0, 0x9(r1)
/* 802E3D54 002AD314  48 00 00 20 */	b .L_802E3D74
.L_802E3D58:
/* 802E3D58 002AD318  88 0D B5 F8 */	lbz r0, lbl_80667778@sda21(r13)
/* 802E3D5C 002AD31C  28 00 00 01 */	cmplwi r0, 0x1
/* 802E3D60 002AD320  41 80 00 14 */	blt .L_802E3D74
/* 802E3D64 002AD324  A0 BD 00 06 */	lhz r5, 0x6(r29)
/* 802E3D68 002AD328  38 9F 00 00 */	addi r4, r31, 0x0
/* 802E3D6C 002AD32C  38 60 05 00 */	li r3, 0x500
/* 802E3D70 002AD330  4B FF A2 51 */	bl LogMsg_1
.L_802E3D74:
/* 802E3D74 002AD334  57 C3 04 3F */	clrlwi. r3, r30, 16
/* 802E3D78 002AD338  41 82 01 C4 */	beq .L_802E3F3C
/* 802E3D7C 002AD33C  3C A0 80 5C */	lis r5, lbl_805BF7C8@ha
/* 802E3D80 002AD340  38 81 00 08 */	addi r4, r1, 0x8
/* 802E3D84 002AD344  38 A5 F7 C8 */	addi r5, r5, lbl_805BF7C8@l
/* 802E3D88 002AD348  81 85 02 24 */	lwz r12, 0x224(r5)
/* 802E3D8C 002AD34C  7D 89 03 A6 */	mtctr r12
/* 802E3D90 002AD350  4E 80 04 21 */	bctrl
/* 802E3D94 002AD354  48 00 01 A8 */	b .L_802E3F3C
.L_802E3D98:
/* 802E3D98 002AD358  88 0D B5 F8 */	lbz r0, lbl_80667778@sda21(r13)
/* 802E3D9C 002AD35C  8B DB 00 1C */	lbz r30, 0x1c(r27)
/* 802E3DA0 002AD360  28 00 00 04 */	cmplwi r0, 0x4
/* 802E3DA4 002AD364  41 80 00 70 */	blt .L_802E3E14
/* 802E3DA8 002AD368  2C 1E 00 02 */	cmpwi r30, 0x2
/* 802E3DAC 002AD36C  41 82 00 34 */	beq .L_802E3DE0
/* 802E3DB0 002AD370  40 80 00 14 */	bge .L_802E3DC4
/* 802E3DB4 002AD374  2C 1E 00 00 */	cmpwi r30, 0x0
/* 802E3DB8 002AD378  41 82 00 18 */	beq .L_802E3DD0
/* 802E3DBC 002AD37C  40 80 00 1C */	bge .L_802E3DD8
/* 802E3DC0 002AD380  48 00 00 30 */	b .L_802E3DF0
.L_802E3DC4:
/* 802E3DC4 002AD384  2C 1E 00 04 */	cmpwi r30, 0x4
/* 802E3DC8 002AD388  40 80 00 28 */	bge .L_802E3DF0
/* 802E3DCC 002AD38C  48 00 00 1C */	b .L_802E3DE8
.L_802E3DD0:
/* 802E3DD0 002AD390  3B 5F 00 1C */	addi r26, r31, 0x1c
/* 802E3DD4 002AD394  48 00 00 20 */	b .L_802E3DF4
.L_802E3DD8:
/* 802E3DD8 002AD398  3B 5F 00 2C */	addi r26, r31, 0x2c
/* 802E3DDC 002AD39C  48 00 00 18 */	b .L_802E3DF4
.L_802E3DE0:
/* 802E3DE0 002AD3A0  3B 5F 00 3C */	addi r26, r31, 0x3c
/* 802E3DE4 002AD3A4  48 00 00 10 */	b .L_802E3DF4
.L_802E3DE8:
/* 802E3DE8 002AD3A8  3B 5F 00 50 */	addi r26, r31, 0x50
/* 802E3DEC 002AD3AC  48 00 00 08 */	b .L_802E3DF4
.L_802E3DF0:
/* 802E3DF0 002AD3B0  3B 5F 00 60 */	addi r26, r31, 0x60
.L_802E3DF4:
/* 802E3DF4 002AD3B4  7F 83 E3 78 */	mr r3, r28
/* 802E3DF8 002AD3B8  48 00 02 A9 */	bl bta_hh_evt_code
/* 802E3DFC 002AD3BC  7C 67 1B 78 */	mr r7, r3
/* 802E3E00 002AD3C0  7F C5 F3 78 */	mr r5, r30
/* 802E3E04 002AD3C4  7F 46 D3 78 */	mr r6, r26
/* 802E3E08 002AD3C8  38 9F 00 78 */	addi r4, r31, 0x78
/* 802E3E0C 002AD3CC  38 60 05 03 */	li r3, 0x503
/* 802E3E10 002AD3D0  4B FF A1 F1 */	bl LogMsg_3
.L_802E3E14:
/* 802E3E14 002AD3D4  88 9B 00 1C */	lbz r4, 0x1c(r27)
/* 802E3E18 002AD3D8  3C 60 80 51 */	lis r3, lbl_8050E230@ha
/* 802E3E1C 002AD3DC  38 63 E2 30 */	addi r3, r3, lbl_8050E230@l
/* 802E3E20 002AD3E0  57 9C 06 3E */	clrlwi r28, r28, 24
/* 802E3E24 002AD3E4  38 04 FF FF */	addi r0, r4, -0x1
/* 802E3E28 002AD3E8  54 00 10 3A */	slwi r0, r0, 2
/* 802E3E2C 002AD3EC  57 84 08 3C */	slwi r4, r28, 1
/* 802E3E30 002AD3F0  7C A3 00 2E */	lwzx r5, r3, r0
/* 802E3E34 002AD3F4  7C 65 22 14 */	add r3, r5, r4
/* 802E3E38 002AD3F8  88 03 00 01 */	lbz r0, 0x1(r3)
/* 802E3E3C 002AD3FC  98 1B 00 1C */	stb r0, 0x1c(r27)
/* 802E3E40 002AD400  7C 05 20 AE */	lbzx r0, r5, r4
/* 802E3E44 002AD404  28 00 00 0C */	cmplwi r0, 0xc
/* 802E3E48 002AD408  41 82 00 24 */	beq .L_802E3E6C
/* 802E3E4C 002AD40C  3C 80 80 51 */	lis r4, lbl_8050E1B8@ha
/* 802E3E50 002AD410  54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 802E3E54 002AD414  38 84 E1 B8 */	addi r4, r4, lbl_8050E1B8@l
/* 802E3E58 002AD418  7F 63 DB 78 */	mr r3, r27
/* 802E3E5C 002AD41C  7D 84 00 2E */	lwzx r12, r4, r0
/* 802E3E60 002AD420  7F A4 EB 78 */	mr r4, r29
/* 802E3E64 002AD424  7D 89 03 A6 */	mtctr r12
/* 802E3E68 002AD428  4E 80 04 21 */	bctrl
.L_802E3E6C:
/* 802E3E6C 002AD42C  88 7B 00 1C */	lbz r3, 0x1c(r27)
/* 802E3E70 002AD430  7C 1E 18 40 */	cmplw r30, r3
/* 802E3E74 002AD434  41 82 00 C8 */	beq .L_802E3F3C
/* 802E3E78 002AD438  88 0D B5 F8 */	lbz r0, lbl_80667778@sda21(r13)
/* 802E3E7C 002AD43C  28 00 00 05 */	cmplwi r0, 0x5
/* 802E3E80 002AD440  41 80 00 BC */	blt .L_802E3F3C
/* 802E3E84 002AD444  2C 1E 00 02 */	cmpwi r30, 0x2
/* 802E3E88 002AD448  41 82 00 34 */	beq .L_802E3EBC
/* 802E3E8C 002AD44C  40 80 00 14 */	bge .L_802E3EA0
/* 802E3E90 002AD450  2C 1E 00 00 */	cmpwi r30, 0x0
/* 802E3E94 002AD454  41 82 00 18 */	beq .L_802E3EAC
/* 802E3E98 002AD458  40 80 00 1C */	bge .L_802E3EB4
/* 802E3E9C 002AD45C  48 00 00 30 */	b .L_802E3ECC
.L_802E3EA0:
/* 802E3EA0 002AD460  2C 1E 00 04 */	cmpwi r30, 0x4
/* 802E3EA4 002AD464  40 80 00 28 */	bge .L_802E3ECC
/* 802E3EA8 002AD468  48 00 00 1C */	b .L_802E3EC4
.L_802E3EAC:
/* 802E3EAC 002AD46C  3B 5F 00 1C */	addi r26, r31, 0x1c
/* 802E3EB0 002AD470  48 00 00 20 */	b .L_802E3ED0
.L_802E3EB4:
/* 802E3EB4 002AD474  3B 5F 00 2C */	addi r26, r31, 0x2c
/* 802E3EB8 002AD478  48 00 00 18 */	b .L_802E3ED0
.L_802E3EBC:
/* 802E3EBC 002AD47C  3B 5F 00 3C */	addi r26, r31, 0x3c
/* 802E3EC0 002AD480  48 00 00 10 */	b .L_802E3ED0
.L_802E3EC4:
/* 802E3EC4 002AD484  3B 5F 00 50 */	addi r26, r31, 0x50
/* 802E3EC8 002AD488  48 00 00 08 */	b .L_802E3ED0
.L_802E3ECC:
/* 802E3ECC 002AD48C  3B 5F 00 60 */	addi r26, r31, 0x60
.L_802E3ED0:
/* 802E3ED0 002AD490  2C 03 00 02 */	cmpwi r3, 0x2
/* 802E3ED4 002AD494  41 82 00 34 */	beq .L_802E3F08
/* 802E3ED8 002AD498  40 80 00 14 */	bge .L_802E3EEC
/* 802E3EDC 002AD49C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802E3EE0 002AD4A0  41 82 00 18 */	beq .L_802E3EF8
/* 802E3EE4 002AD4A4  40 80 00 1C */	bge .L_802E3F00
/* 802E3EE8 002AD4A8  48 00 00 30 */	b .L_802E3F18
.L_802E3EEC:
/* 802E3EEC 002AD4AC  2C 03 00 04 */	cmpwi r3, 0x4
/* 802E3EF0 002AD4B0  40 80 00 28 */	bge .L_802E3F18
/* 802E3EF4 002AD4B4  48 00 00 1C */	b .L_802E3F10
.L_802E3EF8:
/* 802E3EF8 002AD4B8  3B 7F 00 1C */	addi r27, r31, 0x1c
/* 802E3EFC 002AD4BC  48 00 00 20 */	b .L_802E3F1C
.L_802E3F00:
/* 802E3F00 002AD4C0  3B 7F 00 2C */	addi r27, r31, 0x2c
/* 802E3F04 002AD4C4  48 00 00 18 */	b .L_802E3F1C
.L_802E3F08:
/* 802E3F08 002AD4C8  3B 7F 00 3C */	addi r27, r31, 0x3c
/* 802E3F0C 002AD4CC  48 00 00 10 */	b .L_802E3F1C
.L_802E3F10:
/* 802E3F10 002AD4D0  3B 7F 00 50 */	addi r27, r31, 0x50
/* 802E3F14 002AD4D4  48 00 00 08 */	b .L_802E3F1C
.L_802E3F18:
/* 802E3F18 002AD4D8  3B 7F 00 60 */	addi r27, r31, 0x60
.L_802E3F1C:
/* 802E3F1C 002AD4DC  7F 83 E3 78 */	mr r3, r28
/* 802E3F20 002AD4E0  48 00 01 81 */	bl bta_hh_evt_code
/* 802E3F24 002AD4E4  7C 67 1B 78 */	mr r7, r3
/* 802E3F28 002AD4E8  7F 45 D3 78 */	mr r5, r26
/* 802E3F2C 002AD4EC  7F 66 DB 78 */	mr r6, r27
/* 802E3F30 002AD4F0  38 9F 00 AC */	addi r4, r31, 0xac
/* 802E3F34 002AD4F4  38 60 05 04 */	li r3, 0x504
/* 802E3F38 002AD4F8  4B FF A0 C9 */	bl LogMsg_3
.L_802E3F3C:
/* 802E3F3C 002AD4FC  39 61 00 40 */	addi r11, r1, 0x40
/* 802E3F40 002AD500  4B FD 62 5D */	bl _restgpr_26
/* 802E3F44 002AD504  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E3F48 002AD508  7C 08 03 A6 */	mtlr r0
/* 802E3F4C 002AD50C  38 21 00 40 */	addi r1, r1, 0x40
/* 802E3F50 002AD510  4E 80 00 20 */	blr
.endfn bta_hh_sm_execute

.fn bta_hh_hdl_event, global
/* 802E3F54 002AD514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3F58 002AD518  7C 08 02 A6 */	mflr r0
/* 802E3F5C 002AD51C  38 C0 00 10 */	li r6, 0x10
/* 802E3F60 002AD520  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E3F64 002AD524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E3F68 002AD528  3B E0 00 00 */	li r31, 0x0
/* 802E3F6C 002AD52C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802E3F70 002AD530  7C 7E 1B 78 */	mr r30, r3
/* 802E3F74 002AD534  A0 03 00 00 */	lhz r0, 0x0(r3)
/* 802E3F78 002AD538  2C 00 17 0E */	cmpwi r0, 0x170e
/* 802E3F7C 002AD53C  41 82 00 3C */	beq .L_802E3FB8
/* 802E3F80 002AD540  40 80 00 14 */	bge .L_802E3F94
/* 802E3F84 002AD544  2C 00 17 0C */	cmpwi r0, 0x170c
/* 802E3F88 002AD548  41 82 00 18 */	beq .L_802E3FA0
/* 802E3F8C 002AD54C  40 80 00 1C */	bge .L_802E3FA8
/* 802E3F90 002AD550  48 00 00 30 */	b .L_802E3FC0
.L_802E3F94:
/* 802E3F94 002AD554  2C 00 17 10 */	cmpwi r0, 0x1710
/* 802E3F98 002AD558  40 80 00 28 */	bge .L_802E3FC0
/* 802E3F9C 002AD55C  48 00 00 14 */	b .L_802E3FB0
.L_802E3FA0:
/* 802E3FA0 002AD560  4B FF E1 49 */	bl bta_hh_api_enable
/* 802E3FA4 002AD564  48 00 00 E0 */	b .L_802E4084
.L_802E3FA8:
/* 802E3FA8 002AD568  4B FF E2 B5 */	bl bta_hh_api_disable
/* 802E3FAC 002AD56C  48 00 00 D8 */	b .L_802E4084
.L_802E3FB0:
/* 802E3FB0 002AD570  4B FF E3 B1 */	bl bta_hh_disc_cmpl
/* 802E3FB4 002AD574  48 00 00 D0 */	b .L_802E4084
.L_802E3FB8:
/* 802E3FB8 002AD578  4B FF F2 FD */	bl bta_hh_get_acl_q_info
/* 802E3FBC 002AD57C  48 00 00 C8 */	b .L_802E4084
.L_802E3FC0:
/* 802E3FC0 002AD580  28 00 17 00 */	cmplwi r0, 0x1700
/* 802E3FC4 002AD584  40 82 00 14 */	bne .L_802E3FD8
/* 802E3FC8 002AD588  38 63 00 08 */	addi r3, r3, 0x8
/* 802E3FCC 002AD58C  48 00 01 89 */	bl bta_hh_find_cb
/* 802E3FD0 002AD590  7C 66 1B 78 */	mr r6, r3
/* 802E3FD4 002AD594  48 00 00 5C */	b .L_802E4030
.L_802E3FD8:
/* 802E3FD8 002AD598  28 00 17 0A */	cmplwi r0, 0x170a
/* 802E3FDC 002AD59C  40 82 00 38 */	bne .L_802E4014
/* 802E3FE0 002AD5A0  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 802E3FE4 002AD5A4  28 00 00 0B */	cmplwi r0, 0xb
/* 802E3FE8 002AD5A8  40 82 00 14 */	bne .L_802E3FFC
/* 802E3FEC 002AD5AC  38 63 00 08 */	addi r3, r3, 0x8
/* 802E3FF0 002AD5B0  48 00 01 65 */	bl bta_hh_find_cb
/* 802E3FF4 002AD5B4  7C 66 1B 78 */	mr r6, r3
/* 802E3FF8 002AD5B8  48 00 00 38 */	b .L_802E4030
.L_802E3FFC:
/* 802E3FFC 002AD5BC  3C 80 80 5C */	lis r4, lbl_805BF7C8@ha
/* 802E4000 002AD5C0  A0 03 00 06 */	lhz r0, 0x6(r3)
/* 802E4004 002AD5C4  38 84 F7 C8 */	addi r4, r4, lbl_805BF7C8@l
/* 802E4008 002AD5C8  7C 64 02 14 */	add r3, r4, r0
/* 802E400C 002AD5CC  88 C3 02 14 */	lbz r6, 0x214(r3)
/* 802E4010 002AD5D0  48 00 00 20 */	b .L_802E4030
.L_802E4014:
/* 802E4014 002AD5D4  A0 03 00 06 */	lhz r0, 0x6(r3)
/* 802E4018 002AD5D8  28 00 00 10 */	cmplwi r0, 0x10
/* 802E401C 002AD5DC  40 80 00 14 */	bge .L_802E4030
/* 802E4020 002AD5E0  3C 60 80 5C */	lis r3, lbl_805BF7C8@ha
/* 802E4024 002AD5E4  38 63 F7 C8 */	addi r3, r3, lbl_805BF7C8@l
/* 802E4028 002AD5E8  7C 63 02 14 */	add r3, r3, r0
/* 802E402C 002AD5EC  88 C3 02 14 */	lbz r6, 0x214(r3)
.L_802E4030:
/* 802E4030 002AD5F0  54 C0 06 3E */	clrlwi r0, r6, 24
/* 802E4034 002AD5F4  28 00 00 10 */	cmplwi r0, 0x10
/* 802E4038 002AD5F8  41 82 00 18 */	beq .L_802E4050
/* 802E403C 002AD5FC  3C 60 80 5C */	lis r3, lbl_805BF7C8@ha
/* 802E4040 002AD600  54 C0 2C F4 */	clrlslwi r0, r6, 24, 5
/* 802E4044 002AD604  38 63 F7 C8 */	addi r3, r3, lbl_805BF7C8@l
/* 802E4048 002AD608  7C 63 02 14 */	add r3, r3, r0
/* 802E404C 002AD60C  3B E3 00 10 */	addi r31, r3, 0x10
.L_802E4050:
/* 802E4050 002AD610  88 0D B5 F8 */	lbz r0, lbl_80667778@sda21(r13)
/* 802E4054 002AD614  28 00 00 05 */	cmplwi r0, 0x5
/* 802E4058 002AD618  41 80 00 1C */	blt .L_802E4074
/* 802E405C 002AD61C  3C 80 80 54 */	lis r4, lbl_8054479C@ha
/* 802E4060 002AD620  A0 BE 00 06 */	lhz r5, 0x6(r30)
/* 802E4064 002AD624  38 84 47 9C */	addi r4, r4, lbl_8054479C@l
/* 802E4068 002AD628  54 C6 06 3E */	clrlwi r6, r6, 24
/* 802E406C 002AD62C  38 60 05 04 */	li r3, 0x504
/* 802E4070 002AD630  4B FF 9F 71 */	bl LogMsg_2
.L_802E4074:
/* 802E4074 002AD634  A0 9E 00 00 */	lhz r4, 0x0(r30)
/* 802E4078 002AD638  7F E3 FB 78 */	mr r3, r31
/* 802E407C 002AD63C  7F C5 F3 78 */	mr r5, r30
/* 802E4080 002AD640  4B FF FB 81 */	bl bta_hh_sm_execute
.L_802E4084:
/* 802E4084 002AD644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E4088 002AD648  38 60 00 01 */	li r3, 0x1
/* 802E408C 002AD64C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802E4090 002AD650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4094 002AD654  7C 08 03 A6 */	mtlr r0
/* 802E4098 002AD658  38 21 00 10 */	addi r1, r1, 0x10
/* 802E409C 002AD65C  4E 80 00 20 */	blr
.endfn bta_hh_hdl_event

.fn bta_hh_evt_code, global
/* 802E40A0 002AD660  38 03 E9 00 */	addi r0, r3, -0x1700
/* 802E40A4 002AD664  3C 80 80 54 */	lis r4, lbl_805446C0@ha
/* 802E40A8 002AD668  28 00 00 0F */	cmplwi r0, 0xf
/* 802E40AC 002AD66C  38 84 46 C0 */	addi r4, r4, lbl_805446C0@l
/* 802E40B0 002AD670  41 81 00 9C */	bgt .L_802E414C
/* 802E40B4 002AD674  3C 60 80 54 */	lis r3, jumptable_80544960@ha
/* 802E40B8 002AD678  54 00 10 3A */	slwi r0, r0, 2
/* 802E40BC 002AD67C  38 63 49 60 */	addi r3, r3, jumptable_80544960@l
/* 802E40C0 002AD680  7C 63 00 2E */	lwzx r3, r3, r0
/* 802E40C4 002AD684  7C 69 03 A6 */	mtctr r3
/* 802E40C8 002AD688  4E 80 04 20 */	bctr
.L_802E40CC:
/* 802E40CC 002AD68C  38 64 01 08 */	addi r3, r4, 0x108
/* 802E40D0 002AD690  4E 80 00 20 */	blr
.L_802E40D4:
/* 802E40D4 002AD694  38 64 01 20 */	addi r3, r4, 0x120
/* 802E40D8 002AD698  4E 80 00 20 */	blr
.L_802E40DC:
/* 802E40DC 002AD69C  38 64 01 38 */	addi r3, r4, 0x138
/* 802E40E0 002AD6A0  4E 80 00 20 */	blr
.L_802E40E4:
/* 802E40E4 002AD6A4  38 64 01 4C */	addi r3, r4, 0x14c
/* 802E40E8 002AD6A8  4E 80 00 20 */	blr
.L_802E40EC:
/* 802E40EC 002AD6AC  38 64 01 64 */	addi r3, r4, 0x164
/* 802E40F0 002AD6B0  4E 80 00 20 */	blr
.L_802E40F4:
/* 802E40F4 002AD6B4  38 64 01 78 */	addi r3, r4, 0x178
/* 802E40F8 002AD6B8  4E 80 00 20 */	blr
.L_802E40FC:
/* 802E40FC 002AD6BC  38 64 01 90 */	addi r3, r4, 0x190
/* 802E4100 002AD6C0  4E 80 00 20 */	blr
.L_802E4104:
/* 802E4104 002AD6C4  38 64 01 A8 */	addi r3, r4, 0x1a8
/* 802E4108 002AD6C8  4E 80 00 20 */	blr
.L_802E410C:
/* 802E410C 002AD6CC  38 64 01 BC */	addi r3, r4, 0x1bc
/* 802E4110 002AD6D0  4E 80 00 20 */	blr
.L_802E4114:
/* 802E4114 002AD6D4  38 64 01 D4 */	addi r3, r4, 0x1d4
/* 802E4118 002AD6D8  4E 80 00 20 */	blr
.L_802E411C:
/* 802E411C 002AD6DC  38 64 01 F0 */	addi r3, r4, 0x1f0
/* 802E4120 002AD6E0  4E 80 00 20 */	blr
.L_802E4124:
/* 802E4124 002AD6E4  38 64 02 04 */	addi r3, r4, 0x204
/* 802E4128 002AD6E8  4E 80 00 20 */	blr
.L_802E412C:
/* 802E412C 002AD6EC  38 64 02 1C */	addi r3, r4, 0x21c
/* 802E4130 002AD6F0  4E 80 00 20 */	blr
.L_802E4134:
/* 802E4134 002AD6F4  38 64 02 38 */	addi r3, r4, 0x238
/* 802E4138 002AD6F8  4E 80 00 20 */	blr
.L_802E413C:
/* 802E413C 002AD6FC  38 64 02 50 */	addi r3, r4, 0x250
/* 802E4140 002AD700  4E 80 00 20 */	blr
.L_802E4144:
/* 802E4144 002AD704  38 64 02 68 */	addi r3, r4, 0x268
/* 802E4148 002AD708  4E 80 00 20 */	blr
.L_802E414C:
/* 802E414C 002AD70C  38 64 02 84 */	addi r3, r4, 0x284
/* 802E4150 002AD710  4E 80 00 20 */	blr
.endfn bta_hh_evt_code

# 0x8050E1B8 - 0x8050E240
.rodata
.balign 8
.sym lbl_8050E1B8, global
	.4byte bta_hh_api_disc_act
	.4byte bta_hh_open_act
	.4byte bta_hh_close_act
	.4byte bta_hh_data_act
	.4byte bta_hh_ctrl_dat_act
	.4byte bta_hh_handsk_act
	.4byte bta_hh_start_sdp
	.4byte bta_hh_sdp_cmpl
	.4byte bta_hh_write_dev_act
	.4byte bta_hh_get_dscp_act
	.4byte bta_hh_maint_dev_act
	.4byte bta_hh_open_cmpl_act
.sym lbl_8050E1E8, global
	.4byte 0x06020C01
	.4byte 0x01020201
	.4byte 0x0C010C01
	.4byte 0x0C010C01
	.4byte 0x0C010C01
	.4byte 0x0A010C01
.sym lbl_8050E200, global
	.4byte 0x0C020C01
	.4byte 0x01020201
	.4byte 0x0C020C02
	.4byte 0x0C020702
	.4byte 0x0C020C02
	.4byte 0x0A010B03
.sym lbl_8050E218, global
	.4byte 0x0C030003
	.4byte 0x01030201
	.4byte 0x03030403
	.4byte 0x05030C03
	.4byte 0x08030903
	.4byte 0x0A030C03
.sym lbl_8050E230, global
	.4byte lbl_8050E1E8
	.4byte lbl_8050E200
	.4byte lbl_8050E218
	.4byte 0x00000000

# 0x805446C0 - 0x805449A0
.data
.balign 8
.sym lbl_805446C0, global
	.4byte 0x77726F6E
	.4byte 0x67206465
	.4byte 0x76696365
	.4byte 0x2068616E
	.4byte 0x646C653A
	.4byte 0x205B2564
	.4byte 0x5D000000
	.4byte 0x4254415F
	.4byte 0x48485F4E
	.4byte 0x554C4C5F
	.4byte 0x53540000
	.4byte 0x4254415F
	.4byte 0x48485F49
	.4byte 0x444C455F
	.4byte 0x53540000
	.4byte 0x4254415F
	.4byte 0x48485F57
	.4byte 0x345F434F
	.4byte 0x4E4E5F53
	.4byte 0x54000000
	.4byte 0x4254415F
	.4byte 0x48485F43
	.4byte 0x4F4E4E5F
	.4byte 0x53540000
	.4byte 0x756E6B6E
	.4byte 0x6F776E20
	.4byte 0x48494420
	.4byte 0x486F7374
	.4byte 0x20737461
	.4byte 0x74650000
	.4byte 0x6274615F
	.4byte 0x68685F73
	.4byte 0x6D5F6578
	.4byte 0x65637574
	.4byte 0x653A2053
	.4byte 0x74617465
	.4byte 0x20307825
	.4byte 0x30327820
	.4byte 0x5B25735D
	.4byte 0x2C204576
	.4byte 0x656E7420
	.4byte 0x5B25735D
	.4byte 0x00000000
	.4byte 0x48482053
	.4byte 0x74617465
	.4byte 0x20436861
	.4byte 0x6E67653A
	.4byte 0x205B2573
	.4byte 0x5D202D3E
	.4byte 0x205B2573
	.4byte 0x5D206166
	.4byte 0x74657220
	.4byte 0x4576656E
	.4byte 0x74205B25
	.4byte 0x735D0000
.sym lbl_8054479C, global
	.4byte 0x6274615F
	.4byte 0x68685F68
	.4byte 0x646C5F65
	.4byte 0x76656E74
	.4byte 0x3A3A2068
	.4byte 0x616E646C
	.4byte 0x65203D20
	.4byte 0x25642064
	.4byte 0x65765F63
	.4byte 0x625B2564
	.4byte 0x5D200000
	.4byte 0x4254415F
	.4byte 0x48485F41
	.4byte 0x50495F44
	.4byte 0x49534142
	.4byte 0x4C455F45
	.4byte 0x56540000
	.4byte 0x4254415F
	.4byte 0x48485F41
	.4byte 0x50495F45
	.4byte 0x4E41424C
	.4byte 0x455F4556
	.4byte 0x54000000
	.4byte 0x4254415F
	.4byte 0x48485F41
	.4byte 0x50495F4F
	.4byte 0x50454E5F
	.4byte 0x45565400
	.4byte 0x4254415F
	.4byte 0x48485F41
	.4byte 0x50495F43
	.4byte 0x4C4F5345
	.4byte 0x5F455654
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F49
	.4byte 0x4E545F4F
	.4byte 0x50454E5F
	.4byte 0x45565400
	.4byte 0x4254415F
	.4byte 0x48485F49
	.4byte 0x4E545F43
	.4byte 0x4C4F5345
	.4byte 0x5F455654
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F49
	.4byte 0x4E545F48
	.4byte 0x414E4453
	.4byte 0x4B5F4556
	.4byte 0x54000000
	.4byte 0x4254415F
	.4byte 0x48485F49
	.4byte 0x4E545F44
	.4byte 0x4154415F
	.4byte 0x45565400
	.4byte 0x4254415F
	.4byte 0x48485F49
	.4byte 0x4E545F43
	.4byte 0x54524C5F
	.4byte 0x44415441
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F41
	.4byte 0x50495F57
	.4byte 0x52495445
	.4byte 0x5F444556
	.4byte 0x5F455654
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F53
	.4byte 0x44505F43
	.4byte 0x4D504C5F
	.4byte 0x45565400
	.4byte 0x4254415F
	.4byte 0x48485F44
	.4byte 0x4953435F
	.4byte 0x434D504C
	.4byte 0x5F455654
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F41
	.4byte 0x50495F4D
	.4byte 0x41494E54
	.4byte 0x5F444556
	.4byte 0x5F455654
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F41
	.4byte 0x50495F47
	.4byte 0x45545F44
	.4byte 0x5343505F
	.4byte 0x45565400
	.4byte 0x4254415F
	.4byte 0x48485F4F
	.4byte 0x50454E5F
	.4byte 0x434D504C
	.4byte 0x5F455654
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F41
	.4byte 0x50495F47
	.4byte 0x45545F41
	.4byte 0x434C5F51
	.4byte 0x5F455654
	.4byte 0x00000000
	.4byte 0x756E6B6E
	.4byte 0x6F776E20
	.4byte 0x48494420
	.4byte 0x486F7374
	.4byte 0x20657665
	.4byte 0x6E742063
	.4byte 0x6F646500

.obj jumptable_80544960, local
	.rel bta_hh_evt_code, .L_802E40DC
	.rel bta_hh_evt_code, .L_802E40E4
	.rel bta_hh_evt_code, .L_802E40EC
	.rel bta_hh_evt_code, .L_802E40F4
	.rel bta_hh_evt_code, .L_802E4104
	.rel bta_hh_evt_code, .L_802E410C
	.rel bta_hh_evt_code, .L_802E40FC
	.rel bta_hh_evt_code, .L_802E411C
	.rel bta_hh_evt_code, .L_802E4114
	.rel bta_hh_evt_code, .L_802E4134
	.rel bta_hh_evt_code, .L_802E412C
	.rel bta_hh_evt_code, .L_802E413C
	.rel bta_hh_evt_code, .L_802E40D4
	.rel bta_hh_evt_code, .L_802E40CC
	.rel bta_hh_evt_code, .L_802E4144
	.rel bta_hh_evt_code, .L_802E4124
.endobj jumptable_80544960
