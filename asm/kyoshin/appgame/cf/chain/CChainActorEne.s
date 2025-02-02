.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80281308, global
/* 80281308 0024A8C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028130C 0024A8CC  7C 08 02 A6 */	mflr r0
/* 80281310 0024A8D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281314 0024A8D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80281318 0024A8D8  7C 7F 1B 78 */	mr r31, r3
/* 8028131C 0024A8DC  4B FF 88 09 */	bl func_80279B24
/* 80281320 0024A8E0  38 7F 00 74 */	addi r3, r31, 0x74
/* 80281324 0024A8E4  48 01 F5 D1 */	bl func_802A08F4
/* 80281328 0024A8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028132C 0024A8EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80281330 0024A8F0  7C 08 03 A6 */	mtlr r0
/* 80281334 0024A8F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80281338 0024A8F8  4E 80 00 20 */	blr 
.endfn func_80281308

.fn func_8028133C, global
/* 8028133C 0024A8FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281340 0024A900  7C 08 02 A6 */	mflr r0
/* 80281344 0024A904  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281348 0024A908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028134C 0024A90C  7C 7F 1B 78 */	mr r31, r3
/* 80281350 0024A910  81 83 00 70 */	lwz r12, 0x70(r3)
/* 80281354 0024A914  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80281358 0024A918  7D 89 03 A6 */	mtctr r12
/* 8028135C 0024A91C  4E 80 04 21 */	bctrl 
/* 80281360 0024A920  38 7F 00 74 */	addi r3, r31, 0x74
/* 80281364 0024A924  48 01 F5 A1 */	bl func_802A0904
/* 80281368 0024A928  7F E3 FB 78 */	mr r3, r31
/* 8028136C 0024A92C  4B FF 8A 55 */	bl func_80279DC0
/* 80281370 0024A930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281374 0024A934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80281378 0024A938  7C 08 03 A6 */	mtlr r0
/* 8028137C 0024A93C  38 21 00 10 */	addi r1, r1, 0x10
/* 80281380 0024A940  4E 80 00 20 */	blr 
.endfn func_8028133C

.fn func_80281384, global
/* 80281384 0024A944  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281388 0024A948  7C 08 02 A6 */	mflr r0
/* 8028138C 0024A94C  2C 04 00 00 */	cmpwi r4, 0
/* 80281390 0024A950  90 01 00 24 */	stw r0, 0x24(r1)
/* 80281394 0024A954  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80281398 0024A958  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028139C 0024A95C  7C 9E 23 78 */	mr r30, r4
/* 802813A0 0024A960  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802813A4 0024A964  7C 7D 1B 78 */	mr r29, r3
/* 802813A8 0024A968  40 82 00 0C */	bne .L_802813B4
/* 802813AC 0024A96C  38 60 00 00 */	li r3, 0
/* 802813B0 0024A970  48 00 00 6C */	b .L_8028141C
.L_802813B4:
/* 802813B4 0024A974  7F C3 F3 78 */	mr r3, r30
/* 802813B8 0024A978  4B E3 5C D5 */	bl func_800B708C
/* 802813BC 0024A97C  4B EE EA 79 */	bl func_8016FE34
/* 802813C0 0024A980  2C 03 00 00 */	cmpwi r3, 0
/* 802813C4 0024A984  7C 7F 1B 78 */	mr r31, r3
/* 802813C8 0024A988  40 82 00 0C */	bne .L_802813D4
/* 802813CC 0024A98C  38 60 00 00 */	li r3, 0
/* 802813D0 0024A990  48 00 00 4C */	b .L_8028141C
.L_802813D4:
/* 802813D4 0024A994  80 63 00 04 */	lwz r3, 4(r3)
/* 802813D8 0024A998  81 83 00 00 */	lwz r12, 0(r3)
/* 802813DC 0024A99C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802813E0 0024A9A0  7D 89 03 A6 */	mtctr r12
/* 802813E4 0024A9A4  4E 80 04 21 */	bctrl 
/* 802813E8 0024A9A8  80 03 00 00 */	lwz r0, 0(r3)
/* 802813EC 0024A9AC  7F E3 FB 78 */	mr r3, r31
/* 802813F0 0024A9B0  90 01 00 08 */	stw r0, 8(r1)
/* 802813F4 0024A9B4  38 81 00 08 */	addi r4, r1, 8
/* 802813F8 0024A9B8  38 A0 08 03 */	li r5, 0x803
/* 802813FC 0024A9BC  4B EF 38 9D */	bl func_80174C98
/* 80281400 0024A9C0  2C 03 00 00 */	cmpwi r3, 0
/* 80281404 0024A9C4  41 82 00 14 */	beq .L_80281418
/* 80281408 0024A9C8  7F A3 EB 78 */	mr r3, r29
/* 8028140C 0024A9CC  7F C4 F3 78 */	mr r4, r30
/* 80281410 0024A9D0  4B FF 8C 15 */	bl func_8027A024
/* 80281414 0024A9D4  48 00 00 08 */	b .L_8028141C
.L_80281418:
/* 80281418 0024A9D8  38 60 00 00 */	li r3, 0
.L_8028141C:
/* 8028141C 0024A9DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80281420 0024A9E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80281424 0024A9E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80281428 0024A9E8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8028142C 0024A9EC  7C 08 03 A6 */	mtlr r0
/* 80281430 0024A9F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80281434 0024A9F4  4E 80 00 20 */	blr 
.endfn func_80281384

