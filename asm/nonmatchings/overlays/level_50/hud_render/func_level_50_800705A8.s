.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_50_800705A8, 0x20

glabel func_level_50_800705A8
    /* 3710B44 800705A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3710B48 800705AC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3710B4C 800705B0 154D010C */  jal        func_80053454
    /* 3710B50 800705B4 00000000 */   nop
    /* 3710B54 800705B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3710B58 800705BC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3710B5C 800705C0 0800E003 */  jr         $ra
    /* 3710B60 800705C4 00000000 */   nop
endlabel func_level_50_800705A8
