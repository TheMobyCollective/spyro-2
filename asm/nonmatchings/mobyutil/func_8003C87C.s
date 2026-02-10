.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003C87C, 0x120

glabel func_8003C87C
    /* 2D07C 8003C87C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 2D080 8003C880 3800B4AF */  sw         $s4, 0x38($sp)
    /* 2D084 8003C884 21A08000 */  addu       $s4, $a0, $zero
    /* 2D088 8003C888 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 2D08C 8003C88C 2188A000 */  addu       $s1, $a1, $zero
    /* 2D090 8003C890 2800B0AF */  sw         $s0, 0x28($sp)
    /* 2D094 8003C894 2180C000 */  addu       $s0, $a2, $zero
    /* 2D098 8003C898 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 2D09C 8003C89C 21A8E000 */  addu       $s5, $a3, $zero
    /* 2D0A0 8003C8A0 3400B3AF */  sw         $s3, 0x34($sp)
    /* 2D0A4 8003C8A4 21980000 */  addu       $s3, $zero, $zero
    /* 2D0A8 8003C8A8 1800A427 */  addiu      $a0, $sp, 0x18
    /* 2D0AC 8003C8AC 3000B2AF */  sw         $s2, 0x30($sp)
    /* 2D0B0 8003C8B0 0C009226 */  addiu      $s2, $s4, 0xC
    /* 2D0B4 8003C8B4 21304002 */  addu       $a2, $s2, $zero
    /* 2D0B8 8003C8B8 4400BFAF */  sw         $ra, 0x44($sp)
    /* 2D0BC 8003C8BC 4000B6AF */  sw         $s6, 0x40($sp)
    /* 2D0C0 8003C8C0 02002586 */  lh         $a1, 0x2($s1)
    /* 2D0C4 8003C8C4 6000B68F */  lw         $s6, 0x60($sp)
    /* 2D0C8 8003C8C8 00290500 */  sll        $a1, $a1, 4
    /* 2D0CC 8003C8CC 0C00A524 */  addiu      $a1, $a1, 0xC
    /* 2D0D0 8003C8D0 806F000C */  jal        func_8001BE00
    /* 2D0D4 8003C8D4 21282502 */   addu      $a1, $s1, $a1
    /* 2D0D8 8003C8D8 1800A427 */  addiu      $a0, $sp, 0x18
    /* 2D0DC 8003C8DC 886E000C */  jal        func_8001BA20
    /* 2D0E0 8003C8E0 01000524 */   addiu     $a1, $zero, 0x1
    /* 2D0E4 8003C8E4 2A105000 */  slt        $v0, $v0, $s0
    /* 2D0E8 8003C8E8 19004010 */  beqz       $v0, .L8003C950
    /* 2D0EC 8003C8EC 21304002 */   addu      $a2, $s2, $zero
    /* 2D0F0 8003C8F0 00002386 */  lh         $v1, 0x0($s1)
    /* 2D0F4 8003C8F4 02002286 */  lh         $v0, 0x2($s1)
    /* 2D0F8 8003C8F8 01006424 */  addiu      $a0, $v1, 0x1
    /* 2D0FC 8003C8FC 21104400 */  addu       $v0, $v0, $a0
    /* 2D100 8003C900 1A004300 */  div        $zero, $v0, $v1
    /* 2D104 8003C904 02006014 */  bnez       $v1, .L8003C910
    /* 2D108 8003C908 00000000 */   nop
    /* 2D10C 8003C90C 0D000700 */  break      7
  .L8003C910:
    /* 2D110 8003C910 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2D114 8003C914 04006114 */  bne        $v1, $at, .L8003C928
    /* 2D118 8003C918 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2D11C 8003C91C 02004114 */  bne        $v0, $at, .L8003C928
    /* 2D120 8003C920 00000000 */   nop
    /* 2D124 8003C924 0D000600 */  break      6
  .L8003C928:
    /* 2D128 8003C928 10180000 */  mfhi       $v1
    /* 2D12C 8003C92C 1800A427 */  addiu      $a0, $sp, 0x18
    /* 2D130 8003C930 002C0300 */  sll        $a1, $v1, 16
    /* 2D134 8003C934 032C0500 */  sra        $a1, $a1, 16
    /* 2D138 8003C938 0080B334 */  ori        $s3, $a1, 0x8000
    /* 2D13C 8003C93C 00290500 */  sll        $a1, $a1, 4
    /* 2D140 8003C940 0C00A524 */  addiu      $a1, $a1, 0xC
    /* 2D144 8003C944 21282502 */  addu       $a1, $s1, $a1
    /* 2D148 8003C948 806F000C */  jal        func_8001BE00
    /* 2D14C 8003C94C 020023A6 */   sh        $v1, 0x2($s1)
  .L8003C950:
    /* 2D150 8003C950 21208002 */  addu       $a0, $s4, $zero
    /* 2D154 8003C954 2128A002 */  addu       $a1, $s5, $zero
    /* 2D158 8003C958 1800A627 */  addiu      $a2, $sp, 0x18
    /* 2D15C 8003C95C 21380000 */  addu       $a3, $zero, $zero
    /* 2D160 8003C960 1000A0AF */  sw         $zero, 0x10($sp)
    /* 2D164 8003C964 11F1000C */  jal        func_8003C444
    /* 2D168 8003C968 1400B6AF */   sw        $s6, 0x14($sp)
    /* 2D16C 8003C96C 21106002 */  addu       $v0, $s3, $zero
    /* 2D170 8003C970 4400BF8F */  lw         $ra, 0x44($sp)
    /* 2D174 8003C974 4000B68F */  lw         $s6, 0x40($sp)
    /* 2D178 8003C978 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 2D17C 8003C97C 3800B48F */  lw         $s4, 0x38($sp)
    /* 2D180 8003C980 3400B38F */  lw         $s3, 0x34($sp)
    /* 2D184 8003C984 3000B28F */  lw         $s2, 0x30($sp)
    /* 2D188 8003C988 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 2D18C 8003C98C 2800B08F */  lw         $s0, 0x28($sp)
    /* 2D190 8003C990 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 2D194 8003C994 0800E003 */  jr         $ra
    /* 2D198 8003C998 00000000 */   nop
endlabel func_8003C87C
