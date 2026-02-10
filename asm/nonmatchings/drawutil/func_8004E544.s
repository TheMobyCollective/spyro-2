.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004E544, 0xE8

glabel func_8004E544
    /* 3ED44 8004E544 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3ED48 8004E548 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3ED4C 8004E54C 21A0A000 */  addu       $s4, $a1, $zero
    /* 3ED50 8004E550 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3ED54 8004E554 01001124 */  addiu      $s1, $zero, 0x1
    /* 3ED58 8004E558 2128C000 */  addu       $a1, $a2, $zero
    /* 3ED5C 8004E55C 0A00A228 */  slti       $v0, $a1, 0xA
    /* 3ED60 8004E560 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3ED64 8004E564 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3ED68 8004E568 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3ED6C 8004E56C 0B004014 */  bnez       $v0, .L8004E59C
    /* 3ED70 8004E570 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3ED74 8004E574 6666073C */  lui        $a3, (0x66666667 >> 16)
    /* 3ED78 8004E578 6766E734 */  ori        $a3, $a3, (0x66666667 & 0xFFFF)
  .L8004E57C:
    /* 3ED7C 8004E57C 1800A700 */  mult       $a1, $a3
    /* 3ED80 8004E580 C3170500 */  sra        $v0, $a1, 31
    /* 3ED84 8004E584 10400000 */  mfhi       $t0
    /* 3ED88 8004E588 83180800 */  sra        $v1, $t0, 2
    /* 3ED8C 8004E58C 23286200 */  subu       $a1, $v1, $v0
    /* 3ED90 8004E590 0A00A228 */  slti       $v0, $a1, 0xA
    /* 3ED94 8004E594 F9FF4010 */  beqz       $v0, .L8004E57C
    /* 3ED98 8004E598 01003126 */   addiu     $s1, $s1, 0x1
  .L8004E59C:
    /* 3ED9C 8004E59C 40101100 */  sll        $v0, $s1, 1
    /* 3EDA0 8004E5A0 21105100 */  addu       $v0, $v0, $s1
    /* 3EDA4 8004E5A4 C0100200 */  sll        $v0, $v0, 3
    /* 3EDA8 8004E5A8 23208200 */  subu       $a0, $a0, $v0
    /* 3EDAC 8004E5AC 1600201A */  blez       $s1, .L8004E608
    /* 3EDB0 8004E5B0 2128C000 */   addu      $a1, $a2, $zero
    /* 3EDB4 8004E5B4 6666133C */  lui        $s3, (0x66666667 >> 16)
    /* 3EDB8 8004E5B8 67667336 */  ori        $s3, $s3, (0x66666667 & 0xFFFF)
    /* 3EDBC 8004E5BC 21904400 */  addu       $s2, $v0, $a0
  .L8004E5C0:
    /* 3EDC0 8004E5C0 1800B300 */  mult       $a1, $s3
    /* 3EDC4 8004E5C4 21204002 */  addu       $a0, $s2, $zero
    /* 3EDC8 8004E5C8 E8FF5226 */  addiu      $s2, $s2, -0x18
    /* 3EDCC 8004E5CC FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 3EDD0 8004E5D0 C3170500 */  sra        $v0, $a1, 31
    /* 3EDD4 8004E5D4 21380000 */  addu       $a3, $zero, $zero
    /* 3EDD8 8004E5D8 10400000 */  mfhi       $t0
    /* 3EDDC 8004E5DC 83800800 */  sra        $s0, $t0, 2
    /* 3EDE0 8004E5E0 23800202 */  subu       $s0, $s0, $v0
    /* 3EDE4 8004E5E4 80301000 */  sll        $a2, $s0, 2
    /* 3EDE8 8004E5E8 2130D000 */  addu       $a2, $a2, $s0
    /* 3EDEC 8004E5EC 40300600 */  sll        $a2, $a2, 1
    /* 3EDF0 8004E5F0 2330A600 */  subu       $a2, $a1, $a2
    /* 3EDF4 8004E5F4 21288002 */  addu       $a1, $s4, $zero
    /* 3EDF8 8004E5F8 8E38010C */  jal        func_8004E238
    /* 3EDFC 8004E5FC 27300600 */   nor       $a2, $zero, $a2
    /* 3EE00 8004E600 EFFF201E */  bgtz       $s1, .L8004E5C0
    /* 3EE04 8004E604 21280002 */   addu      $a1, $s0, $zero
  .L8004E608:
    /* 3EE08 8004E608 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3EE0C 8004E60C 2000B48F */  lw         $s4, 0x20($sp)
    /* 3EE10 8004E610 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3EE14 8004E614 1800B28F */  lw         $s2, 0x18($sp)
    /* 3EE18 8004E618 1400B18F */  lw         $s1, 0x14($sp)
    /* 3EE1C 8004E61C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3EE20 8004E620 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3EE24 8004E624 0800E003 */  jr         $ra
    /* 3EE28 8004E628 00000000 */   nop
endlabel func_8004E544
