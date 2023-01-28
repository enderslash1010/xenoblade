.include "macros.inc"
.file "kyoshin/appgame/cf/ICamControlClassic.o"

# 0x80018528 - 0x80018570
.section extab, "a"
.balign 4

.obj "@etb_80018528", local
.hidden "@etb_80018528"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018528"

.obj "@etb_80018530", local
.hidden "@etb_80018530"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018530"

.obj "@etb_80018538", local
.hidden "@etb_80018538"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018538"

.obj "@etb_80018540", local
.hidden "@etb_80018540"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018540"

.obj "@etb_80018548", local
.hidden "@etb_80018548"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018548"

.obj "@etb_80018550", local
.hidden "@etb_80018550"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018550"

.obj "@etb_80018558", local
.hidden "@etb_80018558"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018558"

.obj "@etb_80018560", local
.hidden "@etb_80018560"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018560"

.obj "@etb_80018568", local
.hidden "@etb_80018568"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018568"

# 0x80030B78 - 0x80030BE4
.section extabindex, "a"
.balign 4

.obj "@eti_80030B78", local
.hidden "@eti_80030B78"
	.4byte fn_80274EB0
	.4byte 0x00000034
	.4byte "@etb_80018528"
.endobj "@eti_80030B78"

.obj "@eti_80030B84", local
.hidden "@eti_80030B84"
	.4byte fn_80274EE4
	.4byte 0x00000050
	.4byte "@etb_80018530"
.endobj "@eti_80030B84"

.obj "@eti_80030B90", local
.hidden "@eti_80030B90"
	.4byte fn_80274F34
	.4byte 0x00000060
	.4byte "@etb_80018538"
.endobj "@eti_80030B90"

.obj "@eti_80030B9C", local
.hidden "@eti_80030B9C"
	.4byte fn_80274F94
	.4byte 0x00000060
	.4byte "@etb_80018540"
.endobj "@eti_80030B9C"

.obj "@eti_80030BA8", local
.hidden "@eti_80030BA8"
	.4byte fn_80274FF4
	.4byte 0x00000034
	.4byte "@etb_80018548"
.endobj "@eti_80030BA8"

.obj "@eti_80030BB4", local
.hidden "@eti_80030BB4"
	.4byte fn_80275028
	.4byte 0x00000034
	.4byte "@etb_80018550"
.endobj "@eti_80030BB4"

.obj "@eti_80030BC0", local
.hidden "@eti_80030BC0"
	.4byte fn_8027505C
	.4byte 0x00000034
	.4byte "@etb_80018558"
.endobj "@eti_80030BC0"

.obj "@eti_80030BCC", local
.hidden "@eti_80030BCC"
	.4byte fn_80275090
	.4byte 0x00000034
	.4byte "@etb_80018560"
.endobj "@eti_80030BCC"

.obj "@eti_80030BD8", local
.hidden "@eti_80030BD8"
	.4byte fn_802750C4
	.4byte 0x00000078
	.4byte "@etb_80018568"
.endobj "@eti_80030BD8"

# 0x80274EA8 - 0x8027513C
.text
.balign 4

.fn fn_80274EA8, global
/* 80274EA8 0023E468  38 60 00 00 */	li r3, 0x0
/* 80274EAC 0023E46C  4B E1 21 04 */	b fn_80086FB0
.endfn fn_80274EA8

.fn fn_80274EB0, global
/* 80274EB0 0023E470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274EB4 0023E474  7C 08 02 A6 */	mflr r0
/* 80274EB8 0023E478  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274EBC 0023E47C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80274EC0 0023E480  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80274EC4 0023E484  7D 89 03 A6 */	mtctr r12
/* 80274EC8 0023E488  4E 80 04 21 */	bctrl
/* 80274ECC 0023E48C  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80274ED0 0023E490  54 03 2F FE */	extrwi r3, r0, 1, 4
/* 80274ED4 0023E494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274ED8 0023E498  7C 08 03 A6 */	mtlr r0
/* 80274EDC 0023E49C  38 21 00 10 */	addi r1, r1, 0x10
/* 80274EE0 0023E4A0  4E 80 00 20 */	blr
.endfn fn_80274EB0

.fn fn_80274EE4, global
/* 80274EE4 0023E4A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274EE8 0023E4A8  7C 08 02 A6 */	mflr r0
/* 80274EEC 0023E4AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274EF0 0023E4B0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80274EF4 0023E4B4  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80274EF8 0023E4B8  7D 89 03 A6 */	mtctr r12
/* 80274EFC 0023E4BC  4E 80 04 21 */	bctrl
/* 80274F00 0023E4C0  80 03 00 00 */	lwz r0, 0x0(r3)
/* 80274F04 0023E4C4  38 80 00 00 */	li r4, 0x0
/* 80274F08 0023E4C8  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 80274F0C 0023E4CC  41 82 00 14 */	beq .L_80274F20
/* 80274F10 0023E4D0  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80274F14 0023E4D4  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 80274F18 0023E4D8  41 82 00 08 */	beq .L_80274F20
/* 80274F1C 0023E4DC  38 80 00 01 */	li r4, 0x1
.L_80274F20:
/* 80274F20 0023E4E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274F24 0023E4E4  7C 83 23 78 */	mr r3, r4
/* 80274F28 0023E4E8  7C 08 03 A6 */	mtlr r0
/* 80274F2C 0023E4EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80274F30 0023E4F0  4E 80 00 20 */	blr
.endfn fn_80274EE4

