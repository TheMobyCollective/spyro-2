.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001ED20, 0xF8

glabel func_8001ED20
    /* F520 8001ED20 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* F524 8001ED24 1800B2AF */  sw         $s2, 0x18($sp)
    /* F528 8001ED28 21908000 */  addu       $s2, $a0, $zero
    /* F52C 8001ED2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* F530 8001ED30 2180A000 */  addu       $s0, $a1, $zero
    /* F534 8001ED34 2000BFAF */  sw         $ra, 0x20($sp)
    /* F538 8001ED38 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* F53C 8001ED3C 1400B1AF */  sw         $s1, 0x14($sp)
    /* F540 8001ED40 0400048E */  lw         $a0, 0x4($s0)
    /* F544 8001ED44 996D000C */  jal        func_8001B664
    /* F548 8001ED48 2198C000 */   addu      $s3, $a2, $zero
    /* F54C 8001ED4C 0000048E */  lw         $a0, 0x0($s0)
    /* F550 8001ED50 996D000C */  jal        func_8001B664
    /* F554 8001ED54 21884000 */   addu      $s1, $v0, $zero
    /* F558 8001ED58 0800038E */  lw         $v1, 0x8($s0)
    /* F55C 8001ED5C 00000000 */  nop
    /* F560 8001ED60 18007100 */  mult       $v1, $s1
    /* F564 8001ED64 12380000 */  mflo       $a3
    /* F568 8001ED68 031B0700 */  sra        $v1, $a3, 12
    /* F56C 8001ED6C 00000000 */  nop
    /* F570 8001ED70 18006200 */  mult       $v1, $v0
    /* F574 8001ED74 12380000 */  mflo       $a3
    /* F578 8001ED78 03130700 */  sra        $v0, $a3, 12
    /* F57C 8001ED7C 000042AE */  sw         $v0, 0x0($s2)
    /* F580 8001ED80 0400048E */  lw         $a0, 0x4($s0)
    /* F584 8001ED84 996D000C */  jal        func_8001B664
    /* F588 8001ED88 00000000 */   nop
    /* F58C 8001ED8C 0000048E */  lw         $a0, 0x0($s0)
    /* F590 8001ED90 876D000C */  jal        func_8001B61C
    /* F594 8001ED94 21884000 */   addu      $s1, $v0, $zero
    /* F598 8001ED98 0800038E */  lw         $v1, 0x8($s0)
    /* F59C 8001ED9C 00000000 */  nop
    /* F5A0 8001EDA0 18007100 */  mult       $v1, $s1
    /* F5A4 8001EDA4 12380000 */  mflo       $a3
    /* F5A8 8001EDA8 031B0700 */  sra        $v1, $a3, 12
    /* F5AC 8001EDAC 00000000 */  nop
    /* F5B0 8001EDB0 18006200 */  mult       $v1, $v0
    /* F5B4 8001EDB4 12380000 */  mflo       $a3
    /* F5B8 8001EDB8 03130700 */  sra        $v0, $a3, 12
    /* F5BC 8001EDBC 040042AE */  sw         $v0, 0x4($s2)
    /* F5C0 8001EDC0 0400048E */  lw         $a0, 0x4($s0)
    /* F5C4 8001EDC4 876D000C */  jal        func_8001B61C
    /* F5C8 8001EDC8 00000000 */   nop
    /* F5CC 8001EDCC 0800038E */  lw         $v1, 0x8($s0)
    /* F5D0 8001EDD0 00000000 */  nop
    /* F5D4 8001EDD4 18006200 */  mult       $v1, $v0
    /* F5D8 8001EDD8 12380000 */  mflo       $a3
    /* F5DC 8001EDDC 03130700 */  sra        $v0, $a3, 12
    /* F5E0 8001EDE0 05006012 */  beqz       $s3, .L8001EDF8
    /* F5E4 8001EDE4 080042AE */   sw        $v0, 0x8($s2)
    /* F5E8 8001EDE8 21204002 */  addu       $a0, $s2, $zero
    /* F5EC 8001EDEC 21288000 */  addu       $a1, $a0, $zero
    /* F5F0 8001EDF0 736F000C */  jal        func_8001BDCC
    /* F5F4 8001EDF4 21306002 */   addu      $a2, $s3, $zero
  .L8001EDF8:
    /* F5F8 8001EDF8 2000BF8F */  lw         $ra, 0x20($sp)
    /* F5FC 8001EDFC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* F600 8001EE00 1800B28F */  lw         $s2, 0x18($sp)
    /* F604 8001EE04 1400B18F */  lw         $s1, 0x14($sp)
    /* F608 8001EE08 1000B08F */  lw         $s0, 0x10($sp)
    /* F60C 8001EE0C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* F610 8001EE10 0800E003 */  jr         $ra
    /* F614 8001EE14 00000000 */   nop
endlabel func_8001ED20
