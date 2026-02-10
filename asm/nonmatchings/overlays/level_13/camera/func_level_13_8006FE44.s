.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_13_8006FE44, 0xD0

glabel func_level_13_8006FE44
    /* 133C3E0 8006FE44 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 133C3E4 8006FE48 05000224 */  addiu      $v0, $zero, 0x5
    /* 133C3E8 8006FE4C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 133C3EC 8006FE50 1800B2AF */  sw         $s2, 0x18($sp)
    /* 133C3F0 8006FE54 1400B1AF */  sw         $s1, 0x14($sp)
    /* 133C3F4 8006FE58 04008210 */  beq        $a0, $v0, .Llevel_13_8006FE6C
    /* 133C3F8 8006FE5C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 133C3FC 8006FE60 17000224 */  addiu      $v0, $zero, 0x17
    /* 133C400 8006FE64 24008214 */  bne        $a0, $v0, .Llevel_13_8006FEF8
    /* 133C404 8006FE68 00000000 */   nop
  .Llevel_13_8006FE6C:
    /* 133C408 8006FE6C 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 133C40C 8006FE70 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 133C410 8006FE74 10002426 */  addiu      $a0, $s1, 0x10
    /* 133C414 8006FE78 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 133C418 8006FE7C F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 133C41C 8006FE80 01000224 */  addiu      $v0, $zero, 0x1
    /* 133C420 8006FE84 000020AE */  sw         $zero, 0x0($s1)
    /* 133C424 8006FE88 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 133C428 8006FE8C C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 133C42C 8006FE90 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 133C430 8006FE94 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 133C434 8006FE98 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 133C438 8006FE9C C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 133C43C 8006FEA0 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 133C440 8006FEA4 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 133C444 8006FEA8 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 133C448 8006FEAC E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 133C44C 8006FEB0 6C6F000C */  jal        func_8001BDB0
    /* 133C450 8006FEB4 21284002 */   addu      $a1, $s2, $zero
    /* 133C454 8006FEB8 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 133C458 8006FEBC 21200002 */  addu       $a0, $s0, $zero
    /* 133C45C 8006FEC0 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 133C460 8006FEC4 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 133C464 8006FEC8 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 133C468 8006FECC 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 133C46C 8006FED0 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 133C470 8006FED4 867B000C */  jal        func_8001EE18
    /* 133C474 8006FED8 21304002 */   addu      $a2, $s2, $zero
    /* 133C478 8006FEDC 21200002 */  addu       $a0, $s0, $zero
    /* 133C47C 8006FEE0 EA7B000C */  jal        func_8001EFA8
    /* 133C480 8006FEE4 21280002 */   addu      $a1, $s0, $zero
    /* 133C484 8006FEE8 54002426 */  addiu      $a0, $s1, 0x54
    /* 133C488 8006FEEC 21280002 */  addu       $a1, $s0, $zero
    /* 133C48C 8006FEF0 337B000C */  jal        func_8001ECCC
    /* 133C490 8006FEF4 21300000 */   addu      $a2, $zero, $zero
  .Llevel_13_8006FEF8:
    /* 133C494 8006FEF8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 133C498 8006FEFC 1800B28F */  lw         $s2, 0x18($sp)
    /* 133C49C 8006FF00 1400B18F */  lw         $s1, 0x14($sp)
    /* 133C4A0 8006FF04 1000B08F */  lw         $s0, 0x10($sp)
    /* 133C4A4 8006FF08 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 133C4A8 8006FF0C 0800E003 */  jr         $ra
    /* 133C4AC 8006FF10 00000000 */   nop
endlabel func_level_13_8006FE44
