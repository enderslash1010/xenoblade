.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8003A05C
func_8003A05C:
/* 8003A05C 0000361C  38 60 00 00 */	li r3, 0
/* 8003A060 00003620  4E 80 00 20 */	blr 

.global func_8003A064
func_8003A064:
/* 8003A064 00003624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A068 00003628  7C 08 02 A6 */	mflr r0
/* 8003A06C 0000362C  38 80 00 01 */	li r4, 1
/* 8003A070 00003630  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A074 00003634  48 46 6C 05 */	bl func_804A0C78
/* 8003A078 00003638  7C 64 1B 78 */	mr r4, r3
/* 8003A07C 0000363C  38 60 00 02 */	li r3, 2
/* 8003A080 00003640  48 46 6D ED */	bl func_804A0E6C
/* 8003A084 00003644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A088 00003648  38 60 00 00 */	li r3, 0
/* 8003A08C 0000364C  7C 08 03 A6 */	mtlr r0
/* 8003A090 00003650  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A094 00003654  4E 80 00 20 */	blr 

.global func_8003A098
func_8003A098:
/* 8003A098 00003658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A09C 0000365C  7C 08 02 A6 */	mflr r0
/* 8003A0A0 00003660  38 80 00 01 */	li r4, 1
/* 8003A0A4 00003664  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A0A8 00003668  48 46 6B D1 */	bl func_804A0C78
/* 8003A0AC 0000366C  7C 64 1B 78 */	mr r4, r3
/* 8003A0B0 00003670  38 60 00 02 */	li r3, 2
/* 8003A0B4 00003674  48 46 6D B9 */	bl func_804A0E6C
/* 8003A0B8 00003678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A0BC 0000367C  38 60 00 00 */	li r3, 0
/* 8003A0C0 00003680  7C 08 03 A6 */	mtlr r0
/* 8003A0C4 00003684  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A0C8 00003688  4E 80 00 20 */	blr 

.global func_8003A0CC
func_8003A0CC:
/* 8003A0CC 0000368C  3C 60 80 4F */	lis r3, lbl_804F5D14@ha
/* 8003A0D0 00003690  3C 80 80 53 */	lis r4, lbl_80528458@ha
/* 8003A0D4 00003694  38 63 5D 14 */	addi r3, r3, lbl_804F5D14@l
/* 8003A0D8 00003698  38 84 84 58 */	addi r4, r4, lbl_80528458@l
/* 8003A0DC 0000369C  48 46 6A B4 */	b func_804A0B90


.global func_8003A0E0
func_8003A0E0:
/* 8003A0E0 000036A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A0E4 000036A4  7C 08 02 A6 */	mflr r0
/* 8003A0E8 000036A8  38 80 00 01 */	li r4, 1
/* 8003A0EC 000036AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A0F0 000036B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A0F4 000036B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A0F8 000036B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8003A0FC 000036BC  7C 7D 1B 78 */	mr r29, r3
/* 8003A100 000036C0  48 46 6B 79 */	bl func_804A0C78
/* 8003A104 000036C4  7C 64 1B 78 */	mr r4, r3
/* 8003A108 000036C8  38 60 00 02 */	li r3, 2
/* 8003A10C 000036CC  48 46 6C C1 */	bl func_804A0DCC
/* 8003A110 000036D0  7C 7E 1B 78 */	mr r30, r3
/* 8003A114 000036D4  7F A3 EB 78 */	mr r3, r29
/* 8003A118 000036D8  48 46 6E CD */	bl func_804A0FE4
/* 8003A11C 000036DC  2C 03 00 00 */	cmpwi r3, 0
/* 8003A120 000036E0  7C 7F 1B 78 */	mr r31, r3
/* 8003A124 000036E4  40 82 00 30 */	bne lbl_8003A154
/* 8003A128 000036E8  7F A3 EB 78 */	mr r3, r29
/* 8003A12C 000036EC  38 80 00 00 */	li r4, 0
/* 8003A130 000036F0  48 46 6E C5 */	bl func_804A0FF4
/* 8003A134 000036F4  57 C0 60 26 */	slwi r0, r30, 0xc
/* 8003A138 000036F8  90 03 00 00 */	stw r0, 0(r3)
/* 8003A13C 000036FC  7F A3 EB 78 */	mr r3, r29
/* 8003A140 00003700  38 9F 00 01 */	addi r4, r31, 1
/* 8003A144 00003704  48 46 6E A9 */	bl func_804A0FEC
/* 8003A148 00003708  7F A3 EB 78 */	mr r3, r29
/* 8003A14C 0000370C  48 46 6E 8D */	bl func_804A0FD8
/* 8003A150 00003710  48 00 00 28 */	b lbl_8003A178
lbl_8003A154:
/* 8003A154 00003714  7F A3 EB 78 */	mr r3, r29
/* 8003A158 00003718  38 80 00 00 */	li r4, 0
/* 8003A15C 0000371C  48 46 6E 99 */	bl func_804A0FF4
/* 8003A160 00003720  80 83 00 00 */	lwz r4, 0(r3)
/* 8003A164 00003724  34 04 F0 00 */	addic. r0, r4, -4096
/* 8003A168 00003728  90 03 00 00 */	stw r0, 0(r3)
/* 8003A16C 0000372C  40 81 00 0C */	ble lbl_8003A178
/* 8003A170 00003730  7F A3 EB 78 */	mr r3, r29
/* 8003A174 00003734  48 46 6E 65 */	bl func_804A0FD8
lbl_8003A178:
/* 8003A178 00003738  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A17C 0000373C  38 60 00 00 */	li r3, 0
/* 8003A180 00003740  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A184 00003744  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8003A188 00003748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A18C 0000374C  7C 08 03 A6 */	mtlr r0
/* 8003A190 00003750  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A194 00003754  4E 80 00 20 */	blr 

