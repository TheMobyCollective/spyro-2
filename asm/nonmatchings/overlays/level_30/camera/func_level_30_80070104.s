.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_30_80070104, 0x138

glabel func_level_30_80070104
    /* 1F2DEA0 80070104 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1F2DEA4 80070108 11000224 */  addiu      $v0, $zero, 0x11
    /* 1F2DEA8 8007010C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1F2DEAC 80070110 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1F2DEB0 80070114 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1F2DEB4 80070118 0D008210 */  beq        $a0, $v0, .Llevel_30_80070150
    /* 1F2DEB8 8007011C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1F2DEBC 80070120 12008228 */  slti       $v0, $a0, 0x12
    /* 1F2DEC0 80070124 05004010 */  beqz       $v0, .Llevel_30_8007013C
    /* 1F2DEC4 80070128 04000224 */   addiu     $v0, $zero, 0x4
    /* 1F2DEC8 8007012C 19008210 */  beq        $a0, $v0, .Llevel_30_80070194
    /* 1F2DECC 80070130 00000000 */   nop
    /* 1F2DED0 80070134 88C00108 */  j          .Llevel_30_80070220
    /* 1F2DED4 80070138 00000000 */   nop
  .Llevel_30_8007013C:
    /* 1F2DED8 8007013C 17000224 */  addiu      $v0, $zero, 0x17
    /* 1F2DEDC 80070140 14008210 */  beq        $a0, $v0, .Llevel_30_80070194
    /* 1F2DEE0 80070144 00000000 */   nop
    /* 1F2DEE4 80070148 88C00108 */  j          .Llevel_30_80070220
    /* 1F2DEE8 8007014C 00000000 */   nop
  .Llevel_30_80070150:
    /* 1F2DEEC 80070150 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 1F2DEF0 80070154 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 1F2DEF4 80070158 10002426 */  addiu      $a0, $s1, 0x10
    /* 1F2DEF8 8007015C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 1F2DEFC 80070160 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 1F2DF00 80070164 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F2DF04 80070168 000020AE */  sw         $zero, 0x0($s1)
    /* 1F2DF08 8007016C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 1F2DF0C 80070170 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 1F2DF10 80070174 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 1F2DF14 80070178 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 1F2DF18 8007017C 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 1F2DF1C 80070180 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 1F2DF20 80070184 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 1F2DF24 80070188 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 1F2DF28 8007018C 77C00108 */  j          .Llevel_30_800701DC
    /* 1F2DF2C 80070190 21284002 */   addu      $a1, $s2, $zero
  .Llevel_30_80070194:
    /* 1F2DF30 80070194 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 1F2DF34 80070198 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 1F2DF38 8007019C 10002426 */  addiu      $a0, $s1, 0x10
    /* 1F2DF3C 800701A0 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 1F2DF40 800701A4 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 1F2DF44 800701A8 21284002 */  addu       $a1, $s2, $zero
    /* 1F2DF48 800701AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F2DF4C 800701B0 000020AE */  sw         $zero, 0x0($s1)
    /* 1F2DF50 800701B4 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 1F2DF54 800701B8 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 1F2DF58 800701BC 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 1F2DF5C 800701C0 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 1F2DF60 800701C4 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 1F2DF64 800701C8 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 1F2DF68 800701CC 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 1F2DF6C 800701D0 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 1F2DF70 800701D4 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 1F2DF74 800701D8 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
  .Llevel_30_800701DC:
    /* 1F2DF78 800701DC 6C6F000C */  jal        func_8001BDB0
    /* 1F2DF7C 800701E0 2C003026 */   addiu     $s0, $s1, 0x2C
    /* 1F2DF80 800701E4 21200002 */  addu       $a0, $s0, $zero
    /* 1F2DF84 800701E8 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 1F2DF88 800701EC 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 1F2DF8C 800701F0 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 1F2DF90 800701F4 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1F2DF94 800701F8 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 1F2DF98 800701FC 867B000C */  jal        func_8001EE18
    /* 1F2DF9C 80070200 21304002 */   addu      $a2, $s2, $zero
    /* 1F2DFA0 80070204 21200002 */  addu       $a0, $s0, $zero
    /* 1F2DFA4 80070208 EA7B000C */  jal        func_8001EFA8
    /* 1F2DFA8 8007020C 21280002 */   addu      $a1, $s0, $zero
    /* 1F2DFAC 80070210 54002426 */  addiu      $a0, $s1, 0x54
    /* 1F2DFB0 80070214 21280002 */  addu       $a1, $s0, $zero
    /* 1F2DFB4 80070218 337B000C */  jal        func_8001ECCC
    /* 1F2DFB8 8007021C 21300000 */   addu      $a2, $zero, $zero
  .Llevel_30_80070220:
    /* 1F2DFBC 80070220 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1F2DFC0 80070224 1800B28F */  lw         $s2, 0x18($sp)
    /* 1F2DFC4 80070228 1400B18F */  lw         $s1, 0x14($sp)
    /* 1F2DFC8 8007022C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1F2DFCC 80070230 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1F2DFD0 80070234 0800E003 */  jr         $ra
    /* 1F2DFD4 80070238 00000000 */   nop
endlabel func_level_30_80070104
