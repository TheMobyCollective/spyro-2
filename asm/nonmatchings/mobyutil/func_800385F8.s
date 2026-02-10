.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800385F8, 0xC

glabel func_800385F8
    /* 28DF8 800385F8 21108500 */  addu       $v0, $a0, $a1
    /* 28DFC 800385FC 0800E003 */  jr         $ra
    /* 28E00 80038600 FF004230 */   andi      $v0, $v0, 0xFF
endlabel func_800385F8
