.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __HBMSYNResetAllControllers, global
/* 80340E50 0030A410  3C A0 80 55 */	lis r5, __HBMSYNVolumeAttenuation@ha
/* 80340E54 0030A414  38 00 00 02 */	li r0, 2
/* 80340E58 0030A418  38 85 FC 90 */	addi r4, r5, __HBMSYNVolumeAttenuation@l
/* 80340E5C 0030A41C  80 E5 FC 90 */	lwz r7, __HBMSYNVolumeAttenuation@l(r5)
/* 80340E60 0030A420  80 C4 01 90 */	lwz r6, 0x190(r4)
/* 80340E64 0030A424  39 20 00 00 */	li r9, 0
/* 80340E68 0030A428  38 80 00 40 */	li r4, 0x40
/* 80340E6C 0030A42C  7C 09 03 A6 */	mtctr r0
.L_80340E70:
/* 80340E70 0030A430  55 25 15 BA */	rlwinm r5, r9, 2, 0x16, 0x1d
/* 80340E74 0030A434  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 80340E78 0030A438  7D 03 2A 14 */	add r8, r3, r5
/* 80340E7C 0030A43C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80340E80 0030A440  90 A8 00 28 */	stw r5, 0x28(r8)
/* 80340E84 0030A444  7C A3 02 14 */	add r5, r3, r0
/* 80340E88 0030A448  39 29 00 08 */	addi r9, r9, 8
/* 80340E8C 0030A44C  90 C8 00 6C */	stw r6, 0x6c(r8)
/* 80340E90 0030A450  98 85 00 EC */	stb r4, 0xec(r5)
/* 80340E94 0030A454  90 E8 00 AC */	stw r7, 0xac(r8)
/* 80340E98 0030A458  80 03 00 08 */	lwz r0, 8(r3)
/* 80340E9C 0030A45C  90 08 00 2C */	stw r0, 0x2c(r8)
/* 80340EA0 0030A460  90 C8 00 70 */	stw r6, 0x70(r8)
/* 80340EA4 0030A464  98 85 00 ED */	stb r4, 0xed(r5)
/* 80340EA8 0030A468  90 E8 00 B0 */	stw r7, 0xb0(r8)
/* 80340EAC 0030A46C  80 03 00 08 */	lwz r0, 8(r3)
/* 80340EB0 0030A470  90 08 00 30 */	stw r0, 0x30(r8)
/* 80340EB4 0030A474  90 C8 00 74 */	stw r6, 0x74(r8)
/* 80340EB8 0030A478  98 85 00 EE */	stb r4, 0xee(r5)
/* 80340EBC 0030A47C  90 E8 00 B4 */	stw r7, 0xb4(r8)
/* 80340EC0 0030A480  80 03 00 08 */	lwz r0, 8(r3)
/* 80340EC4 0030A484  90 08 00 34 */	stw r0, 0x34(r8)
/* 80340EC8 0030A488  90 C8 00 78 */	stw r6, 0x78(r8)
/* 80340ECC 0030A48C  98 85 00 EF */	stb r4, 0xef(r5)
/* 80340ED0 0030A490  90 E8 00 B8 */	stw r7, 0xb8(r8)
/* 80340ED4 0030A494  80 03 00 08 */	lwz r0, 8(r3)
/* 80340ED8 0030A498  90 08 00 38 */	stw r0, 0x38(r8)
/* 80340EDC 0030A49C  90 C8 00 7C */	stw r6, 0x7c(r8)
/* 80340EE0 0030A4A0  98 85 00 F0 */	stb r4, 0xf0(r5)
/* 80340EE4 0030A4A4  90 E8 00 BC */	stw r7, 0xbc(r8)
/* 80340EE8 0030A4A8  80 03 00 08 */	lwz r0, 8(r3)
/* 80340EEC 0030A4AC  90 08 00 3C */	stw r0, 0x3c(r8)
/* 80340EF0 0030A4B0  90 C8 00 80 */	stw r6, 0x80(r8)
/* 80340EF4 0030A4B4  98 85 00 F1 */	stb r4, 0xf1(r5)
/* 80340EF8 0030A4B8  90 E8 00 C0 */	stw r7, 0xc0(r8)
/* 80340EFC 0030A4BC  80 03 00 08 */	lwz r0, 8(r3)
/* 80340F00 0030A4C0  90 08 00 40 */	stw r0, 0x40(r8)
/* 80340F04 0030A4C4  90 C8 00 84 */	stw r6, 0x84(r8)
/* 80340F08 0030A4C8  98 85 00 F2 */	stb r4, 0xf2(r5)
/* 80340F0C 0030A4CC  90 E8 00 C4 */	stw r7, 0xc4(r8)
/* 80340F10 0030A4D0  80 03 00 08 */	lwz r0, 8(r3)
/* 80340F14 0030A4D4  90 08 00 44 */	stw r0, 0x44(r8)
/* 80340F18 0030A4D8  90 C8 00 88 */	stw r6, 0x88(r8)
/* 80340F1C 0030A4DC  98 85 00 F3 */	stb r4, 0xf3(r5)
/* 80340F20 0030A4E0  90 E8 00 C8 */	stw r7, 0xc8(r8)
/* 80340F24 0030A4E4  42 00 FF 4C */	bdnz .L_80340E70
/* 80340F28 0030A4E8  4E 80 00 20 */	blr 
.endfn __HBMSYNResetAllControllers

