.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_45_80070078, 0xD0

glabel func_level_45_80070078
    /* 33FA614 80070078 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 33FA618 8007007C 03000224 */  addiu      $v0, $zero, 0x3
    /* 33FA61C 80070080 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 33FA620 80070084 1800B2AF */  sw         $s2, 0x18($sp)
    /* 33FA624 80070088 1400B1AF */  sw         $s1, 0x14($sp)
    /* 33FA628 8007008C 04008210 */  beq        $a0, $v0, .Llevel_45_800700A0
    /* 33FA62C 80070090 1000B0AF */   sw        $s0, 0x10($sp)
    /* 33FA630 80070094 19000224 */  addiu      $v0, $zero, 0x19
    /* 33FA634 80070098 24008214 */  bne        $a0, $v0, .Llevel_45_8007012C
    /* 33FA638 8007009C 00000000 */   nop
  .Llevel_45_800700A0:
    /* 33FA63C 800700A0 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 33FA640 800700A4 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 33FA644 800700A8 10002426 */  addiu      $a0, $s1, 0x10
    /* 33FA648 800700AC 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 33FA64C 800700B0 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 33FA650 800700B4 01000224 */  addiu      $v0, $zero, 0x1
    /* 33FA654 800700B8 000020AE */  sw         $zero, 0x0($s1)
    /* 33FA658 800700BC 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 33FA65C 800700C0 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 33FA660 800700C4 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 33FA664 800700C8 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 33FA668 800700CC 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 33FA66C 800700D0 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 33FA670 800700D4 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 33FA674 800700D8 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 33FA678 800700DC 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 33FA67C 800700E0 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 33FA680 800700E4 6C6F000C */  jal        func_8001BDB0
    /* 33FA684 800700E8 21284002 */   addu      $a1, $s2, $zero
    /* 33FA688 800700EC 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 33FA68C 800700F0 21200002 */  addu       $a0, $s0, $zero
    /* 33FA690 800700F4 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 33FA694 800700F8 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 33FA698 800700FC 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 33FA69C 80070100 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 33FA6A0 80070104 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 33FA6A4 80070108 867B000C */  jal        func_8001EE18
    /* 33FA6A8 8007010C 21304002 */   addu      $a2, $s2, $zero
    /* 33FA6AC 80070110 21200002 */  addu       $a0, $s0, $zero
    /* 33FA6B0 80070114 EA7B000C */  jal        func_8001EFA8
    /* 33FA6B4 80070118 21280002 */   addu      $a1, $s0, $zero
    /* 33FA6B8 8007011C 54002426 */  addiu      $a0, $s1, 0x54
    /* 33FA6BC 80070120 21280002 */  addu       $a1, $s0, $zero
    /* 33FA6C0 80070124 337B000C */  jal        func_8001ECCC
    /* 33FA6C4 80070128 21300000 */   addu      $a2, $zero, $zero
  .Llevel_45_8007012C:
    /* 33FA6C8 8007012C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 33FA6CC 80070130 1800B28F */  lw         $s2, 0x18($sp)
    /* 33FA6D0 80070134 1400B18F */  lw         $s1, 0x14($sp)
    /* 33FA6D4 80070138 1000B08F */  lw         $s0, 0x10($sp)
    /* 33FA6D8 8007013C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 33FA6DC 80070140 0800E003 */  jr         $ra
    /* 33FA6E0 80070144 00000000 */   nop
endlabel func_level_45_80070078
