.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BE04, 0x1B8

glabel func_8002BE04
    /* 1C604 8002BE04 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1C608 8002BE08 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 1C60C 8002BE0C 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 1C610 8002BE10 01000224 */  addiu      $v0, $zero, 0x1
    /* 1C614 8002BE14 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 1C618 8002BE18 3800B2AF */  sw         $s2, 0x38($sp)
    /* 1C61C 8002BE1C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 1C620 8002BE20 04006210 */  beq        $v1, $v0, .L8002BE34
    /* 1C624 8002BE24 3000B0AF */   sw        $s0, 0x30($sp)
    /* 1C628 8002BE28 10000224 */  addiu      $v0, $zero, 0x10
    /* 1C62C 8002BE2C 0B006214 */  bne        $v1, $v0, .L8002BE5C
    /* 1C630 8002BE30 0A000224 */   addiu     $v0, $zero, 0xA
  .L8002BE34:
    /* 1C634 8002BE34 0780033C */  lui        $v1, %hi(D_8006A260)
    /* 1C638 8002BE38 60A2638C */  lw         $v1, %lo(D_8006A260)($v1)
    /* 1C63C 8002BE3C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1C640 8002BE40 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1C644 8002BE44 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1C648 8002BE48 23100300 */  negu       $v0, $v1
    /* 1C64C 8002BE4C 20004224 */  addiu      $v0, $v0, 0x20
    /* 1C650 8002BE50 60006324 */  addiu      $v1, $v1, 0x60
    /* 1C654 8002BE54 B6AF0008 */  j          .L8002BED8
    /* 1C658 8002BE58 1800A2AF */   sw        $v0, 0x18($sp)
  .L8002BE5C:
    /* 1C65C 8002BE5C 0B006214 */  bne        $v1, $v0, .L8002BE8C
    /* 1C660 8002BE60 0D000224 */   addiu     $v0, $zero, 0xD
    /* 1C664 8002BE64 0780023C */  lui        $v0, %hi(D_8006A260)
    /* 1C668 8002BE68 60A2428C */  lw         $v0, %lo(D_8006A260)($v0)
    /* 1C66C 8002BE6C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1C670 8002BE70 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1C674 8002BE74 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1C678 8002BE78 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1C67C 8002BE7C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1C680 8002BE80 60004224 */  addiu      $v0, $v0, 0x60
    /* 1C684 8002BE84 B8AF0008 */  j          .L8002BEE0
    /* 1C688 8002BE88 2000A2AF */   sw        $v0, 0x20($sp)
  .L8002BE8C:
    /* 1C68C 8002BE8C 09006214 */  bne        $v1, $v0, .L8002BEB4
    /* 1C690 8002BE90 00000000 */   nop
    /* 1C694 8002BE94 0780033C */  lui        $v1, %hi(D_8006A260)
    /* 1C698 8002BE98 60A2638C */  lw         $v1, %lo(D_8006A260)($v1)
    /* 1C69C 8002BE9C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1C6A0 8002BEA0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1C6A4 8002BEA4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1C6A8 8002BEA8 23100300 */  negu       $v0, $v1
    /* 1C6AC 8002BEAC B4AF0008 */  j          .L8002BED0
    /* 1C6B0 8002BEB0 A0006324 */   addiu     $v1, $v1, 0xA0
  .L8002BEB4:
    /* 1C6B4 8002BEB4 0780033C */  lui        $v1, %hi(D_8006A260)
    /* 1C6B8 8002BEB8 60A2638C */  lw         $v1, %lo(D_8006A260)($v1)
    /* 1C6BC 8002BEBC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1C6C0 8002BEC0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1C6C4 8002BEC4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1C6C8 8002BEC8 23100300 */  negu       $v0, $v1
    /* 1C6CC 8002BECC 60006324 */  addiu      $v1, $v1, 0x60
  .L8002BED0:
    /* 1C6D0 8002BED0 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1C6D4 8002BED4 C0FF4224 */  addiu      $v0, $v0, -0x40
  .L8002BED8:
    /* 1C6D8 8002BED8 2000A3AF */  sw         $v1, 0x20($sp)
    /* 1C6DC 8002BEDC 2800A2AF */  sw         $v0, 0x28($sp)
  .L8002BEE0:
    /* 1C6E0 8002BEE0 0780123C */  lui        $s2, %hi(D_8006A020)
    /* 1C6E4 8002BEE4 20A05226 */  addiu      $s2, $s2, %lo(D_8006A020)
    /* 1C6E8 8002BEE8 21204002 */  addu       $a0, $s2, $zero
    /* 1C6EC 8002BEEC 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1C6F0 8002BEF0 696E000C */  jal        func_8001B9A4
    /* 1C6F4 8002BEF4 2130A000 */   addu      $a2, $a1, $zero
    /* 1C6F8 8002BEF8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1C6FC 8002BEFC 21288000 */  addu       $a1, $a0, $zero
    /* 1C700 8002BF00 D0FF5126 */  addiu      $s1, $s2, -0x30
    /* 1C704 8002BF04 736F000C */  jal        func_8001BDCC
    /* 1C708 8002BF08 21302002 */   addu      $a2, $s1, $zero
    /* 1C70C 8002BF0C 21200000 */  addu       $a0, $zero, $zero
    /* 1C710 8002BF10 2000B027 */  addiu      $s0, $sp, 0x20
    /* 1C714 8002BF14 21280002 */  addu       $a1, $s0, $zero
    /* 1C718 8002BF18 696E000C */  jal        func_8001B9A4
    /* 1C71C 8002BF1C 21300002 */   addu      $a2, $s0, $zero
    /* 1C720 8002BF20 21200002 */  addu       $a0, $s0, $zero
    /* 1C724 8002BF24 21280002 */  addu       $a1, $s0, $zero
    /* 1C728 8002BF28 736F000C */  jal        func_8001BDCC
    /* 1C72C 8002BF2C 21302002 */   addu      $a2, $s1, $zero
    /* 1C730 8002BF30 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1C734 8002BF34 A5F3000C */  jal        func_8003CE94
    /* 1C738 8002BF38 21280002 */   addu      $a1, $s0, $zero
    /* 1C73C 8002BF3C 18004010 */  beqz       $v0, .L8002BFA0
    /* 1C740 8002BF40 00000000 */   nop
    /* 1C744 8002BF44 0780103C */  lui        $s0, %hi(D_8006AB88)
    /* 1C748 8002BF48 88AB1026 */  addiu      $s0, $s0, %lo(D_8006AB88)
    /* 1C74C 8002BF4C 21200002 */  addu       $a0, $s0, $zero
    /* 1C750 8002BF50 886E000C */  jal        func_8001BA20
    /* 1C754 8002BF54 21280000 */   addu      $a1, $zero, $zero
    /* 1C758 8002BF58 0780043C */  lui        $a0, %hi(D_8006AB90)
    /* 1C75C 8002BF5C 90AB848C */  lw         $a0, %lo(D_8006AB90)($a0)
    /* 1C760 8002BF60 21284000 */  addu       $a1, $v0, $zero
    /* 1C764 8002BF64 2E6D000C */  jal        func_8001B4B8
    /* 1C768 8002BF68 21300000 */   addu      $a2, $zero, $zero
    /* 1C76C 8002BF6C 00160200 */  sll        $v0, $v0, 24
    /* 1C770 8002BF70 03160200 */  sra        $v0, $v0, 24
    /* 1C774 8002BF74 17004228 */  slti       $v0, $v0, 0x17
    /* 1C778 8002BF78 09004014 */  bnez       $v0, .L8002BFA0
    /* 1C77C 8002BF7C B0004426 */   addiu     $a0, $s2, 0xB0
    /* 1C780 8002BF80 21280002 */  addu       $a1, $s0, $zero
    /* 1C784 8002BF84 01000224 */  addiu      $v0, $zero, 0x1
    /* 1C788 8002BF88 6C6F000C */  jal        func_8001BDB0
    /* 1C78C 8002BF8C D60042A2 */   sb        $v0, 0xD6($s2)
    /* 1C790 8002BF90 0780023C */  lui        $v0, %hi(D_8006AB94)
    /* 1C794 8002BF94 94AB428C */  lw         $v0, %lo(D_8006AB94)($v0)
    /* 1C798 8002BF98 00000000 */  nop
    /* 1C79C 8002BF9C E80042AE */  sw         $v0, 0xE8($s2)
  .L8002BFA0:
    /* 1C7A0 8002BFA0 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 1C7A4 8002BFA4 3800B28F */  lw         $s2, 0x38($sp)
    /* 1C7A8 8002BFA8 3400B18F */  lw         $s1, 0x34($sp)
    /* 1C7AC 8002BFAC 3000B08F */  lw         $s0, 0x30($sp)
    /* 1C7B0 8002BFB0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1C7B4 8002BFB4 0800E003 */  jr         $ra
    /* 1C7B8 8002BFB8 00000000 */   nop
endlabel func_8002BE04
