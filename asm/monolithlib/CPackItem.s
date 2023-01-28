.include "macros.inc"
.file "monolithlib/CPackItem.o"

# 0x800208F4 - 0x80020938
.section extab, "a"
.balign 4

.obj "@etb_800208F4", local
.hidden "@etb_800208F4"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800208F4"

.obj "@etb_800208FC", local
.hidden "@etb_800208FC"
	.4byte 0x10080000
	.4byte 0x00000040
	.4byte 0x000F0010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_800208FC"

.obj "@etb_80020918", local
.hidden "@etb_80020918"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80020918"

.obj "@etb_80020920", local
.hidden "@etb_80020920"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_80020920"

.obj "@etb_80020928", local
.hidden "@etb_80020928"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020928"

.obj "@etb_80020930", local
.hidden "@etb_80020930"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80020930"

# 0x80038948 - 0x80038990
.section extabindex, "a"
.balign 4

.obj "@eti_80038948", local
.hidden "@eti_80038948"
	.4byte __ct__CPackItem
	.4byte 0x000000C4
	.4byte "@etb_800208F4"
.endobj "@eti_80038948"

.obj "@eti_80038954", local
.hidden "@eti_80038954"
	.4byte fn_804DE450
	.4byte 0x000000AC
	.4byte "@etb_800208FC"
.endobj "@eti_80038954"

.obj "@eti_80038960", local
.hidden "@eti_80038960"
	.4byte fn_804DE4FC
	.4byte 0x00000290
	.4byte "@etb_80020918"
.endobj "@eti_80038960"

.obj "@eti_8003896C", local
.hidden "@eti_8003896C"
	.4byte fn_804DE78C
	.4byte 0x000000C8
	.4byte "@etb_80020920"
.endobj "@eti_8003896C"

.obj "@eti_80038978", local
.hidden "@eti_80038978"
	.4byte fn_804DE990
	.4byte 0x00000078
	.4byte "@etb_80020928"
.endobj "@eti_80038978"

.obj "@eti_80038984", local
.hidden "@eti_80038984"
	.4byte fn_804DEA08
	.4byte 0x0000010C
	.4byte "@etb_80020930"
.endobj "@eti_80038984"

# 0x804DE38C - 0x804DEB14
.text
.balign 4

.fn __ct__CPackItem, global
/* 804DE38C 004A794C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DE390 004A7950  7C 08 02 A6 */	mflr r0
/* 804DE394 004A7954  3C C0 80 57 */	lis r6, __vt__CPackItem@ha
/* 804DE398 004A7958  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DE39C 004A795C  38 00 00 00 */	li r0, 0x0
/* 804DE3A0 004A7960  38 C6 37 A0 */	addi r6, r6, __vt__CPackItem@l
/* 804DE3A4 004A7964  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 804DE3A8 004A7968  7C 9E 23 78 */	mr r30, r4
/* 804DE3AC 004A796C  3F E0 80 53 */	lis r31, lbl_80528014@ha
/* 804DE3B0 004A7970  7C 7D 1B 78 */	mr r29, r3
/* 804DE3B4 004A7974  98 03 00 04 */	stb r0, 0x4(r3)
/* 804DE3B8 004A7978  90 C3 00 00 */	stw r6, 0x0(r3)
/* 804DE3BC 004A797C  90 03 00 24 */	stw r0, 0x24(r3)
/* 804DE3C0 004A7980  98 03 00 28 */	stb r0, 0x28(r3)
/* 804DE3C4 004A7984  90 03 00 48 */	stw r0, 0x48(r3)
/* 804DE3C8 004A7988  90 03 00 4C */	stw r0, 0x4c(r3)
/* 804DE3CC 004A798C  90 03 00 50 */	stw r0, 0x50(r3)
/* 804DE3D0 004A7990  90 83 00 54 */	stw r4, 0x54(r3)
/* 804DE3D4 004A7994  90 83 00 84 */	stw r4, 0x84(r3)
/* 804DE3D8 004A7998  38 9F 80 14 */	addi r4, r31, lbl_80528014@l
/* 804DE3DC 004A799C  90 03 00 58 */	stw r0, 0x58(r3)
/* 804DE3E0 004A79A0  90 03 00 5C */	stw r0, 0x5c(r3)
/* 804DE3E4 004A79A4  90 03 00 60 */	stw r0, 0x60(r3)
/* 804DE3E8 004A79A8  90 A3 00 64 */	stw r5, 0x64(r3)
/* 804DE3EC 004A79AC  90 03 00 68 */	stw r0, 0x68(r3)
/* 804DE3F0 004A79B0  90 03 00 74 */	stw r0, 0x74(r3)
/* 804DE3F4 004A79B4  98 03 00 78 */	stb r0, 0x78(r3)
/* 804DE3F8 004A79B8  98 03 00 79 */	stb r0, 0x79(r3)
/* 804DE3FC 004A79BC  98 03 00 7A */	stb r0, 0x7a(r3)
/* 804DE400 004A79C0  90 03 00 7C */	stw r0, 0x7c(r3)
/* 804DE404 004A79C4  90 03 00 80 */	stw r0, 0x80(r3)
/* 804DE408 004A79C8  7F C3 F3 78 */	mr r3, r30
/* 804DE40C 004A79CC  4B DE 45 B5 */	bl strstr
/* 804DE410 004A79D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE414 004A79D4  40 82 00 1C */	bne .L_804DE430
/* 804DE418 004A79D8  38 9F 80 14 */	addi r4, r31, lbl_80528014@l
/* 804DE41C 004A79DC  7F C3 F3 78 */	mr r3, r30
/* 804DE420 004A79E0  38 84 00 04 */	addi r4, r4, 0x4
/* 804DE424 004A79E4  4B DE 45 9D */	bl strstr
/* 804DE428 004A79E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE42C 004A79EC  41 82 00 0C */	beq .L_804DE438
.L_804DE430:
/* 804DE430 004A79F0  38 00 00 01 */	li r0, 0x1
/* 804DE434 004A79F4  98 1D 00 7A */	stb r0, 0x7a(r29)
.L_804DE438:
/* 804DE438 004A79F8  7F A3 EB 78 */	mr r3, r29
/* 804DE43C 004A79FC  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 804DE440 004A7A00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DE444 004A7A04  7C 08 03 A6 */	mtlr r0
/* 804DE448 004A7A08  38 21 00 20 */	addi r1, r1, 0x20
/* 804DE44C 004A7A0C  4E 80 00 20 */	blr
.endfn __ct__CPackItem

