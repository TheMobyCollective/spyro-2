.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80050648, 0x64

glabel func_80050648
    /* 40E48 80050648 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 40E4C 8005064C 21188000 */  addu       $v1, $a0, $zero
    /* 40E50 80050650 1000BFAF */  sw         $ra, 0x10($sp)
    /* 40E54 80050654 36006284 */  lh         $v0, 0x36($v1)
    /* 40E58 80050658 00000000 */  nop
    /* 40E5C 8005065C 80100200 */  sll        $v0, $v0, 2
    /* 40E60 80050660 0780013C */  lui        $at, %hi(D_80068C94)
    /* 40E64 80050664 21082200 */  addu       $at, $at, $v0
    /* 40E68 80050668 948C228C */  lw         $v0, %lo(D_80068C94)($at)
    /* 40E6C 8005066C 00000000 */  nop
    /* 40E70 80050670 21104500 */  addu       $v0, $v0, $a1
    /* 40E74 80050674 04004490 */  lbu        $a0, 0x4($v0)
    /* 40E78 80050678 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 40E7C 8005067C 07008210 */  beq        $a0, $v0, .L8005069C
    /* 40E80 80050680 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 40E84 80050684 4B006290 */  lbu        $v0, 0x4B($v1)
    /* 40E88 80050688 00000000 */  nop
    /* 40E8C 8005068C 03004010 */  beqz       $v0, .L8005069C
    /* 40E90 80050690 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 40E94 80050694 C841010C */  jal        func_80050720
    /* 40E98 80050698 21286000 */   addu      $a1, $v1, $zero
  .L8005069C:
    /* 40E9C 8005069C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 40EA0 800506A0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 40EA4 800506A4 0800E003 */  jr         $ra
    /* 40EA8 800506A8 00000000 */   nop
endlabel func_80050648
