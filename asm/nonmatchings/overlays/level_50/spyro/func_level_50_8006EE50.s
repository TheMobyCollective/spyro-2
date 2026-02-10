.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_50_8006EE50, 0xE0

glabel func_level_50_8006EE50
    /* 370F3EC 8006EE50 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 370F3F0 8006EE54 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 370F3F4 8006EE58 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 370F3F8 8006EE5C 09000224 */  addiu      $v0, $zero, 0x9
    /* 370F3FC 8006EE60 06006210 */  beq        $v1, $v0, .Llevel_50_8006EE7C
    /* 370F400 8006EE64 1000BFAF */   sw        $ra, 0x10($sp)
    /* 370F404 8006EE68 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 370F408 8006EE6C 1D006210 */  beq        $v1, $v0, .Llevel_50_8006EEE4
    /* 370F40C 8006EE70 01000224 */   addiu     $v0, $zero, 0x1
    /* 370F410 8006EE74 C8BB0108 */  j          .Llevel_50_8006EF20
    /* 370F414 8006EE78 00000000 */   nop
  .Llevel_50_8006EE7C:
    /* 370F418 8006EE7C 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 370F41C 8006EE80 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 370F420 8006EE84 01000224 */  addiu      $v0, $zero, 0x1
    /* 370F424 8006EE88 03006210 */  beq        $v1, $v0, .Llevel_50_8006EE98
    /* 370F428 8006EE8C 06000224 */   addiu     $v0, $zero, 0x6
    /* 370F42C 8006EE90 23006214 */  bne        $v1, $v0, .Llevel_50_8006EF20
    /* 370F430 8006EE94 00000000 */   nop
  .Llevel_50_8006EE98:
    /* 370F434 8006EE98 0680023C */  lui        $v0, %hi(D_80067020)
    /* 370F438 8006EE9C 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 370F43C 8006EEA0 21280000 */  addu       $a1, $zero, $zero
    /* 370F440 8006EEA4 0B004490 */  lbu        $a0, 0xB($v0)
    /* 370F444 8006EEA8 C841010C */  jal        func_80050720
    /* 370F448 8006EEAC 21300000 */   addu      $a2, $zero, $zero
    /* 370F44C 8006EEB0 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 370F450 8006EEB4 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 370F454 8006EEB8 21204000 */  addu       $a0, $v0, $zero
    /* 370F458 8006EEBC 0780013C */  lui        $at, %hi(D_8006A268)
    /* 370F45C 8006EEC0 68A223AC */  sw         $v1, %lo(D_8006A268)($at)
    /* 370F460 8006EEC4 16008004 */  bltz       $a0, .Llevel_50_8006EF20
    /* 370F464 8006EEC8 06000224 */   addiu     $v0, $zero, 0x6
    /* 370F468 8006EECC 14006214 */  bne        $v1, $v0, .Llevel_50_8006EF20
    /* 370F46C 8006EED0 00000000 */   nop
    /* 370F470 8006EED4 1943010C */  jal        func_80050C64
    /* 370F474 8006EED8 90110524 */   addiu     $a1, $zero, 0x1190
    /* 370F478 8006EEDC C8BB0108 */  j          .Llevel_50_8006EF20
    /* 370F47C 8006EEE0 00000000 */   nop
  .Llevel_50_8006EEE4:
    /* 370F480 8006EEE4 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 370F484 8006EEE8 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 370F488 8006EEEC 00000000 */  nop
    /* 370F48C 8006EEF0 0B006214 */  bne        $v1, $v0, .Llevel_50_8006EF20
    /* 370F490 8006EEF4 21280000 */   addu      $a1, $zero, $zero
    /* 370F494 8006EEF8 0680023C */  lui        $v0, %hi(D_80067020)
    /* 370F498 8006EEFC 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 370F49C 8006EF00 00000000 */  nop
    /* 370F4A0 8006EF04 0A004490 */  lbu        $a0, 0xA($v0)
    /* 370F4A4 8006EF08 C841010C */  jal        func_80050720
    /* 370F4A8 8006EF0C 21300000 */   addu      $a2, $zero, $zero
    /* 370F4AC 8006EF10 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 370F4B0 8006EF14 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 370F4B4 8006EF18 0780013C */  lui        $at, %hi(D_8006A268)
    /* 370F4B8 8006EF1C 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_50_8006EF20:
    /* 370F4BC 8006EF20 1000BF8F */  lw         $ra, 0x10($sp)
    /* 370F4C0 8006EF24 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 370F4C4 8006EF28 0800E003 */  jr         $ra
    /* 370F4C8 8006EF2C 00000000 */   nop
endlabel func_level_50_8006EE50
