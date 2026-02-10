.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80077CEC, 0x54

glabel func_titlescreen_and_loading_80077CEC
    /* 2DA88 80077CEC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2DA8C 80077CF0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2DA90 80077CF4 11000424 */  addiu      $a0, $zero, 0x11
    /* 2DA94 80077CF8 21000524 */  addiu      $a1, $zero, 0x21
    /* 2DA98 80077CFC EC000624 */  addiu      $a2, $zero, 0xEC
    /* 2DA9C 80077D00 F2DE010C */  jal        func_titlescreen_and_loading_80077BC8
    /* 2DAA0 80077D04 21000724 */   addiu     $a3, $zero, 0x21
    /* 2DAA4 80077D08 0C000424 */  addiu      $a0, $zero, 0xC
    /* 2DAA8 80077D0C 58000524 */  addiu      $a1, $zero, 0x58
    /* 2DAAC 80077D10 F2000624 */  addiu      $a2, $zero, 0xF2
    /* 2DAB0 80077D14 F2DE010C */  jal        func_titlescreen_and_loading_80077BC8
    /* 2DAB4 80077D18 58000724 */   addiu     $a3, $zero, 0x58
    /* 2DAB8 80077D1C 80000424 */  addiu      $a0, $zero, 0x80
    /* 2DABC 80077D20 58000524 */  addiu      $a1, $zero, 0x58
    /* 2DAC0 80077D24 80000624 */  addiu      $a2, $zero, 0x80
    /* 2DAC4 80077D28 F2DE010C */  jal        func_titlescreen_and_loading_80077BC8
    /* 2DAC8 80077D2C 6E000724 */   addiu     $a3, $zero, 0x6E
    /* 2DACC 80077D30 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2DAD0 80077D34 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2DAD4 80077D38 0800E003 */  jr         $ra
    /* 2DAD8 80077D3C 00000000 */   nop
endlabel func_titlescreen_and_loading_80077CEC
