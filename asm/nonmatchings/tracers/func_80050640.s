.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80050640, 0x8

glabel func_80050640
    /* 40E40 80050640 0800E003 */  jr         $ra
    /* 40E44 80050644 000080AC */   sw        $zero, 0x0($a0)
endlabel func_80050640
