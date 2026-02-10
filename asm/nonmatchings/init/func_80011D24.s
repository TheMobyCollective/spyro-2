.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011D24, 0x34

glabel func_80011D24
    /* 2524 80011D24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2528 80011D28 1000BFAF */  sw         $ra, 0x10($sp)
    /* 252C 80011D2C C85E010C */  jal        func_80057B20
    /* 2530 80011D30 00000000 */   nop
    /* 2534 80011D34 00010424 */  addiu      $a0, $zero, 0x100
    /* 2538 80011D38 BE5E010C */  jal        func_80057AF8
    /* 253C 80011D3C 78000524 */   addiu     $a1, $zero, 0x78
    /* 2540 80011D40 BA5E010C */  jal        func_80057AE8
    /* 2544 80011D44 55010424 */   addiu     $a0, $zero, 0x155
    /* 2548 80011D48 1000BF8F */  lw         $ra, 0x10($sp)
    /* 254C 80011D4C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2550 80011D50 0800E003 */  jr         $ra
    /* 2554 80011D54 00000000 */   nop
endlabel func_80011D24
