.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80038ACC, 0xD0

glabel func_80038ACC
    /* 292CC 80038ACC B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 292D0 80038AD0 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 292D4 80038AD4 21A88000 */  addu       $s5, $a0, $zero
    /* 292D8 80038AD8 3000B2AF */  sw         $s2, 0x30($sp)
    /* 292DC 80038ADC 2190A000 */  addu       $s2, $a1, $zero
    /* 292E0 80038AE0 4000B6AF */  sw         $s6, 0x40($sp)
    /* 292E4 80038AE4 21B0C000 */  addu       $s6, $a2, $zero
    /* 292E8 80038AE8 3800B4AF */  sw         $s4, 0x38($sp)
    /* 292EC 80038AEC FF00143C */  lui        $s4, (0xFFFFFF >> 16)
    /* 292F0 80038AF0 FFFF9436 */  ori        $s4, $s4, (0xFFFFFF & 0xFFFF)
    /* 292F4 80038AF4 2800B0AF */  sw         $s0, 0x28($sp)
    /* 292F8 80038AF8 21800000 */  addu       $s0, $zero, $zero
    /* 292FC 80038AFC 4400BFAF */  sw         $ra, 0x44($sp)
    /* 29300 80038B00 3400B3AF */  sw         $s3, 0x34($sp)
    /* 29304 80038B04 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 29308 80038B08 00004286 */  lh         $v0, 0x0($s2)
    /* 2930C 80038B0C 00000000 */  nop
    /* 29310 80038B10 14004018 */  blez       $v0, .L80038B64
    /* 29314 80038B14 21980000 */   addu      $s3, $zero, $zero
    /* 29318 80038B18 0C001124 */  addiu      $s1, $zero, 0xC
  .L80038B1C:
    /* 2931C 80038B1C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 29320 80038B20 21285102 */  addu       $a1, $s2, $s1
    /* 29324 80038B24 806F000C */  jal        func_8001BE00
    /* 29328 80038B28 2130A002 */   addu      $a2, $s5, $zero
    /* 2932C 80038B2C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 29330 80038B30 886E000C */  jal        func_8001BA20
    /* 29334 80038B34 01000524 */   addiu     $a1, $zero, 0x1
    /* 29338 80038B38 21184000 */  addu       $v1, $v0, $zero
    /* 2933C 80038B3C 2A107400 */  slt        $v0, $v1, $s4
    /* 29340 80038B40 03004010 */  beqz       $v0, .L80038B50
    /* 29344 80038B44 00000000 */   nop
    /* 29348 80038B48 21A06000 */  addu       $s4, $v1, $zero
    /* 2934C 80038B4C 21980002 */  addu       $s3, $s0, $zero
  .L80038B50:
    /* 29350 80038B50 00004286 */  lh         $v0, 0x0($s2)
    /* 29354 80038B54 01001026 */  addiu      $s0, $s0, 0x1
    /* 29358 80038B58 2A100202 */  slt        $v0, $s0, $v0
    /* 2935C 80038B5C EFFF4014 */  bnez       $v0, .L80038B1C
    /* 29360 80038B60 10003126 */   addiu     $s1, $s1, 0x10
  .L80038B64:
    /* 29364 80038B64 0200C012 */  beqz       $s6, .L80038B70
    /* 29368 80038B68 21108002 */   addu      $v0, $s4, $zero
    /* 2936C 80038B6C 0000D3AE */  sw         $s3, 0x0($s6)
  .L80038B70:
    /* 29370 80038B70 4400BF8F */  lw         $ra, 0x44($sp)
    /* 29374 80038B74 4000B68F */  lw         $s6, 0x40($sp)
    /* 29378 80038B78 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 2937C 80038B7C 3800B48F */  lw         $s4, 0x38($sp)
    /* 29380 80038B80 3400B38F */  lw         $s3, 0x34($sp)
    /* 29384 80038B84 3000B28F */  lw         $s2, 0x30($sp)
    /* 29388 80038B88 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 2938C 80038B8C 2800B08F */  lw         $s0, 0x28($sp)
    /* 29390 80038B90 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 29394 80038B94 0800E003 */  jr         $ra
    /* 29398 80038B98 00000000 */   nop
endlabel func_80038ACC
