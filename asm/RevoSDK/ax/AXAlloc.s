.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __AXGetStackHead
__AXGetStackHead:
/* 802D2110 0029B6D0  3C 80 80 58 */	lis r4, lbl_8057D828@ha
/* 802D2114 0029B6D4  54 60 10 3A */	slwi r0, r3, 2
/* 802D2118 0029B6D8  38 84 D8 28 */	addi r4, r4, lbl_8057D828@l
/* 802D211C 0029B6DC  7C 64 00 2E */	lwzx r3, r4, r0
/* 802D2120 0029B6E0  4E 80 00 20 */	blr 

.balign 16, 0
.global __AXServiceCallbackStack
__AXServiceCallbackStack:
/* 802D2130 0029B6F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D2134 0029B6F4  7C 08 02 A6 */	mflr r0
/* 802D2138 0029B6F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D213C 0029B6FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D2140 0029B700  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D2144 0029B704  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D2148 0029B708  83 AD B4 90 */	lwz r29, lbl_80667610@sda21(r13)
/* 802D214C 0029B70C  2C 1D 00 00 */	cmpwi r29, 0
/* 802D2150 0029B710  41 82 00 0C */	beq lbl_802D215C
/* 802D2154 0029B714  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D2158 0029B718  90 0D B4 90 */	stw r0, lbl_80667610@sda21(r13)
lbl_802D215C:
/* 802D215C 0029B71C  3F C0 80 58 */	lis r30, lbl_8057D828@ha
/* 802D2160 0029B720  3B E0 00 00 */	li r31, 0
/* 802D2164 0029B724  48 00 00 54 */	b lbl_802D21B8
lbl_802D2168:
/* 802D2168 0029B728  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802D216C 0029B72C  2C 00 00 00 */	cmpwi r0, 0
/* 802D2170 0029B730  41 82 00 34 */	beq lbl_802D21A4
/* 802D2174 0029B734  81 9D 00 10 */	lwz r12, 0x10(r29)
/* 802D2178 0029B738  2C 0C 00 00 */	cmpwi r12, 0
/* 802D217C 0029B73C  41 82 00 10 */	beq lbl_802D218C
/* 802D2180 0029B740  7F A3 EB 78 */	mr r3, r29
/* 802D2184 0029B744  7D 89 03 A6 */	mtctr r12
/* 802D2188 0029B748  4E 80 04 21 */	bctrl 
lbl_802D218C:
/* 802D218C 0029B74C  7F A3 EB 78 */	mr r3, r29
/* 802D2190 0029B750  48 00 01 E1 */	bl __AXRemoveFromStack
/* 802D2194 0029B754  80 1E D8 28 */	lwz r0, lbl_8057D828@l(r30)
/* 802D2198 0029B758  90 1D 00 00 */	stw r0, 0(r29)
/* 802D219C 0029B75C  93 BE D8 28 */	stw r29, lbl_8057D828@l(r30)
/* 802D21A0 0029B760  93 FD 00 0C */	stw r31, 0xc(r29)
lbl_802D21A4:
/* 802D21A4 0029B764  83 AD B4 90 */	lwz r29, lbl_80667610@sda21(r13)
/* 802D21A8 0029B768  2C 1D 00 00 */	cmpwi r29, 0
/* 802D21AC 0029B76C  41 82 00 0C */	beq lbl_802D21B8
/* 802D21B0 0029B770  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D21B4 0029B774  90 0D B4 90 */	stw r0, lbl_80667610@sda21(r13)
lbl_802D21B8:
/* 802D21B8 0029B778  2C 1D 00 00 */	cmpwi r29, 0
/* 802D21BC 0029B77C  40 82 FF AC */	bne lbl_802D2168
/* 802D21C0 0029B780  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D21C4 0029B784  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D21C8 0029B788  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D21CC 0029B78C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D21D0 0029B790  7C 08 03 A6 */	mtlr r0
/* 802D21D4 0029B794  38 21 00 20 */	addi r1, r1, 0x20
/* 802D21D8 0029B798  4E 80 00 20 */	blr 

