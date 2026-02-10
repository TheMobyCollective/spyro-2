.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_30_8006EDFC, 0x16C

glabel func_level_30_8006EDFC
    /* 1F2CB98 8006EDFC 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 1F2CB9C 8006EE00 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 1F2CBA0 8006EE04 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1F2CBA4 8006EE08 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1F2CBA8 8006EE0C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1F2CBAC 8006EE10 35006228 */  slti       $v0, $v1, 0x35
    /* 1F2CBB0 8006EE14 4E004010 */  beqz       $v0, .Llevel_30_8006EF50
    /* 1F2CBB4 8006EE18 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1F2CBB8 8006EE1C 33006228 */  slti       $v0, $v1, 0x33
    /* 1F2CBBC 8006EE20 30004010 */  beqz       $v0, .Llevel_30_8006EEE4
    /* 1F2CBC0 8006EE24 2B000224 */   addiu     $v0, $zero, 0x2B
    /* 1F2CBC4 8006EE28 05006210 */  beq        $v1, $v0, .Llevel_30_8006EE40
    /* 1F2CBC8 8006EE2C 32000224 */   addiu     $v0, $zero, 0x32
    /* 1F2CBCC 8006EE30 14006210 */  beq        $v1, $v0, .Llevel_30_8006EE84
    /* 1F2CBD0 8006EE34 03000224 */   addiu     $v0, $zero, 0x3
    /* 1F2CBD4 8006EE38 D4BB0108 */  j          .Llevel_30_8006EF50
    /* 1F2CBD8 8006EE3C 00000000 */   nop
  .Llevel_30_8006EE40:
    /* 1F2CBDC 8006EE40 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 1F2CBE0 8006EE44 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 1F2CBE4 8006EE48 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F2CBE8 8006EE4C 40006214 */  bne        $v1, $v0, .Llevel_30_8006EF50
    /* 1F2CBEC 8006EE50 21280000 */   addu      $a1, $zero, $zero
    /* 1F2CBF0 8006EE54 0680023C */  lui        $v0, %hi(D_80067020)
    /* 1F2CBF4 8006EE58 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 1F2CBF8 8006EE5C 00000000 */  nop
    /* 1F2CBFC 8006EE60 0A004490 */  lbu        $a0, 0xA($v0)
    /* 1F2CC00 8006EE64 C841010C */  jal        func_80050720
    /* 1F2CC04 8006EE68 21300000 */   addu      $a2, $zero, $zero
    /* 1F2CC08 8006EE6C 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 1F2CC0C 8006EE70 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 1F2CC10 8006EE74 0780013C */  lui        $at, %hi(D_8006A268)
    /* 1F2CC14 8006EE78 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
    /* 1F2CC18 8006EE7C D4BB0108 */  j          .Llevel_30_8006EF50
    /* 1F2CC1C 8006EE80 00000000 */   nop
  .Llevel_30_8006EE84:
    /* 1F2CC20 8006EE84 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 1F2CC24 8006EE88 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 1F2CC28 8006EE8C 00000000 */  nop
    /* 1F2CC2C 8006EE90 03006210 */  beq        $v1, $v0, .Llevel_30_8006EEA0
    /* 1F2CC30 8006EE94 0A000224 */   addiu     $v0, $zero, 0xA
    /* 1F2CC34 8006EE98 2D006214 */  bne        $v1, $v0, .Llevel_30_8006EF50
    /* 1F2CC38 8006EE9C 00000000 */   nop
  .Llevel_30_8006EEA0:
    /* 1F2CC3C 8006EEA0 0680023C */  lui        $v0, %hi(D_80067020)
    /* 1F2CC40 8006EEA4 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 1F2CC44 8006EEA8 21280000 */  addu       $a1, $zero, $zero
    /* 1F2CC48 8006EEAC 11004490 */  lbu        $a0, 0x11($v0)
    /* 1F2CC4C 8006EEB0 C841010C */  jal        func_80050720
    /* 1F2CC50 8006EEB4 21300000 */   addu      $a2, $zero, $zero
    /* 1F2CC54 8006EEB8 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 1F2CC58 8006EEBC 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 1F2CC5C 8006EEC0 21204000 */  addu       $a0, $v0, $zero
    /* 1F2CC60 8006EEC4 0780013C */  lui        $at, %hi(D_8006A268)
    /* 1F2CC64 8006EEC8 68A223AC */  sw         $v1, %lo(D_8006A268)($at)
    /* 1F2CC68 8006EECC 20008004 */  bltz       $a0, .Llevel_30_8006EF50
    /* 1F2CC6C 8006EED0 0A000224 */   addiu     $v0, $zero, 0xA
    /* 1F2CC70 8006EED4 1C006210 */  beq        $v1, $v0, .Llevel_30_8006EF48
    /* 1F2CC74 8006EED8 00000000 */   nop
    /* 1F2CC78 8006EEDC D4BB0108 */  j          .Llevel_30_8006EF50
    /* 1F2CC7C 8006EEE0 00000000 */   nop
  .Llevel_30_8006EEE4:
    /* 1F2CC80 8006EEE4 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 1F2CC84 8006EEE8 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 1F2CC88 8006EEEC 01001124 */  addiu      $s1, $zero, 0x1
    /* 1F2CC8C 8006EEF0 03007110 */  beq        $v1, $s1, .Llevel_30_8006EF00
    /* 1F2CC90 8006EEF4 03000224 */   addiu     $v0, $zero, 0x3
    /* 1F2CC94 8006EEF8 15006214 */  bne        $v1, $v0, .Llevel_30_8006EF50
    /* 1F2CC98 8006EEFC 00000000 */   nop
  .Llevel_30_8006EF00:
    /* 1F2CC9C 8006EF00 0680023C */  lui        $v0, %hi(D_80067020)
    /* 1F2CCA0 8006EF04 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 1F2CCA4 8006EF08 21280000 */  addu       $a1, $zero, $zero
    /* 1F2CCA8 8006EF0C 11004490 */  lbu        $a0, 0x11($v0)
    /* 1F2CCAC 8006EF10 C841010C */  jal        func_80050720
    /* 1F2CCB0 8006EF14 21300000 */   addu      $a2, $zero, $zero
    /* 1F2CCB4 8006EF18 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 1F2CCB8 8006EF1C 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 1F2CCBC 8006EF20 21804000 */  addu       $s0, $v0, $zero
    /* 1F2CCC0 8006EF24 0780013C */  lui        $at, %hi(D_8006A268)
    /* 1F2CCC4 8006EF28 68A223AC */  sw         $v1, %lo(D_8006A268)($at)
    /* 1F2CCC8 8006EF2C 08000006 */  bltz       $s0, .Llevel_30_8006EF50
    /* 1F2CCCC 8006EF30 00000000 */   nop
    /* 1F2CCD0 8006EF34 06007114 */  bne        $v1, $s1, .Llevel_30_8006EF50
    /* 1F2CCD4 8006EF38 21200002 */   addu      $a0, $s0, $zero
    /* 1F2CCD8 8006EF3C 3D43010C */  jal        func_80050CF4
    /* 1F2CCDC 8006EF40 000C0524 */   addiu     $a1, $zero, 0xC00
    /* 1F2CCE0 8006EF44 21200002 */  addu       $a0, $s0, $zero
  .Llevel_30_8006EF48:
    /* 1F2CCE4 8006EF48 1943010C */  jal        func_80050C64
    /* 1F2CCE8 8006EF4C 00120524 */   addiu     $a1, $zero, 0x1200
  .Llevel_30_8006EF50:
    /* 1F2CCEC 8006EF50 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1F2CCF0 8006EF54 1400B18F */  lw         $s1, 0x14($sp)
    /* 1F2CCF4 8006EF58 1000B08F */  lw         $s0, 0x10($sp)
    /* 1F2CCF8 8006EF5C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1F2CCFC 8006EF60 0800E003 */  jr         $ra
    /* 1F2CD00 8006EF64 00000000 */   nop
endlabel func_level_30_8006EDFC
