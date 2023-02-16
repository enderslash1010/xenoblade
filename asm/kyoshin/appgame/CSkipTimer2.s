.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_8029F0A8, global
/* 8029F0A8 00268668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F0AC 0026866C  7C 08 02 A6 */	mflr r0
/* 8029F0B0 00268670  3C A0 80 54 */	lis r5, __vt__CSkipTimer2@ha
/* 8029F0B4 00268674  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F0B8 00268678  38 A5 D0 14 */	addi r5, r5, __vt__CSkipTimer2@l
/* 8029F0BC 0026867C  BF C1 00 08 */	stmw r30, 8(r1)
/* 8029F0C0 00268680  7C 7E 1B 78 */	mr r30, r3
/* 8029F0C4 00268684  7C 9F 23 78 */	mr r31, r4
/* 8029F0C8 00268688  90 A3 00 00 */	stw r5, 0(r3)
/* 8029F0CC 0026868C  38 63 00 04 */	addi r3, r3, 4
/* 8029F0D0 00268690  48 1C 04 95 */	bl __ct__8045F564
/* 8029F0D4 00268694  38 80 00 00 */	li r4, 0
/* 8029F0D8 00268698  38 00 00 01 */	li r0, 1
/* 8029F0DC 0026869C  93 FE 00 14 */	stw r31, 0x14(r30)
/* 8029F0E0 002686A0  7F C3 F3 78 */	mr r3, r30
/* 8029F0E4 002686A4  90 9E 00 18 */	stw r4, 0x18(r30)
/* 8029F0E8 002686A8  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8029F0EC 002686AC  98 9E 00 20 */	stb r4, 0x20(r30)
/* 8029F0F0 002686B0  98 9E 00 21 */	stb r4, 0x21(r30)
/* 8029F0F4 002686B4  98 9E 00 22 */	stb r4, 0x22(r30)
/* 8029F0F8 002686B8  98 1E 00 23 */	stb r0, 0x23(r30)
/* 8029F0FC 002686BC  98 9E 00 24 */	stb r4, 0x24(r30)
/* 8029F100 002686C0  BB C1 00 08 */	lmw r30, 8(r1)
/* 8029F104 002686C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F108 002686C8  7C 08 03 A6 */	mtlr r0
/* 8029F10C 002686CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F110 002686D0  4E 80 00 20 */	blr 
.endfn func_8029F0A8

.fn __dt__CSkipTimer2, global
/* 8029F114 002686D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F118 002686D8  7C 08 02 A6 */	mflr r0
/* 8029F11C 002686DC  2C 03 00 00 */	cmpwi r3, 0
/* 8029F120 002686E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F124 002686E4  BF C1 00 08 */	stmw r30, 8(r1)
/* 8029F128 002686E8  7C 7E 1B 78 */	mr r30, r3
/* 8029F12C 002686EC  7C 9F 23 78 */	mr r31, r4
/* 8029F130 002686F0  41 82 00 20 */	beq .L_8029F150
/* 8029F134 002686F4  38 80 FF FF */	li r4, -1
/* 8029F138 002686F8  38 63 00 04 */	addi r3, r3, 4
/* 8029F13C 002686FC  48 1C 04 45 */	bl __dt__8045F580
/* 8029F140 00268700  2C 1F 00 00 */	cmpwi r31, 0
/* 8029F144 00268704  40 81 00 0C */	ble .L_8029F150
/* 8029F148 00268708  7F C3 F3 78 */	mr r3, r30
/* 8029F14C 0026870C  48 19 5A E1 */	bl __dl__FPv
.L_8029F150:
/* 8029F150 00268710  7F C3 F3 78 */	mr r3, r30
/* 8029F154 00268714  BB C1 00 08 */	lmw r30, 8(r1)
/* 8029F158 00268718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F15C 0026871C  7C 08 03 A6 */	mtlr r0
/* 8029F160 00268720  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F164 00268724  4E 80 00 20 */	blr 
.endfn __dt__CSkipTimer2

.fn func_8029F168, global
/* 8029F168 00268728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029F16C 0026872C  7C 08 02 A6 */	mflr r0
/* 8029F170 00268730  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029F174 00268734  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 8029F178 00268738  7C 7E 1B 78 */	mr r30, r3
/* 8029F17C 0026873C  48 19 52 25 */	bl func_804343A0
/* 8029F180 00268740  3F E0 80 51 */	lis r31, CSkipTimer_strpool@ha
/* 8029F184 00268744  7C 64 1B 78 */	mr r4, r3
/* 8029F188 00268748  38 7E 00 04 */	addi r3, r30, 4
/* 8029F18C 0026874C  3C A0 00 01 */	lis r5, 1
/* 8029F190 00268750  38 DF BB 58 */	addi r6, r31, CSkipTimer_strpool@l
/* 8029F194 00268754  38 E0 00 00 */	li r7, 0
/* 8029F198 00268758  48 1C 04 E9 */	bl func_8045F680
/* 8029F19C 0026875C  38 61 00 08 */	addi r3, r1, 8
/* 8029F1A0 00268760  38 9E 00 04 */	addi r4, r30, 4
/* 8029F1A4 00268764  48 1C 06 B5 */	bl func_8045F858
/* 8029F1A8 00268768  3B FF BB 58 */	addi r31, r31, CSkipTimer_strpool@l
/* 8029F1AC 0026876C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8029F1B0 00268770  38 7E 00 18 */	addi r3, r30, 0x18
/* 8029F1B4 00268774  38 BF 00 0C */	addi r5, r31, 0xc
/* 8029F1B8 00268778  4B E9 7C CD */	bl func_80136E84
/* 8029F1BC 0026877C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8029F1C0 00268780  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8029F1C4 00268784  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8029F1C8 00268788  38 DF 00 25 */	addi r6, r31, 0x25
/* 8029F1CC 0026878C  4B E9 7D 3D */	bl func_80136F08
/* 8029F1D0 00268790  7F C3 F3 78 */	mr r3, r30
/* 8029F1D4 00268794  48 00 05 D1 */	bl func_8029F7A4
/* 8029F1D8 00268798  4B E9 64 01 */	bl func_801355D8
/* 8029F1DC 0026879C  7C 65 1B 78 */	mr r5, r3
/* 8029F1E0 002687A0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8029F1E4 002687A4  38 9F 00 41 */	addi r4, r31, 0x41
/* 8029F1E8 002687A8  4B E9 76 D9 */	bl func_801368C0
/* 8029F1EC 002687AC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8029F1F0 002687B0  38 9F 00 41 */	addi r4, r31, 0x41
/* 8029F1F4 002687B4  38 A0 00 01 */	li r5, 1
/* 8029F1F8 002687B8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F1FC 002687BC  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F200 002687C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F204 002687C4  7D 89 03 A6 */	mtctr r12
/* 8029F208 002687C8  4E 80 04 21 */	bctrl 
/* 8029F20C 002687CC  38 80 00 00 */	li r4, 0
/* 8029F210 002687D0  4B E8 50 61 */	bl func_80124270
/* 8029F214 002687D4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8029F218 002687D8  38 9F 00 4A */	addi r4, r31, 0x4a
/* 8029F21C 002687DC  38 A0 00 01 */	li r5, 1
/* 8029F220 002687E0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F224 002687E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F228 002687E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F22C 002687EC  7D 89 03 A6 */	mtctr r12
/* 8029F230 002687F0  4E 80 04 21 */	bctrl 
/* 8029F234 002687F4  38 80 00 00 */	li r4, 0
/* 8029F238 002687F8  4B E8 50 39 */	bl func_80124270
/* 8029F23C 002687FC  7F C3 F3 78 */	mr r3, r30
/* 8029F240 00268800  48 00 05 49 */	bl func_8029F788
/* 8029F244 00268804  38 7E 00 04 */	addi r3, r30, 4
/* 8029F248 00268808  48 1C 05 C9 */	bl func_8045F810
/* 8029F24C 0026880C  38 61 00 08 */	addi r3, r1, 8
/* 8029F250 00268810  38 80 FF FF */	li r4, -1
/* 8029F254 00268814  48 1C 06 75 */	bl __dt__8045F8C8
/* 8029F258 00268818  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 8029F25C 0026881C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029F260 00268820  7C 08 03 A6 */	mtlr r0
/* 8029F264 00268824  38 21 00 20 */	addi r1, r1, 0x20
/* 8029F268 00268828  4E 80 00 20 */	blr 
.endfn func_8029F168

