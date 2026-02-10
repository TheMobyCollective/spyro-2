.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80032A90, 0x24

glabel func_80032A90
    /* 23290 80032A90 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 23294 80032A94 1000BFAF */  sw         $ra, 0x10($sp)
    /* 23298 80032A98 21288000 */  addu       $a1, $a0, $zero
    /* 2329C 80032A9C 17CC000C */  jal        func_8003305C
    /* 232A0 80032AA0 BB000424 */   addiu     $a0, $zero, 0xBB
    /* 232A4 80032AA4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 232A8 80032AA8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 232AC 80032AAC 0800E003 */  jr         $ra
    /* 232B0 80032AB0 00000000 */   nop
endlabel func_80032A90