.balign 16, 0
.global __AXAllocInit
__AXAllocInit:
/* 802D21E0 0029B7A0  3C 80 80 58 */	lis r4, lbl_8057D8A8@ha
/* 802D21E4 0029B7A4  3C A0 80 58 */	lis r5, lbl_8057D828@ha
/* 802D21E8 0029B7A8  38 60 00 00 */	li r3, 0
/* 802D21EC 0029B7AC  38 00 00 02 */	li r0, 2
/* 802D21F0 0029B7B0  90 6D B4 90 */	stw r3, lbl_80667610@sda21(r13)
/* 802D21F4 0029B7B4  38 84 D8 A8 */	addi r4, r4, lbl_8057D8A8@l
/* 802D21F8 0029B7B8  38 A5 D8 28 */	addi r5, r5, lbl_8057D828@l
/* 802D21FC 0029B7BC  7C 09 03 A6 */	mtctr r0
lbl_802D2200:
/* 802D2200 0029B7C0  90 64 00 00 */	stw r3, 0(r4)
/* 802D2204 0029B7C4  90 65 00 00 */	stw r3, 0(r5)
/* 802D2208 0029B7C8  90 64 00 04 */	stw r3, 4(r4)
/* 802D220C 0029B7CC  90 65 00 04 */	stw r3, 4(r5)
/* 802D2210 0029B7D0  90 64 00 08 */	stw r3, 8(r4)
/* 802D2214 0029B7D4  90 65 00 08 */	stw r3, 8(r5)
/* 802D2218 0029B7D8  90 64 00 0C */	stw r3, 0xc(r4)
/* 802D221C 0029B7DC  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D2220 0029B7E0  90 64 00 10 */	stw r3, 0x10(r4)
/* 802D2224 0029B7E4  90 65 00 10 */	stw r3, 0x10(r5)
/* 802D2228 0029B7E8  90 64 00 14 */	stw r3, 0x14(r4)
/* 802D222C 0029B7EC  90 65 00 14 */	stw r3, 0x14(r5)
/* 802D2230 0029B7F0  90 64 00 18 */	stw r3, 0x18(r4)
/* 802D2234 0029B7F4  90 65 00 18 */	stw r3, 0x18(r5)
/* 802D2238 0029B7F8  90 64 00 1C */	stw r3, 0x1c(r4)
/* 802D223C 0029B7FC  90 65 00 1C */	stw r3, 0x1c(r5)
/* 802D2240 0029B800  90 64 00 20 */	stw r3, 0x20(r4)
/* 802D2244 0029B804  90 65 00 20 */	stw r3, 0x20(r5)
/* 802D2248 0029B808  90 64 00 24 */	stw r3, 0x24(r4)
/* 802D224C 0029B80C  90 65 00 24 */	stw r3, 0x24(r5)
/* 802D2250 0029B810  90 64 00 28 */	stw r3, 0x28(r4)
/* 802D2254 0029B814  90 65 00 28 */	stw r3, 0x28(r5)
/* 802D2258 0029B818  90 64 00 2C */	stw r3, 0x2c(r4)
/* 802D225C 0029B81C  90 65 00 2C */	stw r3, 0x2c(r5)
/* 802D2260 0029B820  90 64 00 30 */	stw r3, 0x30(r4)
/* 802D2264 0029B824  90 65 00 30 */	stw r3, 0x30(r5)
/* 802D2268 0029B828  90 64 00 34 */	stw r3, 0x34(r4)
/* 802D226C 0029B82C  90 65 00 34 */	stw r3, 0x34(r5)
/* 802D2270 0029B830  90 64 00 38 */	stw r3, 0x38(r4)
/* 802D2274 0029B834  90 65 00 38 */	stw r3, 0x38(r5)
/* 802D2278 0029B838  90 64 00 3C */	stw r3, 0x3c(r4)
/* 802D227C 0029B83C  38 84 00 40 */	addi r4, r4, 0x40
/* 802D2280 0029B840  90 65 00 3C */	stw r3, 0x3c(r5)
/* 802D2284 0029B844  38 A5 00 40 */	addi r5, r5, 0x40
/* 802D2288 0029B848  42 00 FF 78 */	bdnz lbl_802D2200
/* 802D228C 0029B84C  4E 80 00 20 */	blr 

