.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CDeviceFileJobReadDvd, global
/* 80451F20 0041B4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80451F24 0041B4E4  7C 08 02 A6 */	mflr r0
/* 80451F28 0041B4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80451F2C 0041B4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80451F30 0041B4F0  7C 7F 1B 78 */	mr r31, r3
/* 80451F34 0041B4F4  4B FF FF 1D */	bl __ct__CDeviceFileJob
/* 80451F38 0041B4F8  3C 60 80 57 */	lis r3, __vt__21CDeviceFileJobReadDvd@ha
/* 80451F3C 0041B4FC  38 00 00 44 */	li r0, 0x44
/* 80451F40 0041B500  38 63 FD E0 */	addi r3, r3, __vt__21CDeviceFileJobReadDvd@l
/* 80451F44 0041B504  90 7F 00 00 */	stw r3, 0(r31)
/* 80451F48 0041B508  7F E3 FB 78 */	mr r3, r31
/* 80451F4C 0041B50C  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80451F50 0041B510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80451F54 0041B514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80451F58 0041B518  7C 08 03 A6 */	mtlr r0
/* 80451F5C 0041B51C  38 21 00 10 */	addi r1, r1, 0x10
/* 80451F60 0041B520  4E 80 00 20 */	blr 
.endfn __ct__CDeviceFileJobReadDvd

.fn __dt__CDeviceFileJobReadDvd, global
/* 80451F64 0041B524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80451F68 0041B528  7C 08 02 A6 */	mflr r0
/* 80451F6C 0041B52C  2C 03 00 00 */	cmpwi r3, 0
/* 80451F70 0041B530  90 01 00 14 */	stw r0, 0x14(r1)
/* 80451F74 0041B534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80451F78 0041B538  7C 9F 23 78 */	mr r31, r4
/* 80451F7C 0041B53C  93 C1 00 08 */	stw r30, 8(r1)
/* 80451F80 0041B540  7C 7E 1B 78 */	mr r30, r3
/* 80451F84 0041B544  41 82 00 20 */	beq .L_80451FA4
/* 80451F88 0041B548  41 82 00 0C */	beq .L_80451F94
/* 80451F8C 0041B54C  38 80 00 00 */	li r4, 0
/* 80451F90 0041B550  4B FE 5B 39 */	bl __dt__CWorkThread
.L_80451F94:
/* 80451F94 0041B554  2C 1F 00 00 */	cmpwi r31, 0
/* 80451F98 0041B558  40 81 00 0C */	ble .L_80451FA4
/* 80451F9C 0041B55C  7F C3 F3 78 */	mr r3, r30
/* 80451FA0 0041B560  4B FE 2C 8D */	bl __dl__FPv
.L_80451FA4:
/* 80451FA4 0041B564  7F C3 F3 78 */	mr r3, r30
/* 80451FA8 0041B568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80451FAC 0041B56C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80451FB0 0041B570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80451FB4 0041B574  7C 08 03 A6 */	mtlr r0
/* 80451FB8 0041B578  38 21 00 10 */	addi r1, r1, 0x10
/* 80451FBC 0041B57C  4E 80 00 20 */	blr 
.endfn __dt__CDeviceFileJobReadDvd