.fn fn_804DE450, global
/* 804DE450 004A7A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE454 004A7A14  7C 08 02 A6 */	mflr r0
/* 804DE458 004A7A18  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE45C 004A7A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE460 004A7A20  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 804DE464 004A7A24  7C 7E 1B 78 */	mr r30, r3
/* 804DE468 004A7A28  7C 9F 23 78 */	mr r31, r4
/* 804DE46C 004A7A2C  41 82 00 78 */	beq .L_804DE4E4
/* 804DE470 004A7A30  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 804DE474 004A7A34  3C 80 80 57 */	lis r4, __vt__CPackItem@ha
/* 804DE478 004A7A38  38 84 37 A0 */	addi r4, r4, __vt__CPackItem@l
/* 804DE47C 004A7A3C  90 83 00 00 */	stw r4, 0x0(r3)
/* 804DE480 004A7A40  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DE484 004A7A44  41 82 00 0C */	beq .L_804DE490
/* 804DE488 004A7A48  7C 03 03 78 */	mr r3, r0
/* 804DE48C 004A7A4C  4B F7 0C 8D */	bl fn_8044F118
.L_804DE490:
/* 804DE490 004A7A50  88 1E 00 79 */	lbz r0, 0x79(r30)
/* 804DE494 004A7A54  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DE498 004A7A58  41 82 00 0C */	beq .L_804DE4A4
/* 804DE49C 004A7A5C  38 00 00 00 */	li r0, 0x0
/* 804DE4A0 004A7A60  90 1E 00 50 */	stw r0, 0x50(r30)
.L_804DE4A4:
/* 804DE4A4 004A7A64  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 804DE4A8 004A7A68  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE4AC 004A7A6C  41 82 00 10 */	beq .L_804DE4BC
/* 804DE4B0 004A7A70  4B F5 60 29 */	bl fn_804344D8
/* 804DE4B4 004A7A74  38 00 00 00 */	li r0, 0x0
/* 804DE4B8 004A7A78  90 1E 00 50 */	stw r0, 0x50(r30)
.L_804DE4BC:
/* 804DE4BC 004A7A7C  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 804DE4C0 004A7A80  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE4C4 004A7A84  41 82 00 10 */	beq .L_804DE4D4
/* 804DE4C8 004A7A88  4B F5 60 11 */	bl fn_804344D8
/* 804DE4CC 004A7A8C  38 00 00 00 */	li r0, 0x0
/* 804DE4D0 004A7A90  90 1E 00 68 */	stw r0, 0x68(r30)
.L_804DE4D4:
/* 804DE4D4 004A7A94  2C 1F 00 00 */	cmpwi r31, 0x0
/* 804DE4D8 004A7A98  40 81 00 0C */	ble .L_804DE4E4
/* 804DE4DC 004A7A9C  7F C3 F3 78 */	mr r3, r30
/* 804DE4E0 004A7AA0  4B F5 67 4D */	bl __dl__FPv
.L_804DE4E4:
/* 804DE4E4 004A7AA4  7F C3 F3 78 */	mr r3, r30
/* 804DE4E8 004A7AA8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 804DE4EC 004A7AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE4F0 004A7AB0  7C 08 03 A6 */	mtlr r0
/* 804DE4F4 004A7AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE4F8 004A7AB8  4E 80 00 20 */	blr
.endfn fn_804DE450

