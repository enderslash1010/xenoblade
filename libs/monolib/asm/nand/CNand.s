.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__CNand, global
/* 804DA0B8 004A3678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA0BC 004A367C  7C 08 02 A6 */	mflr r0
/* 804DA0C0 004A3680  2C 03 00 00 */	cmpwi r3, 0
/* 804DA0C4 004A3684  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA0C8 004A3688  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DA0CC 004A368C  7C 7E 1B 78 */	mr r30, r3
/* 804DA0D0 004A3690  7C 9F 23 78 */	mr r31, r4
/* 804DA0D4 004A3694  41 82 00 28 */	beq .L_804DA0FC
/* 804DA0D8 004A3698  3C 80 80 4E */	lis r4, __dt__CNRequest@ha
/* 804DA0DC 004A369C  38 A0 00 24 */	li r5, 0x24
/* 804DA0E0 004A36A0  38 84 A1 14 */	addi r4, r4, __dt__CNRequest@l
/* 804DA0E4 004A36A4  38 C0 00 08 */	li r6, 8
/* 804DA0E8 004A36A8  4B DD FB 11 */	bl __destroy_arr
/* 804DA0EC 004A36AC  2C 1F 00 00 */	cmpwi r31, 0
/* 804DA0F0 004A36B0  40 81 00 0C */	ble .L_804DA0FC
/* 804DA0F4 004A36B4  7F C3 F3 78 */	mr r3, r30
/* 804DA0F8 004A36B8  4B F5 AB 35 */	bl __dl__FPv
.L_804DA0FC:
/* 804DA0FC 004A36BC  7F C3 F3 78 */	mr r3, r30
/* 804DA100 004A36C0  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DA104 004A36C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA108 004A36C8  7C 08 03 A6 */	mtlr r0
/* 804DA10C 004A36CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA110 004A36D0  4E 80 00 20 */	blr
.endfn __dt__CNand

.fn __dt__CNRequest, global
/* 804DA114 004A36D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA118 004A36D8  7C 08 02 A6 */	mflr r0
/* 804DA11C 004A36DC  2C 03 00 00 */	cmpwi r3, 0
/* 804DA120 004A36E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA124 004A36E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DA128 004A36E8  7C 7F 1B 78 */	mr r31, r3
/* 804DA12C 004A36EC  41 82 00 10 */	beq .L_804DA13C
/* 804DA130 004A36F0  2C 04 00 00 */	cmpwi r4, 0
/* 804DA134 004A36F4  40 81 00 08 */	ble .L_804DA13C
/* 804DA138 004A36F8  4B F5 AA F5 */	bl __dl__FPv
.L_804DA13C:
/* 804DA13C 004A36FC  7F E3 FB 78 */	mr r3, r31
/* 804DA140 004A3700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DA144 004A3704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA148 004A3708  7C 08 03 A6 */	mtlr r0
/* 804DA14C 004A370C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA150 004A3710  4E 80 00 20 */	blr
.endfn __dt__CNRequest


.fn __ct__CNand, global
/* 804DA154 004A3714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA158 004A3718  7C 08 02 A6 */	mflr r0
/* 804DA15C 004A371C  3C C0 80 57 */	lis r6, __vt__5CNand@ha
/* 804DA160 004A3720  3C 80 80 4E */	lis r4, __ct__CNRequest@ha
/* 804DA164 004A3724  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA168 004A3728  3C A0 80 4E */	lis r5, __dt__CNRequest@ha
/* 804DA16C 004A372C  38 C6 35 90 */	addi r6, r6, __vt__5CNand@l
/* 804DA170 004A3730  38 84 AA A8 */	addi r4, r4, __ct__CNRequest@l
/* 804DA174 004A3734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DA178 004A3738  7C 7F 1B 78 */	mr r31, r3
/* 804DA17C 004A373C  38 A5 A1 14 */	addi r5, r5, __dt__CNRequest@l
/* 804DA180 004A3740  38 E0 00 08 */	li r7, 8
/* 804DA184 004A3744  90 C3 01 28 */	stw r6, 0x128(r3)
/* 804DA188 004A3748  38 C0 00 24 */	li r6, 0x24
/* 804DA18C 004A374C  4B DD F9 75 */	bl __construct_array
/* 804DA190 004A3750  38 00 00 00 */	li r0, 0
/* 804DA194 004A3754  B0 1F 01 20 */	sth r0, 0x120(r31)
/* 804DA198 004A3758  7F E3 FB 78 */	mr r3, r31
/* 804DA19C 004A375C  B0 1F 01 22 */	sth r0, 0x122(r31)
/* 804DA1A0 004A3760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DA1A4 004A3764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA1A8 004A3768  7C 08 03 A6 */	mtlr r0
/* 804DA1AC 004A376C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA1B0 004A3770  4E 80 00 20 */	blr 
.endfn __ct__CNand

