.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__Q34nw4r3snd15FxReverbStdDpl2Fv, global
/* 804165B0 003DFB70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804165B4 003DFB74  7C 08 02 A6 */	mflr r0
/* 804165B8 003DFB78  3C A0 80 57 */	lis r5, lbl_8056E0C8@ha
/* 804165BC 003DFB7C  C0 A2 C4 18 */	lfs f5, float_8066C798@sda21(r2)
/* 804165C0 003DFB80  90 01 00 44 */	stw r0, 0x44(r1)
/* 804165C4 003DFB84  38 C0 00 00 */	li r6, 0
/* 804165C8 003DFB88  C0 22 C4 28 */	lfs f1, float_8066C7A8@sda21(r2)
/* 804165CC 003DFB8C  38 A5 E0 C8 */	addi r5, r5, lbl_8056E0C8@l
/* 804165D0 003DFB90  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804165D4 003DFB94  38 00 00 05 */	li r0, 5
/* 804165D8 003DFB98  C0 82 C4 1C */	lfs f4, float_8066C79C@sda21(r2)
/* 804165DC 003DFB9C  7C 7F 1B 78 */	mr r31, r3
/* 804165E0 003DFBA0  C0 62 C4 20 */	lfs f3, float_8066C7A0@sda21(r2)
/* 804165E4 003DFBA4  38 81 00 08 */	addi r4, r1, 8
/* 804165E8 003DFBA8  C0 42 C4 24 */	lfs f2, float_8066C7A4@sda21(r2)
/* 804165EC 003DFBAC  C0 02 C4 2C */	lfs f0, float_8066C7AC@sda21(r2)
/* 804165F0 003DFBB0  90 C3 00 04 */	stw r6, 4(r3)
/* 804165F4 003DFBB4  90 C3 00 08 */	stw r6, 8(r3)
/* 804165F8 003DFBB8  90 A3 00 00 */	stw r5, 0(r3)
/* 804165FC 003DFBBC  98 C3 00 0C */	stb r6, 0xc(r3)
/* 80416600 003DFBC0  90 C3 00 14 */	stw r6, 0x14(r3)
/* 80416604 003DFBC4  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80416608 003DFBC8  D0 A3 00 1C */	stfs f5, 0x1c(r3)
/* 8041660C 003DFBCC  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 80416610 003DFBD0  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80416614 003DFBD4  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 80416618 003DFBD8  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8041661C 003DFBDC  90 03 00 30 */	stw r0, 0x30(r3)
/* 80416620 003DFBE0  D0 A3 00 34 */	stfs f5, 0x34(r3)
/* 80416624 003DFBE4  90 C3 00 38 */	stw r6, 0x38(r3)
/* 80416628 003DFBE8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8041662C 003DFBEC  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80416630 003DFBF0  D0 A1 00 08 */	stfs f5, 8(r1)
/* 80416634 003DFBF4  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80416638 003DFBF8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8041663C 003DFBFC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80416640 003DFC00  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80416644 003DFC04  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80416648 003DFC08  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 8041664C 003DFC0C  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80416650 003DFC10  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80416654 003DFC14  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80416658 003DFC18  48 00 02 25 */	bl SetParam__Q34nw4r3snd15FxReverbStdDpl2FRCQ44nw4r3snd6detail16FxReverbStdParam
/* 8041665C 003DFC1C  7F E3 FB 78 */	mr r3, r31
/* 80416660 003DFC20  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80416664 003DFC24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80416668 003DFC28  7C 08 03 A6 */	mtlr r0
/* 8041666C 003DFC2C  38 21 00 40 */	addi r1, r1, 0x40
/* 80416670 003DFC30  4E 80 00 20 */	blr 
.endfn __ct__Q34nw4r3snd15FxReverbStdDpl2Fv

.fn GetRequiredMemSize__Q34nw4r3snd15FxReverbStdDpl2Fv, global
/* 80416674 003DFC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416678 003DFC38  7C 08 02 A6 */	mflr r0
/* 8041667C 003DFC3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416680 003DFC40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416684 003DFC44  7C 7F 1B 78 */	mr r31, r3
/* 80416688 003DFC48  38 63 00 44 */	addi r3, r3, 0x44
/* 8041668C 003DFC4C  4B EC 13 05 */	bl AXFXReverbStdExpGetMemSize
/* 80416690 003DFC50  38 03 00 87 */	addi r0, r3, 0x87
/* 80416694 003DFC54  38 7F 01 2C */	addi r3, r31, 0x12c
/* 80416698 003DFC58  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 8041669C 003DFC5C  4B EC 20 25 */	bl AXFXReverbStdExpGetMemSizeDpl2
/* 804166A0 003DFC60  38 03 00 87 */	addi r0, r3, 0x87
/* 804166A4 003DFC64  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 804166A8 003DFC68  7C 03 F8 40 */	cmplw r3, r31
/* 804166AC 003DFC6C  40 80 00 08 */	bge .L_804166B4
/* 804166B0 003DFC70  7F E3 FB 78 */	mr r3, r31
.L_804166B4:
/* 804166B4 003DFC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804166B8 003DFC78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804166BC 003DFC7C  7C 08 03 A6 */	mtlr r0
/* 804166C0 003DFC80  38 21 00 10 */	addi r1, r1, 0x10
/* 804166C4 003DFC84  4E 80 00 20 */	blr 
.endfn GetRequiredMemSize__Q34nw4r3snd15FxReverbStdDpl2Fv

