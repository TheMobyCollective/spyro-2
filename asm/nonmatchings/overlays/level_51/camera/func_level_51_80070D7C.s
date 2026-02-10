.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_51_80070D7C, 0x28

glabel func_level_51_80070D7C
    /* 38D6318 80070D7C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 38D631C 80070D80 1000BFAF */  sw         $ra, 0x10($sp)
    /* 38D6320 80070D84 D676000C */  jal        func_8001DB58
    /* 38D6324 80070D88 00000000 */   nop
    /* 38D6328 80070D8C 1B77000C */  jal        func_8001DC6C
    /* 38D632C 80070D90 00000000 */   nop
    /* 38D6330 80070D94 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38D6334 80070D98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 38D6338 80070D9C 0800E003 */  jr         $ra
    /* 38D633C 80070DA0 00000000 */   nop
endlabel func_level_51_80070D7C
