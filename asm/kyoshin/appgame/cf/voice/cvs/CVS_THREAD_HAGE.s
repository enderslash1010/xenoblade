.include "macros.inc"
.file "kyoshin/appgame/cf/voice/cvs/CVS_THREAD_HAGE.o"

# 0x8001ACF0 - 0x8001AD3C
.section extab, "a"
.balign 4

.obj "@etb_8001ACF0", local
.hidden "@etb_8001ACF0"
	.4byte 0x20180000
	.4byte 0x00000094
	.4byte 0x00000018
	.4byte 0x000000BC
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x90000000
	.4byte 0x00000000
	.4byte 0x000000AC
	.4byte 0x00000008
	.4byte 0x8D000008
.endobj "@etb_8001ACF0"

.obj "@etb_8001AD1C", local
.hidden "@etb_8001AD1C"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001AD1C"

.obj "@etb_8001AD24", local
.hidden "@etb_8001AD24"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AD24"

.obj "@etb_8001AD2C", local
.hidden "@etb_8001AD2C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AD2C"

.obj "@etb_8001AD34", local
.hidden "@etb_8001AD34"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AD34"

# 0x80032B94 - 0x80032BD0
.section extabindex, "a"
.balign 4

.obj "@eti_80032B94", local
.hidden "@eti_80032B94"
	.4byte fn_802A6E84
	.4byte 0x00000108
	.4byte "@etb_8001ACF0"
.endobj "@eti_80032B94"

.obj "@eti_80032BA0", local
.hidden "@eti_80032BA0"
	.4byte fn_802A6F8C
	.4byte 0x0000013C
	.4byte "@etb_8001AD1C"
.endobj "@eti_80032BA0"

.obj "@eti_80032BAC", local
.hidden "@eti_80032BAC"
	.4byte fn_802A70C8
	.4byte 0x000000C4
	.4byte "@etb_8001AD24"
.endobj "@eti_80032BAC"

.obj "@eti_80032BB8", local
.hidden "@eti_80032BB8"
	.4byte fn_802A718C
	.4byte 0x00000048
	.4byte "@etb_8001AD2C"
.endobj "@eti_80032BB8"

.obj "@eti_80032BC4", local
.hidden "@eti_80032BC4"
	.4byte fn_802A71D4
	.4byte 0x00000078
	.4byte "@etb_8001AD34"
.endobj "@eti_80032BC4"

# 0x802A6E84 - 0x802A7254
.text
.balign 4

