.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011B1C, 0x20

glabel func_80011B1C
    /* 231C 80011B1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2320 80011B20 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2324 80011B24 3B46010C */  jal        func_800518EC
    /* 2328 80011B28 00000000 */   nop
    /* 232C 80011B2C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2330 80011B30 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2334 80011B34 0800E003 */  jr         $ra
    /* 2338 80011B38 00000000 */   nop
endlabel func_80011B1C
