.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8006E54C, 0x120

glabel func_level_52_8006E54C
    /* 3B012E8 8006E54C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3B012EC 8006E550 0D000224 */  addiu      $v0, $zero, 0xD
    /* 3B012F0 8006E554 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3B012F4 8006E558 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3B012F8 8006E55C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3B012FC 8006E560 18008210 */  beq        $a0, $v0, .Llevel_52_8006E5C4
    /* 3B01300 8006E564 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3B01304 8006E568 0E008228 */  slti       $v0, $a0, 0xE
    /* 3B01308 8006E56C 05004010 */  beqz       $v0, .Llevel_52_8006E584
    /* 3B0130C 8006E570 0C000224 */   addiu     $v0, $zero, 0xC
    /* 3B01310 8006E574 06008210 */  beq        $a0, $v0, .Llevel_52_8006E590
    /* 3B01314 8006E578 00000000 */   nop
    /* 3B01318 8006E57C 94B90108 */  j          .Llevel_52_8006E650
    /* 3B0131C 8006E580 00000000 */   nop
  .Llevel_52_8006E584:
    /* 3B01320 8006E584 17000224 */  addiu      $v0, $zero, 0x17
    /* 3B01324 8006E588 31008214 */  bne        $a0, $v0, .Llevel_52_8006E650
    /* 3B01328 8006E58C 00000000 */   nop
  .Llevel_52_8006E590:
    /* 3B0132C 8006E590 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 3B01330 8006E594 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 3B01334 8006E598 10002426 */  addiu      $a0, $s1, 0x10
    /* 3B01338 8006E59C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 3B0133C 8006E5A0 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 3B01340 8006E5A4 21284002 */  addu       $a1, $s2, $zero
    /* 3B01344 8006E5A8 000020AE */  sw         $zero, 0x0($s1)
    /* 3B01348 8006E5AC 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 3B0134C 8006E5B0 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 3B01350 8006E5B4 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 3B01354 8006E5B8 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 3B01358 8006E5BC 7DB90108 */  j          .Llevel_52_8006E5F4
    /* 3B0135C 8006E5C0 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_52_8006E5C4:
    /* 3B01360 8006E5C4 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 3B01364 8006E5C8 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 3B01368 8006E5CC 10002426 */  addiu      $a0, $s1, 0x10
    /* 3B0136C 8006E5D0 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 3B01370 8006E5D4 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 3B01374 8006E5D8 21284002 */  addu       $a1, $s2, $zero
    /* 3B01378 8006E5DC 01000224 */  addiu      $v0, $zero, 0x1
    /* 3B0137C 8006E5E0 000020AE */  sw         $zero, 0x0($s1)
    /* 3B01380 8006E5E4 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 3B01384 8006E5E8 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 3B01388 8006E5EC 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 3B0138C 8006E5F0 C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
  .Llevel_52_8006E5F4:
    /* 3B01390 8006E5F4 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 3B01394 8006E5F8 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 3B01398 8006E5FC 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 3B0139C 8006E600 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 3B013A0 8006E604 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 3B013A4 8006E608 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 3B013A8 8006E60C 6C6F000C */  jal        func_8001BDB0
    /* 3B013AC 8006E610 2C003026 */   addiu     $s0, $s1, 0x2C
    /* 3B013B0 8006E614 21200002 */  addu       $a0, $s0, $zero
    /* 3B013B4 8006E618 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 3B013B8 8006E61C 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 3B013BC 8006E620 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 3B013C0 8006E624 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 3B013C4 8006E628 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 3B013C8 8006E62C 867B000C */  jal        func_8001EE18
    /* 3B013CC 8006E630 21304002 */   addu      $a2, $s2, $zero
    /* 3B013D0 8006E634 21200002 */  addu       $a0, $s0, $zero
    /* 3B013D4 8006E638 EA7B000C */  jal        func_8001EFA8
    /* 3B013D8 8006E63C 21280002 */   addu      $a1, $s0, $zero
    /* 3B013DC 8006E640 54002426 */  addiu      $a0, $s1, 0x54
    /* 3B013E0 8006E644 21280002 */  addu       $a1, $s0, $zero
    /* 3B013E4 8006E648 337B000C */  jal        func_8001ECCC
    /* 3B013E8 8006E64C 21300000 */   addu      $a2, $zero, $zero
  .Llevel_52_8006E650:
    /* 3B013EC 8006E650 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3B013F0 8006E654 1800B28F */  lw         $s2, 0x18($sp)
    /* 3B013F4 8006E658 1400B18F */  lw         $s1, 0x14($sp)
    /* 3B013F8 8006E65C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3B013FC 8006E660 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3B01400 8006E664 0800E003 */  jr         $ra
    /* 3B01404 8006E668 00000000 */   nop
endlabel func_level_52_8006E54C