.fn func_80281438, global
/* 80281438 0024A9F8  7C C8 33 78 */	mr r8, r6
/* 8028143C 0024A9FC  7C 66 1B 78 */	mr r6, r3
/* 80281440 0024AA00  7C 08 00 D0 */	neg r0, r8
/* 80281444 0024AA04  7C A7 2B 78 */	mr r7, r5
/* 80281448 0024AA08  7C 00 43 78 */	or r0, r0, r8
/* 8028144C 0024AA0C  38 A0 00 B9 */	li r5, 0xb9
/* 80281450 0024AA10  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 80281454 0024AA14  38 63 00 74 */	addi r3, r3, 0x74
/* 80281458 0024AA18  70 08 00 5F */	andi. r8, r0, 0x5f
/* 8028145C 0024AA1C  48 01 F4 F4 */	b func_802A0950
.endfn func_80281438

.fn func_80281460, global
/* 80281460 0024AA20  7C 64 1B 78 */	mr r4, r3
/* 80281464 0024AA24  38 60 00 BA */	li r3, 0xba
/* 80281468 0024AA28  48 01 F3 9C */	b func_802A0804
.endfn func_80281460

.fn func_8028146C, global
/* 8028146C 0024AA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281470 0024AA30  7C 08 02 A6 */	mflr r0
/* 80281474 0024AA34  80 63 00 00 */	lwz r3, 0(r3)
/* 80281478 0024AA38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028147C 0024AA3C  2C 03 00 00 */	cmpwi r3, 0
/* 80281480 0024AA40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80281484 0024AA44  41 82 00 08 */	beq .L_8028148C
/* 80281488 0024AA48  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_8028148C:
/* 8028148C 0024AA4C  4B E2 C3 D5 */	bl func_800AD860
/* 80281490 0024AA50  2C 03 00 00 */	cmpwi r3, 0
/* 80281494 0024AA54  7C 7F 1B 78 */	mr r31, r3
/* 80281498 0024AA58  41 82 00 34 */	beq .L_802814CC
/* 8028149C 0024AA5C  4B F1 21 D5 */	bl func_80193670
/* 802814A0 0024AA60  7F E4 FB 78 */	mr r4, r31
/* 802814A4 0024AA64  4B F1 28 2D */	bl func_80193CD0
/* 802814A8 0024AA68  7C 1F 18 40 */	cmplw r31, r3
/* 802814AC 0024AA6C  40 82 00 0C */	bne .L_802814B8
/* 802814B0 0024AA70  38 60 00 01 */	li r3, 1
/* 802814B4 0024AA74  48 00 00 1C */	b .L_802814D0
.L_802814B8:
/* 802814B8 0024AA78  A0 1F 3F 28 */	lhz r0, 0x3f28(r31)
/* 802814BC 0024AA7C  28 00 09 6B */	cmplwi r0, 0x96b
/* 802814C0 0024AA80  40 82 00 0C */	bne .L_802814CC
/* 802814C4 0024AA84  38 60 00 01 */	li r3, 1
/* 802814C8 0024AA88  48 00 00 08 */	b .L_802814D0
.L_802814CC:
/* 802814CC 0024AA8C  38 60 00 00 */	li r3, 0
.L_802814D0:
/* 802814D0 0024AA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802814D4 0024AA94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802814D8 0024AA98  7C 08 03 A6 */	mtlr r0
/* 802814DC 0024AA9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802814E0 0024AAA0  4E 80 00 20 */	blr 
.endfn func_8028146C

