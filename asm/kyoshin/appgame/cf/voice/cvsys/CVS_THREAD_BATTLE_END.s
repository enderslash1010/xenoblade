.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__802A4870, global
/* 802A4870 0026DE30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A4874 0026DE34  7C 08 02 A6 */	mflr r0
/* 802A4878 0026DE38  38 80 00 01 */	li r4, 1
/* 802A487C 0026DE3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A4880 0026DE40  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A4884 0026DE44  7C 3F 0B 78 */	mr r31, r1
/* 802A4888 0026DE48  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A488C 0026DE4C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802A4890 0026DE50  7C 7D 1B 78 */	mr r29, r3
/* 802A4894 0026DE54  38 60 00 46 */	li r3, 0x46
/* 802A4898 0026DE58  4B FF EA 75 */	bl func_802A330C
/* 802A489C 0026DE5C  2C 03 00 00 */	cmpwi r3, 0
/* 802A48A0 0026DE60  40 82 00 0C */	bne .L_802A48AC
/* 802A48A4 0026DE64  38 60 00 00 */	li r3, 0
/* 802A48A8 0026DE68  48 00 00 B0 */	b .L_802A4958
.L_802A48AC:
/* 802A48AC 0026DE6C  38 60 00 3C */	li r3, 0x3c
/* 802A48B0 0026DE70  4B FF EC 35 */	bl func_802A34E4
/* 802A48B4 0026DE74  2C 03 00 00 */	cmpwi r3, 0
/* 802A48B8 0026DE78  7C 7E 1B 78 */	mr r30, r3
/* 802A48BC 0026DE7C  40 82 00 0C */	bne .L_802A48C8
/* 802A48C0 0026DE80  38 60 00 00 */	li r3, 0
/* 802A48C4 0026DE84  48 00 00 94 */	b .L_802A4958
.L_802A48C8:
/* 802A48C8 0026DE88  41 82 00 6C */	beq .L_802A4934
/* 802A48CC 0026DE8C  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A48D0 0026DE90  4B FF F1 B1 */	bl __ct__cf_CVS_THREAD
/* 802A48D4 0026DE94  3C 80 80 54 */	lis r4, __vt__Q22cf21CVS_THREAD_BATTLE_END@ha
/* 802A48D8 0026DE98  38 7E 00 20 */	addi r3, r30, 0x20
/* 802A48DC 0026DE9C  38 84 D1 48 */	addi r4, r4, __vt__Q22cf21CVS_THREAD_BATTLE_END@l
/* 802A48E0 0026DEA0  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 802A48E4 0026DEA4  38 80 00 00 */	li r4, 0
/* 802A48E8 0026DEA8  38 A0 00 0C */	li r5, 0xc
/* 802A48EC 0026DEAC  9B BE 00 3A */	stb r29, 0x3a(r30)
/* 802A48F0 0026DEB0  4B D5 FA 61 */	bl memset
/* 802A48F4 0026DEB4  38 00 00 00 */	li r0, 0
/* 802A48F8 0026DEB8  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 802A48FC 0026DEBC  38 60 00 02 */	li r3, 2
/* 802A4900 0026DEC0  90 1E 00 30 */	stw r0, 0x30(r30)
/* 802A4904 0026DEC4  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802A4908 0026DEC8  98 1E 00 39 */	stb r0, 0x39(r30)
/* 802A490C 0026DECC  48 19 15 F1 */	bl mtRand__2mlFi
/* 802A4910 0026DED0  7C 03 00 D0 */	neg r0, r3
/* 802A4914 0026DED4  7C 00 1B 78 */	or r0, r0, r3
/* 802A4918 0026DED8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802A491C 0026DEDC  98 1E 00 38 */	stb r0, 0x38(r30)
/* 802A4920 0026DEE0  48 00 00 14 */	b .L_802A4934
/* 802A4924 0026DEE4  38 60 00 00 */	li r3, 0
/* 802A4928 0026DEE8  38 80 00 00 */	li r4, 0
/* 802A492C 0026DEEC  38 A0 00 00 */	li r5, 0
/* 802A4930 0026DEF0  48 01 72 8D */	bl __throw
.L_802A4934:
/* 802A4934 0026DEF4  3C A0 80 54 */	lis r5, lbl_8053D0E8@ha
/* 802A4938 0026DEF8  7F C3 F3 78 */	mr r3, r30
/* 802A493C 0026DEFC  38 A5 D0 E8 */	addi r5, r5, lbl_8053D0E8@l
/* 802A4940 0026DF00  80 05 00 04 */	lwz r0, 4(r5)
/* 802A4944 0026DF04  80 85 00 00 */	lwz r4, 0(r5)
/* 802A4948 0026DF08  90 9E 00 00 */	stw r4, 0(r30)
/* 802A494C 0026DF0C  90 1E 00 04 */	stw r0, 4(r30)
/* 802A4950 0026DF10  80 05 00 08 */	lwz r0, 8(r5)
/* 802A4954 0026DF14  90 1E 00 08 */	stw r0, 8(r30)
.L_802A4958:
/* 802A4958 0026DF18  7F EA FB 78 */	mr r10, r31
/* 802A495C 0026DF1C  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802A4960 0026DF20  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802A4964 0026DF24  83 AA 00 24 */	lwz r29, 0x24(r10)
/* 802A4968 0026DF28  81 41 00 00 */	lwz r10, 0(r1)
/* 802A496C 0026DF2C  80 0A 00 04 */	lwz r0, 4(r10)
/* 802A4970 0026DF30  7D 41 53 78 */	mr r1, r10
/* 802A4974 0026DF34  7C 08 03 A6 */	mtlr r0
/* 802A4978 0026DF38  4E 80 00 20 */	blr 
.endfn __ct__802A4870