.global func_8003A198
func_8003A198:
/* 8003A198 00003758  3C 60 80 4F */	lis r3, lbl_804F5D18@ha
/* 8003A19C 0000375C  3C 80 80 53 */	lis r4, lbl_80528478@ha
/* 8003A1A0 00003760  38 63 5D 18 */	addi r3, r3, lbl_804F5D18@l
/* 8003A1A4 00003764  38 84 84 78 */	addi r4, r4, lbl_80528478@l
/* 8003A1A8 00003768  48 46 69 E8 */	b func_804A0B90


.global func_8003A1AC
func_8003A1AC:
/* 8003A1AC 0000376C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A1B0 00003770  7C 08 02 A6 */	mflr r0
/* 8003A1B4 00003774  38 80 00 01 */	li r4, 1
/* 8003A1B8 00003778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A1BC 0000377C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A1C0 00003780  7C BF 2B 78 */	mr r31, r5
/* 8003A1C4 00003784  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A1C8 00003788  7C 7E 1B 78 */	mr r30, r3
/* 8003A1CC 0000378C  48 46 6A AD */	bl func_804A0C78
/* 8003A1D0 00003790  7C 64 1B 78 */	mr r4, r3
/* 8003A1D4 00003794  38 60 00 02 */	li r3, 2
/* 8003A1D8 00003798  48 46 6C 95 */	bl func_804A0E6C
/* 8003A1DC 0000379C  7C 64 1B 78 */	mr r4, r3
/* 8003A1E0 000037A0  7F E3 FB 78 */	mr r3, r31
/* 8003A1E4 000037A4  48 46 76 BD */	bl func_804A18A0
/* 8003A1E8 000037A8  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8003A1EC 000037AC  7F C3 F3 78 */	mr r3, r30
/* 8003A1F0 000037B0  68 00 00 01 */	xori r0, r0, 1
/* 8003A1F4 000037B4  38 81 00 08 */	addi r4, r1, 8
/* 8003A1F8 000037B8  7C 00 00 34 */	cntlzw r0, r0
/* 8003A1FC 000037BC  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A200 000037C0  38 05 00 01 */	addi r0, r5, 1
/* 8003A204 000037C4  98 01 00 08 */	stb r0, 8(r1)
/* 8003A208 000037C8  48 46 6D 95 */	bl func_804A0F9C
/* 8003A20C 000037CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A210 000037D0  38 60 00 01 */	li r3, 1
/* 8003A214 000037D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A218 000037D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A21C 000037DC  7C 08 03 A6 */	mtlr r0
/* 8003A220 000037E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A224 000037E4  4E 80 00 20 */	blr


.global func_8003A228
func_8003A228:
/* 8003A228 000037E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A22C 000037EC  7C 08 02 A6 */	mflr r0
/* 8003A230 000037F0  38 80 00 01 */	li r4, 1
/* 8003A234 000037F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A238 000037F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A23C 000037FC  7C BF 2B 78 */	mr r31, r5
/* 8003A240 00003800  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A244 00003804  7C 7E 1B 78 */	mr r30, r3
/* 8003A248 00003808  48 46 6A 31 */	bl func_804A0C78
/* 8003A24C 0000380C  7C 64 1B 78 */	mr r4, r3
/* 8003A250 00003810  38 60 00 02 */	li r3, 2
/* 8003A254 00003814  48 46 6C 19 */	bl func_804A0E6C
/* 8003A258 00003818  7C 64 1B 78 */	mr r4, r3
/* 8003A25C 0000381C  7F E3 FB 78 */	mr r3, r31
/* 8003A260 00003820  48 46 76 DD */	bl func_804A193C
/* 8003A264 00003824  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8003A268 00003828  7F C3 F3 78 */	mr r3, r30
/* 8003A26C 0000382C  68 00 00 01 */	xori r0, r0, 1
/* 8003A270 00003830  38 81 00 08 */	addi r4, r1, 8
/* 8003A274 00003834  7C 00 00 34 */	cntlzw r0, r0
/* 8003A278 00003838  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A27C 0000383C  38 05 00 01 */	addi r0, r5, 1
/* 8003A280 00003840  98 01 00 08 */	stb r0, 8(r1)
/* 8003A284 00003844  48 46 6D 19 */	bl func_804A0F9C
/* 8003A288 00003848  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A28C 0000384C  38 60 00 01 */	li r3, 1
/* 8003A290 00003850  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A294 00003854  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A298 00003858  7C 08 03 A6 */	mtlr r0
/* 8003A29C 0000385C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A2A0 00003860  4E 80 00 20 */	blr


