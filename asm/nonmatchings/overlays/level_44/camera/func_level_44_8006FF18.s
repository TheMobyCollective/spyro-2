.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_44_8006FF18, 0x138

glabel func_level_44_8006FF18
    /* 31D74B4 8006FF18 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 31D74B8 8006FF1C 11000224 */  addiu      $v0, $zero, 0x11
    /* 31D74BC 8006FF20 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 31D74C0 8006FF24 1800B2AF */  sw         $s2, 0x18($sp)
    /* 31D74C4 8006FF28 1400B1AF */  sw         $s1, 0x14($sp)
    /* 31D74C8 8006FF2C 0D008210 */  beq        $a0, $v0, .Llevel_44_8006FF64
    /* 31D74CC 8006FF30 1000B0AF */   sw        $s0, 0x10($sp)
    /* 31D74D0 8006FF34 12008228 */  slti       $v0, $a0, 0x12
    /* 31D74D4 8006FF38 05004010 */  beqz       $v0, .Llevel_44_8006FF50
    /* 31D74D8 8006FF3C 0C000224 */   addiu     $v0, $zero, 0xC
    /* 31D74DC 8006FF40 19008210 */  beq        $a0, $v0, .Llevel_44_8006FFA8
    /* 31D74E0 8006FF44 00000000 */   nop
    /* 31D74E4 8006FF48 0DC00108 */  j          .Llevel_44_80070034
    /* 31D74E8 8006FF4C 00000000 */   nop
  .Llevel_44_8006FF50:
    /* 31D74EC 8006FF50 17000224 */  addiu      $v0, $zero, 0x17
    /* 31D74F0 8006FF54 14008210 */  beq        $a0, $v0, .Llevel_44_8006FFA8
    /* 31D74F4 8006FF58 00000000 */   nop
    /* 31D74F8 8006FF5C 0DC00108 */  j          .Llevel_44_80070034
    /* 31D74FC 8006FF60 00000000 */   nop
  .Llevel_44_8006FF64:
    /* 31D7500 8006FF64 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 31D7504 8006FF68 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 31D7508 8006FF6C 10002426 */  addiu      $a0, $s1, 0x10
    /* 31D750C 8006FF70 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 31D7510 8006FF74 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 31D7514 8006FF78 01000224 */  addiu      $v0, $zero, 0x1
    /* 31D7518 8006FF7C 000020AE */  sw         $zero, 0x0($s1)
    /* 31D751C 8006FF80 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 31D7520 8006FF84 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 31D7524 8006FF88 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 31D7528 8006FF8C C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 31D752C 8006FF90 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 31D7530 8006FF94 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 31D7534 8006FF98 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 31D7538 8006FF9C C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 31D753C 8006FFA0 FCBF0108 */  j          .Llevel_44_8006FFF0
    /* 31D7540 8006FFA4 21284002 */   addu      $a1, $s2, $zero
  .Llevel_44_8006FFA8:
    /* 31D7544 8006FFA8 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 31D7548 8006FFAC D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 31D754C 8006FFB0 10002426 */  addiu      $a0, $s1, 0x10
    /* 31D7550 8006FFB4 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 31D7554 8006FFB8 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 31D7558 8006FFBC 21284002 */  addu       $a1, $s2, $zero
    /* 31D755C 8006FFC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 31D7560 8006FFC4 000020AE */  sw         $zero, 0x0($s1)
    /* 31D7564 8006FFC8 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 31D7568 8006FFCC C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 31D756C 8006FFD0 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 31D7570 8006FFD4 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 31D7574 8006FFD8 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 31D7578 8006FFDC C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 31D757C 8006FFE0 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 31D7580 8006FFE4 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 31D7584 8006FFE8 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 31D7588 8006FFEC E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
  .Llevel_44_8006FFF0:
    /* 31D758C 8006FFF0 6C6F000C */  jal        func_8001BDB0
    /* 31D7590 8006FFF4 2C003026 */   addiu     $s0, $s1, 0x2C
    /* 31D7594 8006FFF8 21200002 */  addu       $a0, $s0, $zero
    /* 31D7598 8006FFFC D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 31D759C 80070000 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 31D75A0 80070004 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 31D75A4 80070008 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 31D75A8 8007000C F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 31D75AC 80070010 867B000C */  jal        func_8001EE18
    /* 31D75B0 80070014 21304002 */   addu      $a2, $s2, $zero
    /* 31D75B4 80070018 21200002 */  addu       $a0, $s0, $zero
    /* 31D75B8 8007001C EA7B000C */  jal        func_8001EFA8
    /* 31D75BC 80070020 21280002 */   addu      $a1, $s0, $zero
    /* 31D75C0 80070024 54002426 */  addiu      $a0, $s1, 0x54
    /* 31D75C4 80070028 21280002 */  addu       $a1, $s0, $zero
    /* 31D75C8 8007002C 337B000C */  jal        func_8001ECCC
    /* 31D75CC 80070030 21300000 */   addu      $a2, $zero, $zero
  .Llevel_44_80070034:
    /* 31D75D0 80070034 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 31D75D4 80070038 1800B28F */  lw         $s2, 0x18($sp)
    /* 31D75D8 8007003C 1400B18F */  lw         $s1, 0x14($sp)
    /* 31D75DC 80070040 1000B08F */  lw         $s0, 0x10($sp)
    /* 31D75E0 80070044 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 31D75E4 80070048 0800E003 */  jr         $ra
    /* 31D75E8 8007004C 00000000 */   nop
endlabel func_level_44_8006FF18
