.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_55_80070628, 0xD0

glabel func_level_55_80070628
    /* 3D20BC4 80070628 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3D20BC8 8007062C 03000224 */  addiu      $v0, $zero, 0x3
    /* 3D20BCC 80070630 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3D20BD0 80070634 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3D20BD4 80070638 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3D20BD8 8007063C 04008210 */  beq        $a0, $v0, .Llevel_55_80070650
    /* 3D20BDC 80070640 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3D20BE0 80070644 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 3D20BE4 80070648 24008214 */  bne        $a0, $v0, .Llevel_55_800706DC
    /* 3D20BE8 8007064C 00000000 */   nop
  .Llevel_55_80070650:
    /* 3D20BEC 80070650 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 3D20BF0 80070654 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 3D20BF4 80070658 10002426 */  addiu      $a0, $s1, 0x10
    /* 3D20BF8 8007065C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 3D20BFC 80070660 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 3D20C00 80070664 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D20C04 80070668 000020AE */  sw         $zero, 0x0($s1)
    /* 3D20C08 8007066C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 3D20C0C 80070670 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 3D20C10 80070674 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 3D20C14 80070678 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 3D20C18 8007067C 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 3D20C1C 80070680 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 3D20C20 80070684 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 3D20C24 80070688 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 3D20C28 8007068C 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 3D20C2C 80070690 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 3D20C30 80070694 6C6F000C */  jal        func_8001BDB0
    /* 3D20C34 80070698 21284002 */   addu      $a1, $s2, $zero
    /* 3D20C38 8007069C 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 3D20C3C 800706A0 21200002 */  addu       $a0, $s0, $zero
    /* 3D20C40 800706A4 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 3D20C44 800706A8 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 3D20C48 800706AC 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 3D20C4C 800706B0 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 3D20C50 800706B4 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 3D20C54 800706B8 867B000C */  jal        func_8001EE18
    /* 3D20C58 800706BC 21304002 */   addu      $a2, $s2, $zero
    /* 3D20C5C 800706C0 21200002 */  addu       $a0, $s0, $zero
    /* 3D20C60 800706C4 EA7B000C */  jal        func_8001EFA8
    /* 3D20C64 800706C8 21280002 */   addu      $a1, $s0, $zero
    /* 3D20C68 800706CC 54002426 */  addiu      $a0, $s1, 0x54
    /* 3D20C6C 800706D0 21280002 */  addu       $a1, $s0, $zero
    /* 3D20C70 800706D4 337B000C */  jal        func_8001ECCC
    /* 3D20C74 800706D8 21300000 */   addu      $a2, $zero, $zero
  .Llevel_55_800706DC:
    /* 3D20C78 800706DC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3D20C7C 800706E0 1800B28F */  lw         $s2, 0x18($sp)
    /* 3D20C80 800706E4 1400B18F */  lw         $s1, 0x14($sp)
    /* 3D20C84 800706E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 3D20C88 800706EC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3D20C8C 800706F0 0800E003 */  jr         $ra
    /* 3D20C90 800706F4 00000000 */   nop
endlabel func_level_55_80070628
