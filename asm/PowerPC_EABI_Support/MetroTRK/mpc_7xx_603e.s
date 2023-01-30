.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn TRKSaveExtended1Block, global
/* 802CD0F8 002966B8  3C 40 80 57 */	lis r2, gTRKCPUState@h
/* 802CD0FC 002966BC  60 42 D3 F8 */	ori r2, r2, gTRKCPUState@l
/* 802CD100 002966C0  7E 00 04 A6 */	mfsr r16, 0
/* 802CD104 002966C4  7E 21 04 A6 */	mfsr r17, 1
/* 802CD108 002966C8  7E 42 04 A6 */	mfsr r18, 2
/* 802CD10C 002966CC  7E 63 04 A6 */	mfsr r19, 3
/* 802CD110 002966D0  7E 84 04 A6 */	mfsr r20, 4
/* 802CD114 002966D4  7E A5 04 A6 */	mfsr r21, 5
/* 802CD118 002966D8  7E C6 04 A6 */	mfsr r22, 6
/* 802CD11C 002966DC  7E E7 04 A6 */	mfsr r23, 7
/* 802CD120 002966E0  7F 08 04 A6 */	mfsr r24, 8
/* 802CD124 002966E4  7F 29 04 A6 */	mfsr r25, 9
/* 802CD128 002966E8  7F 4A 04 A6 */	mfsr r26, 0xa
/* 802CD12C 002966EC  7F 6B 04 A6 */	mfsr r27, 0xb
/* 802CD130 002966F0  7F 8C 04 A6 */	mfsr r28, 0xc
/* 802CD134 002966F4  7F AD 04 A6 */	mfsr r29, 0xd
/* 802CD138 002966F8  7F CE 04 A6 */	mfsr r30, 0xe
/* 802CD13C 002966FC  7F EF 04 A6 */	mfsr r31, 0xf
/* 802CD140 00296700  BE 02 01 A8 */	stmw r16, 0x1a8(r2)
/* 802CD144 00296704  7F 6C 42 E6 */	mftbl r27
/* 802CD148 00296708  7F 8D 42 E6 */	mftbu r28
/* 802CD14C 0029670C  7F B0 FA A6 */	mfspr r29, 0x3f0
/* 802CD150 00296710  7F D1 FA A6 */	mfspr r30, 0x3f1
/* 802CD154 00296714  7F FB 02 A6 */	mfspr r31, 0x1b
/* 802CD158 00296718  BF 62 01 E8 */	stmw r27, 0x1e8(r2)
/* 802CD15C 0029671C  7D FF 42 A6 */	mfpvr r15
/* 802CD160 00296720  7E 10 82 A6 */	mfibatu r16, 0
/* 802CD164 00296724  7E 31 82 A6 */	mfibatl r17, 0
/* 802CD168 00296728  7E 52 82 A6 */	mfibatu r18, 1
/* 802CD16C 0029672C  7E 73 82 A6 */	mfibatl r19, 1
/* 802CD170 00296730  7E 94 82 A6 */	mfibatu r20, 2
/* 802CD174 00296734  7E B5 82 A6 */	mfibatl r21, 2
/* 802CD178 00296738  7E D6 82 A6 */	mfibatu r22, 3
/* 802CD17C 0029673C  7E F7 82 A6 */	mfibatl r23, 3
/* 802CD180 00296740  7F 18 82 A6 */	mfdbatu r24, 0
/* 802CD184 00296744  7F 39 82 A6 */	mfdbatl r25, 0
/* 802CD188 00296748  7F 5A 82 A6 */	mfdbatu r26, 1
/* 802CD18C 0029674C  7F 7B 82 A6 */	mfdbatl r27, 1
/* 802CD190 00296750  7F 9C 82 A6 */	mfdbatu r28, 2
/* 802CD194 00296754  7F BD 82 A6 */	mfdbatl r29, 2
/* 802CD198 00296758  7F DE 82 A6 */	mfdbatu r30, 3
/* 802CD19C 0029675C  7F FF 82 A6 */	mfdbatl r31, 3
/* 802CD1A0 00296760  BD E2 01 FC */	stmw r15, 0x1fc(r2)
/* 802CD1A4 00296764  7F 10 8A A6 */	mfspr r24, 0x230
/* 802CD1A8 00296768  7F 31 8A A6 */	mfspr r25, 0x231
/* 802CD1AC 0029676C  7F 52 8A A6 */	mfspr r26, 0x232
/* 802CD1B0 00296770  7F 73 8A A6 */	mfspr r27, 0x233
/* 802CD1B4 00296774  7F 94 8A A6 */	mfspr r28, 0x234
/* 802CD1B8 00296778  7F B5 8A A6 */	mfspr r29, 0x235
/* 802CD1BC 0029677C  7F D6 8A A6 */	mfspr r30, 0x236
/* 802CD1C0 00296780  7F F7 8A A6 */	mfspr r31, 0x237
/* 802CD1C4 00296784  BF 02 02 40 */	stmw r24, 0x240(r2)
/* 802CD1C8 00296788  7E D9 02 A6 */	mfspr r22, 0x19
/* 802CD1CC 0029678C  7E F3 02 A6 */	mfdar r23
/* 802CD1D0 00296790  7F 12 02 A6 */	mfdsisr r24
/* 802CD1D4 00296794  7F 30 42 A6 */	mfspr r25, 0x110
/* 802CD1D8 00296798  7F 51 42 A6 */	mfspr r26, 0x111
/* 802CD1DC 0029679C  7F 72 42 A6 */	mfspr r27, 0x112
/* 802CD1E0 002967A0  7F 93 42 A6 */	mfspr r28, 0x113
/* 802CD1E4 002967A4  7F B6 02 A6 */	mfspr r29, 0x16
/* 802CD1E8 002967A8  7F D2 FA A6 */	mfspr r30, 0x3f2
/* 802CD1EC 002967AC  7F FA 42 A6 */	mfspr r31, 0x11a
/* 802CD1F0 002967B0  BE C2 02 5C */	stmw r22, 0x25c(r2)
/* 802CD1F4 002967B4  7F 15 FA A6 */	mfspr r24, 0x3f5
/* 802CD1F8 002967B8  7F 39 EA A6 */	mfspr r25, 0x3b9
/* 802CD1FC 002967BC  7F 5A EA A6 */	mfspr r26, 0x3ba
/* 802CD200 002967C0  7F 7D EA A6 */	mfspr r27, 0x3bd
/* 802CD204 002967C4  7F 9E EA A6 */	mfspr r28, 0x3be
/* 802CD208 002967C8  7F BB EA A6 */	mfspr r29, 0x3bb
/* 802CD20C 002967CC  7F D8 EA A6 */	mfspr r30, 0x3b8
/* 802CD210 002967D0  7F FC EA A6 */	mfspr r31, 0x3bc
/* 802CD214 002967D4  BF 02 02 84 */	stmw r24, 0x284(r2)
/* 802CD218 002967D8  7F B7 8A A6 */	mfspr r29, 0x237
/* 802CD21C 002967DC  7F D8 8A A6 */	mfspr r30, 0x238
/* 802CD220 002967E0  7F F9 8A A6 */	mfspr r31, 0x239
/* 802CD224 002967E4  BF A2 02 A4 */	stmw r29, 0x2a4(r2)
/* 802CD228 002967E8  7F DB FA A6 */	mfspr r30, 0x3FB
/* 802CD22C 002967EC  7F F9 FA A6 */	mfspr r31, 0x3f9
/* 802CD230 002967F0  BF C2 02 B0 */	stmw r30, 0x2b0(r2)
/* 802CD234 002967F4  7E 1A 02 A6 */	mfspr r16, 0x1a
/* 802CD238 002967F8  92 02 02 B8 */	stw r16, 0x2b8(r2)
/* 802CD23C 002967FC  7E 3A 8A A6 */	mfspr r17, 0x23a
/* 802CD240 00296800  92 22 02 BC */	stw r17, 0x2bc(r2)
/* 802CD244 00296804  7F 28 EA A6 */	mfspr r25, 0x3a8
/* 802CD248 00296808  7F 49 EA A6 */	mfspr r26, 0x3a9
/* 802CD24C 0029680C  7F 6A EA A6 */	mfspr r27, 0x3aa
/* 802CD250 00296810  7F 8B EA A6 */	mfspr r28, 0x3ab
/* 802CD254 00296814  7F AC EA A6 */	mfspr r29, 0x3ac
/* 802CD258 00296818  7F CD EA A6 */	mfspr r30, 0x3ad
/* 802CD25C 0029681C  7F EE EA A6 */	mfspr r31, 0x3ae
/* 802CD260 00296820  BF 22 02 C0 */	stmw r25, 0x2c0(r2)
/* 802CD264 00296824  7F 3B 8A A6 */	mfspr r25, 0x23b
/* 802CD268 00296828  7F 5C 8A A6 */	mfspr r26, 0x23c
/* 802CD26C 0029682C  7F 7D 8A A6 */	mfspr r27, 0x23d
/* 802CD270 00296830  7F 9E 8A A6 */	mfspr r28, 0x23e
/* 802CD274 00296834  7F BF 8A A6 */	mfspr r29, 0x23f
/* 802CD278 00296838  7F D8 E2 A6 */	mfspr r30, 0x398
/* 802CD27C 0029683C  7F F3 FA A6 */	mfspr r31, 0x3f3
/* 802CD280 00296840  BF 22 02 DC */	stmw r25, 0x2dc(r2)
/* 802CD284 00296844  7E 90 E2 A6 */	mfspr r20, 0x390
/* 802CD288 00296848  7E B1 E2 A6 */	mfspr r21, 0x391
/* 802CD28C 0029684C  7E D2 E2 A6 */	mfspr r22, 0x392
/* 802CD290 00296850  7E F3 E2 A6 */	mfspr r23, 0x393
/* 802CD294 00296854  7F 14 E2 A6 */	mfspr r24, 0x394
/* 802CD298 00296858  7F 35 E2 A6 */	mfspr r25, 0x395
/* 802CD29C 0029685C  7F 56 E2 A6 */	mfspr r26, 0x396
/* 802CD2A0 00296860  7F 77 E2 A6 */	mfspr r27, 0x397
/* 802CD2A4 00296864  7F 98 E2 A6 */	mfspr r28, 0x398
/* 802CD2A8 00296868  7F B9 E2 A6 */	mfspr r29, 0x399
/* 802CD2AC 0029686C  7F DA E2 A6 */	mfspr r30, 0x39a
/* 802CD2B0 00296870  7F FB E2 A6 */	mfspr r31, 0x39b
/* 802CD2B4 00296874  BE 82 02 FC */	stmw r20, 0x2fc(r2)
/* 802CD2B8 00296878  4E 80 00 20 */	blr 
.endfn TRKSaveExtended1Block

