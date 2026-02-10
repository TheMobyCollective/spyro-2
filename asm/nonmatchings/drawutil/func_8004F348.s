.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004F348, 0x70

glabel func_8004F348
    /* 3FB48 8004F348 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3FB4C 8004F34C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3FB50 8004F350 21800000 */  addu       $s0, $zero, $zero
    /* 3FB54 8004F354 1400BFAF */  sw         $ra, 0x14($sp)
  .L8004F358:
    /* 3FB58 8004F358 0680013C */  lui        $at, %hi(D_80063D98)
    /* 3FB5C 8004F35C 21083000 */  addu       $at, $at, $s0
    /* 3FB60 8004F360 983D2490 */  lbu        $a0, %lo(D_80063D98)($at)
    /* 3FB64 8004F364 0680013C */  lui        $at, %hi(D_80063D9A)
    /* 3FB68 8004F368 21083000 */  addu       $at, $at, $s0
    /* 3FB6C 8004F36C 9A3D2690 */  lbu        $a2, %lo(D_80063D9A)($at)
    /* 3FB70 8004F370 0680013C */  lui        $at, %hi(D_80063D99)
    /* 3FB74 8004F374 21083000 */  addu       $at, $at, $s0
    /* 3FB78 8004F378 993D2590 */  lbu        $a1, %lo(D_80063D99)($at)
    /* 3FB7C 8004F37C 0680013C */  lui        $at, %hi(D_80063D9B)
    /* 3FB80 8004F380 21083000 */  addu       $at, $at, $s0
    /* 3FB84 8004F384 9B3D2790 */  lbu        $a3, %lo(D_80063D9B)($at)
    /* 3FB88 8004F388 04001026 */  addiu      $s0, $s0, 0x4
    /* 3FB8C 8004F38C 00018434 */  ori        $a0, $a0, 0x100
    /* 3FB90 8004F390 8E38010C */  jal        func_8004E238
    /* 3FB94 8004F394 27300600 */   nor       $a2, $zero, $a2
    /* 3FB98 8004F398 A000022A */  slti       $v0, $s0, 0xA0
    /* 3FB9C 8004F39C EEFF4014 */  bnez       $v0, .L8004F358
    /* 3FBA0 8004F3A0 00000000 */   nop
    /* 3FBA4 8004F3A4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3FBA8 8004F3A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 3FBAC 8004F3AC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3FBB0 8004F3B0 0800E003 */  jr         $ra
    /* 3FBB4 8004F3B4 00000000 */   nop
endlabel func_8004F348
