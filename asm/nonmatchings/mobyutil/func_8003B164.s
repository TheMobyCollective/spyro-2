.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003B164, 0x618

glabel func_8003B164
    /* 2B964 8003B164 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* 2B968 8003B168 D000B6AF */  sw         $s6, 0xD0($sp)
    /* 2B96C 8003B16C 21B08000 */  addu       $s6, $a0, $zero
    /* 2B970 8003B170 3800A427 */  addiu      $a0, $sp, 0x38
    /* 2B974 8003B174 8000A5AF */  sw         $a1, 0x80($sp)
    /* 2B978 8003B178 0C00C526 */  addiu      $a1, $s6, 0xC
    /* 2B97C 8003B17C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2B980 8003B180 DC00BFAF */  sw         $ra, 0xDC($sp)
    /* 2B984 8003B184 D800BEAF */  sw         $fp, 0xD8($sp)
    /* 2B988 8003B188 D400B7AF */  sw         $s7, 0xD4($sp)
    /* 2B98C 8003B18C CC00B5AF */  sw         $s5, 0xCC($sp)
    /* 2B990 8003B190 C800B4AF */  sw         $s4, 0xC8($sp)
    /* 2B994 8003B194 C400B3AF */  sw         $s3, 0xC4($sp)
    /* 2B998 8003B198 C000B2AF */  sw         $s2, 0xC0($sp)
    /* 2B99C 8003B19C BC00B1AF */  sw         $s1, 0xBC($sp)
    /* 2B9A0 8003B1A0 B800B0AF */  sw         $s0, 0xB8($sp)
    /* 2B9A4 8003B1A4 8800A6AF */  sw         $a2, 0x88($sp)
    /* 2B9A8 8003B1A8 9000A7AF */  sw         $a3, 0x90($sp)
    /* 2B9AC 8003B1AC 6C6F000C */  jal        func_8001BDB0
    /* 2B9B0 8003B1B0 5800A2AF */   sw        $v0, 0x58($sp)
    /* 2B9B4 8003B1B4 8000A98F */  lw         $t1, 0x80($sp)
    /* 2B9B8 8003B1B8 00000000 */  nop
    /* 2B9BC 8003B1BC 40200900 */  sll        $a0, $t1, 1
    /* 2B9C0 8003B1C0 0680013C */  lui        $at, %hi(D_80061C58)
    /* 2B9C4 8003B1C4 21082400 */  addu       $at, $at, $a0
    /* 2B9C8 8003B1C8 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 2B9CC 8003B1CC 8800A98F */  lw         $t1, 0x88($sp)
    /* 2B9D0 8003B1D0 00000000 */  nop
    /* 2B9D4 8003B1D4 18004900 */  mult       $v0, $t1
    /* 2B9D8 8003B1D8 3800A28F */  lw         $v0, 0x38($sp)
    /* 2B9DC 8003B1DC 12480000 */  mflo       $t1
    /* 2B9E0 8003B1E0 031B0900 */  sra        $v1, $t1, 12
    /* 2B9E4 8003B1E4 21104300 */  addu       $v0, $v0, $v1
    /* 2B9E8 8003B1E8 3800A2AF */  sw         $v0, 0x38($sp)
    /* 2B9EC 8003B1EC 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 2B9F0 8003B1F0 21082400 */  addu       $at, $at, $a0
    /* 2B9F4 8003B1F4 D81B2284 */  lh         $v0, %lo(D_80061BD8)($at)
    /* 2B9F8 8003B1F8 8800A98F */  lw         $t1, 0x88($sp)
    /* 2B9FC 8003B1FC 00000000 */  nop
    /* 2BA00 8003B200 18004900 */  mult       $v0, $t1
    /* 2BA04 8003B204 3C00A28F */  lw         $v0, 0x3C($sp)
    /* 2BA08 8003B208 12480000 */  mflo       $t1
    /* 2BA0C 8003B20C 031B0900 */  sra        $v1, $t1, 12
    /* 2BA10 8003B210 FC00A98F */  lw         $t1, 0xFC($sp)
    /* 2BA14 8003B214 21104300 */  addu       $v0, $v0, $v1
    /* 2BA18 8003B218 8A002011 */  beqz       $t1, .L8003B444
    /* 2BA1C 8003B21C 3C00A2AF */   sw        $v0, 0x3C($sp)
    /* 2BA20 8003B220 88002019 */  blez       $t1, .L8003B444
    /* 2BA24 8003B224 21B80000 */   addu      $s7, $zero, $zero
    /* 2BA28 8003B228 F800BE8F */  lw         $fp, 0xF8($sp)
  .L8003B22C:
    /* 2BA2C 8003B22C 00000000 */  nop
    /* 2BA30 8003B230 0000D28F */  lw         $s2, 0x0($fp)
    /* 2BA34 8003B234 00000000 */  nop
    /* 2BA38 8003B238 00004292 */  lbu        $v0, 0x0($s2)
    /* 2BA3C 8003B23C 00000000 */  nop
    /* 2BA40 8003B240 70004014 */  bnez       $v0, .L8003B404
    /* 2BA44 8003B244 21204002 */   addu      $a0, $s2, $zero
    /* 2BA48 8003B248 0C00C426 */  addiu      $a0, $s6, 0xC
    /* 2BA4C 8003B24C DB6F000C */  jal        func_8001BF6C
    /* 2BA50 8003B250 04004526 */   addiu     $a1, $s2, 0x4
    /* 2BA54 8003B254 02004386 */  lh         $v1, 0x2($s2)
    /* 2BA58 8003B258 00000000 */  nop
    /* 2BA5C 8003B25C 2A104300 */  slt        $v0, $v0, $v1
    /* 2BA60 8003B260 73004010 */  beqz       $v0, .L8003B430
    /* 2BA64 8003B264 00000000 */   nop
    /* 2BA68 8003B268 01004292 */  lbu        $v0, 0x1($s2)
    /* 2BA6C 8003B26C 00000000 */  nop
    /* 2BA70 8003B270 1E004018 */  blez       $v0, .L8003B2EC
    /* 2BA74 8003B274 21880000 */   addu      $s1, $zero, $zero
    /* 2BA78 8003B278 0C000624 */  addiu      $a2, $zero, 0xC
    /* 2BA7C 8003B27C 3800A88F */  lw         $t0, 0x38($sp)
    /* 2BA80 8003B280 3C00A78F */  lw         $a3, 0x3C($sp)
  .L8003B284:
    /* 2BA84 8003B284 21204602 */  addu       $a0, $s2, $a2
    /* 2BA88 8003B288 0800858C */  lw         $a1, 0x8($a0)
    /* 2BA8C 8003B28C 00000000 */  nop
    /* 2BA90 8003B290 23280501 */  subu       $a1, $t0, $a1
    /* 2BA94 8003B294 5000A5AF */  sw         $a1, 0x50($sp)
    /* 2BA98 8003B298 0C00838C */  lw         $v1, 0xC($a0)
    /* 2BA9C 8003B29C 00000000 */  nop
    /* 2BAA0 8003B2A0 2318E300 */  subu       $v1, $a3, $v1
    /* 2BAA4 8003B2A4 5400A3AF */  sw         $v1, 0x54($sp)
    /* 2BAA8 8003B2A8 0000828C */  lw         $v0, 0x0($a0)
    /* 2BAAC 8003B2AC 00000000 */  nop
    /* 2BAB0 8003B2B0 18004300 */  mult       $v0, $v1
    /* 2BAB4 8003B2B4 12180000 */  mflo       $v1
    /* 2BAB8 8003B2B8 0400828C */  lw         $v0, 0x4($a0)
    /* 2BABC 8003B2BC 00000000 */  nop
    /* 2BAC0 8003B2C0 18004500 */  mult       $v0, $a1
    /* 2BAC4 8003B2C4 12500000 */  mflo       $t2
    /* 2BAC8 8003B2C8 23106A00 */  subu       $v0, $v1, $t2
    /* 2BACC 8003B2CC 06004004 */  bltz       $v0, .L8003B2E8
    /* 2BAD0 8003B2D0 00000000 */   nop
    /* 2BAD4 8003B2D4 01004292 */  lbu        $v0, 0x1($s2)
    /* 2BAD8 8003B2D8 01003126 */  addiu      $s1, $s1, 0x1
    /* 2BADC 8003B2DC 2A102202 */  slt        $v0, $s1, $v0
    /* 2BAE0 8003B2E0 E8FF4014 */  bnez       $v0, .L8003B284
    /* 2BAE4 8003B2E4 1C00C624 */   addiu     $a2, $a2, 0x1C
  .L8003B2E8:
    /* 2BAE8 8003B2E8 01004292 */  lbu        $v0, 0x1($s2)
  .L8003B2EC:
    /* 2BAEC 8003B2EC 00000000 */  nop
    /* 2BAF0 8003B2F0 4F002216 */  bne        $s1, $v0, .L8003B430
    /* 2BAF4 8003B2F4 9800153C */   lui       $s5, (0x98967F >> 16)
    /* 2BAF8 8003B2F8 7F96B536 */  ori        $s5, $s5, (0x98967F & 0xFFFF)
    /* 2BAFC 8003B2FC 21880000 */  addu       $s1, $zero, $zero
    /* 2BB00 8003B300 2F004010 */  beqz       $v0, .L8003B3C0
    /* 2BB04 8003B304 21A00000 */   addu      $s4, $zero, $zero
    /* 2BB08 8003B308 0C001324 */  addiu      $s3, $zero, 0xC
  .L8003B30C:
    /* 2BB0C 8003B30C 21805302 */  addu       $s0, $s2, $s3
    /* 2BB10 8003B310 1000058E */  lw         $a1, 0x10($s0)
    /* 2BB14 8003B314 3800A48F */  lw         $a0, 0x38($sp)
    /* 2BB18 8003B318 00000000 */  nop
    /* 2BB1C 8003B31C 1800A400 */  mult       $a1, $a0
    /* 2BB20 8003B320 1400028E */  lw         $v0, 0x14($s0)
    /* 2BB24 8003B324 12380000 */  mflo       $a3
    /* 2BB28 8003B328 3C00A68F */  lw         $a2, 0x3C($sp)
    /* 2BB2C 8003B32C 00000000 */  nop
    /* 2BB30 8003B330 18004600 */  mult       $v0, $a2
    /* 2BB34 8003B334 1800038E */  lw         $v1, 0x18($s0)
    /* 2BB38 8003B338 12400000 */  mflo       $t0
    /* 2BB3C 8003B33C 2110E800 */  addu       $v0, $a3, $t0
    /* 2BB40 8003B340 21186200 */  addu       $v1, $v1, $v0
    /* 2BB44 8003B344 831A0300 */  sra        $v1, $v1, 10
    /* 2BB48 8003B348 18006500 */  mult       $v1, $a1
    /* 2BB4C 8003B34C 12400000 */  mflo       $t0
    /* 2BB50 8003B350 83120800 */  sra        $v0, $t0, 10
    /* 2BB54 8003B354 23208200 */  subu       $a0, $a0, $v0
    /* 2BB58 8003B358 5000A4AF */  sw         $a0, 0x50($sp)
    /* 2BB5C 8003B35C 1400028E */  lw         $v0, 0x14($s0)
    /* 2BB60 8003B360 00000000 */  nop
    /* 2BB64 8003B364 18006200 */  mult       $v1, $v0
    /* 2BB68 8003B368 3800A527 */  addiu      $a1, $sp, 0x38
    /* 2BB6C 8003B36C 5000A427 */  addiu      $a0, $sp, 0x50
    /* 2BB70 8003B370 12180000 */  mflo       $v1
    /* 2BB74 8003B374 83120300 */  sra        $v0, $v1, 10
    /* 2BB78 8003B378 2330C200 */  subu       $a2, $a2, $v0
    /* 2BB7C 8003B37C DB6F000C */  jal        func_8001BF6C
    /* 2BB80 8003B380 5400A6AF */   sw        $a2, 0x54($sp)
    /* 2BB84 8003B384 21204000 */  addu       $a0, $v0, $zero
    /* 2BB88 8003B388 2A109500 */  slt        $v0, $a0, $s5
    /* 2BB8C 8003B38C 07004010 */  beqz       $v0, .L8003B3AC
    /* 2BB90 8003B390 00000000 */   nop
    /* 2BB94 8003B394 21A00002 */  addu       $s4, $s0, $zero
    /* 2BB98 8003B398 5000A28F */  lw         $v0, 0x50($sp)
    /* 2BB9C 8003B39C 5400A38F */  lw         $v1, 0x54($sp)
    /* 2BBA0 8003B3A0 21A88000 */  addu       $s5, $a0, $zero
    /* 2BBA4 8003B3A4 4800A2AF */  sw         $v0, 0x48($sp)
    /* 2BBA8 8003B3A8 4C00A3AF */  sw         $v1, 0x4C($sp)
  .L8003B3AC:
    /* 2BBAC 8003B3AC 01004292 */  lbu        $v0, 0x1($s2)
    /* 2BBB0 8003B3B0 01003126 */  addiu      $s1, $s1, 0x1
    /* 2BBB4 8003B3B4 2A102202 */  slt        $v0, $s1, $v0
    /* 2BBB8 8003B3B8 D4FF4014 */  bnez       $v0, .L8003B30C
    /* 2BBBC 8003B3BC 1C007326 */   addiu     $s3, $s3, 0x1C
  .L8003B3C0:
    /* 2BBC0 8003B3C0 0000848E */  lw         $a0, 0x0($s4)
    /* 2BBC4 8003B3C4 0400858E */  lw         $a1, 0x4($s4)
    /* 2BBC8 8003B3C8 2E6D000C */  jal        func_8001B4B8
    /* 2BBCC 8003B3CC 21300000 */   addu      $a2, $zero, $zero
    /* 2BBD0 8003B3D0 5800A2AF */  sw         $v0, 0x58($sp)
    /* 2BBD4 8003B3D4 4600C592 */  lbu        $a1, 0x46($s6)
    /* 2BBD8 8003B3D8 A76F000C */  jal        func_8001BE9C
    /* 2BBDC 8003B3DC 21204000 */   addu      $a0, $v0, $zero
    /* 2BBE0 8003B3E0 41004228 */  slti       $v0, $v0, 0x41
    /* 2BBE4 8003B3E4 12004014 */  bnez       $v0, .L8003B430
    /* 2BBE8 8003B3E8 00000000 */   nop
    /* 2BBEC 8003B3EC 5800A28F */  lw         $v0, 0x58($sp)
    /* 2BBF0 8003B3F0 00000000 */  nop
    /* 2BBF4 8003B3F4 80004224 */  addiu      $v0, $v0, 0x80
    /* 2BBF8 8003B3F8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2BBFC 8003B3FC 0CED0008 */  j          .L8003B430
    /* 2BC00 8003B400 5800A2AF */   sw        $v0, 0x58($sp)
  .L8003B404:
    /* 2BC04 8003B404 3800A527 */  addiu      $a1, $sp, 0x38
    /* 2BC08 8003B408 4800A627 */  addiu      $a2, $sp, 0x48
    /* 2BC0C 8003B40C 5800A727 */  addiu      $a3, $sp, 0x58
    /* 2BC10 8003B410 4600C292 */  lbu        $v0, 0x46($s6)
    /* 2BC14 8003B414 00020324 */  addiu      $v1, $zero, 0x200
    /* 2BC18 8003B418 1400A3AF */  sw         $v1, 0x14($sp)
    /* 2BC1C 8003B41C DFED000C */  jal        func_8003B77C
    /* 2BC20 8003B420 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2BC24 8003B424 00200324 */  addiu      $v1, $zero, 0x2000
    /* 2BC28 8003B428 C7004310 */  beq        $v0, $v1, .L8003B748
    /* 2BC2C 8003B42C 00200224 */   addiu     $v0, $zero, 0x2000
  .L8003B430:
    /* 2BC30 8003B430 FC00A98F */  lw         $t1, 0xFC($sp)
    /* 2BC34 8003B434 0100F726 */  addiu      $s7, $s7, 0x1
    /* 2BC38 8003B438 2A10E902 */  slt        $v0, $s7, $t1
    /* 2BC3C 8003B43C 7BFF4014 */  bnez       $v0, .L8003B22C
    /* 2BC40 8003B440 0400DE27 */   addiu     $fp, $fp, 0x4
  .L8003B444:
    /* 2BC44 8003B444 5800A58F */  lw         $a1, 0x58($sp)
    /* 2BC48 8003B448 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2BC4C 8003B44C 4400A210 */  beq        $a1, $v0, .L8003B560
    /* 2BC50 8003B450 00000000 */   nop
    /* 2BC54 8003B454 8000A48F */  lw         $a0, 0x80($sp)
    /* 2BC58 8003B458 A76F000C */  jal        func_8001BE9C
    /* 2BC5C 8003B45C 00000000 */   nop
    /* 2BC60 8003B460 51004228 */  slti       $v0, $v0, 0x51
    /* 2BC64 8003B464 06004014 */  bnez       $v0, .L8003B480
    /* 2BC68 8003B468 2120C002 */   addu      $a0, $s6, $zero
    /* 2BC6C 8003B46C 5800A28F */  lw         $v0, 0x58($sp)
    /* 2BC70 8003B470 00000000 */  nop
    /* 2BC74 8003B474 80004224 */  addiu      $v0, $v0, 0x80
    /* 2BC78 8003B478 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2BC7C 8003B47C 5800A2AF */  sw         $v0, 0x58($sp)
  .L8003B480:
    /* 2BC80 8003B480 04000624 */  addiu      $a2, $zero, 0x4
    /* 2BC84 8003B484 1000A0AF */  sw         $zero, 0x10($sp)
    /* 2BC88 8003B488 1400A0AF */  sw         $zero, 0x14($sp)
    /* 2BC8C 8003B48C 5800A58F */  lw         $a1, 0x58($sp)
    /* 2BC90 8003B490 6ADF000C */  jal        func_80037DA8
    /* 2BC94 8003B494 03000724 */   addiu     $a3, $zero, 0x3
    /* 2BC98 8003B498 74004010 */  beqz       $v0, .L8003B66C
    /* 2BC9C 8003B49C 2120C002 */   addu      $a0, $s6, $zero
    /* 2BCA0 8003B4A0 0C00C28E */  lw         $v0, 0xC($s6)
    /* 2BCA4 8003B4A4 8800A58F */  lw         $a1, 0x88($sp)
    /* 2BCA8 8003B4A8 4800A38F */  lw         $v1, 0x48($sp)
    /* 2BCAC 8003B4AC 9000A68F */  lw         $a2, 0x90($sp)
    /* 2BCB0 8003B4B0 5000A2AF */  sw         $v0, 0x50($sp)
    /* 2BCB4 8003B4B4 1000C28E */  lw         $v0, 0x10($s6)
    /* 2BCB8 8003B4B8 00000000 */  nop
    /* 2BCBC 8003B4BC 5400A2AF */  sw         $v0, 0x54($sp)
    /* 2BCC0 8003B4C0 0C00C3AE */  sw         $v1, 0xC($s6)
    /* 2BCC4 8003B4C4 4C00A28F */  lw         $v0, 0x4C($sp)
    /* 2BCC8 8003B4C8 F000A78F */  lw         $a3, 0xF0($sp)
    /* 2BCCC 8003B4CC 1000C2AE */  sw         $v0, 0x10($s6)
    /* 2BCD0 8003B4D0 F400A98F */  lw         $t1, 0xF4($sp)
    /* 2BCD4 8003B4D4 A4E0000C */  jal        func_80038290
    /* 2BCD8 8003B4D8 1000A9AF */   sw        $t1, 0x10($sp)
    /* 2BCDC 8003B4DC 0C00C48E */  lw         $a0, 0xC($s6)
    /* 2BCE0 8003B4E0 5000A38F */  lw         $v1, 0x50($sp)
    /* 2BCE4 8003B4E4 21284000 */  addu       $a1, $v0, $zero
    /* 2BCE8 8003B4E8 23108300 */  subu       $v0, $a0, $v1
    /* 2BCEC 8003B4EC 05004004 */  bltz       $v0, .L8003B504
    /* 2BCF0 8003B4F0 05004228 */   slti      $v0, $v0, 0x5
    /* 2BCF4 8003B4F4 07004014 */  bnez       $v0, .L8003B514
    /* 2BCF8 8003B4F8 00000000 */   nop
    /* 2BCFC 8003B4FC 56ED0008 */  j          .L8003B558
    /* 2BD00 8003B500 0010A534 */   ori       $a1, $a1, 0x1000
  .L8003B504:
    /* 2BD04 8003B504 23106400 */  subu       $v0, $v1, $a0
    /* 2BD08 8003B508 05004228 */  slti       $v0, $v0, 0x5
    /* 2BD0C 8003B50C 11004010 */  beqz       $v0, .L8003B554
    /* 2BD10 8003B510 00000000 */   nop
  .L8003B514:
    /* 2BD14 8003B514 1000C48E */  lw         $a0, 0x10($s6)
    /* 2BD18 8003B518 5400A38F */  lw         $v1, 0x54($sp)
    /* 2BD1C 8003B51C 00000000 */  nop
    /* 2BD20 8003B520 23108300 */  subu       $v0, $a0, $v1
    /* 2BD24 8003B524 05004004 */  bltz       $v0, .L8003B53C
    /* 2BD28 8003B528 05004228 */   slti      $v0, $v0, 0x5
    /* 2BD2C 8003B52C 07004014 */  bnez       $v0, .L8003B54C
    /* 2BD30 8003B530 00000000 */   nop
    /* 2BD34 8003B534 56ED0008 */  j          .L8003B558
    /* 2BD38 8003B538 0010A534 */   ori       $a1, $a1, 0x1000
  .L8003B53C:
    /* 2BD3C 8003B53C 23106400 */  subu       $v0, $v1, $a0
    /* 2BD40 8003B540 05004228 */  slti       $v0, $v0, 0x5
    /* 2BD44 8003B544 03004010 */  beqz       $v0, .L8003B554
    /* 2BD48 8003B548 00000000 */   nop
  .L8003B54C:
    /* 2BD4C 8003B54C 56ED0008 */  j          .L8003B558
    /* 2BD50 8003B550 0020A534 */   ori       $a1, $a1, 0x2000
  .L8003B554:
    /* 2BD54 8003B554 0010A534 */  ori        $a1, $a1, 0x1000
  .L8003B558:
    /* 2BD58 8003B558 D2ED0008 */  j          .L8003B748
    /* 2BD5C 8003B55C 2110A000 */   addu      $v0, $a1, $zero
  .L8003B560:
    /* 2BD60 8003B560 0001A98F */  lw         $t1, 0x100($sp)
    /* 2BD64 8003B564 00000000 */  nop
    /* 2BD68 8003B568 37002011 */  beqz       $t1, .L8003B648
    /* 2BD6C 8003B56C 2120C002 */   addu      $a0, $s6, $zero
    /* 2BD70 8003B570 00002285 */  lh         $v0, 0x0($t1)
    /* 2BD74 8003B574 00000000 */  nop
    /* 2BD78 8003B578 33004018 */  blez       $v0, .L8003B648
    /* 2BD7C 8003B57C 21900000 */   addu      $s2, $zero, $zero
    /* 2BD80 8003B580 6000B727 */  addiu      $s7, $sp, 0x60
    /* 2BD84 8003B584 0001B48F */  lw         $s4, 0x100($sp)
    /* 2BD88 8003B588 0C001524 */  addiu      $s5, $zero, 0xC
  .L8003B58C:
    /* 2BD8C 8003B58C 21808002 */  addu       $s0, $s4, $zero
    /* 2BD90 8003B590 1800028E */  lw         $v0, 0x18($s0)
    /* 2BD94 8003B594 00000000 */  nop
    /* 2BD98 8003B598 FF7F5330 */  andi       $s3, $v0, 0x7FFF
    /* 2BD9C 8003B59C 00804230 */  andi       $v0, $v0, 0x8000
    /* 2BDA0 8003B5A0 04004010 */  beqz       $v0, .L8003B5B4
    /* 2BDA4 8003B5A4 21886002 */   addu      $s1, $s3, $zero
    /* 2BDA8 8003B5A8 80101300 */  sll        $v0, $s3, 2
    /* 2BDAC 8003B5AC 21105300 */  addu       $v0, $v0, $s3
    /* 2BDB0 8003B5B0 83880200 */  sra        $s1, $v0, 2
  .L8003B5B4:
    /* 2BDB4 8003B5B4 2120E002 */  addu       $a0, $s7, $zero
    /* 2BDB8 8003B5B8 0001A98F */  lw         $t1, 0x100($sp)
    /* 2BDBC 8003B5BC 3800A527 */  addiu      $a1, $sp, 0x38
    /* 2BDC0 8003B5C0 21F03501 */  addu       $fp, $t1, $s5
    /* 2BDC4 8003B5C4 806F000C */  jal        func_8001BE00
    /* 2BDC8 8003B5C8 2130C003 */   addu      $a2, $fp, $zero
    /* 2BDCC 8003B5CC 2120E002 */  addu       $a0, $s7, $zero
    /* 2BDD0 8003B5D0 886E000C */  jal        func_8001BA20
    /* 2BDD4 8003B5D4 21280000 */   addu      $a1, $zero, $zero
    /* 2BDD8 8003B5D8 2A105100 */  slt        $v0, $v0, $s1
    /* 2BDDC 8003B5DC 0E004010 */  beqz       $v0, .L8003B618
    /* 2BDE0 8003B5E0 21300000 */   addu      $a2, $zero, $zero
    /* 2BDE4 8003B5E4 0C00038E */  lw         $v1, 0xC($s0)
    /* 2BDE8 8003B5E8 0C00C48E */  lw         $a0, 0xC($s6)
    /* 2BDEC 8003B5EC 1000028E */  lw         $v0, 0x10($s0)
    /* 2BDF0 8003B5F0 1000C58E */  lw         $a1, 0x10($s6)
    /* 2BDF4 8003B5F4 23206400 */  subu       $a0, $v1, $a0
    /* 2BDF8 8003B5F8 2E6D000C */  jal        func_8001B4B8
    /* 2BDFC 8003B5FC 23284500 */   subu      $a1, $v0, $a1
    /* 2BE00 8003B600 8000A48F */  lw         $a0, 0x80($sp)
    /* 2BE04 8003B604 A76F000C */  jal        func_8001BE9C
    /* 2BE08 8003B608 21284000 */   addu      $a1, $v0, $zero
    /* 2BE0C 8003B60C 40004228 */  slti       $v0, $v0, 0x40
    /* 2BE10 8003B610 18004014 */  bnez       $v0, .L8003B674
    /* 2BE14 8003B614 7000A427 */   addiu     $a0, $sp, 0x70
  .L8003B618:
    /* 2BE18 8003B618 1800028E */  lw         $v0, 0x18($s0)
    /* 2BE1C 8003B61C 10001426 */  addiu      $s4, $s0, 0x10
    /* 2BE20 8003B620 FF7F4230 */  andi       $v0, $v0, 0x7FFF
    /* 2BE24 8003B624 180002AE */  sw         $v0, 0x18($s0)
    /* 2BE28 8003B628 0001A98F */  lw         $t1, 0x100($sp)
    /* 2BE2C 8003B62C 00000000 */  nop
    /* 2BE30 8003B630 00002285 */  lh         $v0, 0x0($t1)
    /* 2BE34 8003B634 01005226 */  addiu      $s2, $s2, 0x1
    /* 2BE38 8003B638 2A104202 */  slt        $v0, $s2, $v0
    /* 2BE3C 8003B63C D3FF4014 */  bnez       $v0, .L8003B58C
    /* 2BE40 8003B640 1000B526 */   addiu     $s5, $s5, 0x10
    /* 2BE44 8003B644 2120C002 */  addu       $a0, $s6, $zero
  .L8003B648:
    /* 2BE48 8003B648 04000624 */  addiu      $a2, $zero, 0x4
    /* 2BE4C 8003B64C 18000724 */  addiu      $a3, $zero, 0x18
    /* 2BE50 8003B650 8000A58F */  lw         $a1, 0x80($sp)
    /* 2BE54 8003B654 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BE58 8003B658 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2BE5C 8003B65C 6ADF000C */  jal        func_80037DA8
    /* 2BE60 8003B660 1400A0AF */   sw        $zero, 0x14($sp)
    /* 2BE64 8003B664 32004014 */  bnez       $v0, .L8003B730
    /* 2BE68 8003B668 2120C002 */   addu      $a0, $s6, $zero
  .L8003B66C:
    /* 2BE6C 8003B66C D2ED0008 */  j          .L8003B748
    /* 2BE70 8003B670 21100000 */   addu      $v0, $zero, $zero
  .L8003B674:
    /* 2BE74 8003B674 1800828E */  lw         $v0, 0x18($s4)
    /* 2BE78 8003B678 0C00C526 */  addiu      $a1, $s6, 0xC
    /* 2BE7C 8003B67C 00804234 */  ori        $v0, $v0, 0x8000
    /* 2BE80 8003B680 6C6F000C */  jal        func_8001BDB0
    /* 2BE84 8003B684 180082AE */   sw        $v0, 0x18($s4)
    /* 2BE88 8003B688 8000A98F */  lw         $t1, 0x80($sp)
    /* 2BE8C 8003B68C 7000A48F */  lw         $a0, 0x70($sp)
    /* 2BE90 8003B690 40180900 */  sll        $v1, $t1, 1
    /* 2BE94 8003B694 0680013C */  lui        $at, %hi(D_80061C58)
    /* 2BE98 8003B698 21082300 */  addu       $at, $at, $v1
    /* 2BE9C 8003B69C 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 2BEA0 8003B6A0 7400A58F */  lw         $a1, 0x74($sp)
    /* 2BEA4 8003B6A4 21208200 */  addu       $a0, $a0, $v0
    /* 2BEA8 8003B6A8 7000A4AF */  sw         $a0, 0x70($sp)
    /* 2BEAC 8003B6AC 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 2BEB0 8003B6B0 21082300 */  addu       $at, $at, $v1
    /* 2BEB4 8003B6B4 D81B2284 */  lh         $v0, %lo(D_80061BD8)($at)
    /* 2BEB8 8003B6B8 21300000 */  addu       $a2, $zero, $zero
    /* 2BEBC 8003B6BC 2128A200 */  addu       $a1, $a1, $v0
    /* 2BEC0 8003B6C0 7400A5AF */  sw         $a1, 0x74($sp)
    /* 2BEC4 8003B6C4 0C00828E */  lw         $v0, 0xC($s4)
    /* 2BEC8 8003B6C8 1000838E */  lw         $v1, 0x10($s4)
    /* 2BECC 8003B6CC 23208200 */  subu       $a0, $a0, $v0
    /* 2BED0 8003B6D0 2E6D000C */  jal        func_8001B4B8
    /* 2BED4 8003B6D4 2328A300 */   subu      $a1, $a1, $v1
    /* 2BED8 8003B6D8 2120C002 */  addu       $a0, $s6, $zero
    /* 2BEDC 8003B6DC 2128C003 */  addu       $a1, $fp, $zero
    /* 2BEE0 8003B6E0 21384000 */  addu       $a3, $v0, $zero
    /* 2BEE4 8003B6E4 8800A98F */  lw         $t1, 0x88($sp)
    /* 2BEE8 8003B6E8 08000224 */  addiu      $v0, $zero, 0x8
    /* 2BEEC 8003B6EC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2BEF0 8003B6F0 04000224 */  addiu      $v0, $zero, 0x4
    /* 2BEF4 8003B6F4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 2BEF8 8003B6F8 40000224 */  addiu      $v0, $zero, 0x40
    /* 2BEFC 8003B6FC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 2BF00 8003B700 23306902 */  subu       $a2, $s3, $t1
    /* 2BF04 8003B704 1400A9AF */  sw         $t1, 0x14($sp)
    /* 2BF08 8003B708 F400A98F */  lw         $t1, 0xF4($sp)
    /* 2BF0C 8003B70C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2BF10 8003B710 2000A2AF */  sw         $v0, 0x20($sp)
    /* 2BF14 8003B714 2400A2AF */  sw         $v0, 0x24($sp)
    /* 2BF18 8003B718 2800A0AF */  sw         $zero, 0x28($sp)
    /* 2BF1C 8003B71C 2C00A0AF */  sw         $zero, 0x2C($sp)
    /* 2BF20 8003B720 79E7000C */  jal        func_80039DE4
    /* 2BF24 8003B724 3000A9AF */   sw        $t1, 0x30($sp)
    /* 2BF28 8003B728 D2ED0008 */  j          .L8003B748
    /* 2BF2C 8003B72C 00404234 */   ori       $v0, $v0, 0x4000
  .L8003B730:
    /* 2BF30 8003B730 F400A98F */  lw         $t1, 0xF4($sp)
    /* 2BF34 8003B734 8800A58F */  lw         $a1, 0x88($sp)
    /* 2BF38 8003B738 9000A68F */  lw         $a2, 0x90($sp)
    /* 2BF3C 8003B73C F000A78F */  lw         $a3, 0xF0($sp)
    /* 2BF40 8003B740 A4E0000C */  jal        func_80038290
    /* 2BF44 8003B744 1000A9AF */   sw        $t1, 0x10($sp)
  .L8003B748:
    /* 2BF48 8003B748 DC00BF8F */  lw         $ra, 0xDC($sp)
    /* 2BF4C 8003B74C D800BE8F */  lw         $fp, 0xD8($sp)
    /* 2BF50 8003B750 D400B78F */  lw         $s7, 0xD4($sp)
    /* 2BF54 8003B754 D000B68F */  lw         $s6, 0xD0($sp)
    /* 2BF58 8003B758 CC00B58F */  lw         $s5, 0xCC($sp)
    /* 2BF5C 8003B75C C800B48F */  lw         $s4, 0xC8($sp)
    /* 2BF60 8003B760 C400B38F */  lw         $s3, 0xC4($sp)
    /* 2BF64 8003B764 C000B28F */  lw         $s2, 0xC0($sp)
    /* 2BF68 8003B768 BC00B18F */  lw         $s1, 0xBC($sp)
    /* 2BF6C 8003B76C B800B08F */  lw         $s0, 0xB8($sp)
    /* 2BF70 8003B770 E000BD27 */  addiu      $sp, $sp, 0xE0
    /* 2BF74 8003B774 0800E003 */  jr         $ra
    /* 2BF78 8003B778 00000000 */   nop
endlabel func_8003B164