.fn func_8029F26C, global
/* 8029F26C 0026882C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F270 00268830  7C 08 02 A6 */	mflr r0
/* 8029F274 00268834  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F278 00268838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029F27C 0026883C  7C 7F 1B 78 */	mr r31, r3
/* 8029F280 00268840  88 03 00 20 */	lbz r0, 0x20(r3)
/* 8029F284 00268844  2C 00 00 00 */	cmpwi r0, 0
/* 8029F288 00268848  41 82 00 60 */	beq .L_8029F2E8
/* 8029F28C 0026884C  88 03 00 21 */	lbz r0, 0x21(r3)
/* 8029F290 00268850  2C 00 00 01 */	cmpwi r0, 1
/* 8029F294 00268854  41 82 00 20 */	beq .L_8029F2B4
/* 8029F298 00268858  2C 00 00 03 */	cmpwi r0, 3
/* 8029F29C 0026885C  41 82 00 20 */	beq .L_8029F2BC
/* 8029F2A0 00268860  2C 00 00 04 */	cmpwi r0, 4
/* 8029F2A4 00268864  41 82 00 20 */	beq .L_8029F2C4
/* 8029F2A8 00268868  2C 00 00 05 */	cmpwi r0, 5
/* 8029F2AC 0026886C  41 82 00 20 */	beq .L_8029F2CC
/* 8029F2B0 00268870  48 00 00 20 */	b .L_8029F2D0
.L_8029F2B4:
/* 8029F2B4 00268874  48 00 02 51 */	bl func_8029F504
/* 8029F2B8 00268878  48 00 00 18 */	b .L_8029F2D0
.L_8029F2BC:
/* 8029F2BC 0026887C  48 00 03 11 */	bl func_8029F5CC
/* 8029F2C0 00268880  48 00 00 10 */	b .L_8029F2D0
.L_8029F2C4:
/* 8029F2C4 00268884  48 00 04 29 */	bl func_8029F6EC
/* 8029F2C8 00268888  48 00 00 08 */	b .L_8029F2D0
.L_8029F2CC:
/* 8029F2CC 0026888C  48 00 04 71 */	bl func_8029F73C
.L_8029F2D0:
/* 8029F2D0 00268890  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029F2D4 00268894  38 80 00 00 */	li r4, 0
/* 8029F2D8 00268898  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F2DC 0026889C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8029F2E0 002688A0  7D 89 03 A6 */	mtctr r12
/* 8029F2E4 002688A4  4E 80 04 21 */	bctrl 
.L_8029F2E8:
/* 8029F2E8 002688A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F2EC 002688AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029F2F0 002688B0  7C 08 03 A6 */	mtlr r0
/* 8029F2F4 002688B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F2F8 002688B8  4E 80 00 20 */	blr 
.endfn func_8029F26C

.fn func_8029F2FC, global
/* 8029F2FC 002688BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F300 002688C0  7C 08 02 A6 */	mflr r0
/* 8029F304 002688C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F308 002688C8  38 00 00 00 */	li r0, 0
/* 8029F30C 002688CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029F310 002688D0  7C 7F 1B 78 */	mr r31, r3
/* 8029F314 002688D4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8029F318 002688D8  98 03 00 20 */	stb r0, 0x20(r3)
/* 8029F31C 002688DC  2C 04 00 00 */	cmpwi r4, 0
/* 8029F320 002688E0  41 82 00 28 */	beq .L_8029F348
/* 8029F324 002688E4  41 82 00 1C */	beq .L_8029F340
/* 8029F328 002688E8  7C 83 23 78 */	mr r3, r4
/* 8029F32C 002688EC  38 80 00 01 */	li r4, 1
/* 8029F330 002688F0  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F334 002688F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8029F338 002688F8  7D 89 03 A6 */	mtctr r12
/* 8029F33C 002688FC  4E 80 04 21 */	bctrl 
.L_8029F340:
/* 8029F340 00268900  38 00 00 00 */	li r0, 0
/* 8029F344 00268904  90 1F 00 18 */	stw r0, 0x18(r31)
.L_8029F348:
/* 8029F348 00268908  38 7F 00 04 */	addi r3, r31, 4
/* 8029F34C 0026890C  48 1C 04 2D */	bl func_8045F778
/* 8029F350 00268910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F354 00268914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029F358 00268918  7C 08 03 A6 */	mtlr r0
/* 8029F35C 0026891C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F360 00268920  4E 80 00 20 */	blr 
.endfn func_8029F2FC

