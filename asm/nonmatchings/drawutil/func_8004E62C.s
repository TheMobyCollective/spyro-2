.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004E62C, 0xA0

glabel func_8004E62C
    /* 3EE2C 8004E62C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3EE30 8004E630 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3EE34 8004E634 21888000 */  addu       $s1, $a0, $zero
    /* 3EE38 8004E638 BC28023C */  lui        $v0, (0x28BCC1CD >> 16)
    /* 3EE3C 8004E63C CDC14234 */  ori        $v0, $v0, (0x28BCC1CD & 0xFFFF)
    /* 3EE40 8004E640 21200000 */  addu       $a0, $zero, $zero
    /* 3EE44 8004E644 0C000524 */  addiu      $a1, $zero, 0xC
    /* 3EE48 8004E648 2328B100 */  subu       $a1, $a1, $s1
    /* 3EE4C 8004E64C 00010624 */  addiu      $a2, $zero, 0x100
    /* 3EE50 8004E650 78000724 */  addiu      $a3, $zero, 0x78
    /* 3EE54 8004E654 2338F100 */  subu       $a3, $a3, $s1
    /* 3EE58 8004E658 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3EE5C 8004E65C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3EE60 8004E660 7338010C */  jal        func_8004E1CC
    /* 3EE64 8004E664 1000A2AF */   sw        $v0, 0x10($sp)
    /* 3EE68 8004E668 21800000 */  addu       $s0, $zero, $zero
  .L8004E66C:
    /* 3EE6C 8004E66C 0680013C */  lui        $at, %hi(D_80063918)
    /* 3EE70 8004E670 21083000 */  addu       $at, $at, $s0
    /* 3EE74 8004E674 18392490 */  lbu        $a0, %lo(D_80063918)($at)
    /* 3EE78 8004E678 0680013C */  lui        $at, %hi(D_8006391A)
    /* 3EE7C 8004E67C 21083000 */  addu       $at, $at, $s0
    /* 3EE80 8004E680 1A392690 */  lbu        $a2, %lo(D_8006391A)($at)
    /* 3EE84 8004E684 0680013C */  lui        $at, %hi(D_8006391B)
    /* 3EE88 8004E688 21083000 */  addu       $at, $at, $s0
    /* 3EE8C 8004E68C 1B392790 */  lbu        $a3, %lo(D_8006391B)($at)
    /* 3EE90 8004E690 0680013C */  lui        $at, %hi(D_80063919)
    /* 3EE94 8004E694 21083000 */  addu       $at, $at, $s0
    /* 3EE98 8004E698 19392590 */  lbu        $a1, %lo(D_80063919)($at)
    /* 3EE9C 8004E69C 04001026 */  addiu      $s0, $s0, 0x4
    /* 3EEA0 8004E6A0 8E38010C */  jal        func_8004E238
    /* 3EEA4 8004E6A4 2328B100 */   subu      $a1, $a1, $s1
    /* 3EEA8 8004E6A8 A000022A */  slti       $v0, $s0, 0xA0
    /* 3EEAC 8004E6AC EFFF4014 */  bnez       $v0, .L8004E66C
    /* 3EEB0 8004E6B0 00000000 */   nop
    /* 3EEB4 8004E6B4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3EEB8 8004E6B8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3EEBC 8004E6BC 1800B08F */  lw         $s0, 0x18($sp)
    /* 3EEC0 8004E6C0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3EEC4 8004E6C4 0800E003 */  jr         $ra
    /* 3EEC8 8004E6C8 00000000 */   nop
endlabel func_8004E62C
