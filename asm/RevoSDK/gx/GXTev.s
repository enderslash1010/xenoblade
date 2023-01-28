.include "macros.inc"
.file "RevoSDK/gx/GXTev.o"

# 0x8031D620 - 0x8031DCF0
.text
.balign 16

.fn GXSetTevOp, global
/* 8031D620 002E6BE0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8031D624 002E6BE4  3C A0 80 55 */	lis r5, lbl_8054C098@ha
/* 8031D628 002E6BE8  38 A5 C0 98 */	addi r5, r5, lbl_8054C098@l
/* 8031D62C 002E6BEC  40 82 00 1C */	bne .L_8031D648
/* 8031D630 002E6BF0  54 86 10 3A */	slwi r6, r4, 2
/* 8031D634 002E6BF4  38 85 00 00 */	addi r4, r5, 0x0
/* 8031D638 002E6BF8  38 05 00 28 */	addi r0, r5, 0x28
/* 8031D63C 002E6BFC  7D 04 32 14 */	add r8, r4, r6
/* 8031D640 002E6C00  7D 20 32 14 */	add r9, r0, r6
/* 8031D644 002E6C04  48 00 00 18 */	b .L_8031D65C
.L_8031D648:
/* 8031D648 002E6C08  54 86 10 3A */	slwi r6, r4, 2
/* 8031D64C 002E6C0C  38 85 00 14 */	addi r4, r5, 0x14
/* 8031D650 002E6C10  38 05 00 3C */	addi r0, r5, 0x3c
/* 8031D654 002E6C14  7D 04 32 14 */	add r8, r4, r6
/* 8031D658 002E6C18  7D 20 32 14 */	add r9, r0, r6
.L_8031D65C:
/* 8031D65C 002E6C1C  80 E2 BC 20 */	lwz r7, lbl_8066BFA0@sda21(r2)
/* 8031D660 002E6C20  54 60 10 3A */	slwi r0, r3, 2
/* 8031D664 002E6C24  80 68 00 00 */	lwz r3, 0x0(r8)
/* 8031D668 002E6C28  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031D66C 002E6C2C  7C C7 02 14 */	add r6, r7, r0
/* 8031D670 002E6C30  38 A0 00 61 */	li r5, 0x61
/* 8031D674 002E6C34  81 06 01 80 */	lwz r8, 0x180(r6)
/* 8031D678 002E6C38  38 00 00 00 */	li r0, 0x0
/* 8031D67C 002E6C3C  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031D680 002E6C40  55 08 00 0E */	clrrwi r8, r8, 24
/* 8031D684 002E6C44  50 68 02 3E */	rlwimi r8, r3, 0, 8, 31
/* 8031D688 002E6C48  91 04 80 00 */	stw r8, -0x8000(r4)
/* 8031D68C 002E6C4C  91 06 01 80 */	stw r8, 0x180(r6)
/* 8031D690 002E6C50  81 06 01 C0 */	lwz r8, 0x1c0(r6)
/* 8031D694 002E6C54  80 69 00 00 */	lwz r3, 0x0(r9)
/* 8031D698 002E6C58  55 08 07 0E */	rlwinm r8, r8, 0, 28, 7
/* 8031D69C 002E6C5C  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031D6A0 002E6C60  50 68 02 36 */	rlwimi r8, r3, 0, 8, 27
/* 8031D6A4 002E6C64  91 04 80 00 */	stw r8, -0x8000(r4)
/* 8031D6A8 002E6C68  91 06 01 C0 */	stw r8, 0x1c0(r6)
/* 8031D6AC 002E6C6C  B0 07 00 02 */	sth r0, 0x2(r7)
/* 8031D6B0 002E6C70  4E 80 00 20 */	blr
.endfn GXSetTevOp
/* 8031D6B4 002E6C74  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031D6B8 002E6C78  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031D6BC 002E6C7C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXSetTevColorIn, global
/* 8031D6C0 002E6C80  81 62 BC 20 */	lwz r11, lbl_8066BFA0@sda21(r2)
/* 8031D6C4 002E6C84  54 60 10 3A */	slwi r0, r3, 2
/* 8031D6C8 002E6C88  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031D6CC 002E6C8C  39 00 00 61 */	li r8, 0x61
/* 8031D6D0 002E6C90  7D 4B 02 14 */	add r10, r11, r0
/* 8031D6D4 002E6C94  38 00 00 00 */	li r0, 0x0
/* 8031D6D8 002E6C98  81 2A 01 80 */	lwz r9, 0x180(r10)
/* 8031D6DC 002E6C9C  50 89 64 26 */	rlwimi r9, r4, 12, 16, 19
/* 8031D6E0 002E6CA0  50 A9 45 2E */	rlwimi r9, r5, 8, 20, 23
/* 8031D6E4 002E6CA4  99 03 80 00 */	stb r8, -0x8000(r3)
/* 8031D6E8 002E6CA8  50 C9 26 36 */	rlwimi r9, r6, 4, 24, 27
/* 8031D6EC 002E6CAC  50 E9 07 3E */	rlwimi r9, r7, 0, 28, 31
/* 8031D6F0 002E6CB0  91 23 80 00 */	stw r9, -0x8000(r3)
/* 8031D6F4 002E6CB4  91 2A 01 80 */	stw r9, 0x180(r10)
/* 8031D6F8 002E6CB8  B0 0B 00 02 */	sth r0, 0x2(r11)
/* 8031D6FC 002E6CBC  4E 80 00 20 */	blr
.endfn GXSetTevColorIn

