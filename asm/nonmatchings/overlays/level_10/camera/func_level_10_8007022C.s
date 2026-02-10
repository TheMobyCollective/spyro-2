.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_10_8007022C, 0x28

glabel func_level_10_8007022C
    /* D38FC8 8007022C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D38FCC 80070230 1000BFAF */  sw         $ra, 0x10($sp)
    /* D38FD0 80070234 D676000C */  jal        func_8001DB58
    /* D38FD4 80070238 00000000 */   nop
    /* D38FD8 8007023C 1B77000C */  jal        func_8001DC6C
    /* D38FDC 80070240 00000000 */   nop
    /* D38FE0 80070244 1000BF8F */  lw         $ra, 0x10($sp)
    /* D38FE4 80070248 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D38FE8 8007024C 0800E003 */  jr         $ra
    /* D38FEC 80070250 00000000 */   nop
endlabel func_level_10_8007022C
