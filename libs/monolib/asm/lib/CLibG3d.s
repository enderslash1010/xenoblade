.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CLibG3d, global
/* 8045D150 00426710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D154 00426714  7C 08 02 A6 */	mflr r0
/* 8045D158 00426718  38 C0 00 04 */	li r6, 4
/* 8045D15C 0042671C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D160 00426720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D164 00426724  7C 7F 1B 78 */	mr r31, r3
/* 8045D168 00426728  4B FD A4 55 */	bl __ct__CWorkThread
/* 8045D16C 0042672C  3C 60 80 57 */	lis r3, __vt__7CLibG3d@ha
/* 8045D170 00426730  38 00 00 0C */	li r0, 0xc
/* 8045D174 00426734  38 63 09 38 */	addi r3, r3, __vt__7CLibG3d@l
/* 8045D178 00426738  90 7F 00 00 */	stw r3, 0(r31)
/* 8045D17C 0042673C  7F E3 FB 78 */	mr r3, r31
/* 8045D180 00426740  93 ED BE 48 */	stw r31, lbl_80667FC8@sda21(r13)
/* 8045D184 00426744  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8045D188 00426748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D18C 0042674C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D190 00426750  7C 08 03 A6 */	mtlr r0
/* 8045D194 00426754  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D198 00426758  4E 80 00 20 */	blr 
.endfn __ct__CLibG3d

.fn __dt__CLibG3d, global
/* 8045D19C 0042675C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D1A0 00426760  7C 08 02 A6 */	mflr r0
/* 8045D1A4 00426764  2C 03 00 00 */	cmpwi r3, 0
/* 8045D1A8 00426768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D1AC 0042676C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D1B0 00426770  7C 9F 23 78 */	mr r31, r4
/* 8045D1B4 00426774  93 C1 00 08 */	stw r30, 8(r1)
/* 8045D1B8 00426778  7C 7E 1B 78 */	mr r30, r3
/* 8045D1BC 0042677C  41 82 00 24 */	beq .L_8045D1E0
/* 8045D1C0 00426780  38 00 00 00 */	li r0, 0
/* 8045D1C4 00426784  90 0D BE 48 */	stw r0, lbl_80667FC8@sda21(r13)
/* 8045D1C8 00426788  38 80 00 00 */	li r4, 0
/* 8045D1CC 0042678C  4B FD A8 FD */	bl __dt__CWorkThread
/* 8045D1D0 00426790  2C 1F 00 00 */	cmpwi r31, 0
/* 8045D1D4 00426794  40 81 00 0C */	ble .L_8045D1E0
/* 8045D1D8 00426798  7F C3 F3 78 */	mr r3, r30
/* 8045D1DC 0042679C  4B FD 7A 51 */	bl __dl__FPv
.L_8045D1E0:
/* 8045D1E0 004267A0  7F C3 F3 78 */	mr r3, r30
/* 8045D1E4 004267A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D1E8 004267A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045D1EC 004267AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D1F0 004267B0  7C 08 03 A6 */	mtlr r0
/* 8045D1F4 004267B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D1F8 004267B8  4E 80 00 20 */	blr 
.endfn __dt__CLibG3d

.fn func_8045D1FC, global
/* 8045D1FC 004267BC  80 6D BE 48 */	lwz r3, lbl_80667FC8@sda21(r13)
/* 8045D200 004267C0  4E 80 00 20 */	blr 
.endfn func_8045D1FC