.global __AXAllocQuit
__AXAllocQuit:
/* 802D2290 0029B850  3C 80 80 58 */	lis r4, lbl_8057D8A8@ha
/* 802D2294 0029B854  3C A0 80 58 */	lis r5, lbl_8057D828@ha
/* 802D2298 0029B858  38 60 00 00 */	li r3, 0
/* 802D229C 0029B85C  38 00 00 02 */	li r0, 2
/* 802D22A0 0029B860  90 6D B4 90 */	stw r3, lbl_80667610@sda21(r13)
/* 802D22A4 0029B864  38 84 D8 A8 */	addi r4, r4, lbl_8057D8A8@l
/* 802D22A8 0029B868  38 A5 D8 28 */	addi r5, r5, lbl_8057D828@l
/* 802D22AC 0029B86C  7C 09 03 A6 */	mtctr r0
lbl_802D22B0:
/* 802D22B0 0029B870  90 64 00 00 */	stw r3, 0(r4)
/* 802D22B4 0029B874  90 65 00 00 */	stw r3, 0(r5)
/* 802D22B8 0029B878  90 64 00 04 */	stw r3, 4(r4)
/* 802D22BC 0029B87C  90 65 00 04 */	stw r3, 4(r5)
/* 802D22C0 0029B880  90 64 00 08 */	stw r3, 8(r4)
/* 802D22C4 0029B884  90 65 00 08 */	stw r3, 8(r5)
/* 802D22C8 0029B888  90 64 00 0C */	stw r3, 0xc(r4)
/* 802D22CC 0029B88C  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D22D0 0029B890  90 64 00 10 */	stw r3, 0x10(r4)
/* 802D22D4 0029B894  90 65 00 10 */	stw r3, 0x10(r5)
/* 802D22D8 0029B898  90 64 00 14 */	stw r3, 0x14(r4)
/* 802D22DC 0029B89C  90 65 00 14 */	stw r3, 0x14(r5)
/* 802D22E0 0029B8A0  90 64 00 18 */	stw r3, 0x18(r4)
/* 802D22E4 0029B8A4  90 65 00 18 */	stw r3, 0x18(r5)
/* 802D22E8 0029B8A8  90 64 00 1C */	stw r3, 0x1c(r4)
/* 802D22EC 0029B8AC  90 65 00 1C */	stw r3, 0x1c(r5)
/* 802D22F0 0029B8B0  90 64 00 20 */	stw r3, 0x20(r4)
/* 802D22F4 0029B8B4  90 65 00 20 */	stw r3, 0x20(r5)
/* 802D22F8 0029B8B8  90 64 00 24 */	stw r3, 0x24(r4)
/* 802D22FC 0029B8BC  90 65 00 24 */	stw r3, 0x24(r5)
/* 802D2300 0029B8C0  90 64 00 28 */	stw r3, 0x28(r4)
/* 802D2304 0029B8C4  90 65 00 28 */	stw r3, 0x28(r5)
/* 802D2308 0029B8C8  90 64 00 2C */	stw r3, 0x2c(r4)
/* 802D230C 0029B8CC  90 65 00 2C */	stw r3, 0x2c(r5)
/* 802D2310 0029B8D0  90 64 00 30 */	stw r3, 0x30(r4)
/* 802D2314 0029B8D4  90 65 00 30 */	stw r3, 0x30(r5)
/* 802D2318 0029B8D8  90 64 00 34 */	stw r3, 0x34(r4)
/* 802D231C 0029B8DC  90 65 00 34 */	stw r3, 0x34(r5)
/* 802D2320 0029B8E0  90 64 00 38 */	stw r3, 0x38(r4)
/* 802D2324 0029B8E4  90 65 00 38 */	stw r3, 0x38(r5)
/* 802D2328 0029B8E8  90 64 00 3C */	stw r3, 0x3c(r4)
/* 802D232C 0029B8EC  38 84 00 40 */	addi r4, r4, 0x40
/* 802D2330 0029B8F0  90 65 00 3C */	stw r3, 0x3c(r5)
/* 802D2334 0029B8F4  38 A5 00 40 */	addi r5, r5, 0x40
/* 802D2338 0029B8F8  42 00 FF 78 */	bdnz lbl_802D22B0
/* 802D233C 0029B8FC  4E 80 00 20 */	blr 