.fn func_804DA1B4, global
/* 804DA1B4 004A3774  38 80 00 00 */	li r4, 0
/* 804DA1B8 004A3778  38 00 00 01 */	li r0, 1
/* 804DA1BC 004A377C  B0 83 01 20 */	sth r4, 0x120(r3)
/* 804DA1C0 004A3780  B0 83 01 22 */	sth r4, 0x122(r3)
/* 804DA1C4 004A3784  98 03 01 24 */	stb r0, 0x124(r3)
/* 804DA1C8 004A3788  4E 80 00 20 */	blr 
.endfn func_804DA1B4

.fn func_804DA1CC, global
/* 804DA1CC 004A378C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA1D0 004A3790  7C 08 02 A6 */	mflr r0
/* 804DA1D4 004A3794  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA1D8 004A3798  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804DA1DC 004A379C  7C 7F 1B 78 */	mr r31, r3
/* 804DA1E0 004A37A0  48 00 00 3C */	b .L_804DA21C
.L_804DA1E4:
/* 804DA1E4 004A37A4  38 81 00 08 */	addi r4, r1, 8
/* 804DA1E8 004A37A8  48 00 09 11 */	bl func_804DAAF8
/* 804DA1EC 004A37AC  2C 03 00 00 */	cmpwi r3, 0
/* 804DA1F0 004A37B0  41 82 00 44 */	beq .L_804DA234
/* 804DA1F4 004A37B4  A8 7F 01 20 */	lha r3, 0x120(r31)
/* 804DA1F8 004A37B8  88 81 00 08 */	lbz r4, 8(r1)
/* 804DA1FC 004A37BC  38 03 00 01 */	addi r0, r3, 1
/* 804DA200 004A37C0  98 9F 01 24 */	stb r4, 0x124(r31)
/* 804DA204 004A37C4  7C 03 07 34 */	extsh r3, r0
/* 804DA208 004A37C8  7C 60 1E 70 */	srawi r0, r3, 3
/* 804DA20C 004A37CC  7C 00 01 94 */	addze r0, r0
/* 804DA210 004A37D0  54 00 18 38 */	slwi r0, r0, 3
/* 804DA214 004A37D4  7C 00 18 50 */	subf r0, r0, r3
/* 804DA218 004A37D8  B0 1F 01 20 */	sth r0, 0x120(r31)
.L_804DA21C:
/* 804DA21C 004A37DC  A8 1F 01 20 */	lha r0, 0x120(r31)
/* 804DA220 004A37E0  1C 00 00 24 */	mulli r0, r0, 0x24
/* 804DA224 004A37E4  7C 7F 02 14 */	add r3, r31, r0
/* 804DA228 004A37E8  7C 1F 00 2E */	lwzx r0, r31, r0
/* 804DA22C 004A37EC  2C 00 00 00 */	cmpwi r0, 0
/* 804DA230 004A37F0  40 82 FF B4 */	bne .L_804DA1E4
.L_804DA234:
/* 804DA234 004A37F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA238 004A37F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804DA23C 004A37FC  7C 08 03 A6 */	mtlr r0
/* 804DA240 004A3800  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA244 004A3804  4E 80 00 20 */	blr 
.endfn func_804DA1CC

