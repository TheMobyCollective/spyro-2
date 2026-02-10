.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_45_8006EC40, 0x64

glabel func_level_45_8006EC40
    /* 33F91DC 8006EC40 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 33F91E0 8006EC44 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 33F91E4 8006EC48 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 33F91E8 8006EC4C 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 33F91EC 8006EC50 10006214 */  bne        $v1, $v0, .Llevel_45_8006EC94
    /* 33F91F0 8006EC54 1000BFAF */   sw        $ra, 0x10($sp)
    /* 33F91F4 8006EC58 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 33F91F8 8006EC5C 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 33F91FC 8006EC60 01000224 */  addiu      $v0, $zero, 0x1
    /* 33F9200 8006EC64 0B006214 */  bne        $v1, $v0, .Llevel_45_8006EC94
    /* 33F9204 8006EC68 21280000 */   addu      $a1, $zero, $zero
    /* 33F9208 8006EC6C 0680023C */  lui        $v0, %hi(D_80067020)
    /* 33F920C 8006EC70 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 33F9210 8006EC74 00000000 */  nop
    /* 33F9214 8006EC78 0A004490 */  lbu        $a0, 0xA($v0)
    /* 33F9218 8006EC7C C841010C */  jal        func_80050720
    /* 33F921C 8006EC80 21300000 */   addu      $a2, $zero, $zero
    /* 33F9220 8006EC84 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 33F9224 8006EC88 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 33F9228 8006EC8C 0780013C */  lui        $at, %hi(D_8006A268)
    /* 33F922C 8006EC90 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_45_8006EC94:
    /* 33F9230 8006EC94 1000BF8F */  lw         $ra, 0x10($sp)
    /* 33F9234 8006EC98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 33F9238 8006EC9C 0800E003 */  jr         $ra
    /* 33F923C 8006ECA0 00000000 */   nop
endlabel func_level_45_8006EC40
