.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_46_8006EE24, 0x28

glabel func_level_46_8006EE24
    /* 3582BC0 8006EE24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3582BC4 8006EE28 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3582BC8 8006EE2C D676000C */  jal        func_8001DB58
    /* 3582BCC 8006EE30 00000000 */   nop
    /* 3582BD0 8006EE34 1B77000C */  jal        func_8001DC6C
    /* 3582BD4 8006EE38 00000000 */   nop
    /* 3582BD8 8006EE3C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3582BDC 8006EE40 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3582BE0 8006EE44 0800E003 */  jr         $ra
    /* 3582BE4 8006EE48 00000000 */   nop
endlabel func_level_46_8006EE24
