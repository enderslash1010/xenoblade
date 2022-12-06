.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ADX_DecodeMono4
ADX_DecodeMono4:
/* 8038940C 003529CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80389410 003529D0  39 80 00 00 */	li r12, 0
/* 80389414 003529D4  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80389418 003529D8  3F 60 80 52 */	lis r27, lbl_8051AA98@ha
/* 8038941C 003529DC  AB C1 00 3A */	lha r30, 0x3a(r1)
/* 80389420 003529E0  3B 7B AA 98 */	addi r27, r27, lbl_8051AA98@l
/* 80389424 003529E4  3B A0 00 10 */	li r29, 0x10
/* 80389428 003529E8  A8 06 00 00 */	lha r0, 0(r6)
/* 8038942C 003529EC  A9 66 00 02 */	lha r11, 2(r6)
/* 80389430 003529F0  48 00 00 F8 */	b lbl_80389528
lbl_80389434:
/* 80389434 003529F4  AB 23 00 00 */	lha r25, 0(r3)
/* 80389438 003529F8  57 3A 04 21 */	rlwinm. r26, r25, 0, 0x10, 0x10
/* 8038943C 003529FC  41 82 00 0C */	beq lbl_80389448
/* 80389440 00352A00  7D 83 63 78 */	mr r3, r12
/* 80389444 00352A04  48 00 00 F8 */	b lbl_8038953C
lbl_80389448:
/* 80389448 00352A08  AB 89 00 00 */	lha r28, 0(r9)
/* 8038944C 00352A0C  7F 5C 51 D6 */	mullw r26, r28, r10
/* 80389450 00352A10  7F 3C E2 78 */	xor r28, r25, r28
/* 80389454 00352A14  57 9C 04 FE */	clrlwi r28, r28, 0x13
/* 80389458 00352A18  3B 9C 00 01 */	addi r28, r28, 1
/* 8038945C 00352A1C  7F 5E D2 14 */	add r26, r30, r26
/* 80389460 00352A20  57 5A 04 7E */	clrlwi r26, r26, 0x11
/* 80389464 00352A24  7F 9F 07 34 */	extsh r31, r28
/* 80389468 00352A28  B3 49 00 00 */	sth r26, 0(r9)
/* 8038946C 00352A2C  7F A9 03 A6 */	mtctr r29
/* 80389470 00352A30  38 63 00 02 */	addi r3, r3, 2
lbl_80389474:
/* 80389474 00352A34  7F 87 01 D6 */	mullw r28, r7, r0
/* 80389478 00352A38  8B 23 00 00 */	lbz r25, 0(r3)
/* 8038947C 00352A3C  38 63 00 01 */	addi r3, r3, 1
/* 80389480 00352A40  7F 39 07 74 */	extsb r25, r25
/* 80389484 00352A44  7F 3A 26 70 */	srawi r26, r25, 4
/* 80389488 00352A48  7D 68 59 D6 */	mullw r11, r8, r11
/* 8038948C 00352A4C  7D 7C 5A 14 */	add r11, r28, r11
/* 80389490 00352A50  7F 9A F9 D6 */	mullw r28, r26, r31
/* 80389494 00352A54  7D 6B 66 70 */	srawi r11, r11, 0xc
/* 80389498 00352A58  7D 7C 5A 14 */	add r11, r28, r11
/* 8038949C 00352A5C  2C 0B 7F FF */	cmpwi r11, 0x7fff
/* 803894A0 00352A60  41 81 00 0C */	bgt lbl_803894AC
/* 803894A4 00352A64  2C 0B 80 00 */	cmpwi r11, -32768
/* 803894A8 00352A68  40 80 00 20 */	bge lbl_803894C8
lbl_803894AC:
/* 803894AC 00352A6C  2C 0B 80 00 */	cmpwi r11, -32768
/* 803894B0 00352A70  40 80 00 0C */	bge lbl_803894BC
/* 803894B4 00352A74  39 60 80 00 */	li r11, -32768
/* 803894B8 00352A78  48 00 00 10 */	b lbl_803894C8
lbl_803894BC:
/* 803894BC 00352A7C  2C 0B 7F FF */	cmpwi r11, 0x7fff
/* 803894C0 00352A80  40 81 00 08 */	ble lbl_803894C8
/* 803894C4 00352A84  39 60 7F FF */	li r11, 0x7fff
lbl_803894C8:
/* 803894C8 00352A88  57 3C 16 BA */	rlwinm r28, r25, 2, 0x1a, 0x1d
/* 803894CC 00352A8C  B1 65 00 00 */	sth r11, 0(r5)
/* 803894D0 00352A90  7F 5B E0 2E */	lwzx r26, r27, r28
/* 803894D4 00352A94  7F 87 59 D6 */	mullw r28, r7, r11
/* 803894D8 00352A98  7C 08 01 D6 */	mullw r0, r8, r0
/* 803894DC 00352A9C  7C 1C 02 14 */	add r0, r28, r0
/* 803894E0 00352AA0  7F 9A F9 D6 */	mullw r28, r26, r31
/* 803894E4 00352AA4  7C 00 66 70 */	srawi r0, r0, 0xc
/* 803894E8 00352AA8  7C 1C 02 14 */	add r0, r28, r0
/* 803894EC 00352AAC  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 803894F0 00352AB0  41 81 00 0C */	bgt lbl_803894FC
/* 803894F4 00352AB4  2C 00 80 00 */	cmpwi r0, -32768
/* 803894F8 00352AB8  40 80 00 20 */	bge lbl_80389518
lbl_803894FC:
/* 803894FC 00352ABC  2C 00 80 00 */	cmpwi r0, -32768
/* 80389500 00352AC0  40 80 00 0C */	bge lbl_8038950C
/* 80389504 00352AC4  38 00 80 00 */	li r0, -32768
/* 80389508 00352AC8  48 00 00 10 */	b lbl_80389518
lbl_8038950C:
/* 8038950C 00352ACC  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80389510 00352AD0  40 81 00 08 */	ble lbl_80389518
/* 80389514 00352AD4  38 00 7F FF */	li r0, 0x7fff
lbl_80389518:
/* 80389518 00352AD8  B0 05 00 02 */	sth r0, 2(r5)
/* 8038951C 00352ADC  38 A5 00 04 */	addi r5, r5, 4
/* 80389520 00352AE0  42 00 FF 54 */	bdnz lbl_80389474
/* 80389524 00352AE4  39 8C 00 01 */	addi r12, r12, 1
lbl_80389528:
/* 80389528 00352AE8  7C 0C 20 00 */	cmpw r12, r4
/* 8038952C 00352AEC  41 80 FF 08 */	blt lbl_80389434
/* 80389530 00352AF0  B0 06 00 00 */	sth r0, 0(r6)
/* 80389534 00352AF4  7C 83 23 78 */	mr r3, r4
/* 80389538 00352AF8  B1 66 00 02 */	sth r11, 2(r6)
lbl_8038953C:
/* 8038953C 00352AFC  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80389540 00352B00  38 21 00 30 */	addi r1, r1, 0x30
/* 80389544 00352B04  4E 80 00 20 */	blr 