.fn GXSetTevAlphaIn, global
/* 8031D700 002E6CC0  81 62 BC 20 */	lwz r11, lbl_8066BFA0@sda21(r2)
/* 8031D704 002E6CC4  54 60 10 3A */	slwi r0, r3, 2
/* 8031D708 002E6CC8  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031D70C 002E6CCC  39 00 00 61 */	li r8, 0x61
/* 8031D710 002E6CD0  7D 4B 02 14 */	add r10, r11, r0
/* 8031D714 002E6CD4  38 00 00 00 */	li r0, 0x0
/* 8031D718 002E6CD8  81 2A 01 C0 */	lwz r9, 0x1c0(r10)
/* 8031D71C 002E6CDC  50 89 6C 24 */	rlwimi r9, r4, 13, 16, 18
/* 8031D720 002E6CE0  50 A9 54 EA */	rlwimi r9, r5, 10, 19, 21
/* 8031D724 002E6CE4  99 03 80 00 */	stb r8, -0x8000(r3)
/* 8031D728 002E6CE8  50 C9 3D B0 */	rlwimi r9, r6, 7, 22, 24
/* 8031D72C 002E6CEC  50 E9 26 76 */	rlwimi r9, r7, 4, 25, 27
/* 8031D730 002E6CF0  91 23 80 00 */	stw r9, -0x8000(r3)
/* 8031D734 002E6CF4  91 2A 01 C0 */	stw r9, 0x1c0(r10)
/* 8031D738 002E6CF8  B0 0B 00 02 */	sth r0, 0x2(r11)
/* 8031D73C 002E6CFC  4E 80 00 20 */	blr
.endfn GXSetTevAlphaIn