.fn func_8029F364, global
/* 8029F364 00268924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F368 00268928  7C 08 02 A6 */	mflr r0
/* 8029F36C 0026892C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F370 00268930  BF C1 00 08 */	stmw r30, 8(r1)
/* 8029F374 00268934  7C 7E 1B 78 */	mr r30, r3
/* 8029F378 00268938  88 03 00 21 */	lbz r0, 0x21(r3)
/* 8029F37C 0026893C  2C 00 00 00 */	cmpwi r0, 0
/* 8029F380 00268940  40 82 00 7C */	bne .L_8029F3FC
/* 8029F384 00268944  38 A0 00 01 */	li r5, 1
/* 8029F388 00268948  38 00 00 00 */	li r0, 0
/* 8029F38C 0026894C  98 A3 00 21 */	stb r5, 0x21(r3)
/* 8029F390 00268950  3F E0 80 51 */	lis r31, CSkipTimer_strpool@ha
/* 8029F394 00268954  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 8029F398 00268958  3B FF BB 58 */	addi r31, r31, CSkipTimer_strpool@l
/* 8029F39C 0026895C  98 83 00 24 */	stb r4, 0x24(r3)
/* 8029F3A0 00268960  38 9F 00 41 */	addi r4, r31, 0x41
/* 8029F3A4 00268964  38 A0 00 01 */	li r5, 1
/* 8029F3A8 00268968  98 03 00 23 */	stb r0, 0x23(r3)
/* 8029F3AC 0026896C  80 66 00 10 */	lwz r3, 0x10(r6)
/* 8029F3B0 00268970  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F3B4 00268974  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F3B8 00268978  7D 89 03 A6 */	mtctr r12
/* 8029F3BC 0026897C  4E 80 04 21 */	bctrl 
/* 8029F3C0 00268980  38 80 00 01 */	li r4, 1
/* 8029F3C4 00268984  4B E8 4E AD */	bl func_80124270
/* 8029F3C8 00268988  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8029F3CC 0026898C  38 9F 00 4A */	addi r4, r31, 0x4a
/* 8029F3D0 00268990  38 A0 00 01 */	li r5, 1
/* 8029F3D4 00268994  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F3D8 00268998  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F3DC 0026899C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F3E0 002689A0  7D 89 03 A6 */	mtctr r12
/* 8029F3E4 002689A4  4E 80 04 21 */	bctrl 
/* 8029F3E8 002689A8  38 80 00 01 */	li r4, 1
/* 8029F3EC 002689AC  4B E8 4E 85 */	bl func_80124270
/* 8029F3F0 002689B0  88 9E 00 24 */	lbz r4, 0x24(r30)
/* 8029F3F4 002689B4  7F C3 F3 78 */	mr r3, r30
/* 8029F3F8 002689B8  48 00 04 35 */	bl func_8029F82C
.L_8029F3FC:
/* 8029F3FC 002689BC  BB C1 00 08 */	lmw r30, 8(r1)
/* 8029F400 002689C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F404 002689C4  7C 08 03 A6 */	mtlr r0
/* 8029F408 002689C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F40C 002689CC  4E 80 00 20 */	blr 
.endfn func_8029F364

.fn func_8029F410, global
/* 8029F410 002689D0  88 03 00 21 */	lbz r0, 0x21(r3)
/* 8029F414 002689D4  28 00 00 02 */	cmplwi r0, 2
/* 8029F418 002689D8  4C 82 00 20 */	bnelr 
/* 8029F41C 002689DC  88 03 00 24 */	lbz r0, 0x24(r3)
/* 8029F420 002689E0  7C 04 00 40 */	cmplw r4, r0
/* 8029F424 002689E4  4D 82 00 20 */	beqlr 
/* 8029F428 002689E8  38 A0 00 04 */	li r5, 4
/* 8029F42C 002689EC  38 00 00 00 */	li r0, 0
/* 8029F430 002689F0  98 A3 00 21 */	stb r5, 0x21(r3)
/* 8029F434 002689F4  98 03 00 23 */	stb r0, 0x23(r3)
/* 8029F438 002689F8  98 83 00 24 */	stb r4, 0x24(r3)
/* 8029F43C 002689FC  4E 80 00 20 */	blr 
.endfn func_8029F410

.fn func_8029F440, global
/* 8029F440 00268A00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8029F444 00268A04  7C 08 02 A6 */	mflr r0
/* 8029F448 00268A08  7C A6 2B 78 */	mr r6, r5
/* 8029F44C 00268A0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8029F450 00268A10  BF A1 00 34 */	stmw r29, 0x34(r1)
/* 8029F454 00268A14  7C 9E 23 78 */	mr r30, r4
/* 8029F458 00268A18  3C 80 80 51 */	lis r4, CSkipTimer_strpool@ha
/* 8029F45C 00268A1C  7C 7D 1B 78 */	mr r29, r3
/* 8029F460 00268A20  2C 1E 00 0C */	cmpwi r30, 0xc
/* 8029F464 00268A24  7F C5 F3 78 */	mr r5, r30
/* 8029F468 00268A28  38 84 BB 58 */	addi r4, r4, CSkipTimer_strpool@l
/* 8029F46C 00268A2C  38 61 00 08 */	addi r3, r1, 8
/* 8029F470 00268A30  38 84 00 52 */	addi r4, r4, 0x52
/* 8029F474 00268A34  41 80 00 08 */	blt .L_8029F47C
/* 8029F478 00268A38  38 BE FF F4 */	addi r5, r30, -12
.L_8029F47C:
/* 8029F47C 00268A3C  4C C6 31 82 */	crclr 6
/* 8029F480 00268A40  48 02 1B B9 */	bl sprintf
/* 8029F484 00268A44  3F E0 80 51 */	lis r31, CSkipTimer_strpool@ha
/* 8029F488 00268A48  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F48C 00268A4C  3B FF BB 58 */	addi r31, r31, CSkipTimer_strpool@l
/* 8029F490 00268A50  38 A1 00 08 */	addi r5, r1, 8
/* 8029F494 00268A54  38 9F 00 41 */	addi r4, r31, 0x41
/* 8029F498 00268A58  38 C0 00 00 */	li r6, 0
/* 8029F49C 00268A5C  4B E9 75 81 */	bl func_80136A1C
/* 8029F4A0 00268A60  2C 1E 00 0C */	cmpwi r30, 0xc
/* 8029F4A4 00268A64  3C 80 74 69 */	lis r4, 0x74696D67@ha
/* 8029F4A8 00268A68  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8029F4AC 00268A6C  38 84 6D 67 */	addi r4, r4, 0x74696D67@l
/* 8029F4B0 00268A70  38 BF 00 6C */	addi r5, r31, 0x6c
/* 8029F4B4 00268A74  41 80 00 08 */	blt .L_8029F4BC
/* 8029F4B8 00268A78  38 BF 00 5A */	addi r5, r31, 0x5a
.L_8029F4BC:
/* 8029F4BC 00268A7C  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F4C0 00268A80  38 C0 00 00 */	li r6, 0
/* 8029F4C4 00268A84  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8029F4C8 00268A88  7D 89 03 A6 */	mtctr r12
/* 8029F4CC 00268A8C  4E 80 04 21 */	bctrl 
/* 8029F4D0 00268A90  2C 03 00 00 */	cmpwi r3, 0
/* 8029F4D4 00268A94  7C 65 1B 78 */	mr r5, r3
/* 8029F4D8 00268A98  41 82 00 18 */	beq .L_8029F4F0
/* 8029F4DC 00268A9C  3C 80 80 51 */	lis r4, CSkipTimer_strpool@ha
/* 8029F4E0 00268AA0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F4E4 00268AA4  38 84 BB 58 */	addi r4, r4, CSkipTimer_strpool@l
/* 8029F4E8 00268AA8  38 84 00 4A */	addi r4, r4, 0x4a
/* 8029F4EC 00268AAC  4B E9 89 91 */	bl func_80137E7C
.L_8029F4F0:
/* 8029F4F0 00268AB0  BB A1 00 34 */	lmw r29, 0x34(r1)
/* 8029F4F4 00268AB4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8029F4F8 00268AB8  7C 08 03 A6 */	mtlr r0
/* 8029F4FC 00268ABC  38 21 00 40 */	addi r1, r1, 0x40
/* 8029F500 00268AC0  4E 80 00 20 */	blr 
.endfn func_8029F440

