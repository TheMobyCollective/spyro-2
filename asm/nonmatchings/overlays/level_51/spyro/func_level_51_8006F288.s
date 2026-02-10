.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_51_8006F288, 0x70

glabel func_level_51_8006F288
    /* 38D4824 8006F288 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 38D4828 8006F28C 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 38D482C 8006F290 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 38D4830 8006F294 20000224 */  addiu      $v0, $zero, 0x20
    /* 38D4834 8006F298 13006210 */  beq        $v1, $v0, .Llevel_51_8006F2E8
    /* 38D4838 8006F29C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 38D483C 8006F2A0 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 38D4840 8006F2A4 10006214 */  bne        $v1, $v0, .Llevel_51_8006F2E8
    /* 38D4844 8006F2A8 01000224 */   addiu     $v0, $zero, 0x1
    /* 38D4848 8006F2AC 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 38D484C 8006F2B0 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 38D4850 8006F2B4 00000000 */  nop
    /* 38D4854 8006F2B8 0B006214 */  bne        $v1, $v0, .Llevel_51_8006F2E8
    /* 38D4858 8006F2BC 21280000 */   addu      $a1, $zero, $zero
    /* 38D485C 8006F2C0 0680023C */  lui        $v0, %hi(D_80067020)
    /* 38D4860 8006F2C4 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 38D4864 8006F2C8 00000000 */  nop
    /* 38D4868 8006F2CC 0A004490 */  lbu        $a0, 0xA($v0)
    /* 38D486C 8006F2D0 C841010C */  jal        func_80050720
    /* 38D4870 8006F2D4 21300000 */   addu      $a2, $zero, $zero
    /* 38D4874 8006F2D8 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 38D4878 8006F2DC 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 38D487C 8006F2E0 0780013C */  lui        $at, %hi(D_8006A268)
    /* 38D4880 8006F2E4 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_51_8006F2E8:
    /* 38D4884 8006F2E8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38D4888 8006F2EC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 38D488C 8006F2F0 0800E003 */  jr         $ra
    /* 38D4890 8006F2F4 00000000 */   nop
endlabel func_level_51_8006F288
