.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003ACD4, 0xB0

glabel func_8003ACD4
    /* 2B4D4 8003ACD4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2B4D8 8003ACD8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2B4DC 8003ACDC 21908000 */  addu       $s2, $a0, $zero
    /* 2B4E0 8003ACE0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2B4E4 8003ACE4 21880000 */  addu       $s1, $zero, $zero
    /* 2B4E8 8003ACE8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2B4EC 8003ACEC 04001324 */  addiu      $s3, $zero, 0x4
    /* 2B4F0 8003ACF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2B4F4 8003ACF4 21800000 */  addu       $s0, $zero, $zero
    /* 2B4F8 8003ACF8 2000BFAF */  sw         $ra, 0x20($sp)
  .L8003ACFC:
    /* 2B4FC 8003ACFC 37010424 */  addiu      $a0, $zero, 0x137
    /* 2B500 8003AD00 0680023C */  lui        $v0, %hi(D_800670B4)
    /* 2B504 8003AD04 B470428C */  lw         $v0, %lo(D_800670B4)($v0)
    /* 2B508 8003AD08 00000000 */  nop
    /* 2B50C 8003AD0C 09F84000 */  jalr       $v0
    /* 2B510 8003AD10 21284002 */   addu      $a1, $s2, $zero
    /* 2B514 8003AD14 0000438C */  lw         $v1, 0x0($v0)
    /* 2B518 8003AD18 00000000 */  nop
    /* 2B51C 8003AD1C 000072AC */  sw         $s2, 0x0($v1)
    /* 2B520 8003AD20 0680013C */  lui        $at, %hi(D_80063500)
    /* 2B524 8003AD24 21083000 */  addu       $at, $at, $s0
    /* 2B528 8003AD28 00352490 */  lbu        $a0, %lo(D_80063500)($at)
    /* 2B52C 8003AD2C 1400438C */  lw         $v1, 0x14($v0)
    /* 2B530 8003AD30 490051A0 */  sb         $s1, 0x49($v0)
    /* 2B534 8003AD34 01003126 */  addiu      $s1, $s1, 0x1
    /* 2B538 8003AD38 00F66324 */  addiu      $v1, $v1, -0xA00
    /* 2B53C 8003AD3C 3C0044A0 */  sb         $a0, 0x3C($v0)
    /* 2B540 8003AD40 140043AC */  sw         $v1, 0x14($v0)
    /* 2B544 8003AD44 0680013C */  lui        $at, %hi(D_80063503)
    /* 2B548 8003AD48 21083000 */  addu       $at, $at, $s0
    /* 2B54C 8003AD4C 03352390 */  lbu        $v1, %lo(D_80063503)($at)
    /* 2B550 8003AD50 470053A0 */  sb         $s3, 0x47($v0)
    /* 2B554 8003AD54 540043A0 */  sb         $v1, 0x54($v0)
    /* 2B558 8003AD58 0700222A */  slti       $v0, $s1, 0x7
    /* 2B55C 8003AD5C E7FF4014 */  bnez       $v0, .L8003ACFC
    /* 2B560 8003AD60 04001026 */   addiu     $s0, $s0, 0x4
    /* 2B564 8003AD64 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2B568 8003AD68 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2B56C 8003AD6C 1800B28F */  lw         $s2, 0x18($sp)
    /* 2B570 8003AD70 1400B18F */  lw         $s1, 0x14($sp)
    /* 2B574 8003AD74 1000B08F */  lw         $s0, 0x10($sp)
    /* 2B578 8003AD78 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2B57C 8003AD7C 0800E003 */  jr         $ra
    /* 2B580 8003AD80 00000000 */   nop
endlabel func_8003ACD4