.fn func_802A497C, global
/* 802A497C 0026DF3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A4980 0026DF40  7C 08 02 A6 */	mflr r0
/* 802A4984 0026DF44  3C E0 80 54 */	lis r7, lbl_8053D0F4@ha
/* 802A4988 0026DF48  38 80 00 03 */	li r4, 3
/* 802A498C 0026DF4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A4990 0026DF50  38 A0 00 00 */	li r5, 0
/* 802A4994 0026DF54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A4998 0026DF58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A499C 0026DF5C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A49A0 0026DF60  7C 7D 1B 78 */	mr r29, r3
/* 802A49A4 0026DF64  84 C7 D0 F4 */	lwzu r6, lbl_8053D0F4@l(r7)
/* 802A49A8 0026DF68  80 07 00 04 */	lwz r0, 4(r7)
/* 802A49AC 0026DF6C  90 03 00 04 */	stw r0, 4(r3)
/* 802A49B0 0026DF70  90 C3 00 00 */	stw r6, 0(r3)
/* 802A49B4 0026DF74  80 07 00 08 */	lwz r0, 8(r7)
/* 802A49B8 0026DF78  90 03 00 08 */	stw r0, 8(r3)
/* 802A49BC 0026DF7C  38 63 00 20 */	addi r3, r3, 0x20
/* 802A49C0 0026DF80  48 00 2E B1 */	bl func_802A7870
/* 802A49C4 0026DF84  2C 03 00 00 */	cmpwi r3, 0
/* 802A49C8 0026DF88  90 7D 00 34 */	stw r3, 0x34(r29)
/* 802A49CC 0026DF8C  41 81 00 1C */	bgt .L_802A49E8
/* 802A49D0 0026DF90  81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 802A49D4 0026DF94  7F A3 EB 78 */	mr r3, r29
/* 802A49D8 0026DF98  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A49DC 0026DF9C  7D 89 03 A6 */	mtctr r12
/* 802A49E0 0026DFA0  4E 80 04 21 */	bctrl 
/* 802A49E4 0026DFA4  48 00 00 78 */	b .L_802A4A5C
.L_802A49E8:
/* 802A49E8 0026DFA8  48 19 15 15 */	bl mtRand__2mlFi
/* 802A49EC 0026DFAC  88 1D 00 3A */	lbz r0, 0x3a(r29)
/* 802A49F0 0026DFB0  90 7D 00 30 */	stw r3, 0x30(r29)
/* 802A49F4 0026DFB4  2C 00 00 00 */	cmpwi r0, 0
/* 802A49F8 0026DFB8  90 7D 00 2C */	stw r3, 0x2c(r29)
/* 802A49FC 0026DFBC  40 82 00 5C */	bne .L_802A4A58
/* 802A4A00 0026DFC0  4B E1 21 A5 */	bl func_800B6BA4
/* 802A4A04 0026DFC4  80 83 00 04 */	lwz r4, 4(r3)
/* 802A4A08 0026DFC8  7C 7F 1B 78 */	mr r31, r3
/* 802A4A0C 0026DFCC  83 C4 00 00 */	lwz r30, 0(r4)
/* 802A4A10 0026DFD0  48 00 00 38 */	b .L_802A4A48
.L_802A4A14:
/* 802A4A14 0026DFD4  80 7E 00 08 */	lwz r3, 8(r30)
/* 802A4A18 0026DFD8  2C 03 00 00 */	cmpwi r3, 0
/* 802A4A1C 0026DFDC  41 82 00 08 */	beq .L_802A4A24
/* 802A4A20 0026DFE0  38 63 C1 64 */	addi r3, r3, -16028
.L_802A4A24:
/* 802A4A24 0026DFE4  81 83 00 00 */	lwz r12, 0(r3)
/* 802A4A28 0026DFE8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A4A2C 0026DFEC  7D 89 03 A6 */	mtctr r12
/* 802A4A30 0026DFF0  4E 80 04 21 */	bctrl 
/* 802A4A34 0026DFF4  2C 03 00 00 */	cmpwi r3, 0
/* 802A4A38 0026DFF8  41 82 00 0C */	beq .L_802A4A44
/* 802A4A3C 0026DFFC  38 00 00 01 */	li r0, 1
/* 802A4A40 0026E000  48 00 00 18 */	b .L_802A4A58
.L_802A4A44:
/* 802A4A44 0026E004  83 DE 00 00 */	lwz r30, 0(r30)
.L_802A4A48:
/* 802A4A48 0026E008  80 1F 00 04 */	lwz r0, 4(r31)
/* 802A4A4C 0026E00C  7C 1E 00 40 */	cmplw r30, r0
/* 802A4A50 0026E010  40 82 FF C4 */	bne .L_802A4A14
/* 802A4A54 0026E014  38 00 00 00 */	li r0, 0
.L_802A4A58:
/* 802A4A58 0026E018  98 1D 00 39 */	stb r0, 0x39(r29)
.L_802A4A5C:
/* 802A4A5C 0026E01C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A4A60 0026E020  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A4A64 0026E024  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A4A68 0026E028  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A4A6C 0026E02C  7C 08 03 A6 */	mtlr r0
/* 802A4A70 0026E030  38 21 00 20 */	addi r1, r1, 0x20
/* 802A4A74 0026E034  4E 80 00 20 */	blr 
.endfn func_802A497C