.fn GXSetTevColorOp, global
/* 8031D740 002E6D00  81 42 BC 20 */	lwz r10, lbl_8066BFA0@sda21(r2)
/* 8031D744 002E6D04  54 60 10 3A */	slwi r0, r3, 2
/* 8031D748 002E6D08  2C 04 00 01 */	cmpwi r4, 0x1
/* 8031D74C 002E6D0C  7D 2A 02 14 */	add r9, r10, r0
/* 8031D750 002E6D10  81 69 01 80 */	lwz r11, 0x180(r9)
/* 8031D754 002E6D14  50 8B 93 5A */	rlwimi r11, r4, 18, 13, 13
/* 8031D758 002E6D18  41 81 00 10 */	bgt .L_8031D768
/* 8031D75C 002E6D1C  50 CB A2 96 */	rlwimi r11, r6, 20, 10, 11
/* 8031D760 002E6D20  50 AB 83 9E */	rlwimi r11, r5, 16, 14, 15
/* 8031D764 002E6D24  48 00 00 0C */	b .L_8031D770
.L_8031D768:
/* 8031D768 002E6D28  50 8B 9A 96 */	rlwimi r11, r4, 19, 10, 11
/* 8031D76C 002E6D2C  65 6B 00 03 */	oris r11, r11, 0x3
.L_8031D770:
/* 8031D770 002E6D30  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031D774 002E6D34  38 00 00 61 */	li r0, 0x61
/* 8031D778 002E6D38  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031D77C 002E6D3C  50 EB 9B 18 */	rlwimi r11, r7, 19, 12, 12
/* 8031D780 002E6D40  51 0B B2 12 */	rlwimi r11, r8, 22, 8, 9
/* 8031D784 002E6D44  38 00 00 00 */	li r0, 0x0
/* 8031D788 002E6D48  91 63 80 00 */	stw r11, -0x8000(r3)
/* 8031D78C 002E6D4C  91 69 01 80 */	stw r11, 0x180(r9)
/* 8031D790 002E6D50  B0 0A 00 02 */	sth r0, 0x2(r10)
/* 8031D794 002E6D54  4E 80 00 20 */	blr
.endfn GXSetTevColorOp
/* 8031D798 002E6D58  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031D79C 002E6D5C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXSetTevAlphaOp, global
/* 8031D7A0 002E6D60  81 42 BC 20 */	lwz r10, lbl_8066BFA0@sda21(r2)
/* 8031D7A4 002E6D64  54 60 10 3A */	slwi r0, r3, 2
/* 8031D7A8 002E6D68  2C 04 00 01 */	cmpwi r4, 0x1
/* 8031D7AC 002E6D6C  7D 2A 02 14 */	add r9, r10, r0
/* 8031D7B0 002E6D70  81 69 01 C0 */	lwz r11, 0x1c0(r9)
/* 8031D7B4 002E6D74  50 8B 93 5A */	rlwimi r11, r4, 18, 13, 13
/* 8031D7B8 002E6D78  41 81 00 10 */	bgt .L_8031D7C8
/* 8031D7BC 002E6D7C  50 CB A2 96 */	rlwimi r11, r6, 20, 10, 11
/* 8031D7C0 002E6D80  50 AB 83 9E */	rlwimi r11, r5, 16, 14, 15
/* 8031D7C4 002E6D84  48 00 00 0C */	b .L_8031D7D0
.L_8031D7C8:
/* 8031D7C8 002E6D88  50 8B 9A 96 */	rlwimi r11, r4, 19, 10, 11
/* 8031D7CC 002E6D8C  65 6B 00 03 */	oris r11, r11, 0x3
.L_8031D7D0:
/* 8031D7D0 002E6D90  3C 60 CC 01 */	lis r3, 0xcc01
/* 8031D7D4 002E6D94  38 00 00 61 */	li r0, 0x61
/* 8031D7D8 002E6D98  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8031D7DC 002E6D9C  50 EB 9B 18 */	rlwimi r11, r7, 19, 12, 12
/* 8031D7E0 002E6DA0  51 0B B2 12 */	rlwimi r11, r8, 22, 8, 9
/* 8031D7E4 002E6DA4  38 00 00 00 */	li r0, 0x0
/* 8031D7E8 002E6DA8  91 63 80 00 */	stw r11, -0x8000(r3)
/* 8031D7EC 002E6DAC  91 69 01 C0 */	stw r11, 0x1c0(r9)
/* 8031D7F0 002E6DB0  B0 0A 00 02 */	sth r0, 0x2(r10)
/* 8031D7F4 002E6DB4  4E 80 00 20 */	blr
.endfn GXSetTevAlphaOp
/* 8031D7F8 002E6DB8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031D7FC 002E6DBC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXSetTevColor, global
/* 8031D800 002E6DC0  81 04 00 00 */	lwz r8, 0x0(r4)
/* 8031D804 002E6DC4  54 63 08 3C */	slwi r3, r3, 1
/* 8031D808 002E6DC8  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031D80C 002E6DCC  38 A0 00 61 */	li r5, 0x61
/* 8031D810 002E6DD0  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031D814 002E6DD4  38 03 00 E0 */	addi r0, r3, 0xe0
/* 8031D818 002E6DD8  54 07 C0 0E */	slwi r7, r0, 24
/* 8031D81C 002E6DDC  51 07 46 3E */	rlwimi r7, r8, 8, 24, 31
/* 8031D820 002E6DE0  38 03 00 E1 */	addi r0, r3, 0xe1
/* 8031D824 002E6DE4  51 07 63 26 */	rlwimi r7, r8, 12, 12, 19
/* 8031D828 002E6DE8  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 8031D82C 002E6DEC  54 06 C0 0E */	slwi r6, r0, 24
/* 8031D830 002E6DF0  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031D834 002E6DF4  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031D838 002E6DF8  51 06 C6 3E */	rlwimi r6, r8, 24, 24, 31
/* 8031D83C 002E6DFC  51 06 E3 26 */	rlwimi r6, r8, 28, 12, 19
/* 8031D840 002E6E00  38 00 00 00 */	li r0, 0x0
/* 8031D844 002E6E04  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031D848 002E6E08  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031D84C 002E6E0C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031D850 002E6E10  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031D854 002E6E14  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031D858 002E6E18  B0 03 00 02 */	sth r0, 0x2(r3)
/* 8031D85C 002E6E1C  4E 80 00 20 */	blr
.endfn GXSetTevColor

