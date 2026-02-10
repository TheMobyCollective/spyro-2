.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8006E800, 0xA4

glabel func_level_52_8006E800
    /* 3B0159C 8006E800 0680023C */  lui        $v0, %hi(D_80067148)
    /* 3B015A0 8006E804 48714290 */  lbu        $v0, %lo(D_80067148)($v0)
    /* 3B015A4 8006E808 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3B015A8 8006E80C 02004230 */  andi       $v0, $v0, 0x2
    /* 3B015AC 8006E810 1E004014 */  bnez       $v0, .Llevel_52_8006E88C
    /* 3B015B0 8006E814 1800BFAF */   sw        $ra, 0x18($sp)
    /* 3B015B4 8006E818 0680023C */  lui        $v0, %hi(D_80067008)
    /* 3B015B8 8006E81C 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* 3B015BC 8006E820 00000000 */  nop
    /* 3B015C0 8006E824 43180200 */  sra        $v1, $v0, 1
    /* 3B015C4 8006E828 02006104 */  bgez       $v1, .Llevel_52_8006E834
    /* 3B015C8 8006E82C 21106000 */   addu      $v0, $v1, $zero
    /* 3B015CC 8006E830 07006224 */  addiu      $v0, $v1, 0x7
  .Llevel_52_8006E834:
    /* 3B015D0 8006E834 C3100200 */  sra        $v0, $v0, 3
    /* 3B015D4 8006E838 C0100200 */  sll        $v0, $v0, 3
    /* 3B015D8 8006E83C 23106200 */  subu       $v0, $v1, $v0
    /* 3B015DC 8006E840 01004324 */  addiu      $v1, $v0, 0x1
    /* 3B015E0 8006E844 06006228 */  slti       $v0, $v1, 0x6
    /* 3B015E4 8006E848 02004014 */  bnez       $v0, .Llevel_52_8006E854
    /* 3B015E8 8006E84C 0A000224 */   addiu     $v0, $zero, 0xA
    /* 3B015EC 8006E850 23184300 */  subu       $v1, $v0, $v1
  .Llevel_52_8006E854:
    /* 3B015F0 8006E854 0680013C */  lui        $at, %hi(D_800634A8)
    /* 3B015F4 8006E858 21082300 */  addu       $at, $at, $v1
    /* 3B015F8 8006E85C A8342590 */  lbu        $a1, %lo(D_800634A8)($at)
    /* 3B015FC 8006E860 03000224 */  addiu      $v0, $zero, 0x3
    /* 3B01600 8006E864 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3B01604 8006E868 0680023C */  lui        $v0, %hi(D_800635F8)
    /* 3B01608 8006E86C F8354224 */  addiu      $v0, $v0, %lo(D_800635F8)
    /* 3B0160C 8006E870 0680043C */  lui        $a0, %hi(D_80067674)
    /* 3B01610 8006E874 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 3B01614 8006E878 68010624 */  addiu      $a2, $zero, 0x168
    /* 3B01618 8006E87C EC000724 */  addiu      $a3, $zero, 0xEC
    /* 3B0161C 8006E880 80280500 */  sll        $a1, $a1, 2
    /* 3B01620 8006E884 A449010C */  jal        func_80052690
    /* 3B01624 8006E888 2128A200 */   addu      $a1, $a1, $v0
  .Llevel_52_8006E88C:
    /* 3B01628 8006E88C 154D010C */  jal        func_80053454
    /* 3B0162C 8006E890 00000000 */   nop
    /* 3B01630 8006E894 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3B01634 8006E898 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3B01638 8006E89C 0800E003 */  jr         $ra
    /* 3B0163C 8006E8A0 00000000 */   nop
endlabel func_level_52_8006E800
    /* 3B01640 8006E8A4 00000000 */  nop