.global __AXPushFreeStack
__AXPushFreeStack:
/* 802D2340 0029B900  3C A0 80 58 */	lis r5, lbl_8057D828@ha
/* 802D2344 0029B904  38 00 00 00 */	li r0, 0
/* 802D2348 0029B908  80 85 D8 28 */	lwz r4, lbl_8057D828@l(r5)
/* 802D234C 0029B90C  90 83 00 00 */	stw r4, 0(r3)
/* 802D2350 0029B910  90 65 D8 28 */	stw r3, lbl_8057D828@l(r5)
/* 802D2354 0029B914  90 03 00 0C */	stw r0, 0xc(r3)
/* 802D2358 0029B918  4E 80 00 20 */	blr 

.balign 16, 0
.global __AXPushCallbackStack
__AXPushCallbackStack:
/* 802D2360 0029B920  80 0D B4 90 */	lwz r0, lbl_80667610@sda21(r13)
/* 802D2364 0029B924  90 03 00 08 */	stw r0, 8(r3)
/* 802D2368 0029B928  90 6D B4 90 */	stw r3, lbl_80667610@sda21(r13)
/* 802D236C 0029B92C  4E 80 00 20 */	blr 

.global __AXRemoveFromStack
__AXRemoveFromStack:
/* 802D2370 0029B930  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D2374 0029B934  3C A0 80 58 */	lis r5, lbl_8057D828@ha
/* 802D2378 0029B938  3C 80 80 58 */	lis r4, lbl_8057D8A8@ha
/* 802D237C 0029B93C  54 06 10 3A */	slwi r6, r0, 2
/* 802D2380 0029B940  38 A5 D8 28 */	addi r5, r5, lbl_8057D828@l
/* 802D2384 0029B944  38 84 D8 A8 */	addi r4, r4, lbl_8057D8A8@l
/* 802D2388 0029B948  7C 05 30 2E */	lwzx r0, r5, r6
/* 802D238C 0029B94C  7C E4 30 2E */	lwzx r7, r4, r6
/* 802D2390 0029B950  7C 00 38 40 */	cmplw r0, r7
/* 802D2394 0029B954  40 82 00 14 */	bne lbl_802D23A8
/* 802D2398 0029B958  38 00 00 00 */	li r0, 0
/* 802D239C 0029B95C  7C 04 31 2E */	stwx r0, r4, r6
/* 802D23A0 0029B960  7C 05 31 2E */	stwx r0, r5, r6
/* 802D23A4 0029B964  4E 80 00 20 */	blr
lbl_802D23A8:
/* 802D23A8 0029B968  7C 03 00 40 */	cmplw r3, r0
/* 802D23AC 0029B96C  40 82 00 18 */	bne lbl_802D23C4
/* 802D23B0 0029B970  80 63 00 00 */	lwz r3, 0(r3)
/* 802D23B4 0029B974  38 00 00 00 */	li r0, 0
/* 802D23B8 0029B978  7C 65 31 2E */	stwx r3, r5, r6
/* 802D23BC 0029B97C  90 03 00 04 */	stw r0, 4(r3)
/* 802D23C0 0029B980  4E 80 00 20 */	blr
lbl_802D23C4:
/* 802D23C4 0029B984  7C 03 38 40 */	cmplw r3, r7
/* 802D23C8 0029B988  40 82 00 18 */	bne lbl_802D23E0
/* 802D23CC 0029B98C  80 63 00 04 */	lwz r3, 4(r3)
/* 802D23D0 0029B990  38 00 00 00 */	li r0, 0
/* 802D23D4 0029B994  7C 64 31 2E */	stwx r3, r4, r6
/* 802D23D8 0029B998  90 03 00 00 */	stw r0, 0(r3)
/* 802D23DC 0029B99C  4E 80 00 20 */	blr
lbl_802D23E0:
/* 802D23E0 0029B9A0  80 83 00 04 */	lwz r4, 4(r3)
/* 802D23E4 0029B9A4  80 63 00 00 */	lwz r3, 0(r3)
/* 802D23E8 0029B9A8  90 64 00 00 */	stw r3, 0(r4)
/* 802D23EC 0029B9AC  90 83 00 04 */	stw r4, 4(r3)
/* 802D23F0 0029B9B0  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFreeVoice
AXFreeVoice:
/* 802D2400 0029B9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2404 0029B9C4  7C 08 02 A6 */	mflr r0
/* 802D2408 0029B9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D240C 0029B9CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D2410 0029B9D0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D2414 0029B9D4  7C 7E 1B 78 */	mr r30, r3
/* 802D2418 0029B9D8  48 08 65 99 */	bl OSDisableInterrupts
/* 802D241C 0029B9DC  7C 7F 1B 78 */	mr r31, r3
/* 802D2420 0029B9E0  7F C3 F3 78 */	mr r3, r30
/* 802D2424 0029B9E4  4B FF FF 4D */	bl __AXRemoveFromStack
/* 802D2428 0029B9E8  A0 1E 00 38 */	lhz r0, 0x38(r30)
/* 802D242C 0029B9EC  28 00 00 01 */	cmplwi r0, 1
/* 802D2430 0029B9F0  40 82 00 0C */	bne lbl_802D243C
/* 802D2434 0029B9F4  38 00 00 01 */	li r0, 1
/* 802D2438 0029B9F8  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_802D243C:
/* 802D243C 0029B9FC  7F C3 F3 78 */	mr r3, r30
/* 802D2440 0029BA00  48 00 2B A1 */	bl __AXSetPBDefault
/* 802D2444 0029BA04  3C A0 80 58 */	lis r5, lbl_8057D828@ha
/* 802D2448 0029BA08  38 00 00 00 */	li r0, 0
/* 802D244C 0029BA0C  80 85 D8 28 */	lwz r4, lbl_8057D828@l(r5)
/* 802D2450 0029BA10  7F E3 FB 78 */	mr r3, r31
/* 802D2454 0029BA14  90 9E 00 00 */	stw r4, 0(r30)
/* 802D2458 0029BA18  93 C5 D8 28 */	stw r30, lbl_8057D828@l(r5)
/* 802D245C 0029BA1C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802D2460 0029BA20  48 08 65 91 */	bl OSRestoreInterrupts
/* 802D2464 0029BA24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2468 0029BA28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D246C 0029BA2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D2470 0029BA30  7C 08 03 A6 */	mtlr r0
/* 802D2474 0029BA34  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2478 0029BA38  4E 80 00 20 */	blr 

