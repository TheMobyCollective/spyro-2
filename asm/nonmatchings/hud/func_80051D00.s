.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80051D00, 0x18

glabel func_80051D00
    /* 42500 80051D00 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 42504 80051D04 000080A0 */  sb         $zero, 0x0($a0)
    /* 42508 80051D08 020080A4 */  sh         $zero, 0x2($a0)
    /* 4250C 80051D0C 010082A0 */  sb         $v0, 0x1($a0)
    /* 42510 80051D10 0800E003 */  jr         $ra
    /* 42514 80051D14 040085AC */   sw        $a1, 0x4($a0)
endlabel func_80051D00
