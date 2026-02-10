.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003B77C, 0x398

glabel func_8003B77C
    /* 2BF7C 8003B77C A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 2BF80 8003B780 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 2BF84 8003B784 21A88000 */  addu       $s5, $a0, $zero
    /* 2BF88 8003B788 4000B2AF */  sw         $s2, 0x40($sp)
    /* 2BF8C 8003B78C 2190A000 */  addu       $s2, $a1, $zero
    /* 2BF90 8003B790 4400B3AF */  sw         $s3, 0x44($sp)
    /* 2BF94 8003B794 2198C000 */  addu       $s3, $a2, $zero
    /* 2BF98 8003B798 5800BEAF */  sw         $fp, 0x58($sp)
    /* 2BF9C 8003B79C 21F00000 */  addu       $fp, $zero, $zero
    /* 2BFA0 8003B7A0 5400B7AF */  sw         $s7, 0x54($sp)
    /* 2BFA4 8003B7A4 21B80000 */  addu       $s7, $zero, $zero
    /* 2BFA8 8003B7A8 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 2BFAC 8003B7AC 5000B6AF */  sw         $s6, 0x50($sp)
    /* 2BFB0 8003B7B0 4800B4AF */  sw         $s4, 0x48($sp)
    /* 2BFB4 8003B7B4 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 2BFB8 8003B7B8 3800B0AF */  sw         $s0, 0x38($sp)
    /* 2BFBC 8003B7BC 2000A7AF */  sw         $a3, 0x20($sp)
    /* 2BFC0 8003B7C0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 2BFC4 8003B7C4 0100A292 */  lbu        $v0, 0x1($s5)
    /* 2BFC8 8003B7C8 00000000 */  nop
    /* 2BFCC 8003B7CC C3004018 */  blez       $v0, .L8003BADC
    /* 2BFD0 8003B7D0 21A00000 */   addu      $s4, $zero, $zero
    /* 2BFD4 8003B7D4 0C001624 */  addiu      $s6, $zero, 0xC
  .L8003B7D8:
    /* 2BFD8 8003B7D8 2180B602 */  addu       $s0, $s5, $s6
    /* 2BFDC 8003B7DC 0000448E */  lw         $a0, 0x0($s2)
    /* 2BFE0 8003B7E0 0800028E */  lw         $v0, 0x8($s0)
    /* 2BFE4 8003B7E4 00000000 */  nop
    /* 2BFE8 8003B7E8 23208200 */  subu       $a0, $a0, $v0
    /* 2BFEC 8003B7EC 1000A4AF */  sw         $a0, 0x10($sp)
    /* 2BFF0 8003B7F0 0400438E */  lw         $v1, 0x4($s2)
    /* 2BFF4 8003B7F4 0C00028E */  lw         $v0, 0xC($s0)
    /* 2BFF8 8003B7F8 00000000 */  nop
    /* 2BFFC 8003B7FC 23186200 */  subu       $v1, $v1, $v0
    /* 2C000 8003B800 1400A3AF */  sw         $v1, 0x14($sp)
    /* 2C004 8003B804 0000028E */  lw         $v0, 0x0($s0)
    /* 2C008 8003B808 00000000 */  nop
    /* 2C00C 8003B80C 18004300 */  mult       $v0, $v1
    /* 2C010 8003B810 12180000 */  mflo       $v1
    /* 2C014 8003B814 0400028E */  lw         $v0, 0x4($s0)
    /* 2C018 8003B818 00000000 */  nop
    /* 2C01C 8003B81C 18004400 */  mult       $v0, $a0
    /* 2C020 8003B820 12480000 */  mflo       $t1
    /* 2C024 8003B824 23106900 */  subu       $v0, $v1, $t1
    /* 2C028 8003B828 A6004018 */  blez       $v0, .L8003BAC4
    /* 2C02C 8003B82C 00000000 */   nop
    /* 2C030 8003B830 1000058E */  lw         $a1, 0x10($s0)
    /* 2C034 8003B834 0000448E */  lw         $a0, 0x0($s2)
    /* 2C038 8003B838 00000000 */  nop
    /* 2C03C 8003B83C 1800A400 */  mult       $a1, $a0
    /* 2C040 8003B840 1400038E */  lw         $v1, 0x14($s0)
    /* 2C044 8003B844 12300000 */  mflo       $a2
    /* 2C048 8003B848 0400428E */  lw         $v0, 0x4($s2)
    /* 2C04C 8003B84C 00000000 */  nop
    /* 2C050 8003B850 18006200 */  mult       $v1, $v0
    /* 2C054 8003B854 1800038E */  lw         $v1, 0x18($s0)
    /* 2C058 8003B858 12480000 */  mflo       $t1
    /* 2C05C 8003B85C 2110C900 */  addu       $v0, $a2, $t1
    /* 2C060 8003B860 21186200 */  addu       $v1, $v1, $v0
    /* 2C064 8003B864 831A0300 */  sra        $v1, $v1, 10
    /* 2C068 8003B868 18006500 */  mult       $v1, $a1
    /* 2C06C 8003B86C 12480000 */  mflo       $t1
    /* 2C070 8003B870 83120900 */  sra        $v0, $t1, 10
    /* 2C074 8003B874 23208200 */  subu       $a0, $a0, $v0
    /* 2C078 8003B878 000064AE */  sw         $a0, 0x0($s3)
    /* 2C07C 8003B87C 1400028E */  lw         $v0, 0x14($s0)
    /* 2C080 8003B880 00000000 */  nop
    /* 2C084 8003B884 18006200 */  mult       $v1, $v0
    /* 2C088 8003B888 21284002 */  addu       $a1, $s2, $zero
    /* 2C08C 8003B88C 21206002 */  addu       $a0, $s3, $zero
    /* 2C090 8003B890 0400428E */  lw         $v0, 0x4($s2)
    /* 2C094 8003B894 12180000 */  mflo       $v1
    /* 2C098 8003B898 831A0300 */  sra        $v1, $v1, 10
    /* 2C09C 8003B89C 23104300 */  subu       $v0, $v0, $v1
    /* 2C0A0 8003B8A0 DB6F000C */  jal        func_8001BF6C
    /* 2C0A4 8003B8A4 040062AE */   sw        $v0, 0x4($s3)
    /* 2C0A8 8003B8A8 0000048E */  lw         $a0, 0x0($s0)
    /* 2C0AC 8003B8AC 0400058E */  lw         $a1, 0x4($s0)
    /* 2C0B0 8003B8B0 2E6D000C */  jal        func_8001B4B8
    /* 2C0B4 8003B8B4 21300000 */   addu      $a2, $zero, $zero
    /* 2C0B8 8003B8B8 21884000 */  addu       $s1, $v0, $zero
    /* 2C0BC 8003B8BC 7000A58F */  lw         $a1, 0x70($sp)
    /* 2C0C0 8003B8C0 A76F000C */  jal        func_8001BE9C
    /* 2C0C4 8003B8C4 21202002 */   addu      $a0, $s1, $zero
    /* 2C0C8 8003B8C8 41004228 */  slti       $v0, $v0, 0x41
    /* 2C0CC 8003B8CC 02004014 */  bnez       $v0, .L8003B8D8
    /* 2C0D0 8003B8D0 80002226 */   addiu     $v0, $s1, 0x80
    /* 2C0D4 8003B8D4 FF005130 */  andi       $s1, $v0, 0xFF
  .L8003B8D8:
    /* 2C0D8 8003B8D8 0000648E */  lw         $a0, 0x0($s3)
    /* 2C0DC 8003B8DC 0800038E */  lw         $v1, 0x8($s0)
    /* 2C0E0 8003B8E0 00000000 */  nop
    /* 2C0E4 8003B8E4 2A106400 */  slt        $v0, $v1, $a0
    /* 2C0E8 8003B8E8 07004010 */  beqz       $v0, .L8003B908
    /* 2C0EC 8003B8EC 2A108300 */   slt       $v0, $a0, $v1
    /* 2C0F0 8003B8F0 0000028E */  lw         $v0, 0x0($s0)
    /* 2C0F4 8003B8F4 00000000 */  nop
    /* 2C0F8 8003B8F8 21106200 */  addu       $v0, $v1, $v0
    /* 2C0FC 8003B8FC 2A104400 */  slt        $v0, $v0, $a0
    /* 2C100 8003B900 2D004014 */  bnez       $v0, .L8003B9B8
    /* 2C104 8003B904 2A108300 */   slt       $v0, $a0, $v1
  .L8003B908:
    /* 2C108 8003B908 07004010 */  beqz       $v0, .L8003B928
    /* 2C10C 8003B90C 00000000 */   nop
    /* 2C110 8003B910 0000028E */  lw         $v0, 0x0($s0)
    /* 2C114 8003B914 00000000 */  nop
    /* 2C118 8003B918 21106200 */  addu       $v0, $v1, $v0
    /* 2C11C 8003B91C 2A108200 */  slt        $v0, $a0, $v0
    /* 2C120 8003B920 25004014 */  bnez       $v0, .L8003B9B8
    /* 2C124 8003B924 00000000 */   nop
  .L8003B928:
    /* 2C128 8003B928 0400648E */  lw         $a0, 0x4($s3)
    /* 2C12C 8003B92C 0C00038E */  lw         $v1, 0xC($s0)
    /* 2C130 8003B930 00000000 */  nop
    /* 2C134 8003B934 2A106400 */  slt        $v0, $v1, $a0
    /* 2C138 8003B938 07004010 */  beqz       $v0, .L8003B958
    /* 2C13C 8003B93C 2A108300 */   slt       $v0, $a0, $v1
    /* 2C140 8003B940 0400028E */  lw         $v0, 0x4($s0)
    /* 2C144 8003B944 00000000 */  nop
    /* 2C148 8003B948 21106200 */  addu       $v0, $v1, $v0
    /* 2C14C 8003B94C 2A104400 */  slt        $v0, $v0, $a0
    /* 2C150 8003B950 19004014 */  bnez       $v0, .L8003B9B8
    /* 2C154 8003B954 2A108300 */   slt       $v0, $a0, $v1
  .L8003B958:
    /* 2C158 8003B958 07004010 */  beqz       $v0, .L8003B978
    /* 2C15C 8003B95C 00000000 */   nop
    /* 2C160 8003B960 0400028E */  lw         $v0, 0x4($s0)
    /* 2C164 8003B964 00000000 */  nop
    /* 2C168 8003B968 21106200 */  addu       $v0, $v1, $v0
    /* 2C16C 8003B96C 2A108200 */  slt        $v0, $a0, $v0
    /* 2C170 8003B970 11004014 */  bnez       $v0, .L8003B9B8
    /* 2C174 8003B974 00000000 */   nop
  .L8003B978:
    /* 2C178 8003B978 21206002 */  addu       $a0, $s3, $zero
    /* 2C17C 8003B97C DB6F000C */  jal        func_8001BF6C
    /* 2C180 8003B980 21284002 */   addu      $a1, $s2, $zero
    /* 2C184 8003B984 7400A88F */  lw         $t0, 0x74($sp)
    /* 2C188 8003B988 00000000 */  nop
    /* 2C18C 8003B98C 2A104800 */  slt        $v0, $v0, $t0
    /* 2C190 8003B990 09004010 */  beqz       $v0, .L8003B9B8
    /* 2C194 8003B994 00000000 */   nop
    /* 2C198 8003B998 2000A88F */  lw         $t0, 0x20($sp)
    /* 2C19C 8003B99C 00000000 */  nop
    /* 2C1A0 8003B9A0 02000011 */  beqz       $t0, .L8003B9AC
    /* 2C1A4 8003B9A4 00000000 */   nop
    /* 2C1A8 8003B9A8 000011AD */  sw         $s1, 0x0($t0)
  .L8003B9AC:
    /* 2C1AC 8003B9AC 01000824 */  addiu      $t0, $zero, 0x1
    /* 2C1B0 8003B9B0 B7EE0008 */  j          .L8003BADC
    /* 2C1B4 8003B9B4 2800A8AF */   sw        $t0, 0x28($sp)
  .L8003B9B8:
    /* 2C1B8 8003B9B8 0800048E */  lw         $a0, 0x8($s0)
    /* 2C1BC 8003B9BC 0000028E */  lw         $v0, 0x0($s0)
    /* 2C1C0 8003B9C0 21388000 */  addu       $a3, $a0, $zero
    /* 2C1C4 8003B9C4 21188200 */  addu       $v1, $a0, $v0
    /* 2C1C8 8003B9C8 2A106700 */  slt        $v0, $v1, $a3
    /* 2C1CC 8003B9CC 02004010 */  beqz       $v0, .L8003B9D8
    /* 2C1D0 8003B9D0 21288000 */   addu      $a1, $a0, $zero
    /* 2C1D4 8003B9D4 21386000 */  addu       $a3, $v1, $zero
  .L8003B9D8:
    /* 2C1D8 8003B9D8 2A10A300 */  slt        $v0, $a1, $v1
    /* 2C1DC 8003B9DC 02004010 */  beqz       $v0, .L8003B9E8
    /* 2C1E0 8003B9E0 00000000 */   nop
    /* 2C1E4 8003B9E4 21286000 */  addu       $a1, $v1, $zero
  .L8003B9E8:
    /* 2C1E8 8003B9E8 0C00048E */  lw         $a0, 0xC($s0)
    /* 2C1EC 8003B9EC 0400028E */  lw         $v0, 0x4($s0)
    /* 2C1F0 8003B9F0 21308000 */  addu       $a2, $a0, $zero
    /* 2C1F4 8003B9F4 21188200 */  addu       $v1, $a0, $v0
    /* 2C1F8 8003B9F8 2A106600 */  slt        $v0, $v1, $a2
    /* 2C1FC 8003B9FC 02004010 */  beqz       $v0, .L8003BA08
    /* 2C200 8003BA00 2A108300 */   slt       $v0, $a0, $v1
    /* 2C204 8003BA04 21306000 */  addu       $a2, $v1, $zero
  .L8003BA08:
    /* 2C208 8003BA08 02004010 */  beqz       $v0, .L8003BA14
    /* 2C20C 8003BA0C 00000000 */   nop
    /* 2C210 8003BA10 21206000 */  addu       $a0, $v1, $zero
  .L8003BA14:
    /* 2C214 8003BA14 0000628E */  lw         $v0, 0x0($s3)
    /* 2C218 8003BA18 00000000 */  nop
    /* 2C21C 8003BA1C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 2C220 8003BA20 0400638E */  lw         $v1, 0x4($s3)
    /* 2C224 8003BA24 2A10A200 */  slt        $v0, $a1, $v0
    /* 2C228 8003BA28 02004010 */  beqz       $v0, .L8003BA34
    /* 2C22C 8003BA2C 1C00A3AF */   sw        $v1, 0x1C($sp)
    /* 2C230 8003BA30 1800A5AF */  sw         $a1, 0x18($sp)
  .L8003BA34:
    /* 2C234 8003BA34 2A108300 */  slt        $v0, $a0, $v1
    /* 2C238 8003BA38 02004010 */  beqz       $v0, .L8003BA44
    /* 2C23C 8003BA3C 00000000 */   nop
    /* 2C240 8003BA40 1C00A4AF */  sw         $a0, 0x1C($sp)
  .L8003BA44:
    /* 2C244 8003BA44 1800A28F */  lw         $v0, 0x18($sp)
    /* 2C248 8003BA48 00000000 */  nop
    /* 2C24C 8003BA4C 2A104700 */  slt        $v0, $v0, $a3
    /* 2C250 8003BA50 02004010 */  beqz       $v0, .L8003BA5C
    /* 2C254 8003BA54 00000000 */   nop
    /* 2C258 8003BA58 1800A7AF */  sw         $a3, 0x18($sp)
  .L8003BA5C:
    /* 2C25C 8003BA5C 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 2C260 8003BA60 00000000 */  nop
    /* 2C264 8003BA64 2A104600 */  slt        $v0, $v0, $a2
    /* 2C268 8003BA68 02004010 */  beqz       $v0, .L8003BA74
    /* 2C26C 8003BA6C 1800A427 */   addiu     $a0, $sp, 0x18
    /* 2C270 8003BA70 1C00A6AF */  sw         $a2, 0x1C($sp)
  .L8003BA74:
    /* 2C274 8003BA74 DB6F000C */  jal        func_8001BF6C
    /* 2C278 8003BA78 21284002 */   addu      $a1, $s2, $zero
    /* 2C27C 8003BA7C 7400A88F */  lw         $t0, 0x74($sp)
    /* 2C280 8003BA80 00000000 */  nop
    /* 2C284 8003BA84 2A100201 */  slt        $v0, $t0, $v0
    /* 2C288 8003BA88 0F004014 */  bnez       $v0, .L8003BAC8
    /* 2C28C 8003BA8C 00000000 */   nop
    /* 2C290 8003BA90 0100A292 */  lbu        $v0, 0x1($s5)
    /* 2C294 8003BA94 00000000 */  nop
    /* 2C298 8003BA98 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2C29C 8003BA9C 03008216 */  bne        $s4, $v0, .L8003BAAC
    /* 2C2A0 8003BAA0 00000000 */   nop
    /* 2C2A4 8003BAA4 0E00C017 */  bnez       $fp, .L8003BAE0
    /* 2C2A8 8003BAA8 00200224 */   addiu     $v0, $zero, 0x2000
  .L8003BAAC:
    /* 2C2AC 8003BAAC 0C00E016 */  bnez       $s7, .L8003BAE0
    /* 2C2B0 8003BAB0 00200224 */   addiu     $v0, $zero, 0x2000
    /* 2C2B4 8003BAB4 04008016 */  bnez       $s4, .L8003BAC8
    /* 2C2B8 8003BAB8 01001724 */   addiu     $s7, $zero, 0x1
    /* 2C2BC 8003BABC B2EE0008 */  j          .L8003BAC8
    /* 2C2C0 8003BAC0 01001E24 */   addiu     $fp, $zero, 0x1
  .L8003BAC4:
    /* 2C2C4 8003BAC4 21B80000 */  addu       $s7, $zero, $zero
  .L8003BAC8:
    /* 2C2C8 8003BAC8 0100A292 */  lbu        $v0, 0x1($s5)
    /* 2C2CC 8003BACC 01009426 */  addiu      $s4, $s4, 0x1
    /* 2C2D0 8003BAD0 2A108202 */  slt        $v0, $s4, $v0
    /* 2C2D4 8003BAD4 40FF4014 */  bnez       $v0, .L8003B7D8
    /* 2C2D8 8003BAD8 1C00D626 */   addiu     $s6, $s6, 0x1C
  .L8003BADC:
    /* 2C2DC 8003BADC 2800A28F */  lw         $v0, 0x28($sp)
  .L8003BAE0:
    /* 2C2E0 8003BAE0 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 2C2E4 8003BAE4 5800BE8F */  lw         $fp, 0x58($sp)
    /* 2C2E8 8003BAE8 5400B78F */  lw         $s7, 0x54($sp)
    /* 2C2EC 8003BAEC 5000B68F */  lw         $s6, 0x50($sp)
    /* 2C2F0 8003BAF0 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 2C2F4 8003BAF4 4800B48F */  lw         $s4, 0x48($sp)
    /* 2C2F8 8003BAF8 4400B38F */  lw         $s3, 0x44($sp)
    /* 2C2FC 8003BAFC 4000B28F */  lw         $s2, 0x40($sp)
    /* 2C300 8003BB00 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 2C304 8003BB04 3800B08F */  lw         $s0, 0x38($sp)
    /* 2C308 8003BB08 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 2C30C 8003BB0C 0800E003 */  jr         $ra
    /* 2C310 8003BB10 00000000 */   nop
endlabel func_8003B77C
