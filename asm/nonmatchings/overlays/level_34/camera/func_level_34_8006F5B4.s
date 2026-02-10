.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_34_8006F5B4, 0x14C

glabel func_level_34_8006F5B4
    /* 27AC350 8006F5B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 27AC354 8006F5B8 0E000224 */  addiu      $v0, $zero, 0xE
    /* 27AC358 8006F5BC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 27AC35C 8006F5C0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 27AC360 8006F5C4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 27AC364 8006F5C8 12008210 */  beq        $a0, $v0, .Llevel_34_8006F614
    /* 27AC368 8006F5CC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 27AC36C 8006F5D0 17000224 */  addiu      $v0, $zero, 0x17
    /* 27AC370 8006F5D4 43008214 */  bne        $a0, $v0, .Llevel_34_8006F6E4
    /* 27AC374 8006F5D8 01000224 */   addiu     $v0, $zero, 0x1
    /* 27AC378 8006F5DC 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 27AC37C 8006F5E0 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 27AC380 8006F5E4 10002426 */  addiu      $a0, $s1, 0x10
    /* 27AC384 8006F5E8 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 27AC388 8006F5EC F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 27AC38C 8006F5F0 000020AE */  sw         $zero, 0x0($s1)
    /* 27AC390 8006F5F4 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 27AC394 8006F5F8 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 27AC398 8006F5FC 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 27AC39C 8006F600 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 27AC3A0 8006F604 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 27AC3A4 8006F608 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 27AC3A8 8006F60C A0BD0108 */  j          .Llevel_34_8006F680
    /* 27AC3AC 8006F610 21284002 */   addu      $a1, $s2, $zero
  .Llevel_34_8006F614:
    /* 27AC3B0 8006F614 0680023C */  lui        $v0, %hi(D_80067FF0)
    /* 27AC3B4 8006F618 F07F428C */  lw         $v0, %lo(D_80067FF0)($v0)
    /* 27AC3B8 8006F61C 0680013C */  lui        $at, %hi(D_80067ED4)
    /* 27AC3BC 8006F620 D47E20AC */  sw         $zero, %lo(D_80067ED4)($at)
    /* 27AC3C0 8006F624 36004384 */  lh         $v1, 0x36($v0)
    /* 27AC3C4 8006F628 73010224 */  addiu      $v0, $zero, 0x173
    /* 27AC3C8 8006F62C 03006210 */  beq        $v1, $v0, .Llevel_34_8006F63C
    /* 27AC3CC 8006F630 93020224 */   addiu     $v0, $zero, 0x293
    /* 27AC3D0 8006F634 06006214 */  bne        $v1, $v0, .Llevel_34_8006F650
    /* 27AC3D4 8006F638 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_34_8006F63C:
    /* 27AC3D8 8006F63C 01000224 */  addiu      $v0, $zero, 0x1
    /* 27AC3DC 8006F640 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 27AC3E0 8006F644 C47F22A0 */  sb         $v0, %lo(D_80067FC4)($at)
    /* 27AC3E4 8006F648 96BD0108 */  j          .Llevel_34_8006F658
    /* 27AC3E8 8006F64C 00000000 */   nop
  .Llevel_34_8006F650:
    /* 27AC3EC 8006F650 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 27AC3F0 8006F654 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
  .Llevel_34_8006F658:
    /* 27AC3F4 8006F658 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 27AC3F8 8006F65C C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
    /* 27AC3FC 8006F660 0680113C */  lui        $s1, %hi(D_80067FC6)
    /* 27AC400 8006F664 C67F3126 */  addiu      $s1, $s1, %lo(D_80067FC6)
    /* 27AC404 8006F668 1EFF2426 */  addiu      $a0, $s1, -0xE2
    /* 27AC408 8006F66C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 27AC40C 8006F670 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 27AC410 8006F674 21284002 */  addu       $a1, $s2, $zero
    /* 27AC414 8006F678 01000224 */  addiu      $v0, $zero, 0x1
    /* 27AC418 8006F67C 000022A2 */  sb         $v0, 0x0($s1)
  .Llevel_34_8006F680:
    /* 27AC41C 8006F680 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 27AC420 8006F684 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 27AC424 8006F688 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 27AC428 8006F68C E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 27AC42C 8006F690 6C6F000C */  jal        func_8001BDB0
    /* 27AC430 8006F694 00000000 */   nop
    /* 27AC434 8006F698 0680103C */  lui        $s0, %hi(D_80067F00)
    /* 27AC438 8006F69C 007F1026 */  addiu      $s0, $s0, %lo(D_80067F00)
    /* 27AC43C 8006F6A0 21200002 */  addu       $a0, $s0, $zero
    /* 27AC440 8006F6A4 0680053C */  lui        $a1, %hi(D_80067EAC)
    /* 27AC444 8006F6A8 AC7EA524 */  addiu      $a1, $a1, %lo(D_80067EAC)
    /* 27AC448 8006F6AC 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 27AC44C 8006F6B0 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 27AC450 8006F6B4 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 27AC454 8006F6B8 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 27AC458 8006F6BC 867B000C */  jal        func_8001EE18
    /* 27AC45C 8006F6C0 21304002 */   addu      $a2, $s2, $zero
    /* 27AC460 8006F6C4 21200002 */  addu       $a0, $s0, $zero
    /* 27AC464 8006F6C8 EA7B000C */  jal        func_8001EFA8
    /* 27AC468 8006F6CC 21280002 */   addu      $a1, $s0, $zero
    /* 27AC46C 8006F6D0 0680043C */  lui        $a0, %hi(D_80067F28)
    /* 27AC470 8006F6D4 287F8424 */  addiu      $a0, $a0, %lo(D_80067F28)
    /* 27AC474 8006F6D8 21280002 */  addu       $a1, $s0, $zero
    /* 27AC478 8006F6DC 337B000C */  jal        func_8001ECCC
    /* 27AC47C 8006F6E0 21300000 */   addu      $a2, $zero, $zero
  .Llevel_34_8006F6E4:
    /* 27AC480 8006F6E4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 27AC484 8006F6E8 1800B28F */  lw         $s2, 0x18($sp)
    /* 27AC488 8006F6EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 27AC48C 8006F6F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 27AC490 8006F6F4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 27AC494 8006F6F8 0800E003 */  jr         $ra
    /* 27AC498 8006F6FC 00000000 */   nop
endlabel func_level_34_8006F5B4
