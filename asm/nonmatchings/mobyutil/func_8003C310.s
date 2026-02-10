.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003C310, 0x134

glabel func_8003C310
    /* 2CB10 8003C310 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 2CB14 8003C314 2150A000 */  addu       $t2, $a1, $zero
    /* 2CB18 8003C318 21688000 */  addu       $t5, $a0, $zero
    /* 2CB1C 8003C31C 0680023C */  lui        $v0, %hi(D_80067124)
    /* 2CB20 8003C320 2471428C */  lw         $v0, %lo(D_80067124)($v0)
    /* 2CB24 8003C324 00000000 */  nop
    /* 2CB28 8003C328 43004018 */  blez       $v0, .L8003C438
    /* 2CB2C 8003C32C 21600000 */   addu      $t4, $zero, $zero
    /* 2CB30 8003C330 21580000 */  addu       $t3, $zero, $zero
  .L8003C334:
    /* 2CB34 8003C334 0680023C */  lui        $v0, %hi(D_800670D4)
    /* 2CB38 8003C338 D470428C */  lw         $v0, %lo(D_800670D4)($v0)
    /* 2CB3C 8003C33C 00000000 */  nop
    /* 2CB40 8003C340 21406201 */  addu       $t0, $t3, $v0
    /* 2CB44 8003C344 02000385 */  lh         $v1, 0x2($t0)
    /* 2CB48 8003C348 FF00A231 */  andi       $v0, $t5, 0xFF
    /* 2CB4C 8003C34C 34006214 */  bne        $v1, $v0, .L8003C420
    /* 2CB50 8003C350 0100073C */   lui       $a3, (0x1FFFF >> 16)
    /* 2CB54 8003C354 FFFFE734 */  ori        $a3, $a3, (0x1FFFF & 0xFFFF)
    /* 2CB58 8003C358 00000285 */  lh         $v0, 0x0($t0)
    /* 2CB5C 8003C35C 0680033C */  lui        $v1, %hi(D_800673D4)
    /* 2CB60 8003C360 D473638C */  lw         $v1, %lo(D_800673D4)($v1)
    /* 2CB64 8003C364 1000058D */  lw         $a1, 0x10($t0)
    /* 2CB68 8003C368 0800448D */  lw         $a0, 0x8($t2)
    /* 2CB6C 8003C36C 80100200 */  sll        $v0, $v0, 2
    /* 2CB70 8003C370 21104300 */  addu       $v0, $v0, $v1
    /* 2CB74 8003C374 03210400 */  sra        $a0, $a0, 4
    /* 2CB78 8003C378 0000468C */  lw         $a2, 0x0($v0)
    /* 2CB7C 8003C37C 0000428D */  lw         $v0, 0x0($t2)
    /* 2CB80 8003C380 1400038D */  lw         $v1, 0x14($t0)
    /* 2CB84 8003C384 03110200 */  sra        $v0, $v0, 4
    /* 2CB88 8003C388 2128A200 */  addu       $a1, $a1, $v0
    /* 2CB8C 8003C38C 002C0500 */  sll        $a1, $a1, 16
    /* 2CB90 8003C390 0400428D */  lw         $v0, 0x4($t2)
    /* 2CB94 8003C394 0400C994 */  lhu        $t1, 0x4($a2)
    /* 2CB98 8003C398 03110200 */  sra        $v0, $v0, 4
    /* 2CB9C 8003C39C 21186200 */  addu       $v1, $v1, $v0
    /* 2CBA0 8003C3A0 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 2CBA4 8003C3A4 1800028D */  lw         $v0, 0x18($t0)
    /* 2CBA8 8003C3A8 2540A300 */  or         $t0, $a1, $v1
    /* 2CBAC 8003C3AC 0000C8AC */  sw         $t0, 0x0($a2)
    /* 2CBB0 8003C3B0 0680053C */  lui        $a1, %hi(D_800670D4)
    /* 2CBB4 8003C3B4 D470A58C */  lw         $a1, %lo(D_800670D4)($a1)
    /* 2CBB8 8003C3B8 21104400 */  addu       $v0, $v0, $a0
    /* 2CBBC 8003C3BC 00140200 */  sll        $v0, $v0, 16
    /* 2CBC0 8003C3C0 25482201 */  or         $t1, $t1, $v0
    /* 2CBC4 8003C3C4 0C00C28C */  lw         $v0, 0xC($a2)
    /* 2CBC8 8003C3C8 21286501 */  addu       $a1, $t3, $a1
    /* 2CBCC 8003C3CC 0400C9AC */  sw         $t1, 0x4($a2)
    /* 2CBD0 8003C3D0 0400A48C */  lw         $a0, 0x4($a1)
    /* 2CBD4 8003C3D4 0400438D */  lw         $v1, 0x4($t2)
    /* 2CBD8 8003C3D8 24484700 */  and        $t1, $v0, $a3
    /* 2CBDC 8003C3DC 0000428D */  lw         $v0, 0x0($t2)
    /* 2CBE0 8003C3E0 03190300 */  sra        $v1, $v1, 4
    /* 2CBE4 8003C3E4 03110200 */  sra        $v0, $v0, 4
    /* 2CBE8 8003C3E8 21208200 */  addu       $a0, $a0, $v0
    /* 2CBEC 8003C3EC 0800A28C */  lw         $v0, 0x8($a1)
    /* 2CBF0 8003C3F0 00240400 */  sll        $a0, $a0, 16
    /* 2CBF4 8003C3F4 21104300 */  addu       $v0, $v0, $v1
    /* 2CBF8 8003C3F8 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 2CBFC 8003C3FC 25408200 */  or         $t0, $a0, $v0
    /* 2CC00 8003C400 0800438D */  lw         $v1, 0x8($t2)
    /* 2CC04 8003C404 0C00A28C */  lw         $v0, 0xC($a1)
    /* 2CC08 8003C408 0800C8AC */  sw         $t0, 0x8($a2)
    /* 2CC0C 8003C40C 43190300 */  sra        $v1, $v1, 5
    /* 2CC10 8003C410 21104300 */  addu       $v0, $v0, $v1
    /* 2CC14 8003C414 40140200 */  sll        $v0, $v0, 17
    /* 2CC18 8003C418 25482201 */  or         $t1, $t1, $v0
    /* 2CC1C 8003C41C 0C00C9AC */  sw         $t1, 0xC($a2)
  .L8003C420:
    /* 2CC20 8003C420 0680023C */  lui        $v0, %hi(D_80067124)
    /* 2CC24 8003C424 2471428C */  lw         $v0, %lo(D_80067124)($v0)
    /* 2CC28 8003C428 01008C25 */  addiu      $t4, $t4, 0x1
    /* 2CC2C 8003C42C 2A108201 */  slt        $v0, $t4, $v0
    /* 2CC30 8003C430 C0FF4014 */  bnez       $v0, .L8003C334
    /* 2CC34 8003C434 1C006B25 */   addiu     $t3, $t3, 0x1C
  .L8003C438:
    /* 2CC38 8003C438 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 2CC3C 8003C43C 0800E003 */  jr         $ra
    /* 2CC40 8003C440 00000000 */   nop
endlabel func_8003C310