.global ADX_DecodeSte4AsMono
ADX_DecodeSte4AsMono:
/* 80389548 00352B08  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8038954C 00352B0C  54 80 0F FE */	srwi r0, r4, 0x1f
/* 80389550 00352B10  3D 60 80 52 */	lis r11, lbl_8051AA98@ha
/* 80389554 00352B14  3D 80 66 66 */	lis r12, 0x66666667@ha
/* 80389558 00352B18  BE 01 00 10 */	stmw r16, 0x10(r1)
/* 8038955C 00352B1C  7C 00 22 14 */	add r0, r0, r4
/* 80389560 00352B20  7C 16 0E 70 */	srawi r22, r0, 1
/* 80389564 00352B24  82 61 00 58 */	lwz r19, 0x58(r1)
/* 80389568 00352B28  AA 81 00 5E */	lha r20, 0x5e(r1)
/* 8038956C 00352B2C  38 0C 66 67 */	addi r0, r12, 0x66666667@l
/* 80389570 00352B30  AA A1 00 62 */	lha r21, 0x62(r1)
/* 80389574 00352B34  39 6B AA 98 */	addi r11, r11, lbl_8051AA98@l
/* 80389578 00352B38  3B 40 00 00 */	li r26, 0
/* 8038957C 00352B3C  3A 40 00 10 */	li r18, 0x10
/* 80389580 00352B40  AB A6 00 00 */	lha r29, 0(r6)
/* 80389584 00352B44  AB 86 00 02 */	lha r28, 2(r6)
/* 80389588 00352B48  AB C8 00 00 */	lha r30, 0(r8)
/* 8038958C 00352B4C  AB 68 00 02 */	lha r27, 2(r8)
/* 80389590 00352B50  48 00 02 6C */	b lbl_803897FC
lbl_80389594:
/* 80389594 00352B54  AA 23 00 00 */	lha r17, 0(r3)
/* 80389598 00352B58  56 2C 04 21 */	rlwinm. r12, r17, 0, 0x10, 0x10
/* 8038959C 00352B5C  41 82 00 0C */	beq lbl_803895A8
/* 803895A0 00352B60  57 43 08 3C */	slwi r3, r26, 1
/* 803895A4 00352B64  48 00 02 74 */	b lbl_80389818
lbl_803895A8:
/* 803895A8 00352B68  AA 13 00 00 */	lha r16, 0(r19)
/* 803895AC 00352B6C  7D 90 A1 D6 */	mullw r12, r16, r20
/* 803895B0 00352B70  7E 30 82 78 */	xor r16, r17, r16
/* 803895B4 00352B74  56 10 04 FE */	clrlwi r16, r16, 0x13
/* 803895B8 00352B78  3A 10 00 01 */	addi r16, r16, 1
/* 803895BC 00352B7C  7D 95 62 14 */	add r12, r21, r12
/* 803895C0 00352B80  55 8C 04 7E */	clrlwi r12, r12, 0x11
/* 803895C4 00352B84  7E 18 07 34 */	extsh r24, r16
/* 803895C8 00352B88  B1 93 00 00 */	sth r12, 0(r19)
/* 803895CC 00352B8C  AA 23 00 12 */	lha r17, 0x12(r3)
/* 803895D0 00352B90  56 2C 04 21 */	rlwinm. r12, r17, 0, 0x10, 0x10
/* 803895D4 00352B94  41 82 00 0C */	beq lbl_803895E0
/* 803895D8 00352B98  57 43 08 3C */	slwi r3, r26, 1
/* 803895DC 00352B9C  48 00 02 3C */	b lbl_80389818
lbl_803895E0:
/* 803895E0 00352BA0  AA 13 00 00 */	lha r16, 0(r19)
/* 803895E4 00352BA4  7D 90 A1 D6 */	mullw r12, r16, r20
/* 803895E8 00352BA8  7E 30 82 78 */	xor r16, r17, r16
/* 803895EC 00352BAC  56 10 04 FE */	clrlwi r16, r16, 0x13
/* 803895F0 00352BB0  3A 10 00 01 */	addi r16, r16, 1
/* 803895F4 00352BB4  7D 95 62 14 */	add r12, r21, r12
/* 803895F8 00352BB8  55 8C 04 7E */	clrlwi r12, r12, 0x11
/* 803895FC 00352BBC  7E 17 07 34 */	extsh r23, r16
/* 80389600 00352BC0  B1 93 00 00 */	sth r12, 0(r19)
/* 80389604 00352BC4  7E 49 03 A6 */	mtctr r18
/* 80389608 00352BC8  38 63 00 02 */	addi r3, r3, 2
lbl_8038960C:
/* 8038960C 00352BCC  7E 29 E9 D6 */	mullw r17, r9, r29
/* 80389610 00352BD0  89 83 00 00 */	lbz r12, 0(r3)
/* 80389614 00352BD4  8B 23 00 12 */	lbz r25, 0x12(r3)
/* 80389618 00352BD8  38 63 00 01 */	addi r3, r3, 1
/* 8038961C 00352BDC  7D 8C 07 74 */	extsb r12, r12
/* 80389620 00352BE0  7F 39 07 74 */	extsb r25, r25
/* 80389624 00352BE4  7E 0A E1 D6 */	mullw r16, r10, r28
/* 80389628 00352BE8  7D 9F 26 70 */	srawi r31, r12, 4
/* 8038962C 00352BEC  7E 11 82 14 */	add r16, r17, r16
/* 80389630 00352BF0  7E 3F C1 D6 */	mullw r17, r31, r24
/* 80389634 00352BF4  7E 10 66 70 */	srawi r16, r16, 0xc
/* 80389638 00352BF8  7F 91 82 14 */	add r28, r17, r16
/* 8038963C 00352BFC  2C 1C 7F FF */	cmpwi r28, 0x7fff
/* 80389640 00352C00  41 81 00 0C */	bgt lbl_8038964C
/* 80389644 00352C04  2C 1C 80 00 */	cmpwi r28, -32768
/* 80389648 00352C08  40 80 00 20 */	bge lbl_80389668
lbl_8038964C:
/* 8038964C 00352C0C  2C 1C 80 00 */	cmpwi r28, -32768
/* 80389650 00352C10  40 80 00 0C */	bge lbl_8038965C
/* 80389654 00352C14  3B 80 80 00 */	li r28, -32768
/* 80389658 00352C18  48 00 00 10 */	b lbl_80389668
lbl_8038965C:
/* 8038965C 00352C1C  2C 1C 7F FF */	cmpwi r28, 0x7fff
/* 80389660 00352C20  40 81 00 08 */	ble lbl_80389668
/* 80389664 00352C24  3B 80 7F FF */	li r28, 0x7fff
lbl_80389668:
/* 80389668 00352C28  7F E9 F1 D6 */	mullw r31, r9, r30
/* 8038966C 00352C2C  7F 30 26 70 */	srawi r16, r25, 4
/* 80389670 00352C30  7E 2A D9 D6 */	mullw r17, r10, r27
/* 80389674 00352C34  7E 3F 8A 14 */	add r17, r31, r17
/* 80389678 00352C38  7F 70 B9 D6 */	mullw r27, r16, r23
/* 8038967C 00352C3C  7E 31 66 70 */	srawi r17, r17, 0xc
/* 80389680 00352C40  7F 7B 8A 14 */	add r27, r27, r17
/* 80389684 00352C44  2C 1B 7F FF */	cmpwi r27, 0x7fff
/* 80389688 00352C48  41 81 00 0C */	bgt lbl_80389694
/* 8038968C 00352C4C  2C 1B 80 00 */	cmpwi r27, -32768
/* 80389690 00352C50  40 80 00 20 */	bge lbl_803896B0
lbl_80389694:
/* 80389694 00352C54  2C 1B 80 00 */	cmpwi r27, -32768
/* 80389698 00352C58  40 80 00 0C */	bge lbl_803896A4
/* 8038969C 00352C5C  3B 60 80 00 */	li r27, -32768
/* 803896A0 00352C60  48 00 00 10 */	b lbl_803896B0
lbl_803896A4:
/* 803896A4 00352C64  2C 1B 7F FF */	cmpwi r27, 0x7fff
/* 803896A8 00352C68  40 81 00 08 */	ble lbl_803896B0
/* 803896AC 00352C6C  3B 60 7F FF */	li r27, 0x7fff
lbl_803896B0:
/* 803896B0 00352C70  7F FC DA 14 */	add r31, r28, r27
/* 803896B4 00352C74  57 F1 18 38 */	slwi r17, r31, 3
/* 803896B8 00352C78  7E 3F 88 50 */	subf r17, r31, r17
/* 803896BC 00352C7C  7E 20 88 96 */	mulhw r17, r0, r17
/* 803896C0 00352C80  7E 31 16 70 */	srawi r17, r17, 2
/* 803896C4 00352C84  56 3F 0F FE */	srwi r31, r17, 0x1f
/* 803896C8 00352C88  7F F1 FA 14 */	add r31, r17, r31
/* 803896CC 00352C8C  2C 1F 7F FF */	cmpwi r31, 0x7fff
/* 803896D0 00352C90  41 81 00 0C */	bgt lbl_803896DC
/* 803896D4 00352C94  2C 1F 80 00 */	cmpwi r31, -32768
/* 803896D8 00352C98  40 80 00 20 */	bge lbl_803896F8
lbl_803896DC:
/* 803896DC 00352C9C  2C 1F 80 00 */	cmpwi r31, -32768
/* 803896E0 00352CA0  40 80 00 0C */	bge lbl_803896EC
/* 803896E4 00352CA4  3B E0 80 00 */	li r31, -32768
/* 803896E8 00352CA8  48 00 00 10 */	b lbl_803896F8
lbl_803896EC:
/* 803896EC 00352CAC  2C 1F 7F FF */	cmpwi r31, 0x7fff
/* 803896F0 00352CB0  40 81 00 08 */	ble lbl_803896F8
/* 803896F4 00352CB4  3B E0 7F FF */	li r31, 0x7fff
lbl_803896F8:
/* 803896F8 00352CB8  B3 E7 00 00 */	sth r31, 0(r7)
/* 803896FC 00352CBC  55 8C 16 BA */	rlwinm r12, r12, 2, 0x1a, 0x1d
/* 80389700 00352CC0  57 39 16 BA */	rlwinm r25, r25, 2, 0x1a, 0x1d
/* 80389704 00352CC4  7D 8B 60 2E */	lwzx r12, r11, r12
/* 80389708 00352CC8  B3 E5 00 00 */	sth r31, 0(r5)
/* 8038970C 00352CCC  7E 29 E1 D6 */	mullw r17, r9, r28
/* 80389710 00352CD0  7F EB C8 2E */	lwzx r31, r11, r25
/* 80389714 00352CD4  7F 2A E9 D6 */	mullw r25, r10, r29
/* 80389718 00352CD8  7F 31 CA 14 */	add r25, r17, r25
/* 8038971C 00352CDC  7E 2C C1 D6 */	mullw r17, r12, r24
/* 80389720 00352CE0  7F 2C 66 70 */	srawi r12, r25, 0xc
/* 80389724 00352CE4  7F B1 62 14 */	add r29, r17, r12
/* 80389728 00352CE8  2C 1D 7F FF */	cmpwi r29, 0x7fff
/* 8038972C 00352CEC  41 81 00 0C */	bgt lbl_80389738
/* 80389730 00352CF0  2C 1D 80 00 */	cmpwi r29, -32768
/* 80389734 00352CF4  40 80 00 20 */	bge lbl_80389754
lbl_80389738:
/* 80389738 00352CF8  2C 1D 80 00 */	cmpwi r29, -32768
/* 8038973C 00352CFC  40 80 00 0C */	bge lbl_80389748
/* 80389740 00352D00  3B A0 80 00 */	li r29, -32768
/* 80389744 00352D04  48 00 00 10 */	b lbl_80389754
lbl_80389748:
/* 80389748 00352D08  2C 1D 7F FF */	cmpwi r29, 0x7fff
/* 8038974C 00352D0C  40 81 00 08 */	ble lbl_80389754
/* 80389750 00352D10  3B A0 7F FF */	li r29, 0x7fff
lbl_80389754:
/* 80389754 00352D14  7F 29 D9 D6 */	mullw r25, r9, r27
/* 80389758 00352D18  7D 8A F1 D6 */	mullw r12, r10, r30
/* 8038975C 00352D1C  7D 99 62 14 */	add r12, r25, r12
/* 80389760 00352D20  7F 3F B9 D6 */	mullw r25, r31, r23
/* 80389764 00352D24  7D 8C 66 70 */	srawi r12, r12, 0xc
/* 80389768 00352D28  7F D9 62 14 */	add r30, r25, r12
/* 8038976C 00352D2C  2C 1E 7F FF */	cmpwi r30, 0x7fff
/* 80389770 00352D30  41 81 00 0C */	bgt lbl_8038977C
/* 80389774 00352D34  2C 1E 80 00 */	cmpwi r30, -32768
/* 80389778 00352D38  40 80 00 20 */	bge lbl_80389798
lbl_8038977C:
/* 8038977C 00352D3C  2C 1E 80 00 */	cmpwi r30, -32768
/* 80389780 00352D40  40 80 00 0C */	bge lbl_8038978C
/* 80389784 00352D44  3B C0 80 00 */	li r30, -32768
/* 80389788 00352D48  48 00 00 10 */	b lbl_80389798
lbl_8038978C:
/* 8038978C 00352D4C  2C 1E 7F FF */	cmpwi r30, 0x7fff
/* 80389790 00352D50  40 81 00 08 */	ble lbl_80389798
/* 80389794 00352D54  3B C0 7F FF */	li r30, 0x7fff
lbl_80389798:
/* 80389798 00352D58  7F 3D F2 14 */	add r25, r29, r30
/* 8038979C 00352D5C  57 2C 18 38 */	slwi r12, r25, 3
/* 803897A0 00352D60  7D 99 60 50 */	subf r12, r25, r12
/* 803897A4 00352D64  7D 80 60 96 */	mulhw r12, r0, r12
/* 803897A8 00352D68  7D 8C 16 70 */	srawi r12, r12, 2
/* 803897AC 00352D6C  55 99 0F FE */	srwi r25, r12, 0x1f
/* 803897B0 00352D70  7D 8C CA 14 */	add r12, r12, r25
/* 803897B4 00352D74  2C 0C 7F FF */	cmpwi r12, 0x7fff
/* 803897B8 00352D78  41 81 00 0C */	bgt lbl_803897C4
/* 803897BC 00352D7C  2C 0C 80 00 */	cmpwi r12, -32768
/* 803897C0 00352D80  40 80 00 20 */	bge lbl_803897E0
lbl_803897C4:
/* 803897C4 00352D84  2C 0C 80 00 */	cmpwi r12, -32768
/* 803897C8 00352D88  40 80 00 0C */	bge lbl_803897D4
/* 803897CC 00352D8C  39 80 80 00 */	li r12, -32768
/* 803897D0 00352D90  48 00 00 10 */	b lbl_803897E0
lbl_803897D4:
/* 803897D4 00352D94  2C 0C 7F FF */	cmpwi r12, 0x7fff
/* 803897D8 00352D98  40 81 00 08 */	ble lbl_803897E0
/* 803897DC 00352D9C  39 80 7F FF */	li r12, 0x7fff
lbl_803897E0:
/* 803897E0 00352DA0  B1 87 00 02 */	sth r12, 2(r7)
/* 803897E4 00352DA4  38 E7 00 04 */	addi r7, r7, 4
/* 803897E8 00352DA8  B1 85 00 02 */	sth r12, 2(r5)
/* 803897EC 00352DAC  38 A5 00 04 */	addi r5, r5, 4
/* 803897F0 00352DB0  42 00 FE 1C */	bdnz lbl_8038960C
/* 803897F4 00352DB4  38 63 00 12 */	addi r3, r3, 0x12
/* 803897F8 00352DB8  3B 5A 00 01 */	addi r26, r26, 1
lbl_803897FC:
/* 803897FC 00352DBC  7C 1A B0 00 */	cmpw r26, r22
/* 80389800 00352DC0  41 80 FD 94 */	blt lbl_80389594
/* 80389804 00352DC4  B3 A6 00 00 */	sth r29, 0(r6)
/* 80389808 00352DC8  7C 83 23 78 */	mr r3, r4
/* 8038980C 00352DCC  B3 86 00 02 */	sth r28, 2(r6)
/* 80389810 00352DD0  B3 C8 00 00 */	sth r30, 0(r8)
/* 80389814 00352DD4  B3 68 00 02 */	sth r27, 2(r8)
lbl_80389818:
/* 80389818 00352DD8  BA 01 00 10 */	lmw r16, 0x10(r1)
/* 8038981C 00352DDC  38 21 00 50 */	addi r1, r1, 0x50
/* 80389820 00352DE0  4E 80 00 20 */	blr 