.fn fn_80274F34, global
/* 80274F34 0023E4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274F38 0023E4F8  7C 08 02 A6 */	mflr r0
/* 80274F3C 0023E4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274F40 0023E500  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80274F44 0023E504  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80274F48 0023E508  7D 89 03 A6 */	mtctr r12
/* 80274F4C 0023E50C  4E 80 04 21 */	bctrl
/* 80274F50 0023E510  80 63 00 00 */	lwz r3, 0x0(r3)
/* 80274F54 0023E514  54 64 5F FF */	extrwi. r4, r3, 1, 10
/* 80274F58 0023E518  41 82 00 14 */	beq .L_80274F6C
/* 80274F5C 0023E51C  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80274F60 0023E520  41 82 00 0C */	beq .L_80274F6C
/* 80274F64 0023E524  38 60 00 00 */	li r3, 0x0
/* 80274F68 0023E528  48 00 00 1C */	b .L_80274F84
.L_80274F6C:
/* 80274F6C 0023E52C  54 60 01 09 */	rlwinm. r0, r3, 0, 4, 4
/* 80274F70 0023E530  38 60 00 00 */	li r3, 0x0
/* 80274F74 0023E534  41 82 00 10 */	beq .L_80274F84
/* 80274F78 0023E538  2C 04 00 00 */	cmpwi r4, 0x0
/* 80274F7C 0023E53C  41 82 00 08 */	beq .L_80274F84
/* 80274F80 0023E540  38 60 00 01 */	li r3, 0x1
.L_80274F84:
/* 80274F84 0023E544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274F88 0023E548  7C 08 03 A6 */	mtlr r0
/* 80274F8C 0023E54C  38 21 00 10 */	addi r1, r1, 0x10
/* 80274F90 0023E550  4E 80 00 20 */	blr
.endfn fn_80274F34

.fn fn_80274F94, global
/* 80274F94 0023E554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274F98 0023E558  7C 08 02 A6 */	mflr r0
/* 80274F9C 0023E55C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274FA0 0023E560  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80274FA4 0023E564  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80274FA8 0023E568  7D 89 03 A6 */	mtctr r12
/* 80274FAC 0023E56C  4E 80 04 21 */	bctrl
/* 80274FB0 0023E570  80 83 00 00 */	lwz r4, 0x0(r3)
/* 80274FB4 0023E574  54 80 02 95 */	rlwinm. r0, r4, 0, 10, 10
/* 80274FB8 0023E578  41 82 00 14 */	beq .L_80274FCC
/* 80274FBC 0023E57C  54 80 02 53 */	rlwinm. r0, r4, 0, 9, 9
/* 80274FC0 0023E580  41 82 00 0C */	beq .L_80274FCC
/* 80274FC4 0023E584  38 60 00 00 */	li r3, 0x0
/* 80274FC8 0023E588  48 00 00 1C */	b .L_80274FE4
.L_80274FCC:
/* 80274FCC 0023E58C  54 80 01 09 */	rlwinm. r0, r4, 0, 4, 4
/* 80274FD0 0023E590  38 60 00 00 */	li r3, 0x0
/* 80274FD4 0023E594  41 82 00 10 */	beq .L_80274FE4
/* 80274FD8 0023E598  54 80 02 53 */	rlwinm. r0, r4, 0, 9, 9
/* 80274FDC 0023E59C  41 82 00 08 */	beq .L_80274FE4
/* 80274FE0 0023E5A0  38 60 00 01 */	li r3, 0x1
.L_80274FE4:
/* 80274FE4 0023E5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274FE8 0023E5A8  7C 08 03 A6 */	mtlr r0
/* 80274FEC 0023E5AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80274FF0 0023E5B0  4E 80 00 20 */	blr
.endfn fn_80274F94

.fn fn_80274FF4, global
/* 80274FF4 0023E5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274FF8 0023E5B8  7C 08 02 A6 */	mflr r0
/* 80274FFC 0023E5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275000 0023E5C0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80275004 0023E5C4  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80275008 0023E5C8  7D 89 03 A6 */	mtctr r12
/* 8027500C 0023E5CC  4E 80 04 21 */	bctrl
/* 80275010 0023E5D0  80 03 00 00 */	lwz r0, 0x0(r3)
/* 80275014 0023E5D4  54 03 6F FE */	extrwi r3, r0, 1, 12
/* 80275018 0023E5D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027501C 0023E5DC  7C 08 03 A6 */	mtlr r0
/* 80275020 0023E5E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80275024 0023E5E4  4E 80 00 20 */	blr
.endfn fn_80274FF4

