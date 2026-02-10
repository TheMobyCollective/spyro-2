.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001AC20, 0x20

glabel func_8001AC20
    /* B420 8001AC20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B424 8001AC24 1000BFAF */  sw         $ra, 0x10($sp)
    /* B428 8001AC28 7CE7010C */  jal        func_titlescreen_and_loading_80079DF0
    /* B42C 8001AC2C 00000000 */   nop
    /* B430 8001AC30 1000BF8F */  lw         $ra, 0x10($sp)
    /* B434 8001AC34 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B438 8001AC38 0800E003 */  jr         $ra
    /* B43C 8001AC3C 00000000 */   nop
endlabel func_8001AC20
