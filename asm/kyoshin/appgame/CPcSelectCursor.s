.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8010EA64
func_8010EA64:
/* 8010EA64 000D8024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EA68 000D8028  7C 08 02 A6 */	mflr r0
/* 8010EA6C 000D802C  3C 80 80 53 */	lis r4, __vt__CPcSelectCursor@ha
/* 8010EA70 000D8030  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EA74 000D8034  38 84 FD 04 */	addi r4, r4, __vt__CPcSelectCursor@l
/* 8010EA78 000D8038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010EA7C 000D803C  3B E0 00 00 */	li r31, 0
/* 8010EA80 000D8040  93 C1 00 08 */	stw r30, 8(r1)
/* 8010EA84 000D8044  7C 7E 1B 78 */	mr r30, r3
/* 8010EA88 000D8048  90 83 00 00 */	stw r4, 0(r3)
/* 8010EA8C 000D804C  93 E3 00 04 */	stw r31, 4(r3)
/* 8010EA90 000D8050  38 63 00 08 */	addi r3, r3, 8
/* 8010EA94 000D8054  48 35 0A D1 */	bl func_8045F564
/* 8010EA98 000D8058  38 00 00 01 */	li r0, 1
/* 8010EA9C 000D805C  93 FE 00 18 */	stw r31, 0x18(r30)
/* 8010EAA0 000D8060  7F C3 F3 78 */	mr r3, r30
/* 8010EAA4 000D8064  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 8010EAA8 000D8068  93 FE 00 20 */	stw r31, 0x20(r30)
/* 8010EAAC 000D806C  93 FE 00 24 */	stw r31, 0x24(r30)
/* 8010EAB0 000D8070  93 FE 00 28 */	stw r31, 0x28(r30)
/* 8010EAB4 000D8074  93 FE 00 2C */	stw r31, 0x2c(r30)
/* 8010EAB8 000D8078  93 FE 00 30 */	stw r31, 0x30(r30)
/* 8010EABC 000D807C  93 FE 00 34 */	stw r31, 0x34(r30)
/* 8010EAC0 000D8080  93 FE 00 38 */	stw r31, 0x38(r30)
/* 8010EAC4 000D8084  93 FE 00 3C */	stw r31, 0x3c(r30)
/* 8010EAC8 000D8088  98 1E 00 40 */	stb r0, 0x40(r30)
/* 8010EACC 000D808C  93 FE 00 44 */	stw r31, 0x44(r30)
/* 8010EAD0 000D8090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010EAD4 000D8094  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010EAD8 000D8098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EADC 000D809C  7C 08 03 A6 */	mtlr r0
/* 8010EAE0 000D80A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EAE4 000D80A4  4E 80 00 20 */	blr 

.global func_8010EAE8
func_8010EAE8:
/* 8010EAE8 000D80A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EAEC 000D80AC  7C 08 02 A6 */	mflr r0
/* 8010EAF0 000D80B0  2C 03 00 00 */	cmpwi r3, 0
/* 8010EAF4 000D80B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EAF8 000D80B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010EAFC 000D80BC  7C 9F 23 78 */	mr r31, r4
/* 8010EB00 000D80C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8010EB04 000D80C4  7C 7E 1B 78 */	mr r30, r3
/* 8010EB08 000D80C8  41 82 00 20 */	beq lbl_8010EB28
/* 8010EB0C 000D80CC  38 80 FF FF */	li r4, -1
/* 8010EB10 000D80D0  38 63 00 08 */	addi r3, r3, 8
/* 8010EB14 000D80D4  48 35 0A 6D */	bl func_8045F580
/* 8010EB18 000D80D8  2C 1F 00 00 */	cmpwi r31, 0
/* 8010EB1C 000D80DC  40 81 00 0C */	ble lbl_8010EB28
/* 8010EB20 000D80E0  7F C3 F3 78 */	mr r3, r30
/* 8010EB24 000D80E4  48 32 61 09 */	bl __dl__FPv
lbl_8010EB28:
/* 8010EB28 000D80E8  7F C3 F3 78 */	mr r3, r30
/* 8010EB2C 000D80EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010EB30 000D80F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010EB34 000D80F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EB38 000D80F8  7C 08 03 A6 */	mtlr r0
/* 8010EB3C 000D80FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EB40 000D8100  4E 80 00 20 */	blr 

