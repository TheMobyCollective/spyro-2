.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_32_8006E91C, 0x64

glabel func_level_32_8006E91C
    /* 23606B8 8006E91C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 23606BC 8006E920 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 23606C0 8006E924 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 23606C4 8006E928 14000224 */  addiu      $v0, $zero, 0x14
    /* 23606C8 8006E92C 10006214 */  bne        $v1, $v0, .Llevel_32_8006E970
    /* 23606CC 8006E930 1000BFAF */   sw        $ra, 0x10($sp)
    /* 23606D0 8006E934 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 23606D4 8006E938 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 23606D8 8006E93C 18000224 */  addiu      $v0, $zero, 0x18
    /* 23606DC 8006E940 0B006214 */  bne        $v1, $v0, .Llevel_32_8006E970
    /* 23606E0 8006E944 21280000 */   addu      $a1, $zero, $zero
    /* 23606E4 8006E948 0680023C */  lui        $v0, %hi(D_80067020)
    /* 23606E8 8006E94C 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 23606EC 8006E950 00000000 */  nop
    /* 23606F0 8006E954 10004490 */  lbu        $a0, 0x10($v0)
    /* 23606F4 8006E958 C841010C */  jal        func_80050720
    /* 23606F8 8006E95C 21300000 */   addu      $a2, $zero, $zero
    /* 23606FC 8006E960 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 2360700 8006E964 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 2360704 8006E968 0780013C */  lui        $at, %hi(D_8006A268)
    /* 2360708 8006E96C 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_32_8006E970:
    /* 236070C 8006E970 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2360710 8006E974 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2360714 8006E978 0800E003 */  jr         $ra
    /* 2360718 8006E97C 00000000 */   nop
endlabel func_level_32_8006E91C
