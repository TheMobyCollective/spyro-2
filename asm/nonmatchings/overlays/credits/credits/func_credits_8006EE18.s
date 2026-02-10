.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_credits_8006EE18, 0x200

glabel func_credits_8006EE18
    /* 2EF3B4 8006EE18 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2EF3B8 8006EE1C 0680033C */  lui        $v1, %hi(D_80066EE8)
    /* 2EF3BC 8006EE20 E86E6384 */  lh         $v1, %lo(D_80066EE8)($v1)
    /* 2EF3C0 8006EE24 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2EF3C4 8006EE28 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2EF3C8 8006EE2C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2EF3CC 8006EE30 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2EF3D0 8006EE34 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2EF3D4 8006EE38 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2EF3D8 8006EE3C 05006214 */  bne        $v1, $v0, .Lcredits_8006EE54
    /* 2EF3DC 8006EE40 1800B0AF */   sw        $s0, 0x18($sp)
    /* 2EF3E0 8006EE44 2131010C */  jal        func_8004C484
    /* 2EF3E4 8006EE48 00000000 */   nop
    /* 2EF3E8 8006EE4C FDBB0108 */  j          .Lcredits_8006EFF4
    /* 2EF3EC 8006EE50 00000000 */   nop
  .Lcredits_8006EE54:
    /* 2EF3F0 8006EE54 0680133C */  lui        $s3, %hi(D_80066F14)
    /* 2EF3F4 8006EE58 146F738E */  lw         $s3, %lo(D_80066F14)($s3)
    /* 2EF3F8 8006EE5C 0780023C */  lui        $v0, %hi(D_800681C0)
    /* 2EF3FC 8006EE60 C0814290 */  lbu        $v0, %lo(D_800681C0)($v0)
    /* 2EF400 8006EE64 0780033C */  lui        $v1, %hi(D_800681C1)
    /* 2EF404 8006EE68 C1816390 */  lbu        $v1, %lo(D_800681C1)($v1)
    /* 2EF408 8006EE6C 0780043C */  lui        $a0, %hi(D_800681C2)
    /* 2EF40C 8006EE70 C2818490 */  lbu        $a0, %lo(D_800681C2)($a0)
    /* 2EF410 8006EE74 0680053C */  lui        $a1, %hi(D_80066F74)
    /* 2EF414 8006EE78 746FA584 */  lh         $a1, %lo(D_80066F74)($a1)
    /* 2EF418 8006EE7C 0780013C */  lui        $at, %hi(D_80069941)
    /* 2EF41C 8006EE80 419922A0 */  sb         $v0, %lo(D_80069941)($at)
    /* 2EF420 8006EE84 0780013C */  lui        $at, %hi(D_80069942)
    /* 2EF424 8006EE88 429923A0 */  sb         $v1, %lo(D_80069942)($at)
    /* 2EF428 8006EE8C 0780013C */  lui        $at, %hi(D_80069943)
    /* 2EF42C 8006EE90 439924A0 */  sb         $a0, %lo(D_80069943)($at)
    /* 2EF430 8006EE94 0780013C */  lui        $at, %hi(D_800699B5)
    /* 2EF434 8006EE98 B59922A0 */  sb         $v0, %lo(D_800699B5)($at)
    /* 2EF438 8006EE9C 0780013C */  lui        $at, %hi(D_800699B6)
    /* 2EF43C 8006EEA0 B69923A0 */  sb         $v1, %lo(D_800699B6)($at)
    /* 2EF440 8006EEA4 0780013C */  lui        $at, %hi(D_800699B7)
    /* 2EF444 8006EEA8 B79924A0 */  sb         $a0, %lo(D_800699B7)($at)
    /* 2EF448 8006EEAC 3C00A018 */  blez       $a1, .Lcredits_8006EFA0
    /* 2EF44C 8006EEB0 21900000 */   addu      $s2, $zero, $zero
    /* 2EF450 8006EEB4 21A00000 */  addu       $s4, $zero, $zero
    /* 2EF454 8006EEB8 47007126 */  addiu      $s1, $s3, 0x47
  .Lcredits_8006EEBC:
    /* 2EF458 8006EEBC 0680023C */  lui        $v0, %hi(D_80066FB8)
    /* 2EF45C 8006EEC0 B86F428C */  lw         $v0, %lo(D_80066FB8)($v0)
    /* 2EF460 8006EEC4 00000000 */  nop
    /* 2EF464 8006EEC8 21805400 */  addu       $s0, $v0, $s4
    /* 2EF468 8006EECC 04000392 */  lbu        $v1, 0x4($s0)
    /* 2EF46C 8006EED0 00000000 */  nop
    /* 2EF470 8006EED4 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 2EF474 8006EED8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2EF478 8006EEDC 05004014 */  bnez       $v0, .Lcredits_8006EEF4
    /* 2EF47C 8006EEE0 21206002 */   addu      $a0, $s3, $zero
    /* 2EF480 8006EEE4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 2EF484 8006EEE8 03000224 */  addiu      $v0, $zero, 0x3
    /* 2EF488 8006EEEC 26006214 */  bne        $v1, $v0, .Lcredits_8006EF88
    /* 2EF48C 8006EEF0 00000000 */   nop
  .Lcredits_8006EEF4:
    /* 2EF490 8006EEF4 21280000 */  addu       $a1, $zero, $zero
    /* 2EF494 8006EEF8 F26C000C */  jal        func_8001B3C8
    /* 2EF498 8006EEFC 58000624 */   addiu     $a2, $zero, 0x58
    /* 2EF49C 8006EF00 12000286 */  lh         $v0, 0x12($s0)
    /* 2EF4A0 8006EF04 00000000 */  nop
    /* 2EF4A4 8006EF08 C5FF22AE */  sw         $v0, -0x3B($s1)
    /* 2EF4A8 8006EF0C 14000286 */  lh         $v0, 0x14($s0)
    /* 2EF4AC 8006EF10 00000000 */  nop
    /* 2EF4B0 8006EF14 C9FF22AE */  sw         $v0, -0x37($s1)
    /* 2EF4B4 8006EF18 16000286 */  lh         $v0, 0x16($s0)
    /* 2EF4B8 8006EF1C 00000000 */  nop
    /* 2EF4BC 8006EF20 CDFF22AE */  sw         $v0, -0x33($s1)
    /* 2EF4C0 8006EF24 05000292 */  lbu        $v0, 0x5($s0)
    /* 2EF4C4 8006EF28 00000000 */  nop
    /* 2EF4C8 8006EF2C FDFF22A2 */  sb         $v0, -0x3($s1)
    /* 2EF4CC 8006EF30 06000292 */  lbu        $v0, 0x6($s0)
    /* 2EF4D0 8006EF34 00000000 */  nop
    /* 2EF4D4 8006EF38 FEFF22A2 */  sb         $v0, -0x2($s1)
    /* 2EF4D8 8006EF3C 07000292 */  lbu        $v0, 0x7($s0)
    /* 2EF4DC 8006EF40 00000000 */  nop
    /* 2EF4E0 8006EF44 FFFF22A2 */  sb         $v0, -0x1($s1)
    /* 2EF4E4 8006EF48 1A000296 */  lhu        $v0, 0x1A($s0)
    /* 2EF4E8 8006EF4C 58007326 */  addiu      $s3, $s3, 0x58
    /* 2EF4EC 8006EF50 F5FF22A2 */  sb         $v0, -0xB($s1)
    /* 2EF4F0 8006EF54 1A000396 */  lhu        $v1, 0x1A($s0)
    /* 2EF4F4 8006EF58 A6020224 */  addiu      $v0, $zero, 0x2A6
    /* 2EF4F8 8006EF5C EFFF22A6 */  sh         $v0, -0x11($s1)
    /* 2EF4FC 8006EF60 02000224 */  addiu      $v0, $zero, 0x2
    /* 2EF500 8006EF64 0D0022A2 */  sb         $v0, 0xD($s1)
    /* 2EF504 8006EF68 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2EF508 8006EF6C 050022A2 */  sb         $v0, 0x5($s1)
    /* 2EF50C 8006EF70 20000224 */  addiu      $v0, $zero, 0x20
    /* 2EF510 8006EF74 070022A2 */  sb         $v0, 0x7($s1)
    /* 2EF514 8006EF78 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 2EF518 8006EF7C 000022A2 */  sb         $v0, 0x0($s1)
    /* 2EF51C 8006EF80 F6FF23A2 */  sb         $v1, -0xA($s1)
    /* 2EF520 8006EF84 58003126 */  addiu      $s1, $s1, 0x58
  .Lcredits_8006EF88:
    /* 2EF524 8006EF88 0680023C */  lui        $v0, %hi(D_80066F74)
    /* 2EF528 8006EF8C 746F4284 */  lh         $v0, %lo(D_80066F74)($v0)
    /* 2EF52C 8006EF90 01005226 */  addiu      $s2, $s2, 0x1
    /* 2EF530 8006EF94 2A104202 */  slt        $v0, $s2, $v0
    /* 2EF534 8006EF98 C8FF4014 */  bnez       $v0, .Lcredits_8006EEBC
    /* 2EF538 8006EF9C 1C009426 */   addiu     $s4, $s4, 0x1C
  .Lcredits_8006EFA0:
    /* 2EF53C 8006EFA0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2EF540 8006EFA4 480062A2 */  sb         $v0, 0x48($s3)
    /* 2EF544 8006EFA8 0680053C */  lui        $a1, %hi(D_80066F68)
    /* 2EF548 8006EFAC 686FA58C */  lw         $a1, %lo(D_80066F68)($a1)
    /* 2EF54C 8006EFB0 00000000 */  nop
    /* 2EF550 8006EFB4 0500A010 */  beqz       $a1, .Lcredits_8006EFCC
    /* 2EF554 8006EFB8 02000424 */   addiu     $a0, $zero, 0x2
    /* 2EF558 8006EFBC 00290500 */  sll        $a1, $a1, 4
    /* 2EF55C 8006EFC0 2130A000 */  addu       $a2, $a1, $zero
    /* 2EF560 8006EFC4 A6B4010C */  jal        func_credits_8006D298
    /* 2EF564 8006EFC8 2138A000 */   addu      $a3, $a1, $zero
  .Lcredits_8006EFCC:
    /* 2EF568 8006EFCC 4D31010C */  jal        func_8004C534
    /* 2EF56C 8006EFD0 00000000 */   nop
    /* 2EF570 8006EFD4 0100023C */  lui        $v0, (0x11000 >> 16)
    /* 2EF574 8006EFD8 00104234 */  ori        $v0, $v0, (0x11000 & 0xFFFF)
    /* 2EF578 8006EFDC 0680013C */  lui        $at, %hi(D_80067400)
    /* 2EF57C 8006EFE0 007422AC */  sw         $v0, %lo(D_80067400)($at)
    /* 2EF580 8006EFE4 ED8E000C */  jal        func_80023BB4
    /* 2EF584 8006EFE8 00000000 */   nop
    /* 2EF588 8006EFEC 5CA4000C */  jal        func_80029170
    /* 2EF58C 8006EFF0 00000000 */   nop
  .Lcredits_8006EFF4:
    /* 2EF590 8006EFF4 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2EF594 8006EFF8 2800B48F */  lw         $s4, 0x28($sp)
    /* 2EF598 8006EFFC 2400B38F */  lw         $s3, 0x24($sp)
    /* 2EF59C 8006F000 2000B28F */  lw         $s2, 0x20($sp)
    /* 2EF5A0 8006F004 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2EF5A4 8006F008 1800B08F */  lw         $s0, 0x18($sp)
    /* 2EF5A8 8006F00C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2EF5AC 8006F010 0800E003 */  jr         $ra
    /* 2EF5B0 8006F014 00000000 */   nop
endlabel func_credits_8006EE18