.fn func_802814E4, global
/* 802814E4 0024AAA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802814E8 0024AAA8  7C 08 02 A6 */	mflr r0
/* 802814EC 0024AAAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802814F0 0024AAB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802814F4 0024AAB4  93 C1 00 08 */	stw r30, 8(r1)
/* 802814F8 0024AAB8  7C 9E 23 78 */	mr r30, r4
/* 802814FC 0024AABC  80 04 3F 00 */	lwz r0, 0x3f00(r4)
/* 80281500 0024AAC0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80281504 0024AAC4  41 82 00 98 */	beq .L_8028159C
/* 80281508 0024AAC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8028150C 0024AACC  2C 03 00 00 */	cmpwi r3, 0
/* 80281510 0024AAD0  41 82 00 08 */	beq .L_80281518
/* 80281514 0024AAD4  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_80281518:
/* 80281518 0024AAD8  4B E2 C3 49 */	bl func_800AD860
/* 8028151C 0024AADC  2C 1E 00 00 */	cmpwi r30, 0
/* 80281520 0024AAE0  7C 7F 1B 78 */	mr r31, r3
/* 80281524 0024AAE4  41 82 00 08 */	beq .L_8028152C
/* 80281528 0024AAE8  3B DE 3E 9C */	addi r30, r30, 0x3e9c
.L_8028152C:
/* 8028152C 0024AAEC  7F C3 F3 78 */	mr r3, r30
/* 80281530 0024AAF0  4B E2 C3 31 */	bl func_800AD860
/* 80281534 0024AAF4  A0 9F 45 BC */	lhz r4, 0x45bc(r31)
/* 80281538 0024AAF8  A0 03 45 BC */	lhz r0, 0x45bc(r3)
/* 8028153C 0024AAFC  7C 04 00 40 */	cmplw r4, r0
/* 80281540 0024AB00  40 82 00 0C */	bne .L_8028154C
/* 80281544 0024AB04  38 60 00 01 */	li r3, 1
/* 80281548 0024AB08  48 00 00 58 */	b .L_802815A0
.L_8028154C:
/* 8028154C 0024AB0C  A0 9F 3F 28 */	lhz r4, 0x3f28(r31)
/* 80281550 0024AB10  38 00 00 01 */	li r0, 1
/* 80281554 0024AB14  28 04 09 6B */	cmplwi r4, 0x96b
/* 80281558 0024AB18  41 82 00 10 */	beq .L_80281568
/* 8028155C 0024AB1C  28 04 09 6C */	cmplwi r4, 0x96c
/* 80281560 0024AB20  41 82 00 08 */	beq .L_80281568
/* 80281564 0024AB24  38 00 00 00 */	li r0, 0
.L_80281568:
/* 80281568 0024AB28  2C 00 00 00 */	cmpwi r0, 0
/* 8028156C 0024AB2C  41 82 00 30 */	beq .L_8028159C
/* 80281570 0024AB30  A0 63 3F 28 */	lhz r3, 0x3f28(r3)
/* 80281574 0024AB34  38 00 00 01 */	li r0, 1
/* 80281578 0024AB38  28 03 09 6B */	cmplwi r3, 0x96b
/* 8028157C 0024AB3C  41 82 00 10 */	beq .L_8028158C
/* 80281580 0024AB40  28 03 09 6C */	cmplwi r3, 0x96c
/* 80281584 0024AB44  41 82 00 08 */	beq .L_8028158C
/* 80281588 0024AB48  38 00 00 00 */	li r0, 0
.L_8028158C:
/* 8028158C 0024AB4C  2C 00 00 00 */	cmpwi r0, 0
/* 80281590 0024AB50  41 82 00 0C */	beq .L_8028159C
/* 80281594 0024AB54  38 60 00 01 */	li r3, 1
/* 80281598 0024AB58  48 00 00 08 */	b .L_802815A0
.L_8028159C:
/* 8028159C 0024AB5C  38 60 00 00 */	li r3, 0
.L_802815A0:
/* 802815A0 0024AB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802815A4 0024AB64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802815A8 0024AB68  83 C1 00 08 */	lwz r30, 8(r1)
/* 802815AC 0024AB6C  7C 08 03 A6 */	mtlr r0
/* 802815B0 0024AB70  38 21 00 10 */	addi r1, r1, 0x10
/* 802815B4 0024AB74  4E 80 00 20 */	blr 
.endfn func_802814E4