.global func_8003A2A4
func_8003A2A4:
/* 8003A2A4 00003864  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A2A8 00003868  7C 08 02 A6 */	mflr r0
/* 8003A2AC 0000386C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A2B0 00003870  38 00 00 05 */	li r0, 5
/* 8003A2B4 00003874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A2B8 00003878  7C BF 2B 78 */	mr r31, r5
/* 8003A2BC 0000387C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A2C0 00003880  7C 7E 1B 78 */	mr r30, r3
/* 8003A2C4 00003884  98 01 00 08 */	stb r0, 8(r1)
/* 8003A2C8 00003888  80 65 00 00 */	lwz r3, 0(r5)
/* 8003A2CC 0000388C  48 27 F2 ED */	bl strlen
/* 8003A2D0 00003890  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8003A2D4 00003894  7F C3 F3 78 */	mr r3, r30
/* 8003A2D8 00003898  38 81 00 08 */	addi r4, r1, 8
/* 8003A2DC 0000389C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8003A2E0 000038A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A2E4 000038A4  48 46 6C B9 */	bl func_804A0F9C
/* 8003A2E8 000038A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A2EC 000038AC  38 60 00 01 */	li r3, 1
/* 8003A2F0 000038B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A2F4 000038B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A2F8 000038B8  7C 08 03 A6 */	mtlr r0
/* 8003A2FC 000038BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A300 000038C0  4E 80 00 20 */	blr 

.global func_8003A304
func_8003A304:
/* 8003A304 000038C4  3C 60 80 53 */	lis r3, lbl_805284B8@ha
/* 8003A308 000038C8  38 63 84 B8 */	addi r3, r3, lbl_805284B8@l
/* 8003A30C 000038CC  48 46 6D 0C */	b func_804A1018


.global func_8003A310
func_8003A310:
/* 8003A310 000038D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A314 000038D4  7C 08 02 A6 */	mflr r0
/* 8003A318 000038D8  38 80 00 01 */	li r4, 1
/* 8003A31C 000038DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A320 000038E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A324 000038E4  7C BF 2B 78 */	mr r31, r5
/* 8003A328 000038E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A32C 000038EC  7C 7E 1B 78 */	mr r30, r3
/* 8003A330 000038F0  48 46 69 49 */	bl func_804A0C78
/* 8003A334 000038F4  7C 64 1B 78 */	mr r4, r3
/* 8003A338 000038F8  38 60 00 02 */	li r3, 2
/* 8003A33C 000038FC  48 46 6B 6D */	bl func_804A0EA8
/* 8003A340 00003900  7C 64 1B 78 */	mr r4, r3
/* 8003A344 00003904  7F C3 F3 78 */	mr r3, r30
/* 8003A348 00003908  38 A1 00 08 */	addi r5, r1, 8
/* 8003A34C 0000390C  48 46 6F A5 */	bl func_804A12F0
/* 8003A350 00003910  2C 03 00 00 */	cmpwi r3, 0
/* 8003A354 00003914  40 82 00 14 */	bne lbl_8003A368
/* 8003A358 00003918  7F C3 F3 78 */	mr r3, r30
/* 8003A35C 0000391C  48 46 6E 59 */	bl func_804A11B4
/* 8003A360 00003920  38 60 00 00 */	li r3, 0
/* 8003A364 00003924  48 00 00 28 */	b lbl_8003A38C
lbl_8003A368:
/* 8003A368 00003928  80 01 00 08 */	lwz r0, 8(r1)
/* 8003A36C 0000392C  38 60 00 09 */	li r3, 9
/* 8003A370 00003930  98 61 00 10 */	stb r3, 0x10(r1)
/* 8003A374 00003934  7F C3 F3 78 */	mr r3, r30
/* 8003A378 00003938  38 81 00 10 */	addi r4, r1, 0x10
/* 8003A37C 0000393C  B3 E1 00 12 */	sth r31, 0x12(r1)
/* 8003A380 00003940  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A384 00003944  48 46 6C 19 */	bl func_804A0F9C
/* 8003A388 00003948  38 60 00 01 */	li r3, 1
lbl_8003A38C:
/* 8003A38C 0000394C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A390 00003950  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A394 00003954  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A398 00003958  7C 08 03 A6 */	mtlr r0
/* 8003A39C 0000395C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A3A0 00003960  4E 80 00 20 */	blr


.global func_8003A3A4
func_8003A3A4:
/* 8003A3A4 00003964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A3A8 00003968  7C 08 02 A6 */	mflr r0
/* 8003A3AC 0000396C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A3B0 00003970  48 46 6F AD */	bl func_804A135C
/* 8003A3B4 00003974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A3B8 00003978  38 60 00 00 */	li r3, 0
/* 8003A3BC 0000397C  7C 08 03 A6 */	mtlr r0
/* 8003A3C0 00003980  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A3C4 00003984  4E 80 00 20 */	blr 

.global func_8003A3C8
func_8003A3C8:
/* 8003A3C8 00003988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A3CC 0000398C  7C 08 02 A6 */	mflr r0
/* 8003A3D0 00003990  7C 83 23 78 */	mr r3, r4
/* 8003A3D4 00003994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A3D8 00003998  48 46 70 89 */	bl func_804A1460
/* 8003A3DC 0000399C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A3E0 000039A0  38 60 00 00 */	li r3, 0
/* 8003A3E4 000039A4  7C 08 03 A6 */	mtlr r0
/* 8003A3E8 000039A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A3EC 000039AC  4E 80 00 20 */	blr


