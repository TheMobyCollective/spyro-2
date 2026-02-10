.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800541A0, 0x30

glabel func_800541A0
    /* 449A0 800541A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 449A4 800541A4 0680023C */  lui        $v0, %hi(D_80067020)
    /* 449A8 800541A8 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 449AC 800541AC 21280000 */  addu       $a1, $zero, $zero
    /* 449B0 800541B0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 449B4 800541B4 16004490 */  lbu        $a0, 0x16($v0)
    /* 449B8 800541B8 C841010C */  jal        func_80050720
    /* 449BC 800541BC 21300000 */   addu      $a2, $zero, $zero
    /* 449C0 800541C0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 449C4 800541C4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 449C8 800541C8 0800E003 */  jr         $ra
    /* 449CC 800541CC 00000000 */   nop
endlabel func_800541A0
