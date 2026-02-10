.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800385D8, 0x20

glabel func_800385D8
    /* 28DD8 800385D8 2320A400 */  subu       $a0, $a1, $a0
    /* 28DDC 800385DC FF008430 */  andi       $a0, $a0, 0xFF
    /* 28DE0 800385E0 81008228 */  slti       $v0, $a0, 0x81
    /* 28DE4 800385E4 02004014 */  bnez       $v0, .L800385F0
    /* 28DE8 800385E8 00000000 */   nop
    /* 28DEC 800385EC 00FF8424 */  addiu      $a0, $a0, -0x100
  .L800385F0:
    /* 28DF0 800385F0 0800E003 */  jr         $ra
    /* 28DF4 800385F4 21108000 */   addu      $v0, $a0, $zero
endlabel func_800385D8
