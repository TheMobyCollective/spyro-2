.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_26_8006E8F8, 0x70

glabel func_level_26_8006E8F8
    /* 1DB1694 8006E8F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1DB1698 8006E8FC 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 1DB169C 8006E900 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 1DB16A0 8006E904 20000224 */  addiu      $v0, $zero, 0x20
    /* 1DB16A4 8006E908 13006210 */  beq        $v1, $v0, .Llevel_26_8006E958
    /* 1DB16A8 8006E90C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 1DB16AC 8006E910 3A000224 */  addiu      $v0, $zero, 0x3A
    /* 1DB16B0 8006E914 10006214 */  bne        $v1, $v0, .Llevel_26_8006E958
    /* 1DB16B4 8006E918 0D000224 */   addiu     $v0, $zero, 0xD
    /* 1DB16B8 8006E91C 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 1DB16BC 8006E920 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 1DB16C0 8006E924 00000000 */  nop
    /* 1DB16C4 8006E928 0B006214 */  bne        $v1, $v0, .Llevel_26_8006E958
    /* 1DB16C8 8006E92C 21280000 */   addu      $a1, $zero, $zero
    /* 1DB16CC 8006E930 0680023C */  lui        $v0, %hi(D_80067020)
    /* 1DB16D0 8006E934 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 1DB16D4 8006E938 00000000 */  nop
    /* 1DB16D8 8006E93C 0D004490 */  lbu        $a0, 0xD($v0)
    /* 1DB16DC 8006E940 C841010C */  jal        func_80050720
    /* 1DB16E0 8006E944 21300000 */   addu      $a2, $zero, $zero
    /* 1DB16E4 8006E948 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 1DB16E8 8006E94C 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 1DB16EC 8006E950 0780013C */  lui        $at, %hi(D_8006A268)
    /* 1DB16F0 8006E954 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_26_8006E958:
    /* 1DB16F4 8006E958 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1DB16F8 8006E95C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1DB16FC 8006E960 0800E003 */  jr         $ra
    /* 1DB1700 8006E964 00000000 */   nop
endlabel func_level_26_8006E8F8
