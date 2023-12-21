.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn UTY_InitTmr, global
/* 803D46F8 0039DCB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D46FC 0039DCBC  7C 08 02 A6 */	mflr r0
/* 803D4700 0039DCC0  3C A0 80 52 */	lis r5, lbl_80520838@ha
/* 803D4704 0039DCC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D4708 0039DCC8  38 81 00 08 */	addi r4, r1, 8
/* 803D470C 0039DCCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D4710 0039DCD0  3F E0 80 62 */	lis r31, lbl_8061CE28@ha
/* 803D4714 0039DCD4  3B FF CE 28 */	addi r31, r31, lbl_8061CE28@l
/* 803D4718 0039DCD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D471C 0039DCDC  7C 7E 1B 78 */	mr r30, r3
/* 803D4720 0039DCE0  38 65 08 38 */	addi r3, r5, lbl_80520838@l
/* 803D4724 0039DCE4  4B FB AD BD */	bl CRICFG_Read
/* 803D4728 0039DCE8  2C 03 00 00 */	cmpwi r3, 0
/* 803D472C 0039DCEC  40 82 00 08 */	bne .L_803D4734
/* 803D4730 0039DCF0  83 C1 00 08 */	lwz r30, 8(r1)
.L_803D4734:
/* 803D4734 0039DCF4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803D4738 0039DCF8  38 03 00 01 */	addi r0, r3, 1
/* 803D473C 0039DCFC  90 1F 00 00 */	stw r0, 0(r31)
/* 803D4740 0039DD00  80 1F 00 00 */	lwz r0, 0(r31)
/* 803D4744 0039DD04  2C 00 00 01 */	cmpwi r0, 1
/* 803D4748 0039DD08  40 81 00 10 */	ble .L_803D4758
/* 803D474C 0039DD0C  80 1F 00 04 */	lwz r0, 4(r31)
/* 803D4750 0039DD10  7C 00 F0 00 */	cmpw r0, r30
/* 803D4754 0039DD14  41 82 00 44 */	beq .L_803D4798
.L_803D4758:
/* 803D4758 0039DD18  2C 1E FF FF */	cmpwi r30, -1
/* 803D475C 0039DD1C  93 DF 00 04 */	stw r30, 4(r31)
/* 803D4760 0039DD20  40 82 00 1C */	bne .L_803D477C
/* 803D4764 0039DD24  38 00 00 00 */	li r0, 0
/* 803D4768 0039DD28  38 7F 00 08 */	addi r3, r31, 8
/* 803D476C 0039DD2C  38 80 00 01 */	li r4, 1
/* 803D4770 0039DD30  90 1F 00 08 */	stw r0, 8(r31)
/* 803D4774 0039DD34  90 83 00 04 */	stw r4, 4(r3)
/* 803D4778 0039DD38  48 00 00 20 */	b .L_803D4798
.L_803D477C:
/* 803D477C 0039DD3C  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 803D4780 0039DD40  38 7F 00 08 */	addi r3, r31, 8
/* 803D4784 0039DD44  80 84 00 F8 */	lwz r4, 0x800000F8@l(r4)
/* 803D4788 0039DD48  38 00 00 00 */	li r0, 0
/* 803D478C 0039DD4C  54 84 F0 BE */	srwi r4, r4, 2
/* 803D4790 0039DD50  90 1F 00 08 */	stw r0, 8(r31)
/* 803D4794 0039DD54  90 83 00 04 */	stw r4, 4(r3)
.L_803D4798:
/* 803D4798 0039DD58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D479C 0039DD5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D47A0 0039DD60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D47A4 0039DD64  7C 08 03 A6 */	mtlr r0
/* 803D47A8 0039DD68  38 21 00 20 */	addi r1, r1, 0x20
/* 803D47AC 0039DD6C  4E 80 00 20 */	blr 
.endfn UTY_InitTmr

.fn UTY_FinishTmr, global
/* 803D47B0 0039DD70  3C 80 80 62 */	lis r4, lbl_8061CE28@ha
/* 803D47B4 0039DD74  80 64 CE 28 */	lwz r3, lbl_8061CE28@l(r4)
/* 803D47B8 0039DD78  38 03 FF FF */	addi r0, r3, -1
/* 803D47BC 0039DD7C  90 04 CE 28 */	stw r0, lbl_8061CE28@l(r4)
/* 803D47C0 0039DD80  80 04 CE 28 */	lwz r0, lbl_8061CE28@l(r4)
/* 803D47C4 0039DD84  80 04 CE 28 */	lwz r0, lbl_8061CE28@l(r4)
/* 803D47C8 0039DD88  2C 00 00 00 */	cmpwi r0, 0
/* 803D47CC 0039DD8C  4C 80 00 20 */	bgelr 
/* 803D47D0 0039DD90  38 00 00 00 */	li r0, 0
/* 803D47D4 0039DD94  90 04 CE 28 */	stw r0, lbl_8061CE28@l(r4)
/* 803D47D8 0039DD98  4E 80 00 20 */	blr 
.endfn UTY_FinishTmr

