.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_13_8006FE1C, 0x28

glabel func_level_13_8006FE1C
    /* 133C3B8 8006FE1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 133C3BC 8006FE20 1000BFAF */  sw         $ra, 0x10($sp)
    /* 133C3C0 8006FE24 D676000C */  jal        func_8001DB58
    /* 133C3C4 8006FE28 00000000 */   nop
    /* 133C3C8 8006FE2C 1B77000C */  jal        func_8001DC6C
    /* 133C3CC 8006FE30 00000000 */   nop
    /* 133C3D0 8006FE34 1000BF8F */  lw         $ra, 0x10($sp)
    /* 133C3D4 8006FE38 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 133C3D8 8006FE3C 0800E003 */  jr         $ra
    /* 133C3DC 8006FE40 00000000 */   nop
endlabel func_level_13_8006FE1C