.fn func_802A4A78, global
/* 802A4A78 0026E038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4A7C 0026E03C  7C 08 02 A6 */	mflr r0
/* 802A4A80 0026E040  3C E0 80 54 */	lis r7, lbl_8053D100@ha
/* 802A4A84 0026E044  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4A88 0026E048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4A8C 0026E04C  7C 7F 1B 78 */	mr r31, r3
/* 802A4A90 0026E050  93 C1 00 08 */	stw r30, 8(r1)
/* 802A4A94 0026E054  84 C7 D1 00 */	lwzu r6, lbl_8053D100@l(r7)
/* 802A4A98 0026E058  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802A4A9C 0026E05C  80 A7 00 04 */	lwz r5, 4(r7)
/* 802A4AA0 0026E060  54 00 10 3A */	slwi r0, r0, 2
/* 802A4AA4 0026E064  90 A3 00 04 */	stw r5, 4(r3)
/* 802A4AA8 0026E068  7C 83 02 14 */	add r4, r3, r0
/* 802A4AAC 0026E06C  90 C3 00 00 */	stw r6, 0(r3)
/* 802A4AB0 0026E070  80 07 00 08 */	lwz r0, 8(r7)
/* 802A4AB4 0026E074  90 03 00 08 */	stw r0, 8(r3)
/* 802A4AB8 0026E078  80 64 00 20 */	lwz r3, 0x20(r4)
/* 802A4ABC 0026E07C  2C 03 00 00 */	cmpwi r3, 0
/* 802A4AC0 0026E080  41 82 02 2C */	beq .L_802A4CEC
/* 802A4AC4 0026E084  81 83 00 00 */	lwz r12, 0(r3)
/* 802A4AC8 0026E088  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A4ACC 0026E08C  7D 89 03 A6 */	mtctr r12
/* 802A4AD0 0026E090  4E 80 04 21 */	bctrl 
/* 802A4AD4 0026E094  2C 03 00 00 */	cmpwi r3, 0
/* 802A4AD8 0026E098  40 82 02 14 */	bne .L_802A4CEC
/* 802A4ADC 0026E09C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802A4AE0 0026E0A0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 802A4AE4 0026E0A4  7C 03 00 00 */	cmpw r3, r0
/* 802A4AE8 0026E0A8  40 82 01 88 */	bne .L_802A4C70
/* 802A4AEC 0026E0AC  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 802A4AF0 0026E0B0  54 63 10 3A */	slwi r3, r3, 2
/* 802A4AF4 0026E0B4  7C 7F 1A 14 */	add r3, r31, r3
/* 802A4AF8 0026E0B8  2C 00 00 01 */	cmpwi r0, 1
/* 802A4AFC 0026E0BC  83 C3 00 20 */	lwz r30, 0x20(r3)
/* 802A4B00 0026E0C0  40 82 00 48 */	bne .L_802A4B48
/* 802A4B04 0026E0C4  7F C3 F3 78 */	mr r3, r30
/* 802A4B08 0026E0C8  48 00 2C E1 */	bl func_802A77E8
/* 802A4B0C 0026E0CC  2C 03 00 01 */	cmpwi r3, 1
/* 802A4B10 0026E0D0  40 82 00 38 */	bne .L_802A4B48
/* 802A4B14 0026E0D4  38 60 00 64 */	li r3, 0x64
/* 802A4B18 0026E0D8  48 19 13 E5 */	bl mtRand__2mlFi
/* 802A4B1C 0026E0DC  2C 03 00 1E */	cmpwi r3, 0x1e
/* 802A4B20 0026E0E0  40 80 00 20 */	bge .L_802A4B40
/* 802A4B24 0026E0E4  38 60 00 64 */	li r3, 0x64
/* 802A4B28 0026E0E8  48 19 13 D5 */	bl mtRand__2mlFi
/* 802A4B2C 0026E0EC  2C 03 00 32 */	cmpwi r3, 0x32
/* 802A4B30 0026E0F0  38 A0 0B 63 */	li r5, 0xb63
/* 802A4B34 0026E0F4  40 80 00 F8 */	bge .L_802A4C2C
/* 802A4B38 0026E0F8  38 A0 0B 55 */	li r5, 0xb55
/* 802A4B3C 0026E0FC  48 00 00 F0 */	b .L_802A4C2C
.L_802A4B40:
/* 802A4B40 0026E100  38 A0 FF FF */	li r5, -1
/* 802A4B44 0026E104  48 00 00 E8 */	b .L_802A4C2C
.L_802A4B48:
/* 802A4B48 0026E108  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 802A4B4C 0026E10C  2C 00 00 01 */	cmpwi r0, 1
/* 802A4B50 0026E110  40 82 00 48 */	bne .L_802A4B98
/* 802A4B54 0026E114  7F C3 F3 78 */	mr r3, r30
/* 802A4B58 0026E118  48 00 2C 91 */	bl func_802A77E8
/* 802A4B5C 0026E11C  2C 03 00 03 */	cmpwi r3, 3
/* 802A4B60 0026E120  40 82 00 38 */	bne .L_802A4B98
/* 802A4B64 0026E124  38 60 00 64 */	li r3, 0x64
/* 802A4B68 0026E128  48 19 13 95 */	bl mtRand__2mlFi
/* 802A4B6C 0026E12C  2C 03 00 1E */	cmpwi r3, 0x1e
/* 802A4B70 0026E130  40 80 00 20 */	bge .L_802A4B90
/* 802A4B74 0026E134  38 60 00 64 */	li r3, 0x64
/* 802A4B78 0026E138  48 19 13 85 */	bl mtRand__2mlFi
/* 802A4B7C 0026E13C  2C 03 00 32 */	cmpwi r3, 0x32
/* 802A4B80 0026E140  38 A0 0B 61 */	li r5, 0xb61
/* 802A4B84 0026E144  40 80 00 A8 */	bge .L_802A4C2C
/* 802A4B88 0026E148  38 A0 0B 57 */	li r5, 0xb57
/* 802A4B8C 0026E14C  48 00 00 A0 */	b .L_802A4C2C
.L_802A4B90:
/* 802A4B90 0026E150  38 A0 FF FF */	li r5, -1
/* 802A4B94 0026E154  48 00 00 98 */	b .L_802A4C2C
.L_802A4B98:
/* 802A4B98 0026E158  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 802A4B9C 0026E15C  2C 00 00 01 */	cmpwi r0, 1
/* 802A4BA0 0026E160  40 82 00 50 */	bne .L_802A4BF0
/* 802A4BA4 0026E164  7F C3 F3 78 */	mr r3, r30
/* 802A4BA8 0026E168  48 00 2C 41 */	bl func_802A77E8
/* 802A4BAC 0026E16C  2C 03 00 07 */	cmpwi r3, 7
/* 802A4BB0 0026E170  40 82 00 40 */	bne .L_802A4BF0
/* 802A4BB4 0026E174  38 60 00 64 */	li r3, 0x64
/* 802A4BB8 0026E178  48 19 13 45 */	bl mtRand__2mlFi
/* 802A4BBC 0026E17C  2C 03 00 1E */	cmpwi r3, 0x1e
/* 802A4BC0 0026E180  40 80 00 28 */	bge .L_802A4BE8
/* 802A4BC4 0026E184  38 60 00 64 */	li r3, 0x64
/* 802A4BC8 0026E188  48 19 13 35 */	bl mtRand__2mlFi
/* 802A4BCC 0026E18C  38 80 00 32 */	li r4, 0x32
/* 802A4BD0 0026E190  54 60 0F FE */	srwi r0, r3, 0x1f
/* 802A4BD4 0026E194  7C 64 18 10 */	subfc r3, r4, r3
/* 802A4BD8 0026E198  38 60 00 00 */	li r3, 0
/* 802A4BDC 0026E19C  7C 60 19 10 */	subfe r3, r0, r3
/* 802A4BE0 0026E1A0  38 A3 05 DE */	addi r5, r3, 0x5de
/* 802A4BE4 0026E1A4  48 00 00 48 */	b .L_802A4C2C
.L_802A4BE8:
/* 802A4BE8 0026E1A8  38 A0 FF FF */	li r5, -1
/* 802A4BEC 0026E1AC  48 00 00 40 */	b .L_802A4C2C
.L_802A4BF0:
/* 802A4BF0 0026E1B0  88 1F 00 39 */	lbz r0, 0x39(r31)
/* 802A4BF4 0026E1B4  2C 00 00 00 */	cmpwi r0, 0
/* 802A4BF8 0026E1B8  41 82 00 1C */	beq .L_802A4C14
/* 802A4BFC 0026E1BC  38 60 00 02 */	li r3, 2
/* 802A4C00 0026E1C0  48 19 12 FD */	bl mtRand__2mlFi
/* 802A4C04 0026E1C4  54 60 10 3A */	slwi r0, r3, 2
/* 802A4C08 0026E1C8  38 6D 94 40 */	addi r3, r13, lbl_806655C0@sda21
/* 802A4C0C 0026E1CC  7C A3 00 2E */	lwzx r5, r3, r0
/* 802A4C10 0026E1D0  48 00 00 1C */	b .L_802A4C2C
.L_802A4C14:
/* 802A4C14 0026E1D4  38 60 00 07 */	li r3, 7
/* 802A4C18 0026E1D8  48 19 12 E5 */	bl mtRand__2mlFi
/* 802A4C1C 0026E1DC  3C 80 80 54 */	lis r4, lbl_8053D118@ha
/* 802A4C20 0026E1E0  54 60 10 3A */	slwi r0, r3, 2
/* 802A4C24 0026E1E4  38 84 D1 18 */	addi r4, r4, lbl_8053D118@l
/* 802A4C28 0026E1E8  7C A4 00 2E */	lwzx r5, r4, r0
.L_802A4C2C:
/* 802A4C2C 0026E1EC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802A4C30 0026E1F0  54 00 10 3A */	slwi r0, r0, 2
/* 802A4C34 0026E1F4  7C 7F 02 14 */	add r3, r31, r0
/* 802A4C38 0026E1F8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 802A4C3C 0026E1FC  2C 04 00 00 */	cmpwi r4, 0
/* 802A4C40 0026E200  41 82 00 08 */	beq .L_802A4C48
/* 802A4C44 0026E204  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A4C48:
/* 802A4C48 0026E208  7F E3 FB 78 */	mr r3, r31
/* 802A4C4C 0026E20C  4B FF EF F9 */	bl func_802A3C44
/* 802A4C50 0026E210  2C 03 00 00 */	cmpwi r3, 0
/* 802A4C54 0026E214  40 82 00 98 */	bne .L_802A4CEC
/* 802A4C58 0026E218  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A4C5C 0026E21C  7F E3 FB 78 */	mr r3, r31
/* 802A4C60 0026E220  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A4C64 0026E224  7D 89 03 A6 */	mtctr r12
/* 802A4C68 0026E228  4E 80 04 21 */	bctrl 
/* 802A4C6C 0026E22C  48 00 00 80 */	b .L_802A4CEC
.L_802A4C70:
/* 802A4C70 0026E230  88 1F 00 39 */	lbz r0, 0x39(r31)
/* 802A4C74 0026E234  2C 00 00 00 */	cmpwi r0, 0
/* 802A4C78 0026E238  41 82 00 1C */	beq .L_802A4C94
/* 802A4C7C 0026E23C  38 60 00 02 */	li r3, 2
/* 802A4C80 0026E240  48 19 12 7D */	bl mtRand__2mlFi
/* 802A4C84 0026E244  54 60 10 3A */	slwi r0, r3, 2
/* 802A4C88 0026E248  38 6D 94 48 */	addi r3, r13, lbl_806655C8@sda21
/* 802A4C8C 0026E24C  7C A3 00 2E */	lwzx r5, r3, r0
/* 802A4C90 0026E250  48 00 00 1C */	b .L_802A4CAC
.L_802A4C94:
/* 802A4C94 0026E254  38 60 00 04 */	li r3, 4
/* 802A4C98 0026E258  48 19 12 65 */	bl mtRand__2mlFi
/* 802A4C9C 0026E25C  3C 80 80 54 */	lis r4, lbl_8053D138@ha
/* 802A4CA0 0026E260  54 60 10 3A */	slwi r0, r3, 2
/* 802A4CA4 0026E264  38 84 D1 38 */	addi r4, r4, lbl_8053D138@l
/* 802A4CA8 0026E268  7C A4 00 2E */	lwzx r5, r4, r0
.L_802A4CAC:
/* 802A4CAC 0026E26C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802A4CB0 0026E270  54 00 10 3A */	slwi r0, r0, 2
/* 802A4CB4 0026E274  7C 7F 02 14 */	add r3, r31, r0
/* 802A4CB8 0026E278  80 83 00 20 */	lwz r4, 0x20(r3)
/* 802A4CBC 0026E27C  2C 04 00 00 */	cmpwi r4, 0
/* 802A4CC0 0026E280  41 82 00 08 */	beq .L_802A4CC8
/* 802A4CC4 0026E284  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A4CC8:
/* 802A4CC8 0026E288  7F E3 FB 78 */	mr r3, r31
/* 802A4CCC 0026E28C  4B FF EF 79 */	bl func_802A3C44
/* 802A4CD0 0026E290  2C 03 00 00 */	cmpwi r3, 0
/* 802A4CD4 0026E294  40 82 00 18 */	bne .L_802A4CEC
/* 802A4CD8 0026E298  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A4CDC 0026E29C  7F E3 FB 78 */	mr r3, r31
/* 802A4CE0 0026E2A0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A4CE4 0026E2A4  7D 89 03 A6 */	mtctr r12
/* 802A4CE8 0026E2A8  4E 80 04 21 */	bctrl 
.L_802A4CEC:
/* 802A4CEC 0026E2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4CF0 0026E2B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4CF4 0026E2B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A4CF8 0026E2B8  7C 08 03 A6 */	mtlr r0
/* 802A4CFC 0026E2BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4D00 0026E2C0  4E 80 00 20 */	blr 
.endfn func_802A4A78

