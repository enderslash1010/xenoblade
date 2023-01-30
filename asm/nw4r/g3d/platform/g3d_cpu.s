.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl, global
/* 803E7978 003B0F38  54 A5 D9 7F */	rlwinm. r5, r5, 0x1b, 5, 0x1f
/* 803E797C 003B0F3C  4D 82 00 20 */	beqlr 
/* 803E7980 003B0F40  54 A0 F0 BF */	rlwinm. r0, r5, 0x1e, 2, 0x1f
/* 803E7984 003B0F44  7C 09 03 A6 */	mtctr r0
/* 803E7988 003B0F48  41 82 00 98 */	beq .L_803E7A20
.L_803E798C:
/* 803E798C 003B0F4C  C8 04 00 00 */	lfd f0, 0(r4)
/* 803E7990 003B0F50  C8 24 00 08 */	lfd f1, 8(r4)
/* 803E7994 003B0F54  D8 03 00 00 */	stfd f0, 0(r3)
/* 803E7998 003B0F58  C8 04 00 10 */	lfd f0, 0x10(r4)
/* 803E799C 003B0F5C  D8 23 00 08 */	stfd f1, 8(r3)
/* 803E79A0 003B0F60  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 803E79A4 003B0F64  D8 03 00 10 */	stfd f0, 0x10(r3)
/* 803E79A8 003B0F68  C8 04 00 20 */	lfd f0, 0x20(r4)
/* 803E79AC 003B0F6C  D8 23 00 18 */	stfd f1, 0x18(r3)
/* 803E79B0 003B0F70  C8 24 00 28 */	lfd f1, 0x28(r4)
/* 803E79B4 003B0F74  D8 03 00 20 */	stfd f0, 0x20(r3)
/* 803E79B8 003B0F78  C8 04 00 30 */	lfd f0, 0x30(r4)
/* 803E79BC 003B0F7C  D8 23 00 28 */	stfd f1, 0x28(r3)
/* 803E79C0 003B0F80  C8 24 00 38 */	lfd f1, 0x38(r4)
/* 803E79C4 003B0F84  D8 03 00 30 */	stfd f0, 0x30(r3)
/* 803E79C8 003B0F88  C8 04 00 40 */	lfd f0, 0x40(r4)
/* 803E79CC 003B0F8C  D8 23 00 38 */	stfd f1, 0x38(r3)
/* 803E79D0 003B0F90  C8 24 00 48 */	lfd f1, 0x48(r4)
/* 803E79D4 003B0F94  D8 03 00 40 */	stfd f0, 0x40(r3)
/* 803E79D8 003B0F98  C8 04 00 50 */	lfd f0, 0x50(r4)
/* 803E79DC 003B0F9C  D8 23 00 48 */	stfd f1, 0x48(r3)
/* 803E79E0 003B0FA0  C8 24 00 58 */	lfd f1, 0x58(r4)
/* 803E79E4 003B0FA4  D8 03 00 50 */	stfd f0, 0x50(r3)
/* 803E79E8 003B0FA8  C8 04 00 60 */	lfd f0, 0x60(r4)
/* 803E79EC 003B0FAC  D8 23 00 58 */	stfd f1, 0x58(r3)
/* 803E79F0 003B0FB0  C8 24 00 68 */	lfd f1, 0x68(r4)
/* 803E79F4 003B0FB4  D8 03 00 60 */	stfd f0, 0x60(r3)
/* 803E79F8 003B0FB8  C8 04 00 70 */	lfd f0, 0x70(r4)
/* 803E79FC 003B0FBC  D8 23 00 68 */	stfd f1, 0x68(r3)
/* 803E7A00 003B0FC0  C8 24 00 78 */	lfd f1, 0x78(r4)
/* 803E7A04 003B0FC4  38 84 00 80 */	addi r4, r4, 0x80
/* 803E7A08 003B0FC8  D8 03 00 70 */	stfd f0, 0x70(r3)
/* 803E7A0C 003B0FCC  D8 23 00 78 */	stfd f1, 0x78(r3)
/* 803E7A10 003B0FD0  38 63 00 80 */	addi r3, r3, 0x80
/* 803E7A14 003B0FD4  42 00 FF 78 */	bdnz .L_803E798C
/* 803E7A18 003B0FD8  70 A5 00 03 */	andi. r5, r5, 3
/* 803E7A1C 003B0FDC  4D 82 00 20 */	beqlr 
.L_803E7A20:
/* 803E7A20 003B0FE0  7C A9 03 A6 */	mtctr r5
.L_803E7A24:
/* 803E7A24 003B0FE4  C8 04 00 00 */	lfd f0, 0(r4)
/* 803E7A28 003B0FE8  C8 24 00 08 */	lfd f1, 8(r4)
/* 803E7A2C 003B0FEC  D8 03 00 00 */	stfd f0, 0(r3)
/* 803E7A30 003B0FF0  C8 04 00 10 */	lfd f0, 0x10(r4)
/* 803E7A34 003B0FF4  D8 23 00 08 */	stfd f1, 8(r3)
/* 803E7A38 003B0FF8  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 803E7A3C 003B0FFC  38 84 00 20 */	addi r4, r4, 0x20
/* 803E7A40 003B1000  D8 03 00 10 */	stfd f0, 0x10(r3)
/* 803E7A44 003B1004  D8 23 00 18 */	stfd f1, 0x18(r3)
/* 803E7A48 003B1008  38 63 00 20 */	addi r3, r3, 0x20
/* 803E7A4C 003B100C  42 00 FF D8 */	bdnz .L_803E7A24
/* 803E7A50 003B1010  4E 80 00 20 */	blr 
.endfn Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl

.fn ZeroMemory32ByteBlocks__Q34nw4r3g3d6detailFPvUl, global
/* 803E7A54 003B1014  54 84 D9 7F */	rlwinm. r4, r4, 0x1b, 5, 0x1f
/* 803E7A58 003B1018  C0 02 C0 60 */	lfs f0, float_8066C3E0@sda21(r2)
/* 803E7A5C 003B101C  4D 82 00 20 */	beqlr 
/* 803E7A60 003B1020  54 80 E8 FF */	rlwinm. r0, r4, 0x1d, 3, 0x1f
/* 803E7A64 003B1024  7C 09 03 A6 */	mtctr r0
/* 803E7A68 003B1028  41 82 00 94 */	beq .L_803E7AFC
.L_803E7A6C:
/* 803E7A6C 003B102C  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 803E7A70 003B1030  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 803E7A74 003B1034  F0 03 00 10 */	psq_st f0, 16(r3), 0, qr0
/* 803E7A78 003B1038  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 803E7A7C 003B103C  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 803E7A80 003B1040  F0 03 00 28 */	psq_st f0, 40(r3), 0, qr0
/* 803E7A84 003B1044  F0 03 00 30 */	psq_st f0, 48(r3), 0, qr0
/* 803E7A88 003B1048  F0 03 00 38 */	psq_st f0, 56(r3), 0, qr0
/* 803E7A8C 003B104C  F0 03 00 40 */	psq_st f0, 64(r3), 0, qr0
/* 803E7A90 003B1050  F0 03 00 48 */	psq_st f0, 72(r3), 0, qr0
/* 803E7A94 003B1054  F0 03 00 50 */	psq_st f0, 80(r3), 0, qr0
/* 803E7A98 003B1058  F0 03 00 58 */	psq_st f0, 88(r3), 0, qr0
/* 803E7A9C 003B105C  F0 03 00 60 */	psq_st f0, 96(r3), 0, qr0
/* 803E7AA0 003B1060  F0 03 00 68 */	psq_st f0, 104(r3), 0, qr0
/* 803E7AA4 003B1064  F0 03 00 70 */	psq_st f0, 112(r3), 0, qr0
/* 803E7AA8 003B1068  F0 03 00 78 */	psq_st f0, 120(r3), 0, qr0
/* 803E7AAC 003B106C  F0 03 00 80 */	psq_st f0, 128(r3), 0, qr0
/* 803E7AB0 003B1070  F0 03 00 88 */	psq_st f0, 136(r3), 0, qr0
/* 803E7AB4 003B1074  F0 03 00 90 */	psq_st f0, 144(r3), 0, qr0
/* 803E7AB8 003B1078  F0 03 00 98 */	psq_st f0, 152(r3), 0, qr0
/* 803E7ABC 003B107C  F0 03 00 A0 */	psq_st f0, 160(r3), 0, qr0
/* 803E7AC0 003B1080  F0 03 00 A8 */	psq_st f0, 168(r3), 0, qr0
/* 803E7AC4 003B1084  F0 03 00 B0 */	psq_st f0, 176(r3), 0, qr0
/* 803E7AC8 003B1088  F0 03 00 B8 */	psq_st f0, 184(r3), 0, qr0
/* 803E7ACC 003B108C  F0 03 00 C0 */	psq_st f0, 192(r3), 0, qr0
/* 803E7AD0 003B1090  F0 03 00 C8 */	psq_st f0, 200(r3), 0, qr0
/* 803E7AD4 003B1094  F0 03 00 D0 */	psq_st f0, 208(r3), 0, qr0
/* 803E7AD8 003B1098  F0 03 00 D8 */	psq_st f0, 216(r3), 0, qr0
/* 803E7ADC 003B109C  F0 03 00 E0 */	psq_st f0, 224(r3), 0, qr0
/* 803E7AE0 003B10A0  F0 03 00 E8 */	psq_st f0, 232(r3), 0, qr0
/* 803E7AE4 003B10A4  F0 03 00 F0 */	psq_st f0, 240(r3), 0, qr0
/* 803E7AE8 003B10A8  F0 03 00 F8 */	psq_st f0, 248(r3), 0, qr0
/* 803E7AEC 003B10AC  38 63 01 00 */	addi r3, r3, 0x100
/* 803E7AF0 003B10B0  42 00 FF 7C */	bdnz .L_803E7A6C
/* 803E7AF4 003B10B4  70 84 00 07 */	andi. r4, r4, 7
/* 803E7AF8 003B10B8  4D 82 00 20 */	beqlr 
.L_803E7AFC:
/* 803E7AFC 003B10BC  7C 89 03 A6 */	mtctr r4
.L_803E7B00:
/* 803E7B00 003B10C0  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 803E7B04 003B10C4  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 803E7B08 003B10C8  F0 03 00 10 */	psq_st f0, 16(r3), 0, qr0
/* 803E7B0C 003B10CC  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 803E7B10 003B10D0  38 63 00 20 */	addi r3, r3, 0x20
/* 803E7B14 003B10D4  42 00 FF EC */	bdnz .L_803E7B00
/* 803E7B18 003B10D8  4E 80 00 20 */	blr 
.endfn ZeroMemory32ByteBlocks__Q34nw4r3g3d6detailFPvUl

