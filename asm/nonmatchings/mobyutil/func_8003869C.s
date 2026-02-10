.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003869C, 0xA0

glabel func_8003869C
    /* 28E9C 8003869C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 28EA0 800386A0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 28EA4 800386A4 21908000 */  addu       $s2, $a0, $zero
    /* 28EA8 800386A8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 28EAC 800386AC 21A00000 */  addu       $s4, $zero, $zero
    /* 28EB0 800386B0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 28EB4 800386B4 21800000 */  addu       $s0, $zero, $zero
    /* 28EB8 800386B8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 28EBC 800386BC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 28EC0 800386C0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 28EC4 800386C4 00004286 */  lh         $v0, 0x0($s2)
    /* 28EC8 800386C8 00000000 */  nop
    /* 28ECC 800386CC 11004018 */  blez       $v0, .L80038714
    /* 28ED0 800386D0 21980000 */   addu      $s3, $zero, $zero
    /* 28ED4 800386D4 0C001124 */  addiu      $s1, $zero, 0xC
  .L800386D8:
    /* 28ED8 800386D8 0780043C */  lui        $a0, %hi(D_80069FF0)
    /* 28EDC 800386DC F09F8424 */  addiu      $a0, $a0, %lo(D_80069FF0)
    /* 28EE0 800386E0 DB6F000C */  jal        func_8001BF6C
    /* 28EE4 800386E4 21285102 */   addu      $a1, $s2, $s1
    /* 28EE8 800386E8 21184000 */  addu       $v1, $v0, $zero
    /* 28EEC 800386EC 2A108302 */  slt        $v0, $s4, $v1
    /* 28EF0 800386F0 03004010 */  beqz       $v0, .L80038700
    /* 28EF4 800386F4 00000000 */   nop
    /* 28EF8 800386F8 21A06000 */  addu       $s4, $v1, $zero
    /* 28EFC 800386FC 21980002 */  addu       $s3, $s0, $zero
  .L80038700:
    /* 28F00 80038700 00004286 */  lh         $v0, 0x0($s2)
    /* 28F04 80038704 01001026 */  addiu      $s0, $s0, 0x1
    /* 28F08 80038708 2A100202 */  slt        $v0, $s0, $v0
    /* 28F0C 8003870C F2FF4014 */  bnez       $v0, .L800386D8
    /* 28F10 80038710 10003126 */   addiu     $s1, $s1, 0x10
  .L80038714:
    /* 28F14 80038714 21106002 */  addu       $v0, $s3, $zero
    /* 28F18 80038718 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 28F1C 8003871C 2800B48F */  lw         $s4, 0x28($sp)
    /* 28F20 80038720 2400B38F */  lw         $s3, 0x24($sp)
    /* 28F24 80038724 2000B28F */  lw         $s2, 0x20($sp)
    /* 28F28 80038728 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 28F2C 8003872C 1800B08F */  lw         $s0, 0x18($sp)
    /* 28F30 80038730 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 28F34 80038734 0800E003 */  jr         $ra
    /* 28F38 80038738 00000000 */   nop
endlabel func_8003869C
