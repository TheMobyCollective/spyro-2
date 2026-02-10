.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_11_8006EC60, 0x120

glabel func_level_11_8006EC60
    /* F2A1FC 8006EC60 0780033C */  lui        $v1, %hi(D_8006A004)
    /* F2A200 8006EC64 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* F2A204 8006EC68 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F2A208 8006EC6C 1800BFAF */  sw         $ra, 0x18($sp)
    /* F2A20C 8006EC70 1400B1AF */  sw         $s1, 0x14($sp)
    /* F2A210 8006EC74 35006228 */  slti       $v0, $v1, 0x35
    /* F2A214 8006EC78 3B004010 */  beqz       $v0, .Llevel_11_8006ED68
    /* F2A218 8006EC7C 1000B0AF */   sw        $s0, 0x10($sp)
    /* F2A21C 8006EC80 33006228 */  slti       $v0, $v1, 0x33
    /* F2A220 8006EC84 1D004010 */  beqz       $v0, .Llevel_11_8006ECFC
    /* F2A224 8006EC88 20000224 */   addiu     $v0, $zero, 0x20
    /* F2A228 8006EC8C 36006210 */  beq        $v1, $v0, .Llevel_11_8006ED68
    /* F2A22C 8006EC90 32000224 */   addiu     $v0, $zero, 0x32
    /* F2A230 8006EC94 34006214 */  bne        $v1, $v0, .Llevel_11_8006ED68
    /* F2A234 8006EC98 03000224 */   addiu     $v0, $zero, 0x3
    /* F2A238 8006EC9C 0780033C */  lui        $v1, %hi(D_8006A006)
    /* F2A23C 8006ECA0 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* F2A240 8006ECA4 00000000 */  nop
    /* F2A244 8006ECA8 03006210 */  beq        $v1, $v0, .Llevel_11_8006ECB8
    /* F2A248 8006ECAC 0A000224 */   addiu     $v0, $zero, 0xA
    /* F2A24C 8006ECB0 2D006214 */  bne        $v1, $v0, .Llevel_11_8006ED68
    /* F2A250 8006ECB4 00000000 */   nop
  .Llevel_11_8006ECB8:
    /* F2A254 8006ECB8 0680023C */  lui        $v0, %hi(D_80067020)
    /* F2A258 8006ECBC 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* F2A25C 8006ECC0 21280000 */  addu       $a1, $zero, $zero
    /* F2A260 8006ECC4 11004490 */  lbu        $a0, 0x11($v0)
    /* F2A264 8006ECC8 C841010C */  jal        func_80050720
    /* F2A268 8006ECCC 21300000 */   addu      $a2, $zero, $zero
    /* F2A26C 8006ECD0 0780033C */  lui        $v1, %hi(D_8006A006)
    /* F2A270 8006ECD4 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* F2A274 8006ECD8 21204000 */  addu       $a0, $v0, $zero
    /* F2A278 8006ECDC 0780013C */  lui        $at, %hi(D_8006A268)
    /* F2A27C 8006ECE0 68A223AC */  sw         $v1, %lo(D_8006A268)($at)
    /* F2A280 8006ECE4 20008004 */  bltz       $a0, .Llevel_11_8006ED68
    /* F2A284 8006ECE8 0A000224 */   addiu     $v0, $zero, 0xA
    /* F2A288 8006ECEC 1C006210 */  beq        $v1, $v0, .Llevel_11_8006ED60
    /* F2A28C 8006ECF0 00000000 */   nop
    /* F2A290 8006ECF4 5ABB0108 */  j          .Llevel_11_8006ED68
    /* F2A294 8006ECF8 00000000 */   nop
  .Llevel_11_8006ECFC:
    /* F2A298 8006ECFC 0780033C */  lui        $v1, %hi(D_8006A006)
    /* F2A29C 8006ED00 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* F2A2A0 8006ED04 01001124 */  addiu      $s1, $zero, 0x1
    /* F2A2A4 8006ED08 03007110 */  beq        $v1, $s1, .Llevel_11_8006ED18
    /* F2A2A8 8006ED0C 03000224 */   addiu     $v0, $zero, 0x3
    /* F2A2AC 8006ED10 15006214 */  bne        $v1, $v0, .Llevel_11_8006ED68
    /* F2A2B0 8006ED14 00000000 */   nop
  .Llevel_11_8006ED18:
    /* F2A2B4 8006ED18 0680023C */  lui        $v0, %hi(D_80067020)
    /* F2A2B8 8006ED1C 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* F2A2BC 8006ED20 21280000 */  addu       $a1, $zero, $zero
    /* F2A2C0 8006ED24 11004490 */  lbu        $a0, 0x11($v0)
    /* F2A2C4 8006ED28 C841010C */  jal        func_80050720
    /* F2A2C8 8006ED2C 21300000 */   addu      $a2, $zero, $zero
    /* F2A2CC 8006ED30 0780033C */  lui        $v1, %hi(D_8006A006)
    /* F2A2D0 8006ED34 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* F2A2D4 8006ED38 21804000 */  addu       $s0, $v0, $zero
    /* F2A2D8 8006ED3C 0780013C */  lui        $at, %hi(D_8006A268)
    /* F2A2DC 8006ED40 68A223AC */  sw         $v1, %lo(D_8006A268)($at)
    /* F2A2E0 8006ED44 08000006 */  bltz       $s0, .Llevel_11_8006ED68
    /* F2A2E4 8006ED48 00000000 */   nop
    /* F2A2E8 8006ED4C 06007114 */  bne        $v1, $s1, .Llevel_11_8006ED68
    /* F2A2EC 8006ED50 21200002 */   addu      $a0, $s0, $zero
    /* F2A2F0 8006ED54 3D43010C */  jal        func_80050CF4
    /* F2A2F4 8006ED58 000C0524 */   addiu     $a1, $zero, 0xC00
    /* F2A2F8 8006ED5C 21200002 */  addu       $a0, $s0, $zero
  .Llevel_11_8006ED60:
    /* F2A2FC 8006ED60 1943010C */  jal        func_80050C64
    /* F2A300 8006ED64 00120524 */   addiu     $a1, $zero, 0x1200
  .Llevel_11_8006ED68:
    /* F2A304 8006ED68 1800BF8F */  lw         $ra, 0x18($sp)
    /* F2A308 8006ED6C 1400B18F */  lw         $s1, 0x14($sp)
    /* F2A30C 8006ED70 1000B08F */  lw         $s0, 0x10($sp)
    /* F2A310 8006ED74 2000BD27 */  addiu      $sp, $sp, 0x20
    /* F2A314 8006ED78 0800E003 */  jr         $ra
    /* F2A318 8006ED7C 00000000 */   nop
endlabel func_level_11_8006EC60
