.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800391F8, 0x20

glabel func_800391F8
    /* 299F8 800391F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 299FC 800391FC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 29A00 80039200 BF27010C */  jal        func_80049EFC
    /* 29A04 80039204 00000000 */   nop
    /* 29A08 80039208 1000BF8F */  lw         $ra, 0x10($sp)
    /* 29A0C 8003920C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 29A10 80039210 0800E003 */  jr         $ra
    /* 29A14 80039214 00000000 */   nop
endlabel func_800391F8
