.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_803D70B0
func_803D70B0:
/* 803D70B0 003A0670  3C A0 80 62 */	lis r5, lbl_8061D708@ha
/* 803D70B4 003A0674  80 65 D7 08 */	lwz r3, lbl_8061D708@l(r5)
/* 803D70B8 003A0678  2C 03 00 01 */	cmpwi r3, 1
/* 803D70BC 003A067C  4C 80 00 20 */	bgelr 
/* 803D70C0 003A0680  3C 80 80 52 */	lis r4, lbl_80520D60@ha
/* 803D70C4 003A0684  38 03 00 01 */	addi r0, r3, 1
/* 803D70C8 003A0688  38 84 0D 60 */	addi r4, r4, lbl_80520D60@l
/* 803D70CC 003A068C  3C 60 80 62 */	lis r3, lbl_8061D70C@ha
/* 803D70D0 003A0690  90 83 D7 0C */	stw r4, lbl_8061D70C@l(r3)
/* 803D70D4 003A0694  90 05 D7 08 */	stw r0, lbl_8061D708@l(r5)
/* 803D70D8 003A0698  4E 80 00 20 */	blr 

.global func_803D70DC
func_803D70DC:
/* 803D70DC 003A069C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D70E0 003A06A0  7C 08 02 A6 */	mflr r0
/* 803D70E4 003A06A4  2C 03 00 00 */	cmpwi r3, 0
/* 803D70E8 003A06A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D70EC 003A06AC  41 82 00 0C */	beq lbl_803D70F8
/* 803D70F0 003A06B0  2C 04 00 00 */	cmpwi r4, 0
/* 803D70F4 003A06B4  40 80 00 0C */	bge lbl_803D7100
lbl_803D70F8:
/* 803D70F8 003A06B8  38 60 00 00 */	li r3, 0
/* 803D70FC 003A06BC  48 00 00 24 */	b lbl_803D7120
lbl_803D7100:
/* 803D7100 003A06C0  3C 80 80 52 */	lis r4, lbl_80520D94@ha
/* 803D7104 003A06C4  38 A0 00 01 */	li r5, 1
/* 803D7108 003A06C8  38 84 0D 94 */	addi r4, r4, lbl_80520D94@l
/* 803D710C 003A06CC  38 63 00 12 */	addi r3, r3, 0x12
/* 803D7110 003A06D0  38 84 00 15 */	addi r4, r4, 0x15
/* 803D7114 003A06D4  4B EE B8 3D */	bl strncmp
/* 803D7118 003A06D8  7C 60 00 34 */	cntlzw r0, r3
/* 803D711C 003A06DC  54 03 D9 7E */	srwi r3, r0, 5
lbl_803D7120:
/* 803D7120 003A06E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7124 003A06E4  7C 08 03 A6 */	mtlr r0
/* 803D7128 003A06E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D712C 003A06EC  4E 80 00 20 */	blr 

.global func_803D7130
func_803D7130:
/* 803D7130 003A06F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7134 003A06F4  7C 08 02 A6 */	mflr r0
/* 803D7138 003A06F8  2C 03 00 00 */	cmpwi r3, 0
/* 803D713C 003A06FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7140 003A0700  41 82 00 0C */	beq lbl_803D714C
/* 803D7144 003A0704  2C 04 00 00 */	cmpwi r4, 0
/* 803D7148 003A0708  40 80 00 0C */	bge lbl_803D7154
lbl_803D714C:
/* 803D714C 003A070C  38 60 00 00 */	li r3, 0
/* 803D7150 003A0710  48 00 00 24 */	b lbl_803D7174
lbl_803D7154:
/* 803D7154 003A0714  3C 80 80 52 */	lis r4, lbl_80520D94@ha
/* 803D7158 003A0718  38 A0 00 01 */	li r5, 1
/* 803D715C 003A071C  38 84 0D 94 */	addi r4, r4, lbl_80520D94@l
/* 803D7160 003A0720  38 63 00 13 */	addi r3, r3, 0x13
/* 803D7164 003A0724  38 84 00 17 */	addi r4, r4, 0x17
/* 803D7168 003A0728  4B EE B7 E9 */	bl strncmp
/* 803D716C 003A072C  7C 60 00 34 */	cntlzw r0, r3
/* 803D7170 003A0730  54 03 D9 7E */	srwi r3, r0, 5
lbl_803D7174:
/* 803D7174 003A0734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7178 003A0738  7C 08 03 A6 */	mtlr r0
/* 803D717C 003A073C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7180 003A0740  4E 80 00 20 */	blr 

