.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_31_8006EE20, 0x28

glabel func_level_31_8006EE20
    /* 21373BC 8006EE20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 21373C0 8006EE24 1000BFAF */  sw         $ra, 0x10($sp)
    /* 21373C4 8006EE28 D676000C */  jal        func_8001DB58
    /* 21373C8 8006EE2C 00000000 */   nop
    /* 21373CC 8006EE30 1B77000C */  jal        func_8001DC6C
    /* 21373D0 8006EE34 00000000 */   nop
    /* 21373D4 8006EE38 1000BF8F */  lw         $ra, 0x10($sp)
    /* 21373D8 8006EE3C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 21373DC 8006EE40 0800E003 */  jr         $ra
    /* 21373E0 8006EE44 00000000 */   nop
endlabel func_level_31_8006EE20
