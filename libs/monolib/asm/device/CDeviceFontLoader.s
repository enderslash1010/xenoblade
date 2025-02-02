.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CDeviceFontLoader, global
/* 80454E80 0041E440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454E84 0041E444  7C 08 02 A6 */	mflr r0
/* 80454E88 0041E448  38 C0 00 00 */	li r6, 0
/* 80454E8C 0041E44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454E90 0041E450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80454E94 0041E454  7C 7F 1B 78 */	mr r31, r3
/* 80454E98 0041E458  4B FE 27 25 */	bl __ct__CWorkThread
/* 80454E9C 0041E45C  3C 60 80 57 */	lis r3, __vt__17CDeviceFontLoader@ha
/* 80454EA0 0041E460  38 80 00 00 */	li r4, 0
/* 80454EA4 0041E464  38 63 00 F0 */	addi r3, r3, __vt__17CDeviceFontLoader@l
/* 80454EA8 0041E468  38 00 00 40 */	li r0, 0x40
/* 80454EAC 0041E46C  90 7F 00 00 */	stw r3, 0(r31)
/* 80454EB0 0041E470  7F E3 FB 78 */	mr r3, r31
/* 80454EB4 0041E474  98 9F 01 C8 */	stb r4, 0x1c8(r31)
/* 80454EB8 0041E478  90 9F 02 08 */	stw r4, 0x208(r31)
/* 80454EBC 0041E47C  90 9F 02 0C */	stw r4, 0x20c(r31)
/* 80454EC0 0041E480  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80454EC4 0041E484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80454EC8 0041E488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454ECC 0041E48C  7C 08 03 A6 */	mtlr r0
/* 80454ED0 0041E490  38 21 00 10 */	addi r1, r1, 0x10
/* 80454ED4 0041E494  4E 80 00 20 */	blr 
.endfn __ct__CDeviceFontLoader

.fn __dt__CDeviceFontLoader, global
/* 80454ED8 0041E498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454EDC 0041E49C  7C 08 02 A6 */	mflr r0
/* 80454EE0 0041E4A0  2C 03 00 00 */	cmpwi r3, 0
/* 80454EE4 0041E4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454EE8 0041E4A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80454EEC 0041E4AC  7C 9F 23 78 */	mr r31, r4
/* 80454EF0 0041E4B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80454EF4 0041E4B4  7C 7E 1B 78 */	mr r30, r3
/* 80454EF8 0041E4B8  41 82 00 1C */	beq .L_80454F14
/* 80454EFC 0041E4BC  38 80 00 00 */	li r4, 0
/* 80454F00 0041E4C0  4B FE 2B C9 */	bl __dt__CWorkThread
/* 80454F04 0041E4C4  2C 1F 00 00 */	cmpwi r31, 0
/* 80454F08 0041E4C8  40 81 00 0C */	ble .L_80454F14
/* 80454F0C 0041E4CC  7F C3 F3 78 */	mr r3, r30
/* 80454F10 0041E4D0  4B FD FD 1D */	bl __dl__FPv
.L_80454F14:
/* 80454F14 0041E4D4  7F C3 F3 78 */	mr r3, r30
/* 80454F18 0041E4D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80454F1C 0041E4DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80454F20 0041E4E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454F24 0041E4E4  7C 08 03 A6 */	mtlr r0
/* 80454F28 0041E4E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80454F2C 0041E4EC  4E 80 00 20 */	blr 
.endfn __dt__CDeviceFontLoader

.fn func_80454F30, global
/* 80454F30 0041E4F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454F34 0041E4F4  7C 08 02 A6 */	mflr r0
/* 80454F38 0041E4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454F3C 0041E4FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80454F40 0041E500  7C BF 2B 78 */	mr r31, r5
/* 80454F44 0041E504  93 C1 00 08 */	stw r30, 8(r1)
/* 80454F48 0041E508  7C 7E 1B 78 */	mr r30, r3
/* 80454F4C 0041E50C  90 83 01 C4 */	stw r4, 0x1c4(r3)
/* 80454F50 0041E510  7F E3 FB 78 */	mr r3, r31
/* 80454F54 0041E514  4B E6 46 65 */	bl strlen
/* 80454F58 0041E518  90 7E 02 08 */	stw r3, 0x208(r30)
/* 80454F5C 0041E51C  7F E4 FB 78 */	mr r4, r31
/* 80454F60 0041E520  38 7E 01 C8 */	addi r3, r30, 0x1c8
/* 80454F64 0041E524  4B E6 D7 55 */	bl strcpy
/* 80454F68 0041E528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80454F6C 0041E52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80454F70 0041E530  83 C1 00 08 */	lwz r30, 8(r1)
/* 80454F74 0041E534  7C 08 03 A6 */	mtlr r0
/* 80454F78 0041E538  38 21 00 10 */	addi r1, r1, 0x10
/* 80454F7C 0041E53C  4E 80 00 20 */	blr 
.endfn func_80454F30

