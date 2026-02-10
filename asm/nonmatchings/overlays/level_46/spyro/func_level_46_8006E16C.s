.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_46_8006E16C, 0x70

glabel func_level_46_8006E16C
    /* 3581F08 8006E16C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3581F0C 8006E170 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 3581F10 8006E174 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 3581F14 8006E178 20000224 */  addiu      $v0, $zero, 0x20
    /* 3581F18 8006E17C 13006210 */  beq        $v1, $v0, .Llevel_46_8006E1CC
    /* 3581F1C 8006E180 1000BFAF */   sw        $ra, 0x10($sp)
    /* 3581F20 8006E184 3A000224 */  addiu      $v0, $zero, 0x3A
    /* 3581F24 8006E188 10006214 */  bne        $v1, $v0, .Llevel_46_8006E1CC
    /* 3581F28 8006E18C 0D000224 */   addiu     $v0, $zero, 0xD
    /* 3581F2C 8006E190 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 3581F30 8006E194 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 3581F34 8006E198 00000000 */  nop
    /* 3581F38 8006E19C 0B006214 */  bne        $v1, $v0, .Llevel_46_8006E1CC
    /* 3581F3C 8006E1A0 21280000 */   addu      $a1, $zero, $zero
    /* 3581F40 8006E1A4 0680023C */  lui        $v0, %hi(D_80067020)
    /* 3581F44 8006E1A8 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 3581F48 8006E1AC 00000000 */  nop
    /* 3581F4C 8006E1B0 0D004490 */  lbu        $a0, 0xD($v0)
    /* 3581F50 8006E1B4 C841010C */  jal        func_80050720
    /* 3581F54 8006E1B8 21300000 */   addu      $a2, $zero, $zero
    /* 3581F58 8006E1BC 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 3581F5C 8006E1C0 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 3581F60 8006E1C4 0780013C */  lui        $at, %hi(D_8006A268)
    /* 3581F64 8006E1C8 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_46_8006E1CC:
    /* 3581F68 8006E1CC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3581F6C 8006E1D0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3581F70 8006E1D4 0800E003 */  jr         $ra
    /* 3581F74 8006E1D8 00000000 */   nop
endlabel func_level_46_8006E16C
