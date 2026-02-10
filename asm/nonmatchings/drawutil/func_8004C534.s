.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C534, 0x138

glabel func_8004C534
    /* 3CD34 8004C534 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3CD38 8004C538 21280000 */  addu       $a1, $zero, $zero
    /* 3CD3C 8004C53C 0680043C */  lui        $a0, %hi(D_80067034)
    /* 3CD40 8004C540 3470848C */  lw         $a0, %lo(D_80067034)($a0)
    /* 3CD44 8004C544 000C0624 */  addiu      $a2, $zero, 0xC00
    /* 3CD48 8004C548 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3CD4C 8004C54C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3CD50 8004C550 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3CD54 8004C554 F96C000C */  jal        func_8001B3E4
    /* 3CD58 8004C558 00D08424 */   addiu     $a0, $a0, -0x3000
    /* 3CD5C 8004C55C 160E010C */  jal        func_80043858
    /* 3CD60 8004C560 00000000 */   nop
    /* 3CD64 8004C564 4111010C */  jal        func_80044504
    /* 3CD68 8004C568 00000000 */   nop
    /* 3CD6C 8004C56C F61B010C */  jal        func_80046FD8
    /* 3CD70 8004C570 00000000 */   nop
    /* 3CD74 8004C574 7526010C */  jal        func_800499D4
    /* 3CD78 8004C578 00000000 */   nop
    /* 3CD7C 8004C57C 0780023C */  lui        $v0, %hi(D_8006A250)
    /* 3CD80 8004C580 50A2428C */  lw         $v0, %lo(D_8006A250)($v0)
    /* 3CD84 8004C584 00000000 */  nop
    /* 3CD88 8004C588 32004014 */  bnez       $v0, .L8004C654
    /* 3CD8C 8004C58C 00000000 */   nop
    /* 3CD90 8004C590 0780103C */  lui        $s0, %hi(D_8006A01C)
    /* 3CD94 8004C594 1CA0108E */  lw         $s0, %lo(D_8006A01C)($s0)
    /* 3CD98 8004C598 00000000 */  nop
    /* 3CD9C 8004C59C 20000012 */  beqz       $s0, .L8004C620
    /* 3CDA0 8004C5A0 40181000 */   sll       $v1, $s0, 1
    /* 3CDA4 8004C5A4 0780043C */  lui        $a0, %hi(D_8006A104)
    /* 3CDA8 8004C5A8 04A1848C */  lw         $a0, %lo(D_8006A104)($a0)
    /* 3CDAC 8004C5AC 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* 3CDB0 8004C5B0 F89F428C */  lw         $v0, %lo(D_80069FF8)($v0)
    /* 3CDB4 8004C5B4 0780113C */  lui        $s1, %hi(D_8006A00E)
    /* 3CDB8 8004C5B8 0EA03192 */  lbu        $s1, %lo(D_8006A00E)($s1)
    /* 3CDBC 8004C5BC 23104300 */  subu       $v0, $v0, $v1
    /* 3CDC0 8004C5C0 0780013C */  lui        $at, %hi(D_80069FF8)
    /* 3CDC4 8004C5C4 F89F22AC */  sw         $v0, %lo(D_80069FF8)($at)
    /* 3CDC8 8004C5C8 1EAC000C */  jal        func_8002B078
    /* 3CDCC 8004C5CC 00000000 */   nop
    /* 3CDD0 8004C5D0 04000324 */  addiu      $v1, $zero, 0x4
    /* 3CDD4 8004C5D4 02004314 */  bne        $v0, $v1, .L8004C5E0
    /* 3CDD8 8004C5D8 F4000224 */   addiu     $v0, $zero, 0xF4
    /* 3CDDC 8004C5DC FA000224 */  addiu      $v0, $zero, 0xFA
  .L8004C5E0:
    /* 3CDE0 8004C5E0 0780013C */  lui        $at, %hi(D_8006A00E)
    /* 3CDE4 8004C5E4 0EA022A0 */  sb         $v0, %lo(D_8006A00E)($at)
    /* 3CDE8 8004C5E8 6F07010C */  jal        func_80041DBC
    /* 3CDEC 8004C5EC 00000000 */   nop
    /* 3CDF0 8004C5F0 0780023C */  lui        $v0, %hi(D_8006A01C)
    /* 3CDF4 8004C5F4 1CA0428C */  lw         $v0, %lo(D_8006A01C)($v0)
    /* 3CDF8 8004C5F8 0780043C */  lui        $a0, %hi(D_80069FF8)
    /* 3CDFC 8004C5FC F89F8424 */  addiu      $a0, $a0, %lo(D_80069FF8)
    /* 3CE00 8004C600 0780013C */  lui        $at, %hi(D_8006A01C)
    /* 3CE04 8004C604 1CA020AC */  sw         $zero, %lo(D_8006A01C)($at)
    /* 3CE08 8004C608 0780013C */  lui        $at, %hi(D_8006A00E)
    /* 3CE0C 8004C60C 0EA031A0 */  sb         $s1, %lo(D_8006A00E)($at)
    /* 3CE10 8004C610 0000838C */  lw         $v1, 0x0($a0)
    /* 3CE14 8004C614 40100200 */  sll        $v0, $v0, 1
    /* 3CE18 8004C618 21186200 */  addu       $v1, $v1, $v0
    /* 3CE1C 8004C61C 000083AC */  sw         $v1, 0x0($a0)
  .L8004C620:
    /* 3CE20 8004C620 6F07010C */  jal        func_80041DBC
    /* 3CE24 8004C624 00000000 */   nop
    /* 3CE28 8004C628 7A25010C */  jal        func_800495E8
    /* 3CE2C 8004C62C 00000000 */   nop
    /* 3CE30 8004C630 0780023C */  lui        $v0, %hi(D_8006AAB4)
    /* 3CE34 8004C634 B4AA4290 */  lbu        $v0, %lo(D_8006AAB4)($v0)
    /* 3CE38 8004C638 00000000 */  nop
    /* 3CE3C 8004C63C 03004010 */  beqz       $v0, .L8004C64C
    /* 3CE40 8004C640 00000000 */   nop
    /* 3CE44 8004C644 C123010C */  jal        func_80048F04
    /* 3CE48 8004C648 00000000 */   nop
  .L8004C64C:
    /* 3CE4C 8004C64C 0780013C */  lui        $at, %hi(D_8006A01C)
    /* 3CE50 8004C650 1CA030AC */  sw         $s0, %lo(D_8006A01C)($at)
  .L8004C654:
    /* 3CE54 8004C654 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3CE58 8004C658 1400B18F */  lw         $s1, 0x14($sp)
    /* 3CE5C 8004C65C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3CE60 8004C660 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3CE64 8004C664 0800E003 */  jr         $ra
    /* 3CE68 8004C668 00000000 */   nop
endlabel func_8004C534