.fn func_80451FC0, global
/* 80451FC0 0041B580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80451FC4 0041B584  7C 08 02 A6 */	mflr r0
/* 80451FC8 0041B588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80451FCC 0041B58C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80451FD0 0041B590  7C 7F 1B 78 */	mr r31, r3
/* 80451FD4 0041B594  80 A3 01 C4 */	lwz r5, 0x1c4(r3)
/* 80451FD8 0041B598  2C 05 00 00 */	cmpwi r5, 0
/* 80451FDC 0041B59C  40 82 00 0C */	bne .L_80451FE8
/* 80451FE0 0041B5A0  38 60 00 00 */	li r3, 0
/* 80451FE4 0041B5A4  48 00 00 5C */	b .L_80452040
.L_80451FE8:
/* 80451FE8 0041B5A8  38 65 00 5C */	addi r3, r5, 0x5c
/* 80451FEC 0041B5AC  4B E7 08 49 */	bl strcmp
/* 80451FF0 0041B5B0  7C 03 00 D0 */	neg r0, r3
/* 80451FF4 0041B5B4  7C 00 1B 78 */	or r0, r0, r3
/* 80451FF8 0041B5B8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80451FFC 0041B5BC  41 82 00 0C */	beq .L_80452008
/* 80452000 0041B5C0  38 60 00 00 */	li r3, 0
/* 80452004 0041B5C4  48 00 00 3C */	b .L_80452040
.L_80452008:
/* 80452008 0041B5C8  7F E3 FB 78 */	mr r3, r31
/* 8045200C 0041B5CC  4B FE 65 6D */	bl func_80438578
/* 80452010 0041B5D0  2C 03 00 00 */	cmpwi r3, 0
/* 80452014 0041B5D4  40 82 00 10 */	bne .L_80452024
/* 80452018 0041B5D8  7F E3 FB 78 */	mr r3, r31
/* 8045201C 0041B5DC  4B FF D0 15 */	bl func_8044F030
/* 80452020 0041B5E0  48 00 00 1C */	b .L_8045203C
.L_80452024:
/* 80452024 0041B5E4  4B FF C7 45 */	bl func_8044E768
/* 80452028 0041B5E8  2C 03 00 00 */	cmpwi r3, 0
/* 8045202C 0041B5EC  41 82 00 0C */	beq .L_80452038
/* 80452030 0041B5F0  4B FF DC 09 */	bl func_8044FC38
/* 80452034 0041B5F4  48 00 00 08 */	b .L_8045203C
.L_80452038:
/* 80452038 0041B5F8  4B FF ED 6D */	bl func_80450DA4
.L_8045203C:
/* 8045203C 0041B5FC  38 60 00 01 */	li r3, 1
.L_80452040:
/* 80452040 0041B600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80452044 0041B604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80452048 0041B608  7C 08 03 A6 */	mtlr r0
/* 8045204C 0041B60C  38 21 00 10 */	addi r1, r1, 0x10
/* 80452050 0041B610  4E 80 00 20 */	blr 
.endfn func_80451FC0

.fn func_80452054, global
/* 80452054 0041B614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80452058 0041B618  7C 08 02 A6 */	mflr r0
/* 8045205C 0041B61C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80452060 0041B620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80452064 0041B624  7C 7F 1B 78 */	mr r31, r3
/* 80452068 0041B628  80 03 01 C4 */	lwz r0, 0x1c4(r3)
/* 8045206C 0041B62C  2C 00 00 00 */	cmpwi r0, 0
/* 80452070 0041B630  41 82 00 0C */	beq .L_8045207C
/* 80452074 0041B634  7C 00 20 40 */	cmplw r0, r4
/* 80452078 0041B638  41 82 00 0C */	beq .L_80452084
.L_8045207C:
/* 8045207C 0041B63C  38 60 00 00 */	li r3, 0
/* 80452080 0041B640  48 00 00 38 */	b .L_804520B8
.L_80452084:
/* 80452084 0041B644  4B FE 64 F5 */	bl func_80438578
/* 80452088 0041B648  2C 03 00 00 */	cmpwi r3, 0
/* 8045208C 0041B64C  40 82 00 10 */	bne .L_8045209C
/* 80452090 0041B650  7F E3 FB 78 */	mr r3, r31
/* 80452094 0041B654  4B FF CF 9D */	bl func_8044F030
/* 80452098 0041B658  48 00 00 1C */	b .L_804520B4
.L_8045209C:
/* 8045209C 0041B65C  4B FF C6 CD */	bl func_8044E768
/* 804520A0 0041B660  2C 03 00 00 */	cmpwi r3, 0
/* 804520A4 0041B664  41 82 00 0C */	beq .L_804520B0
/* 804520A8 0041B668  4B FF DB 91 */	bl func_8044FC38
/* 804520AC 0041B66C  48 00 00 08 */	b .L_804520B4
.L_804520B0:
/* 804520B0 0041B670  4B FF EC F5 */	bl func_80450DA4
.L_804520B4:
/* 804520B4 0041B674  38 60 00 01 */	li r3, 1
.L_804520B8:
/* 804520B8 0041B678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804520BC 0041B67C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804520C0 0041B680  7C 08 03 A6 */	mtlr r0
/* 804520C4 0041B684  38 21 00 10 */	addi r1, r1, 0x10
/* 804520C8 0041B688  4E 80 00 20 */	blr 
.endfn func_80452054

