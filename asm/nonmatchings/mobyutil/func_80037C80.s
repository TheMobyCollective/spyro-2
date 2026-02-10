.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80037C80, 0x8

glabel func_80037C80
    /* 28480 80037C80 0800E003 */  jr         $ra
    /* 28484 80037C84 00000000 */   nop
endlabel func_80037C80