.global func_8010EB44
func_8010EB44:
/* 8010EB44 000D8104  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010EB48 000D8108  7C 08 02 A6 */	mflr r0
/* 8010EB4C 000D810C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010EB50 000D8110  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010EB54 000D8114  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010EB58 000D8118  7C 7E 1B 78 */	mr r30, r3
/* 8010EB5C 000D811C  48 32 58 45 */	bl func_804343A0
/* 8010EB60 000D8120  3F E0 80 50 */	lis r31, lbl_804F9440@ha
/* 8010EB64 000D8124  7C 64 1B 78 */	mr r4, r3
/* 8010EB68 000D8128  38 7E 00 08 */	addi r3, r30, 8
/* 8010EB6C 000D812C  38 A0 20 00 */	li r5, 0x2000
/* 8010EB70 000D8130  38 DF 94 40 */	addi r6, r31, lbl_804F9440@l
/* 8010EB74 000D8134  38 E0 00 00 */	li r7, 0
/* 8010EB78 000D8138  48 35 0B 09 */	bl func_8045F680
/* 8010EB7C 000D813C  38 61 00 08 */	addi r3, r1, 8
/* 8010EB80 000D8140  38 9E 00 08 */	addi r4, r30, 8
/* 8010EB84 000D8144  48 35 0C D5 */	bl func_8045F858
/* 8010EB88 000D8148  38 60 00 00 */	li r3, 0
/* 8010EB8C 000D814C  48 32 5E C1 */	bl func_80434A4C
/* 8010EB90 000D8150  3B FF 94 40 */	addi r31, r31, lbl_804F9440@l
/* 8010EB94 000D8154  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8010EB98 000D8158  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8010EB9C 000D815C  38 BF 00 10 */	addi r5, r31, 0x10
/* 8010EBA0 000D8160  48 02 82 E5 */	bl func_80136E84
/* 8010EBA4 000D8164  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010EBA8 000D8168  38 9E 00 20 */	addi r4, r30, 0x20
/* 8010EBAC 000D816C  80 BE 00 18 */	lwz r5, 0x18(r30)
/* 8010EBB0 000D8170  38 DF 00 2C */	addi r6, r31, 0x2c
/* 8010EBB4 000D8174  48 02 83 55 */	bl func_80136F08
/* 8010EBB8 000D8178  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010EBBC 000D817C  38 9E 00 24 */	addi r4, r30, 0x24
/* 8010EBC0 000D8180  80 BE 00 18 */	lwz r5, 0x18(r30)
/* 8010EBC4 000D8184  38 DF 00 4B */	addi r6, r31, 0x4b
/* 8010EBC8 000D8188  48 02 83 41 */	bl func_80136F08
/* 8010EBCC 000D818C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010EBD0 000D8190  38 9F 00 6A */	addi r4, r31, 0x6a
/* 8010EBD4 000D8194  38 A0 00 01 */	li r5, 1
/* 8010EBD8 000D8198  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8010EBDC 000D819C  81 83 00 00 */	lwz r12, 0(r3)
/* 8010EBE0 000D81A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8010EBE4 000D81A4  7D 89 03 A6 */	mtctr r12
/* 8010EBE8 000D81A8  4E 80 04 21 */	bctrl 
/* 8010EBEC 000D81AC  90 7E 00 28 */	stw r3, 0x28(r30)
/* 8010EBF0 000D81B0  38 9F 00 72 */	addi r4, r31, 0x72
/* 8010EBF4 000D81B4  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010EBF8 000D81B8  38 A0 00 01 */	li r5, 1
/* 8010EBFC 000D81BC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8010EC00 000D81C0  81 83 00 00 */	lwz r12, 0(r3)
/* 8010EC04 000D81C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8010EC08 000D81C8  7D 89 03 A6 */	mtctr r12
/* 8010EC0C 000D81CC  4E 80 04 21 */	bctrl 
/* 8010EC10 000D81D0  90 7E 00 34 */	stw r3, 0x34(r30)
/* 8010EC14 000D81D4  38 9F 00 7C */	addi r4, r31, 0x7c
/* 8010EC18 000D81D8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010EC1C 000D81DC  38 A0 00 01 */	li r5, 1
/* 8010EC20 000D81E0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8010EC24 000D81E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8010EC28 000D81E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8010EC2C 000D81EC  7D 89 03 A6 */	mtctr r12
/* 8010EC30 000D81F0  4E 80 04 21 */	bctrl 
/* 8010EC34 000D81F4  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 8010EC38 000D81F8  38 9F 00 86 */	addi r4, r31, 0x86
/* 8010EC3C 000D81FC  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010EC40 000D8200  38 A0 00 01 */	li r5, 1
/* 8010EC44 000D8204  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8010EC48 000D8208  81 83 00 00 */	lwz r12, 0(r3)
/* 8010EC4C 000D820C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8010EC50 000D8210  7D 89 03 A6 */	mtctr r12
/* 8010EC54 000D8214  4E 80 04 21 */	bctrl 
/* 8010EC58 000D8218  90 7E 00 30 */	stw r3, 0x30(r30)
/* 8010EC5C 000D821C  38 9F 00 90 */	addi r4, r31, 0x90
/* 8010EC60 000D8220  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010EC64 000D8224  38 A0 00 01 */	li r5, 1
/* 8010EC68 000D8228  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8010EC6C 000D822C  81 83 00 00 */	lwz r12, 0(r3)
/* 8010EC70 000D8230  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8010EC74 000D8234  7D 89 03 A6 */	mtctr r12
/* 8010EC78 000D8238  4E 80 04 21 */	bctrl 
/* 8010EC7C 000D823C  90 7E 00 38 */	stw r3, 0x38(r30)
/* 8010EC80 000D8240  38 9F 00 9C */	addi r4, r31, 0x9c
/* 8010EC84 000D8244  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010EC88 000D8248  38 A0 00 01 */	li r5, 1
/* 8010EC8C 000D824C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8010EC90 000D8250  81 83 00 00 */	lwz r12, 0(r3)
/* 8010EC94 000D8254  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8010EC98 000D8258  7D 89 03 A6 */	mtctr r12
/* 8010EC9C 000D825C  4E 80 04 21 */	bctrl 
/* 8010ECA0 000D8260  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8010ECA4 000D8264  38 A0 00 00 */	li r5, 0
/* 8010ECA8 000D8268  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010ECAC 000D826C  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8010ECB0 000D8270  81 83 00 00 */	lwz r12, 0(r3)
/* 8010ECB4 000D8274  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8010ECB8 000D8278  7D 89 03 A6 */	mtctr r12
/* 8010ECBC 000D827C  4E 80 04 21 */	bctrl 
/* 8010ECC0 000D8280  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010ECC4 000D8284  38 A0 00 01 */	li r5, 1
/* 8010ECC8 000D8288  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8010ECCC 000D828C  81 83 00 00 */	lwz r12, 0(r3)
/* 8010ECD0 000D8290  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8010ECD4 000D8294  7D 89 03 A6 */	mtctr r12
/* 8010ECD8 000D8298  4E 80 04 21 */	bctrl 
/* 8010ECDC 000D829C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8010ECE0 000D82A0  38 80 00 00 */	li r4, 0
/* 8010ECE4 000D82A4  81 83 00 00 */	lwz r12, 0(r3)
/* 8010ECE8 000D82A8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8010ECEC 000D82AC  7D 89 03 A6 */	mtctr r12
/* 8010ECF0 000D82B0  4E 80 04 21 */	bctrl 
/* 8010ECF4 000D82B4  38 61 00 08 */	addi r3, r1, 8
/* 8010ECF8 000D82B8  38 80 FF FF */	li r4, -1
/* 8010ECFC 000D82BC  48 35 0B CD */	bl func_8045F8C8
/* 8010ED00 000D82C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010ED04 000D82C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010ED08 000D82C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010ED0C 000D82CC  7C 08 03 A6 */	mtlr r0
/* 8010ED10 000D82D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8010ED14 000D82D4  4E 80 00 20 */	blr 

