.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8031D160
func_8031D160:
/* 8031D160 002E6720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031D164 002E6724  39 80 00 00 */	li r12, 0
/* 8031D168 002E6728  50 8C 07 BE */	rlwimi r12, r4, 0, 0x1e, 0x1f
/* 8031D16C 002E672C  38 83 00 10 */	addi r4, r3, 0x10
/* 8031D170 002E6730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031D174 002E6734  50 AC 17 3A */	rlwimi r12, r5, 2, 0x1c, 0x1d
/* 8031D178 002E6738  3D 60 CC 01 */	lis r11, 0xCC008000@ha
/* 8031D17C 002E673C  38 00 00 61 */	li r0, 0x61
/* 8031D180 002E6740  98 0B 80 00 */	stb r0, 0xCC008000@l(r11)
/* 8031D184 002E6744  50 CC 26 76 */	rlwimi r12, r6, 4, 0x19, 0x1b
/* 8031D188 002E6748  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031D18C 002E674C  38 00 00 00 */	li r0, 0
/* 8031D190 002E6750  88 A1 00 1B */	lbz r5, 0x1b(r1)
/* 8031D194 002E6754  53 EC 3D F0 */	rlwimi r12, r31, 7, 0x17, 0x18
/* 8031D198 002E6758  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031D19C 002E675C  50 EC 4C EC */	rlwimi r12, r7, 9, 0x13, 0x16
/* 8031D1A0 002E6760  51 0C 6C 24 */	rlwimi r12, r8, 0xd, 0x10, 0x12
/* 8031D1A4 002E6764  51 2C 83 5E */	rlwimi r12, r9, 0x10, 0xd, 0xf
/* 8031D1A8 002E6768  50 AC 9B 18 */	rlwimi r12, r5, 0x13, 0xc, 0xc
/* 8031D1AC 002E676C  51 4C A2 D6 */	rlwimi r12, r10, 0x14, 0xb, 0xb
/* 8031D1B0 002E6770  50 8C C0 0E */	rlwimi r12, r4, 0x18, 0, 7
/* 8031D1B4 002E6774  91 8B 80 00 */	stw r12, -0x8000(r11)
/* 8031D1B8 002E6778  B0 03 00 02 */	sth r0, 2(r3)
/* 8031D1BC 002E677C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031D1C0 002E6780  38 21 00 10 */	addi r1, r1, 0x10
/* 8031D1C4 002E6784  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8031D1D0
func_8031D1D0:
/* 8031D1D0 002E6790  38 C3 FF FF */	addi r6, r3, -1
/* 8031D1D4 002E6794  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8031D1D8 002E6798  28 06 00 02 */	cmplwi r6, 2
/* 8031D1DC 002E679C  40 81 00 30 */	ble lbl_8031D20C
/* 8031D1E0 002E67A0  38 C3 FF FB */	addi r6, r3, -5
/* 8031D1E4 002E67A4  28 06 00 02 */	cmplwi r6, 2
/* 8031D1E8 002E67A8  40 81 00 24 */	ble lbl_8031D20C
/* 8031D1EC 002E67AC  38 C3 FF F7 */	addi r6, r3, -9
/* 8031D1F0 002E67B0  28 06 00 02 */	cmplwi r6, 2
/* 8031D1F4 002E67B4  40 81 00 18 */	ble lbl_8031D20C
/* 8031D1F8 002E67B8  48 00 00 10 */	b lbl_8031D208
/* 8031D1FC 002E67BC  48 00 00 10 */	b lbl_8031D20C
/* 8031D200 002E67C0  48 00 00 0C */	b lbl_8031D20C
/* 8031D204 002E67C4  48 00 00 08 */	b lbl_8031D20C
lbl_8031D208:
/* 8031D208 002E67C8  38 C0 00 00 */	li r6, 0
lbl_8031D20C:
/* 8031D20C 002E67CC  C0 C2 BC C8 */	lfs f6, lbl_8066C048@sda21(r2)
/* 8031D210 002E67D0  54 C0 10 3A */	slwi r0, r6, 2
/* 8031D214 002E67D4  C0 24 00 00 */	lfs f1, 0(r4)
/* 8031D218 002E67D8  7D 46 00 50 */	subf r10, r6, r0
/* 8031D21C 002E67DC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8031D220 002E67E0  39 25 00 11 */	addi r9, r5, 0x11
/* 8031D224 002E67E4  EC 26 00 72 */	fmuls f1, f6, f1
/* 8031D228 002E67E8  C0 64 00 04 */	lfs f3, 4(r4)
/* 8031D22C 002E67EC  EC 06 00 32 */	fmuls f0, f6, f0
/* 8031D230 002E67F0  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 8031D234 002E67F4  EC 66 00 F2 */	fmuls f3, f6, f3
/* 8031D238 002E67F8  3C E0 CC 01 */	lis r7, 0xCC008000@ha
/* 8031D23C 002E67FC  FC A0 08 1E */	fctiwz f5, f1
/* 8031D240 002E6800  C0 24 00 08 */	lfs f1, 8(r4)
/* 8031D244 002E6804  FC 80 00 1E */	fctiwz f4, f0
/* 8031D248 002E6808  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8031D24C 002E680C  D8 A1 00 08 */	stfd f5, 8(r1)
/* 8031D250 002E6810  EC 46 00 B2 */	fmuls f2, f6, f2
/* 8031D254 002E6814  39 00 00 61 */	li r8, 0x61
/* 8031D258 002E6818  FC 60 18 1E */	fctiwz f3, f3
/* 8031D25C 002E681C  FC 40 10 1E */	fctiwz f2, f2
/* 8031D260 002E6820  D8 81 00 10 */	stfd f4, 0x10(r1)
/* 8031D264 002E6824  EC 26 00 72 */	fmuls f1, f6, f1
/* 8031D268 002E6828  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8031D26C 002E682C  38 A0 00 00 */	li r5, 0
/* 8031D270 002E6830  50 05 05 7E */	rlwimi r5, r0, 0, 0x15, 0x1f
/* 8031D274 002E6834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031D278 002E6838  EC 06 00 32 */	fmuls f0, f6, f0
/* 8031D27C 002E683C  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 8031D280 002E6840  FC 20 08 1E */	fctiwz f1, f1
/* 8031D284 002E6844  50 05 5A A8 */	rlwimi r5, r0, 0xb, 0xa, 0x14
/* 8031D288 002E6848  38 8A 00 06 */	addi r4, r10, 6
/* 8031D28C 002E684C  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 8031D290 002E6850  51 25 B2 12 */	rlwimi r5, r9, 0x16, 8, 9
/* 8031D294 002E6854  FC 00 00 1E */	fctiwz f0, f0
/* 8031D298 002E6858  50 85 C0 0E */	rlwimi r5, r4, 0x18, 0, 7
/* 8031D29C 002E685C  99 07 80 00 */	stb r8, 0xCC008000@l(r7)
/* 8031D2A0 002E6860  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8031D2A4 002E6864  38 C0 00 00 */	li r6, 0
/* 8031D2A8 002E6868  90 A7 80 00 */	stw r5, -0x8000(r7)
/* 8031D2AC 002E686C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031D2B0 002E6870  50 66 05 7E */	rlwimi r6, r3, 0, 0x15, 0x1f
/* 8031D2B4 002E6874  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8031D2B8 002E6878  38 8A 00 07 */	addi r4, r10, 7
/* 8031D2BC 002E687C  50 06 5A A8 */	rlwimi r6, r0, 0xb, 0xa, 0x14
/* 8031D2C0 002E6880  38 A0 00 00 */	li r5, 0
/* 8031D2C4 002E6884  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8031D2C8 002E6888  51 26 A2 12 */	rlwimi r6, r9, 0x14, 8, 9
/* 8031D2CC 002E688C  50 86 C0 0E */	rlwimi r6, r4, 0x18, 0, 7
/* 8031D2D0 002E6890  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8031D2D4 002E6894  99 07 80 00 */	stb r8, -0x8000(r7)
/* 8031D2D8 002E6898  38 8A 00 08 */	addi r4, r10, 8
/* 8031D2DC 002E689C  50 65 05 7E */	rlwimi r5, r3, 0, 0x15, 0x1f
/* 8031D2E0 002E68A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031D2E4 002E68A4  90 C7 80 00 */	stw r6, -0x8000(r7)
/* 8031D2E8 002E68A8  50 05 5A A8 */	rlwimi r5, r0, 0xb, 0xa, 0x14
/* 8031D2EC 002E68AC  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031D2F0 002E68B0  51 25 92 12 */	rlwimi r5, r9, 0x12, 8, 9
/* 8031D2F4 002E68B4  99 07 80 00 */	stb r8, -0x8000(r7)
/* 8031D2F8 002E68B8  50 85 C0 0E */	rlwimi r5, r4, 0x18, 0, 7
/* 8031D2FC 002E68BC  38 00 00 00 */	li r0, 0
/* 8031D300 002E68C0  90 A7 80 00 */	stw r5, -0x8000(r7)
/* 8031D304 002E68C4  B0 03 00 02 */	sth r0, 2(r3)
/* 8031D308 002E68C8  38 21 00 40 */	addi r1, r1, 0x40
/* 8031D30C 002E68CC  4E 80 00 20 */	blr 