.fn func_804DA248, global
/* 804DA248 004A3808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA24C 004A380C  7C 08 02 A6 */	mflr r0
/* 804DA250 004A3810  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA254 004A3814  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 804DA258 004A3818  7C 9D 23 78 */	mr r29, r4
/* 804DA25C 004A381C  7C BE 2B 78 */	mr r30, r5
/* 804DA260 004A3820  7C DF 33 78 */	mr r31, r6
/* 804DA264 004A3824  48 00 02 19 */	bl func_804DA47C
/* 804DA268 004A3828  2C 03 00 00 */	cmpwi r3, 0
/* 804DA26C 004A382C  41 82 00 18 */	beq .L_804DA284
/* 804DA270 004A3830  7F A4 EB 78 */	mr r4, r29
/* 804DA274 004A3834  7F C5 F3 78 */	mr r5, r30
/* 804DA278 004A3838  7F E6 FB 78 */	mr r6, r31
/* 804DA27C 004A383C  48 00 09 05 */	bl func_804DAB80
/* 804DA280 004A3840  48 00 00 08 */	b .L_804DA288
.L_804DA284:
/* 804DA284 004A3844  38 60 00 00 */	li r3, 0
.L_804DA288:
/* 804DA288 004A3848  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 804DA28C 004A384C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA290 004A3850  7C 08 03 A6 */	mtlr r0
/* 804DA294 004A3854  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA298 004A3858  4E 80 00 20 */	blr 
.endfn func_804DA248

.fn func_804DA29C, global
/* 804DA29C 004A385C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA2A0 004A3860  7C 08 02 A6 */	mflr r0
/* 804DA2A4 004A3864  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA2A8 004A3868  BF 41 00 08 */	stmw r26, 8(r1)
/* 804DA2AC 004A386C  7C 7A 1B 78 */	mr r26, r3
/* 804DA2B0 004A3870  7C 9B 23 78 */	mr r27, r4
/* 804DA2B4 004A3874  7C BC 2B 78 */	mr r28, r5
/* 804DA2B8 004A3878  7C DD 33 78 */	mr r29, r6
/* 804DA2BC 004A387C  7C FE 3B 78 */	mr r30, r7
/* 804DA2C0 004A3880  7D 1F 43 78 */	mr r31, r8
/* 804DA2C4 004A3884  48 00 01 B9 */	bl func_804DA47C
/* 804DA2C8 004A3888  2C 03 00 00 */	cmpwi r3, 0
/* 804DA2CC 004A388C  40 82 00 0C */	bne .L_804DA2D8
/* 804DA2D0 004A3890  38 60 00 00 */	li r3, 0
/* 804DA2D4 004A3894  48 00 00 64 */	b .L_804DA338
.L_804DA2D8:
/* 804DA2D8 004A3898  7F 64 DB 78 */	mr r4, r27
/* 804DA2DC 004A389C  7F 85 E3 78 */	mr r5, r28
/* 804DA2E0 004A38A0  7F A6 EB 78 */	mr r6, r29
/* 804DA2E4 004A38A4  7F E7 FB 78 */	mr r7, r31
/* 804DA2E8 004A38A8  48 00 08 D5 */	bl func_804DABBC
/* 804DA2EC 004A38AC  2C 03 00 00 */	cmpwi r3, 0
/* 804DA2F0 004A38B0  40 82 00 0C */	bne .L_804DA2FC
/* 804DA2F4 004A38B4  38 60 00 00 */	li r3, 0
/* 804DA2F8 004A38B8  48 00 00 40 */	b .L_804DA338
.L_804DA2FC:
/* 804DA2FC 004A38BC  2C 1E 00 00 */	cmpwi r30, 0
/* 804DA300 004A38C0  41 82 00 34 */	beq .L_804DA334
/* 804DA304 004A38C4  7F 43 D3 78 */	mr r3, r26
/* 804DA308 004A38C8  48 00 01 75 */	bl func_804DA47C
/* 804DA30C 004A38CC  2C 03 00 00 */	cmpwi r3, 0
/* 804DA310 004A38D0  40 82 00 0C */	bne .L_804DA31C
/* 804DA314 004A38D4  38 60 00 00 */	li r3, 0
/* 804DA318 004A38D8  48 00 00 20 */	b .L_804DA338
.L_804DA31C:
/* 804DA31C 004A38DC  7F C4 F3 78 */	mr r4, r30
/* 804DA320 004A38E0  48 00 09 8D */	bl func_804DACAC
/* 804DA324 004A38E4  2C 03 00 00 */	cmpwi r3, 0
/* 804DA328 004A38E8  40 82 00 0C */	bne .L_804DA334
/* 804DA32C 004A38EC  38 60 00 00 */	li r3, 0
/* 804DA330 004A38F0  48 00 00 08 */	b .L_804DA338
.L_804DA334:
/* 804DA334 004A38F4  38 60 00 01 */	li r3, 1
.L_804DA338:
/* 804DA338 004A38F8  BB 41 00 08 */	lmw r26, 8(r1)
/* 804DA33C 004A38FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA340 004A3900  7C 08 03 A6 */	mtlr r0
/* 804DA344 004A3904  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA348 004A3908  4E 80 00 20 */	blr 
.endfn func_804DA29C

