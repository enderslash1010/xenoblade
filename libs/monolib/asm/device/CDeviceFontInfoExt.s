.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CDeviceFontInfoExt, global
/* 804532D4 0041C894  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804532D8 0041C898  7C 08 02 A6 */	mflr r0
/* 804532DC 0041C89C  3C C0 80 57 */	lis r6, __vt__18CDeviceFontInfoExt@ha
/* 804532E0 0041C8A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804532E4 0041C8A4  38 C6 FF 88 */	addi r6, r6, __vt__18CDeviceFontInfoExt@l
/* 804532E8 0041C8A8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804532EC 0041C8AC  3B E0 00 00 */	li r31, 0
/* 804532F0 0041C8B0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804532F4 0041C8B4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 804532F8 0041C8B8  93 81 00 20 */	stw r28, 0x20(r1)
/* 804532FC 0041C8BC  7C 7C 1B 78 */	mr r28, r3
/* 80453300 0041C8C0  90 C3 00 00 */	stw r6, 0(r3)
/* 80453304 0041C8C4  90 83 00 04 */	stw r4, 4(r3)
/* 80453308 0041C8C8  93 E3 00 08 */	stw r31, 8(r3)
/* 8045330C 0041C8CC  93 E3 00 0C */	stw r31, 0xc(r3)
/* 80453310 0041C8D0  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80453314 0041C8D4  38 63 00 1C */	addi r3, r3, 0x1c
/* 80453318 0041C8D8  4B FD A7 C9 */	bl __ct__Q34nw4r2ut10PackedFontFv
/* 8045331C 0041C8DC  93 FC 00 60 */	stw r31, 0x60(r28)
/* 80453320 0041C8E0  38 82 D9 78 */	addi r4, r2, lbl_8066DCF8@sda21
/* 80453324 0041C8E4  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 80453328 0041C8E8  C0 22 C8 40 */	lfs f1, float_8066CBC0@sda21(r2)
/* 8045332C 0041C8EC  4B FD A8 65 */	bl GetRequireBufferSize__Q34nw4r2ut10PackedFontFPCvPCcf
/* 80453330 0041C8F0  7C 7E 1B 78 */	mr r30, r3
/* 80453334 0041C8F4  4B FF 9D 2D */	bl func_8044D060
/* 80453338 0041C8F8  7F C4 F3 78 */	mr r4, r30
/* 8045333C 0041C8FC  38 A0 00 20 */	li r5, 0x20
/* 80453340 0041C900  4B FE 10 ED */	bl func_8043442C
/* 80453344 0041C904  7C 7D 1B 78 */	mr r29, r3
/* 80453348 0041C908  80 DC 00 18 */	lwz r6, 0x18(r28)
/* 8045334C 0041C90C  7F A4 EB 78 */	mr r4, r29
/* 80453350 0041C910  7F C5 F3 78 */	mr r5, r30
/* 80453354 0041C914  38 7C 00 1C */	addi r3, r28, 0x1c
/* 80453358 0041C918  38 E2 D9 78 */	addi r7, r2, lbl_8066DCF8@sda21
/* 8045335C 0041C91C  4B FD AC F1 */	bl Construct__Q34nw4r2ut10PackedFontFPvUlPCvPCc
/* 80453360 0041C920  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 80453364 0041C924  2C 03 00 00 */	cmpwi r3, 0
/* 80453368 0041C928  41 82 00 0C */	beq .L_80453374
/* 8045336C 0041C92C  4B FE 11 6D */	bl func_804344D8
/* 80453370 0041C930  93 FC 00 18 */	stw r31, 0x18(r28)
.L_80453374:
/* 80453374 0041C934  93 BC 00 18 */	stw r29, 0x18(r28)
/* 80453378 0041C938  38 7C 00 1C */	addi r3, r28, 0x1c
/* 8045337C 0041C93C  38 81 00 08 */	addi r4, r1, 8
/* 80453380 0041C940  38 A0 00 41 */	li r5, 0x41
/* 80453384 0041C944  81 9C 00 1C */	lwz r12, 0x1c(r28)
/* 80453388 0041C948  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8045338C 0041C94C  7D 89 03 A6 */	mtctr r12
/* 80453390 0041C950  4E 80 04 21 */	bctrl 
/* 80453394 0041C954  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80453398 0041C958  7F 83 E3 78 */	mr r3, r28
/* 8045339C 0041C95C  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 804533A0 0041C960  A0 01 00 16 */	lhz r0, 0x16(r1)
/* 804533A4 0041C964  B0 1C 00 12 */	sth r0, 0x12(r28)
/* 804533A8 0041C968  88 01 00 0F */	lbz r0, 0xf(r1)
/* 804533AC 0041C96C  B0 1C 00 14 */	sth r0, 0x14(r28)
/* 804533B0 0041C970  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804533B4 0041C974  90 1C 00 58 */	stw r0, 0x58(r28)
/* 804533B8 0041C978  88 01 00 0F */	lbz r0, 0xf(r1)
/* 804533BC 0041C97C  B0 1C 00 5C */	sth r0, 0x5c(r28)
/* 804533C0 0041C980  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804533C4 0041C984  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804533C8 0041C988  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 804533CC 0041C98C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 804533D0 0041C990  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804533D4 0041C994  7C 08 03 A6 */	mtlr r0
/* 804533D8 0041C998  38 21 00 30 */	addi r1, r1, 0x30
/* 804533DC 0041C99C  4E 80 00 20 */	blr 
.endfn __ct__CDeviceFontInfoExt