.global func_8031D310
func_8031D310:
/* 8031D310 002E68D0  2C 03 00 00 */	cmpwi r3, 0
/* 8031D314 002E68D4  41 82 00 20 */	beq lbl_8031D334
/* 8031D318 002E68D8  2C 03 00 01 */	cmpwi r3, 1
/* 8031D31C 002E68DC  41 82 00 4C */	beq lbl_8031D368
/* 8031D320 002E68E0  2C 03 00 02 */	cmpwi r3, 2
/* 8031D324 002E68E4  41 82 00 78 */	beq lbl_8031D39C
/* 8031D328 002E68E8  2C 03 00 03 */	cmpwi r3, 3
/* 8031D32C 002E68EC  41 82 00 A4 */	beq lbl_8031D3D0
/* 8031D330 002E68F0  48 00 00 D0 */	b lbl_8031D400
lbl_8031D334:
/* 8031D334 002E68F4  81 02 BC 20 */	lwz r8, lbl_8066BFA0@sda21(r2)
/* 8031D338 002E68F8  38 C0 00 25 */	li r6, 0x25
/* 8031D33C 002E68FC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031D340 002E6900  38 00 00 61 */	li r0, 0x61
/* 8031D344 002E6904  80 E8 01 78 */	lwz r7, 0x178(r8)
/* 8031D348 002E6908  50 87 07 3E */	rlwimi r7, r4, 0, 0x1c, 0x1f
/* 8031D34C 002E690C  50 A7 26 36 */	rlwimi r7, r5, 4, 0x18, 0x1b
/* 8031D350 002E6910  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 8031D354 002E6914  90 E8 01 78 */	stw r7, 0x178(r8)
/* 8031D358 002E6918  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031D35C 002E691C  80 08 01 78 */	lwz r0, 0x178(r8)
/* 8031D360 002E6920  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031D364 002E6924  48 00 00 9C */	b lbl_8031D400
lbl_8031D368:
/* 8031D368 002E6928  81 02 BC 20 */	lwz r8, lbl_8066BFA0@sda21(r2)
/* 8031D36C 002E692C  38 C0 00 25 */	li r6, 0x25
/* 8031D370 002E6930  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031D374 002E6934  38 00 00 61 */	li r0, 0x61
/* 8031D378 002E6938  80 E8 01 78 */	lwz r7, 0x178(r8)
/* 8031D37C 002E693C  50 87 45 2E */	rlwimi r7, r4, 8, 0x14, 0x17
/* 8031D380 002E6940  50 A7 64 26 */	rlwimi r7, r5, 0xc, 0x10, 0x13
/* 8031D384 002E6944  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 8031D388 002E6948  90 E8 01 78 */	stw r7, 0x178(r8)
/* 8031D38C 002E694C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031D390 002E6950  80 08 01 78 */	lwz r0, 0x178(r8)
/* 8031D394 002E6954  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031D398 002E6958  48 00 00 68 */	b lbl_8031D400
lbl_8031D39C:
/* 8031D39C 002E695C  81 02 BC 20 */	lwz r8, lbl_8066BFA0@sda21(r2)
/* 8031D3A0 002E6960  38 C0 00 26 */	li r6, 0x26
/* 8031D3A4 002E6964  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031D3A8 002E6968  38 00 00 61 */	li r0, 0x61
/* 8031D3AC 002E696C  80 E8 01 7C */	lwz r7, 0x17c(r8)
/* 8031D3B0 002E6970  50 87 07 3E */	rlwimi r7, r4, 0, 0x1c, 0x1f
/* 8031D3B4 002E6974  50 A7 26 36 */	rlwimi r7, r5, 4, 0x18, 0x1b
/* 8031D3B8 002E6978  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 8031D3BC 002E697C  90 E8 01 7C */	stw r7, 0x17c(r8)
/* 8031D3C0 002E6980  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031D3C4 002E6984  80 08 01 7C */	lwz r0, 0x17c(r8)
/* 8031D3C8 002E6988  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8031D3CC 002E698C  48 00 00 34 */	b lbl_8031D400
lbl_8031D3D0:
/* 8031D3D0 002E6990  81 02 BC 20 */	lwz r8, lbl_8066BFA0@sda21(r2)
/* 8031D3D4 002E6994  38 C0 00 26 */	li r6, 0x26
/* 8031D3D8 002E6998  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031D3DC 002E699C  38 00 00 61 */	li r0, 0x61
/* 8031D3E0 002E69A0  80 E8 01 7C */	lwz r7, 0x17c(r8)
/* 8031D3E4 002E69A4  50 87 45 2E */	rlwimi r7, r4, 8, 0x14, 0x17
/* 8031D3E8 002E69A8  50 A7 64 26 */	rlwimi r7, r5, 0xc, 0x10, 0x13
/* 8031D3EC 002E69AC  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 8031D3F0 002E69B0  90 E8 01 7C */	stw r7, 0x17c(r8)
/* 8031D3F4 002E69B4  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031D3F8 002E69B8  80 08 01 7C */	lwz r0, 0x17c(r8)
/* 8031D3FC 002E69BC  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_8031D400:
/* 8031D400 002E69C0  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031D404 002E69C4  38 00 00 00 */	li r0, 0
/* 8031D408 002E69C8  B0 03 00 02 */	sth r0, 2(r3)
/* 8031D40C 002E69CC  4E 80 00 20 */	blr 

