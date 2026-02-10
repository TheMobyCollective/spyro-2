.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002CC88, 0x470

glabel func_8002CC88
    /* 1D488 8002CC88 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 1D48C 8002CC8C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 1D490 8002CC90 0780123C */  lui        $s2, %hi(D_8006A0B0)
    /* 1D494 8002CC94 B0A05226 */  addiu      $s2, $s2, %lo(D_8006A0B0)
    /* 1D498 8002CC98 5400B3AF */  sw         $s3, 0x54($sp)
    /* 1D49C 8002CC9C 14005326 */  addiu      $s3, $s2, 0x14
    /* 1D4A0 8002CCA0 5800BFAF */  sw         $ra, 0x58($sp)
    /* 1D4A4 8002CCA4 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 1D4A8 8002CCA8 4800B0AF */  sw         $s0, 0x48($sp)
    /* 1D4AC 8002CCAC 0000428E */  lw         $v0, 0x0($s2)
    /* 1D4B0 8002CCB0 21206002 */  addu       $a0, $s3, $zero
    /* 1D4B4 8002CCB4 01004224 */  addiu      $v0, $v0, 0x1
    /* 1D4B8 8002CCB8 686F000C */  jal        func_8001BDA0
    /* 1D4BC 8002CCBC 000042AE */   sw        $v0, 0x0($s2)
    /* 1D4C0 8002CCC0 0780033C */  lui        $v1, %hi(D_8006A0F5)
    /* 1D4C4 8002CCC4 F5A06390 */  lbu        $v1, %lo(D_8006A0F5)($v1)
    /* 1D4C8 8002CCC8 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1D4CC 8002CCCC 0780013C */  lui        $at, %hi(D_8006A0CC)
    /* 1D4D0 8002CCD0 CCA022AC */  sw         $v0, %lo(D_8006A0CC)($at)
    /* 1D4D4 8002CCD4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1D4D8 8002CCD8 0780013C */  lui        $at, %hi(D_8006A0DC)
    /* 1D4DC 8002CCDC DCA020AC */  sw         $zero, %lo(D_8006A0DC)($at)
    /* 1D4E0 8002CCE0 0780013C */  lui        $at, %hi(D_8006A0F4)
    /* 1D4E4 8002CCE4 F4A020A0 */  sb         $zero, %lo(D_8006A0F4)($at)
    /* 1D4E8 8002CCE8 0780013C */  lui        $at, %hi(D_8006A28C)
    /* 1D4EC 8002CCEC 8CA222AC */  sw         $v0, %lo(D_8006A28C)($at)
    /* 1D4F0 8002CCF0 D8006014 */  bnez       $v1, .L8002D054
    /* 1D4F4 8002CCF4 3800B027 */   addiu     $s0, $sp, 0x38
    /* 1D4F8 8002CCF8 70FF4426 */  addiu      $a0, $s2, -0x90
    /* 1D4FC 8002CCFC 1800A527 */  addiu      $a1, $sp, 0x18
    /* 1D500 8002CD00 0780033C */  lui        $v1, %hi(D_8006A260)
    /* 1D504 8002CD04 60A2638C */  lw         $v1, %lo(D_8006A260)($v1)
    /* 1D508 8002CD08 2130A000 */  addu       $a2, $a1, $zero
    /* 1D50C 8002CD0C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1D510 8002CD10 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1D514 8002CD14 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 1D518 8002CD18 2C00A0AF */  sw         $zero, 0x2C($sp)
    /* 1D51C 8002CD1C 23180300 */  negu       $v1, $v1
    /* 1D520 8002CD20 60006224 */  addiu      $v0, $v1, 0x60
    /* 1D524 8002CD24 A0FF6324 */  addiu      $v1, $v1, -0x60
    /* 1D528 8002CD28 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1D52C 8002CD2C 696E000C */  jal        func_8001B9A4
    /* 1D530 8002CD30 3000A3AF */   sw        $v1, 0x30($sp)
    /* 1D534 8002CD34 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1D538 8002CD38 21288000 */  addu       $a1, $a0, $zero
    /* 1D53C 8002CD3C 40FF5126 */  addiu      $s1, $s2, -0xC0
    /* 1D540 8002CD40 736F000C */  jal        func_8001BDCC
    /* 1D544 8002CD44 21302002 */   addu      $a2, $s1, $zero
    /* 1D548 8002CD48 21200000 */  addu       $a0, $zero, $zero
    /* 1D54C 8002CD4C 2800B027 */  addiu      $s0, $sp, 0x28
    /* 1D550 8002CD50 21280002 */  addu       $a1, $s0, $zero
    /* 1D554 8002CD54 696E000C */  jal        func_8001B9A4
    /* 1D558 8002CD58 21300002 */   addu      $a2, $s0, $zero
    /* 1D55C 8002CD5C 21200002 */  addu       $a0, $s0, $zero
    /* 1D560 8002CD60 21280002 */  addu       $a1, $s0, $zero
    /* 1D564 8002CD64 736F000C */  jal        func_8001BDCC
    /* 1D568 8002CD68 21302002 */   addu      $a2, $s1, $zero
    /* 1D56C 8002CD6C 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1D570 8002CD70 21280002 */  addu       $a1, $s0, $zero
    /* 1D574 8002CD74 04000624 */  addiu      $a2, $zero, 0x4
    /* 1D578 8002CD78 21380000 */  addu       $a3, $zero, $zero
    /* 1D57C 8002CD7C 8EF3000C */  jal        func_8003CE38
    /* 1D580 8002CD80 1000A0AF */   sw        $zero, 0x10($sp)
    /* 1D584 8002CD84 5E004010 */  beqz       $v0, .L8002CF00
    /* 1D588 8002CD88 21206002 */   addu      $a0, $s3, $zero
    /* 1D58C 8002CD8C 0780103C */  lui        $s0, %hi(D_8006AB88)
    /* 1D590 8002CD90 88AB1026 */  addiu      $s0, $s0, %lo(D_8006AB88)
    /* 1D594 8002CD94 6C6F000C */  jal        func_8001BDB0
    /* 1D598 8002CD98 21280002 */   addu      $a1, $s0, $zero
    /* 1D59C 8002CD9C 21200002 */  addu       $a0, $s0, $zero
    /* 1D5A0 8002CDA0 886E000C */  jal        func_8001BA20
    /* 1D5A4 8002CDA4 21280000 */   addu      $a1, $zero, $zero
    /* 1D5A8 8002CDA8 21284000 */  addu       $a1, $v0, $zero
    /* 1D5AC 8002CDAC 0780043C */  lui        $a0, %hi(D_8006AB90)
    /* 1D5B0 8002CDB0 90AB848C */  lw         $a0, %lo(D_8006AB90)($a0)
    /* 1D5B4 8002CDB4 2E6D000C */  jal        func_8001B4B8
    /* 1D5B8 8002CDB8 21300000 */   addu      $a2, $zero, $zero
    /* 1D5BC 8002CDBC 00160200 */  sll        $v0, $v0, 24
    /* 1D5C0 8002CDC0 03160200 */  sra        $v0, $v0, 24
    /* 1D5C4 8002CDC4 0780013C */  lui        $at, %hi(D_8006A0DC)
    /* 1D5C8 8002CDC8 DCA022AC */  sw         $v0, %lo(D_8006A0DC)($at)
    /* 1D5CC 8002CDCC 03004104 */  bgez       $v0, .L8002CDDC
    /* 1D5D0 8002CDD0 00040224 */   addiu     $v0, $zero, 0x400
    /* 1D5D4 8002CDD4 0780013C */  lui        $at, %hi(D_8006A0DC)
    /* 1D5D8 8002CDD8 DCA022AC */  sw         $v0, %lo(D_8006A0DC)($at)
  .L8002CDDC:
    /* 1D5DC 8002CDDC 0780023C */  lui        $v0, %hi(D_8006AB9C)
    /* 1D5E0 8002CDE0 9CAB428C */  lw         $v0, %lo(D_8006AB9C)($v0)
    /* 1D5E4 8002CDE4 00000000 */  nop
    /* 1D5E8 8002CDE8 05004104 */  bgez       $v0, .L8002CE00
    /* 1D5EC 8002CDEC 00000000 */   nop
    /* 1D5F0 8002CDF0 0780023C */  lui        $v0, %hi(D_8006ABA0)
    /* 1D5F4 8002CDF4 A0AB428C */  lw         $v0, %lo(D_8006ABA0)($v0)
    /* 1D5F8 8002CDF8 81B30008 */  j          .L8002CE04
    /* 1D5FC 8002CDFC 840042AE */   sw        $v0, 0x84($s2)
  .L8002CE00:
    /* 1D600 8002CE00 840040AE */  sw         $zero, 0x84($s2)
  .L8002CE04:
    /* 1D604 8002CE04 0780113C */  lui        $s1, %hi(D_8006A0DC)
    /* 1D608 8002CE08 DCA03126 */  addiu      $s1, $s1, %lo(D_8006A0DC)
    /* 1D60C 8002CE0C 0000258E */  lw         $a1, 0x0($s1)
    /* 1D610 8002CE10 00000000 */  nop
    /* 1D614 8002CE14 2100A228 */  slti       $v0, $a1, 0x21
    /* 1D618 8002CE18 3A004010 */  beqz       $v0, .L8002CF04
    /* 1D61C 8002CE1C 1700A228 */   slti      $v0, $a1, 0x17
    /* 1D620 8002CE20 0780033C */  lui        $v1, %hi(D_8006AB94)
    /* 1D624 8002CE24 94AB638C */  lw         $v1, %lo(D_8006AB94)($v1)
    /* 1D628 8002CE28 0780043C */  lui        $a0, %hi(D_8006AB9C)
    /* 1D62C 8002CE2C 9CAB848C */  lw         $a0, %lo(D_8006AB9C)($a0)
    /* 1D630 8002CE30 0780013C */  lui        $at, %hi(D_8006A0B0)
    /* 1D634 8002CE34 B0A020AC */  sw         $zero, %lo(D_8006A0B0)($at)
    /* 1D638 8002CE38 0780013C */  lui        $at, %hi(D_8006A1AD)
    /* 1D63C 8002CE3C ADA122A0 */  sb         $v0, %lo(D_8006A1AD)($at)
    /* 1D640 8002CE40 0780013C */  lui        $at, %hi(D_8006A104)
    /* 1D644 8002CE44 04A123AC */  sw         $v1, %lo(D_8006A104)($at)
    /* 1D648 8002CE48 0780013C */  lui        $at, %hi(D_8006A28C)
    /* 1D64C 8002CE4C 8CA224AC */  sw         $a0, %lo(D_8006A28C)($at)
    /* 1D650 8002CE50 03008004 */  bltz       $a0, .L8002CE60
    /* 1D654 8002CE54 00000000 */   nop
    /* 1D658 8002CE58 8570000C */  jal        func_8001C214
    /* 1D65C 8002CE5C B4012526 */   addiu     $a1, $s1, 0x1B4
  .L8002CE60:
    /* 1D660 8002CE60 44FF2426 */  addiu      $a0, $s1, -0xBC
    /* 1D664 8002CE64 1800A527 */  addiu      $a1, $sp, 0x18
    /* 1D668 8002CE68 0780073C */  lui        $a3, %hi(D_8006A260)
    /* 1D66C 8002CE6C 60A2E78C */  lw         $a3, %lo(D_8006A260)($a3)
    /* 1D670 8002CE70 2130A000 */  addu       $a2, $a1, $zero
    /* 1D674 8002CE74 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 1D678 8002CE78 2C00A0AF */  sw         $zero, 0x2C($sp)
    /* 1D67C 8002CE7C A0FFE224 */  addiu      $v0, $a3, -0x60
    /* 1D680 8002CE80 23180700 */  negu       $v1, $a3
    /* 1D684 8002CE84 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1D688 8002CE88 60006224 */  addiu      $v0, $v1, 0x60
    /* 1D68C 8002CE8C 6000E724 */  addiu      $a3, $a3, 0x60
    /* 1D690 8002CE90 A0FF6324 */  addiu      $v1, $v1, -0x60
    /* 1D694 8002CE94 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1D698 8002CE98 2800A7AF */  sw         $a3, 0x28($sp)
    /* 1D69C 8002CE9C 696E000C */  jal        func_8001B9A4
    /* 1D6A0 8002CEA0 3000A3AF */   sw        $v1, 0x30($sp)
    /* 1D6A4 8002CEA4 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1D6A8 8002CEA8 21288000 */  addu       $a1, $a0, $zero
    /* 1D6AC 8002CEAC 14FF3126 */  addiu      $s1, $s1, -0xEC
    /* 1D6B0 8002CEB0 736F000C */  jal        func_8001BDCC
    /* 1D6B4 8002CEB4 21302002 */   addu      $a2, $s1, $zero
    /* 1D6B8 8002CEB8 21200000 */  addu       $a0, $zero, $zero
    /* 1D6BC 8002CEBC 2800B027 */  addiu      $s0, $sp, 0x28
    /* 1D6C0 8002CEC0 21280002 */  addu       $a1, $s0, $zero
    /* 1D6C4 8002CEC4 696E000C */  jal        func_8001B9A4
    /* 1D6C8 8002CEC8 21300002 */   addu      $a2, $s0, $zero
    /* 1D6CC 8002CECC 21200002 */  addu       $a0, $s0, $zero
    /* 1D6D0 8002CED0 21280002 */  addu       $a1, $s0, $zero
    /* 1D6D4 8002CED4 736F000C */  jal        func_8001BDCC
    /* 1D6D8 8002CED8 21302002 */   addu      $a2, $s1, $zero
    /* 1D6DC 8002CEDC 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1D6E0 8002CEE0 A5F3000C */  jal        func_8003CE94
    /* 1D6E4 8002CEE4 21280002 */   addu      $a1, $s0, $zero
    /* 1D6E8 8002CEE8 06004014 */  bnez       $v0, .L8002CF04
    /* 1D6EC 8002CEEC 01000224 */   addiu     $v0, $zero, 0x1
    /* 1D6F0 8002CEF0 0780013C */  lui        $at, %hi(D_8006A0F4)
    /* 1D6F4 8002CEF4 F4A022A0 */  sb         $v0, %lo(D_8006A0F4)($at)
    /* 1D6F8 8002CEF8 C1B30008 */  j          .L8002CF04
    /* 1D6FC 8002CEFC 00000000 */   nop
  .L8002CF00:
    /* 1D700 8002CF00 840040AE */  sw         $zero, 0x84($s2)
  .L8002CF04:
    /* 1D704 8002CF04 0780123C */  lui        $s2, %hi(D_8006A040)
    /* 1D708 8002CF08 40A05226 */  addiu      $s2, $s2, %lo(D_8006A040)
    /* 1D70C 8002CF0C 0000438E */  lw         $v1, 0x0($s2)
    /* 1D710 8002CF10 0C000224 */  addiu      $v0, $zero, 0xC
    /* 1D714 8002CF14 4E006210 */  beq        $v1, $v0, .L8002D050
    /* 1D718 8002CF18 02000224 */   addiu     $v0, $zero, 0x2
    /* 1D71C 8002CF1C 4D006210 */  beq        $v1, $v0, .L8002D054
    /* 1D720 8002CF20 3800B027 */   addiu     $s0, $sp, 0x38
    /* 1D724 8002CF24 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 1D728 8002CF28 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 1D72C 8002CF2C 00000000 */  nop
    /* 1D730 8002CF30 48004010 */  beqz       $v0, .L8002D054
    /* 1D734 8002CF34 00000000 */   nop
    /* 1D738 8002CF38 0780023C */  lui        $v0, %hi(D_8006A0B4)
    /* 1D73C 8002CF3C B4A0428C */  lw         $v0, %lo(D_8006A0B4)($v0)
    /* 1D740 8002CF40 00000000 */  nop
    /* 1D744 8002CF44 43004014 */  bnez       $v0, .L8002D054
    /* 1D748 8002CF48 1800A427 */   addiu     $a0, $sp, 0x18
    /* 1D74C 8002CF4C 21288000 */  addu       $a1, $a0, $zero
    /* 1D750 8002CF50 B0FF5126 */  addiu      $s1, $s2, -0x50
    /* 1D754 8002CF54 0780033C */  lui        $v1, %hi(D_8006A260)
    /* 1D758 8002CF58 60A2638C */  lw         $v1, %lo(D_8006A260)($v1)
    /* 1D75C 8002CF5C 21302002 */  addu       $a2, $s1, $zero
    /* 1D760 8002CF60 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1D764 8002CF64 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 1D768 8002CF68 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1D76C 8002CF6C 2C00A0AF */  sw         $zero, 0x2C($sp)
    /* 1D770 8002CF70 23180300 */  negu       $v1, $v1
    /* 1D774 8002CF74 60006224 */  addiu      $v0, $v1, 0x60
    /* 1D778 8002CF78 A0FF6324 */  addiu      $v1, $v1, -0x60
    /* 1D77C 8002CF7C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1D780 8002CF80 736F000C */  jal        func_8001BDCC
    /* 1D784 8002CF84 3000A3AF */   sw        $v1, 0x30($sp)
    /* 1D788 8002CF88 2800B027 */  addiu      $s0, $sp, 0x28
    /* 1D78C 8002CF8C 21200002 */  addu       $a0, $s0, $zero
    /* 1D790 8002CF90 21280002 */  addu       $a1, $s0, $zero
    /* 1D794 8002CF94 736F000C */  jal        func_8001BDCC
    /* 1D798 8002CF98 21302002 */   addu      $a2, $s1, $zero
    /* 1D79C 8002CF9C 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1D7A0 8002CFA0 21280002 */  addu       $a1, $s0, $zero
    /* 1D7A4 8002CFA4 04000624 */  addiu      $a2, $zero, 0x4
    /* 1D7A8 8002CFA8 21380000 */  addu       $a3, $zero, $zero
    /* 1D7AC 8002CFAC 8EF3000C */  jal        func_8003CE38
    /* 1D7B0 8002CFB0 1000A0AF */   sw        $zero, 0x10($sp)
    /* 1D7B4 8002CFB4 26004010 */  beqz       $v0, .L8002D050
    /* 1D7B8 8002CFB8 84005026 */   addiu     $s0, $s2, 0x84
    /* 1D7BC 8002CFBC 0780053C */  lui        $a1, %hi(D_8006AB88)
    /* 1D7C0 8002CFC0 88ABA524 */  addiu      $a1, $a1, %lo(D_8006AB88)
    /* 1D7C4 8002CFC4 6C6F000C */  jal        func_8001BDB0
    /* 1D7C8 8002CFC8 21200002 */   addu      $a0, $s0, $zero
    /* 1D7CC 8002CFCC 21200002 */  addu       $a0, $s0, $zero
    /* 1D7D0 8002CFD0 886E000C */  jal        func_8001BA20
    /* 1D7D4 8002CFD4 21280000 */   addu      $a1, $zero, $zero
    /* 1D7D8 8002CFD8 21284000 */  addu       $a1, $v0, $zero
    /* 1D7DC 8002CFDC 0780043C */  lui        $a0, %hi(D_8006A0CC)
    /* 1D7E0 8002CFE0 CCA0848C */  lw         $a0, %lo(D_8006A0CC)($a0)
    /* 1D7E4 8002CFE4 2E6D000C */  jal        func_8001B4B8
    /* 1D7E8 8002CFE8 21300000 */   addu      $a2, $zero, $zero
    /* 1D7EC 8002CFEC 00160200 */  sll        $v0, $v0, 24
    /* 1D7F0 8002CFF0 03160200 */  sra        $v0, $v0, 24
    /* 1D7F4 8002CFF4 0780013C */  lui        $at, %hi(D_8006A0DC)
    /* 1D7F8 8002CFF8 DCA022AC */  sw         $v0, %lo(D_8006A0DC)($at)
    /* 1D7FC 8002CFFC 03004104 */  bgez       $v0, .L8002D00C
    /* 1D800 8002D000 00040224 */   addiu     $v0, $zero, 0x400
    /* 1D804 8002D004 0780013C */  lui        $at, %hi(D_8006A0DC)
    /* 1D808 8002D008 DCA022AC */  sw         $v0, %lo(D_8006A0DC)($at)
  .L8002D00C:
    /* 1D80C 8002D00C 9C00458E */  lw         $a1, 0x9C($s2)
    /* 1D810 8002D010 00000000 */  nop
    /* 1D814 8002D014 2100A228 */  slti       $v0, $a1, 0x21
    /* 1D818 8002D018 0D004010 */  beqz       $v0, .L8002D050
    /* 1D81C 8002D01C 1700A228 */   slti      $v0, $a1, 0x17
    /* 1D820 8002D020 0780033C */  lui        $v1, %hi(D_8006AB94)
    /* 1D824 8002D024 94AB638C */  lw         $v1, %lo(D_8006AB94)($v1)
    /* 1D828 8002D028 0780043C */  lui        $a0, %hi(D_8006AB9C)
    /* 1D82C 8002D02C 9CAB848C */  lw         $a0, %lo(D_8006AB9C)($a0)
    /* 1D830 8002D030 0780013C */  lui        $at, %hi(D_8006A0B0)
    /* 1D834 8002D034 B0A020AC */  sw         $zero, %lo(D_8006A0B0)($at)
    /* 1D838 8002D038 6D0142A2 */  sb         $v0, 0x16D($s2)
    /* 1D83C 8002D03C C40043AE */  sw         $v1, 0xC4($s2)
    /* 1D840 8002D040 03008004 */  bltz       $a0, .L8002D050
    /* 1D844 8002D044 4C0244AE */   sw        $a0, 0x24C($s2)
    /* 1D848 8002D048 8570000C */  jal        func_8001C214
    /* 1D84C 8002D04C 50024526 */   addiu     $a1, $s2, 0x250
  .L8002D050:
    /* 1D850 8002D050 3800B027 */  addiu      $s0, $sp, 0x38
  .L8002D054:
    /* 1D854 8002D054 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1D858 8002D058 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 1D85C 8002D05C 6C6F000C */  jal        func_8001BDB0
    /* 1D860 8002D060 21200002 */   addu      $a0, $s0, $zero
    /* 1D864 8002D064 21200002 */  addu       $a0, $s0, $zero
    /* 1D868 8002D068 4000A28F */  lw         $v0, 0x40($sp)
    /* 1D86C 8002D06C C8040524 */  addiu      $a1, $zero, 0x4C8
    /* 1D870 8002D070 64024224 */  addiu      $v0, $v0, 0x264
    /* 1D874 8002D074 A1FB000C */  jal        func_8003EE84
    /* 1D878 8002D078 4000A2AF */   sw        $v0, 0x40($sp)
    /* 1D87C 8002D07C 21184000 */  addu       $v1, $v0, $zero
    /* 1D880 8002D080 0C006010 */  beqz       $v1, .L8002D0B4
    /* 1D884 8002D084 4000A3AF */   sw        $v1, 0x40($sp)
    /* 1D888 8002D088 0780023C */  lui        $v0, %hi(D_8006ABA4)
    /* 1D88C 8002D08C A4AB428C */  lw         $v0, %lo(D_8006ABA4)($v0)
    /* 1D890 8002D090 00000000 */  nop
    /* 1D894 8002D094 07004010 */  beqz       $v0, .L8002D0B4
    /* 1D898 8002D098 01000224 */   addiu     $v0, $zero, 0x1
    /* 1D89C 8002D09C 0780013C */  lui        $at, %hi(D_8006A0F8)
    /* 1D8A0 8002D0A0 F8A022A0 */  sb         $v0, %lo(D_8006A0F8)($at)
    /* 1D8A4 8002D0A4 0780013C */  lui        $at, %hi(D_8006A0EC)
    /* 1D8A8 8002D0A8 ECA023AC */  sw         $v1, %lo(D_8006A0EC)($at)
    /* 1D8AC 8002D0AC 36B40008 */  j          .L8002D0D8
    /* 1D8B0 8002D0B0 00000000 */   nop
  .L8002D0B4:
    /* 1D8B4 8002D0B4 0780033C */  lui        $v1, %hi(D_8006A0F8)
    /* 1D8B8 8002D0B8 F8A06324 */  addiu      $v1, $v1, %lo(D_8006A0F8)
    /* 1D8BC 8002D0BC 00006290 */  lbu        $v0, 0x0($v1)
    /* 1D8C0 8002D0C0 00000000 */  nop
    /* 1D8C4 8002D0C4 03004014 */  bnez       $v0, .L8002D0D4
    /* 1D8C8 8002D0C8 00000000 */   nop
    /* 1D8CC 8002D0CC 0780013C */  lui        $at, %hi(D_8006A0EC)
    /* 1D8D0 8002D0D0 ECA020AC */  sw         $zero, %lo(D_8006A0EC)($at)
  .L8002D0D4:
    /* 1D8D4 8002D0D4 000060A0 */  sb         $zero, 0x0($v1)
  .L8002D0D8:
    /* 1D8D8 8002D0D8 5800BF8F */  lw         $ra, 0x58($sp)
    /* 1D8DC 8002D0DC 5400B38F */  lw         $s3, 0x54($sp)
    /* 1D8E0 8002D0E0 5000B28F */  lw         $s2, 0x50($sp)
    /* 1D8E4 8002D0E4 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 1D8E8 8002D0E8 4800B08F */  lw         $s0, 0x48($sp)
    /* 1D8EC 8002D0EC 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 1D8F0 8002D0F0 0800E003 */  jr         $ra
    /* 1D8F4 8002D0F4 00000000 */   nop
endlabel func_8002CC88
