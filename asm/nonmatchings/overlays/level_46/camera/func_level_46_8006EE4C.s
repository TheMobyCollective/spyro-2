.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_46_8006EE4C, 0x150

glabel func_level_46_8006EE4C
    /* 3582BE8 8006EE4C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3582BEC 8006EE50 0D000224 */  addiu      $v0, $zero, 0xD
    /* 3582BF0 8006EE54 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3582BF4 8006EE58 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3582BF8 8006EE5C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3582BFC 8006EE60 06008210 */  beq        $a0, $v0, .Llevel_46_8006EE7C
    /* 3582C00 8006EE64 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3582C04 8006EE68 14000224 */  addiu      $v0, $zero, 0x14
    /* 3582C08 8006EE6C 24008210 */  beq        $a0, $v0, .Llevel_46_8006EF00
    /* 3582C0C 8006EE70 01000224 */   addiu     $v0, $zero, 0x1
    /* 3582C10 8006EE74 E0BB0108 */  j          .Llevel_46_8006EF80
    /* 3582C14 8006EE78 00000000 */   nop
  .Llevel_46_8006EE7C:
    /* 3582C18 8006EE7C 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 3582C1C 8006EE80 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 3582C20 8006EE84 10002426 */  addiu      $a0, $s1, 0x10
    /* 3582C24 8006EE88 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 3582C28 8006EE8C F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 3582C2C 8006EE90 01000224 */  addiu      $v0, $zero, 0x1
    /* 3582C30 8006EE94 000020AE */  sw         $zero, 0x0($s1)
    /* 3582C34 8006EE98 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 3582C38 8006EE9C C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 3582C3C 8006EEA0 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 3582C40 8006EEA4 C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
    /* 3582C44 8006EEA8 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 3582C48 8006EEAC C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 3582C4C 8006EEB0 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 3582C50 8006EEB4 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 3582C54 8006EEB8 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 3582C58 8006EEBC E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 3582C5C 8006EEC0 6C6F000C */  jal        func_8001BDB0
    /* 3582C60 8006EEC4 21284002 */   addu      $a1, $s2, $zero
    /* 3582C64 8006EEC8 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 3582C68 8006EECC 21200002 */  addu       $a0, $s0, $zero
    /* 3582C6C 8006EED0 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 3582C70 8006EED4 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 3582C74 8006EED8 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 3582C78 8006EEDC 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 3582C7C 8006EEE0 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 3582C80 8006EEE4 867B000C */  jal        func_8001EE18
    /* 3582C84 8006EEE8 21304002 */   addu      $a2, $s2, $zero
    /* 3582C88 8006EEEC 21200002 */  addu       $a0, $s0, $zero
    /* 3582C8C 8006EEF0 EA7B000C */  jal        func_8001EFA8
    /* 3582C90 8006EEF4 21280002 */   addu      $a1, $s0, $zero
    /* 3582C94 8006EEF8 DCBB0108 */  j          .Llevel_46_8006EF70
    /* 3582C98 8006EEFC 54002426 */   addiu     $a0, $s1, 0x54
  .Llevel_46_8006EF00:
    /* 3582C9C 8006EF00 0680103C */  lui        $s0, %hi(D_80067ED4)
    /* 3582CA0 8006EF04 D47E1026 */  addiu      $s0, $s0, %lo(D_80067ED4)
    /* 3582CA4 8006EF08 2C001126 */  addiu      $s1, $s0, 0x2C
    /* 3582CA8 8006EF0C 21202002 */  addu       $a0, $s1, $zero
    /* 3582CAC 8006EF10 D8FF0526 */  addiu      $a1, $s0, -0x28
    /* 3582CB0 8006EF14 000000AE */  sw         $zero, 0x0($s0)
    /* 3582CB4 8006EF18 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 3582CB8 8006EF1C C47F22A0 */  sb         $v0, %lo(D_80067FC4)($at)
    /* 3582CBC 8006EF20 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 3582CC0 8006EF24 C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
    /* 3582CC4 8006EF28 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 3582CC8 8006EF2C C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 3582CCC 8006EF30 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 3582CD0 8006EF34 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 3582CD4 8006EF38 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 3582CD8 8006EF3C E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 3582CDC 8006EF40 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 3582CE0 8006EF44 F07E20AC */  sw         $zero, %lo(D_80067EF0)($at)
    /* 3582CE4 8006EF48 867B000C */  jal        func_8001EE18
    /* 3582CE8 8006EF4C 10000626 */   addiu     $a2, $s0, 0x10
    /* 3582CEC 8006EF50 21202002 */  addu       $a0, $s1, $zero
    /* 3582CF0 8006EF54 EA7B000C */  jal        func_8001EFA8
    /* 3582CF4 8006EF58 21282002 */   addu      $a1, $s1, $zero
    /* 3582CF8 8006EF5C 54000426 */  addiu      $a0, $s0, 0x54
    /* 3582CFC 8006EF60 21282002 */  addu       $a1, $s1, $zero
    /* 3582D00 8006EF64 337B000C */  jal        func_8001ECCC
    /* 3582D04 8006EF68 21300000 */   addu      $a2, $zero, $zero
    /* 3582D08 8006EF6C 40000426 */  addiu      $a0, $s0, 0x40
  .Llevel_46_8006EF70:
    /* 3582D0C 8006EF70 0680053C */  lui        $a1, %hi(D_80067F00)
    /* 3582D10 8006EF74 007FA524 */  addiu      $a1, $a1, %lo(D_80067F00)
    /* 3582D14 8006EF78 337B000C */  jal        func_8001ECCC
    /* 3582D18 8006EF7C 21300000 */   addu      $a2, $zero, $zero
  .Llevel_46_8006EF80:
    /* 3582D1C 8006EF80 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3582D20 8006EF84 1800B28F */  lw         $s2, 0x18($sp)
    /* 3582D24 8006EF88 1400B18F */  lw         $s1, 0x14($sp)
    /* 3582D28 8006EF8C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3582D2C 8006EF90 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3582D30 8006EF94 0800E003 */  jr         $ra
    /* 3582D34 8006EF98 00000000 */   nop
endlabel func_level_46_8006EE4C
