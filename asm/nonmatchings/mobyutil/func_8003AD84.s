.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003AD84, 0x3E0

glabel func_8003AD84
    /* 2B584 8003AD84 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 2B588 8003AD88 4000B4AF */  sw         $s4, 0x40($sp)
    /* 2B58C 8003AD8C 6800B48F */  lw         $s4, 0x68($sp)
    /* 2B590 8003AD90 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 2B594 8003AD94 6C00B78F */  lw         $s7, 0x6C($sp)
    /* 2B598 8003AD98 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 2B59C 8003AD9C 21988000 */  addu       $s3, $a0, $zero
    /* 2B5A0 8003ADA0 3000B0AF */  sw         $s0, 0x30($sp)
    /* 2B5A4 8003ADA4 2180A000 */  addu       $s0, $a1, $zero
    /* 2B5A8 8003ADA8 4400B5AF */  sw         $s5, 0x44($sp)
    /* 2B5AC 8003ADAC 21A8C000 */  addu       $s5, $a2, $zero
    /* 2B5B0 8003ADB0 3400B1AF */  sw         $s1, 0x34($sp)
    /* 2B5B4 8003ADB4 2188E000 */  addu       $s1, $a3, $zero
    /* 2B5B8 8003ADB8 4800B6AF */  sw         $s6, 0x48($sp)
    /* 2B5BC 8003ADBC 21B00000 */  addu       $s6, $zero, $zero
    /* 2B5C0 8003ADC0 5000BFAF */  sw         $ra, 0x50($sp)
    /* 2B5C4 8003ADC4 0900822A */  slti       $v0, $s4, 0x9
    /* 2B5C8 8003ADC8 05004014 */  bnez       $v0, .L8003ADE0
    /* 2B5CC 8003ADCC 3800B2AF */   sw        $s2, 0x38($sp)
    /* 2B5D0 8003ADD0 0680123C */  lui        $s2, %hi(D_800647D4)
    /* 2B5D4 8003ADD4 D4475226 */  addiu      $s2, $s2, %lo(D_800647D4)
    /* 2B5D8 8003ADD8 87EB0008 */  j          .L8003AE1C
    /* 2B5DC 8003ADDC 07000324 */   addiu     $v1, $zero, 0x7
  .L8003ADE0:
    /* 2B5E0 8003ADE0 0700822A */  slti       $v0, $s4, 0x7
    /* 2B5E4 8003ADE4 05004014 */  bnez       $v0, .L8003ADFC
    /* 2B5E8 8003ADE8 0500822A */   slti      $v0, $s4, 0x5
    /* 2B5EC 8003ADEC 0680123C */  lui        $s2, %hi(D_800647BC)
    /* 2B5F0 8003ADF0 BC475226 */  addiu      $s2, $s2, %lo(D_800647BC)
    /* 2B5F4 8003ADF4 87EB0008 */  j          .L8003AE1C
    /* 2B5F8 8003ADF8 05000324 */   addiu     $v1, $zero, 0x5
  .L8003ADFC:
    /* 2B5FC 8003ADFC 05004014 */  bnez       $v0, .L8003AE14
    /* 2B600 8003AE00 01000324 */   addiu     $v1, $zero, 0x1
    /* 2B604 8003AE04 0680123C */  lui        $s2, %hi(D_800647AC)
    /* 2B608 8003AE08 AC475226 */  addiu      $s2, $s2, %lo(D_800647AC)
    /* 2B60C 8003AE0C 87EB0008 */  j          .L8003AE1C
    /* 2B610 8003AE10 03000324 */   addiu     $v1, $zero, 0x3
  .L8003AE14:
    /* 2B614 8003AE14 0680123C */  lui        $s2, %hi(D_80066E80)
    /* 2B618 8003AE18 806E5226 */  addiu      $s2, $s2, %lo(D_80066E80)
  .L8003AE1C:
    /* 2B61C 8003AE1C 0000248E */  lw         $a0, 0x0($s1)
    /* 2B620 8003AE20 00000000 */  nop
    /* 2B624 8003AE24 2A109400 */  slt        $v0, $a0, $s4
    /* 2B628 8003AE28 22004014 */  bnez       $v0, .L8003AEB4
    /* 2B62C 8003AE2C 2A106400 */   slt       $v0, $v1, $a0
    /* 2B630 8003AE30 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2B634 8003AE34 02000586 */  lh         $a1, 0x2($s0)
    /* 2B638 8003AE38 0C006626 */  addiu      $a2, $s3, 0xC
    /* 2B63C 8003AE3C 00290500 */  sll        $a1, $a1, 4
    /* 2B640 8003AE40 0C00A524 */  addiu      $a1, $a1, 0xC
    /* 2B644 8003AE44 806F000C */  jal        func_8001BE00
    /* 2B648 8003AE48 21280502 */   addu      $a1, $s0, $a1
    /* 2B64C 8003AE4C 2120A002 */  addu       $a0, $s5, $zero
    /* 2B650 8003AE50 6C6F000C */  jal        func_8001BDB0
    /* 2B654 8003AE54 1000A527 */   addiu     $a1, $sp, 0x10
    /* 2B658 8003AE58 02000286 */  lh         $v0, 0x2($s0)
    /* 2B65C 8003AE5C 0A000486 */  lh         $a0, 0xA($s0)
    /* 2B660 8003AE60 00000386 */  lh         $v1, 0x0($s0)
    /* 2B664 8003AE64 21104400 */  addu       $v0, $v0, $a0
    /* 2B668 8003AE68 21104300 */  addu       $v0, $v0, $v1
    /* 2B66C 8003AE6C 1A004300 */  div        $zero, $v0, $v1
    /* 2B670 8003AE70 02006014 */  bnez       $v1, .L8003AE7C
    /* 2B674 8003AE74 00000000 */   nop
    /* 2B678 8003AE78 0D000700 */  break      7
  .L8003AE7C:
    /* 2B67C 8003AE7C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2B680 8003AE80 04006114 */  bne        $v1, $at, .L8003AE94
    /* 2B684 8003AE84 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2B688 8003AE88 02004114 */  bne        $v0, $at, .L8003AE94
    /* 2B68C 8003AE8C 00000000 */   nop
    /* 2B690 8003AE90 0D000600 */  break      6
  .L8003AE94:
    /* 2B694 8003AE94 10200000 */  mfhi       $a0
    /* 2B698 8003AE98 00800334 */  ori        $v1, $zero, 0x8000
    /* 2B69C 8003AE9C 00140400 */  sll        $v0, $a0, 16
    /* 2B6A0 8003AEA0 03140200 */  sra        $v0, $v0, 16
    /* 2B6A4 8003AEA4 21B04300 */  addu       $s6, $v0, $v1
    /* 2B6A8 8003AEA8 020004A6 */  sh         $a0, 0x2($s0)
    /* 2B6AC 8003AEAC 2EEC0008 */  j          .L8003B0B8
    /* 2B6B0 8003AEB0 000020AE */   sw        $zero, 0x0($s1)
  .L8003AEB4:
    /* 2B6B4 8003AEB4 34004010 */  beqz       $v0, .L8003AF88
    /* 2B6B8 8003AEB8 1000A427 */   addiu     $a0, $sp, 0x10
    /* 2B6BC 8003AEBC 02000586 */  lh         $a1, 0x2($s0)
    /* 2B6C0 8003AEC0 0C006626 */  addiu      $a2, $s3, 0xC
    /* 2B6C4 8003AEC4 00290500 */  sll        $a1, $a1, 4
    /* 2B6C8 8003AEC8 0C00A524 */  addiu      $a1, $a1, 0xC
    /* 2B6CC 8003AECC 806F000C */  jal        func_8001BE00
    /* 2B6D0 8003AED0 21280502 */   addu      $a1, $s0, $a1
    /* 2B6D4 8003AED4 0000228E */  lw         $v0, 0x0($s1)
    /* 2B6D8 8003AED8 1000A48F */  lw         $a0, 0x10($sp)
    /* 2B6DC 8003AEDC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2B6E0 8003AEE0 23288202 */  subu       $a1, $s4, $v0
    /* 2B6E4 8003AEE4 1A008500 */  div        $zero, $a0, $a1
    /* 2B6E8 8003AEE8 0200A014 */  bnez       $a1, .L8003AEF4
    /* 2B6EC 8003AEEC 00000000 */   nop
    /* 2B6F0 8003AEF0 0D000700 */  break      7
  .L8003AEF4:
    /* 2B6F4 8003AEF4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2B6F8 8003AEF8 0400A114 */  bne        $a1, $at, .L8003AF0C
    /* 2B6FC 8003AEFC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2B700 8003AF00 02008114 */  bne        $a0, $at, .L8003AF0C
    /* 2B704 8003AF04 00000000 */   nop
    /* 2B708 8003AF08 0D000600 */  break      6
  .L8003AF0C:
    /* 2B70C 8003AF0C 12200000 */  mflo       $a0
    /* 2B710 8003AF10 1400A38F */  lw         $v1, 0x14($sp)
    /* 2B714 8003AF14 00000000 */  nop
    /* 2B718 8003AF18 1A006500 */  div        $zero, $v1, $a1
    /* 2B71C 8003AF1C 0200A014 */  bnez       $a1, .L8003AF28
    /* 2B720 8003AF20 00000000 */   nop
    /* 2B724 8003AF24 0D000700 */  break      7
  .L8003AF28:
    /* 2B728 8003AF28 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2B72C 8003AF2C 0400A114 */  bne        $a1, $at, .L8003AF40
    /* 2B730 8003AF30 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2B734 8003AF34 02006114 */  bne        $v1, $at, .L8003AF40
    /* 2B738 8003AF38 00000000 */   nop
    /* 2B73C 8003AF3C 0D000600 */  break      6
  .L8003AF40:
    /* 2B740 8003AF40 12180000 */  mflo       $v1
    /* 2B744 8003AF44 1800A28F */  lw         $v0, 0x18($sp)
    /* 2B748 8003AF48 00000000 */  nop
    /* 2B74C 8003AF4C 1A004500 */  div        $zero, $v0, $a1
    /* 2B750 8003AF50 0200A014 */  bnez       $a1, .L8003AF5C
    /* 2B754 8003AF54 00000000 */   nop
    /* 2B758 8003AF58 0D000700 */  break      7
  .L8003AF5C:
    /* 2B75C 8003AF5C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2B760 8003AF60 0400A114 */  bne        $a1, $at, .L8003AF74
    /* 2B764 8003AF64 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2B768 8003AF68 02004114 */  bne        $v0, $at, .L8003AF74
    /* 2B76C 8003AF6C 00000000 */   nop
    /* 2B770 8003AF70 0D000600 */  break      6
  .L8003AF74:
    /* 2B774 8003AF74 12100000 */  mflo       $v0
    /* 2B778 8003AF78 1000A4AF */  sw         $a0, 0x10($sp)
    /* 2B77C 8003AF7C 1400A3AF */  sw         $v1, 0x14($sp)
    /* 2B780 8003AF80 2AEC0008 */  j          .L8003B0A8
    /* 2B784 8003AF84 1800A2AF */   sw        $v0, 0x18($sp)
  .L8003AF88:
    /* 2B788 8003AF88 02000586 */  lh         $a1, 0x2($s0)
    /* 2B78C 8003AF8C 0C006626 */  addiu      $a2, $s3, 0xC
    /* 2B790 8003AF90 00290500 */  sll        $a1, $a1, 4
    /* 2B794 8003AF94 0C00A524 */  addiu      $a1, $a1, 0xC
    /* 2B798 8003AF98 806F000C */  jal        func_8001BE00
    /* 2B79C 8003AF9C 21280502 */   addu      $a1, $s0, $a1
    /* 2B7A0 8003AFA0 0000228E */  lw         $v0, 0x0($s1)
    /* 2B7A4 8003AFA4 1000A48F */  lw         $a0, 0x10($sp)
    /* 2B7A8 8003AFA8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2B7AC 8003AFAC 23288202 */  subu       $a1, $s4, $v0
    /* 2B7B0 8003AFB0 1A008500 */  div        $zero, $a0, $a1
    /* 2B7B4 8003AFB4 0200A014 */  bnez       $a1, .L8003AFC0
    /* 2B7B8 8003AFB8 00000000 */   nop
    /* 2B7BC 8003AFBC 0D000700 */  break      7
  .L8003AFC0:
    /* 2B7C0 8003AFC0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2B7C4 8003AFC4 0400A114 */  bne        $a1, $at, .L8003AFD8
    /* 2B7C8 8003AFC8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2B7CC 8003AFCC 02008114 */  bne        $a0, $at, .L8003AFD8
    /* 2B7D0 8003AFD0 00000000 */   nop
    /* 2B7D4 8003AFD4 0D000600 */  break      6
  .L8003AFD8:
    /* 2B7D8 8003AFD8 12200000 */  mflo       $a0
    /* 2B7DC 8003AFDC 1400A38F */  lw         $v1, 0x14($sp)
    /* 2B7E0 8003AFE0 00000000 */  nop
    /* 2B7E4 8003AFE4 1A006500 */  div        $zero, $v1, $a1
    /* 2B7E8 8003AFE8 0200A014 */  bnez       $a1, .L8003AFF4
    /* 2B7EC 8003AFEC 00000000 */   nop
    /* 2B7F0 8003AFF0 0D000700 */  break      7
  .L8003AFF4:
    /* 2B7F4 8003AFF4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2B7F8 8003AFF8 0400A114 */  bne        $a1, $at, .L8003B00C
    /* 2B7FC 8003AFFC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2B800 8003B000 02006114 */  bne        $v1, $at, .L8003B00C
    /* 2B804 8003B004 00000000 */   nop
    /* 2B808 8003B008 0D000600 */  break      6
  .L8003B00C:
    /* 2B80C 8003B00C 12180000 */  mflo       $v1
    /* 2B810 8003B010 1800A28F */  lw         $v0, 0x18($sp)
    /* 2B814 8003B014 00000000 */  nop
    /* 2B818 8003B018 1A004500 */  div        $zero, $v0, $a1
    /* 2B81C 8003B01C 0200A014 */  bnez       $a1, .L8003B028
    /* 2B820 8003B020 00000000 */   nop
    /* 2B824 8003B024 0D000700 */  break      7
  .L8003B028:
    /* 2B828 8003B028 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2B82C 8003B02C 0400A114 */  bne        $a1, $at, .L8003B040
    /* 2B830 8003B030 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2B834 8003B034 02004114 */  bne        $v0, $at, .L8003B040
    /* 2B838 8003B038 00000000 */   nop
    /* 2B83C 8003B03C 0D000600 */  break      6
  .L8003B040:
    /* 2B840 8003B040 12100000 */  mflo       $v0
    /* 2B844 8003B044 1000A4AF */  sw         $a0, 0x10($sp)
    /* 2B848 8003B048 1400A3AF */  sw         $v1, 0x14($sp)
    /* 2B84C 8003B04C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 2B850 8003B050 0000228E */  lw         $v0, 0x0($s1)
    /* 2B854 8003B054 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2B858 8003B058 80100200 */  sll        $v0, $v0, 2
    /* 2B85C 8003B05C 21105200 */  addu       $v0, $v0, $s2
    /* 2B860 8003B060 00004684 */  lh         $a2, 0x0($v0)
    /* 2B864 8003B064 8D6F000C */  jal        func_8001BE34
    /* 2B868 8003B068 21288000 */   addu      $a1, $a0, $zero
    /* 2B86C 8003B06C 2000B027 */  addiu      $s0, $sp, 0x20
    /* 2B870 8003B070 0000228E */  lw         $v0, 0x0($s1)
    /* 2B874 8003B074 21200002 */  addu       $a0, $s0, $zero
    /* 2B878 8003B078 80100200 */  sll        $v0, $v0, 2
    /* 2B87C 8003B07C 21105200 */  addu       $v0, $v0, $s2
    /* 2B880 8003B080 02004684 */  lh         $a2, 0x2($v0)
    /* 2B884 8003B084 8D6F000C */  jal        func_8001BE34
    /* 2B888 8003B088 2128A002 */   addu      $a1, $s5, $zero
    /* 2B88C 8003B08C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2B890 8003B090 21288000 */  addu       $a1, $a0, $zero
    /* 2B894 8003B094 736F000C */  jal        func_8001BDCC
    /* 2B898 8003B098 21300002 */   addu      $a2, $s0, $zero
    /* 2B89C 8003B09C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2B8A0 8003B0A0 526F000C */  jal        func_8001BD48
    /* 2B8A4 8003B0A4 0A000524 */   addiu     $a1, $zero, 0xA
  .L8003B0A8:
    /* 2B8A8 8003B0A8 0000228E */  lw         $v0, 0x0($s1)
    /* 2B8AC 8003B0AC 00000000 */  nop
    /* 2B8B0 8003B0B0 01004224 */  addiu      $v0, $v0, 0x1
    /* 2B8B4 8003B0B4 000022AE */  sw         $v0, 0x0($s1)
  .L8003B0B8:
    /* 2B8B8 8003B0B8 0400F032 */  andi       $s0, $s7, 0x4
    /* 2B8BC 8003B0BC 02000012 */  beqz       $s0, .L8003B0C8
    /* 2B8C0 8003B0C0 00000000 */   nop
    /* 2B8C4 8003B0C4 1800A0AF */  sw         $zero, 0x18($sp)
  .L8003B0C8:
    /* 2B8C8 8003B0C8 1000A48F */  lw         $a0, 0x10($sp)
    /* 2B8CC 8003B0CC 1400A58F */  lw         $a1, 0x14($sp)
    /* 2B8D0 8003B0D0 2E6D000C */  jal        func_8001B4B8
    /* 2B8D4 8003B0D4 21300000 */   addu      $a2, $zero, $zero
    /* 2B8D8 8003B0D8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2B8DC 8003B0DC 21280000 */  addu       $a1, $zero, $zero
    /* 2B8E0 8003B0E0 886E000C */  jal        func_8001BA20
    /* 2B8E4 8003B0E4 460062A2 */   sb        $v0, 0x46($s3)
    /* 2B8E8 8003B0E8 21284000 */  addu       $a1, $v0, $zero
    /* 2B8EC 8003B0EC 1800A48F */  lw         $a0, 0x18($sp)
    /* 2B8F0 8003B0F0 2E6D000C */  jal        func_8001B4B8
    /* 2B8F4 8003B0F4 21300000 */   addu      $a2, $zero, $zero
    /* 2B8F8 8003B0F8 0C006426 */  addiu      $a0, $s3, 0xC
    /* 2B8FC 8003B0FC 21288000 */  addu       $a1, $a0, $zero
    /* 2B900 8003B100 1000A627 */  addiu      $a2, $sp, 0x10
    /* 2B904 8003B104 23100200 */  negu       $v0, $v0
    /* 2B908 8003B108 40004224 */  addiu      $v0, $v0, 0x40
    /* 2B90C 8003B10C 736F000C */  jal        func_8001BDCC
    /* 2B910 8003B110 450062A2 */   sb        $v0, 0x45($s3)
    /* 2B914 8003B114 04000012 */  beqz       $s0, .L8003B128
    /* 2B918 8003B118 21206002 */   addu      $a0, $s3, $zero
    /* 2B91C 8003B11C 1BE6000C */  jal        func_8003986C
    /* 2B920 8003B120 21206002 */   addu      $a0, $s3, $zero
    /* 2B924 8003B124 21206002 */  addu       $a0, $s3, $zero
  .L8003B128:
    /* 2B928 8003B128 4E05010C */  jal        func_80041538
    /* 2B92C 8003B12C 02000524 */   addiu     $a1, $zero, 0x2
    /* 2B930 8003B130 2110C002 */  addu       $v0, $s6, $zero
    /* 2B934 8003B134 5000BF8F */  lw         $ra, 0x50($sp)
    /* 2B938 8003B138 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 2B93C 8003B13C 4800B68F */  lw         $s6, 0x48($sp)
    /* 2B940 8003B140 4400B58F */  lw         $s5, 0x44($sp)
    /* 2B944 8003B144 4000B48F */  lw         $s4, 0x40($sp)
    /* 2B948 8003B148 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 2B94C 8003B14C 3800B28F */  lw         $s2, 0x38($sp)
    /* 2B950 8003B150 3400B18F */  lw         $s1, 0x34($sp)
    /* 2B954 8003B154 3000B08F */  lw         $s0, 0x30($sp)
    /* 2B958 8003B158 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 2B95C 8003B15C 0800E003 */  jr         $ra
    /* 2B960 8003B160 00000000 */   nop
endlabel func_8003AD84
