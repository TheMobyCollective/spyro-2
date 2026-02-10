.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800542D8, 0x40

glabel func_800542D8
    /* 44AD8 800542D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44ADC 800542DC 0680023C */  lui        $v0, %hi(D_80067020)
    /* 44AE0 800542E0 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 44AE4 800542E4 21280000 */  addu       $a1, $zero, $zero
    /* 44AE8 800542E8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 44AEC 800542EC 00004490 */  lbu        $a0, 0x0($v0)
    /* 44AF0 800542F0 C841010C */  jal        func_80050720
    /* 44AF4 800542F4 21300000 */   addu      $a2, $zero, $zero
    /* 44AF8 800542F8 03004004 */  bltz       $v0, .L80054308
    /* 44AFC 800542FC 21204000 */   addu      $a0, $v0, $zero
    /* 44B00 80054300 3D43010C */  jal        func_80050CF4
    /* 44B04 80054304 00200524 */   addiu     $a1, $zero, 0x2000
  .L80054308:
    /* 44B08 80054308 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44B0C 8005430C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44B10 80054310 0800E003 */  jr         $ra
    /* 44B14 80054314 00000000 */   nop
endlabel func_800542D8
