.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_41_8006F1EC, 0x110

glabel func_level_41_8006F1EC
    /* 2BBA788 8006F1EC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2BBA78C 8006F1F0 15000224 */  addiu      $v0, $zero, 0x15
    /* 2BBA790 8006F1F4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2BBA794 8006F1F8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2BBA798 8006F1FC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2BBA79C 8006F200 14008210 */  beq        $a0, $v0, .Llevel_41_8006F254
    /* 2BBA7A0 8006F204 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2BBA7A4 8006F208 15008228 */  slti       $v0, $a0, 0x15
    /* 2BBA7A8 8006F20C 34004014 */  bnez       $v0, .Llevel_41_8006F2E0
    /* 2BBA7AC 8006F210 19008228 */   slti      $v0, $a0, 0x19
    /* 2BBA7B0 8006F214 32004010 */  beqz       $v0, .Llevel_41_8006F2E0
    /* 2BBA7B4 8006F218 17008228 */   slti      $v0, $a0, 0x17
    /* 2BBA7B8 8006F21C 30004014 */  bnez       $v0, .Llevel_41_8006F2E0
    /* 2BBA7BC 8006F220 01000224 */   addiu     $v0, $zero, 0x1
    /* 2BBA7C0 8006F224 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 2BBA7C4 8006F228 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 2BBA7C8 8006F22C 10002426 */  addiu      $a0, $s1, 0x10
    /* 2BBA7CC 8006F230 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 2BBA7D0 8006F234 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 2BBA7D4 8006F238 000020AE */  sw         $zero, 0x0($s1)
    /* 2BBA7D8 8006F23C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2BBA7DC 8006F240 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 2BBA7E0 8006F244 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2BBA7E4 8006F248 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 2BBA7E8 8006F24C A1BC0108 */  j          .Llevel_41_8006F284
    /* 2BBA7EC 8006F250 21284002 */   addu      $a1, $s2, $zero
  .Llevel_41_8006F254:
    /* 2BBA7F0 8006F254 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 2BBA7F4 8006F258 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 2BBA7F8 8006F25C 10002426 */  addiu      $a0, $s1, 0x10
    /* 2BBA7FC 8006F260 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 2BBA800 8006F264 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 2BBA804 8006F268 21284002 */  addu       $a1, $s2, $zero
    /* 2BBA808 8006F26C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BBA80C 8006F270 000020AE */  sw         $zero, 0x0($s1)
    /* 2BBA810 8006F274 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2BBA814 8006F278 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 2BBA818 8006F27C 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2BBA81C 8006F280 C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
  .Llevel_41_8006F284:
    /* 2BBA820 8006F284 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2BBA824 8006F288 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 2BBA828 8006F28C 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 2BBA82C 8006F290 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 2BBA830 8006F294 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 2BBA834 8006F298 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 2BBA838 8006F29C 6C6F000C */  jal        func_8001BDB0
    /* 2BBA83C 8006F2A0 2C003026 */   addiu     $s0, $s1, 0x2C
    /* 2BBA840 8006F2A4 21200002 */  addu       $a0, $s0, $zero
    /* 2BBA844 8006F2A8 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 2BBA848 8006F2AC 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 2BBA84C 8006F2B0 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 2BBA850 8006F2B4 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2BBA854 8006F2B8 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2BBA858 8006F2BC 867B000C */  jal        func_8001EE18
    /* 2BBA85C 8006F2C0 21304002 */   addu      $a2, $s2, $zero
    /* 2BBA860 8006F2C4 21200002 */  addu       $a0, $s0, $zero
    /* 2BBA864 8006F2C8 EA7B000C */  jal        func_8001EFA8
    /* 2BBA868 8006F2CC 21280002 */   addu      $a1, $s0, $zero
    /* 2BBA86C 8006F2D0 54002426 */  addiu      $a0, $s1, 0x54
    /* 2BBA870 8006F2D4 21280002 */  addu       $a1, $s0, $zero
    /* 2BBA874 8006F2D8 337B000C */  jal        func_8001ECCC
    /* 2BBA878 8006F2DC 21300000 */   addu      $a2, $zero, $zero
  .Llevel_41_8006F2E0:
    /* 2BBA87C 8006F2E0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2BBA880 8006F2E4 1800B28F */  lw         $s2, 0x18($sp)
    /* 2BBA884 8006F2E8 1400B18F */  lw         $s1, 0x14($sp)
    /* 2BBA888 8006F2EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2BBA88C 8006F2F0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2BBA890 8006F2F4 0800E003 */  jr         $ra
    /* 2BBA894 8006F2F8 00000000 */   nop
endlabel func_level_41_8006F1EC
