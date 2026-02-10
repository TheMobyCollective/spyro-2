.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B4E4, 0x1B0

glabel func_8002B4E4
    /* 1BCE4 8002B4E4 0780023C */  lui        $v0, %hi(D_8006839E)
    /* 1BCE8 8002B4E8 9E834290 */  lbu        $v0, %lo(D_8006839E)($v0)
    /* 1BCEC 8002B4EC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1BCF0 8002B4F0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1BCF4 8002B4F4 21908000 */  addu       $s2, $a0, $zero
    /* 1BCF8 8002B4F8 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1BCFC 8002B4FC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1BD00 8002B500 0D004010 */  beqz       $v0, .L8002B538
    /* 1BD04 8002B504 1800B0AF */   sw        $s0, 0x18($sp)
    /* 1BD08 8002B508 0680033C */  lui        $v1, %hi(D_80066F38)
    /* 1BD0C 8002B50C 386F638C */  lw         $v1, %lo(D_80066F38)($v1)
    /* 1BD10 8002B510 00000000 */  nop
    /* 1BD14 8002B514 0E006290 */  lbu        $v0, 0xE($v1)
    /* 1BD18 8002B518 00000000 */  nop
    /* 1BD1C 8002B51C 81FF4224 */  addiu      $v0, $v0, -0x7F
    /* 1BD20 8002B520 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1BD24 8002B524 0F006390 */  lbu        $v1, 0xF($v1)
    /* 1BD28 8002B528 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 1BD2C 8002B52C 23104300 */  subu       $v0, $v0, $v1
    /* 1BD30 8002B530 6EAD0008 */  j          .L8002B5B8
    /* 1BD34 8002B534 1400A2AF */   sw        $v0, 0x14($sp)
  .L8002B538:
    /* 1BD38 8002B538 0680023C */  lui        $v0, %hi(D_80066F38)
    /* 1BD3C 8002B53C 386F428C */  lw         $v0, %lo(D_80066F38)($v0)
    /* 1BD40 8002B540 00000000 */  nop
    /* 1BD44 8002B544 0000438C */  lw         $v1, 0x0($v0)
    /* 1BD48 8002B548 00000000 */  nop
    /* 1BD4C 8002B54C 00106230 */  andi       $v0, $v1, 0x1000
    /* 1BD50 8002B550 03004010 */  beqz       $v0, .L8002B560
    /* 1BD54 8002B554 7F000224 */   addiu     $v0, $zero, 0x7F
    /* 1BD58 8002B558 5EAD0008 */  j          .L8002B578
    /* 1BD5C 8002B55C 1400A2AF */   sw        $v0, 0x14($sp)
  .L8002B560:
    /* 1BD60 8002B560 00406230 */  andi       $v0, $v1, 0x4000
    /* 1BD64 8002B564 03004010 */  beqz       $v0, .L8002B574
    /* 1BD68 8002B568 81FF0224 */   addiu     $v0, $zero, -0x7F
    /* 1BD6C 8002B56C 5EAD0008 */  j          .L8002B578
    /* 1BD70 8002B570 1400A2AF */   sw        $v0, 0x14($sp)
  .L8002B574:
    /* 1BD74 8002B574 1400A0AF */  sw         $zero, 0x14($sp)
  .L8002B578:
    /* 1BD78 8002B578 0680023C */  lui        $v0, %hi(D_80066F38)
    /* 1BD7C 8002B57C 386F428C */  lw         $v0, %lo(D_80066F38)($v0)
    /* 1BD80 8002B580 00000000 */  nop
    /* 1BD84 8002B584 0000438C */  lw         $v1, 0x0($v0)
    /* 1BD88 8002B588 00000000 */  nop
    /* 1BD8C 8002B58C 00206230 */  andi       $v0, $v1, 0x2000
    /* 1BD90 8002B590 03004010 */  beqz       $v0, .L8002B5A0
    /* 1BD94 8002B594 7F000224 */   addiu     $v0, $zero, 0x7F
    /* 1BD98 8002B598 6EAD0008 */  j          .L8002B5B8
    /* 1BD9C 8002B59C 1000A2AF */   sw        $v0, 0x10($sp)
  .L8002B5A0:
    /* 1BDA0 8002B5A0 00806230 */  andi       $v0, $v1, 0x8000
    /* 1BDA4 8002B5A4 03004010 */  beqz       $v0, .L8002B5B4
    /* 1BDA8 8002B5A8 81FF0224 */   addiu     $v0, $zero, -0x7F
    /* 1BDAC 8002B5AC 6EAD0008 */  j          .L8002B5B8
    /* 1BDB0 8002B5B0 1000A2AF */   sw        $v0, 0x10($sp)
  .L8002B5B4:
    /* 1BDB4 8002B5B4 1000A0AF */  sw         $zero, 0x10($sp)
  .L8002B5B8:
    /* 1BDB8 8002B5B8 2900A010 */  beqz       $a1, .L8002B660
    /* 1BDBC 8002B5BC 00000000 */   nop
    /* 1BDC0 8002B5C0 0680023C */  lui        $v0, %hi(D_80067ECC)
    /* 1BDC4 8002B5C4 CC7E4284 */  lh         $v0, %lo(D_80067ECC)($v0)
    /* 1BDC8 8002B5C8 0780103C */  lui        $s0, %hi(D_8006A05C)
    /* 1BDCC 8002B5CC 5CA0108E */  lw         $s0, %lo(D_8006A05C)($s0)
    /* 1BDD0 8002B5D0 00000000 */  nop
    /* 1BDD4 8002B5D4 23800202 */  subu       $s0, $s0, $v0
    /* 1BDD8 8002B5D8 FF0F1032 */  andi       $s0, $s0, 0xFFF
    /* 1BDDC 8002B5DC 996D000C */  jal        func_8001B664
    /* 1BDE0 8002B5E0 21200002 */   addu      $a0, $s0, $zero
    /* 1BDE4 8002B5E4 21200002 */  addu       $a0, $s0, $zero
    /* 1BDE8 8002B5E8 876D000C */  jal        func_8001B61C
    /* 1BDEC 8002B5EC 21884000 */   addu      $s1, $v0, $zero
    /* 1BDF0 8002B5F0 1000A38F */  lw         $v1, 0x10($sp)
    /* 1BDF4 8002B5F4 00000000 */  nop
    /* 1BDF8 8002B5F8 23180300 */  negu       $v1, $v1
    /* 1BDFC 8002B5FC 18007100 */  mult       $v1, $s1
    /* 1BE00 8002B600 12280000 */  mflo       $a1
    /* 1BE04 8002B604 1400A38F */  lw         $v1, 0x14($sp)
    /* 1BE08 8002B608 00000000 */  nop
    /* 1BE0C 8002B60C 18006200 */  mult       $v1, $v0
    /* 1BE10 8002B610 21200002 */  addu       $a0, $s0, $zero
    /* 1BE14 8002B614 12180000 */  mflo       $v1
    /* 1BE18 8002B618 2310A300 */  subu       $v0, $a1, $v1
    /* 1BE1C 8002B61C 03130200 */  sra        $v0, $v0, 12
    /* 1BE20 8002B620 996D000C */  jal        func_8001B664
    /* 1BE24 8002B624 000042AE */   sw        $v0, 0x0($s2)
    /* 1BE28 8002B628 21200002 */  addu       $a0, $s0, $zero
    /* 1BE2C 8002B62C 876D000C */  jal        func_8001B61C
    /* 1BE30 8002B630 21804000 */   addu      $s0, $v0, $zero
    /* 1BE34 8002B634 1400A38F */  lw         $v1, 0x14($sp)
    /* 1BE38 8002B638 00000000 */  nop
    /* 1BE3C 8002B63C 18007000 */  mult       $v1, $s0
    /* 1BE40 8002B640 12200000 */  mflo       $a0
    /* 1BE44 8002B644 1000A38F */  lw         $v1, 0x10($sp)
    /* 1BE48 8002B648 00000000 */  nop
    /* 1BE4C 8002B64C 18006200 */  mult       $v1, $v0
    /* 1BE50 8002B650 12180000 */  mflo       $v1
    /* 1BE54 8002B654 23108300 */  subu       $v0, $a0, $v1
    /* 1BE58 8002B658 9CAD0008 */  j          .L8002B670
    /* 1BE5C 8002B65C 03130200 */   sra       $v0, $v0, 12
  .L8002B660:
    /* 1BE60 8002B660 1000A28F */  lw         $v0, 0x10($sp)
    /* 1BE64 8002B664 00000000 */  nop
    /* 1BE68 8002B668 000042AE */  sw         $v0, 0x0($s2)
    /* 1BE6C 8002B66C 1400A28F */  lw         $v0, 0x14($sp)
  .L8002B670:
    /* 1BE70 8002B670 00000000 */  nop
    /* 1BE74 8002B674 040042AE */  sw         $v0, 0x4($s2)
    /* 1BE78 8002B678 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1BE7C 8002B67C 2000B28F */  lw         $s2, 0x20($sp)
    /* 1BE80 8002B680 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1BE84 8002B684 1800B08F */  lw         $s0, 0x18($sp)
    /* 1BE88 8002B688 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1BE8C 8002B68C 0800E003 */  jr         $ra
    /* 1BE90 8002B690 00000000 */   nop
endlabel func_8002B4E4