.fn func_802815B8, global
/* 802815B8 0024AB78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802815BC 0024AB7C  7C 08 02 A6 */	mflr r0
/* 802815C0 0024AB80  80 83 00 00 */	lwz r4, 0(r3)
/* 802815C4 0024AB84  90 01 00 24 */	stw r0, 0x24(r1)
/* 802815C8 0024AB88  2C 04 00 00 */	cmpwi r4, 0
/* 802815CC 0024AB8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802815D0 0024AB90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802815D4 0024AB94  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802815D8 0024AB98  7C 7D 1B 78 */	mr r29, r3
/* 802815DC 0024AB9C  41 82 00 08 */	beq .L_802815E4
/* 802815E0 0024ABA0  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802815E4:
/* 802815E4 0024ABA4  7C 83 23 78 */	mr r3, r4
/* 802815E8 0024ABA8  4B E2 C2 79 */	bl func_800AD860
/* 802815EC 0024ABAC  2C 03 00 00 */	cmpwi r3, 0
/* 802815F0 0024ABB0  41 82 00 24 */	beq .L_80281614
/* 802815F4 0024ABB4  A0 63 3F 28 */	lhz r3, 0x3f28(r3)
/* 802815F8 0024ABB8  38 00 00 01 */	li r0, 1
/* 802815FC 0024ABBC  28 03 09 6B */	cmplwi r3, 0x96b
/* 80281600 0024ABC0  41 82 00 18 */	beq .L_80281618
/* 80281604 0024ABC4  28 03 09 6C */	cmplwi r3, 0x96c
/* 80281608 0024ABC8  41 82 00 10 */	beq .L_80281618
/* 8028160C 0024ABCC  38 00 00 00 */	li r0, 0
/* 80281610 0024ABD0  48 00 00 08 */	b .L_80281618
.L_80281614:
/* 80281614 0024ABD4  38 00 00 00 */	li r0, 0
.L_80281618:
/* 80281618 0024ABD8  2C 00 00 00 */	cmpwi r0, 0
/* 8028161C 0024ABDC  41 82 00 80 */	beq .L_8028169C
/* 80281620 0024ABE0  4B E3 55 A9 */	bl func_800B6BC8
/* 80281624 0024ABE4  80 83 00 04 */	lwz r4, 4(r3)
/* 80281628 0024ABE8  7C 7F 1B 78 */	mr r31, r3
/* 8028162C 0024ABEC  83 C4 00 00 */	lwz r30, 0(r4)
/* 80281630 0024ABF0  48 00 00 2C */	b .L_8028165C
.L_80281634:
/* 80281634 0024ABF4  80 7E 00 08 */	lwz r3, 8(r30)
/* 80281638 0024ABF8  4B E2 C2 29 */	bl func_800AD860
/* 8028163C 0024ABFC  2C 03 00 00 */	cmpwi r3, 0
/* 80281640 0024AC00  41 82 00 18 */	beq .L_80281658
/* 80281644 0024AC04  A0 03 3F 28 */	lhz r0, 0x3f28(r3)
/* 80281648 0024AC08  2C 00 09 6B */	cmpwi r0, 0x96b
/* 8028164C 0024AC0C  40 82 00 0C */	bne .L_80281658
/* 80281650 0024AC10  7C 7F 1B 78 */	mr r31, r3
/* 80281654 0024AC14  48 00 00 18 */	b .L_8028166C
.L_80281658:
/* 80281658 0024AC18  83 DE 00 00 */	lwz r30, 0(r30)
.L_8028165C:
/* 8028165C 0024AC1C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80281660 0024AC20  7C 1E 00 40 */	cmplw r30, r0
/* 80281664 0024AC24  40 82 FF D0 */	bne .L_80281634
/* 80281668 0024AC28  3B E0 00 00 */	li r31, 0
.L_8028166C:
/* 8028166C 0024AC2C  2C 1F 00 00 */	cmpwi r31, 0
/* 80281670 0024AC30  41 82 00 14 */	beq .L_80281684
/* 80281674 0024AC34  4B F1 1F FD */	bl func_80193670
/* 80281678 0024AC38  A0 9F 45 BC */	lhz r4, 0x45bc(r31)
/* 8028167C 0024AC3C  4B F1 24 35 */	bl func_80193AB0
/* 80281680 0024AC40  48 00 00 08 */	b .L_80281688
.L_80281684:
/* 80281684 0024AC44  38 60 00 00 */	li r3, 0
.L_80281688:
/* 80281688 0024AC48  2C 03 00 00 */	cmpwi r3, 0
/* 8028168C 0024AC4C  41 82 00 10 */	beq .L_8028169C
/* 80281690 0024AC50  A0 03 00 A0 */	lhz r0, 0xa0(r3)
/* 80281694 0024AC54  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80281698 0024AC58  48 00 00 48 */	b .L_802816E0
.L_8028169C:
/* 8028169C 0024AC5C  80 7D 00 00 */	lwz r3, 0(r29)
/* 802816A0 0024AC60  2C 03 00 00 */	cmpwi r3, 0
/* 802816A4 0024AC64  41 82 00 08 */	beq .L_802816AC
/* 802816A8 0024AC68  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802816AC:
/* 802816AC 0024AC6C  4B E2 C1 B5 */	bl func_800AD860
/* 802816B0 0024AC70  2C 03 00 00 */	cmpwi r3, 0
/* 802816B4 0024AC74  7C 7F 1B 78 */	mr r31, r3
/* 802816B8 0024AC78  41 82 00 24 */	beq .L_802816DC
/* 802816BC 0024AC7C  4B F1 1F B5 */	bl func_80193670
/* 802816C0 0024AC80  A0 9F 45 BC */	lhz r4, 0x45bc(r31)
/* 802816C4 0024AC84  4B F1 23 ED */	bl func_80193AB0
/* 802816C8 0024AC88  2C 03 00 00 */	cmpwi r3, 0
/* 802816CC 0024AC8C  41 82 00 10 */	beq .L_802816DC
/* 802816D0 0024AC90  A0 03 00 A0 */	lhz r0, 0xa0(r3)
/* 802816D4 0024AC94  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 802816D8 0024AC98  48 00 00 08 */	b .L_802816E0
.L_802816DC:
/* 802816DC 0024AC9C  38 60 00 00 */	li r3, 0
.L_802816E0:
/* 802816E0 0024ACA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802816E4 0024ACA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802816E8 0024ACA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802816EC 0024ACAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802816F0 0024ACB0  7C 08 03 A6 */	mtlr r0
/* 802816F4 0024ACB4  38 21 00 20 */	addi r1, r1, 0x20
/* 802816F8 0024ACB8  4E 80 00 20 */	blr 
.endfn func_802815B8

