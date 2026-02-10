.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_25_8006FD78, 0x28

glabel func_level_25_8006FD78
    /* 1BC8314 8006FD78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1BC8318 8006FD7C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1BC831C 8006FD80 D676000C */  jal        func_8001DB58
    /* 1BC8320 8006FD84 00000000 */   nop
    /* 1BC8324 8006FD88 1B77000C */  jal        func_8001DC6C
    /* 1BC8328 8006FD8C 00000000 */   nop
    /* 1BC832C 8006FD90 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1BC8330 8006FD94 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1BC8334 8006FD98 0800E003 */  jr         $ra
    /* 1BC8338 8006FD9C 00000000 */   nop
endlabel func_level_25_8006FD78
