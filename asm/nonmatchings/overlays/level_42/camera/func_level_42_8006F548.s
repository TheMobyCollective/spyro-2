.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_42_8006F548, 0x28

glabel func_level_42_8006F548
    /* 2DD0AE4 8006F548 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2DD0AE8 8006F54C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2DD0AEC 8006F550 D676000C */  jal        func_8001DB58
    /* 2DD0AF0 8006F554 00000000 */   nop
    /* 2DD0AF4 8006F558 1B77000C */  jal        func_8001DC6C
    /* 2DD0AF8 8006F55C 00000000 */   nop
    /* 2DD0AFC 8006F560 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2DD0B00 8006F564 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2DD0B04 8006F568 0800E003 */  jr         $ra
    /* 2DD0B08 8006F56C 00000000 */   nop
endlabel func_level_42_8006F548
