.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_55_80070600, 0x28

glabel func_level_55_80070600
    /* 3D20B9C 80070600 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3D20BA0 80070604 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3D20BA4 80070608 D676000C */  jal        func_8001DB58
    /* 3D20BA8 8007060C 00000000 */   nop
    /* 3D20BAC 80070610 1B77000C */  jal        func_8001DC6C
    /* 3D20BB0 80070614 00000000 */   nop
    /* 3D20BB4 80070618 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3D20BB8 8007061C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3D20BBC 80070620 0800E003 */  jr         $ra
    /* 3D20BC0 80070624 00000000 */   nop
endlabel func_level_55_80070600
