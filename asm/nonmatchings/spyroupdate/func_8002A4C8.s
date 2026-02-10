.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A4C8, 0x2C4

glabel func_8002A4C8
    /* 1ACC8 8002A4C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1ACCC 8002A4CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1ACD0 8002A4D0 0780103C */  lui        $s0, %hi(D_8006A0B0)
    /* 1ACD4 8002A4D4 B0A01026 */  addiu      $s0, $s0, %lo(D_8006A0B0)
    /* 1ACD8 8002A4D8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1ACDC 8002A4DC 0000028E */  lw         $v0, 0x0($s0)
    /* 1ACE0 8002A4E0 00000000 */  nop
    /* 1ACE4 8002A4E4 06004014 */  bnez       $v0, .L8002A500
    /* 1ACE8 8002A4E8 21180000 */   addu      $v1, $zero, $zero
    /* 1ACEC 8002A4EC 0780043C */  lui        $a0, %hi(D_8006A104)
    /* 1ACF0 8002A4F0 04A1848C */  lw         $a0, %lo(D_8006A104)($a0)
    /* 1ACF4 8002A4F4 BFAA000C */  jal        func_8002AAFC
    /* 1ACF8 8002A4F8 01000524 */   addiu     $a1, $zero, 0x1
    /* 1ACFC 8002A4FC 21184000 */  addu       $v1, $v0, $zero
  .L8002A500:
    /* 1AD00 8002A500 6D006014 */  bnez       $v1, .L8002A6B8
    /* 1AD04 8002A504 00000000 */   nop
    /* 1AD08 8002A508 0780043C */  lui        $a0, %hi(D_8006A100)
    /* 1AD0C 8002A50C 00A1848C */  lw         $a0, %lo(D_8006A100)($a0)
    /* 1AD10 8002A510 BFAA000C */  jal        func_8002AAFC
    /* 1AD14 8002A514 21280000 */   addu      $a1, $zero, $zero
    /* 1AD18 8002A518 67004014 */  bnez       $v0, .L8002A6B8
    /* 1AD1C 8002A51C 00000000 */   nop
    /* 1AD20 8002A520 0780043C */  lui        $a0, %hi(D_8006A108)
    /* 1AD24 8002A524 08A1848C */  lw         $a0, %lo(D_8006A108)($a0)
    /* 1AD28 8002A528 BFAA000C */  jal        func_8002AAFC
    /* 1AD2C 8002A52C 02000524 */   addiu     $a1, $zero, 0x2
    /* 1AD30 8002A530 0780053C */  lui        $a1, %hi(D_8006A0EC)
    /* 1AD34 8002A534 ECA0A58C */  lw         $a1, %lo(D_8006A0EC)($a1)
    /* 1AD38 8002A538 00000000 */  nop
    /* 1AD3C 8002A53C 5E00A010 */  beqz       $a1, .L8002A6B8
    /* 1AD40 8002A540 00000000 */   nop
    /* 1AD44 8002A544 0780023C */  lui        $v0, %hi(D_8006A248)
    /* 1AD48 8002A548 48A2428C */  lw         $v0, %lo(D_8006A248)($v0)
    /* 1AD4C 8002A54C 00000000 */  nop
    /* 1AD50 8002A550 59004004 */  bltz       $v0, .L8002A6B8
    /* 1AD54 8002A554 00000000 */   nop
    /* 1AD58 8002A558 0780023C */  lui        $v0, %hi(D_80069894)
    /* 1AD5C 8002A55C 9498428C */  lw         $v0, %lo(D_80069894)($v0)
    /* 1AD60 8002A560 00000000 */  nop
    /* 1AD64 8002A564 08004004 */  bltz       $v0, .L8002A588
    /* 1AD68 8002A568 08000224 */   addiu     $v0, $zero, 0x8
    /* 1AD6C 8002A56C 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 1AD70 8002A570 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 1AD74 8002A574 00000000 */  nop
    /* 1AD78 8002A578 4F006210 */  beq        $v1, $v0, .L8002A6B8
    /* 1AD7C 8002A57C 37000424 */   addiu     $a0, $zero, 0x37
    /* 1AD80 8002A580 ACA90008 */  j          .L8002A6B0
    /* 1AD84 8002A584 00000000 */   nop
  .L8002A588:
    /* 1AD88 8002A588 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 1AD8C 8002A58C 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 1AD90 8002A590 0B000224 */  addiu      $v0, $zero, 0xB
    /* 1AD94 8002A594 06006210 */  beq        $v1, $v0, .L8002A5B0
    /* 1AD98 8002A598 39000224 */   addiu     $v0, $zero, 0x39
    /* 1AD9C 8002A59C 0780043C */  lui        $a0, %hi(D_8006A040)
    /* 1ADA0 8002A5A0 40A0848C */  lw         $a0, %lo(D_8006A040)($a0)
    /* 1ADA4 8002A5A4 00000000 */  nop
    /* 1ADA8 8002A5A8 13008214 */  bne        $a0, $v0, .L8002A5F8
    /* 1ADAC 8002A5AC 0C000224 */   addiu     $v0, $zero, 0xC
  .L8002A5B0:
    /* 1ADB0 8002A5B0 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* 1ADB4 8002A5B4 F89F428C */  lw         $v0, %lo(D_80069FF8)($v0)
    /* 1ADB8 8002A5B8 00000000 */  nop
    /* 1ADBC 8002A5BC 2A104500 */  slt        $v0, $v0, $a1
    /* 1ADC0 8002A5C0 3D004014 */  bnez       $v0, .L8002A6B8
    /* 1ADC4 8002A5C4 28000224 */   addiu     $v0, $zero, 0x28
    /* 1ADC8 8002A5C8 0780033C */  lui        $v1, %hi(D_8006A040)
    /* 1ADCC 8002A5CC 40A0638C */  lw         $v1, %lo(D_8006A040)($v1)
    /* 1ADD0 8002A5D0 00000000 */  nop
    /* 1ADD4 8002A5D4 35006214 */  bne        $v1, $v0, .L8002A6AC
    /* 1ADD8 8002A5D8 01000224 */   addiu     $v0, $zero, 0x1
    /* 1ADDC 8002A5DC 0780033C */  lui        $v1, %hi(D_8006A044)
    /* 1ADE0 8002A5E0 44A0638C */  lw         $v1, %lo(D_8006A044)($v1)
    /* 1ADE4 8002A5E4 00000000 */  nop
    /* 1ADE8 8002A5E8 33006210 */  beq        $v1, $v0, .L8002A6B8
    /* 1ADEC 8002A5EC 2C000424 */   addiu     $a0, $zero, 0x2C
    /* 1ADF0 8002A5F0 ACA90008 */  j          .L8002A6B0
    /* 1ADF4 8002A5F4 00000000 */   nop
  .L8002A5F8:
    /* 1ADF8 8002A5F8 0E006214 */  bne        $v1, $v0, .L8002A634
    /* 1ADFC 8002A5FC 00000000 */   nop
    /* 1AE00 8002A600 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* 1AE04 8002A604 F89F428C */  lw         $v0, %lo(D_80069FF8)($v0)
    /* 1AE08 8002A608 00000000 */  nop
    /* 1AE0C 8002A60C 2A104500 */  slt        $v0, $v0, $a1
    /* 1AE10 8002A610 29004014 */  bnez       $v0, .L8002A6B8
    /* 1AE14 8002A614 01000224 */   addiu     $v0, $zero, 0x1
    /* 1AE18 8002A618 0780033C */  lui        $v1, %hi(D_8006A044)
    /* 1AE1C 8002A61C 44A0638C */  lw         $v1, %lo(D_8006A044)($v1)
    /* 1AE20 8002A620 00000000 */  nop
    /* 1AE24 8002A624 24006210 */  beq        $v1, $v0, .L8002A6B8
    /* 1AE28 8002A628 15000424 */   addiu     $a0, $zero, 0x15
    /* 1AE2C 8002A62C ACA90008 */  j          .L8002A6B0
    /* 1AE30 8002A630 00000000 */   nop
  .L8002A634:
    /* 1AE34 8002A634 0780023C */  lui        $v0, %hi(D_8006A098)
    /* 1AE38 8002A638 98A0428C */  lw         $v0, %lo(D_8006A098)($v0)
    /* 1AE3C 8002A63C 00000000 */  nop
    /* 1AE40 8002A640 1D00401C */  bgtz       $v0, .L8002A6B8
    /* 1AE44 8002A644 0A000224 */   addiu     $v0, $zero, 0xA
    /* 1AE48 8002A648 1B006210 */  beq        $v1, $v0, .L8002A6B8
    /* 1AE4C 8002A64C B200A224 */   addiu     $v0, $a1, 0xB2
    /* 1AE50 8002A650 0780033C */  lui        $v1, %hi(D_80069FF8)
    /* 1AE54 8002A654 F89F638C */  lw         $v1, %lo(D_80069FF8)($v1)
    /* 1AE58 8002A658 00000000 */  nop
    /* 1AE5C 8002A65C 2A104300 */  slt        $v0, $v0, $v1
    /* 1AE60 8002A660 15004014 */  bnez       $v0, .L8002A6B8
    /* 1AE64 8002A664 15000224 */   addiu     $v0, $zero, 0x15
    /* 1AE68 8002A668 03008210 */  beq        $a0, $v0, .L8002A678
    /* 1AE6C 8002A66C 2E000224 */   addiu     $v0, $zero, 0x2E
    /* 1AE70 8002A670 0F008214 */  bne        $a0, $v0, .L8002A6B0
    /* 1AE74 8002A674 2C000424 */   addiu     $a0, $zero, 0x2C
  .L8002A678:
    /* 1AE78 8002A678 0680023C */  lui        $v0, %hi(D_80064682)
    /* 1AE7C 8002A67C 82464284 */  lh         $v0, %lo(D_80064682)($v0)
    /* 1AE80 8002A680 00000000 */  nop
    /* 1AE84 8002A684 09004010 */  beqz       $v0, .L8002A6AC
    /* 1AE88 8002A688 40FF0426 */   addiu     $a0, $s0, -0xC0
    /* 1AE8C 8002A68C 00040524 */  addiu      $a1, $zero, 0x400
    /* 1AE90 8002A690 01000624 */  addiu      $a2, $zero, 0x1
    /* 1AE94 8002A694 8FFB000C */  jal        func_8003EE3C
    /* 1AE98 8002A698 21380000 */   addu      $a3, $zero, $zero
    /* 1AE9C 8002A69C 04004014 */  bnez       $v0, .L8002A6B0
    /* 1AEA0 8002A6A0 2C000424 */   addiu     $a0, $zero, 0x2C
    /* 1AEA4 8002A6A4 ACA90008 */  j          .L8002A6B0
    /* 1AEA8 8002A6A8 2A000424 */   addiu     $a0, $zero, 0x2A
  .L8002A6AC:
    /* 1AEAC 8002A6AC 2C000424 */  addiu      $a0, $zero, 0x2C
  .L8002A6B0:
    /* 1AEB0 8002A6B0 76D4000C */  jal        func_800351D8
    /* 1AEB4 8002A6B4 00000000 */   nop
  .L8002A6B8:
    /* 1AEB8 8002A6B8 0780103C */  lui        $s0, %hi(D_8006A01C)
    /* 1AEBC 8002A6BC 1CA01026 */  addiu      $s0, $s0, %lo(D_8006A01C)
    /* 1AEC0 8002A6C0 000000AE */  sw         $zero, 0x0($s0)
    /* 1AEC4 8002A6C4 D4FF0426 */  addiu      $a0, $s0, -0x2C
    /* 1AEC8 8002A6C8 A1FB000C */  jal        func_8003EE84
    /* 1AECC 8002A6CC 000C0524 */   addiu     $a1, $zero, 0xC00
    /* 1AED0 8002A6D0 0F004010 */  beqz       $v0, .L8002A710
    /* 1AED4 8002A6D4 00000000 */   nop
    /* 1AED8 8002A6D8 0780043C */  lui        $a0, %hi(D_8006AB94)
    /* 1AEDC 8002A6DC 94AB848C */  lw         $a0, %lo(D_8006AB94)($a0)
    /* 1AEE0 8002A6E0 1EAC000C */  jal        func_8002B078
    /* 1AEE4 8002A6E4 00000000 */   nop
    /* 1AEE8 8002A6E8 04000324 */  addiu      $v1, $zero, 0x4
    /* 1AEEC 8002A6EC 08004314 */  bne        $v0, $v1, .L8002A710
    /* 1AEF0 8002A6F0 00000000 */   nop
    /* 1AEF4 8002A6F4 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* 1AEF8 8002A6F8 F89F428C */  lw         $v0, %lo(D_80069FF8)($v0)
    /* 1AEFC 8002A6FC 0780033C */  lui        $v1, %hi(D_8006AB78)
    /* 1AF00 8002A700 78AB638C */  lw         $v1, %lo(D_8006AB78)($v1)
    /* 1AF04 8002A704 00000000 */  nop
    /* 1AF08 8002A708 23104300 */  subu       $v0, $v0, $v1
    /* 1AF0C 8002A70C 000002AE */  sw         $v0, 0x0($s0)
  .L8002A710:
    /* 1AF10 8002A710 0780103C */  lui        $s0, %hi(D_8006A01C)
    /* 1AF14 8002A714 1CA01026 */  addiu      $s0, $s0, %lo(D_8006A01C)
    /* 1AF18 8002A718 0000028E */  lw         $v0, 0x0($s0)
    /* 1AF1C 8002A71C 00000000 */  nop
    /* 1AF20 8002A720 15004014 */  bnez       $v0, .L8002A778
    /* 1AF24 8002A724 00000000 */   nop
    /* 1AF28 8002A728 0680043C */  lui        $a0, %hi(D_80067EAC)
    /* 1AF2C 8002A72C AC7E8424 */  addiu      $a0, $a0, %lo(D_80067EAC)
    /* 1AF30 8002A730 A1FB000C */  jal        func_8003EE84
    /* 1AF34 8002A734 00100524 */   addiu     $a1, $zero, 0x1000
    /* 1AF38 8002A738 0F004010 */  beqz       $v0, .L8002A778
    /* 1AF3C 8002A73C 00000000 */   nop
    /* 1AF40 8002A740 0780043C */  lui        $a0, %hi(D_8006AB94)
    /* 1AF44 8002A744 94AB848C */  lw         $a0, %lo(D_8006AB94)($a0)
    /* 1AF48 8002A748 1EAC000C */  jal        func_8002B078
    /* 1AF4C 8002A74C 00000000 */   nop
    /* 1AF50 8002A750 04000324 */  addiu      $v1, $zero, 0x4
    /* 1AF54 8002A754 08004314 */  bne        $v0, $v1, .L8002A778
    /* 1AF58 8002A758 00000000 */   nop
    /* 1AF5C 8002A75C 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* 1AF60 8002A760 F89F428C */  lw         $v0, %lo(D_80069FF8)($v0)
    /* 1AF64 8002A764 0780033C */  lui        $v1, %hi(D_8006AB78)
    /* 1AF68 8002A768 78AB638C */  lw         $v1, %lo(D_8006AB78)($v1)
    /* 1AF6C 8002A76C 00000000 */  nop
    /* 1AF70 8002A770 23104300 */  subu       $v0, $v0, $v1
    /* 1AF74 8002A774 000002AE */  sw         $v0, 0x0($s0)
  .L8002A778:
    /* 1AF78 8002A778 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1AF7C 8002A77C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1AF80 8002A780 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1AF84 8002A784 0800E003 */  jr         $ra
    /* 1AF88 8002A788 00000000 */   nop
endlabel func_8002A4C8
