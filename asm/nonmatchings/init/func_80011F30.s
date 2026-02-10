.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011F30, 0x20

glabel func_80011F30
    /* 2730 80011F30 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2734 80011F34 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2738 80011F38 FA75000C */  jal        func_8001D7E8
    /* 273C 80011F3C 00000000 */   nop
    /* 2740 80011F40 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2744 80011F44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2748 80011F48 0800E003 */  jr         $ra
    /* 274C 80011F4C 00000000 */   nop
endlabel func_80011F30
