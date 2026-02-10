.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_44_8006FEF0, 0x28

glabel func_level_44_8006FEF0
    /* 31D748C 8006FEF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 31D7490 8006FEF4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 31D7494 8006FEF8 D676000C */  jal        func_8001DB58
    /* 31D7498 8006FEFC 00000000 */   nop
    /* 31D749C 8006FF00 1B77000C */  jal        func_8001DC6C
    /* 31D74A0 8006FF04 00000000 */   nop
    /* 31D74A4 8006FF08 1000BF8F */  lw         $ra, 0x10($sp)
    /* 31D74A8 8006FF0C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 31D74AC 8006FF10 0800E003 */  jr         $ra
    /* 31D74B0 8006FF14 00000000 */   nop
endlabel func_level_44_8006FEF0