.global func_8031D410
func_8031D410:
/* 8031D410 002E69D0  2C 05 00 FF */	cmpwi r5, 0xff
/* 8031D414 002E69D4  40 82 00 08 */	bne lbl_8031D41C
/* 8031D418 002E69D8  38 A0 00 00 */	li r5, 0
lbl_8031D41C:
/* 8031D41C 002E69DC  2C 04 00 FF */	cmpwi r4, 0xff
/* 8031D420 002E69E0  40 82 00 08 */	bne lbl_8031D428
/* 8031D424 002E69E4  38 80 00 00 */	li r4, 0
lbl_8031D428:
/* 8031D428 002E69E8  2C 03 00 00 */	cmpwi r3, 0
/* 8031D42C 002E69EC  41 82 00 20 */	beq lbl_8031D44C
/* 8031D430 002E69F0  2C 03 00 01 */	cmpwi r3, 1
/* 8031D434 002E69F4  41 82 00 30 */	beq lbl_8031D464
/* 8031D438 002E69F8  2C 03 00 02 */	cmpwi r3, 2
/* 8031D43C 002E69FC  41 82 00 40 */	beq lbl_8031D47C
/* 8031D440 002E6A00  2C 03 00 03 */	cmpwi r3, 3
/* 8031D444 002E6A04  41 82 00 50 */	beq lbl_8031D494
/* 8031D448 002E6A08  48 00 00 60 */	b lbl_8031D4A8
lbl_8031D44C:
/* 8031D44C 002E6A0C  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031D450 002E6A10  80 03 01 70 */	lwz r0, 0x170(r3)
/* 8031D454 002E6A14  50 A0 07 7E */	rlwimi r0, r5, 0, 0x1d, 0x1f
/* 8031D458 002E6A18  50 80 1E B8 */	rlwimi r0, r4, 3, 0x1a, 0x1c
/* 8031D45C 002E6A1C  90 03 01 70 */	stw r0, 0x170(r3)
/* 8031D460 002E6A20  48 00 00 48 */	b lbl_8031D4A8
lbl_8031D464:
/* 8031D464 002E6A24  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031D468 002E6A28  80 03 01 70 */	lwz r0, 0x170(r3)
/* 8031D46C 002E6A2C  50 A0 35 F2 */	rlwimi r0, r5, 6, 0x17, 0x19
/* 8031D470 002E6A30  50 80 4D 2C */	rlwimi r0, r4, 9, 0x14, 0x16
/* 8031D474 002E6A34  90 03 01 70 */	stw r0, 0x170(r3)
/* 8031D478 002E6A38  48 00 00 30 */	b lbl_8031D4A8
lbl_8031D47C:
/* 8031D47C 002E6A3C  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031D480 002E6A40  80 03 01 70 */	lwz r0, 0x170(r3)
/* 8031D484 002E6A44  50 A0 64 66 */	rlwimi r0, r5, 0xc, 0x11, 0x13
/* 8031D488 002E6A48  50 80 7B A0 */	rlwimi r0, r4, 0xf, 0xe, 0x10
/* 8031D48C 002E6A4C  90 03 01 70 */	stw r0, 0x170(r3)
/* 8031D490 002E6A50  48 00 00 18 */	b lbl_8031D4A8
lbl_8031D494:
/* 8031D494 002E6A54  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031D498 002E6A58  80 03 01 70 */	lwz r0, 0x170(r3)
/* 8031D49C 002E6A5C  50 A0 92 DA */	rlwimi r0, r5, 0x12, 0xb, 0xd
/* 8031D4A0 002E6A60  50 80 AA 14 */	rlwimi r0, r4, 0x15, 8, 0xa
/* 8031D4A4 002E6A64  90 03 01 70 */	stw r0, 0x170(r3)
lbl_8031D4A8:
/* 8031D4A8 002E6A68  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031D4AC 002E6A6C  38 00 00 61 */	li r0, 0x61
/* 8031D4B0 002E6A70  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8031D4B4 002E6A74  38 00 00 00 */	li r0, 0
/* 8031D4B8 002E6A78  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031D4BC 002E6A7C  80 65 01 70 */	lwz r3, 0x170(r5)
/* 8031D4C0 002E6A80  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8031D4C4 002E6A84  80 65 05 FC */	lwz r3, 0x5fc(r5)
/* 8031D4C8 002E6A88  60 63 00 03 */	ori r3, r3, 3
/* 8031D4CC 002E6A8C  90 65 05 FC */	stw r3, 0x5fc(r5)
/* 8031D4D0 002E6A90  B0 05 00 02 */	sth r0, 2(r5)
/* 8031D4D4 002E6A94  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetNumIndStages
GXSetNumIndStages:
/* 8031D4E0 002E6AA0  80 82 BC 20 */	lwz r4, lbl_8066BFA0@sda21(r2)
/* 8031D4E4 002E6AA4  80 04 02 54 */	lwz r0, 0x254(r4)
/* 8031D4E8 002E6AA8  50 60 83 5E */	rlwimi r0, r3, 0x10, 0xd, 0xf
/* 8031D4EC 002E6AAC  90 04 02 54 */	stw r0, 0x254(r4)
/* 8031D4F0 002E6AB0  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 8031D4F4 002E6AB4  60 00 00 06 */	ori r0, r0, 6
/* 8031D4F8 002E6AB8  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 8031D4FC 002E6ABC  4E 80 00 20 */	blr 