.fn fn_802A6E84, global
/* 802A6E84 00270444  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A6E88 00270448  7C 08 02 A6 */	mflr r0
/* 802A6E8C 0027044C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A6E90 00270450  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A6E94 00270454  7C 3F 0B 78 */	mr r31, r1
/* 802A6E98 00270458  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A6E9C 0027045C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802A6EA0 00270460  7C 9D 23 78 */	mr r29, r4
/* 802A6EA4 00270464  93 81 00 20 */	stw r28, 0x20(r1)
/* 802A6EA8 00270468  7C 7C 1B 78 */	mr r28, r3
/* 802A6EAC 0027046C  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A6EB0 00270470  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 802A6EB4 00270474  40 82 00 0C */	bne .L_802A6EC0
/* 802A6EB8 00270478  38 60 00 00 */	li r3, 0x0
/* 802A6EBC 0027047C  48 00 00 A8 */	b .L_802A6F64
.L_802A6EC0:
/* 802A6EC0 00270480  80 04 3F 00 */	lwz r0, 0x3f00(r4)
/* 802A6EC4 00270484  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 802A6EC8 00270488  40 82 00 0C */	bne .L_802A6ED4
/* 802A6ECC 0027048C  38 60 00 00 */	li r3, 0x0
/* 802A6ED0 00270490  48 00 00 94 */	b .L_802A6F64
.L_802A6ED4:
/* 802A6ED4 00270494  38 60 00 F0 */	li r3, 0xf0
/* 802A6ED8 00270498  38 80 00 01 */	li r4, 0x1
/* 802A6EDC 0027049C  4B FF C4 31 */	bl fn_802A330C
/* 802A6EE0 002704A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A6EE4 002704A4  40 82 00 0C */	bne .L_802A6EF0
/* 802A6EE8 002704A8  38 60 00 00 */	li r3, 0x0
/* 802A6EEC 002704AC  48 00 00 78 */	b .L_802A6F64
.L_802A6EF0:
/* 802A6EF0 002704B0  38 60 00 28 */	li r3, 0x28
/* 802A6EF4 002704B4  4B FF C5 F1 */	bl fn_802A34E4
/* 802A6EF8 002704B8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A6EFC 002704BC  7C 7E 1B 78 */	mr r30, r3
/* 802A6F00 002704C0  40 82 00 0C */	bne .L_802A6F0C
/* 802A6F04 002704C4  38 60 00 00 */	li r3, 0x0
/* 802A6F08 002704C8  48 00 00 5C */	b .L_802A6F64
.L_802A6F0C:
/* 802A6F0C 002704CC  41 82 00 34 */	beq .L_802A6F40
/* 802A6F10 002704D0  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A6F14 002704D4  4B FF CB 6D */	bl fn_802A3A80
/* 802A6F18 002704D8  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_HAGE@ha
/* 802A6F1C 002704DC  38 63 D3 5C */	addi r3, r3, __vt__cf_CVS_THREAD_HAGE@l
/* 802A6F20 002704E0  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802A6F24 002704E4  93 9E 00 20 */	stw r28, 0x20(r30)
/* 802A6F28 002704E8  93 BE 00 24 */	stw r29, 0x24(r30)
/* 802A6F2C 002704EC  48 00 00 14 */	b .L_802A6F40
/* 802A6F30 002704F0  38 60 00 00 */	li r3, 0x0
/* 802A6F34 002704F4  38 80 00 00 */	li r4, 0x0
/* 802A6F38 002704F8  38 A0 00 00 */	li r5, 0x0
/* 802A6F3C 002704FC  48 01 4C 81 */	bl __throw
.L_802A6F40:
/* 802A6F40 00270500  3C A0 80 54 */	lis r5, lbl_8053D338@ha
/* 802A6F44 00270504  7F C3 F3 78 */	mr r3, r30
/* 802A6F48 00270508  38 A5 D3 38 */	addi r5, r5, lbl_8053D338@l
/* 802A6F4C 0027050C  80 05 00 04 */	lwz r0, 0x4(r5)
/* 802A6F50 00270510  80 85 00 00 */	lwz r4, 0x0(r5)
/* 802A6F54 00270514  90 9E 00 00 */	stw r4, 0x0(r30)
/* 802A6F58 00270518  90 1E 00 04 */	stw r0, 0x4(r30)
/* 802A6F5C 0027051C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 802A6F60 00270520  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802A6F64:
/* 802A6F64 00270524  7F EA FB 78 */	mr r10, r31
/* 802A6F68 00270528  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802A6F6C 0027052C  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802A6F70 00270530  83 AA 00 24 */	lwz r29, 0x24(r10)
/* 802A6F74 00270534  83 8A 00 20 */	lwz r28, 0x20(r10)
/* 802A6F78 00270538  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802A6F7C 0027053C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802A6F80 00270540  7D 41 53 78 */	mr r1, r10
/* 802A6F84 00270544  7C 08 03 A6 */	mtlr r0
/* 802A6F88 00270548  4E 80 00 20 */	blr
.endfn fn_802A6E84

