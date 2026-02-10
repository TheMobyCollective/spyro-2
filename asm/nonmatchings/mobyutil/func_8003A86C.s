.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003A86C, 0x120

glabel func_8003A86C
    /* 2B06C 8003A86C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2B070 8003A870 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2B074 8003A874 21988000 */  addu       $s3, $a0, $zero
    /* 2B078 8003A878 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2B07C 8003A87C 2180A000 */  addu       $s0, $a1, $zero
    /* 2B080 8003A880 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2B084 8003A884 2190C000 */  addu       $s2, $a2, $zero
    /* 2B088 8003A888 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2B08C 8003A88C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2B090 8003A890 4000B48F */  lw         $s4, 0x40($sp)
    /* 2B094 8003A894 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2B098 8003A898 7BE0000C */  jal        func_800381EC
    /* 2B09C 8003A89C 2188E000 */   addu      $s1, $a3, $zero
    /* 2B0A0 8003A8A0 21304000 */  addu       $a2, $v0, $zero
    /* 2B0A4 8003A8A4 04000224 */  addiu      $v0, $zero, 0x4
    /* 2B0A8 8003A8A8 0A004216 */  bne        $s2, $v0, .L8003A8D4
    /* 2B0AC 8003A8AC 02000224 */   addiu     $v0, $zero, 0x2
    /* 2B0B0 8003A8B0 0000058E */  lw         $a1, 0x0($s0)
    /* 2B0B4 8003A8B4 00000000 */  nop
    /* 2B0B8 8003A8B8 2310B100 */  subu       $v0, $a1, $s1
    /* 2B0BC 8003A8BC 000002AE */  sw         $v0, 0x0($s0)
    /* 2B0C0 8003A8C0 2A105400 */  slt        $v0, $v0, $s4
    /* 2B0C4 8003A8C4 1A004010 */  beqz       $v0, .L8003A930
    /* 2B0C8 8003A8C8 00000000 */   nop
    /* 2B0CC 8003A8CC 4CEA0008 */  j          .L8003A930
    /* 2B0D0 8003A8D0 000014AE */   sw        $s4, 0x0($s0)
  .L8003A8D4:
    /* 2B0D4 8003A8D4 0C004216 */  bne        $s2, $v0, .L8003A908
    /* 2B0D8 8003A8D8 00000000 */   nop
    /* 2B0DC 8003A8DC 00000586 */  lh         $a1, 0x0($s0)
    /* 2B0E0 8003A8E0 00000000 */  nop
    /* 2B0E4 8003A8E4 2310B100 */  subu       $v0, $a1, $s1
    /* 2B0E8 8003A8E8 000002A6 */  sh         $v0, 0x0($s0)
    /* 2B0EC 8003A8EC 00140200 */  sll        $v0, $v0, 16
    /* 2B0F0 8003A8F0 03140200 */  sra        $v0, $v0, 16
    /* 2B0F4 8003A8F4 2A105400 */  slt        $v0, $v0, $s4
    /* 2B0F8 8003A8F8 0D004010 */  beqz       $v0, .L8003A930
    /* 2B0FC 8003A8FC 00000000 */   nop
    /* 2B100 8003A900 4CEA0008 */  j          .L8003A930
    /* 2B104 8003A904 000014A6 */   sh        $s4, 0x0($s0)
  .L8003A908:
    /* 2B108 8003A908 00000292 */  lbu        $v0, 0x0($s0)
    /* 2B10C 8003A90C 00000000 */  nop
    /* 2B110 8003A910 FF004530 */  andi       $a1, $v0, 0xFF
    /* 2B114 8003A914 23105100 */  subu       $v0, $v0, $s1
    /* 2B118 8003A918 000002A2 */  sb         $v0, 0x0($s0)
    /* 2B11C 8003A91C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2B120 8003A920 2A105400 */  slt        $v0, $v0, $s4
    /* 2B124 8003A924 02004010 */  beqz       $v0, .L8003A930
    /* 2B128 8003A928 00000000 */   nop
    /* 2B12C 8003A92C 000014A2 */  sb         $s4, 0x0($s0)
  .L8003A930:
    /* 2B130 8003A930 38006486 */  lh         $a0, 0x38($s3)
    /* 2B134 8003A934 1400638E */  lw         $v1, 0x14($s3)
    /* 2B138 8003A938 00000000 */  nop
    /* 2B13C 8003A93C 23106400 */  subu       $v0, $v1, $a0
    /* 2B140 8003A940 21104500 */  addu       $v0, $v0, $a1
    /* 2B144 8003A944 2A104600 */  slt        $v0, $v0, $a2
    /* 2B148 8003A948 04004014 */  bnez       $v0, .L8003A95C
    /* 2B14C 8003A94C 21106500 */   addu      $v0, $v1, $a1
    /* 2B150 8003A950 140062AE */  sw         $v0, 0x14($s3)
    /* 2B154 8003A954 5AEA0008 */  j          .L8003A968
    /* 2B158 8003A958 21100000 */   addu      $v0, $zero, $zero
  .L8003A95C:
    /* 2B15C 8003A95C 2110C400 */  addu       $v0, $a2, $a0
    /* 2B160 8003A960 140062AE */  sw         $v0, 0x14($s3)
    /* 2B164 8003A964 01000224 */  addiu      $v0, $zero, 0x1
  .L8003A968:
    /* 2B168 8003A968 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2B16C 8003A96C 2800B48F */  lw         $s4, 0x28($sp)
    /* 2B170 8003A970 2400B38F */  lw         $s3, 0x24($sp)
    /* 2B174 8003A974 2000B28F */  lw         $s2, 0x20($sp)
    /* 2B178 8003A978 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2B17C 8003A97C 1800B08F */  lw         $s0, 0x18($sp)
    /* 2B180 8003A980 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2B184 8003A984 0800E003 */  jr         $ra
    /* 2B188 8003A988 00000000 */   nop
endlabel func_8003A86C