.global func_8003A3F0
func_8003A3F0:
/* 8003A3F0 000039B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A3F4 000039B4  7C 08 02 A6 */	mflr r0
/* 8003A3F8 000039B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A3FC 000039BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A400 000039C0  7C 7F 1B 78 */	mr r31, r3
/* 8003A404 000039C4  7C 83 23 78 */	mr r3, r4
/* 8003A408 000039C8  48 46 70 CD */	bl func_804A14D4
/* 8003A40C 000039CC  7C 60 00 34 */	cntlzw r0, r3
/* 8003A410 000039D0  7F E3 FB 78 */	mr r3, r31
/* 8003A414 000039D4  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A418 000039D8  38 81 00 08 */	addi r4, r1, 8
/* 8003A41C 000039DC  38 05 00 01 */	addi r0, r5, 1
/* 8003A420 000039E0  98 01 00 08 */	stb r0, 8(r1)
/* 8003A424 000039E4  48 46 6B 79 */	bl func_804A0F9C
/* 8003A428 000039E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A42C 000039EC  38 60 00 01 */	li r3, 1
/* 8003A430 000039F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A434 000039F4  7C 08 03 A6 */	mtlr r0
/* 8003A438 000039F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A43C 000039FC  4E 80 00 20 */	blr


.global func_8003A440
func_8003A440:
/* 8003A440 00003A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A444 00003A04  7C 08 02 A6 */	mflr r0
/* 8003A448 00003A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A44C 00003A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A450 00003A10  7C 7F 1B 78 */	mr r31, r3
/* 8003A454 00003A14  7C 83 23 78 */	mr r3, r4
/* 8003A458 00003A18  48 46 70 7D */	bl func_804A14D4
/* 8003A45C 00003A1C  2C 03 00 00 */	cmpwi r3, 0
/* 8003A460 00003A20  41 82 00 0C */	beq lbl_8003A46C
/* 8003A464 00003A24  7F E3 FB 78 */	mr r3, r31
/* 8003A468 00003A28  48 46 6B 71 */	bl func_804A0FD8
lbl_8003A46C:
/* 8003A46C 00003A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A470 00003A30  38 60 00 00 */	li r3, 0
/* 8003A474 00003A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A478 00003A38  7C 08 03 A6 */	mtlr r0
/* 8003A47C 00003A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A480 00003A40  4E 80 00 20 */	blr


.global func_8003A484
func_8003A484:
/* 8003A484 00003A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A488 00003A48  7C 08 02 A6 */	mflr r0
/* 8003A48C 00003A4C  7C 83 23 78 */	mr r3, r4
/* 8003A490 00003A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A494 00003A54  48 46 70 AD */	bl func_804A1540
/* 8003A498 00003A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A49C 00003A5C  38 60 00 00 */	li r3, 0
/* 8003A4A0 00003A60  7C 08 03 A6 */	mtlr r0
/* 8003A4A4 00003A64  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A4A8 00003A68  4E 80 00 20 */	blr


.global func_8003A4AC
func_8003A4AC:
/* 8003A4AC 00003A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A4B0 00003A70  7C 08 02 A6 */	mflr r0
/* 8003A4B4 00003A74  7C 83 23 78 */	mr r3, r4
/* 8003A4B8 00003A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A4BC 00003A7C  48 46 70 FD */	bl func_804A15B8
/* 8003A4C0 00003A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A4C4 00003A84  38 60 00 00 */	li r3, 0
/* 8003A4C8 00003A88  7C 08 03 A6 */	mtlr r0
/* 8003A4CC 00003A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A4D0 00003A90  4E 80 00 20 */	blr 

.global func_8003A4D4
func_8003A4D4:
/* 8003A4D4 00003A94  3C 60 80 53 */	lis r3, lbl_80528520@ha
/* 8003A4D8 00003A98  38 63 85 20 */	addi r3, r3, lbl_80528520@l
/* 8003A4DC 00003A9C  48 46 6B A0 */	b func_804A107C

.global func_8003A4E0
func_8003A4E0:
/* 8003A4E0 00003AA0  3C 60 80 57 */	lis r3, lbl_80573CC8@ha
/* 8003A4E4 00003AA4  38 63 3C C8 */	addi r3, r3, lbl_80573CC8@l
/* 8003A4E8 00003AA8  4E 80 00 20 */	blr 

.global func_8003A4EC
func_8003A4EC:
/* 8003A4EC 00003AAC  3C 60 80 57 */	lis r3, lbl_80573D38@ha
/* 8003A4F0 00003AB0  38 63 3D 38 */	addi r3, r3, lbl_80573D38@l
/* 8003A4F4 00003AB4  4E 80 00 20 */	blr

.global sinit_8003A4F8
sinit_8003A4F8:
/* 8003A4F8 00003AB8  3C C0 80 57 */	lis r6, lbl_80573CC8@ha
/* 8003A4FC 00003ABC  3C 80 80 57 */	lis r4, lbl_80573D38@ha
/* 8003A500 00003AC0  38 A6 3C C8 */	addi r5, r6, lbl_80573CC8@l
/* 8003A504 00003AC4  38 E0 00 00 */	li r7, 0
/* 8003A508 00003AC8  38 64 3D 38 */	addi r3, r4, lbl_80573D38@l
/* 8003A50C 00003ACC  38 00 00 09 */	li r0, 9
/* 8003A510 00003AD0  90 E5 00 10 */	stw r7, 0x10(r5)
/* 8003A514 00003AD4  90 E6 3C C8 */	stw r7, lbl_80573CC8@l(r6)
/* 8003A518 00003AD8  90 E5 00 0C */	stw r7, 0xc(r5)
/* 8003A51C 00003ADC  90 E5 00 08 */	stw r7, 8(r5)
/* 8003A520 00003AE0  90 05 00 04 */	stw r0, 4(r5)
/* 8003A524 00003AE4  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8003A528 00003AE8  90 E4 3D 38 */	stw r7, lbl_80573D38@l(r4)
/* 8003A52C 00003AEC  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8003A530 00003AF0  90 E3 00 08 */	stw r7, 8(r3)
/* 8003A534 00003AF4  90 03 00 04 */	stw r0, 4(r3)
/* 8003A538 00003AF8  4E 80 00 20 */	blr


