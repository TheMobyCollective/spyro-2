.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_55_8006EE60, 0xA4

glabel func_level_55_8006EE60
    /* 3D1F3FC 8006EE60 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3D1F400 8006EE64 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 3D1F404 8006EE68 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 3D1F408 8006EE6C 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 3D1F40C 8006EE70 06006210 */  beq        $v1, $v0, .Llevel_55_8006EE8C
    /* 3D1F410 8006EE74 1000BFAF */   sw        $ra, 0x10($sp)
    /* 3D1F414 8006EE78 3A000224 */  addiu      $v0, $zero, 0x3A
    /* 3D1F418 8006EE7C 0E006210 */  beq        $v1, $v0, .Llevel_55_8006EEB8
    /* 3D1F41C 8006EE80 0D000224 */   addiu     $v0, $zero, 0xD
    /* 3D1F420 8006EE84 BDBB0108 */  j          .Llevel_55_8006EEF4
    /* 3D1F424 8006EE88 00000000 */   nop
  .Llevel_55_8006EE8C:
    /* 3D1F428 8006EE8C 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 3D1F42C 8006EE90 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 3D1F430 8006EE94 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D1F434 8006EE98 16006214 */  bne        $v1, $v0, .Llevel_55_8006EEF4
    /* 3D1F438 8006EE9C 21280000 */   addu      $a1, $zero, $zero
    /* 3D1F43C 8006EEA0 0680023C */  lui        $v0, %hi(D_80067020)
    /* 3D1F440 8006EEA4 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 3D1F444 8006EEA8 00000000 */  nop
    /* 3D1F448 8006EEAC 0A004490 */  lbu        $a0, 0xA($v0)
    /* 3D1F44C 8006EEB0 B7BB0108 */  j          .Llevel_55_8006EEDC
    /* 3D1F450 8006EEB4 00000000 */   nop
  .Llevel_55_8006EEB8:
    /* 3D1F454 8006EEB8 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 3D1F458 8006EEBC 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 3D1F45C 8006EEC0 00000000 */  nop
    /* 3D1F460 8006EEC4 0B006214 */  bne        $v1, $v0, .Llevel_55_8006EEF4
    /* 3D1F464 8006EEC8 21280000 */   addu      $a1, $zero, $zero
    /* 3D1F468 8006EECC 0680023C */  lui        $v0, %hi(D_80067020)
    /* 3D1F46C 8006EED0 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 3D1F470 8006EED4 00000000 */  nop
    /* 3D1F474 8006EED8 0D004490 */  lbu        $a0, 0xD($v0)
  .Llevel_55_8006EEDC:
    /* 3D1F478 8006EEDC C841010C */  jal        func_80050720
    /* 3D1F47C 8006EEE0 21300000 */   addu      $a2, $zero, $zero
    /* 3D1F480 8006EEE4 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 3D1F484 8006EEE8 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 3D1F488 8006EEEC 0780013C */  lui        $at, %hi(D_8006A268)
    /* 3D1F48C 8006EEF0 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_55_8006EEF4:
    /* 3D1F490 8006EEF4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3D1F494 8006EEF8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3D1F498 8006EEFC 0800E003 */  jr         $ra
    /* 3D1F49C 8006EF00 00000000 */   nop
endlabel func_level_55_8006EE60
