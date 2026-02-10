.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_41_8006F458, 0x114

glabel func_level_41_8006F458
    /* 2BBA9F4 8006F458 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2BBA9F8 8006F45C 0680033C */  lui        $v1, %hi(D_80066F30)
    /* 2BBA9FC 8006F460 306F638C */  lw         $v1, %lo(D_80066F30)($v1)
    /* 2BBAA00 8006F464 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BBAA04 8006F468 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2BBAA08 8006F46C 18006214 */  bne        $v1, $v0, .Llevel_41_8006F4D0
    /* 2BBAA0C 8006F470 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2BBAA10 8006F474 0680103C */  lui        $s0, %hi(D_8006767D)
    /* 2BBAA14 8006F478 7D761026 */  addiu      $s0, $s0, %lo(D_8006767D)
    /* 2BBAA18 8006F47C 0680053C */  lui        $a1, %hi(D_80067084)
    /* 2BBAA1C 8006F480 8470A58C */  lw         $a1, %lo(D_80067084)($a1)
    /* 2BBAA20 8006F484 FFFF0426 */  addiu      $a0, $s0, -0x1
    /* 2BBAA24 8006F488 6746010C */  jal        func_8005199C
    /* 2BBAA28 8006F48C 000000A2 */   sb        $zero, 0x0($s0)
    /* 2BBAA2C 8006F490 FFFF0292 */  lbu        $v0, -0x1($s0)
    /* 2BBAA30 8006F494 00000000 */  nop
    /* 2BBAA34 8006F498 07004014 */  bnez       $v0, .Llevel_41_8006F4B8
    /* 2BBAA38 8006F49C 03000224 */   addiu     $v0, $zero, 0x3
    /* 2BBAA3C 8006F4A0 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 2BBAA40 8006F4A4 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 2BBAA44 8006F4A8 0680013C */  lui        $at, %hi(D_80067675)
    /* 2BBAA48 8006F4AC 757622A0 */  sb         $v0, %lo(D_80067675)($at)
    /* 2BBAA4C 8006F4B0 54BD0108 */  j          .Llevel_41_8006F550
    /* 2BBAA50 8006F4B4 F7FF0426 */   addiu     $a0, $s0, -0x9
  .Llevel_41_8006F4B8:
    /* 2BBAA54 8006F4B8 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 2BBAA58 8006F4BC EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 2BBAA5C 8006F4C0 4047010C */  jal        func_80051D00
    /* 2BBAA60 8006F4C4 F7FF0426 */   addiu     $a0, $s0, -0x9
    /* 2BBAA64 8006F4C8 56BD0108 */  j          .Llevel_41_8006F558
    /* 2BBAA68 8006F4CC 00000000 */   nop
  .Llevel_41_8006F4D0:
    /* 2BBAA6C 8006F4D0 02000224 */  addiu      $v0, $zero, 0x2
    /* 2BBAA70 8006F4D4 12006214 */  bne        $v1, $v0, .Llevel_41_8006F520
    /* 2BBAA74 8006F4D8 00000000 */   nop
    /* 2BBAA78 8006F4DC 0680103C */  lui        $s0, %hi(D_80067675)
    /* 2BBAA7C 8006F4E0 75761026 */  addiu      $s0, $s0, %lo(D_80067675)
    /* 2BBAA80 8006F4E4 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 2BBAA84 8006F4E8 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 2BBAA88 8006F4EC FFFF0426 */  addiu      $a0, $s0, -0x1
    /* 2BBAA8C 8006F4F0 6746010C */  jal        func_8005199C
    /* 2BBAA90 8006F4F4 000000A2 */   sb        $zero, 0x0($s0)
    /* 2BBAA94 8006F4F8 FFFF0292 */  lbu        $v0, -0x1($s0)
    /* 2BBAA98 8006F4FC 00000000 */  nop
    /* 2BBAA9C 8006F500 10004010 */  beqz       $v0, .Llevel_41_8006F544
    /* 2BBAAA0 8006F504 00000000 */   nop
    /* 2BBAAA4 8006F508 0680053C */  lui        $a1, %hi(D_80067084)
    /* 2BBAAA8 8006F50C 8470A58C */  lw         $a1, %lo(D_80067084)($a1)
    /* 2BBAAAC 8006F510 4047010C */  jal        func_80051D00
    /* 2BBAAB0 8006F514 07000426 */   addiu     $a0, $s0, 0x7
    /* 2BBAAB4 8006F518 56BD0108 */  j          .Llevel_41_8006F558
    /* 2BBAAB8 8006F51C 00000000 */   nop
  .Llevel_41_8006F520:
    /* 2BBAABC 8006F520 0680103C */  lui        $s0, %hi(D_80067675)
    /* 2BBAAC0 8006F524 75761026 */  addiu      $s0, $s0, %lo(D_80067675)
    /* 2BBAAC4 8006F528 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 2BBAAC8 8006F52C EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 2BBAACC 8006F530 000000A2 */  sb         $zero, 0x0($s0)
    /* 2BBAAD0 8006F534 0680013C */  lui        $at, %hi(D_8006767D)
    /* 2BBAAD4 8006F538 7D7620A0 */  sb         $zero, %lo(D_8006767D)($at)
    /* 2BBAAD8 8006F53C 6746010C */  jal        func_8005199C
    /* 2BBAADC 8006F540 FFFF0426 */   addiu     $a0, $s0, -0x1
  .Llevel_41_8006F544:
    /* 2BBAAE0 8006F544 0680053C */  lui        $a1, %hi(D_80067084)
    /* 2BBAAE4 8006F548 8470A58C */  lw         $a1, %lo(D_80067084)($a1)
    /* 2BBAAE8 8006F54C 07000426 */  addiu      $a0, $s0, 0x7
  .Llevel_41_8006F550:
    /* 2BBAAEC 8006F550 6746010C */  jal        func_8005199C
    /* 2BBAAF0 8006F554 00000000 */   nop
  .Llevel_41_8006F558:
    /* 2BBAAF4 8006F558 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2BBAAF8 8006F55C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2BBAAFC 8006F560 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2BBAB00 8006F564 0800E003 */  jr         $ra
    /* 2BBAB04 8006F568 00000000 */   nop
endlabel func_level_41_8006F458