.fn UTY_GetTmr, global
/* 803D47DC 0039DD9C  3C 60 80 62 */	lis r3, lbl_8061CE28@ha
/* 803D47E0 0039DDA0  80 03 CE 28 */	lwz r0, lbl_8061CE28@l(r3)
/* 803D47E4 0039DDA4  2C 80 00 00 */	cmpwi cr1, r0, 0
/* 803D47E8 0039DDA8  40 85 00 14 */	ble cr1, .L_803D47FC
/* 803D47EC 0039DDAC  3C 60 80 62 */	lis r3, lbl_8061CE2C@ha
/* 803D47F0 0039DDB0  80 03 CE 2C */	lwz r0, lbl_8061CE2C@l(r3)
/* 803D47F4 0039DDB4  2C 80 FF FF */	cmpwi cr1, r0, -1
/* 803D47F8 0039DDB8  40 86 00 10 */	bne cr1, .L_803D4808
.L_803D47FC:
/* 803D47FC 0039DDBC  38 80 00 00 */	li r4, 0
/* 803D4800 0039DDC0  38 60 00 00 */	li r3, 0
/* 803D4804 0039DDC4  4E 80 00 20 */	blr
#This is super gross but the latest devkitpro assembler is stupid af and hates mftb
.L_803D4808:
	.4byte 0x7C6D42E6
	.4byte 0x7C8C42E6
	.4byte 0x7C0D42E6
#/* 803D4808 0039DDC8  7C 6D 42 E6 */	mftbu r3
#/* 803D480C 0039DDCC  7C 8C 42 E6 */	mftb r4, 0x10c
#/* 803D4810 0039DDD0  7C 0D 42 E6 */	mftbu r0
/* 803D4814 0039DDD4  7C 00 18 00 */	cmpw r0, r3
/* 803D4818 0039DDD8  40 82 FF F0 */	bne .L_803D4808
/* 803D481C 0039DDDC  4E 80 00 20 */	blr 
.endfn UTY_GetTmr

.fn UTY_IsTmrVoid, global
/* 803D4820 0039DDE0  3C A0 80 62 */	lis r5, utytmr_unit@ha
/* 803D4824 0039DDE4  38 80 00 01 */	li r4, 1
/* 803D4828 0039DDE8  38 65 CE 30 */	addi r3, r5, utytmr_unit@l
/* 803D482C 0039DDEC  80 A5 CE 30 */	lwz r5, utytmr_unit@l(r5)
/* 803D4830 0039DDF0  80 03 00 04 */	lwz r0, 4(r3)
/* 803D4834 0039DDF4  38 60 00 00 */	li r3, 0
/* 803D4838 0039DDF8  7C 00 20 10 */	subfc r0, r0, r4
/* 803D483C 0039DDFC  7C 05 19 10 */	subfe r0, r5, r3
/* 803D4840 0039DE00  7C 04 21 10 */	subfe r0, r4, r4
/* 803D4844 0039DE04  7C 00 00 D0 */	neg r0, r0
/* 803D4848 0039DE08  20 60 00 01 */	subfic r3, r0, 1
/* 803D484C 0039DE0C  4E 80 00 20 */	blr 
.endfn UTY_IsTmrVoid

.fn UTY_GetTmrUnit, global
/* 803D4850 0039DE10  3C 60 80 62 */	lis r3, utytmr_unit@ha
/* 803D4854 0039DE14  38 83 CE 30 */	addi r4, r3, utytmr_unit@l
/* 803D4858 0039DE18  80 63 CE 30 */	lwz r3, utytmr_unit@l(r3)
/* 803D485C 0039DE1C  80 84 00 04 */	lwz r4, 4(r4)
/* 803D4860 0039DE20  4E 80 00 20 */	blr 
.endfn UTY_GetTmrUnit

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_80520838, global
	.asciz "TMR_CH"
	.balign 4
.endobj lbl_80520838

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj lbl_8061CE28, global
	.skip 0x4
.endobj lbl_8061CE28

.obj lbl_8061CE2C, global
	.skip 0x4
.endobj lbl_8061CE2C

.obj utytmr_unit, global
	.skip 0x8
.endobj utytmr_unit