.fn func_8045D204, global
/* 8045D204 004267C4  80 CD BE 48 */	lwz r6, lbl_80667FC8@sda21(r13)
/* 8045D208 004267C8  80 06 00 7C */	lwz r0, 0x7c(r6)
/* 8045D20C 004267CC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8045D210 004267D0  41 82 00 0C */	beq .L_8045D21C
/* 8045D214 004267D4  38 00 00 01 */	li r0, 1
/* 8045D218 004267D8  48 00 00 5C */	b .L_8045D274
.L_8045D21C:
/* 8045D21C 004267DC  80 06 01 AC */	lwz r0, 0x1ac(r6)
/* 8045D220 004267E0  38 E0 00 00 */	li r7, 0
/* 8045D224 004267E4  7C 09 03 A6 */	mtctr r0
/* 8045D228 004267E8  28 00 00 00 */	cmplwi r0, 0
/* 8045D22C 004267EC  40 81 00 3C */	ble .L_8045D268
.L_8045D230:
/* 8045D230 004267F0  80 06 01 A8 */	lwz r0, 0x1a8(r6)
/* 8045D234 004267F4  80 66 01 B0 */	lwz r3, 0x1b0(r6)
/* 8045D238 004267F8  7C 80 3A 14 */	add r4, r0, r7
/* 8045D23C 004267FC  80 A6 01 A4 */	lwz r5, 0x1a4(r6)
/* 8045D240 00426800  7C 04 1B 96 */	divwu r0, r4, r3
/* 8045D244 00426804  7C 00 19 D6 */	mullw r0, r0, r3
/* 8045D248 00426808  7C 00 20 50 */	subf r0, r0, r4
/* 8045D24C 0042680C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8045D250 00426810  7C 05 00 2E */	lwzx r0, r5, r0
/* 8045D254 00426814  28 00 00 02 */	cmplwi r0, 2
/* 8045D258 00426818  40 82 00 08 */	bne .L_8045D260
/* 8045D25C 0042681C  48 00 00 10 */	b .L_8045D26C
.L_8045D260:
/* 8045D260 00426820  38 E7 00 01 */	addi r7, r7, 1
/* 8045D264 00426824  42 00 FF CC */	bdnz .L_8045D230
.L_8045D268:
/* 8045D268 00426828  38 E0 FF FF */	li r7, -1
.L_8045D26C:
/* 8045D26C 0042682C  54 E0 0F FE */	srwi r0, r7, 0x1f
/* 8045D270 00426830  68 00 00 01 */	xori r0, r0, 1
.L_8045D274:
/* 8045D274 00426834  2C 00 00 00 */	cmpwi r0, 0
/* 8045D278 00426838  38 60 00 00 */	li r3, 0
/* 8045D27C 0042683C  4C 82 00 20 */	bnelr 
/* 8045D280 00426840  80 86 00 48 */	lwz r4, 0x48(r6)
/* 8045D284 00426844  38 00 00 01 */	li r0, 1
/* 8045D288 00426848  2C 04 00 02 */	cmpwi r4, 2
/* 8045D28C 0042684C  41 82 00 10 */	beq .L_8045D29C
/* 8045D290 00426850  2C 04 00 03 */	cmpwi r4, 3
/* 8045D294 00426854  41 82 00 08 */	beq .L_8045D29C
/* 8045D298 00426858  38 00 00 00 */	li r0, 0
.L_8045D29C:
/* 8045D29C 0042685C  2C 00 00 00 */	cmpwi r0, 0
/* 8045D2A0 00426860  4D 82 00 20 */	beqlr 
/* 8045D2A4 00426864  38 60 00 01 */	li r3, 1
/* 8045D2A8 00426868  4E 80 00 20 */	blr 
.endfn func_8045D204

.fn CLibG3d_WorkThreadEvent4, global
/* 8045D2AC 0042686C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D2B0 00426870  7C 08 02 A6 */	mflr r0
/* 8045D2B4 00426874  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D2B8 00426878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D2BC 0042687C  7C 7F 1B 78 */	mr r31, r3
/* 8045D2C0 00426880  4B FF 7F F5 */	bl func_804552B4
/* 8045D2C4 00426884  2C 03 00 00 */	cmpwi r3, 0
/* 8045D2C8 00426888  41 82 00 20 */	beq .L_8045D2E8
/* 8045D2CC 0042688C  38 60 00 01 */	li r3, 1
/* 8045D2D0 00426890  4B F9 FA 6D */	bl G3dInit__Q24nw4r3g3dFb
/* 8045D2D4 00426894  4B FE B1 29 */	bl func_804483FC
/* 8045D2D8 00426898  4B F8 DA 05 */	bl SetRenderModeObj__Q34nw4r3g3d8G3DStateFRC16_GXRenderModeObj
/* 8045D2DC 0042689C  7F E3 FB 78 */	mr r3, r31
/* 8045D2E0 004268A0  4B FD B7 19 */	bl CWorkThread_WorkThreadEvent4
/* 8045D2E4 004268A4  48 00 00 08 */	b .L_8045D2EC
.L_8045D2E8:
/* 8045D2E8 004268A8  38 60 00 00 */	li r3, 0
.L_8045D2EC:
/* 8045D2EC 004268AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D2F0 004268B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D2F4 004268B4  7C 08 03 A6 */	mtlr r0
/* 8045D2F8 004268B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D2FC 004268BC  4E 80 00 20 */	blr 
.endfn CLibG3d_WorkThreadEvent4

