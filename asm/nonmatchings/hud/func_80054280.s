.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80054280, 0x58

glabel func_80054280
    /* 44A80 80054280 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44A84 80054284 0680023C */  lui        $v0, %hi(D_80067020)
    /* 44A88 80054288 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 44A8C 8005428C 21280000 */  addu       $a1, $zero, $zero
    /* 44A90 80054290 1400BFAF */  sw         $ra, 0x14($sp)
    /* 44A94 80054294 1000B0AF */  sw         $s0, 0x10($sp)
    /* 44A98 80054298 19004490 */  lbu        $a0, 0x19($v0)
    /* 44A9C 8005429C C841010C */  jal        func_80050720
    /* 44AA0 800542A0 21300000 */   addu      $a2, $zero, $zero
    /* 44AA4 800542A4 21804000 */  addu       $s0, $v0, $zero
    /* 44AA8 800542A8 06000006 */  bltz       $s0, .L800542C4
    /* 44AAC 800542AC 21200002 */   addu      $a0, $s0, $zero
    /* 44AB0 800542B0 3D43010C */  jal        func_80050CF4
    /* 44AB4 800542B4 00200524 */   addiu     $a1, $zero, 0x2000
    /* 44AB8 800542B8 21200002 */  addu       $a0, $s0, $zero
    /* 44ABC 800542BC 1943010C */  jal        func_80050C64
    /* 44AC0 800542C0 00060524 */   addiu     $a1, $zero, 0x600
  .L800542C4:
    /* 44AC4 800542C4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 44AC8 800542C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 44ACC 800542CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44AD0 800542D0 0800E003 */  jr         $ra
    /* 44AD4 800542D4 00000000 */   nop
endlabel func_80054280