.global func_803D7184
func_803D7184:
/* 803D7184 003A0744  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D7188 003A0748  7C 08 02 A6 */	mflr r0
/* 803D718C 003A074C  2C 03 00 00 */	cmpwi r3, 0
/* 803D7190 003A0750  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D7194 003A0754  38 00 00 00 */	li r0, 0
/* 803D7198 003A0758  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 803D719C 003A075C  7C 7C 1B 78 */	mr r28, r3
/* 803D71A0 003A0760  7C 99 23 78 */	mr r25, r4
/* 803D71A4 003A0764  7C BA 2B 78 */	mr r26, r5
/* 803D71A8 003A0768  7C DB 33 78 */	mr r27, r6
/* 803D71AC 003A076C  90 05 00 00 */	stw r0, 0(r5)
/* 803D71B0 003A0770  90 06 00 00 */	stw r0, 0(r6)
/* 803D71B4 003A0774  41 82 00 7C */	beq lbl_803D7230
/* 803D71B8 003A0778  2C 04 00 00 */	cmpwi r4, 0
/* 803D71BC 003A077C  41 81 00 08 */	bgt lbl_803D71C4
/* 803D71C0 003A0780  48 00 00 70 */	b lbl_803D7230
lbl_803D71C4:
/* 803D71C4 003A0784  3F C0 80 52 */	lis r30, lbl_80520D94@ha
/* 803D71C8 003A0788  3B A0 00 00 */	li r29, 0
/* 803D71CC 003A078C  3B DE 0D 94 */	addi r30, r30, lbl_80520D94@l
/* 803D71D0 003A0790  3B E0 00 23 */	li r31, 0x23
/* 803D71D4 003A0794  48 00 00 54 */	b lbl_803D7228
lbl_803D71D8:
/* 803D71D8 003A0798  7F 83 E3 78 */	mr r3, r28
/* 803D71DC 003A079C  38 9E 00 1F */	addi r4, r30, 0x1f
/* 803D71E0 003A07A0  38 A0 00 01 */	li r5, 1
/* 803D71E4 003A07A4  4B EE 76 49 */	bl memcmp
/* 803D71E8 003A07A8  2C 03 00 00 */	cmpwi r3, 0
/* 803D71EC 003A07AC  40 82 00 34 */	bne lbl_803D7220
/* 803D71F0 003A07B0  7F 83 E3 78 */	mr r3, r28
/* 803D71F4 003A07B4  7F C4 F3 78 */	mr r4, r30
/* 803D71F8 003A07B8  38 A0 00 08 */	li r5, 8
/* 803D71FC 003A07BC  4B EE 76 31 */	bl memcmp
/* 803D7200 003A07C0  2C 03 00 00 */	cmpwi r3, 0
/* 803D7204 003A07C4  40 82 00 1C */	bne lbl_803D7220
/* 803D7208 003A07C8  7F 80 00 34 */	cntlzw r0, r28
/* 803D720C 003A07CC  93 9A 00 00 */	stw r28, 0(r26)
/* 803D7210 003A07D0  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 803D7214 003A07D4  7C 00 00 D0 */	neg r0, r0
/* 803D7218 003A07D8  7F E0 00 78 */	andc r0, r31, r0
/* 803D721C 003A07DC  90 1B 00 00 */	stw r0, 0(r27)
lbl_803D7220:
/* 803D7220 003A07E0  3B 9C 00 01 */	addi r28, r28, 1
/* 803D7224 003A07E4  3B BD 00 01 */	addi r29, r29, 1
lbl_803D7228:
/* 803D7228 003A07E8  7C 1D C8 00 */	cmpw r29, r25
/* 803D722C 003A07EC  41 80 FF AC */	blt lbl_803D71D8
lbl_803D7230:
/* 803D7230 003A07F0  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 803D7234 003A07F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D7238 003A07F8  7C 08 03 A6 */	mtlr r0
/* 803D723C 003A07FC  38 21 00 30 */	addi r1, r1, 0x30
/* 803D7240 003A0800  4E 80 00 20 */	blr 

.global func_803D7244
func_803D7244:
/* 803D7244 003A0804  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803D7248 003A0808  40 86 00 24 */	bne cr1, lbl_803D726C
/* 803D724C 003A080C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803D7250 003A0810  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803D7254 003A0814  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803D7258 003A0818  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803D725C 003A081C  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803D7260 003A0820  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803D7264 003A0824  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803D7268 003A0828  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_803D726C:
/* 803D726C 003A082C  39 61 00 88 */	addi r11, r1, 0x88
/* 803D7270 003A0830  38 01 00 08 */	addi r0, r1, 8
/* 803D7274 003A0834  3D 80 02 00 */	lis r12, 0x200
/* 803D7278 003A0838  90 61 00 08 */	stw r3, 8(r1)
/* 803D727C 003A083C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803D7280 003A0840  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803D7284 003A0844  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803D7288 003A0848  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803D728C 003A084C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803D7290 003A0850  91 21 00 20 */	stw r9, 0x20(r1)
/* 803D7294 003A0854  91 41 00 24 */	stw r10, 0x24(r1)
/* 803D7298 003A0858  91 81 00 68 */	stw r12, 0x68(r1)
/* 803D729C 003A085C  91 61 00 6C */	stw r11, 0x6c(r1)
/* 803D72A0 003A0860  90 01 00 70 */	stw r0, 0x70(r1)
/* 803D72A4 003A0864  38 21 00 80 */	addi r1, r1, 0x80
/* 803D72A8 003A0868  4E 80 00 20 */	blr 