.fn __dt__CDeviceFontInfoExt, global
/* 804533E0 0041C9A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804533E4 0041C9A4  7C 08 02 A6 */	mflr r0
/* 804533E8 0041C9A8  2C 03 00 00 */	cmpwi r3, 0
/* 804533EC 0041C9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804533F0 0041C9B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804533F4 0041C9B4  7C 9F 23 78 */	mr r31, r4
/* 804533F8 0041C9B8  93 C1 00 08 */	stw r30, 8(r1)
/* 804533FC 0041C9BC  7C 7E 1B 78 */	mr r30, r3
/* 80453400 0041C9C0  41 82 00 4C */	beq .L_8045344C
/* 80453404 0041C9C4  3C 80 80 57 */	lis r4, __vt__18CDeviceFontInfoExt@ha
/* 80453408 0041C9C8  38 84 FF 88 */	addi r4, r4, __vt__18CDeviceFontInfoExt@l
/* 8045340C 0041C9CC  90 83 00 00 */	stw r4, 0(r3)
/* 80453410 0041C9D0  38 63 00 1C */	addi r3, r3, 0x1c
/* 80453414 0041C9D4  4B FD AD 05 */	bl Destroy__Q34nw4r2ut10PackedFontFv
/* 80453418 0041C9D8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8045341C 0041C9DC  2C 03 00 00 */	cmpwi r3, 0
/* 80453420 0041C9E0  41 82 00 10 */	beq .L_80453430
/* 80453424 0041C9E4  4B FE 10 B5 */	bl func_804344D8
/* 80453428 0041C9E8  38 00 00 00 */	li r0, 0
/* 8045342C 0041C9EC  90 1E 00 18 */	stw r0, 0x18(r30)
.L_80453430:
/* 80453430 0041C9F0  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80453434 0041C9F4  38 80 FF FF */	li r4, -1
/* 80453438 0041C9F8  4B FD A7 01 */	bl __dt__Q34nw4r2ut10PackedFontFv
/* 8045343C 0041C9FC  2C 1F 00 00 */	cmpwi r31, 0
/* 80453440 0041CA00  40 81 00 0C */	ble .L_8045344C
/* 80453444 0041CA04  7F C3 F3 78 */	mr r3, r30
/* 80453448 0041CA08  4B FE 17 E5 */	bl __dl__FPv
.L_8045344C:
/* 8045344C 0041CA0C  7F C3 F3 78 */	mr r3, r30
/* 80453450 0041CA10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80453454 0041CA14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80453458 0041CA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045345C 0041CA1C  7C 08 03 A6 */	mtlr r0
/* 80453460 0041CA20  38 21 00 10 */	addi r1, r1, 0x10
/* 80453464 0041CA24  4E 80 00 20 */	blr 
.endfn __dt__CDeviceFontInfoExt

