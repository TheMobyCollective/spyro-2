.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001EE18, 0x190

glabel func_8001EE18
    /* F618 8001EE18 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* F61C 8001EE1C 2000B0AF */  sw         $s0, 0x20($sp)
    /* F620 8001EE20 21808000 */  addu       $s0, $a0, $zero
    /* F624 8001EE24 2400B1AF */  sw         $s1, 0x24($sp)
    /* F628 8001EE28 21880000 */  addu       $s1, $zero, $zero
    /* F62C 8001EE2C 0500C010 */  beqz       $a2, .L8001EE44
    /* F630 8001EE30 2800BFAF */   sw        $ra, 0x28($sp)
    /* F634 8001EE34 806F000C */  jal        func_8001BE00
    /* F638 8001EE38 1000A427 */   addiu     $a0, $sp, 0x10
    /* F63C 8001EE3C 947B0008 */  j          .L8001EE50
    /* F640 8001EE40 1000A427 */   addiu     $a0, $sp, 0x10
  .L8001EE44:
    /* F644 8001EE44 6C6F000C */  jal        func_8001BDB0
    /* F648 8001EE48 1000A427 */   addiu     $a0, $sp, 0x10
    /* F64C 8001EE4C 1000A427 */  addiu      $a0, $sp, 0x10
  .L8001EE50:
    /* F650 8001EE50 886E000C */  jal        func_8001BA20
    /* F654 8001EE54 21280000 */   addu      $a1, $zero, $zero
    /* F658 8001EE58 21204000 */  addu       $a0, $v0, $zero
    /* F65C 8001EE5C 1800A58F */  lw         $a1, 0x18($sp)
    /* F660 8001EE60 2E6D000C */  jal        func_8001B4B8
    /* F664 8001EE64 01000624 */   addiu     $a2, $zero, 0x1
    /* F668 8001EE68 040002AE */  sw         $v0, 0x4($s0)
    /* F66C 8001EE6C 1000A48F */  lw         $a0, 0x10($sp)
    /* F670 8001EE70 1400A58F */  lw         $a1, 0x14($sp)
    /* F674 8001EE74 2E6D000C */  jal        func_8001B4B8
    /* F678 8001EE78 01000624 */   addiu     $a2, $zero, 0x1
    /* F67C 8001EE7C 0000038E */  lw         $v1, 0x0($s0)
    /* F680 8001EE80 21204000 */  addu       $a0, $v0, $zero
    /* F684 8001EE84 23188300 */  subu       $v1, $a0, $v1
    /* F688 8001EE88 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* F68C 8001EE8C 01086228 */  slti       $v0, $v1, 0x801
    /* F690 8001EE90 02004014 */  bnez       $v0, .L8001EE9C
    /* F694 8001EE94 00000000 */   nop
    /* F698 8001EE98 00F06324 */  addiu      $v1, $v1, -0x1000
  .L8001EE9C:
    /* F69C 8001EE9C 02006104 */  bgez       $v1, .L8001EEA8
    /* F6A0 8001EEA0 21106000 */   addu      $v0, $v1, $zero
    /* F6A4 8001EEA4 23100200 */  negu       $v0, $v0
  .L8001EEA8:
    /* F6A8 8001EEA8 01044228 */  slti       $v0, $v0, 0x401
    /* F6AC 8001EEAC 15004014 */  bnez       $v0, .L8001EF04
    /* F6B0 8001EEB0 00000000 */   nop
    /* F6B4 8001EEB4 0680023C */  lui        $v0, %hi(D_80067FC7)
    /* F6B8 8001EEB8 C77F4290 */  lbu        $v0, %lo(D_80067FC7)($v0)
    /* F6BC 8001EEBC 00000000 */  nop
    /* F6C0 8001EEC0 09004014 */  bnez       $v0, .L8001EEE8
    /* F6C4 8001EEC4 00088224 */   addiu     $v0, $a0, 0x800
    /* F6C8 8001EEC8 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* F6CC 8001EECC D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* F6D0 8001EED0 07000224 */  addiu      $v0, $zero, 0x7
    /* F6D4 8001EED4 03006210 */  beq        $v1, $v0, .L8001EEE4
    /* F6D8 8001EED8 0F000224 */   addiu     $v0, $zero, 0xF
    /* F6DC 8001EEDC 09006214 */  bne        $v1, $v0, .L8001EF04
    /* F6E0 8001EEE0 00000000 */   nop
  .L8001EEE4:
    /* F6E4 8001EEE4 00088224 */  addiu      $v0, $a0, 0x800
  .L8001EEE8:
    /* F6E8 8001EEE8 FF0F4430 */  andi       $a0, $v0, 0xFFF
    /* F6EC 8001EEEC 01001124 */  addiu      $s1, $zero, 0x1
    /* F6F0 8001EEF0 0400038E */  lw         $v1, 0x4($s0)
    /* F6F4 8001EEF4 00080224 */  addiu      $v0, $zero, 0x800
    /* F6F8 8001EEF8 23104300 */  subu       $v0, $v0, $v1
    /* F6FC 8001EEFC FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* F700 8001EF00 040002AE */  sw         $v0, 0x4($s0)
  .L8001EF04:
    /* F704 8001EF04 1000A28F */  lw         $v0, 0x10($sp)
    /* F708 8001EF08 00000000 */  nop
    /* F70C 8001EF0C 02004104 */  bgez       $v0, .L8001EF18
    /* F710 8001EF10 00000000 */   nop
    /* F714 8001EF14 23100200 */  negu       $v0, $v0
  .L8001EF18:
    /* F718 8001EF18 80004228 */  slti       $v0, $v0, 0x80
    /* F71C 8001EF1C 0D004010 */  beqz       $v0, .L8001EF54
    /* F720 8001EF20 01088228 */   slti      $v0, $a0, 0x801
    /* F724 8001EF24 1400A28F */  lw         $v0, 0x14($sp)
    /* F728 8001EF28 00000000 */  nop
    /* F72C 8001EF2C 02004104 */  bgez       $v0, .L8001EF38
    /* F730 8001EF30 00000000 */   nop
    /* F734 8001EF34 23100200 */  negu       $v0, $v0
  .L8001EF38:
    /* F738 8001EF38 80004228 */  slti       $v0, $v0, 0x80
    /* F73C 8001EF3C 05004010 */  beqz       $v0, .L8001EF54
    /* F740 8001EF40 01088228 */   slti      $v0, $a0, 0x801
    /* F744 8001EF44 0680043C */  lui        $a0, %hi(D_80067F28)
    /* F748 8001EF48 287F848C */  lw         $a0, %lo(D_80067F28)($a0)
    /* F74C 8001EF4C 00000000 */  nop
    /* F750 8001EF50 01088228 */  slti       $v0, $a0, 0x801
  .L8001EF54:
    /* F754 8001EF54 02004014 */  bnez       $v0, .L8001EF60
    /* F758 8001EF58 00000000 */   nop
    /* F75C 8001EF5C 00F08424 */  addiu      $a0, $a0, -0x1000
  .L8001EF60:
    /* F760 8001EF60 0400038E */  lw         $v1, 0x4($s0)
    /* F764 8001EF64 00000000 */  nop
    /* F768 8001EF68 01086228 */  slti       $v0, $v1, 0x801
    /* F76C 8001EF6C 03004014 */  bnez       $v0, .L8001EF7C
    /* F770 8001EF70 000004AE */   sw        $a0, 0x0($s0)
    /* F774 8001EF74 00F06224 */  addiu      $v0, $v1, -0x1000
    /* F778 8001EF78 040002AE */  sw         $v0, 0x4($s0)
  .L8001EF7C:
    /* F77C 8001EF7C 1000A427 */  addiu      $a0, $sp, 0x10
    /* F780 8001EF80 886E000C */  jal        func_8001BA20
    /* F784 8001EF84 01000524 */   addiu     $a1, $zero, 0x1
    /* F788 8001EF88 080002AE */  sw         $v0, 0x8($s0)
    /* F78C 8001EF8C 21102002 */  addu       $v0, $s1, $zero
    /* F790 8001EF90 2800BF8F */  lw         $ra, 0x28($sp)
    /* F794 8001EF94 2400B18F */  lw         $s1, 0x24($sp)
    /* F798 8001EF98 2000B08F */  lw         $s0, 0x20($sp)
    /* F79C 8001EF9C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* F7A0 8001EFA0 0800E003 */  jr         $ra
    /* F7A4 8001EFA4 00000000 */   nop
endlabel func_8001EE18
