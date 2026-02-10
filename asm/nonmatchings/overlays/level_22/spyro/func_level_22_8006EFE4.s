.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_22_8006EFE4, 0x64

glabel func_level_22_8006EFE4
    /* 178CD80 8006EFE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 178CD84 8006EFE8 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 178CD88 8006EFEC 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 178CD8C 8006EFF0 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 178CD90 8006EFF4 10006214 */  bne        $v1, $v0, .Llevel_22_8006F038
    /* 178CD94 8006EFF8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 178CD98 8006EFFC 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 178CD9C 8006F000 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 178CDA0 8006F004 01000224 */  addiu      $v0, $zero, 0x1
    /* 178CDA4 8006F008 0B006214 */  bne        $v1, $v0, .Llevel_22_8006F038
    /* 178CDA8 8006F00C 21280000 */   addu      $a1, $zero, $zero
    /* 178CDAC 8006F010 0680023C */  lui        $v0, %hi(D_80067020)
    /* 178CDB0 8006F014 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 178CDB4 8006F018 00000000 */  nop
    /* 178CDB8 8006F01C 0A004490 */  lbu        $a0, 0xA($v0)
    /* 178CDBC 8006F020 C841010C */  jal        func_80050720
    /* 178CDC0 8006F024 21300000 */   addu      $a2, $zero, $zero
    /* 178CDC4 8006F028 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 178CDC8 8006F02C 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 178CDCC 8006F030 0780013C */  lui        $at, %hi(D_8006A268)
    /* 178CDD0 8006F034 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_22_8006F038:
    /* 178CDD4 8006F038 1000BF8F */  lw         $ra, 0x10($sp)
    /* 178CDD8 8006F03C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 178CDDC 8006F040 0800E003 */  jr         $ra
    /* 178CDE0 8006F044 00000000 */   nop
endlabel func_level_22_8006EFE4