.global func_803D72AC
func_803D72AC:
/* 803D72AC 003A086C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D72B0 003A0870  7C 08 02 A6 */	mflr r0
/* 803D72B4 003A0874  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D72B8 003A0878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D72BC 003A087C  7C 7F 1B 78 */	mr r31, r3
/* 803D72C0 003A0880  4B F8 16 F1 */	bl OSDisableInterrupts
/* 803D72C4 003A0884  A0 9F 00 10 */	lhz r4, 0x10(r31)
/* 803D72C8 003A0888  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 803D72CC 003A088C  7C 84 00 51 */	subf. r4, r4, r0
/* 803D72D0 003A0890  40 80 00 0C */	bge lbl_803D72DC
/* 803D72D4 003A0894  A0 1F 00 06 */	lhz r0, 6(r31)
/* 803D72D8 003A0898  7C 84 02 14 */	add r4, r4, r0
lbl_803D72DC:
/* 803D72DC 003A089C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 803D72E0 003A08A0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 803D72E4 003A08A4  2C 00 00 00 */	cmpwi r0, 0
/* 803D72E8 003A08A8  41 82 00 0C */	beq lbl_803D72F4
/* 803D72EC 003A08AC  38 04 00 01 */	addi r0, r4, 1
/* 803D72F0 003A08B0  54 04 04 3E */	clrlwi r4, r0, 0x10
lbl_803D72F4:
/* 803D72F4 003A08B4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803D72F8 003A08B8  7F E0 22 14 */	add r31, r0, r4
/* 803D72FC 003A08BC  4B F8 16 F5 */	bl OSRestoreInterrupts
/* 803D7300 003A08C0  7F E3 FB 78 */	mr r3, r31
/* 803D7304 003A08C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7308 003A08C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D730C 003A08CC  7C 08 03 A6 */	mtlr r0
/* 803D7310 003A08D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7314 003A08D4  4E 80 00 20 */	blr 

.global func_803D7318
func_803D7318:
/* 803D7318 003A08D8  88 E4 00 00 */	lbz r7, 0(r4)
/* 803D731C 003A08DC  88 C4 00 01 */	lbz r6, 1(r4)
/* 803D7320 003A08E0  88 A4 00 02 */	lbz r5, 2(r4)
/* 803D7324 003A08E4  88 04 00 03 */	lbz r0, 3(r4)
/* 803D7328 003A08E8  98 E3 00 18 */	stb r7, 0x18(r3)
/* 803D732C 003A08EC  98 C3 00 19 */	stb r6, 0x19(r3)
/* 803D7330 003A08F0  98 A3 00 1A */	stb r5, 0x1a(r3)
/* 803D7334 003A08F4  98 03 00 1B */	stb r0, 0x1b(r3)
/* 803D7338 003A08F8  48 05 8E 50 */	b func_80430188

.global func_803D733C
func_803D733C:
/* 803D733C 003A08FC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803D7340 003A0900  7C 08 02 A6 */	mflr r0
/* 803D7344 003A0904  90 01 00 84 */	stw r0, 0x84(r1)
/* 803D7348 003A0908  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 803D734C 003A090C  40 86 00 24 */	bne cr1, lbl_803D7370
/* 803D7350 003A0910  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803D7354 003A0914  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803D7358 003A0918  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803D735C 003A091C  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803D7360 003A0920  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803D7364 003A0924  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803D7368 003A0928  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803D736C 003A092C  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_803D7370:
/* 803D7370 003A0930  80 0D BB 9C */	lwz r0, lbl_80667D1C@sda21(r13)
/* 803D7374 003A0934  39 81 00 88 */	addi r12, r1, 0x88
/* 803D7378 003A0938  39 61 00 08 */	addi r11, r1, 8
/* 803D737C 003A093C  3F E0 01 00 */	lis r31, 0x100
/* 803D7380 003A0940  2C 00 00 00 */	cmpwi r0, 0
/* 803D7384 003A0944  90 61 00 08 */	stw r3, 8(r1)
/* 803D7388 003A0948  38 01 00 68 */	addi r0, r1, 0x68
/* 803D738C 003A094C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803D7390 003A0950  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803D7394 003A0954  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803D7398 003A0958  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803D739C 003A095C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803D73A0 003A0960  91 21 00 20 */	stw r9, 0x20(r1)
/* 803D73A4 003A0964  91 41 00 24 */	stw r10, 0x24(r1)
/* 803D73A8 003A0968  93 E1 00 68 */	stw r31, 0x68(r1)
/* 803D73AC 003A096C  91 81 00 6C */	stw r12, 0x6c(r1)
/* 803D73B0 003A0970  91 61 00 70 */	stw r11, 0x70(r1)
/* 803D73B4 003A0974  40 82 00 0C */	bne lbl_803D73C0
/* 803D73B8 003A0978  7C 04 03 78 */	mr r4, r0
/* 803D73BC 003A097C  4B F7 DB B5 */	bl OSVReport
lbl_803D73C0:
/* 803D73C0 003A0980  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803D73C4 003A0984  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 803D73C8 003A0988  7C 08 03 A6 */	mtlr r0
/* 803D73CC 003A098C  38 21 00 80 */	addi r1, r1, 0x80
/* 803D73D0 003A0990  4E 80 00 20 */	blr 