.fn CDeviceFontLoader_WorkThreadEvent4, global
/* 80454F80 0041E540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80454F84 0041E544  7C 08 02 A6 */	mflr r0
/* 80454F88 0041E548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80454F8C 0041E54C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80454F90 0041E550  7C 7F 1B 78 */	mr r31, r3
/* 80454F94 0041E554  48 08 90 F9 */	bl func_804DE08C
/* 80454F98 0041E558  2C 03 00 00 */	cmpwi r3, 0
/* 80454F9C 0041E55C  40 82 00 0C */	bne .L_80454FA8
/* 80454FA0 0041E560  38 60 00 00 */	li r3, 0
/* 80454FA4 0041E564  48 00 00 58 */	b .L_80454FFC
.L_80454FA8:
/* 80454FA8 0041E568  4B FF 95 65 */	bl func_8044E50C
/* 80454FAC 0041E56C  2C 03 00 00 */	cmpwi r3, 0
/* 80454FB0 0041E570  41 82 00 48 */	beq .L_80454FF8
/* 80454FB4 0041E574  4B FF 95 61 */	bl func_8044E514
/* 80454FB8 0041E578  2C 03 00 00 */	cmpwi r3, 0
/* 80454FBC 0041E57C  41 82 00 3C */	beq .L_80454FF8
/* 80454FC0 0041E580  4B FD F3 D9 */	bl Heap_getRegionIndex1
/* 80454FC4 0041E584  7F E5 FB 78 */	mr r5, r31
/* 80454FC8 0041E588  38 9F 01 C8 */	addi r4, r31, 0x1c8
/* 80454FCC 0041E58C  38 C0 00 00 */	li r6, 0
/* 80454FD0 0041E590  38 E0 00 00 */	li r7, 0
/* 80454FD4 0041E594  4B FF 97 C1 */	bl CDeviceFile_openFile1
/* 80454FD8 0041E598  90 7F 02 0C */	stw r3, 0x20c(r31)
/* 80454FDC 0041E59C  38 80 00 00 */	li r4, 0
/* 80454FE0 0041E5A0  4B FF A1 75 */	bl func_8044F154
/* 80454FE4 0041E5A4  80 7F 02 0C */	lwz r3, 0x20c(r31)
/* 80454FE8 0041E5A8  4B FF A4 1D */	bl func_8044F404
/* 80454FEC 0041E5AC  7F E3 FB 78 */	mr r3, r31
/* 80454FF0 0041E5B0  4B FE 3A 09 */	bl CWorkThread_WorkThreadEvent4
/* 80454FF4 0041E5B4  48 00 00 08 */	b .L_80454FFC
.L_80454FF8:
/* 80454FF8 0041E5B8  38 60 00 00 */	li r3, 0
.L_80454FFC:
/* 80454FFC 0041E5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455000 0041E5C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80455004 0041E5C4  7C 08 03 A6 */	mtlr r0
/* 80455008 0041E5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045500C 0041E5CC  4E 80 00 20 */	blr 
.endfn CDeviceFontLoader_WorkThreadEvent4

.fn CDeviceFontLoader_WorkThreadEvent5, global
/* 80455010 0041E5D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80455014 0041E5D4  7C 08 02 A6 */	mflr r0
/* 80455018 0041E5D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045501C 0041E5DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80455020 0041E5E0  7C 7F 1B 78 */	mr r31, r3
/* 80455024 0041E5E4  80 03 02 0C */	lwz r0, 0x20c(r3)
/* 80455028 0041E5E8  2C 00 00 00 */	cmpwi r0, 0
/* 8045502C 0041E5EC  41 82 00 14 */	beq .L_80455040
/* 80455030 0041E5F0  7C 03 03 78 */	mr r3, r0
/* 80455034 0041E5F4  4B FF A0 E5 */	bl func_8044F118
/* 80455038 0041E5F8  38 00 00 00 */	li r0, 0
/* 8045503C 0041E5FC  90 1F 02 0C */	stw r0, 0x20c(r31)
.L_80455040:
/* 80455040 0041E600  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80455044 0041E604  80 03 00 00 */	lwz r0, 0(r3)
/* 80455048 0041E608  7C 00 18 40 */	cmplw r0, r3
/* 8045504C 0041E60C  40 82 00 10 */	bne .L_8045505C
/* 80455050 0041E610  7F E3 FB 78 */	mr r3, r31
/* 80455054 0041E614  4B FE 39 D1 */	bl CWorkThread_WorkThreadEvent5
/* 80455058 0041E618  48 00 00 08 */	b .L_80455060
.L_8045505C:
/* 8045505C 0041E61C  38 60 00 00 */	li r3, 0
.L_80455060:
/* 80455060 0041E620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455064 0041E624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80455068 0041E628  7C 08 03 A6 */	mtlr r0
/* 8045506C 0041E62C  38 21 00 10 */	addi r1, r1, 0x10
/* 80455070 0041E630  4E 80 00 20 */	blr 
.endfn CDeviceFontLoader_WorkThreadEvent5

