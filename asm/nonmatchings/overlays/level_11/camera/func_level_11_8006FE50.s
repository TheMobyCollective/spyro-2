.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_11_8006FE50, 0x28

glabel func_level_11_8006FE50
    /* F2B3EC 8006FE50 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* F2B3F0 8006FE54 1000BFAF */  sw         $ra, 0x10($sp)
    /* F2B3F4 8006FE58 D676000C */  jal        func_8001DB58
    /* F2B3F8 8006FE5C 00000000 */   nop
    /* F2B3FC 8006FE60 1B77000C */  jal        func_8001DC6C
    /* F2B400 8006FE64 00000000 */   nop
    /* F2B404 8006FE68 1000BF8F */  lw         $ra, 0x10($sp)
    /* F2B408 8006FE6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* F2B40C 8006FE70 0800E003 */  jr         $ra
    /* F2B410 8006FE74 00000000 */   nop
endlabel func_level_11_8006FE50
