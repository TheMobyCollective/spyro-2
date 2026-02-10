.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_51_80070DA4, 0x128

glabel func_level_51_80070DA4
    /* 38D6340 80070DA4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 38D6344 80070DA8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 38D6348 80070DAC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 38D634C 80070DB0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 38D6350 80070DB4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 38D6354 80070DB8 0D008210 */  beq        $a0, $v0, .Llevel_51_80070DF0
    /* 38D6358 80070DBC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 38D635C 80070DC0 0D008228 */  slti       $v0, $a0, 0xD
    /* 38D6360 80070DC4 05004010 */  beqz       $v0, .Llevel_51_80070DDC
    /* 38D6364 80070DC8 04000224 */   addiu     $v0, $zero, 0x4
    /* 38D6368 80070DCC 08008210 */  beq        $a0, $v0, .Llevel_51_80070DF0
    /* 38D636C 80070DD0 00000000 */   nop
    /* 38D6370 80070DD4 ACC30108 */  j          .Llevel_51_80070EB0
    /* 38D6374 80070DD8 00000000 */   nop
  .Llevel_51_80070DDC:
    /* 38D6378 80070DDC 15000224 */  addiu      $v0, $zero, 0x15
    /* 38D637C 80070DE0 10008210 */  beq        $a0, $v0, .Llevel_51_80070E24
    /* 38D6380 80070DE4 17000224 */   addiu     $v0, $zero, 0x17
    /* 38D6384 80070DE8 31008214 */  bne        $a0, $v0, .Llevel_51_80070EB0
    /* 38D6388 80070DEC 00000000 */   nop
  .Llevel_51_80070DF0:
    /* 38D638C 80070DF0 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 38D6390 80070DF4 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 38D6394 80070DF8 10002426 */  addiu      $a0, $s1, 0x10
    /* 38D6398 80070DFC 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 38D639C 80070E00 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 38D63A0 80070E04 21284002 */  addu       $a1, $s2, $zero
    /* 38D63A4 80070E08 000020AE */  sw         $zero, 0x0($s1)
    /* 38D63A8 80070E0C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 38D63AC 80070E10 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 38D63B0 80070E14 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 38D63B4 80070E18 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 38D63B8 80070E1C 95C30108 */  j          .Llevel_51_80070E54
    /* 38D63BC 80070E20 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_51_80070E24:
    /* 38D63C0 80070E24 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 38D63C4 80070E28 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 38D63C8 80070E2C 10002426 */  addiu      $a0, $s1, 0x10
    /* 38D63CC 80070E30 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 38D63D0 80070E34 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 38D63D4 80070E38 21284002 */  addu       $a1, $s2, $zero
    /* 38D63D8 80070E3C 01000224 */  addiu      $v0, $zero, 0x1
    /* 38D63DC 80070E40 000020AE */  sw         $zero, 0x0($s1)
    /* 38D63E0 80070E44 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 38D63E4 80070E48 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 38D63E8 80070E4C 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 38D63EC 80070E50 C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
  .Llevel_51_80070E54:
    /* 38D63F0 80070E54 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 38D63F4 80070E58 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 38D63F8 80070E5C 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 38D63FC 80070E60 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 38D6400 80070E64 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 38D6404 80070E68 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 38D6408 80070E6C 6C6F000C */  jal        func_8001BDB0
    /* 38D640C 80070E70 2C003026 */   addiu     $s0, $s1, 0x2C
    /* 38D6410 80070E74 21200002 */  addu       $a0, $s0, $zero
    /* 38D6414 80070E78 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* 38D6418 80070E7C 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 38D641C 80070E80 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 38D6420 80070E84 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 38D6424 80070E88 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 38D6428 80070E8C 867B000C */  jal        func_8001EE18
    /* 38D642C 80070E90 21304002 */   addu      $a2, $s2, $zero
    /* 38D6430 80070E94 21200002 */  addu       $a0, $s0, $zero
    /* 38D6434 80070E98 EA7B000C */  jal        func_8001EFA8
    /* 38D6438 80070E9C 21280002 */   addu      $a1, $s0, $zero
    /* 38D643C 80070EA0 54002426 */  addiu      $a0, $s1, 0x54
    /* 38D6440 80070EA4 21280002 */  addu       $a1, $s0, $zero
    /* 38D6444 80070EA8 337B000C */  jal        func_8001ECCC
    /* 38D6448 80070EAC 21300000 */   addu      $a2, $zero, $zero
  .Llevel_51_80070EB0:
    /* 38D644C 80070EB0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 38D6450 80070EB4 1800B28F */  lw         $s2, 0x18($sp)
    /* 38D6454 80070EB8 1400B18F */  lw         $s1, 0x14($sp)
    /* 38D6458 80070EBC 1000B08F */  lw         $s0, 0x10($sp)
    /* 38D645C 80070EC0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 38D6460 80070EC4 0800E003 */  jr         $ra
    /* 38D6464 80070EC8 00000000 */   nop
endlabel func_level_51_80070DA4