.fn func_8029F504, global
/* 8029F504 00268AC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029F508 00268AC8  7C 08 02 A6 */	mflr r0
/* 8029F50C 00268ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029F510 00268AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 8029F514 00268AD4  48 01 AC 49 */	bl _savegpr_29
/* 8029F518 00268AD8  7C 7D 1B 78 */	mr r29, r3
/* 8029F51C 00268ADC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8029F520 00268AE0  C0 22 B1 58 */	lfs f1, float_8066B4D8@sda21(r2)
/* 8029F524 00268AE4  4B E9 7F 21 */	bl func_80137444
/* 8029F528 00268AE8  2C 03 00 00 */	cmpwi r3, 0
/* 8029F52C 00268AEC  41 82 00 14 */	beq .L_8029F540
/* 8029F530 00268AF0  38 60 00 02 */	li r3, 2
/* 8029F534 00268AF4  38 00 00 01 */	li r0, 1
/* 8029F538 00268AF8  98 7D 00 21 */	stb r3, 0x21(r29)
/* 8029F53C 00268AFC  98 1D 00 23 */	stb r0, 0x23(r29)
.L_8029F540:
/* 8029F540 00268B00  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F544 00268B04  3F C0 80 51 */	lis r30, CSkipTimer_strpool@ha
/* 8029F548 00268B08  3B DE BB 58 */	addi r30, r30, CSkipTimer_strpool@l
/* 8029F54C 00268B0C  38 A0 00 01 */	li r5, 1
/* 8029F550 00268B10  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F554 00268B14  38 9E 00 7E */	addi r4, r30, 0x7e
/* 8029F558 00268B18  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F55C 00268B1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F560 00268B20  7D 89 03 A6 */	mtctr r12
/* 8029F564 00268B24  4E 80 04 21 */	bctrl 
/* 8029F568 00268B28  80 DD 00 18 */	lwz r6, 0x18(r29)
/* 8029F56C 00268B2C  38 9E 00 41 */	addi r4, r30, 0x41
/* 8029F570 00268B30  8B E3 00 B8 */	lbz r31, 0xb8(r3)
/* 8029F574 00268B34  38 A0 00 01 */	li r5, 1
/* 8029F578 00268B38  80 66 00 10 */	lwz r3, 0x10(r6)
/* 8029F57C 00268B3C  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F580 00268B40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F584 00268B44  7D 89 03 A6 */	mtctr r12
/* 8029F588 00268B48  4E 80 04 21 */	bctrl 
/* 8029F58C 00268B4C  9B E3 00 B8 */	stb r31, 0xb8(r3)
/* 8029F590 00268B50  38 9E 00 4A */	addi r4, r30, 0x4a
/* 8029F594 00268B54  38 A0 00 01 */	li r5, 1
/* 8029F598 00268B58  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F59C 00268B5C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F5A0 00268B60  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F5A4 00268B64  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F5A8 00268B68  7D 89 03 A6 */	mtctr r12
/* 8029F5AC 00268B6C  4E 80 04 21 */	bctrl 
/* 8029F5B0 00268B70  9B E3 00 B8 */	stb r31, 0xb8(r3)
/* 8029F5B4 00268B74  39 61 00 20 */	addi r11, r1, 0x20
/* 8029F5B8 00268B78  48 01 AB F1 */	bl _restgpr_29
/* 8029F5BC 00268B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029F5C0 00268B80  7C 08 03 A6 */	mtlr r0
/* 8029F5C4 00268B84  38 21 00 20 */	addi r1, r1, 0x20
/* 8029F5C8 00268B88  4E 80 00 20 */	blr 
.endfn func_8029F504

