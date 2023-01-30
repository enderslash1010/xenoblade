.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn InitMetroTRK, global
/* 802CBF00  38 21 FF FC */		addi r1,r1,-4
/* 802CBF04  90 61 00 00 */		stw r3,0(r1)
/* 802CBF08  3C 60 80 57 */		lis r3, gTRKCPUState@h
/* 802CBF0C  60 63 D3 F8 */		ori r3,r3, gTRKCPUState@l
/* 802CBF10  BC 03 00 00 */		stmw r0,0(r3)
/* 802CBF14  80 81 00 00 */		lwz r4,0(r1)
/* 802CBF18  38 21 00 04 */		addi r1,r1,4
/* 802CBF1C  90 23 00 04 */		stw r1,4(r3)
/* 802CBF20  90 83 00 0C */		stw r4,12(r3)
/* 802CBF24  7C 88 02 A6 */		mflr r4
/* 802CBF28  90 83 00 84 */		stw r4,132(r3)
/* 802CBF2C  90 83 00 80 */		stw r4,128(r3)
/* 802CBF30  7C 80 00 26 */		mfcr r4
/* 802CBF34  90 83 00 88 */		stw r4,136(r3)
/* 802CBF38  7C 80 00 A6 */		mfmsr r4
/* 802CBF3C  60 83 80 00 */		ori r3,r4, 0x8000
/* 802CBF40  68 63 80 00 */		xori r3,r3, 0x8000
/* 802CBF44  7C 60 01 24 */		mtmsr r3
/* 802CBF48  7C 9B 03 A6 */		mtsrr1 r4
/* 802CBF4C  48 00 11 AD */		bl TRKSaveExtended1Block
/* 802CBF50  3C 60 80 57 */		lis r3, gTRKCPUState@h
/* 802CBF54  60 63 D3 F8 */		ori r3,r3, gTRKCPUState@l
/* 802CBF58  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 802CBF5C  38 00 00 00 */		li r0,0
/* 802CBF60  7C 12 FB A6 */		mtspr 0x3f2 ,r0
/* 802CBF64  7C 15 FB A6 */		mtspr 0x3f5 ,r0
/* 802CBF68  3C 20 80 67 */		lis r1, _db_stack_addr@h
/* 802CBF6C  60 21 FD 00 */		ori r1,r1, _db_stack_addr@l
/* 802CBF70  7C A3 2B 78 */		mr r3,r5
/* 802CBF74  48 00 03 71 */		bl InitMetroTRKCommTable
/* 802CBF78  2C 03 00 01 */		cmpwi r3,1
/* 802CBF7C  40 82 00 14 */		bne .L_802CBF90
/* 802CBF80  80 83 00 84 */		lwz r4,132(r3)
/* 802CBF84  7C 88 03 A6 */		mtlr r4
/* 802CBF88  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 802CBF8C  4E 80 00 20 */		blr
.L_802CBF90:
/* 802CBF90  4B FF FA C4 */		b TRK_main
/* 802CBF94  4E 80 00 20 */		blr
.endfn InitMetroTRK

