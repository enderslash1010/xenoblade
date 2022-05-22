.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global OSRegisterShutdownFunction
OSRegisterShutdownFunction:
/* 80359F10 003234D0  80 AD B9 40 */	lwz r5, lbl_80667AC0@sda21(r13)
/* 80359F14 003234D4  48 00 00 08 */	b lbl_80359F1C
lbl_80359F18:
/* 80359F18 003234D8  80 A5 00 08 */	lwz r5, 8(r5)
lbl_80359F1C:
/* 80359F1C 003234DC  2C 05 00 00 */	cmpwi r5, 0
/* 80359F20 003234E0  41 82 00 14 */	beq lbl_80359F34
/* 80359F24 003234E4  80 85 00 04 */	lwz r4, 4(r5)
/* 80359F28 003234E8  80 03 00 04 */	lwz r0, 4(r3)
/* 80359F2C 003234EC  7C 04 00 40 */	cmplw r4, r0
/* 80359F30 003234F0  40 81 FF E8 */	ble lbl_80359F18
lbl_80359F34:
/* 80359F34 003234F4  2C 05 00 00 */	cmpwi r5, 0
/* 80359F38 003234F8  40 82 00 38 */	bne lbl_80359F70
/* 80359F3C 003234FC  38 8D B9 40 */	addi r4, r13, lbl_80667AC0@sda21
/* 80359F40 00323500  80 84 00 04 */	lwz r4, 4(r4)
/* 80359F44 00323504  2C 04 00 00 */	cmpwi r4, 0
/* 80359F48 00323508  40 82 00 0C */	bne lbl_80359F54
/* 80359F4C 0032350C  90 6D B9 40 */	stw r3, lbl_80667AC0@sda21(r13)
/* 80359F50 00323510  48 00 00 08 */	b lbl_80359F58
lbl_80359F54:
/* 80359F54 00323514  90 64 00 08 */	stw r3, 8(r4)
lbl_80359F58:
/* 80359F58 00323518  38 00 00 00 */	li r0, 0
/* 80359F5C 0032351C  90 83 00 0C */	stw r4, 0xc(r3)
/* 80359F60 00323520  38 8D B9 40 */	addi r4, r13, lbl_80667AC0@sda21
/* 80359F64 00323524  90 03 00 08 */	stw r0, 8(r3)
/* 80359F68 00323528  90 64 00 04 */	stw r3, 4(r4)
/* 80359F6C 0032352C  4E 80 00 20 */	blr

.global lbl_80359F70
lbl_80359F70:
/* 80359F70 00323530  90 A3 00 08 */	stw r5, 8(r3)
/* 80359F74 00323534  80 85 00 0C */	lwz r4, 0xc(r5)
/* 80359F78 00323538  90 65 00 0C */	stw r3, 0xc(r5)
/* 80359F7C 0032353C  2C 04 00 00 */	cmpwi r4, 0
/* 80359F80 00323540  90 83 00 0C */	stw r4, 0xc(r3)
/* 80359F84 00323544  40 82 00 0C */	bne lbl_80359F90
/* 80359F88 00323548  90 6D B9 40 */	stw r3, lbl_80667AC0@sda21(r13)
/* 80359F8C 0032354C  4E 80 00 20 */	blr

.global lbl_80359F90
lbl_80359F90:
/* 80359F90 00323550  90 64 00 08 */	stw r3, 8(r4)
/* 80359F94 00323554  4E 80 00 20 */	blr 
/* 80359F98 00323558  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80359F9C 0032355C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_80359FA0
func_80359FA0:
/* 80359FA0 00323560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80359FA4 00323564  7C 08 02 A6 */	mflr r0
/* 80359FA8 00323568  90 01 00 24 */	stw r0, 0x24(r1)
/* 80359FAC 0032356C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80359FB0 00323570  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80359FB4 00323574  3B C0 00 00 */	li r30, 0
/* 80359FB8 00323578  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80359FBC 0032357C  7C 9D 23 78 */	mr r29, r4
/* 80359FC0 00323580  93 81 00 10 */	stw r28, 0x10(r1)
/* 80359FC4 00323584  7C 7C 1B 78 */	mr r28, r3
/* 80359FC8 00323588  38 60 00 00 */	li r3, 0
/* 80359FCC 0032358C  83 ED B9 40 */	lwz r31, lbl_80667AC0@sda21(r13)
/* 80359FD0 00323590  48 00 00 40 */	b lbl_8035A010
lbl_80359FD4:
/* 80359FD4 00323594  2C 1E 00 00 */	cmpwi r30, 0
/* 80359FD8 00323598  41 82 00 10 */	beq lbl_80359FE8
/* 80359FDC 0032359C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80359FE0 003235A0  7C 03 00 40 */	cmplw r3, r0
/* 80359FE4 003235A4  40 82 00 34 */	bne lbl_8035A018
lbl_80359FE8:
/* 80359FE8 003235A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80359FEC 003235AC  7F 83 E3 78 */	mr r3, r28
/* 80359FF0 003235B0  7F A4 EB 78 */	mr r4, r29
/* 80359FF4 003235B4  7D 89 03 A6 */	mtctr r12
/* 80359FF8 003235B8  4E 80 04 21 */	bctrl 
/* 80359FFC 003235BC  7C 60 00 34 */	cntlzw r0, r3
/* 8035A000 003235C0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8035A004 003235C4  54 00 D9 7E */	srwi r0, r0, 5
/* 8035A008 003235C8  83 FF 00 08 */	lwz r31, 8(r31)
/* 8035A00C 003235CC  7F DE 03 78 */	or r30, r30, r0
lbl_8035A010:
/* 8035A010 003235D0  2C 1F 00 00 */	cmpwi r31, 0
/* 8035A014 003235D4  40 82 FF C0 */	bne lbl_80359FD4
lbl_8035A018:
/* 8035A018 003235D8  48 00 0E 09 */	bl __OSSyncSram
/* 8035A01C 003235DC  7C 60 00 34 */	cntlzw r0, r3
/* 8035A020 003235E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035A024 003235E4  54 00 D9 7E */	srwi r0, r0, 5
/* 8035A028 003235E8  7F DE 03 78 */	or r30, r30, r0
/* 8035A02C 003235EC  7F C0 00 34 */	cntlzw r0, r30
/* 8035A030 003235F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035A034 003235F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035A038 003235F8  54 03 D9 7E */	srwi r3, r0, 5
/* 8035A03C 003235FC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8035A040 00323600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035A044 00323604  7C 08 03 A6 */	mtlr r0
/* 8035A048 00323608  38 21 00 20 */	addi r1, r1, 0x20
/* 8035A04C 0032360C  4E 80 00 20 */	blr 

