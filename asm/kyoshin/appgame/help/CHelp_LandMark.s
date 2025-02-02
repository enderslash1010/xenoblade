.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__cf_CHelp_LandMark, global
/* 802B8198 00281758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B819C 0028175C  7C 08 02 A6 */	mflr r0
/* 802B81A0 00281760  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B81A4 00281764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B81A8 00281768  7C DF 33 78 */	mr r31, r6
/* 802B81AC 0028176C  93 C1 00 08 */	stw r30, 8(r1)
/* 802B81B0 00281770  7C 7E 1B 78 */	mr r30, r3
/* 802B81B4 00281774  4B FF FA 21 */	bl __ct__cf_CHelp
/* 802B81B8 00281778  3C 60 80 54 */	lis r3, __vt__Q22cf5CHelp_LandMark@ha
/* 802B81BC 0028177C  38 00 00 00 */	li r0, 0
/* 802B81C0 00281780  38 63 ED 10 */	addi r3, r3, __vt__Q22cf5CHelp_LandMark@l
/* 802B81C4 00281784  2C 1E 00 00 */	cmpwi r30, 0
/* 802B81C8 00281788  38 83 00 1C */	addi r4, r3, 0x1c
/* 802B81CC 0028178C  90 7E 00 08 */	stw r3, 8(r30)
/* 802B81D0 00281790  7F C3 F3 78 */	mr r3, r30
/* 802B81D4 00281794  90 9E 00 0C */	stw r4, 0xc(r30)
/* 802B81D8 00281798  93 FE 00 10 */	stw r31, 0x10(r30)
/* 802B81DC 0028179C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 802B81E0 002817A0  41 82 00 08 */	beq .L_802B81E8
/* 802B81E4 002817A4  38 7E 00 0C */	addi r3, r30, 0xc
.L_802B81E8:
/* 802B81E8 002817A8  4B DE 52 2D */	bl func_8009D414
/* 802B81EC 002817AC  7F C3 F3 78 */	mr r3, r30
/* 802B81F0 002817B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B81F4 002817B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B81F8 002817B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B81FC 002817BC  7C 08 03 A6 */	mtlr r0
/* 802B8200 002817C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8204 002817C4  4E 80 00 20 */	blr
.endfn __ct__cf_CHelp_LandMark

.fn __dt__802B8208, global
/* 802B8208 002817C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B820C 002817CC  7C 08 02 A6 */	mflr r0
/* 802B8210 002817D0  2C 03 00 00 */	cmpwi r3, 0
/* 802B8214 002817D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8218 002817D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B821C 002817DC  7C 9F 23 78 */	mr r31, r4
/* 802B8220 002817E0  93 C1 00 08 */	stw r30, 8(r1)
/* 802B8224 002817E4  7C 7E 1B 78 */	mr r30, r3
/* 802B8228 002817E8  41 82 00 3C */	beq .L_802B8264
/* 802B822C 002817EC  3C 80 80 54 */	lis r4, __vt__Q22cf5CHelp_LandMark@ha
/* 802B8230 002817F0  7F C5 F3 78 */	mr r5, r30
/* 802B8234 002817F4  38 84 ED 10 */	addi r4, r4, __vt__Q22cf5CHelp_LandMark@l
/* 802B8238 002817F8  90 83 00 08 */	stw r4, 8(r3)
/* 802B823C 002817FC  38 04 00 1C */	addi r0, r4, 0x1c
/* 802B8240 00281800  90 03 00 0C */	stw r0, 0xc(r3)
/* 802B8244 00281804  41 82 00 08 */	beq .L_802B824C
/* 802B8248 00281808  38 A3 00 0C */	addi r5, r3, 0xc
.L_802B824C:
/* 802B824C 0028180C  7C A3 2B 78 */	mr r3, r5
/* 802B8250 00281810  4B DE 52 C5 */	bl func_8009D514
/* 802B8254 00281814  2C 1F 00 00 */	cmpwi r31, 0
/* 802B8258 00281818  40 81 00 0C */	ble .L_802B8264
/* 802B825C 0028181C  7F C3 F3 78 */	mr r3, r30
/* 802B8260 00281820  48 17 C9 CD */	bl __dl__FPv
.L_802B8264:
/* 802B8264 00281824  7F C3 F3 78 */	mr r3, r30
/* 802B8268 00281828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B826C 0028182C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B8270 00281830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8274 00281834  7C 08 03 A6 */	mtlr r0
/* 802B8278 00281838  38 21 00 10 */	addi r1, r1, 0x10
/* 802B827C 0028183C  4E 80 00 20 */	blr 
.endfn __dt__802B8208

.fn func_802B8280, global
/* 802B8280 00281840  38 00 00 00 */	li r0, 0
/* 802B8284 00281844  90 03 00 14 */	stw r0, 0x14(r3)
/* 802B8288 00281848  90 03 00 18 */	stw r0, 0x18(r3)
/* 802B828C 0028184C  4E 80 00 20 */	blr
.endfn func_802B8280