.fn InitMetroTRK_BBA, global
/* 802CBF98 00295558  38 21 FF FC */	addi r1, r1, -4
/* 802CBF9C 0029555C  90 61 00 00 */	stw r3, 0(r1)
/* 802CBFA0 00295560  3C 60 80 57 */	lis r3, gTRKCPUState@h
/* 802CBFA4 00295564  60 63 D3 F8 */	ori r3, r3, gTRKCPUState@l
/* 802CBFA8 00295568  BC 03 00 00 */	stmw r0, 0(r3)
/* 802CBFAC 0029556C  80 81 00 00 */	lwz r4, 0(r1)
/* 802CBFB0 00295570  38 21 00 04 */	addi r1, r1, 4
/* 802CBFB4 00295574  90 23 00 04 */	stw r1, 4(r3)
/* 802CBFB8 00295578  90 83 00 0C */	stw r4, 0xc(r3)
/* 802CBFBC 0029557C  7C 88 02 A6 */	mflr r4
/* 802CBFC0 00295580  90 83 00 84 */	stw r4, 0x84(r3)
/* 802CBFC4 00295584  90 83 00 80 */	stw r4, 0x80(r3)
/* 802CBFC8 00295588  7C 80 00 26 */	mfcr r4
/* 802CBFCC 0029558C  90 83 00 88 */	stw r4, 0x88(r3)
/* 802CBFD0 00295590  7C 80 00 A6 */	mfmsr r4
/* 802CBFD4 00295594  60 83 80 00 */	ori r3, r4, 0x8000
/* 802CBFD8 00295598  7C 60 01 24 */	mtmsr r3
/* 802CBFDC 0029559C  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 802CBFE0 002955A0  48 00 11 19 */	bl TRKSaveExtended1Block
/* 802CBFE4 002955A4  3C 60 80 57 */	lis r3, gTRKCPUState@h
/* 802CBFE8 002955A8  60 63 D3 F8 */	ori r3, r3, gTRKCPUState@l
/* 802CBFEC 002955AC  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 802CBFF0 002955B0  38 00 00 00 */	li r0, 0
/* 802CBFF4 002955B4  7C 12 FB A6 */	mtspr 0x3f2, r0
/* 802CBFF8 002955B8  7C 15 FB A6 */	mtspr 0x3f5, r0
/* 802CBFFC 002955BC  3C 20 80 67 */	lis r1, _db_stack_addr@h
/* 802CC000 002955C0  60 21 FD 00 */	ori r1, r1, _db_stack_addr@l
/* 802CC004 002955C4  38 60 00 02 */	li r3, 2
/* 802CC008 002955C8  48 00 02 DD */	bl InitMetroTRKCommTable
/* 802CC00C 002955CC  2C 03 00 01 */	cmpwi r3, 1
/* 802CC010 002955D0  40 82 00 14 */	bne .L_802CC024
/* 802CC014 002955D4  80 83 00 84 */	lwz r4, 0x84(r3)
/* 802CC018 002955D8  7C 88 03 A6 */	mtlr r4
/* 802CC01C 002955DC  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 802CC020 002955E0  4E 80 00 20 */	blr
.L_802CC024:
/* 802CC024 002955E4  4B FF FA 30 */	b TRK_main
/* 802CC028 002955E8  4E 80 00 20 */	blr 
.endfn InitMetroTRK_BBA

.fn EnableMetroTRKInterrupts, global
/* 802CC02C 002955EC  48 00 04 48 */	b EnableEXI2Interrupts
.endfn EnableMetroTRKInterrupts

.fn TRKTargetTranslate, global
/* 802CC030 002955F0  80 8D B3 F0 */	lwz r4, lbl_80667570@sda21(r13)
/* 802CC034 002955F4  7C 03 20 40 */	cmplw r3, r4
/* 802CC038 002955F8  41 80 00 24 */	blt .L_802CC05C
/* 802CC03C 002955FC  38 04 40 00 */	addi r0, r4, 0x4000
/* 802CC040 00295600  7C 03 00 40 */	cmplw r3, r0
/* 802CC044 00295604  40 80 00 18 */	bge .L_802CC05C
/* 802CC048 00295608  3C 80 80 58 */	lis r4, gTRKCPUState@ha
/* 802CC04C 0029560C  38 84 D3 F8 */	addi r4, r4, gTRKCPUState@l
/* 802CC050 00295610  80 04 02 38 */	lwz r0, 0x238(r4)
/* 802CC054 00295614  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 802CC058 00295618  4C 82 00 20 */	bnelr 
.L_802CC05C:
/* 802CC05C 0029561C  3C 00 03 00 */	lis r0, 0x300
/* 802CC060 00295620  7C 03 00 40 */	cmplw r3, r0
/* 802CC064 00295624  40 80 00 10 */	bge .L_802CC074
/* 802CC068 00295628  54 60 00 BE */	clrlwi r0, r3, 2
/* 802CC06C 0029562C  64 03 80 00 */	oris r3, r0, 0x8000
/* 802CC070 00295630  4E 80 00 20 */	blr
.L_802CC074:
/* 802CC074 00295634  3C 00 10 00 */	lis r0, 0x1000
/* 802CC078 00295638  7C 03 00 40 */	cmplw r3, r0
/* 802CC07C 0029563C  4D 80 00 20 */	bltlr 
/* 802CC080 00295640  3C 00 1C 00 */	lis r0, 0x1c00
/* 802CC084 00295644  7C 03 00 40 */	cmplw r3, r0
/* 802CC088 00295648  4C 80 00 20 */	bgelr 
/* 802CC08C 0029564C  54 60 00 BE */	clrlwi r0, r3, 2
/* 802CC090 00295650  64 03 90 00 */	oris r3, r0, 0x9000
/* 802CC094 00295654  4E 80 00 20 */	blr 
.endfn TRKTargetTranslate

