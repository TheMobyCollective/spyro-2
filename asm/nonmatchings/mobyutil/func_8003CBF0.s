.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003CBF0, 0xC4

glabel func_8003CBF0
    /* 2D3F0 8003CBF0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2D3F4 8003CBF4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 2D3F8 8003CBF8 21808000 */  addu       $s0, $a0, $zero
    /* 2D3FC 8003CBFC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2D400 8003CC00 4D000292 */  lbu        $v0, 0x4D($s0)
    /* 2D404 8003CC04 00000000 */  nop
    /* 2D408 8003CC08 03004014 */  bnez       $v0, .L8003CC18
    /* 2D40C 8003CC0C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 2D410 8003CC10 28F30008 */  j          .L8003CCA0
    /* 2D414 8003CC14 21100000 */   addu      $v0, $zero, $zero
  .L8003CC18:
    /* 2D418 8003CC18 0680063C */  lui        $a2, %hi(D_80067EAC)
    /* 2D41C 8003CC1C AC7EC624 */  addiu      $a2, $a2, %lo(D_80067EAC)
    /* 2D420 8003CC20 806F000C */  jal        func_8001BE00
    /* 2D424 8003CC24 0C000526 */   addiu     $a1, $s0, 0xC
    /* 2D428 8003CC28 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2D42C 8003CC2C 886E000C */  jal        func_8001BA20
    /* 2D430 8003CC30 01000524 */   addiu     $a1, $zero, 0x1
    /* 2D434 8003CC34 21304000 */  addu       $a2, $v0, $zero
    /* 2D438 8003CC38 0140C228 */  slti       $v0, $a2, 0x4001
    /* 2D43C 8003CC3C 06004014 */  bnez       $v0, .L8003CC58
    /* 2D440 8003CC40 00000000 */   nop
    /* 2D444 8003CC44 AB6D000C */  jal        func_8001B6AC
    /* 2D448 8003CC48 2120C000 */   addu      $a0, $a2, $zero
    /* 2D44C 8003CC4C F1FF4624 */  addiu      $a2, $v0, -0xF
    /* 2D450 8003CC50 0300C104 */  bgez       $a2, .L8003CC60
    /* 2D454 8003CC54 1000A427 */   addiu     $a0, $sp, 0x10
  .L8003CC58:
    /* 2D458 8003CC58 21300000 */  addu       $a2, $zero, $zero
    /* 2D45C 8003CC5C 1000A427 */  addiu      $a0, $sp, 0x10
  .L8003CC60:
    /* 2D460 8003CC60 1070000C */  jal        func_8001C040
    /* 2D464 8003CC64 0C000526 */   addiu     $a1, $s0, 0xC
    /* 2D468 8003CC68 1800A38F */  lw         $v1, 0x18($sp)
    /* 2D46C 8003CC6C 00000000 */  nop
    /* 2D470 8003CC70 0B006018 */  blez       $v1, .L8003CCA0
    /* 2D474 8003CC74 21100000 */   addu      $v0, $zero, $zero
    /* 2D478 8003CC78 1000A38F */  lw         $v1, 0x10($sp)
    /* 2D47C 8003CC7C 00000000 */  nop
    /* 2D480 8003CC80 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 2D484 8003CC84 FF01632C */  sltiu      $v1, $v1, 0x1FF
    /* 2D488 8003CC88 05006010 */  beqz       $v1, .L8003CCA0
    /* 2D48C 8003CC8C 00000000 */   nop
    /* 2D490 8003CC90 1400A28F */  lw         $v0, 0x14($sp)
    /* 2D494 8003CC94 00000000 */  nop
    /* 2D498 8003CC98 F3FF4224 */  addiu      $v0, $v0, -0xD
    /* 2D49C 8003CC9C D700422C */  sltiu      $v0, $v0, 0xD7
  .L8003CCA0:
    /* 2D4A0 8003CCA0 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2D4A4 8003CCA4 2000B08F */  lw         $s0, 0x20($sp)
    /* 2D4A8 8003CCA8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2D4AC 8003CCAC 0800E003 */  jr         $ra
    /* 2D4B0 8003CCB0 00000000 */   nop
endlabel func_8003CBF0