.fn func_80453468, global
/* 80453468 0041CA28  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8045346C 0041CA2C  7C 08 02 A6 */	mflr r0
/* 80453470 0041CA30  39 20 00 00 */	li r9, 0
/* 80453474 0041CA34  90 01 00 54 */	stw r0, 0x54(r1)
/* 80453478 0041CA38  88 04 00 00 */	lbz r0, 0(r4)
/* 8045347C 0041CA3C  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 80453480 0041CA40  7C 7A 1B 78 */	mr r26, r3
/* 80453484 0041CA44  28 00 00 81 */	cmplwi r0, 0x81
/* 80453488 0041CA48  7C BC 2B 78 */	mr r28, r5
/* 8045348C 0041CA4C  7C DD 33 78 */	mr r29, r6
/* 80453490 0041CA50  7C FE 3B 78 */	mr r30, r7
/* 80453494 0041CA54  7D 1F 43 78 */	mr r31, r8
/* 80453498 0041CA58  3B 64 00 01 */	addi r27, r4, 1
/* 8045349C 0041CA5C  B1 21 00 18 */	sth r9, 0x18(r1)
/* 804534A0 0041CA60  99 21 00 1A */	stb r9, 0x1a(r1)
/* 804534A4 0041CA64  98 01 00 18 */	stb r0, 0x18(r1)
/* 804534A8 0041CA68  B1 21 00 14 */	sth r9, 0x14(r1)
/* 804534AC 0041CA6C  B1 21 00 16 */	sth r9, 0x16(r1)
/* 804534B0 0041CA70  41 80 00 0C */	blt .L_804534BC
/* 804534B4 0041CA74  28 00 00 9F */	cmplwi r0, 0x9f
/* 804534B8 0041CA78  40 81 00 14 */	ble .L_804534CC
.L_804534BC:
/* 804534BC 0041CA7C  28 00 00 E0 */	cmplwi r0, 0xe0
/* 804534C0 0041CA80  41 80 00 18 */	blt .L_804534D8
/* 804534C4 0041CA84  28 00 00 EF */	cmplwi r0, 0xef
/* 804534C8 0041CA88  41 81 00 10 */	bgt .L_804534D8
.L_804534CC:
/* 804534CC 0041CA8C  88 1B 00 00 */	lbz r0, 0(r27)
/* 804534D0 0041CA90  3B 7B 00 01 */	addi r27, r27, 1
/* 804534D4 0041CA94  98 01 00 19 */	stb r0, 0x19(r1)
.L_804534D8:
/* 804534D8 0041CA98  38 00 00 02 */	li r0, 2
/* 804534DC 0041CA9C  90 01 00 08 */	stw r0, 8(r1)
/* 804534E0 0041CAA0  38 61 00 18 */	addi r3, r1, 0x18
/* 804534E4 0041CAA4  4B E6 60 D5 */	bl strlen
/* 804534E8 0041CAA8  90 61 00 0C */	stw r3, 0xc(r1)
/* 804534EC 0041CAAC  38 61 00 14 */	addi r3, r1, 0x14
/* 804534F0 0041CAB0  38 81 00 08 */	addi r4, r1, 8
/* 804534F4 0041CAB4  38 A1 00 18 */	addi r5, r1, 0x18
/* 804534F8 0041CAB8  38 C1 00 0C */	addi r6, r1, 0xc
/* 804534FC 0041CABC  4B EB F9 F5 */	bl ENCConvertStringSjisToUnicode
/* 80453500 0041CAC0  81 9A 00 1C */	lwz r12, 0x1c(r26)
/* 80453504 0041CAC4  38 7A 00 1C */	addi r3, r26, 0x1c
/* 80453508 0041CAC8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8045350C 0041CACC  A0 A1 00 14 */	lhz r5, 0x14(r1)
/* 80453510 0041CAD0  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80453514 0041CAD4  7D 89 03 A6 */	mtctr r12
/* 80453518 0041CAD8  4E 80 04 21 */	bctrl 
/* 8045351C 0041CADC  A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 80453520 0041CAE0  7F 63 DB 78 */	mr r3, r27
/* 80453524 0041CAE4  90 1D 00 00 */	stw r0, 0(r29)
/* 80453528 0041CAE8  A0 01 00 2E */	lhz r0, 0x2e(r1)
/* 8045352C 0041CAEC  90 1E 00 00 */	stw r0, 0(r30)
/* 80453530 0041CAF0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80453534 0041CAF4  90 1C 00 00 */	stw r0, 0(r28)
/* 80453538 0041CAF8  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 8045353C 0041CAFC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80453540 0041CB00  88 81 00 22 */	lbz r4, 0x22(r1)
/* 80453544 0041CB04  88 01 00 11 */	lbz r0, 0x11(r1)
/* 80453548 0041CB08  90 1F 00 00 */	stw r0, 0(r31)
/* 8045354C 0041CB0C  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 80453550 0041CB10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80453554 0041CB14  98 81 00 12 */	stb r4, 0x12(r1)
/* 80453558 0041CB18  7C 08 03 A6 */	mtlr r0
/* 8045355C 0041CB1C  38 21 00 50 */	addi r1, r1, 0x50
/* 80453560 0041CB20  4E 80 00 20 */	blr 
.endfn func_80453468