.fn func_802A4D04, global
/* 802A4D04 0026E2C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4D08 0026E2C8  7C 08 02 A6 */	mflr r0
/* 802A4D0C 0026E2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4D10 0026E2D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4D14 0026E2D4  7C 7F 1B 78 */	mr r31, r3
/* 802A4D18 0026E2D8  4B FF F1 71 */	bl func_802A3E88
/* 802A4D1C 0026E2DC  2C 03 00 00 */	cmpwi r3, 0
/* 802A4D20 0026E2E0  40 82 00 94 */	bne .L_802A4DB4
/* 802A4D24 0026E2E4  88 1F 00 38 */	lbz r0, 0x38(r31)
/* 802A4D28 0026E2E8  2C 00 00 00 */	cmpwi r0, 0
/* 802A4D2C 0026E2EC  40 82 00 28 */	bne .L_802A4D54
/* 802A4D30 0026E2F0  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802A4D34 0026E2F4  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 802A4D38 0026E2F8  38 63 00 01 */	addi r3, r3, 1
/* 802A4D3C 0026E2FC  90 7F 00 30 */	stw r3, 0x30(r31)
/* 802A4D40 0026E300  7C 00 18 00 */	cmpw r0, r3
/* 802A4D44 0026E304  41 81 00 2C */	bgt .L_802A4D70
/* 802A4D48 0026E308  38 00 00 00 */	li r0, 0
/* 802A4D4C 0026E30C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802A4D50 0026E310  48 00 00 20 */	b .L_802A4D70
.L_802A4D54:
/* 802A4D54 0026E314  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802A4D58 0026E318  34 03 FF FF */	addic. r0, r3, -1
/* 802A4D5C 0026E31C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802A4D60 0026E320  40 80 00 10 */	bge .L_802A4D70
/* 802A4D64 0026E324  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 802A4D68 0026E328  38 03 FF FF */	addi r0, r3, -1
/* 802A4D6C 0026E32C  90 1F 00 30 */	stw r0, 0x30(r31)
.L_802A4D70:
/* 802A4D70 0026E330  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802A4D74 0026E334  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 802A4D78 0026E338  7C 03 00 00 */	cmpw r3, r0
/* 802A4D7C 0026E33C  41 82 00 24 */	beq .L_802A4DA0
/* 802A4D80 0026E340  3C 80 80 54 */	lis r4, lbl_8053D10C@ha
/* 802A4D84 0026E344  84 64 D1 0C */	lwzu r3, lbl_8053D10C@l(r4)
/* 802A4D88 0026E348  80 04 00 04 */	lwz r0, 4(r4)
/* 802A4D8C 0026E34C  90 1F 00 04 */	stw r0, 4(r31)
/* 802A4D90 0026E350  90 7F 00 00 */	stw r3, 0(r31)
/* 802A4D94 0026E354  80 04 00 08 */	lwz r0, 8(r4)
/* 802A4D98 0026E358  90 1F 00 08 */	stw r0, 8(r31)
/* 802A4D9C 0026E35C  48 00 00 18 */	b .L_802A4DB4
.L_802A4DA0:
/* 802A4DA0 0026E360  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A4DA4 0026E364  7F E3 FB 78 */	mr r3, r31
/* 802A4DA8 0026E368  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A4DAC 0026E36C  7D 89 03 A6 */	mtctr r12
/* 802A4DB0 0026E370  4E 80 04 21 */	bctrl 
.L_802A4DB4:
/* 802A4DB4 0026E374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4DB8 0026E378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4DBC 0026E37C  7C 08 03 A6 */	mtlr r0
/* 802A4DC0 0026E380  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4DC4 0026E384  4E 80 00 20 */	blr 
.endfn func_802A4D04