.fn fn_804DE4FC, global
/* 804DE4FC 004A7ABC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804DE500 004A7AC0  7C 08 02 A6 */	mflr r0
/* 804DE504 004A7AC4  90 01 00 84 */	stw r0, 0x84(r1)
/* 804DE508 004A7AC8  BF 81 00 70 */	stmw r28, 0x70(r1)
/* 804DE50C 004A7ACC  7C 7F 1B 78 */	mr r31, r3
/* 804DE510 004A7AD0  80 03 00 74 */	lwz r0, 0x74(r3)
/* 804DE514 004A7AD4  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DE518 004A7AD8  40 82 01 A8 */	bne .L_804DE6C0
/* 804DE51C 004A7ADC  4B FF FB E5 */	bl fn_804DE100
/* 804DE520 004A7AE0  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE524 004A7AE4  41 82 02 54 */	beq .L_804DE778
/* 804DE528 004A7AE8  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 804DE52C 004A7AEC  38 9F 00 7C */	addi r4, r31, 0x7c
/* 804DE530 004A7AF0  38 BF 00 80 */	addi r5, r31, 0x80
/* 804DE534 004A7AF4  4B FF F8 C1 */	bl fn_804DDDF4
/* 804DE538 004A7AF8  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE53C 004A7AFC  41 82 00 20 */	beq .L_804DE55C
/* 804DE540 004A7B00  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 804DE544 004A7B04  38 60 00 01 */	li r3, 0x1
/* 804DE548 004A7B08  98 7F 00 79 */	stb r3, 0x79(r31)
/* 804DE54C 004A7B0C  7F E3 FB 78 */	mr r3, r31
/* 804DE550 004A7B10  90 1F 00 50 */	stw r0, 0x50(r31)
/* 804DE554 004A7B14  48 00 03 F5 */	bl fn_804DE948
/* 804DE558 004A7B18  48 00 00 20 */	b .L_804DE578
.L_804DE55C:
/* 804DE55C 004A7B1C  4B F5 5E 45 */	bl fn_804343A0
/* 804DE560 004A7B20  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 804DE564 004A7B24  7F E5 FB 78 */	mr r5, r31
/* 804DE568 004A7B28  38 C0 00 00 */	li r6, 0x0
/* 804DE56C 004A7B2C  38 E0 00 00 */	li r7, 0x0
/* 804DE570 004A7B30  4B F7 02 25 */	bl fn_8044E794
/* 804DE574 004A7B34  90 7F 00 4C */	stw r3, 0x4c(r31)
.L_804DE578:
/* 804DE578 004A7B38  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 804DE57C 004A7B3C  38 61 00 2C */	addi r3, r1, 0x2c
/* 804DE580 004A7B40  4B F5 6A F9 */	bl fn_80435078
/* 804DE584 004A7B44  38 61 00 2C */	addi r3, r1, 0x2c
/* 804DE588 004A7B48  4B DD B0 31 */	bl strlen
/* 804DE58C 004A7B4C  90 7F 00 24 */	stw r3, 0x24(r31)
/* 804DE590 004A7B50  38 7F 00 04 */	addi r3, r31, 0x4
/* 804DE594 004A7B54  38 81 00 2C */	addi r4, r1, 0x2c
/* 804DE598 004A7B58  4B DE 41 21 */	bl strcpy
/* 804DE59C 004A7B5C  83 DF 00 84 */	lwz r30, 0x84(r31)
/* 804DE5A0 004A7B60  7F C3 F3 78 */	mr r3, r30
/* 804DE5A4 004A7B64  4B DD B0 15 */	bl strlen
/* 804DE5A8 004A7B68  90 7F 00 48 */	stw r3, 0x48(r31)
/* 804DE5AC 004A7B6C  7F C4 F3 78 */	mr r4, r30
/* 804DE5B0 004A7B70  38 7F 00 28 */	addi r3, r31, 0x28
/* 804DE5B4 004A7B74  4B DE 41 05 */	bl strcpy
/* 804DE5B8 004A7B78  83 BF 00 48 */	lwz r29, 0x48(r31)
/* 804DE5BC 004A7B7C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 804DE5C0 004A7B80  40 82 00 0C */	bne .L_804DE5CC
/* 804DE5C4 004A7B84  3B C0 FF FF */	li r30, -0x1
/* 804DE5C8 004A7B88  48 00 00 50 */	b .L_804DE618
.L_804DE5CC:
/* 804DE5CC 004A7B8C  38 6D 8B 38 */	addi r3, r13, lbl_80664CB8@sda21
/* 804DE5D0 004A7B90  4B DD AF E9 */	bl strlen
/* 804DE5D4 004A7B94  3B 9F 00 27 */	addi r28, r31, 0x27
/* 804DE5D8 004A7B98  7C 7E 1B 78 */	mr r30, r3
/* 804DE5DC 004A7B9C  7F BC EA 14 */	add r29, r28, r29
/* 804DE5E0 004A7BA0  48 00 00 2C */	b .L_804DE60C
.L_804DE5E4:
/* 804DE5E4 004A7BA4  7F A3 EB 78 */	mr r3, r29
/* 804DE5E8 004A7BA8  7F C5 F3 78 */	mr r5, r30
/* 804DE5EC 004A7BAC  38 8D 8B 38 */	addi r4, r13, lbl_80664CB8@sda21
/* 804DE5F0 004A7BB0  4B DE 43 61 */	bl strncmp
/* 804DE5F4 004A7BB4  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE5F8 004A7BB8  40 82 00 10 */	bne .L_804DE608
/* 804DE5FC 004A7BBC  38 1F 00 28 */	addi r0, r31, 0x28
/* 804DE600 004A7BC0  7F C0 E8 50 */	subf r30, r0, r29
/* 804DE604 004A7BC4  48 00 00 14 */	b .L_804DE618
.L_804DE608:
/* 804DE608 004A7BC8  3B BD FF FF */	addi r29, r29, -0x1
.L_804DE60C:
/* 804DE60C 004A7BCC  7C 1D E0 40 */	cmplw r29, r28
/* 804DE610 004A7BD0  40 82 FF D4 */	bne .L_804DE5E4
/* 804DE614 004A7BD4  3B C0 FF FF */	li r30, -0x1
.L_804DE618:
/* 804DE618 004A7BD8  38 1E 00 01 */	addi r0, r30, 0x1
/* 804DE61C 004A7BDC  28 00 00 01 */	cmplwi r0, 0x1
/* 804DE620 004A7BE0  40 81 00 64 */	ble .L_804DE684
/* 804DE624 004A7BE4  38 00 00 00 */	li r0, 0x0
/* 804DE628 004A7BE8  98 01 00 08 */	stb r0, 0x8(r1)
/* 804DE62C 004A7BEC  90 01 00 28 */	stw r0, 0x28(r1)
/* 804DE630 004A7BF0  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 804DE634 004A7BF4  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DE638 004A7BF8  41 82 00 34 */	beq .L_804DE66C
/* 804DE63C 004A7BFC  2C 1E FF FF */	cmpwi r30, -0x1
/* 804DE640 004A7C00  40 82 00 08 */	bne .L_804DE648
/* 804DE644 004A7C04  83 DF 00 48 */	lwz r30, 0x48(r31)
.L_804DE648:
/* 804DE648 004A7C08  7F C5 F3 78 */	mr r5, r30
/* 804DE64C 004A7C0C  38 61 00 08 */	addi r3, r1, 0x8
/* 804DE650 004A7C10  38 9F 00 28 */	addi r4, r31, 0x28
/* 804DE654 004A7C14  4B DE 41 25 */	bl strncpy
/* 804DE658 004A7C18  38 61 00 08 */	addi r3, r1, 0x8
/* 804DE65C 004A7C1C  38 00 00 00 */	li r0, 0x0
/* 804DE660 004A7C20  7C 03 F1 AE */	stbx r0, r3, r30
/* 804DE664 004A7C24  4B DD AF 55 */	bl strlen
/* 804DE668 004A7C28  90 61 00 28 */	stw r3, 0x28(r1)
.L_804DE66C:
/* 804DE66C 004A7C2C  38 61 00 08 */	addi r3, r1, 0x8
/* 804DE670 004A7C30  4B DD AF 49 */	bl strlen
/* 804DE674 004A7C34  90 7F 00 48 */	stw r3, 0x48(r31)
/* 804DE678 004A7C38  38 7F 00 28 */	addi r3, r31, 0x28
/* 804DE67C 004A7C3C  38 81 00 08 */	addi r4, r1, 0x8
/* 804DE680 004A7C40  4B DE 40 39 */	bl strcpy
.L_804DE684:
/* 804DE684 004A7C44  3C 60 80 53 */	lis r3, lbl_80528014@ha
/* 804DE688 004A7C48  38 63 80 14 */	addi r3, r3, lbl_80528014@l
/* 804DE68C 004A7C4C  3B A3 00 08 */	addi r29, r3, 0x8
/* 804DE690 004A7C50  7F A3 EB 78 */	mr r3, r29
/* 804DE694 004A7C54  4B DD AF 25 */	bl strlen
/* 804DE698 004A7C58  7C 7E 1B 78 */	mr r30, r3
/* 804DE69C 004A7C5C  7F A4 EB 78 */	mr r4, r29
/* 804DE6A0 004A7C60  38 7F 00 28 */	addi r3, r31, 0x28
/* 804DE6A4 004A7C64  4B DE 41 19 */	bl strcat
/* 804DE6A8 004A7C68  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 804DE6AC 004A7C6C  38 00 00 01 */	li r0, 0x1
/* 804DE6B0 004A7C70  90 1F 00 74 */	stw r0, 0x74(r31)
/* 804DE6B4 004A7C74  7C 03 F2 14 */	add r0, r3, r30
/* 804DE6B8 004A7C78  90 1F 00 48 */	stw r0, 0x48(r31)
/* 804DE6BC 004A7C7C  48 00 00 BC */	b .L_804DE778
.L_804DE6C0:
/* 804DE6C0 004A7C80  2C 00 00 01 */	cmpwi r0, 0x1
/* 804DE6C4 004A7C84  40 82 00 94 */	bne .L_804DE758
/* 804DE6C8 004A7C88  88 03 00 78 */	lbz r0, 0x78(r3)
/* 804DE6CC 004A7C8C  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DE6D0 004A7C90  41 82 00 10 */	beq .L_804DE6E0
/* 804DE6D4 004A7C94  38 00 00 03 */	li r0, 0x3
/* 804DE6D8 004A7C98  90 03 00 74 */	stw r0, 0x74(r3)
/* 804DE6DC 004A7C9C  48 00 00 9C */	b .L_804DE778
.L_804DE6E0:
/* 804DE6E0 004A7CA0  80 03 00 50 */	lwz r0, 0x50(r3)
/* 804DE6E4 004A7CA4  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DE6E8 004A7CA8  41 82 00 90 */	beq .L_804DE778
/* 804DE6EC 004A7CAC  88 03 00 7A */	lbz r0, 0x7a(r3)
/* 804DE6F0 004A7CB0  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DE6F4 004A7CB4  41 82 00 58 */	beq .L_804DE74C
/* 804DE6F8 004A7CB8  4B FF F8 C5 */	bl fn_804DDFBC
/* 804DE6FC 004A7CBC  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE700 004A7CC0  41 82 00 78 */	beq .L_804DE778
/* 804DE704 004A7CC4  4B F5 5C 9D */	bl fn_804343A0
/* 804DE708 004A7CC8  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 804DE70C 004A7CCC  38 A0 00 04 */	li r5, 0x4
/* 804DE710 004A7CD0  80 84 00 10 */	lwz r4, 0x10(r4)
/* 804DE714 004A7CD4  38 04 00 01 */	addi r0, r4, 0x1
/* 804DE718 004A7CD8  54 04 08 3C */	slwi r4, r0, 1
/* 804DE71C 004A7CDC  38 04 01 1A */	addi r0, r4, 0x11a
/* 804DE720 004A7CE0  54 04 00 3A */	clrrwi r4, r0, 2
/* 804DE724 004A7CE4  4B F5 5D 09 */	bl fn_8043442C
/* 804DE728 004A7CE8  7C 66 1B 78 */	mr r6, r3
/* 804DE72C 004A7CEC  90 7F 00 68 */	stw r3, 0x68(r31)
/* 804DE730 004A7CF0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 804DE734 004A7CF4  38 9F 00 28 */	addi r4, r31, 0x28
/* 804DE738 004A7CF8  38 A0 00 00 */	li r5, 0x0
/* 804DE73C 004A7CFC  4B E9 E0 3D */	bl fn_8037C778
/* 804DE740 004A7D00  38 00 00 02 */	li r0, 0x2
/* 804DE744 004A7D04  90 1F 00 74 */	stw r0, 0x74(r31)
/* 804DE748 004A7D08  48 00 00 30 */	b .L_804DE778
.L_804DE74C:
/* 804DE74C 004A7D0C  38 00 00 03 */	li r0, 0x3
/* 804DE750 004A7D10  90 03 00 74 */	stw r0, 0x74(r3)
/* 804DE754 004A7D14  48 00 00 24 */	b .L_804DE778
.L_804DE758:
/* 804DE758 004A7D18  2C 00 00 02 */	cmpwi r0, 0x2
/* 804DE75C 004A7D1C  40 82 00 1C */	bne .L_804DE778
/* 804DE760 004A7D20  80 63 00 64 */	lwz r3, 0x64(r3)
/* 804DE764 004A7D24  4B E9 E7 51 */	bl ADXF_GetPtStat
/* 804DE768 004A7D28  2C 03 00 03 */	cmpwi r3, 0x3
/* 804DE76C 004A7D2C  40 82 00 0C */	bne .L_804DE778
/* 804DE770 004A7D30  38 00 00 03 */	li r0, 0x3
/* 804DE774 004A7D34  90 1F 00 74 */	stw r0, 0x74(r31)
.L_804DE778:
/* 804DE778 004A7D38  BB 81 00 70 */	lmw r28, 0x70(r1)
/* 804DE77C 004A7D3C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804DE780 004A7D40  7C 08 03 A6 */	mtlr r0
/* 804DE784 004A7D44  38 21 00 80 */	addi r1, r1, 0x80
/* 804DE788 004A7D48  4E 80 00 20 */	blr
.endfn fn_804DE4FC

