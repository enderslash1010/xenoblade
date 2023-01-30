.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.fn SFVOM_Init, global
/* 803CEC9C 0039825C  38 60 00 00 */	li r3, 0
/* 803CECA0 00398260  4E 80 00 20 */	blr 
.endfn SFVOM_Init

.fn SFVOM_Finish, global
/* 803CECA4 00398264  38 60 00 00 */	li r3, 0
/* 803CECA8 00398268  4E 80 00 20 */	blr 
.endfn SFVOM_Finish

.fn SFVOM_ExecServer, global
/* 803CECAC 0039826C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CECB0 00398270  7C 08 02 A6 */	mflr r0
/* 803CECB4 00398274  38 80 00 05 */	li r4, 5
/* 803CECB8 00398278  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CECBC 0039827C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CECC0 00398280  7C 7F 1B 78 */	mr r31, r3
/* 803CECC4 00398284  4B FF D9 B1 */	bl SFSET_GetCond
/* 803CECC8 00398288  2C 03 00 00 */	cmpwi r3, 0
/* 803CECCC 0039828C  40 82 00 0C */	bne .L_803CECD8
/* 803CECD0 00398290  38 60 00 00 */	li r3, 0
/* 803CECD4 00398294  48 00 00 B0 */	b .L_803CED84
.L_803CECD8:
/* 803CECD8 00398298  7F E3 FB 78 */	mr r3, r31
/* 803CECDC 0039829C  38 80 00 06 */	li r4, 6
/* 803CECE0 003982A0  4B FF FD 49 */	bl SFTRN_GetTermFlg
/* 803CECE4 003982A4  2C 03 00 01 */	cmpwi r3, 1
/* 803CECE8 003982A8  41 82 00 60 */	beq .L_803CED48
/* 803CECEC 003982AC  80 9F 21 78 */	lwz r4, 0x2178(r31)
/* 803CECF0 003982B0  7F E3 FB 78 */	mr r3, r31
/* 803CECF4 003982B4  4B FF 0E B5 */	bl SFBUF_GetTermFlg
/* 803CECF8 003982B8  2C 03 00 01 */	cmpwi r3, 1
/* 803CECFC 003982BC  40 82 00 4C */	bne .L_803CED48
/* 803CED00 003982C0  7F E3 FB 78 */	mr r3, r31
/* 803CED04 003982C4  38 80 00 0F */	li r4, 0xf
/* 803CED08 003982C8  4B FF D9 6D */	bl SFSET_GetCond
/* 803CED0C 003982CC  2C 03 00 00 */	cmpwi r3, 0
/* 803CED10 003982D0  40 82 00 0C */	bne .L_803CED1C
/* 803CED14 003982D4  38 00 00 01 */	li r0, 1
/* 803CED18 003982D8  48 00 00 18 */	b .L_803CED30
.L_803CED1C:
/* 803CED1C 003982DC  7F E3 FB 78 */	mr r3, r31
/* 803CED20 003982E0  4B FF F2 FD */	bl SFTIM_IsVideoTerm
/* 803CED24 003982E4  7C 03 00 D0 */	neg r0, r3
/* 803CED28 003982E8  7C 00 1B 78 */	or r0, r0, r3
/* 803CED2C 003982EC  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803CED30:
/* 803CED30 003982F0  2C 00 00 00 */	cmpwi r0, 0
/* 803CED34 003982F4  41 82 00 14 */	beq .L_803CED48
/* 803CED38 003982F8  7F E3 FB 78 */	mr r3, r31
/* 803CED3C 003982FC  38 80 00 06 */	li r4, 6
/* 803CED40 00398300  38 A0 00 01 */	li r5, 1
/* 803CED44 00398304  4B FF FC D5 */	bl SFTRN_SetTermFlg
.L_803CED48:
/* 803CED48 00398308  7F E3 FB 78 */	mr r3, r31
/* 803CED4C 0039830C  38 80 00 06 */	li r4, 6
/* 803CED50 00398310  4B FF FC B9 */	bl SFTRN_GetPrepFlg
/* 803CED54 00398314  2C 03 00 01 */	cmpwi r3, 1
/* 803CED58 00398318  41 82 00 28 */	beq .L_803CED80
/* 803CED5C 0039831C  80 9F 21 78 */	lwz r4, 0x2178(r31)
/* 803CED60 00398320  7F E3 FB 78 */	mr r3, r31
/* 803CED64 00398324  4B FF 0E 0D */	bl SFBUF_GetPrepFlg
/* 803CED68 00398328  2C 03 00 01 */	cmpwi r3, 1
/* 803CED6C 0039832C  40 82 00 14 */	bne .L_803CED80
/* 803CED70 00398330  7F E3 FB 78 */	mr r3, r31
/* 803CED74 00398334  38 80 00 06 */	li r4, 6
/* 803CED78 00398338  38 A0 00 01 */	li r5, 1
/* 803CED7C 0039833C  4B FF FC 7D */	bl SFTRN_SetPrepFlg
.L_803CED80:
/* 803CED80 00398340  38 60 00 00 */	li r3, 0
.L_803CED84:
/* 803CED84 00398344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CED88 00398348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CED8C 0039834C  7C 08 03 A6 */	mtlr r0
/* 803CED90 00398350  38 21 00 10 */	addi r1, r1, 0x10
/* 803CED94 00398354  4E 80 00 20 */	blr 
.endfn SFVOM_ExecServer