.global func_803D73D4
func_803D73D4:
/* 803D73D4 003A0994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D73D8 003A0998  7C 08 02 A6 */	mflr r0
/* 803D73DC 003A099C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D73E0 003A09A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D73E4 003A09A4  3F E0 80 57 */	lis r31, lbl_8056C7B0@ha
/* 803D73E8 003A09A8  3B FF C7 B0 */	addi r31, r31, lbl_8056C7B0@l
/* 803D73EC 003A09AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D73F0 003A09B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D73F4 003A09B4  7C 7D 1B 78 */	mr r29, r3
/* 803D73F8 003A09B8  38 7F 00 00 */	addi r3, r31, 0
/* 803D73FC 003A09BC  4C C6 31 82 */	crclr 6
/* 803D7400 003A09C0  4B FF FF 3D */	bl func_803D733C
/* 803D7404 003A09C4  38 7F 00 28 */	addi r3, r31, 0x28
/* 803D7408 003A09C8  4C C6 31 82 */	crclr 6
/* 803D740C 003A09CC  4B FF FF 31 */	bl func_803D733C
/* 803D7410 003A09D0  3B C0 00 00 */	li r30, 0
lbl_803D7414:
/* 803D7414 003A09D4  2C 1D 00 00 */	cmpwi r29, 0
/* 803D7418 003A09D8  41 82 00 4C */	beq lbl_803D7464
/* 803D741C 003A09DC  3C 1D 00 01 */	addis r0, r29, 1
/* 803D7420 003A09E0  28 00 FF FF */	cmplwi r0, 0xffff
/* 803D7424 003A09E4  41 82 00 40 */	beq lbl_803D7464
/* 803D7428 003A09E8  57 A0 00 01 */	rlwinm. r0, r29, 0, 0, 0
/* 803D742C 003A09EC  41 82 00 38 */	beq lbl_803D7464
/* 803D7430 003A09F0  80 BD 00 00 */	lwz r5, 0(r29)
/* 803D7434 003A09F4  7F A4 EB 78 */	mr r4, r29
/* 803D7438 003A09F8  80 DD 00 04 */	lwz r6, 4(r29)
/* 803D743C 003A09FC  38 7F 00 48 */	addi r3, r31, 0x48
/* 803D7440 003A0A00  4C C6 31 82 */	crclr 6
/* 803D7444 003A0A04  4B FF FE F9 */	bl func_803D733C
/* 803D7448 003A0A08  38 6D 9C 04 */	addi r3, r13, lbl_80665D84@sda21
/* 803D744C 003A0A0C  4C C6 31 82 */	crclr 6
/* 803D7450 003A0A10  4B FF FE ED */	bl func_803D733C
/* 803D7454 003A0A14  3B DE 00 01 */	addi r30, r30, 1
/* 803D7458 003A0A18  83 BD 00 00 */	lwz r29, 0(r29)
/* 803D745C 003A0A1C  28 1E 00 10 */	cmplwi r30, 0x10
/* 803D7460 003A0A20  41 80 FF B4 */	blt lbl_803D7414
lbl_803D7464:
/* 803D7464 003A0A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D7468 003A0A28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D746C 003A0A2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D7470 003A0A30  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D7474 003A0A34  7C 08 03 A6 */	mtlr r0
/* 803D7478 003A0A38  38 21 00 20 */	addi r1, r1, 0x20
/* 803D747C 003A0A3C  4E 80 00 20 */	blr 

