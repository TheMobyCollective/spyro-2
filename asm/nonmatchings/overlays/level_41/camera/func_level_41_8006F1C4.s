.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_41_8006F1C4, 0x28

glabel func_level_41_8006F1C4
    /* 2BBA760 8006F1C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2BBA764 8006F1C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2BBA768 8006F1CC D676000C */  jal        func_8001DB58
    /* 2BBA76C 8006F1D0 00000000 */   nop
    /* 2BBA770 8006F1D4 1B77000C */  jal        func_8001DC6C
    /* 2BBA774 8006F1D8 00000000 */   nop
    /* 2BBA778 8006F1DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2BBA77C 8006F1E0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2BBA780 8006F1E4 0800E003 */  jr         $ra
    /* 2BBA784 8006F1E8 00000000 */   nop
endlabel func_level_41_8006F1C4