.fn CDeviceFileJobReadDvd_wkUpdate, global
/* 804520CC 0041B68C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804520D0 0041B690  7C 08 02 A6 */	mflr r0
/* 804520D4 0041B694  90 01 00 24 */	stw r0, 0x24(r1)
/* 804520D8 0041B698  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804520DC 0041B69C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804520E0 0041B6A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804520E4 0041B6A4  93 81 00 10 */	stw r28, 0x10(r1)
/* 804520E8 0041B6A8  7C 7C 1B 78 */	mr r28, r3
/* 804520EC 0041B6AC  80 83 01 C4 */	lwz r4, 0x1c4(r3)
/* 804520F0 0041B6B0  2C 04 00 00 */	cmpwi r4, 0
/* 804520F4 0041B6B4  41 82 00 88 */	beq .L_8045217C
/* 804520F8 0041B6B8  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 804520FC 0041B6BC  38 60 00 00 */	li r3, 0
/* 80452100 0041B6C0  2C 05 00 00 */	cmpwi r5, 0
/* 80452104 0041B6C4  41 82 00 14 */	beq .L_80452118
/* 80452108 0041B6C8  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 8045210C 0041B6CC  7C 05 00 40 */	cmplw r5, r0
/* 80452110 0041B6D0  40 82 00 08 */	bne .L_80452118
/* 80452114 0041B6D4  38 60 00 01 */	li r3, 1
.L_80452118:
/* 80452118 0041B6D8  2C 03 00 00 */	cmpwi r3, 0
/* 8045211C 0041B6DC  41 82 00 60 */	beq .L_8045217C
/* 80452120 0041B6E0  7C 83 23 78 */	mr r3, r4
/* 80452124 0041B6E4  4B FF FD 25 */	bl func_80451E48
/* 80452128 0041B6E8  2C 03 00 00 */	cmpwi r3, 0
/* 8045212C 0041B6EC  41 82 00 3C */	beq .L_80452168
/* 80452130 0041B6F0  80 7C 01 C4 */	lwz r3, 0x1c4(r28)
/* 80452134 0041B6F4  38 00 00 00 */	li r0, 0
/* 80452138 0041B6F8  83 C3 00 3C */	lwz r30, 0x3c(r3)
/* 8045213C 0041B6FC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80452140 0041B700  90 03 00 04 */	stw r0, 4(r3)
/* 80452144 0041B704  83 BC 01 C4 */	lwz r29, 0x1c4(r28)
/* 80452148 0041B708  7F A3 EB 78 */	mr r3, r29
/* 8045214C 0041B70C  4B FF FC FD */	bl func_80451E48
/* 80452150 0041B710  7F E6 FB 78 */	mr r6, r31
/* 80452154 0041B714  7F C7 F3 78 */	mr r7, r30
/* 80452158 0041B718  38 9D 00 5C */	addi r4, r29, 0x5c
/* 8045215C 0041B71C  38 BD 01 60 */	addi r5, r29, 0x160
/* 80452160 0041B720  39 00 00 00 */	li r8, 0
/* 80452164 0041B724  4B FE 78 41 */	bl func_804399A4
.L_80452168:
/* 80452168 0041B728  80 7C 01 C4 */	lwz r3, 0x1c4(r28)
/* 8045216C 0041B72C  38 80 00 01 */	li r4, 1
/* 80452170 0041B730  4B FF FB 61 */	bl func_80451CD0
/* 80452174 0041B734  7F 83 E3 78 */	mr r3, r28
/* 80452178 0041B738  4B FF CE B9 */	bl func_8044F030
.L_8045217C:
/* 8045217C 0041B73C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80452180 0041B740  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80452184 0041B744  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80452188 0041B748  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8045218C 0041B74C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80452190 0041B750  7C 08 03 A6 */	mtlr r0
/* 80452194 0041B754  38 21 00 20 */	addi r1, r1, 0x20
/* 80452198 0041B758  4E 80 00 20 */	blr 
.endfn CDeviceFileJobReadDvd_wkUpdate

