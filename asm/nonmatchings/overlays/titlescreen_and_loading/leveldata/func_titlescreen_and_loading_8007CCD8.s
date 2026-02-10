.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8007CCD8, 0x40

glabel func_titlescreen_and_loading_8007CCD8
    /* 32A74 8007CCD8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32A78 8007CCDC 0880033C */  lui        $v1, %hi(D_titlescreen_and_loading_8007F09C)
    /* 32A7C 8007CCE0 9CF06324 */  addiu      $v1, $v1, %lo(D_titlescreen_and_loading_8007F09C)
    /* 32A80 8007CCE4 1000BFAF */  sw         $ra, 0x10($sp)
  .Ltitlescreen_and_loading_8007CCE8:
    /* 32A84 8007CCE8 0000628C */  lw         $v0, 0x0($v1)
    /* 32A88 8007CCEC 00000000 */  nop
    /* 32A8C 8007CCF0 FDFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_8007CCE8
    /* 32A90 8007CCF4 07000424 */   addiu     $a0, $zero, 0x7
    /* 32A94 8007CCF8 5A52010C */  jal        func_80054968
    /* 32A98 8007CCFC 21280000 */   addu      $a1, $zero, $zero
    /* 32A9C 8007CD00 96F9010C */  jal        func_titlescreen_and_loading_8007E658
    /* 32AA0 8007CD04 00000000 */   nop
    /* 32AA4 8007CD08 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32AA8 8007CD0C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32AAC 8007CD10 0800E003 */  jr         $ra
    /* 32AB0 8007CD14 00000000 */   nop
endlabel func_titlescreen_and_loading_8007CCD8