.global func_8010ED18
func_8010ED18:
/* 8010ED18 000D82D8  80 03 00 44 */	lwz r0, 0x44(r3)
/* 8010ED1C 000D82DC  2C 00 00 00 */	cmpwi r0, 0
/* 8010ED20 000D82E0  4C 82 00 20 */	bnelr 
/* 8010ED24 000D82E4  38 80 00 01 */	li r4, 1
/* 8010ED28 000D82E8  38 00 00 00 */	li r0, 0
/* 8010ED2C 000D82EC  90 83 00 44 */	stw r4, 0x44(r3)
/* 8010ED30 000D82F0  98 03 00 40 */	stb r0, 0x40(r3)
/* 8010ED34 000D82F4  4E 80 00 20 */	blr 

.global func_8010ED38
func_8010ED38:
/* 8010ED38 000D82F8  80 03 00 44 */	lwz r0, 0x44(r3)
/* 8010ED3C 000D82FC  2C 00 00 02 */	cmpwi r0, 2
/* 8010ED40 000D8300  4C 82 00 20 */	bnelr 
/* 8010ED44 000D8304  38 80 00 03 */	li r4, 3
/* 8010ED48 000D8308  38 00 00 00 */	li r0, 0
/* 8010ED4C 000D830C  90 83 00 44 */	stw r4, 0x44(r3)
/* 8010ED50 000D8310  98 03 00 40 */	stb r0, 0x40(r3)
/* 8010ED54 000D8314  4E 80 00 20 */	blr 