.global __OSShutdownDevices
__OSShutdownDevices:
/* 8035A050 00323610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035A054 00323614  7C 08 02 A6 */	mflr r0
/* 8035A058 00323618  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035A05C 0032361C  39 61 00 20 */	addi r11, r1, 0x20
/* 8035A060 00323620  4B F6 00 F5 */	bl _savegpr_27
/* 8035A064 00323624  38 03 FF FB */	addi r0, r3, -5
/* 8035A068 00323628  7C 7F 1B 78 */	mr r31, r3
/* 8035A06C 0032362C  28 00 00 01 */	cmplwi r0, 1
/* 8035A070 00323630  40 81 00 0C */	ble lbl_8035A07C
/* 8035A074 00323634  2C 03 00 00 */	cmpwi r3, 0
/* 8035A078 00323638  40 82 00 0C */	bne lbl_8035A084
lbl_8035A07C:
/* 8035A07C 0032363C  3B 60 00 00 */	li r27, 0
/* 8035A080 00323640  48 00 00 08 */	b lbl_8035A088
lbl_8035A084:
/* 8035A084 00323644  3B 60 00 01 */	li r27, 1
lbl_8035A088:
/* 8035A088 00323648  4B FF 9E 09 */	bl __OSStopAudioSystem
/* 8035A08C 0032364C  2C 1B 00 00 */	cmpwi r27, 0
/* 8035A090 00323650  40 82 00 10 */	bne lbl_8035A0A0
/* 8035A094 00323654  38 60 00 01 */	li r3, 1
/* 8035A098 00323658  48 00 54 39 */	bl __PADDisableRecalibration
/* 8035A09C 0032365C  7C 7C 1B 78 */	mr r28, r3
lbl_8035A0A0:
/* 8035A0A0 00323660  83 AD B9 40 */	lwz r29, lbl_80667AC0@sda21(r13)
/* 8035A0A4 00323664  38 60 00 00 */	li r3, 0
/* 8035A0A8 00323668  3B C0 00 00 */	li r30, 0
/* 8035A0AC 0032366C  48 00 00 40 */	b lbl_8035A0EC
lbl_8035A0B0:
/* 8035A0B0 00323670  2C 1E 00 00 */	cmpwi r30, 0
/* 8035A0B4 00323674  41 82 00 10 */	beq lbl_8035A0C4
/* 8035A0B8 00323678  80 1D 00 04 */	lwz r0, 4(r29)
/* 8035A0BC 0032367C  7C 03 00 40 */	cmplw r3, r0
/* 8035A0C0 00323680  40 82 00 34 */	bne lbl_8035A0F4
lbl_8035A0C4:
/* 8035A0C4 00323684  81 9D 00 00 */	lwz r12, 0(r29)
/* 8035A0C8 00323688  7F E4 FB 78 */	mr r4, r31
/* 8035A0CC 0032368C  38 60 00 00 */	li r3, 0
/* 8035A0D0 00323690  7D 89 03 A6 */	mtctr r12
/* 8035A0D4 00323694  4E 80 04 21 */	bctrl 
/* 8035A0D8 00323698  7C 60 00 34 */	cntlzw r0, r3
/* 8035A0DC 0032369C  80 7D 00 04 */	lwz r3, 4(r29)
/* 8035A0E0 003236A0  54 00 D9 7E */	srwi r0, r0, 5
/* 8035A0E4 003236A4  83 BD 00 08 */	lwz r29, 8(r29)
/* 8035A0E8 003236A8  7F DE 03 78 */	or r30, r30, r0
lbl_8035A0EC:
/* 8035A0EC 003236AC  2C 1D 00 00 */	cmpwi r29, 0
/* 8035A0F0 003236B0  40 82 FF C0 */	bne lbl_8035A0B0
lbl_8035A0F4:
/* 8035A0F4 003236B4  48 00 0D 2D */	bl __OSSyncSram
/* 8035A0F8 003236B8  7C 60 00 34 */	cntlzw r0, r3
/* 8035A0FC 003236BC  54 00 D9 7E */	srwi r0, r0, 5
/* 8035A100 003236C0  7F DE 03 79 */	or. r30, r30, r0
/* 8035A104 003236C4  40 82 FF 9C */	bne lbl_8035A0A0
lbl_8035A108:
/* 8035A108 003236C8  48 00 0D 19 */	bl __OSSyncSram
/* 8035A10C 003236CC  2C 03 00 00 */	cmpwi r3, 0
/* 8035A110 003236D0  41 82 FF F8 */	beq lbl_8035A108
/* 8035A114 003236D4  4B FF E8 9D */	bl OSDisableInterrupts
/* 8035A118 003236D8  83 CD B9 40 */	lwz r30, lbl_80667AC0@sda21(r13)
/* 8035A11C 003236DC  38 60 00 00 */	li r3, 0
/* 8035A120 003236E0  3B A0 00 00 */	li r29, 0
/* 8035A124 003236E4  48 00 00 40 */	b lbl_8035A164
lbl_8035A128:
/* 8035A128 003236E8  2C 1D 00 00 */	cmpwi r29, 0
/* 8035A12C 003236EC  41 82 00 10 */	beq lbl_8035A13C
/* 8035A130 003236F0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8035A134 003236F4  7C 03 00 40 */	cmplw r3, r0
/* 8035A138 003236F8  40 82 00 34 */	bne lbl_8035A16C
lbl_8035A13C:
/* 8035A13C 003236FC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8035A140 00323700  7F E4 FB 78 */	mr r4, r31
/* 8035A144 00323704  38 60 00 01 */	li r3, 1
/* 8035A148 00323708  7D 89 03 A6 */	mtctr r12
/* 8035A14C 0032370C  4E 80 04 21 */	bctrl 
/* 8035A150 00323710  7C 60 00 34 */	cntlzw r0, r3
/* 8035A154 00323714  80 7E 00 04 */	lwz r3, 4(r30)
/* 8035A158 00323718  54 00 D9 7E */	srwi r0, r0, 5
/* 8035A15C 0032371C  83 DE 00 08 */	lwz r30, 8(r30)
/* 8035A160 00323720  7F BD 03 78 */	or r29, r29, r0
lbl_8035A164:
/* 8035A164 00323724  2C 1E 00 00 */	cmpwi r30, 0
/* 8035A168 00323728  40 82 FF C0 */	bne lbl_8035A128
lbl_8035A16C:
/* 8035A16C 0032372C  48 00 0C B5 */	bl __OSSyncSram
/* 8035A170 00323730  4B FF A0 B1 */	bl LCDisable
/* 8035A174 00323734  2C 1B 00 00 */	cmpwi r27, 0
/* 8035A178 00323738  40 82 00 0C */	bne lbl_8035A184
/* 8035A17C 0032373C  7F 83 E3 78 */	mr r3, r28
/* 8035A180 00323740  48 00 53 51 */	bl __PADDisableRecalibration
lbl_8035A184:
/* 8035A184 00323744  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 8035A188 00323748  80 63 00 DC */	lwz r3, 0x800000DC@l(r3)
/* 8035A18C 0032374C  48 00 00 24 */	b lbl_8035A1B0
lbl_8035A190:
/* 8035A190 00323750  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 8035A194 00323754  83 A3 02 FC */	lwz r29, 0x2fc(r3)
/* 8035A198 00323758  2C 00 00 01 */	cmpwi r0, 1
/* 8035A19C 0032375C  41 82 00 0C */	beq lbl_8035A1A8
/* 8035A1A0 00323760  2C 00 00 04 */	cmpwi r0, 4
/* 8035A1A4 00323764  40 82 00 08 */	bne lbl_8035A1AC
lbl_8035A1A8:
/* 8035A1A8 00323768  48 00 1D 69 */	bl OSCancelThread
lbl_8035A1AC:
/* 8035A1AC 0032376C  7F A3 EB 78 */	mr r3, r29
lbl_8035A1B0:
/* 8035A1B0 00323770  2C 03 00 00 */	cmpwi r3, 0
/* 8035A1B4 00323774  40 82 FF DC */	bne lbl_8035A190
/* 8035A1B8 00323778  39 61 00 20 */	addi r11, r1, 0x20
/* 8035A1BC 0032377C  4B F5 FF E5 */	bl _restgpr_27
/* 8035A1C0 00323780  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035A1C4 00323784  7C 08 03 A6 */	mtlr r0
/* 8035A1C8 00323788  38 21 00 20 */	addi r1, r1, 0x20
/* 8035A1CC 0032378C  4E 80 00 20 */	blr 