.fn fn_804DE78C, global
/* 804DE78C 004A7D4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DE790 004A7D50  7C 08 02 A6 */	mflr r0
/* 804DE794 004A7D54  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DE798 004A7D58  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 804DE79C 004A7D5C  7C 7B 1B 78 */	mr r27, r3
/* 804DE7A0 004A7D60  7C BC 2B 78 */	mr r28, r5
/* 804DE7A4 004A7D64  7C DD 33 78 */	mr r29, r6
/* 804DE7A8 004A7D68  7C FE 3B 78 */	mr r30, r7
/* 804DE7AC 004A7D6C  7D 1F 43 78 */	mr r31, r8
/* 804DE7B0 004A7D70  80 03 00 50 */	lwz r0, 0x50(r3)
/* 804DE7B4 004A7D74  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DE7B8 004A7D78  40 82 00 0C */	bne .L_804DE7C4
/* 804DE7BC 004A7D7C  38 60 00 00 */	li r3, 0x0
/* 804DE7C0 004A7D80  48 00 00 80 */	b .L_804DE840
.L_804DE7C4:
/* 804DE7C4 004A7D84  48 00 02 45 */	bl fn_804DEA08
/* 804DE7C8 004A7D88  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE7CC 004A7D8C  40 82 00 0C */	bne .L_804DE7D8
/* 804DE7D0 004A7D90  38 60 00 00 */	li r3, 0x0
/* 804DE7D4 004A7D94  48 00 00 6C */	b .L_804DE840
.L_804DE7D8:
/* 804DE7D8 004A7D98  80 BB 00 50 */	lwz r5, 0x50(r27)
/* 804DE7DC 004A7D9C  7F 63 DB 78 */	mr r3, r27
/* 804DE7E0 004A7DA0  38 80 00 00 */	li r4, 0x0
/* 804DE7E4 004A7DA4  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 804DE7E8 004A7DA8  48 00 00 6D */	bl fn_804DE854
/* 804DE7EC 004A7DAC  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DE7F0 004A7DB0  40 80 00 0C */	bge .L_804DE7FC
/* 804DE7F4 004A7DB4  38 60 00 00 */	li r3, 0x0
/* 804DE7F8 004A7DB8  48 00 00 48 */	b .L_804DE840
.L_804DE7FC:
/* 804DE7FC 004A7DBC  38 1B 00 28 */	addi r0, r27, 0x28
/* 804DE800 004A7DC0  90 1C 00 00 */	stw r0, 0x0(r28)
/* 804DE804 004A7DC4  80 9B 00 60 */	lwz r4, 0x60(r27)
/* 804DE808 004A7DC8  2C 04 00 00 */	cmpwi r4, 0x0
/* 804DE80C 004A7DCC  41 82 00 14 */	beq .L_804DE820
/* 804DE810 004A7DD0  54 60 10 3A */	slwi r0, r3, 2
/* 804DE814 004A7DD4  7C 04 00 2E */	lwzx r0, r4, r0
/* 804DE818 004A7DD8  90 1D 00 00 */	stw r0, 0x0(r29)
/* 804DE81C 004A7DDC  48 00 00 0C */	b .L_804DE828
.L_804DE820:
/* 804DE820 004A7DE0  80 1B 00 64 */	lwz r0, 0x64(r27)
/* 804DE824 004A7DE4  90 1D 00 00 */	stw r0, 0x0(r29)
.L_804DE828:
/* 804DE828 004A7DE8  90 7E 00 00 */	stw r3, 0x0(r30)
/* 804DE82C 004A7DEC  54 60 08 3C */	slwi r0, r3, 1
/* 804DE830 004A7DF0  38 60 00 01 */	li r3, 0x1
/* 804DE834 004A7DF4  80 9B 00 5C */	lwz r4, 0x5c(r27)
/* 804DE838 004A7DF8  7C 04 02 2E */	lhzx r0, r4, r0
/* 804DE83C 004A7DFC  90 1F 00 00 */	stw r0, 0x0(r31)
.L_804DE840:
/* 804DE840 004A7E00  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 804DE844 004A7E04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DE848 004A7E08  7C 08 03 A6 */	mtlr r0
/* 804DE84C 004A7E0C  38 21 00 20 */	addi r1, r1, 0x20
/* 804DE850 004A7E10  4E 80 00 20 */	blr
.endfn fn_804DE78C