.global func_8031D500
func_8031D500:
/* 8031D500 002E6AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031D504 002E6AC4  7C 08 02 A6 */	mflr r0
/* 8031D508 002E6AC8  38 80 00 00 */	li r4, 0
/* 8031D50C 002E6ACC  38 A0 00 00 */	li r5, 0
/* 8031D510 002E6AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031D514 002E6AD4  38 00 00 00 */	li r0, 0
/* 8031D518 002E6AD8  38 C0 00 00 */	li r6, 0
/* 8031D51C 002E6ADC  38 E0 00 00 */	li r7, 0
/* 8031D520 002E6AE0  90 01 00 08 */	stw r0, 8(r1)
/* 8031D524 002E6AE4  39 00 00 00 */	li r8, 0
/* 8031D528 002E6AE8  39 20 00 00 */	li r9, 0
/* 8031D52C 002E6AEC  39 40 00 00 */	li r10, 0
/* 8031D530 002E6AF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8031D534 002E6AF4  4B FF FC 2D */	bl func_8031D160
/* 8031D538 002E6AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031D53C 002E6AFC  7C 08 03 A6 */	mtlr r0
/* 8031D540 002E6B00  38 21 00 10 */	addi r1, r1, 0x10
/* 8031D544 002E6B04  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8031D550
func_8031D550:
/* 8031D550 002E6B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031D554 002E6B14  7C 08 02 A6 */	mflr r0
/* 8031D558 002E6B18  2C 06 00 00 */	cmpwi r6, 0
/* 8031D55C 002E6B1C  39 00 00 00 */	li r8, 0
/* 8031D560 002E6B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031D564 002E6B24  41 82 00 08 */	beq lbl_8031D56C
/* 8031D568 002E6B28  39 00 00 06 */	li r8, 6
lbl_8031D56C:
/* 8031D56C 002E6B2C  38 C0 00 00 */	li r6, 0
/* 8031D570 002E6B30  90 C1 00 08 */	stw r6, 8(r1)
/* 8031D574 002E6B34  2C 05 00 00 */	cmpwi r5, 0
/* 8031D578 002E6B38  38 A0 00 00 */	li r5, 0
/* 8031D57C 002E6B3C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8031D580 002E6B40  41 82 00 08 */	beq lbl_8031D588
/* 8031D584 002E6B44  38 C0 00 07 */	li r6, 7
lbl_8031D588:
/* 8031D588 002E6B48  7D 09 43 78 */	mr r9, r8
/* 8031D58C 002E6B4C  39 40 00 00 */	li r10, 0
/* 8031D590 002E6B50  4B FF FB D1 */	bl func_8031D160
/* 8031D594 002E6B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031D598 002E6B58  7C 08 03 A6 */	mtlr r0
/* 8031D59C 002E6B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8031D5A0 002E6B60  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8031D5B0
func_8031D5B0:
/* 8031D5B0 002E6B70  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8031D5C0
func_8031D5C0:
/* 8031D5C0 002E6B80  80 E2 BC 20 */	lwz r7, lbl_8066BFA0@sda21(r2)
/* 8031D5C4 002E6B84  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031D5C8 002E6B88  38 A0 00 61 */	li r5, 0x61
/* 8031D5CC 002E6B8C  38 00 00 00 */	li r0, 0
/* 8031D5D0 002E6B90  80 C7 01 74 */	lwz r6, 0x174(r7)
/* 8031D5D4 002E6B94  50 66 06 3E */	rlwimi r6, r3, 0, 0x18, 0x1f
/* 8031D5D8 002E6B98  90 C7 01 74 */	stw r6, 0x174(r7)
/* 8031D5DC 002E6B9C  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8031D5E0 002E6BA0  80 67 01 74 */	lwz r3, 0x174(r7)
/* 8031D5E4 002E6BA4  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8031D5E8 002E6BA8  B0 07 00 02 */	sth r0, 2(r7)
/* 8031D5EC 002E6BAC  4E 80 00 20 */	blr 

.global func_8031D5F0
func_8031D5F0:
/* 8031D5F0 002E6BB0  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031D5F4 002E6BB4  38 00 00 61 */	li r0, 0x61
/* 8031D5F8 002E6BB8  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8031D5FC 002E6BBC  38 00 00 00 */	li r0, 0
/* 8031D600 002E6BC0  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031D604 002E6BC4  80 65 01 74 */	lwz r3, 0x174(r5)
/* 8031D608 002E6BC8  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8031D60C 002E6BCC  B0 05 00 02 */	sth r0, 2(r5)
/* 8031D610 002E6BD0  4E 80 00 20 */	blr 
.balign 16, 0