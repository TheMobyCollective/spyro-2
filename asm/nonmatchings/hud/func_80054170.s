.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80054170, 0x30

glabel func_80054170
    /* 44970 80054170 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44974 80054174 0680023C */  lui        $v0, %hi(D_80067020)
    /* 44978 80054178 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 4497C 8005417C 21280000 */  addu       $a1, $zero, $zero
    /* 44980 80054180 1000BFAF */  sw         $ra, 0x10($sp)
    /* 44984 80054184 15004490 */  lbu        $a0, 0x15($v0)
    /* 44988 80054188 C841010C */  jal        func_80050720
    /* 4498C 8005418C 21300000 */   addu      $a2, $zero, $zero
    /* 44990 80054190 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44994 80054194 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44998 80054198 0800E003 */  jr         $ra
    /* 4499C 8005419C 00000000 */   nop
endlabel func_80054170
