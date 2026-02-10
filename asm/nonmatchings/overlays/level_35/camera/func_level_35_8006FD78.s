.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_35_8006FD78, 0xC4

glabel func_level_35_8006FD78
    /* 29D5314 8006FD78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 29D5318 8006FD7C 03000224 */  addiu      $v0, $zero, 0x3
    /* 29D531C 8006FD80 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 29D5320 8006FD84 1800B2AF */  sw         $s2, 0x18($sp)
    /* 29D5324 8006FD88 1400B1AF */  sw         $s1, 0x14($sp)
    /* 29D5328 8006FD8C 24008214 */  bne        $a0, $v0, .Llevel_35_8006FE20
    /* 29D532C 8006FD90 1000B0AF */   sw        $s0, 0x10($sp)
    /* 29D5330 8006FD94 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 29D5334 8006FD98 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 29D5338 8006FD9C 10002426 */  addiu      $a0, $s1, 0x10
    /* 29D533C 8006FDA0 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 29D5340 8006FDA4 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 29D5344 8006FDA8 01000224 */  addiu      $v0, $zero, 0x1
    /* 29D5348 8006FDAC 000020AE */  sw         $zero, 0x0($s1)
    /* 29D534C 8006FDB0 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 29D5350 8006FDB4 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 29D5354 8006FDB8 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 29D5358 8006FDBC C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 29D535C 8006FDC0 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 29D5360 8006FDC4 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 29D5364 8006FDC8 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 29D5368 8006FDCC C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 29D536C 8006FDD0 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 29D5370 8006FDD4 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 29D5374 8006FDD8 6C6F000C */  jal        func_8001BDB0
    /* 29D5378 8006FDDC 21284002 */   addu      $a1, $s2, $zero
    /* 29D537C 8006FDE0 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 29D5380 8006FDE4 21200002 */  addu       $a0, $s0, $zero
    /* 29D5384 8006FDE8 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 29D5388 8006FDEC 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 29D538C 8006FDF0 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 29D5390 8006FDF4 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 29D5394 8006FDF8 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 29D5398 8006FDFC 867B000C */  jal        func_8001EE18
    /* 29D539C 8006FE00 21304002 */   addu      $a2, $s2, $zero
    /* 29D53A0 8006FE04 21200002 */  addu       $a0, $s0, $zero
    /* 29D53A4 8006FE08 EA7B000C */  jal        func_8001EFA8
    /* 29D53A8 8006FE0C 21280002 */   addu      $a1, $s0, $zero
    /* 29D53AC 8006FE10 54002426 */  addiu      $a0, $s1, 0x54
    /* 29D53B0 8006FE14 21280002 */  addu       $a1, $s0, $zero
    /* 29D53B4 8006FE18 337B000C */  jal        func_8001ECCC
    /* 29D53B8 8006FE1C 21300000 */   addu      $a2, $zero, $zero
  .Llevel_35_8006FE20:
    /* 29D53BC 8006FE20 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 29D53C0 8006FE24 1800B28F */  lw         $s2, 0x18($sp)
    /* 29D53C4 8006FE28 1400B18F */  lw         $s1, 0x14($sp)
    /* 29D53C8 8006FE2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 29D53CC 8006FE30 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 29D53D0 8006FE34 0800E003 */  jr         $ra
    /* 29D53D4 8006FE38 00000000 */   nop
endlabel func_level_35_8006FD78