.global func_8010ED58
func_8010ED58:
/* 8010ED58 000D8318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010ED5C 000D831C  7C 08 02 A6 */	mflr r0
/* 8010ED60 000D8320  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010ED64 000D8324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010ED68 000D8328  7C 7F 1B 78 */	mr r31, r3
/* 8010ED6C 000D832C  80 03 00 44 */	lwz r0, 0x44(r3)
/* 8010ED70 000D8330  2C 00 00 02 */	cmpwi r0, 2
/* 8010ED74 000D8334  40 82 00 4C */	bne lbl_8010EDC0
/* 8010ED78 000D8338  38 80 00 04 */	li r4, 4
/* 8010ED7C 000D833C  38 00 00 00 */	li r0, 0
/* 8010ED80 000D8340  90 83 00 44 */	stw r4, 0x44(r3)
/* 8010ED84 000D8344  38 A0 00 00 */	li r5, 0
/* 8010ED88 000D8348  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8010ED8C 000D834C  98 03 00 40 */	stb r0, 0x40(r3)
/* 8010ED90 000D8350  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8010ED94 000D8354  81 83 00 00 */	lwz r12, 0(r3)
/* 8010ED98 000D8358  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8010ED9C 000D835C  7D 89 03 A6 */	mtctr r12
/* 8010EDA0 000D8360  4E 80 04 21 */	bctrl 
/* 8010EDA4 000D8364  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8010EDA8 000D8368  38 A0 00 01 */	li r5, 1
/* 8010EDAC 000D836C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8010EDB0 000D8370  81 83 00 00 */	lwz r12, 0(r3)
/* 8010EDB4 000D8374  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8010EDB8 000D8378  7D 89 03 A6 */	mtctr r12
/* 8010EDBC 000D837C  4E 80 04 21 */	bctrl 
lbl_8010EDC0:
/* 8010EDC0 000D8380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EDC4 000D8384  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010EDC8 000D8388  7C 08 03 A6 */	mtlr r0
/* 8010EDCC 000D838C  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EDD0 000D8390  4E 80 00 20 */	blr 

.global func_8010EDD4
func_8010EDD4:
/* 8010EDD4 000D8394  88 63 00 40 */	lbz r3, 0x40(r3)
/* 8010EDD8 000D8398  4E 80 00 20 */	blr 

.global func_8010EDDC
func_8010EDDC:
/* 8010EDDC 000D839C  98 83 00 41 */	stb r4, 0x41(r3)
/* 8010EDE0 000D83A0  48 00 00 60 */	b func_8010EE40