.fn CDeviceFontLoader_OnFileEvent, global
/* 80455074 0041E634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80455078 0041E638  7C 08 02 A6 */	mflr r0
/* 8045507C 0041E63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80455080 0041E640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80455084 0041E644  7C 7F 1B 78 */	mr r31, r3
/* 80455088 0041E648  80 A3 02 0C */	lwz r5, 0x20c(r3)
/* 8045508C 0041E64C  80 04 00 04 */	lwz r0, 4(r4)
/* 80455090 0041E650  7C 00 28 40 */	cmplw r0, r5
/* 80455094 0041E654  40 82 00 38 */	bne .L_804550CC
/* 80455098 0041E658  80 04 00 00 */	lwz r0, 0(r4)
/* 8045509C 0041E65C  2C 00 00 01 */	cmpwi r0, 1
/* 804550A0 0041E660  40 82 00 24 */	bne .L_804550C4
/* 804550A4 0041E664  80 85 00 04 */	lwz r4, 4(r5)
/* 804550A8 0041E668  38 00 00 00 */	li r0, 0
/* 804550AC 0041E66C  90 05 00 04 */	stw r0, 4(r5)
/* 804550B0 0041E670  80 63 01 C4 */	lwz r3, 0x1c4(r3)
/* 804550B4 0041E674  4B FF DC CD */	bl func_80452D80
/* 804550B8 0041E678  7F E3 FB 78 */	mr r3, r31
/* 804550BC 0041E67C  38 80 00 00 */	li r4, 0
/* 804550C0 0041E680  4B FE 2E 31 */	bl func_80437EF0
.L_804550C4:
/* 804550C4 0041E684  38 00 00 00 */	li r0, 0
/* 804550C8 0041E688  90 1F 02 0C */	stw r0, 0x20c(r31)
.L_804550CC:
/* 804550CC 0041E68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804550D0 0041E690  38 60 00 01 */	li r3, 1
/* 804550D4 0041E694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804550D8 0041E698  7C 08 03 A6 */	mtlr r0
/* 804550DC 0041E69C  38 21 00 10 */	addi r1, r1, 0x10
/* 804550E0 0041E6A0  4E 80 00 20 */	blr 
.endfn CDeviceFontLoader_OnFileEvent


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CDeviceFontLoader_typestr, global
	.asciz "CDeviceFontLoader"
	.balign 4
	.4byte 0
.endobj CDeviceFontLoader_typestr


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__17CDeviceFontLoader, global
	.4byte __RTTI__17CDeviceFontLoader
	.4byte 0
	.4byte __dt__CDeviceFontLoader
	.4byte IWorkEvent_WorkEvent1
	.4byte CDeviceFontLoader_OnFileEvent
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
	.4byte CWorkThread_wkUpdate
	.4byte CWorkThread_WorkThreadEvent2
	.4byte CWorkThread_WorkThreadEvent3
	.4byte CDeviceFontLoader_WorkThreadEvent4
	.4byte CDeviceFontLoader_WorkThreadEvent5
	.4byte CWorkThread_WorkThreadEvent6
.endobj __vt__17CDeviceFontLoader

.obj CDeviceFontLoader_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CDeviceFontLoader_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__17CDeviceFontLoader, global
	.4byte CDeviceFontLoader_typestr
	.4byte CDeviceFontLoader_hierarchy
.endobj __RTTI__17CDeviceFontLoader

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001D1F4", local
.hidden "@etb_8001D1F4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D1F4"

.obj "@etb_8001D1FC", local
.hidden "@etb_8001D1FC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D1FC"

.obj "@etb_8001D204", local
.hidden "@etb_8001D204"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D204"

.obj "@etb_8001D20C", local
.hidden "@etb_8001D20C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D20C"

.obj "@etb_8001D214", local
.hidden "@etb_8001D214"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D214"

.obj "@etb_8001D21C", local
.hidden "@etb_8001D21C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D21C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034E74", local
.hidden "@eti_80034E74"
	.4byte __ct__CDeviceFontLoader
	.4byte 0x00000058
	.4byte "@etb_8001D1F4"
.endobj "@eti_80034E74"

.obj "@eti_80034E80", local
.hidden "@eti_80034E80"
	.4byte __dt__CDeviceFontLoader
	.4byte 0x00000058
	.4byte "@etb_8001D1FC"
.endobj "@eti_80034E80"

.obj "@eti_80034E8C", local
.hidden "@eti_80034E8C"
	.4byte func_80454F30
	.4byte 0x00000050
	.4byte "@etb_8001D204"
.endobj "@eti_80034E8C"

.obj "@eti_80034E98", local
.hidden "@eti_80034E98"
	.4byte CDeviceFontLoader_WorkThreadEvent4
	.4byte 0x00000090
	.4byte "@etb_8001D20C"
.endobj "@eti_80034E98"

.obj "@eti_80034EA4", local
.hidden "@eti_80034EA4"
	.4byte CDeviceFontLoader_WorkThreadEvent5
	.4byte 0x00000064
	.4byte "@etb_8001D214"
.endobj "@eti_80034EA4"

.obj "@eti_80034EB0", local
.hidden "@eti_80034EB0"
	.4byte CDeviceFontLoader_OnFileEvent
	.4byte 0x00000070
	.4byte "@etb_8001D21C"
.endobj "@eti_80034EB0"
