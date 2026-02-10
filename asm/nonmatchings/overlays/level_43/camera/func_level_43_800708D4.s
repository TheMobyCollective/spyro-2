.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_43_800708D4, 0x1DC

glabel func_level_43_800708D4
    /* 2FC7E70 800708D4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FC7E74 800708D8 10000224 */  addiu      $v0, $zero, 0x10
    /* 2FC7E78 800708DC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2FC7E7C 800708E0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2FC7E80 800708E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FC7E84 800708E8 29008210 */  beq        $a0, $v0, .Llevel_43_80070990
    /* 2FC7E88 800708EC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2FC7E8C 800708F0 11008228 */  slti       $v0, $a0, 0x11
    /* 2FC7E90 800708F4 05004010 */  beqz       $v0, .Llevel_43_8007090C
    /* 2FC7E94 800708F8 03000224 */   addiu     $v0, $zero, 0x3
    /* 2FC7E98 800708FC 08008210 */  beq        $a0, $v0, .Llevel_43_80070920
    /* 2FC7E9C 80070900 00000000 */   nop
    /* 2FC7EA0 80070904 A5C20108 */  j          .Llevel_43_80070A94
    /* 2FC7EA4 80070908 00000000 */   nop
  .Llevel_43_8007090C:
    /* 2FC7EA8 8007090C 16000224 */  addiu      $v0, $zero, 0x16
    /* 2FC7EAC 80070910 3A008210 */  beq        $a0, $v0, .Llevel_43_800709FC
    /* 2FC7EB0 80070914 17000224 */   addiu     $v0, $zero, 0x17
    /* 2FC7EB4 80070918 5E008214 */  bne        $a0, $v0, .Llevel_43_80070A94
    /* 2FC7EB8 8007091C 00000000 */   nop
  .Llevel_43_80070920:
    /* 2FC7EBC 80070920 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 2FC7EC0 80070924 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 2FC7EC4 80070928 10002426 */  addiu      $a0, $s1, 0x10
    /* 2FC7EC8 8007092C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 2FC7ECC 80070930 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 2FC7ED0 80070934 01000224 */  addiu      $v0, $zero, 0x1
    /* 2FC7ED4 80070938 000020AE */  sw         $zero, 0x0($s1)
    /* 2FC7ED8 8007093C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2FC7EDC 80070940 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 2FC7EE0 80070944 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2FC7EE4 80070948 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 2FC7EE8 8007094C 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2FC7EEC 80070950 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 2FC7EF0 80070954 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 2FC7EF4 80070958 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 2FC7EF8 8007095C 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 2FC7EFC 80070960 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 2FC7F00 80070964 6C6F000C */  jal        func_8001BDB0
    /* 2FC7F04 80070968 21284002 */   addu      $a1, $s2, $zero
    /* 2FC7F08 8007096C 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 2FC7F0C 80070970 21200002 */  addu       $a0, $s0, $zero
    /* 2FC7F10 80070974 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 2FC7F14 80070978 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 2FC7F18 8007097C 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 2FC7F1C 80070980 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2FC7F20 80070984 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2FC7F24 80070988 9CC20108 */  j          .Llevel_43_80070A70
    /* 2FC7F28 8007098C 21304002 */   addu      $a2, $s2, $zero
  .Llevel_43_80070990:
    /* 2FC7F2C 80070990 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 2FC7F30 80070994 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 2FC7F34 80070998 10002426 */  addiu      $a0, $s1, 0x10
    /* 2FC7F38 8007099C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 2FC7F3C 800709A0 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 2FC7F40 800709A4 000020AE */  sw         $zero, 0x0($s1)
    /* 2FC7F44 800709A8 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2FC7F48 800709AC C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 2FC7F4C 800709B0 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2FC7F50 800709B4 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 2FC7F54 800709B8 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2FC7F58 800709BC C67F20A0 */  sb         $zero, %lo(D_80067FC6)($at)
    /* 2FC7F5C 800709C0 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 2FC7F60 800709C4 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 2FC7F64 800709C8 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 2FC7F68 800709CC E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 2FC7F6C 800709D0 6C6F000C */  jal        func_8001BDB0
    /* 2FC7F70 800709D4 21284002 */   addu      $a1, $s2, $zero
    /* 2FC7F74 800709D8 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 2FC7F78 800709DC 21200002 */  addu       $a0, $s0, $zero
    /* 2FC7F7C 800709E0 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 2FC7F80 800709E4 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 2FC7F84 800709E8 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 2FC7F88 800709EC 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2FC7F8C 800709F0 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2FC7F90 800709F4 9CC20108 */  j          .Llevel_43_80070A70
    /* 2FC7F94 800709F8 21304002 */   addu      $a2, $s2, $zero
  .Llevel_43_800709FC:
    /* 2FC7F98 800709FC 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 2FC7F9C 80070A00 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 2FC7FA0 80070A04 10003226 */  addiu      $s2, $s1, 0x10
    /* 2FC7FA4 80070A08 21204002 */  addu       $a0, $s2, $zero
    /* 2FC7FA8 80070A0C 000020AE */  sw         $zero, 0x0($s1)
    /* 2FC7FAC 80070A10 0680053C */  lui        $a1, %hi(D_80067FF0)
    /* 2FC7FB0 80070A14 F07FA58C */  lw         $a1, %lo(D_80067FF0)($a1)
    /* 2FC7FB4 80070A18 01000224 */  addiu      $v0, $zero, 0x1
    /* 2FC7FB8 80070A1C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2FC7FBC 80070A20 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 2FC7FC0 80070A24 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2FC7FC4 80070A28 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 2FC7FC8 80070A2C 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2FC7FCC 80070A30 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 2FC7FD0 80070A34 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 2FC7FD4 80070A38 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 2FC7FD8 80070A3C 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 2FC7FDC 80070A40 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 2FC7FE0 80070A44 6C6F000C */  jal        func_8001BDB0
    /* 2FC7FE4 80070A48 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 2FC7FE8 80070A4C 2C003026 */  addiu      $s0, $s1, 0x2C
    /* 2FC7FEC 80070A50 21200002 */  addu       $a0, $s0, $zero
    /* 2FC7FF0 80070A54 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 2FC7FF4 80070A58 0680023C */  lui        $v0, %hi(D_80067EEC)
    /* 2FC7FF8 80070A5C EC7E428C */  lw         $v0, %lo(D_80067EEC)($v0)
    /* 2FC7FFC 80070A60 21304002 */  addu       $a2, $s2, $zero
    /* 2FC8000 80070A64 64014224 */  addiu      $v0, $v0, 0x164
    /* 2FC8004 80070A68 0680013C */  lui        $at, %hi(D_80067EEC)
    /* 2FC8008 80070A6C EC7E22AC */  sw         $v0, %lo(D_80067EEC)($at)
  .Llevel_43_80070A70:
    /* 2FC800C 80070A70 867B000C */  jal        func_8001EE18
    /* 2FC8010 80070A74 00000000 */   nop
    /* 2FC8014 80070A78 21200002 */  addu       $a0, $s0, $zero
    /* 2FC8018 80070A7C EA7B000C */  jal        func_8001EFA8
    /* 2FC801C 80070A80 21280002 */   addu      $a1, $s0, $zero
    /* 2FC8020 80070A84 54002426 */  addiu      $a0, $s1, 0x54
    /* 2FC8024 80070A88 21280002 */  addu       $a1, $s0, $zero
    /* 2FC8028 80070A8C 337B000C */  jal        func_8001ECCC
    /* 2FC802C 80070A90 21300000 */   addu      $a2, $zero, $zero
  .Llevel_43_80070A94:
    /* 2FC8030 80070A94 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2FC8034 80070A98 1800B28F */  lw         $s2, 0x18($sp)
    /* 2FC8038 80070A9C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FC803C 80070AA0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FC8040 80070AA4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2FC8044 80070AA8 0800E003 */  jr         $ra
    /* 2FC8048 80070AAC 00000000 */   nop
endlabel func_level_43_800708D4
