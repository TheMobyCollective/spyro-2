.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_32_8006FAF8, 0x120

glabel func_level_32_8006FAF8
    /* 2361894 8006FAF8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2361898 8006FAFC 15000224 */  addiu      $v0, $zero, 0x15
    /* 236189C 8006FB00 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 23618A0 8006FB04 1800B2AF */  sw         $s2, 0x18($sp)
    /* 23618A4 8006FB08 1400B1AF */  sw         $s1, 0x14($sp)
    /* 23618A8 8006FB0C 18008210 */  beq        $a0, $v0, .Llevel_32_8006FB70
    /* 23618AC 8006FB10 1000B0AF */   sw        $s0, 0x10($sp)
    /* 23618B0 8006FB14 16008228 */  slti       $v0, $a0, 0x16
    /* 23618B4 8006FB18 05004010 */  beqz       $v0, .Llevel_32_8006FB30
    /* 23618B8 8006FB1C 03000224 */   addiu     $v0, $zero, 0x3
    /* 23618BC 8006FB20 06008210 */  beq        $a0, $v0, .Llevel_32_8006FB3C
    /* 23618C0 8006FB24 00000000 */   nop
    /* 23618C4 8006FB28 FFBE0108 */  j          .Llevel_32_8006FBFC
    /* 23618C8 8006FB2C 00000000 */   nop
  .Llevel_32_8006FB30:
    /* 23618CC 8006FB30 17000224 */  addiu      $v0, $zero, 0x17
    /* 23618D0 8006FB34 31008214 */  bne        $a0, $v0, .Llevel_32_8006FBFC
    /* 23618D4 8006FB38 00000000 */   nop
  .Llevel_32_8006FB3C:
    /* 23618D8 8006FB3C 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 23618DC 8006FB40 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 23618E0 8006FB44 10002426 */  addiu      $a0, $s1, 0x10
    /* 23618E4 8006FB48 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 23618E8 8006FB4C F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 23618EC 8006FB50 21284002 */  addu       $a1, $s2, $zero
    /* 23618F0 8006FB54 000020AE */  sw         $zero, 0x0($s1)
    /* 23618F4 8006FB58 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 23618F8 8006FB5C C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 23618FC 8006FB60 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2361900 8006FB64 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 2361904 8006FB68 E8BE0108 */  j          .Llevel_32_8006FBA0
    /* 2361908 8006FB6C 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_32_8006FB70:
    /* 236190C 8006FB70 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 2361910 8006FB74 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 2361914 8006FB78 10002426 */  addiu      $a0, $s1, 0x10
    /* 2361918 8006FB7C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 236191C 8006FB80 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 2361920 8006FB84 21284002 */  addu       $a1, $s2, $zero
    /* 2361924 8006FB88 01000224 */  addiu      $v0, $zero, 0x1
    /* 2361928 8006FB8C 000020AE */  sw         $zero, 0x0($s1)
    /* 236192C 8006FB90 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2361930 8006FB94 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 2361934 8006FB98 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2361938 8006FB9C C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
  .Llevel_32_8006FBA0:
    /* 236193C 8006FBA0 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2361940 8006FBA4 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 2361944 8006FBA8 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 2361948 8006FBAC C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 236194C 8006FBB0 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 2361950 8006FBB4 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 2361954 8006FBB8 6C6F000C */  jal        func_8001BDB0
    /* 2361958 8006FBBC 2C003026 */   addiu     $s0, $s1, 0x2C
    /* 236195C 8006FBC0 21200002 */  addu       $a0, $s0, $zero
    /* 2361960 8006FBC4 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 2361964 8006FBC8 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 2361968 8006FBCC 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 236196C 8006FBD0 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2361970 8006FBD4 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2361974 8006FBD8 867B000C */  jal        func_8001EE18
    /* 2361978 8006FBDC 21304002 */   addu      $a2, $s2, $zero
    /* 236197C 8006FBE0 21200002 */  addu       $a0, $s0, $zero
    /* 2361980 8006FBE4 EA7B000C */  jal        func_8001EFA8
    /* 2361984 8006FBE8 21280002 */   addu      $a1, $s0, $zero
    /* 2361988 8006FBEC 54002426 */  addiu      $a0, $s1, 0x54
    /* 236198C 8006FBF0 21280002 */  addu       $a1, $s0, $zero
    /* 2361990 8006FBF4 337B000C */  jal        func_8001ECCC
    /* 2361994 8006FBF8 21300000 */   addu      $a2, $zero, $zero
  .Llevel_32_8006FBFC:
    /* 2361998 8006FBFC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 236199C 8006FC00 1800B28F */  lw         $s2, 0x18($sp)
    /* 23619A0 8006FC04 1400B18F */  lw         $s1, 0x14($sp)
    /* 23619A4 8006FC08 1000B08F */  lw         $s0, 0x10($sp)
    /* 23619A8 8006FC0C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 23619AC 8006FC10 0800E003 */  jr         $ra
    /* 23619B0 8006FC14 00000000 */   nop
endlabel func_level_32_8006FAF8