.global func_8010EDE4
func_8010EDE4:
/* 8010EDE4 000D83A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010EDE8 000D83A8  7C 08 02 A6 */	mflr r0
/* 8010EDEC 000D83AC  C0 02 95 34 */	lfs f0, lbl_806698B4@sda21(r2)
/* 8010EDF0 000D83B0  38 80 00 00 */	li r4, 0
/* 8010EDF4 000D83B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EDF8 000D83B8  38 00 00 00 */	li r0, 0
/* 8010EDFC 000D83BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010EE00 000D83C0  7C 7F 1B 78 */	mr r31, r3
/* 8010EE04 000D83C4  90 03 00 44 */	stw r0, 0x44(r3)
/* 8010EE08 000D83C8  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 8010EE0C 000D83CC  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 8010EE10 000D83D0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8010EE14 000D83D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8010EE18 000D83D8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8010EE1C 000D83DC  7D 89 03 A6 */	mtctr r12
/* 8010EE20 000D83E0  4E 80 04 21 */	bctrl 
/* 8010EE24 000D83E4  38 00 00 01 */	li r0, 1
/* 8010EE28 000D83E8  98 1F 00 40 */	stb r0, 0x40(r31)
/* 8010EE2C 000D83EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010EE30 000D83F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010EE34 000D83F4  7C 08 03 A6 */	mtlr r0
/* 8010EE38 000D83F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8010EE3C 000D83FC  4E 80 00 20 */	blr 