.fn func_804DA34C, global
/* 804DA34C 004A390C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA350 004A3910  7C 08 02 A6 */	mflr r0
/* 804DA354 004A3914  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA358 004A3918  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 804DA35C 004A391C  7C 9D 23 78 */	mr r29, r4
/* 804DA360 004A3920  7C BE 2B 78 */	mr r30, r5
/* 804DA364 004A3924  7C DF 33 78 */	mr r31, r6
/* 804DA368 004A3928  48 00 01 15 */	bl func_804DA47C
/* 804DA36C 004A392C  2C 03 00 00 */	cmpwi r3, 0
/* 804DA370 004A3930  41 82 00 18 */	beq .L_804DA388
/* 804DA374 004A3934  7F A4 EB 78 */	mr r4, r29
/* 804DA378 004A3938  7F C5 F3 78 */	mr r5, r30
/* 804DA37C 004A393C  7F E6 FB 78 */	mr r6, r31
/* 804DA380 004A3940  48 00 08 79 */	bl func_804DABF8
/* 804DA384 004A3944  48 00 00 08 */	b .L_804DA38C
.L_804DA388:
/* 804DA388 004A3948  38 60 00 00 */	li r3, 0
.L_804DA38C:
/* 804DA38C 004A394C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 804DA390 004A3950  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA394 004A3954  7C 08 03 A6 */	mtlr r0
/* 804DA398 004A3958  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA39C 004A395C  4E 80 00 20 */	blr 
.endfn func_804DA34C

.fn func_804DA3A0, global
/* 804DA3A0 004A3960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA3A4 004A3964  7C 08 02 A6 */	mflr r0
/* 804DA3A8 004A3968  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA3AC 004A396C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DA3B0 004A3970  7C 9F 23 78 */	mr r31, r4
/* 804DA3B4 004A3974  48 00 00 C9 */	bl func_804DA47C
/* 804DA3B8 004A3978  2C 03 00 00 */	cmpwi r3, 0
/* 804DA3BC 004A397C  41 82 00 10 */	beq .L_804DA3CC
/* 804DA3C0 004A3980  7F E4 FB 78 */	mr r4, r31
/* 804DA3C4 004A3984  48 00 08 71 */	bl func_804DAC34
/* 804DA3C8 004A3988  48 00 00 08 */	b .L_804DA3D0
.L_804DA3CC:
/* 804DA3CC 004A398C  38 60 00 00 */	li r3, 0
.L_804DA3D0:
/* 804DA3D0 004A3990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA3D4 004A3994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DA3D8 004A3998  7C 08 03 A6 */	mtlr r0
/* 804DA3DC 004A399C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA3E0 004A39A0  4E 80 00 20 */	blr 
.endfn func_804DA3A0

