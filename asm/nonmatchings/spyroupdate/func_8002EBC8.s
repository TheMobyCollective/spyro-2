.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002EBC8, 0x4C4

glabel func_8002EBC8
    /* 1F3C8 8002EBC8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1F3CC 8002EBCC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1F3D0 8002EBD0 0780103C */  lui        $s0, %hi(D_8006A1F0)
    /* 1F3D4 8002EBD4 F0A11026 */  addiu      $s0, $s0, %lo(D_8006A1F0)
    /* 1F3D8 8002EBD8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1F3DC 8002EBDC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1F3E0 8002EBE0 0000058E */  lw         $a1, 0x0($s0)
    /* 1F3E4 8002EBE4 06001124 */  addiu      $s1, $zero, 0x6
    /* 1F3E8 8002EBE8 6D00B110 */  beq        $a1, $s1, .L8002EDA0
    /* 1F3EC 8002EBEC 00000000 */   nop
    /* 1F3F0 8002EBF0 6B00A010 */  beqz       $a1, .L8002EDA0
    /* 1F3F4 8002EBF4 00000000 */   nop
    /* 1F3F8 8002EBF8 1DFE0492 */  lbu        $a0, -0x1E3($s0)
    /* 1F3FC 8002EBFC 00000000 */  nop
    /* 1F400 8002EC00 02110400 */  srl        $v0, $a0, 4
    /* 1F404 8002EC04 0F008330 */  andi       $v1, $a0, 0xF
    /* 1F408 8002EC08 05006210 */  beq        $v1, $v0, .L8002EC20
    /* 1F40C 8002EC0C F0008230 */   andi      $v0, $a0, 0xF0
    /* 1F410 8002EC10 01006324 */  addiu      $v1, $v1, 0x1
    /* 1F414 8002EC14 21104300 */  addu       $v0, $v0, $v1
    /* 1F418 8002EC18 68BB0008 */  j          .L8002EDA0
    /* 1F41C 8002EC1C 1DFE02A2 */   sb        $v0, -0x1E3($s0)
  .L8002EC20:
    /* 1F420 8002EC20 0780063C */  lui        $a2, %hi(D_8006A009)
    /* 1F424 8002EC24 09A0C690 */  lbu        $a2, %lo(D_8006A009)($a2)
    /* 1F428 8002EC28 0680033C */  lui        $v1, %hi(D_80066F24)
    /* 1F42C 8002EC2C 246F638C */  lw         $v1, %lo(D_80066F24)($v1)
    /* 1F430 8002EC30 0780043C */  lui        $a0, %hi(D_8006A00B)
    /* 1F434 8002EC34 0BA08490 */  lbu        $a0, %lo(D_8006A00B)($a0)
    /* 1F438 8002EC38 80380600 */  sll        $a3, $a2, 2
    /* 1F43C 8002EC3C 2118E300 */  addu       $v1, $a3, $v1
    /* 1F440 8002EC40 80100400 */  sll        $v0, $a0, 2
    /* 1F444 8002EC44 21104400 */  addu       $v0, $v0, $a0
    /* 1F448 8002EC48 0000638C */  lw         $v1, 0x0($v1)
    /* 1F44C 8002EC4C 80100200 */  sll        $v0, $v0, 2
    /* 1F450 8002EC50 21186200 */  addu       $v1, $v1, $v0
    /* 1F454 8002EC54 1400628C */  lw         $v0, 0x14($v1)
    /* 1F458 8002EC58 00000000 */  nop
    /* 1F45C 8002EC5C 83130200 */  sra        $v0, $v0, 14
    /* 1F460 8002EC60 F0004230 */  andi       $v0, $v0, 0xF0
    /* 1F464 8002EC64 1DFE02A2 */  sb         $v0, -0x1E3($s0)
    /* 1F468 8002EC68 04000224 */  addiu      $v0, $zero, 0x4
    /* 1F46C 8002EC6C 1D00A210 */  beq        $a1, $v0, .L8002ECE4
    /* 1F470 8002EC70 0500A228 */   slti      $v0, $a1, 0x5
    /* 1F474 8002EC74 05004010 */  beqz       $v0, .L8002EC8C
    /* 1F478 8002EC78 01000224 */   addiu     $v0, $zero, 0x1
    /* 1F47C 8002EC7C 0A00A210 */  beq        $a1, $v0, .L8002ECA8
    /* 1F480 8002EC80 09000224 */   addiu     $v0, $zero, 0x9
    /* 1F484 8002EC84 68BB0008 */  j          .L8002EDA0
    /* 1F488 8002EC88 00000000 */   nop
  .L8002EC8C:
    /* 1F48C 8002EC8C 07000224 */  addiu      $v0, $zero, 0x7
    /* 1F490 8002EC90 2500A210 */  beq        $a1, $v0, .L8002ED28
    /* 1F494 8002EC94 08000224 */   addiu     $v0, $zero, 0x8
    /* 1F498 8002EC98 0900A210 */  beq        $a1, $v0, .L8002ECC0
    /* 1F49C 8002EC9C 00000000 */   nop
    /* 1F4A0 8002ECA0 68BB0008 */  j          .L8002EDA0
    /* 1F4A4 8002ECA4 00000000 */   nop
  .L8002ECA8:
    /* 1F4A8 8002ECA8 0780013C */  lui        $at, %hi(D_8006A008)
    /* 1F4AC 8002ECAC 08A026A0 */  sb         $a2, %lo(D_8006A008)($at)
    /* 1F4B0 8002ECB0 0780013C */  lui        $at, %hi(D_8006A00A)
    /* 1F4B4 8002ECB4 0AA024A0 */  sb         $a0, %lo(D_8006A00A)($at)
    /* 1F4B8 8002ECB8 68BB0008 */  j          .L8002EDA0
    /* 1F4BC 8002ECBC 000002AE */   sw        $v0, 0x0($s0)
  .L8002ECC0:
    /* 1F4C0 8002ECC0 85C2000C */  jal        func_80030A14
    /* 1F4C4 8002ECC4 00000000 */   nop
    /* 1F4C8 8002ECC8 0780023C */  lui        $v0, %hi(D_8006A15C)
    /* 1F4CC 8002ECCC 5CA1428C */  lw         $v0, %lo(D_8006A15C)($v0)
    /* 1F4D0 8002ECD0 000011AE */  sw         $s1, 0x0($s0)
    /* 1F4D4 8002ECD4 0780013C */  lui        $at, %hi(D_8006A1EC)
    /* 1F4D8 8002ECD8 ECA122AC */  sw         $v0, %lo(D_8006A1EC)($at)
    /* 1F4DC 8002ECDC 68BB0008 */  j          .L8002EDA0
    /* 1F4E0 8002ECE0 00000000 */   nop
  .L8002ECE4:
    /* 1F4E4 8002ECE4 01008324 */  addiu      $v1, $a0, 0x1
    /* 1F4E8 8002ECE8 0780013C */  lui        $at, %hi(D_8006A008)
    /* 1F4EC 8002ECEC 08A026A0 */  sb         $a2, %lo(D_8006A008)($at)
    /* 1F4F0 8002ECF0 0780013C */  lui        $at, %hi(D_8006A00A)
    /* 1F4F4 8002ECF4 0AA024A0 */  sb         $a0, %lo(D_8006A00A)($at)
    /* 1F4F8 8002ECF8 0780013C */  lui        $at, %hi(D_8006A00B)
    /* 1F4FC 8002ECFC 0BA023A0 */  sb         $v1, %lo(D_8006A00B)($at)
    /* 1F500 8002ED00 0680013C */  lui        $at, %hi(D_80060336)
    /* 1F504 8002ED04 21082700 */  addu       $at, $at, $a3
    /* 1F508 8002ED08 36032290 */  lbu        $v0, %lo(D_80060336)($at)
    /* 1F50C 8002ED0C FF006330 */  andi       $v1, $v1, 0xFF
    /* 1F510 8002ED10 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1F514 8002ED14 2A186200 */  slt        $v1, $v1, $v0
    /* 1F518 8002ED18 21006014 */  bnez       $v1, .L8002EDA0
    /* 1F51C 8002ED1C 09000224 */   addiu     $v0, $zero, 0x9
    /* 1F520 8002ED20 68BB0008 */  j          .L8002EDA0
    /* 1F524 8002ED24 000002AE */   sw        $v0, 0x0($s0)
  .L8002ED28:
    /* 1F528 8002ED28 01008324 */  addiu      $v1, $a0, 0x1
    /* 1F52C 8002ED2C 0780013C */  lui        $at, %hi(D_8006A008)
    /* 1F530 8002ED30 08A026A0 */  sb         $a2, %lo(D_8006A008)($at)
    /* 1F534 8002ED34 0780013C */  lui        $at, %hi(D_8006A00A)
    /* 1F538 8002ED38 0AA024A0 */  sb         $a0, %lo(D_8006A00A)($at)
    /* 1F53C 8002ED3C 0780013C */  lui        $at, %hi(D_8006A00B)
    /* 1F540 8002ED40 0BA023A0 */  sb         $v1, %lo(D_8006A00B)($at)
    /* 1F544 8002ED44 0680013C */  lui        $at, %hi(D_80060336)
    /* 1F548 8002ED48 21082700 */  addu       $at, $at, $a3
    /* 1F54C 8002ED4C 36032290 */  lbu        $v0, %lo(D_80060336)($at)
    /* 1F550 8002ED50 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1F554 8002ED54 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1F558 8002ED58 2A186200 */  slt        $v1, $v1, $v0
    /* 1F55C 8002ED5C 10006014 */  bnez       $v1, .L8002EDA0
    /* 1F560 8002ED60 71000224 */   addiu     $v0, $zero, 0x71
    /* 1F564 8002ED64 1DFE02A2 */  sb         $v0, -0x1E3($s0)
    /* 1F568 8002ED68 0780033C */  lui        $v1, %hi(D_8006A005)
    /* 1F56C 8002ED6C 05A06390 */  lbu        $v1, %lo(D_8006A005)($v1)
    /* 1F570 8002ED70 0780043C */  lui        $a0, %hi(D_8006A007)
    /* 1F574 8002ED74 07A08490 */  lbu        $a0, %lo(D_8006A007)($a0)
    /* 1F578 8002ED78 0780053C */  lui        $a1, %hi(D_8006A15C)
    /* 1F57C 8002ED7C 5CA1A58C */  lw         $a1, %lo(D_8006A15C)($a1)
    /* 1F580 8002ED80 08000224 */  addiu      $v0, $zero, 0x8
    /* 1F584 8002ED84 000002AE */  sw         $v0, 0x0($s0)
    /* 1F588 8002ED88 0780013C */  lui        $at, %hi(D_8006A009)
    /* 1F58C 8002ED8C 09A023A0 */  sb         $v1, %lo(D_8006A009)($at)
    /* 1F590 8002ED90 0780013C */  lui        $at, %hi(D_8006A00B)
    /* 1F594 8002ED94 0BA024A0 */  sb         $a0, %lo(D_8006A00B)($at)
    /* 1F598 8002ED98 0780013C */  lui        $at, %hi(D_8006A1EC)
    /* 1F59C 8002ED9C ECA125AC */  sw         $a1, %lo(D_8006A1EC)($at)
  .L8002EDA0:
    /* 1F5A0 8002EDA0 0780113C */  lui        $s1, %hi(D_8006A1F0)
    /* 1F5A4 8002EDA4 F0A13126 */  addiu      $s1, $s1, %lo(D_8006A1F0)
    /* 1F5A8 8002EDA8 0000238E */  lw         $v1, 0x0($s1)
    /* 1F5AC 8002EDAC 09000224 */  addiu      $v0, $zero, 0x9
    /* 1F5B0 8002EDB0 5A006214 */  bne        $v1, $v0, .L8002EF1C
    /* 1F5B4 8002EDB4 00000000 */   nop
    /* 1F5B8 8002EDB8 0780043C */  lui        $a0, %hi(D_8006A1EC)
    /* 1F5BC 8002EDBC ECA1848C */  lw         $a0, %lo(D_8006A1EC)($a0)
    /* 1F5C0 8002EDC0 0780023C */  lui        $v0, %hi(D_8006A15C)
    /* 1F5C4 8002EDC4 5CA1428C */  lw         $v0, %lo(D_8006A15C)($v0)
    /* 1F5C8 8002EDC8 00000000 */  nop
    /* 1F5CC 8002EDCC 5A008214 */  bne        $a0, $v0, .L8002EF38
    /* 1F5D0 8002EDD0 C0180400 */   sll       $v1, $a0, 3
    /* 1F5D4 8002EDD4 0680023C */  lui        $v0, %hi(D_80061330)
    /* 1F5D8 8002EDD8 30134224 */  addiu      $v0, $v0, %lo(D_80061330)
    /* 1F5DC 8002EDDC 21186200 */  addu       $v1, $v1, $v0
    /* 1F5E0 8002EDE0 21186400 */  addu       $v1, $v1, $a0
    /* 1F5E4 8002EDE4 00007090 */  lbu        $s0, 0x0($v1)
    /* 1F5E8 8002EDE8 06000224 */  addiu      $v0, $zero, 0x6
    /* 1F5EC 8002EDEC 0C000212 */  beq        $s0, $v0, .L8002EE20
    /* 1F5F0 8002EDF0 0700022A */   slti      $v0, $s0, 0x7
    /* 1F5F4 8002EDF4 05004010 */  beqz       $v0, .L8002EE0C
    /* 1F5F8 8002EDF8 00000000 */   nop
    /* 1F5FC 8002EDFC 1F000012 */  beqz       $s0, .L8002EE7C
    /* 1F600 8002EE00 00000000 */   nop
    /* 1F604 8002EE04 C7BB0008 */  j          .L8002EF1C
    /* 1F608 8002EE08 00000000 */   nop
  .L8002EE0C:
    /* 1F60C 8002EE0C 07000224 */  addiu      $v0, $zero, 0x7
    /* 1F610 8002EE10 3C000212 */  beq        $s0, $v0, .L8002EF04
    /* 1F614 8002EE14 00000000 */   nop
    /* 1F618 8002EE18 C7BB0008 */  j          .L8002EF1C
    /* 1F61C 8002EE1C 00000000 */   nop
  .L8002EE20:
    /* 1F620 8002EE20 0780033C */  lui        $v1, %hi(D_8006A005)
    /* 1F624 8002EE24 05A06390 */  lbu        $v1, %lo(D_8006A005)($v1)
    /* 1F628 8002EE28 0780023C */  lui        $v0, %hi(D_8006A009)
    /* 1F62C 8002EE2C 09A04290 */  lbu        $v0, %lo(D_8006A009)($v0)
    /* 1F630 8002EE30 00000000 */  nop
    /* 1F634 8002EE34 05004314 */  bne        $v0, $v1, .L8002EE4C
    /* 1F638 8002EE38 71000224 */   addiu     $v0, $zero, 0x71
    /* 1F63C 8002EE3C 85C2000C */  jal        func_80030A14
    /* 1F640 8002EE40 00000000 */   nop
    /* 1F644 8002EE44 C7BB0008 */  j          .L8002EF1C
    /* 1F648 8002EE48 000030AE */   sw        $s0, 0x0($s1)
  .L8002EE4C:
    /* 1F64C 8002EE4C 0780013C */  lui        $at, %hi(D_8006A009)
    /* 1F650 8002EE50 09A023A0 */  sb         $v1, %lo(D_8006A009)($at)
    /* 1F654 8002EE54 0780033C */  lui        $v1, %hi(D_8006A007)
    /* 1F658 8002EE58 07A06390 */  lbu        $v1, %lo(D_8006A007)($v1)
    /* 1F65C 8002EE5C 0780013C */  lui        $at, %hi(D_8006A00D)
    /* 1F660 8002EE60 0DA022A0 */  sb         $v0, %lo(D_8006A00D)($at)
    /* 1F664 8002EE64 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F668 8002EE68 000022AE */  sw         $v0, 0x0($s1)
    /* 1F66C 8002EE6C 0780013C */  lui        $at, %hi(D_8006A00B)
    /* 1F670 8002EE70 0BA023A0 */  sb         $v1, %lo(D_8006A00B)($at)
    /* 1F674 8002EE74 C7BB0008 */  j          .L8002EF1C
    /* 1F678 8002EE78 00000000 */   nop
  .L8002EE7C:
    /* 1F67C 8002EE7C 0680023C */  lui        $v0, %hi(D_80066D54)
    /* 1F680 8002EE80 546D4224 */  addiu      $v0, $v0, %lo(D_80066D54)
    /* 1F684 8002EE84 21188200 */  addu       $v1, $a0, $v0
    /* 1F688 8002EE88 0780043C */  lui        $a0, %hi(D_8006A009)
    /* 1F68C 8002EE8C 09A08490 */  lbu        $a0, %lo(D_8006A009)($a0)
    /* 1F690 8002EE90 00006290 */  lbu        $v0, 0x0($v1)
    /* 1F694 8002EE94 00000000 */  nop
    /* 1F698 8002EE98 08008214 */  bne        $a0, $v0, .L8002EEBC
    /* 1F69C 8002EE9C 71000224 */   addiu     $v0, $zero, 0x71
    /* 1F6A0 8002EEA0 000020AE */  sw         $zero, 0x0($s1)
    /* 1F6A4 8002EEA4 0780013C */  lui        $at, %hi(D_8006A00D)
    /* 1F6A8 8002EEA8 0DA022A0 */  sb         $v0, %lo(D_8006A00D)($at)
    /* 1F6AC 8002EEAC C0BA000C */  jal        func_8002EB00
    /* 1F6B0 8002EEB0 00000000 */   nop
    /* 1F6B4 8002EEB4 C7BB0008 */  j          .L8002EF1C
    /* 1F6B8 8002EEB8 00000000 */   nop
  .L8002EEBC:
    /* 1F6BC 8002EEBC 0780023C */  lui        $v0, %hi(D_8006A00B)
    /* 1F6C0 8002EEC0 0BA04290 */  lbu        $v0, %lo(D_8006A00B)($v0)
    /* 1F6C4 8002EEC4 0780013C */  lui        $at, %hi(D_8006A008)
    /* 1F6C8 8002EEC8 08A024A0 */  sb         $a0, %lo(D_8006A008)($at)
    /* 1F6CC 8002EECC 0780013C */  lui        $at, %hi(D_8006A00A)
    /* 1F6D0 8002EED0 0AA022A0 */  sb         $v0, %lo(D_8006A00A)($at)
    /* 1F6D4 8002EED4 00006390 */  lbu        $v1, 0x0($v1)
    /* 1F6D8 8002EED8 71000224 */  addiu      $v0, $zero, 0x71
    /* 1F6DC 8002EEDC 0780013C */  lui        $at, %hi(D_8006A00D)
    /* 1F6E0 8002EEE0 0DA022A0 */  sb         $v0, %lo(D_8006A00D)($at)
    /* 1F6E4 8002EEE4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F6E8 8002EEE8 0780013C */  lui        $at, %hi(D_8006A00B)
    /* 1F6EC 8002EEEC 0BA020A0 */  sb         $zero, %lo(D_8006A00B)($at)
    /* 1F6F0 8002EEF0 000022AE */  sw         $v0, 0x0($s1)
    /* 1F6F4 8002EEF4 0780013C */  lui        $at, %hi(D_8006A009)
    /* 1F6F8 8002EEF8 09A023A0 */  sb         $v1, %lo(D_8006A009)($at)
    /* 1F6FC 8002EEFC C7BB0008 */  j          .L8002EF1C
    /* 1F700 8002EF00 00000000 */   nop
  .L8002EF04:
    /* 1F704 8002EF04 0780023C */  lui        $v0, %hi(D_8006A00B)
    /* 1F708 8002EF08 0BA04290 */  lbu        $v0, %lo(D_8006A00B)($v0)
    /* 1F70C 8002EF0C 000030AE */  sw         $s0, 0x0($s1)
    /* 1F710 8002EF10 01004224 */  addiu      $v0, $v0, 0x1
    /* 1F714 8002EF14 0780013C */  lui        $at, %hi(D_8006A00B)
    /* 1F718 8002EF18 0BA022A0 */  sb         $v0, %lo(D_8006A00B)($at)
  .L8002EF1C:
    /* 1F71C 8002EF1C 0780033C */  lui        $v1, %hi(D_8006A1EC)
    /* 1F720 8002EF20 ECA1638C */  lw         $v1, %lo(D_8006A1EC)($v1)
    /* 1F724 8002EF24 0780023C */  lui        $v0, %hi(D_8006A15C)
    /* 1F728 8002EF28 5CA1428C */  lw         $v0, %lo(D_8006A15C)($v0)
    /* 1F72C 8002EF2C 00000000 */  nop
    /* 1F730 8002EF30 50006210 */  beq        $v1, $v0, .L8002F074
    /* 1F734 8002EF34 00000000 */   nop
  .L8002EF38:
    /* 1F738 8002EF38 0680023C */  lui        $v0, %hi(D_80061330)
    /* 1F73C 8002EF3C 30134224 */  addiu      $v0, $v0, %lo(D_80061330)
    /* 1F740 8002EF40 0780053C */  lui        $a1, %hi(D_8006A1EC)
    /* 1F744 8002EF44 ECA1A58C */  lw         $a1, %lo(D_8006A1EC)($a1)
    /* 1F748 8002EF48 0780043C */  lui        $a0, %hi(D_8006A15C)
    /* 1F74C 8002EF4C 5CA1848C */  lw         $a0, %lo(D_8006A15C)($a0)
    /* 1F750 8002EF50 C0180500 */  sll        $v1, $a1, 3
    /* 1F754 8002EF54 21186200 */  addu       $v1, $v1, $v0
    /* 1F758 8002EF58 21186400 */  addu       $v1, $v1, $a0
    /* 1F75C 8002EF5C 00007090 */  lbu        $s0, 0x0($v1)
    /* 1F760 8002EF60 04000224 */  addiu      $v0, $zero, 0x4
    /* 1F764 8002EF64 37000212 */  beq        $s0, $v0, .L8002F044
    /* 1F768 8002EF68 0500022A */   slti      $v0, $s0, 0x5
    /* 1F76C 8002EF6C 05004010 */  beqz       $v0, .L8002EF84
    /* 1F770 8002EF70 01000224 */   addiu     $v0, $zero, 0x1
    /* 1F774 8002EF74 08000212 */  beq        $s0, $v0, .L8002EF98
    /* 1F778 8002EF78 00000000 */   nop
    /* 1F77C 8002EF7C 1DBC0008 */  j          .L8002F074
    /* 1F780 8002EF80 00000000 */   nop
  .L8002EF84:
    /* 1F784 8002EF84 06000224 */  addiu      $v0, $zero, 0x6
    /* 1F788 8002EF88 24000212 */  beq        $s0, $v0, .L8002F01C
    /* 1F78C 8002EF8C 00000000 */   nop
    /* 1F790 8002EF90 1DBC0008 */  j          .L8002F074
    /* 1F794 8002EF94 00000000 */   nop
  .L8002EF98:
    /* 1F798 8002EF98 0780053C */  lui        $a1, %hi(D_8006A00D)
    /* 1F79C 8002EF9C 0DA0A524 */  addiu      $a1, $a1, %lo(D_8006A00D)
    /* 1F7A0 8002EFA0 0000A290 */  lbu        $v0, 0x0($a1)
    /* 1F7A4 8002EFA4 0680013C */  lui        $at, %hi(D_80062868)
    /* 1F7A8 8002EFA8 21082200 */  addu       $at, $at, $v0
    /* 1F7AC 8002EFAC 68282290 */  lbu        $v0, %lo(D_80062868)($at)
    /* 1F7B0 8002EFB0 00000000 */  nop
    /* 1F7B4 8002EFB4 6000422C */  sltiu      $v0, $v0, 0x60
    /* 1F7B8 8002EFB8 09004014 */  bnez       $v0, .L8002EFE0
    /* 1F7BC 8002EFBC 00000000 */   nop
    /* 1F7C0 8002EFC0 0780023C */  lui        $v0, %hi(D_8006A009)
    /* 1F7C4 8002EFC4 09A04290 */  lbu        $v0, %lo(D_8006A009)($v0)
    /* 1F7C8 8002EFC8 0780033C */  lui        $v1, %hi(D_8006A00B)
    /* 1F7CC 8002EFCC 0BA06390 */  lbu        $v1, %lo(D_8006A00B)($v1)
    /* 1F7D0 8002EFD0 0780013C */  lui        $at, %hi(D_8006A008)
    /* 1F7D4 8002EFD4 08A022A0 */  sb         $v0, %lo(D_8006A008)($at)
    /* 1F7D8 8002EFD8 0780013C */  lui        $at, %hi(D_8006A00A)
    /* 1F7DC 8002EFDC 0AA023A0 */  sb         $v1, %lo(D_8006A00A)($at)
  .L8002EFE0:
    /* 1F7E0 8002EFE0 0680013C */  lui        $at, %hi(D_80066D54)
    /* 1F7E4 8002EFE4 21082400 */  addu       $at, $at, $a0
    /* 1F7E8 8002EFE8 546D2390 */  lbu        $v1, %lo(D_80066D54)($at)
    /* 1F7EC 8002EFEC 71000224 */  addiu      $v0, $zero, 0x71
    /* 1F7F0 8002EFF0 0780013C */  lui        $at, %hi(D_8006A00B)
    /* 1F7F4 8002EFF4 0BA020A0 */  sb         $zero, %lo(D_8006A00B)($at)
    /* 1F7F8 8002EFF8 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 1F7FC 8002EFFC 0780013C */  lui        $at, %hi(D_8006A1EC)
    /* 1F800 8002F000 ECA124AC */  sw         $a0, %lo(D_8006A1EC)($at)
    /* 1F804 8002F004 0780013C */  lui        $at, %hi(D_8006A1F0)
    /* 1F808 8002F008 F0A130AC */  sw         $s0, %lo(D_8006A1F0)($at)
    /* 1F80C 8002F00C 0780013C */  lui        $at, %hi(D_8006A009)
    /* 1F810 8002F010 09A023A0 */  sb         $v1, %lo(D_8006A009)($at)
    /* 1F814 8002F014 1DBC0008 */  j          .L8002F074
    /* 1F818 8002F018 00000000 */   nop
  .L8002F01C:
    /* 1F81C 8002F01C 85C2000C */  jal        func_80030A14
    /* 1F820 8002F020 00000000 */   nop
    /* 1F824 8002F024 0780023C */  lui        $v0, %hi(D_8006A15C)
    /* 1F828 8002F028 5CA1428C */  lw         $v0, %lo(D_8006A15C)($v0)
    /* 1F82C 8002F02C 0780013C */  lui        $at, %hi(D_8006A1F0)
    /* 1F830 8002F030 F0A130AC */  sw         $s0, %lo(D_8006A1F0)($at)
    /* 1F834 8002F034 0780013C */  lui        $at, %hi(D_8006A1EC)
    /* 1F838 8002F038 ECA122AC */  sw         $v0, %lo(D_8006A1EC)($at)
    /* 1F83C 8002F03C 1DBC0008 */  j          .L8002F074
    /* 1F840 8002F040 00000000 */   nop
  .L8002F044:
    /* 1F844 8002F044 0780033C */  lui        $v1, %hi(D_8006A009)
    /* 1F848 8002F048 09A06390 */  lbu        $v1, %lo(D_8006A009)($v1)
    /* 1F84C 8002F04C 0680013C */  lui        $at, %hi(D_80066D54)
    /* 1F850 8002F050 21082500 */  addu       $at, $at, $a1
    /* 1F854 8002F054 546D2290 */  lbu        $v0, %lo(D_80066D54)($at)
    /* 1F858 8002F058 00000000 */  nop
    /* 1F85C 8002F05C 03006214 */  bne        $v1, $v0, .L8002F06C
    /* 1F860 8002F060 00000000 */   nop
    /* 1F864 8002F064 0780013C */  lui        $at, %hi(D_8006A1F0)
    /* 1F868 8002F068 F0A130AC */  sw         $s0, %lo(D_8006A1F0)($at)
  .L8002F06C:
    /* 1F86C 8002F06C 0780013C */  lui        $at, %hi(D_8006A1EC)
    /* 1F870 8002F070 ECA124AC */  sw         $a0, %lo(D_8006A1EC)($at)
  .L8002F074:
    /* 1F874 8002F074 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1F878 8002F078 1400B18F */  lw         $s1, 0x14($sp)
    /* 1F87C 8002F07C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1F880 8002F080 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1F884 8002F084 0800E003 */  jr         $ra
    /* 1F888 8002F088 00000000 */   nop
endlabel func_8002EBC8
