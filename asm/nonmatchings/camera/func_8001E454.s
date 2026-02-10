.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E454, 0x3B4

glabel func_8001E454
    /* EC54 8001E454 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* EC58 8001E458 7400B5AF */  sw         $s5, 0x74($sp)
    /* EC5C 8001E45C 21A80000 */  addu       $s5, $zero, $zero
    /* EC60 8001E460 0680023C */  lui        $v0, %hi(D_80067FC4)
    /* EC64 8001E464 C47F4290 */  lbu        $v0, %lo(D_80067FC4)($v0)
    /* EC68 8001E468 0680063C */  lui        $a2, %hi(D_80067FC8)
    /* EC6C 8001E46C C87FC624 */  addiu      $a2, $a2, %lo(D_80067FC8)
    /* EC70 8001E470 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* EC74 8001E474 7800B6AF */  sw         $s6, 0x78($sp)
    /* EC78 8001E478 7000B4AF */  sw         $s4, 0x70($sp)
    /* EC7C 8001E47C 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* EC80 8001E480 6800B2AF */  sw         $s2, 0x68($sp)
    /* EC84 8001E484 6400B1AF */  sw         $s1, 0x64($sp)
    /* EC88 8001E488 6000B0AF */  sw         $s0, 0x60($sp)
    /* EC8C 8001E48C 04004010 */  beqz       $v0, .L8001E4A0
    /* EC90 8001E490 0000C0A0 */   sb        $zero, 0x0($a2)
    /* EC94 8001E494 E4FEC424 */  addiu      $a0, $a2, -0x11C
    /* EC98 8001E498 C2790008 */  j          .L8001E708
    /* EC9C 8001E49C 2CFFC524 */   addiu     $a1, $a2, -0xD4
  .L8001E4A0:
    /* ECA0 8001E4A0 1800A427 */  addiu      $a0, $sp, 0x18
    /* ECA4 8001E4A4 2CFFC524 */  addiu      $a1, $a2, -0xD4
    /* ECA8 8001E4A8 E4FED124 */  addiu      $s1, $a2, -0x11C
    /* ECAC 8001E4AC 806F000C */  jal        func_8001BE00
    /* ECB0 8001E4B0 21302002 */   addu      $a2, $s1, $zero
    /* ECB4 8001E4B4 1800A427 */  addiu      $a0, $sp, 0x18
    /* ECB8 8001E4B8 886E000C */  jal        func_8001BA20
    /* ECBC 8001E4BC 01000524 */   addiu     $a1, $zero, 0x1
    /* ECC0 8001E4C0 21984000 */  addu       $s3, $v0, $zero
    /* ECC4 8001E4C4 8888023C */  lui        $v0, (0x88888889 >> 16)
    /* ECC8 8001E4C8 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
    /* ECCC 8001E4CC 18006202 */  mult       $s3, $v0
    /* ECD0 8001E4D0 C31F1300 */  sra        $v1, $s3, 31
    /* ECD4 8001E4D4 10400000 */  mfhi       $t0
    /* ECD8 8001E4D8 21101301 */  addu       $v0, $t0, $s3
    /* ECDC 8001E4DC C3110200 */  sra        $v0, $v0, 7
    /* ECE0 8001E4E0 23104300 */  subu       $v0, $v0, $v1
    /* ECE4 8001E4E4 01005324 */  addiu      $s3, $v0, 0x1
    /* ECE8 8001E4E8 0200622A */  slti       $v0, $s3, 0x2
    /* ECEC 8001E4EC 2B004014 */  bnez       $v0, .L8001E59C
    /* ECF0 8001E4F0 2800B027 */   addiu     $s0, $sp, 0x28
    /* ECF4 8001E4F4 1800A48F */  lw         $a0, 0x18($sp)
    /* ECF8 8001E4F8 00000000 */  nop
    /* ECFC 8001E4FC 1A009300 */  div        $zero, $a0, $s3
    /* ED00 8001E500 02006016 */  bnez       $s3, .L8001E50C
    /* ED04 8001E504 00000000 */   nop
    /* ED08 8001E508 0D000700 */  break      7
  .L8001E50C:
    /* ED0C 8001E50C FFFF0124 */  addiu      $at, $zero, -0x1
    /* ED10 8001E510 04006116 */  bne        $s3, $at, .L8001E524
    /* ED14 8001E514 0080013C */   lui       $at, (0x80000000 >> 16)
    /* ED18 8001E518 02008114 */  bne        $a0, $at, .L8001E524
    /* ED1C 8001E51C 00000000 */   nop
    /* ED20 8001E520 0D000600 */  break      6
  .L8001E524:
    /* ED24 8001E524 12200000 */  mflo       $a0
    /* ED28 8001E528 1C00A38F */  lw         $v1, 0x1C($sp)
    /* ED2C 8001E52C 00000000 */  nop
    /* ED30 8001E530 1A007300 */  div        $zero, $v1, $s3
    /* ED34 8001E534 02006016 */  bnez       $s3, .L8001E540
    /* ED38 8001E538 00000000 */   nop
    /* ED3C 8001E53C 0D000700 */  break      7
  .L8001E540:
    /* ED40 8001E540 FFFF0124 */  addiu      $at, $zero, -0x1
    /* ED44 8001E544 04006116 */  bne        $s3, $at, .L8001E558
    /* ED48 8001E548 0080013C */   lui       $at, (0x80000000 >> 16)
    /* ED4C 8001E54C 02006114 */  bne        $v1, $at, .L8001E558
    /* ED50 8001E550 00000000 */   nop
    /* ED54 8001E554 0D000600 */  break      6
  .L8001E558:
    /* ED58 8001E558 12180000 */  mflo       $v1
    /* ED5C 8001E55C 2000A28F */  lw         $v0, 0x20($sp)
    /* ED60 8001E560 00000000 */  nop
    /* ED64 8001E564 1A005300 */  div        $zero, $v0, $s3
    /* ED68 8001E568 02006016 */  bnez       $s3, .L8001E574
    /* ED6C 8001E56C 00000000 */   nop
    /* ED70 8001E570 0D000700 */  break      7
  .L8001E574:
    /* ED74 8001E574 FFFF0124 */  addiu      $at, $zero, -0x1
    /* ED78 8001E578 04006116 */  bne        $s3, $at, .L8001E58C
    /* ED7C 8001E57C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* ED80 8001E580 02004114 */  bne        $v0, $at, .L8001E58C
    /* ED84 8001E584 00000000 */   nop
    /* ED88 8001E588 0D000600 */  break      6
  .L8001E58C:
    /* ED8C 8001E58C 12100000 */  mflo       $v0
    /* ED90 8001E590 1800A4AF */  sw         $a0, 0x18($sp)
    /* ED94 8001E594 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* ED98 8001E598 2000A2AF */  sw         $v0, 0x20($sp)
  .L8001E59C:
    /* ED9C 8001E59C 21200002 */  addu       $a0, $s0, $zero
    /* EDA0 8001E5A0 6C6F000C */  jal        func_8001BDB0
    /* EDA4 8001E5A4 21282002 */   addu      $a1, $s1, $zero
    /* EDA8 8001E5A8 5400601A */  blez       $s3, .L8001E6FC
    /* EDAC 8001E5AC 21A00000 */   addu      $s4, $zero, $zero
    /* EDB0 8001E5B0 21900002 */  addu       $s2, $s0, $zero
    /* EDB4 8001E5B4 01001624 */  addiu      $s6, $zero, 0x1
  .L8001E5B8:
    /* EDB8 8001E5B8 21204002 */  addu       $a0, $s2, $zero
    /* EDBC 8001E5BC 21284002 */  addu       $a1, $s2, $zero
    /* EDC0 8001E5C0 736F000C */  jal        func_8001BDCC
    /* EDC4 8001E5C4 1800A627 */   addiu     $a2, $sp, 0x18
    /* EDC8 8001E5C8 3800A427 */  addiu      $a0, $sp, 0x38
    /* EDCC 8001E5CC 6C6F000C */  jal        func_8001BDB0
    /* EDD0 8001E5D0 21284002 */   addu      $a1, $s2, $zero
    /* EDD4 8001E5D4 21880000 */  addu       $s1, $zero, $zero
  .L8001E5D8:
    /* EDD8 8001E5D8 0680023C */  lui        $v0, %hi(D_80067FC5)
    /* EDDC 8001E5DC C57F4290 */  lbu        $v0, %lo(D_80067FC5)($v0)
    /* EDE0 8001E5E0 00000000 */  nop
    /* EDE4 8001E5E4 09004014 */  bnez       $v0, .L8001E60C
    /* EDE8 8001E5E8 21800000 */   addu      $s0, $zero, $zero
    /* EDEC 8001E5EC 2800A427 */  addiu      $a0, $sp, 0x28
    /* EDF0 8001E5F0 00010524 */  addiu      $a1, $zero, 0x100
    /* EDF4 8001E5F4 21300000 */  addu       $a2, $zero, $zero
    /* EDF8 8001E5F8 21380000 */  addu       $a3, $zero, $zero
    /* EDFC 8001E5FC 1000A0AF */  sw         $zero, 0x10($sp)
    /* EE00 8001E600 5701010C */  jal        func_8004055C
    /* EE04 8001E604 1400A0AF */   sw        $zero, 0x14($sp)
    /* EE08 8001E608 21804000 */  addu       $s0, $v0, $zero
  .L8001E60C:
    /* EE0C 8001E60C 0E000012 */  beqz       $s0, .L8001E648
    /* EE10 8001E610 21204002 */   addu      $a0, $s2, $zero
    /* EE14 8001E614 53000292 */  lbu        $v0, 0x53($s0)
    /* EE18 8001E618 00000000 */  nop
    /* EE1C 8001E61C 80004230 */  andi       $v0, $v0, 0x80
    /* EE20 8001E620 03004010 */  beqz       $v0, .L8001E630
    /* EE24 8001E624 00000000 */   nop
    /* EE28 8001E628 92790008 */  j          .L8001E648
    /* EE2C 8001E62C 21800000 */   addu      $s0, $zero, $zero
  .L8001E630:
    /* EE30 8001E630 0780053C */  lui        $a1, %hi(D_8006AB7C)
    /* EE34 8001E634 7CABA524 */  addiu      $a1, $a1, %lo(D_8006AB7C)
    /* EE38 8001E638 6C6F000C */  jal        func_8001BDB0
    /* EE3C 8001E63C 2800A427 */   addiu     $a0, $sp, 0x28
    /* EE40 8001E640 01001524 */  addiu      $s5, $zero, 0x1
    /* EE44 8001E644 21204002 */  addu       $a0, $s2, $zero
  .L8001E648:
    /* EE48 8001E648 30F7000C */  jal        func_8003DCC0
    /* EE4C 8001E64C 00010524 */   addiu     $a1, $zero, 0x100
    /* EE50 8001E650 05004014 */  bnez       $v0, .L8001E668
    /* EE54 8001E654 00000000 */   nop
    /* EE58 8001E658 0D000012 */  beqz       $s0, .L8001E690
    /* EE5C 8001E65C 0600222A */   slti      $v0, $s1, 0x6
    /* EE60 8001E660 A1790008 */  j          .L8001E684
    /* EE64 8001E664 01003126 */   addiu     $s1, $s1, 0x1
  .L8001E668:
    /* EE68 8001E668 0780053C */  lui        $a1, %hi(D_8006AB7C)
    /* EE6C 8001E66C 7CABA524 */  addiu      $a1, $a1, %lo(D_8006AB7C)
    /* EE70 8001E670 6C6F000C */  jal        func_8001BDB0
    /* EE74 8001E674 21204002 */   addu      $a0, $s2, $zero
    /* EE78 8001E678 0680013C */  lui        $at, %hi(D_80067FC8)
    /* EE7C 8001E67C C87F36A0 */  sb         $s6, %lo(D_80067FC8)($at)
    /* EE80 8001E680 01003126 */  addiu      $s1, $s1, 0x1
  .L8001E684:
    /* EE84 8001E684 0600222A */  slti       $v0, $s1, 0x6
    /* EE88 8001E688 D3FF4014 */  bnez       $v0, .L8001E5D8
    /* EE8C 8001E68C 00000000 */   nop
  .L8001E690:
    /* EE90 8001E690 16004014 */  bnez       $v0, .L8001E6EC
    /* EE94 8001E694 00000000 */   nop
    /* EE98 8001E698 1400A012 */  beqz       $s5, .L8001E6EC
    /* EE9C 8001E69C 00000000 */   nop
    /* EEA0 8001E6A0 2800A427 */  addiu      $a0, $sp, 0x28
    /* EEA4 8001E6A4 6C6F000C */  jal        func_8001BDB0
    /* EEA8 8001E6A8 3800A527 */   addiu     $a1, $sp, 0x38
    /* EEAC 8001E6AC 21880000 */  addu       $s1, $zero, $zero
  .L8001E6B0:
    /* EEB0 8001E6B0 21204002 */  addu       $a0, $s2, $zero
    /* EEB4 8001E6B4 30F7000C */  jal        func_8003DCC0
    /* EEB8 8001E6B8 00010524 */   addiu     $a1, $zero, 0x100
    /* EEBC 8001E6BC 0B004010 */  beqz       $v0, .L8001E6EC
    /* EEC0 8001E6C0 00000000 */   nop
    /* EEC4 8001E6C4 0780053C */  lui        $a1, %hi(D_8006AB7C)
    /* EEC8 8001E6C8 7CABA524 */  addiu      $a1, $a1, %lo(D_8006AB7C)
    /* EECC 8001E6CC 6C6F000C */  jal        func_8001BDB0
    /* EED0 8001E6D0 21204002 */   addu      $a0, $s2, $zero
    /* EED4 8001E6D4 0680013C */  lui        $at, %hi(D_80067FC8)
    /* EED8 8001E6D8 C87F36A0 */  sb         $s6, %lo(D_80067FC8)($at)
    /* EEDC 8001E6DC 01003126 */  addiu      $s1, $s1, 0x1
    /* EEE0 8001E6E0 0600222A */  slti       $v0, $s1, 0x6
    /* EEE4 8001E6E4 F2FF4014 */  bnez       $v0, .L8001E6B0
    /* EEE8 8001E6E8 00000000 */   nop
  .L8001E6EC:
    /* EEEC 8001E6EC 01009426 */  addiu      $s4, $s4, 0x1
    /* EEF0 8001E6F0 2A109302 */  slt        $v0, $s4, $s3
    /* EEF4 8001E6F4 B0FF4014 */  bnez       $v0, .L8001E5B8
    /* EEF8 8001E6F8 00000000 */   nop
  .L8001E6FC:
    /* EEFC 8001E6FC 0680043C */  lui        $a0, %hi(D_80067EAC)
    /* EF00 8001E700 AC7E8424 */  addiu      $a0, $a0, %lo(D_80067EAC)
    /* EF04 8001E704 2800A527 */  addiu      $a1, $sp, 0x28
  .L8001E708:
    /* EF08 8001E708 6C6F000C */  jal        func_8001BDB0
    /* EF0C 8001E70C 00000000 */   nop
    /* EF10 8001E710 4800B027 */  addiu      $s0, $sp, 0x48
    /* EF14 8001E714 0680053C */  lui        $a1, %hi(D_80067EAC)
    /* EF18 8001E718 AC7EA524 */  addiu      $a1, $a1, %lo(D_80067EAC)
    /* EF1C 8001E71C 6C6F000C */  jal        func_8001BDB0
    /* EF20 8001E720 21200002 */   addu      $a0, $s0, $zero
    /* EF24 8001E724 21200002 */  addu       $a0, $s0, $zero
    /* EF28 8001E728 5000A28F */  lw         $v0, 0x50($sp)
    /* EF2C 8001E72C 00030524 */  addiu      $a1, $zero, 0x300
    /* EF30 8001E730 80004224 */  addiu      $v0, $v0, 0x80
    /* EF34 8001E734 A1FB000C */  jal        func_8003EE84
    /* EF38 8001E738 5000A2AF */   sw        $v0, 0x50($sp)
    /* EF3C 8001E73C 21184000 */  addu       $v1, $v0, $zero
    /* EF40 8001E740 0C006010 */  beqz       $v1, .L8001E774
    /* EF44 8001E744 5000A3AF */   sw        $v1, 0x50($sp)
    /* EF48 8001E748 0780023C */  lui        $v0, %hi(D_8006ABA4)
    /* EF4C 8001E74C A4AB428C */  lw         $v0, %lo(D_8006ABA4)($v0)
    /* EF50 8001E750 00000000 */  nop
    /* EF54 8001E754 07004010 */  beqz       $v0, .L8001E774
    /* EF58 8001E758 01000224 */   addiu     $v0, $zero, 0x1
    /* EF5C 8001E75C 0680013C */  lui        $at, %hi(D_80067FCA)
    /* EF60 8001E760 CA7F22A0 */  sb         $v0, %lo(D_80067FCA)($at)
    /* EF64 8001E764 0680013C */  lui        $at, %hi(D_80067FC0)
    /* EF68 8001E768 C07F23AC */  sw         $v1, %lo(D_80067FC0)($at)
    /* EF6C 8001E76C E6790008 */  j          .L8001E798
    /* EF70 8001E770 00000000 */   nop
  .L8001E774:
    /* EF74 8001E774 0680033C */  lui        $v1, %hi(D_80067FCA)
    /* EF78 8001E778 CA7F6324 */  addiu      $v1, $v1, %lo(D_80067FCA)
    /* EF7C 8001E77C 00006290 */  lbu        $v0, 0x0($v1)
    /* EF80 8001E780 00000000 */  nop
    /* EF84 8001E784 03004014 */  bnez       $v0, .L8001E794
    /* EF88 8001E788 00000000 */   nop
    /* EF8C 8001E78C 0680013C */  lui        $at, %hi(D_80067FC0)
    /* EF90 8001E790 C07F20AC */  sw         $zero, %lo(D_80067FC0)($at)
  .L8001E794:
    /* EF94 8001E794 000060A0 */  sb         $zero, 0x0($v1)
  .L8001E798:
    /* EF98 8001E798 0680033C */  lui        $v1, %hi(D_80067FC0)
    /* EF9C 8001E79C C07F638C */  lw         $v1, %lo(D_80067FC0)($v1)
    /* EFA0 8001E7A0 00000000 */  nop
    /* EFA4 8001E7A4 0D006010 */  beqz       $v1, .L8001E7DC
    /* EFA8 8001E7A8 00000000 */   nop
    /* EFAC 8001E7AC 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* EFB0 8001E7B0 B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* EFB4 8001E7B4 00000000 */  nop
    /* EFB8 8001E7B8 2A104300 */  slt        $v0, $v0, $v1
    /* EFBC 8001E7BC 05004010 */  beqz       $v0, .L8001E7D4
    /* EFC0 8001E7C0 00080224 */   addiu     $v0, $zero, 0x800
    /* EFC4 8001E7C4 0680013C */  lui        $at, %hi(D_80067EC4)
    /* EFC8 8001E7C8 C47E22AC */  sw         $v0, %lo(D_80067EC4)($at)
    /* EFCC 8001E7CC F7790008 */  j          .L8001E7DC
    /* EFD0 8001E7D0 00000000 */   nop
  .L8001E7D4:
    /* EFD4 8001E7D4 0680013C */  lui        $at, %hi(D_80067EC4)
    /* EFD8 8001E7D8 C47E20AC */  sw         $zero, %lo(D_80067EC4)($at)
  .L8001E7DC:
    /* EFDC 8001E7DC 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* EFE0 8001E7E0 7800B68F */  lw         $s6, 0x78($sp)
    /* EFE4 8001E7E4 7400B58F */  lw         $s5, 0x74($sp)
    /* EFE8 8001E7E8 7000B48F */  lw         $s4, 0x70($sp)
    /* EFEC 8001E7EC 6C00B38F */  lw         $s3, 0x6C($sp)
    /* EFF0 8001E7F0 6800B28F */  lw         $s2, 0x68($sp)
    /* EFF4 8001E7F4 6400B18F */  lw         $s1, 0x64($sp)
    /* EFF8 8001E7F8 6000B08F */  lw         $s0, 0x60($sp)
    /* EFFC 8001E7FC 8000BD27 */  addiu      $sp, $sp, 0x80
    /* F000 8001E800 0800E003 */  jr         $ra
    /* F004 8001E804 00000000 */   nop
endlabel func_8001E454