.fn fn_804DE854, global
/* 804DE854 004A7E14  7C E4 28 50 */	subf r7, r4, r5
/* 804DE858 004A7E18  2C 07 00 10 */	cmpwi r7, 0x10
/* 804DE85C 004A7E1C  40 80 00 58 */	bge .L_804DE8B4
/* 804DE860 004A7E20  80 C3 00 58 */	lwz r6, 0x58(r3)
/* 804DE864 004A7E24  54 80 18 38 */	slwi r0, r4, 3
/* 804DE868 004A7E28  7C C6 02 14 */	add r6, r6, r0
/* 804DE86C 004A7E2C  7C E9 03 A6 */	mtctr r7
/* 804DE870 004A7E30  7C 04 28 00 */	cmpw r4, r5
/* 804DE874 004A7E34  40 80 00 38 */	bge .L_804DE8AC
.L_804DE878:
/* 804DE878 004A7E38  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 804DE87C 004A7E3C  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 804DE880 004A7E40  7C 05 00 40 */	cmplw r5, r0
/* 804DE884 004A7E44  40 82 00 1C */	bne .L_804DE8A0
/* 804DE888 004A7E48  80 A6 00 04 */	lwz r5, 0x4(r6)
/* 804DE88C 004A7E4C  80 03 00 70 */	lwz r0, 0x70(r3)
/* 804DE890 004A7E50  7C 05 00 40 */	cmplw r5, r0
/* 804DE894 004A7E54  40 82 00 0C */	bne .L_804DE8A0
/* 804DE898 004A7E58  7C 83 23 78 */	mr r3, r4
/* 804DE89C 004A7E5C  4E 80 00 20 */	blr
.L_804DE8A0:
/* 804DE8A0 004A7E60  38 84 00 01 */	addi r4, r4, 0x1
/* 804DE8A4 004A7E64  38 C6 00 08 */	addi r6, r6, 0x8
/* 804DE8A8 004A7E68  42 00 FF D0 */	bdnz .L_804DE878
.L_804DE8AC:
/* 804DE8AC 004A7E6C  38 60 FF FF */	li r3, -0x1
/* 804DE8B0 004A7E70  4E 80 00 20 */	blr
.L_804DE8B4:
/* 804DE8B4 004A7E74  7C 05 22 14 */	add r0, r5, r4
/* 804DE8B8 004A7E78  80 C3 00 58 */	lwz r6, 0x58(r3)
/* 804DE8BC 004A7E7C  7C 00 0E 70 */	srawi r0, r0, 1
/* 804DE8C0 004A7E80  80 E3 00 70 */	lwz r7, 0x70(r3)
/* 804DE8C4 004A7E84  7D 00 01 94 */	addze r8, r0
/* 804DE8C8 004A7E88  55 00 18 38 */	slwi r0, r8, 3
/* 804DE8CC 004A7E8C  7C C6 02 14 */	add r6, r6, r0
/* 804DE8D0 004A7E90  80 06 00 04 */	lwz r0, 0x4(r6)
/* 804DE8D4 004A7E94  7C 00 38 40 */	cmplw r0, r7
/* 804DE8D8 004A7E98  40 82 00 30 */	bne .L_804DE908
/* 804DE8DC 004A7E9C  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 804DE8E0 004A7EA0  80 C6 00 00 */	lwz r6, 0x0(r6)
/* 804DE8E4 004A7EA4  7C 06 00 40 */	cmplw r6, r0
/* 804DE8E8 004A7EA8  40 82 00 0C */	bne .L_804DE8F4
/* 804DE8EC 004A7EAC  7D 03 43 78 */	mr r3, r8
/* 804DE8F0 004A7EB0  4E 80 00 20 */	blr
.L_804DE8F4:
/* 804DE8F4 004A7EB4  40 81 00 0C */	ble .L_804DE900
/* 804DE8F8 004A7EB8  7D 05 43 78 */	mr r5, r8
/* 804DE8FC 004A7EBC  4B FF FF 58 */	b fn_804DE854
.L_804DE900:
/* 804DE900 004A7EC0  7D 04 43 78 */	mr r4, r8
/* 804DE904 004A7EC4  4B FF FF 50 */	b fn_804DE854
.L_804DE908:
/* 804DE908 004A7EC8  40 81 00 0C */	ble .L_804DE914
/* 804DE90C 004A7ECC  7D 05 43 78 */	mr r5, r8
/* 804DE910 004A7ED0  4B FF FF 44 */	b fn_804DE854
.L_804DE914:
/* 804DE914 004A7ED4  7D 04 43 78 */	mr r4, r8
/* 804DE918 004A7ED8  4B FF FF 3C */	b fn_804DE854
/* 804DE91C 004A7EDC  4E 80 00 20 */	blr
.endfn fn_804DE854

