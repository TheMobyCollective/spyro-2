.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_34_8006F58C, 0x28

glabel func_level_34_8006F58C
    /* 27AC328 8006F58C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 27AC32C 8006F590 1000BFAF */  sw         $ra, 0x10($sp)
    /* 27AC330 8006F594 D676000C */  jal        func_8001DB58
    /* 27AC334 8006F598 00000000 */   nop
    /* 27AC338 8006F59C 1B77000C */  jal        func_8001DC6C
    /* 27AC33C 8006F5A0 00000000 */   nop
    /* 27AC340 8006F5A4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 27AC344 8006F5A8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 27AC348 8006F5AC 0800E003 */  jr         $ra
    /* 27AC34C 8006F5B0 00000000 */   nop
endlabel func_level_34_8006F58C