.fn func_802816FC, global
/* 802816FC 0024ACBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281700 0024ACC0  7C 08 02 A6 */	mflr r0
/* 80281704 0024ACC4  80 83 00 00 */	lwz r4, 0(r3)
/* 80281708 0024ACC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028170C 0024ACCC  2C 04 00 00 */	cmpwi r4, 0
/* 80281710 0024ACD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80281714 0024ACD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80281718 0024ACD8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8028171C 0024ACDC  7C 7D 1B 78 */	mr r29, r3
/* 80281720 0024ACE0  41 82 00 08 */	beq .L_80281728
/* 80281724 0024ACE4  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_80281728:
/* 80281728 0024ACE8  7C 83 23 78 */	mr r3, r4
/* 8028172C 0024ACEC  4B E2 C1 35 */	bl func_800AD860
/* 80281730 0024ACF0  2C 03 00 00 */	cmpwi r3, 0
/* 80281734 0024ACF4  41 82 00 24 */	beq .L_80281758
/* 80281738 0024ACF8  A0 63 3F 28 */	lhz r3, 0x3f28(r3)
/* 8028173C 0024ACFC  38 00 00 01 */	li r0, 1
/* 80281740 0024AD00  28 03 09 6B */	cmplwi r3, 0x96b
/* 80281744 0024AD04  41 82 00 18 */	beq .L_8028175C
/* 80281748 0024AD08  28 03 09 6C */	cmplwi r3, 0x96c
/* 8028174C 0024AD0C  41 82 00 10 */	beq .L_8028175C
/* 80281750 0024AD10  38 00 00 00 */	li r0, 0
/* 80281754 0024AD14  48 00 00 08 */	b .L_8028175C
.L_80281758:
/* 80281758 0024AD18  38 00 00 00 */	li r0, 0
.L_8028175C:
/* 8028175C 0024AD1C  2C 00 00 00 */	cmpwi r0, 0
/* 80281760 0024AD20  41 82 00 80 */	beq .L_802817E0
/* 80281764 0024AD24  4B E3 54 65 */	bl func_800B6BC8
/* 80281768 0024AD28  80 83 00 04 */	lwz r4, 4(r3)
/* 8028176C 0024AD2C  7C 7F 1B 78 */	mr r31, r3
/* 80281770 0024AD30  83 C4 00 00 */	lwz r30, 0(r4)
/* 80281774 0024AD34  48 00 00 2C */	b .L_802817A0
.L_80281778:
/* 80281778 0024AD38  80 7E 00 08 */	lwz r3, 8(r30)
/* 8028177C 0024AD3C  4B E2 C0 E5 */	bl func_800AD860
/* 80281780 0024AD40  2C 03 00 00 */	cmpwi r3, 0
/* 80281784 0024AD44  41 82 00 18 */	beq .L_8028179C
/* 80281788 0024AD48  A0 03 3F 28 */	lhz r0, 0x3f28(r3)
/* 8028178C 0024AD4C  2C 00 09 6B */	cmpwi r0, 0x96b
/* 80281790 0024AD50  40 82 00 0C */	bne .L_8028179C
/* 80281794 0024AD54  7C 7F 1B 78 */	mr r31, r3
/* 80281798 0024AD58  48 00 00 18 */	b .L_802817B0
.L_8028179C:
/* 8028179C 0024AD5C  83 DE 00 00 */	lwz r30, 0(r30)
.L_802817A0:
/* 802817A0 0024AD60  80 1F 00 04 */	lwz r0, 4(r31)
/* 802817A4 0024AD64  7C 1E 00 40 */	cmplw r30, r0
/* 802817A8 0024AD68  40 82 FF D0 */	bne .L_80281778
/* 802817AC 0024AD6C  3B E0 00 00 */	li r31, 0
.L_802817B0:
/* 802817B0 0024AD70  2C 1F 00 00 */	cmpwi r31, 0
/* 802817B4 0024AD74  41 82 00 14 */	beq .L_802817C8
/* 802817B8 0024AD78  4B F1 1E B9 */	bl func_80193670
/* 802817BC 0024AD7C  A0 9F 45 BC */	lhz r4, 0x45bc(r31)
/* 802817C0 0024AD80  4B F1 22 F1 */	bl func_80193AB0
/* 802817C4 0024AD84  48 00 00 08 */	b .L_802817CC
.L_802817C8:
/* 802817C8 0024AD88  38 60 00 00 */	li r3, 0
.L_802817CC:
/* 802817CC 0024AD8C  2C 03 00 00 */	cmpwi r3, 0
/* 802817D0 0024AD90  41 82 00 10 */	beq .L_802817E0
/* 802817D4 0024AD94  A0 03 00 A0 */	lhz r0, 0xa0(r3)
/* 802817D8 0024AD98  70 00 FF FD */	andi. r0, r0, 0xfffd
/* 802817DC 0024AD9C  B0 03 00 A0 */	sth r0, 0xa0(r3)
.L_802817E0:
/* 802817E0 0024ADA0  80 7D 00 00 */	lwz r3, 0(r29)
/* 802817E4 0024ADA4  2C 03 00 00 */	cmpwi r3, 0
/* 802817E8 0024ADA8  41 82 00 08 */	beq .L_802817F0
/* 802817EC 0024ADAC  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802817F0:
/* 802817F0 0024ADB0  4B E2 C0 71 */	bl func_800AD860
/* 802817F4 0024ADB4  2C 03 00 00 */	cmpwi r3, 0
/* 802817F8 0024ADB8  7C 7F 1B 78 */	mr r31, r3
/* 802817FC 0024ADBC  41 82 00 24 */	beq .L_80281820
/* 80281800 0024ADC0  4B F1 1E 71 */	bl func_80193670
/* 80281804 0024ADC4  A0 9F 45 BC */	lhz r4, 0x45bc(r31)
/* 80281808 0024ADC8  4B F1 22 A9 */	bl func_80193AB0
/* 8028180C 0024ADCC  2C 03 00 00 */	cmpwi r3, 0
/* 80281810 0024ADD0  41 82 00 10 */	beq .L_80281820
/* 80281814 0024ADD4  A0 03 00 A0 */	lhz r0, 0xa0(r3)
/* 80281818 0024ADD8  70 00 FF FD */	andi. r0, r0, 0xfffd
/* 8028181C 0024ADDC  B0 03 00 A0 */	sth r0, 0xa0(r3)
.L_80281820:
/* 80281820 0024ADE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80281824 0024ADE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80281828 0024ADE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028182C 0024ADEC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80281830 0024ADF0  7C 08 03 A6 */	mtlr r0
/* 80281834 0024ADF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80281838 0024ADF8  4E 80 00 20 */	blr 
.endfn func_802816FC

