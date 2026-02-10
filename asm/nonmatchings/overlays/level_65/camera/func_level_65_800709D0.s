.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_65_800709D0, 0x110

glabel func_level_65_800709D0
    /* 42C3F6C 800709D0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 42C3F70 800709D4 11000224 */  addiu      $v0, $zero, 0x11
    /* 42C3F74 800709D8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 42C3F78 800709DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 42C3F7C 800709E0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 42C3F80 800709E4 06008210 */  beq        $a0, $v0, .Llevel_65_80070A00
    /* 42C3F84 800709E8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 42C3F88 800709EC 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 42C3F8C 800709F0 26008210 */  beq        $a0, $v0, .Llevel_65_80070A8C
    /* 42C3F90 800709F4 01000224 */   addiu     $v0, $zero, 0x1
    /* 42C3F94 800709F8 B1C20108 */  j          .Llevel_65_80070AC4
    /* 42C3F98 800709FC 00000000 */   nop
  .Llevel_65_80070A00:
    /* 42C3F9C 80070A00 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 42C3FA0 80070A04 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 42C3FA4 80070A08 10002426 */  addiu      $a0, $s1, 0x10
    /* 42C3FA8 80070A0C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 42C3FAC 80070A10 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 42C3FB0 80070A14 01000224 */  addiu      $v0, $zero, 0x1
    /* 42C3FB4 80070A18 000020AE */  sw         $zero, 0x0($s1)
    /* 42C3FB8 80070A1C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 42C3FBC 80070A20 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 42C3FC0 80070A24 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 42C3FC4 80070A28 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 42C3FC8 80070A2C 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 42C3FCC 80070A30 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 42C3FD0 80070A34 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 42C3FD4 80070A38 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 42C3FD8 80070A3C 6C6F000C */  jal        func_8001BDB0
    /* 42C3FDC 80070A40 21284002 */   addu      $a1, $s2, $zero
    /* 42C3FE0 80070A44 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 42C3FE4 80070A48 21200002 */  addu       $a0, $s0, $zero
    /* 42C3FE8 80070A4C D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 42C3FEC 80070A50 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 42C3FF0 80070A54 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 42C3FF4 80070A58 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 42C3FF8 80070A5C F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 42C3FFC 80070A60 867B000C */  jal        func_8001EE18
    /* 42C4000 80070A64 21304002 */   addu      $a2, $s2, $zero
    /* 42C4004 80070A68 21200002 */  addu       $a0, $s0, $zero
    /* 42C4008 80070A6C EA7B000C */  jal        func_8001EFA8
    /* 42C400C 80070A70 21280002 */   addu      $a1, $s0, $zero
    /* 42C4010 80070A74 54002426 */  addiu      $a0, $s1, 0x54
    /* 42C4014 80070A78 21280002 */  addu       $a1, $s0, $zero
    /* 42C4018 80070A7C 337B000C */  jal        func_8001ECCC
    /* 42C401C 80070A80 21300000 */   addu      $a2, $zero, $zero
    /* 42C4020 80070A84 B1C20108 */  j          .Llevel_65_80070AC4
    /* 42C4024 80070A88 00000000 */   nop
  .Llevel_65_80070A8C:
    /* 42C4028 80070A8C 0680013C */  lui        $at, %hi(D_80067ED4)
    /* 42C402C 80070A90 D47E20AC */  sw         $zero, %lo(D_80067ED4)($at)
    /* 42C4030 80070A94 0680013C */  lui        $at, %hi(D_80067FB8)
    /* 42C4034 80070A98 B87F20AC */  sw         $zero, %lo(D_80067FB8)($at)
    /* 42C4038 80070A9C 0680013C */  lui        $at, %hi(D_80067FBC)
    /* 42C403C 80070AA0 BC7F20AC */  sw         $zero, %lo(D_80067FBC)($at)
    /* 42C4040 80070AA4 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 42C4044 80070AA8 C47F22A0 */  sb         $v0, %lo(D_80067FC4)($at)
    /* 42C4048 80070AAC 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 42C404C 80070AB0 C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
    /* 42C4050 80070AB4 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 42C4054 80070AB8 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 42C4058 80070ABC 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 42C405C 80070AC0 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
  .Llevel_65_80070AC4:
    /* 42C4060 80070AC4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 42C4064 80070AC8 1800B28F */  lw         $s2, 0x18($sp)
    /* 42C4068 80070ACC 1400B18F */  lw         $s1, 0x14($sp)
    /* 42C406C 80070AD0 1000B08F */  lw         $s0, 0x10($sp)
    /* 42C4070 80070AD4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 42C4074 80070AD8 0800E003 */  jr         $ra
    /* 42C4078 80070ADC 00000000 */   nop
endlabel func_level_65_800709D0
