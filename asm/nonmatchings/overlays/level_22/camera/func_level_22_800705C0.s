.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_22_800705C0, 0xD0

glabel func_level_22_800705C0
    /* 178E35C 800705C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 178E360 800705C4 04000224 */  addiu      $v0, $zero, 0x4
    /* 178E364 800705C8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 178E368 800705CC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 178E36C 800705D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 178E370 800705D4 04008210 */  beq        $a0, $v0, .Llevel_22_800705E8
    /* 178E374 800705D8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 178E378 800705DC 0F000224 */  addiu      $v0, $zero, 0xF
    /* 178E37C 800705E0 24008214 */  bne        $a0, $v0, .Llevel_22_80070674
    /* 178E380 800705E4 00000000 */   nop
  .Llevel_22_800705E8:
    /* 178E384 800705E8 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 178E388 800705EC D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 178E38C 800705F0 10002426 */  addiu      $a0, $s1, 0x10
    /* 178E390 800705F4 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 178E394 800705F8 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 178E398 800705FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 178E39C 80070600 000020AE */  sw         $zero, 0x0($s1)
    /* 178E3A0 80070604 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 178E3A4 80070608 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 178E3A8 8007060C 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 178E3AC 80070610 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 178E3B0 80070614 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 178E3B4 80070618 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 178E3B8 8007061C 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 178E3BC 80070620 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 178E3C0 80070624 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 178E3C4 80070628 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 178E3C8 8007062C 6C6F000C */  jal        func_8001BDB0
    /* 178E3CC 80070630 21284002 */   addu      $a1, $s2, $zero
    /* 178E3D0 80070634 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 178E3D4 80070638 21200002 */  addu       $a0, $s0, $zero
    /* 178E3D8 8007063C D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 178E3DC 80070640 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 178E3E0 80070644 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 178E3E4 80070648 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 178E3E8 8007064C F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 178E3EC 80070650 867B000C */  jal        func_8001EE18
    /* 178E3F0 80070654 21304002 */   addu      $a2, $s2, $zero
    /* 178E3F4 80070658 21200002 */  addu       $a0, $s0, $zero
    /* 178E3F8 8007065C EA7B000C */  jal        func_8001EFA8
    /* 178E3FC 80070660 21280002 */   addu      $a1, $s0, $zero
    /* 178E400 80070664 54002426 */  addiu      $a0, $s1, 0x54
    /* 178E404 80070668 21280002 */  addu       $a1, $s0, $zero
    /* 178E408 8007066C 337B000C */  jal        func_8001ECCC
    /* 178E40C 80070670 21300000 */   addu      $a2, $zero, $zero
  .Llevel_22_80070674:
    /* 178E410 80070674 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 178E414 80070678 1800B28F */  lw         $s2, 0x18($sp)
    /* 178E418 8007067C 1400B18F */  lw         $s1, 0x14($sp)
    /* 178E41C 80070680 1000B08F */  lw         $s0, 0x10($sp)
    /* 178E420 80070684 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 178E424 80070688 0800E003 */  jr         $ra
    /* 178E428 8007068C 00000000 */   nop
endlabel func_level_22_800705C0
