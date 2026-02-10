.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_45_80072A74, 0x1A0

glabel func_level_45_80072A74
    /* 33FD010 80072A74 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 33FD014 80072A78 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 33FD018 80072A7C 21988000 */  addu       $s3, $a0, $zero
    /* 33FD01C 80072A80 2400B5AF */  sw         $s5, 0x24($sp)
    /* 33FD020 80072A84 21A8A000 */  addu       $s5, $a1, $zero
    /* 33FD024 80072A88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 33FD028 80072A8C 21800000 */  addu       $s0, $zero, $zero
    /* 33FD02C 80072A90 1800B2AF */  sw         $s2, 0x18($sp)
    /* 33FD030 80072A94 0780123C */  lui        $s2, %hi(D_80069894)
    /* 33FD034 80072A98 94985226 */  addiu      $s2, $s2, %lo(D_80069894)
    /* 33FD038 80072A9C 0680043C */  lui        $a0, %hi(D_80061920)
    /* 33FD03C 80072AA0 20198424 */  addiu      $a0, $a0, %lo(D_80061920)
    /* 33FD040 80072AA4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 33FD044 80072AA8 20009424 */  addiu      $s4, $a0, 0x20
    /* 33FD048 80072AAC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 33FD04C 80072AB0 1400B1AF */  sw         $s1, 0x14($sp)
  .Llevel_45_80072AB4:
    /* 33FD050 80072AB4 0000438E */  lw         $v1, 0x0($s2)
    /* 33FD054 80072AB8 80881000 */  sll        $s1, $s0, 2
    /* 33FD058 80072ABC 40100300 */  sll        $v0, $v1, 1
    /* 33FD05C 80072AC0 21104300 */  addu       $v0, $v0, $v1
    /* 33FD060 80072AC4 80100200 */  sll        $v0, $v0, 2
    /* 33FD064 80072AC8 23104300 */  subu       $v0, $v0, $v1
    /* 33FD068 80072ACC C0100200 */  sll        $v0, $v0, 3
    /* 33FD06C 80072AD0 21104400 */  addu       $v0, $v0, $a0
    /* 33FD070 80072AD4 21102202 */  addu       $v0, $s1, $v0
    /* 33FD074 80072AD8 36006386 */  lh         $v1, 0x36($s3)
    /* 33FD078 80072ADC 0000428C */  lw         $v0, 0x0($v0)
    /* 33FD07C 80072AE0 00000000 */  nop
    /* 33FD080 80072AE4 3D004314 */  bne        $v0, $v1, .Llevel_45_80072BDC
    /* 33FD084 80072AE8 04004326 */   addiu     $v1, $s2, 0x4
    /* 33FD088 80072AEC 21182302 */  addu       $v1, $s1, $v1
    /* 33FD08C 80072AF0 0000628C */  lw         $v0, 0x0($v1)
    /* 33FD090 80072AF4 00000000 */  nop
    /* 33FD094 80072AF8 01004224 */  addiu      $v0, $v0, 0x1
    /* 33FD098 80072AFC 000062AC */  sw         $v0, 0x0($v1)
    /* 33FD09C 80072B00 0000438E */  lw         $v1, 0x0($s2)
    /* 33FD0A0 80072B04 140050AE */  sw         $s0, 0x14($s2)
    /* 33FD0A4 80072B08 40100300 */  sll        $v0, $v1, 1
    /* 33FD0A8 80072B0C 21104300 */  addu       $v0, $v0, $v1
    /* 33FD0AC 80072B10 80100200 */  sll        $v0, $v0, 2
    /* 33FD0B0 80072B14 23104300 */  subu       $v0, $v0, $v1
    /* 33FD0B4 80072B18 C0180200 */  sll        $v1, $v0, 3
    /* 33FD0B8 80072B1C 0680013C */  lui        $at, %hi(D_80061960)
    /* 33FD0BC 80072B20 21082300 */  addu       $at, $at, $v1
    /* 33FD0C0 80072B24 6019228C */  lw         $v0, %lo(D_80061960)($at)
    /* 33FD0C4 80072B28 00000000 */  nop
    /* 33FD0C8 80072B2C 2F004014 */  bnez       $v0, .Llevel_45_80072BEC
    /* 33FD0CC 80072B30 21280000 */   addu      $a1, $zero, $zero
    /* 33FD0D0 80072B34 21107400 */  addu       $v0, $v1, $s4
    /* 33FD0D4 80072B38 21102202 */  addu       $v0, $s1, $v0
    /* 33FD0D8 80072B3C 1800438E */  lw         $v1, 0x18($s2)
    /* 33FD0DC 80072B40 0000428C */  lw         $v0, 0x0($v0)
    /* 33FD0E0 80072B44 0680043C */  lui        $a0, %hi(D_80067020)
    /* 33FD0E4 80072B48 2070848C */  lw         $a0, %lo(D_80067020)($a0)
    /* 33FD0E8 80072B4C 21186200 */  addu       $v1, $v1, $v0
    /* 33FD0EC 80072B50 180043AE */  sw         $v1, 0x18($s2)
    /* 33FD0F0 80072B54 1B008490 */  lbu        $a0, 0x1B($a0)
    /* 33FD0F4 80072B58 C841010C */  jal        func_80050720
    /* 33FD0F8 80072B5C 01000624 */   addiu     $a2, $zero, 0x1
    /* 33FD0FC 80072B60 2200A012 */  beqz       $s5, .Llevel_45_80072BEC
    /* 33FD100 80072B64 8888043C */   lui       $a0, (0x88888889 >> 16)
    /* 33FD104 80072B68 0000438E */  lw         $v1, 0x0($s2)
    /* 33FD108 80072B6C 00000000 */  nop
    /* 33FD10C 80072B70 40100300 */  sll        $v0, $v1, 1
    /* 33FD110 80072B74 21104300 */  addu       $v0, $v0, $v1
    /* 33FD114 80072B78 80100200 */  sll        $v0, $v0, 2
    /* 33FD118 80072B7C 23104300 */  subu       $v0, $v0, $v1
    /* 33FD11C 80072B80 C0100200 */  sll        $v0, $v0, 3
    /* 33FD120 80072B84 21105400 */  addu       $v0, $v0, $s4
    /* 33FD124 80072B88 21102202 */  addu       $v0, $s1, $v0
    /* 33FD128 80072B8C 0000438C */  lw         $v1, 0x0($v0)
    /* 33FD12C 80072B90 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
    /* 33FD130 80072B94 18006400 */  mult       $v1, $a0
    /* 33FD134 80072B98 21286002 */  addu       $a1, $s3, $zero
    /* 33FD138 80072B9C 0680063C */  lui        $a2, %hi(D_800670B4)
    /* 33FD13C 80072BA0 B470C68C */  lw         $a2, %lo(D_800670B4)($a2)
    /* 33FD140 80072BA4 1D000424 */  addiu      $a0, $zero, 0x1D
    /* 33FD144 80072BA8 10380000 */  mfhi       $a3
    /* 33FD148 80072BAC 2110E300 */  addu       $v0, $a3, $v1
    /* 33FD14C 80072BB0 43110200 */  sra        $v0, $v0, 5
    /* 33FD150 80072BB4 C31F0300 */  sra        $v1, $v1, 31
    /* 33FD154 80072BB8 09F8C000 */  jalr       $a2
    /* 33FD158 80072BBC 23804300 */   subu      $s0, $v0, $v1
    /* 33FD15C 80072BC0 21184000 */  addu       $v1, $v0, $zero
    /* 33FD160 80072BC4 09006010 */  beqz       $v1, .Llevel_45_80072BEC
    /* 33FD164 80072BC8 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* 33FD168 80072BCC 3C0062A0 */  sb         $v0, 0x3C($v1)
    /* 33FD16C 80072BD0 01000224 */  addiu      $v0, $zero, 0x1
    /* 33FD170 80072BD4 FBCA0108 */  j          .Llevel_45_80072BEC
    /* 33FD174 80072BD8 480062A0 */   sb        $v0, 0x48($v1)
  .Llevel_45_80072BDC:
    /* 33FD178 80072BDC 01001026 */  addiu      $s0, $s0, 0x1
    /* 33FD17C 80072BE0 0400022A */  slti       $v0, $s0, 0x4
    /* 33FD180 80072BE4 B3FF4014 */  bnez       $v0, .Llevel_45_80072AB4
    /* 33FD184 80072BE8 00000000 */   nop
  .Llevel_45_80072BEC:
    /* 33FD188 80072BEC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 33FD18C 80072BF0 2400B58F */  lw         $s5, 0x24($sp)
    /* 33FD190 80072BF4 2000B48F */  lw         $s4, 0x20($sp)
    /* 33FD194 80072BF8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 33FD198 80072BFC 1800B28F */  lw         $s2, 0x18($sp)
    /* 33FD19C 80072C00 1400B18F */  lw         $s1, 0x14($sp)
    /* 33FD1A0 80072C04 1000B08F */  lw         $s0, 0x10($sp)
    /* 33FD1A4 80072C08 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 33FD1A8 80072C0C 0800E003 */  jr         $ra
    /* 33FD1AC 80072C10 00000000 */   nop
endlabel func_level_45_80072A74
    /* 33FD1B0 80072C14 00000000 */  nop