.balign 16, 0
.fn __HBMSYNNoteOn__FP11HBMSYNSYNTHUcUcUc, global
/* 80340F30 0030A4F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80340F34 0030A4F4  7C 08 02 A6 */	mflr r0
/* 80340F38 0030A4F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80340F3C 0030A4FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80340F40 0030A500  4B F7 92 05 */	bl _savegpr_23
/* 80340F44 0030A504  2C 06 00 00 */	cmpwi r6, 0
/* 80340F48 0030A508  7C 77 1B 78 */	mr r23, r3
/* 80340F4C 0030A50C  7C 98 23 78 */	mr r24, r4
/* 80340F50 0030A510  7C B9 2B 78 */	mr r25, r5
/* 80340F54 0030A514  7C DA 33 78 */	mr r26, r6
/* 80340F58 0030A518  41 82 01 C4 */	beq .L_8034111C
/* 80340F5C 0030A51C  54 80 4B EC */	rlwinm r0, r4, 9, 0xf, 0x16
/* 80340F60 0030A520  54 BF 15 BA */	rlwinm r31, r5, 2, 0x16, 0x1d
/* 80340F64 0030A524  7C 63 02 14 */	add r3, r3, r0
/* 80340F68 0030A528  3B C3 04 08 */	addi r30, r3, 0x408
/* 80340F6C 0030A52C  7C 7E F8 2E */	lwzx r3, r30, r31
/* 80340F70 0030A530  2C 03 00 00 */	cmpwi r3, 0
/* 80340F74 0030A534  41 82 00 10 */	beq .L_80340F84
/* 80340F78 0030A538  48 00 10 49 */	bl __HBMSYNSetVoiceToRelease
/* 80340F7C 0030A53C  38 00 00 00 */	li r0, 0
/* 80340F80 0030A540  7C 1E F9 2E */	stwx r0, r30, r31
.L_80340F84:
/* 80340F84 0030A544  3C 80 80 34 */	lis r4, __HBMSYNClearVoiceReferences@ha
/* 80340F88 0030A548  7E E5 BB 78 */	mr r5, r23
/* 80340F8C 0030A54C  38 84 1F 10 */	addi r4, r4, __HBMSYNClearVoiceReferences@l
/* 80340F90 0030A550  38 60 00 1F */	li r3, 0x1f
/* 80340F94 0030A554  4B F9 14 ED */	bl AXAcquireVoice
/* 80340F98 0030A558  2C 03 00 00 */	cmpwi r3, 0
/* 80340F9C 0030A55C  7C 7D 1B 78 */	mr r29, r3
/* 80340FA0 0030A560  41 82 01 A4 */	beq .L_80341144
/* 80340FA4 0030A564  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80340FA8 0030A568  4B FF F9 29 */	bl HBMAllocIndex
/* 80340FAC 0030A56C  2C 03 00 00 */	cmpwi r3, 0
/* 80340FB0 0030A570  7C 7C 1B 78 */	mr r28, r3
/* 80340FB4 0030A574  41 80 01 5C */	blt .L_80341110
/* 80340FB8 0030A578  3C A0 80 5D */	lis r5, lbl_805CDEEC@ha
/* 80340FBC 0030A57C  57 00 15 BA */	rlwinm r0, r24, 2, 0x16, 0x1d
/* 80340FC0 0030A580  1C 83 00 4C */	mulli r4, r3, 0x4c
/* 80340FC4 0030A584  80 A5 DE EC */	lwz r5, lbl_805CDEEC@l(r5)
/* 80340FC8 0030A588  7C 77 02 14 */	add r3, r23, r0
/* 80340FCC 0030A58C  57 20 0D FC */	rlwinm r0, r25, 1, 0x17, 0x1e
/* 80340FD0 0030A590  7F 65 22 14 */	add r27, r5, r4
/* 80340FD4 0030A594  93 BB 00 04 */	stw r29, 4(r27)
/* 80340FD8 0030A598  92 FB 00 08 */	stw r23, 8(r27)
/* 80340FDC 0030A59C  9B 1B 00 0C */	stb r24, 0xc(r27)
/* 80340FE0 0030A5A0  9B 3B 00 0D */	stb r25, 0xd(r27)
/* 80340FE4 0030A5A4  9B 5B 00 0E */	stb r26, 0xe(r27)
/* 80340FE8 0030A5A8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80340FEC 0030A5AC  7C 03 02 2E */	lhzx r0, r3, r0
/* 80340FF0 0030A5B0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80340FF4 0030A5B4  40 82 00 0C */	bne .L_80341000
/* 80340FF8 0030A5B8  38 A0 00 00 */	li r5, 0
/* 80340FFC 0030A5BC  48 00 00 54 */	b .L_80341050
.L_80341000:
/* 80341000 0030A5C0  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80341004 0030A5C4  80 77 00 0C */	lwz r3, 0xc(r23)
/* 80341008 0030A5C8  38 A0 00 01 */	li r5, 1
/* 8034100C 0030A5CC  7C 83 02 14 */	add r4, r3, r0
/* 80341010 0030A5D0  90 9B 00 10 */	stw r4, 0x10(r27)
/* 80341014 0030A5D4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80341018 0030A5D8  80 77 00 10 */	lwz r3, 0x10(r23)
/* 8034101C 0030A5DC  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80341020 0030A5E0  7C 03 02 14 */	add r0, r3, r0
/* 80341024 0030A5E4  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80341028 0030A5E8  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8034102C 0030A5EC  80 77 00 14 */	lwz r3, 0x14(r23)
/* 80341030 0030A5F0  54 00 20 36 */	slwi r0, r0, 4
/* 80341034 0030A5F4  7C 63 02 14 */	add r3, r3, r0
/* 80341038 0030A5F8  90 7B 00 18 */	stw r3, 0x18(r27)
/* 8034103C 0030A5FC  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 80341040 0030A600  80 77 00 18 */	lwz r3, 0x18(r23)
/* 80341044 0030A604  1C 00 00 2E */	mulli r0, r0, 0x2e
/* 80341048 0030A608  7C 03 02 14 */	add r0, r3, r0
/* 8034104C 0030A60C  90 1B 00 1C */	stw r0, 0x1c(r27)
.L_80341050:
/* 80341050 0030A610  2C 05 00 00 */	cmpwi r5, 0
/* 80341054 0030A614  41 82 00 98 */	beq .L_803410EC
/* 80341058 0030A618  7F 7E F9 2E */	stwx r27, r30, r31
/* 8034105C 0030A61C  7F 63 DB 78 */	mr r3, r27
/* 80341060 0030A620  80 97 04 04 */	lwz r4, 0x404(r23)
/* 80341064 0030A624  38 04 00 01 */	addi r0, r4, 1
/* 80341068 0030A628  90 17 04 04 */	stw r0, 0x404(r23)
/* 8034106C 0030A62C  48 00 08 B5 */	bl __HBMSYNSetupPitch
/* 80341070 0030A630  7F 63 DB 78 */	mr r3, r27
/* 80341074 0030A634  48 00 06 5D */	bl __HBMSYNSetupVolume
/* 80341078 0030A638  7F 63 DB 78 */	mr r3, r27
/* 8034107C 0030A63C  48 00 06 85 */	bl __HBMSYNSetupPan
/* 80341080 0030A640  7F 63 DB 78 */	mr r3, r27
/* 80341084 0030A644  48 00 02 6D */	bl __HBMSYNSetupVolumeEnvelope
/* 80341088 0030A648  7F 63 DB 78 */	mr r3, r27
/* 8034108C 0030A64C  48 00 06 B5 */	bl __HBMSYNGetVoiceFader
/* 80341090 0030A650  7C 79 1B 78 */	mr r25, r3
/* 80341094 0030A654  7F 63 DB 78 */	mr r3, r27
/* 80341098 0030A658  48 00 06 89 */	bl __HBMSYNGetVoiceInput
/* 8034109C 0030A65C  57 00 15 BA */	rlwinm r0, r24, 2, 0x16, 0x1d
/* 803410A0 0030A660  7C 64 1B 78 */	mr r4, r3
/* 803410A4 0030A664  7C D7 02 14 */	add r6, r23, r0
/* 803410A8 0030A668  7C B7 C2 14 */	add r5, r23, r24
/* 803410AC 0030A66C  80 06 00 AC */	lwz r0, 0xac(r6)
/* 803410B0 0030A670  7F A3 EB 78 */	mr r3, r29
/* 803410B4 0030A674  88 C5 00 EC */	lbz r6, 0xec(r5)
/* 803410B8 0030A678  7F 27 CB 78 */	mr r7, r25
/* 803410BC 0030A67C  7C 05 86 70 */	srawi r5, r0, 0x10
/* 803410C0 0030A680  4B FF E2 51 */	bl HBMMIXInitChannel
/* 803410C4 0030A684  7F 63 DB 78 */	mr r3, r27
/* 803410C8 0030A688  48 00 0E 09 */	bl __HBMSYNSetupSample
/* 803410CC 0030A68C  7F 63 DB 78 */	mr r3, r27
/* 803410D0 0030A690  48 00 08 C1 */	bl __HBMSYNSetupSrc
/* 803410D4 0030A694  38 00 00 01 */	li r0, 1
/* 803410D8 0030A698  B0 1D 00 38 */	sth r0, 0x38(r29)
/* 803410DC 0030A69C  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 803410E0 0030A6A0  60 00 00 04 */	ori r0, r0, 4
/* 803410E4 0030A6A4  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 803410E8 0030A6A8  48 00 00 5C */	b .L_80341144
.L_803410EC:
/* 803410EC 0030A6AC  38 00 00 00 */	li r0, 0
/* 803410F0 0030A6B0  90 1B 00 08 */	stw r0, 8(r27)
/* 803410F4 0030A6B4  7F A3 EB 78 */	mr r3, r29
/* 803410F8 0030A6B8  4B FF EB 69 */	bl HBMMIXReleaseChannel
/* 803410FC 0030A6BC  7F 83 E3 78 */	mr r3, r28
/* 80341100 0030A6C0  4B FF F8 51 */	bl HBMFreeIndex
/* 80341104 0030A6C4  7F A3 EB 78 */	mr r3, r29
/* 80341108 0030A6C8  4B F9 12 F9 */	bl AXFreeVoice
/* 8034110C 0030A6CC  48 00 00 38 */	b .L_80341144
.L_80341110:
/* 80341110 0030A6D0  7F A3 EB 78 */	mr r3, r29
/* 80341114 0030A6D4  4B F9 12 ED */	bl AXFreeVoice
/* 80341118 0030A6D8  48 00 00 2C */	b .L_80341144
.L_8034111C:
/* 8034111C 0030A6DC  54 84 4B EC */	rlwinm r4, r4, 9, 0xf, 0x16
/* 80341120 0030A6E0  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 80341124 0030A6E4  7C 63 22 14 */	add r3, r3, r4
/* 80341128 0030A6E8  7E E3 02 14 */	add r23, r3, r0
/* 8034112C 0030A6EC  80 77 04 08 */	lwz r3, 0x408(r23)
/* 80341130 0030A6F0  2C 03 00 00 */	cmpwi r3, 0
/* 80341134 0030A6F4  41 82 00 10 */	beq .L_80341144
/* 80341138 0030A6F8  48 00 0E 89 */	bl __HBMSYNSetVoiceToRelease
/* 8034113C 0030A6FC  38 00 00 00 */	li r0, 0
/* 80341140 0030A700  90 17 04 08 */	stw r0, 0x408(r23)
.L_80341144:
/* 80341144 0030A704  39 61 00 30 */	addi r11, r1, 0x30
/* 80341148 0030A708  4B F7 90 49 */	bl _restgpr_23
/* 8034114C 0030A70C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80341150 0030A710  7C 08 03 A6 */	mtlr r0
/* 80341154 0030A714  38 21 00 30 */	addi r1, r1, 0x30
/* 80341158 0030A718  4E 80 00 20 */	blr 
.endfn __HBMSYNNoteOn__FP11HBMSYNSYNTHUcUcUc