.global func_8003A53C
func_8003A53C:
/* 8003A53C 00003AFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A540 00003B00  7C 08 02 A6 */	mflr r0
/* 8003A544 00003B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A548 00003B08  38 00 00 09 */	li r0, 9
/* 8003A54C 00003B0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A550 00003B10  7C 7F 1B 78 */	mr r31, r3
/* 8003A554 00003B14  98 01 00 08 */	stb r0, 8(r1)
/* 8003A558 00003B18  B0 A1 00 0A */	sth r5, 0xa(r1)
/* 8003A55C 00003B1C  4B FF FF 85 */	bl func_8003A4E0
/* 8003A560 00003B20  90 61 00 0C */	stw r3, 0xc(r1)
/* 8003A564 00003B24  7F E3 FB 78 */	mr r3, r31
/* 8003A568 00003B28  38 81 00 08 */	addi r4, r1, 8
/* 8003A56C 00003B2C  48 46 6A 31 */	bl func_804A0F9C
/* 8003A570 00003B30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A574 00003B34  38 60 00 01 */	li r3, 1
/* 8003A578 00003B38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A57C 00003B3C  7C 08 03 A6 */	mtlr r0
/* 8003A580 00003B40  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A584 00003B44  4E 80 00 20 */	blr

.global func_8003A588
func_8003A588:
/* 8003A588 00003B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A58C 00003B4C  7C 08 02 A6 */	mflr r0
/* 8003A590 00003B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A594 00003B54  38 00 00 03 */	li r0, 3
/* 8003A598 00003B58  98 01 00 08 */	stb r0, 8(r1)
/* 8003A59C 00003B5C  80 04 00 64 */	lwz r0, 0x64(r4)
/* 8003A5A0 00003B60  38 81 00 08 */	addi r4, r1, 8
/* 8003A5A4 00003B64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A5A8 00003B68  48 46 69 F5 */	bl func_804A0F9C
/* 8003A5AC 00003B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A5B0 00003B70  38 60 00 01 */	li r3, 1
/* 8003A5B4 00003B74  7C 08 03 A6 */	mtlr r0
/* 8003A5B8 00003B78  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A5BC 00003B7C  4E 80 00 20 */	blr

.global func_8003A5C0
func_8003A5C0:
/* 8003A5C0 00003B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A5C4 00003B84  7C 08 02 A6 */	mflr r0
/* 8003A5C8 00003B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A5CC 00003B8C  38 00 00 03 */	li r0, 3
/* 8003A5D0 00003B90  98 01 00 08 */	stb r0, 8(r1)
/* 8003A5D4 00003B94  80 04 00 68 */	lwz r0, 0x68(r4)
/* 8003A5D8 00003B98  38 81 00 08 */	addi r4, r1, 8
/* 8003A5DC 00003B9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A5E0 00003BA0  48 46 69 BD */	bl func_804A0F9C
/* 8003A5E4 00003BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A5E8 00003BA8  38 60 00 01 */	li r3, 1
/* 8003A5EC 00003BAC  7C 08 03 A6 */	mtlr r0
/* 8003A5F0 00003BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A5F4 00003BB4  4E 80 00 20 */	blr

.global func_8003A5F8
func_8003A5F8:
/* 8003A5F8 00003BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A5FC 00003BBC  7C 08 02 A6 */	mflr r0
/* 8003A600 00003BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A604 00003BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A608 00003BC8  7C 9F 23 78 */	mr r31, r4
/* 8003A60C 00003BCC  48 46 6B E9 */	bl func_804A11F4
/* 8003A610 00003BD0  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A614 00003BD4  38 60 00 00 */	li r3, 0
/* 8003A618 00003BD8  90 1F 00 64 */	stw r0, 0x64(r31)
/* 8003A61C 00003BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A620 00003BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A624 00003BE4  7C 08 03 A6 */	mtlr r0
/* 8003A628 00003BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A62C 00003BEC  4E 80 00 20 */	blr

.global func_8003A630
func_8003A630:
/* 8003A630 00003BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A634 00003BF4  7C 08 02 A6 */	mflr r0
/* 8003A638 00003BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A63C 00003BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A640 00003C00  7C 9F 23 78 */	mr r31, r4
/* 8003A644 00003C04  48 46 6B B1 */	bl func_804A11F4
/* 8003A648 00003C08  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A64C 00003C0C  38 60 00 00 */	li r3, 0
/* 8003A650 00003C10  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8003A654 00003C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A658 00003C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A65C 00003C1C  7C 08 03 A6 */	mtlr r0
/* 8003A660 00003C20  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A664 00003C24  4E 80 00 20 */	blr