.fn func_802A4DC8, global
/* 802A4DC8 0026E388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4DCC 0026E38C  7C 08 02 A6 */	mflr r0
/* 802A4DD0 0026E390  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4DD4 0026E394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4DD8 0026E398  7C 9F 23 78 */	mr r31, r4
/* 802A4DDC 0026E39C  93 C1 00 08 */	stw r30, 8(r1)
/* 802A4DE0 0026E3A0  7C 7E 1B 78 */	mr r30, r3
/* 802A4DE4 0026E3A4  4B FF EE 09 */	bl func_802A3BEC
/* 802A4DE8 0026E3A8  7F C5 F3 78 */	mr r5, r30
/* 802A4DEC 0026E3AC  38 C0 00 00 */	li r6, 0
/* 802A4DF0 0026E3B0  38 60 00 00 */	li r3, 0
/* 802A4DF4 0026E3B4  48 00 00 28 */	b .L_802A4E1C
.L_802A4DF8:
/* 802A4DF8 0026E3B8  80 85 00 20 */	lwz r4, 0x20(r5)
/* 802A4DFC 0026E3BC  2C 04 00 00 */	cmpwi r4, 0
/* 802A4E00 0026E3C0  41 82 00 08 */	beq .L_802A4E08
/* 802A4E04 0026E3C4  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A4E08:
/* 802A4E08 0026E3C8  7C 04 F8 40 */	cmplw r4, r31
/* 802A4E0C 0026E3CC  40 82 00 08 */	bne .L_802A4E14
/* 802A4E10 0026E3D0  90 65 00 20 */	stw r3, 0x20(r5)
.L_802A4E14:
/* 802A4E14 0026E3D4  38 A5 00 04 */	addi r5, r5, 4
/* 802A4E18 0026E3D8  38 C6 00 01 */	addi r6, r6, 1
.L_802A4E1C:
/* 802A4E1C 0026E3DC  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802A4E20 0026E3E0  7C 06 00 00 */	cmpw r6, r0
/* 802A4E24 0026E3E4  41 80 FF D4 */	blt .L_802A4DF8
/* 802A4E28 0026E3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4E2C 0026E3EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4E30 0026E3F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A4E34 0026E3F4  7C 08 03 A6 */	mtlr r0
/* 802A4E38 0026E3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4E3C 0026E3FC  4E 80 00 20 */	blr 
.endfn func_802A4DC8