.fn fn_80275028, global
/* 80275028 0023E5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027502C 0023E5EC  7C 08 02 A6 */	mflr r0
/* 80275030 0023E5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275034 0023E5F4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80275038 0023E5F8  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8027503C 0023E5FC  7D 89 03 A6 */	mtctr r12
/* 80275040 0023E600  4E 80 04 21 */	bctrl
/* 80275044 0023E604  80 03 00 00 */	lwz r0, 0x0(r3)
/* 80275048 0023E608  54 03 67 FE */	extrwi r3, r0, 1, 11
/* 8027504C 0023E60C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80275050 0023E610  7C 08 03 A6 */	mtlr r0
/* 80275054 0023E614  38 21 00 10 */	addi r1, r1, 0x10
/* 80275058 0023E618  4E 80 00 20 */	blr
.endfn fn_80275028

.fn fn_8027505C, global
/* 8027505C 0023E61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80275060 0023E620  7C 08 02 A6 */	mflr r0
/* 80275064 0023E624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80275068 0023E628  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8027506C 0023E62C  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80275070 0023E630  7D 89 03 A6 */	mtctr r12
/* 80275074 0023E634  4E 80 04 21 */	bctrl
/* 80275078 0023E638  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8027507C 0023E63C  54 03 7F FE */	extrwi r3, r0, 1, 14
/* 80275080 0023E640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80275084 0023E644  7C 08 03 A6 */	mtlr r0
/* 80275088 0023E648  38 21 00 10 */	addi r1, r1, 0x10
/* 8027508C 0023E64C  4E 80 00 20 */	blr
.endfn fn_8027505C

.fn fn_80275090, global
/* 80275090 0023E650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80275094 0023E654  7C 08 02 A6 */	mflr r0
/* 80275098 0023E658  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027509C 0023E65C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802750A0 0023E660  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802750A4 0023E664  7D 89 03 A6 */	mtctr r12
/* 802750A8 0023E668  4E 80 04 21 */	bctrl
/* 802750AC 0023E66C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 802750B0 0023E670  54 03 77 FE */	extrwi r3, r0, 1, 13
/* 802750B4 0023E674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802750B8 0023E678  7C 08 03 A6 */	mtlr r0
/* 802750BC 0023E67C  38 21 00 10 */	addi r1, r1, 0x10
/* 802750C0 0023E680  4E 80 00 20 */	blr
.endfn fn_80275090

.fn fn_802750C4, global
/* 802750C4 0023E684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802750C8 0023E688  7C 08 02 A6 */	mflr r0
/* 802750CC 0023E68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802750D0 0023E690  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802750D4 0023E694  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802750D8 0023E698  7D 89 03 A6 */	mtctr r12
/* 802750DC 0023E69C  4E 80 04 21 */	bctrl
/* 802750E0 0023E6A0  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 802750E4 0023E6A4  38 60 00 01 */	li r3, 0x1
/* 802750E8 0023E6A8  38 80 00 01 */	li r4, 0x1
/* 802750EC 0023E6AC  38 A0 00 01 */	li r5, 0x1
/* 802750F0 0023E6B0  54 C0 03 19 */	rlwinm. r0, r6, 0, 12, 12
/* 802750F4 0023E6B4  40 82 00 10 */	bne .L_80275104
/* 802750F8 0023E6B8  54 C0 02 D7 */	rlwinm. r0, r6, 0, 11, 11
/* 802750FC 0023E6BC  40 82 00 08 */	bne .L_80275104
/* 80275100 0023E6C0  38 A0 00 00 */	li r5, 0x0
.L_80275104:
/* 80275104 0023E6C4  2C 05 00 00 */	cmpwi r5, 0x0
/* 80275108 0023E6C8  40 82 00 10 */	bne .L_80275118
/* 8027510C 0023E6CC  54 C0 03 9D */	rlwinm. r0, r6, 0, 14, 14
/* 80275110 0023E6D0  40 82 00 08 */	bne .L_80275118
/* 80275114 0023E6D4  38 80 00 00 */	li r4, 0x0
.L_80275118:
/* 80275118 0023E6D8  2C 04 00 00 */	cmpwi r4, 0x0
/* 8027511C 0023E6DC  40 82 00 10 */	bne .L_8027512C
/* 80275120 0023E6E0  54 C0 03 5B */	rlwinm. r0, r6, 0, 13, 13
/* 80275124 0023E6E4  40 82 00 08 */	bne .L_8027512C
/* 80275128 0023E6E8  38 60 00 00 */	li r3, 0x0
.L_8027512C:
/* 8027512C 0023E6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80275130 0023E6F0  7C 08 03 A6 */	mtlr r0
/* 80275134 0023E6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80275138 0023E6F8  4E 80 00 20 */	blr
.endfn fn_802750C4