.fn fn_804DE920, global
/* 804DE920 004A7EE0  80 03 00 74 */	lwz r0, 0x74(r3)
/* 804DE924 004A7EE4  38 80 00 00 */	li r4, 0x0
/* 804DE928 004A7EE8  2C 00 00 03 */	cmpwi r0, 0x3
/* 804DE92C 004A7EEC  41 82 00 14 */	beq .L_804DE940
/* 804DE930 004A7EF0  88 03 00 7A */	lbz r0, 0x7a(r3)
/* 804DE934 004A7EF4  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DE938 004A7EF8  40 82 00 08 */	bne .L_804DE940
/* 804DE93C 004A7EFC  38 80 00 01 */	li r4, 0x1
.L_804DE940:
/* 804DE940 004A7F00  7C 83 23 78 */	mr r3, r4
/* 804DE944 004A7F04  4E 80 00 20 */	blr
.endfn fn_804DE920

.fn fn_804DE948, global
/* 804DE948 004A7F08  80 C3 00 50 */	lwz r6, 0x50(r3)
/* 804DE94C 004A7F0C  2C 06 00 00 */	cmpwi r6, 0x0
/* 804DE950 004A7F10  4D 82 00 20 */	beqlr
/* 804DE954 004A7F14  38 86 00 78 */	addi r4, r6, 0x78
/* 804DE958 004A7F18  90 83 00 58 */	stw r4, 0x58(r3)
/* 804DE95C 004A7F1C  80 06 00 10 */	lwz r0, 0x10(r6)
/* 804DE960 004A7F20  54 00 18 38 */	slwi r0, r0, 3
/* 804DE964 004A7F24  7C A4 02 14 */	add r5, r4, r0
/* 804DE968 004A7F28  90 A3 00 5C */	stw r5, 0x5c(r3)
/* 804DE96C 004A7F2C  80 06 00 10 */	lwz r0, 0x10(r6)
/* 804DE970 004A7F30  80 86 00 0C */	lwz r4, 0xc(r6)
/* 804DE974 004A7F34  54 00 08 3C */	slwi r0, r0, 1
/* 804DE978 004A7F38  7C A5 02 14 */	add r5, r5, r0
/* 804DE97C 004A7F3C  7C 06 28 50 */	subf r0, r6, r5
/* 804DE980 004A7F40  7C 04 00 40 */	cmplw r4, r0
/* 804DE984 004A7F44  4C 81 00 20 */	blelr
/* 804DE988 004A7F48  90 A3 00 60 */	stw r5, 0x60(r3)
/* 804DE98C 004A7F4C  4E 80 00 20 */	blr
.endfn fn_804DE948