.fn func_802A4E40, global
/* 802A4E40 0026E400  38 60 00 46 */	li r3, 0x46
/* 802A4E44 0026E404  4E 80 00 20 */	blr 
.endfn func_802A4E40

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CVS_THREAD_BATTLE_END_typestr, global
	.asciz "cf::CVS_THREAD_BATTLE_END"
	.balign 4
	.4byte 0
.endobj cf_CVS_THREAD_BATTLE_END_typestr


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8053D0E8, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A497C
.endobj lbl_8053D0E8

.obj lbl_8053D0F4, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A4A78
.endobj lbl_8053D0F4

.obj lbl_8053D100, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A4D04
.endobj lbl_8053D100

.obj lbl_8053D10C, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A4A78
.endobj lbl_8053D10C


.obj lbl_8053D118, global
	.4byte 0x00000B55
	.4byte 0x00000B56
	.4byte 0x00000B61
	.4byte 0x00000B62
	.4byte 0x00000B63
	.4byte 0x00000B59
	.4byte 0x00000B5A
	.4byte 0
.endobj lbl_8053D118


.obj lbl_8053D138, global
	.4byte 0x00000B5B
	.4byte 0x00000B5C
	.4byte 0x00000B5F
	.4byte 0x00000B60
.endobj lbl_8053D138