.balign 16, 0
.global AXAcquireVoice
AXAcquireVoice:
/* 802D2480 0029BA40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D2484 0029BA44  7C 08 02 A6 */	mflr r0
/* 802D2488 0029BA48  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D248C 0029BA4C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D2490 0029BA50  4B FE 7C C5 */	bl _savegpr_27
/* 802D2494 0029BA54  7C 7B 1B 78 */	mr r27, r3
/* 802D2498 0029BA58  7C 9C 23 78 */	mr r28, r4
/* 802D249C 0029BA5C  7C BD 2B 78 */	mr r29, r5
/* 802D24A0 0029BA60  48 08 65 11 */	bl OSDisableInterrupts
/* 802D24A4 0029BA64  3C 80 80 58 */	lis r4, lbl_8057D828@ha
/* 802D24A8 0029BA68  7C 7F 1B 78 */	mr r31, r3
/* 802D24AC 0029BA6C  83 C4 D8 28 */	lwz r30, lbl_8057D828@l(r4)
/* 802D24B0 0029BA70  2C 1E 00 00 */	cmpwi r30, 0
/* 802D24B4 0029BA74  41 82 00 0C */	beq lbl_802D24C0
/* 802D24B8 0029BA78  80 1E 00 00 */	lwz r0, 0(r30)
/* 802D24BC 0029BA7C  90 04 D8 28 */	stw r0, lbl_8057D828@l(r4)
lbl_802D24C0:
/* 802D24C0 0029BA80  2C 1E 00 00 */	cmpwi r30, 0
/* 802D24C4 0029BA84  40 82 00 BC */	bne lbl_802D2580
/* 802D24C8 0029BA88  3C 60 80 58 */	lis r3, lbl_8057D828@ha
/* 802D24CC 0029BA8C  3C 80 80 58 */	lis r4, lbl_8057D8A8@ha
/* 802D24D0 0029BA90  38 63 D8 28 */	addi r3, r3, lbl_8057D828@l
/* 802D24D4 0029BA94  38 1B FF FF */	addi r0, r27, -1
/* 802D24D8 0029BA98  38 84 D8 A8 */	addi r4, r4, lbl_8057D8A8@l
/* 802D24DC 0029BA9C  38 A3 00 04 */	addi r5, r3, 4
/* 802D24E0 0029BAA0  38 60 00 00 */	li r3, 0
/* 802D24E4 0029BAA4  38 C4 00 04 */	addi r6, r4, 4
/* 802D24E8 0029BAA8  7C 09 03 A6 */	mtctr r0
/* 802D24EC 0029BAAC  28 1B 00 01 */	cmplwi r27, 1
/* 802D24F0 0029BAB0  40 81 00 90 */	ble lbl_802D2580
/* 802D24F4 0029BAB4  60 00 00 00 */	nop 
lbl_802D24F8:
/* 802D24F8 0029BAB8  80 05 00 00 */	lwz r0, 0(r5)
/* 802D24FC 0029BABC  3B C0 00 00 */	li r30, 0
/* 802D2500 0029BAC0  2C 00 00 00 */	cmpwi r0, 0
/* 802D2504 0029BAC4  41 82 00 38 */	beq lbl_802D253C
/* 802D2508 0029BAC8  80 E6 00 00 */	lwz r7, 0(r6)
/* 802D250C 0029BACC  7C 00 38 40 */	cmplw r0, r7
/* 802D2510 0029BAD0  40 82 00 14 */	bne lbl_802D2524
/* 802D2514 0029BAD4  90 66 00 00 */	stw r3, 0(r6)
/* 802D2518 0029BAD8  7C 1E 03 78 */	mr r30, r0
/* 802D251C 0029BADC  90 65 00 00 */	stw r3, 0(r5)
/* 802D2520 0029BAE0  48 00 00 1C */	b lbl_802D253C
lbl_802D2524:
/* 802D2524 0029BAE4  2C 07 00 00 */	cmpwi r7, 0
/* 802D2528 0029BAE8  41 82 00 14 */	beq lbl_802D253C
/* 802D252C 0029BAEC  80 87 00 04 */	lwz r4, 4(r7)
/* 802D2530 0029BAF0  7C FE 3B 78 */	mr r30, r7
/* 802D2534 0029BAF4  90 86 00 00 */	stw r4, 0(r6)
/* 802D2538 0029BAF8  90 64 00 00 */	stw r3, 0(r4)
lbl_802D253C:
/* 802D253C 0029BAFC  2C 1E 00 00 */	cmpwi r30, 0
/* 802D2540 0029BB00  41 82 00 34 */	beq lbl_802D2574
/* 802D2544 0029BB04  A0 1E 00 38 */	lhz r0, 0x38(r30)
/* 802D2548 0029BB08  28 00 00 01 */	cmplwi r0, 1
/* 802D254C 0029BB0C  40 82 00 0C */	bne lbl_802D2558
/* 802D2550 0029BB10  38 00 00 01 */	li r0, 1
/* 802D2554 0029BB14  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_802D2558:
/* 802D2558 0029BB18  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 802D255C 0029BB1C  2C 0C 00 00 */	cmpwi r12, 0
/* 802D2560 0029BB20  41 82 00 20 */	beq lbl_802D2580
/* 802D2564 0029BB24  7F C3 F3 78 */	mr r3, r30
/* 802D2568 0029BB28  7D 89 03 A6 */	mtctr r12
/* 802D256C 0029BB2C  4E 80 04 21 */	bctrl 
/* 802D2570 0029BB30  48 00 00 10 */	b lbl_802D2580
lbl_802D2574:
/* 802D2574 0029BB34  38 A5 00 04 */	addi r5, r5, 4
/* 802D2578 0029BB38  38 C6 00 04 */	addi r6, r6, 4
/* 802D257C 0029BB3C  42 00 FF 7C */	bdnz lbl_802D24F8
lbl_802D2580:
/* 802D2580 0029BB40  2C 1E 00 00 */	cmpwi r30, 0
/* 802D2584 0029BB44  41 82 00 5C */	beq lbl_802D25E0
/* 802D2588 0029BB48  3C 80 80 58 */	lis r4, lbl_8057D828@ha
/* 802D258C 0029BB4C  57 65 10 3A */	slwi r5, r27, 2
/* 802D2590 0029BB50  38 84 D8 28 */	addi r4, r4, lbl_8057D828@l
/* 802D2594 0029BB54  38 00 00 00 */	li r0, 0
/* 802D2598 0029BB58  7C 64 28 2E */	lwzx r3, r4, r5
/* 802D259C 0029BB5C  90 7E 00 00 */	stw r3, 0(r30)
/* 802D25A0 0029BB60  2C 03 00 00 */	cmpwi r3, 0
/* 802D25A4 0029BB64  90 1E 00 04 */	stw r0, 4(r30)
/* 802D25A8 0029BB68  41 82 00 14 */	beq lbl_802D25BC
/* 802D25AC 0029BB6C  7C 64 28 2E */	lwzx r3, r4, r5
/* 802D25B0 0029BB70  93 C3 00 04 */	stw r30, 4(r3)
/* 802D25B4 0029BB74  7F C4 29 2E */	stwx r30, r4, r5
/* 802D25B8 0029BB78  48 00 00 14 */	b lbl_802D25CC
lbl_802D25BC:
/* 802D25BC 0029BB7C  3C 60 80 58 */	lis r3, lbl_8057D8A8@ha
/* 802D25C0 0029BB80  7F C4 29 2E */	stwx r30, r4, r5
/* 802D25C4 0029BB84  38 63 D8 A8 */	addi r3, r3, lbl_8057D8A8@l
/* 802D25C8 0029BB88  7F C3 29 2E */	stwx r30, r3, r5
lbl_802D25CC:
/* 802D25CC 0029BB8C  93 7E 00 0C */	stw r27, 0xc(r30)
/* 802D25D0 0029BB90  7F C3 F3 78 */	mr r3, r30
/* 802D25D4 0029BB94  93 9E 00 10 */	stw r28, 0x10(r30)
/* 802D25D8 0029BB98  93 BE 00 14 */	stw r29, 0x14(r30)
/* 802D25DC 0029BB9C  48 00 2A 05 */	bl __AXSetPBDefault
lbl_802D25E0:
/* 802D25E0 0029BBA0  7F E3 FB 78 */	mr r3, r31
/* 802D25E4 0029BBA4  48 08 64 0D */	bl OSRestoreInterrupts
/* 802D25E8 0029BBA8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D25EC 0029BBAC  7F C3 F3 78 */	mr r3, r30
/* 802D25F0 0029BBB0  4B FE 7B B1 */	bl _restgpr_27
/* 802D25F4 0029BBB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D25F8 0029BBB8  7C 08 03 A6 */	mtlr r0
/* 802D25FC 0029BBBC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D2600 0029BBC0  4E 80 00 20 */	blr 

