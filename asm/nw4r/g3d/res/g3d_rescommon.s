.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __eq__Q34nw4r3g3d7ResNameCFQ34nw4r3g3d7ResName, global
/* 803D7810 003A0DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7814 003A0DD4  7C 08 02 A6 */	mflr r0
/* 803D7818 003A0DD8  80 84 00 00 */	lwz r4, 0(r4)
/* 803D781C 003A0DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7820 003A0DE0  80 A3 00 00 */	lwz r5, 0(r3)
/* 803D7824 003A0DE4  80 04 00 00 */	lwz r0, 0(r4)
/* 803D7828 003A0DE8  80 65 00 00 */	lwz r3, 0(r5)
/* 803D782C 003A0DEC  7C 03 00 40 */	cmplw r3, r0
/* 803D7830 003A0DF0  40 82 00 1C */	bne .L_803D784C
/* 803D7834 003A0DF4  38 65 00 04 */	addi r3, r5, 4
/* 803D7838 003A0DF8  38 84 00 04 */	addi r4, r4, 4
/* 803D783C 003A0DFC  4B EE AF F9 */	bl strcmp
/* 803D7840 003A0E00  7C 60 00 34 */	cntlzw r0, r3
/* 803D7844 003A0E04  54 03 D9 7E */	srwi r3, r0, 5
/* 803D7848 003A0E08  48 00 00 08 */	b .L_803D7850
.L_803D784C:
/* 803D784C 003A0E0C  38 60 00 00 */	li r3, 0
.L_803D7850:
/* 803D7850 003A0E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7854 003A0E14  7C 08 03 A6 */	mtlr r0
/* 803D7858 003A0E18  38 21 00 10 */	addi r1, r1, 0x10
/* 803D785C 003A0E1C  4E 80 00 20 */	blr 
.endfn __eq__Q34nw4r3g3d7ResNameCFQ34nw4r3g3d7ResName

.fn ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUl, global
/* 803D7860 003A0E20  54 86 46 3E */	srwi r6, r4, 0x18
/* 803D7864 003A0E24  54 85 86 3E */	rlwinm r5, r4, 0x10, 0x18, 0x1f
/* 803D7868 003A0E28  54 80 C6 3E */	rlwinm r0, r4, 0x18, 0x18, 0x1f
/* 803D786C 003A0E2C  38 E0 00 61 */	li r7, 0x61
/* 803D7870 003A0E30  98 E3 00 00 */	stb r7, 0(r3)
/* 803D7874 003A0E34  98 C3 00 01 */	stb r6, 1(r3)
/* 803D7878 003A0E38  98 A3 00 02 */	stb r5, 2(r3)
/* 803D787C 003A0E3C  98 03 00 03 */	stb r0, 3(r3)
/* 803D7880 003A0E40  98 83 00 04 */	stb r4, 4(r3)
/* 803D7884 003A0E44  4E 80 00 20 */	blr 
.endfn ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUl

.fn ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl, global
/* 803D7888 003A0E48  88 C3 00 02 */	lbz r6, 2(r3)
/* 803D788C 003A0E4C  39 00 00 61 */	li r8, 0x61
/* 803D7890 003A0E50  88 03 00 03 */	lbz r0, 3(r3)
/* 803D7894 003A0E54  7C 89 28 38 */	and r9, r4, r5
/* 803D7898 003A0E58  88 E3 00 01 */	lbz r7, 1(r3)
/* 803D789C 003A0E5C  54 C6 80 1E */	slwi r6, r6, 0x10
/* 803D78A0 003A0E60  54 04 40 2E */	slwi r4, r0, 8
/* 803D78A4 003A0E64  88 03 00 04 */	lbz r0, 4(r3)
/* 803D78A8 003A0E68  50 E6 C0 0E */	rlwimi r6, r7, 0x18, 0, 7
/* 803D78AC 003A0E6C  99 03 00 00 */	stb r8, 0(r3)
/* 803D78B0 003A0E70  7C C6 23 78 */	or r6, r6, r4
/* 803D78B4 003A0E74  7C C6 03 78 */	or r6, r6, r0
/* 803D78B8 003A0E78  7C C0 28 78 */	andc r0, r6, r5
/* 803D78BC 003A0E7C  7D 20 03 78 */	or r0, r9, r0
/* 803D78C0 003A0E80  54 05 46 3E */	srwi r5, r0, 0x18
/* 803D78C4 003A0E84  98 03 00 04 */	stb r0, 4(r3)
/* 803D78C8 003A0E88  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 803D78CC 003A0E8C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 803D78D0 003A0E90  98 A3 00 01 */	stb r5, 1(r3)
/* 803D78D4 003A0E94  98 83 00 02 */	stb r4, 2(r3)
/* 803D78D8 003A0E98  98 03 00 03 */	stb r0, 3(r3)
/* 803D78DC 003A0E9C  4E 80 00 20 */	blr 
.endfn ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl

.fn ResWriteCPCmd__Q34nw4r3g3d6detailFPUcUcUl, global
/* 803D78E0 003A0EA0  54 A7 46 3E */	srwi r7, r5, 0x18
/* 803D78E4 003A0EA4  54 A6 86 3E */	rlwinm r6, r5, 0x10, 0x18, 0x1f
/* 803D78E8 003A0EA8  54 A0 C6 3E */	rlwinm r0, r5, 0x18, 0x18, 0x1f
/* 803D78EC 003A0EAC  39 00 00 08 */	li r8, 8
/* 803D78F0 003A0EB0  99 03 00 00 */	stb r8, 0(r3)
/* 803D78F4 003A0EB4  98 83 00 01 */	stb r4, 1(r3)
/* 803D78F8 003A0EB8  98 E3 00 02 */	stb r7, 2(r3)
/* 803D78FC 003A0EBC  98 C3 00 03 */	stb r6, 3(r3)
/* 803D7900 003A0EC0  98 03 00 04 */	stb r0, 4(r3)
/* 803D7904 003A0EC4  98 A3 00 05 */	stb r5, 5(r3)
/* 803D7908 003A0EC8  4E 80 00 20 */	blr 
.endfn ResWriteCPCmd__Q34nw4r3g3d6detailFPUcUcUl

.global ResWriteSSMask__Q34nw4r3g3d6detailFPUcUl
ResWriteSSMask__Q34nw4r3g3d6detailFPUcUl:
/* 803D790C 003A0ECC  88 C3 00 02 */	lbz r6, 2(r3)
/* 803D7910 003A0ED0  38 00 00 61 */	li r0, 0x61
/* 803D7914 003A0ED4  88 A3 00 03 */	lbz r5, 3(r3)
/* 803D7918 003A0ED8  54 C8 80 1E */	slwi r8, r6, 0x10
/* 803D791C 003A0EDC  88 E3 00 01 */	lbz r7, 1(r3)
/* 803D7920 003A0EE0  54 A6 40 2E */	slwi r6, r5, 8
/* 803D7924 003A0EE4  88 A3 00 04 */	lbz r5, 4(r3)
/* 803D7928 003A0EE8  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 803D792C 003A0EEC  98 03 00 00 */	stb r0, 0(r3)
/* 803D7930 003A0EF0  7D 08 33 78 */	or r8, r8, r6
/* 803D7934 003A0EF4  7D 08 2B 78 */	or r8, r8, r5
/* 803D7938 003A0EF8  7D 00 23 78 */	or r0, r8, r4
/* 803D793C 003A0EFC  64 00 FE 00 */	oris r0, r0, 0xfe00
/* 803D7940 003A0F00  54 05 46 3E */	srwi r5, r0, 0x18
/* 803D7944 003A0F04  98 03 00 04 */	stb r0, 4(r3)
/* 803D7948 003A0F08  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 803D794C 003A0F0C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 803D7950 003A0F10  98 A3 00 01 */	stb r5, 1(r3)
/* 803D7954 003A0F14  98 83 00 02 */	stb r4, 2(r3)
/* 803D7958 003A0F18  98 03 00 03 */	stb r0, 3(r3)
/* 803D795C 003A0F1C  4E 80 00 20 */	blr 