.fn CDeviceFileJobReadDvd_WorkThreadEvent4, global
/* 8045219C 0041B75C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804521A0 0041B760  7C 08 02 A6 */	mflr r0
/* 804521A4 0041B764  90 01 00 14 */	stw r0, 0x14(r1)
/* 804521A8 0041B768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804521AC 0041B76C  7C 7F 1B 78 */	mr r31, r3
/* 804521B0 0041B770  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 804521B4 0041B774  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804521B8 0041B778  41 82 00 0C */	beq .L_804521C4
/* 804521BC 0041B77C  4B FE 68 3D */	bl CWorkThread_WorkThreadEvent4
/* 804521C0 0041B780  48 00 00 3C */	b .L_804521FC
.L_804521C4:
/* 804521C4 0041B784  4B FE 63 B5 */	bl func_80438578
/* 804521C8 0041B788  2C 03 00 00 */	cmpwi r3, 0
/* 804521CC 0041B78C  41 82 00 2C */	beq .L_804521F8
/* 804521D0 0041B790  80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 804521D4 0041B794  38 80 00 01 */	li r4, 1
/* 804521D8 0041B798  4B FF FB CD */	bl func_80451DA4
/* 804521DC 0041B79C  2C 03 00 00 */	cmpwi r3, 0
/* 804521E0 0041B7A0  41 82 00 0C */	beq .L_804521EC
/* 804521E4 0041B7A4  7F E3 FB 78 */	mr r3, r31
/* 804521E8 0041B7A8  4B FF CE 49 */	bl func_8044F030
.L_804521EC:
/* 804521EC 0041B7AC  7F E3 FB 78 */	mr r3, r31
/* 804521F0 0041B7B0  4B FE 68 09 */	bl CWorkThread_WorkThreadEvent4
/* 804521F4 0041B7B4  48 00 00 08 */	b .L_804521FC
.L_804521F8:
/* 804521F8 0041B7B8  38 60 00 00 */	li r3, 0
.L_804521FC:
/* 804521FC 0041B7BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80452200 0041B7C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80452204 0041B7C4  7C 08 03 A6 */	mtlr r0
/* 80452208 0041B7C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045220C 0041B7CC  4E 80 00 20 */	blr 
.endfn CDeviceFileJobReadDvd_WorkThreadEvent4

.fn CDeviceFileJobReadDvd_WorkThreadEvent5, global
/* 80452210 0041B7D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80452214 0041B7D4  7C 08 02 A6 */	mflr r0
/* 80452218 0041B7D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045221C 0041B7DC  80 83 01 C4 */	lwz r4, 0x1c4(r3)
/* 80452220 0041B7E0  2C 04 00 00 */	cmpwi r4, 0
/* 80452224 0041B7E4  41 82 00 1C */	beq .L_80452240
/* 80452228 0041B7E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8045222C 0041B7EC  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80452230 0041B7F0  7D 89 03 A6 */	mtctr r12
/* 80452234 0041B7F4  4E 80 04 21 */	bctrl 
/* 80452238 0041B7F8  38 60 00 00 */	li r3, 0
/* 8045223C 0041B7FC  48 00 00 08 */	b .L_80452244
.L_80452240:
/* 80452240 0041B800  4B FE 67 E5 */	bl CWorkThread_WorkThreadEvent5
.L_80452244:
/* 80452244 0041B804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80452248 0041B808  7C 08 03 A6 */	mtlr r0
/* 8045224C 0041B80C  38 21 00 10 */	addi r1, r1, 0x10
/* 80452250 0041B810  4E 80 00 20 */	blr 
.endfn CDeviceFileJobReadDvd_WorkThreadEvent5

.fn func_80452254, global
/* 80452254 0041B814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80452258 0041B818  7C 08 02 A6 */	mflr r0
/* 8045225C 0041B81C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80452260 0041B820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80452264 0041B824  7C 7F 1B 78 */	mr r31, r3
/* 80452268 0041B828  80 03 01 C4 */	lwz r0, 0x1c4(r3)
/* 8045226C 0041B82C  2C 00 00 00 */	cmpwi r0, 0
/* 80452270 0041B830  41 82 00 10 */	beq .L_80452280
/* 80452274 0041B834  7C 03 03 78 */	mr r3, r0
/* 80452278 0041B838  38 80 00 03 */	li r4, 3
/* 8045227C 0041B83C  4B FF FA 55 */	bl func_80451CD0
.L_80452280:
/* 80452280 0041B840  7F E3 FB 78 */	mr r3, r31
/* 80452284 0041B844  4B FF CD AD */	bl func_8044F030
/* 80452288 0041B848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045228C 0041B84C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80452290 0041B850  7C 08 03 A6 */	mtlr r0
/* 80452294 0041B854  38 21 00 10 */	addi r1, r1, 0x10
/* 80452298 0041B858  4E 80 00 20 */	blr 
.endfn func_80452254


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CDeviceFileJobReadDvd_typestr, global
	.asciz "CDeviceFileJobReadDvd"
	.balign 4