.fn func_804DA3E4, global
/* 804DA3E4 004A39A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA3E8 004A39A8  7C 08 02 A6 */	mflr r0
/* 804DA3EC 004A39AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA3F0 004A39B0  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 804DA3F4 004A39B4  7C 9D 23 78 */	mr r29, r4
/* 804DA3F8 004A39B8  7C BE 2B 78 */	mr r30, r5
/* 804DA3FC 004A39BC  7C DF 33 78 */	mr r31, r6
/* 804DA400 004A39C0  48 00 00 7D */	bl func_804DA47C
/* 804DA404 004A39C4  2C 03 00 00 */	cmpwi r3, 0
/* 804DA408 004A39C8  41 82 00 18 */	beq .L_804DA420
/* 804DA40C 004A39CC  7F A4 EB 78 */	mr r4, r29
/* 804DA410 004A39D0  7F C5 F3 78 */	mr r5, r30
/* 804DA414 004A39D4  7F E6 FB 78 */	mr r6, r31
/* 804DA418 004A39D8  48 00 08 59 */	bl func_804DAC70
/* 804DA41C 004A39DC  48 00 00 08 */	b .L_804DA424
.L_804DA420:
/* 804DA420 004A39E0  38 60 00 00 */	li r3, 0
.L_804DA424:
/* 804DA424 004A39E4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 804DA428 004A39E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA42C 004A39EC  7C 08 03 A6 */	mtlr r0
/* 804DA430 004A39F0  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA434 004A39F4  4E 80 00 20 */	blr 
.endfn func_804DA3E4

.fn func_804DA438, global
/* 804DA438 004A39F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA43C 004A39FC  7C 08 02 A6 */	mflr r0
/* 804DA440 004A3A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA444 004A3A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DA448 004A3A08  7C 9F 23 78 */	mr r31, r4
/* 804DA44C 004A3A0C  48 00 00 31 */	bl func_804DA47C
/* 804DA450 004A3A10  2C 03 00 00 */	cmpwi r3, 0
/* 804DA454 004A3A14  41 82 00 10 */	beq .L_804DA464
/* 804DA458 004A3A18  7F E4 FB 78 */	mr r4, r31
/* 804DA45C 004A3A1C  48 00 08 51 */	bl func_804DACAC
/* 804DA460 004A3A20  48 00 00 08 */	b .L_804DA468
.L_804DA464:
/* 804DA464 004A3A24  38 60 00 00 */	li r3, 0
.L_804DA468:
/* 804DA468 004A3A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA46C 004A3A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DA470 004A3A30  7C 08 03 A6 */	mtlr r0
/* 804DA474 004A3A34  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA478 004A3A38  4E 80 00 20 */	blr 
.endfn func_804DA438

.fn func_804DA47C, global
/* 804DA47C 004A3A3C  A8 A3 01 22 */	lha r5, 0x122(r3)
/* 804DA480 004A3A40  A8 03 01 20 */	lha r0, 0x120(r3)
/* 804DA484 004A3A44  38 85 00 01 */	addi r4, r5, 1
/* 804DA488 004A3A48  7C 86 07 34 */	extsh r6, r4
/* 804DA48C 004A3A4C  7C C4 1E 70 */	srawi r4, r6, 3
/* 804DA490 004A3A50  7C 84 01 94 */	addze r4, r4
/* 804DA494 004A3A54  54 84 18 38 */	slwi r4, r4, 3
/* 804DA498 004A3A58  7C 84 30 50 */	subf r4, r4, r6
/* 804DA49C 004A3A5C  7C 84 07 34 */	extsh r4, r4
/* 804DA4A0 004A3A60  7C 04 00 00 */	cmpw r4, r0
/* 804DA4A4 004A3A64  40 82 00 0C */	bne .L_804DA4B0
/* 804DA4A8 004A3A68  38 60 00 00 */	li r3, 0
/* 804DA4AC 004A3A6C  4E 80 00 20 */	blr
.L_804DA4B0:
/* 804DA4B0 004A3A70  1C 05 00 24 */	mulli r0, r5, 0x24
/* 804DA4B4 004A3A74  B0 83 01 22 */	sth r4, 0x122(r3)
/* 804DA4B8 004A3A78  7C 63 02 14 */	add r3, r3, r0
/* 804DA4BC 004A3A7C  4E 80 00 20 */	blr
.endfn func_804DA47C