.fn func_8029F5CC, global
/* 8029F5CC 00268B8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029F5D0 00268B90  7C 08 02 A6 */	mflr r0
/* 8029F5D4 00268B94  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029F5D8 00268B98  39 61 00 20 */	addi r11, r1, 0x20
/* 8029F5DC 00268B9C  48 01 AB 81 */	bl _savegpr_29
/* 8029F5E0 00268BA0  7C 7D 1B 78 */	mr r29, r3
/* 8029F5E4 00268BA4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8029F5E8 00268BA8  C0 22 B1 58 */	lfs f1, float_8066B4D8@sda21(r2)
/* 8029F5EC 00268BAC  4B E9 7F 25 */	bl func_80137510
/* 8029F5F0 00268BB0  2C 03 00 00 */	cmpwi r3, 0
/* 8029F5F4 00268BB4  41 82 00 6C */	beq .L_8029F660
/* 8029F5F8 00268BB8  38 60 00 00 */	li r3, 0
/* 8029F5FC 00268BBC  38 00 00 01 */	li r0, 1
/* 8029F600 00268BC0  98 7D 00 21 */	stb r3, 0x21(r29)
/* 8029F604 00268BC4  3F C0 80 51 */	lis r30, CSkipTimer_strpool@ha
/* 8029F608 00268BC8  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F60C 00268BCC  3B DE BB 58 */	addi r30, r30, CSkipTimer_strpool@l
/* 8029F610 00268BD0  98 1D 00 23 */	stb r0, 0x23(r29)
/* 8029F614 00268BD4  38 9E 00 41 */	addi r4, r30, 0x41
/* 8029F618 00268BD8  38 A0 00 01 */	li r5, 1
/* 8029F61C 00268BDC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F620 00268BE0  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F624 00268BE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F628 00268BE8  7D 89 03 A6 */	mtctr r12
/* 8029F62C 00268BEC  4E 80 04 21 */	bctrl 
/* 8029F630 00268BF0  38 80 00 00 */	li r4, 0
/* 8029F634 00268BF4  4B E8 4C 3D */	bl func_80124270
/* 8029F638 00268BF8  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F63C 00268BFC  38 9E 00 4A */	addi r4, r30, 0x4a
/* 8029F640 00268C00  38 A0 00 01 */	li r5, 1
/* 8029F644 00268C04  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F648 00268C08  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F64C 00268C0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F650 00268C10  7D 89 03 A6 */	mtctr r12
/* 8029F654 00268C14  4E 80 04 21 */	bctrl 
/* 8029F658 00268C18  38 80 00 00 */	li r4, 0
/* 8029F65C 00268C1C  4B E8 4C 15 */	bl func_80124270
.L_8029F660:
/* 8029F660 00268C20  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F664 00268C24  3F C0 80 51 */	lis r30, CSkipTimer_strpool@ha
/* 8029F668 00268C28  3B DE BB 58 */	addi r30, r30, CSkipTimer_strpool@l
/* 8029F66C 00268C2C  38 A0 00 01 */	li r5, 1
/* 8029F670 00268C30  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F674 00268C34  38 9E 00 7E */	addi r4, r30, 0x7e
/* 8029F678 00268C38  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F67C 00268C3C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F680 00268C40  7D 89 03 A6 */	mtctr r12
/* 8029F684 00268C44  4E 80 04 21 */	bctrl 
/* 8029F688 00268C48  80 DD 00 18 */	lwz r6, 0x18(r29)
/* 8029F68C 00268C4C  38 9E 00 41 */	addi r4, r30, 0x41
/* 8029F690 00268C50  8B E3 00 B8 */	lbz r31, 0xb8(r3)
/* 8029F694 00268C54  38 A0 00 01 */	li r5, 1
/* 8029F698 00268C58  80 66 00 10 */	lwz r3, 0x10(r6)
/* 8029F69C 00268C5C  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F6A0 00268C60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F6A4 00268C64  7D 89 03 A6 */	mtctr r12
/* 8029F6A8 00268C68  4E 80 04 21 */	bctrl 
/* 8029F6AC 00268C6C  9B E3 00 B8 */	stb r31, 0xb8(r3)
/* 8029F6B0 00268C70  38 9E 00 4A */	addi r4, r30, 0x4a
/* 8029F6B4 00268C74  38 A0 00 01 */	li r5, 1
/* 8029F6B8 00268C78  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F6BC 00268C7C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F6C0 00268C80  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F6C4 00268C84  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F6C8 00268C88  7D 89 03 A6 */	mtctr r12
/* 8029F6CC 00268C8C  4E 80 04 21 */	bctrl 
/* 8029F6D0 00268C90  9B E3 00 B8 */	stb r31, 0xb8(r3)
/* 8029F6D4 00268C94  39 61 00 20 */	addi r11, r1, 0x20
/* 8029F6D8 00268C98  48 01 AA D1 */	bl _restgpr_29
/* 8029F6DC 00268C9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029F6E0 00268CA0  7C 08 03 A6 */	mtlr r0
/* 8029F6E4 00268CA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8029F6E8 00268CA8  4E 80 00 20 */	blr 
.endfn func_8029F5CC

.fn func_8029F6EC, global
/* 8029F6EC 00268CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F6F0 00268CB0  7C 08 02 A6 */	mflr r0
/* 8029F6F4 00268CB4  C0 22 B1 58 */	lfs f1, float_8066B4D8@sda21(r2)
/* 8029F6F8 00268CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F6FC 00268CBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029F700 00268CC0  7C 7F 1B 78 */	mr r31, r3
/* 8029F704 00268CC4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8029F708 00268CC8  4B E9 7E 09 */	bl func_80137510
/* 8029F70C 00268CCC  2C 03 00 00 */	cmpwi r3, 0
/* 8029F710 00268CD0  41 82 00 18 */	beq .L_8029F728
/* 8029F714 00268CD4  38 00 00 05 */	li r0, 5
/* 8029F718 00268CD8  98 1F 00 21 */	stb r0, 0x21(r31)
/* 8029F71C 00268CDC  88 9F 00 24 */	lbz r4, 0x24(r31)
/* 8029F720 00268CE0  7F E3 FB 78 */	mr r3, r31
/* 8029F724 00268CE4  48 00 01 09 */	bl func_8029F82C
.L_8029F728:
/* 8029F728 00268CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F72C 00268CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029F730 00268CF0  7C 08 03 A6 */	mtlr r0
/* 8029F734 00268CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F738 00268CF8  4E 80 00 20 */	blr 
.endfn func_8029F6EC