.fn AssignWorkBuffer__Q34nw4r3snd15FxReverbStdDpl2FPvUl, global
/* 804166C8 003DFC88  38 63 00 14 */	addi r3, r3, 0x14
/* 804166CC 003DFC8C  4B FF AE E8 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl
.endfn AssignWorkBuffer__Q34nw4r3snd15FxReverbStdDpl2FPvUl

.fn ReleaseWorkBuffer__Q34nw4r3snd15FxReverbStdDpl2Fv, global
/* 804166D0 003DFC90  38 63 00 14 */	addi r3, r3, 0x14
/* 804166D4 003DFC94  4B FF AF 48 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv
.endfn ReleaseWorkBuffer__Q34nw4r3snd15FxReverbStdDpl2Fv

.fn StartUp__Q34nw4r3snd15FxReverbStdDpl2Fv, global
/* 804166D8 003DFC98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804166DC 003DFC9C  7C 08 02 A6 */	mflr r0
/* 804166E0 003DFCA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804166E4 003DFCA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804166E8 003DFCA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804166EC 003DFCAC  7C 7E 1B 78 */	mr r30, r3
/* 804166F0 003DFCB0  38 63 00 44 */	addi r3, r3, 0x44
/* 804166F4 003DFCB4  4B EC 12 9D */	bl AXFXReverbStdExpGetMemSize
/* 804166F8 003DFCB8  38 03 00 87 */	addi r0, r3, 0x87
/* 804166FC 003DFCBC  38 7E 01 2C */	addi r3, r30, 0x12c
/* 80416700 003DFCC0  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 80416704 003DFCC4  4B EC 1F BD */	bl AXFXReverbStdExpGetMemSizeDpl2
/* 80416708 003DFCC8  38 03 00 87 */	addi r0, r3, 0x87
/* 8041670C 003DFCCC  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80416710 003DFCD0  7C 03 F8 40 */	cmplw r3, r31
/* 80416714 003DFCD4  40 80 00 08 */	bge .L_8041671C
/* 80416718 003DFCD8  7F E3 FB 78 */	mr r3, r31
.L_8041671C:
/* 8041671C 003DFCDC  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80416720 003DFCE0  2C 04 00 00 */	cmpwi r4, 0
/* 80416724 003DFCE4  40 82 00 0C */	bne .L_80416730
/* 80416728 003DFCE8  38 00 00 00 */	li r0, 0
/* 8041672C 003DFCEC  48 00 00 0C */	b .L_80416738
.L_80416730:
/* 80416730 003DFCF0  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80416734 003DFCF4  7C 04 00 50 */	subf r0, r4, r0
.L_80416738:
/* 80416738 003DFCF8  7C 03 00 40 */	cmplw r3, r0
/* 8041673C 003DFCFC  40 81 00 0C */	ble .L_80416748
/* 80416740 003DFD00  38 60 00 00 */	li r3, 0
/* 80416744 003DFD04  48 00 00 A4 */	b .L_804167E8
.L_80416748:
/* 80416748 003DFD08  4B FF 62 3D */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8041674C 003DFD0C  4B FF 6A ED */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 80416750 003DFD10  2C 03 00 02 */	cmpwi r3, 2
/* 80416754 003DFD14  40 82 00 44 */	bne .L_80416798
/* 80416758 003DFD18  38 00 00 01 */	li r0, 1
/* 8041675C 003DFD1C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80416760 003DFD20  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80416764 003DFD24  38 81 00 0C */	addi r4, r1, 0xc
/* 80416768 003DFD28  38 A1 00 08 */	addi r5, r1, 8
/* 8041676C 003DFD2C  4B FF AE F5 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80416770 003DFD30  38 7E 01 2C */	addi r3, r30, 0x12c
/* 80416774 003DFD34  4B EC 1F AD */	bl AXFXReverbStdExpInitDpl2
/* 80416778 003DFD38  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8041677C 003DFD3C  7C 7F 1B 78 */	mr r31, r3
/* 80416780 003DFD40  80 A1 00 08 */	lwz r5, 8(r1)
/* 80416784 003DFD44  38 7E 00 14 */	addi r3, r30, 0x14
/* 80416788 003DFD48  4B FF AF 2D */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 8041678C 003DFD4C  38 7E 01 2C */	addi r3, r30, 0x12c
/* 80416790 003DFD50  4B EC 1F 31 */	bl AXFXReverbStdExpGetMemSizeDpl2
/* 80416794 003DFD54  48 00 00 40 */	b .L_804167D4
.L_80416798:
/* 80416798 003DFD58  38 00 00 00 */	li r0, 0
/* 8041679C 003DFD5C  38 7E 00 14 */	addi r3, r30, 0x14
/* 804167A0 003DFD60  90 1E 00 10 */	stw r0, 0x10(r30)
/* 804167A4 003DFD64  38 81 00 0C */	addi r4, r1, 0xc
/* 804167A8 003DFD68  38 A1 00 08 */	addi r5, r1, 8
/* 804167AC 003DFD6C  4B FF AE B5 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 804167B0 003DFD70  38 7E 00 44 */	addi r3, r30, 0x44
/* 804167B4 003DFD74  4B EC 12 3D */	bl AXFXReverbStdExpInit
/* 804167B8 003DFD78  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804167BC 003DFD7C  7C 7F 1B 78 */	mr r31, r3
/* 804167C0 003DFD80  80 A1 00 08 */	lwz r5, 8(r1)
/* 804167C4 003DFD84  38 7E 00 14 */	addi r3, r30, 0x14
/* 804167C8 003DFD88  4B FF AE ED */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 804167CC 003DFD8C  38 7E 00 44 */	addi r3, r30, 0x44
/* 804167D0 003DFD90  4B EC 11 C1 */	bl AXFXReverbStdExpGetMemSize
.L_804167D4:
/* 804167D4 003DFD94  7C 1F 00 D0 */	neg r0, r31
/* 804167D8 003DFD98  38 60 00 01 */	li r3, 1
/* 804167DC 003DFD9C  7C 00 FB 78 */	or r0, r0, r31
/* 804167E0 003DFDA0  98 7E 00 0C */	stb r3, 0xc(r30)
/* 804167E4 003DFDA4  54 03 0F FE */	srwi r3, r0, 0x1f
.L_804167E8:
/* 804167E8 003DFDA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804167EC 003DFDAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804167F0 003DFDB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804167F4 003DFDB4  7C 08 03 A6 */	mtlr r0
/* 804167F8 003DFDB8  38 21 00 20 */	addi r1, r1, 0x20
/* 804167FC 003DFDBC  4E 80 00 20 */	blr 
.endfn StartUp__Q34nw4r3snd15FxReverbStdDpl2Fv

