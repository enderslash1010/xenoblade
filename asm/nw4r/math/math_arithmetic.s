.include "macros.inc"
.file "nw4r/math/math_arithmetic.o"

# 0x8040ABF0 - 0x8040AD2C
.text
.balign 4

# nw4r::math::detail::FExp(float)
.fn FExp__Q34nw4r4math6detailFf, global
/* 8040ABF0 003D41B0  C0 02 C2 80 */	lfs f0, lbl_8066C600@sda21(r2)
/* 8040ABF4 003D41B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040ABF8 003D41B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040ABFC 003D41BC  F0 01 D0 18 */	psq_st f0, 0x18(r1), 1, qr5
/* 8040AC00 003D41C0  A8 01 00 18 */	lha r0, 0x18(r1)
/* 8040AC04 003D41C4  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8040AC08 003D41C8  E0 41 D0 0A */	psq_l f2, 0xa(r1), 1, qr5
/* 8040AC0C 003D41CC  C0 62 C2 84 */	lfs f3, lbl_8066C604@sda21(r2)
/* 8040AC10 003D41D0  C0 02 C2 88 */	lfs f0, lbl_8066C608@sda21(r2)
/* 8040AC14 003D41D4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8040AC18 003D41D8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8040AC1C 003D41DC  EC 23 08 2A */	fadds f1, f3, f1
/* 8040AC20 003D41E0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040AC24 003D41E4  F0 21 B0 14 */	psq_st f1, 0x14(r1), 1, qr3
/* 8040AC28 003D41E8  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 8040AC2C 003D41EC  B0 61 00 08 */	sth r3, 0x8(r1)
/* 8040AC30 003D41F0  E0 01 B0 08 */	psq_l f0, 0x8(r1), 1, qr3
/* 8040AC34 003D41F4  3C A0 80 57 */	lis r5, lbl_8056D5B0@ha
/* 8040AC38 003D41F8  54 66 18 38 */	slwi r6, r3, 3
/* 8040AC3C 003D41FC  54 03 B8 10 */	slwi r3, r0, 23
/* 8040AC40 003D4200  38 A5 D5 B0 */	addi r5, r5, lbl_8056D5B0@l
/* 8040AC44 003D4204  EC 41 00 28 */	fsubs f2, f1, f0
/* 8040AC48 003D4208  7C 85 32 14 */	add r4, r5, r6
/* 8040AC4C 003D420C  7C 05 34 2E */	lfsx f0, r5, r6
/* 8040AC50 003D4210  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8040AC54 003D4214  EC 22 00 72 */	fmuls f1, f2, f1
/* 8040AC58 003D4218  EC 00 08 2A */	fadds f0, f0, f1
/* 8040AC5C 003D421C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8040AC60 003D4220  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8040AC64 003D4224  7C 03 02 14 */	add r0, r3, r0
/* 8040AC68 003D4228  54 00 00 7E */	clrlwi r0, r0, 1
/* 8040AC6C 003D422C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8040AC70 003D4230  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8040AC74 003D4234  38 21 00 20 */	addi r1, r1, 0x20
/* 8040AC78 003D4238  4E 80 00 20 */	blr
.endfn FExp__Q34nw4r4math6detailFf