.global func_803D7480
func_803D7480:
/* 803D7480 003A0A40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D7484 003A0A44  7C 08 02 A6 */	mflr r0
/* 803D7488 003A0A48  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D748C 003A0A4C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D7490 003A0A50  4B EE 2C C1 */	bl _savegpr_26
/* 803D7494 003A0A54  83 C1 00 00 */	lwz r30, 0(r1)
/* 803D7498 003A0A58  7C 7A 1B 78 */	mr r26, r3
/* 803D749C 003A0A5C  7C 9B 23 78 */	mr r27, r4
/* 803D74A0 003A0A60  7C BC 2B 78 */	mr r28, r5
/* 803D74A4 003A0A64  7C DF 33 78 */	mr r31, r6
/* 803D74A8 003A0A68  7C FD 3B 78 */	mr r29, r7
/* 803D74AC 003A0A6C  4B F8 15 05 */	bl OSDisableInterrupts
/* 803D74B0 003A0A70  4B F8 41 41 */	bl OSDisableScheduler
/* 803D74B4 003A0A74  38 60 00 00 */	li r3, 0
/* 803D74B8 003A0A78  4B F8 D4 29 */	bl VISetPreRetraceCallback
/* 803D74BC 003A0A7C  38 60 00 00 */	li r3, 0
/* 803D74C0 003A0A80  4B F8 D4 71 */	bl VISetPostRetraceCallback
/* 803D74C4 003A0A84  7F C3 F3 78 */	mr r3, r30
/* 803D74C8 003A0A88  4B FF FF 0D */	bl func_803D73D4
/* 803D74CC 003A0A8C  80 6D BB 9C */	lwz r3, lbl_80667D1C@sda21(r13)
/* 803D74D0 003A0A90  2C 03 00 00 */	cmpwi r3, 0
/* 803D74D4 003A0A94  41 82 00 5C */	beq lbl_803D7530
/* 803D74D8 003A0A98  3C 80 80 57 */	lis r4, lbl_8056C810@ha
/* 803D74DC 003A0A9C  7F 45 D3 78 */	mr r5, r26
/* 803D74E0 003A0AA0  7F 66 DB 78 */	mr r6, r27
/* 803D74E4 003A0AA4  38 84 C8 10 */	addi r4, r4, lbl_8056C810@l
/* 803D74E8 003A0AA8  4C C6 31 82 */	crclr 6
/* 803D74EC 003A0AAC  4B FF FD 59 */	bl func_803D7244
/* 803D74F0 003A0AB0  80 6D BB 9C */	lwz r3, lbl_80667D1C@sda21(r13)
/* 803D74F4 003A0AB4  38 8D 9C 04 */	addi r4, r13, lbl_80665D84@sda21
/* 803D74F8 003A0AB8  4C C6 31 82 */	crclr 6
/* 803D74FC 003A0ABC  4B FF FD 49 */	bl func_803D7244
/* 803D7500 003A0AC0  83 CD BB 9C */	lwz r30, lbl_80667D1C@sda21(r13)
/* 803D7504 003A0AC4  A3 FE 00 20 */	lhz r31, 0x20(r30)
/* 803D7508 003A0AC8  7F C3 F3 78 */	mr r3, r30
/* 803D750C 003A0ACC  4B FF FD A1 */	bl func_803D72AC
/* 803D7510 003A0AD0  7C 1F 18 51 */	subf. r0, r31, r3
/* 803D7514 003A0AD4  40 80 00 08 */	bge lbl_803D751C
/* 803D7518 003A0AD8  38 00 00 00 */	li r0, 0
lbl_803D751C:
/* 803D751C 003A0ADC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 803D7520 003A0AE0  38 00 00 01 */	li r0, 1
/* 803D7524 003A0AE4  80 6D BB 9C */	lwz r3, lbl_80667D1C@sda21(r13)
/* 803D7528 003A0AE8  98 03 00 22 */	stb r0, 0x22(r3)
/* 803D752C 003A0AEC  48 00 00 34 */	b lbl_803D7560
lbl_803D7530:
/* 803D7530 003A0AF0  3C 60 80 57 */	lis r3, lbl_8056C810@ha
/* 803D7534 003A0AF4  7F 44 D3 78 */	mr r4, r26
/* 803D7538 003A0AF8  7F 65 DB 78 */	mr r5, r27
/* 803D753C 003A0AFC  38 63 C8 10 */	addi r3, r3, lbl_8056C810@l
/* 803D7540 003A0B00  4C C6 31 82 */	crclr 6
/* 803D7544 003A0B04  4B F7 D9 AD */	bl OSReport
/* 803D7548 003A0B08  7F 83 E3 78 */	mr r3, r28
/* 803D754C 003A0B0C  7F E4 FB 78 */	mr r4, r31
/* 803D7550 003A0B10  4B F7 DA 21 */	bl OSVReport
/* 803D7554 003A0B14  38 6D 9C 04 */	addi r3, r13, lbl_80665D84@sda21
/* 803D7558 003A0B18  4C C6 31 82 */	crclr 6
/* 803D755C 003A0B1C  4B F7 D9 95 */	bl OSReport
lbl_803D7560:
/* 803D7560 003A0B20  2C 1D 00 00 */	cmpwi r29, 0
/* 803D7564 003A0B24  41 82 00 08 */	beq lbl_803D756C
/* 803D7568 003A0B28  4B F0 36 69 */	bl PPCHalt
lbl_803D756C:
/* 803D756C 003A0B2C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D7570 003A0B30  4B EE 2C 2D */	bl _restgpr_26
/* 803D7574 003A0B34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D7578 003A0B38  7C 08 03 A6 */	mtlr r0
/* 803D757C 003A0B3C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D7580 003A0B40  4E 80 00 20 */	blr 

