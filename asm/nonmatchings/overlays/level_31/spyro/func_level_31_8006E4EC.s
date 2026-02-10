.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_31_8006E4EC, 0x64

glabel func_level_31_8006E4EC
    /* 2136A88 8006E4EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2136A8C 8006E4F0 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 2136A90 8006E4F4 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 2136A94 8006E4F8 3A000224 */  addiu      $v0, $zero, 0x3A
    /* 2136A98 8006E4FC 10006214 */  bne        $v1, $v0, .Llevel_31_8006E540
    /* 2136A9C 8006E500 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2136AA0 8006E504 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 2136AA4 8006E508 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 2136AA8 8006E50C 0D000224 */  addiu      $v0, $zero, 0xD
    /* 2136AAC 8006E510 0B006214 */  bne        $v1, $v0, .Llevel_31_8006E540
    /* 2136AB0 8006E514 21280000 */   addu      $a1, $zero, $zero
    /* 2136AB4 8006E518 0680023C */  lui        $v0, %hi(D_80067020)
    /* 2136AB8 8006E51C 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 2136ABC 8006E520 00000000 */  nop
    /* 2136AC0 8006E524 0D004490 */  lbu        $a0, 0xD($v0)
    /* 2136AC4 8006E528 C841010C */  jal        func_80050720
    /* 2136AC8 8006E52C 21300000 */   addu      $a2, $zero, $zero
    /* 2136ACC 8006E530 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 2136AD0 8006E534 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 2136AD4 8006E538 0780013C */  lui        $at, %hi(D_8006A268)
    /* 2136AD8 8006E53C 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_31_8006E540:
    /* 2136ADC 8006E540 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2136AE0 8006E544 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2136AE4 8006E548 0800E003 */  jr         $ra
    /* 2136AE8 8006E54C 00000000 */   nop
endlabel func_level_31_8006E4EC