.global TRKRestoreExtended1Block
TRKRestoreExtended1Block:
/* 802CD2BC 0029687C  3C 40 80 57 */	lis r2, gTRKCPUState@h
/* 802CD2C0 00296880  60 42 D3 F8 */	ori r2, r2, gTRKCPUState@l
/* 802CD2C4 00296884  3C A0 80 57 */	lis r5, lbl_8057D280@h
/* 802CD2C8 00296888  60 A5 D2 80 */	ori r5, r5, lbl_8057D280@l
/* 802CD2CC 0029688C  88 65 00 00 */	lbz r3, 0(r5)
/* 802CD2D0 00296890  88 C5 00 01 */	lbz r6, 1(r5)
/* 802CD2D4 00296894  38 00 00 00 */	li r0, 0
/* 802CD2D8 00296898  98 05 00 00 */	stb r0, 0(r5)
/* 802CD2DC 0029689C  98 05 00 01 */	stb r0, 1(r5)
/* 802CD2E0 002968A0  2C 03 00 00 */	cmpwi r3, 0
/* 802CD2E4 002968A4  41 82 00 14 */	beq .L_802CD2F8
/* 802CD2E8 002968A8  83 02 01 E8 */	lwz r24, 0x1e8(r2)
/* 802CD2EC 002968AC  83 22 01 EC */	lwz r25, 0x1ec(r2)
/* 802CD2F0 002968B0  7F 1C 43 A6 */	mttbl r24
/* 802CD2F4 002968B4  7F 3D 43 A6 */	mttbu r25
.L_802CD2F8:
/* 802CD2F8 002968B8  BA 82 02 FC */	lmw r20, 0x2fc(r2)
/* 802CD2FC 002968BC  7E 90 E3 A6 */	mtspr 0x390, r20
/* 802CD300 002968C0  7E B1 E3 A6 */	mtspr 0x391, r21
/* 802CD304 002968C4  7E D2 E3 A6 */	mtspr 0x392, r22
/* 802CD308 002968C8  7E F3 E3 A6 */	mtspr 0x393, r23
/* 802CD30C 002968CC  7F 14 E3 A6 */	mtspr 0x394, r24
/* 802CD310 002968D0  7F 35 E3 A6 */	mtspr 0x395, r25
/* 802CD314 002968D4  7F 56 E3 A6 */	mtspr 0x396, r26
/* 802CD318 002968D8  7F 77 E3 A6 */	mtspr 0x397, r27
/* 802CD31C 002968DC  7F 98 E3 A6 */	mtspr 0x398, r28
/* 802CD320 002968E0  7F DA E3 A6 */	mtspr 0x39a, r30
/* 802CD324 002968E4  7F FB E3 A6 */	mtspr 0x39b, r31
/* 802CD328 002968E8  48 00 00 04 */	b .L_802CD32C
.L_802CD32C:
/* 802CD32C 002968EC  BA 62 02 84 */	lmw r19, 0x284(r2)
/* 802CD330 002968F0  7E 75 FB A6 */	mtspr 0x3f5, r19
/* 802CD334 002968F4  7E 99 EB A6 */	mtspr 0x3b9, r20
/* 802CD338 002968F8  7E BA EB A6 */	mtspr 0x3ba, r21
/* 802CD33C 002968FC  7E DD EB A6 */	mtspr 0x3bd, r22
/* 802CD340 00296900  7E FE EB A6 */	mtspr 0x3be, r23
/* 802CD344 00296904  7F 1B EB A6 */	mtspr 0x3bb, r24
/* 802CD348 00296908  7F 38 EB A6 */	mtspr 0x3b8, r25
/* 802CD34C 0029690C  7F 5C EB A6 */	mtspr 0x3bc, r26
/* 802CD350 00296910  7F DB FB A6 */	mtictc r30
/* 802CD354 00296914  7F F9 FB A6 */	mtspr 0x3f9, r31
/* 802CD358 00296918  48 00 00 04 */	b .L_802CD35C
.L_802CD35C:
/* 802CD35C 0029691C  BA 02 01 A8 */	lmw r16, 0x1a8(r2)
/* 802CD360 00296920  7E 00 01 A4 */	mtsr 0, r16
/* 802CD364 00296924  7E 21 01 A4 */	mtsr 1, r17
/* 802CD368 00296928  7E 42 01 A4 */	mtsr 2, r18
/* 802CD36C 0029692C  7E 63 01 A4 */	mtsr 3, r19
/* 802CD370 00296930  7E 84 01 A4 */	mtsr 4, r20
/* 802CD374 00296934  7E A5 01 A4 */	mtsr 5, r21
/* 802CD378 00296938  7E C6 01 A4 */	mtsr 6, r22
/* 802CD37C 0029693C  7E E7 01 A4 */	mtsr 7, r23
/* 802CD380 00296940  7F 08 01 A4 */	mtsr 8, r24
/* 802CD384 00296944  7F 29 01 A4 */	mtsr 9, r25
/* 802CD388 00296948  7F 4A 01 A4 */	mtsr 0xa, r26
/* 802CD38C 0029694C  7F 6B 01 A4 */	mtsr 0xb, r27
/* 802CD390 00296950  7F 8C 01 A4 */	mtsr 0xc, r28
/* 802CD394 00296954  7F AD 01 A4 */	mtsr 0xd, r29
/* 802CD398 00296958  7F CE 01 A4 */	mtsr 0xe, r30
/* 802CD39C 0029695C  7F EF 01 A4 */	mtsr 0xf, r31
/* 802CD3A0 00296960  B9 82 01 F0 */	lmw r12, 0x1f0(r2)
/* 802CD3A4 00296964  7D 90 FB A6 */	mtspr 0x3f0, r12
/* 802CD3A8 00296968  7D B1 FB A6 */	mtspr 0x3f1, r13
/* 802CD3AC 0029696C  7D DB 03 A6 */	mtspr 0x1b, r14
/* 802CD3B0 00296970  7D FF 43 A6 */	mtspr 0x11f, r15
/* 802CD3B4 00296974  7E 10 83 A6 */	mtibatu 0, r16
/* 802CD3B8 00296978  7E 31 83 A6 */	mtibatl 0, r17
/* 802CD3BC 0029697C  7E 52 83 A6 */	mtibatu 1, r18
/* 802CD3C0 00296980  7E 73 83 A6 */	mtibatl 1, r19
/* 802CD3C4 00296984  7E 94 83 A6 */	mtibatu 2, r20
/* 802CD3C8 00296988  7E B5 83 A6 */	mtibatl 2, r21
/* 802CD3CC 0029698C  7E D6 83 A6 */	mtibatu 3, r22
/* 802CD3D0 00296990  7E F7 83 A6 */	mtibatl 3, r23
/* 802CD3D4 00296994  7F 18 83 A6 */	mtdbatu 0, r24
/* 802CD3D8 00296998  7F 39 83 A6 */	mtdbatl 0, r25
/* 802CD3DC 0029699C  7F 5A 83 A6 */	mtdbatu 1, r26
/* 802CD3E0 002969A0  7F 7B 83 A6 */	mtdbatl 1, r27
/* 802CD3E4 002969A4  7F 9C 83 A6 */	mtdbatu 2, r28
/* 802CD3E8 002969A8  7F BD 83 A6 */	mtdbatl 2, r29
/* 802CD3EC 002969AC  7F DE 83 A6 */	mtdbatu 3, r30
/* 802CD3F0 002969B0  7F FF 83 A6 */	mtdbatl 3, r31
/* 802CD3F4 002969B4  BA C2 02 5C */	lmw r22, 0x25c(r2)
/* 802CD3F8 002969B8  7E D9 03 A6 */	mtspr 0x19, r22
/* 802CD3FC 002969BC  7E F3 03 A6 */	mtdar r23
/* 802CD400 002969C0  7F 12 03 A6 */	mtdsisr r24
/* 802CD404 002969C4  7F 30 43 A6 */	mtspr 0x110, r25
/* 802CD408 002969C8  7F 51 43 A6 */	mtspr 0x111, r26
/* 802CD40C 002969CC  7F 72 43 A6 */	mtspr 0x112, r27
/* 802CD410 002969D0  7F 93 43 A6 */	mtspr 0x113, r28
/* 802CD414 002969D4  7F D2 FB A6 */	mtspr 0x3f2, r30
/* 802CD418 002969D8  7F FA 43 A6 */	mtspr 0x11a, r31
/* 802CD41C 002969DC  4E 80 00 20 */	blr 