.fn func_80453564, global
/* 80453564 0041CB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80453568 0041CB28  7C 08 02 A6 */	mflr r0
/* 8045356C 0041CB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80453570 0041CB30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80453574 0041CB34  7C 9F 23 78 */	mr r31, r4
/* 80453578 0041CB38  93 C1 00 08 */	stw r30, 8(r1)
/* 8045357C 0041CB3C  7C 7E 1B 78 */	mr r30, r3
/* 80453580 0041CB40  4B FF F0 4D */	bl func_804525CC
/* 80453584 0041CB44  7C 64 1B 78 */	mr r4, r3
/* 80453588 0041CB48  38 60 00 64 */	li r3, 0x64
/* 8045358C 0041CB4C  80 84 00 54 */	lwz r4, 0x54(r4)
/* 80453590 0041CB50  4B FE 14 CD */	bl heap_malloc
/* 80453594 0041CB54  2C 03 00 00 */	cmpwi r3, 0
/* 80453598 0041CB58  41 82 00 10 */	beq .L_804535A8
/* 8045359C 0041CB5C  7F C4 F3 78 */	mr r4, r30
/* 804535A0 0041CB60  7F E5 FB 78 */	mr r5, r31
/* 804535A4 0041CB64  4B FF FD 31 */	bl __ct__CDeviceFontInfoExt
.L_804535A8:
/* 804535A8 0041CB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804535AC 0041CB6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804535B0 0041CB70  83 C1 00 08 */	lwz r30, 8(r1)
/* 804535B4 0041CB74  7C 08 03 A6 */	mtlr r0
/* 804535B8 0041CB78  38 21 00 10 */	addi r1, r1, 0x10
/* 804535BC 0041CB7C  4E 80 00 20 */	blr 
.endfn func_80453564

.fn func_804535C0, global
/* 804535C0 0041CB80  80 83 00 60 */	lwz r4, 0x60(r3)
/* 804535C4 0041CB84  38 04 FF FF */	addi r0, r4, -1
/* 804535C8 0041CB88  28 00 00 01 */	cmplwi r0, 1
/* 804535CC 0041CB8C  4D 81 00 20 */	bgtlr 
/* 804535D0 0041CB90  38 04 00 01 */	addi r0, r4, 1
/* 804535D4 0041CB94  90 03 00 60 */	stw r0, 0x60(r3)
/* 804535D8 0041CB98  4E 80 00 20 */	blr 
.endfn func_804535C0

.fn func_804535DC, global
/* 804535DC 0041CB9C  80 83 00 60 */	lwz r4, 0x60(r3)
/* 804535E0 0041CBA0  2C 04 00 00 */	cmpwi r4, 0
/* 804535E4 0041CBA4  4C 82 00 20 */	bnelr 
/* 804535E8 0041CBA8  38 04 00 01 */	addi r0, r4, 1
/* 804535EC 0041CBAC  90 03 00 60 */	stw r0, 0x60(r3)
/* 804535F0 0041CBB0  4E 80 00 20 */	blr 
.endfn func_804535DC

.fn func_804535F4, global
/* 804535F4 0041CBB4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804535F8 0041CBB8  7C 03 00 D0 */	neg r0, r3
/* 804535FC 0041CBBC  7C 00 1B 78 */	or r0, r0, r3
/* 80453600 0041CBC0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80453604 0041CBC4  4E 80 00 20 */	blr 
.endfn func_804535F4

.fn func_80453608, global
/* 80453608 0041CBC8  80 A3 00 60 */	lwz r5, 0x60(r3)
/* 8045360C 0041CBCC  38 00 00 03 */	li r0, 3
/* 80453610 0041CBD0  38 60 00 00 */	li r3, 0
/* 80453614 0041CBD4  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 80453618 0041CBD8  7C 00 28 10 */	subfc r0, r0, r5
/* 8045361C 0041CBDC  7C 64 19 14 */	adde r3, r4, r3
/* 80453620 0041CBE0  4E 80 00 20 */	blr 
.endfn func_80453608

.fn func_80453624, global
/* 80453624 0041CBE4  38 63 00 1C */	addi r3, r3, 0x1c
/* 80453628 0041CBE8  4E 80 00 20 */	blr 
.endfn func_80453624

.fn func_8045362C, global
/* 8045362C 0041CBEC  38 63 00 1C */	addi r3, r3, 0x1c
/* 80453630 0041CBF0  4E 80 00 20 */	blr 
.endfn func_8045362C

.fn func_80453634, global
/* 80453634 0041CBF4  A0 63 00 5C */	lhz r3, 0x5c(r3)
/* 80453638 0041CBF8  4E 80 00 20 */	blr 
.endfn func_80453634

