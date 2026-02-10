.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011D58, 0x20

glabel func_80011D58
    /* 2558 80011D58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 255C 80011D5C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2560 80011D60 0EF3010C */  jal        func_titlescreen_and_loading_8007CC38
    /* 2564 80011D64 21200000 */   addu      $a0, $zero, $zero
    /* 2568 80011D68 1000BF8F */  lw         $ra, 0x10($sp)
    /* 256C 80011D6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2570 80011D70 0800E003 */  jr         $ra
    /* 2574 80011D74 00000000 */   nop
endlabel func_80011D58