.fn func_8029F73C, global
/* 8029F73C 00268CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F740 00268D00  7C 08 02 A6 */	mflr r0
/* 8029F744 00268D04  C0 22 B1 58 */	lfs f1, float_8066B4D8@sda21(r2)
/* 8029F748 00268D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F74C 00268D0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029F750 00268D10  7C 7F 1B 78 */	mr r31, r3
/* 8029F754 00268D14  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8029F758 00268D18  4B E9 7C ED */	bl func_80137444
/* 8029F75C 00268D1C  2C 03 00 00 */	cmpwi r3, 0
/* 8029F760 00268D20  41 82 00 14 */	beq .L_8029F774
/* 8029F764 00268D24  38 60 00 02 */	li r3, 2
/* 8029F768 00268D28  38 00 00 01 */	li r0, 1
/* 8029F76C 00268D2C  98 7F 00 21 */	stb r3, 0x21(r31)
/* 8029F770 00268D30  98 1F 00 23 */	stb r0, 0x23(r31)
.L_8029F774:
/* 8029F774 00268D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F778 00268D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029F77C 00268D3C  7C 08 03 A6 */	mtlr r0
/* 8029F780 00268D40  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F784 00268D44  4E 80 00 20 */	blr 
.endfn func_8029F73C

.fn func_8029F788, global
/* 8029F788 00268D48  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8029F78C 00268D4C  2C 00 00 00 */	cmpwi r0, 0
/* 8029F790 00268D50  4D 82 00 20 */	beqlr 
/* 8029F794 00268D54  38 00 00 01 */	li r0, 1
/* 8029F798 00268D58  98 03 00 22 */	stb r0, 0x22(r3)
/* 8029F79C 00268D5C  98 03 00 20 */	stb r0, 0x20(r3)
/* 8029F7A0 00268D60  4E 80 00 20 */	blr 
.endfn func_8029F788

.fn func_8029F7A4, global
/* 8029F7A4 00268D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F7A8 00268D68  7C 08 02 A6 */	mflr r0
/* 8029F7AC 00268D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F7B0 00268D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029F7B4 00268D74  7C 7F 1B 78 */	mr r31, r3
/* 8029F7B8 00268D78  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8029F7BC 00268D7C  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F7C0 00268D80  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8029F7C4 00268D84  7D 89 03 A6 */	mtctr r12
/* 8029F7C8 00268D88  4E 80 04 21 */	bctrl 
/* 8029F7CC 00268D8C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029F7D0 00268D90  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8029F7D4 00268D94  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F7D8 00268D98  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8029F7DC 00268D9C  7D 89 03 A6 */	mtctr r12
/* 8029F7E0 00268DA0  4E 80 04 21 */	bctrl 
/* 8029F7E4 00268DA4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029F7E8 00268DA8  38 A0 00 01 */	li r5, 1
/* 8029F7EC 00268DAC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8029F7F0 00268DB0  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F7F4 00268DB4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8029F7F8 00268DB8  7D 89 03 A6 */	mtctr r12
/* 8029F7FC 00268DBC  4E 80 04 21 */	bctrl 
/* 8029F800 00268DC0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029F804 00268DC4  38 80 00 00 */	li r4, 0
/* 8029F808 00268DC8  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F80C 00268DCC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8029F810 00268DD0  7D 89 03 A6 */	mtctr r12
/* 8029F814 00268DD4  4E 80 04 21 */	bctrl 
/* 8029F818 00268DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F81C 00268DDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029F820 00268DE0  7C 08 03 A6 */	mtlr r0
/* 8029F824 00268DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F828 00268DE8  4E 80 00 20 */	blr 
.endfn func_8029F7A4