.fn func_8028183C, global
/* 8028183C 0024ADFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281840 0024AE00  7C 08 02 A6 */	mflr r0
/* 80281844 0024AE04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281848 0024AE08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028184C 0024AE0C  7C 7F 1B 78 */	mr r31, r3
/* 80281850 0024AE10  80 83 00 00 */	lwz r4, 0(r3)
/* 80281854 0024AE14  2C 04 00 00 */	cmpwi r4, 0
/* 80281858 0024AE18  41 82 00 08 */	beq .L_80281860
/* 8028185C 0024AE1C  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_80281860:
/* 80281860 0024AE20  7C 83 23 78 */	mr r3, r4
/* 80281864 0024AE24  4B E2 BF FD */	bl func_800AD860
/* 80281868 0024AE28  2C 03 00 00 */	cmpwi r3, 0
/* 8028186C 0024AE2C  41 82 00 50 */	beq .L_802818BC
/* 80281870 0024AE30  A0 03 3F 28 */	lhz r0, 0x3f28(r3)
/* 80281874 0024AE34  28 00 09 6B */	cmplwi r0, 0x96b
/* 80281878 0024AE38  40 82 00 0C */	bne .L_80281884
/* 8028187C 0024AE3C  38 60 00 00 */	li r3, 0
/* 80281880 0024AE40  48 00 00 40 */	b .L_802818C0
.L_80281884:
/* 80281884 0024AE44  28 00 09 6C */	cmplwi r0, 0x96c
/* 80281888 0024AE48  40 82 00 0C */	bne .L_80281894
/* 8028188C 0024AE4C  38 60 00 01 */	li r3, 1
/* 80281890 0024AE50  48 00 00 30 */	b .L_802818C0
.L_80281894:
/* 80281894 0024AE54  81 9F 00 70 */	lwz r12, 0x70(r31)
/* 80281898 0024AE58  7F E3 FB 78 */	mr r3, r31
/* 8028189C 0024AE5C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802818A0 0024AE60  7D 89 03 A6 */	mtctr r12
/* 802818A4 0024AE64  4E 80 04 21 */	bctrl 
/* 802818A8 0024AE68  7C 03 00 D0 */	neg r0, r3
/* 802818AC 0024AE6C  7C 00 1B 78 */	or r0, r0, r3
/* 802818B0 0024AE70  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 802818B4 0024AE74  38 63 00 03 */	addi r3, r3, 3
/* 802818B8 0024AE78  48 00 00 08 */	b .L_802818C0
.L_802818BC:
/* 802818BC 0024AE7C  38 60 00 04 */	li r3, 4
.L_802818C0:
/* 802818C0 0024AE80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802818C4 0024AE84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802818C8 0024AE88  7C 08 03 A6 */	mtlr r0
/* 802818CC 0024AE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 802818D0 0024AE90  4E 80 00 20 */	blr 
.endfn func_8028183C