.global func_803D7584
func_803D7584:
/* 803D7584 003A0B44  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803D7588 003A0B48  7C 08 02 A6 */	mflr r0
/* 803D758C 003A0B4C  90 01 00 84 */	stw r0, 0x84(r1)
/* 803D7590 003A0B50  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 803D7594 003A0B54  40 86 00 24 */	bne cr1, lbl_803D75B8
/* 803D7598 003A0B58  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803D759C 003A0B5C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803D75A0 003A0B60  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803D75A4 003A0B64  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803D75A8 003A0B68  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803D75AC 003A0B6C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803D75B0 003A0B70  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803D75B4 003A0B74  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_803D75B8:
/* 803D75B8 003A0B78  39 61 00 88 */	addi r11, r1, 0x88
/* 803D75BC 003A0B7C  38 01 00 08 */	addi r0, r1, 8
/* 803D75C0 003A0B80  3D 80 03 00 */	lis r12, 0x300
/* 803D75C4 003A0B84  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803D75C8 003A0B88  3B E1 00 68 */	addi r31, r1, 0x68
/* 803D75CC 003A0B8C  38 E0 00 01 */	li r7, 1
/* 803D75D0 003A0B90  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803D75D4 003A0B94  7F E6 FB 78 */	mr r6, r31
/* 803D75D8 003A0B98  90 61 00 08 */	stw r3, 8(r1)
/* 803D75DC 003A0B9C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803D75E0 003A0BA0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803D75E4 003A0BA4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803D75E8 003A0BA8  91 21 00 20 */	stw r9, 0x20(r1)
/* 803D75EC 003A0BAC  91 41 00 24 */	stw r10, 0x24(r1)
/* 803D75F0 003A0BB0  91 81 00 68 */	stw r12, 0x68(r1)
/* 803D75F4 003A0BB4  91 61 00 6C */	stw r11, 0x6c(r1)
/* 803D75F8 003A0BB8  90 01 00 70 */	stw r0, 0x70(r1)
/* 803D75FC 003A0BBC  4B FF FE 85 */	bl func_803D7480
/* 803D7600 003A0BC0  4B F0 35 D1 */	bl PPCHalt
/* 803D7604 003A0BC4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803D7608 003A0BC8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 803D760C 003A0BCC  7C 08 03 A6 */	mtlr r0
/* 803D7610 003A0BD0  38 21 00 80 */	addi r1, r1, 0x80
/* 803D7614 003A0BD4  4E 80 00 20 */	blr 