# nw4r::math::detail::FLog(float)
.fn FLog__Q34nw4r4math6detailFf, global
/* 8040AC7C 003D423C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040AC80 003D4240  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8040AC84 003D4244  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8040AC88 003D4248  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8040AC8C 003D424C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8040AC90 003D4250  54 63 4E 3E */	extrwi r3, r3, 8, 1
/* 8040AC94 003D4254  54 00 02 40 */	rlwinm r0, r0, 0, 9, 0
/* 8040AC98 003D4258  38 63 FF 81 */	addi r3, r3, -0x7f
/* 8040AC9C 003D425C  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8040ACA0 003D4260  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8040ACA4 003D4264  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040ACA8 003D4268  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8040ACAC 003D426C  E0 61 D0 0A */	psq_l f3, 0xa(r1), 1, qr5
/* 8040ACB0 003D4270  C0 22 C2 90 */	lfs f1, lbl_8066C610@sda21(r2)
/* 8040ACB4 003D4274  C0 02 C2 8C */	lfs f0, lbl_8066C60C@sda21(r2)
/* 8040ACB8 003D4278  EC 22 08 28 */	fsubs f1, f2, f1
/* 8040ACBC 003D427C  EC 40 00 72 */	fmuls f2, f0, f1
/* 8040ACC0 003D4280  F0 41 B0 0C */	psq_st f2, 0xc(r1), 1, qr3
/* 8040ACC4 003D4284  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8040ACC8 003D4288  B0 01 00 08 */	sth r0, 0x8(r1)
/* 8040ACCC 003D428C  E0 21 B0 08 */	psq_l f1, 0x8(r1), 1, qr3
/* 8040ACD0 003D4290  3C 80 80 57 */	lis r4, lbl_8056D6B8@ha
/* 8040ACD4 003D4294  C0 02 C2 84 */	lfs f0, lbl_8066C604@sda21(r2)
/* 8040ACD8 003D4298  54 00 18 38 */	slwi r0, r0, 3
/* 8040ACDC 003D429C  38 84 D6 B8 */	addi r4, r4, lbl_8056D6B8@l
/* 8040ACE0 003D42A0  EC 82 08 28 */	fsubs f4, f2, f1
/* 8040ACE4 003D42A4  7C 64 02 14 */	add r3, r4, r0
/* 8040ACE8 003D42A8  7C 24 04 2E */	lfsx f1, r4, r0
/* 8040ACEC 003D42AC  C0 43 00 04 */	lfs f2, 0x4(r3)
/* 8040ACF0 003D42B0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8040ACF4 003D42B4  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8040ACF8 003D42B8  EC 21 10 2A */	fadds f1, f1, f2
/* 8040ACFC 003D42BC  EC 21 00 2A */	fadds f1, f1, f0
/* 8040AD00 003D42C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8040AD04 003D42C4  4E 80 00 20 */	blr
.endfn FLog__Q34nw4r4math6detailFf

# nw4r::math::FrSqrt(float)
.fn FrSqrt__Q24nw4r4mathFf, global
/* 8040AD08 003D42C8  FC 00 08 34 */	frsqrte f0, f1
/* 8040AD0C 003D42CC  C0 42 C2 94 */	lfs f2, lbl_8066C614@sda21(r2)
/* 8040AD10 003D42D0  C0 62 C2 98 */	lfs f3, lbl_8066C618@sda21(r2)
/* 8040AD14 003D42D4  EC 80 00 32 */	fmuls f4, f0, f0
/* 8040AD18 003D42D8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8040AD1C 003D42DC  EC 84 18 7C */	fnmsubs f4, f4, f1, f3
/* 8040AD20 003D42E0  EC 04 00 32 */	fmuls f0, f4, f0
/* 8040AD24 003D42E4  FC 20 00 90 */	fmr f1, f0
/* 8040AD28 003D42E8  4E 80 00 20 */	blr
.endfn FrSqrt__Q24nw4r4mathFf

# 0x8056D5B0 - 0x8056DEC0
.data
.balign 8
.sym lbl_8056D5B0, global
	.4byte 0x3F000000
	.4byte 0x3CB5586D
	.4byte 0x3F05AAC3
	.4byte 0x3CBD5FCF
	.4byte 0x3F0B95C2
	.4byte 0x3CC5C232
	.4byte 0x3F11C3D3
	.4byte 0x3CCE839C
	.4byte 0x3F1837F0
	.4byte 0x3CD7A842
	.4byte 0x3F1EF532
	.4byte 0x3CE13489
	.4byte 0x3F25FED7
	.4byte 0x3CEB2D08
	.4byte 0x3F2D583F
	.4byte 0x3CF59689
	.4byte 0x3F3504F3
	.4byte 0x3D003B07
	.4byte 0x3F3D08A4
	.4byte 0x3D05E867
	.4byte 0x3F45672A
	.4byte 0x3D0BD620
	.4byte 0x3F4E248C
	.4byte 0x3D12070B
	.4byte 0x3F5744FD
	.4byte 0x3D187E22
	.4byte 0x3F60CCDF
	.4byte 0x3D1F3E80
	.4byte 0x3F6AC0C7
	.4byte 0x3D264B63
	.4byte 0x3F75257D
	.4byte 0x3D2DA82F
	.4byte 0x3F800000
	.4byte 0x3D35586D
	.4byte 0x3F85AAC3
	.4byte 0x3D3D5FCF
	.4byte 0x3F8B95C2
	.4byte 0x3D45C232
	.4byte 0x3F91C3D3
	.4byte 0x3D4E839C
	.4byte 0x3F9837F0
	.4byte 0x3D57A842
	.4byte 0x3F9EF532
	.4byte 0x3D613489
	.4byte 0x3FA5FED7
	.4byte 0x3D6B2D08
	.4byte 0x3FAD583F
	.4byte 0x3D759689
	.4byte 0x3FB504F3
	.4byte 0x3D803B07
	.4byte 0x3FBD08A4
	.4byte 0x3D85E867
	.4byte 0x3FC5672A
	.4byte 0x3D8BD620
	.4byte 0x3FCE248C
	.4byte 0x3D92070B
	.4byte 0x3FD744FD
	.4byte 0x3D987E22
	.4byte 0x3FE0CCDF
	.4byte 0x3D9F3E80
	.4byte 0x3FEAC0C7
	.4byte 0x3DA64B63
	.4byte 0x3FF5257D
	.4byte 0x3DADA82F
	.4byte 0x40000000
	.4byte 0x3DB5586D