.fn func_802818D4, global
/* 802818D4 0024AE94  38 63 00 74 */	addi r3, r3, 0x74
/* 802818D8 0024AE98  48 01 F1 C8 */	b func_802A0AA0
.endfn func_802818D4

.fn func_802818DC, global
/* 802818DC 0024AE9C  38 60 00 01 */	li r3, 1
/* 802818E0 0024AEA0  4E 80 00 20 */	blr 
.endfn func_802818DC

.fn func_802818E4, global
/* 802818E4 0024AEA4  81 83 00 70 */	lwz r12, 0x70(r3)
/* 802818E8 0024AEA8  80 84 00 00 */	lwz r4, 0(r4)
/* 802818EC 0024AEAC  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802818F0 0024AEB0  7D 89 03 A6 */	mtctr r12
/* 802818F4 0024AEB4  4E 80 04 20 */	bctr 
.endfn func_802818E4

.fn func_802818F8, global
/* 802818F8 0024AEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802818FC 0024AEBC  7C 08 02 A6 */	mflr r0
/* 80281900 0024AEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281904 0024AEC4  4B E5 78 85 */	bl getBattleManagerInstance
/* 80281908 0024AEC8  38 80 01 2C */	li r4, 0x12c
/* 8028190C 0024AECC  38 63 01 94 */	addi r3, r3, 0x194
/* 80281910 0024AED0  4B F0 AF E5 */	bl func_8018C8F4
/* 80281914 0024AED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281918 0024AED8  7C 08 03 A6 */	mtlr r0
/* 8028191C 0024AEDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80281920 0024AEE0  4E 80 00 20 */	blr 
.endfn func_802818F8

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CChainActorEne_typestr, global
	.asciz "cf::CChainActorEne"
	.balign 4
	.4byte 0
