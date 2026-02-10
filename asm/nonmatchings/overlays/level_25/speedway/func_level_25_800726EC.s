.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_25_800726EC, 0x1A0

glabel func_level_25_800726EC
    /* 1BCAC88 800726EC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1BCAC8C 800726F0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1BCAC90 800726F4 21988000 */  addu       $s3, $a0, $zero
    /* 1BCAC94 800726F8 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1BCAC98 800726FC 21A8A000 */  addu       $s5, $a1, $zero
    /* 1BCAC9C 80072700 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1BCACA0 80072704 21800000 */  addu       $s0, $zero, $zero
    /* 1BCACA4 80072708 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1BCACA8 8007270C 0780123C */  lui        $s2, %hi(D_80069894)
    /* 1BCACAC 80072710 94985226 */  addiu      $s2, $s2, %lo(D_80069894)
    /* 1BCACB0 80072714 0680043C */  lui        $a0, %hi(D_80061920)
    /* 1BCACB4 80072718 20198424 */  addiu      $a0, $a0, %lo(D_80061920)
    /* 1BCACB8 8007271C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1BCACBC 80072720 20009424 */  addiu      $s4, $a0, 0x20
    /* 1BCACC0 80072724 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1BCACC4 80072728 1400B1AF */  sw         $s1, 0x14($sp)
  .Llevel_25_8007272C:
    /* 1BCACC8 8007272C 0000438E */  lw         $v1, 0x0($s2)
    /* 1BCACCC 80072730 80881000 */  sll        $s1, $s0, 2
    /* 1BCACD0 80072734 40100300 */  sll        $v0, $v1, 1
    /* 1BCACD4 80072738 21104300 */  addu       $v0, $v0, $v1
    /* 1BCACD8 8007273C 80100200 */  sll        $v0, $v0, 2
    /* 1BCACDC 80072740 23104300 */  subu       $v0, $v0, $v1
    /* 1BCACE0 80072744 C0100200 */  sll        $v0, $v0, 3
    /* 1BCACE4 80072748 21104400 */  addu       $v0, $v0, $a0
    /* 1BCACE8 8007274C 21102202 */  addu       $v0, $s1, $v0
    /* 1BCACEC 80072750 36006386 */  lh         $v1, 0x36($s3)
    /* 1BCACF0 80072754 0000428C */  lw         $v0, 0x0($v0)
    /* 1BCACF4 80072758 00000000 */  nop
    /* 1BCACF8 8007275C 3D004314 */  bne        $v0, $v1, .Llevel_25_80072854
    /* 1BCACFC 80072760 04004326 */   addiu     $v1, $s2, 0x4
    /* 1BCAD00 80072764 21182302 */  addu       $v1, $s1, $v1
    /* 1BCAD04 80072768 0000628C */  lw         $v0, 0x0($v1)
    /* 1BCAD08 8007276C 00000000 */  nop
    /* 1BCAD0C 80072770 01004224 */  addiu      $v0, $v0, 0x1
    /* 1BCAD10 80072774 000062AC */  sw         $v0, 0x0($v1)
    /* 1BCAD14 80072778 0000438E */  lw         $v1, 0x0($s2)
    /* 1BCAD18 8007277C 140050AE */  sw         $s0, 0x14($s2)
    /* 1BCAD1C 80072780 40100300 */  sll        $v0, $v1, 1
    /* 1BCAD20 80072784 21104300 */  addu       $v0, $v0, $v1
    /* 1BCAD24 80072788 80100200 */  sll        $v0, $v0, 2
    /* 1BCAD28 8007278C 23104300 */  subu       $v0, $v0, $v1
    /* 1BCAD2C 80072790 C0180200 */  sll        $v1, $v0, 3
    /* 1BCAD30 80072794 0680013C */  lui        $at, %hi(D_80061960)
    /* 1BCAD34 80072798 21082300 */  addu       $at, $at, $v1
    /* 1BCAD38 8007279C 6019228C */  lw         $v0, %lo(D_80061960)($at)
    /* 1BCAD3C 800727A0 00000000 */  nop
    /* 1BCAD40 800727A4 2F004014 */  bnez       $v0, .Llevel_25_80072864
    /* 1BCAD44 800727A8 21280000 */   addu      $a1, $zero, $zero
    /* 1BCAD48 800727AC 21107400 */  addu       $v0, $v1, $s4
    /* 1BCAD4C 800727B0 21102202 */  addu       $v0, $s1, $v0
    /* 1BCAD50 800727B4 1800438E */  lw         $v1, 0x18($s2)
    /* 1BCAD54 800727B8 0000428C */  lw         $v0, 0x0($v0)
    /* 1BCAD58 800727BC 0680043C */  lui        $a0, %hi(D_80067020)
    /* 1BCAD5C 800727C0 2070848C */  lw         $a0, %lo(D_80067020)($a0)
    /* 1BCAD60 800727C4 21186200 */  addu       $v1, $v1, $v0
    /* 1BCAD64 800727C8 180043AE */  sw         $v1, 0x18($s2)
    /* 1BCAD68 800727CC 1B008490 */  lbu        $a0, 0x1B($a0)
    /* 1BCAD6C 800727D0 C841010C */  jal        func_80050720
    /* 1BCAD70 800727D4 01000624 */   addiu     $a2, $zero, 0x1
    /* 1BCAD74 800727D8 2200A012 */  beqz       $s5, .Llevel_25_80072864
    /* 1BCAD78 800727DC 8888043C */   lui       $a0, (0x88888889 >> 16)
    /* 1BCAD7C 800727E0 0000438E */  lw         $v1, 0x0($s2)
    /* 1BCAD80 800727E4 00000000 */  nop
    /* 1BCAD84 800727E8 40100300 */  sll        $v0, $v1, 1
    /* 1BCAD88 800727EC 21104300 */  addu       $v0, $v0, $v1
    /* 1BCAD8C 800727F0 80100200 */  sll        $v0, $v0, 2
    /* 1BCAD90 800727F4 23104300 */  subu       $v0, $v0, $v1
    /* 1BCAD94 800727F8 C0100200 */  sll        $v0, $v0, 3
    /* 1BCAD98 800727FC 21105400 */  addu       $v0, $v0, $s4
    /* 1BCAD9C 80072800 21102202 */  addu       $v0, $s1, $v0
    /* 1BCADA0 80072804 0000438C */  lw         $v1, 0x0($v0)
    /* 1BCADA4 80072808 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
    /* 1BCADA8 8007280C 18006400 */  mult       $v1, $a0
    /* 1BCADAC 80072810 21286002 */  addu       $a1, $s3, $zero
    /* 1BCADB0 80072814 0680063C */  lui        $a2, %hi(D_800670B4)
    /* 1BCADB4 80072818 B470C68C */  lw         $a2, %lo(D_800670B4)($a2)
    /* 1BCADB8 8007281C 1D000424 */  addiu      $a0, $zero, 0x1D
    /* 1BCADBC 80072820 10380000 */  mfhi       $a3
    /* 1BCADC0 80072824 2110E300 */  addu       $v0, $a3, $v1
    /* 1BCADC4 80072828 43110200 */  sra        $v0, $v0, 5
    /* 1BCADC8 8007282C C31F0300 */  sra        $v1, $v1, 31
    /* 1BCADCC 80072830 09F8C000 */  jalr       $a2
    /* 1BCADD0 80072834 23804300 */   subu      $s0, $v0, $v1
    /* 1BCADD4 80072838 21184000 */  addu       $v1, $v0, $zero
    /* 1BCADD8 8007283C 09006010 */  beqz       $v1, .Llevel_25_80072864
    /* 1BCADDC 80072840 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* 1BCADE0 80072844 3C0062A0 */  sb         $v0, 0x3C($v1)
    /* 1BCADE4 80072848 01000224 */  addiu      $v0, $zero, 0x1
    /* 1BCADE8 8007284C 19CA0108 */  j          .Llevel_25_80072864
    /* 1BCADEC 80072850 480062A0 */   sb        $v0, 0x48($v1)
  .Llevel_25_80072854:
    /* 1BCADF0 80072854 01001026 */  addiu      $s0, $s0, 0x1
    /* 1BCADF4 80072858 0400022A */  slti       $v0, $s0, 0x4
    /* 1BCADF8 8007285C B3FF4014 */  bnez       $v0, .Llevel_25_8007272C
    /* 1BCADFC 80072860 00000000 */   nop
  .Llevel_25_80072864:
    /* 1BCAE00 80072864 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1BCAE04 80072868 2400B58F */  lw         $s5, 0x24($sp)
    /* 1BCAE08 8007286C 2000B48F */  lw         $s4, 0x20($sp)
    /* 1BCAE0C 80072870 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1BCAE10 80072874 1800B28F */  lw         $s2, 0x18($sp)
    /* 1BCAE14 80072878 1400B18F */  lw         $s1, 0x14($sp)
    /* 1BCAE18 8007287C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1BCAE1C 80072880 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1BCAE20 80072884 0800E003 */  jr         $ra
    /* 1BCAE24 80072888 00000000 */   nop
endlabel func_level_25_800726EC
    /* 1BCAE28 8007288C 00000000 */  nop