.fn sinit_804DA4C0, local
/* 804DA4C0 004A3A80  3C 60 80 66 */	lis r3, CNand_instance@ha
/* 804DA4C4 004A3A84  38 63 25 C0 */	addi r3, r3, CNand_instance@l
/* 804DA4C8 004A3A88  4B FF FC 8C */	b __ct__CNand
.endfn sinit_804DA4C0


.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_804DA4C0


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CNReqtask_typestr, global
	.asciz "CNReqtask"
	.balign 4
.endobj CNReqtask_typestr


.obj lbl_80527EDC, global
	.asciz "%s/%s"
	.balign 4
	.4byte 0
.endobj lbl_80527EDC

.obj CNRequest_typestr, global
	.asciz "CNRequest"
	.balign 4
	.4byte 0
.endobj CNRequest_typestr
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__5CNand, global
	.4byte __RTTI__5CNand
	.4byte 0
	.4byte __dt__CNand
	.4byte 0
.endobj __vt__5CNand

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__5CNand, global
	.4byte CNand_typestr
	.4byte 0
.endobj __RTTI__5CNand


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj CNand_typestr, global
	.asciz "CNand"
	.balign 4
.endobj CNand_typestr

.section .bss, "wa"  # 0x80573C80 - 0x8066417B



.obj CNand_instance, global
	.skip 0x130
.endobj CNand_instance

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80020650", local
.hidden "@etb_80020650"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80020650"

.obj "@etb_80020658", local
.hidden "@etb_80020658"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020658"

.obj "@etb_80020660", local
.hidden "@etb_80020660"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020660"

.obj "@etb_80020668", local
.hidden "@etb_80020668"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020668"

.obj "@etb_80020670", local
.hidden "@etb_80020670"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80020670"

.obj "@etb_80020678", local
.hidden "@etb_80020678"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_80020678"

.obj "@etb_80020680", local
.hidden "@etb_80020680"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80020680"

.obj "@etb_80020688", local
.hidden "@etb_80020688"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020688"

.obj "@etb_80020690", local
.hidden "@etb_80020690"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80020690"

.obj "@etb_80020698", local
.hidden "@etb_80020698"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020698"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800385C4", local
.hidden "@eti_800385C4"
	.4byte __dt__CNand
	.4byte 0x0000005C
	.4byte "@etb_80020650"
.endobj "@eti_800385C4"

.obj "@eti_800385D0", local
.hidden "@eti_800385D0"
	.4byte __dt__CNRequest
	.4byte 0x00000040
	.4byte "@etb_80020658"
.endobj "@eti_800385D0"

.obj "@eti_800385DC", local
.hidden "@eti_800385DC"
	.4byte __ct__CNand
	.4byte 0x00000060
	.4byte "@etb_80020660"
.endobj "@eti_800385DC"

.obj "@eti_800385E8", local
.hidden "@eti_800385E8"
	.4byte func_804DA1CC
	.4byte 0x0000007C
	.4byte "@etb_80020668"
.endobj "@eti_800385E8"

.obj "@eti_800385F4", local
.hidden "@eti_800385F4"
	.4byte func_804DA248
	.4byte 0x00000054
	.4byte "@etb_80020670"
.endobj "@eti_800385F4"

.obj "@eti_80038600", local
.hidden "@eti_80038600"
	.4byte func_804DA29C
	.4byte 0x000000B0
	.4byte "@etb_80020678"
.endobj "@eti_80038600"

.obj "@eti_8003860C", local
.hidden "@eti_8003860C"
	.4byte func_804DA34C
	.4byte 0x00000054
	.4byte "@etb_80020680"
.endobj "@eti_8003860C"

.obj "@eti_80038618", local
.hidden "@eti_80038618"
	.4byte func_804DA3A0
	.4byte 0x00000044
	.4byte "@etb_80020688"
.endobj "@eti_80038618"

.obj "@eti_80038624", local
.hidden "@eti_80038624"
	.4byte func_804DA3E4
	.4byte 0x00000054
	.4byte "@etb_80020690"
.endobj "@eti_80038624"

.obj "@eti_80038630", local
.hidden "@eti_80038630"
	.4byte func_804DA438
	.4byte 0x00000044
	.4byte "@etb_80020698"
.endobj "@eti_80038630"
