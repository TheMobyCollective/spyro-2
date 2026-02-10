.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80038A0C, 0xC0

glabel func_80038A0C
    /* 2920C 80038A0C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 29210 80038A10 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 29214 80038A14 21A88000 */  addu       $s5, $a0, $zero
    /* 29218 80038A18 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2921C 80038A1C 2190A000 */  addu       $s2, $a1, $zero
    /* 29220 80038A20 3000B6AF */  sw         $s6, 0x30($sp)
    /* 29224 80038A24 21B0C000 */  addu       $s6, $a2, $zero
    /* 29228 80038A28 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2922C 80038A2C FF00143C */  lui        $s4, (0xFFFFFF >> 16)
    /* 29230 80038A30 FFFF9436 */  ori        $s4, $s4, (0xFFFFFF & 0xFFFF)
    /* 29234 80038A34 1800B0AF */  sw         $s0, 0x18($sp)
    /* 29238 80038A38 21800000 */  addu       $s0, $zero, $zero
    /* 2923C 80038A3C 3400BFAF */  sw         $ra, 0x34($sp)
    /* 29240 80038A40 2400B3AF */  sw         $s3, 0x24($sp)
    /* 29244 80038A44 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 29248 80038A48 00004286 */  lh         $v0, 0x0($s2)
    /* 2924C 80038A4C 00000000 */  nop
    /* 29250 80038A50 10004018 */  blez       $v0, .L80038A94
    /* 29254 80038A54 21980000 */   addu      $s3, $zero, $zero
    /* 29258 80038A58 0C001124 */  addiu      $s1, $zero, 0xC
  .L80038A5C:
    /* 2925C 80038A5C 2120A002 */  addu       $a0, $s5, $zero
    /* 29260 80038A60 DB6F000C */  jal        func_8001BF6C
    /* 29264 80038A64 21285102 */   addu      $a1, $s2, $s1
    /* 29268 80038A68 21184000 */  addu       $v1, $v0, $zero
    /* 2926C 80038A6C 2A107400 */  slt        $v0, $v1, $s4
    /* 29270 80038A70 03004010 */  beqz       $v0, .L80038A80
    /* 29274 80038A74 00000000 */   nop
    /* 29278 80038A78 21A06000 */  addu       $s4, $v1, $zero
    /* 2927C 80038A7C 21980002 */  addu       $s3, $s0, $zero
  .L80038A80:
    /* 29280 80038A80 00004286 */  lh         $v0, 0x0($s2)
    /* 29284 80038A84 01001026 */  addiu      $s0, $s0, 0x1
    /* 29288 80038A88 2A100202 */  slt        $v0, $s0, $v0
    /* 2928C 80038A8C F3FF4014 */  bnez       $v0, .L80038A5C
    /* 29290 80038A90 10003126 */   addiu     $s1, $s1, 0x10
  .L80038A94:
    /* 29294 80038A94 0200C012 */  beqz       $s6, .L80038AA0
    /* 29298 80038A98 21108002 */   addu      $v0, $s4, $zero
    /* 2929C 80038A9C 0000D3AE */  sw         $s3, 0x0($s6)
  .L80038AA0:
    /* 292A0 80038AA0 3400BF8F */  lw         $ra, 0x34($sp)
    /* 292A4 80038AA4 3000B68F */  lw         $s6, 0x30($sp)
    /* 292A8 80038AA8 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 292AC 80038AAC 2800B48F */  lw         $s4, 0x28($sp)
    /* 292B0 80038AB0 2400B38F */  lw         $s3, 0x24($sp)
    /* 292B4 80038AB4 2000B28F */  lw         $s2, 0x20($sp)
    /* 292B8 80038AB8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 292BC 80038ABC 1800B08F */  lw         $s0, 0x18($sp)
    /* 292C0 80038AC0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 292C4 80038AC4 0800E003 */  jr         $ra
    /* 292C8 80038AC8 00000000 */   nop
endlabel func_80038A0C