.fn func_802B8290, global
/* 802B8290 00281850  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B8294 00281854  7C 08 02 A6 */	mflr r0
/* 802B8298 00281858  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B829C 0028185C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B82A0 00281860  7C BF 2B 78 */	mr r31, r5
/* 802B82A4 00281864  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B82A8 00281868  7C 9E 23 78 */	mr r30, r4
/* 802B82AC 0028186C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B82B0 00281870  7C 7D 1B 78 */	mr r29, r3
/* 802B82B4 00281874  80 63 00 00 */	lwz r3, 0(r3)
/* 802B82B8 00281878  4B DE 4C D5 */	bl func_8009CF8C
/* 802B82BC 0028187C  7C 03 00 D0 */	neg r0, r3
/* 802B82C0 00281880  7C 00 1B 78 */	or r0, r0, r3
/* 802B82C4 00281884  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802B82C8 00281888  40 82 00 44 */	bne .L_802B830C
/* 802B82CC 0028188C  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802B82D0 00281890  38 03 20 C8 */	addi r0, r3, 0x20c8
/* 802B82D4 00281894  7C 00 F0 00 */	cmpw r0, r30
/* 802B82D8 00281898  40 82 00 34 */	bne .L_802B830C
/* 802B82DC 0028189C  2C 1F 00 00 */	cmpwi r31, 0
/* 802B82E0 002818A0  41 82 00 2C */	beq .L_802B830C
/* 802B82E4 002818A4  4B DC EC 61 */	bl func_80086F44
/* 802B82E8 002818A8  90 7D 00 18 */	stw r3, 0x18(r29)
/* 802B82EC 002818AC  38 60 FF FF */	li r3, -1
/* 802B82F0 002818B0  38 80 00 00 */	li r4, 0
/* 802B82F4 002818B4  4B DC EA CD */	bl func_80086DC0
/* 802B82F8 002818B8  80 6D A5 A4 */	lwz r3, lbl_80666724@sda21(r13)
/* 802B82FC 002818BC  38 00 00 4B */	li r0, 0x4b
/* 802B8300 002818C0  60 63 20 00 */	ori r3, r3, 0x2000
/* 802B8304 002818C4  90 6D A5 A4 */	stw r3, lbl_80666724@sda21(r13)
/* 802B8308 002818C8  90 1D 00 14 */	stw r0, 0x14(r29)
.L_802B830C:
/* 802B830C 002818CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B8310 002818D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B8314 002818D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B8318 002818D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B831C 002818DC  7C 08 03 A6 */	mtlr r0
/* 802B8320 002818E0  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8324 002818E4  4E 80 00 20 */	blr 
.endfn func_802B8290

.fn func_802B8328, global
/* 802B8328 002818E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B832C 002818EC  7C 08 02 A6 */	mflr r0
/* 802B8330 002818F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8334 002818F4  80 83 00 14 */	lwz r4, 0x14(r3)
/* 802B8338 002818F8  2C 04 00 00 */	cmpwi r4, 0
/* 802B833C 002818FC  41 81 00 0C */	bgt .L_802B8348
/* 802B8340 00281900  38 60 00 00 */	li r3, 0
/* 802B8344 00281904  48 00 00 34 */	b .L_802B8378
.L_802B8348:
/* 802B8348 00281908  34 04 FF FF */	addic. r0, r4, -1
/* 802B834C 0028190C  90 03 00 14 */	stw r0, 0x14(r3)
/* 802B8350 00281910  40 81 00 0C */	ble .L_802B835C
/* 802B8354 00281914  38 60 00 00 */	li r3, 0
/* 802B8358 00281918  48 00 00 20 */	b .L_802B8378
.L_802B835C:
/* 802B835C 0028191C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B8360 00281920  38 80 00 01 */	li r4, 1
/* 802B8364 00281924  4B DC EA 5D */	bl func_80086DC0
/* 802B8368 00281928  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 802B836C 0028192C  38 60 00 01 */	li r3, 1
/* 802B8370 00281930  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 802B8374 00281934  90 0D A5 A4 */	stw r0, lbl_80666724@sda21(r13)
.L_802B8378:
/* 802B8378 00281938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B837C 0028193C  7C 08 03 A6 */	mtlr r0
/* 802B8380 00281940  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8384 00281944  4E 80 00 20 */	blr 
.endfn func_802B8328

.fn func_802B8388, global
/* 802B8388 00281948  38 63 FF F4 */	addi r3, r3, -12
/* 802B838C 0028194C  4B FF FF 04 */	b func_802B8290
.endfn func_802B8388

.fn func_802B8390, global
/* 802B8390 00281950  38 63 FF F4 */	addi r3, r3, -12
/* 802B8394 00281954  4B FF FE 74 */	b __dt__802B8208
.endfn func_802B8390

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BDA8", local
.hidden "@etb_8001BDA8"
	.4byte 0x10080000
	.4byte 0x00000054
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x0000000C
	.4byte __dt__801320F0
.endobj "@etb_8001BDA8"

.obj "@etb_8001BDC4", local
.hidden "@etb_8001BDC4"
	.4byte 0x10080000
	.4byte 0x0000004C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x0000000C
	.4byte __dt__801320F0
.endobj "@etb_8001BDC4"

.obj "@etb_8001BDE0", local
.hidden "@etb_8001BDE0"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001BDE0"

.obj "@etb_8001BDE8", local
.hidden "@etb_8001BDE8"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001BDE8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033944", local
.hidden "@eti_80033944"
	.4byte __ct__cf_CHelp_LandMark
	.4byte 0x00000070
	.4byte "@etb_8001BDA8"
.endobj "@eti_80033944"

.obj "@eti_80033950", local
.hidden "@eti_80033950"
	.4byte __dt__802B8208
	.4byte 0x00000078
	.4byte "@etb_8001BDC4"
.endobj "@eti_80033950"

.obj "@eti_8003395C", local
.hidden "@eti_8003395C"
	.4byte func_802B8290
	.4byte 0x00000098
	.4byte "@etb_8001BDE0"
.endobj "@eti_8003395C"

.obj "@eti_80033968", local
.hidden "@eti_80033968"
	.4byte func_802B8328
	.4byte 0x00000060
	.4byte "@etb_8001BDE8"
.endobj "@eti_80033968"
