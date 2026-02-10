.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_35_8006FD50, 0x28

glabel func_level_35_8006FD50
    /* 29D52EC 8006FD50 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 29D52F0 8006FD54 1000BFAF */  sw         $ra, 0x10($sp)
    /* 29D52F4 8006FD58 D676000C */  jal        func_8001DB58
    /* 29D52F8 8006FD5C 00000000 */   nop
    /* 29D52FC 8006FD60 1B77000C */  jal        func_8001DC6C
    /* 29D5300 8006FD64 00000000 */   nop
    /* 29D5304 8006FD68 1000BF8F */  lw         $ra, 0x10($sp)
    /* 29D5308 8006FD6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 29D530C 8006FD70 0800E003 */  jr         $ra
    /* 29D5310 8006FD74 00000000 */   nop
endlabel func_level_35_8006FD50
