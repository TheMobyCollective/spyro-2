.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_12_8006F2C0, 0xA4

glabel func_level_12_8006F2C0
    /* 111485C 8006F2C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1114860 8006F2C4 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 1114864 8006F2C8 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 1114868 8006F2CC 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 111486C 8006F2D0 06006210 */  beq        $v1, $v0, .Llevel_12_8006F2EC
    /* 1114870 8006F2D4 1000BFAF */   sw        $ra, 0x10($sp)
    /* 1114874 8006F2D8 3B000224 */  addiu      $v0, $zero, 0x3B
    /* 1114878 8006F2DC 0E006210 */  beq        $v1, $v0, .Llevel_12_8006F318
    /* 111487C 8006F2E0 15000224 */   addiu     $v0, $zero, 0x15
    /* 1114880 8006F2E4 D5BC0108 */  j          .Llevel_12_8006F354
    /* 1114884 8006F2E8 00000000 */   nop
  .Llevel_12_8006F2EC:
    /* 1114888 8006F2EC 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 111488C 8006F2F0 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 1114890 8006F2F4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1114894 8006F2F8 16006214 */  bne        $v1, $v0, .Llevel_12_8006F354
    /* 1114898 8006F2FC 21280000 */   addu      $a1, $zero, $zero
    /* 111489C 8006F300 0680023C */  lui        $v0, %hi(D_80067020)
    /* 11148A0 8006F304 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 11148A4 8006F308 00000000 */  nop
    /* 11148A8 8006F30C 0A004490 */  lbu        $a0, 0xA($v0)
    /* 11148AC 8006F310 CFBC0108 */  j          .Llevel_12_8006F33C
    /* 11148B0 8006F314 00000000 */   nop
  .Llevel_12_8006F318:
    /* 11148B4 8006F318 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 11148B8 8006F31C 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 11148BC 8006F320 00000000 */  nop
    /* 11148C0 8006F324 0B006214 */  bne        $v1, $v0, .Llevel_12_8006F354
    /* 11148C4 8006F328 21280000 */   addu      $a1, $zero, $zero
    /* 11148C8 8006F32C 0680023C */  lui        $v0, %hi(D_80067020)
    /* 11148CC 8006F330 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 11148D0 8006F334 00000000 */  nop
    /* 11148D4 8006F338 0D004490 */  lbu        $a0, 0xD($v0)
  .Llevel_12_8006F33C:
    /* 11148D8 8006F33C C841010C */  jal        func_80050720
    /* 11148DC 8006F340 21300000 */   addu      $a2, $zero, $zero
    /* 11148E0 8006F344 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 11148E4 8006F348 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 11148E8 8006F34C 0780013C */  lui        $at, %hi(D_8006A268)
    /* 11148EC 8006F350 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_12_8006F354:
    /* 11148F0 8006F354 1000BF8F */  lw         $ra, 0x10($sp)
    /* 11148F4 8006F358 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 11148F8 8006F35C 0800E003 */  jr         $ra
    /* 11148FC 8006F360 00000000 */   nop
endlabel func_level_12_8006F2C0