.fn GXSetTevColorS10, global
/* 8031D860 002E6E20  81 04 00 00 */	lwz r8, 0x0(r4)
/* 8031D864 002E6E24  54 66 08 3C */	slwi r6, r3, 1
/* 8031D868 002E6E28  81 24 00 04 */	lwz r9, 0x4(r4)
/* 8031D86C 002E6E2C  3C A0 CC 01 */	lis r5, 0xcc01
/* 8031D870 002E6E30  38 80 00 61 */	li r4, 0x61
/* 8031D874 002E6E34  38 06 00 E0 */	addi r0, r6, 0xe0
/* 8031D878 002E6E38  98 85 80 00 */	stb r4, -0x8000(r5)
/* 8031D87C 002E6E3C  54 07 C0 0E */	slwi r7, r0, 24
/* 8031D880 002E6E40  51 07 85 7E */	rlwimi r7, r8, 16, 21, 31
/* 8031D884 002E6E44  38 C6 00 E1 */	addi r6, r6, 0xe1
/* 8031D888 002E6E48  51 27 62 66 */	rlwimi r7, r9, 12, 9, 19
/* 8031D88C 002E6E4C  90 E5 80 00 */	stw r7, -0x8000(r5)
/* 8031D890 002E6E50  54 C6 C0 0E */	slwi r6, r6, 24
/* 8031D894 002E6E54  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031D898 002E6E58  98 85 80 00 */	stb r4, -0x8000(r5)
/* 8031D89C 002E6E5C  51 26 85 7E */	rlwimi r6, r9, 16, 21, 31
/* 8031D8A0 002E6E60  51 06 62 66 */	rlwimi r6, r8, 12, 9, 19
/* 8031D8A4 002E6E64  38 00 00 00 */	li r0, 0x0
/* 8031D8A8 002E6E68  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 8031D8AC 002E6E6C  98 85 80 00 */	stb r4, -0x8000(r5)
/* 8031D8B0 002E6E70  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 8031D8B4 002E6E74  98 85 80 00 */	stb r4, -0x8000(r5)
/* 8031D8B8 002E6E78  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 8031D8BC 002E6E7C  B0 03 00 02 */	sth r0, 0x2(r3)
/* 8031D8C0 002E6E80  4E 80 00 20 */	blr
.endfn GXSetTevColorS10
/* 8031D8C4 002E6E84  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031D8C8 002E6E88  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031D8CC 002E6E8C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXSetTevKColor, global
/* 8031D8D0 002E6E90  81 24 00 00 */	lwz r9, 0x0(r4)
/* 8031D8D4 002E6E94  54 63 08 3C */	slwi r3, r3, 1
/* 8031D8D8 002E6E98  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031D8DC 002E6E9C  38 A0 00 61 */	li r5, 0x61
/* 8031D8E0 002E6EA0  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031D8E4 002E6EA4  38 03 00 E0 */	addi r0, r3, 0xe0
/* 8031D8E8 002E6EA8  38 E0 00 08 */	li r7, 0x8
/* 8031D8EC 002E6EAC  54 08 C0 0E */	slwi r8, r0, 24
/* 8031D8F0 002E6EB0  38 03 00 E1 */	addi r0, r3, 0xe1
/* 8031D8F4 002E6EB4  51 28 46 3E */	rlwimi r8, r9, 8, 24, 31
/* 8031D8F8 002E6EB8  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031D8FC 002E6EBC  51 28 63 26 */	rlwimi r8, r9, 12, 12, 19
/* 8031D900 002E6EC0  54 06 C0 0E */	slwi r6, r0, 24
/* 8031D904 002E6EC4  50 E8 A2 16 */	rlwimi r8, r7, 20, 8, 11
/* 8031D908 002E6EC8  91 04 80 00 */	stw r8, -0x8000(r4)
/* 8031D90C 002E6ECC  51 26 C6 3E */	rlwimi r6, r9, 24, 24, 31
/* 8031D910 002E6ED0  38 00 00 00 */	li r0, 0x0
/* 8031D914 002E6ED4  51 26 E3 26 */	rlwimi r6, r9, 28, 12, 19
/* 8031D918 002E6ED8  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031D91C 002E6EDC  50 E6 A2 16 */	rlwimi r6, r7, 20, 8, 11
/* 8031D920 002E6EE0  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031D924 002E6EE4  B0 03 00 02 */	sth r0, 0x2(r3)
/* 8031D928 002E6EE8  4E 80 00 20 */	blr
.endfn GXSetTevKColor
/* 8031D92C 002E6EEC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXSetTevKColorSel, global
/* 8031D930 002E6EF0  54 60 07 FF */	clrlwi. r0, r3, 31
/* 8031D934 002E6EF4  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031D938 002E6EF8  54 60 08 3A */	extlwi r0, r3, 30, 1
/* 8031D93C 002E6EFC  7C 65 02 14 */	add r3, r5, r0
/* 8031D940 002E6F00  41 82 00 14 */	beq .L_8031D954
/* 8031D944 002E6F04  80 03 02 00 */	lwz r0, 0x200(r3)
/* 8031D948 002E6F08  50 80 73 62 */	rlwimi r0, r4, 14, 13, 17
/* 8031D94C 002E6F0C  90 03 02 00 */	stw r0, 0x200(r3)
/* 8031D950 002E6F10  48 00 00 10 */	b .L_8031D960
.L_8031D954:
/* 8031D954 002E6F14  80 03 02 00 */	lwz r0, 0x200(r3)
/* 8031D958 002E6F18  50 80 25 F6 */	rlwimi r0, r4, 4, 23, 27
/* 8031D95C 002E6F1C  90 03 02 00 */	stw r0, 0x200(r3)
.L_8031D960:
/* 8031D960 002E6F20  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031D964 002E6F24  38 00 00 61 */	li r0, 0x61
/* 8031D968 002E6F28  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031D96C 002E6F2C  38 00 00 00 */	li r0, 0x0
/* 8031D970 002E6F30  80 63 02 00 */	lwz r3, 0x200(r3)
/* 8031D974 002E6F34  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8031D978 002E6F38  B0 05 00 02 */	sth r0, 0x2(r5)
/* 8031D97C 002E6F3C  4E 80 00 20 */	blr
.endfn GXSetTevKColorSel

