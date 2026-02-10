.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800541D0, 0x40

glabel func_800541D0
    /* 449D0 800541D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 449D4 800541D4 0680023C */  lui        $v0, %hi(D_80067020)
    /* 449D8 800541D8 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 449DC 800541DC 21280000 */  addu       $a1, $zero, $zero
    /* 449E0 800541E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 449E4 800541E4 17004490 */  lbu        $a0, 0x17($v0)
    /* 449E8 800541E8 C841010C */  jal        func_80050720
    /* 449EC 800541EC 21300000 */   addu      $a2, $zero, $zero
    /* 449F0 800541F0 03004004 */  bltz       $v0, .L80054200
    /* 449F4 800541F4 21204000 */   addu      $a0, $v0, $zero
    /* 449F8 800541F8 3D43010C */  jal        func_80050CF4
    /* 449FC 800541FC 40060524 */   addiu     $a1, $zero, 0x640
  .L80054200:
    /* 44A00 80054200 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44A04 80054204 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44A08 80054208 0800E003 */  jr         $ra
    /* 44A0C 8005420C 00000000 */   nop
endlabel func_800541D0
