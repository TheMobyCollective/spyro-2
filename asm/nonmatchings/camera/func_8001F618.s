.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F618, 0x1FC

glabel func_8001F618
    /* FE18 8001F618 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* FE1C 8001F61C 5400B1AF */  sw         $s1, 0x54($sp)
    /* FE20 8001F620 21888000 */  addu       $s1, $a0, $zero
    /* FE24 8001F624 1800A427 */  addiu      $a0, $sp, 0x18
    /* FE28 8001F628 6000B4AF */  sw         $s4, 0x60($sp)
    /* FE2C 8001F62C 21A0C000 */  addu       $s4, $a2, $zero
    /* FE30 8001F630 6400BFAF */  sw         $ra, 0x64($sp)
    /* FE34 8001F634 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* FE38 8001F638 5800B2AF */  sw         $s2, 0x58($sp)
    /* FE3C 8001F63C 5000B0AF */  sw         $s0, 0x50($sp)
    /* FE40 8001F640 0780013C */  lui        $at, %hi(D_8006ABA4)
    /* FE44 8001F644 A4AB20AC */  sw         $zero, %lo(D_8006ABA4)($at)
    /* FE48 8001F648 806F000C */  jal        func_8001BE00
    /* FE4C 8001F64C 21302002 */   addu      $a2, $s1, $zero
    /* FE50 8001F650 1800A427 */  addiu      $a0, $sp, 0x18
    /* FE54 8001F654 886E000C */  jal        func_8001BA20
    /* FE58 8001F658 01000524 */   addiu     $a1, $zero, 0x1
    /* FE5C 8001F65C 83120200 */  sra        $v0, $v0, 10
    /* FE60 8001F660 01005024 */  addiu      $s0, $v0, 0x1
    /* FE64 8001F664 0200022A */  slti       $v0, $s0, 0x2
    /* FE68 8001F668 2B004014 */  bnez       $v0, .L8001F718
    /* FE6C 8001F66C 2800B227 */   addiu     $s2, $sp, 0x28
    /* FE70 8001F670 1800A48F */  lw         $a0, 0x18($sp)
    /* FE74 8001F674 00000000 */  nop
    /* FE78 8001F678 1A009000 */  div        $zero, $a0, $s0
    /* FE7C 8001F67C 02000016 */  bnez       $s0, .L8001F688
    /* FE80 8001F680 00000000 */   nop
    /* FE84 8001F684 0D000700 */  break      7
  .L8001F688:
    /* FE88 8001F688 FFFF0124 */  addiu      $at, $zero, -0x1
    /* FE8C 8001F68C 04000116 */  bne        $s0, $at, .L8001F6A0
    /* FE90 8001F690 0080013C */   lui       $at, (0x80000000 >> 16)
    /* FE94 8001F694 02008114 */  bne        $a0, $at, .L8001F6A0
    /* FE98 8001F698 00000000 */   nop
    /* FE9C 8001F69C 0D000600 */  break      6
  .L8001F6A0:
    /* FEA0 8001F6A0 12200000 */  mflo       $a0
    /* FEA4 8001F6A4 1C00A38F */  lw         $v1, 0x1C($sp)
    /* FEA8 8001F6A8 00000000 */  nop
    /* FEAC 8001F6AC 1A007000 */  div        $zero, $v1, $s0
    /* FEB0 8001F6B0 02000016 */  bnez       $s0, .L8001F6BC
    /* FEB4 8001F6B4 00000000 */   nop
    /* FEB8 8001F6B8 0D000700 */  break      7
  .L8001F6BC:
    /* FEBC 8001F6BC FFFF0124 */  addiu      $at, $zero, -0x1
    /* FEC0 8001F6C0 04000116 */  bne        $s0, $at, .L8001F6D4
    /* FEC4 8001F6C4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* FEC8 8001F6C8 02006114 */  bne        $v1, $at, .L8001F6D4
    /* FECC 8001F6CC 00000000 */   nop
    /* FED0 8001F6D0 0D000600 */  break      6
  .L8001F6D4:
    /* FED4 8001F6D4 12180000 */  mflo       $v1
    /* FED8 8001F6D8 2000A28F */  lw         $v0, 0x20($sp)
    /* FEDC 8001F6DC 00000000 */  nop
    /* FEE0 8001F6E0 1A005000 */  div        $zero, $v0, $s0
    /* FEE4 8001F6E4 02000016 */  bnez       $s0, .L8001F6F0
    /* FEE8 8001F6E8 00000000 */   nop
    /* FEEC 8001F6EC 0D000700 */  break      7
  .L8001F6F0:
    /* FEF0 8001F6F0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* FEF4 8001F6F4 04000116 */  bne        $s0, $at, .L8001F708
    /* FEF8 8001F6F8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* FEFC 8001F6FC 02004114 */  bne        $v0, $at, .L8001F708
    /* FF00 8001F700 00000000 */   nop
    /* FF04 8001F704 0D000600 */  break      6
  .L8001F708:
    /* FF08 8001F708 12100000 */  mflo       $v0
    /* FF0C 8001F70C 1800A4AF */  sw         $a0, 0x18($sp)
    /* FF10 8001F710 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* FF14 8001F714 2000A2AF */  sw         $v0, 0x20($sp)
  .L8001F718:
    /* FF18 8001F718 21204002 */  addu       $a0, $s2, $zero
    /* FF1C 8001F71C 6C6F000C */  jal        func_8001BDB0
    /* FF20 8001F720 21282002 */   addu      $a1, $s1, $zero
    /* FF24 8001F724 3100001A */  blez       $s0, .L8001F7EC
    /* FF28 8001F728 21880000 */   addu      $s1, $zero, $zero
    /* FF2C 8001F72C 3800B327 */  addiu      $s3, $sp, 0x38
    /* FF30 8001F730 21206002 */  addu       $a0, $s3, $zero
  .L8001F734:
    /* FF34 8001F734 21284002 */  addu       $a1, $s2, $zero
    /* FF38 8001F738 736F000C */  jal        func_8001BDCC
    /* FF3C 8001F73C 1800A627 */   addiu     $a2, $sp, 0x18
    /* FF40 8001F740 1000A0AF */  sw         $zero, 0x10($sp)
    /* FF44 8001F744 21204002 */  addu       $a0, $s2, $zero
    /* FF48 8001F748 21286002 */  addu       $a1, $s3, $zero
    /* FF4C 8001F74C 02000624 */  addiu      $a2, $zero, 0x2
    /* FF50 8001F750 8EF3000C */  jal        func_8003CE38
    /* FF54 8001F754 21380000 */   addu      $a3, $zero, $zero
    /* FF58 8001F758 06004010 */  beqz       $v0, .L8001F774
    /* FF5C 8001F75C 02008232 */   andi      $v0, $s4, 0x2
    /* FF60 8001F760 0780023C */  lui        $v0, %hi(D_8006ABA4)
    /* FF64 8001F764 A4AB428C */  lw         $v0, %lo(D_8006ABA4)($v0)
    /* FF68 8001F768 00000000 */  nop
    /* FF6C 8001F76C 17004010 */  beqz       $v0, .L8001F7CC
    /* FF70 8001F770 02008232 */   andi      $v0, $s4, 0x2
  .L8001F774:
    /* FF74 8001F774 07004010 */  beqz       $v0, .L8001F794
    /* FF78 8001F778 01008232 */   andi      $v0, $s4, 0x1
    /* FF7C 8001F77C 0780023C */  lui        $v0, %hi(D_8006ABA4)
    /* FF80 8001F780 A4AB428C */  lw         $v0, %lo(D_8006ABA4)($v0)
    /* FF84 8001F784 00000000 */  nop
    /* FF88 8001F788 19004014 */  bnez       $v0, .L8001F7F0
    /* FF8C 8001F78C 21100000 */   addu      $v0, $zero, $zero
    /* FF90 8001F790 01008232 */  andi       $v0, $s4, 0x1
  .L8001F794:
    /* FF94 8001F794 0F004010 */  beqz       $v0, .L8001F7D4
    /* FF98 8001F798 2800A427 */   addiu     $a0, $sp, 0x28
    /* FF9C 8001F79C 1000A0AF */  sw         $zero, 0x10($sp)
    /* FFA0 8001F7A0 3800A527 */  addiu      $a1, $sp, 0x38
    /* FFA4 8001F7A4 01000624 */  addiu      $a2, $zero, 0x1
    /* FFA8 8001F7A8 23FE000C */  jal        func_8003F88C
    /* FFAC 8001F7AC 21380000 */   addu      $a3, $zero, $zero
    /* FFB0 8001F7B0 08004010 */  beqz       $v0, .L8001F7D4
    /* FFB4 8001F7B4 2800A427 */   addiu     $a0, $sp, 0x28
    /* FFB8 8001F7B8 53004290 */  lbu        $v0, 0x53($v0)
    /* FFBC 8001F7BC 00000000 */  nop
    /* FFC0 8001F7C0 80004230 */  andi       $v0, $v0, 0x80
    /* FFC4 8001F7C4 03004014 */  bnez       $v0, .L8001F7D4
    /* FFC8 8001F7C8 00000000 */   nop
  .L8001F7CC:
    /* FFCC 8001F7CC FC7D0008 */  j          .L8001F7F0
    /* FFD0 8001F7D0 21100000 */   addu      $v0, $zero, $zero
  .L8001F7D4:
    /* FFD4 8001F7D4 6C6F000C */  jal        func_8001BDB0
    /* FFD8 8001F7D8 3800A527 */   addiu     $a1, $sp, 0x38
    /* FFDC 8001F7DC 01003126 */  addiu      $s1, $s1, 0x1
    /* FFE0 8001F7E0 2A103002 */  slt        $v0, $s1, $s0
    /* FFE4 8001F7E4 D3FF4014 */  bnez       $v0, .L8001F734
    /* FFE8 8001F7E8 21206002 */   addu      $a0, $s3, $zero
  .L8001F7EC:
    /* FFEC 8001F7EC 01000224 */  addiu      $v0, $zero, 0x1
  .L8001F7F0:
    /* FFF0 8001F7F0 6400BF8F */  lw         $ra, 0x64($sp)
    /* FFF4 8001F7F4 6000B48F */  lw         $s4, 0x60($sp)
    /* FFF8 8001F7F8 5C00B38F */  lw         $s3, 0x5C($sp)
    /* FFFC 8001F7FC 5800B28F */  lw         $s2, 0x58($sp)
    /* 10000 8001F800 5400B18F */  lw         $s1, 0x54($sp)
    /* 10004 8001F804 5000B08F */  lw         $s0, 0x50($sp)
    /* 10008 8001F808 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 1000C 8001F80C 0800E003 */  jr         $ra
    /* 10010 8001F810 00000000 */   nop
endlabel func_8001F618