.balign 16, 0
.fn __HBMSYNMidiIn__FP11HBMSYNSYNTHPUc, global
/* 80341160 0030A720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80341164 0030A724  7C 08 02 A6 */	mflr r0
/* 80341168 0030A728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034116C 0030A72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80341170 0030A730  88 04 00 00 */	lbz r0, 0(r4)
/* 80341174 0030A734  88 A4 00 01 */	lbz r5, 1(r4)
/* 80341178 0030A738  7C 06 26 70 */	srawi r6, r0, 4
/* 8034117C 0030A73C  54 07 07 3E */	clrlwi r7, r0, 0x1c
/* 80341180 0030A740  2C 06 00 08 */	cmpwi r6, 8
/* 80341184 0030A744  41 82 00 24 */	beq .L_803411A8
/* 80341188 0030A748  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 8034118C 0030A74C  2C 00 00 09 */	cmpwi r0, 9
/* 80341190 0030A750  41 82 00 44 */	beq .L_803411D4
/* 80341194 0030A754  2C 00 00 0B */	cmpwi r0, 0xb
/* 80341198 0030A758  41 82 00 4C */	beq .L_803411E4
/* 8034119C 0030A75C  2C 00 00 0C */	cmpwi r0, 0xc
/* 803411A0 0030A760  41 82 00 B0 */	beq .L_80341250
/* 803411A4 0030A764  48 00 00 C4 */	b .L_80341268
.L_803411A8:
/* 803411A8 0030A768  54 E4 4B EC */	rlwinm r4, r7, 9, 0xf, 0x16
/* 803411AC 0030A76C  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 803411B0 0030A770  7C 63 22 14 */	add r3, r3, r4
/* 803411B4 0030A774  7F E3 02 14 */	add r31, r3, r0
/* 803411B8 0030A778  80 7F 04 08 */	lwz r3, 0x408(r31)
/* 803411BC 0030A77C  2C 03 00 00 */	cmpwi r3, 0
/* 803411C0 0030A780  41 82 00 A8 */	beq .L_80341268
/* 803411C4 0030A784  48 00 0D FD */	bl __HBMSYNSetVoiceToRelease
/* 803411C8 0030A788  38 00 00 00 */	li r0, 0
/* 803411CC 0030A78C  90 1F 04 08 */	stw r0, 0x408(r31)
/* 803411D0 0030A790  48 00 00 98 */	b .L_80341268
.L_803411D4:
/* 803411D4 0030A794  88 C4 00 02 */	lbz r6, 2(r4)
/* 803411D8 0030A798  7C E4 3B 78 */	mr r4, r7
/* 803411DC 0030A79C  4B FF FD 55 */	bl __HBMSYNNoteOn__FP11HBMSYNSYNTHUcUcUc
/* 803411E0 0030A7A0  48 00 00 88 */	b .L_80341268
.L_803411E4:
/* 803411E4 0030A7A4  2C 05 00 07 */	cmpwi r5, 7
/* 803411E8 0030A7A8  88 C4 00 02 */	lbz r6, 2(r4)
/* 803411EC 0030A7AC  41 82 00 18 */	beq .L_80341204
/* 803411F0 0030A7B0  2C 05 00 0A */	cmpwi r5, 0xa
/* 803411F4 0030A7B4  41 82 00 30 */	beq .L_80341224
/* 803411F8 0030A7B8  2C 05 00 5B */	cmpwi r5, 0x5b
/* 803411FC 0030A7BC  41 82 00 34 */	beq .L_80341230
/* 80341200 0030A7C0  48 00 00 68 */	b .L_80341268
.L_80341204:
/* 80341204 0030A7C4  3C 80 80 55 */	lis r4, __HBMSYNVolumeAttenuation@ha
/* 80341208 0030A7C8  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 8034120C 0030A7CC  54 C5 15 BA */	rlwinm r5, r6, 2, 0x16, 0x1d
/* 80341210 0030A7D0  38 84 FC 90 */	addi r4, r4, __HBMSYNVolumeAttenuation@l
/* 80341214 0030A7D4  7C 63 02 14 */	add r3, r3, r0
/* 80341218 0030A7D8  7C 04 28 2E */	lwzx r0, r4, r5
/* 8034121C 0030A7DC  90 03 00 6C */	stw r0, 0x6c(r3)
/* 80341220 0030A7E0  48 00 00 48 */	b .L_80341268
.L_80341224:
/* 80341224 0030A7E4  7C 63 3A 14 */	add r3, r3, r7
/* 80341228 0030A7E8  98 C3 00 EC */	stb r6, 0xec(r3)
/* 8034122C 0030A7EC  48 00 00 3C */	b .L_80341268
.L_80341230:
/* 80341230 0030A7F0  3C 80 80 55 */	lis r4, __HBMSYNVolumeAttenuation@ha
/* 80341234 0030A7F4  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 80341238 0030A7F8  54 C5 15 BA */	rlwinm r5, r6, 2, 0x16, 0x1d
/* 8034123C 0030A7FC  38 84 FC 90 */	addi r4, r4, __HBMSYNVolumeAttenuation@l
/* 80341240 0030A800  7C 63 02 14 */	add r3, r3, r0
/* 80341244 0030A804  7C 04 28 2E */	lwzx r0, r4, r5
/* 80341248 0030A808  90 03 00 AC */	stw r0, 0xac(r3)
/* 8034124C 0030A80C  48 00 00 1C */	b .L_80341268
.L_80341250:
/* 80341250 0030A810  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 80341254 0030A814  80 C3 00 08 */	lwz r6, 8(r3)
/* 80341258 0030A818  54 A4 44 2E */	rlwinm r4, r5, 8, 0x10, 0x17
/* 8034125C 0030A81C  7C 63 02 14 */	add r3, r3, r0
/* 80341260 0030A820  7C 06 22 14 */	add r0, r6, r4
/* 80341264 0030A824  90 03 00 28 */	stw r0, 0x28(r3)
.L_80341268:
/* 80341268 0030A828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034126C 0030A82C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80341270 0030A830  7C 08 03 A6 */	mtlr r0
/* 80341274 0030A834  38 21 00 10 */	addi r1, r1, 0x10
/* 80341278 0030A838  4E 80 00 20 */	blr 
.endfn __HBMSYNMidiIn__FP11HBMSYNSYNTHPUc