.fn fn_802A6F8C, global
/* 802A6F8C 0027054C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A6F90 00270550  7C 08 02 A6 */	mflr r0
/* 802A6F94 00270554  3C A0 80 54 */	lis r5, lbl_8053D344@ha
/* 802A6F98 00270558  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A6F9C 0027055C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A6FA0 00270560  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A6FA4 00270564  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A6FA8 00270568  7C 7D 1B 78 */	mr r29, r3
/* 802A6FAC 0027056C  84 85 D3 44 */	lwzu r4, lbl_8053D344@l(r5)
/* 802A6FB0 00270570  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 802A6FB4 00270574  80 05 00 04 */	lwz r0, 0x4(r5)
/* 802A6FB8 00270578  90 03 00 04 */	stw r0, 0x4(r3)
/* 802A6FBC 0027057C  2C 06 00 00 */	cmpwi r6, 0x0
/* 802A6FC0 00270580  90 83 00 00 */	stw r4, 0x0(r3)
/* 802A6FC4 00270584  80 05 00 08 */	lwz r0, 0x8(r5)
/* 802A6FC8 00270588  90 03 00 08 */	stw r0, 0x8(r3)
/* 802A6FCC 0027058C  41 82 00 E0 */	beq .L_802A70AC
/* 802A6FD0 00270590  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802A6FD4 00270594  2C 00 00 00 */	cmpwi r0, 0x0
/* 802A6FD8 00270598  41 82 00 D4 */	beq .L_802A70AC
/* 802A6FDC 0027059C  81 86 00 00 */	lwz r12, 0x0(r6)
/* 802A6FE0 002705A0  7C C3 33 78 */	mr r3, r6
/* 802A6FE4 002705A4  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A6FE8 002705A8  7D 89 03 A6 */	mtctr r12
/* 802A6FEC 002705AC  4E 80 04 21 */	bctrl
/* 802A6FF0 002705B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A6FF4 002705B4  40 82 00 B8 */	bne .L_802A70AC
/* 802A6FF8 002705B8  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802A6FFC 002705BC  48 00 07 ED */	bl fn_802A77E8
/* 802A7000 002705C0  7C 7F 1B 78 */	mr r31, r3
/* 802A7004 002705C4  3B C0 FF FF */	li r30, -0x1
/* 802A7008 002705C8  48 00 00 64 */	b .L_802A706C
.L_802A700C:
/* 802A700C 002705CC  38 60 00 04 */	li r3, 0x4
/* 802A7010 002705D0  48 18 EE ED */	bl mtRand__2mlFi
/* 802A7014 002705D4  2C 03 00 01 */	cmpwi r3, 0x1
/* 802A7018 002705D8  41 82 00 40 */	beq .L_802A7058
/* 802A701C 002705DC  2C 03 00 02 */	cmpwi r3, 0x2
/* 802A7020 002705E0  41 82 00 40 */	beq .L_802A7060
/* 802A7024 002705E4  2C 03 00 03 */	cmpwi r3, 0x3
/* 802A7028 002705E8  41 82 00 40 */	beq .L_802A7068
/* 802A702C 002705EC  7F E3 FB 78 */	mr r3, r31
/* 802A7030 002705F0  48 00 08 21 */	bl fn_802A7850
/* 802A7034 002705F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A7038 002705F8  41 82 00 34 */	beq .L_802A706C
/* 802A703C 002705FC  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802A7040 00270600  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 802A7044 00270604  48 00 0B 4D */	bl fn_802A7B90
/* 802A7048 00270608  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A704C 0027060C  40 82 00 20 */	bne .L_802A706C
/* 802A7050 00270610  3B DF 0C 1C */	addi r30, r31, 0xc1c
/* 802A7054 00270614  48 00 00 18 */	b .L_802A706C
.L_802A7058:
/* 802A7058 00270618  3B C0 0C 24 */	li r30, 0xc24
/* 802A705C 0027061C  48 00 00 10 */	b .L_802A706C
.L_802A7060:
/* 802A7060 00270620  3B C0 0C 25 */	li r30, 0xc25
/* 802A7064 00270624  48 00 00 08 */	b .L_802A706C
.L_802A7068:
/* 802A7068 00270628  3B C0 0C 26 */	li r30, 0xc26
.L_802A706C:
/* 802A706C 0027062C  2C 1E FF FF */	cmpwi r30, -0x1
/* 802A7070 00270630  41 82 FF 9C */	beq .L_802A700C
/* 802A7074 00270634  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 802A7078 00270638  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A707C 0027063C  41 82 00 08 */	beq .L_802A7084
/* 802A7080 00270640  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A7084:
/* 802A7084 00270644  7F A3 EB 78 */	mr r3, r29
/* 802A7088 00270648  7F C5 F3 78 */	mr r5, r30
/* 802A708C 0027064C  4B FF CB B9 */	bl fn_802A3C44
/* 802A7090 00270650  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A7094 00270654  40 82 00 18 */	bne .L_802A70AC
/* 802A7098 00270658  81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 802A709C 0027065C  7F A3 EB 78 */	mr r3, r29
/* 802A70A0 00270660  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A70A4 00270664  7D 89 03 A6 */	mtctr r12
/* 802A70A8 00270668  4E 80 04 21 */	bctrl
.L_802A70AC:
/* 802A70AC 0027066C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A70B0 00270670  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A70B4 00270674  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A70B8 00270678  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A70BC 0027067C  7C 08 03 A6 */	mtlr r0
/* 802A70C0 00270680  38 21 00 20 */	addi r1, r1, 0x20
/* 802A70C4 00270684  4E 80 00 20 */	blr
.endfn fn_802A6F8C