.fn GXSetTevKAlphaSel, global
/* 8031D980 002E6F40  54 60 07 FF */	clrlwi. r0, r3, 31
/* 8031D984 002E6F44  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031D988 002E6F48  54 60 08 3A */	extlwi r0, r3, 30, 1
/* 8031D98C 002E6F4C  7C 65 02 14 */	add r3, r5, r0
/* 8031D990 002E6F50  41 82 00 14 */	beq .L_8031D9A4
/* 8031D994 002E6F54  80 03 02 00 */	lwz r0, 0x200(r3)
/* 8031D998 002E6F58  50 80 9A 18 */	rlwimi r0, r4, 19, 8, 12
/* 8031D99C 002E6F5C  90 03 02 00 */	stw r0, 0x200(r3)
/* 8031D9A0 002E6F60  48 00 00 10 */	b .L_8031D9B0
.L_8031D9A4:
/* 8031D9A4 002E6F64  80 03 02 00 */	lwz r0, 0x200(r3)
/* 8031D9A8 002E6F68  50 80 4C AC */	rlwimi r0, r4, 9, 18, 22
/* 8031D9AC 002E6F6C  90 03 02 00 */	stw r0, 0x200(r3)
.L_8031D9B0:
/* 8031D9B0 002E6F70  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031D9B4 002E6F74  38 00 00 61 */	li r0, 0x61
/* 8031D9B8 002E6F78  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031D9BC 002E6F7C  38 00 00 00 */	li r0, 0x0
/* 8031D9C0 002E6F80  80 63 02 00 */	lwz r3, 0x200(r3)
/* 8031D9C4 002E6F84  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8031D9C8 002E6F88  B0 05 00 02 */	sth r0, 0x2(r5)
/* 8031D9CC 002E6F8C  4E 80 00 20 */	blr
.endfn GXSetTevKAlphaSel