.balign 16, 0
.fn __HBMSYNRunInputBufferEvents, global
/* 80341280 0030A840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80341284 0030A844  7C 08 02 A6 */	mflr r0
/* 80341288 0030A848  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034128C 0030A84C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80341290 0030A850  3B E3 00 FC */	addi r31, r3, 0xfc
/* 80341294 0030A854  93 C1 00 08 */	stw r30, 8(r1)
/* 80341298 0030A858  7C 7E 1B 78 */	mr r30, r3
/* 8034129C 0030A85C  48 00 00 20 */	b .L_803412BC
.L_803412A0:
/* 803412A0 0030A860  7F C3 F3 78 */	mr r3, r30
/* 803412A4 0030A864  7F E4 FB 78 */	mr r4, r31
/* 803412A8 0030A868  4B FF FE B9 */	bl __HBMSYNMidiIn__FP11HBMSYNSYNTHPUc
/* 803412AC 0030A86C  80 7E 04 00 */	lwz r3, 0x400(r30)
/* 803412B0 0030A870  3B FF 00 03 */	addi r31, r31, 3
/* 803412B4 0030A874  38 03 FF FF */	addi r0, r3, -1
/* 803412B8 0030A878  90 1E 04 00 */	stw r0, 0x400(r30)
.L_803412BC:
/* 803412BC 0030A87C  80 1E 04 00 */	lwz r0, 0x400(r30)
/* 803412C0 0030A880  2C 00 00 00 */	cmpwi r0, 0
/* 803412C4 0030A884  40 82 FF DC */	bne .L_803412A0
/* 803412C8 0030A888  38 1E 00 FC */	addi r0, r30, 0xfc
/* 803412CC 0030A88C  90 1E 03 FC */	stw r0, 0x3fc(r30)
/* 803412D0 0030A890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803412D4 0030A894  83 C1 00 08 */	lwz r30, 8(r1)
/* 803412D8 0030A898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803412DC 0030A89C  7C 08 03 A6 */	mtlr r0
/* 803412E0 0030A8A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803412E4 0030A8A4  4E 80 00 20 */	blr 
.endfn __HBMSYNRunInputBufferEvents


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __HBMSYNn128
__HBMSYNn128:
	.float 0.0
	.float 0.007813
	.float 0.015625
	.float 0.023438
	.float 0.03125
	.float 0.039063
	.float 0.046875
	.float 0.054688
	.float 0.0625
	.float 0.070313
	.float 0.078125
	.float 0.085938
	.float 0.09375
	.float 0.101563
	.float 0.109375
	.float 0.117188
	.float 0.125
	.float 0.132813
	.float 0.140625
	.float 0.148438
	.float 0.15625
	.float 0.164063
	.float 0.171875
	.float 0.179688
	.float 0.1875
	.float 0.195313
	.float 0.203125
	.float 0.210938
	.float 0.21875
	.float 0.226563
	.float 0.234375
	.float 0.242188
	.float 0.25
	.float 0.257813
	.float 0.265625
	.float 0.273438
	.float 0.28125
	.float 0.289063
	.float 0.296875
	.float 0.304688
	.float 0.3125
	.float 0.320313
	.float 0.328125
	.float 0.335938
	.float 0.34375
	.float 0.351563
	.float 0.359375
	.float 0.367188
	.float 0.375
	.float 0.382813
	.float 0.390625
	.float 0.398438
	.float 0.40625
	.float 0.414063
	.float 0.421875
	.float 0.429688
	.float 0.4375
	.float 0.445313
	.float 0.453125
	.float 0.460938
	.float 0.46875
	.float 0.476563
	.float 0.484375
	.float 0.492188
	.float 0.5
	.float 0.507813
	.float 0.515625
	.float 0.523438
	.float 0.53125
	.float 0.539063
	.float 0.546875
	.float 0.554688
	.float 0.5625
	.float 0.570313
	.float 0.578125
	.float 0.585938
	.float 0.59375
	.float 0.601563
	.float 0.609375
	.float 0.617188
	.float 0.625
	.float 0.632813
	.float 0.640625
	.float 0.648438
	.float 0.65625
	.float 0.664063
	.float 0.671875
	.float 0.679688
	.float 0.6875
	.float 0.695313
	.float 0.703125
	.float 0.710938
	.float 0.71875
	.float 0.726563
	.float 0.734375
	.float 0.742188
	.float 0.75
	.float 0.757813
	.float 0.765625
	.float 0.773438
	.float 0.78125
	.float 0.789063
	.float 0.796875
	.float 0.804688
	.float 0.8125
	.float 0.820313
	.float 0.828125
	.float 0.835938
	.float 0.84375
	.float 0.851563
	.float 0.859375
	.float 0.867188
	.float 0.875
	.float 0.882813
	.float 0.890625
	.float 0.898438
	.float 0.90625
	.float 0.914063
	.float 0.921875
	.float 0.929688
	.float 0.9375
	.float 0.945313
	.float 0.953125
	.float 0.960938
	.float 0.96875
	.float 0.976563
	.float 0.984375
	.float 0.992188