.global ADX_DecodeSte4AsSte
ADX_DecodeSte4AsSte:
/* 80389824 00352DE4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80389828 00352DE8  54 80 0F FE */	srwi r0, r4, 0x1f
/* 8038982C 00352DEC  3D 60 80 52 */	lis r11, lbl_8051AA98@ha
/* 80389830 00352DF0  BE 21 00 14 */	stmw r17, 0x14(r1)
/* 80389834 00352DF4  7C 00 22 14 */	add r0, r0, r4
/* 80389838 00352DF8  82 A1 00 58 */	lwz r21, 0x58(r1)
/* 8038983C 00352DFC  7C 18 0E 70 */	srawi r24, r0, 1
/* 80389840 00352E00  AA C1 00 5E */	lha r22, 0x5e(r1)
/* 80389844 00352E04  39 6B AA 98 */	addi r11, r11, lbl_8051AA98@l
/* 80389848 00352E08  AA E1 00 62 */	lha r23, 0x62(r1)
/* 8038984C 00352E0C  3B 80 00 00 */	li r28, 0
/* 80389850 00352E10  3A 80 00 10 */	li r20, 0x10
/* 80389854 00352E14  AB E6 00 00 */	lha r31, 0(r6)
/* 80389858 00352E18  AB C6 00 02 */	lha r30, 2(r6)
/* 8038985C 00352E1C  A9 88 00 00 */	lha r12, 0(r8)
/* 80389860 00352E20  AB A8 00 02 */	lha r29, 2(r8)
/* 80389864 00352E24  48 00 01 DC */	b lbl_80389A40
lbl_80389868:
/* 80389868 00352E28  AA 43 00 00 */	lha r18, 0(r3)
/* 8038986C 00352E2C  56 40 04 21 */	rlwinm. r0, r18, 0, 0x10, 0x10
/* 80389870 00352E30  41 82 00 0C */	beq lbl_8038987C
/* 80389874 00352E34  57 83 08 3C */	slwi r3, r28, 1
/* 80389878 00352E38  48 00 01 E4 */	b lbl_80389A5C
lbl_8038987C:
/* 8038987C 00352E3C  AA 35 00 00 */	lha r17, 0(r21)
/* 80389880 00352E40  7C 11 B1 D6 */	mullw r0, r17, r22
/* 80389884 00352E44  7E 51 8A 78 */	xor r17, r18, r17
/* 80389888 00352E48  56 31 04 FE */	clrlwi r17, r17, 0x13
/* 8038988C 00352E4C  3A 31 00 01 */	addi r17, r17, 1
/* 80389890 00352E50  7C 17 02 14 */	add r0, r23, r0
/* 80389894 00352E54  54 00 04 7E */	clrlwi r0, r0, 0x11
/* 80389898 00352E58  7E 3A 07 34 */	extsh r26, r17
/* 8038989C 00352E5C  B0 15 00 00 */	sth r0, 0(r21)
/* 803898A0 00352E60  AA 43 00 12 */	lha r18, 0x12(r3)
/* 803898A4 00352E64  56 40 04 21 */	rlwinm. r0, r18, 0, 0x10, 0x10
/* 803898A8 00352E68  41 82 00 0C */	beq lbl_803898B4
/* 803898AC 00352E6C  57 83 08 3C */	slwi r3, r28, 1
/* 803898B0 00352E70  48 00 01 AC */	b lbl_80389A5C
lbl_803898B4:
/* 803898B4 00352E74  AA 35 00 00 */	lha r17, 0(r21)
/* 803898B8 00352E78  7C 11 B1 D6 */	mullw r0, r17, r22
/* 803898BC 00352E7C  7E 51 8A 78 */	xor r17, r18, r17
/* 803898C0 00352E80  56 31 04 FE */	clrlwi r17, r17, 0x13
/* 803898C4 00352E84  3A 31 00 01 */	addi r17, r17, 1
/* 803898C8 00352E88  7C 17 02 14 */	add r0, r23, r0
/* 803898CC 00352E8C  54 00 04 7E */	clrlwi r0, r0, 0x11
/* 803898D0 00352E90  7E 39 07 34 */	extsh r25, r17
/* 803898D4 00352E94  B0 15 00 00 */	sth r0, 0(r21)
/* 803898D8 00352E98  7E 89 03 A6 */	mtctr r20
/* 803898DC 00352E9C  38 63 00 02 */	addi r3, r3, 2
lbl_803898E0:
/* 803898E0 00352EA0  7E 49 F9 D6 */	mullw r18, r9, r31
/* 803898E4 00352EA4  88 03 00 00 */	lbz r0, 0(r3)
/* 803898E8 00352EA8  8B 63 00 12 */	lbz r27, 0x12(r3)
/* 803898EC 00352EAC  38 63 00 01 */	addi r3, r3, 1
/* 803898F0 00352EB0  7C 00 07 74 */	extsb r0, r0
/* 803898F4 00352EB4  7F 7B 07 74 */	extsb r27, r27
/* 803898F8 00352EB8  7E 2A F1 D6 */	mullw r17, r10, r30
/* 803898FC 00352EBC  7C 13 26 70 */	srawi r19, r0, 4
/* 80389900 00352EC0  7E 32 8A 14 */	add r17, r18, r17
/* 80389904 00352EC4  7E 53 D1 D6 */	mullw r18, r19, r26
/* 80389908 00352EC8  7E 31 66 70 */	srawi r17, r17, 0xc
/* 8038990C 00352ECC  7F D2 8A 14 */	add r30, r18, r17
/* 80389910 00352ED0  2C 1E 7F FF */	cmpwi r30, 0x7fff
/* 80389914 00352ED4  41 81 00 0C */	bgt lbl_80389920
/* 80389918 00352ED8  2C 1E 80 00 */	cmpwi r30, -32768
/* 8038991C 00352EDC  40 80 00 20 */	bge lbl_8038993C
lbl_80389920:
/* 80389920 00352EE0  2C 1E 80 00 */	cmpwi r30, -32768
/* 80389924 00352EE4  40 80 00 0C */	bge lbl_80389930
/* 80389928 00352EE8  3B C0 80 00 */	li r30, -32768
/* 8038992C 00352EEC  48 00 00 10 */	b lbl_8038993C
lbl_80389930:
/* 80389930 00352EF0  2C 1E 7F FF */	cmpwi r30, 0x7fff
/* 80389934 00352EF4  40 81 00 08 */	ble lbl_8038993C
/* 80389938 00352EF8  3B C0 7F FF */	li r30, 0x7fff
lbl_8038993C:
/* 8038993C 00352EFC  7E 49 61 D6 */	mullw r18, r9, r12
/* 80389940 00352F00  7F 71 26 70 */	srawi r17, r27, 4
/* 80389944 00352F04  7E 6A E9 D6 */	mullw r19, r10, r29
/* 80389948 00352F08  7E 72 9A 14 */	add r19, r18, r19
/* 8038994C 00352F0C  7E 51 C9 D6 */	mullw r18, r17, r25
/* 80389950 00352F10  7E 73 66 70 */	srawi r19, r19, 0xc
/* 80389954 00352F14  7F B2 9A 14 */	add r29, r18, r19
/* 80389958 00352F18  2C 1D 7F FF */	cmpwi r29, 0x7fff
/* 8038995C 00352F1C  41 81 00 0C */	bgt lbl_80389968
/* 80389960 00352F20  2C 1D 80 00 */	cmpwi r29, -32768
/* 80389964 00352F24  40 80 00 20 */	bge lbl_80389984
lbl_80389968:
/* 80389968 00352F28  2C 1D 80 00 */	cmpwi r29, -32768
/* 8038996C 00352F2C  40 80 00 0C */	bge lbl_80389978
/* 80389970 00352F30  3B A0 80 00 */	li r29, -32768
/* 80389974 00352F34  48 00 00 10 */	b lbl_80389984
lbl_80389978:
/* 80389978 00352F38  2C 1D 7F FF */	cmpwi r29, 0x7fff
/* 8038997C 00352F3C  40 81 00 08 */	ble lbl_80389984
/* 80389980 00352F40  3B A0 7F FF */	li r29, 0x7fff
lbl_80389984:
/* 80389984 00352F44  54 00 16 BA */	rlwinm r0, r0, 2, 0x1a, 0x1d
/* 80389988 00352F48  B3 C5 00 00 */	sth r30, 0(r5)
/* 8038998C 00352F4C  7E 2B 00 2E */	lwzx r17, r11, r0
/* 80389990 00352F50  57 60 16 BA */	rlwinm r0, r27, 2, 0x1a, 0x1d
/* 80389994 00352F54  7E 69 F1 D6 */	mullw r19, r9, r30
/* 80389998 00352F58  B3 A7 00 00 */	sth r29, 0(r7)
/* 8038999C 00352F5C  7C 0B 00 2E */	lwzx r0, r11, r0
/* 803899A0 00352F60  7F 6A F9 D6 */	mullw r27, r10, r31
/* 803899A4 00352F64  7F 73 DA 14 */	add r27, r19, r27
/* 803899A8 00352F68  7E 71 D1 D6 */	mullw r19, r17, r26
/* 803899AC 00352F6C  7F 7B 66 70 */	srawi r27, r27, 0xc
/* 803899B0 00352F70  7F F3 DA 14 */	add r31, r19, r27
/* 803899B4 00352F74  2C 1F 7F FF */	cmpwi r31, 0x7fff
/* 803899B8 00352F78  41 81 00 0C */	bgt lbl_803899C4
/* 803899BC 00352F7C  2C 1F 80 00 */	cmpwi r31, -32768
/* 803899C0 00352F80  40 80 00 20 */	bge lbl_803899E0
lbl_803899C4:
/* 803899C4 00352F84  2C 1F 80 00 */	cmpwi r31, -32768
/* 803899C8 00352F88  40 80 00 0C */	bge lbl_803899D4
/* 803899CC 00352F8C  3B E0 80 00 */	li r31, -32768
/* 803899D0 00352F90  48 00 00 10 */	b lbl_803899E0
lbl_803899D4:
/* 803899D4 00352F94  2C 1F 7F FF */	cmpwi r31, 0x7fff
/* 803899D8 00352F98  40 81 00 08 */	ble lbl_803899E0
/* 803899DC 00352F9C  3B E0 7F FF */	li r31, 0x7fff
lbl_803899E0:
/* 803899E0 00352FA0  7F 69 E9 D6 */	mullw r27, r9, r29
/* 803899E4 00352FA4  7D 8A 61 D6 */	mullw r12, r10, r12
/* 803899E8 00352FA8  7D 9B 62 14 */	add r12, r27, r12
/* 803899EC 00352FAC  7F 60 C9 D6 */	mullw r27, r0, r25
/* 803899F0 00352FB0  7D 80 66 70 */	srawi r0, r12, 0xc
/* 803899F4 00352FB4  7D 9B 02 14 */	add r12, r27, r0
/* 803899F8 00352FB8  2C 0C 7F FF */	cmpwi r12, 0x7fff
/* 803899FC 00352FBC  41 81 00 0C */	bgt lbl_80389A08
/* 80389A00 00352FC0  2C 0C 80 00 */	cmpwi r12, -32768
/* 80389A04 00352FC4  40 80 00 20 */	bge lbl_80389A24
lbl_80389A08:
/* 80389A08 00352FC8  2C 0C 80 00 */	cmpwi r12, -32768
/* 80389A0C 00352FCC  40 80 00 0C */	bge lbl_80389A18
/* 80389A10 00352FD0  39 80 80 00 */	li r12, -32768
/* 80389A14 00352FD4  48 00 00 10 */	b lbl_80389A24
lbl_80389A18:
/* 80389A18 00352FD8  2C 0C 7F FF */	cmpwi r12, 0x7fff
/* 80389A1C 00352FDC  40 81 00 08 */	ble lbl_80389A24
/* 80389A20 00352FE0  39 80 7F FF */	li r12, 0x7fff
lbl_80389A24:
/* 80389A24 00352FE4  B3 E5 00 02 */	sth r31, 2(r5)
/* 80389A28 00352FE8  38 A5 00 04 */	addi r5, r5, 4
/* 80389A2C 00352FEC  B1 87 00 02 */	sth r12, 2(r7)
/* 80389A30 00352FF0  38 E7 00 04 */	addi r7, r7, 4
/* 80389A34 00352FF4  42 00 FE AC */	bdnz lbl_803898E0
/* 80389A38 00352FF8  38 63 00 12 */	addi r3, r3, 0x12
/* 80389A3C 00352FFC  3B 9C 00 01 */	addi r28, r28, 1
lbl_80389A40:
/* 80389A40 00353000  7C 1C C0 00 */	cmpw r28, r24
/* 80389A44 00353004  41 80 FE 24 */	blt lbl_80389868
/* 80389A48 00353008  B3 E6 00 00 */	sth r31, 0(r6)
/* 80389A4C 0035300C  7C 83 23 78 */	mr r3, r4
/* 80389A50 00353010  B3 C6 00 02 */	sth r30, 2(r6)
/* 80389A54 00353014  B1 88 00 00 */	sth r12, 0(r8)
/* 80389A58 00353018  B3 A8 00 02 */	sth r29, 2(r8)
lbl_80389A5C:
/* 80389A5C 0035301C  BA 21 00 14 */	lmw r17, 0x14(r1)
/* 80389A60 00353020  38 21 00 50 */	addi r1, r1, 0x50
/* 80389A64 00353024  4E 80 00 20 */	blr 

