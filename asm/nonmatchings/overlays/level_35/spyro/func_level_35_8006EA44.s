.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_35_8006EA44, 0x64

glabel func_level_35_8006EA44
    /* 29D3FE0 8006EA44 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 29D3FE4 8006EA48 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 29D3FE8 8006EA4C 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 29D3FEC 8006EA50 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 29D3FF0 8006EA54 10006214 */  bne        $v1, $v0, .Llevel_35_8006EA98
    /* 29D3FF4 8006EA58 1000BFAF */   sw        $ra, 0x10($sp)
    /* 29D3FF8 8006EA5C 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 29D3FFC 8006EA60 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 29D4000 8006EA64 01000224 */  addiu      $v0, $zero, 0x1
    /* 29D4004 8006EA68 0B006214 */  bne        $v1, $v0, .Llevel_35_8006EA98
    /* 29D4008 8006EA6C 21280000 */   addu      $a1, $zero, $zero
    /* 29D400C 8006EA70 0680023C */  lui        $v0, %hi(D_80067020)
    /* 29D4010 8006EA74 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 29D4014 8006EA78 00000000 */  nop
    /* 29D4018 8006EA7C 0A004490 */  lbu        $a0, 0xA($v0)
    /* 29D401C 8006EA80 C841010C */  jal        func_80050720
    /* 29D4020 8006EA84 21300000 */   addu      $a2, $zero, $zero
    /* 29D4024 8006EA88 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 29D4028 8006EA8C 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 29D402C 8006EA90 0780013C */  lui        $at, %hi(D_8006A268)
    /* 29D4030 8006EA94 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_35_8006EA98:
    /* 29D4034 8006EA98 1000BF8F */  lw         $ra, 0x10($sp)
    /* 29D4038 8006EA9C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 29D403C 8006EAA0 0800E003 */  jr         $ra
    /* 29D4040 8006EAA4 00000000 */   nop
endlabel func_level_35_8006EA44
