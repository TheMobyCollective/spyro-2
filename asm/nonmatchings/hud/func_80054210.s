.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80054210, 0x40

glabel func_80054210
    /* 44A10 80054210 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44A14 80054214 0680023C */  lui        $v0, %hi(D_80067020)
    /* 44A18 80054218 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 44A1C 8005421C 21280000 */  addu       $a1, $zero, $zero
    /* 44A20 80054220 1000BFAF */  sw         $ra, 0x10($sp)
    /* 44A24 80054224 19004490 */  lbu        $a0, 0x19($v0)
    /* 44A28 80054228 C841010C */  jal        func_80050720
    /* 44A2C 8005422C 21300000 */   addu      $a2, $zero, $zero
    /* 44A30 80054230 03004004 */  bltz       $v0, .L80054240
    /* 44A34 80054234 21204000 */   addu      $a0, $v0, $zero
    /* 44A38 80054238 3D43010C */  jal        func_80050CF4
    /* 44A3C 8005423C 000C0524 */   addiu     $a1, $zero, 0xC00
  .L80054240:
    /* 44A40 80054240 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44A44 80054244 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44A48 80054248 0800E003 */  jr         $ra
    /* 44A4C 8005424C 00000000 */   nop
endlabel func_80054210