.fn func_8045363C, global
/* 8045363C 0041CBFC  80 63 00 58 */	lwz r3, 0x58(r3)
/* 80453640 0041CC00  4E 80 00 20 */	blr 
.endfn func_8045363C

.fn func_80453644, global
/* 80453644 0041CC04  A0 63 00 12 */	lhz r3, 0x12(r3)
/* 80453648 0041CC08  4E 80 00 20 */	blr 
.endfn func_80453644

.fn func_8045364C, global
/* 8045364C 0041CC0C  A0 63 00 10 */	lhz r3, 0x10(r3)
/* 80453650 0041CC10  4E 80 00 20 */	blr 
.endfn func_8045364C

.fn func_80453654, global
/* 80453654 0041CC14  80 63 00 04 */	lwz r3, 4(r3)
/* 80453658 0041CC18  4E 80 00 20 */	blr 
.endfn func_80453654


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CDeviceFontInfoExt_typestr, global
	.asciz "CDeviceFontInfoExt"
	.balign 4
	.4byte 0
.endobj CDeviceFontInfoExt_typestr

.obj IDeviceFontInfo_typestr, global
	.asciz "IDeviceFontInfo"
.endobj IDeviceFontInfo_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__18CDeviceFontInfoExt, global
	.4byte __RTTI__18CDeviceFontInfoExt
	.4byte 0
	.4byte __dt__CDeviceFontInfoExt
	.4byte func_80453654
	.4byte func_8045364C
	.4byte func_80453644
	.4byte func_8045363C
	.4byte func_80453634
	.4byte func_80453468
	.4byte func_80453624
	.4byte func_8045362C
	.4byte func_804535C0
	.4byte func_804535DC
	.4byte func_804535F4
	.4byte func_80453608
.endobj __vt__18CDeviceFontInfoExt

.obj CDeviceFontInfoExt_hierarchy, global
	.4byte __RTTI__15IDeviceFontInfo
	.4byte 0
	.4byte 0
.endobj CDeviceFontInfoExt_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__18CDeviceFontInfoExt, global
	.4byte CDeviceFontInfoExt_typestr
	.4byte CDeviceFontInfoExt_hierarchy
.endobj __RTTI__18CDeviceFontInfoExt

.obj __RTTI__15IDeviceFontInfo, global
	.4byte IDeviceFontInfo_typestr
	.4byte 0
.endobj __RTTI__15IDeviceFontInfo

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066CBC0, global
	.float 1.0
	.4byte 0
.endobj float_8066CBC0


.section .sbss2, "", @nobits #0x8066DCE0 - 0x8066DCFB

.balign 8

#used in CUICfManager
.obj lbl_8066DCF8, global
	.skip 0x4
.endobj lbl_8066DCF8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001D080", local
.hidden "@etb_8001D080"
	.4byte 0x200A0000
	.4byte 0x00000048
	.4byte 0x00000024
	.4byte 0x0000005C
	.4byte 0x00190018
	.4byte 0x00000000
	.4byte 0x0780001C
	.4byte 0x0000001C
	.4byte __dt__Q34nw4r2ut10PackedFontFv
	.4byte 0x8680001C
	.4byte 0x00000000
	.4byte __dt__80453080
.endobj "@etb_8001D080"

.obj "@etb_8001D0B0", local
.hidden "@etb_8001D0B0"
	.4byte 0x10080000
	.4byte 0x00000038
	.4byte 0x00040010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x0000001C
	.4byte __dt__Q34nw4r2ut10PackedFontFv
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__80453080
.endobj "@etb_8001D0B0"

.obj "@etb_8001D0D8", local
.hidden "@etb_8001D0D8"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_8001D0D8"

.obj "@etb_8001D0E0", local
.hidden "@etb_8001D0E0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D0E0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034D6C", local
.hidden "@eti_80034D6C"
	.4byte __ct__CDeviceFontInfoExt
	.4byte 0x0000010C
	.4byte "@etb_8001D080"
.endobj "@eti_80034D6C"

.obj "@eti_80034D78", local
.hidden "@eti_80034D78"
	.4byte __dt__CDeviceFontInfoExt
	.4byte 0x00000088
	.4byte "@etb_8001D0B0"
.endobj "@eti_80034D78"

.obj "@eti_80034D84", local
.hidden "@eti_80034D84"
	.4byte func_80453468
	.4byte 0x000000FC
	.4byte "@etb_8001D0D8"
.endobj "@eti_80034D84"

.obj "@eti_80034D90", local
.hidden "@eti_80034D90"
	.4byte func_80453564
	.4byte 0x0000005C
	.4byte "@etb_8001D0E0"
.endobj "@eti_80034D90"