.fn Shutdown__Q34nw4r3snd15FxReverbStdDpl2Fv, global
/* 80416800 003DFDC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80416804 003DFDC4  7C 08 02 A6 */	mflr r0
/* 80416808 003DFDC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041680C 003DFDCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80416810 003DFDD0  7C 7F 1B 78 */	mr r31, r3
/* 80416814 003DFDD4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80416818 003DFDD8  2C 00 00 00 */	cmpwi r0, 0
/* 8041681C 003DFDDC  41 82 00 4C */	beq .L_80416868
/* 80416820 003DFDE0  38 00 00 00 */	li r0, 0
/* 80416824 003DFDE4  38 81 00 0C */	addi r4, r1, 0xc
/* 80416828 003DFDE8  98 03 00 0C */	stb r0, 0xc(r3)
/* 8041682C 003DFDEC  38 63 00 14 */	addi r3, r3, 0x14
/* 80416830 003DFDF0  38 A1 00 08 */	addi r5, r1, 8
/* 80416834 003DFDF4  4B FF AE 2D */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80416838 003DFDF8  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8041683C 003DFDFC  2C 00 00 01 */	cmpwi r0, 1
/* 80416840 003DFE00  40 82 00 10 */	bne .L_80416850
/* 80416844 003DFE04  38 7F 01 2C */	addi r3, r31, 0x12c
/* 80416848 003DFE08  4B EC 22 09 */	bl AXFXReverbStdExpShutdownDpl2
/* 8041684C 003DFE0C  48 00 00 0C */	b .L_80416858
.L_80416850:
/* 80416850 003DFE10  38 7F 00 44 */	addi r3, r31, 0x44
/* 80416854 003DFE14  4B EC 14 AD */	bl AXFXReverbStdExpShutdown
.L_80416858:
/* 80416858 003DFE18  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8041685C 003DFE1C  38 7F 00 14 */	addi r3, r31, 0x14
/* 80416860 003DFE20  80 A1 00 08 */	lwz r5, 8(r1)
/* 80416864 003DFE24  4B FF AE 51 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
.L_80416868:
/* 80416868 003DFE28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041686C 003DFE2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80416870 003DFE30  7C 08 03 A6 */	mtlr r0
/* 80416874 003DFE34  38 21 00 20 */	addi r1, r1, 0x20
/* 80416878 003DFE38  4E 80 00 20 */	blr 
.endfn Shutdown__Q34nw4r3snd15FxReverbStdDpl2Fv

