.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_31_8006EE58, 0xDC

glabel func_level_31_8006EE58
    /* 21373F4 8006EE58 0680023C */  lui        $v0, %hi(D_80066F30)
    /* 21373F8 8006EE5C 306F428C */  lw         $v0, %lo(D_80066F30)($v0)
    /* 21373FC 8006EE60 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2137400 8006EE64 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2137404 8006EE68 18004010 */  beqz       $v0, .Llevel_31_8006EECC
    /* 2137408 8006EE6C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 213740C 8006EE70 0680103C */  lui        $s0, %hi(D_80067675)
    /* 2137410 8006EE74 75761026 */  addiu      $s0, $s0, %lo(D_80067675)
    /* 2137414 8006EE78 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 2137418 8006EE7C EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 213741C 8006EE80 FFFF0426 */  addiu      $a0, $s0, -0x1
    /* 2137420 8006EE84 6746010C */  jal        func_8005199C
    /* 2137424 8006EE88 000000A2 */   sb        $zero, 0x0($s0)
    /* 2137428 8006EE8C FFFF0292 */  lbu        $v0, -0x1($s0)
    /* 213742C 8006EE90 00000000 */  nop
    /* 2137430 8006EE94 09004014 */  bnez       $v0, .Llevel_31_8006EEBC
    /* 2137434 8006EE98 03000224 */   addiu     $v0, $zero, 0x3
    /* 2137438 8006EE9C 0680053C */  lui        $a1, %hi(D_80067084)
    /* 213743C 8006EEA0 8470A58C */  lw         $a1, %lo(D_80067084)($a1)
    /* 2137440 8006EEA4 0680013C */  lui        $at, %hi(D_8006767D)
    /* 2137444 8006EEA8 7D7622A0 */  sb         $v0, %lo(D_8006767D)($at)
    /* 2137448 8006EEAC 6746010C */  jal        func_8005199C
    /* 213744C 8006EEB0 07000426 */   addiu     $a0, $s0, 0x7
    /* 2137450 8006EEB4 C8BB0108 */  j          .Llevel_31_8006EF20
    /* 2137454 8006EEB8 00000000 */   nop
  .Llevel_31_8006EEBC:
    /* 2137458 8006EEBC 0680053C */  lui        $a1, %hi(D_80067084)
    /* 213745C 8006EEC0 8470A58C */  lw         $a1, %lo(D_80067084)($a1)
    /* 2137460 8006EEC4 C6BB0108 */  j          .Llevel_31_8006EF18
    /* 2137464 8006EEC8 07000426 */   addiu     $a0, $s0, 0x7
  .Llevel_31_8006EECC:
    /* 2137468 8006EECC 0680103C */  lui        $s0, %hi(D_8006767D)
    /* 213746C 8006EED0 7D761026 */  addiu      $s0, $s0, %lo(D_8006767D)
    /* 2137470 8006EED4 0680053C */  lui        $a1, %hi(D_80067084)
    /* 2137474 8006EED8 8470A58C */  lw         $a1, %lo(D_80067084)($a1)
    /* 2137478 8006EEDC FFFF0426 */  addiu      $a0, $s0, -0x1
    /* 213747C 8006EEE0 6746010C */  jal        func_8005199C
    /* 2137480 8006EEE4 000000A2 */   sb        $zero, 0x0($s0)
    /* 2137484 8006EEE8 FFFF0292 */  lbu        $v0, -0x1($s0)
    /* 2137488 8006EEEC 00000000 */  nop
    /* 213748C 8006EEF0 07004014 */  bnez       $v0, .Llevel_31_8006EF10
    /* 2137490 8006EEF4 F7FF0426 */   addiu     $a0, $s0, -0x9
    /* 2137494 8006EEF8 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 2137498 8006EEFC EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 213749C 8006EF00 6746010C */  jal        func_8005199C
    /* 21374A0 8006EF04 F7FF0426 */   addiu     $a0, $s0, -0x9
    /* 21374A4 8006EF08 C8BB0108 */  j          .Llevel_31_8006EF20
    /* 21374A8 8006EF0C 00000000 */   nop
  .Llevel_31_8006EF10:
    /* 21374AC 8006EF10 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 21374B0 8006EF14 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
  .Llevel_31_8006EF18:
    /* 21374B4 8006EF18 4047010C */  jal        func_80051D00
    /* 21374B8 8006EF1C 00000000 */   nop
  .Llevel_31_8006EF20:
    /* 21374BC 8006EF20 1400BF8F */  lw         $ra, 0x14($sp)
    /* 21374C0 8006EF24 1000B08F */  lw         $s0, 0x10($sp)
    /* 21374C4 8006EF28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 21374C8 8006EF2C 0800E003 */  jr         $ra
    /* 21374CC 8006EF30 00000000 */   nop
endlabel func_level_31_8006EE58
