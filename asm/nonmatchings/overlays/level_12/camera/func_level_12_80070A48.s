.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_12_80070A48, 0x164

glabel func_level_12_80070A48
    /* 1115FE4 80070A48 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1115FE8 80070A4C 11000224 */  addiu      $v0, $zero, 0x11
    /* 1115FEC 80070A50 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1115FF0 80070A54 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1115FF4 80070A58 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1115FF8 80070A5C 0D008210 */  beq        $a0, $v0, .Llevel_12_80070A94
    /* 1115FFC 80070A60 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1116000 80070A64 12008228 */  slti       $v0, $a0, 0x12
    /* 1116004 80070A68 05004010 */  beqz       $v0, .Llevel_12_80070A80
    /* 1116008 80070A6C 04000224 */   addiu     $v0, $zero, 0x4
    /* 111600C 80070A70 15008210 */  beq        $a0, $v0, .Llevel_12_80070AC8
    /* 1116010 80070A74 01000224 */   addiu     $v0, $zero, 0x1
    /* 1116014 80070A78 E4C20108 */  j          .Llevel_12_80070B90
    /* 1116018 80070A7C 00000000 */   nop
  .Llevel_12_80070A80:
    /* 111601C 80070A80 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 1116020 80070A84 22008210 */  beq        $a0, $v0, .Llevel_12_80070B10
    /* 1116024 80070A88 01000224 */   addiu     $v0, $zero, 0x1
    /* 1116028 80070A8C E4C20108 */  j          .Llevel_12_80070B90
    /* 111602C 80070A90 00000000 */   nop
  .Llevel_12_80070A94:
    /* 1116030 80070A94 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 1116034 80070A98 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 1116038 80070A9C 10002426 */  addiu      $a0, $s1, 0x10
    /* 111603C 80070AA0 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 1116040 80070AA4 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 1116044 80070AA8 21284002 */  addu       $a1, $s2, $zero
    /* 1116048 80070AAC 000020AE */  sw         $zero, 0x0($s1)
    /* 111604C 80070AB0 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 1116050 80070AB4 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 1116054 80070AB8 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 1116058 80070ABC C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 111605C 80070AC0 CFC20108 */  j          .Llevel_12_80070B3C
    /* 1116060 80070AC4 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_12_80070AC8:
    /* 1116064 80070AC8 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 1116068 80070ACC D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 111606C 80070AD0 10002426 */  addiu      $a0, $s1, 0x10
    /* 1116070 80070AD4 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 1116074 80070AD8 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 1116078 80070ADC 000020AE */  sw         $zero, 0x0($s1)
    /* 111607C 80070AE0 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 1116080 80070AE4 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 1116084 80070AE8 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 1116088 80070AEC C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 111608C 80070AF0 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 1116090 80070AF4 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 1116094 80070AF8 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 1116098 80070AFC C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 111609C 80070B00 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 11160A0 80070B04 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 11160A4 80070B08 D3C20108 */  j          .Llevel_12_80070B4C
    /* 11160A8 80070B0C 21284002 */   addu      $a1, $s2, $zero
  .Llevel_12_80070B10:
    /* 11160AC 80070B10 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 11160B0 80070B14 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 11160B4 80070B18 10002426 */  addiu      $a0, $s1, 0x10
    /* 11160B8 80070B1C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 11160BC 80070B20 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 11160C0 80070B24 21284002 */  addu       $a1, $s2, $zero
    /* 11160C4 80070B28 000020AE */  sw         $zero, 0x0($s1)
    /* 11160C8 80070B2C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 11160CC 80070B30 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 11160D0 80070B34 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 11160D4 80070B38 C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
  .Llevel_12_80070B3C:
    /* 11160D8 80070B3C 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 11160DC 80070B40 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 11160E0 80070B44 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 11160E4 80070B48 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
  .Llevel_12_80070B4C:
    /* 11160E8 80070B4C 6C6F000C */  jal        func_8001BDB0
    /* 11160EC 80070B50 2C003026 */   addiu     $s0, $s1, 0x2C
    /* 11160F0 80070B54 21200002 */  addu       $a0, $s0, $zero
    /* 11160F4 80070B58 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 11160F8 80070B5C 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 11160FC 80070B60 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 1116100 80070B64 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1116104 80070B68 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 1116108 80070B6C 867B000C */  jal        func_8001EE18
    /* 111610C 80070B70 21304002 */   addu      $a2, $s2, $zero
    /* 1116110 80070B74 21200002 */  addu       $a0, $s0, $zero
    /* 1116114 80070B78 EA7B000C */  jal        func_8001EFA8
    /* 1116118 80070B7C 21280002 */   addu      $a1, $s0, $zero
    /* 111611C 80070B80 54002426 */  addiu      $a0, $s1, 0x54
    /* 1116120 80070B84 21280002 */  addu       $a1, $s0, $zero
    /* 1116124 80070B88 337B000C */  jal        func_8001ECCC
    /* 1116128 80070B8C 21300000 */   addu      $a2, $zero, $zero
  .Llevel_12_80070B90:
    /* 111612C 80070B90 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1116130 80070B94 1800B28F */  lw         $s2, 0x18($sp)
    /* 1116134 80070B98 1400B18F */  lw         $s1, 0x14($sp)
    /* 1116138 80070B9C 1000B08F */  lw         $s0, 0x10($sp)
    /* 111613C 80070BA0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1116140 80070BA4 0800E003 */  jr         $ra
    /* 1116144 80070BA8 00000000 */   nop
endlabel func_level_12_80070A48