.fn func_8029F82C, global
/* 8029F82C 00268DEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029F830 00268DF0  7C 08 02 A6 */	mflr r0
/* 8029F834 00268DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029F838 00268DF8  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8029F83C 00268DFC  3F E0 80 51 */	lis r31, CSkipTimer_strpool@ha
/* 8029F840 00268E00  7C 7D 1B 78 */	mr r29, r3
/* 8029F844 00268E04  7C 9E 23 78 */	mr r30, r4
/* 8029F848 00268E08  3B FF BB 58 */	addi r31, r31, CSkipTimer_strpool@l
/* 8029F84C 00268E0C  38 9F 00 86 */	addi r4, r31, 0x86
/* 8029F850 00268E10  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8029F854 00268E14  80 65 00 10 */	lwz r3, 0x10(r5)
/* 8029F858 00268E18  38 A0 00 01 */	li r5, 1
/* 8029F85C 00268E1C  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F860 00268E20  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F864 00268E24  7D 89 03 A6 */	mtctr r12
/* 8029F868 00268E28  4E 80 04 21 */	bctrl 
/* 8029F86C 00268E2C  38 80 00 00 */	li r4, 0
/* 8029F870 00268E30  4B E8 4A 01 */	bl func_80124270
/* 8029F874 00268E34  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F878 00268E38  38 9F 00 8F */	addi r4, r31, 0x8f
/* 8029F87C 00268E3C  38 A0 00 01 */	li r5, 1
/* 8029F880 00268E40  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F884 00268E44  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F888 00268E48  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F88C 00268E4C  7D 89 03 A6 */	mtctr r12
/* 8029F890 00268E50  4E 80 04 21 */	bctrl 
/* 8029F894 00268E54  38 80 00 00 */	li r4, 0
/* 8029F898 00268E58  4B E8 49 D9 */	bl func_80124270
/* 8029F89C 00268E5C  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F8A0 00268E60  38 9F 00 98 */	addi r4, r31, 0x98
/* 8029F8A4 00268E64  38 A0 00 01 */	li r5, 1
/* 8029F8A8 00268E68  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F8AC 00268E6C  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F8B0 00268E70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F8B4 00268E74  7D 89 03 A6 */	mtctr r12
/* 8029F8B8 00268E78  4E 80 04 21 */	bctrl 
/* 8029F8BC 00268E7C  38 80 00 00 */	li r4, 0
/* 8029F8C0 00268E80  4B E8 49 B1 */	bl func_80124270
/* 8029F8C4 00268E84  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F8C8 00268E88  38 9F 00 A1 */	addi r4, r31, 0xa1
/* 8029F8CC 00268E8C  38 A0 00 01 */	li r5, 1
/* 8029F8D0 00268E90  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F8D4 00268E94  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F8D8 00268E98  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F8DC 00268E9C  7D 89 03 A6 */	mtctr r12
/* 8029F8E0 00268EA0  4E 80 04 21 */	bctrl 
/* 8029F8E4 00268EA4  38 80 00 00 */	li r4, 0
/* 8029F8E8 00268EA8  4B E8 49 89 */	bl func_80124270
/* 8029F8EC 00268EAC  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F8F0 00268EB0  38 9F 00 AA */	addi r4, r31, 0xaa
/* 8029F8F4 00268EB4  38 A0 00 01 */	li r5, 1
/* 8029F8F8 00268EB8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F8FC 00268EBC  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F900 00268EC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F904 00268EC4  7D 89 03 A6 */	mtctr r12
/* 8029F908 00268EC8  4E 80 04 21 */	bctrl 
/* 8029F90C 00268ECC  38 80 00 00 */	li r4, 0
/* 8029F910 00268ED0  4B E8 49 61 */	bl func_80124270
/* 8029F914 00268ED4  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F918 00268ED8  38 9F 00 B3 */	addi r4, r31, 0xb3
/* 8029F91C 00268EDC  38 A0 00 01 */	li r5, 1
/* 8029F920 00268EE0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F924 00268EE4  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F928 00268EE8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F92C 00268EEC  7D 89 03 A6 */	mtctr r12
/* 8029F930 00268EF0  4E 80 04 21 */	bctrl 
/* 8029F934 00268EF4  38 80 00 00 */	li r4, 0
/* 8029F938 00268EF8  4B E8 49 39 */	bl func_80124270
/* 8029F93C 00268EFC  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F940 00268F00  38 9F 00 BC */	addi r4, r31, 0xbc
/* 8029F944 00268F04  38 A0 00 01 */	li r5, 1
/* 8029F948 00268F08  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F94C 00268F0C  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F950 00268F10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F954 00268F14  7D 89 03 A6 */	mtctr r12
/* 8029F958 00268F18  4E 80 04 21 */	bctrl 
/* 8029F95C 00268F1C  38 80 00 00 */	li r4, 0
/* 8029F960 00268F20  4B E8 49 11 */	bl func_80124270
/* 8029F964 00268F24  2C 1E 00 01 */	cmpwi r30, 1
/* 8029F968 00268F28  41 82 00 38 */	beq .L_8029F9A0
/* 8029F96C 00268F2C  2C 1E 00 02 */	cmpwi r30, 2
/* 8029F970 00268F30  41 82 00 5C */	beq .L_8029F9CC
/* 8029F974 00268F34  2C 1E 00 03 */	cmpwi r30, 3
/* 8029F978 00268F38  41 82 00 80 */	beq .L_8029F9F8
/* 8029F97C 00268F3C  2C 1E 00 04 */	cmpwi r30, 4
/* 8029F980 00268F40  41 82 00 A4 */	beq .L_8029FA24
/* 8029F984 00268F44  2C 1E 00 05 */	cmpwi r30, 5
/* 8029F988 00268F48  41 82 00 C8 */	beq .L_8029FA50
/* 8029F98C 00268F4C  2C 1E 00 06 */	cmpwi r30, 6
/* 8029F990 00268F50  41 82 00 EC */	beq .L_8029FA7C
/* 8029F994 00268F54  2C 1E 00 07 */	cmpwi r30, 7
/* 8029F998 00268F58  41 82 01 10 */	beq .L_8029FAA8
/* 8029F99C 00268F5C  48 00 01 34 */	b .L_8029FAD0
.L_8029F9A0:
/* 8029F9A0 00268F60  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F9A4 00268F64  38 9F 00 86 */	addi r4, r31, 0x86
/* 8029F9A8 00268F68  38 A0 00 01 */	li r5, 1
/* 8029F9AC 00268F6C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F9B0 00268F70  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F9B4 00268F74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F9B8 00268F78  7D 89 03 A6 */	mtctr r12
/* 8029F9BC 00268F7C  4E 80 04 21 */	bctrl 
/* 8029F9C0 00268F80  38 80 00 01 */	li r4, 1
/* 8029F9C4 00268F84  4B E8 48 AD */	bl func_80124270
/* 8029F9C8 00268F88  48 00 01 08 */	b .L_8029FAD0
.L_8029F9CC:
/* 8029F9CC 00268F8C  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F9D0 00268F90  38 9F 00 8F */	addi r4, r31, 0x8f
/* 8029F9D4 00268F94  38 A0 00 01 */	li r5, 1
/* 8029F9D8 00268F98  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029F9DC 00268F9C  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F9E0 00268FA0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029F9E4 00268FA4  7D 89 03 A6 */	mtctr r12
/* 8029F9E8 00268FA8  4E 80 04 21 */	bctrl 
/* 8029F9EC 00268FAC  38 80 00 01 */	li r4, 1
/* 8029F9F0 00268FB0  4B E8 48 81 */	bl func_80124270
/* 8029F9F4 00268FB4  48 00 00 DC */	b .L_8029FAD0
.L_8029F9F8:
/* 8029F9F8 00268FB8  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029F9FC 00268FBC  38 9F 00 98 */	addi r4, r31, 0x98
/* 8029FA00 00268FC0  38 A0 00 01 */	li r5, 1
/* 8029FA04 00268FC4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029FA08 00268FC8  81 83 00 00 */	lwz r12, 0(r3)
/* 8029FA0C 00268FCC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029FA10 00268FD0  7D 89 03 A6 */	mtctr r12
/* 8029FA14 00268FD4  4E 80 04 21 */	bctrl 
/* 8029FA18 00268FD8  38 80 00 01 */	li r4, 1
/* 8029FA1C 00268FDC  4B E8 48 55 */	bl func_80124270
/* 8029FA20 00268FE0  48 00 00 B0 */	b .L_8029FAD0
.L_8029FA24:
/* 8029FA24 00268FE4  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029FA28 00268FE8  38 9F 00 A1 */	addi r4, r31, 0xa1
/* 8029FA2C 00268FEC  38 A0 00 01 */	li r5, 1
/* 8029FA30 00268FF0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029FA34 00268FF4  81 83 00 00 */	lwz r12, 0(r3)
/* 8029FA38 00268FF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029FA3C 00268FFC  7D 89 03 A6 */	mtctr r12
/* 8029FA40 00269000  4E 80 04 21 */	bctrl 
/* 8029FA44 00269004  38 80 00 01 */	li r4, 1
/* 8029FA48 00269008  4B E8 48 29 */	bl func_80124270
/* 8029FA4C 0026900C  48 00 00 84 */	b .L_8029FAD0
.L_8029FA50:
/* 8029FA50 00269010  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029FA54 00269014  38 9F 00 AA */	addi r4, r31, 0xaa
/* 8029FA58 00269018  38 A0 00 01 */	li r5, 1
/* 8029FA5C 0026901C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029FA60 00269020  81 83 00 00 */	lwz r12, 0(r3)
/* 8029FA64 00269024  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029FA68 00269028  7D 89 03 A6 */	mtctr r12
/* 8029FA6C 0026902C  4E 80 04 21 */	bctrl 
/* 8029FA70 00269030  38 80 00 01 */	li r4, 1
/* 8029FA74 00269034  4B E8 47 FD */	bl func_80124270
/* 8029FA78 00269038  48 00 00 58 */	b .L_8029FAD0
.L_8029FA7C:
/* 8029FA7C 0026903C  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029FA80 00269040  38 9F 00 B3 */	addi r4, r31, 0xb3
/* 8029FA84 00269044  38 A0 00 01 */	li r5, 1
/* 8029FA88 00269048  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029FA8C 0026904C  81 83 00 00 */	lwz r12, 0(r3)
/* 8029FA90 00269050  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029FA94 00269054  7D 89 03 A6 */	mtctr r12
/* 8029FA98 00269058  4E 80 04 21 */	bctrl 
/* 8029FA9C 0026905C  38 80 00 01 */	li r4, 1
/* 8029FAA0 00269060  4B E8 47 D1 */	bl func_80124270
/* 8029FAA4 00269064  48 00 00 2C */	b .L_8029FAD0
.L_8029FAA8:
/* 8029FAA8 00269068  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8029FAAC 0026906C  38 9F 00 BC */	addi r4, r31, 0xbc
/* 8029FAB0 00269070  38 A0 00 01 */	li r5, 1
/* 8029FAB4 00269074  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029FAB8 00269078  81 83 00 00 */	lwz r12, 0(r3)
/* 8029FABC 0026907C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029FAC0 00269080  7D 89 03 A6 */	mtctr r12
/* 8029FAC4 00269084  4E 80 04 21 */	bctrl 
/* 8029FAC8 00269088  38 80 00 01 */	li r4, 1
/* 8029FACC 0026908C  4B E8 47 A5 */	bl func_80124270
.L_8029FAD0:
/* 8029FAD0 00269090  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 8029FAD4 00269094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029FAD8 00269098  7C 08 03 A6 */	mtlr r0
/* 8029FADC 0026909C  38 21 00 20 */	addi r1, r1, 0x20
/* 8029FAE0 002690A0  4E 80 00 20 */	blr 
.endfn func_8029F82C

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001A6C8", local
.hidden "@etb_8001A6C8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001A6C8"