.balign 16, 0
.global AXSetVoicePriority
AXSetVoicePriority:
/* 802D2610 0029BBD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D2614 0029BBD4  7C 08 02 A6 */	mflr r0
/* 802D2618 0029BBD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D261C 0029BBDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D2620 0029BBE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D2624 0029BBE4  7C 9E 23 78 */	mr r30, r4
/* 802D2628 0029BBE8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D262C 0029BBEC  7C 7D 1B 78 */	mr r29, r3
/* 802D2630 0029BBF0  48 08 63 81 */	bl OSDisableInterrupts
/* 802D2634 0029BBF4  7C 7F 1B 78 */	mr r31, r3
/* 802D2638 0029BBF8  7F A3 EB 78 */	mr r3, r29
/* 802D263C 0029BBFC  4B FF FD 35 */	bl __AXRemoveFromStack
/* 802D2640 0029BC00  3C 80 80 58 */	lis r4, lbl_8057D828@ha
/* 802D2644 0029BC04  57 C5 10 3A */	slwi r5, r30, 2
/* 802D2648 0029BC08  38 84 D8 28 */	addi r4, r4, lbl_8057D828@l
/* 802D264C 0029BC0C  38 00 00 00 */	li r0, 0
/* 802D2650 0029BC10  7C 64 28 2E */	lwzx r3, r4, r5
/* 802D2654 0029BC14  90 7D 00 00 */	stw r3, 0(r29)
/* 802D2658 0029BC18  2C 03 00 00 */	cmpwi r3, 0
/* 802D265C 0029BC1C  90 1D 00 04 */	stw r0, 4(r29)
/* 802D2660 0029BC20  41 82 00 14 */	beq lbl_802D2674
/* 802D2664 0029BC24  7C 64 28 2E */	lwzx r3, r4, r5
/* 802D2668 0029BC28  93 A3 00 04 */	stw r29, 4(r3)
/* 802D266C 0029BC2C  7F A4 29 2E */	stwx r29, r4, r5
/* 802D2670 0029BC30  48 00 00 14 */	b lbl_802D2684
lbl_802D2674:
/* 802D2674 0029BC34  3C 60 80 58 */	lis r3, lbl_8057D8A8@ha
/* 802D2678 0029BC38  7F A4 29 2E */	stwx r29, r4, r5
/* 802D267C 0029BC3C  38 63 D8 A8 */	addi r3, r3, lbl_8057D8A8@l
/* 802D2680 0029BC40  7F A3 29 2E */	stwx r29, r3, r5
lbl_802D2684:
/* 802D2684 0029BC44  93 DD 00 0C */	stw r30, 0xc(r29)
/* 802D2688 0029BC48  7F E3 FB 78 */	mr r3, r31
/* 802D268C 0029BC4C  48 08 63 65 */	bl OSRestoreInterrupts
/* 802D2690 0029BC50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D2694 0029BC54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D2698 0029BC58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D269C 0029BC5C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D26A0 0029BC60  7C 08 03 A6 */	mtlr r0
/* 802D26A4 0029BC64  38 21 00 20 */	addi r1, r1, 0x20
/* 802D26A8 0029BC68  4E 80 00 20 */	blr 
.balign 16, 0