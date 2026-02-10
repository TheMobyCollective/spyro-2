.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_23_80071064, 0x28

glabel func_level_23_80071064
    /* 19AEE00 80071064 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 19AEE04 80071068 1000BFAF */  sw         $ra, 0x10($sp)
    /* 19AEE08 8007106C D676000C */  jal        func_8001DB58
    /* 19AEE0C 80071070 00000000 */   nop
    /* 19AEE10 80071074 1B77000C */  jal        func_8001DC6C
    /* 19AEE14 80071078 00000000 */   nop
    /* 19AEE18 8007107C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 19AEE1C 80071080 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 19AEE20 80071084 0800E003 */  jr         $ra
    /* 19AEE24 80071088 00000000 */   nop
endlabel func_level_23_80071064
