.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004E6CC, 0x12C

glabel func_8004E6CC
    /* 3EECC 8004E6CC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3EED0 8004E6D0 21488000 */  addu       $t1, $a0, $zero
    /* 3EED4 8004E6D4 0680043C */  lui        $a0, %hi(D_80067118)
    /* 3EED8 8004E6D8 1871848C */  lw         $a0, %lo(D_80067118)($a0)
    /* 3EEDC 8004E6DC 2138A000 */  addu       $a3, $a1, $zero
    /* 3EEE0 8004E6E0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3EEE4 8004E6E4 0680013C */  lui        $at, %hi(D_80063B50)
    /* 3EEE8 8004E6E8 21082900 */  addu       $at, $at, $t1
    /* 3EEEC 8004E6EC 503B2290 */  lbu        $v0, %lo(D_80063B50)($at)
    /* 3EEF0 8004E6F0 0680013C */  lui        $at, %hi(D_80063B08)
    /* 3EEF4 8004E6F4 21082900 */  addu       $at, $at, $t1
    /* 3EEF8 8004E6F8 083B2590 */  lbu        $a1, %lo(D_80063B08)($at)
    /* 3EEFC 8004E6FC 00190400 */  sll        $v1, $a0, 4
    /* 3EF00 8004E700 21186400 */  addu       $v1, $v1, $a0
    /* 3EF04 8004E704 40180300 */  sll        $v1, $v1, 1
    /* 3EF08 8004E708 21186900 */  addu       $v1, $v1, $t1
    /* 3EF0C 8004E70C 23304600 */  subu       $a2, $v0, $a2
    /* 3EF10 8004E710 C0100400 */  sll        $v0, $a0, 3
    /* 3EF14 8004E714 23104400 */  subu       $v0, $v0, $a0
    /* 3EF18 8004E718 80100200 */  sll        $v0, $v0, 2
    /* 3EF1C 8004E71C 23104400 */  subu       $v0, $v0, $a0
    /* 3EF20 8004E720 21104500 */  addu       $v0, $v0, $a1
    /* 3EF24 8004E724 80100200 */  sll        $v0, $v0, 2
    /* 3EF28 8004E728 02000424 */  addiu      $a0, $zero, 0x2
    /* 3EF2C 8004E72C 0680013C */  lui        $at, %hi(D_80063B2C)
    /* 3EF30 8004E730 21082300 */  addu       $at, $at, $v1
    /* 3EF34 8004E734 2C3B2590 */  lbu        $a1, %lo(D_80063B2C)($at)
    /* 3EF38 8004E738 0780033C */  lui        $v1, %hi(D_800698F8)
    /* 3EF3C 8004E73C F898638C */  lw         $v1, %lo(D_800698F8)($v1)
    /* 3EF40 8004E740 0680013C */  lui        $at, %hi(D_80063A9C)
    /* 3EF44 8004E744 21082200 */  addu       $at, $at, $v0
    /* 3EF48 8004E748 9C3A288C */  lw         $t0, %lo(D_80063A9C)($at)
    /* 3EF4C 8004E74C 0A006414 */  bne        $v1, $a0, .L8004E778
    /* 3EF50 8004E750 00000000 */   nop
    /* 3EF54 8004E754 0800E314 */  bne        $a3, $v1, .L8004E778
    /* 3EF58 8004E758 00000000 */   nop
    /* 3EF5C 8004E75C 0780023C */  lui        $v0, %hi(D_80068373)
    /* 3EF60 8004E760 73834290 */  lbu        $v0, %lo(D_80068373)($v0)
    /* 3EF64 8004E764 00000000 */  nop
    /* 3EF68 8004E768 03004014 */  bnez       $v0, .L8004E778
    /* 3EF6C 8004E76C 00000000 */   nop
    /* 3EF70 8004E770 E9390108 */  j          .L8004E7A4
    /* 3EF74 8004E774 0D000724 */   addiu     $a3, $zero, 0xD
  .L8004E778:
    /* 3EF78 8004E778 0780023C */  lui        $v0, %hi(D_800698F4)
    /* 3EF7C 8004E77C F498428C */  lw         $v0, %lo(D_800698F4)($v0)
    /* 3EF80 8004E780 00000000 */  nop
    /* 3EF84 8004E784 06004714 */  bne        $v0, $a3, .L8004E7A0
    /* 3EF88 8004E788 21180000 */   addu      $v1, $zero, $zero
    /* 3EF8C 8004E78C 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 3EF90 8004E790 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 3EF94 8004E794 00000000 */  nop
    /* 3EF98 8004E798 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3EF9C 8004E79C 16004328 */  slti       $v1, $v0, 0x16
  .L8004E7A0:
    /* 3EFA0 8004E7A0 02006724 */  addiu      $a3, $v1, 0x2
  .L8004E7A4:
    /* 3EFA4 8004E7A4 F7FF2225 */  addiu      $v0, $t1, -0x9
    /* 3EFA8 8004E7A8 1700422C */  sltiu      $v0, $v0, 0x17
    /* 3EFAC 8004E7AC 05004014 */  bnez       $v0, .L8004E7C4
    /* 3EFB0 8004E7B0 14002229 */   slti      $v0, $t1, 0x14
    /* 3EFB4 8004E7B4 6136010C */  jal        func_8004D984
    /* 3EFB8 8004E7B8 21200001 */   addu      $a0, $t0, $zero
    /* 3EFBC 8004E7BC FA390108 */  j          .L8004E7E8
    /* 3EFC0 8004E7C0 00000000 */   nop
  .L8004E7C4:
    /* 3EFC4 8004E7C4 05004010 */  beqz       $v0, .L8004E7DC
    /* 3EFC8 8004E7C8 00000000 */   nop
    /* 3EFCC 8004E7CC 9B36010C */  jal        func_8004DA6C
    /* 3EFD0 8004E7D0 21200001 */   addu      $a0, $t0, $zero
    /* 3EFD4 8004E7D4 FA390108 */  j          .L8004E7E8
    /* 3EFD8 8004E7D8 00000000 */   nop
  .L8004E7DC:
    /* 3EFDC 8004E7DC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3EFE0 8004E7E0 DD28010C */  jal        func_8004A374
    /* 3EFE4 8004E7E4 21200001 */   addu      $a0, $t0, $zero
  .L8004E7E8:
    /* 3EFE8 8004E7E8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3EFEC 8004E7EC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3EFF0 8004E7F0 0800E003 */  jr         $ra
    /* 3EFF4 8004E7F4 00000000 */   nop
endlabel func_8004E6CC
