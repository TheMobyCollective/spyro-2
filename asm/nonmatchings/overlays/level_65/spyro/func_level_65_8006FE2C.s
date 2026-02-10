.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_65_8006FE2C, 0x38

glabel func_level_65_8006FE2C
    /* 42C33C8 8006FE2C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 42C33CC 8006FE30 1000BFAF */  sw         $ra, 0x10($sp)
    /* 42C33D0 8006FE34 803C010C */  jal        func_8004F200
    /* 42C33D4 8006FE38 00000000 */   nop
    /* 42C33D8 8006FE3C 9B3C010C */  jal        func_8004F26C
    /* 42C33DC 8006FE40 00000000 */   nop
    /* 42C33E0 8006FE44 99BF010C */  jal        func_level_65_8006FE64
    /* 42C33E4 8006FE48 00000000 */   nop
    /* 42C33E8 8006FE4C B0BF010C */  jal        func_level_65_8006FEC0
    /* 42C33EC 8006FE50 00000000 */   nop
    /* 42C33F0 8006FE54 1000BF8F */  lw         $ra, 0x10($sp)
    /* 42C33F4 8006FE58 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 42C33F8 8006FE5C 0800E003 */  jr         $ra
    /* 42C33FC 8006FE60 00000000 */   nop
endlabel func_level_65_8006FE2C