.fn CLibG3d_WorkThreadEvent5, global
/* 8045D300 004268C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D304 004268C4  7C 08 02 A6 */	mflr r0
/* 8045D308 004268C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D30C 004268CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D310 004268D0  7C 7F 1B 78 */	mr r31, r3
/* 8045D314 004268D4  80 83 00 60 */	lwz r4, 0x60(r3)
/* 8045D318 004268D8  80 04 00 00 */	lwz r0, 0(r4)
/* 8045D31C 004268DC  7C 00 20 40 */	cmplw r0, r4
/* 8045D320 004268E0  40 82 00 1C */	bne .L_8045D33C
/* 8045D324 004268E4  4B FD C4 89 */	bl func_804397AC
/* 8045D328 004268E8  2C 03 00 00 */	cmpwi r3, 0
/* 8045D32C 004268EC  40 82 00 10 */	bne .L_8045D33C
/* 8045D330 004268F0  7F E3 FB 78 */	mr r3, r31
/* 8045D334 004268F4  4B FD B6 F1 */	bl CWorkThread_WorkThreadEvent5
/* 8045D338 004268F8  48 00 00 08 */	b .L_8045D340
.L_8045D33C:
/* 8045D33C 004268FC  38 60 00 00 */	li r3, 0
.L_8045D340:
/* 8045D340 00426900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D344 00426904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D348 00426908  7C 08 03 A6 */	mtlr r0
/* 8045D34C 0042690C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D350 00426910  4E 80 00 20 */	blr 
.endfn CLibG3d_WorkThreadEvent5

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__7CLibG3d, global
	.4byte __RTTI__7CLibG3d
	.4byte 0
	.4byte __dt__CLibG3d
	.4byte IWorkEvent_WorkEvent1
	.4byte IWorkEvent_OnFileEvent
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
	.4byte CWorkThread_wkUpdate
	.4byte CWorkThread_WorkThreadEvent2
	.4byte CWorkThread_WorkThreadEvent3
	.4byte CLibG3d_WorkThreadEvent4
	.4byte CLibG3d_WorkThreadEvent5
	.4byte CWorkThread_WorkThreadEvent6
.endobj __vt__7CLibG3d

.obj CLibG3d_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CLibG3d_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__7CLibG3d, global
	.4byte CLibG3d_typestr
	.4byte CLibG3d_hierarchy
.endobj __RTTI__7CLibG3d

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj CLibG3d_typestr, global
	.asciz "CLibG3d"
.endobj CLibG3d_typestr

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667FC8, global
	.skip 0x8
.endobj lbl_80667FC8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001D6E0", local
.hidden "@etb_8001D6E0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D6E0"

.obj "@etb_8001D6E8", local
.hidden "@etb_8001D6E8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D6E8"

.obj "@etb_8001D6F0", local
.hidden "@etb_8001D6F0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D6F0"

.obj "@etb_8001D6F8", local
.hidden "@etb_8001D6F8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D6F8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800352B8", local
.hidden "@eti_800352B8"
	.4byte __ct__CLibG3d
	.4byte 0x0000004C
	.4byte "@etb_8001D6E0"
.endobj "@eti_800352B8"

.obj "@eti_800352C4", local
.hidden "@eti_800352C4"
	.4byte __dt__CLibG3d
	.4byte 0x00000060
	.4byte "@etb_8001D6E8"
.endobj "@eti_800352C4"

.obj "@eti_800352D0", local
.hidden "@eti_800352D0"
	.4byte CLibG3d_WorkThreadEvent4
	.4byte 0x00000054
	.4byte "@etb_8001D6F0"
.endobj "@eti_800352D0"

.obj "@eti_800352DC", local
.hidden "@eti_800352DC"
	.4byte CLibG3d_WorkThreadEvent5
	.4byte 0x00000054
	.4byte "@etb_8001D6F8"
.endobj "@eti_800352DC"