.endobj cf_CChainActorEne_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__Q22cf14CChainActorEne, global
	.4byte __RTTI__Q22cf14CChainActorEne
	.4byte 0
	.4byte __dt__cf_CChainActorEne
	.4byte func_80281308
	.4byte func_80279B34
	.4byte func_8028133C
	.4byte func_80279E48
	.4byte func_80279F6C
	.4byte func_80281384
	.4byte func_8027A338
	.4byte func_8027A58C
	.4byte func_8027A8C8
	.4byte func_80281438
	.4byte func_80281460
	.4byte func_80278E00
	.4byte func_80278E04
	.4byte func_8028146C
	.4byte func_802818E4
	.4byte func_802814E4
	.4byte func_802815B8
	.4byte func_802816FC
	.4byte func_8028183C
	.4byte func_8027976C
	.4byte func_8027A584
	.4byte func_802818DC
	.4byte func_802818D4
	.4byte func_80278F70
	.4byte func_80278F5C
	.4byte func_8027A324
	.4byte func_8027A9D0
.endobj __vt__Q22cf14CChainActorEne

.obj cf_CChainActorEne_hierarchy, global
	.4byte __RTTI__Q22cf11CChainActor
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_CChainActorEne_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__Q22cf14CChainActorEne, global
	.4byte cf_CChainActorEne_typestr
	.4byte cf_CChainActorEne_hierarchy
.endobj __RTTI__Q22cf14CChainActorEne

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80018C50", local
.hidden "@etb_80018C50"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018C50"

.obj "@etb_80018C58", local
.hidden "@etb_80018C58"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018C58"

.obj "@etb_80018C60", local
.hidden "@etb_80018C60"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80018C60"

.obj "@etb_80018C68", local
.hidden "@etb_80018C68"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018C68"

.obj "@etb_80018C70", local
.hidden "@etb_80018C70"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80018C70"

.obj "@etb_80018C78", local
.hidden "@etb_80018C78"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80018C78"

.obj "@etb_80018C80", local
.hidden "@etb_80018C80"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80018C80"

.obj "@etb_80018C88", local
.hidden "@etb_80018C88"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018C88"

.obj "@etb_80018C90", local
.hidden "@etb_80018C90"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80018C90"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80031268", local
.hidden "@eti_80031268"
	.4byte func_80281308
	.4byte 0x00000034
	.4byte "@etb_80018C50"
.endobj "@eti_80031268"

.obj "@eti_80031274", local
.hidden "@eti_80031274"
	.4byte func_8028133C
	.4byte 0x00000048
	.4byte "@etb_80018C58"
.endobj "@eti_80031274"

.obj "@eti_80031280", local
.hidden "@eti_80031280"
	.4byte func_80281384
	.4byte 0x000000B4
	.4byte "@etb_80018C60"
.endobj "@eti_80031280"

.obj "@eti_8003128C", local
.hidden "@eti_8003128C"
	.4byte func_8028146C
	.4byte 0x00000078
	.4byte "@etb_80018C68"
.endobj "@eti_8003128C"

.obj "@eti_80031298", local
.hidden "@eti_80031298"
	.4byte func_802814E4
	.4byte 0x000000D4
	.4byte "@etb_80018C70"
.endobj "@eti_80031298"

.obj "@eti_800312A4", local
.hidden "@eti_800312A4"
	.4byte func_802815B8
	.4byte 0x00000144
	.4byte "@etb_80018C78"
.endobj "@eti_800312A4"

.obj "@eti_800312B0", local
.hidden "@eti_800312B0"
	.4byte func_802816FC
	.4byte 0x00000140
	.4byte "@etb_80018C80"
.endobj "@eti_800312B0"

.obj "@eti_800312BC", local
.hidden "@eti_800312BC"
	.4byte func_8028183C
	.4byte 0x00000098
	.4byte "@etb_80018C88"
.endobj "@eti_800312BC"

.obj "@eti_800312C8", local
.hidden "@eti_800312C8"
	.4byte func_802818F8
	.4byte 0x0000002C
	.4byte "@etb_80018C90"
.endobj "@eti_800312C8"
