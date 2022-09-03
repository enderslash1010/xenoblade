.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global PatchChrAnmResult__Q34nw4r3g3d7ResNodeCFPQ34nw4r3g3d12ChrAnmResult
PatchChrAnmResult__Q34nw4r3g3d7ResNodeCFPQ34nw4r3g3d12ChrAnmResult:
/* 803DD784 003A6D44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803DD788 003A6D48  7C 08 02 A6 */	mflr r0
/* 803DD78C 003A6D4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803DD790 003A6D50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803DD794 003A6D54  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803DD798 003A6D58  7C 9E 23 78 */	mr r30, r4
/* 803DD79C 003A6D5C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803DD7A0 003A6D60  83 A3 00 00 */	lwz r29, 0(r3)
/* 803DD7A4 003A6D64  2C 1D 00 00 */	cmpwi r29, 0
/* 803DD7A8 003A6D68  41 82 01 5C */	beq lbl_803DD904
/* 803DD7AC 003A6D6C  83 E4 00 00 */	lwz r31, 0(r4)
/* 803DD7B0 003A6D70  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 803DD7B4 003A6D74  41 82 00 58 */	beq lbl_803DD80C
/* 803DD7B8 003A6D78  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 803DD7BC 003A6D7C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 803DD7C0 003A6D80  41 82 00 1C */	beq lbl_803DD7DC
/* 803DD7C4 003A6D84  C0 02 BF 20 */	lfs f0, lbl_8066C2A0@sda21(r2)
/* 803DD7C8 003A6D88  63 FF 00 18 */	ori r31, r31, 0x18
/* 803DD7CC 003A6D8C  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 803DD7D0 003A6D90  D0 04 00 08 */	stfs f0, 8(r4)
/* 803DD7D4 003A6D94  D0 04 00 04 */	stfs f0, 4(r4)
/* 803DD7D8 003A6D98  48 00 00 34 */	b lbl_803DD80C
lbl_803DD7DC:
/* 803DD7DC 003A6D9C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 803DD7E0 003A6DA0  57 E3 07 34 */	rlwinm r3, r31, 0, 0x1c, 0x1a
/* 803DD7E4 003A6DA4  41 82 00 08 */	beq lbl_803DD7EC
/* 803DD7E8 003A6DA8  63 E3 00 10 */	ori r3, r31, 0x10
lbl_803DD7EC:
/* 803DD7EC 003A6DAC  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 803DD7F0 003A6DB0  38 00 FF F5 */	li r0, -11
/* 803DD7F4 003A6DB4  7C 7F 00 38 */	and r31, r3, r0
/* 803DD7F8 003A6DB8  D0 04 00 04 */	stfs f0, 4(r4)
/* 803DD7FC 003A6DBC  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 803DD800 003A6DC0  D0 04 00 08 */	stfs f0, 8(r4)
/* 803DD804 003A6DC4  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 803DD808 003A6DC8  D0 04 00 0C */	stfs f0, 0xc(r4)
lbl_803DD80C:
/* 803DD80C 003A6DCC  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 803DD810 003A6DD0  41 82 00 80 */	beq lbl_803DD890
/* 803DD814 003A6DD4  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 803DD818 003A6DD8  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 803DD81C 003A6DDC  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 803DD820 003A6DE0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803DD824 003A6DE4  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 803DD828 003A6DE8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 803DD82C 003A6DEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 803DD830 003A6DF0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 803DD834 003A6DF4  41 82 00 14 */	beq lbl_803DD848
/* 803DD838 003A6DF8  38 64 00 1C */	addi r3, r4, 0x1c
/* 803DD83C 003A6DFC  4B F6 F9 A5 */	bl PSMTXIdentity
/* 803DD840 003A6E00  63 FF 00 20 */	ori r31, r31, 0x20
/* 803DD844 003A6E04  48 00 00 30 */	b lbl_803DD874
lbl_803DD848:
/* 803DD848 003A6E08  C0 7D 00 34 */	lfs f3, 0x34(r29)
/* 803DD84C 003A6E0C  38 64 00 1C */	addi r3, r4, 0x1c
/* 803DD850 003A6E10  C0 02 BF 24 */	lfs f0, lbl_8066C2A4@sda21(r2)
/* 803DD854 003A6E14  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 803DD858 003A6E18  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 803DD85C 003A6E1C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 803DD860 003A6E20  EC 40 00 B2 */	fmuls f2, f0, f2
/* 803DD864 003A6E24  EC 20 00 72 */	fmuls f1, f0, f1
/* 803DD868 003A6E28  48 02 D9 B9 */	bl MTX34RotXYZFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34fff
/* 803DD86C 003A6E2C  38 00 FF D9 */	li r0, -39
/* 803DD870 003A6E30  7F FF 00 38 */	and r31, r31, r0
lbl_803DD874:
/* 803DD874 003A6E34  C0 41 00 08 */	lfs f2, 8(r1)
/* 803DD878 003A6E38  67 FF 80 00 */	oris r31, r31, 0x8000
/* 803DD87C 003A6E3C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803DD880 003A6E40  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 803DD884 003A6E44  D0 5E 00 28 */	stfs f2, 0x28(r30)
/* 803DD888 003A6E48  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 803DD88C 003A6E4C  D0 1E 00 48 */	stfs f0, 0x48(r30)
lbl_803DD890:
/* 803DD890 003A6E50  57 E0 05 AD */	rlwinm. r0, r31, 0, 0x16, 0x16
/* 803DD894 003A6E54  41 82 00 48 */	beq lbl_803DD8DC
/* 803DD898 003A6E58  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 803DD89C 003A6E5C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803DD8A0 003A6E60  41 82 00 1C */	beq lbl_803DD8BC
/* 803DD8A4 003A6E64  C0 02 BF 28 */	lfs f0, lbl_8066C2A8@sda21(r2)
/* 803DD8A8 003A6E68  63 FF 00 40 */	ori r31, r31, 0x40
/* 803DD8AC 003A6E6C  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 803DD8B0 003A6E70  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 803DD8B4 003A6E74  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 803DD8B8 003A6E78  48 00 00 24 */	b lbl_803DD8DC
lbl_803DD8BC:
/* 803DD8BC 003A6E7C  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 803DD8C0 003A6E80  38 00 FF B9 */	li r0, -71
/* 803DD8C4 003A6E84  7F FF 00 38 */	and r31, r31, r0
/* 803DD8C8 003A6E88  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 803DD8CC 003A6E8C  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 803DD8D0 003A6E90  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 803DD8D4 003A6E94  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 803DD8D8 003A6E98  D0 1E 00 48 */	stfs f0, 0x48(r30)
lbl_803DD8DC:
/* 803DD8DC 003A6E9C  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 803DD8E0 003A6EA0  41 82 00 1C */	beq lbl_803DD8FC
/* 803DD8E4 003A6EA4  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 803DD8E8 003A6EA8  41 82 00 14 */	beq lbl_803DD8FC
/* 803DD8EC 003A6EAC  63 FF 00 04 */	ori r31, r31, 4
/* 803DD8F0 003A6EB0  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 803DD8F4 003A6EB4  41 82 00 08 */	beq lbl_803DD8FC
/* 803DD8F8 003A6EB8  63 FF 00 02 */	ori r31, r31, 2
lbl_803DD8FC:
/* 803DD8FC 003A6EBC  57 E0 06 6A */	rlwinm r0, r31, 0, 0x19, 0x15
/* 803DD900 003A6EC0  90 1E 00 00 */	stw r0, 0(r30)
lbl_803DD904:
/* 803DD904 003A6EC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803DD908 003A6EC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803DD90C 003A6ECC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803DD910 003A6ED0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803DD914 003A6ED4  7C 08 03 A6 */	mtlr r0
/* 803DD918 003A6ED8  38 21 00 30 */	addi r1, r1, 0x30
/* 803DD91C 003A6EDC  4E 80 00 20 */	blr 

