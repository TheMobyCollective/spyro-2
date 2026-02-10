.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80076E70, 0x30

glabel func_titlescreen_and_loading_80076E70
    /* 2CC0C 80076E70 21280000 */  addu       $a1, $zero, $zero
    /* 2CC10 80076E74 0680033C */  lui        $v1, %hi(D_80067E54)
    /* 2CC14 80076E78 547E6324 */  addiu      $v1, $v1, %lo(D_80067E54)
  .Ltitlescreen_and_loading_80076E7C:
    /* 2CC18 80076E7C 0C00828C */  lw         $v0, 0xC($a0)
    /* 2CC1C 80076E80 00068424 */  addiu      $a0, $a0, 0x600
    /* 2CC20 80076E84 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2CC24 80076E88 000062AC */  sw         $v0, 0x0($v1)
    /* 2CC28 80076E8C 0300A228 */  slti       $v0, $a1, 0x3
    /* 2CC2C 80076E90 FAFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80076E7C
    /* 2CC30 80076E94 04006324 */   addiu     $v1, $v1, 0x4
    /* 2CC34 80076E98 0800E003 */  jr         $ra
    /* 2CC38 80076E9C 00000000 */   nop
endlabel func_titlescreen_and_loading_80076E70
