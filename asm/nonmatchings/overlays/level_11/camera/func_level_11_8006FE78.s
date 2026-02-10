.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_11_8006FE78, 0xD0

glabel func_level_11_8006FE78
    /* F2B414 8006FE78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F2B418 8006FE7C 03000224 */  addiu      $v0, $zero, 0x3
    /* F2B41C 8006FE80 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* F2B420 8006FE84 1800B2AF */  sw         $s2, 0x18($sp)
    /* F2B424 8006FE88 1400B1AF */  sw         $s1, 0x14($sp)
    /* F2B428 8006FE8C 04008210 */  beq        $a0, $v0, .Llevel_11_8006FEA0
    /* F2B42C 8006FE90 1000B0AF */   sw        $s0, 0x10($sp)
    /* F2B430 8006FE94 17000224 */  addiu      $v0, $zero, 0x17
    /* F2B434 8006FE98 24008214 */  bne        $a0, $v0, .Llevel_11_8006FF2C
    /* F2B438 8006FE9C 00000000 */   nop
  .Llevel_11_8006FEA0:
    /* F2B43C 8006FEA0 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* F2B440 8006FEA4 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* F2B444 8006FEA8 10002426 */  addiu      $a0, $s1, 0x10
    /* F2B448 8006FEAC 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* F2B44C 8006FEB0 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* F2B450 8006FEB4 01000224 */  addiu      $v0, $zero, 0x1
    /* F2B454 8006FEB8 000020AE */  sw         $zero, 0x0($s1)
    /* F2B458 8006FEBC 0680013C */  lui        $at, %hi(D_80067FC4)
    /* F2B45C 8006FEC0 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* F2B460 8006FEC4 0680013C */  lui        $at, %hi(D_80067FC5)
    /* F2B464 8006FEC8 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* F2B468 8006FECC 0680013C */  lui        $at, %hi(D_80067FC6)
    /* F2B46C 8006FED0 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* F2B470 8006FED4 0680013C */  lui        $at, %hi(D_80067FC9)
    /* F2B474 8006FED8 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* F2B478 8006FEDC 0680013C */  lui        $at, %hi(D_80067EE0)
    /* F2B47C 8006FEE0 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* F2B480 8006FEE4 6C6F000C */  jal        func_8001BDB0
    /* F2B484 8006FEE8 21284002 */   addu      $a1, $s2, $zero
    /* F2B488 8006FEEC 2C003026 */  addiu      $s0, $s1, 0x2C
    /* F2B48C 8006FEF0 21200002 */  addu       $a0, $s0, $zero
    /* F2B490 8006FEF4 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* F2B494 8006FEF8 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* F2B498 8006FEFC 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* F2B49C 8006FF00 0680013C */  lui        $at, %hi(D_80067EF0)
    /* F2B4A0 8006FF04 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* F2B4A4 8006FF08 867B000C */  jal        func_8001EE18
    /* F2B4A8 8006FF0C 21304002 */   addu      $a2, $s2, $zero
    /* F2B4AC 8006FF10 21200002 */  addu       $a0, $s0, $zero
    /* F2B4B0 8006FF14 EA7B000C */  jal        func_8001EFA8
    /* F2B4B4 8006FF18 21280002 */   addu      $a1, $s0, $zero
    /* F2B4B8 8006FF1C 54002426 */  addiu      $a0, $s1, 0x54
    /* F2B4BC 8006FF20 21280002 */  addu       $a1, $s0, $zero
    /* F2B4C0 8006FF24 337B000C */  jal        func_8001ECCC
    /* F2B4C4 8006FF28 21300000 */   addu      $a2, $zero, $zero
  .Llevel_11_8006FF2C:
    /* F2B4C8 8006FF2C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* F2B4CC 8006FF30 1800B28F */  lw         $s2, 0x18($sp)
    /* F2B4D0 8006FF34 1400B18F */  lw         $s1, 0x14($sp)
    /* F2B4D4 8006FF38 1000B08F */  lw         $s0, 0x10($sp)
    /* F2B4D8 8006FF3C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* F2B4DC 8006FF40 0800E003 */  jr         $ra
    /* F2B4E0 8006FF44 00000000 */   nop
endlabel func_level_11_8006FE78