.global ADX_DecodeSte4
ADX_DecodeSte4:
/* 80389A68 00353028  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80389A6C 0035302C  7C 08 02 A6 */	mflr r0
/* 80389A70 00353030  3D 60 80 5F */	lis r11, lbl_805F60B0@ha
/* 80389A74 00353034  90 01 00 24 */	stw r0, 0x24(r1)
/* 80389A78 00353038  81 81 00 28 */	lwz r12, 0x28(r1)
/* 80389A7C 0035303C  80 0B 60 B0 */	lwz r0, lbl_805F60B0@l(r11)
/* 80389A80 00353040  A9 61 00 2E */	lha r11, 0x2e(r1)
/* 80389A84 00353044  2C 00 00 00 */	cmpwi r0, 0
/* 80389A88 00353048  A8 01 00 32 */	lha r0, 0x32(r1)
/* 80389A8C 0035304C  40 82 00 18 */	bne lbl_80389AA4
/* 80389A90 00353050  91 81 00 08 */	stw r12, 8(r1)
/* 80389A94 00353054  91 61 00 0C */	stw r11, 0xc(r1)
/* 80389A98 00353058  90 01 00 10 */	stw r0, 0x10(r1)
/* 80389A9C 0035305C  4B FF FD 89 */	bl ADX_DecodeSte4AsSte
/* 80389AA0 00353060  48 00 00 14 */	b lbl_80389AB4
lbl_80389AA4:
/* 80389AA4 00353064  91 81 00 08 */	stw r12, 8(r1)
/* 80389AA8 00353068  91 61 00 0C */	stw r11, 0xc(r1)
/* 80389AAC 0035306C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80389AB0 00353070  4B FF FA 99 */	bl ADX_DecodeSte4AsMono
lbl_80389AB4:
/* 80389AB4 00353074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80389AB8 00353078  7C 08 03 A6 */	mtlr r0
/* 80389ABC 0035307C  38 21 00 20 */	addi r1, r1, 0x20
/* 80389AC0 00353080  4E 80 00 20 */	blr 