.fn __TRK_copy_vectors, global
/* 802CC098 00295658  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CC09C 0029565C  7C 08 02 A6 */	mflr r0
/* 802CC0A0 00295660  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CC0A4 00295664  BE C1 00 08 */	stmw r22, 8(r1)
/* 802CC0A8 00295668  80 6D B3 F0 */	lwz r3, lbl_80667570@sda21(r13)
/* 802CC0AC 0029566C  28 03 00 44 */	cmplwi r3, 0x44
/* 802CC0B0 00295670  41 81 00 2C */	bgt .L_802CC0DC
/* 802CC0B4 00295674  38 03 40 00 */	addi r0, r3, 0x4000
/* 802CC0B8 00295678  28 00 00 44 */	cmplwi r0, 0x44
/* 802CC0BC 0029567C  40 81 00 20 */	ble .L_802CC0DC
/* 802CC0C0 00295680  3C 60 80 58 */	lis r3, gTRKCPUState@ha
/* 802CC0C4 00295684  38 63 D3 F8 */	addi r3, r3, gTRKCPUState@l
/* 802CC0C8 00295688  80 03 02 38 */	lwz r0, 0x238(r3)
/* 802CC0CC 0029568C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 802CC0D0 00295690  41 82 00 0C */	beq .L_802CC0DC
/* 802CC0D4 00295694  38 60 00 44 */	li r3, 0x44
/* 802CC0D8 00295698  48 00 00 0C */	b .L_802CC0E4
.L_802CC0DC:
/* 802CC0DC 0029569C  3C 60 80 00 */	lis r3, 0x80000044@ha
/* 802CC0E0 002956A0  38 63 00 44 */	addi r3, r3, 0x80000044@l
.L_802CC0E4:
/* 802CC0E4 002956A4  3F E0 80 54 */	lis r31, lbl_8053FD40@ha
/* 802CC0E8 002956A8  3F 00 80 58 */	lis r24, gTRKCPUState@ha
/* 802CC0EC 002956AC  3F 80 80 00 */	lis r28, gTRKInterruptVectorTable@ha
/* 802CC0F0 002956B0  83 A3 00 00 */	lwz r29, 0(r3)
/* 802CC0F4 002956B4  3B FF FD 40 */	addi r31, r31, lbl_8053FD40@l
/* 802CC0F8 002956B8  3B 18 D3 F8 */	addi r24, r24, gTRKCPUState@l
/* 802CC0FC 002956BC  3B 9C 43 80 */	addi r28, r28, gTRKInterruptVectorTable@l
/* 802CC100 002956C0  3B C0 00 00 */	li r30, 0
/* 802CC104 002956C4  3F 20 03 00 */	lis r25, 0x300
/* 802CC108 002956C8  3F 60 1C 00 */	lis r27, 0x1c00
/* 802CC10C 002956CC  3F 40 10 00 */	lis r26, 0x1000
/* 802CC110 002956D0  3A E0 00 01 */	li r23, 1
.L_802CC114:
/* 802CC114 002956D4  7E E0 F0 30 */	slw r0, r23, r30
/* 802CC118 002956D8  7F A0 00 39 */	and. r0, r29, r0
/* 802CC11C 002956DC  41 82 00 8C */	beq .L_802CC1A8
/* 802CC120 002956E0  2C 1E 00 04 */	cmpwi r30, 4
/* 802CC124 002956E4  41 82 00 84 */	beq .L_802CC1A8
/* 802CC128 002956E8  80 9F 00 00 */	lwz r4, 0(r31)
/* 802CC12C 002956EC  80 6D B3 F0 */	lwz r3, lbl_80667570@sda21(r13)
/* 802CC130 002956F0  7C 04 18 40 */	cmplw r4, r3
/* 802CC134 002956F4  41 80 00 24 */	blt .L_802CC158
/* 802CC138 002956F8  38 03 40 00 */	addi r0, r3, 0x4000
/* 802CC13C 002956FC  7C 04 00 40 */	cmplw r4, r0
/* 802CC140 00295700  40 80 00 18 */	bge .L_802CC158
/* 802CC144 00295704  80 18 02 38 */	lwz r0, 0x238(r24)
/* 802CC148 00295708  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 802CC14C 0029570C  41 82 00 0C */	beq .L_802CC158
/* 802CC150 00295710  7C 96 23 78 */	mr r22, r4
/* 802CC154 00295714  48 00 00 38 */	b .L_802CC18C
.L_802CC158:
/* 802CC158 00295718  7C 04 C8 40 */	cmplw r4, r25
/* 802CC15C 0029571C  40 80 00 10 */	bge .L_802CC16C
/* 802CC160 00295720  54 80 00 BE */	clrlwi r0, r4, 2
/* 802CC164 00295724  64 16 80 00 */	oris r22, r0, 0x8000
/* 802CC168 00295728  48 00 00 24 */	b .L_802CC18C
.L_802CC16C:
/* 802CC16C 0029572C  7C 04 D0 40 */	cmplw r4, r26
/* 802CC170 00295730  41 80 00 18 */	blt .L_802CC188
/* 802CC174 00295734  7C 04 D8 40 */	cmplw r4, r27
/* 802CC178 00295738  40 80 00 10 */	bge .L_802CC188
/* 802CC17C 0029573C  54 80 00 BE */	clrlwi r0, r4, 2
/* 802CC180 00295740  64 16 90 00 */	oris r22, r0, 0x9000
/* 802CC184 00295744  48 00 00 08 */	b .L_802CC18C
.L_802CC188:
/* 802CC188 00295748  7C 96 23 78 */	mr r22, r4
.L_802CC18C:
/* 802CC18C 0029574C  7E C3 B3 78 */	mr r3, r22
/* 802CC190 00295750  7C 9C 22 14 */	add r4, r28, r4
/* 802CC194 00295754  38 A0 01 00 */	li r5, 0x100
/* 802CC198 00295758  4B FF F9 E5 */	bl TRK_memcpy
/* 802CC19C 0029575C  7E C3 B3 78 */	mr r3, r22
/* 802CC1A0 00295760  38 80 01 00 */	li r4, 0x100
/* 802CC1A4 00295764  4B FF F8 79 */	bl TRK_flush_cache
.L_802CC1A8:
/* 802CC1A8 00295768  3B DE 00 01 */	addi r30, r30, 1
/* 802CC1AC 0029576C  3B FF 00 04 */	addi r31, r31, 4
/* 802CC1B0 00295770  2C 1E 00 0E */	cmpwi r30, 0xe
/* 802CC1B4 00295774  40 81 FF 60 */	ble .L_802CC114
/* 802CC1B8 00295778  BA C1 00 08 */	lmw r22, 8(r1)
/* 802CC1BC 0029577C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CC1C0 00295780  7C 08 03 A6 */	mtlr r0
/* 802CC1C4 00295784  38 21 00 30 */	addi r1, r1, 0x30
/* 802CC1C8 00295788  4E 80 00 20 */	blr 
.endfn __TRK_copy_vectors

