.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_23_8007108C, 0x140

glabel func_level_23_8007108C
    /* 19AEE28 8007108C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 19AEE2C 80071090 04000224 */  addiu      $v0, $zero, 0x4
    /* 19AEE30 80071094 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 19AEE34 80071098 1800B2AF */  sw         $s2, 0x18($sp)
    /* 19AEE38 8007109C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 19AEE3C 800710A0 06008210 */  beq        $a0, $v0, .Llevel_23_800710BC
    /* 19AEE40 800710A4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 19AEE44 800710A8 13000224 */  addiu      $v0, $zero, 0x13
    /* 19AEE48 800710AC 1F008210 */  beq        $a0, $v0, .Llevel_23_8007112C
    /* 19AEE4C 800710B0 01000224 */   addiu     $v0, $zero, 0x1
    /* 19AEE50 800710B4 6CC40108 */  j          .Llevel_23_800711B0
    /* 19AEE54 800710B8 00000000 */   nop
  .Llevel_23_800710BC:
    /* 19AEE58 800710BC 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 19AEE5C 800710C0 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 19AEE60 800710C4 10002426 */  addiu      $a0, $s1, 0x10
    /* 19AEE64 800710C8 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 19AEE68 800710CC F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 19AEE6C 800710D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 19AEE70 800710D4 000020AE */  sw         $zero, 0x0($s1)
    /* 19AEE74 800710D8 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 19AEE78 800710DC C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 19AEE7C 800710E0 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 19AEE80 800710E4 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 19AEE84 800710E8 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 19AEE88 800710EC C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 19AEE8C 800710F0 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 19AEE90 800710F4 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 19AEE94 800710F8 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 19AEE98 800710FC E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 19AEE9C 80071100 6C6F000C */  jal        func_8001BDB0
    /* 19AEEA0 80071104 21284002 */   addu      $a1, $s2, $zero
    /* 19AEEA4 80071108 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 19AEEA8 8007110C 21200002 */  addu       $a0, $s0, $zero
    /* 19AEEAC 80071110 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 19AEEB0 80071114 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 19AEEB4 80071118 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 19AEEB8 8007111C 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 19AEEBC 80071120 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 19AEEC0 80071124 5EC40108 */  j          .Llevel_23_80071178
    /* 19AEEC4 80071128 21304002 */   addu      $a2, $s2, $zero
  .Llevel_23_8007112C:
    /* 19AEEC8 8007112C 0680103C */  lui        $s0, %hi(D_80067ED4)
    /* 19AEECC 80071130 D47E1026 */  addiu      $s0, $s0, %lo(D_80067ED4)
    /* 19AEED0 80071134 2C001126 */  addiu      $s1, $s0, 0x2C
    /* 19AEED4 80071138 21202002 */  addu       $a0, $s1, $zero
    /* 19AEED8 8007113C D8FF0526 */  addiu      $a1, $s0, -0x28
    /* 19AEEDC 80071140 000000AE */  sw         $zero, 0x0($s0)
    /* 19AEEE0 80071144 0680063C */  lui        $a2, %hi(D_80067FF0)
    /* 19AEEE4 80071148 F07FC68C */  lw         $a2, %lo(D_80067FF0)($a2)
    /* 19AEEE8 8007114C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 19AEEEC 80071150 C47F22A0 */  sb         $v0, %lo(D_80067FC4)($at)
    /* 19AEEF0 80071154 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 19AEEF4 80071158 C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
    /* 19AEEF8 8007115C 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 19AEEFC 80071160 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 19AEF00 80071164 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 19AEF04 80071168 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 19AEF08 8007116C 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 19AEF0C 80071170 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 19AEF10 80071174 0C00C624 */  addiu      $a2, $a2, 0xC
  .Llevel_23_80071178:
    /* 19AEF14 80071178 867B000C */  jal        func_8001EE18
    /* 19AEF18 8007117C 00000000 */   nop
    /* 19AEF1C 80071180 0680043C */  lui        $a0, %hi(D_80067F00)
    /* 19AEF20 80071184 007F8424 */  addiu      $a0, $a0, %lo(D_80067F00)
    /* 19AEF24 80071188 0680053C */  lui        $a1, %hi(D_80067F00)
    /* 19AEF28 8007118C 007FA524 */  addiu      $a1, $a1, %lo(D_80067F00)
    /* 19AEF2C 80071190 EA7B000C */  jal        func_8001EFA8
    /* 19AEF30 80071194 00000000 */   nop
    /* 19AEF34 80071198 0680043C */  lui        $a0, %hi(D_80067F28)
    /* 19AEF38 8007119C 287F8424 */  addiu      $a0, $a0, %lo(D_80067F28)
    /* 19AEF3C 800711A0 0680053C */  lui        $a1, %hi(D_80067F00)
    /* 19AEF40 800711A4 007FA524 */  addiu      $a1, $a1, %lo(D_80067F00)
    /* 19AEF44 800711A8 337B000C */  jal        func_8001ECCC
    /* 19AEF48 800711AC 21300000 */   addu      $a2, $zero, $zero
  .Llevel_23_800711B0:
    /* 19AEF4C 800711B0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 19AEF50 800711B4 1800B28F */  lw         $s2, 0x18($sp)
    /* 19AEF54 800711B8 1400B18F */  lw         $s1, 0x14($sp)
    /* 19AEF58 800711BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 19AEF5C 800711C0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 19AEF60 800711C4 0800E003 */  jr         $ra
    /* 19AEF64 800711C8 00000000 */   nop
endlabel func_level_23_8007108C