.global func_803D7618
func_803D7618:
/* 803D7618 003A0BD8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803D761C 003A0BDC  7C 08 02 A6 */	mflr r0
/* 803D7620 003A0BE0  90 01 00 94 */	stw r0, 0x94(r1)
/* 803D7624 003A0BE4  39 61 00 90 */	addi r11, r1, 0x90
/* 803D7628 003A0BE8  4B EE 2B 2D */	bl _savegpr_27
/* 803D762C 003A0BEC  7C 7B 1B 78 */	mr r27, r3
/* 803D7630 003A0BF0  7C 9C 23 78 */	mr r28, r4
/* 803D7634 003A0BF4  7C BD 2B 78 */	mr r29, r5
/* 803D7638 003A0BF8  40 86 00 24 */	bne cr1, lbl_803D765C
/* 803D763C 003A0BFC  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803D7640 003A0C00  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803D7644 003A0C04  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803D7648 003A0C08  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803D764C 003A0C0C  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803D7650 003A0C10  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803D7654 003A0C14  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803D7658 003A0C18  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_803D765C:
/* 803D765C 003A0C1C  83 CD BB 9C */	lwz r30, lbl_80667D1C@sda21(r13)
/* 803D7660 003A0C20  39 61 00 98 */	addi r11, r1, 0x98
/* 803D7664 003A0C24  38 01 00 08 */	addi r0, r1, 8
/* 803D7668 003A0C28  3D 80 03 00 */	lis r12, 0x300
/* 803D766C 003A0C2C  2C 1E 00 00 */	cmpwi r30, 0
/* 803D7670 003A0C30  90 61 00 08 */	stw r3, 8(r1)
/* 803D7674 003A0C34  3B E1 00 68 */	addi r31, r1, 0x68
/* 803D7678 003A0C38  90 81 00 0C */	stw r4, 0xc(r1)
/* 803D767C 003A0C3C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803D7680 003A0C40  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803D7684 003A0C44  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803D7688 003A0C48  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803D768C 003A0C4C  91 21 00 20 */	stw r9, 0x20(r1)
/* 803D7690 003A0C50  91 41 00 24 */	stw r10, 0x24(r1)
/* 803D7694 003A0C54  91 81 00 68 */	stw r12, 0x68(r1)
/* 803D7698 003A0C58  91 61 00 6C */	stw r11, 0x6c(r1)
/* 803D769C 003A0C5C  90 01 00 70 */	stw r0, 0x70(r1)
/* 803D76A0 003A0C60  41 82 00 CC */	beq lbl_803D776C
/* 803D76A4 003A0C64  3C 80 80 57 */	lis r4, lbl_8056C820@ha
/* 803D76A8 003A0C68  7F C3 F3 78 */	mr r3, r30
/* 803D76AC 003A0C6C  7F 65 DB 78 */	mr r5, r27
/* 803D76B0 003A0C70  7F 86 E3 78 */	mr r6, r28
/* 803D76B4 003A0C74  38 84 C8 20 */	addi r4, r4, lbl_8056C820@l
/* 803D76B8 003A0C78  4C C6 31 82 */	crclr 6
/* 803D76BC 003A0C7C  4B FF FB 89 */	bl func_803D7244
/* 803D76C0 003A0C80  80 6D BB 9C */	lwz r3, lbl_80667D1C@sda21(r13)
/* 803D76C4 003A0C84  38 8D 9C 04 */	addi r4, r13, lbl_80665D84@sda21
/* 803D76C8 003A0C88  4C C6 31 82 */	crclr 6
/* 803D76CC 003A0C8C  4B FF FB 79 */	bl func_803D7244
/* 803D76D0 003A0C90  83 ED BB 9C */	lwz r31, lbl_80667D1C@sda21(r13)
/* 803D76D4 003A0C94  A3 DF 00 20 */	lhz r30, 0x20(r31)
/* 803D76D8 003A0C98  7F E3 FB 78 */	mr r3, r31
/* 803D76DC 003A0C9C  4B FF FB D1 */	bl func_803D72AC
/* 803D76E0 003A0CA0  7C 1E 18 51 */	subf. r0, r30, r3
/* 803D76E4 003A0CA4  40 80 00 08 */	bge lbl_803D76EC
/* 803D76E8 003A0CA8  38 00 00 00 */	li r0, 0
lbl_803D76EC:
/* 803D76EC 003A0CAC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 803D76F0 003A0CB0  88 0D 9C 00 */	lbz r0, lbl_80665D80@sda21(r13)
/* 803D76F4 003A0CB4  2C 00 00 00 */	cmpwi r0, 0
/* 803D76F8 003A0CB8  41 82 00 A4 */	beq lbl_803D779C
/* 803D76FC 003A0CBC  80 0D BB 9C */	lwz r0, lbl_80667D1C@sda21(r13)
/* 803D7700 003A0CC0  83 CD BB 98 */	lwz r30, lbl_80667D18@sda21(r13)
/* 803D7704 003A0CC4  2C 00 00 00 */	cmpwi r0, 0
/* 803D7708 003A0CC8  41 82 00 94 */	beq lbl_803D779C
/* 803D770C 003A0CCC  88 0D BB A0 */	lbz r0, lbl_80667D20@sda21(r13)
/* 803D7710 003A0CD0  2C 00 00 00 */	cmpwi r0, 0
/* 803D7714 003A0CD4  40 82 00 18 */	bne lbl_803D772C
/* 803D7718 003A0CD8  3C 60 80 62 */	lis r3, lbl_8061D710@ha
/* 803D771C 003A0CDC  38 63 D7 10 */	addi r3, r3, lbl_8061D710@l
/* 803D7720 003A0CE0  4B F7 B7 01 */	bl OSCreateAlarm
/* 803D7724 003A0CE4  38 00 00 01 */	li r0, 1
/* 803D7728 003A0CE8  98 0D BB A0 */	stb r0, lbl_80667D20@sda21(r13)
lbl_803D772C:
/* 803D772C 003A0CEC  3F E0 80 62 */	lis r31, lbl_8061D710@ha
/* 803D7730 003A0CF0  3B FF D7 10 */	addi r31, r31, lbl_8061D710@l
/* 803D7734 003A0CF4  7F E3 FB 78 */	mr r3, r31
/* 803D7738 003A0CF8  4B F7 BA 49 */	bl OSCancelAlarm
/* 803D773C 003A0CFC  80 6D BB 9C */	lwz r3, lbl_80667D1C@sda21(r13)
/* 803D7740 003A0D00  38 00 00 01 */	li r0, 1
/* 803D7744 003A0D04  2C 1E 00 00 */	cmpwi r30, 0
/* 803D7748 003A0D08  98 03 00 22 */	stb r0, 0x22(r3)
/* 803D774C 003A0D0C  41 82 00 50 */	beq lbl_803D779C
/* 803D7750 003A0D10  3C E0 80 3D */	lis r7, func_803D77B4@ha
/* 803D7754 003A0D14  7F E3 FB 78 */	mr r3, r31
/* 803D7758 003A0D18  7F C6 F3 78 */	mr r6, r30
/* 803D775C 003A0D1C  38 A0 00 00 */	li r5, 0
/* 803D7760 003A0D20  38 E7 77 B4 */	addi r7, r7, func_803D77B4@l
/* 803D7764 003A0D24  4B F7 B9 1D */	bl OSSetAlarm
/* 803D7768 003A0D28  48 00 00 34 */	b lbl_803D779C
lbl_803D776C:
/* 803D776C 003A0D2C  3C 60 80 57 */	lis r3, lbl_8056C820@ha
/* 803D7770 003A0D30  7F 64 DB 78 */	mr r4, r27
/* 803D7774 003A0D34  7F 85 E3 78 */	mr r5, r28
/* 803D7778 003A0D38  38 63 C8 20 */	addi r3, r3, lbl_8056C820@l
/* 803D777C 003A0D3C  4C C6 31 82 */	crclr 6
/* 803D7780 003A0D40  4B F7 D7 71 */	bl OSReport
/* 803D7784 003A0D44  7F A3 EB 78 */	mr r3, r29
/* 803D7788 003A0D48  7F E4 FB 78 */	mr r4, r31
/* 803D778C 003A0D4C  4B F7 D7 E5 */	bl OSVReport
/* 803D7790 003A0D50  38 6D 9C 04 */	addi r3, r13, lbl_80665D84@sda21
/* 803D7794 003A0D54  4C C6 31 82 */	crclr 6
/* 803D7798 003A0D58  4B F7 D7 59 */	bl OSReport
lbl_803D779C:
/* 803D779C 003A0D5C  39 61 00 90 */	addi r11, r1, 0x90
/* 803D77A0 003A0D60  4B EE 2A 01 */	bl _restgpr_27
/* 803D77A4 003A0D64  80 01 00 94 */	lwz r0, 0x94(r1)
/* 803D77A8 003A0D68  7C 08 03 A6 */	mtlr r0
/* 803D77AC 003A0D6C  38 21 00 90 */	addi r1, r1, 0x90
/* 803D77B0 003A0D70  4E 80 00 20 */	blr