.fn TRKInitializeTarget, global
/* 802CC1CC 0029578C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CC1D0 00295790  7C 08 02 A6 */	mflr r0
/* 802CC1D4 00295794  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CC1D8 00295798  38 00 00 01 */	li r0, 1
/* 802CC1DC 0029579C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CC1E0 002957A0  3F E0 80 58 */	lis r31, lbl_8057D350@ha
/* 802CC1E4 002957A4  3B FF D3 50 */	addi r31, r31, lbl_8057D350@l
/* 802CC1E8 002957A8  90 1F 00 98 */	stw r0, 0x98(r31)
/* 802CC1EC 002957AC  48 00 2B B5 */	bl __TRK_get_MSR
/* 802CC1F0 002957B0  90 7F 00 8C */	stw r3, 0x8c(r31)
/* 802CC1F4 002957B4  3C 00 E0 00 */	lis r0, 0xe000
/* 802CC1F8 002957B8  38 60 00 00 */	li r3, 0
/* 802CC1FC 002957BC  90 0D B3 F0 */	stw r0, lbl_80667570@sda21(r13)
/* 802CC200 002957C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CC204 002957C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CC208 002957C8  7C 08 03 A6 */	mtlr r0
/* 802CC20C 002957CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802CC210 002957D0  4E 80 00 20 */	blr 
.endfn TRKInitializeTarget

.fn __TRKreset, global
/* 802CC214 002957D4  38 60 00 00 */	li r3, 0
/* 802CC218 002957D8  38 80 00 00 */	li r4, 0
/* 802CC21C 002957DC  38 A0 00 00 */	li r5, 0
/* 802CC220 002957E0  48 08 E5 C0 */	b OSResetSystem
.endfn __TRKreset

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 16 #needed to align switch jump table for dispatch.c

.global lbl_8053FD40
lbl_8053FD40:
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
	.4byte 0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F
.global lbl_80667570
lbl_80667570:
	.skip 0x8