.global func_8003A668
func_8003A668:
/* 8003A668 00003C28  38 A0 00 00 */	li r5, 0
/* 8003A66C 00003C2C  38 00 00 09 */	li r0, 9
/* 8003A670 00003C30  90 A4 00 10 */	stw r5, 0x10(r4)
/* 8003A674 00003C34  38 60 00 00 */	li r3, 0
/* 8003A678 00003C38  90 A4 00 00 */	stw r5, 0(r4)
/* 8003A67C 00003C3C  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8003A680 00003C40  90 A4 00 08 */	stw r5, 8(r4)
/* 8003A684 00003C44  90 04 00 04 */	stw r0, 4(r4)
/* 8003A688 00003C48  4E 80 00 20 */	blr

.global func_8003A68C
func_8003A68C:
/* 8003A68C 00003C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A690 00003C50  7C 08 02 A6 */	mflr r0
/* 8003A694 00003C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A698 00003C58  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8003A69C 00003C5C  38 81 00 08 */	addi r4, r1, 8
/* 8003A6A0 00003C60  68 05 00 0A */	xori r5, r0, 0xa
/* 8003A6A4 00003C64  70 A0 00 0A */	andi. r0, r5, 0xa
/* 8003A6A8 00003C68  7C A5 0E 70 */	srawi r5, r5, 1
/* 8003A6AC 00003C6C  7C 00 28 50 */	subf r0, r0, r5
/* 8003A6B0 00003C70  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8003A6B4 00003C74  38 05 00 01 */	addi r0, r5, 1
/* 8003A6B8 00003C78  98 01 00 08 */	stb r0, 8(r1)
/* 8003A6BC 00003C7C  48 46 68 E1 */	bl func_804A0F9C
/* 8003A6C0 00003C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A6C4 00003C84  38 60 00 01 */	li r3, 1
/* 8003A6C8 00003C88  7C 08 03 A6 */	mtlr r0
/* 8003A6CC 00003C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A6D0 00003C90  4E 80 00 20 */	blr

.global func_8003A6D4
func_8003A6D4:
/* 8003A6D4 00003C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A6D8 00003C98  7C 08 02 A6 */	mflr r0
/* 8003A6DC 00003C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A6E0 00003CA0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8003A6E4 00003CA4  38 81 00 08 */	addi r4, r1, 8
/* 8003A6E8 00003CA8  7C 05 00 D0 */	neg r0, r5
/* 8003A6EC 00003CAC  7C 00 28 78 */	andc r0, r0, r5
/* 8003A6F0 00003CB0  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8003A6F4 00003CB4  38 05 00 01 */	addi r0, r5, 1
/* 8003A6F8 00003CB8  98 01 00 08 */	stb r0, 8(r1)
/* 8003A6FC 00003CBC  48 46 68 A1 */	bl func_804A0F9C
/* 8003A700 00003CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A704 00003CC4  38 60 00 01 */	li r3, 1
/* 8003A708 00003CC8  7C 08 03 A6 */	mtlr r0
/* 8003A70C 00003CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A710 00003CD0  4E 80 00 20 */	blr

.global func_8003A714
func_8003A714:
/* 8003A714 00003CD4  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8003A718 00003CD8  80 04 00 04 */	lwz r0, 4(r4)
/* 8003A71C 00003CDC  38 A3 00 01 */	addi r5, r3, 1
/* 8003A720 00003CE0  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8003A724 00003CE4  7C 05 00 00 */	cmpw r5, r0
/* 8003A728 00003CE8  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8003A72C 00003CEC  38 03 00 01 */	addi r0, r3, 1
/* 8003A730 00003CF0  90 04 00 10 */	stw r0, 0x10(r4)
/* 8003A734 00003CF4  40 81 00 0C */	ble lbl_8003A740
/* 8003A738 00003CF8  80 04 00 00 */	lwz r0, 0(r4)
/* 8003A73C 00003CFC  90 04 00 0C */	stw r0, 0xc(r4)
lbl_8003A740:
/* 8003A740 00003D00  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 8003A744 00003D04  38 60 00 00 */	li r3, 0
/* 8003A748 00003D08  80 04 00 64 */	lwz r0, 0x64(r4)
/* 8003A74C 00003D0C  54 A5 18 38 */	slwi r5, r5, 3
/* 8003A750 00003D10  7C A4 2A 14 */	add r5, r4, r5
/* 8003A754 00003D14  90 05 00 14 */	stw r0, 0x14(r5)
/* 8003A758 00003D18  80 04 00 68 */	lwz r0, 0x68(r4)
/* 8003A75C 00003D1C  90 05 00 18 */	stw r0, 0x18(r5)
/* 8003A760 00003D20  4E 80 00 20 */	blr

.global func_8003A764
func_8003A764:
/* 8003A764 00003D24  80 64 00 08 */	lwz r3, 8(r4)
/* 8003A768 00003D28  80 04 00 04 */	lwz r0, 4(r4)
/* 8003A76C 00003D2C  38 A3 00 01 */	addi r5, r3, 1
/* 8003A770 00003D30  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8003A774 00003D34  7C 05 00 00 */	cmpw r5, r0
/* 8003A778 00003D38  90 A4 00 08 */	stw r5, 8(r4)
/* 8003A77C 00003D3C  38 03 FF FF */	addi r0, r3, -1
/* 8003A780 00003D40  90 04 00 10 */	stw r0, 0x10(r4)
/* 8003A784 00003D44  40 81 00 0C */	ble lbl_8003A790
/* 8003A788 00003D48  80 04 00 00 */	lwz r0, 0(r4)
/* 8003A78C 00003D4C  90 04 00 08 */	stw r0, 8(r4)
lbl_8003A790:
/* 8003A790 00003D50  80 04 00 08 */	lwz r0, 8(r4)
/* 8003A794 00003D54  38 60 00 00 */	li r3, 0
/* 8003A798 00003D58  54 00 18 38 */	slwi r0, r0, 3
/* 8003A79C 00003D5C  7C A4 02 14 */	add r5, r4, r0
/* 8003A7A0 00003D60  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8003A7A4 00003D64  90 04 00 64 */	stw r0, 0x64(r4)
/* 8003A7A8 00003D68  80 05 00 18 */	lwz r0, 0x18(r5)
/* 8003A7AC 00003D6C  90 04 00 68 */	stw r0, 0x68(r4)
/* 8003A7B0 00003D70  4E 80 00 20 */	blr

