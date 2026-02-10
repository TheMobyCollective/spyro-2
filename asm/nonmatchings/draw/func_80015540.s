.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80015540, 0x20

glabel func_80015540
    /* 5D40 80015540 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5D44 80015544 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5D48 80015548 86BB010C */  jal        func_credits_8006EE18
    /* 5D4C 8001554C 00000000 */   nop
    /* 5D50 80015550 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5D54 80015554 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5D58 80015558 0800E003 */  jr         $ra
    /* 5D5C 8001555C 00000000 */   nop
endlabel func_80015540