.obj "@etb_8001A6D0", local
.hidden "@etb_8001A6D0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001A6D0"

.obj "@etb_8001A6D8", local
.hidden "@etb_8001A6D8"
	.4byte 0x10080000
	.4byte 0x00000054
	.4byte 0x00240010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__8045F8C8
.endobj "@etb_8001A6D8"

.obj "@etb_8001A6F0", local
.hidden "@etb_8001A6F0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A6F0"

.obj "@etb_8001A6F8", local
.hidden "@etb_8001A6F8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A6F8"

.obj "@etb_8001A700", local
.hidden "@etb_8001A700"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001A700"

.obj "@etb_8001A708", local
.hidden "@etb_8001A708"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001A708"

.obj "@etb_8001A710", local
.hidden "@etb_8001A710"
	.4byte 0x180A0000
	.4byte 0x00000000
.endobj "@etb_8001A710"

.obj "@etb_8001A718", local
.hidden "@etb_8001A718"
	.4byte 0x180A0000
	.4byte 0x00000000
.endobj "@etb_8001A718"

.obj "@etb_8001A720", local
.hidden "@etb_8001A720"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001A720"

.obj "@etb_8001A728", local
.hidden "@etb_8001A728"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001A728"

.obj "@etb_8001A730", local
.hidden "@etb_8001A730"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A730"

.obj "@etb_8001A738", local
.hidden "@etb_8001A738"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001A738"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800324B0", local
.hidden "@eti_800324B0"
	.4byte func_8029F0A8
	.4byte 0x0000006C
	.4byte "@etb_8001A6C8"
.endobj "@eti_800324B0"

.obj "@eti_800324BC", local
.hidden "@eti_800324BC"
	.4byte __dt__CSkipTimer2
	.4byte 0x00000054
	.4byte "@etb_8001A6D0"
.endobj "@eti_800324BC"

.obj "@eti_800324C8", local
.hidden "@eti_800324C8"
	.4byte func_8029F168
	.4byte 0x00000104
	.4byte "@etb_8001A6D8"
.endobj "@eti_800324C8"

.obj "@eti_800324D4", local
.hidden "@eti_800324D4"
	.4byte func_8029F26C
	.4byte 0x00000090
	.4byte "@etb_8001A6F0"
.endobj "@eti_800324D4"

.obj "@eti_800324E0", local
.hidden "@eti_800324E0"
	.4byte func_8029F2FC
	.4byte 0x00000068
	.4byte "@etb_8001A6F8"
.endobj "@eti_800324E0"

.obj "@eti_800324EC", local
.hidden "@eti_800324EC"
	.4byte func_8029F364
	.4byte 0x000000AC
	.4byte "@etb_8001A700"
.endobj "@eti_800324EC"

.obj "@eti_800324F8", local
.hidden "@eti_800324F8"
	.4byte func_8029F440
	.4byte 0x000000C4
	.4byte "@etb_8001A708"
.endobj "@eti_800324F8"

.obj "@eti_80032504", local
.hidden "@eti_80032504"
	.4byte func_8029F504
	.4byte 0x000000C8
	.4byte "@etb_8001A710"
.endobj "@eti_80032504"

.obj "@eti_80032510", local
.hidden "@eti_80032510"
	.4byte func_8029F5CC
	.4byte 0x00000120
	.4byte "@etb_8001A718"
.endobj "@eti_80032510"

.obj "@eti_8003251C", local
.hidden "@eti_8003251C"
	.4byte func_8029F6EC
	.4byte 0x00000050
	.4byte "@etb_8001A720"
.endobj "@eti_8003251C"

.obj "@eti_80032528", local
.hidden "@eti_80032528"
	.4byte func_8029F73C
	.4byte 0x0000004C
	.4byte "@etb_8001A728"
.endobj "@eti_80032528"

.obj "@eti_80032534", local
.hidden "@eti_80032534"
	.4byte func_8029F7A4
	.4byte 0x00000088
	.4byte "@etb_8001A730"
.endobj "@eti_80032534"

.obj "@eti_80032540", local
.hidden "@eti_80032540"
	.4byte func_8029F82C
	.4byte 0x000002B8
	.4byte "@etb_8001A738"
.endobj "@eti_80032540"
