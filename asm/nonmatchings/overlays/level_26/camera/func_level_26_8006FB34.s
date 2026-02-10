.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_26_8006FB34, 0x150

glabel func_level_26_8006FB34
    /* 1DB28D0 8006FB34 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1DB28D4 8006FB38 0D000224 */  addiu      $v0, $zero, 0xD
    /* 1DB28D8 8006FB3C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1DB28DC 8006FB40 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1DB28E0 8006FB44 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1DB28E4 8006FB48 06008210 */  beq        $a0, $v0, .Llevel_26_8006FB64
    /* 1DB28E8 8006FB4C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1DB28EC 8006FB50 14000224 */  addiu      $v0, $zero, 0x14
    /* 1DB28F0 8006FB54 24008210 */  beq        $a0, $v0, .Llevel_26_8006FBE8
    /* 1DB28F4 8006FB58 01000224 */   addiu     $v0, $zero, 0x1
    /* 1DB28F8 8006FB5C 1ABF0108 */  j          .Llevel_26_8006FC68
    /* 1DB28FC 8006FB60 00000000 */   nop
  .Llevel_26_8006FB64:
    /* 1DB2900 8006FB64 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 1DB2904 8006FB68 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 1DB2908 8006FB6C 10002426 */  addiu      $a0, $s1, 0x10
    /* 1DB290C 8006FB70 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 1DB2910 8006FB74 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 1DB2914 8006FB78 01000224 */  addiu      $v0, $zero, 0x1
    /* 1DB2918 8006FB7C 000020AE */  sw         $zero, 0x0($s1)
    /* 1DB291C 8006FB80 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 1DB2920 8006FB84 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 1DB2924 8006FB88 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 1DB2928 8006FB8C C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
    /* 1DB292C 8006FB90 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 1DB2930 8006FB94 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 1DB2934 8006FB98 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 1DB2938 8006FB9C C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 1DB293C 8006FBA0 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 1DB2940 8006FBA4 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 1DB2944 8006FBA8 6C6F000C */  jal        func_8001BDB0
    /* 1DB2948 8006FBAC 21284002 */   addu      $a1, $s2, $zero
    /* 1DB294C 8006FBB0 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 1DB2950 8006FBB4 21200002 */  addu       $a0, $s0, $zero
    /* 1DB2954 8006FBB8 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 1DB2958 8006FBBC 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 1DB295C 8006FBC0 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 1DB2960 8006FBC4 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1DB2964 8006FBC8 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 1DB2968 8006FBCC 867B000C */  jal        func_8001EE18
    /* 1DB296C 8006FBD0 21304002 */   addu      $a2, $s2, $zero
    /* 1DB2970 8006FBD4 21200002 */  addu       $a0, $s0, $zero
    /* 1DB2974 8006FBD8 EA7B000C */  jal        func_8001EFA8
    /* 1DB2978 8006FBDC 21280002 */   addu      $a1, $s0, $zero
    /* 1DB297C 8006FBE0 16BF0108 */  j          .Llevel_26_8006FC58
    /* 1DB2980 8006FBE4 54002426 */   addiu     $a0, $s1, 0x54
  .Llevel_26_8006FBE8:
    /* 1DB2984 8006FBE8 0680103C */  lui        $s0, %hi(D_80067ED4)
    /* 1DB2988 8006FBEC D47E1026 */  addiu      $s0, $s0, %lo(D_80067ED4)
    /* 1DB298C 8006FBF0 2C001126 */  addiu      $s1, $s0, 0x2C
    /* 1DB2990 8006FBF4 21202002 */  addu       $a0, $s1, $zero
    /* 1DB2994 8006FBF8 D8FF0526 */  addiu      $a1, $s0, -0x28
    /* 1DB2998 8006FBFC 000000AE */  sw         $zero, 0x0($s0)
    /* 1DB299C 8006FC00 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 1DB29A0 8006FC04 C47F22A0 */  sb         $v0, %lo(D_80067FC4)($at)
    /* 1DB29A4 8006FC08 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 1DB29A8 8006FC0C C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
    /* 1DB29AC 8006FC10 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 1DB29B0 8006FC14 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 1DB29B4 8006FC18 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 1DB29B8 8006FC1C C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 1DB29BC 8006FC20 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 1DB29C0 8006FC24 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 1DB29C4 8006FC28 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1DB29C8 8006FC2C F07E20AC */  sw         $zero, %lo(D_80067EF0)($at)
    /* 1DB29CC 8006FC30 867B000C */  jal        func_8001EE18
    /* 1DB29D0 8006FC34 10000626 */   addiu     $a2, $s0, 0x10
    /* 1DB29D4 8006FC38 21202002 */  addu       $a0, $s1, $zero
    /* 1DB29D8 8006FC3C EA7B000C */  jal        func_8001EFA8
    /* 1DB29DC 8006FC40 21282002 */   addu      $a1, $s1, $zero
    /* 1DB29E0 8006FC44 54000426 */  addiu      $a0, $s0, 0x54
    /* 1DB29E4 8006FC48 21282002 */  addu       $a1, $s1, $zero
    /* 1DB29E8 8006FC4C 337B000C */  jal        func_8001ECCC
    /* 1DB29EC 8006FC50 21300000 */   addu      $a2, $zero, $zero
    /* 1DB29F0 8006FC54 40000426 */  addiu      $a0, $s0, 0x40
  .Llevel_26_8006FC58:
    /* 1DB29F4 8006FC58 0680053C */  lui        $a1, %hi(D_80067F00)
    /* 1DB29F8 8006FC5C 007FA524 */  addiu      $a1, $a1, %lo(D_80067F00)
    /* 1DB29FC 8006FC60 337B000C */  jal        func_8001ECCC
    /* 1DB2A00 8006FC64 21300000 */   addu      $a2, $zero, $zero
  .Llevel_26_8006FC68:
    /* 1DB2A04 8006FC68 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1DB2A08 8006FC6C 1800B28F */  lw         $s2, 0x18($sp)
    /* 1DB2A0C 8006FC70 1400B18F */  lw         $s1, 0x14($sp)
    /* 1DB2A10 8006FC74 1000B08F */  lw         $s0, 0x10($sp)
    /* 1DB2A14 8006FC78 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1DB2A18 8006FC7C 0800E003 */  jr         $ra
    /* 1DB2A1C 8006FC80 00000000 */   nop
endlabel func_level_26_8006FB34
