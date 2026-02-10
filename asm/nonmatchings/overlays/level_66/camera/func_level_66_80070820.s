.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_66_80070820, 0x108

glabel func_level_66_80070820
    /* 44BB5BC 80070820 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 44BB5C0 80070824 03000224 */  addiu      $v0, $zero, 0x3
    /* 44BB5C4 80070828 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 44BB5C8 8007082C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 44BB5CC 80070830 1400B1AF */  sw         $s1, 0x14($sp)
    /* 44BB5D0 80070834 06008210 */  beq        $a0, $v0, .Llevel_66_80070850
    /* 44BB5D4 80070838 1000B0AF */   sw        $s0, 0x10($sp)
    /* 44BB5D8 8007083C 0D000224 */  addiu      $v0, $zero, 0xD
    /* 44BB5DC 80070840 10008210 */  beq        $a0, $v0, .Llevel_66_80070884
    /* 44BB5E0 80070844 01000224 */   addiu     $v0, $zero, 0x1
    /* 44BB5E4 80070848 43C20108 */  j          .Llevel_66_8007090C
    /* 44BB5E8 8007084C 00000000 */   nop
  .Llevel_66_80070850:
    /* 44BB5EC 80070850 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 44BB5F0 80070854 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 44BB5F4 80070858 10002426 */  addiu      $a0, $s1, 0x10
    /* 44BB5F8 8007085C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 44BB5FC 80070860 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 44BB600 80070864 21284002 */  addu       $a1, $s2, $zero
    /* 44BB604 80070868 000020AE */  sw         $zero, 0x0($s1)
    /* 44BB608 8007086C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 44BB60C 80070870 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 44BB610 80070874 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 44BB614 80070878 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 44BB618 8007087C 2CC20108 */  j          .Llevel_66_800708B0
    /* 44BB61C 80070880 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_66_80070884:
    /* 44BB620 80070884 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 44BB624 80070888 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 44BB628 8007088C 10002426 */  addiu      $a0, $s1, 0x10
    /* 44BB62C 80070890 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 44BB630 80070894 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 44BB634 80070898 21284002 */  addu       $a1, $s2, $zero
    /* 44BB638 8007089C 000020AE */  sw         $zero, 0x0($s1)
    /* 44BB63C 800708A0 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 44BB640 800708A4 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 44BB644 800708A8 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 44BB648 800708AC C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
  .Llevel_66_800708B0:
    /* 44BB64C 800708B0 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 44BB650 800708B4 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 44BB654 800708B8 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 44BB658 800708BC C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 44BB65C 800708C0 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 44BB660 800708C4 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 44BB664 800708C8 6C6F000C */  jal        func_8001BDB0
    /* 44BB668 800708CC 2C003026 */   addiu     $s0, $s1, 0x2C
    /* 44BB66C 800708D0 21200002 */  addu       $a0, $s0, $zero
    /* 44BB670 800708D4 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 44BB674 800708D8 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 44BB678 800708DC 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 44BB67C 800708E0 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 44BB680 800708E4 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 44BB684 800708E8 867B000C */  jal        func_8001EE18
    /* 44BB688 800708EC 21304002 */   addu      $a2, $s2, $zero
    /* 44BB68C 800708F0 21200002 */  addu       $a0, $s0, $zero
    /* 44BB690 800708F4 EA7B000C */  jal        func_8001EFA8
    /* 44BB694 800708F8 21280002 */   addu      $a1, $s0, $zero
    /* 44BB698 800708FC 54002426 */  addiu      $a0, $s1, 0x54
    /* 44BB69C 80070900 21280002 */  addu       $a1, $s0, $zero
    /* 44BB6A0 80070904 337B000C */  jal        func_8001ECCC
    /* 44BB6A4 80070908 21300000 */   addu      $a2, $zero, $zero
  .Llevel_66_8007090C:
    /* 44BB6A8 8007090C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 44BB6AC 80070910 1800B28F */  lw         $s2, 0x18($sp)
    /* 44BB6B0 80070914 1400B18F */  lw         $s1, 0x14($sp)
    /* 44BB6B4 80070918 1000B08F */  lw         $s0, 0x10($sp)
    /* 44BB6B8 8007091C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 44BB6BC 80070920 0800E003 */  jr         $ra
    /* 44BB6C0 80070924 00000000 */   nop
endlabel func_level_66_80070820
