.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80015560, 0x20

glabel func_80015560
    /* 5D60 80015560 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5D64 80015564 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5D68 80015568 F1EF010C */  jal        func_titlescreen_and_loading_8007BFC4
    /* 5D6C 8001556C 00000000 */   nop
    /* 5D70 80015570 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5D74 80015574 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5D78 80015578 0800E003 */  jr         $ra
    /* 5D7C 8001557C 00000000 */   nop
endlabel func_80015560
