.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_30_800700DC, 0x28

glabel func_level_30_800700DC
    /* 1F2DE78 800700DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1F2DE7C 800700E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1F2DE80 800700E4 D676000C */  jal        func_8001DB58
    /* 1F2DE84 800700E8 00000000 */   nop
    /* 1F2DE88 800700EC 1B77000C */  jal        func_8001DC6C
    /* 1F2DE8C 800700F0 00000000 */   nop
    /* 1F2DE90 800700F4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1F2DE94 800700F8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1F2DE98 800700FC 0800E003 */  jr         $ra
    /* 1F2DE9C 80070100 00000000 */   nop
endlabel func_level_30_800700DC
