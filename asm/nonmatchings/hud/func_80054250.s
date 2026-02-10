.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80054250, 0x30

glabel func_80054250
    /* 44A50 80054250 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44A54 80054254 0680023C */  lui        $v0, %hi(D_80067020)
    /* 44A58 80054258 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 44A5C 8005425C 21280000 */  addu       $a1, $zero, $zero
    /* 44A60 80054260 1000BFAF */  sw         $ra, 0x10($sp)
    /* 44A64 80054264 01004490 */  lbu        $a0, 0x1($v0)
    /* 44A68 80054268 C841010C */  jal        func_80050720
    /* 44A6C 8005426C 21300000 */   addu      $a2, $zero, $zero
    /* 44A70 80054270 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44A74 80054274 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44A78 80054278 0800E003 */  jr         $ra
    /* 44A7C 8005427C 00000000 */   nop
endlabel func_80054250
