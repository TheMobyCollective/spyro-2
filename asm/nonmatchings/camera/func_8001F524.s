.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F524, 0xF4

glabel func_8001F524
    /* FD24 8001F524 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* FD28 8001F528 21188000 */  addu       $v1, $a0, $zero
    /* FD2C 8001F52C 1000B0AF */  sw         $s0, 0x10($sp)
    /* FD30 8001F530 2180A000 */  addu       $s0, $a1, $zero
    /* FD34 8001F534 1400B1AF */  sw         $s1, 0x14($sp)
    /* FD38 8001F538 2188C000 */  addu       $s1, $a2, $zero
    /* FD3C 8001F53C 0780043C */  lui        $a0, %hi(D_8006A248)
    /* FD40 8001F540 48A28424 */  addiu      $a0, $a0, %lo(D_8006A248)
    /* FD44 8001F544 2000BFAF */  sw         $ra, 0x20($sp)
    /* FD48 8001F548 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* FD4C 8001F54C 1800B2AF */  sw         $s2, 0x18($sp)
    /* FD50 8001F550 0000828C */  lw         $v0, 0x0($a0)
    /* FD54 8001F554 00000000 */  nop
    /* FD58 8001F558 27004004 */  bltz       $v0, .L8001F5F8
    /* FD5C 8001F55C 2190E000 */   addu      $s2, $a3, $zero
    /* FD60 8001F560 21980000 */  addu       $s3, $zero, $zero
    /* FD64 8001F564 D4FF8424 */  addiu      $a0, $a0, -0x2C
    /* FD68 8001F568 6C6F000C */  jal        func_8001BDB0
    /* FD6C 8001F56C 21286000 */   addu      $a1, $v1, $zero
    /* FD70 8001F570 00111000 */  sll        $v0, $s0, 4
    /* FD74 8001F574 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* FD78 8001F578 EC7F8424 */  addiu      $a0, $a0, %lo(D_80067FEC)
    /* FD7C 8001F57C 0780013C */  lui        $at, %hi(D_8006A228)
    /* FD80 8001F580 28A222AC */  sw         $v0, %lo(D_8006A228)($at)
    /* FD84 8001F584 0B000224 */  addiu      $v0, $zero, 0xB
    /* FD88 8001F588 000082AC */  sw         $v0, 0x0($a0)
    /* FD8C 8001F58C 0780013C */  lui        $at, %hi(D_8006A22C)
    /* FD90 8001F590 2CA232AC */  sw         $s2, %lo(D_8006A22C)($at)
    /* FD94 8001F594 06002012 */  beqz       $s1, .L8001F5B0
    /* FD98 8001F598 00000000 */   nop
    /* FD9C 8001F59C 1C008424 */  addiu      $a0, $a0, 0x1C
    /* FDA0 8001F5A0 6C6F000C */  jal        func_8001BDB0
    /* FDA4 8001F5A4 21282002 */   addu      $a1, $s1, $zero
    /* FDA8 8001F5A8 6E7D0008 */  j          .L8001F5B8
    /* FDAC 8001F5AC 00000000 */   nop
  .L8001F5B0:
    /* FDB0 8001F5B0 686F000C */  jal        func_8001BDA0
    /* FDB4 8001F5B4 1C008424 */   addiu     $a0, $a0, 0x1C
  .L8001F5B8:
    /* FDB8 8001F5B8 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* FDBC 8001F5BC D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* FDC0 8001F5C0 09000224 */  addiu      $v0, $zero, 0x9
    /* FDC4 8001F5C4 08006214 */  bne        $v1, $v0, .L8001F5E8
    /* FDC8 8001F5C8 00000000 */   nop
    /* FDCC 8001F5CC 0680023C */  lui        $v0, %hi(D_80066F68)
    /* FDD0 8001F5D0 686F428C */  lw         $v0, %lo(D_80066F68)($v0)
    /* FDD4 8001F5D4 00000000 */  nop
    /* FDD8 8001F5D8 80004228 */  slti       $v0, $v0, 0x80
    /* FDDC 8001F5DC 02004014 */  bnez       $v0, .L8001F5E8
    /* FDE0 8001F5E0 00000000 */   nop
    /* FDE4 8001F5E4 10001324 */  addiu      $s3, $zero, 0x10
  .L8001F5E8:
    /* FDE8 8001F5E8 B685000C */  jal        func_800216D8
    /* FDEC 8001F5EC 0B000424 */   addiu     $a0, $zero, 0xB
    /* FDF0 8001F5F0 0680013C */  lui        $at, %hi(D_80067ED8)
    /* FDF4 8001F5F4 D87E33AC */  sw         $s3, %lo(D_80067ED8)($at)
  .L8001F5F8:
    /* FDF8 8001F5F8 2000BF8F */  lw         $ra, 0x20($sp)
    /* FDFC 8001F5FC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* FE00 8001F600 1800B28F */  lw         $s2, 0x18($sp)
    /* FE04 8001F604 1400B18F */  lw         $s1, 0x14($sp)
    /* FE08 8001F608 1000B08F */  lw         $s0, 0x10($sp)
    /* FE0C 8001F60C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* FE10 8001F610 0800E003 */  jr         $ra
    /* FE14 8001F614 00000000 */   nop
endlabel func_8001F524
