.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_credits_8006D368, 0x284

glabel func_credits_8006D368
    /* 2ED904 8006D368 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2ED908 8006D36C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 2ED90C 8006D370 21808000 */  addu       $s0, $a0, $zero
    /* 2ED910 8006D374 2400B1AF */  sw         $s1, 0x24($sp)
    /* 2ED914 8006D378 21880002 */  addu       $s1, $s0, $zero
    /* 2ED918 8006D37C 04001026 */  addiu      $s0, $s0, 0x4
    /* 2ED91C 8006D380 2800BFAF */  sw         $ra, 0x28($sp)
    /* 2ED920 8006D384 0000028E */  lw         $v0, 0x0($s0)
    /* 2ED924 8006D388 04001026 */  addiu      $s0, $s0, 0x4
    /* 2ED928 8006D38C 0680043C */  lui        $a0, %hi(D_800673F8)
    /* 2ED92C 8006D390 F8738424 */  addiu      $a0, $a0, %lo(D_800673F8)
    /* 2ED930 8006D394 0680013C */  lui        $at, %hi(D_800673F4)
    /* 2ED934 8006D398 F47330AC */  sw         $s0, %lo(D_800673F4)($at)
    /* 2ED938 8006D39C 000082AC */  sw         $v0, 0x0($a0)
    /* 2ED93C 8006D3A0 0000228E */  lw         $v0, 0x0($s1)
    /* 2ED940 8006D3A4 4992033C */  lui        $v1, (0x92492493 >> 16)
    /* 2ED944 8006D3A8 21802202 */  addu       $s0, $s1, $v0
    /* 2ED948 8006D3AC 21880002 */  addu       $s1, $s0, $zero
    /* 2ED94C 8006D3B0 04001026 */  addiu      $s0, $s0, 0x4
    /* 2ED950 8006D3B4 04000226 */  addiu      $v0, $s0, 0x4
    /* 2ED954 8006D3B8 0680013C */  lui        $at, %hi(D_800670D4)
    /* 2ED958 8006D3BC D47022AC */  sw         $v0, %lo(D_800670D4)($at)
    /* 2ED95C 8006D3C0 0000028E */  lw         $v0, 0x0($s0)
    /* 2ED960 8006D3C4 93246334 */  ori        $v1, $v1, (0x92492493 & 0xFFFF)
    /* 2ED964 8006D3C8 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* 2ED968 8006D3CC 18004300 */  mult       $v0, $v1
    /* 2ED96C 8006D3D0 10380000 */  mfhi       $a3
    /* 2ED970 8006D3D4 2118E200 */  addu       $v1, $a3, $v0
    /* 2ED974 8006D3D8 03190300 */  sra        $v1, $v1, 4
    /* 2ED978 8006D3DC C3170200 */  sra        $v0, $v0, 31
    /* 2ED97C 8006D3E0 23186200 */  subu       $v1, $v1, $v0
    /* 2ED980 8006D3E4 0680013C */  lui        $at, %hi(D_80067124)
    /* 2ED984 8006D3E8 247123AC */  sw         $v1, %lo(D_80067124)($at)
    /* 2ED988 8006D3EC 0000028E */  lw         $v0, 0x0($s0)
    /* 2ED98C 8006D3F0 00000000 */  nop
    /* 2ED990 8006D3F4 21800202 */  addu       $s0, $s0, $v0
    /* 2ED994 8006D3F8 0000028E */  lw         $v0, 0x0($s0)
    /* 2ED998 8006D3FC 04001026 */  addiu      $s0, $s0, 0x4
    /* 2ED99C 8006D400 0680013C */  lui        $at, %hi(D_800673D4)
    /* 2ED9A0 8006D404 D47330AC */  sw         $s0, %lo(D_800673D4)($at)
    /* 2ED9A4 8006D408 0680013C */  lui        $at, %hi(D_800673D8)
    /* 2ED9A8 8006D40C D87322AC */  sw         $v0, %lo(D_800673D8)($at)
    /* 2ED9AC 8006D410 0C004018 */  blez       $v0, .Lcredits_8006D444
    /* 2ED9B0 8006D414 21180000 */   addu      $v1, $zero, $zero
    /* 2ED9B4 8006D418 E0FF8424 */  addiu      $a0, $a0, -0x20
  .Lcredits_8006D41C:
    /* 2ED9B8 8006D41C 0000028E */  lw         $v0, 0x0($s0)
    /* 2ED9BC 8006D420 01006324 */  addiu      $v1, $v1, 0x1
    /* 2ED9C0 8006D424 04004224 */  addiu      $v0, $v0, 0x4
    /* 2ED9C4 8006D428 21102202 */  addu       $v0, $s1, $v0
    /* 2ED9C8 8006D42C 000002AE */  sw         $v0, 0x0($s0)
    /* 2ED9CC 8006D430 0000828C */  lw         $v0, 0x0($a0)
    /* 2ED9D0 8006D434 00000000 */  nop
    /* 2ED9D4 8006D438 2A106200 */  slt        $v0, $v1, $v0
    /* 2ED9D8 8006D43C F7FF4014 */  bnez       $v0, .Lcredits_8006D41C
    /* 2ED9DC 8006D440 04001026 */   addiu     $s0, $s0, 0x4
  .Lcredits_8006D444:
    /* 2ED9E0 8006D444 0000228E */  lw         $v0, 0x0($s1)
    /* 2ED9E4 8006D448 00000000 */  nop
    /* 2ED9E8 8006D44C 21802202 */  addu       $s0, $s1, $v0
    /* 2ED9EC 8006D450 21880002 */  addu       $s1, $s0, $zero
    /* 2ED9F0 8006D454 0000038E */  lw         $v1, 0x0($s0)
    /* 2ED9F4 8006D458 0000228E */  lw         $v0, 0x0($s1)
    /* 2ED9F8 8006D45C 00000000 */  nop
    /* 2ED9FC 8006D460 09004228 */  slti       $v0, $v0, 0x9
    /* 2EDA00 8006D464 07004010 */  beqz       $v0, .Lcredits_8006D484
    /* 2EDA04 8006D468 21800302 */   addu      $s0, $s0, $v1
    /* 2EDA08 8006D46C 0680013C */  lui        $at, %hi(D_800673DC)
    /* 2EDA0C 8006D470 DC7331AC */  sw         $s1, %lo(D_800673DC)($at)
    /* 2EDA10 8006D474 0680013C */  lui        $at, %hi(D_800673E4)
    /* 2EDA14 8006D478 E47320AC */  sw         $zero, %lo(D_800673E4)($at)
    /* 2EDA18 8006D47C 28B50108 */  j          .Lcredits_8006D4A0
    /* 2EDA1C 8006D480 21880002 */   addu      $s1, $s0, $zero
  .Lcredits_8006D484:
    /* 2EDA20 8006D484 04002226 */  addiu      $v0, $s1, 0x4
    /* 2EDA24 8006D488 0680013C */  lui        $at, %hi(D_800673DC)
    /* 2EDA28 8006D48C DC7322AC */  sw         $v0, %lo(D_800673DC)($at)
    /* 2EDA2C 8006D490 01000224 */  addiu      $v0, $zero, 0x1
    /* 2EDA30 8006D494 0680013C */  lui        $at, %hi(D_800673E4)
    /* 2EDA34 8006D498 E47322AC */  sw         $v0, %lo(D_800673E4)($at)
    /* 2EDA38 8006D49C 21880002 */  addu       $s1, $s0, $zero
  .Lcredits_8006D4A0:
    /* 2EDA3C 8006D4A0 0000038E */  lw         $v1, 0x0($s0)
    /* 2EDA40 8006D4A4 0000228E */  lw         $v0, 0x0($s1)
    /* 2EDA44 8006D4A8 00000000 */  nop
    /* 2EDA48 8006D4AC 09004228 */  slti       $v0, $v0, 0x9
    /* 2EDA4C 8006D4B0 06004010 */  beqz       $v0, .Lcredits_8006D4CC
    /* 2EDA50 8006D4B4 21800302 */   addu      $s0, $s0, $v1
    /* 2EDA54 8006D4B8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2EDA58 8006D4BC 0680013C */  lui        $at, %hi(D_800673E0)
    /* 2EDA5C 8006D4C0 E07331AC */  sw         $s1, %lo(D_800673E0)($at)
    /* 2EDA60 8006D4C4 36B50108 */  j          .Lcredits_8006D4D8
    /* 2EDA64 8006D4C8 000022AE */   sw        $v0, 0x0($s1)
  .Lcredits_8006D4CC:
    /* 2EDA68 8006D4CC 04002226 */  addiu      $v0, $s1, 0x4
    /* 2EDA6C 8006D4D0 0680013C */  lui        $at, %hi(D_800673E0)
    /* 2EDA70 8006D4D4 E07322AC */  sw         $v0, %lo(D_800673E0)($at)
  .Lcredits_8006D4D8:
    /* 2EDA74 8006D4D8 0780033C */  lui        $v1, %hi(D_800681C4)
    /* 2EDA78 8006D4DC C4816324 */  addiu      $v1, $v1, %lo(D_800681C4)
    /* 2EDA7C 8006D4E0 04000226 */  addiu      $v0, $s0, 0x4
    /* 2EDA80 8006D4E4 000062AC */  sw         $v0, 0x0($v1)
    /* 2EDA84 8006D4E8 04000292 */  lbu        $v0, 0x4($s0)
    /* 2EDA88 8006D4EC 0780013C */  lui        $at, %hi(D_800681C0)
    /* 2EDA8C 8006D4F0 C08122A0 */  sb         $v0, %lo(D_800681C0)($at)
    /* 2EDA90 8006D4F4 05000292 */  lbu        $v0, 0x5($s0)
    /* 2EDA94 8006D4F8 0780013C */  lui        $at, %hi(D_800681C1)
    /* 2EDA98 8006D4FC C18122A0 */  sb         $v0, %lo(D_800681C1)($at)
    /* 2EDA9C 8006D500 06000292 */  lbu        $v0, 0x6($s0)
    /* 2EDAA0 8006D504 0C000426 */  addiu      $a0, $s0, 0xC
    /* 2EDAA4 8006D508 0780013C */  lui        $at, %hi(D_800681C2)
    /* 2EDAA8 8006D50C C28122A0 */  sb         $v0, %lo(D_800681C2)($at)
    /* 2EDAAC 8006D510 0800028E */  lw         $v0, 0x8($s0)
    /* 2EDAB0 8006D514 0780013C */  lui        $at, %hi(D_800681BC)
    /* 2EDAB4 8006D518 BC8124AC */  sw         $a0, %lo(D_800681BC)($at)
    /* 2EDAB8 8006D51C 0780013C */  lui        $at, %hi(D_800681B8)
    /* 2EDABC 8006D520 B88122AC */  sw         $v0, %lo(D_800681B8)($at)
    /* 2EDAC0 8006D524 0C004018 */  blez       $v0, .Lcredits_8006D558
    /* 2EDAC4 8006D528 21280000 */   addu      $a1, $zero, $zero
    /* 2EDAC8 8006D52C 21306000 */  addu       $a2, $v1, $zero
  .Lcredits_8006D530:
    /* 2EDACC 8006D530 0000C28C */  lw         $v0, 0x0($a2)
    /* 2EDAD0 8006D534 0000838C */  lw         $v1, 0x0($a0)
    /* 2EDAD4 8006D538 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2EDAD8 8006D53C 21104300 */  addu       $v0, $v0, $v1
    /* 2EDADC 8006D540 000082AC */  sw         $v0, 0x0($a0)
    /* 2EDAE0 8006D544 F4FFC28C */  lw         $v0, -0xC($a2)
    /* 2EDAE4 8006D548 00000000 */  nop
    /* 2EDAE8 8006D54C 2A10A200 */  slt        $v0, $a1, $v0
    /* 2EDAEC 8006D550 F7FF4014 */  bnez       $v0, .Lcredits_8006D530
    /* 2EDAF0 8006D554 04008424 */   addiu     $a0, $a0, 0x4
  .Lcredits_8006D558:
    /* 2EDAF4 8006D558 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* 2EDAF8 8006D55C 0680043C */  lui        $a0, %hi(D_8006707C)
    /* 2EDAFC 8006D560 7C708494 */  lhu        $a0, %lo(D_8006707C)($a0)
    /* 2EDB00 8006D564 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 2EDB04 8006D568 00240400 */  sll        $a0, $a0, 16
    /* 2EDB08 8006D56C 032C0400 */  sra        $a1, $a0, 16
    /* 2EDB0C 8006D570 1800A200 */  mult       $a1, $v0
    /* 2EDB10 8006D574 0000028E */  lw         $v0, 0x0($s0)
    /* 2EDB14 8006D578 C3270400 */  sra        $a0, $a0, 31
    /* 2EDB18 8006D57C 21800202 */  addu       $s0, $s0, $v0
    /* 2EDB1C 8006D580 10380000 */  mfhi       $a3
    /* 2EDB20 8006D584 83180700 */  sra        $v1, $a3, 2
    /* 2EDB24 8006D588 23186400 */  subu       $v1, $v1, $a0
    /* 2EDB28 8006D58C 80100300 */  sll        $v0, $v1, 2
    /* 2EDB2C 8006D590 21104300 */  addu       $v0, $v0, $v1
    /* 2EDB30 8006D594 40100200 */  sll        $v0, $v0, 1
    /* 2EDB34 8006D598 2328A200 */  subu       $a1, $a1, $v0
    /* 2EDB38 8006D59C 002C0500 */  sll        $a1, $a1, 16
    /* 2EDB3C 8006D5A0 0C00A014 */  bnez       $a1, .Lcredits_8006D5D4
    /* 2EDB40 8006D5A4 21100002 */   addu      $v0, $s0, $zero
    /* 2EDB44 8006D5A8 21880002 */  addu       $s1, $s0, $zero
    /* 2EDB48 8006D5AC 04002426 */  addiu      $a0, $s1, 0x4
    /* 2EDB4C 8006D5B0 7F75000C */  jal        func_8001D5FC
    /* 2EDB50 8006D5B4 01000524 */   addiu     $a1, $zero, 0x1
    /* 2EDB54 8006D5B8 21200000 */  addu       $a0, $zero, $zero
    /* 2EDB58 8006D5BC 0000228E */  lw         $v0, 0x0($s1)
    /* 2EDB5C 8006D5C0 21280000 */  addu       $a1, $zero, $zero
    /* 2EDB60 8006D5C4 04000624 */  addiu      $a2, $zero, 0x4
    /* 2EDB64 8006D5C8 C841010C */  jal        func_80050720
    /* 2EDB68 8006D5CC 21802202 */   addu      $s0, $s1, $v0
    /* 2EDB6C 8006D5D0 21100002 */  addu       $v0, $s0, $zero
  .Lcredits_8006D5D4:
    /* 2EDB70 8006D5D4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 2EDB74 8006D5D8 2400B18F */  lw         $s1, 0x24($sp)
    /* 2EDB78 8006D5DC 2000B08F */  lw         $s0, 0x20($sp)
    /* 2EDB7C 8006D5E0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2EDB80 8006D5E4 0800E003 */  jr         $ra
    /* 2EDB84 8006D5E8 00000000 */   nop
endlabel func_credits_8006D368