.global func_8003A7B4
func_8003A7B4:
/* 8003A7B4 00003D74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A7B8 00003D78  7C 08 02 A6 */	mflr r0
/* 8003A7BC 00003D7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A7C0 00003D80  38 00 00 09 */	li r0, 9
/* 8003A7C4 00003D84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A7C8 00003D88  7C 7F 1B 78 */	mr r31, r3
/* 8003A7CC 00003D8C  98 01 00 08 */	stb r0, 8(r1)
/* 8003A7D0 00003D90  B0 A1 00 0A */	sth r5, 0xa(r1)
/* 8003A7D4 00003D94  4B FF FD 19 */	bl func_8003A4EC
/* 8003A7D8 00003D98  90 61 00 0C */	stw r3, 0xc(r1)
/* 8003A7DC 00003D9C  7F E3 FB 78 */	mr r3, r31
/* 8003A7E0 00003DA0  38 81 00 08 */	addi r4, r1, 8
/* 8003A7E4 00003DA4  48 46 67 B9 */	bl func_804A0F9C
/* 8003A7E8 00003DA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A7EC 00003DAC  38 60 00 01 */	li r3, 1
/* 8003A7F0 00003DB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A7F4 00003DB4  7C 08 03 A6 */	mtlr r0
/* 8003A7F8 00003DB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A7FC 00003DBC  4E 80 00 20 */	blr

.global func_8003A800
func_8003A800:
/* 8003A800 00003DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A804 00003DC4  7C 08 02 A6 */	mflr r0
/* 8003A808 00003DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A80C 00003DCC  38 00 00 03 */	li r0, 3
/* 8003A810 00003DD0  98 01 00 08 */	stb r0, 8(r1)
/* 8003A814 00003DD4  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 8003A818 00003DD8  38 81 00 08 */	addi r4, r1, 8
/* 8003A81C 00003DDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A820 00003DE0  48 46 67 7D */	bl func_804A0F9C
/* 8003A824 00003DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A828 00003DE8  38 60 00 01 */	li r3, 1
/* 8003A82C 00003DEC  7C 08 03 A6 */	mtlr r0
/* 8003A830 00003DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A834 00003DF4  4E 80 00 20 */	blr

.global func_8003A838
func_8003A838:
/* 8003A838 00003DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A83C 00003DFC  7C 08 02 A6 */	mflr r0
/* 8003A840 00003E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A844 00003E04  38 00 00 03 */	li r0, 3
/* 8003A848 00003E08  98 01 00 08 */	stb r0, 8(r1)
/* 8003A84C 00003E0C  80 04 00 90 */	lwz r0, 0x90(r4)
/* 8003A850 00003E10  38 81 00 08 */	addi r4, r1, 8
/* 8003A854 00003E14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A858 00003E18  48 46 67 45 */	bl func_804A0F9C
/* 8003A85C 00003E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A860 00003E20  38 60 00 01 */	li r3, 1
/* 8003A864 00003E24  7C 08 03 A6 */	mtlr r0
/* 8003A868 00003E28  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A86C 00003E2C  4E 80 00 20 */	blr

.global func_8003A870
func_8003A870:
/* 8003A870 00003E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A874 00003E34  7C 08 02 A6 */	mflr r0
/* 8003A878 00003E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A87C 00003E3C  38 00 00 03 */	li r0, 3
/* 8003A880 00003E40  98 01 00 08 */	stb r0, 8(r1)
/* 8003A884 00003E44  80 04 00 94 */	lwz r0, 0x94(r4)
/* 8003A888 00003E48  38 81 00 08 */	addi r4, r1, 8
/* 8003A88C 00003E4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A890 00003E50  48 46 67 0D */	bl func_804A0F9C
/* 8003A894 00003E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A898 00003E58  38 60 00 01 */	li r3, 1
/* 8003A89C 00003E5C  7C 08 03 A6 */	mtlr r0
/* 8003A8A0 00003E60  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A8A4 00003E64  4E 80 00 20 */	blr

.global func_8003A8A8
func_8003A8A8:
/* 8003A8A8 00003E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A8AC 00003E6C  7C 08 02 A6 */	mflr r0
/* 8003A8B0 00003E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A8B4 00003E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A8B8 00003E78  7C 9F 23 78 */	mr r31, r4
/* 8003A8BC 00003E7C  48 46 69 39 */	bl func_804A11F4
/* 8003A8C0 00003E80  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A8C4 00003E84  38 60 00 00 */	li r3, 0
/* 8003A8C8 00003E88  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 8003A8CC 00003E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A8D0 00003E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A8D4 00003E94  7C 08 03 A6 */	mtlr r0
/* 8003A8D8 00003E98  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A8DC 00003E9C  4E 80 00 20 */	blr

