.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_12_80070A20, 0x28

glabel func_level_12_80070A20
    /* 1115FBC 80070A20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1115FC0 80070A24 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1115FC4 80070A28 D676000C */  jal        func_8001DB58
    /* 1115FC8 80070A2C 00000000 */   nop
    /* 1115FCC 80070A30 1B77000C */  jal        func_8001DC6C
    /* 1115FD0 80070A34 00000000 */   nop
    /* 1115FD4 80070A38 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1115FD8 80070A3C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1115FDC 80070A40 0800E003 */  jr         $ra
    /* 1115FE0 80070A44 00000000 */   nop
endlabel func_level_12_80070A20
