.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_34_8006F808, 0xD8

glabel func_level_34_8006F808
    /* 27AC5A4 8006F808 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 27AC5A8 8006F80C 0680043C */  lui        $a0, %hi(D_80067674)
    /* 27AC5AC 8006F810 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 27AC5B0 8006F814 1800BFAF */  sw         $ra, 0x18($sp)
    /* 27AC5B4 8006F818 00008290 */  lbu        $v0, 0x0($a0)
    /* 27AC5B8 8006F81C 00000000 */  nop
    /* 27AC5BC 8006F820 29004010 */  beqz       $v0, .Llevel_34_8006F8C8
    /* 27AC5C0 8006F824 00000000 */   nop
    /* 27AC5C4 8006F828 0680033C */  lui        $v1, %hi(D_80067148)
    /* 27AC5C8 8006F82C 48716390 */  lbu        $v1, %lo(D_80067148)($v1)
    /* 27AC5CC 8006F830 00000000 */  nop
    /* 27AC5D0 8006F834 01006230 */  andi       $v0, $v1, 0x1
    /* 27AC5D4 8006F838 0A004014 */  bnez       $v0, .Llevel_34_8006F864
    /* 27AC5D8 8006F83C 4992023C */   lui       $v0, (0x92492493 >> 16)
    /* 27AC5DC 8006F840 0680053C */  lui        $a1, %hi(D_80067008)
    /* 27AC5E0 8006F844 0870A58C */  lw         $a1, %lo(D_80067008)($a1)
    /* 27AC5E4 8006F848 93244234 */  ori        $v0, $v0, (0x92492493 & 0xFFFF)
    /* 27AC5E8 8006F84C 43400500 */  sra        $t0, $a1, 1
    /* 27AC5EC 8006F850 18000201 */  mult       $t0, $v0
    /* 27AC5F0 8006F854 68010624 */  addiu      $a2, $zero, 0x168
    /* 27AC5F4 8006F858 EC000724 */  addiu      $a3, $zero, 0xEC
    /* 27AC5F8 8006F85C 24BE0108 */  j          .Llevel_34_8006F890
    /* 27AC5FC 8006F860 05000224 */   addiu     $v0, $zero, 0x5
  .Llevel_34_8006F864:
    /* 27AC600 8006F864 02006230 */  andi       $v0, $v1, 0x2
    /* 27AC604 8006F868 17004014 */  bnez       $v0, .Llevel_34_8006F8C8
    /* 27AC608 8006F86C 4992023C */   lui       $v0, (0x92492493 >> 16)
    /* 27AC60C 8006F870 0680053C */  lui        $a1, %hi(D_80067008)
    /* 27AC610 8006F874 0870A58C */  lw         $a1, %lo(D_80067008)($a1)
    /* 27AC614 8006F878 93244234 */  ori        $v0, $v0, (0x92492493 & 0xFFFF)
    /* 27AC618 8006F87C 43400500 */  sra        $t0, $a1, 1
    /* 27AC61C 8006F880 18000201 */  mult       $t0, $v0
    /* 27AC620 8006F884 68010624 */  addiu      $a2, $zero, 0x168
    /* 27AC624 8006F888 EC000724 */  addiu      $a3, $zero, 0xEC
    /* 27AC628 8006F88C 07000224 */  addiu      $v0, $zero, 0x7
  .Llevel_34_8006F890:
    /* 27AC62C 8006F890 C32F0500 */  sra        $a1, $a1, 31
    /* 27AC630 8006F894 1000A2AF */  sw         $v0, 0x10($sp)
    /* 27AC634 8006F898 10480000 */  mfhi       $t1
    /* 27AC638 8006F89C 21182801 */  addu       $v1, $t1, $t0
    /* 27AC63C 8006F8A0 83180300 */  sra        $v1, $v1, 2
    /* 27AC640 8006F8A4 23186500 */  subu       $v1, $v1, $a1
    /* 27AC644 8006F8A8 C0100300 */  sll        $v0, $v1, 3
    /* 27AC648 8006F8AC 23104300 */  subu       $v0, $v0, $v1
    /* 27AC64C 8006F8B0 23400201 */  subu       $t0, $t0, $v0
    /* 27AC650 8006F8B4 80400800 */  sll        $t0, $t0, 2
    /* 27AC654 8006F8B8 0680053C */  lui        $a1, %hi(D_800635F8)
    /* 27AC658 8006F8BC F835A524 */  addiu      $a1, $a1, %lo(D_800635F8)
    /* 27AC65C 8006F8C0 A449010C */  jal        func_80052690
    /* 27AC660 8006F8C4 21280501 */   addu      $a1, $t0, $a1
  .Llevel_34_8006F8C8:
    /* 27AC664 8006F8C8 154D010C */  jal        func_80053454
    /* 27AC668 8006F8CC 00000000 */   nop
    /* 27AC66C 8006F8D0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 27AC670 8006F8D4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 27AC674 8006F8D8 0800E003 */  jr         $ra
    /* 27AC678 8006F8DC 00000000 */   nop
endlabel func_level_34_8006F808