.endobj CDeviceFileJobReadDvd_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__21CDeviceFileJobReadDvd, global
	.4byte __RTTI__21CDeviceFileJobReadDvd
	.4byte 0
	.4byte __dt__CDeviceFileJobReadDvd
	.4byte IWorkEvent_WorkEvent1
	.4byte IWorkEvent_OnFileEvent
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
	.4byte CDeviceFileJobReadDvd_wkUpdate
	.4byte CWorkThread_WorkThreadEvent2
	.4byte CWorkThread_WorkThreadEvent3
	.4byte CDeviceFileJobReadDvd_WorkThreadEvent4
	.4byte CDeviceFileJobReadDvd_WorkThreadEvent5
	.4byte CWorkThread_WorkThreadEvent6
	.4byte func_80451EC0
	.4byte func_80451FC0
	.4byte func_80452054
.endobj __vt__21CDeviceFileJobReadDvd

.obj CDeviceFileJobReadDvd_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte __RTTI__14CDeviceFileJob
	.4byte 0
	.4byte 0
.endobj CDeviceFileJobReadDvd_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__21CDeviceFileJobReadDvd, global
	.4byte CDeviceFileJobReadDvd_typestr
	.4byte CDeviceFileJobReadDvd_hierarchy
.endobj __RTTI__21CDeviceFileJobReadDvd

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001CFAC", local
.hidden "@etb_8001CFAC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CFAC"

.obj "@etb_8001CFB4", local
.hidden "@etb_8001CFB4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001CFB4"

.obj "@etb_8001CFBC", local
.hidden "@etb_8001CFBC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CFBC"

.obj "@etb_8001CFC4", local
.hidden "@etb_8001CFC4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CFC4"

.obj "@etb_8001CFCC", local
.hidden "@etb_8001CFCC"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001CFCC"

.obj "@etb_8001CFD4", local
.hidden "@etb_8001CFD4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CFD4"

.obj "@etb_8001CFDC", local
.hidden "@etb_8001CFDC"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001CFDC"

.obj "@etb_8001CFE4", local
.hidden "@etb_8001CFE4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CFE4"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034C7C", local
.hidden "@eti_80034C7C"
	.4byte __ct__CDeviceFileJobReadDvd
	.4byte 0x00000044
	.4byte "@etb_8001CFAC"
.endobj "@eti_80034C7C"

.obj "@eti_80034C88", local
.hidden "@eti_80034C88"
	.4byte __dt__CDeviceFileJobReadDvd
	.4byte 0x0000005C
	.4byte "@etb_8001CFB4"
.endobj "@eti_80034C88"

.obj "@eti_80034C94", local
.hidden "@eti_80034C94"
	.4byte func_80451FC0
	.4byte 0x00000094
	.4byte "@etb_8001CFBC"
.endobj "@eti_80034C94"

.obj "@eti_80034CA0", local
.hidden "@eti_80034CA0"
	.4byte func_80452054
	.4byte 0x00000078
	.4byte "@etb_8001CFC4"
.endobj "@eti_80034CA0"

.obj "@eti_80034CAC", local
.hidden "@eti_80034CAC"
	.4byte CDeviceFileJobReadDvd_wkUpdate
	.4byte 0x000000D0
	.4byte "@etb_8001CFCC"
.endobj "@eti_80034CAC"

.obj "@eti_80034CB8", local
.hidden "@eti_80034CB8"
	.4byte CDeviceFileJobReadDvd_WorkThreadEvent4
	.4byte 0x00000074
	.4byte "@etb_8001CFD4"
.endobj "@eti_80034CB8"

.obj "@eti_80034CC4", local
.hidden "@eti_80034CC4"
	.4byte CDeviceFileJobReadDvd_WorkThreadEvent5
	.4byte 0x00000044
	.4byte "@etb_8001CFDC"
.endobj "@eti_80034CC4"

.obj "@eti_80034CD0", local
.hidden "@eti_80034CD0"
	.4byte func_80452254
	.4byte 0x00000048
	.4byte "@etb_8001CFE4"
.endobj "@eti_80034CD0"
