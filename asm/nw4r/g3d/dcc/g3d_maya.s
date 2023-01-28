.include "macros.inc"
.file "nw4r/g3d/dcc/g3d_maya.o"

# 0x803F20DC - 0x803F2D9C
.text
.balign 4

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::MakeTexSrtMtx_S(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn MakeTexSrtMtx_S__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F20DC 003BB69C  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 803F20E0 003BB6A0  C0 02 C1 1C */	lfs f0, lbl_8066C49C@sda21(r2)
/* 803F20E4 003BB6A4  C0 42 C1 18 */	lfs f2, lbl_8066C498@sda21(r2)
/* 803F20E8 003BB6A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 803F20EC 003BB6AC  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 803F20F0 003BB6B0  D0 43 00 04 */	stfs f2, 0x4(r3)
/* 803F20F4 003BB6B4  D0 63 00 00 */	stfs f3, 0x0(r3)
/* 803F20F8 003BB6B8  D0 43 00 08 */	stfs f2, 0x8(r3)
/* 803F20FC 003BB6BC  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 803F2100 003BB6C0  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 803F2104 003BB6C4  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 803F2108 003BB6C8  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 803F210C 003BB6CC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F2110 003BB6D0  4E 80 00 20 */	blr
.endfn MakeTexSrtMtx_S__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::MakeTexSrtMtx_R(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn MakeTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F2114 003BB6D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F2118 003BB6D8  7C 08 02 A6 */	mflr r0
/* 803F211C 003BB6DC  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 803F2120 003BB6E0  C0 02 C1 20 */	lfs f0, lbl_8066C4A0@sda21(r2)
/* 803F2124 003BB6E4  38 81 00 08 */	addi r4, r1, 0x8
/* 803F2128 003BB6E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F212C 003BB6EC  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F2130 003BB6F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F2134 003BB6F4  7C 7F 1B 78 */	mr r31, r3
/* 803F2138 003BB6F8  38 61 00 0C */	addi r3, r1, 0xc
/* 803F213C 003BB6FC  48 01 8C B1 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F2140 003BB700  C0 82 C1 24 */	lfs f4, lbl_8066C4A4@sda21(r2)
/* 803F2144 003BB704  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 803F2148 003BB708  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 803F214C 003BB70C  EC 04 00 72 */	fmuls f0, f4, f1
/* 803F2150 003BB710  C0 42 C1 18 */	lfs f2, lbl_8066C498@sda21(r2)
/* 803F2154 003BB714  EC 64 00 F2 */	fmuls f3, f4, f3
/* 803F2158 003BB718  D0 3F 00 00 */	stfs f1, 0x0(r31)
/* 803F215C 003BB71C  EC 84 00 28 */	fsubs f4, f4, f0
/* 803F2160 003BB720  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F2164 003BB724  D0 1F 00 04 */	stfs f0, 0x4(r31)
/* 803F2168 003BB728  EC 24 18 28 */	fsubs f1, f4, f3
/* 803F216C 003BB72C  D0 5F 00 08 */	stfs f2, 0x8(r31)
/* 803F2170 003BB730  EC 04 18 2A */	fadds f0, f4, f3
/* 803F2174 003BB734  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 803F2178 003BB738  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F217C 003BB73C  FC 20 08 50 */	fneg f1, f1
/* 803F2180 003BB740  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 803F2184 003BB744  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 803F2188 003BB748  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 803F218C 003BB74C  D0 5F 00 18 */	stfs f2, 0x18(r31)
/* 803F2190 003BB750  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 803F2194 003BB754  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F2198 003BB758  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F219C 003BB75C  7C 08 03 A6 */	mtlr r0
/* 803F21A0 003BB760  38 21 00 20 */	addi r1, r1, 0x20
/* 803F21A4 003BB764  4E 80 00 20 */	blr
.endfn MakeTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::MakeTexSrtMtx_T(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn MakeTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F21A8 003BB768  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 803F21AC 003BB76C  C0 42 C1 18 */	lfs f2, lbl_8066C498@sda21(r2)
/* 803F21B0 003BB770  FC 20 00 50 */	fneg f1, f0
/* 803F21B4 003BB774  C0 62 C1 1C */	lfs f3, lbl_8066C49C@sda21(r2)
/* 803F21B8 003BB778  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803F21BC 003BB77C  D0 63 00 00 */	stfs f3, 0x0(r3)
/* 803F21C0 003BB780  D0 43 00 04 */	stfs f2, 0x4(r3)
/* 803F21C4 003BB784  D0 43 00 08 */	stfs f2, 0x8(r3)
/* 803F21C8 003BB788  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 803F21CC 003BB78C  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 803F21D0 003BB790  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 803F21D4 003BB794  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 803F21D8 003BB798  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F21DC 003BB79C  4E 80 00 20 */	blr
.endfn MakeTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::MakeTexSrtMtx_SR(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn MakeTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F21E0 003BB7A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F21E4 003BB7A4  7C 08 02 A6 */	mflr r0
/* 803F21E8 003BB7A8  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 803F21EC 003BB7AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F21F0 003BB7B0  C0 02 C1 20 */	lfs f0, lbl_8066C4A0@sda21(r2)
/* 803F21F4 003BB7B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F21F8 003BB7B8  7C 9F 23 78 */	mr r31, r4
/* 803F21FC 003BB7BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F2200 003BB7C0  38 81 00 08 */	addi r4, r1, 0x8
/* 803F2204 003BB7C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F2208 003BB7C8  7C 7E 1B 78 */	mr r30, r3
/* 803F220C 003BB7CC  38 61 00 0C */	addi r3, r1, 0xc
/* 803F2210 003BB7D0  48 01 8B DD */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F2214 003BB7D4  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 803F2218 003BB7D8  C0 FF 00 04 */	lfs f7, 0x4(r31)
/* 803F221C 003BB7DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F2220 003BB7E0  C1 1F 00 00 */	lfs f8, 0x0(r31)
/* 803F2224 003BB7E4  ED 67 00 72 */	fmuls f11, f7, f1
/* 803F2228 003BB7E8  EC 67 00 32 */	fmuls f3, f7, f0
/* 803F222C 003BB7EC  C0 C2 C1 18 */	lfs f6, lbl_8066C498@sda21(r2)
/* 803F2230 003BB7F0  ED 28 00 72 */	fmuls f9, f8, f1
/* 803F2234 003BB7F4  C0 22 C1 24 */	lfs f1, lbl_8066C4A4@sda21(r2)
/* 803F2238 003BB7F8  ED 48 00 32 */	fmuls f10, f8, f0
/* 803F223C 003BB7FC  EC 43 58 28 */	fsubs f2, f3, f11
/* 803F2240 003BB800  FC 60 18 50 */	fneg f3, f3
/* 803F2244 003BB804  C0 82 C1 28 */	lfs f4, lbl_8066C4A8@sda21(r2)
/* 803F2248 003BB808  EC AA 48 2A */	fadds f5, f10, f9
/* 803F224C 003BB80C  C0 02 C1 1C */	lfs f0, lbl_8066C49C@sda21(r2)
/* 803F2250 003BB810  EC 42 38 28 */	fsubs f2, f2, f7
/* 803F2254 003BB814  D1 3E 00 00 */	stfs f9, 0x0(r30)
/* 803F2258 003BB818  EC A5 40 28 */	fsubs f5, f5, f8
/* 803F225C 003BB81C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 803F2260 003BB820  D1 5E 00 04 */	stfs f10, 0x4(r30)
/* 803F2264 003BB824  EC 44 01 72 */	fmuls f2, f4, f5
/* 803F2268 003BB828  D0 DE 00 08 */	stfs f6, 0x8(r30)
/* 803F226C 003BB82C  EC 00 08 2A */	fadds f0, f0, f1
/* 803F2270 003BB830  D0 7E 00 10 */	stfs f3, 0x10(r30)
/* 803F2274 003BB834  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 803F2278 003BB838  D1 7E 00 14 */	stfs f11, 0x14(r30)
/* 803F227C 003BB83C  D0 DE 00 18 */	stfs f6, 0x18(r30)
/* 803F2280 003BB840  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 803F2284 003BB844  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F2288 003BB848  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F228C 003BB84C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F2290 003BB850  7C 08 03 A6 */	mtlr r0
/* 803F2294 003BB854  38 21 00 20 */	addi r1, r1, 0x20
/* 803F2298 003BB858  4E 80 00 20 */	blr
.endfn MakeTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::MakeTexSrtMtx_RT(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn MakeTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F229C 003BB85C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F22A0 003BB860  7C 08 02 A6 */	mflr r0
/* 803F22A4 003BB864  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 803F22A8 003BB868  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F22AC 003BB86C  C0 02 C1 20 */	lfs f0, lbl_8066C4A0@sda21(r2)
/* 803F22B0 003BB870  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F22B4 003BB874  7C 9F 23 78 */	mr r31, r4
/* 803F22B8 003BB878  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F22BC 003BB87C  38 81 00 08 */	addi r4, r1, 0x8
/* 803F22C0 003BB880  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F22C4 003BB884  7C 7E 1B 78 */	mr r30, r3
/* 803F22C8 003BB888  38 61 00 0C */	addi r3, r1, 0xc
/* 803F22CC 003BB88C  48 01 8B 21 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F22D0 003BB890  C0 A2 C1 24 */	lfs f5, lbl_8066C4A4@sda21(r2)
/* 803F22D4 003BB894  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 803F22D8 003BB898  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 803F22DC 003BB89C  EC 05 00 72 */	fmuls f0, f5, f1
/* 803F22E0 003BB8A0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 803F22E4 003BB8A4  EC C5 00 F2 */	fmuls f6, f5, f3
/* 803F22E8 003BB8A8  D0 3E 00 00 */	stfs f1, 0x0(r30)
/* 803F22EC 003BB8AC  C0 82 C1 18 */	lfs f4, lbl_8066C498@sda21(r2)
/* 803F22F0 003BB8B0  EC A5 00 28 */	fsubs f5, f5, f0
/* 803F22F4 003BB8B4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F22F8 003BB8B8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 803F22FC 003BB8BC  EC 65 30 28 */	fsubs f3, f5, f6
/* 803F2300 003BB8C0  D0 3E 00 04 */	stfs f1, 0x4(r30)
/* 803F2304 003BB8C4  EC 25 30 2A */	fadds f1, f5, f6
/* 803F2308 003BB8C8  D0 9E 00 08 */	stfs f4, 0x8(r30)
/* 803F230C 003BB8CC  EC 43 10 28 */	fsubs f2, f3, f2
/* 803F2310 003BB8D0  EC 00 08 2A */	fadds f0, f0, f1
/* 803F2314 003BB8D4  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 803F2318 003BB8D8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F231C 003BB8DC  FC 20 08 50 */	fneg f1, f1
/* 803F2320 003BB8E0  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 803F2324 003BB8E4  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 803F2328 003BB8E8  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 803F232C 003BB8EC  D0 9E 00 18 */	stfs f4, 0x18(r30)
/* 803F2330 003BB8F0  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 803F2334 003BB8F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F2338 003BB8F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F233C 003BB8FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F2340 003BB900  7C 08 03 A6 */	mtlr r0
/* 803F2344 003BB904  38 21 00 20 */	addi r1, r1, 0x20
/* 803F2348 003BB908  4E 80 00 20 */	blr
.endfn MakeTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::MakeTexSrtMtx_ST(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn MakeTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F234C 003BB90C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803F2350 003BB910  C0 22 C1 1C */	lfs f1, lbl_8066C49C@sda21(r2)
/* 803F2354 003BB914  C0 A2 C1 18 */	lfs f5, lbl_8066C498@sda21(r2)
/* 803F2358 003BB918  C0 C4 00 00 */	lfs f6, 0x0(r4)
/* 803F235C 003BB91C  EC 00 08 28 */	fsubs f0, f0, f1
/* 803F2360 003BB920  C0 44 00 04 */	lfs f2, 0x4(r4)
/* 803F2364 003BB924  FC 80 30 50 */	fneg f4, f6
/* 803F2368 003BB928  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 803F236C 003BB92C  EC 02 00 32 */	fmuls f0, f2, f0
/* 803F2370 003BB930  D0 C3 00 00 */	stfs f6, 0x0(r3)
/* 803F2374 003BB934  EC 64 00 F2 */	fmuls f3, f4, f3
/* 803F2378 003BB938  D0 A3 00 04 */	stfs f5, 0x4(r3)
/* 803F237C 003BB93C  EC 01 00 2A */	fadds f0, f1, f0
/* 803F2380 003BB940  D0 A3 00 08 */	stfs f5, 0x8(r3)
/* 803F2384 003BB944  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 803F2388 003BB948  D0 A3 00 10 */	stfs f5, 0x10(r3)
/* 803F238C 003BB94C  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 803F2390 003BB950  D0 A3 00 18 */	stfs f5, 0x18(r3)
/* 803F2394 003BB954  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F2398 003BB958  4E 80 00 20 */	blr
.endfn MakeTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::MakeTexSrtMtx_SRT(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn MakeTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F239C 003BB95C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F23A0 003BB960  7C 08 02 A6 */	mflr r0
/* 803F23A4 003BB964  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 803F23A8 003BB968  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F23AC 003BB96C  C0 02 C1 20 */	lfs f0, lbl_8066C4A0@sda21(r2)
/* 803F23B0 003BB970  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F23B4 003BB974  7C 9F 23 78 */	mr r31, r4
/* 803F23B8 003BB978  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F23BC 003BB97C  38 81 00 08 */	addi r4, r1, 0x8
/* 803F23C0 003BB980  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F23C4 003BB984  7C 7E 1B 78 */	mr r30, r3
/* 803F23C8 003BB988  38 61 00 0C */	addi r3, r1, 0xc
/* 803F23CC 003BB98C  48 01 8A 21 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F23D0 003BB990  C0 A2 C1 24 */	lfs f5, lbl_8066C4A4@sda21(r2)
/* 803F23D4 003BB994  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F23D8 003BB998  C0 9F 00 04 */	lfs f4, 0x4(r31)
/* 803F23DC 003BB99C  EC 45 00 32 */	fmuls f2, f5, f0
/* 803F23E0 003BB9A0  C0 22 C1 28 */	lfs f1, lbl_8066C4A8@sda21(r2)
/* 803F23E4 003BB9A4  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 803F23E8 003BB9A8  FC 60 20 50 */	fneg f3, f4
/* 803F23EC 003BB9AC  C1 3F 00 00 */	lfs f9, 0x0(r31)
/* 803F23F0 003BB9B0  ED 01 00 32 */	fmuls f8, f1, f0
/* 803F23F4 003BB9B4  EC 42 28 28 */	fsubs f2, f2, f5
/* 803F23F8 003BB9B8  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 803F23FC 003BB9BC  EC 09 00 32 */	fmuls f0, f9, f0
/* 803F2400 003BB9C0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 803F2404 003BB9C4  C0 E2 C1 18 */	lfs f7, lbl_8066C498@sda21(r2)
/* 803F2408 003BB9C8  EC C8 10 28 */	fsubs f6, f8, f2
/* 803F240C 003BB9CC  D0 1E 00 00 */	stfs f0, 0x0(r30)
/* 803F2410 003BB9D0  EC 48 10 2A */	fadds f2, f8, f2
/* 803F2414 003BB9D4  C0 02 C1 1C */	lfs f0, lbl_8066C49C@sda21(r2)
/* 803F2418 003BB9D8  C1 01 00 0C */	lfs f8, 0xc(r1)
/* 803F241C 003BB9DC  EC A6 28 28 */	fsubs f5, f6, f5
/* 803F2420 003BB9E0  EC 21 10 2A */	fadds f1, f1, f2
/* 803F2424 003BB9E4  EC C9 02 32 */	fmuls f6, f9, f8
/* 803F2428 003BB9E8  D0 FE 00 08 */	stfs f7, 0x8(r30)
/* 803F242C 003BB9EC  EC 49 01 72 */	fmuls f2, f9, f5
/* 803F2430 003BB9F0  EC 24 00 72 */	fmuls f1, f4, f1
/* 803F2434 003BB9F4  D0 DE 00 04 */	stfs f6, 0x4(r30)
/* 803F2438 003BB9F8  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 803F243C 003BB9FC  EC 00 08 2A */	fadds f0, f0, f1
/* 803F2440 003BBA00  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F2444 003BBA04  EC 23 00 72 */	fmuls f1, f3, f1
/* 803F2448 003BBA08  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 803F244C 003BBA0C  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 803F2450 003BBA10  EC 24 00 72 */	fmuls f1, f4, f1
/* 803F2454 003BBA14  D0 FE 00 18 */	stfs f7, 0x18(r30)
/* 803F2458 003BBA18  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 803F245C 003BBA1C  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 803F2460 003BBA20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F2464 003BBA24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F2468 003BBA28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F246C 003BBA2C  7C 08 03 A6 */	mtlr r0
/* 803F2470 003BBA30  38 21 00 20 */	addi r1, r1, 0x20
/* 803F2474 003BBA34  4E 80 00 20 */	blr
.endfn MakeTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::ProductTexSrtMtx_S(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn ProductTexSrtMtx_S__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F2478 003BBA38  C0 A4 00 04 */	lfs f5, 0x4(r4)
/* 803F247C 003BBA3C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 803F2480 003BBA40  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 803F2484 003BBA44  EC 20 01 72 */	fmuls f1, f0, f5
/* 803F2488 003BBA48  C0 02 C1 1C */	lfs f0, lbl_8066C49C@sda21(r2)
/* 803F248C 003BBA4C  EC 82 01 72 */	fmuls f4, f2, f5
/* 803F2490 003BBA50  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 803F2494 003BBA54  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 803F2498 003BBA58  EC 00 08 2A */	fadds f0, f0, f1
/* 803F249C 003BBA5C  EC 22 01 72 */	fmuls f1, f2, f5
/* 803F24A0 003BBA60  C1 03 00 00 */	lfs f8, 0x0(r3)
/* 803F24A4 003BBA64  C1 24 00 00 */	lfs f9, 0x0(r4)
/* 803F24A8 003BBA68  EC 63 01 72 */	fmuls f3, f3, f5
/* 803F24AC 003BBA6C  C0 E3 00 04 */	lfs f7, 0x4(r3)
/* 803F24B0 003BBA70  C0 C3 00 08 */	lfs f6, 0x8(r3)
/* 803F24B4 003BBA74  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 803F24B8 003BBA78  ED 08 02 72 */	fmuls f8, f8, f9
/* 803F24BC 003BBA7C  EC E7 02 72 */	fmuls f7, f7, f9
/* 803F24C0 003BBA80  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 803F24C4 003BBA84  EC C6 02 72 */	fmuls f6, f6, f9
/* 803F24C8 003BBA88  EC 42 02 72 */	fmuls f2, f2, f9
/* 803F24CC 003BBA8C  D1 03 00 00 */	stfs f8, 0x0(r3)
/* 803F24D0 003BBA90  EC 00 28 28 */	fsubs f0, f0, f5
/* 803F24D4 003BBA94  D0 E3 00 04 */	stfs f7, 0x4(r3)
/* 803F24D8 003BBA98  D0 C3 00 08 */	stfs f6, 0x8(r3)
/* 803F24DC 003BBA9C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 803F24E0 003BBAA0  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 803F24E4 003BBAA4  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 803F24E8 003BBAA8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F24EC 003BBAAC  4E 80 00 20 */	blr
.endfn ProductTexSrtMtx_S__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::ProductTexSrtMtx_R(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn ProductTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F24F0 003BBAB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F24F4 003BBAB4  7C 08 02 A6 */	mflr r0
/* 803F24F8 003BBAB8  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 803F24FC 003BBABC  C0 02 C1 20 */	lfs f0, lbl_8066C4A0@sda21(r2)
/* 803F2500 003BBAC0  38 81 00 08 */	addi r4, r1, 0x8
/* 803F2504 003BBAC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F2508 003BBAC8  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F250C 003BBACC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F2510 003BBAD0  7C 7F 1B 78 */	mr r31, r3
/* 803F2514 003BBAD4  38 61 00 0C */	addi r3, r1, 0xc
/* 803F2518 003BBAD8  48 01 88 D5 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F251C 003BBADC  C1 41 00 0C */	lfs f10, 0xc(r1)
/* 803F2520 003BBAE0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 803F2524 003BBAE4  FC 20 50 50 */	fneg f1, f10
/* 803F2528 003BBAE8  C0 9F 00 00 */	lfs f4, 0x0(r31)
/* 803F252C 003BBAEC  C0 A1 00 08 */	lfs f5, 0x8(r1)
/* 803F2530 003BBAF0  EC 4A 00 32 */	fmuls f2, f10, f0
/* 803F2534 003BBAF4  C1 82 C1 24 */	lfs f12, lbl_8066C4A4@sda21(r2)
/* 803F2538 003BBAF8  EC 65 01 32 */	fmuls f3, f5, f4
/* 803F253C 003BBAFC  EC 21 01 32 */	fmuls f1, f1, f4
/* 803F2540 003BBB00  C1 7F 00 04 */	lfs f11, 0x4(r31)
/* 803F2544 003BBB04  EC 05 00 32 */	fmuls f0, f5, f0
/* 803F2548 003BBB08  C1 1F 00 14 */	lfs f8, 0x14(r31)
/* 803F254C 003BBB0C  EC 43 10 2A */	fadds f2, f3, f2
/* 803F2550 003BBB10  EC 8C 01 72 */	fmuls f4, f12, f5
/* 803F2554 003BBB14  EC 61 00 2A */	fadds f3, f1, f0
/* 803F2558 003BBB18  C1 3F 00 08 */	lfs f9, 0x8(r31)
/* 803F255C 003BBB1C  D0 5F 00 00 */	stfs f2, 0x0(r31)
/* 803F2560 003BBB20  EC 0C 02 B2 */	fmuls f0, f12, f10
/* 803F2564 003BBB24  EC 2C 20 28 */	fsubs f1, f12, f4
/* 803F2568 003BBB28  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 803F256C 003BBB2C  C0 DF 00 18 */	lfs f6, 0x18(r31)
/* 803F2570 003BBB30  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 803F2574 003BBB34  C1 81 00 08 */	lfs f12, 0x8(r1)
/* 803F2578 003BBB38  FC 40 18 50 */	fneg f2, f3
/* 803F257C 003BBB3C  C0 FF 00 0C */	lfs f7, 0xc(r31)
/* 803F2580 003BBB40  EC 83 02 32 */	fmuls f4, f3, f8
/* 803F2584 003BBB44  C0 BF 00 1C */	lfs f5, 0x1c(r31)
/* 803F2588 003BBB48  ED 4C 02 F2 */	fmuls f10, f12, f11
/* 803F258C 003BBB4C  EC 62 02 F2 */	fmuls f3, f2, f11
/* 803F2590 003BBB50  EC 4C 02 32 */	fmuls f2, f12, f8
/* 803F2594 003BBB54  EC 8A 20 2A */	fadds f4, f10, f4
/* 803F2598 003BBB58  EC 43 10 2A */	fadds f2, f3, f2
/* 803F259C 003BBB5C  D0 9F 00 04 */	stfs f4, 0x4(r31)
/* 803F25A0 003BBB60  D0 5F 00 14 */	stfs f2, 0x14(r31)
/* 803F25A4 003BBB64  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 803F25A8 003BBB68  C1 41 00 08 */	lfs f10, 0x8(r1)
/* 803F25AC 003BBB6C  FC 40 18 50 */	fneg f2, f3
/* 803F25B0 003BBB70  EC 83 01 B2 */	fmuls f4, f3, f6
/* 803F25B4 003BBB74  ED 0A 02 72 */	fmuls f8, f10, f9
/* 803F25B8 003BBB78  EC 62 02 72 */	fmuls f3, f2, f9
/* 803F25BC 003BBB7C  EC 4A 01 B2 */	fmuls f2, f10, f6
/* 803F25C0 003BBB80  EC 88 20 2A */	fadds f4, f8, f4
/* 803F25C4 003BBB84  EC 43 10 2A */	fadds f2, f3, f2
/* 803F25C8 003BBB88  D0 9F 00 08 */	stfs f4, 0x8(r31)
/* 803F25CC 003BBB8C  D0 5F 00 18 */	stfs f2, 0x18(r31)
/* 803F25D0 003BBB90  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 803F25D4 003BBB94  C1 01 00 08 */	lfs f8, 0x8(r1)
/* 803F25D8 003BBB98  FC 40 18 50 */	fneg f2, f3
/* 803F25DC 003BBB9C  EC 83 01 72 */	fmuls f4, f3, f5
/* 803F25E0 003BBBA0  EC C8 01 F2 */	fmuls f6, f8, f7
/* 803F25E4 003BBBA4  EC 62 01 F2 */	fmuls f3, f2, f7
/* 803F25E8 003BBBA8  EC 48 01 72 */	fmuls f2, f8, f5
/* 803F25EC 003BBBAC  EC 86 20 2A */	fadds f4, f6, f4
/* 803F25F0 003BBBB0  EC 43 10 2A */	fadds f2, f3, f2
/* 803F25F4 003BBBB4  EC 61 20 2A */	fadds f3, f1, f4
/* 803F25F8 003BBBB8  EC 21 10 2A */	fadds f1, f1, f2
/* 803F25FC 003BBBBC  EC 43 00 28 */	fsubs f2, f3, f0
/* 803F2600 003BBBC0  EC 00 08 2A */	fadds f0, f0, f1
/* 803F2604 003BBBC4  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 803F2608 003BBBC8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 803F260C 003BBBCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F2610 003BBBD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F2614 003BBBD4  7C 08 03 A6 */	mtlr r0
/* 803F2618 003BBBD8  38 21 00 20 */	addi r1, r1, 0x20
/* 803F261C 003BBBDC  4E 80 00 20 */	blr
.endfn ProductTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::ProductTexSrtMtx_T(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn ProductTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F2620 003BBBE0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 803F2624 003BBBE4  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 803F2628 003BBBE8  FC 60 00 50 */	fneg f3, f0
/* 803F262C 003BBBEC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 803F2630 003BBBF0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803F2634 003BBBF4  EC 42 18 2A */	fadds f2, f2, f3
/* 803F2638 003BBBF8  EC 01 00 2A */	fadds f0, f1, f0
/* 803F263C 003BBBFC  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 803F2640 003BBC00  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F2644 003BBC04  4E 80 00 20 */	blr
.endfn ProductTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::ProductTexSrtMtx_SR(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn ProductTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F2648 003BBC08  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803F264C 003BBC0C  7C 08 02 A6 */	mflr r0
/* 803F2650 003BBC10  90 01 00 84 */	stw r0, 0x84(r1)
/* 803F2654 003BBC14  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 803F2658 003BBC18  F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 803F265C 003BBC1C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 803F2660 003BBC20  F3 C1 00 68 */	psq_st f30, 0x68(r1), 0, qr0
/* 803F2664 003BBC24  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 803F2668 003BBC28  F3 A1 00 58 */	psq_st f29, 0x58(r1), 0, qr0
/* 803F266C 003BBC2C  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 803F2670 003BBC30  F3 81 00 48 */	psq_st f28, 0x48(r1), 0, qr0
/* 803F2674 003BBC34  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 803F2678 003BBC38  F3 61 00 38 */	psq_st f27, 0x38(r1), 0, qr0
/* 803F267C 003BBC3C  DB 41 00 20 */	stfd f26, 0x20(r1)
/* 803F2680 003BBC40  F3 41 00 28 */	psq_st f26, 0x28(r1), 0, qr0
/* 803F2684 003BBC44  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 803F2688 003BBC48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F268C 003BBC4C  7C 9F 23 78 */	mr r31, r4
/* 803F2690 003BBC50  C0 02 C1 20 */	lfs f0, lbl_8066C4A0@sda21(r2)
/* 803F2694 003BBC54  38 81 00 08 */	addi r4, r1, 0x8
/* 803F2698 003BBC58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F269C 003BBC5C  7C 7E 1B 78 */	mr r30, r3
/* 803F26A0 003BBC60  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F26A4 003BBC64  38 61 00 0C */	addi r3, r1, 0xc
/* 803F26A8 003BBC68  48 01 87 45 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F26AC 003BBC6C  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 803F26B0 003BBC70  C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 803F26B4 003BBC74  C0 E1 00 08 */	lfs f7, 0x8(r1)
/* 803F26B8 003BBC78  ED 00 01 B2 */	fmuls f8, f0, f6
/* 803F26BC 003BBC7C  C1 42 C1 24 */	lfs f10, lbl_8066C4A4@sda21(r2)
/* 803F26C0 003BBC80  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 803F26C4 003BBC84  EC 60 01 F2 */	fmuls f3, f0, f7
/* 803F26C8 003BBC88  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 803F26CC 003BBC8C  EC AA 00 32 */	fmuls f5, f10, f0
/* 803F26D0 003BBC90  FF C0 40 50 */	fneg f30, f8
/* 803F26D4 003BBC94  C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 803F26D8 003BBC98  EC 81 50 28 */	fsubs f4, f1, f10
/* 803F26DC 003BBC9C  C3 5E 00 00 */	lfs f26, 0x0(r30)
/* 803F26E0 003BBCA0  ED 02 50 28 */	fsubs f8, f2, f10
/* 803F26E4 003BBCA4  C3 9E 00 10 */	lfs f28, 0x10(r30)
/* 803F26E8 003BBCA8  EC 20 01 F2 */	fmuls f1, f0, f7
/* 803F26EC 003BBCAC  C3 FE 00 04 */	lfs f31, 0x4(r30)
/* 803F26F0 003BBCB0  EC 40 01 B2 */	fmuls f2, f0, f6
/* 803F26F4 003BBCB4  C1 BE 00 14 */	lfs f13, 0x14(r30)
/* 803F26F8 003BBCB8  EC FE 02 32 */	fmuls f7, f30, f8
/* 803F26FC 003BBCBC  C1 9E 00 08 */	lfs f12, 0x8(r30)
/* 803F2700 003BBCC0  EC C3 01 32 */	fmuls f6, f3, f4
/* 803F2704 003BBCC4  C1 7E 00 18 */	lfs f11, 0x18(r30)
/* 803F2708 003BBCC8  ED 21 02 32 */	fmuls f9, f1, f8
/* 803F270C 003BBCCC  ED 02 01 32 */	fmuls f8, f2, f4
/* 803F2710 003BBCD0  C0 82 C1 1C */	lfs f4, lbl_8066C49C@sda21(r2)
/* 803F2714 003BBCD4  EC C7 30 2A */	fadds f6, f7, f6
/* 803F2718 003BBCD8  EC FE 06 B2 */	fmuls f7, f30, f26
/* 803F271C 003BBCDC  EF 61 06 B2 */	fmuls f27, f1, f26
/* 803F2720 003BBCE0  EC A6 28 28 */	fsubs f5, f6, f5
/* 803F2724 003BBCE4  EC C3 07 32 */	fmuls f6, f3, f28
/* 803F2728 003BBCE8  EF A2 07 32 */	fmuls f29, f2, f28
/* 803F272C 003BBCEC  EF 44 28 2A */	fadds f26, f4, f5
/* 803F2730 003BBCF0  EC 87 30 2A */	fadds f4, f7, f6
/* 803F2734 003BBCF4  EF 7B E8 2A */	fadds f27, f27, f29
/* 803F2738 003BBCF8  EC E1 07 F2 */	fmuls f7, f1, f31
/* 803F273C 003BBCFC  D3 5E 00 1C */	stfs f26, 0x1c(r30)
/* 803F2740 003BBD00  EC A2 03 72 */	fmuls f5, f2, f13
/* 803F2744 003BBD04  D0 9E 00 10 */	stfs f4, 0x10(r30)
/* 803F2748 003BBD08  EC DE 07 F2 */	fmuls f6, f30, f31
/* 803F274C 003BBD0C  EC 83 03 72 */	fmuls f4, f3, f13
/* 803F2750 003BBD10  EC E7 28 2A */	fadds f7, f7, f5
/* 803F2754 003BBD14  D3 7E 00 00 */	stfs f27, 0x0(r30)
/* 803F2758 003BBD18  EC A1 03 32 */	fmuls f5, f1, f12
/* 803F275C 003BBD1C  EC C6 20 2A */	fadds f6, f6, f4
/* 803F2760 003BBD20  EC 22 02 F2 */	fmuls f1, f2, f11
/* 803F2764 003BBD24  D0 FE 00 04 */	stfs f7, 0x4(r30)
/* 803F2768 003BBD28  EC 43 02 F2 */	fmuls f2, f3, f11
/* 803F276C 003BBD2C  EC 9E 03 32 */	fmuls f4, f30, f12
/* 803F2770 003BBD30  D0 DE 00 14 */	stfs f6, 0x14(r30)
/* 803F2774 003BBD34  EC 65 08 2A */	fadds f3, f5, f1
/* 803F2778 003BBD38  EC 2A 00 32 */	fmuls f1, f10, f0
/* 803F277C 003BBD3C  EC 09 40 2A */	fadds f0, f9, f8
/* 803F2780 003BBD40  EC 44 10 2A */	fadds f2, f4, f2
/* 803F2784 003BBD44  D0 7E 00 08 */	stfs f3, 0x8(r30)
/* 803F2788 003BBD48  EC 01 00 2A */	fadds f0, f1, f0
/* 803F278C 003BBD4C  D0 5E 00 18 */	stfs f2, 0x18(r30)
/* 803F2790 003BBD50  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 803F2794 003BBD54  E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 803F2798 003BBD58  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 803F279C 003BBD5C  E3 C1 00 68 */	psq_l f30, 0x68(r1), 0, qr0
/* 803F27A0 003BBD60  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 803F27A4 003BBD64  E3 A1 00 58 */	psq_l f29, 0x58(r1), 0, qr0
/* 803F27A8 003BBD68  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 803F27AC 003BBD6C  E3 81 00 48 */	psq_l f28, 0x48(r1), 0, qr0
/* 803F27B0 003BBD70  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 803F27B4 003BBD74  E3 61 00 38 */	psq_l f27, 0x38(r1), 0, qr0
/* 803F27B8 003BBD78  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 803F27BC 003BBD7C  E3 41 00 28 */	psq_l f26, 0x28(r1), 0, qr0
/* 803F27C0 003BBD80  CB 41 00 20 */	lfd f26, 0x20(r1)
/* 803F27C4 003BBD84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F27C8 003BBD88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F27CC 003BBD8C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803F27D0 003BBD90  7C 08 03 A6 */	mtlr r0
/* 803F27D4 003BBD94  38 21 00 80 */	addi r1, r1, 0x80
/* 803F27D8 003BBD98  4E 80 00 20 */	blr
.endfn ProductTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::ProductTexSrtMtx_RT(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn ProductTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F27DC 003BBD9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F27E0 003BBDA0  7C 08 02 A6 */	mflr r0
/* 803F27E4 003BBDA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F27E8 003BBDA8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803F27EC 003BBDAC  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 803F27F0 003BBDB0  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 803F27F4 003BBDB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F27F8 003BBDB8  7C 9F 23 78 */	mr r31, r4
/* 803F27FC 003BBDBC  C0 02 C1 20 */	lfs f0, lbl_8066C4A0@sda21(r2)
/* 803F2800 003BBDC0  38 81 00 08 */	addi r4, r1, 0x8
/* 803F2804 003BBDC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F2808 003BBDC8  7C 7E 1B 78 */	mr r30, r3
/* 803F280C 003BBDCC  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F2810 003BBDD0  38 61 00 0C */	addi r3, r1, 0xc
/* 803F2814 003BBDD4  48 01 85 D9 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F2818 003BBDD8  C0 E1 00 0C */	lfs f7, 0xc(r1)
/* 803F281C 003BBDDC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 803F2820 003BBDE0  FC 20 38 50 */	fneg f1, f7
/* 803F2824 003BBDE4  C0 9E 00 00 */	lfs f4, 0x0(r30)
/* 803F2828 003BBDE8  C0 A1 00 08 */	lfs f5, 0x8(r1)
/* 803F282C 003BBDEC  EC 47 00 32 */	fmuls f2, f7, f0
/* 803F2830 003BBDF0  C1 82 C1 24 */	lfs f12, lbl_8066C4A4@sda21(r2)
/* 803F2834 003BBDF4  EC 65 01 32 */	fmuls f3, f5, f4
/* 803F2838 003BBDF8  EC 21 01 32 */	fmuls f1, f1, f4
/* 803F283C 003BBDFC  C0 C2 C1 28 */	lfs f6, lbl_8066C4A8@sda21(r2)
/* 803F2840 003BBE00  EC 05 00 32 */	fmuls f0, f5, f0
/* 803F2844 003BBE04  C1 BE 00 04 */	lfs f13, 0x4(r30)
/* 803F2848 003BBE08  EC 43 10 2A */	fadds f2, f3, f2
/* 803F284C 003BBE0C  EC 8C 01 F2 */	fmuls f4, f12, f7
/* 803F2850 003BBE10  EC 61 00 2A */	fadds f3, f1, f0
/* 803F2854 003BBE14  C1 5E 00 14 */	lfs f10, 0x14(r30)
/* 803F2858 003BBE18  D0 5E 00 00 */	stfs f2, 0x0(r30)
/* 803F285C 003BBE1C  EC 26 01 72 */	fmuls f1, f6, f5
/* 803F2860 003BBE20  EC 04 60 28 */	fsubs f0, f4, f12
/* 803F2864 003BBE24  D0 7E 00 10 */	stfs f3, 0x10(r30)
/* 803F2868 003BBE28  C1 7E 00 08 */	lfs f11, 0x8(r30)
/* 803F286C 003BBE2C  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 803F2870 003BBE30  C3 E1 00 08 */	lfs f31, 0x8(r1)
/* 803F2874 003BBE34  FC 60 20 50 */	fneg f3, f4
/* 803F2878 003BBE38  C1 1E 00 18 */	lfs f8, 0x18(r30)
/* 803F287C 003BBE3C  EC C4 02 B2 */	fmuls f6, f4, f10
/* 803F2880 003BBE40  C1 3E 00 0C */	lfs f9, 0xc(r30)
/* 803F2884 003BBE44  ED 9F 03 72 */	fmuls f12, f31, f13
/* 803F2888 003BBE48  C0 FE 00 1C */	lfs f7, 0x1c(r30)
/* 803F288C 003BBE4C  EC 83 03 72 */	fmuls f4, f3, f13
/* 803F2890 003BBE50  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 803F2894 003BBE54  EC 7F 02 B2 */	fmuls f3, f31, f10
/* 803F2898 003BBE58  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 803F289C 003BBE5C  EC CC 30 2A */	fadds f6, f12, f6
/* 803F28A0 003BBE60  EC 64 18 2A */	fadds f3, f4, f3
/* 803F28A4 003BBE64  D0 DE 00 04 */	stfs f6, 0x4(r30)
/* 803F28A8 003BBE68  D0 7E 00 14 */	stfs f3, 0x14(r30)
/* 803F28AC 003BBE6C  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 803F28B0 003BBE70  C1 81 00 08 */	lfs f12, 0x8(r1)
/* 803F28B4 003BBE74  FC 60 20 50 */	fneg f3, f4
/* 803F28B8 003BBE78  EC C4 02 32 */	fmuls f6, f4, f8
/* 803F28BC 003BBE7C  ED 4C 02 F2 */	fmuls f10, f12, f11
/* 803F28C0 003BBE80  EC 83 02 F2 */	fmuls f4, f3, f11
/* 803F28C4 003BBE84  EC 6C 02 32 */	fmuls f3, f12, f8
/* 803F28C8 003BBE88  EC CA 30 2A */	fadds f6, f10, f6
/* 803F28CC 003BBE8C  EC 64 18 2A */	fadds f3, f4, f3
/* 803F28D0 003BBE90  D0 DE 00 08 */	stfs f6, 0x8(r30)
/* 803F28D4 003BBE94  D0 7E 00 18 */	stfs f3, 0x18(r30)
/* 803F28D8 003BBE98  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 803F28DC 003BBE9C  C1 41 00 08 */	lfs f10, 0x8(r1)
/* 803F28E0 003BBEA0  FC 60 20 50 */	fneg f3, f4
/* 803F28E4 003BBEA4  EC C4 01 F2 */	fmuls f6, f4, f7
/* 803F28E8 003BBEA8  ED 0A 02 72 */	fmuls f8, f10, f9
/* 803F28EC 003BBEAC  EC 83 02 72 */	fmuls f4, f3, f9
/* 803F28F0 003BBEB0  EC 6A 01 F2 */	fmuls f3, f10, f7
/* 803F28F4 003BBEB4  EC C8 30 2A */	fadds f6, f8, f6
/* 803F28F8 003BBEB8  EC 64 18 2A */	fadds f3, f4, f3
/* 803F28FC 003BBEBC  EC 81 30 2A */	fadds f4, f1, f6
/* 803F2900 003BBEC0  EC 21 18 2A */	fadds f1, f1, f3
/* 803F2904 003BBEC4  EC 64 00 28 */	fsubs f3, f4, f0
/* 803F2908 003BBEC8  EC 00 08 2A */	fadds f0, f0, f1
/* 803F290C 003BBECC  EC 23 28 28 */	fsubs f1, f3, f5
/* 803F2910 003BBED0  EC 02 00 2A */	fadds f0, f2, f0
/* 803F2914 003BBED4  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 803F2918 003BBED8  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 803F291C 003BBEDC  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 803F2920 003BBEE0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803F2924 003BBEE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F2928 003BBEE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F292C 003BBEEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F2930 003BBEF0  7C 08 03 A6 */	mtlr r0
/* 803F2934 003BBEF4  38 21 00 30 */	addi r1, r1, 0x30
/* 803F2938 003BBEF8  4E 80 00 20 */	blr
.endfn ProductTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::ProductTexSrtMtx_ST(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn ProductTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F293C 003BBEFC  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 803F2940 003BBF00  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803F2944 003BBF04  C0 22 C1 1C */	lfs f1, lbl_8066C49C@sda21(r2)
/* 803F2948 003BBF08  EC 02 00 2A */	fadds f0, f2, f0
/* 803F294C 003BBF0C  C0 C3 00 0C */	lfs f6, 0xc(r3)
/* 803F2950 003BBF10  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 803F2954 003BBF14  C0 A4 00 04 */	lfs f5, 0x4(r4)
/* 803F2958 003BBF18  EC 00 08 28 */	fsubs f0, f0, f1
/* 803F295C 003BBF1C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 803F2960 003BBF20  EC C6 20 28 */	fsubs f6, f6, f4
/* 803F2964 003BBF24  C1 44 00 00 */	lfs f10, 0x0(r4)
/* 803F2968 003BBF28  EC 82 01 72 */	fmuls f4, f2, f5
/* 803F296C 003BBF2C  C0 43 00 00 */	lfs f2, 0x0(r3)
/* 803F2970 003BBF30  ED 22 02 B2 */	fmuls f9, f2, f10
/* 803F2974 003BBF34  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 803F2978 003BBF38  EC 05 00 32 */	fmuls f0, f5, f0
/* 803F297C 003BBF3C  C1 03 00 04 */	lfs f8, 0x4(r3)
/* 803F2980 003BBF40  C0 E3 00 08 */	lfs f7, 0x8(r3)
/* 803F2984 003BBF44  EC CA 01 B2 */	fmuls f6, f10, f6
/* 803F2988 003BBF48  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 803F298C 003BBF4C  ED 08 02 B2 */	fmuls f8, f8, f10
/* 803F2990 003BBF50  EC E7 02 B2 */	fmuls f7, f7, f10
/* 803F2994 003BBF54  D1 23 00 00 */	stfs f9, 0x0(r3)
/* 803F2998 003BBF58  EC 63 01 72 */	fmuls f3, f3, f5
/* 803F299C 003BBF5C  EC 42 01 72 */	fmuls f2, f2, f5
/* 803F29A0 003BBF60  D1 03 00 04 */	stfs f8, 0x4(r3)
/* 803F29A4 003BBF64  EC 01 00 2A */	fadds f0, f1, f0
/* 803F29A8 003BBF68  D0 E3 00 08 */	stfs f7, 0x8(r3)
/* 803F29AC 003BBF6C  D0 C3 00 0C */	stfs f6, 0xc(r3)
/* 803F29B0 003BBF70  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 803F29B4 003BBF74  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 803F29B8 003BBF78  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 803F29BC 003BBF7C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F29C0 003BBF80  4E 80 00 20 */	blr
.endfn ProductTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::_unnamed_g3d_maya_cpp_::ProductTexSrtMtx_SRT(nw4r::math::MTX34*, const nw4r::g3d::TexSrt&)
.fn ProductTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F29C4 003BBF84  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803F29C8 003BBF88  7C 08 02 A6 */	mflr r0
/* 803F29CC 003BBF8C  90 01 00 84 */	stw r0, 0x84(r1)
/* 803F29D0 003BBF90  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 803F29D4 003BBF94  F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 803F29D8 003BBF98  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 803F29DC 003BBF9C  F3 C1 00 68 */	psq_st f30, 0x68(r1), 0, qr0
/* 803F29E0 003BBFA0  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 803F29E4 003BBFA4  F3 A1 00 58 */	psq_st f29, 0x58(r1), 0, qr0
/* 803F29E8 003BBFA8  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 803F29EC 003BBFAC  F3 81 00 48 */	psq_st f28, 0x48(r1), 0, qr0
/* 803F29F0 003BBFB0  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 803F29F4 003BBFB4  F3 61 00 38 */	psq_st f27, 0x38(r1), 0, qr0
/* 803F29F8 003BBFB8  DB 41 00 20 */	stfd f26, 0x20(r1)
/* 803F29FC 003BBFBC  F3 41 00 28 */	psq_st f26, 0x28(r1), 0, qr0
/* 803F2A00 003BBFC0  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 803F2A04 003BBFC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F2A08 003BBFC8  7C 9F 23 78 */	mr r31, r4
/* 803F2A0C 003BBFCC  C0 02 C1 20 */	lfs f0, lbl_8066C4A0@sda21(r2)
/* 803F2A10 003BBFD0  38 81 00 08 */	addi r4, r1, 0x8
/* 803F2A14 003BBFD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F2A18 003BBFD8  7C 7E 1B 78 */	mr r30, r3
/* 803F2A1C 003BBFDC  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F2A20 003BBFE0  38 61 00 0C */	addi r3, r1, 0xc
/* 803F2A24 003BBFE4  48 01 83 C9 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F2A28 003BBFE8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 803F2A2C 003BBFEC  C3 7F 00 04 */	lfs f27, 0x4(r31)
/* 803F2A30 003BBFF0  C0 E2 C1 24 */	lfs f7, lbl_8066C4A4@sda21(r2)
/* 803F2A34 003BBFF4  EC 9B 00 B2 */	fmuls f4, f27, f2
/* 803F2A38 003BBFF8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 803F2A3C 003BBFFC  C1 21 00 08 */	lfs f9, 0x8(r1)
/* 803F2A40 003BC000  ED 01 38 28 */	fsubs f8, f1, f7
/* 803F2A44 003BC004  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 803F2A48 003BC008  C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 803F2A4C 003BC00C  EC A7 08 28 */	fsubs f5, f7, f1
/* 803F2A50 003BC010  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 803F2A54 003BC014  C0 DE 00 0C */	lfs f6, 0xc(r30)
/* 803F2A58 003BC018  FF C0 20 50 */	fneg f30, f4
/* 803F2A5C 003BC01C  C3 9E 00 10 */	lfs f28, 0x10(r30)
/* 803F2A60 003BC020  ED 47 08 28 */	fsubs f10, f7, f1
/* 803F2A64 003BC024  EC 7B 02 72 */	fmuls f3, f27, f9
/* 803F2A68 003BC028  C3 5E 00 00 */	lfs f26, 0x0(r30)
/* 803F2A6C 003BC02C  EC 20 02 72 */	fmuls f1, f0, f9
/* 803F2A70 003BC030  ED 26 38 28 */	fsubs f9, f6, f7
/* 803F2A74 003BC034  C1 BE 00 14 */	lfs f13, 0x14(r30)
/* 803F2A78 003BC038  EC 87 30 2A */	fadds f4, f7, f6
/* 803F2A7C 003BC03C  EC A5 06 F2 */	fmuls f5, f5, f27
/* 803F2A80 003BC040  C3 FE 00 04 */	lfs f31, 0x4(r30)
/* 803F2A84 003BC044  EC 40 00 B2 */	fmuls f2, f0, f2
/* 803F2A88 003BC048  EC FE 01 32 */	fmuls f7, f30, f4
/* 803F2A8C 003BC04C  C0 82 C1 1C */	lfs f4, lbl_8066C49C@sda21(r2)
/* 803F2A90 003BC050  EC C3 02 32 */	fmuls f6, f3, f8
/* 803F2A94 003BC054  EF 61 06 B2 */	fmuls f27, f1, f26
/* 803F2A98 003BC058  C1 7E 00 18 */	lfs f11, 0x18(r30)
/* 803F2A9C 003BC05C  C1 9E 00 08 */	lfs f12, 0x8(r30)
/* 803F2AA0 003BC060  EC C7 30 2A */	fadds f6, f7, f6
/* 803F2AA4 003BC064  EC FE 06 B2 */	fmuls f7, f30, f26
/* 803F2AA8 003BC068  EF A2 07 32 */	fmuls f29, f2, f28
/* 803F2AAC 003BC06C  EC A6 28 28 */	fsubs f5, f6, f5
/* 803F2AB0 003BC070  EC C3 07 32 */	fmuls f6, f3, f28
/* 803F2AB4 003BC074  EF 7B E8 2A */	fadds f27, f27, f29
/* 803F2AB8 003BC078  EF 44 28 2A */	fadds f26, f4, f5
/* 803F2ABC 003BC07C  EC 87 30 2A */	fadds f4, f7, f6
/* 803F2AC0 003BC080  EC E1 07 F2 */	fmuls f7, f1, f31
/* 803F2AC4 003BC084  D3 7E 00 00 */	stfs f27, 0x0(r30)
/* 803F2AC8 003BC088  EC A2 03 72 */	fmuls f5, f2, f13
/* 803F2ACC 003BC08C  D0 9E 00 10 */	stfs f4, 0x10(r30)
/* 803F2AD0 003BC090  ED 21 02 72 */	fmuls f9, f1, f9
/* 803F2AD4 003BC094  ED 02 02 32 */	fmuls f8, f2, f8
/* 803F2AD8 003BC098  EC E7 28 2A */	fadds f7, f7, f5
/* 803F2ADC 003BC09C  D3 5E 00 1C */	stfs f26, 0x1c(r30)
/* 803F2AE0 003BC0A0  EC A1 03 32 */	fmuls f5, f1, f12
/* 803F2AE4 003BC0A4  EC 22 02 F2 */	fmuls f1, f2, f11
/* 803F2AE8 003BC0A8  EC DE 07 F2 */	fmuls f6, f30, f31
/* 803F2AEC 003BC0AC  D0 FE 00 04 */	stfs f7, 0x4(r30)
/* 803F2AF0 003BC0B0  EC 83 03 72 */	fmuls f4, f3, f13
/* 803F2AF4 003BC0B4  EC 43 02 F2 */	fmuls f2, f3, f11
/* 803F2AF8 003BC0B8  EC 65 08 2A */	fadds f3, f5, f1
/* 803F2AFC 003BC0BC  EC C6 20 2A */	fadds f6, f6, f4
/* 803F2B00 003BC0C0  EC 9E 03 32 */	fmuls f4, f30, f12
/* 803F2B04 003BC0C4  EC 2A 00 32 */	fmuls f1, f10, f0
/* 803F2B08 003BC0C8  D0 7E 00 08 */	stfs f3, 0x8(r30)
/* 803F2B0C 003BC0CC  EC 09 40 2A */	fadds f0, f9, f8
/* 803F2B10 003BC0D0  EC 44 10 2A */	fadds f2, f4, f2
/* 803F2B14 003BC0D4  D0 DE 00 14 */	stfs f6, 0x14(r30)
/* 803F2B18 003BC0D8  EC 01 00 2A */	fadds f0, f1, f0
/* 803F2B1C 003BC0DC  D0 5E 00 18 */	stfs f2, 0x18(r30)
/* 803F2B20 003BC0E0  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 803F2B24 003BC0E4  E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 803F2B28 003BC0E8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 803F2B2C 003BC0EC  E3 C1 00 68 */	psq_l f30, 0x68(r1), 0, qr0
/* 803F2B30 003BC0F0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 803F2B34 003BC0F4  E3 A1 00 58 */	psq_l f29, 0x58(r1), 0, qr0
/* 803F2B38 003BC0F8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 803F2B3C 003BC0FC  E3 81 00 48 */	psq_l f28, 0x48(r1), 0, qr0
/* 803F2B40 003BC100  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 803F2B44 003BC104  E3 61 00 38 */	psq_l f27, 0x38(r1), 0, qr0
/* 803F2B48 003BC108  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 803F2B4C 003BC10C  E3 41 00 28 */	psq_l f26, 0x28(r1), 0, qr0
/* 803F2B50 003BC110  CB 41 00 20 */	lfd f26, 0x20(r1)
/* 803F2B54 003BC114  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F2B58 003BC118  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F2B5C 003BC11C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803F2B60 003BC120  7C 08 03 A6 */	mtlr r0
/* 803F2B64 003BC124  38 21 00 80 */	addi r1, r1, 0x80
/* 803F2B68 003BC128  4E 80 00 20 */	blr
.endfn ProductTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# nw4r::g3d::detail::dcc::CalcTexMtx_Maya(nw4r::math::MTX34*, bool, const nw4r::g3d::TexSrt&, nw4r::g3d::TexSrt::Flag)
.fn CalcTexMtx_Maya__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ34nw4r3g3d6TexSrtQ44nw4r3g3d6TexSrt4Flag, global
/* 803F2B6C 003BC12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F2B70 003BC130  7C 08 02 A6 */	mflr r0
/* 803F2B74 003BC134  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F2B78 003BC138  54 C0 FF 7E */	extrwi r0, r6, 3, 28
/* 803F2B7C 003BC13C  28 00 00 07 */	cmplwi r0, 0x7
/* 803F2B80 003BC140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F2B84 003BC144  7C 7F 1B 78 */	mr r31, r3
/* 803F2B88 003BC148  40 82 00 0C */	bne .L_803F2B94
/* 803F2B8C 003BC14C  38 60 00 00 */	li r3, 0x0
/* 803F2B90 003BC150  48 00 00 64 */	b .L_803F2BF4
.L_803F2B94:
/* 803F2B94 003BC154  2C 04 00 00 */	cmpwi r4, 0x0
/* 803F2B98 003BC158  41 82 00 24 */	beq .L_803F2BBC
/* 803F2B9C 003BC15C  3C C0 80 52 */	lis r6, lbl_80520FD8@ha
/* 803F2BA0 003BC160  54 00 10 3A */	slwi r0, r0, 2
/* 803F2BA4 003BC164  38 C6 0F D8 */	addi r6, r6, lbl_80520FD8@l
/* 803F2BA8 003BC168  7C A4 2B 78 */	mr r4, r5
/* 803F2BAC 003BC16C  7D 86 00 2E */	lwzx r12, r6, r0
/* 803F2BB0 003BC170  7D 89 03 A6 */	mtctr r12
/* 803F2BB4 003BC174  4E 80 04 21 */	bctrl
/* 803F2BB8 003BC178  48 00 00 20 */	b .L_803F2BD8
.L_803F2BBC:
/* 803F2BBC 003BC17C  3C C0 80 52 */	lis r6, lbl_80520FF4@ha
/* 803F2BC0 003BC180  54 00 10 3A */	slwi r0, r0, 2
/* 803F2BC4 003BC184  38 C6 0F F4 */	addi r6, r6, lbl_80520FF4@l
/* 803F2BC8 003BC188  7C A4 2B 78 */	mr r4, r5
/* 803F2BCC 003BC18C  7D 86 00 2E */	lwzx r12, r6, r0
/* 803F2BD0 003BC190  7D 89 03 A6 */	mtctr r12
/* 803F2BD4 003BC194  4E 80 04 21 */	bctrl
.L_803F2BD8:
/* 803F2BD8 003BC198  C0 22 C1 18 */	lfs f1, lbl_8066C498@sda21(r2)
/* 803F2BDC 003BC19C  38 60 00 01 */	li r3, 0x1
/* 803F2BE0 003BC1A0  C0 02 C1 1C */	lfs f0, lbl_8066C49C@sda21(r2)
/* 803F2BE4 003BC1A4  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 803F2BE8 003BC1A8  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 803F2BEC 003BC1AC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 803F2BF0 003BC1B0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
.L_803F2BF4:
/* 803F2BF4 003BC1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F2BF8 003BC1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F2BFC 003BC1BC  7C 08 03 A6 */	mtlr r0
/* 803F2C00 003BC1C0  38 21 00 10 */	addi r1, r1, 0x10
/* 803F2C04 003BC1C4  4E 80 00 20 */	blr
.endfn CalcTexMtx_Maya__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ34nw4r3g3d6TexSrtQ44nw4r3g3d6TexSrt4Flag

# nw4r::g3d::detail::dcc::CalcWorldMtx_Maya_SSC_Apply(nw4r::math::MTX34*, nw4r::math::VEC3*, const nw4r::math::MTX34*, const nw4r::math::VEC3*, unsigned long, const nw4r::g3d::ChrAnmResult*)
.fn CalcWorldMtx_Maya_SSC_Apply__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3UlPCQ34nw4r3g3d12ChrAnmResult, global
/* 803F2C08 003BC1C8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803F2C0C 003BC1CC  7C 08 02 A6 */	mflr r0
/* 803F2C10 003BC1D0  90 01 00 74 */	stw r0, 0x74(r1)
/* 803F2C14 003BC1D4  39 61 00 70 */	addi r11, r1, 0x70
/* 803F2C18 003BC1D8  4B EC 75 35 */	bl _savegpr_25
/* 803F2C1C 003BC1DC  83 E8 00 00 */	lwz r31, 0x0(r8)
/* 803F2C20 003BC1E0  7C 79 1B 78 */	mr r25, r3
/* 803F2C24 003BC1E4  7C 9A 23 78 */	mr r26, r4
/* 803F2C28 003BC1E8  7C BB 2B 78 */	mr r27, r5
/* 803F2C2C 003BC1EC  57 E0 07 BD */	rlwinm. r0, r31, 0, 30, 30
/* 803F2C30 003BC1F0  7C DC 33 78 */	mr r28, r6
/* 803F2C34 003BC1F4  7C FD 3B 78 */	mr r29, r7
/* 803F2C38 003BC1F8  7D 1E 43 78 */	mr r30, r8
/* 803F2C3C 003BC1FC  40 82 00 0C */	bne .L_803F2C48
/* 803F2C40 003BC200  57 E0 07 7B */	rlwinm. r0, r31, 0, 29, 29
/* 803F2C44 003BC204  41 82 00 14 */	beq .L_803F2C58
.L_803F2C48:
/* 803F2C48 003BC208  7F 63 DB 78 */	mr r3, r27
/* 803F2C4C 003BC20C  7F 24 CB 78 */	mr r4, r25
/* 803F2C50 003BC210  4B F5 A5 C1 */	bl PSMTXCopy
/* 803F2C54 003BC214  48 00 00 E4 */	b .L_803F2D38
.L_803F2C58:
/* 803F2C58 003BC218  57 E0 06 B5 */	rlwinm. r0, r31, 0, 26, 26
/* 803F2C5C 003BC21C  41 82 00 74 */	beq .L_803F2CD0
/* 803F2C60 003BC220  54 E0 00 43 */	rlwinm. r0, r7, 0, 1, 1
/* 803F2C64 003BC224  41 82 00 2C */	beq .L_803F2C90
/* 803F2C68 003BC228  C0 48 00 48 */	lfs f2, 0x48(r8)
/* 803F2C6C 003BC22C  7F 64 DB 78 */	mr r4, r27
/* 803F2C70 003BC230  C0 28 00 38 */	lfs f1, 0x38(r8)
/* 803F2C74 003BC234  38 A1 00 14 */	addi r5, r1, 0x14
/* 803F2C78 003BC238  C0 08 00 28 */	lfs f0, 0x28(r8)
/* 803F2C7C 003BC23C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 803F2C80 003BC240  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 803F2C84 003BC244  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 803F2C88 003BC248  48 01 84 F5 */	bl MTX34Trans__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
/* 803F2C8C 003BC24C  48 00 00 AC */	b .L_803F2D38
.L_803F2C90:
/* 803F2C90 003BC250  C0 26 00 08 */	lfs f1, 0x8(r6)
/* 803F2C94 003BC254  7F 64 DB 78 */	mr r4, r27
/* 803F2C98 003BC258  C0 08 00 48 */	lfs f0, 0x48(r8)
/* 803F2C9C 003BC25C  38 A1 00 08 */	addi r5, r1, 0x8
/* 803F2CA0 003BC260  C0 66 00 04 */	lfs f3, 0x4(r6)
/* 803F2CA4 003BC264  EC 81 00 32 */	fmuls f4, f1, f0
/* 803F2CA8 003BC268  C0 48 00 38 */	lfs f2, 0x38(r8)
/* 803F2CAC 003BC26C  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 803F2CB0 003BC270  C0 08 00 28 */	lfs f0, 0x28(r8)
/* 803F2CB4 003BC274  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F2CB8 003BC278  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 803F2CBC 003BC27C  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F2CC0 003BC280  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 803F2CC4 003BC284  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 803F2CC8 003BC288  48 01 84 B5 */	bl MTX34Trans__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
/* 803F2CCC 003BC28C  48 00 00 6C */	b .L_803F2D38
.L_803F2CD0:
/* 803F2CD0 003BC290  54 E0 00 43 */	rlwinm. r0, r7, 0, 1, 1
/* 803F2CD4 003BC294  41 82 00 18 */	beq .L_803F2CEC
/* 803F2CD8 003BC298  7F 63 DB 78 */	mr r3, r27
/* 803F2CDC 003BC29C  7F 25 CB 78 */	mr r5, r25
/* 803F2CE0 003BC2A0  38 88 00 1C */	addi r4, r8, 0x1c
/* 803F2CE4 003BC2A4  4B F5 A5 6D */	bl PSMTXConcat
/* 803F2CE8 003BC2A8  48 00 00 50 */	b .L_803F2D38
.L_803F2CEC:
/* 803F2CEC 003BC2AC  38 68 00 1C */	addi r3, r8, 0x1c
/* 803F2CF0 003BC2B0  38 81 00 20 */	addi r4, r1, 0x20
/* 803F2CF4 003BC2B4  4B F5 A5 1D */	bl PSMTXCopy
/* 803F2CF8 003BC2B8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 803F2CFC 003BC2BC  7F 63 DB 78 */	mr r3, r27
/* 803F2D00 003BC2C0  C0 1C 00 00 */	lfs f0, 0x0(r28)
/* 803F2D04 003BC2C4  7F 25 CB 78 */	mr r5, r25
/* 803F2D08 003BC2C8  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 803F2D0C 003BC2CC  38 81 00 20 */	addi r4, r1, 0x20
/* 803F2D10 003BC2D0  EC 81 00 32 */	fmuls f4, f1, f0
/* 803F2D14 003BC2D4  C0 5C 00 04 */	lfs f2, 0x4(r28)
/* 803F2D18 003BC2D8  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 803F2D1C 003BC2DC  C0 1C 00 08 */	lfs f0, 0x8(r28)
/* 803F2D20 003BC2E0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F2D24 003BC2E4  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 803F2D28 003BC2E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F2D2C 003BC2EC  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 803F2D30 003BC2F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 803F2D34 003BC2F4  4B F5 A5 1D */	bl PSMTXConcat
.L_803F2D38:
/* 803F2D38 003BC2F8  57 E0 07 39 */	rlwinm. r0, r31, 0, 28, 28
/* 803F2D3C 003BC2FC  41 82 00 1C */	beq .L_803F2D58
/* 803F2D40 003BC300  C0 02 C1 1C */	lfs f0, lbl_8066C49C@sda21(r2)
/* 803F2D44 003BC304  67 A4 40 00 */	oris r4, r29, 0x4000
/* 803F2D48 003BC308  D0 1A 00 08 */	stfs f0, 0x8(r26)
/* 803F2D4C 003BC30C  D0 1A 00 04 */	stfs f0, 0x4(r26)
/* 803F2D50 003BC310  D0 1A 00 00 */	stfs f0, 0x0(r26)
/* 803F2D54 003BC314  48 00 00 20 */	b .L_803F2D74
.L_803F2D58:
/* 803F2D58 003BC318  C0 5E 00 04 */	lfs f2, 0x4(r30)
/* 803F2D5C 003BC31C  57 A4 00 BE */	clrlwi r4, r29, 2
/* 803F2D60 003BC320  C0 3E 00 08 */	lfs f1, 0x8(r30)
/* 803F2D64 003BC324  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 803F2D68 003BC328  D0 5A 00 00 */	stfs f2, 0x0(r26)
/* 803F2D6C 003BC32C  D0 3A 00 04 */	stfs f1, 0x4(r26)
/* 803F2D70 003BC330  D0 1A 00 08 */	stfs f0, 0x8(r26)
.L_803F2D74:
/* 803F2D74 003BC334  57 E0 06 F7 */	rlwinm. r0, r31, 0, 27, 27
/* 803F2D78 003BC338  54 83 01 3E */	clrlwi r3, r4, 4
/* 803F2D7C 003BC33C  41 82 00 08 */	beq .L_803F2D84
/* 803F2D80 003BC340  64 83 10 00 */	oris r3, r4, 0x1000
.L_803F2D84:
/* 803F2D84 003BC344  39 61 00 70 */	addi r11, r1, 0x70
/* 803F2D88 003BC348  4B EC 74 11 */	bl _restgpr_25
/* 803F2D8C 003BC34C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803F2D90 003BC350  7C 08 03 A6 */	mtlr r0
/* 803F2D94 003BC354  38 21 00 70 */	addi r1, r1, 0x70
/* 803F2D98 003BC358  4E 80 00 20 */	blr
.endfn CalcWorldMtx_Maya_SSC_Apply__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3UlPCQ34nw4r3g3d12ChrAnmResult

# 0x80520FD8 - 0x80521010
.rodata
.balign 8
.sym lbl_80520FD8, global
	.4byte MakeTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_S__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.sym lbl_80520FF4, global
	.4byte ProductTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_S__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_maya_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

# 0x8066C498 - 0x8066C4B0
.section .sdata2, "a"
.balign 8
.sym lbl_8066C498, global
	.4byte 0x00000000
.sym lbl_8066C49C, global
	.4byte 0x3F800000
.sym lbl_8066C4A0, global
	.4byte 0x3F360B61
.sym lbl_8066C4A4, global
	.4byte 0x3F000000
.sym lbl_8066C4A8, global
	.4byte 0xBF000000
	.4byte 0x00000000
