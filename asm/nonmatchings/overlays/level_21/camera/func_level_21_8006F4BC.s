.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_21_8006F4BC, 0x28

glabel func_level_21_8006F4BC
    /* 1567258 8006F4BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 156725C 8006F4C0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1567260 8006F4C4 D676000C */  jal        func_8001DB58
    /* 1567264 8006F4C8 00000000 */   nop
    /* 1567268 8006F4CC 1B77000C */  jal        func_8001DC6C
    /* 156726C 8006F4D0 00000000 */   nop
    /* 1567270 8006F4D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1567274 8006F4D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1567278 8006F4DC 0800E003 */  jr         $ra
    /* 156727C 8006F4E0 00000000 */   nop
endlabel func_level_21_8006F4BC