.sym lbl_8056D6B8, global
	.4byte 0x00000000
	.4byte 0x3B7F8053
	.4byte 0x3B7F8053
	.4byte 0x3B7E8251
	.4byte 0x3BFF0152
	.4byte 0x3B7D8646
	.4byte 0x3C3EE23B
	.4byte 0x3B7C8C29
	.4byte 0x3C7E0546
	.4byte 0x3B7B93F9
	.4byte 0x3C9E7522
	.4byte 0x3B7A9DAF
	.4byte 0x3CBDC8D8
	.4byte 0x3B79A946
	.4byte 0x3CDCFE01
	.4byte 0x3B78B6BA
	.4byte 0x3CFC14D9
	.4byte 0x3B77C602
	.4byte 0x3D0D86CC
	.4byte 0x3B76D719
	.4byte 0x3D1CF43E
	.4byte 0x3B75E9FD
	.4byte 0x3D2C52DE
	.4byte 0x3B74FEA3
	.4byte 0x3D3BA2C8
	.4byte 0x3B74150C
	.4byte 0x3D4AE418
	.4byte 0x3B732D2F
	.4byte 0x3D5A16EC
	.4byte 0x3B72470D
	.4byte 0x3D693B5C
	.4byte 0x3B716299
	.4byte 0x3D785186
	.4byte 0x3B707FD6
	.4byte 0x3D83ACC2
	.4byte 0x3B6F9EB8
	.4byte 0x3D8B29B7
	.4byte 0x3B6EBF3F
	.4byte 0x3D929FB1
	.4byte 0x3B6DE167
	.4byte 0x3D9A0EBD
	.4byte 0x3B6D0527
	.4byte 0x3DA176E6
	.4byte 0x3B6C2A83
	.4byte 0x3DA8D83A
	.4byte 0x3B6B516A
	.4byte 0x3DB032C5
	.4byte 0x3B6A79E0
	.4byte 0x3DB78694
	.4byte 0x3B69A3E2
	.4byte 0x3DBED3B3
	.4byte 0x3B68CF6A
	.4byte 0x3DC61A2F
	.4byte 0x3B67FC71
	.4byte 0x3DCD5A12
	.4byte 0x3B672AF6
	.4byte 0x3DD4936A
	.4byte 0x3B665AF1
	.4byte 0x3DDBC641
	.4byte 0x3B658C66
	.4byte 0x3DE2F2A4
	.4byte 0x3B64BF47
	.4byte 0x3DEA189F
	.4byte 0x3B63F396
	.4byte 0x3DF1383B
	.4byte 0x3B632952
	.4byte 0x3DF85186
	.4byte 0x3B626072
	.4byte 0x3DFF648A
	.4byte 0x3B6198F3
	.4byte 0x3E0338A9
	.4byte 0x3B60D2D4
	.4byte 0x3E06BBF4
	.4byte 0x3B600E10
	.4byte 0x3E0A3C2C
	.4byte 0x3B5F4AA0
	.4byte 0x3E0DB957
	.4byte 0x3B5E8888
	.4byte 0x3E113379
	.4byte 0x3B5DC7BE
	.4byte 0x3E14AA98
	.4byte 0x3B5D083F
	.4byte 0x3E181EB9
	.4byte 0x3B5C4A10
	.4byte 0x3E1B8FE1
	.4byte 0x3B5B8D22
	.4byte 0x3E1EFE16
	.4byte 0x3B5AD177
	.4byte 0x3E22695B
	.4byte 0x3B5A170D
	.4byte 0x3E25D1B8
	.4byte 0x3B595DE2
	.4byte 0x3E29372F
	.4byte 0x3B58A5EB
	.4byte 0x3E2C99C7
	.4byte 0x3B57EF2F
	.4byte 0x3E2FF984
	.4byte 0x3B5739A3
	.4byte 0x3E33566A
	.4byte 0x3B568548
	.4byte 0x3E36B07F
	.4byte 0x3B55D21E
	.4byte 0x3E3A07C8
	.4byte 0x3B552018
	.4byte 0x3E3D5C48
	.4byte 0x3B546F3F
	.4byte 0x3E40AE05
	.4byte 0x3B53BF8A
	.4byte 0x3E43FD03
	.4byte 0x3B5310F4
	.4byte 0x3E474947
	.4byte 0x3B52637E
	.4byte 0x3E4A92D5
	.4byte 0x3B51B724
	.4byte 0x3E4DD9B1
	.4byte 0x3B510BE1
	.4byte 0x3E511DE1
	.4byte 0x3B5061BA
	.4byte 0x3E545F68
	.4byte 0x3B4FB8A5
	.4byte 0x3E579E4A
	.4byte 0x3B4F109F
	.4byte 0x3E5ADA8D
	.4byte 0x3B4E69AC
	.4byte 0x3E5E1434
	.4byte 0x3B4DC3C3
	.4byte 0x3E614B43
	.4byte 0x3B4D1EE4
	.4byte 0x3E647FBE
	.4byte 0x3B4C7B0B
	.4byte 0x3E67B1AA
	.4byte 0x3B4BD839
	.4byte 0x3E6AE10B
	.4byte 0x3B4B366C
	.4byte 0x3E6E0DE5
	.4byte 0x3B4A959D
	.4byte 0x3E71383B
	.4byte 0x3B49F5CB
	.4byte 0x3E746013
	.4byte 0x3B4956F2
	.4byte 0x3E77856E
	.4byte 0x3B48B917
	.4byte 0x3E7AA853
	.4byte 0x3B481C2C
	.4byte 0x3E7DC8C3
	.4byte 0x3B47803A
	.4byte 0x3E807362
	.4byte 0x3B46E53D
	.4byte 0x3E82012D
	.4byte 0x3B464B2D
	.4byte 0x3E838DC3
	.4byte 0x3B45B20D
	.4byte 0x3E851927
	.4byte 0x3B4519D4
	.4byte 0x3E86A35B
	.4byte 0x3B448288
	.4byte 0x3E882C60
	.4byte 0x3B43EC24
	.4byte 0x3E89B438
	.4byte 0x3B4356A4
	.4byte 0x3E8B3AE5
	.4byte 0x3B42C207
	.4byte 0x3E8CC069
	.4byte 0x3B422E4E
	.4byte 0x3E8E44C6
	.4byte 0x3B419B74
	.4byte 0x3E8FC7FD
	.4byte 0x3B410975
	.4byte 0x3E914A10
	.4byte 0x3B407856
	.4byte 0x3E92CB01
	.4byte 0x3B3FE80D
	.4byte 0x3E944AD1
	.4byte 0x3B3F589B
	.4byte 0x3E95C982
	.4byte 0x3B3ECA00
	.4byte 0x3E974716
	.4byte 0x3B3E3C3B
	.4byte 0x3E98C38E
	.4byte 0x3B3DAF45
	.4byte 0x3E9A3EED
	.4byte 0x3B3D2321
	.4byte 0x3E9BB933
	.4byte 0x3B3C97CB
	.4byte 0x3E9D3263
	.4byte 0x3B3C0D40
	.4byte 0x3E9EAA7D
	.4byte 0x3B3B8382
	.4byte 0x3EA02184
	.4byte 0x3B3AFA8E
	.4byte 0x3EA19779
	.4byte 0x3B3A7260
	.4byte 0x3EA30C5E
	.4byte 0x3B39EAF7
	.4byte 0x3EA48034
	.4byte 0x3B396454
	.4byte 0x3EA5F2FD
	.4byte 0x3B38DE72
	.4byte 0x3EA764BA
	.4byte 0x3B385952
	.4byte 0x3EA8D56C
	.4byte 0x3B37D4F2
	.4byte 0x3EAA4516
	.4byte 0x3B375150
	.4byte 0x3EABB3B9
	.4byte 0x3B36CE66
	.4byte 0x3EAD2156
	.4byte 0x3B364C3A
	.4byte 0x3EAE8DEE
	.4byte 0x3B35CAC6
	.4byte 0x3EAFF984
	.4byte 0x3B354A06
	.4byte 0x3EB16418
	.4byte 0x3B34C9FF
	.4byte 0x3EB2CDAC
	.4byte 0x3B344AAD
	.4byte 0x3EB43641
	.4byte 0x3B33CC0F
	.4byte 0x3EB59DD9
	.4byte 0x3B334E21
	.4byte 0x3EB70475
	.4byte 0x3B32D0E3
	.4byte 0x3EB86A17
	.4byte 0x3B325451
	.4byte 0x3EB9CEC0
	.4byte 0x3B31D86F
	.4byte 0x3EBB3271
	.4byte 0x3B315D38
	.4byte 0x3EBC952B
	.4byte 0x3B30E2AA
	.4byte 0x3EBDF6F0
	.4byte 0x3B3068C7
	.4byte 0x3EBF57C2
	.4byte 0x3B2FEF87
	.4byte 0x3EC0B7A1
	.4byte 0x3B2F76F3
	.4byte 0x3EC2168F
	.4byte 0x3B2EFF02
	.4byte 0x3EC3748D
	.4byte 0x3B2E87B0
	.4byte 0x3EC4D19C
	.4byte 0x3B2E1106
	.4byte 0x3EC62DBE
	.4byte 0x3B2D9AFB
	.4byte 0x3EC788F4
	.4byte 0x3B2D258E
	.4byte 0x3EC8E33F
	.4byte 0x3B2CB0C5
	.4byte 0x3ECA3CA1
	.4byte 0x3B2C3C92
	.4byte 0x3ECB951A
	.4byte 0x3B2BC8FE
	.4byte 0x3ECCECAC
	.4byte 0x3B2B5609
	.4byte 0x3ECE4358
	.4byte 0x3B2AE3A6
	.4byte 0x3ECF991F
	.4byte 0x3B2A71E2
	.4byte 0x3ED0EE03
	.4byte 0x3B2A00AF
	.4byte 0x3ED24205
	.4byte 0x3B299018
	.4byte 0x3ED39525
	.4byte 0x3B292012
	.4byte 0x3ED4E765
	.4byte 0x3B28B09F
	.4byte 0x3ED638C6
	.4byte 0x3B2841C2
	.4byte 0x3ED7894A
	.4byte 0x3B27D372
	.4byte 0x3ED8D8F0
	.4byte 0x3B2765B5
	.4byte 0x3EDA27BC
	.4byte 0x3B26F885
	.4byte 0x3EDB75AD
	.4byte 0x3B268BE4
	.4byte 0x3EDCC2C5
	.4byte 0x3B261FD4
	.4byte 0x3EDE0F04
	.4byte 0x3B25B449
	.4byte 0x3EDF5A6D
	.4byte 0x3B25494C
	.4byte 0x3EE0A500
	.4byte 0x3B24DEDD
	.4byte 0x3EE1EEBD
	.4byte 0x3B2474F2
	.4byte 0x3EE337A7
	.4byte 0x3B240B8D
	.4byte 0x3EE47FBE
	.4byte 0x3B23A2B2
	.4byte 0x3EE5C704
	.4byte 0x3B233A5C
	.4byte 0x3EE70D78
	.4byte 0x3B22D28A
	.4byte 0x3EE8531D
	.4byte 0x3B226B3E
	.4byte 0x3EE997F4
	.4byte 0x3B220473
	.4byte 0x3EEADBFD
	.4byte 0x3B219E28
	.4byte 0x3EEC1F39
	.4byte 0x3B213863
	.4byte 0x3EED61AA
	.4byte 0x3B20D31A
	.4byte 0x3EEEA350
	.4byte 0x3B206E53
	.4byte 0x3EEFE42D
	.4byte 0x3B200A07
	.4byte 0x3EF12441
	.4byte 0x3B1FA639
	.4byte 0x3EF2638D
	.4byte 0x3B1F42E6
	.4byte 0x3EF3A213
	.4byte 0x3B1EE011
	.4byte 0x3EF4DFD3
	.4byte 0x3B1E7DB3
	.4byte 0x3EF61CCF
	.4byte 0x3B1E1BCE
	.4byte 0x3EF75906
	.4byte 0x3B1DBA66
	.4byte 0x3EF8947B
	.4byte 0x3B1D5975
	.4byte 0x3EF9CF2E
	.4byte 0x3B1CF8F9
	.4byte 0x3EFB0920
	.4byte 0x3B1C98F1
	.4byte 0x3EFC4252
	.4byte 0x3B1C3960
	.4byte 0x3EFD7AC4
	.4byte 0x3B1BDA44
	.4byte 0x3EFEB279
	.4byte 0x3B1B7B9C
	.4byte 0x3EFFE970
	.4byte 0x3B1B1D68
	.4byte 0x3F008FD6
	.4byte 0x3B1ABFA3
	.4byte 0x3F012A95
	.4byte 0x3B1A6253
	.4byte 0x3F01C4F7
	.4byte 0x3B1A056D
	.4byte 0x3F025EFD
	.4byte 0x3B19A8FC
	.4byte 0x3F02F8A6
	.4byte 0x3B194CF6
	.4byte 0x3F0391F3
	.4byte 0x3B18F160
	.4byte 0x3F042AE4
	.4byte 0x3B189639
	.4byte 0x3F04C37A
	.4byte 0x3B183B7A
	.4byte 0x3F055BB6
	.4byte 0x3B17E12A
	.4byte 0x3F05F397
	.4byte 0x3B178746
	.4byte 0x3F068B1E
	.4byte 0x3B172DC8
	.4byte 0x3F07224C
	.4byte 0x3B16D4B6
	.4byte 0x3F07B921
	.4byte 0x3B167C0B
	.4byte 0x3F084F9D
	.4byte 0x3B1623CC
	.4byte 0x3F08E5C1
	.4byte 0x3B15CBEF
	.4byte 0x3F097B8D
	.4byte 0x3B15747E
	.4byte 0x3F0A1101
	.4byte 0x3B151D6F
	.4byte 0x3F0AA61F
	.4byte 0x3B14C6C8
	.4byte 0x3F0B3AE5
	.4byte 0x3B147083
	.4byte 0x3F0BCF56
	.4byte 0x3B141AA1
	.4byte 0x3F0C6371
	.4byte 0x3B13C522
	.4byte 0x3F0CF736
	.4byte 0x3B13700A
	.4byte 0x3F0D8AA6
	.4byte 0x3B131B50
	.4byte 0x3F0E1DC1
	.4byte 0x3B12C6F9
	.4byte 0x3F0EB088
	.4byte 0x3B127301
	.4byte 0x3F0F42FB
	.4byte 0x3B121F67
	.4byte 0x3F0FD51A
	.4byte 0x3B11CC30
	.4byte 0x3F1066E7
	.4byte 0x3B117958
	.4byte 0x3F10F860
	.4byte 0x3B1126D9
	.4byte 0x3F118987
	.4byte 0x3B10D4BE
	.4byte 0x3F121A5B
	.4byte 0x3B1082FC
	.4byte 0x3F12AADE
	.4byte 0x3B103195
	.4byte 0x3F133B10
	.4byte 0x3B0FE08D
	.4byte 0x3F13CAF1
	.4byte 0x3B0F8FDA
	.4byte 0x3F145A80
	.4byte 0x3B0F3F85
	.4byte 0x3F14E9C0
	.4byte 0x3B0EEF8B
	.4byte 0x3F1578B0
	.4byte 0x3B0E9FE7
	.4byte 0x3F16074F
	.4byte 0x3B0E50A1
	.4byte 0x3F1695A0
	.4byte 0x3B0E01AD
	.4byte 0x3F1723A2
	.4byte 0x3B0DB313
	.4byte 0x3F17B155
	.4byte 0x3B0D64CF
	.4byte 0x3F183EBA
	.4byte 0x3B0D16E1
	.4byte 0x3F18CBD0
	.4byte 0x3B0CC94D
	.4byte 0x3F19589A
	.4byte 0x3B0C7C0B
	.4byte 0x3F19E516
	.4byte 0x3B0C2F1A
	.4byte 0x3F1A7145
	.4byte 0x3B0BE284
	.4byte 0x3F1AFD27
	.4byte 0x3B0B963B
	.4byte 0x3F1B88BE
	.4byte 0x3B0B4A47
	.4byte 0x3F1C1408
	.4byte 0x3B0AFEAA
	.4byte 0x3F1C9F07
	.4byte 0x3B0AB35A
	.4byte 0x3F1D29BA
	.4byte 0x3B0A685B
	.4byte 0x3F1DB422
	.4byte 0x3B0A1DAE
	.4byte 0x3F1E3E40
	.4byte 0x3B09D353
	.4byte 0x3F1EC813
	.4byte 0x3B098949
	.4byte 0x3F1F519D
	.4byte 0x3B093F8D
	.4byte 0x3F1FDADC
	.4byte 0x3B08F61E
	.4byte 0x3F2063D2
	.4byte 0x3B08ACFC
	.4byte 0x3F20EC7F
	.4byte 0x3B08642C
	.4byte 0x3F2174E3
	.4byte 0x3B081BA9
	.4byte 0x3F21FCFF
	.4byte 0x3B07D374
	.4byte 0x3F2284D3
	.4byte 0x3B078B87
	.4byte 0x3F230C5E
	.4byte 0x3B0743E8
	.4byte 0x3F2393A2
	.4byte 0x3B06FC96
	.4byte 0x3F241A9F
	.4byte 0x3B06B58D
	.4byte 0x3F24A154
	.4byte 0x3B066ED1
	.4byte 0x3F2527C3
	.4byte 0x3B06285F
	.4byte 0x3F25ADEB
	.4byte 0x3B05E235
	.4byte 0x3F2633CE
	.4byte 0x3B059C55
	.4byte 0x3F26B96A
	.4byte 0x3B0556BD
	.4byte 0x3F273EC1
	.4byte 0x3B05116F
	.4byte 0x3F27C3D2
	.4byte 0x3B04CC65
	.4byte 0x3F28489E
	.4byte 0x3B0487A4
	.4byte 0x3F28CD26
	.4byte 0x3B04432C
	.4byte 0x3F295169
	.4byte 0x3B03FEF9
	.4byte 0x3F29D568
	.4byte 0x3B03BB0F
	.4byte 0x3F2A5923
	.4byte 0x3B03776A
	.4byte 0x3F2ADC9B
	.4byte 0x3B033409
	.4byte 0x3F2B5FCF
	.4byte 0x3B02F0EE
	.4byte 0x3F2BE2C0
	.4byte 0x3B02AE16
	.4byte 0x3F2C656E
	.4byte 0x3B026B80
	.4byte 0x3F2CE7D9
	.4byte 0x3B022932
	.4byte 0x3F2D6A02
	.4byte 0x3B01E725
	.4byte 0x3F2DEBEA
	.4byte 0x3B01A55C
	.4byte 0x3F2E6D8F
	.4byte 0x3B0163D4
	.4byte 0x3F2EEEF3
	.4byte 0x3B012291
	.4byte 0x3F2F7015
	.4byte 0x3B00E18E
	.4byte 0x3F2FF0F7
	.4byte 0x3B00A0CB
	.4byte 0x3F307198
	.4byte 0x3B006049
	.4byte 0x3F30F1F8
	.4byte 0x3B00200B
	.4byte 0x3F317218
	.4byte 0x3AFFC014

# 0x8066C600 - 0x8066C620
.section .sdata2, "a"
.balign 8
.sym lbl_8066C600, global
	.4byte 0x3FB8AA3B
.sym lbl_8066C604, global
	.4byte 0x3F317218
.sym lbl_8066C608, global
	.4byte 0x41B8AA3B
.sym lbl_8066C60C, global
	.4byte 0x43800000
.sym lbl_8066C610, global
	.4byte 0x3F800000
.sym lbl_8066C614, global
	.4byte 0x3F000000
.sym lbl_8066C618, global
	.4byte 0x40400000
	.4byte 0x00000000