.global func_8010EE40
func_8010EE40:
/* 8010EE40 000D8400  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8010EE44 000D8404  7C 08 02 A6 */	mflr r0
/* 8010EE48 000D8408  90 01 00 54 */	stw r0, 0x54(r1)
/* 8010EE4C 000D840C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8010EE50 000D8410  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8010EE54 000D8414  7C 7E 1B 78 */	mr r30, r3
/* 8010EE58 000D8418  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8010EE5C 000D841C  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8010EE60 000D8420  88 04 00 BB */	lbz r0, 0xbb(r4)
/* 8010EE64 000D8424  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EE68 000D8428  98 04 00 BB */	stb r0, 0xbb(r4)
/* 8010EE6C 000D842C  80 83 00 34 */	lwz r4, 0x34(r3)
/* 8010EE70 000D8430  88 04 00 BB */	lbz r0, 0xbb(r4)
/* 8010EE74 000D8434  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EE78 000D8438  98 04 00 BB */	stb r0, 0xbb(r4)
/* 8010EE7C 000D843C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8010EE80 000D8440  88 04 00 BB */	lbz r0, 0xbb(r4)
/* 8010EE84 000D8444  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EE88 000D8448  98 04 00 BB */	stb r0, 0xbb(r4)
/* 8010EE8C 000D844C  80 83 00 30 */	lwz r4, 0x30(r3)
/* 8010EE90 000D8450  88 04 00 BB */	lbz r0, 0xbb(r4)
/* 8010EE94 000D8454  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EE98 000D8458  98 04 00 BB */	stb r0, 0xbb(r4)
/* 8010EE9C 000D845C  80 83 00 38 */	lwz r4, 0x38(r3)
/* 8010EEA0 000D8460  88 04 00 BB */	lbz r0, 0xbb(r4)
/* 8010EEA4 000D8464  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EEA8 000D8468  98 04 00 BB */	stb r0, 0xbb(r4)
/* 8010EEAC 000D846C  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8010EEB0 000D8470  88 03 00 BB */	lbz r0, 0xbb(r3)
/* 8010EEB4 000D8474  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EEB8 000D8478  98 03 00 BB */	stb r0, 0xbb(r3)
/* 8010EEBC 000D847C  4B FC A2 CD */	bl func_800D9188
/* 8010EEC0 000D8480  80 A3 00 08 */	lwz r5, 8(r3)
/* 8010EEC4 000D8484  38 80 00 00 */	li r4, 0
/* 8010EEC8 000D8488  80 65 00 00 */	lwz r3, 0(r5)
/* 8010EECC 000D848C  48 00 00 0C */	b lbl_8010EED8
lbl_8010EED0:
/* 8010EED0 000D8490  80 63 00 00 */	lwz r3, 0(r3)
/* 8010EED4 000D8494  38 84 00 01 */	addi r4, r4, 1
lbl_8010EED8:
/* 8010EED8 000D8498  7C 03 28 40 */	cmplw r3, r5
/* 8010EEDC 000D849C  40 82 FF F4 */	bne lbl_8010EED0
/* 8010EEE0 000D84A0  2C 04 00 00 */	cmpwi r4, 0
/* 8010EEE4 000D84A4  41 82 00 54 */	beq lbl_8010EF38
/* 8010EEE8 000D84A8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8010EEEC 000D84AC  88 03 00 BB */	lbz r0, 0xbb(r3)
/* 8010EEF0 000D84B0  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EEF4 000D84B4  60 00 00 01 */	ori r0, r0, 1
/* 8010EEF8 000D84B8  98 03 00 BB */	stb r0, 0xbb(r3)
/* 8010EEFC 000D84BC  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 8010EF00 000D84C0  88 03 00 BB */	lbz r0, 0xbb(r3)
/* 8010EF04 000D84C4  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EF08 000D84C8  60 00 00 01 */	ori r0, r0, 1
/* 8010EF0C 000D84CC  98 03 00 BB */	stb r0, 0xbb(r3)
/* 8010EF10 000D84D0  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8010EF14 000D84D4  88 03 00 BB */	lbz r0, 0xbb(r3)
/* 8010EF18 000D84D8  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EF1C 000D84DC  60 00 00 01 */	ori r0, r0, 1
/* 8010EF20 000D84E0  98 03 00 BB */	stb r0, 0xbb(r3)
/* 8010EF24 000D84E4  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 8010EF28 000D84E8  88 03 00 BB */	lbz r0, 0xbb(r3)
/* 8010EF2C 000D84EC  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EF30 000D84F0  60 00 00 01 */	ori r0, r0, 1
/* 8010EF34 000D84F4  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_8010EF38:
/* 8010EF38 000D84F8  83 FE 00 28 */	lwz r31, 0x28(r30)
/* 8010EF3C 000D84FC  4B F8 FD 75 */	bl func_8009ECB0
/* 8010EF40 000D8500  88 1E 00 41 */	lbz r0, 0x41(r30)
/* 8010EF44 000D8504  54 00 10 3A */	slwi r0, r0, 2
/* 8010EF48 000D8508  7C 63 02 14 */	add r3, r3, r0
/* 8010EF4C 000D850C  80 63 00 04 */	lwz r3, 4(r3)
/* 8010EF50 000D8510  4B FA 9C 45 */	bl func_800B8B94
/* 8010EF54 000D8514  2C 03 00 00 */	cmpwi r3, 0
/* 8010EF58 000D8518  7C 7D 1B 78 */	mr r29, r3
/* 8010EF5C 000D851C  41 82 00 08 */	beq lbl_8010EF64
/* 8010EF60 000D8520  3B A3 3E 9C */	addi r29, r3, 0x3e9c
lbl_8010EF64:
/* 8010EF64 000D8524  2C 1D 00 00 */	cmpwi r29, 0
/* 8010EF68 000D8528  41 82 01 EC */	beq lbl_8010F154
/* 8010EF6C 000D852C  4B FC A2 1D */	bl func_800D9188
/* 8010EF70 000D8530  4B FD B4 D5 */	bl func_800EA444
/* 8010EF74 000D8534  2C 03 00 00 */	cmpwi r3, 0
/* 8010EF78 000D8538  41 82 00 20 */	beq lbl_8010EF98
/* 8010EF7C 000D853C  80 63 00 04 */	lwz r3, 4(r3)
/* 8010EF80 000D8540  2C 03 00 00 */	cmpwi r3, 0
/* 8010EF84 000D8544  41 82 00 14 */	beq lbl_8010EF98
/* 8010EF88 000D8548  80 1D 00 74 */	lwz r0, 0x74(r29)
/* 8010EF8C 000D854C  7C 00 18 40 */	cmplw r0, r3
/* 8010EF90 000D8550  40 82 00 08 */	bne lbl_8010EF98
/* 8010EF94 000D8554  83 FE 00 34 */	lwz r31, 0x34(r30)
lbl_8010EF98:
/* 8010EF98 000D8558  88 1F 00 BB */	lbz r0, 0xbb(r31)
/* 8010EF9C 000D855C  7F A3 EB 78 */	mr r3, r29
/* 8010EFA0 000D8560  38 80 00 64 */	li r4, 0x64
/* 8010EFA4 000D8564  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010EFA8 000D8568  60 00 00 01 */	ori r0, r0, 1
/* 8010EFAC 000D856C  98 1F 00 BB */	stb r0, 0xbb(r31)
/* 8010EFB0 000D8570  81 9D 00 00 */	lwz r12, 0(r29)
/* 8010EFB4 000D8574  81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8010EFB8 000D8578  7D 89 03 A6 */	mtctr r12
/* 8010EFBC 000D857C  4E 80 04 21 */	bctrl 
/* 8010EFC0 000D8580  2C 03 00 00 */	cmpwi r3, 0
/* 8010EFC4 000D8584  41 82 00 24 */	beq lbl_8010EFE8
/* 8010EFC8 000D8588  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8010EFCC 000D858C  38 A1 00 08 */	addi r5, r1, 8
/* 8010EFD0 000D8590  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8010EFD4 000D8594  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8010EFD8 000D8598  D0 41 00 08 */	stfs f2, 8(r1)
/* 8010EFDC 000D859C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8010EFE0 000D85A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8010EFE4 000D85A4  48 00 00 1C */	b lbl_8010F000
lbl_8010EFE8:
/* 8010EFE8 000D85A8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8010EFEC 000D85AC  7F A3 EB 78 */	mr r3, r29
/* 8010EFF0 000D85B0  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 8010EFF4 000D85B4  7D 89 03 A6 */	mtctr r12
/* 8010EFF8 000D85B8  4E 80 04 21 */	bctrl 
/* 8010EFFC 000D85BC  7C 65 1B 78 */	mr r5, r3
lbl_8010F000:
/* 8010F000 000D85C0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8010F004 000D85C4  38 80 FF FF */	li r4, -1
/* 8010F008 000D85C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8010F00C 000D85CC  C0 05 00 04 */	lfs f0, 4(r5)
/* 8010F010 000D85D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8010F014 000D85D4  C0 05 00 08 */	lfs f0, 8(r5)
/* 8010F018 000D85D8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8010F01C 000D85DC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8010F020 000D85E0  48 38 72 45 */	bl func_80496264
/* 8010F024 000D85E4  7C 7E 1B 78 */	mr r30, r3
/* 8010F028 000D85E8  38 61 00 20 */	addi r3, r1, 0x20
/* 8010F02C 000D85EC  7F C4 F3 78 */	mr r4, r30
/* 8010F030 000D85F0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8010F034 000D85F4  48 38 C5 69 */	bl func_8049B59C
/* 8010F038 000D85F8  88 1F 00 BB */	lbz r0, 0xbb(r31)
/* 8010F03C 000D85FC  C0 02 95 34 */	lfs f0, lbl_806698B4@sda21(r2)
/* 8010F040 000D8600  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010F044 000D8604  60 00 00 01 */	ori r0, r0, 1
/* 8010F048 000D8608  98 1F 00 BB */	stb r0, 0xbb(r31)
/* 8010F04C 000D860C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8010F050 000D8610  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F054 000D8614  4C 40 13 82 */	cror 2, 0, 2
/* 8010F058 000D8618  40 82 00 10 */	bne lbl_8010F068
/* 8010F05C 000D861C  88 1F 00 BB */	lbz r0, 0xbb(r31)
/* 8010F060 000D8620  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8010F064 000D8624  98 1F 00 BB */	stb r0, 0xbb(r31)
lbl_8010F068:
/* 8010F068 000D8628  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8010F06C 000D862C  C0 22 95 3C */	lfs f1, lbl_806698BC@sda21(r2)
/* 8010F070 000D8630  C0 02 95 34 */	lfs f0, lbl_806698B4@sda21(r2)
/* 8010F074 000D8634  EC 42 08 28 */	fsubs f2, f2, f1
/* 8010F078 000D8638  C0 22 95 40 */	lfs f1, lbl_806698C0@sda21(r2)
/* 8010F07C 000D863C  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 8010F080 000D8640  C0 62 95 38 */	lfs f3, lbl_806698B8@sda21(r2)
/* 8010F084 000D8644  EC 22 00 72 */	fmuls f1, f2, f1
/* 8010F088 000D8648  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8010F08C 000D864C  EC 44 18 28 */	fsubs f2, f4, f3
/* 8010F090 000D8650  C0 02 95 44 */	lfs f0, lbl_806698C4@sda21(r2)
/* 8010F094 000D8654  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8010F098 000D8658  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8010F09C 000D865C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8010F0A0 000D8660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F0A4 000D8664  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8010F0A8 000D8668  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8010F0AC 000D866C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8010F0B0 000D8670  90 61 00 30 */	stw r3, 0x30(r1)
/* 8010F0B4 000D8674  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010F0B8 000D8678  40 81 00 84 */	ble lbl_8010F13C
/* 8010F0BC 000D867C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8010F0C0 000D8680  7F A3 EB 78 */	mr r3, r29
/* 8010F0C4 000D8684  81 9D 00 00 */	lwz r12, 0(r29)
/* 8010F0C8 000D8688  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 8010F0CC 000D868C  7D 89 03 A6 */	mtctr r12
/* 8010F0D0 000D8690  4E 80 04 21 */	bctrl 
/* 8010F0D4 000D8694  7C 65 1B 78 */	mr r5, r3
/* 8010F0D8 000D8698  7F C4 F3 78 */	mr r4, r30
/* 8010F0DC 000D869C  38 61 00 14 */	addi r3, r1, 0x14
/* 8010F0E0 000D86A0  48 38 C4 BD */	bl func_8049B59C
/* 8010F0E4 000D86A4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8010F0E8 000D86A8  C0 02 95 3C */	lfs f0, lbl_806698BC@sda21(r2)
/* 8010F0EC 000D86AC  C0 22 95 40 */	lfs f1, lbl_806698C0@sda21(r2)
/* 8010F0F0 000D86B0  EC 42 00 28 */	fsubs f2, f2, f0
/* 8010F0F4 000D86B4  C0 02 95 48 */	lfs f0, lbl_806698C8@sda21(r2)
/* 8010F0F8 000D86B8  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8010F0FC 000D86BC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8010F100 000D86C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010F104 000D86C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8010F108 000D86C8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8010F10C 000D86CC  40 80 00 08 */	bge lbl_8010F114
/* 8010F110 000D86D0  48 00 00 08 */	b lbl_8010F118
lbl_8010F114:
/* 8010F114 000D86D4  FC 60 00 90 */	fmr f3, f0
lbl_8010F118:
/* 8010F118 000D86D8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8010F11C 000D86DC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8010F120 000D86E0  40 80 00 1C */	bge lbl_8010F13C
/* 8010F124 000D86E4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8010F128 000D86E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8010F12C 000D86EC  40 80 00 08 */	bge lbl_8010F134
/* 8010F130 000D86F0  48 00 00 08 */	b lbl_8010F138
lbl_8010F134:
/* 8010F134 000D86F4  FC 20 00 90 */	fmr f1, f0
lbl_8010F138:
/* 8010F138 000D86F8  D0 21 00 24 */	stfs f1, 0x24(r1)
lbl_8010F13C:
/* 8010F13C 000D86FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8010F140 000D8700  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8010F144 000D8704  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8010F148 000D8708  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8010F14C 000D870C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8010F150 000D8710  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_8010F154:
/* 8010F154 000D8714  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8010F158 000D8718  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8010F15C 000D871C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8010F160 000D8720  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8010F164 000D8724  7C 08 03 A6 */	mtlr r0
/* 8010F168 000D8728  38 21 00 50 */	addi r1, r1, 0x50
/* 8010F16C 000D872C  4E 80 00 20 */	blr 