.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_25_8006FDA0, 0xC4

glabel func_level_25_8006FDA0
    /* 1BC833C 8006FDA0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1BC8340 8006FDA4 03000224 */  addiu      $v0, $zero, 0x3
    /* 1BC8344 8006FDA8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1BC8348 8006FDAC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1BC834C 8006FDB0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1BC8350 8006FDB4 24008214 */  bne        $a0, $v0, .Llevel_25_8006FE48
    /* 1BC8354 8006FDB8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1BC8358 8006FDBC 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 1BC835C 8006FDC0 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 1BC8360 8006FDC4 10002426 */  addiu      $a0, $s1, 0x10
    /* 1BC8364 8006FDC8 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 1BC8368 8006FDCC F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 1BC836C 8006FDD0 01000224 */  addiu      $v0, $zero, 0x1
    /* 1BC8370 8006FDD4 000020AE */  sw         $zero, 0x0($s1)
    /* 1BC8374 8006FDD8 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 1BC8378 8006FDDC C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 1BC837C 8006FDE0 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 1BC8380 8006FDE4 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 1BC8384 8006FDE8 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 1BC8388 8006FDEC C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 1BC838C 8006FDF0 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 1BC8390 8006FDF4 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 1BC8394 8006FDF8 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 1BC8398 8006FDFC E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 1BC839C 8006FE00 6C6F000C */  jal        func_8001BDB0
    /* 1BC83A0 8006FE04 21284002 */   addu      $a1, $s2, $zero
    /* 1BC83A4 8006FE08 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 1BC83A8 8006FE0C 21200002 */  addu       $a0, $s0, $zero
    /* 1BC83AC 8006FE10 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 1BC83B0 8006FE14 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 1BC83B4 8006FE18 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 1BC83B8 8006FE1C 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1BC83BC 8006FE20 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 1BC83C0 8006FE24 867B000C */  jal        func_8001EE18
    /* 1BC83C4 8006FE28 21304002 */   addu      $a2, $s2, $zero
    /* 1BC83C8 8006FE2C 21200002 */  addu       $a0, $s0, $zero
    /* 1BC83CC 8006FE30 EA7B000C */  jal        func_8001EFA8
    /* 1BC83D0 8006FE34 21280002 */   addu      $a1, $s0, $zero
    /* 1BC83D4 8006FE38 54002426 */  addiu      $a0, $s1, 0x54
    /* 1BC83D8 8006FE3C 21280002 */  addu       $a1, $s0, $zero
    /* 1BC83DC 8006FE40 337B000C */  jal        func_8001ECCC
    /* 1BC83E0 8006FE44 21300000 */   addu      $a2, $zero, $zero
  .Llevel_25_8006FE48:
    /* 1BC83E4 8006FE48 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1BC83E8 8006FE4C 1800B28F */  lw         $s2, 0x18($sp)
    /* 1BC83EC 8006FE50 1400B18F */  lw         $s1, 0x14($sp)
    /* 1BC83F0 8006FE54 1000B08F */  lw         $s0, 0x10($sp)
    /* 1BC83F4 8006FE58 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1BC83F8 8006FE5C 0800E003 */  jr         $ra
    /* 1BC83FC 8006FE60 00000000 */   nop
endlabel func_level_25_8006FDA0