.global OSShutdownSystem
OSShutdownSystem:
/* 8035A1D0 00323790  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8035A1D4 00323794  7C 08 02 A6 */	mflr r0
/* 8035A1D8 00323798  38 80 00 00 */	li r4, 0
/* 8035A1DC 0032379C  38 A0 00 02 */	li r5, 2
/* 8035A1E0 003237A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8035A1E4 003237A4  38 61 00 08 */	addi r3, r1, 8
/* 8035A1E8 003237A8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8035A1EC 003237AC  4B CA A1 65 */	bl memset
/* 8035A1F0 003237B0  48 00 53 41 */	bl SCInit
lbl_8035A1F4:
/* 8035A1F4 003237B4  48 00 53 DD */	bl func_8035F5D0
/* 8035A1F8 003237B8  28 03 00 01 */	cmplwi r3, 1
/* 8035A1FC 003237BC  41 82 FF F8 */	beq lbl_8035A1F4
/* 8035A200 003237C0  38 61 00 08 */	addi r3, r1, 8
/* 8035A204 003237C4  48 00 6D FD */	bl func_80361000
/* 8035A208 003237C8  48 00 3A 59 */	bl __OSStopPlayRecord
/* 8035A20C 003237CC  48 00 33 15 */	bl __OSUnRegisterStateEvent
/* 8035A210 003237D0  4B FB 50 E1 */	bl func_8030F2F0
/* 8035A214 003237D4  38 61 00 18 */	addi r3, r1, 0x18
/* 8035A218 003237D8  48 00 3D 29 */	bl func_8035DF40
/* 8035A21C 003237DC  8B E1 00 1E */	lbz r31, 0x1e(r1)
/* 8035A220 003237E0  4B FB 4E D1 */	bl func_8030F0F0
/* 8035A224 003237E4  28 03 00 02 */	cmplwi r3, 2
/* 8035A228 003237E8  41 82 00 0C */	beq lbl_8035A234
/* 8035A22C 003237EC  38 60 00 03 */	li r3, 3
/* 8035A230 003237F0  48 00 00 34 */	b lbl_8035A264
lbl_8035A234:
/* 8035A234 003237F4  28 1F 00 01 */	cmplwi r31, 1
/* 8035A238 003237F8  40 82 00 28 */	bne lbl_8035A260
/* 8035A23C 003237FC  38 61 00 0C */	addi r3, r1, 0xc
/* 8035A240 00323800  48 00 0E 41 */	bl func_8035B080
/* 8035A244 00323804  2C 03 00 00 */	cmpwi r3, 0
/* 8035A248 00323808  41 82 00 18 */	beq lbl_8035A260
/* 8035A24C 0032380C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035A250 00323810  2C 00 00 00 */	cmpwi r0, 0
/* 8035A254 00323814  40 82 00 0C */	bne lbl_8035A260
/* 8035A258 00323818  38 60 00 01 */	li r3, 1
/* 8035A25C 0032381C  48 00 00 08 */	b lbl_8035A264
lbl_8035A260:
/* 8035A260 00323820  38 60 00 02 */	li r3, 2
lbl_8035A264:
/* 8035A264 00323824  88 01 00 08 */	lbz r0, 8(r1)
/* 8035A268 00323828  98 61 00 1E */	stb r3, 0x1e(r1)
/* 8035A26C 0032382C  28 00 00 01 */	cmplwi r0, 1
/* 8035A270 00323830  40 82 00 10 */	bne lbl_8035A280
/* 8035A274 00323834  38 00 00 05 */	li r0, 5
/* 8035A278 00323838  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8035A27C 0032383C  48 00 00 0C */	b lbl_8035A288
lbl_8035A280:
/* 8035A280 00323840  38 00 00 01 */	li r0, 1
/* 8035A284 00323844  98 01 00 1D */	stb r0, 0x1d(r1)
lbl_8035A288:
/* 8035A288 00323848  48 00 0F 19 */	bl func_8035B1A0
/* 8035A28C 0032384C  38 61 00 18 */	addi r3, r1, 0x18
/* 8035A290 00323850  48 00 3B C1 */	bl func_8035DE50
/* 8035A294 00323854  38 61 00 10 */	addi r3, r1, 0x10
/* 8035A298 00323858  4B FF 77 19 */	bl __OSGetIOSRev
/* 8035A29C 0032385C  88 01 00 08 */	lbz r0, 8(r1)
/* 8035A2A0 00323860  28 00 00 01 */	cmplwi r0, 1
/* 8035A2A4 00323864  40 82 00 24 */	bne lbl_8035A2C8
/* 8035A2A8 00323868  38 00 00 01 */	li r0, 1
/* 8035A2AC 0032386C  90 0D B9 3C */	stw r0, lbl_80667ABC@sda21(r13)
/* 8035A2B0 00323870  48 00 13 41 */	bl OSDisableScheduler
/* 8035A2B4 00323874  38 60 00 05 */	li r3, 5
/* 8035A2B8 00323878  4B FF FD 99 */	bl __OSShutdownDevices
/* 8035A2BC 0032387C  48 00 13 75 */	bl OSEnableScheduler
/* 8035A2C0 00323880  4B FF BE 21 */	bl func_803560E0
/* 8035A2C4 00323884  48 00 00 14 */	b lbl_8035A2D8
lbl_8035A2C8:
/* 8035A2C8 00323888  48 00 13 29 */	bl OSDisableScheduler
/* 8035A2CC 0032388C  38 60 00 02 */	li r3, 2
/* 8035A2D0 00323890  4B FF FD 81 */	bl __OSShutdownDevices
/* 8035A2D4 00323894  48 00 30 4D */	bl func_8035D320
lbl_8035A2D8:
/* 8035A2D8 00323898  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8035A2DC 0032389C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8035A2E0 003238A0  7C 08 03 A6 */	mtlr r0
/* 8035A2E4 003238A4  38 21 00 40 */	addi r1, r1, 0x40
/* 8035A2E8 003238A8  4E 80 00 20 */	blr 
/* 8035A2EC 003238AC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global OSRestart
OSRestart:
/* 8035A2F0 003238B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035A2F4 003238B4  7C 08 02 A6 */	mflr r0
/* 8035A2F8 003238B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035A2FC 003238BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035A300 003238C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8035A304 003238C4  7C 7E 1B 78 */	mr r30, r3
/* 8035A308 003238C8  4B FF 8A 99 */	bl OSGetAppType
/* 8035A30C 003238CC  7C 7F 1B 78 */	mr r31, r3
/* 8035A310 003238D0  48 00 39 51 */	bl __OSStopPlayRecord
/* 8035A314 003238D4  48 00 32 0D */	bl __OSUnRegisterStateEvent
/* 8035A318 003238D8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8035A31C 003238DC  28 00 00 81 */	cmplwi r0, 0x81
/* 8035A320 003238E0  40 82 00 20 */	bne lbl_8035A340
/* 8035A324 003238E4  48 00 12 CD */	bl OSDisableScheduler
/* 8035A328 003238E8  38 60 00 04 */	li r3, 4
/* 8035A32C 003238EC  4B FF FD 25 */	bl __OSShutdownDevices
/* 8035A330 003238F0  48 00 13 01 */	bl OSEnableScheduler
/* 8035A334 003238F4  7F C3 F3 78 */	mr r3, r30
/* 8035A338 003238F8  48 00 4E 09 */	bl __OSRelaunchTitle
/* 8035A33C 003238FC  48 00 00 28 */	b lbl_8035A364
lbl_8035A340:
/* 8035A340 00323900  28 00 00 80 */	cmplwi r0, 0x80
/* 8035A344 00323904  40 82 00 20 */	bne lbl_8035A364
/* 8035A348 00323908  48 00 12 A9 */	bl OSDisableScheduler
/* 8035A34C 0032390C  38 60 00 04 */	li r3, 4
/* 8035A350 00323910  4B FF FD 01 */	bl __OSShutdownDevices
/* 8035A354 00323914  48 00 12 DD */	bl OSEnableScheduler
/* 8035A358 00323918  80 8D B9 38 */	lwz r4, lbl_80667AB8@sda21(r13)
/* 8035A35C 0032391C  7F C3 F3 78 */	mr r3, r30
/* 8035A360 00323920  4B FF FB 21 */	bl __OSReboot
lbl_8035A364:
/* 8035A364 00323924  48 00 12 8D */	bl OSDisableScheduler
/* 8035A368 00323928  38 60 00 01 */	li r3, 1
/* 8035A36C 0032392C  4B FF FC E5 */	bl __OSShutdownDevices
/* 8035A370 00323930  80 0D B8 84 */	lwz r0, lbl_80667A04@sda21(r13)
/* 8035A374 00323934  2C 00 00 00 */	cmpwi r0, 0
/* 8035A378 00323938  40 82 00 10 */	bne lbl_8035A388
/* 8035A37C 0032393C  80 0D B8 F4 */	lwz r0, lbl_80667A74@sda21(r13)
/* 8035A380 00323940  2C 00 00 00 */	cmpwi r0, 0
/* 8035A384 00323944  41 82 00 08 */	beq lbl_8035A38C
lbl_8035A388:
/* 8035A388 00323948  48 00 2E 79 */	bl __OSInitSTM
lbl_8035A38C:
/* 8035A38C 0032394C  48 00 30 15 */	bl __OSHotReset
/* 8035A390 00323950  3C 60 80 55 */	lis r3, lbl_80552AF0@ha
/* 8035A394 00323954  3C A0 80 55 */	lis r5, lbl_80552AFC@ha
/* 8035A398 00323958  38 63 2A F0 */	addi r3, r3, lbl_80552AF0@l
/* 8035A39C 0032395C  38 80 04 0A */	li r4, 0x40a
/* 8035A3A0 00323960  38 A5 2A FC */	addi r5, r5, lbl_80552AFC@l
/* 8035A3A4 00323964  4C C6 31 82 */	crclr 6
/* 8035A3A8 00323968  48 19 40 ED */	bl OSPanic
/* 8035A3AC 0032396C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035A3B0 00323970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035A3B4 00323974  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035A3B8 00323978  7C 08 03 A6 */	mtlr r0
/* 8035A3BC 0032397C  38 21 00 10 */	addi r1, r1, 0x10
/* 8035A3C0 00323980  4E 80 00 20 */	blr 
/* 8035A3C4 00323984  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035A3C8 00323988  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035A3CC 0032398C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __OSReturnToMenu
__OSReturnToMenu:
/* 8035A3D0 00323990  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8035A3D4 00323994  7C 08 02 A6 */	mflr r0
/* 8035A3D8 00323998  90 01 00 94 */	stw r0, 0x94(r1)
/* 8035A3DC 0032399C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8035A3E0 003239A0  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8035A3E4 003239A4  3F C0 80 55 */	lis r30, lbl_80552AF0@ha
/* 8035A3E8 003239A8  3B DE 2A F0 */	addi r30, r30, lbl_80552AF0@l
/* 8035A3EC 003239AC  93 A1 00 84 */	stw r29, 0x84(r1)
/* 8035A3F0 003239B0  7C 7D 1B 78 */	mr r29, r3
/* 8035A3F4 003239B4  48 00 38 6D */	bl __OSStopPlayRecord
/* 8035A3F8 003239B8  48 00 31 29 */	bl __OSUnRegisterStateEvent
/* 8035A3FC 003239BC  4B FB 4E F5 */	bl func_8030F2F0
/* 8035A400 003239C0  38 61 00 58 */	addi r3, r1, 0x58
/* 8035A404 003239C4  48 00 3B 3D */	bl func_8035DF40
/* 8035A408 003239C8  8B E1 00 5E */	lbz r31, 0x5e(r1)
/* 8035A40C 003239CC  4B FB 4C E5 */	bl func_8030F0F0
/* 8035A410 003239D0  28 03 00 02 */	cmplwi r3, 2
/* 8035A414 003239D4  41 82 00 0C */	beq lbl_8035A420
/* 8035A418 003239D8  38 00 00 03 */	li r0, 3
/* 8035A41C 003239DC  48 00 00 34 */	b lbl_8035A450
lbl_8035A420:
/* 8035A420 003239E0  28 1F 00 01 */	cmplwi r31, 1
/* 8035A424 003239E4  40 82 00 28 */	bne lbl_8035A44C
/* 8035A428 003239E8  38 61 00 08 */	addi r3, r1, 8
/* 8035A42C 003239EC  48 00 0C 55 */	bl func_8035B080
/* 8035A430 003239F0  2C 03 00 00 */	cmpwi r3, 0
/* 8035A434 003239F4  41 82 00 18 */	beq lbl_8035A44C
/* 8035A438 003239F8  80 01 00 08 */	lwz r0, 8(r1)
/* 8035A43C 003239FC  2C 00 00 00 */	cmpwi r0, 0
/* 8035A440 00323A00  40 82 00 0C */	bne lbl_8035A44C
/* 8035A444 00323A04  38 00 00 01 */	li r0, 1
/* 8035A448 00323A08  48 00 00 08 */	b lbl_8035A450
lbl_8035A44C:
/* 8035A44C 00323A0C  38 00 00 02 */	li r0, 2
lbl_8035A450:
/* 8035A450 00323A10  3B E0 00 03 */	li r31, 3
/* 8035A454 00323A14  98 01 00 5E */	stb r0, 0x5e(r1)
/* 8035A458 00323A18  9B E1 00 5D */	stb r31, 0x5d(r1)
/* 8035A45C 00323A1C  9B A1 00 5F */	stb r29, 0x5f(r1)
/* 8035A460 00323A20  48 00 0D 41 */	bl func_8035B1A0
/* 8035A464 00323A24  38 61 00 58 */	addi r3, r1, 0x58
/* 8035A468 00323A28  48 00 39 E9 */	bl func_8035DE50
/* 8035A46C 00323A2C  3C 60 81 28 */	lis r3, 0x8128
/* 8035A470 00323A30  4B FF 95 E1 */	bl OSSetArenaLo
/* 8035A474 00323A34  3C 60 81 2F */	lis r3, 0x812f
/* 8035A478 00323A38  4B FF 95 A9 */	bl OSSetArenaHi
/* 8035A47C 00323A3C  4B FB 92 D5 */	bl func_80313750
/* 8035A480 00323A40  2C 03 00 00 */	cmpwi r3, 0
/* 8035A484 00323A44  41 82 00 78 */	beq lbl_8035A4FC
/* 8035A488 00323A48  38 61 00 38 */	addi r3, r1, 0x38
/* 8035A48C 00323A4C  48 00 3A B5 */	bl func_8035DF40
/* 8035A490 00323A50  38 00 00 02 */	li r0, 2
/* 8035A494 00323A54  98 01 00 3E */	stb r0, 0x3e(r1)
/* 8035A498 00323A58  9B E1 00 3D */	stb r31, 0x3d(r1)
/* 8035A49C 00323A5C  48 00 0D 05 */	bl func_8035B1A0
/* 8035A4A0 00323A60  38 61 00 38 */	addi r3, r1, 0x38
/* 8035A4A4 00323A64  48 00 39 AD */	bl func_8035DE50
/* 8035A4A8 00323A68  4B FF BC 39 */	bl func_803560E0
/* 8035A4AC 00323A6C  48 00 11 45 */	bl OSDisableScheduler
/* 8035A4B0 00323A70  48 00 E0 E1 */	bl func_80368590
/* 8035A4B4 00323A74  80 0D B8 84 */	lwz r0, lbl_80667A04@sda21(r13)
/* 8035A4B8 00323A78  2C 00 00 00 */	cmpwi r0, 0
/* 8035A4BC 00323A7C  40 82 00 10 */	bne lbl_8035A4CC
/* 8035A4C0 00323A80  80 0D B8 F4 */	lwz r0, lbl_80667A74@sda21(r13)
/* 8035A4C4 00323A84  2C 00 00 00 */	cmpwi r0, 0
/* 8035A4C8 00323A88  41 82 00 08 */	beq lbl_8035A4D0
lbl_8035A4CC:
/* 8035A4CC 00323A8C  48 00 2D 35 */	bl __OSInitSTM
lbl_8035A4D0:
/* 8035A4D0 00323A90  48 00 2E D1 */	bl __OSHotReset
/* 8035A4D4 00323A94  38 7E 00 00 */	addi r3, r30, 0
/* 8035A4D8 00323A98  38 BE 00 0C */	addi r5, r30, 0xc
/* 8035A4DC 00323A9C  38 80 04 0A */	li r4, 0x40a
/* 8035A4E0 00323AA0  4C C6 31 82 */	crclr 6
/* 8035A4E4 00323AA4  48 19 3F B1 */	bl OSPanic
/* 8035A4E8 00323AA8  38 7E 00 00 */	addi r3, r30, 0
/* 8035A4EC 00323AAC  38 BE 00 38 */	addi r5, r30, 0x38
/* 8035A4F0 00323AB0  38 80 03 F2 */	li r4, 0x3f2
/* 8035A4F4 00323AB4  4C C6 31 82 */	crclr 6
/* 8035A4F8 00323AB8  48 19 3F 9D */	bl OSPanic
lbl_8035A4FC:
/* 8035A4FC 00323ABC  38 60 00 E0 */	li r3, 0xe0
/* 8035A500 00323AC0  38 80 00 20 */	li r4, 0x20
/* 8035A504 00323AC4  4B FF 95 5D */	bl func_80353A60
/* 8035A508 00323AC8  2C 03 00 00 */	cmpwi r3, 0
/* 8035A50C 00323ACC  7C 7F 1B 78 */	mr r31, r3
/* 8035A510 00323AD0  40 82 00 7C */	bne lbl_8035A58C
/* 8035A514 00323AD4  38 61 00 18 */	addi r3, r1, 0x18
/* 8035A518 00323AD8  48 00 3A 29 */	bl func_8035DF40
/* 8035A51C 00323ADC  38 60 00 02 */	li r3, 2
/* 8035A520 00323AE0  38 00 00 03 */	li r0, 3
/* 8035A524 00323AE4  98 61 00 1E */	stb r3, 0x1e(r1)
/* 8035A528 00323AE8  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8035A52C 00323AEC  48 00 0C 75 */	bl func_8035B1A0
/* 8035A530 00323AF0  38 61 00 18 */	addi r3, r1, 0x18
/* 8035A534 00323AF4  48 00 39 1D */	bl func_8035DE50
/* 8035A538 00323AF8  4B FF BB A9 */	bl func_803560E0
/* 8035A53C 00323AFC  48 00 10 B5 */	bl OSDisableScheduler
/* 8035A540 00323B00  48 00 E0 51 */	bl func_80368590
/* 8035A544 00323B04  80 0D B8 84 */	lwz r0, lbl_80667A04@sda21(r13)
/* 8035A548 00323B08  2C 00 00 00 */	cmpwi r0, 0
/* 8035A54C 00323B0C  40 82 00 10 */	bne lbl_8035A55C
/* 8035A550 00323B10  80 0D B8 F4 */	lwz r0, lbl_80667A74@sda21(r13)
/* 8035A554 00323B14  2C 00 00 00 */	cmpwi r0, 0
/* 8035A558 00323B18  41 82 00 08 */	beq lbl_8035A560
lbl_8035A55C:
/* 8035A55C 00323B1C  48 00 2C A5 */	bl __OSInitSTM
lbl_8035A560:
/* 8035A560 00323B20  48 00 2E 41 */	bl __OSHotReset
/* 8035A564 00323B24  38 7E 00 00 */	addi r3, r30, 0
/* 8035A568 00323B28  38 BE 00 0C */	addi r5, r30, 0xc
/* 8035A56C 00323B2C  38 80 04 0A */	li r4, 0x40a
/* 8035A570 00323B30  4C C6 31 82 */	crclr 6
/* 8035A574 00323B34  48 19 3F 21 */	bl OSPanic
/* 8035A578 00323B38  38 7E 00 00 */	addi r3, r30, 0
/* 8035A57C 00323B3C  38 BE 00 38 */	addi r5, r30, 0x38
/* 8035A580 00323B40  38 80 03 F2 */	li r4, 0x3f2
/* 8035A584 00323B44  4C C6 31 82 */	crclr 6
/* 8035A588 00323B48  48 19 3F 0D */	bl OSPanic
lbl_8035A58C:
/* 8035A58C 00323B4C  7F E3 FB 78 */	mr r3, r31
/* 8035A590 00323B50  38 80 00 00 */	li r4, 0
/* 8035A594 00323B54  38 A0 00 E0 */	li r5, 0xe0
/* 8035A598 00323B58  4B CA 9D B9 */	bl memset
/* 8035A59C 00323B5C  7F E4 FB 78 */	mr r4, r31
/* 8035A5A0 00323B60  38 60 00 00 */	li r3, 0
/* 8035A5A4 00323B64  4B FB 94 1D */	bl func_803139C0
/* 8035A5A8 00323B68  2C 03 00 00 */	cmpwi r3, 0
/* 8035A5AC 00323B6C  40 82 00 40 */	bne lbl_8035A5EC
/* 8035A5B0 00323B70  48 00 42 71 */	bl func_8035E820
/* 8035A5B4 00323B74  2C 03 00 00 */	cmpwi r3, 0
/* 8035A5B8 00323B78  41 82 00 34 */	beq lbl_8035A5EC
/* 8035A5BC 00323B7C  38 60 00 00 */	li r3, 0
/* 8035A5C0 00323B80  38 00 FF FF */	li r0, -1
/* 8035A5C4 00323B84  90 61 00 10 */	stw r3, 0x10(r1)
/* 8035A5C8 00323B88  7F E3 FB 78 */	mr r3, r31
/* 8035A5CC 00323B8C  38 81 00 10 */	addi r4, r1, 0x10
/* 8035A5D0 00323B90  38 A1 00 0C */	addi r5, r1, 0xc
/* 8035A5D4 00323B94  90 01 00 0C */	stw r0, 0xc(r1)
/* 8035A5D8 00323B98  48 00 46 F9 */	bl func_8035ECD0
/* 8035A5DC 00323B9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035A5E0 00323BA0  2C 00 00 00 */	cmpwi r0, 0
/* 8035A5E4 00323BA4  40 82 00 08 */	bne lbl_8035A5EC
/* 8035A5E8 00323BA8  48 00 45 39 */	bl func_8035EB20
lbl_8035A5EC:
/* 8035A5EC 00323BAC  48 00 10 05 */	bl OSDisableScheduler
/* 8035A5F0 00323BB0  38 60 00 05 */	li r3, 5
/* 8035A5F4 00323BB4  4B FF FA 5D */	bl __OSShutdownDevices
/* 8035A5F8 00323BB8  48 00 10 39 */	bl OSEnableScheduler
/* 8035A5FC 00323BBC  4B FF BA E5 */	bl func_803560E0
/* 8035A600 00323BC0  48 00 0F F1 */	bl OSDisableScheduler
/* 8035A604 00323BC4  48 00 DF 8D */	bl func_80368590
/* 8035A608 00323BC8  80 0D B8 84 */	lwz r0, lbl_80667A04@sda21(r13)
/* 8035A60C 00323BCC  2C 00 00 00 */	cmpwi r0, 0
/* 8035A610 00323BD0  40 82 00 10 */	bne lbl_8035A620
/* 8035A614 00323BD4  80 0D B8 F4 */	lwz r0, lbl_80667A74@sda21(r13)
/* 8035A618 00323BD8  2C 00 00 00 */	cmpwi r0, 0
/* 8035A61C 00323BDC  41 82 00 08 */	beq lbl_8035A624
lbl_8035A620:
/* 8035A620 00323BE0  48 00 2B E1 */	bl __OSInitSTM
lbl_8035A624:
/* 8035A624 00323BE4  48 00 2D 7D */	bl __OSHotReset
/* 8035A628 00323BE8  38 7E 00 00 */	addi r3, r30, 0
/* 8035A62C 00323BEC  38 BE 00 0C */	addi r5, r30, 0xc
/* 8035A630 00323BF0  38 80 04 0A */	li r4, 0x40a
/* 8035A634 00323BF4  4C C6 31 82 */	crclr 6
/* 8035A638 00323BF8  48 19 3E 5D */	bl OSPanic
/* 8035A63C 00323BFC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8035A640 00323C00  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8035A644 00323C04  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8035A648 00323C08  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8035A64C 00323C0C  7C 08 03 A6 */	mtlr r0
/* 8035A650 00323C10  38 21 00 90 */	addi r1, r1, 0x90
/* 8035A654 00323C14  4E 80 00 20 */	blr 
/* 8035A658 00323C18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035A65C 00323C1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global OSReturnToMenu
OSReturnToMenu:
/* 8035A660 00323C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035A664 00323C24  7C 08 02 A6 */	mflr r0
/* 8035A668 00323C28  38 60 00 00 */	li r3, 0
/* 8035A66C 00323C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035A670 00323C30  4B FF FD 61 */	bl __OSReturnToMenu
/* 8035A674 00323C34  3C 60 80 55 */	lis r3, lbl_80552AF0@ha
/* 8035A678 00323C38  3C A0 80 55 */	lis r5, lbl_80552B5C@ha
/* 8035A67C 00323C3C  38 63 2A F0 */	addi r3, r3, lbl_80552AF0@l
/* 8035A680 00323C40  38 80 03 7F */	li r4, 0x37f
/* 8035A684 00323C44  38 A5 2B 5C */	addi r5, r5, lbl_80552B5C@l
/* 8035A688 00323C48  4C C6 31 82 */	crclr 6
/* 8035A68C 00323C4C  48 19 3E 09 */	bl OSPanic
/* 8035A690 00323C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035A694 00323C54  7C 08 03 A6 */	mtlr r0
/* 8035A698 00323C58  38 21 00 10 */	addi r1, r1, 0x10
/* 8035A69C 00323C5C  4E 80 00 20 */	blr 

