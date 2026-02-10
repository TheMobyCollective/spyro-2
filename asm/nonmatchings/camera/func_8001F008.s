.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F008, 0x18

glabel func_8001F008
    /* F808 8001F008 000080AC */  sw         $zero, 0x0($a0)
    /* F80C 8001F00C 040080AC */  sw         $zero, 0x4($a0)
    /* F810 8001F010 080080AC */  sw         $zero, 0x8($a0)
    /* F814 8001F014 0C0080AC */  sw         $zero, 0xC($a0)
    /* F818 8001F018 0800E003 */  jr         $ra
    /* F81C 8001F01C 100080AC */   sw        $zero, 0x10($a0)
endlabel func_8001F008
