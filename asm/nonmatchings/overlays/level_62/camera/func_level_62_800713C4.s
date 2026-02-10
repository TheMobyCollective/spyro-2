.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_62_800713C4, 0x28

glabel func_level_62_800713C4
    /* 40B5160 800713C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 40B5164 800713C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 40B5168 800713CC D676000C */  jal        func_8001DB58
    /* 40B516C 800713D0 00000000 */   nop
    /* 40B5170 800713D4 1B77000C */  jal        func_8001DC6C
    /* 40B5174 800713D8 00000000 */   nop
    /* 40B5178 800713DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 40B517C 800713E0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 40B5180 800713E4 0800E003 */  jr         $ra
    /* 40B5184 800713E8 00000000 */   nop
endlabel func_level_62_800713C4
