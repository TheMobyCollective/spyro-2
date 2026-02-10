.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_21_8006F4E4, 0xC4

glabel func_level_21_8006F4E4
    /* 1567280 8006F4E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1567284 8006F4E8 17000224 */  addiu      $v0, $zero, 0x17
    /* 1567288 8006F4EC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 156728C 8006F4F0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1567290 8006F4F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1567294 8006F4F8 24008214 */  bne        $a0, $v0, .Llevel_21_8006F58C
    /* 1567298 8006F4FC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 156729C 8006F500 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 15672A0 8006F504 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 15672A4 8006F508 10002426 */  addiu      $a0, $s1, 0x10
    /* 15672A8 8006F50C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 15672AC 8006F510 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 15672B0 8006F514 01000224 */  addiu      $v0, $zero, 0x1
    /* 15672B4 8006F518 000020AE */  sw         $zero, 0x0($s1)
    /* 15672B8 8006F51C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 15672BC 8006F520 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 15672C0 8006F524 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 15672C4 8006F528 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 15672C8 8006F52C 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 15672CC 8006F530 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 15672D0 8006F534 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 15672D4 8006F538 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 15672D8 8006F53C 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 15672DC 8006F540 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 15672E0 8006F544 6C6F000C */  jal        func_8001BDB0
    /* 15672E4 8006F548 21284002 */   addu      $a1, $s2, $zero
    /* 15672E8 8006F54C 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 15672EC 8006F550 21200002 */  addu       $a0, $s0, $zero
    /* 15672F0 8006F554 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 15672F4 8006F558 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 15672F8 8006F55C 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 15672FC 8006F560 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1567300 8006F564 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 1567304 8006F568 867B000C */  jal        func_8001EE18
    /* 1567308 8006F56C 21304002 */   addu      $a2, $s2, $zero
    /* 156730C 8006F570 21200002 */  addu       $a0, $s0, $zero
    /* 1567310 8006F574 EA7B000C */  jal        func_8001EFA8
    /* 1567314 8006F578 21280002 */   addu      $a1, $s0, $zero
    /* 1567318 8006F57C 54002426 */  addiu      $a0, $s1, 0x54
    /* 156731C 8006F580 21280002 */  addu       $a1, $s0, $zero
    /* 1567320 8006F584 337B000C */  jal        func_8001ECCC
    /* 1567324 8006F588 21300000 */   addu      $a2, $zero, $zero
  .Llevel_21_8006F58C:
    /* 1567328 8006F58C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 156732C 8006F590 1800B28F */  lw         $s2, 0x18($sp)
    /* 1567330 8006F594 1400B18F */  lw         $s1, 0x14($sp)
    /* 1567334 8006F598 1000B08F */  lw         $s0, 0x10($sp)
    /* 1567338 8006F59C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 156733C 8006F5A0 0800E003 */  jr         $ra
    /* 1567340 8006F5A4 00000000 */   nop
endlabel func_level_21_8006F4E4
