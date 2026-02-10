.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_65_8006EB14, 0x64

glabel func_level_65_8006EB14
    /* 42C20B0 8006EB14 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 42C20B4 8006EB18 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 42C20B8 8006EB1C 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 42C20BC 8006EB20 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 42C20C0 8006EB24 10006214 */  bne        $v1, $v0, .Llevel_65_8006EB68
    /* 42C20C4 8006EB28 1000BFAF */   sw        $ra, 0x10($sp)
    /* 42C20C8 8006EB2C 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 42C20CC 8006EB30 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 42C20D0 8006EB34 01000224 */  addiu      $v0, $zero, 0x1
    /* 42C20D4 8006EB38 0B006214 */  bne        $v1, $v0, .Llevel_65_8006EB68
    /* 42C20D8 8006EB3C 21280000 */   addu      $a1, $zero, $zero
    /* 42C20DC 8006EB40 0680023C */  lui        $v0, %hi(D_80067020)
    /* 42C20E0 8006EB44 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 42C20E4 8006EB48 00000000 */  nop
    /* 42C20E8 8006EB4C 0A004490 */  lbu        $a0, 0xA($v0)
    /* 42C20EC 8006EB50 C841010C */  jal        func_80050720
    /* 42C20F0 8006EB54 21300000 */   addu      $a2, $zero, $zero
    /* 42C20F4 8006EB58 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 42C20F8 8006EB5C 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 42C20FC 8006EB60 0780013C */  lui        $at, %hi(D_8006A268)
    /* 42C2100 8006EB64 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_65_8006EB68:
    /* 42C2104 8006EB68 1000BF8F */  lw         $ra, 0x10($sp)
    /* 42C2108 8006EB6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 42C210C 8006EB70 0800E003 */  jr         $ra
    /* 42C2110 8006EB74 00000000 */   nop
endlabel func_level_65_8006EB14
