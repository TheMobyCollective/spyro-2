.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_10_8006EE9C, 0x16C

glabel func_level_10_8006EE9C
    /* D37C38 8006EE9C 0780033C */  lui        $v1, %hi(D_8006A004)
    /* D37C3C 8006EEA0 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* D37C40 8006EEA4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D37C44 8006EEA8 1800BFAF */  sw         $ra, 0x18($sp)
    /* D37C48 8006EEAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* D37C4C 8006EEB0 35006228 */  slti       $v0, $v1, 0x35
    /* D37C50 8006EEB4 4E004010 */  beqz       $v0, .Llevel_10_8006EFF0
    /* D37C54 8006EEB8 1000B0AF */   sw        $s0, 0x10($sp)
    /* D37C58 8006EEBC 33006228 */  slti       $v0, $v1, 0x33
    /* D37C5C 8006EEC0 30004010 */  beqz       $v0, .Llevel_10_8006EF84
    /* D37C60 8006EEC4 2B000224 */   addiu     $v0, $zero, 0x2B
    /* D37C64 8006EEC8 05006210 */  beq        $v1, $v0, .Llevel_10_8006EEE0
    /* D37C68 8006EECC 32000224 */   addiu     $v0, $zero, 0x32
    /* D37C6C 8006EED0 14006210 */  beq        $v1, $v0, .Llevel_10_8006EF24
    /* D37C70 8006EED4 03000224 */   addiu     $v0, $zero, 0x3
    /* D37C74 8006EED8 FCBB0108 */  j          .Llevel_10_8006EFF0
    /* D37C78 8006EEDC 00000000 */   nop
  .Llevel_10_8006EEE0:
    /* D37C7C 8006EEE0 0780033C */  lui        $v1, %hi(D_8006A006)
    /* D37C80 8006EEE4 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* D37C84 8006EEE8 01000224 */  addiu      $v0, $zero, 0x1
    /* D37C88 8006EEEC 40006214 */  bne        $v1, $v0, .Llevel_10_8006EFF0
    /* D37C8C 8006EEF0 21280000 */   addu      $a1, $zero, $zero
    /* D37C90 8006EEF4 0680023C */  lui        $v0, %hi(D_80067020)
    /* D37C94 8006EEF8 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* D37C98 8006EEFC 00000000 */  nop
    /* D37C9C 8006EF00 0A004490 */  lbu        $a0, 0xA($v0)
    /* D37CA0 8006EF04 C841010C */  jal        func_80050720
    /* D37CA4 8006EF08 21300000 */   addu      $a2, $zero, $zero
    /* D37CA8 8006EF0C 0780023C */  lui        $v0, %hi(D_8006A006)
    /* D37CAC 8006EF10 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* D37CB0 8006EF14 0780013C */  lui        $at, %hi(D_8006A268)
    /* D37CB4 8006EF18 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
    /* D37CB8 8006EF1C FCBB0108 */  j          .Llevel_10_8006EFF0
    /* D37CBC 8006EF20 00000000 */   nop
  .Llevel_10_8006EF24:
    /* D37CC0 8006EF24 0780033C */  lui        $v1, %hi(D_8006A006)
    /* D37CC4 8006EF28 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* D37CC8 8006EF2C 00000000 */  nop
    /* D37CCC 8006EF30 03006210 */  beq        $v1, $v0, .Llevel_10_8006EF40
    /* D37CD0 8006EF34 0A000224 */   addiu     $v0, $zero, 0xA
    /* D37CD4 8006EF38 2D006214 */  bne        $v1, $v0, .Llevel_10_8006EFF0
    /* D37CD8 8006EF3C 00000000 */   nop
  .Llevel_10_8006EF40:
    /* D37CDC 8006EF40 0680023C */  lui        $v0, %hi(D_80067020)
    /* D37CE0 8006EF44 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* D37CE4 8006EF48 21280000 */  addu       $a1, $zero, $zero
    /* D37CE8 8006EF4C 11004490 */  lbu        $a0, 0x11($v0)
    /* D37CEC 8006EF50 C841010C */  jal        func_80050720
    /* D37CF0 8006EF54 21300000 */   addu      $a2, $zero, $zero
    /* D37CF4 8006EF58 0780033C */  lui        $v1, %hi(D_8006A006)
    /* D37CF8 8006EF5C 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* D37CFC 8006EF60 21204000 */  addu       $a0, $v0, $zero
    /* D37D00 8006EF64 0780013C */  lui        $at, %hi(D_8006A268)
    /* D37D04 8006EF68 68A223AC */  sw         $v1, %lo(D_8006A268)($at)
    /* D37D08 8006EF6C 20008004 */  bltz       $a0, .Llevel_10_8006EFF0
    /* D37D0C 8006EF70 0A000224 */   addiu     $v0, $zero, 0xA
    /* D37D10 8006EF74 1C006210 */  beq        $v1, $v0, .Llevel_10_8006EFE8
    /* D37D14 8006EF78 00000000 */   nop
    /* D37D18 8006EF7C FCBB0108 */  j          .Llevel_10_8006EFF0
    /* D37D1C 8006EF80 00000000 */   nop
  .Llevel_10_8006EF84:
    /* D37D20 8006EF84 0780033C */  lui        $v1, %hi(D_8006A006)
    /* D37D24 8006EF88 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* D37D28 8006EF8C 01001124 */  addiu      $s1, $zero, 0x1
    /* D37D2C 8006EF90 03007110 */  beq        $v1, $s1, .Llevel_10_8006EFA0
    /* D37D30 8006EF94 03000224 */   addiu     $v0, $zero, 0x3
    /* D37D34 8006EF98 15006214 */  bne        $v1, $v0, .Llevel_10_8006EFF0
    /* D37D38 8006EF9C 00000000 */   nop
  .Llevel_10_8006EFA0:
    /* D37D3C 8006EFA0 0680023C */  lui        $v0, %hi(D_80067020)
    /* D37D40 8006EFA4 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* D37D44 8006EFA8 21280000 */  addu       $a1, $zero, $zero
    /* D37D48 8006EFAC 11004490 */  lbu        $a0, 0x11($v0)
    /* D37D4C 8006EFB0 C841010C */  jal        func_80050720
    /* D37D50 8006EFB4 21300000 */   addu      $a2, $zero, $zero
    /* D37D54 8006EFB8 0780033C */  lui        $v1, %hi(D_8006A006)
    /* D37D58 8006EFBC 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* D37D5C 8006EFC0 21804000 */  addu       $s0, $v0, $zero
    /* D37D60 8006EFC4 0780013C */  lui        $at, %hi(D_8006A268)
    /* D37D64 8006EFC8 68A223AC */  sw         $v1, %lo(D_8006A268)($at)
    /* D37D68 8006EFCC 08000006 */  bltz       $s0, .Llevel_10_8006EFF0
    /* D37D6C 8006EFD0 00000000 */   nop
    /* D37D70 8006EFD4 06007114 */  bne        $v1, $s1, .Llevel_10_8006EFF0
    /* D37D74 8006EFD8 21200002 */   addu      $a0, $s0, $zero
    /* D37D78 8006EFDC 3D43010C */  jal        func_80050CF4
    /* D37D7C 8006EFE0 000C0524 */   addiu     $a1, $zero, 0xC00
    /* D37D80 8006EFE4 21200002 */  addu       $a0, $s0, $zero
  .Llevel_10_8006EFE8:
    /* D37D84 8006EFE8 1943010C */  jal        func_80050C64
    /* D37D88 8006EFEC 00120524 */   addiu     $a1, $zero, 0x1200
  .Llevel_10_8006EFF0:
    /* D37D8C 8006EFF0 1800BF8F */  lw         $ra, 0x18($sp)
    /* D37D90 8006EFF4 1400B18F */  lw         $s1, 0x14($sp)
    /* D37D94 8006EFF8 1000B08F */  lw         $s0, 0x10($sp)
    /* D37D98 8006EFFC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D37D9C 8006F000 0800E003 */  jr         $ra
    /* D37DA0 8006F004 00000000 */   nop
endlabel func_level_10_8006EE9C
