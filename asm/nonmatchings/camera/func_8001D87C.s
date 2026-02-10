.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D87C, 0x28

glabel func_8001D87C
    /* E07C 8001D87C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E080 8001D880 1000BFAF */  sw         $ra, 0x10($sp)
    /* E084 8001D884 2976000C */  jal        func_8001D8A4
    /* E088 8001D888 00000000 */   nop
    /* E08C 8001D88C 7087000C */  jal        func_80021DC0
    /* E090 8001D890 00000000 */   nop
    /* E094 8001D894 1000BF8F */  lw         $ra, 0x10($sp)
    /* E098 8001D898 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E09C 8001D89C 0800E003 */  jr         $ra
    /* E0A0 8001D8A0 00000000 */   nop
endlabel func_8001D87C
