.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_13_8006EDE8, 0x88

glabel func_level_13_8006EDE8
    /* 133B384 8006EDE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 133B388 8006EDEC 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 133B38C 8006EDF0 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 133B390 8006EDF4 09000224 */  addiu      $v0, $zero, 0x9
    /* 133B394 8006EDF8 19006214 */  bne        $v1, $v0, .Llevel_13_8006EE60
    /* 133B398 8006EDFC 1000BFAF */   sw        $ra, 0x10($sp)
    /* 133B39C 8006EE00 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 133B3A0 8006EE04 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 133B3A4 8006EE08 01000224 */  addiu      $v0, $zero, 0x1
    /* 133B3A8 8006EE0C 03006210 */  beq        $v1, $v0, .Llevel_13_8006EE1C
    /* 133B3AC 8006EE10 06000224 */   addiu     $v0, $zero, 0x6
    /* 133B3B0 8006EE14 12006214 */  bne        $v1, $v0, .Llevel_13_8006EE60
    /* 133B3B4 8006EE18 00000000 */   nop
  .Llevel_13_8006EE1C:
    /* 133B3B8 8006EE1C 0680023C */  lui        $v0, %hi(D_80067020)
    /* 133B3BC 8006EE20 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 133B3C0 8006EE24 21280000 */  addu       $a1, $zero, $zero
    /* 133B3C4 8006EE28 0B004490 */  lbu        $a0, 0xB($v0)
    /* 133B3C8 8006EE2C C841010C */  jal        func_80050720
    /* 133B3CC 8006EE30 21300000 */   addu      $a2, $zero, $zero
    /* 133B3D0 8006EE34 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 133B3D4 8006EE38 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 133B3D8 8006EE3C 21204000 */  addu       $a0, $v0, $zero
    /* 133B3DC 8006EE40 0780013C */  lui        $at, %hi(D_8006A268)
    /* 133B3E0 8006EE44 68A223AC */  sw         $v1, %lo(D_8006A268)($at)
    /* 133B3E4 8006EE48 05008004 */  bltz       $a0, .Llevel_13_8006EE60
    /* 133B3E8 8006EE4C 06000224 */   addiu     $v0, $zero, 0x6
    /* 133B3EC 8006EE50 03006214 */  bne        $v1, $v0, .Llevel_13_8006EE60
    /* 133B3F0 8006EE54 00000000 */   nop
    /* 133B3F4 8006EE58 1943010C */  jal        func_80050C64
    /* 133B3F8 8006EE5C 90110524 */   addiu     $a1, $zero, 0x1190
  .Llevel_13_8006EE60:
    /* 133B3FC 8006EE60 1000BF8F */  lw         $ra, 0x10($sp)
    /* 133B400 8006EE64 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 133B404 8006EE68 0800E003 */  jr         $ra
    /* 133B408 8006EE6C 00000000 */   nop
endlabel func_level_13_8006EDE8
