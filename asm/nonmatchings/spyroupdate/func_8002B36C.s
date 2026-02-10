.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B36C, 0x178

glabel func_8002B36C
    /* 1BB6C 8002B36C 0780023C */  lui        $v0, %hi(D_8006839E)
    /* 1BB70 8002B370 9E834290 */  lbu        $v0, %lo(D_8006839E)($v0)
    /* 1BB74 8002B374 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1BB78 8002B378 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1BB7C 8002B37C 21808000 */  addu       $s0, $a0, $zero
    /* 1BB80 8002B380 0A004010 */  beqz       $v0, .L8002B3AC
    /* 1BB84 8002B384 2400BFAF */   sw        $ra, 0x24($sp)
    /* 1BB88 8002B388 0680023C */  lui        $v0, %hi(D_80066F38)
    /* 1BB8C 8002B38C 386F428C */  lw         $v0, %lo(D_80066F38)($v0)
    /* 1BB90 8002B390 00000000 */  nop
    /* 1BB94 8002B394 0E004390 */  lbu        $v1, 0xE($v0)
    /* 1BB98 8002B398 00000000 */  nop
    /* 1BB9C 8002B39C 1000A3AF */  sw         $v1, 0x10($sp)
    /* 1BBA0 8002B3A0 0F004290 */  lbu        $v0, 0xF($v0)
    /* 1BBA4 8002B3A4 07AD0008 */  j          .L8002B41C
    /* 1BBA8 8002B3A8 1400A2AF */   sw        $v0, 0x14($sp)
  .L8002B3AC:
    /* 1BBAC 8002B3AC 0680023C */  lui        $v0, %hi(D_80066F38)
    /* 1BBB0 8002B3B0 386F428C */  lw         $v0, %lo(D_80066F38)($v0)
    /* 1BBB4 8002B3B4 00000000 */  nop
    /* 1BBB8 8002B3B8 0000438C */  lw         $v1, 0x0($v0)
    /* 1BBBC 8002B3BC 00000000 */  nop
    /* 1BBC0 8002B3C0 00106230 */  andi       $v0, $v1, 0x1000
    /* 1BBC4 8002B3C4 03004010 */  beqz       $v0, .L8002B3D4
    /* 1BBC8 8002B3C8 00406230 */   andi      $v0, $v1, 0x4000
    /* 1BBCC 8002B3CC F9AC0008 */  j          .L8002B3E4
    /* 1BBD0 8002B3D0 1400A0AF */   sw        $zero, 0x14($sp)
  .L8002B3D4:
    /* 1BBD4 8002B3D4 02004014 */  bnez       $v0, .L8002B3E0
    /* 1BBD8 8002B3D8 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 1BBDC 8002B3DC 7F000224 */  addiu      $v0, $zero, 0x7F
  .L8002B3E0:
    /* 1BBE0 8002B3E0 1400A2AF */  sw         $v0, 0x14($sp)
  .L8002B3E4:
    /* 1BBE4 8002B3E4 0680023C */  lui        $v0, %hi(D_80066F38)
    /* 1BBE8 8002B3E8 386F428C */  lw         $v0, %lo(D_80066F38)($v0)
    /* 1BBEC 8002B3EC 00000000 */  nop
    /* 1BBF0 8002B3F0 0000438C */  lw         $v1, 0x0($v0)
    /* 1BBF4 8002B3F4 00000000 */  nop
    /* 1BBF8 8002B3F8 00206230 */  andi       $v0, $v1, 0x2000
    /* 1BBFC 8002B3FC 06004014 */  bnez       $v0, .L8002B418
    /* 1BC00 8002B400 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 1BC04 8002B404 00806230 */  andi       $v0, $v1, 0x8000
    /* 1BC08 8002B408 03004010 */  beqz       $v0, .L8002B418
    /* 1BC0C 8002B40C 7F000224 */   addiu     $v0, $zero, 0x7F
    /* 1BC10 8002B410 07AD0008 */  j          .L8002B41C
    /* 1BC14 8002B414 1000A0AF */   sw        $zero, 0x10($sp)
  .L8002B418:
    /* 1BC18 8002B418 1000A2AF */  sw         $v0, 0x10($sp)
  .L8002B41C:
    /* 1BC1C 8002B41C 1000A38F */  lw         $v1, 0x10($sp)
    /* 1BC20 8002B420 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 1BC24 8002B424 0D006214 */  bne        $v1, $v0, .L8002B45C
    /* 1BC28 8002B428 7F000524 */   addiu     $a1, $zero, 0x7F
    /* 1BC2C 8002B42C 1400A28F */  lw         $v0, 0x14($sp)
    /* 1BC30 8002B430 00000000 */  nop
    /* 1BC34 8002B434 0A004314 */  bne        $v0, $v1, .L8002B460
    /* 1BC38 8002B438 01000624 */   addiu     $a2, $zero, 0x1
    /* 1BC3C 8002B43C 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 1BC40 8002B440 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 1BC44 8002B444 0780013C */  lui        $at, %hi(D_8006A0A4)
    /* 1BC48 8002B448 A4A020AC */  sw         $zero, %lo(D_8006A0A4)($at)
    /* 1BC4C 8002B44C 0780013C */  lui        $at, %hi(D_8006A09C)
    /* 1BC50 8002B450 9CA022AC */  sw         $v0, %lo(D_8006A09C)($at)
    /* 1BC54 8002B454 34AD0008 */  j          .L8002B4D0
    /* 1BC58 8002B458 00000000 */   nop
  .L8002B45C:
    /* 1BC5C 8002B45C 01000624 */  addiu      $a2, $zero, 0x1
  .L8002B460:
    /* 1BC60 8002B460 1400A48F */  lw         $a0, 0x14($sp)
    /* 1BC64 8002B464 1000A28F */  lw         $v0, 0x10($sp)
    /* 1BC68 8002B468 2320A400 */  subu       $a0, $a1, $a0
    /* 1BC6C 8002B46C 2328A200 */  subu       $a1, $a1, $v0
    /* 1BC70 8002B470 1000A5AF */  sw         $a1, 0x10($sp)
    /* 1BC74 8002B474 2E6D000C */  jal        func_8001B4B8
    /* 1BC78 8002B478 1400A4AF */   sw        $a0, 0x14($sp)
    /* 1BC7C 8002B47C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1BC80 8002B480 21280000 */  addu       $a1, $zero, $zero
    /* 1BC84 8002B484 0680063C */  lui        $a2, %hi(D_80067ECC)
    /* 1BC88 8002B488 CC7EC684 */  lh         $a2, %lo(D_80067ECC)($a2)
    /* 1BC8C 8002B48C 0780033C */  lui        $v1, %hi(D_8006A09C)
    /* 1BC90 8002B490 9CA06324 */  addiu      $v1, $v1, %lo(D_8006A09C)
    /* 1BC94 8002B494 000062AC */  sw         $v0, 0x0($v1)
    /* 1BC98 8002B498 21104600 */  addu       $v0, $v0, $a2
    /* 1BC9C 8002B49C FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 1BCA0 8002B4A0 886E000C */  jal        func_8001BA20
    /* 1BCA4 8002B4A4 000062AC */   sw        $v0, 0x0($v1)
    /* 1BCA8 8002B4A8 18000202 */  mult       $s0, $v0
    /* 1BCAC 8002B4AC 12380000 */  mflo       $a3
    /* 1BCB0 8002B4B0 C3110700 */  sra        $v0, $a3, 7
    /* 1BCB4 8002B4B4 0780013C */  lui        $at, %hi(D_8006A0A4)
    /* 1BCB8 8002B4B8 A4A022AC */  sw         $v0, %lo(D_8006A0A4)($at)
    /* 1BCBC 8002B4BC 2A100202 */  slt        $v0, $s0, $v0
    /* 1BCC0 8002B4C0 03004010 */  beqz       $v0, .L8002B4D0
    /* 1BCC4 8002B4C4 00000000 */   nop
    /* 1BCC8 8002B4C8 0780013C */  lui        $at, %hi(D_8006A0A4)
    /* 1BCCC 8002B4CC A4A030AC */  sw         $s0, %lo(D_8006A0A4)($at)
  .L8002B4D0:
    /* 1BCD0 8002B4D0 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1BCD4 8002B4D4 2000B08F */  lw         $s0, 0x20($sp)
    /* 1BCD8 8002B4D8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1BCDC 8002B4DC 0800E003 */  jr         $ra
    /* 1BCE0 8002B4E0 00000000 */   nop
endlabel func_8002B36C
