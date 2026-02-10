.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_33_80070EA4, 0x28

glabel func_level_33_80070EA4
    /* 2588C40 80070EA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2588C44 80070EA8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2588C48 80070EAC D676000C */  jal        func_8001DB58
    /* 2588C4C 80070EB0 00000000 */   nop
    /* 2588C50 80070EB4 1B77000C */  jal        func_8001DC6C
    /* 2588C54 80070EB8 00000000 */   nop
    /* 2588C58 80070EBC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2588C5C 80070EC0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2588C60 80070EC4 0800E003 */  jr         $ra
    /* 2588C64 80070EC8 00000000 */   nop
endlabel func_level_33_80070EA4
