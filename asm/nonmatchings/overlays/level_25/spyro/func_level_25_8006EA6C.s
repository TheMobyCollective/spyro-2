.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_25_8006EA6C, 0x64

glabel func_level_25_8006EA6C
    /* 1BC7008 8006EA6C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1BC700C 8006EA70 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 1BC7010 8006EA74 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 1BC7014 8006EA78 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 1BC7018 8006EA7C 10006214 */  bne        $v1, $v0, .Llevel_25_8006EAC0
    /* 1BC701C 8006EA80 1000BFAF */   sw        $ra, 0x10($sp)
    /* 1BC7020 8006EA84 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 1BC7024 8006EA88 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 1BC7028 8006EA8C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1BC702C 8006EA90 0B006214 */  bne        $v1, $v0, .Llevel_25_8006EAC0
    /* 1BC7030 8006EA94 21280000 */   addu      $a1, $zero, $zero
    /* 1BC7034 8006EA98 0680023C */  lui        $v0, %hi(D_80067020)
    /* 1BC7038 8006EA9C 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 1BC703C 8006EAA0 00000000 */  nop
    /* 1BC7040 8006EAA4 0A004490 */  lbu        $a0, 0xA($v0)
    /* 1BC7044 8006EAA8 C841010C */  jal        func_80050720
    /* 1BC7048 8006EAAC 21300000 */   addu      $a2, $zero, $zero
    /* 1BC704C 8006EAB0 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 1BC7050 8006EAB4 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 1BC7054 8006EAB8 0780013C */  lui        $at, %hi(D_8006A268)
    /* 1BC7058 8006EABC 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_25_8006EAC0:
    /* 1BC705C 8006EAC0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1BC7060 8006EAC4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1BC7064 8006EAC8 0800E003 */  jr         $ra
    /* 1BC7068 8006EACC 00000000 */   nop
endlabel func_level_25_8006EA6C
