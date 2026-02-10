.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D508, 0xFC

glabel func_8004D508
    /* 3DD08 8004D508 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 3DD0C 8004D50C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3DD10 8004D510 21908000 */  addu       $s2, $a0, $zero
    /* 3DD14 8004D514 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3DD18 8004D518 2198A000 */  addu       $s3, $a1, $zero
    /* 3DD1C 8004D51C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3DD20 8004D520 2180C000 */  addu       $s0, $a2, $zero
    /* 3DD24 8004D524 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3DD28 8004D528 21A0E000 */  addu       $s4, $a3, $zero
    /* 3DD2C 8004D52C 18000424 */  addiu      $a0, $zero, 0x18
    /* 3DD30 8004D530 3400BFAF */  sw         $ra, 0x34($sp)
    /* 3DD34 8004D534 3000BEAF */  sw         $fp, 0x30($sp)
    /* 3DD38 8004D538 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 3DD3C 8004D53C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 3DD40 8004D540 2400B5AF */  sw         $s5, 0x24($sp)
    /* 3DD44 8004D544 4134010C */  jal        func_8004D104
    /* 3DD48 8004D548 1400B1AF */   sw        $s1, 0x14($sp)
    /* 3DD4C 8004D54C 03005E26 */  addiu      $fp, $s2, 0x3
    /* 3DD50 8004D550 2120C003 */  addu       $a0, $fp, $zero
    /* 3DD54 8004D554 FDFF7726 */  addiu      $s7, $s3, -0x3
    /* 3DD58 8004D558 2128E002 */  addu       $a1, $s7, $zero
    /* 3DD5C 8004D55C 21300002 */  addu       $a2, $s0, $zero
    /* 3DD60 8004D560 01001126 */  addiu      $s1, $s0, 0x1
    /* 3DD64 8004D564 B634010C */  jal        func_8004D2D8
    /* 3DD68 8004D568 21382002 */   addu      $a3, $s1, $zero
    /* 3DD6C 8004D56C 01005626 */  addiu      $s6, $s2, 0x1
    /* 3DD70 8004D570 2120C002 */  addu       $a0, $s6, $zero
    /* 3DD74 8004D574 FFFF7526 */  addiu      $s5, $s3, -0x1
    /* 3DD78 8004D578 2128A002 */  addu       $a1, $s5, $zero
    /* 3DD7C 8004D57C 21302002 */  addu       $a2, $s1, $zero
    /* 3DD80 8004D580 02001026 */  addiu      $s0, $s0, 0x2
    /* 3DD84 8004D584 B634010C */  jal        func_8004D2D8
    /* 3DD88 8004D588 21380002 */   addu      $a3, $s0, $zero
    /* 3DD8C 8004D58C 21204002 */  addu       $a0, $s2, $zero
    /* 3DD90 8004D590 21286002 */  addu       $a1, $s3, $zero
    /* 3DD94 8004D594 21300002 */  addu       $a2, $s0, $zero
    /* 3DD98 8004D598 FEFF9026 */  addiu      $s0, $s4, -0x2
    /* 3DD9C 8004D59C B634010C */  jal        func_8004D2D8
    /* 3DDA0 8004D5A0 21380002 */   addu      $a3, $s0, $zero
    /* 3DDA4 8004D5A4 2120C002 */  addu       $a0, $s6, $zero
    /* 3DDA8 8004D5A8 2128A002 */  addu       $a1, $s5, $zero
    /* 3DDAC 8004D5AC 21300002 */  addu       $a2, $s0, $zero
    /* 3DDB0 8004D5B0 FFFF9026 */  addiu      $s0, $s4, -0x1
    /* 3DDB4 8004D5B4 B634010C */  jal        func_8004D2D8
    /* 3DDB8 8004D5B8 21380002 */   addu      $a3, $s0, $zero
    /* 3DDBC 8004D5BC 2120C003 */  addu       $a0, $fp, $zero
    /* 3DDC0 8004D5C0 2128E002 */  addu       $a1, $s7, $zero
    /* 3DDC4 8004D5C4 21300002 */  addu       $a2, $s0, $zero
    /* 3DDC8 8004D5C8 B634010C */  jal        func_8004D2D8
    /* 3DDCC 8004D5CC 21388002 */   addu      $a3, $s4, $zero
    /* 3DDD0 8004D5D0 3400BF8F */  lw         $ra, 0x34($sp)
    /* 3DDD4 8004D5D4 3000BE8F */  lw         $fp, 0x30($sp)
    /* 3DDD8 8004D5D8 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 3DDDC 8004D5DC 2800B68F */  lw         $s6, 0x28($sp)
    /* 3DDE0 8004D5E0 2400B58F */  lw         $s5, 0x24($sp)
    /* 3DDE4 8004D5E4 2000B48F */  lw         $s4, 0x20($sp)
    /* 3DDE8 8004D5E8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3DDEC 8004D5EC 1800B28F */  lw         $s2, 0x18($sp)
    /* 3DDF0 8004D5F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 3DDF4 8004D5F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 3DDF8 8004D5F8 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 3DDFC 8004D5FC 0800E003 */  jr         $ra
    /* 3DE00 8004D600 00000000 */   nop
endlabel func_8004D508
