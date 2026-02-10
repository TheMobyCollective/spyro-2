.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BC68, 0x108

glabel func_8002BC68
    /* 1C468 8002BC68 0780023C */  lui        $v0, %hi(D_8006839E)
    /* 1C46C 8002BC6C 9E834290 */  lbu        $v0, %lo(D_8006839E)($v0)
    /* 1C470 8002BC70 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1C474 8002BC74 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1C478 8002BC78 21800000 */  addu       $s0, $zero, $zero
    /* 1C47C 8002BC7C 36004010 */  beqz       $v0, .L8002BD58
    /* 1C480 8002BC80 2400BFAF */   sw        $ra, 0x24($sp)
    /* 1C484 8002BC84 0780023C */  lui        $v0, %hi(D_8006A1FC)
    /* 1C488 8002BC88 FCA1428C */  lw         $v0, %lo(D_8006A1FC)($v0)
    /* 1C48C 8002BC8C 00000000 */  nop
    /* 1C490 8002BC90 40004230 */  andi       $v0, $v0, 0x40
    /* 1C494 8002BC94 31004014 */  bnez       $v0, .L8002BD5C
    /* 1C498 8002BC98 21100002 */   addu      $v0, $s0, $zero
    /* 1C49C 8002BC9C 0680043C */  lui        $a0, %hi(D_80066F38)
    /* 1C4A0 8002BCA0 386F848C */  lw         $a0, %lo(D_80066F38)($a0)
    /* 1C4A4 8002BCA4 00000000 */  nop
    /* 1C4A8 8002BCA8 0C00828C */  lw         $v0, 0xC($a0)
    /* 1C4AC 8002BCAC FFFF033C */  lui        $v1, (0xFFFF0000 >> 16)
    /* 1C4B0 8002BCB0 24104300 */  and        $v0, $v0, $v1
    /* 1C4B4 8002BCB4 7F7F033C */  lui        $v1, (0x7F7F0000 >> 16)
    /* 1C4B8 8002BCB8 27004310 */  beq        $v0, $v1, .L8002BD58
    /* 1C4BC 8002BCBC 21280000 */   addu      $a1, $zero, $zero
    /* 1C4C0 8002BCC0 0E008290 */  lbu        $v0, 0xE($a0)
    /* 1C4C4 8002BCC4 00000000 */  nop
    /* 1C4C8 8002BCC8 81FF4224 */  addiu      $v0, $v0, -0x7F
    /* 1C4CC 8002BCCC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1C4D0 8002BCD0 0F008290 */  lbu        $v0, 0xF($a0)
    /* 1C4D4 8002BCD4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1C4D8 8002BCD8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1C4DC 8002BCDC 81FF4224 */  addiu      $v0, $v0, -0x7F
    /* 1C4E0 8002BCE0 886E000C */  jal        func_8001BA20
    /* 1C4E4 8002BCE4 1400A2AF */   sw        $v0, 0x14($sp)
    /* 1C4E8 8002BCE8 21284000 */  addu       $a1, $v0, $zero
    /* 1C4EC 8002BCEC 6000A228 */  slti       $v0, $a1, 0x60
    /* 1C4F0 8002BCF0 1A004010 */  beqz       $v0, .L8002BD5C
    /* 1C4F4 8002BCF4 21100002 */   addu      $v0, $s0, $zero
    /* 1C4F8 8002BCF8 0780023C */  lui        $v0, %hi(D_8006A09C)
    /* 1C4FC 8002BCFC 9CA0428C */  lw         $v0, %lo(D_8006A09C)($v0)
    /* 1C500 8002BD00 0780043C */  lui        $a0, %hi(D_8006A05C)
    /* 1C504 8002BD04 5CA0848C */  lw         $a0, %lo(D_8006A05C)($a0)
    /* 1C508 8002BD08 00000000 */  nop
    /* 1C50C 8002BD0C 23104400 */  subu       $v0, $v0, $a0
    /* 1C510 8002BD10 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1C514 8002BD14 01086228 */  slti       $v0, $v1, 0x801
    /* 1C518 8002BD18 02004014 */  bnez       $v0, .L8002BD24
    /* 1C51C 8002BD1C 00000000 */   nop
    /* 1C520 8002BD20 00F06324 */  addiu      $v1, $v1, -0x1000
  .L8002BD24:
    /* 1C524 8002BD24 02006104 */  bgez       $v1, .L8002BD30
    /* 1C528 8002BD28 21106000 */   addu      $v0, $v1, $zero
    /* 1C52C 8002BD2C 23100200 */  negu       $v0, $v0
  .L8002BD30:
    /* 1C530 8002BD30 01014228 */  slti       $v0, $v0, 0x101
    /* 1C534 8002BD34 02004014 */  bnez       $v0, .L8002BD40
    /* 1C538 8002BD38 1800A300 */   mult      $a1, $v1
    /* 1C53C 8002BD3C 01001024 */  addiu      $s0, $zero, 0x1
  .L8002BD40:
    /* 1C540 8002BD40 12300000 */  mflo       $a2
    /* 1C544 8002BD44 43120600 */  sra        $v0, $a2, 9
    /* 1C548 8002BD48 21108200 */  addu       $v0, $a0, $v0
    /* 1C54C 8002BD4C FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 1C550 8002BD50 0780013C */  lui        $at, %hi(D_8006A09C)
    /* 1C554 8002BD54 9CA022AC */  sw         $v0, %lo(D_8006A09C)($at)
  .L8002BD58:
    /* 1C558 8002BD58 21100002 */  addu       $v0, $s0, $zero
  .L8002BD5C:
    /* 1C55C 8002BD5C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1C560 8002BD60 2000B08F */  lw         $s0, 0x20($sp)
    /* 1C564 8002BD64 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1C568 8002BD68 0800E003 */  jr         $ra
    /* 1C56C 8002BD6C 00000000 */   nop
endlabel func_8002BC68
