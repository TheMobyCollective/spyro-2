.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F2E4, 0x1C0

glabel func_8001F2E4
    /* FAE4 8001F2E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* FAE8 8001F2E8 1800B2AF */  sw         $s2, 0x18($sp)
    /* FAEC 8001F2EC 0680123C */  lui        $s2, %hi(D_80067ED0)
    /* FAF0 8001F2F0 D07E5226 */  addiu      $s2, $s2, %lo(D_80067ED0)
    /* FAF4 8001F2F4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* FAF8 8001F2F8 1400B1AF */  sw         $s1, 0x14($sp)
    /* FAFC 8001F2FC 1000B0AF */  sw         $s0, 0x10($sp)
    /* FB00 8001F300 0000438E */  lw         $v1, 0x0($s2)
    /* FB04 8001F304 09000224 */  addiu      $v0, $zero, 0x9
    /* FB08 8001F308 2D006214 */  bne        $v1, $v0, .L8001F3C0
    /* FB0C 8001F30C 00000000 */   nop
    /* FB10 8001F310 0B008010 */  beqz       $a0, .L8001F340
    /* FB14 8001F314 14005126 */   addiu     $s1, $s2, 0x14
    /* FB18 8001F318 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* FB1C 8001F31C F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* FB20 8001F320 6C6F000C */  jal        func_8001BDB0
    /* FB24 8001F324 38014426 */   addiu     $a0, $s2, 0x138
    /* FB28 8001F328 24014426 */  addiu      $a0, $s2, 0x124
    /* FB2C 8001F32C 44014526 */  addiu      $a1, $s2, 0x144
    /* FB30 8001F330 337B000C */  jal        func_8001ECCC
    /* FB34 8001F334 21300000 */   addu      $a2, $zero, $zero
    /* FB38 8001F338 1E7D0008 */  j          .L8001F478
    /* FB3C 8001F33C 80000224 */   addiu     $v0, $zero, 0x80
  .L8001F340:
    /* FB40 8001F340 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* FB44 8001F344 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* FB48 8001F348 0680013C */  lui        $at, %hi(D_80067FEC)
    /* FB4C 8001F34C EC7F20AC */  sw         $zero, %lo(D_80067FEC)($at)
    /* FB50 8001F350 6C6F000C */  jal        func_8001BDB0
    /* FB54 8001F354 21202002 */   addu      $a0, $s1, $zero
    /* FB58 8001F358 30005026 */  addiu      $s0, $s2, 0x30
    /* FB5C 8001F35C 21200002 */  addu       $a0, $s0, $zero
    /* FB60 8001F360 DCFF4526 */  addiu      $a1, $s2, -0x24
    /* FB64 8001F364 867B000C */  jal        func_8001EE18
    /* FB68 8001F368 21302002 */   addu      $a2, $s1, $zero
    /* FB6C 8001F36C 21200002 */  addu       $a0, $s0, $zero
    /* FB70 8001F370 0680013C */  lui        $at, %hi(D_80067FC7)
    /* FB74 8001F374 C77F22A0 */  sb         $v0, %lo(D_80067FC7)($at)
    /* FB78 8001F378 EA7B000C */  jal        func_8001EFA8
    /* FB7C 8001F37C 21280002 */   addu      $a1, $s0, $zero
    /* FB80 8001F380 58004426 */  addiu      $a0, $s2, 0x58
    /* FB84 8001F384 21280002 */  addu       $a1, $s0, $zero
    /* FB88 8001F388 337B000C */  jal        func_8001ECCC
    /* FB8C 8001F38C 21300000 */   addu      $a2, $zero, $zero
    /* FB90 8001F390 0780023C */  lui        $v0, %hi(D_8006A040)
    /* FB94 8001F394 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* FB98 8001F398 00000000 */  nop
    /* FB9C 8001F39C 80100200 */  sll        $v0, $v0, 2
    /* FBA0 8001F3A0 0680013C */  lui        $at, %hi(D_80061468)
    /* FBA4 8001F3A4 21082200 */  addu       $at, $at, $v0
    /* FBA8 8001F3A8 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* FBAC 8001F3AC 00000000 */  nop
    /* FBB0 8001F3B0 26008010 */  beqz       $a0, .L8001F44C
    /* FBB4 8001F3B4 00000000 */   nop
    /* FBB8 8001F3B8 147D0008 */  j          .L8001F450
    /* FBBC 8001F3BC 00000000 */   nop
  .L8001F3C0:
    /* FBC0 8001F3C0 0A000224 */  addiu      $v0, $zero, 0xA
    /* FBC4 8001F3C4 30006214 */  bne        $v1, $v0, .L8001F488
    /* FBC8 8001F3C8 00000000 */   nop
    /* FBCC 8001F3CC 24008014 */  bnez       $a0, .L8001F460
    /* FBD0 8001F3D0 14005126 */   addiu     $s1, $s2, 0x14
    /* FBD4 8001F3D4 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* FBD8 8001F3D8 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* FBDC 8001F3DC 0680013C */  lui        $at, %hi(D_80067FEC)
    /* FBE0 8001F3E0 EC7F20AC */  sw         $zero, %lo(D_80067FEC)($at)
    /* FBE4 8001F3E4 6C6F000C */  jal        func_8001BDB0
    /* FBE8 8001F3E8 21202002 */   addu      $a0, $s1, $zero
    /* FBEC 8001F3EC 30005026 */  addiu      $s0, $s2, 0x30
    /* FBF0 8001F3F0 21200002 */  addu       $a0, $s0, $zero
    /* FBF4 8001F3F4 DCFF4526 */  addiu      $a1, $s2, -0x24
    /* FBF8 8001F3F8 867B000C */  jal        func_8001EE18
    /* FBFC 8001F3FC 21302002 */   addu      $a2, $s1, $zero
    /* FC00 8001F400 21200002 */  addu       $a0, $s0, $zero
    /* FC04 8001F404 0680013C */  lui        $at, %hi(D_80067FC7)
    /* FC08 8001F408 C77F22A0 */  sb         $v0, %lo(D_80067FC7)($at)
    /* FC0C 8001F40C EA7B000C */  jal        func_8001EFA8
    /* FC10 8001F410 21280002 */   addu      $a1, $s0, $zero
    /* FC14 8001F414 58004426 */  addiu      $a0, $s2, 0x58
    /* FC18 8001F418 21280002 */  addu       $a1, $s0, $zero
    /* FC1C 8001F41C 337B000C */  jal        func_8001ECCC
    /* FC20 8001F420 21300000 */   addu      $a2, $zero, $zero
    /* FC24 8001F424 0780023C */  lui        $v0, %hi(D_8006A040)
    /* FC28 8001F428 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* FC2C 8001F42C 00000000 */  nop
    /* FC30 8001F430 80100200 */  sll        $v0, $v0, 2
    /* FC34 8001F434 0680013C */  lui        $at, %hi(D_80061468)
    /* FC38 8001F438 21082200 */  addu       $at, $at, $v0
    /* FC3C 8001F43C 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* FC40 8001F440 00000000 */  nop
    /* FC44 8001F444 02008014 */  bnez       $a0, .L8001F450
    /* FC48 8001F448 00000000 */   nop
  .L8001F44C:
    /* FC4C 8001F44C 06000424 */  addiu      $a0, $zero, 0x6
  .L8001F450:
    /* FC50 8001F450 B685000C */  jal        func_800216D8
    /* FC54 8001F454 00000000 */   nop
    /* FC58 8001F458 227D0008 */  j          .L8001F488
    /* FC5C 8001F45C 00000000 */   nop
  .L8001F460:
    /* FC60 8001F460 0680023C */  lui        $v0, %hi(D_80067ED4)
    /* FC64 8001F464 D47E428C */  lw         $v0, %lo(D_80067ED4)($v0)
    /* FC68 8001F468 00000000 */  nop
    /* FC6C 8001F46C 80004230 */  andi       $v0, $v0, 0x80
    /* FC70 8001F470 05004014 */  bnez       $v0, .L8001F488
    /* FC74 8001F474 80000224 */   addiu     $v0, $zero, 0x80
  .L8001F478:
    /* FC78 8001F478 0680013C */  lui        $at, %hi(D_80067ED4)
    /* FC7C 8001F47C D47E22AC */  sw         $v0, %lo(D_80067ED4)($at)
    /* FC80 8001F480 0680013C */  lui        $at, %hi(D_80067ED8)
    /* FC84 8001F484 D87E20AC */  sw         $zero, %lo(D_80067ED8)($at)
  .L8001F488:
    /* FC88 8001F488 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* FC8C 8001F48C 1800B28F */  lw         $s2, 0x18($sp)
    /* FC90 8001F490 1400B18F */  lw         $s1, 0x14($sp)
    /* FC94 8001F494 1000B08F */  lw         $s0, 0x10($sp)
    /* FC98 8001F498 2000BD27 */  addiu      $sp, $sp, 0x20
    /* FC9C 8001F49C 0800E003 */  jr         $ra
    /* FCA0 8001F4A0 00000000 */   nop
endlabel func_8001F2E4
