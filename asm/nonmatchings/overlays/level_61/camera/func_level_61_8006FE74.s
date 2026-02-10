.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_61_8006FE74, 0xC4

glabel func_level_61_8006FE74
    /* 3EBAC10 8006FE74 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3EBAC14 8006FE78 17000224 */  addiu      $v0, $zero, 0x17
    /* 3EBAC18 8006FE7C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3EBAC1C 8006FE80 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3EBAC20 8006FE84 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3EBAC24 8006FE88 24008214 */  bne        $a0, $v0, .Llevel_61_8006FF1C
    /* 3EBAC28 8006FE8C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3EBAC2C 8006FE90 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 3EBAC30 8006FE94 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 3EBAC34 8006FE98 10002426 */  addiu      $a0, $s1, 0x10
    /* 3EBAC38 8006FE9C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 3EBAC3C 8006FEA0 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 3EBAC40 8006FEA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 3EBAC44 8006FEA8 000020AE */  sw         $zero, 0x0($s1)
    /* 3EBAC48 8006FEAC 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 3EBAC4C 8006FEB0 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 3EBAC50 8006FEB4 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 3EBAC54 8006FEB8 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 3EBAC58 8006FEBC 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 3EBAC5C 8006FEC0 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 3EBAC60 8006FEC4 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 3EBAC64 8006FEC8 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 3EBAC68 8006FECC 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 3EBAC6C 8006FED0 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 3EBAC70 8006FED4 6C6F000C */  jal        func_8001BDB0
    /* 3EBAC74 8006FED8 21284002 */   addu      $a1, $s2, $zero
    /* 3EBAC78 8006FEDC 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 3EBAC7C 8006FEE0 21200002 */  addu       $a0, $s0, $zero
    /* 3EBAC80 8006FEE4 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 3EBAC84 8006FEE8 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 3EBAC88 8006FEEC 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 3EBAC8C 8006FEF0 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 3EBAC90 8006FEF4 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 3EBAC94 8006FEF8 867B000C */  jal        func_8001EE18
    /* 3EBAC98 8006FEFC 21304002 */   addu      $a2, $s2, $zero
    /* 3EBAC9C 8006FF00 21200002 */  addu       $a0, $s0, $zero
    /* 3EBACA0 8006FF04 EA7B000C */  jal        func_8001EFA8
    /* 3EBACA4 8006FF08 21280002 */   addu      $a1, $s0, $zero
    /* 3EBACA8 8006FF0C 54002426 */  addiu      $a0, $s1, 0x54
    /* 3EBACAC 8006FF10 21280002 */  addu       $a1, $s0, $zero
    /* 3EBACB0 8006FF14 337B000C */  jal        func_8001ECCC
    /* 3EBACB4 8006FF18 21300000 */   addu      $a2, $zero, $zero
  .Llevel_61_8006FF1C:
    /* 3EBACB8 8006FF1C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3EBACBC 8006FF20 1800B28F */  lw         $s2, 0x18($sp)
    /* 3EBACC0 8006FF24 1400B18F */  lw         $s1, 0x14($sp)
    /* 3EBACC4 8006FF28 1000B08F */  lw         $s0, 0x10($sp)
    /* 3EBACC8 8006FF2C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3EBACCC 8006FF30 0800E003 */  jr         $ra
    /* 3EBACD0 8006FF34 00000000 */   nop
endlabel func_level_61_8006FE74
