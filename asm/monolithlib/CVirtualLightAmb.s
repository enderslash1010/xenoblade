.include "macros.inc"
.file "monolithlib/CVirtualLightAmb.o"

# 0x8001EF14 - 0x8001EF24
.section extab, "a"
.balign 4

.obj "@etb_8001EF14", local
.hidden "@etb_8001EF14"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001EF14"

.obj "@etb_8001EF1C", local
.hidden "@etb_8001EF1C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001EF1C"

# 0x80036AC4 - 0x80036ADC
.section extabindex, "a"
.balign 4

.obj "@eti_80036AC4", local
.hidden "@eti_80036AC4"
	.4byte fn_80494678
	.4byte 0x00000044
	.4byte "@etb_8001EF14"
.endobj "@eti_80036AC4"

.obj "@eti_80036AD0", local
.hidden "@eti_80036AD0"
	.4byte fn_804946BC
	.4byte 0x00000040
	.4byte "@etb_8001EF1C"
.endobj "@eti_80036AD0"

# 0x80494678 - 0x804946FC
.text
.balign 4

.fn fn_80494678, global
/* 80494678 0045DC38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049467C 0045DC3C  7C 08 02 A6 */	mflr r0
/* 80494680 0045DC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494684 0045DC44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80494688 0045DC48  7C 7F 1B 78 */	mr r31, r3
/* 8049468C 0045DC4C  48 00 01 0D */	bl fn_80494798
/* 80494690 0045DC50  3C 60 80 57 */	lis r3, __vt__CVirtualLightAmb@ha
/* 80494694 0045DC54  38 00 00 01 */	li r0, 0x1
/* 80494698 0045DC58  38 63 20 C0 */	addi r3, r3, __vt__CVirtualLightAmb@l
/* 8049469C 0045DC5C  90 7F 00 00 */	stw r3, 0x0(r31)
/* 804946A0 0045DC60  7F E3 FB 78 */	mr r3, r31
/* 804946A4 0045DC64  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 804946A8 0045DC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804946AC 0045DC6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804946B0 0045DC70  7C 08 03 A6 */	mtlr r0
/* 804946B4 0045DC74  38 21 00 10 */	addi r1, r1, 0x10
/* 804946B8 0045DC78  4E 80 00 20 */	blr
.endfn fn_80494678

.fn fn_804946BC, global
/* 804946BC 0045DC7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804946C0 0045DC80  7C 08 02 A6 */	mflr r0
/* 804946C4 0045DC84  2C 03 00 00 */	cmpwi r3, 0x0
/* 804946C8 0045DC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804946CC 0045DC8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804946D0 0045DC90  7C 7F 1B 78 */	mr r31, r3
/* 804946D4 0045DC94  41 82 00 10 */	beq .L_804946E4
/* 804946D8 0045DC98  2C 04 00 00 */	cmpwi r4, 0x0
/* 804946DC 0045DC9C  40 81 00 08 */	ble .L_804946E4
/* 804946E0 0045DCA0  4B FA 05 4D */	bl __dl__FPv
.L_804946E4:
/* 804946E4 0045DCA4  7F E3 FB 78 */	mr r3, r31
/* 804946E8 0045DCA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804946EC 0045DCAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804946F0 0045DCB0  7C 08 03 A6 */	mtlr r0
/* 804946F4 0045DCB4  38 21 00 10 */	addi r1, r1, 0x10
/* 804946F8 0045DCB8  4E 80 00 20 */	blr
.endfn fn_804946BC

# 0x80527978 - 0x8052798C
.rodata
.balign 8

.obj CVirtualLightAmb_typestr, global
	.4byte 0x43566972
	.4byte 0x7475616C
	.4byte 0x4C696768
	.4byte 0x74416D62
	.4byte 0x00000000

# 0x805720C0 - 0x805720E0
.data
.balign 8

.obj __vt__CVirtualLightAmb, global
	.4byte __RTTI__CVirtualLightAmb
	.4byte 0x00000000
	.4byte fn_804946BC
	.4byte fn_804947EC
	.4byte fn_8049488C

.obj CVirtualLightAmb_hierarchy, global
	.4byte __RTTI__CVirtualLightObj
	.4byte 0x00000000
	.4byte 0x00000000

# 0x806662E8 - 0x806662F0
.section .sdata, "wa"
.balign 8

.obj __RTTI__CVirtualLightAmb, global
	.4byte CVirtualLightAmb_typestr
	.4byte CVirtualLightAmb_hierarchy