.obj __vt__Q22cf21CVS_THREAD_BATTLE_END, global
	.4byte __RTTI__Q22cf21CVS_THREAD_BATTLE_END
	.4byte 0
	.4byte func_802A3B50
	.4byte func_802A4DC8
	.4byte func_802A4E40
	.4byte func_802A1EA0
	.4byte func_802A3740
.endobj __vt__Q22cf21CVS_THREAD_BATTLE_END

.obj cf_CVS_THREAD_BATTLE_END_hierarchy, global
	.4byte __RTTI__Q22cf10CVS_THREAD
	.4byte 0
	.4byte 0
.endobj cf_CVS_THREAD_BATTLE_END_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj lbl_806655C0, global
	.4byte 0x00000B57
	.4byte 0x00000B58
.endobj lbl_806655C0


.obj lbl_806655C8, global
	.4byte 0x00000B5D
	.4byte 0x00000B5E
.endobj lbl_806655C8

.obj __RTTI__Q22cf21CVS_THREAD_BATTLE_END, global
	.4byte cf_CVS_THREAD_BATTLE_END_typestr
	.4byte cf_CVS_THREAD_BATTLE_END_hierarchy
.endobj __RTTI__Q22cf21CVS_THREAD_BATTLE_END

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001AAF8", local
.hidden "@etb_8001AAF8"
	.4byte 0x18180000
	.4byte 0x00000064
	.4byte 0x000F0018
	.4byte 0x000000C4
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x90000000
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000008
	.4byte 0x8D000008