.fn GXSetTevSwapMode, global
/* 8031D9D0 002E6F90  81 22 BC 20 */	lwz r9, lbl_8066BFA0@sda21(r2)
/* 8031D9D4 002E6F94  54 60 10 3A */	slwi r0, r3, 2
/* 8031D9D8 002E6F98  3C C0 CC 01 */	lis r6, 0xcc01
/* 8031D9DC 002E6F9C  38 60 00 61 */	li r3, 0x61
/* 8031D9E0 002E6FA0  7D 09 02 14 */	add r8, r9, r0
/* 8031D9E4 002E6FA4  38 00 00 00 */	li r0, 0x0
/* 8031D9E8 002E6FA8  80 E8 01 C0 */	lwz r7, 0x1c0(r8)
/* 8031D9EC 002E6FAC  50 87 07 BE */	rlwimi r7, r4, 0, 30, 31
/* 8031D9F0 002E6FB0  50 A7 17 3A */	rlwimi r7, r5, 2, 28, 29
/* 8031D9F4 002E6FB4  90 E8 01 C0 */	stw r7, 0x1c0(r8)
/* 8031D9F8 002E6FB8  98 66 80 00 */	stb r3, -0x8000(r6)
/* 8031D9FC 002E6FBC  80 68 01 C0 */	lwz r3, 0x1c0(r8)
/* 8031DA00 002E6FC0  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8031DA04 002E6FC4  B0 09 00 02 */	sth r0, 0x2(r9)
/* 8031DA08 002E6FC8  4E 80 00 20 */	blr
.endfn GXSetTevSwapMode
/* 8031DA0C 002E6FCC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXSetTevSwapModeTable, global
/* 8031DA10 002E6FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031DA14 002E6FD4  54 6B 18 38 */	slwi r11, r3, 3
/* 8031DA18 002E6FD8  54 6C 08 3C */	slwi r12, r3, 1
/* 8031DA1C 002E6FDC  3D 00 CC 01 */	lis r8, 0xcc01
/* 8031DA20 002E6FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031DA24 002E6FE4  39 20 00 61 */	li r9, 0x61
/* 8031DA28 002E6FE8  38 6C 00 01 */	addi r3, r12, 0x1
/* 8031DA2C 002E6FEC  38 00 00 00 */	li r0, 0x0
/* 8031DA30 002E6FF0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8031DA34 002E6FF4  83 C2 BC 20 */	lwz r30, lbl_8066BFA0@sda21(r2)
/* 8031DA38 002E6FF8  3B FE 02 00 */	addi r31, r30, 0x200
/* 8031DA3C 002E6FFC  7D 5F 58 2E */	lwzx r10, r31, r11
/* 8031DA40 002E7000  50 8A 07 BE */	rlwimi r10, r4, 0, 30, 31
/* 8031DA44 002E7004  50 AA 17 3A */	rlwimi r10, r5, 2, 28, 29
/* 8031DA48 002E7008  7D 5F 59 2E */	stwx r10, r31, r11
/* 8031DA4C 002E700C  54 64 10 3A */	slwi r4, r3, 2
/* 8031DA50 002E7010  99 28 80 00 */	stb r9, -0x8000(r8)
/* 8031DA54 002E7014  7C 7F 58 2E */	lwzx r3, r31, r11
/* 8031DA58 002E7018  90 68 80 00 */	stw r3, -0x8000(r8)
/* 8031DA5C 002E701C  7C 7F 20 2E */	lwzx r3, r31, r4
/* 8031DA60 002E7020  50 C3 07 BE */	rlwimi r3, r6, 0, 30, 31
/* 8031DA64 002E7024  50 E3 17 3A */	rlwimi r3, r7, 2, 28, 29
/* 8031DA68 002E7028  7C 7F 21 2E */	stwx r3, r31, r4
/* 8031DA6C 002E702C  99 28 80 00 */	stb r9, -0x8000(r8)
/* 8031DA70 002E7030  7C 7F 20 2E */	lwzx r3, r31, r4
/* 8031DA74 002E7034  90 68 80 00 */	stw r3, -0x8000(r8)
/* 8031DA78 002E7038  B0 1E 00 02 */	sth r0, 0x2(r30)
/* 8031DA7C 002E703C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031DA80 002E7040  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8031DA84 002E7044  38 21 00 10 */	addi r1, r1, 0x10
/* 8031DA88 002E7048  4E 80 00 20 */	blr
.endfn GXSetTevSwapModeTable
/* 8031DA8C 002E704C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXSetAlphaCompare, global
/* 8031DA90 002E7050  3D 00 CC 01 */	lis r8, 0xcc01
/* 8031DA94 002E7054  38 00 00 61 */	li r0, 0x61
/* 8031DA98 002E7058  98 08 80 00 */	stb r0, -0x8000(r8)
/* 8031DA9C 002E705C  3D 20 F3 00 */	lis r9, 0xf300
/* 8031DAA0 002E7060  50 89 06 3E */	rlwimi r9, r4, 0, 24, 31
/* 8031DAA4 002E7064  80 82 BC 20 */	lwz r4, lbl_8066BFA0@sda21(r2)
/* 8031DAA8 002E7068  50 E9 44 2E */	rlwimi r9, r7, 8, 16, 23
/* 8031DAAC 002E706C  38 00 00 00 */	li r0, 0x0
/* 8031DAB0 002E7070  50 69 83 5E */	rlwimi r9, r3, 16, 13, 15
/* 8031DAB4 002E7074  50 C9 9A 98 */	rlwimi r9, r6, 19, 10, 12
/* 8031DAB8 002E7078  50 A9 B2 12 */	rlwimi r9, r5, 22, 8, 9
/* 8031DABC 002E707C  91 28 80 00 */	stw r9, -0x8000(r8)
/* 8031DAC0 002E7080  B0 04 00 02 */	sth r0, 0x2(r4)
/* 8031DAC4 002E7084  4E 80 00 20 */	blr
.endfn GXSetAlphaCompare
/* 8031DAC8 002E7088  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031DACC 002E708C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXSetZTexture, global
/* 8031DAD0 002E7090  2C 04 00 11 */	cmpwi r4, 0x11
/* 8031DAD4 002E7094  38 E0 00 00 */	li r7, 0x0
/* 8031DAD8 002E7098  38 00 00 F4 */	li r0, 0xf4
/* 8031DADC 002E709C  50 A7 02 3E */	rlwimi r7, r5, 0, 8, 31
/* 8031DAE0 002E70A0  50 07 C0 0E */	rlwimi r7, r0, 24, 0, 7
/* 8031DAE4 002E70A4  41 82 00 18 */	beq .L_8031DAFC
/* 8031DAE8 002E70A8  2C 04 00 13 */	cmpwi r4, 0x13
/* 8031DAEC 002E70AC  41 82 00 18 */	beq .L_8031DB04
/* 8031DAF0 002E70B0  2C 04 00 16 */	cmpwi r4, 0x16
/* 8031DAF4 002E70B4  41 82 00 18 */	beq .L_8031DB0C
/* 8031DAF8 002E70B8  48 00 00 1C */	b .L_8031DB14
.L_8031DAFC:
/* 8031DAFC 002E70BC  38 A0 00 00 */	li r5, 0x0
/* 8031DB00 002E70C0  48 00 00 18 */	b .L_8031DB18
.L_8031DB04:
/* 8031DB04 002E70C4  38 A0 00 01 */	li r5, 0x1
/* 8031DB08 002E70C8  48 00 00 10 */	b .L_8031DB18
.L_8031DB0C:
/* 8031DB0C 002E70CC  38 A0 00 02 */	li r5, 0x2
/* 8031DB10 002E70D0  48 00 00 08 */	b .L_8031DB18
.L_8031DB14:
/* 8031DB14 002E70D4  38 A0 00 02 */	li r5, 0x2
.L_8031DB18:
/* 8031DB18 002E70D8  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031DB1C 002E70DC  38 00 00 61 */	li r0, 0x61
/* 8031DB20 002E70E0  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031DB24 002E70E4  38 C0 00 00 */	li r6, 0x0
/* 8031DB28 002E70E8  50 A6 07 BE */	rlwimi r6, r5, 0, 30, 31
/* 8031DB2C 002E70EC  38 A0 00 F5 */	li r5, 0xf5
/* 8031DB30 002E70F0  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 8031DB34 002E70F4  50 66 17 3A */	rlwimi r6, r3, 2, 28, 29
/* 8031DB38 002E70F8  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031DB3C 002E70FC  50 A6 C0 0E */	rlwimi r6, r5, 24, 0, 7
/* 8031DB40 002E7100  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031DB44 002E7104  38 00 00 00 */	li r0, 0x0
/* 8031DB48 002E7108  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031DB4C 002E710C  B0 03 00 02 */	sth r0, 0x2(r3)
/* 8031DB50 002E7110  4E 80 00 20 */	blr
.endfn GXSetZTexture
/* 8031DB54 002E7114  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031DB58 002E7118  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031DB5C 002E711C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXSetTevOrder, global
/* 8031DB60 002E7120  54 AB 06 2C */	rlwinm r11, r5, 0, 24, 22
/* 8031DB64 002E7124  38 E0 00 08 */	li r7, 0x8
/* 8031DB68 002E7128  54 69 0F FE */	srwi r9, r3, 31
/* 8031DB6C 002E712C  81 42 BC 20 */	lwz r10, lbl_8066BFA0@sda21(r2)
/* 8031DB70 002E7130  7C 07 58 10 */	subfc r0, r7, r11
/* 8031DB74 002E7134  54 68 10 3A */	slwi r8, r3, 2
/* 8031DB78 002E7138  7C 07 01 94 */	addze r0, r7
/* 8031DB7C 002E713C  7D 29 1A 14 */	add r9, r9, r3
/* 8031DB80 002E7140  7C EA 42 14 */	add r7, r10, r8
/* 8031DB84 002E7144  2C 04 00 08 */	cmpwi r4, 0x8
/* 8031DB88 002E7148  55 28 08 3A */	extlwi r8, r9, 30, 1
/* 8031DB8C 002E714C  20 00 00 08 */	subfic r0, r0, 0x8
/* 8031DB90 002E7150  90 A7 05 A4 */	stw r5, 0x5a4(r7)
/* 8031DB94 002E7154  7C EA 42 14 */	add r7, r10, r8
/* 8031DB98 002E7158  7D 69 00 78 */	andc r9, r11, r0
/* 8031DB9C 002E715C  41 80 00 20 */	blt .L_8031DBBC
/* 8031DBA0 002E7160  38 00 00 01 */	li r0, 0x1
/* 8031DBA4 002E7164  81 0A 05 E8 */	lwz r8, 0x5e8(r10)
/* 8031DBA8 002E7168  7C 00 18 30 */	slw r0, r0, r3
/* 8031DBAC 002E716C  38 80 00 00 */	li r4, 0x0
/* 8031DBB0 002E7170  7D 00 00 78 */	andc r0, r8, r0
/* 8031DBB4 002E7174  90 0A 05 E8 */	stw r0, 0x5e8(r10)
/* 8031DBB8 002E7178  48 00 00 18 */	b .L_8031DBD0
.L_8031DBBC:
/* 8031DBBC 002E717C  38 00 00 01 */	li r0, 0x1
/* 8031DBC0 002E7180  81 0A 05 E8 */	lwz r8, 0x5e8(r10)
/* 8031DBC4 002E7184  7C 00 18 30 */	slw r0, r0, r3
/* 8031DBC8 002E7188  7D 00 03 78 */	or r0, r8, r0
/* 8031DBCC 002E718C  90 0A 05 E8 */	stw r0, 0x5e8(r10)
.L_8031DBD0:
/* 8031DBD0 002E7190  54 60 07 FF */	clrlwi. r0, r3, 31
/* 8031DBD4 002E7194  41 82 00 60 */	beq .L_8031DC34
/* 8031DBD8 002E7198  81 07 01 50 */	lwz r8, 0x150(r7)
/* 8031DBDC 002E719C  2C 06 00 FF */	cmpwi r6, 0xff
/* 8031DBE0 002E71A0  51 28 64 66 */	rlwimi r8, r9, 12, 17, 19
/* 8031DBE4 002E71A4  50 88 7B A0 */	rlwimi r8, r4, 15, 14, 16
/* 8031DBE8 002E71A8  91 07 01 50 */	stw r8, 0x150(r7)
/* 8031DBEC 002E71AC  40 82 00 0C */	bne .L_8031DBF8
/* 8031DBF0 002E71B0  38 00 00 07 */	li r0, 0x7
/* 8031DBF4 002E71B4  48 00 00 14 */	b .L_8031DC08
.L_8031DBF8:
/* 8031DBF8 002E71B8  3C 60 80 55 */	lis r3, lbl_8054C0E8@ha
/* 8031DBFC 002E71BC  54 C0 10 3A */	slwi r0, r6, 2
/* 8031DC00 002E71C0  38 63 C0 E8 */	addi r3, r3, lbl_8054C0E8@l
/* 8031DC04 002E71C4  7C 03 00 2E */	lwzx r0, r3, r0
.L_8031DC08:
/* 8031DC08 002E71C8  2C 05 00 FF */	cmpwi r5, 0xff
/* 8031DC0C 002E71CC  50 08 9A 98 */	rlwimi r8, r0, 19, 10, 12
/* 8031DC10 002E71D0  91 07 01 50 */	stw r8, 0x150(r7)
/* 8031DC14 002E71D4  38 60 00 00 */	li r3, 0x0
/* 8031DC18 002E71D8  41 82 00 10 */	beq .L_8031DC28
/* 8031DC1C 002E71DC  54 A0 05 EF */	rlwinm. r0, r5, 0, 23, 23
/* 8031DC20 002E71E0  40 82 00 08 */	bne .L_8031DC28
/* 8031DC24 002E71E4  38 60 00 01 */	li r3, 0x1
.L_8031DC28:
/* 8031DC28 002E71E8  50 68 93 5A */	rlwimi r8, r3, 18, 13, 13
/* 8031DC2C 002E71EC  91 07 01 50 */	stw r8, 0x150(r7)
/* 8031DC30 002E71F0  48 00 00 5C */	b .L_8031DC8C
.L_8031DC34:
/* 8031DC34 002E71F4  81 07 01 50 */	lwz r8, 0x150(r7)
/* 8031DC38 002E71F8  2C 06 00 FF */	cmpwi r6, 0xff
/* 8031DC3C 002E71FC  51 28 07 7E */	rlwimi r8, r9, 0, 29, 31
/* 8031DC40 002E7200  50 88 1E B8 */	rlwimi r8, r4, 3, 26, 28
/* 8031DC44 002E7204  91 07 01 50 */	stw r8, 0x150(r7)
/* 8031DC48 002E7208  40 82 00 0C */	bne .L_8031DC54
/* 8031DC4C 002E720C  38 00 00 07 */	li r0, 0x7
/* 8031DC50 002E7210  48 00 00 14 */	b .L_8031DC64
.L_8031DC54:
/* 8031DC54 002E7214  3C 60 80 55 */	lis r3, lbl_8054C0E8@ha
/* 8031DC58 002E7218  54 C0 10 3A */	slwi r0, r6, 2
/* 8031DC5C 002E721C  38 63 C0 E8 */	addi r3, r3, lbl_8054C0E8@l
/* 8031DC60 002E7220  7C 03 00 2E */	lwzx r0, r3, r0
.L_8031DC64:
/* 8031DC64 002E7224  2C 05 00 FF */	cmpwi r5, 0xff
/* 8031DC68 002E7228  50 08 3D B0 */	rlwimi r8, r0, 7, 22, 24
/* 8031DC6C 002E722C  91 07 01 50 */	stw r8, 0x150(r7)
/* 8031DC70 002E7230  38 60 00 00 */	li r3, 0x0
/* 8031DC74 002E7234  41 82 00 10 */	beq .L_8031DC84
/* 8031DC78 002E7238  54 A0 05 EF */	rlwinm. r0, r5, 0, 23, 23
/* 8031DC7C 002E723C  40 82 00 08 */	bne .L_8031DC84
/* 8031DC80 002E7240  38 60 00 01 */	li r3, 0x1
.L_8031DC84:
/* 8031DC84 002E7244  50 68 36 72 */	rlwimi r8, r3, 6, 25, 25
/* 8031DC88 002E7248  91 07 01 50 */	stw r8, 0x150(r7)
.L_8031DC8C:
/* 8031DC8C 002E724C  3C 80 CC 01 */	lis r4, 0xcc01
/* 8031DC90 002E7250  38 00 00 61 */	li r0, 0x61
/* 8031DC94 002E7254  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031DC98 002E7258  38 00 00 00 */	li r0, 0x0
/* 8031DC9C 002E725C  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031DCA0 002E7260  80 67 01 50 */	lwz r3, 0x150(r7)
/* 8031DCA4 002E7264  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8031DCA8 002E7268  B0 05 00 02 */	sth r0, 0x2(r5)
/* 8031DCAC 002E726C  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 8031DCB0 002E7270  60 00 00 01 */	ori r0, r0, 0x1
/* 8031DCB4 002E7274  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 8031DCB8 002E7278  4E 80 00 20 */	blr
.endfn GXSetTevOrder
/* 8031DCBC 002E727C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn GXSetNumTevStages, global
/* 8031DCC0 002E7280  80 82 BC 20 */	lwz r4, lbl_8066BFA0@sda21(r2)
/* 8031DCC4 002E7284  38 03 FF FF */	addi r0, r3, -0x1
/* 8031DCC8 002E7288  80 64 02 54 */	lwz r3, 0x254(r4)
/* 8031DCCC 002E728C  50 03 54 AA */	rlwimi r3, r0, 10, 18, 21
/* 8031DCD0 002E7290  90 64 02 54 */	stw r3, 0x254(r4)
/* 8031DCD4 002E7294  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 8031DCD8 002E7298  60 00 00 04 */	ori r0, r0, 0x4
/* 8031DCDC 002E729C  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 8031DCE0 002E72A0  4E 80 00 20 */	blr
.endfn GXSetNumTevStages
/* 8031DCE4 002E72A4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031DCE8 002E72A8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8031DCEC 002E72AC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

# 0x8054C098 - 0x8054C110
.data
.balign 8
.sym lbl_8054C098, global
	.4byte 0xC008F8AF
	.4byte 0xC008A89F
	.4byte 0xC008AC8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFFA
	.4byte 0xC008F80F
	.4byte 0xC008089F
	.4byte 0xC0080C8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFF0
	.4byte 0xC108F2F0
	.4byte 0xC108FFD0
	.4byte 0xC108F2F0
	.4byte 0xC108FFC0
	.4byte 0xC108FFD0
	.4byte 0xC108F070
	.4byte 0xC108FF80
	.4byte 0xC108F070
	.4byte 0xC108FFC0
	.4byte 0xC108FF80
.sym lbl_8054C0E8, global
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000000