.fn ZeroMemory16ByteBlocks__Q34nw4r3g3d6detailFPvUl, global
/* 803E7B1C 003B10DC  54 84 E1 3F */	rlwinm. r4, r4, 0x1c, 4, 0x1f
/* 803E7B20 003B10E0  C0 02 C0 60 */	lfs f0, float_8066C3E0@sda21(r2)
/* 803E7B24 003B10E4  4D 82 00 20 */	beqlr 
/* 803E7B28 003B10E8  54 80 E8 FF */	rlwinm. r0, r4, 0x1d, 3, 0x1f
/* 803E7B2C 003B10EC  7C 09 03 A6 */	mtctr r0
/* 803E7B30 003B10F0  41 82 00 54 */	beq .L_803E7B84
.L_803E7B34:
/* 803E7B34 003B10F4  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 803E7B38 003B10F8  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 803E7B3C 003B10FC  F0 03 00 10 */	psq_st f0, 16(r3), 0, qr0
/* 803E7B40 003B1100  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 803E7B44 003B1104  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 803E7B48 003B1108  F0 03 00 28 */	psq_st f0, 40(r3), 0, qr0
/* 803E7B4C 003B110C  F0 03 00 30 */	psq_st f0, 48(r3), 0, qr0
/* 803E7B50 003B1110  F0 03 00 38 */	psq_st f0, 56(r3), 0, qr0
/* 803E7B54 003B1114  F0 03 00 40 */	psq_st f0, 64(r3), 0, qr0
/* 803E7B58 003B1118  F0 03 00 48 */	psq_st f0, 72(r3), 0, qr0
/* 803E7B5C 003B111C  F0 03 00 50 */	psq_st f0, 80(r3), 0, qr0
/* 803E7B60 003B1120  F0 03 00 58 */	psq_st f0, 88(r3), 0, qr0
/* 803E7B64 003B1124  F0 03 00 60 */	psq_st f0, 96(r3), 0, qr0
/* 803E7B68 003B1128  F0 03 00 68 */	psq_st f0, 104(r3), 0, qr0
/* 803E7B6C 003B112C  F0 03 00 70 */	psq_st f0, 112(r3), 0, qr0
/* 803E7B70 003B1130  F0 03 00 78 */	psq_st f0, 120(r3), 0, qr0
/* 803E7B74 003B1134  38 63 00 80 */	addi r3, r3, 0x80
/* 803E7B78 003B1138  42 00 FF BC */	bdnz .L_803E7B34
/* 803E7B7C 003B113C  70 84 00 07 */	andi. r4, r4, 7
/* 803E7B80 003B1140  4D 82 00 20 */	beqlr 
.L_803E7B84:
/* 803E7B84 003B1144  7C 89 03 A6 */	mtctr r4
.L_803E7B88:
/* 803E7B88 003B1148  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 803E7B8C 003B114C  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 803E7B90 003B1150  38 63 00 10 */	addi r3, r3, 0x10
/* 803E7B94 003B1154  42 00 FF F4 */	bdnz .L_803E7B88
/* 803E7B98 003B1158  4E 80 00 20 */	blr
.endfn ZeroMemory16ByteBlocks__Q34nw4r3g3d6detailFPvUl

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066C3E0
float_8066C3E0:
	.float 0
	.4byte 0