.fn SetParam__Q34nw4r3snd15FxReverbStdDpl2FRCQ44nw4r3snd6detail16FxReverbStdParam, global
/* 8041687C 003DFE3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80416880 003DFE40  7C 08 02 A6 */	mflr r0
/* 80416884 003DFE44  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80416888 003DFE48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041688C 003DFE4C  C1 02 C4 2C */	lfs f8, float_8066C7AC@sda21(r2)
/* 80416890 003DFE50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80416894 003DFE54  7C 7F 1B 78 */	mr r31, r3
/* 80416898 003DFE58  C0 E4 00 00 */	lfs f7, 0(r4)
/* 8041689C 003DFE5C  FC 02 40 40 */	fcmpo cr0, f2, f8
/* 804168A0 003DFE60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804168A4 003DFE64  C0 C4 00 04 */	lfs f6, 4(r4)
/* 804168A8 003DFE68  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804168AC 003DFE6C  C0 A4 00 08 */	lfs f5, 8(r4)
/* 804168B0 003DFE70  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 804168B4 003DFE74  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 804168B8 003DFE78  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 804168BC 003DFE7C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 804168C0 003DFE80  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 804168C4 003DFE84  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 804168C8 003DFE88  D0 E3 00 1C */	stfs f7, 0x1c(r3)
/* 804168CC 003DFE8C  D0 C3 00 20 */	stfs f6, 0x20(r3)
/* 804168D0 003DFE90  D0 A3 00 24 */	stfs f5, 0x24(r3)
/* 804168D4 003DFE94  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 804168D8 003DFE98  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 804168DC 003DFE9C  90 A3 00 30 */	stw r5, 0x30(r3)
/* 804168E0 003DFEA0  D0 43 00 34 */	stfs f2, 0x34(r3)
/* 804168E4 003DFEA4  90 03 00 38 */	stw r0, 0x38(r3)
/* 804168E8 003DFEA8  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 804168EC 003DFEAC  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 804168F0 003DFEB0  40 80 00 08 */	bge .L_804168F8
/* 804168F4 003DFEB4  48 00 00 08 */	b .L_804168FC
.L_804168F8:
/* 804168F8 003DFEB8  FD 00 10 90 */	fmr f8, f2
.L_804168FC:
/* 804168FC 003DFEBC  C0 03 00 FC */	lfs f0, 0xfc(r3)
/* 80416900 003DFEC0  FC 08 00 00 */	fcmpu cr0, f8, f0
/* 80416904 003DFEC4  7C A0 00 26 */	mfcr r5
/* 80416908 003DFEC8  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8041690C 003DFECC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80416910 003DFED0  54 A5 1F FE */	rlwinm r5, r5, 3, 0x1f, 0x1f
/* 80416914 003DFED4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80416918 003DFED8  68 BD 00 01 */	xori r29, r5, 1
/* 8041691C 003DFEDC  90 03 01 FC */	stw r0, 0x1fc(r3)
/* 80416920 003DFEE0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80416924 003DFEE4  90 03 00 F8 */	stw r0, 0xf8(r3)
/* 80416928 003DFEE8  D1 03 02 00 */	stfs f8, 0x200(r3)
/* 8041692C 003DFEEC  D1 03 00 FC */	stfs f8, 0xfc(r3)
/* 80416930 003DFEF0  40 81 00 08 */	ble .L_80416938
/* 80416934 003DFEF4  48 00 00 18 */	b .L_8041694C
.L_80416938:
/* 80416938 003DFEF8  C0 22 C4 2C */	lfs f1, float_8066C7AC@sda21(r2)
/* 8041693C 003DFEFC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80416940 003DFF00  40 80 00 08 */	bge .L_80416948
/* 80416944 003DFF04  48 00 00 08 */	b .L_8041694C
.L_80416948:
/* 80416948 003DFF08  FC 20 00 90 */	fmr f1, f0
.L_8041694C:
/* 8041694C 003DFF0C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80416950 003DFF10  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80416954 003DFF14  C0 42 C4 2C */	lfs f2, float_8066C7AC@sda21(r2)
/* 80416958 003DFF18  D0 23 02 04 */	stfs f1, 0x204(r3)
/* 8041695C 003DFF1C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80416960 003DFF20  D0 23 01 00 */	stfs f1, 0x100(r3)
/* 80416964 003DFF24  90 03 02 08 */	stw r0, 0x208(r3)
/* 80416968 003DFF28  90 03 01 04 */	stw r0, 0x104(r3)
/* 8041696C 003DFF2C  40 80 00 08 */	bge .L_80416974
/* 80416970 003DFF30  48 00 00 08 */	b .L_80416978
.L_80416974:
/* 80416974 003DFF34  FC 40 00 90 */	fmr f2, f0
.L_80416978:
/* 80416978 003DFF38  C0 04 00 08 */	lfs f0, 8(r4)
/* 8041697C 003DFF3C  C0 22 C4 28 */	lfs f1, float_8066C7A8@sda21(r2)
/* 80416980 003DFF40  D0 43 02 0C */	stfs f2, 0x20c(r3)
/* 80416984 003DFF44  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80416988 003DFF48  D0 43 01 08 */	stfs f2, 0x108(r3)
/* 8041698C 003DFF4C  40 81 00 08 */	ble .L_80416994
/* 80416990 003DFF50  48 00 00 18 */	b .L_804169A8
.L_80416994:
/* 80416994 003DFF54  C0 22 C4 2C */	lfs f1, float_8066C7AC@sda21(r2)
/* 80416998 003DFF58  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8041699C 003DFF5C  40 80 00 08 */	bge .L_804169A4
/* 804169A0 003DFF60  48 00 00 08 */	b .L_804169A8
.L_804169A4:
/* 804169A4 003DFF64  FC 20 00 90 */	fmr f1, f0
.L_804169A8:
/* 804169A8 003DFF68  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 804169AC 003DFF6C  C0 42 C4 28 */	lfs f2, float_8066C7A8@sda21(r2)
/* 804169B0 003DFF70  D0 23 02 10 */	stfs f1, 0x210(r3)
/* 804169B4 003DFF74  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804169B8 003DFF78  D0 23 01 0C */	stfs f1, 0x10c(r3)
/* 804169BC 003DFF7C  40 81 00 08 */	ble .L_804169C4
/* 804169C0 003DFF80  48 00 00 18 */	b .L_804169D8
.L_804169C4:
/* 804169C4 003DFF84  C0 42 C4 2C */	lfs f2, float_8066C7AC@sda21(r2)
/* 804169C8 003DFF88  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804169CC 003DFF8C  40 80 00 08 */	bge .L_804169D4
/* 804169D0 003DFF90  48 00 00 08 */	b .L_804169D8
.L_804169D4:
/* 804169D4 003DFF94  FC 40 00 90 */	fmr f2, f0
.L_804169D8:
/* 804169D8 003DFF98  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 804169DC 003DFF9C  C0 22 C4 28 */	lfs f1, float_8066C7A8@sda21(r2)
/* 804169E0 003DFFA0  D0 43 02 14 */	stfs f2, 0x214(r3)
/* 804169E4 003DFFA4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804169E8 003DFFA8  D0 43 01 10 */	stfs f2, 0x110(r3)
/* 804169EC 003DFFAC  40 81 00 08 */	ble .L_804169F4
/* 804169F0 003DFFB0  48 00 00 18 */	b .L_80416A08
.L_804169F4:
/* 804169F4 003DFFB4  C0 22 C4 2C */	lfs f1, float_8066C7AC@sda21(r2)
/* 804169F8 003DFFB8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804169FC 003DFFBC  40 80 00 08 */	bge .L_80416A04
/* 80416A00 003DFFC0  48 00 00 08 */	b .L_80416A08
.L_80416A04:
/* 80416A04 003DFFC4  FC 20 00 90 */	fmr f1, f0
.L_80416A08:
/* 80416A08 003DFFC8  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80416A0C 003DFFCC  C0 42 C4 28 */	lfs f2, float_8066C7A8@sda21(r2)
/* 80416A10 003DFFD0  D0 23 02 18 */	stfs f1, 0x218(r3)
/* 80416A14 003DFFD4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80416A18 003DFFD8  D0 23 01 14 */	stfs f1, 0x114(r3)
/* 80416A1C 003DFFDC  40 81 00 08 */	ble .L_80416A24
/* 80416A20 003DFFE0  48 00 00 18 */	b .L_80416A38
.L_80416A24:
/* 80416A24 003DFFE4  C0 42 C4 2C */	lfs f2, float_8066C7AC@sda21(r2)
/* 80416A28 003DFFE8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80416A2C 003DFFEC  40 80 00 08 */	bge .L_80416A34
/* 80416A30 003DFFF0  48 00 00 08 */	b .L_80416A38
.L_80416A34:
/* 80416A34 003DFFF4  FC 40 00 90 */	fmr f2, f0
.L_80416A38:
/* 80416A38 003DFFF8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80416A3C 003DFFFC  C0 22 C4 28 */	lfs f1, float_8066C7A8@sda21(r2)
/* 80416A40 003E0000  D0 43 02 1C */	stfs f2, 0x21c(r3)
/* 80416A44 003E0004  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80416A48 003E0008  D0 43 01 18 */	stfs f2, 0x118(r3)
/* 80416A4C 003E000C  40 81 00 08 */	ble .L_80416A54
/* 80416A50 003E0010  48 00 00 18 */	b .L_80416A68
.L_80416A54:
/* 80416A54 003E0014  C0 22 C4 2C */	lfs f1, float_8066C7AC@sda21(r2)
/* 80416A58 003E0018  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80416A5C 003E001C  40 80 00 08 */	bge .L_80416A64
/* 80416A60 003E0020  48 00 00 08 */	b .L_80416A68
.L_80416A64:
/* 80416A64 003E0024  FC 20 00 90 */	fmr f1, f0
.L_80416A68:
/* 80416A68 003E0028  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80416A6C 003E002C  38 80 00 00 */	li r4, 0
/* 80416A70 003E0030  C0 02 C4 2C */	lfs f0, float_8066C7AC@sda21(r2)
/* 80416A74 003E0034  2C 00 00 00 */	cmpwi r0, 0
/* 80416A78 003E0038  D0 23 02 28 */	stfs f1, 0x228(r3)
/* 80416A7C 003E003C  D0 23 01 24 */	stfs f1, 0x124(r3)
/* 80416A80 003E0040  90 83 01 1C */	stw r4, 0x11c(r3)
/* 80416A84 003E0044  90 83 01 20 */	stw r4, 0x120(r3)
/* 80416A88 003E0048  D0 03 01 28 */	stfs f0, 0x128(r3)
/* 80416A8C 003E004C  90 83 02 20 */	stw r4, 0x220(r3)
/* 80416A90 003E0050  90 83 02 24 */	stw r4, 0x224(r3)
/* 80416A94 003E0054  D0 03 02 2C */	stfs f0, 0x22c(r3)
/* 80416A98 003E0058  40 82 00 0C */	bne .L_80416AA4
/* 80416A9C 003E005C  38 60 00 01 */	li r3, 1
/* 80416AA0 003E0060  48 00 00 DC */	b .L_80416B7C
.L_80416AA4:
/* 80416AA4 003E0064  38 63 00 44 */	addi r3, r3, 0x44
/* 80416AA8 003E0068  4B EC 0E E9 */	bl AXFXReverbStdExpGetMemSize
/* 80416AAC 003E006C  38 03 00 87 */	addi r0, r3, 0x87
/* 80416AB0 003E0070  38 7F 01 2C */	addi r3, r31, 0x12c
/* 80416AB4 003E0074  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 80416AB8 003E0078  4B EC 1C 09 */	bl AXFXReverbStdExpGetMemSizeDpl2
/* 80416ABC 003E007C  38 03 00 87 */	addi r0, r3, 0x87
/* 80416AC0 003E0080  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80416AC4 003E0084  7C 03 F0 40 */	cmplw r3, r30
/* 80416AC8 003E0088  40 80 00 08 */	bge .L_80416AD0
/* 80416ACC 003E008C  7F C3 F3 78 */	mr r3, r30
.L_80416AD0:
/* 80416AD0 003E0090  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80416AD4 003E0094  2C 04 00 00 */	cmpwi r4, 0
/* 80416AD8 003E0098  40 82 00 0C */	bne .L_80416AE4
/* 80416ADC 003E009C  38 00 00 00 */	li r0, 0
/* 80416AE0 003E00A0  48 00 00 0C */	b .L_80416AEC
.L_80416AE4:
/* 80416AE4 003E00A4  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80416AE8 003E00A8  7C 04 00 50 */	subf r0, r4, r0
.L_80416AEC:
/* 80416AEC 003E00AC  7C 03 00 40 */	cmplw r3, r0
/* 80416AF0 003E00B0  40 81 00 0C */	ble .L_80416AFC
/* 80416AF4 003E00B4  38 60 00 00 */	li r3, 0
/* 80416AF8 003E00B8  48 00 00 84 */	b .L_80416B7C
.L_80416AFC:
/* 80416AFC 003E00BC  2C 1D 00 00 */	cmpwi r29, 0
/* 80416B00 003E00C0  41 82 00 4C */	beq .L_80416B4C
/* 80416B04 003E00C4  38 7F 00 14 */	addi r3, r31, 0x14
/* 80416B08 003E00C8  38 81 00 0C */	addi r4, r1, 0xc
/* 80416B0C 003E00CC  38 A1 00 08 */	addi r5, r1, 8
/* 80416B10 003E00D0  4B FF AB 51 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80416B14 003E00D4  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80416B18 003E00D8  2C 00 00 01 */	cmpwi r0, 1
/* 80416B1C 003E00DC  40 82 00 10 */	bne .L_80416B2C
/* 80416B20 003E00E0  38 7F 01 2C */	addi r3, r31, 0x12c
/* 80416B24 003E00E4  4B EC 1D 9D */	bl AXFXReverbStdExpSettingsDpl2
/* 80416B28 003E00E8  48 00 00 0C */	b .L_80416B34
.L_80416B2C:
/* 80416B2C 003E00EC  38 7F 00 44 */	addi r3, r31, 0x44
/* 80416B30 003E00F0  4B EC 10 41 */	bl AXFXReverbStdExpSettings
.L_80416B34:
/* 80416B34 003E00F4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80416B38 003E00F8  7C 7D 1B 78 */	mr r29, r3
/* 80416B3C 003E00FC  80 A1 00 08 */	lwz r5, 8(r1)
/* 80416B40 003E0100  38 7F 00 14 */	addi r3, r31, 0x14
/* 80416B44 003E0104  4B FF AB 71 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80416B48 003E0108  48 00 00 28 */	b .L_80416B70
.L_80416B4C:
/* 80416B4C 003E010C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80416B50 003E0110  2C 00 00 01 */	cmpwi r0, 1
/* 80416B54 003E0114  40 82 00 10 */	bne .L_80416B64
/* 80416B58 003E0118  38 7F 01 2C */	addi r3, r31, 0x12c
/* 80416B5C 003E011C  4B EC 1E 35 */	bl AXFXReverbStdExpSettingsUpdateDpl2
/* 80416B60 003E0120  48 00 00 0C */	b .L_80416B6C
.L_80416B64:
/* 80416B64 003E0124  38 7F 00 44 */	addi r3, r31, 0x44
/* 80416B68 003E0128  4B EC 10 D9 */	bl AXFXReverbStdExpSettingsUpdate
.L_80416B6C:
/* 80416B6C 003E012C  7C 7D 1B 78 */	mr r29, r3
.L_80416B70:
/* 80416B70 003E0130  7C 1D 00 D0 */	neg r0, r29
/* 80416B74 003E0134  7C 00 EB 78 */	or r0, r0, r29
/* 80416B78 003E0138  54 03 0F FE */	srwi r3, r0, 0x1f
.L_80416B7C:
/* 80416B7C 003E013C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80416B80 003E0140  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80416B84 003E0144  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80416B88 003E0148  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80416B8C 003E014C  7C 08 03 A6 */	mtlr r0
/* 80416B90 003E0150  38 21 00 20 */	addi r1, r1, 0x20
/* 80416B94 003E0154  4E 80 00 20 */	blr 
.endfn SetParam__Q34nw4r3snd15FxReverbStdDpl2FRCQ44nw4r3snd6detail16FxReverbStdParam

