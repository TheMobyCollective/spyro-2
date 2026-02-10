.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_61_8006FE4C, 0x28

glabel func_level_61_8006FE4C
    /* 3EBABE8 8006FE4C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3EBABEC 8006FE50 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3EBABF0 8006FE54 D676000C */  jal        func_8001DB58
    /* 3EBABF4 8006FE58 00000000 */   nop
    /* 3EBABF8 8006FE5C 1B77000C */  jal        func_8001DC6C
    /* 3EBABFC 8006FE60 00000000 */   nop
    /* 3EBAC00 8006FE64 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3EBAC04 8006FE68 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3EBAC08 8006FE6C 0800E003 */  jr         $ra
    /* 3EBAC0C 8006FE70 00000000 */   nop
endlabel func_level_61_8006FE4C
