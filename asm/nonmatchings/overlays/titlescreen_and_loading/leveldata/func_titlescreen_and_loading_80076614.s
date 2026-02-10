.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80076614, 0x28

glabel func_titlescreen_and_loading_80076614
    /* 2C3B0 80076614 21180000 */  addu       $v1, $zero, $zero
    /* 2C3B4 80076618 A8058524 */  addiu      $a1, $a0, 0x5A8
  .Ltitlescreen_and_loading_8007661C:
    /* 2C3B8 8007661C 00008290 */  lbu        $v0, 0x0($a0)
    /* 2C3BC 80076620 01008424 */  addiu      $a0, $a0, 0x1
    /* 2C3C0 80076624 21186200 */  addu       $v1, $v1, $v0
    /* 2C3C4 80076628 2B108500 */  sltu       $v0, $a0, $a1
    /* 2C3C8 8007662C FBFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_8007661C
    /* 2C3CC 80076630 00000000 */   nop
    /* 2C3D0 80076634 0800E003 */  jr         $ra
    /* 2C3D4 80076638 21106000 */   addu      $v0, $v1, $zero
endlabel func_titlescreen_and_loading_80076614