.fn fn_802A70C8, global
/* 802A70C8 00270688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A70CC 0027068C  7C 08 02 A6 */	mflr r0
/* 802A70D0 00270690  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A70D4 00270694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A70D8 00270698  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A70DC 0027069C  7C 7E 1B 78 */	mr r30, r3
/* 802A70E0 002706A0  4B FF CD A9 */	bl fn_802A3E88
/* 802A70E4 002706A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A70E8 002706A8  40 82 00 8C */	bne .L_802A7174
/* 802A70EC 002706AC  3C A0 80 54 */	lis r5, lbl_8053D350@ha
/* 802A70F0 002706B0  84 85 D3 50 */	lwzu r4, lbl_8053D350@l(r5)
/* 802A70F4 002706B4  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A70F8 002706B8  80 05 00 04 */	lwz r0, 0x4(r5)
/* 802A70FC 002706BC  90 1E 00 04 */	stw r0, 0x4(r30)
/* 802A7100 002706C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A7104 002706C4  90 9E 00 00 */	stw r4, 0x0(r30)
/* 802A7108 002706C8  80 05 00 08 */	lwz r0, 0x8(r5)
/* 802A710C 002706CC  90 1E 00 08 */	stw r0, 0x8(r30)
/* 802A7110 002706D0  41 82 00 64 */	beq .L_802A7174
/* 802A7114 002706D4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A7118 002706D8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A711C 002706DC  7D 89 03 A6 */	mtctr r12
/* 802A7120 002706E0  4E 80 04 21 */	bctrl
/* 802A7124 002706E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A7128 002706E8  40 82 00 4C */	bne .L_802A7174
/* 802A712C 002706EC  83 FE 00 24 */	lwz r31, 0x24(r30)
/* 802A7130 002706F0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A7134 002706F4  41 82 00 08 */	beq .L_802A713C
/* 802A7138 002706F8  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802A713C:
/* 802A713C 002706FC  38 60 00 02 */	li r3, 0x2
/* 802A7140 00270700  48 18 ED BD */	bl mtRand__2mlFi
/* 802A7144 00270704  7C 65 1B 78 */	mr r5, r3
/* 802A7148 00270708  7F C3 F3 78 */	mr r3, r30
/* 802A714C 0027070C  7F E4 FB 78 */	mr r4, r31
/* 802A7150 00270710  38 A5 0C 27 */	addi r5, r5, 0xc27
/* 802A7154 00270714  4B FF CA F1 */	bl fn_802A3C44
/* 802A7158 00270718  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A715C 0027071C  40 82 00 18 */	bne .L_802A7174
/* 802A7160 00270720  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802A7164 00270724  7F C3 F3 78 */	mr r3, r30
/* 802A7168 00270728  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A716C 0027072C  7D 89 03 A6 */	mtctr r12
/* 802A7170 00270730  4E 80 04 21 */	bctrl
.L_802A7174:
/* 802A7174 00270734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A7178 00270738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A717C 0027073C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A7180 00270740  7C 08 03 A6 */	mtlr r0
/* 802A7184 00270744  38 21 00 10 */	addi r1, r1, 0x10
/* 802A7188 00270748  4E 80 00 20 */	blr
.endfn fn_802A70C8