.global CalcChrAnmResult__Q34nw4r3g3d7ResNodeCFPQ34nw4r3g3d12ChrAnmResult
CalcChrAnmResult__Q34nw4r3g3d7ResNodeCFPQ34nw4r3g3d12ChrAnmResult:
/* 803DD920 003A6EE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803DD924 003A6EE4  7C 08 02 A6 */	mflr r0
/* 803DD928 003A6EE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803DD92C 003A6EEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803DD930 003A6EF0  83 E3 00 00 */	lwz r31, 0(r3)
/* 803DD934 003A6EF4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803DD938 003A6EF8  2C 1F 00 00 */	cmpwi r31, 0
/* 803DD93C 003A6EFC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803DD940 003A6F00  7C 9D 23 78 */	mr r29, r4
/* 803DD944 003A6F04  41 82 01 28 */	beq lbl_803DDA6C
/* 803DD948 003A6F08  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803DD94C 003A6F0C  3B C0 00 00 */	li r30, 0
/* 803DD950 003A6F10  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 803DD954 003A6F14  41 82 00 1C */	beq lbl_803DD970
/* 803DD958 003A6F18  C0 02 BF 20 */	lfs f0, lbl_8066C2A0@sda21(r2)
/* 803DD95C 003A6F1C  63 DE 00 18 */	ori r30, r30, 0x18
/* 803DD960 003A6F20  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 803DD964 003A6F24  D0 04 00 08 */	stfs f0, 8(r4)
/* 803DD968 003A6F28  D0 04 00 04 */	stfs f0, 4(r4)
/* 803DD96C 003A6F2C  48 00 00 28 */	b lbl_803DD994
lbl_803DD970:
/* 803DD970 003A6F30  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 803DD974 003A6F34  41 82 00 08 */	beq lbl_803DD97C
/* 803DD978 003A6F38  63 DE 00 10 */	ori r30, r30, 0x10
lbl_803DD97C:
/* 803DD97C 003A6F3C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 803DD980 003A6F40  D0 04 00 04 */	stfs f0, 4(r4)
/* 803DD984 003A6F44  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 803DD988 003A6F48  D0 04 00 08 */	stfs f0, 8(r4)
/* 803DD98C 003A6F4C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 803DD990 003A6F50  D0 04 00 0C */	stfs f0, 0xc(r4)
lbl_803DD994:
/* 803DD994 003A6F54  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803DD998 003A6F58  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803DD99C 003A6F5C  41 82 00 14 */	beq lbl_803DD9B0
/* 803DD9A0 003A6F60  38 64 00 1C */	addi r3, r4, 0x1c
/* 803DD9A4 003A6F64  4B F6 F8 3D */	bl PSMTXIdentity
/* 803DD9A8 003A6F68  63 DE 00 20 */	ori r30, r30, 0x20
/* 803DD9AC 003A6F6C  48 00 00 4C */	b lbl_803DD9F8
lbl_803DD9B0:
/* 803DD9B0 003A6F70  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 803DD9B4 003A6F74  38 64 00 1C */	addi r3, r4, 0x1c
/* 803DD9B8 003A6F78  C0 BF 00 30 */	lfs f5, 0x30(r31)
/* 803DD9BC 003A6F7C  C0 9F 00 34 */	lfs f4, 0x34(r31)
/* 803DD9C0 003A6F80  C0 02 BF 24 */	lfs f0, lbl_8066C2A4@sda21(r2)
/* 803DD9C4 003A6F84  D0 24 00 10 */	stfs f1, 0x10(r4)
/* 803DD9C8 003A6F88  D0 A4 00 14 */	stfs f5, 0x14(r4)
/* 803DD9CC 003A6F8C  D0 84 00 18 */	stfs f4, 0x18(r4)
/* 803DD9D0 003A6F90  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 803DD9D4 003A6F94  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 803DD9D8 003A6F98  C0 DF 00 2C */	lfs f6, 0x2c(r31)
/* 803DD9DC 003A6F9C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 803DD9E0 003A6FA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 803DD9E4 003A6FA4  EC 40 00 B2 */	fmuls f2, f0, f2
/* 803DD9E8 003A6FA8  EC 20 01 B2 */	fmuls f1, f0, f6
/* 803DD9EC 003A6FAC  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 803DD9F0 003A6FB0  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 803DD9F4 003A6FB4  48 02 D8 2D */	bl MTX34RotXYZFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34fff
lbl_803DD9F8:
/* 803DD9F8 003A6FB8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803DD9FC 003A6FBC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803DDA00 003A6FC0  41 82 00 0C */	beq lbl_803DDA0C
/* 803DDA04 003A6FC4  63 DE 00 40 */	ori r30, r30, 0x40
/* 803DDA08 003A6FC8  48 00 00 1C */	b lbl_803DDA24
lbl_803DDA0C:
/* 803DDA0C 003A6FCC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 803DDA10 003A6FD0  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 803DDA14 003A6FD4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 803DDA18 003A6FD8  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 803DDA1C 003A6FDC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 803DDA20 003A6FE0  D0 1D 00 48 */	stfs f0, 0x48(r29)
lbl_803DDA24:
/* 803DDA24 003A6FE4  57 C0 06 B5 */	rlwinm. r0, r30, 0, 0x1a, 0x1a
/* 803DDA28 003A6FE8  41 82 00 1C */	beq lbl_803DDA44
/* 803DDA2C 003A6FEC  57 C0 06 73 */	rlwinm. r0, r30, 0, 0x19, 0x19
/* 803DDA30 003A6FF0  41 82 00 14 */	beq lbl_803DDA44
/* 803DDA34 003A6FF4  63 DE 00 04 */	ori r30, r30, 4
/* 803DDA38 003A6FF8  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 803DDA3C 003A6FFC  41 82 00 08 */	beq lbl_803DDA44
/* 803DDA40 003A7000  63 DE 00 02 */	ori r30, r30, 2
lbl_803DDA44:
/* 803DDA44 003A7004  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803DDA48 003A7008  67 DE 80 00 */	oris r30, r30, 0x8000
/* 803DDA4C 003A700C  63 DE 00 01 */	ori r30, r30, 1
/* 803DDA50 003A7010  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 803DDA54 003A7014  41 82 00 08 */	beq lbl_803DDA5C
/* 803DDA58 003A7018  63 DE 04 00 */	ori r30, r30, 0x400
lbl_803DDA5C:
/* 803DDA5C 003A701C  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 803DDA60 003A7020  41 82 00 08 */	beq lbl_803DDA68
/* 803DDA64 003A7024  63 DE 08 00 */	ori r30, r30, 0x800
lbl_803DDA68:
/* 803DDA68 003A7028  93 DD 00 00 */	stw r30, 0(r29)
lbl_803DDA6C:
/* 803DDA6C 003A702C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803DDA70 003A7030  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803DDA74 003A7034  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803DDA78 003A7038  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803DDA7C 003A703C  7C 08 03 A6 */	mtlr r0
/* 803DDA80 003A7040  38 21 00 30 */	addi r1, r1, 0x30
/* 803DDA84 003A7044  4E 80 00 20 */	blr 

.global func_803DDA88
func_803DDA88:
/* 803DDA88 003A7048  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDA8C 003A704C  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 803DDA90 003A7050  2C 00 00 00 */	cmpwi r0, 0
/* 803DDA94 003A7054  41 82 00 0C */	beq lbl_803DDAA0
/* 803DDA98 003A7058  7C 63 02 14 */	add r3, r3, r0
/* 803DDA9C 003A705C  4E 80 00 20 */	blr
lbl_803DDAA0:
/* 803DDAA0 003A7060  38 60 00 00 */	li r3, 0
/* 803DDAA4 003A7064  4E 80 00 20 */	blr 