.global func_803D77B4
func_803D77B4:
/* 803D77B4 003A0D74  80 6D BB 9C */	lwz r3, lbl_80667D1C@sda21(r13)
/* 803D77B8 003A0D78  2C 03 00 00 */	cmpwi r3, 0
/* 803D77BC 003A0D7C  4D 82 00 20 */	beqlr 
/* 803D77C0 003A0D80  38 00 00 00 */	li r0, 0
/* 803D77C4 003A0D84  98 03 00 22 */	stb r0, 0x22(r3)
/* 803D77C8 003A0D88  4E 80 00 20 */	blr 

.global func_803D77CC
func_803D77CC:
/* 803D77CC 003A0D8C  89 64 00 00 */	lbz r11, 0(r4)
/* 803D77D0 003A0D90  89 44 00 01 */	lbz r10, 1(r4)
/* 803D77D4 003A0D94  89 24 00 02 */	lbz r9, 2(r4)
/* 803D77D8 003A0D98  89 04 00 03 */	lbz r8, 3(r4)
/* 803D77DC 003A0D9C  88 E5 00 00 */	lbz r7, 0(r5)
/* 803D77E0 003A0DA0  88 C5 00 01 */	lbz r6, 1(r5)
/* 803D77E4 003A0DA4  88 85 00 02 */	lbz r4, 2(r5)
/* 803D77E8 003A0DA8  88 05 00 03 */	lbz r0, 3(r5)
/* 803D77EC 003A0DAC  99 63 00 18 */	stb r11, 0x18(r3)
/* 803D77F0 003A0DB0  99 43 00 19 */	stb r10, 0x19(r3)
/* 803D77F4 003A0DB4  99 23 00 1A */	stb r9, 0x1a(r3)
/* 803D77F8 003A0DB8  99 03 00 1B */	stb r8, 0x1b(r3)
/* 803D77FC 003A0DBC  98 E3 00 1C */	stb r7, 0x1c(r3)
/* 803D7800 003A0DC0  98 C3 00 1D */	stb r6, 0x1d(r3)
/* 803D7804 003A0DC4  98 83 00 1E */	stb r4, 0x1e(r3)
/* 803D7808 003A0DC8  98 03 00 1F */	stb r0, 0x1f(r3)
/* 803D780C 003A0DCC  48 05 89 7C */	b func_80430188
