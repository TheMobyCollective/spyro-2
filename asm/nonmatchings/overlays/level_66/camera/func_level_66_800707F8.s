.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_66_800707F8, 0x28

glabel func_level_66_800707F8
    /* 44BB594 800707F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44BB598 800707FC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 44BB59C 80070800 D676000C */  jal        func_8001DB58
    /* 44BB5A0 80070804 00000000 */   nop
    /* 44BB5A4 80070808 1B77000C */  jal        func_8001DC6C
    /* 44BB5A8 8007080C 00000000 */   nop
    /* 44BB5AC 80070810 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44BB5B0 80070814 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44BB5B4 80070818 0800E003 */  jr         $ra
    /* 44BB5B8 8007081C 00000000 */   nop
endlabel func_level_66_800707F8