.endobj "@etb_8001AAF8"

.obj "@etb_8001AB24", local
.hidden "@etb_8001AB24"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001AB24"

.obj "@etb_8001AB2C", local
.hidden "@etb_8001AB2C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AB2C"

.obj "@etb_8001AB34", local
.hidden "@etb_8001AB34"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AB34"

.obj "@etb_8001AB3C", local
.hidden "@etb_8001AB3C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AB3C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800329E4", local
.hidden "@eti_800329E4"
	.4byte __ct__802A4870
	.4byte 0x0000010C
	.4byte "@etb_8001AAF8"
.endobj "@eti_800329E4"

.obj "@eti_800329F0", local
.hidden "@eti_800329F0"
	.4byte func_802A497C
	.4byte 0x000000FC
	.4byte "@etb_8001AB24"
.endobj "@eti_800329F0"

.obj "@eti_800329FC", local
.hidden "@eti_800329FC"
	.4byte func_802A4A78
	.4byte 0x0000028C
	.4byte "@etb_8001AB2C"
.endobj "@eti_800329FC"

.obj "@eti_80032A08", local
.hidden "@eti_80032A08"
	.4byte func_802A4D04
	.4byte 0x000000C4
	.4byte "@etb_8001AB34"
.endobj "@eti_80032A08"

.obj "@eti_80032A14", local
.hidden "@eti_80032A14"
	.4byte func_802A4DC8
	.4byte 0x00000078
	.4byte "@etb_8001AB3C"
.endobj "@eti_80032A14"
