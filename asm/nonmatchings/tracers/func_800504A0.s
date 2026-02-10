.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800504A0, 0x8

glabel func_800504A0
    /* 40CA0 800504A0 0800E003 */  jr         $ra
    /* 40CA4 800504A4 000080AC */   sw        $zero, 0x0($a0)
endlabel func_800504A0
