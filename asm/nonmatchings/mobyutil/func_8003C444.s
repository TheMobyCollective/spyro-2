.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003C444, 0x438

glabel func_8003C444
    /* 2CC44 8003C444 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 2CC48 8003C448 9000B4AF */  sw         $s4, 0x90($sp)
    /* 2CC4C 8003C44C 21A08000 */  addu       $s4, $a0, $zero
    /* 2CC50 8003C450 8000B0AF */  sw         $s0, 0x80($sp)
    /* 2CC54 8003C454 2180A000 */  addu       $s0, $a1, $zero
    /* 2CC58 8003C458 8400B1AF */  sw         $s1, 0x84($sp)
    /* 2CC5C 8003C45C 2188C000 */  addu       $s1, $a2, $zero
    /* 2CC60 8003C460 9400B5AF */  sw         $s5, 0x94($sp)
    /* 2CC64 8003C464 04001524 */  addiu      $s5, $zero, 0x4
    /* 2CC68 8003C468 0680033C */  lui        $v1, %hi(D_80067018)
    /* 2CC6C 8003C46C 1870638C */  lw         $v1, %lo(D_80067018)($v1)
    /* 2CC70 8003C470 03000224 */  addiu      $v0, $zero, 0x3
    /* 2CC74 8003C474 9C00BFAF */  sw         $ra, 0x9C($sp)
    /* 2CC78 8003C478 9800B6AF */  sw         $s6, 0x98($sp)
    /* 2CC7C 8003C47C 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* 2CC80 8003C480 05006214 */  bne        $v1, $v0, .L8003C498
    /* 2CC84 8003C484 8800B2AF */   sw        $s2, 0x88($sp)
    /* 2CC88 8003C488 43101000 */  sra        $v0, $s0, 1
    /* 2CC8C 8003C48C 21800202 */  addu       $s0, $s0, $v0
    /* 2CC90 8003C490 2AF10008 */  j          .L8003C4A8
    /* 2CC94 8003C494 06001524 */   addiu     $s5, $zero, 0x6
  .L8003C498:
    /* 2CC98 8003C498 04007514 */  bne        $v1, $s5, .L8003C4AC
    /* 2CC9C 8003C49C 21208002 */   addu      $a0, $s4, $zero
    /* 2CCA0 8003C4A0 40801000 */  sll        $s0, $s0, 1
    /* 2CCA4 8003C4A4 08001524 */  addiu      $s5, $zero, 0x8
  .L8003C4A8:
    /* 2CCA8 8003C4A8 21208002 */  addu       $a0, $s4, $zero
  .L8003C4AC:
    /* 2CCAC 8003C4AC 4E05010C */  jal        func_80041538
    /* 2CCB0 8003C4B0 04000524 */   addiu     $a1, $zero, 0x4
    /* 2CCB4 8003C4B4 2000B627 */  addiu      $s6, $sp, 0x20
    /* 2CCB8 8003C4B8 2120C002 */  addu       $a0, $s6, $zero
    /* 2CCBC 8003C4BC 6C6F000C */  jal        func_8001BDB0
    /* 2CCC0 8003C4C0 21282002 */   addu      $a1, $s1, $zero
    /* 2CCC4 8003C4C4 21202002 */  addu       $a0, $s1, $zero
    /* 2CCC8 8003C4C8 886E000C */  jal        func_8001BA20
    /* 2CCCC 8003C4CC 01000524 */   addiu     $a1, $zero, 0x1
    /* 2CCD0 8003C4D0 21202002 */  addu       $a0, $s1, $zero
    /* 2CCD4 8003C4D4 21284000 */  addu       $a1, $v0, $zero
    /* 2CCD8 8003C4D8 316F000C */  jal        func_8001BCC4
    /* 2CCDC 8003C4DC 21300002 */   addu      $a2, $s0, $zero
    /* 2CCE0 8003C4E0 0C009326 */  addiu      $s3, $s4, 0xC
    /* 2CCE4 8003C4E4 21206002 */  addu       $a0, $s3, $zero
    /* 2CCE8 8003C4E8 21286002 */  addu       $a1, $s3, $zero
    /* 2CCEC 8003C4EC 736F000C */  jal        func_8001BDCC
    /* 2CCF0 8003C4F0 21302002 */   addu      $a2, $s1, $zero
    /* 2CCF4 8003C4F4 20008426 */  addiu      $a0, $s4, 0x20
    /* 2CCF8 8003C4F8 4000B227 */  addiu      $s2, $sp, 0x40
    /* 2CCFC 8003C4FC 21284002 */  addu       $a1, $s2, $zero
    /* 2CD00 8003C500 21304002 */  addu       $a2, $s2, $zero
    /* 2CD04 8003C504 00FC0224 */  addiu      $v0, $zero, -0x400
    /* 2CD08 8003C508 4000A0AF */  sw         $zero, 0x40($sp)
    /* 2CD0C 8003C50C 4400A0AF */  sw         $zero, 0x44($sp)
    /* 2CD10 8003C510 696E000C */  jal        func_8001B9A4
    /* 2CD14 8003C514 4800A2AF */   sw        $v0, 0x48($sp)
    /* 2CD18 8003C518 5000B127 */  addiu      $s1, $sp, 0x50
    /* 2CD1C 8003C51C 21202002 */  addu       $a0, $s1, $zero
    /* 2CD20 8003C520 6C6F000C */  jal        func_8001BDB0
    /* 2CD24 8003C524 21286002 */   addu      $a1, $s3, $zero
    /* 2CD28 8003C528 21202002 */  addu       $a0, $s1, $zero
    /* 2CD2C 8003C52C 21282002 */  addu       $a1, $s1, $zero
    /* 2CD30 8003C530 806F000C */  jal        func_8001BE00
    /* 2CD34 8003C534 21304002 */   addu      $a2, $s2, $zero
    /* 2CD38 8003C538 6000B027 */  addiu      $s0, $sp, 0x60
    /* 2CD3C 8003C53C 21200002 */  addu       $a0, $s0, $zero
    /* 2CD40 8003C540 6C6F000C */  jal        func_8001BDB0
    /* 2CD44 8003C544 21286002 */   addu      $a1, $s3, $zero
    /* 2CD48 8003C548 21200002 */  addu       $a0, $s0, $zero
    /* 2CD4C 8003C54C 21280002 */  addu       $a1, $s0, $zero
    /* 2CD50 8003C550 736F000C */  jal        func_8001BDCC
    /* 2CD54 8003C554 21304002 */   addu      $a2, $s2, $zero
    /* 2CD58 8003C558 21200002 */  addu       $a0, $s0, $zero
    /* 2CD5C 8003C55C 21280002 */  addu       $a1, $s0, $zero
    /* 2CD60 8003C560 736F000C */  jal        func_8001BDCC
    /* 2CD64 8003C564 21304002 */   addu      $a2, $s2, $zero
    /* 2CD68 8003C568 21202002 */  addu       $a0, $s1, $zero
    /* 2CD6C 8003C56C A5F3000C */  jal        func_8003CE94
    /* 2CD70 8003C570 21280002 */   addu      $a1, $s0, $zero
    /* 2CD74 8003C574 B5004010 */  beqz       $v0, .L8003C84C
    /* 2CD78 8003C578 21206002 */   addu      $a0, $s3, $zero
    /* 2CD7C 8003C57C 0780103C */  lui        $s0, %hi(D_8006AB70)
    /* 2CD80 8003C580 70AB1026 */  addiu      $s0, $s0, %lo(D_8006AB70)
    /* 2CD84 8003C584 6C6F000C */  jal        func_8001BDB0
    /* 2CD88 8003C588 21280002 */   addu      $a1, $s0, $zero
    /* 2CD8C 8003C58C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2CD90 8003C590 6C6F000C */  jal        func_8001BDB0
    /* 2CD94 8003C594 18000526 */   addiu     $a1, $s0, 0x18
    /* 2CD98 8003C598 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2CD9C 8003C59C CF6E000C */  jal        func_8001BB3C
    /* 2CDA0 8003C5A0 00100524 */   addiu     $a1, $zero, 0x1000
    /* 2CDA4 8003C5A4 1400A68F */  lw         $a2, 0x14($sp)
    /* 2CDA8 8003C5A8 2800A58F */  lw         $a1, 0x28($sp)
    /* 2CDAC 8003C5AC 00000000 */  nop
    /* 2CDB0 8003C5B0 1800C500 */  mult       $a2, $a1
    /* 2CDB4 8003C5B4 1800A28F */  lw         $v0, 0x18($sp)
    /* 2CDB8 8003C5B8 12500000 */  mflo       $t2
    /* 2CDBC 8003C5BC 2400A48F */  lw         $a0, 0x24($sp)
    /* 2CDC0 8003C5C0 00000000 */  nop
    /* 2CDC4 8003C5C4 18004400 */  mult       $v0, $a0
    /* 2CDC8 8003C5C8 12380000 */  mflo       $a3
    /* 2CDCC 8003C5CC 2000A38F */  lw         $v1, 0x20($sp)
    /* 2CDD0 8003C5D0 00000000 */  nop
    /* 2CDD4 8003C5D4 18004300 */  mult       $v0, $v1
    /* 2CDD8 8003C5D8 12400000 */  mflo       $t0
    /* 2CDDC 8003C5DC 1000A28F */  lw         $v0, 0x10($sp)
    /* 2CDE0 8003C5E0 00000000 */  nop
    /* 2CDE4 8003C5E4 18004500 */  mult       $v0, $a1
    /* 2CDE8 8003C5E8 12600000 */  mflo       $t4
    /* 2CDEC 8003C5EC 00000000 */  nop
    /* 2CDF0 8003C5F0 00000000 */  nop
    /* 2CDF4 8003C5F4 18004400 */  mult       $v0, $a0
    /* 2CDF8 8003C5F8 12480000 */  mflo       $t1
    /* 2CDFC 8003C5FC 00000000 */  nop
    /* 2CE00 8003C600 00000000 */  nop
    /* 2CE04 8003C604 1800C300 */  mult       $a2, $v1
    /* 2CE08 8003C608 00100524 */  addiu      $a1, $zero, 0x1000
    /* 2CE0C 8003C60C 3000A427 */  addiu      $a0, $sp, 0x30
    /* 2CE10 8003C610 23104701 */  subu       $v0, $t2, $a3
    /* 2CE14 8003C614 03130200 */  sra        $v0, $v0, 12
    /* 2CE18 8003C618 3000A2AF */  sw         $v0, 0x30($sp)
    /* 2CE1C 8003C61C 23100C01 */  subu       $v0, $t0, $t4
    /* 2CE20 8003C620 03130200 */  sra        $v0, $v0, 12
    /* 2CE24 8003C624 3400A2AF */  sw         $v0, 0x34($sp)
    /* 2CE28 8003C628 12180000 */  mflo       $v1
    /* 2CE2C 8003C62C 23102301 */  subu       $v0, $t1, $v1
    /* 2CE30 8003C630 03130200 */  sra        $v0, $v0, 12
    /* 2CE34 8003C634 CF6E000C */  jal        func_8001BB3C
    /* 2CE38 8003C638 3800A2AF */   sw        $v0, 0x38($sp)
    /* 2CE3C 8003C63C 3400A68F */  lw         $a2, 0x34($sp)
    /* 2CE40 8003C640 1800A58F */  lw         $a1, 0x18($sp)
    /* 2CE44 8003C644 00000000 */  nop
    /* 2CE48 8003C648 1800C500 */  mult       $a2, $a1
    /* 2CE4C 8003C64C 3800A28F */  lw         $v0, 0x38($sp)
    /* 2CE50 8003C650 12500000 */  mflo       $t2
    /* 2CE54 8003C654 1400A48F */  lw         $a0, 0x14($sp)
    /* 2CE58 8003C658 00000000 */  nop
    /* 2CE5C 8003C65C 18004400 */  mult       $v0, $a0
    /* 2CE60 8003C660 12380000 */  mflo       $a3
    /* 2CE64 8003C664 1000A38F */  lw         $v1, 0x10($sp)
    /* 2CE68 8003C668 00000000 */  nop
    /* 2CE6C 8003C66C 18004300 */  mult       $v0, $v1
    /* 2CE70 8003C670 12400000 */  mflo       $t0
    /* 2CE74 8003C674 3000A28F */  lw         $v0, 0x30($sp)
    /* 2CE78 8003C678 00000000 */  nop
    /* 2CE7C 8003C67C 18004500 */  mult       $v0, $a1
    /* 2CE80 8003C680 12600000 */  mflo       $t4
    /* 2CE84 8003C684 00000000 */  nop
    /* 2CE88 8003C688 00000000 */  nop
    /* 2CE8C 8003C68C 18004400 */  mult       $v0, $a0
    /* 2CE90 8003C690 12480000 */  mflo       $t1
    /* 2CE94 8003C694 00000000 */  nop
    /* 2CE98 8003C698 00000000 */  nop
    /* 2CE9C 8003C69C 1800C300 */  mult       $a2, $v1
    /* 2CEA0 8003C6A0 00100524 */  addiu      $a1, $zero, 0x1000
    /* 2CEA4 8003C6A4 2120C002 */  addu       $a0, $s6, $zero
    /* 2CEA8 8003C6A8 23104701 */  subu       $v0, $t2, $a3
    /* 2CEAC 8003C6AC 03130200 */  sra        $v0, $v0, 12
    /* 2CEB0 8003C6B0 2000A2AF */  sw         $v0, 0x20($sp)
    /* 2CEB4 8003C6B4 23100C01 */  subu       $v0, $t0, $t4
    /* 2CEB8 8003C6B8 03130200 */  sra        $v0, $v0, 12
    /* 2CEBC 8003C6BC 2400A2AF */  sw         $v0, 0x24($sp)
    /* 2CEC0 8003C6C0 12180000 */  mflo       $v1
    /* 2CEC4 8003C6C4 23102301 */  subu       $v0, $t1, $v1
    /* 2CEC8 8003C6C8 03130200 */  sra        $v0, $v0, 12
    /* 2CECC 8003C6CC CF6E000C */  jal        func_8001BB3C
    /* 2CED0 8003C6D0 2800A2AF */   sw        $v0, 0x28($sp)
    /* 2CED4 8003C6D4 1800A28F */  lw         $v0, 0x18($sp)
    /* 2CED8 8003C6D8 00000000 */  nop
    /* 2CEDC 8003C6DC 18004200 */  mult       $v0, $v0
    /* 2CEE0 8003C6E0 12180000 */  mflo       $v1
    /* 2CEE4 8003C6E4 3800A28F */  lw         $v0, 0x38($sp)
    /* 2CEE8 8003C6E8 00000000 */  nop
    /* 2CEEC 8003C6EC 18004200 */  mult       $v0, $v0
    /* 2CEF0 8003C6F0 12380000 */  mflo       $a3
    /* 2CEF4 8003C6F4 F06F000C */  jal        func_8001BFC0
    /* 2CEF8 8003C6F8 21206700 */   addu      $a0, $v1, $a3
    /* 2CEFC 8003C6FC 21204000 */  addu       $a0, $v0, $zero
    /* 2CF00 8003C700 2800A58F */  lw         $a1, 0x28($sp)
    /* 2CF04 8003C704 21300000 */  addu       $a2, $zero, $zero
    /* 2CF08 8003C708 2E6D000C */  jal        func_8001B4B8
    /* 2CF0C 8003C70C 23280500 */   negu      $a1, $a1
    /* 2CF10 8003C710 23100200 */  negu       $v0, $v0
    /* 2CF14 8003C714 7400A2AF */  sw         $v0, 0x74($sp)
    /* 2CF18 8003C718 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2CF1C 8003C71C 40100200 */  sll        $v0, $v0, 1
    /* 2CF20 8003C720 0680013C */  lui        $at, %hi(D_80061C58)
    /* 2CF24 8003C724 21082200 */  addu       $at, $at, $v0
    /* 2CF28 8003C728 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 2CF2C 8003C72C 00000000 */  nop
    /* 2CF30 8003C730 02004104 */  bgez       $v0, .L8003C73C
    /* 2CF34 8003C734 00000000 */   nop
    /* 2CF38 8003C738 23100200 */  negu       $v0, $v0
  .L8003C73C:
    /* 2CF3C 8003C73C 10004228 */  slti       $v0, $v0, 0x10
    /* 2CF40 8003C740 07004010 */  beqz       $v0, .L8003C760
    /* 2CF44 8003C744 21300000 */   addu      $a2, $zero, $zero
    /* 2CF48 8003C748 1000A48F */  lw         $a0, 0x10($sp)
    /* 2CF4C 8003C74C 1400A58F */  lw         $a1, 0x14($sp)
    /* 2CF50 8003C750 2E6D000C */  jal        func_8001B4B8
    /* 2CF54 8003C754 7000A0AF */   sw        $zero, 0x70($sp)
    /* 2CF58 8003C758 E2F10008 */  j          .L8003C788
    /* 2CF5C 8003C75C 7800A2AF */   sw        $v0, 0x78($sp)
  .L8003C760:
    /* 2CF60 8003C760 2000A48F */  lw         $a0, 0x20($sp)
    /* 2CF64 8003C764 2400A58F */  lw         $a1, 0x24($sp)
    /* 2CF68 8003C768 2E6D000C */  jal        func_8001B4B8
    /* 2CF6C 8003C76C 21300000 */   addu      $a2, $zero, $zero
    /* 2CF70 8003C770 1800A48F */  lw         $a0, 0x18($sp)
    /* 2CF74 8003C774 3800A58F */  lw         $a1, 0x38($sp)
    /* 2CF78 8003C778 21300000 */  addu       $a2, $zero, $zero
    /* 2CF7C 8003C77C 2E6D000C */  jal        func_8001B4B8
    /* 2CF80 8003C780 7800A2AF */   sw        $v0, 0x78($sp)
    /* 2CF84 8003C784 7000A2AF */  sw         $v0, 0x70($sp)
  .L8003C788:
    /* 2CF88 8003C788 44008492 */  lbu        $a0, 0x44($s4)
    /* 2CF8C 8003C78C 7000A58F */  lw         $a1, 0x70($sp)
    /* 2CF90 8003C790 76E1000C */  jal        func_800385D8
    /* 2CF94 8003C794 00000000 */   nop
    /* 2CF98 8003C798 21184000 */  addu       $v1, $v0, $zero
    /* 2CF9C 8003C79C 2A10A302 */  slt        $v0, $s5, $v1
    /* 2CFA0 8003C7A0 02004010 */  beqz       $v0, .L8003C7AC
    /* 2CFA4 8003C7A4 23801500 */   negu      $s0, $s5
    /* 2CFA8 8003C7A8 2118A002 */  addu       $v1, $s5, $zero
  .L8003C7AC:
    /* 2CFAC 8003C7AC 2A107000 */  slt        $v0, $v1, $s0
    /* 2CFB0 8003C7B0 02004010 */  beqz       $v0, .L8003C7BC
    /* 2CFB4 8003C7B4 00000000 */   nop
    /* 2CFB8 8003C7B8 21180002 */  addu       $v1, $s0, $zero
  .L8003C7BC:
    /* 2CFBC 8003C7BC 44008292 */  lbu        $v0, 0x44($s4)
    /* 2CFC0 8003C7C0 45008492 */  lbu        $a0, 0x45($s4)
    /* 2CFC4 8003C7C4 21104300 */  addu       $v0, $v0, $v1
    /* 2CFC8 8003C7C8 440082A2 */  sb         $v0, 0x44($s4)
    /* 2CFCC 8003C7CC 7400A58F */  lw         $a1, 0x74($sp)
    /* 2CFD0 8003C7D0 76E1000C */  jal        func_800385D8
    /* 2CFD4 8003C7D4 00000000 */   nop
    /* 2CFD8 8003C7D8 21184000 */  addu       $v1, $v0, $zero
    /* 2CFDC 8003C7DC 2A10A302 */  slt        $v0, $s5, $v1
    /* 2CFE0 8003C7E0 03004010 */  beqz       $v0, .L8003C7F0
    /* 2CFE4 8003C7E4 2A107000 */   slt       $v0, $v1, $s0
    /* 2CFE8 8003C7E8 2118A002 */  addu       $v1, $s5, $zero
    /* 2CFEC 8003C7EC 2A107000 */  slt        $v0, $v1, $s0
  .L8003C7F0:
    /* 2CFF0 8003C7F0 02004010 */  beqz       $v0, .L8003C7FC
    /* 2CFF4 8003C7F4 00000000 */   nop
    /* 2CFF8 8003C7F8 21180002 */  addu       $v1, $s0, $zero
  .L8003C7FC:
    /* 2CFFC 8003C7FC 45008292 */  lbu        $v0, 0x45($s4)
    /* 2D000 8003C800 46008492 */  lbu        $a0, 0x46($s4)
    /* 2D004 8003C804 21104300 */  addu       $v0, $v0, $v1
    /* 2D008 8003C808 450082A2 */  sb         $v0, 0x45($s4)
    /* 2D00C 8003C80C 7800A58F */  lw         $a1, 0x78($sp)
    /* 2D010 8003C810 76E1000C */  jal        func_800385D8
    /* 2D014 8003C814 00000000 */   nop
    /* 2D018 8003C818 21184000 */  addu       $v1, $v0, $zero
    /* 2D01C 8003C81C 2A10A302 */  slt        $v0, $s5, $v1
    /* 2D020 8003C820 03004010 */  beqz       $v0, .L8003C830
    /* 2D024 8003C824 2A107000 */   slt       $v0, $v1, $s0
    /* 2D028 8003C828 2118A002 */  addu       $v1, $s5, $zero
    /* 2D02C 8003C82C 2A107000 */  slt        $v0, $v1, $s0
  .L8003C830:
    /* 2D030 8003C830 02004010 */  beqz       $v0, .L8003C83C
    /* 2D034 8003C834 00000000 */   nop
    /* 2D038 8003C838 21180002 */  addu       $v1, $s0, $zero
  .L8003C83C:
    /* 2D03C 8003C83C 46008292 */  lbu        $v0, 0x46($s4)
    /* 2D040 8003C840 00000000 */  nop
    /* 2D044 8003C844 21104300 */  addu       $v0, $v0, $v1
    /* 2D048 8003C848 460082A2 */  sb         $v0, 0x46($s4)
  .L8003C84C:
    /* 2D04C 8003C84C 21100000 */  addu       $v0, $zero, $zero
    /* 2D050 8003C850 9C00BF8F */  lw         $ra, 0x9C($sp)
    /* 2D054 8003C854 9800B68F */  lw         $s6, 0x98($sp)
    /* 2D058 8003C858 9400B58F */  lw         $s5, 0x94($sp)
    /* 2D05C 8003C85C 9000B48F */  lw         $s4, 0x90($sp)
    /* 2D060 8003C860 8C00B38F */  lw         $s3, 0x8C($sp)
    /* 2D064 8003C864 8800B28F */  lw         $s2, 0x88($sp)
    /* 2D068 8003C868 8400B18F */  lw         $s1, 0x84($sp)
    /* 2D06C 8003C86C 8000B08F */  lw         $s0, 0x80($sp)
    /* 2D070 8003C870 A000BD27 */  addiu      $sp, $sp, 0xA0
    /* 2D074 8003C874 0800E003 */  jr         $ra
    /* 2D078 8003C878 00000000 */   nop
endlabel func_8003C444