.fn fn_802A718C, global
/* 802A718C 0027074C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A7190 00270750  7C 08 02 A6 */	mflr r0
/* 802A7194 00270754  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A7198 00270758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A719C 0027075C  7C 7F 1B 78 */	mr r31, r3
/* 802A71A0 00270760  4B FF CC E9 */	bl fn_802A3E88
/* 802A71A4 00270764  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A71A8 00270768  40 82 00 18 */	bne .L_802A71C0
/* 802A71AC 0027076C  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A71B0 00270770  7F E3 FB 78 */	mr r3, r31
/* 802A71B4 00270774  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A71B8 00270778  7D 89 03 A6 */	mtctr r12
/* 802A71BC 0027077C  4E 80 04 21 */	bctrl
.L_802A71C0:
/* 802A71C0 00270780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A71C4 00270784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A71C8 00270788  7C 08 03 A6 */	mtlr r0
/* 802A71CC 0027078C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A71D0 00270790  4E 80 00 20 */	blr
.endfn fn_802A718C

.fn fn_802A71D4, global
/* 802A71D4 00270794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A71D8 00270798  7C 08 02 A6 */	mflr r0
/* 802A71DC 0027079C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A71E0 002707A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A71E4 002707A4  7C 9F 23 78 */	mr r31, r4
/* 802A71E8 002707A8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A71EC 002707AC  7C 7E 1B 78 */	mr r30, r3
/* 802A71F0 002707B0  4B FF C9 FD */	bl fn_802A3BEC
/* 802A71F4 002707B4  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A71F8 002707B8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A71FC 002707BC  41 82 00 08 */	beq .L_802A7204
/* 802A7200 002707C0  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A7204:
/* 802A7204 002707C4  7C 03 F8 40 */	cmplw r3, r31
/* 802A7208 002707C8  40 82 00 0C */	bne .L_802A7214
/* 802A720C 002707CC  38 00 00 00 */	li r0, 0x0
/* 802A7210 002707D0  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802A7214:
/* 802A7214 002707D4  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A7218 002707D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A721C 002707DC  41 82 00 08 */	beq .L_802A7224
/* 802A7220 002707E0  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A7224:
/* 802A7224 002707E4  7C 03 F8 40 */	cmplw r3, r31
/* 802A7228 002707E8  40 82 00 0C */	bne .L_802A7234
/* 802A722C 002707EC  38 00 00 00 */	li r0, 0x0
/* 802A7230 002707F0  90 1E 00 24 */	stw r0, 0x24(r30)
.L_802A7234:
/* 802A7234 002707F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A7238 002707F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A723C 002707FC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A7240 00270800  7C 08 03 A6 */	mtlr r0
/* 802A7244 00270804  38 21 00 10 */	addi r1, r1, 0x10
/* 802A7248 00270808  4E 80 00 20 */	blr
.endfn fn_802A71D4

.fn fn_802A724C, global
/* 802A724C 0027080C  38 60 00 F0 */	li r3, 0xf0
/* 802A7250 00270810  4E 80 00 20 */	blr
.endfn fn_802A724C

# 0x8050BDB0 - 0x8050BDC8
.rodata
.balign 8

.obj cf_CVS_THREAD_HAGE_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4356535F
	.4byte 0x54485245
	.4byte 0x41445F48
	.4byte 0x41474500
	.4byte 0x00000000

# 0x8053D338 - 0x8053D388
.data
.balign 8
.sym lbl_8053D338, global
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte fn_802A6F8C
.sym lbl_8053D344, global
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte fn_802A70C8
.sym lbl_8053D350, global
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte fn_802A718C

.obj __vt__cf_CVS_THREAD_HAGE, global
	.4byte __RTTI__cf_CVS_THREAD_HAGE
	.4byte 0x00000000
	.4byte fn_802A3B50
	.4byte fn_802A71D4
	.4byte fn_802A724C
	.4byte fn_802A1EA0
	.4byte fn_802A3740

.obj cf_CVS_THREAD_HAGE_hierarchy, global
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

# 0x80665600 - 0x80665608
.section .sdata, "wa"
.balign 8

.obj __RTTI__cf_CVS_THREAD_HAGE, global
	.4byte cf_CVS_THREAD_HAGE_typestr
	.4byte cf_CVS_THREAD_HAGE_hierarchy