.fn fn_804DE990, global
/* 804DE990 004A7F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE994 004A7F54  7C 08 02 A6 */	mflr r0
/* 804DE998 004A7F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE99C 004A7F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE9A0 004A7F60  7C 7F 1B 78 */	mr r31, r3
/* 804DE9A4 004A7F64  80 A3 00 4C */	lwz r5, 0x4c(r3)
/* 804DE9A8 004A7F68  80 04 00 04 */	lwz r0, 0x4(r4)
/* 804DE9AC 004A7F6C  7C 00 28 40 */	cmplw r0, r5
/* 804DE9B0 004A7F70  40 82 00 40 */	bne .L_804DE9F0
/* 804DE9B4 004A7F74  80 04 00 00 */	lwz r0, 0x0(r4)
/* 804DE9B8 004A7F78  2C 00 00 01 */	cmpwi r0, 0x1
/* 804DE9BC 004A7F7C  40 82 00 1C */	bne .L_804DE9D8
/* 804DE9C0 004A7F80  80 85 00 04 */	lwz r4, 0x4(r5)
/* 804DE9C4 004A7F84  38 00 00 00 */	li r0, 0x0
/* 804DE9C8 004A7F88  90 05 00 04 */	stw r0, 0x4(r5)
/* 804DE9CC 004A7F8C  90 83 00 50 */	stw r4, 0x50(r3)
/* 804DE9D0 004A7F90  4B FF FF 79 */	bl fn_804DE948
/* 804DE9D4 004A7F94  48 00 00 0C */	b .L_804DE9E0
.L_804DE9D8:
/* 804DE9D8 004A7F98  38 00 00 01 */	li r0, 0x1
/* 804DE9DC 004A7F9C  98 03 00 78 */	stb r0, 0x78(r3)
.L_804DE9E0:
/* 804DE9E0 004A7FA0  38 00 00 00 */	li r0, 0x0
/* 804DE9E4 004A7FA4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 804DE9E8 004A7FA8  38 60 00 01 */	li r3, 0x1
/* 804DE9EC 004A7FAC  48 00 00 08 */	b .L_804DE9F4
.L_804DE9F0:
/* 804DE9F0 004A7FB0  38 60 00 00 */	li r3, 0x0
.L_804DE9F4:
/* 804DE9F4 004A7FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE9F8 004A7FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE9FC 004A7FBC  7C 08 03 A6 */	mtlr r0
/* 804DEA00 004A7FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DEA04 004A7FC4  4E 80 00 20 */	blr
.endfn fn_804DE990