.global __OSReturnToMenuForError
__OSReturnToMenuForError:
/* 8035A6A0 00323C60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8035A6A4 00323C64  7C 08 02 A6 */	mflr r0
/* 8035A6A8 00323C68  90 01 00 34 */	stw r0, 0x34(r1)
/* 8035A6AC 00323C6C  38 61 00 08 */	addi r3, r1, 8
/* 8035A6B0 00323C70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8035A6B4 00323C74  3F E0 80 55 */	lis r31, lbl_80552AF0@ha
/* 8035A6B8 00323C78  3B FF 2A F0 */	addi r31, r31, lbl_80552AF0@l
/* 8035A6BC 00323C7C  48 00 38 85 */	bl func_8035DF40
/* 8035A6C0 00323C80  38 60 00 02 */	li r3, 2
/* 8035A6C4 00323C84  38 00 00 03 */	li r0, 3
/* 8035A6C8 00323C88  98 61 00 0E */	stb r3, 0xe(r1)
/* 8035A6CC 00323C8C  98 01 00 0D */	stb r0, 0xd(r1)
/* 8035A6D0 00323C90  48 00 0A D1 */	bl func_8035B1A0
/* 8035A6D4 00323C94  38 61 00 08 */	addi r3, r1, 8
/* 8035A6D8 00323C98  48 00 37 79 */	bl func_8035DE50
/* 8035A6DC 00323C9C  4B FF BA 05 */	bl func_803560E0
/* 8035A6E0 00323CA0  48 00 0F 11 */	bl OSDisableScheduler
/* 8035A6E4 00323CA4  48 00 DE AD */	bl func_80368590
/* 8035A6E8 00323CA8  80 0D B8 84 */	lwz r0, lbl_80667A04@sda21(r13)
/* 8035A6EC 00323CAC  2C 00 00 00 */	cmpwi r0, 0
/* 8035A6F0 00323CB0  40 82 00 10 */	bne lbl_8035A700
/* 8035A6F4 00323CB4  80 0D B8 F4 */	lwz r0, lbl_80667A74@sda21(r13)
/* 8035A6F8 00323CB8  2C 00 00 00 */	cmpwi r0, 0
/* 8035A6FC 00323CBC  41 82 00 08 */	beq lbl_8035A704
lbl_8035A700:
/* 8035A700 00323CC0  48 00 2B 01 */	bl __OSInitSTM
lbl_8035A704:
/* 8035A704 00323CC4  48 00 2C 9D */	bl __OSHotReset
/* 8035A708 00323CC8  38 7F 00 00 */	addi r3, r31, 0
/* 8035A70C 00323CCC  38 BF 00 0C */	addi r5, r31, 0xc
/* 8035A710 00323CD0  38 80 04 0A */	li r4, 0x40a
/* 8035A714 00323CD4  4C C6 31 82 */	crclr 6
/* 8035A718 00323CD8  48 19 3D 7D */	bl OSPanic
/* 8035A71C 00323CDC  38 7F 00 00 */	addi r3, r31, 0
/* 8035A720 00323CE0  38 BF 00 38 */	addi r5, r31, 0x38
/* 8035A724 00323CE4  38 80 03 F2 */	li r4, 0x3f2
/* 8035A728 00323CE8  4C C6 31 82 */	crclr 6
/* 8035A72C 00323CEC  48 19 3D 69 */	bl OSPanic
/* 8035A730 00323CF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8035A734 00323CF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8035A738 00323CF8  7C 08 03 A6 */	mtlr r0
/* 8035A73C 00323CFC  38 21 00 30 */	addi r1, r1, 0x30
/* 8035A740 00323D00  4E 80 00 20 */	blr 
/* 8035A744 00323D04  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035A748 00323D08  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035A74C 00323D0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __OSHotResetForError
__OSHotResetForError:
/* 8035A750 00323D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035A754 00323D14  7C 08 02 A6 */	mflr r0
/* 8035A758 00323D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035A75C 00323D1C  80 0D B8 84 */	lwz r0, lbl_80667A04@sda21(r13)
/* 8035A760 00323D20  2C 00 00 00 */	cmpwi r0, 0
/* 8035A764 00323D24  40 82 00 10 */	bne lbl_8035A774
/* 8035A768 00323D28  80 0D B8 F4 */	lwz r0, lbl_80667A74@sda21(r13)
/* 8035A76C 00323D2C  2C 00 00 00 */	cmpwi r0, 0
/* 8035A770 00323D30  41 82 00 08 */	beq lbl_8035A778
lbl_8035A774:
/* 8035A774 00323D34  48 00 2A 8D */	bl __OSInitSTM
lbl_8035A778:
/* 8035A778 00323D38  48 00 2C 29 */	bl __OSHotReset
/* 8035A77C 00323D3C  3C 60 80 55 */	lis r3, lbl_80552AF0@ha
/* 8035A780 00323D40  3C A0 80 55 */	lis r5, lbl_80552AFC@ha
/* 8035A784 00323D44  38 63 2A F0 */	addi r3, r3, lbl_80552AF0@l
/* 8035A788 00323D48  38 80 04 0A */	li r4, 0x40a
/* 8035A78C 00323D4C  38 A5 2A FC */	addi r5, r5, lbl_80552AFC@l
/* 8035A790 00323D50  4C C6 31 82 */	crclr 6
/* 8035A794 00323D54  48 19 3D 01 */	bl OSPanic
/* 8035A798 00323D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035A79C 00323D5C  7C 08 03 A6 */	mtlr r0
/* 8035A7A0 00323D60  38 21 00 10 */	addi r1, r1, 0x10
/* 8035A7A4 00323D64  4E 80 00 20 */	blr 
/* 8035A7A8 00323D68  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035A7AC 00323D6C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global OSGetResetCode
OSGetResetCode:
/* 8035A7B0 00323D70  3C 60 80 5D */	lis r3, lbl_805D4340@ha
/* 8035A7B4 00323D74  80 03 43 40 */	lwz r0, lbl_805D4340@l(r3)
/* 8035A7B8 00323D78  2C 00 00 00 */	cmpwi r0, 0
/* 8035A7BC 00323D7C  41 82 00 14 */	beq lbl_8035A7D0
/* 8035A7C0 00323D80  38 63 43 40 */	addi r3, r3, 0x4340
/* 8035A7C4 00323D84  80 03 00 04 */	lwz r0, 4(r3)
/* 8035A7C8 00323D88  64 03 80 00 */	oris r3, r0, 0x8000
/* 8035A7CC 00323D8C  4E 80 00 20 */	blr
lbl_8035A7D0:
/* 8035A7D0 00323D90  3C 60 CC 00 */	lis r3, 0xCC003024@ha
/* 8035A7D4 00323D94  80 03 30 24 */	lwz r0, 0xCC003024@l(r3)
/* 8035A7D8 00323D98  54 03 E8 FE */	srwi r3, r0, 3
/* 8035A7DC 00323D9C  4E 80 00 20 */	blr 

.global OSResetSystem
OSResetSystem:
/* 802703C0 00323DA0  3C 60 80 55 */	lis r3, lbl_80552AF0@ha
/* 802703C4 00323DA4  3C A0 80 55 */	lis r5, lbl_80552CDC@ha
/* 802703C8 00323DA8  38 63 2A F0 */	addi r3, r3, lbl_80552AF0@l
/* 802703CC 00323DAC  38 80 03 FC */	li r4, 0x4a1
/* 802703D0 00323DB0  38 A5 2C DC */	addi r5, r5, lbl_80552CDC@l
/* 802703D4 00323DB4  4C C6 31 82 */	crclr 6
/* 802703D8 00323DB8  4B FF B0 C4 */	b OSPanic
.4byte 0