.fn SFVOM_Create, global
/* 803CED98 00398358  38 60 00 00 */	li r3, 0
/* 803CED9C 0039835C  4E 80 00 20 */	blr 
.endfn SFVOM_Create

.fn SFVOM_Destroy, global
/* 803CEDA0 00398360  38 60 00 00 */	li r3, 0
/* 803CEDA4 00398364  4E 80 00 20 */	blr 
.endfn SFVOM_Destroy

.fn SFVOM_RequestStop, global
/* 803CEDA8 00398368  38 60 00 00 */	li r3, 0
/* 803CEDAC 0039836C  4E 80 00 20 */	blr 
.endfn SFVOM_RequestStop

.fn SFVOM_Start, global
/* 803CEDB0 00398370  38 60 00 00 */	li r3, 0
/* 803CEDB4 00398374  4E 80 00 20 */	blr 
.endfn SFVOM_Start

.fn SFVOM_Stop, global
/* 803CEDB8 00398378  38 60 00 00 */	li r3, 0
/* 803CEDBC 0039837C  4E 80 00 20 */	blr 
.endfn SFVOM_Stop

.fn SFVOM_Pause, global
/* 803CEDC0 00398380  38 60 00 00 */	li r3, 0
/* 803CEDC4 00398384  4E 80 00 20 */	blr 
.endfn SFVOM_Pause

.fn SFVOM_GetWrite, global
/* 803CEDC8 00398388  3C 80 FF 00 */	lis r4, 0xFF000701@ha
/* 803CEDCC 0039838C  38 84 07 01 */	addi r4, r4, 0xFF000701@l
/* 803CEDD0 00398390  4B FF 1E 84 */	b SFLIB_SetErr
.endfn SFVOM_GetWrite

.fn SFVOM_AddWrite, global
/* 803CEDD4 00398394  3C 80 FF 00 */	lis r4, 0xFF000701@ha
/* 803CEDD8 00398398  38 84 07 01 */	addi r4, r4, 0xFF000701@l
/* 803CEDDC 0039839C  4B FF 1E 78 */	b SFLIB_SetErr
.endfn SFVOM_AddWrite

.fn SFVOM_GetRead, global
/* 803CEDE0 003983A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CEDE4 003983A4  7C 08 02 A6 */	mflr r0
/* 803CEDE8 003983A8  7C 87 23 78 */	mr r7, r4
/* 803CEDEC 003983AC  7C A6 2B 78 */	mr r6, r5
/* 803CEDF0 003983B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CEDF4 003983B4  80 03 00 50 */	lwz r0, 0x50(r3)
/* 803CEDF8 003983B8  2C 00 00 03 */	cmpwi r0, 3
/* 803CEDFC 003983BC  41 82 00 1C */	beq .L_803CEE18
/* 803CEE00 003983C0  2C 00 00 04 */	cmpwi r0, 4
/* 803CEE04 003983C4  41 82 00 14 */	beq .L_803CEE18
/* 803CEE08 003983C8  38 00 00 00 */	li r0, 0
/* 803CEE0C 003983CC  38 60 00 00 */	li r3, 0
/* 803CEE10 003983D0  90 04 00 00 */	stw r0, 0(r4)
/* 803CEE14 003983D4  48 00 00 20 */	b .L_803CEE34
.L_803CEE18:
/* 803CEE18 003983D8  80 83 21 78 */	lwz r4, 0x2178(r3)
/* 803CEE1C 003983DC  7C E5 3B 78 */	mr r5, r7
/* 803CEE20 003983E0  4B FF 0C A5 */	bl SFBUF_VfrmGetRead
/* 803CEE24 003983E4  2C 03 00 00 */	cmpwi r3, 0
/* 803CEE28 003983E8  41 82 00 08 */	beq .L_803CEE30
/* 803CEE2C 003983EC  48 00 00 08 */	b .L_803CEE34
.L_803CEE30:
/* 803CEE30 003983F0  38 60 00 00 */	li r3, 0
.L_803CEE34:
/* 803CEE34 003983F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CEE38 003983F8  7C 08 03 A6 */	mtlr r0
/* 803CEE3C 003983FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803CEE40 00398400  4E 80 00 20 */	blr 
.endfn SFVOM_GetRead

.fn SFVOM_AddRead, global
/* 803CEE44 00398404  7C 80 23 78 */	mr r0, r4
/* 803CEE48 00398408  80 83 21 78 */	lwz r4, 0x2178(r3)
/* 803CEE4C 0039840C  7C A6 2B 78 */	mr r6, r5
/* 803CEE50 00398410  7C 05 03 78 */	mr r5, r0
/* 803CEE54 00398414  4B FF 0C A0 */	b SFBUF_VfrmAddRead
.endfn SFVOM_AddRead

.fn SFVOM_Seek, global
/* 803CEE58 00398418  38 60 00 00 */	li r3, 0
/* 803CEE5C 0039841C  4E 80 00 20 */	blr 
.endfn SFVOM_Seek

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_805206B0
lbl_805206B0:
	.4byte SFVOM_Init
	.4byte SFVOM_Finish
	.4byte SFVOM_ExecServer
	.4byte SFVOM_Create
	.4byte SFVOM_Destroy
	.4byte SFVOM_RequestStop
	.4byte SFVOM_Start
	.4byte SFVOM_Stop
	.4byte SFVOM_Pause
	.4byte SFVOM_GetWrite
	.4byte SFVOM_AddWrite
	.4byte SFVOM_GetRead
	.4byte SFVOM_AddRead
	.4byte SFVOM_Seek