.global func_8003A8E0
func_8003A8E0:
/* 8003A8E0 00003EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A8E4 00003EA4  7C 08 02 A6 */	mflr r0
/* 8003A8E8 00003EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A8EC 00003EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A8F0 00003EB0  7C 9F 23 78 */	mr r31, r4
/* 8003A8F4 00003EB4  48 46 69 01 */	bl func_804A11F4
/* 8003A8F8 00003EB8  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A8FC 00003EBC  38 60 00 00 */	li r3, 0
/* 8003A900 00003EC0  90 1F 00 90 */	stw r0, 0x90(r31)
/* 8003A904 00003EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A908 00003EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A90C 00003ECC  7C 08 03 A6 */	mtlr r0
/* 8003A910 00003ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A914 00003ED4  4E 80 00 20 */	blr

.global func_8003A918
func_8003A918:
/* 8003A918 00003ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A91C 00003EDC  7C 08 02 A6 */	mflr r0
/* 8003A920 00003EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A924 00003EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A928 00003EE8  7C 9F 23 78 */	mr r31, r4
/* 8003A92C 00003EEC  48 46 68 C9 */	bl func_804A11F4
/* 8003A930 00003EF0  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A934 00003EF4  38 60 00 00 */	li r3, 0
/* 8003A938 00003EF8  90 1F 00 94 */	stw r0, 0x94(r31)
/* 8003A93C 00003EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A940 00003F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A944 00003F04  7C 08 03 A6 */	mtlr r0
/* 8003A948 00003F08  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A94C 00003F0C  4E 80 00 20 */	blr

.global func_8003A950
func_8003A950:
/* 8003A950 00003F10  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8003A954 00003F14  80 04 00 04 */	lwz r0, 4(r4)
/* 8003A958 00003F18  38 A3 00 01 */	addi r5, r3, 1
/* 8003A95C 00003F1C  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8003A960 00003F20  7C 05 00 00 */	cmpw r5, r0
/* 8003A964 00003F24  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8003A968 00003F28  38 03 00 01 */	addi r0, r3, 1
/* 8003A96C 00003F2C  90 04 00 10 */	stw r0, 0x10(r4)
/* 8003A970 00003F30  40 81 00 0C */	ble lbl_8003A97C
/* 8003A974 00003F34  80 04 00 00 */	lwz r0, 0(r4)
/* 8003A978 00003F38  90 04 00 0C */	stw r0, 0xc(r4)
lbl_8003A97C:
/* 8003A97C 00003F3C  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 8003A980 00003F40  38 60 00 00 */	li r3, 0
/* 8003A984 00003F44  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 8003A988 00003F48  1C A5 00 0C */	mulli r5, r5, 0xc
/* 8003A98C 00003F4C  7C A4 2A 14 */	add r5, r4, r5
/* 8003A990 00003F50  90 05 00 14 */	stw r0, 0x14(r5)
/* 8003A994 00003F54  80 04 00 90 */	lwz r0, 0x90(r4)
/* 8003A998 00003F58  90 05 00 18 */	stw r0, 0x18(r5)
/* 8003A99C 00003F5C  80 04 00 94 */	lwz r0, 0x94(r4)
/* 8003A9A0 00003F60  90 05 00 1C */	stw r0, 0x1c(r5)
/* 8003A9A4 00003F64  4E 80 00 20 */	blr

.global func_8003A9A8
func_8003A9A8:
/* 8003A9A8 00003F68  80 64 00 08 */	lwz r3, 8(r4)
/* 8003A9AC 00003F6C  80 04 00 04 */	lwz r0, 4(r4)
/* 8003A9B0 00003F70  38 A3 00 01 */	addi r5, r3, 1
/* 8003A9B4 00003F74  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8003A9B8 00003F78  7C 05 00 00 */	cmpw r5, r0
/* 8003A9BC 00003F7C  90 A4 00 08 */	stw r5, 8(r4)
/* 8003A9C0 00003F80  38 03 FF FF */	addi r0, r3, -1
/* 8003A9C4 00003F84  90 04 00 10 */	stw r0, 0x10(r4)
/* 8003A9C8 00003F88  40 81 00 0C */	ble lbl_8003A9D4
/* 8003A9CC 00003F8C  80 04 00 00 */	lwz r0, 0(r4)
/* 8003A9D0 00003F90  90 04 00 08 */	stw r0, 8(r4)
lbl_8003A9D4:
/* 8003A9D4 00003F94  80 04 00 08 */	lwz r0, 8(r4)
/* 8003A9D8 00003F98  38 60 00 00 */	li r3, 0
/* 8003A9DC 00003F9C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8003A9E0 00003FA0  7C A4 02 14 */	add r5, r4, r0
/* 8003A9E4 00003FA4  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8003A9E8 00003FA8  90 04 00 8C */	stw r0, 0x8c(r4)
/* 8003A9EC 00003FAC  80 05 00 18 */	lwz r0, 0x18(r5)
/* 8003A9F0 00003FB0  90 04 00 90 */	stw r0, 0x90(r4)
/* 8003A9F4 00003FB4  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 8003A9F8 00003FB8  90 04 00 94 */	stw r0, 0x94(r4)
/* 8003A9FC 00003FBC  4E 80 00 20 */	blr 
