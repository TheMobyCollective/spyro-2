.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_42_8006F570, 0x11C

glabel func_level_42_8006F570
    /* 2DD0B0C 8006F570 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2DD0B10 8006F574 15000224 */  addiu      $v0, $zero, 0x15
    /* 2DD0B14 8006F578 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2DD0B18 8006F57C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2DD0B1C 8006F580 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2DD0B20 8006F584 17008210 */  beq        $a0, $v0, .Llevel_42_8006F5E4
    /* 2DD0B24 8006F588 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2DD0B28 8006F58C 16008228 */  slti       $v0, $a0, 0x16
    /* 2DD0B2C 8006F590 05004010 */  beqz       $v0, .Llevel_42_8006F5A8
    /* 2DD0B30 8006F594 0D000224 */   addiu     $v0, $zero, 0xD
    /* 2DD0B34 8006F598 12008210 */  beq        $a0, $v0, .Llevel_42_8006F5E4
    /* 2DD0B38 8006F59C 00000000 */   nop
    /* 2DD0B3C 8006F5A0 9CBD0108 */  j          .Llevel_42_8006F670
    /* 2DD0B40 8006F5A4 00000000 */   nop
  .Llevel_42_8006F5A8:
    /* 2DD0B44 8006F5A8 17000224 */  addiu      $v0, $zero, 0x17
    /* 2DD0B48 8006F5AC 30008214 */  bne        $a0, $v0, .Llevel_42_8006F670
    /* 2DD0B4C 8006F5B0 01000224 */   addiu     $v0, $zero, 0x1
    /* 2DD0B50 8006F5B4 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 2DD0B54 8006F5B8 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 2DD0B58 8006F5BC 10002426 */  addiu      $a0, $s1, 0x10
    /* 2DD0B5C 8006F5C0 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 2DD0B60 8006F5C4 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 2DD0B64 8006F5C8 000020AE */  sw         $zero, 0x0($s1)
    /* 2DD0B68 8006F5CC 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2DD0B6C 8006F5D0 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 2DD0B70 8006F5D4 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2DD0B74 8006F5D8 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 2DD0B78 8006F5DC 85BD0108 */  j          .Llevel_42_8006F614
    /* 2DD0B7C 8006F5E0 21284002 */   addu      $a1, $s2, $zero
  .Llevel_42_8006F5E4:
    /* 2DD0B80 8006F5E4 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 2DD0B84 8006F5E8 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 2DD0B88 8006F5EC 10002426 */  addiu      $a0, $s1, 0x10
    /* 2DD0B8C 8006F5F0 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 2DD0B90 8006F5F4 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 2DD0B94 8006F5F8 21284002 */  addu       $a1, $s2, $zero
    /* 2DD0B98 8006F5FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DD0B9C 8006F600 000020AE */  sw         $zero, 0x0($s1)
    /* 2DD0BA0 8006F604 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2DD0BA4 8006F608 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 2DD0BA8 8006F60C 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2DD0BAC 8006F610 C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
  .Llevel_42_8006F614:
    /* 2DD0BB0 8006F614 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2DD0BB4 8006F618 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 2DD0BB8 8006F61C 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 2DD0BBC 8006F620 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 2DD0BC0 8006F624 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 2DD0BC4 8006F628 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 2DD0BC8 8006F62C 6C6F000C */  jal        func_8001BDB0
    /* 2DD0BCC 8006F630 2C003026 */   addiu     $s0, $s1, 0x2C
    /* 2DD0BD0 8006F634 21200002 */  addu       $a0, $s0, $zero
    /* 2DD0BD4 8006F638 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 2DD0BD8 8006F63C 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 2DD0BDC 8006F640 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 2DD0BE0 8006F644 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2DD0BE4 8006F648 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2DD0BE8 8006F64C 867B000C */  jal        func_8001EE18
    /* 2DD0BEC 8006F650 21304002 */   addu      $a2, $s2, $zero
    /* 2DD0BF0 8006F654 21200002 */  addu       $a0, $s0, $zero
    /* 2DD0BF4 8006F658 EA7B000C */  jal        func_8001EFA8
    /* 2DD0BF8 8006F65C 21280002 */   addu      $a1, $s0, $zero
    /* 2DD0BFC 8006F660 54002426 */  addiu      $a0, $s1, 0x54
    /* 2DD0C00 8006F664 21280002 */  addu       $a1, $s0, $zero
    /* 2DD0C04 8006F668 337B000C */  jal        func_8001ECCC
    /* 2DD0C08 8006F66C 21300000 */   addu      $a2, $zero, $zero
  .Llevel_42_8006F670:
    /* 2DD0C0C 8006F670 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2DD0C10 8006F674 1800B28F */  lw         $s2, 0x18($sp)
    /* 2DD0C14 8006F678 1400B18F */  lw         $s1, 0x14($sp)
    /* 2DD0C18 8006F67C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2DD0C1C 8006F680 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2DD0C20 8006F684 0800E003 */  jr         $ra
    /* 2DD0C24 8006F688 00000000 */   nop
endlabel func_level_42_8006F570