.fn UpdateBuffer__Q34nw4r3snd15FxReverbStdDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode, global
/* 80416B98 003E0158  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80416B9C 003E015C  7C 08 02 A6 */	mflr r0
/* 80416BA0 003E0160  7C 64 1B 78 */	mr r4, r3
/* 80416BA4 003E0164  90 01 00 34 */	stw r0, 0x34(r1)
/* 80416BA8 003E0168  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80416BAC 003E016C  2C 00 00 00 */	cmpwi r0, 0
/* 80416BB0 003E0170  41 82 00 78 */	beq .L_80416C28
/* 80416BB4 003E0174  38 08 FF FE */	addi r0, r8, -2
/* 80416BB8 003E0178  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80416BBC 003E017C  7C 00 00 34 */	cntlzw r0, r0
/* 80416BC0 003E0180  54 00 D9 7E */	srwi r0, r0, 5
/* 80416BC4 003E0184  7C 00 18 00 */	cmpw r0, r3
/* 80416BC8 003E0188  40 82 00 60 */	bne .L_80416C28
/* 80416BCC 003E018C  2C 03 00 01 */	cmpwi r3, 1
/* 80416BD0 003E0190  40 82 00 34 */	bne .L_80416C04
/* 80416BD4 003E0194  80 05 00 00 */	lwz r0, 0(r5)
/* 80416BD8 003E0198  38 61 00 18 */	addi r3, r1, 0x18
/* 80416BDC 003E019C  38 84 01 2C */	addi r4, r4, 0x12c
/* 80416BE0 003E01A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80416BE4 003E01A4  80 05 00 04 */	lwz r0, 4(r5)
/* 80416BE8 003E01A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80416BEC 003E01AC  80 05 00 08 */	lwz r0, 8(r5)
/* 80416BF0 003E01B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80416BF4 003E01B4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80416BF8 003E01B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80416BFC 003E01BC  4B EC 1E B5 */	bl AXFXReverbStdExpCallbackDpl2
/* 80416C00 003E01C0  48 00 00 28 */	b .L_80416C28
.L_80416C04:
/* 80416C04 003E01C4  80 05 00 00 */	lwz r0, 0(r5)
/* 80416C08 003E01C8  38 61 00 08 */	addi r3, r1, 8
/* 80416C0C 003E01CC  38 84 00 44 */	addi r4, r4, 0x44
/* 80416C10 003E01D0  90 01 00 08 */	stw r0, 8(r1)
/* 80416C14 003E01D4  80 05 00 04 */	lwz r0, 4(r5)
/* 80416C18 003E01D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80416C1C 003E01DC  80 05 00 08 */	lwz r0, 8(r5)
/* 80416C20 003E01E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80416C24 003E01E4  4B EC 11 3D */	bl AXFXReverbStdExpCallback
.L_80416C28:
/* 80416C28 003E01E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80416C2C 003E01EC  7C 08 03 A6 */	mtlr r0
/* 80416C30 003E01F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80416C34 003E01F4  4E 80 00 20 */	blr 
.endfn UpdateBuffer__Q34nw4r3snd15FxReverbStdDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode

.fn OnChangeOutputMode__Q34nw4r3snd15FxReverbStdDpl2Fv, global
/* 80416C38 003E01F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416C3C 003E01FC  7C 08 02 A6 */	mflr r0
/* 80416C40 003E0200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416C44 003E0204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416C48 003E0208  7C 7F 1B 78 */	mr r31, r3
/* 80416C4C 003E020C  4B FF 5D 39 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 80416C50 003E0210  4B FF 65 E9 */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 80416C54 003E0214  38 63 FF FE */	addi r3, r3, -2
/* 80416C58 003E0218  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80416C5C 003E021C  7C 63 00 34 */	cntlzw r3, r3
/* 80416C60 003E0220  54 63 D9 7E */	srwi r3, r3, 5
/* 80416C64 003E0224  7C 00 18 00 */	cmpw r0, r3
/* 80416C68 003E0228  41 82 00 2C */	beq .L_80416C94
/* 80416C6C 003E022C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80416C70 003E0230  7F E3 FB 78 */	mr r3, r31
/* 80416C74 003E0234  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80416C78 003E0238  7D 89 03 A6 */	mtctr r12
/* 80416C7C 003E023C  4E 80 04 21 */	bctrl 
/* 80416C80 003E0240  81 9F 00 00 */	lwz r12, 0(r31)
/* 80416C84 003E0244  7F E3 FB 78 */	mr r3, r31
/* 80416C88 003E0248  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80416C8C 003E024C  7D 89 03 A6 */	mtctr r12
/* 80416C90 003E0250  4E 80 04 21 */	bctrl 
.L_80416C94:
/* 80416C94 003E0254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416C98 003E0258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416C9C 003E025C  7C 08 03 A6 */	mtlr r0
/* 80416CA0 003E0260  38 21 00 10 */	addi r1, r1, 0x10
/* 80416CA4 003E0264  4E 80 00 20 */	blr 
.endfn OnChangeOutputMode__Q34nw4r3snd15FxReverbStdDpl2Fv

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8056E0C8, global
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3snd15FxReverbStdDpl2Fv
	.4byte StartUp__Q34nw4r3snd15FxReverbStdDpl2Fv
	.4byte Shutdown__Q34nw4r3snd15FxReverbStdDpl2Fv
	.4byte UpdateBuffer__Q34nw4r3snd15FxReverbStdDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte OnChangeOutputMode__Q34nw4r3snd15FxReverbStdDpl2Fv
	.4byte AssignWorkBuffer__Q34nw4r3snd15FxReverbStdDpl2FPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd15FxReverbStdDpl2Fv
	.4byte 0
.endobj lbl_8056E0C8

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8


.obj float_8066C798, global
	.float 0.02
.endobj float_8066C798


.obj float_8066C79C, global
	.float 3
.endobj float_8066C79C


.obj float_8066C7A0, global
	.float 0.6
.endobj float_8066C7A0


.obj float_8066C7A4, global
	.float 0.4
.endobj float_8066C7A4


.obj float_8066C7A8, global
	.float 1.0
.endobj float_8066C7A8


.obj float_8066C7AC, global
	.4byte 0
.endobj float_8066C7AC