.fn fn_804DEA08, global
/* 804DEA08 004A7FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DEA0C 004A7FCC  7C 08 02 A6 */	mflr r0
/* 804DEA10 004A7FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DEA14 004A7FD4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 804DEA18 004A7FD8  7C 7E 1B 78 */	mr r30, r3
/* 804DEA1C 004A7FDC  7C 9F 23 78 */	mr r31, r4
/* 804DEA20 004A7FE0  80 03 00 50 */	lwz r0, 0x50(r3)
/* 804DEA24 004A7FE4  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DEA28 004A7FE8  40 82 00 0C */	bne .L_804DEA34
/* 804DEA2C 004A7FEC  38 60 00 00 */	li r3, 0x0
/* 804DEA30 004A7FF0  48 00 00 D0 */	b .L_804DEB00
.L_804DEA34:
/* 804DEA34 004A7FF4  38 00 00 00 */	li r0, 0x0
/* 804DEA38 004A7FF8  90 03 00 6C */	stw r0, 0x6c(r3)
/* 804DEA3C 004A7FFC  90 03 00 70 */	stw r0, 0x70(r3)
/* 804DEA40 004A8000  7F E3 FB 78 */	mr r3, r31
/* 804DEA44 004A8004  4B DD AB 75 */	bl strlen
/* 804DEA48 004A8008  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DEA4C 004A800C  40 82 00 0C */	bne .L_804DEA58
/* 804DEA50 004A8010  38 60 00 00 */	li r3, 0x0
/* 804DEA54 004A8014  48 00 00 AC */	b .L_804DEB00
.L_804DEA58:
/* 804DEA58 004A8018  80 BE 00 50 */	lwz r5, 0x50(r30)
/* 804DEA5C 004A801C  38 E3 FF FF */	addi r7, r3, -0x1
/* 804DEA60 004A8020  38 60 00 00 */	li r3, 0x0
/* 804DEA64 004A8024  38 80 00 01 */	li r4, 0x1
/* 804DEA68 004A8028  80 05 00 34 */	lwz r0, 0x34(r5)
/* 804DEA6C 004A802C  7C 09 03 A6 */	mtctr r0
/* 804DEA70 004A8030  28 00 00 00 */	cmplwi r0, 0x0
/* 804DEA74 004A8034  40 81 00 88 */	ble .L_804DEAFC
.L_804DEA78:
/* 804DEA78 004A8038  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 804DEA7C 004A803C  7C A0 1A 14 */	add r5, r0, r3
/* 804DEA80 004A8040  88 A5 00 38 */	lbz r5, 0x38(r5)
/* 804DEA84 004A8044  7C A0 1E 70 */	srawi r0, r5, 3
/* 804DEA88 004A8048  54 A6 E8 FE */	srwi r6, r5, 3
/* 804DEA8C 004A804C  7C 00 01 94 */	addze r0, r0
/* 804DEA90 004A8050  54 00 18 38 */	slwi r0, r0, 3
/* 804DEA94 004A8054  7C 07 30 40 */	cmplw r7, r6
/* 804DEA98 004A8058  7C 00 28 50 */	subf r0, r0, r5
/* 804DEA9C 004A805C  7C 80 00 30 */	slw r0, r4, r0
/* 804DEAA0 004A8060  54 05 06 3E */	clrlwi r5, r0, 24
/* 804DEAA4 004A8064  41 80 00 50 */	blt .L_804DEAF4
/* 804DEAA8 004A8068  7C 06 38 50 */	subf r0, r6, r7
/* 804DEAAC 004A806C  28 03 00 20 */	cmplwi r3, 0x20
/* 804DEAB0 004A8070  7C 1F 00 AE */	lbzx r0, r31, r0
/* 804DEAB4 004A8074  7C A5 00 38 */	and r5, r5, r0
/* 804DEAB8 004A8078  30 05 FF FF */	addic r0, r5, -0x1
/* 804DEABC 004A807C  7C C0 29 10 */	subfe r6, r0, r5
/* 804DEAC0 004A8080  41 80 00 20 */	blt .L_804DEAE0
/* 804DEAC4 004A8084  38 03 FF E0 */	addi r0, r3, -0x20
/* 804DEAC8 004A8088  80 BE 00 70 */	lwz r5, 0x70(r30)
/* 804DEACC 004A808C  7C 80 00 30 */	slw r0, r4, r0
/* 804DEAD0 004A8090  7C 00 31 D6 */	mullw r0, r0, r6
/* 804DEAD4 004A8094  7C A0 03 78 */	or r0, r5, r0
/* 804DEAD8 004A8098  90 1E 00 70 */	stw r0, 0x70(r30)
/* 804DEADC 004A809C  48 00 00 18 */	b .L_804DEAF4
.L_804DEAE0:
/* 804DEAE0 004A80A0  7C 80 18 30 */	slw r0, r4, r3
/* 804DEAE4 004A80A4  80 BE 00 6C */	lwz r5, 0x6c(r30)
/* 804DEAE8 004A80A8  7C 00 31 D6 */	mullw r0, r0, r6
/* 804DEAEC 004A80AC  7C A0 03 78 */	or r0, r5, r0
/* 804DEAF0 004A80B0  90 1E 00 6C */	stw r0, 0x6c(r30)
.L_804DEAF4:
/* 804DEAF4 004A80B4  38 63 00 01 */	addi r3, r3, 0x1
/* 804DEAF8 004A80B8  42 00 FF 80 */	bdnz .L_804DEA78
.L_804DEAFC:
/* 804DEAFC 004A80BC  38 60 00 01 */	li r3, 0x1
.L_804DEB00:
/* 804DEB00 004A80C0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 804DEB04 004A80C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DEB08 004A80C8  7C 08 03 A6 */	mtlr r0
/* 804DEB0C 004A80CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DEB10 004A80D0  4E 80 00 20 */	blr
.endfn fn_804DEA08

# 0x80527FFC - 0x80528008
.rodata
.balign 4

.obj CPackItem_typestr, global
	.4byte 0x43506163
	.4byte 0x6B497465
	.4byte 0x6D000000

# 0x805737A0 - 0x80573828
.data
.balign 8

.obj __vt__CPackItem, global
	.4byte __RTTI__CPackItem
	.4byte 0x00000000
	.4byte fn_804DE450
	.4byte fn_80039E28
	.4byte fn_804DE990
	.4byte fn_80039E18
	.4byte fn_80039E10
	.4byte fn_80039E0C
	.4byte fn_80039E04
	.4byte fn_80039DFC
	.4byte fn_80039DF4
	.4byte fn_80039DEC
	.4byte fn_80039DE4
	.4byte fn_80039DDC
	.4byte fn_80039DD4
	.4byte fn_80039DCC
	.4byte fn_80039DC4
	.4byte fn_80039DBC
	.4byte fn_80039DB4
	.4byte fn_80039DAC
	.4byte fn_80039DA4
	.4byte fn_80039D9C
	.4byte fn_80039D94
	.4byte fn_80039D8C
	.4byte fn_80039D84
	.4byte fn_80039D7C
	.4byte fn_80039D74
	.4byte fn_80039D6C
	.4byte fn_80039D64
	.4byte fn_80039D5C
	.4byte fn_80039D54
	.4byte fn_80039D4C
	.4byte fn_80039D44
	.4byte fn_80039D40

# 0x80666510 - 0x80666518
.section .sdata, "wa"
.balign 8

.obj __RTTI__CPackItem, global
	.4byte CPackItem_typestr
	.4byte 0x00000000
