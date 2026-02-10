.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_22_80070598, 0x28

glabel func_level_22_80070598
    /* 178E334 80070598 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 178E338 8007059C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 178E33C 800705A0 D676000C */  jal        func_8001DB58
    /* 178E340 800705A4 00000000 */   nop
    /* 178E344 800705A8 1B77000C */  jal        func_8001DC6C
    /* 178E348 800705AC 00000000 */   nop
    /* 178E34C 800705B0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 178E350 800705B4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 178E354 800705B8 0800E003 */  jr         $ra
    /* 178E358 800705BC 00000000 */   nop
endlabel func_level_22_80070598
