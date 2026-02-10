.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C510, 0xDC

glabel func_8001C510
    /* CD10 8001C510 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* CD14 8001C514 0780013C */  lui        $at, %hi(D_80068C94)
    /* CD18 8001C518 948C24AC */  sw         $a0, %lo(D_80068C94)($at)
    /* CD1C 8001C51C 0780023C */  lui        $v0, %hi(D_80068C94)
    /* CD20 8001C520 948C428C */  lw         $v0, %lo(D_80068C94)($v0)
    /* CD24 8001C524 3C008524 */  addiu      $a1, $a0, 0x3C
    /* CD28 8001C528 0680013C */  lui        $at, %hi(D_80066F24)
    /* CD2C 8001C52C 246F25AC */  sw         $a1, %lo(D_80066F24)($at)
    /* CD30 8001C530 3800438C */  lw         $v1, 0x38($v0)
    /* CD34 8001C534 0000428C */  lw         $v0, 0x0($v0)
    /* CD38 8001C538 21188300 */  addu       $v1, $a0, $v1
    /* CD3C 8001C53C 0680013C */  lui        $at, %hi(D_80066EDC)
    /* CD40 8001C540 DC6E23AC */  sw         $v1, %lo(D_80066EDC)($at)
    /* CD44 8001C544 26004018 */  blez       $v0, .L8001C5E0
    /* CD48 8001C548 21380000 */   addu      $a3, $zero, $zero
    /* CD4C 8001C54C FFFF0824 */  addiu      $t0, $zero, -0x1
    /* CD50 8001C550 21306000 */  addu       $a2, $v1, $zero
  .L8001C554:
    /* CD54 8001C554 0000A28C */  lw         $v0, 0x0($a1)
    /* CD58 8001C558 00000000 */  nop
    /* CD5C 8001C55C 18004810 */  beq        $v0, $t0, .L8001C5C0
    /* CD60 8001C560 21188200 */   addu      $v1, $a0, $v0
    /* CD64 8001C564 0000A3AC */  sw         $v1, 0x0($a1)
    /* CD68 8001C568 0400628C */  lw         $v0, 0x4($v1)
    /* CD6C 8001C56C 00000000 */  nop
    /* CD70 8001C570 2110C200 */  addu       $v0, $a2, $v0
    /* CD74 8001C574 040062AC */  sw         $v0, 0x4($v1)
    /* CD78 8001C578 0000A38C */  lw         $v1, 0x0($a1)
    /* CD7C 8001C57C 00000000 */  nop
    /* CD80 8001C580 0800628C */  lw         $v0, 0x8($v1)
    /* CD84 8001C584 00000000 */  nop
    /* CD88 8001C588 2110C200 */  addu       $v0, $a2, $v0
    /* CD8C 8001C58C 080062AC */  sw         $v0, 0x8($v1)
    /* CD90 8001C590 0000A38C */  lw         $v1, 0x0($a1)
    /* CD94 8001C594 00000000 */  nop
    /* CD98 8001C598 0C00628C */  lw         $v0, 0xC($v1)
    /* CD9C 8001C59C 00000000 */  nop
    /* CDA0 8001C5A0 2110C200 */  addu       $v0, $a2, $v0
    /* CDA4 8001C5A4 0C0062AC */  sw         $v0, 0xC($v1)
    /* CDA8 8001C5A8 0000A38C */  lw         $v1, 0x0($a1)
    /* CDAC 8001C5AC 00000000 */  nop
    /* CDB0 8001C5B0 1000628C */  lw         $v0, 0x10($v1)
    /* CDB4 8001C5B4 00000000 */  nop
    /* CDB8 8001C5B8 2110C200 */  addu       $v0, $a2, $v0
    /* CDBC 8001C5BC 100062AC */  sw         $v0, 0x10($v1)
  .L8001C5C0:
    /* CDC0 8001C5C0 0780023C */  lui        $v0, %hi(D_80068C94)
    /* CDC4 8001C5C4 948C428C */  lw         $v0, %lo(D_80068C94)($v0)
    /* CDC8 8001C5C8 00000000 */  nop
    /* CDCC 8001C5CC 0000428C */  lw         $v0, 0x0($v0)
    /* CDD0 8001C5D0 0100E724 */  addiu      $a3, $a3, 0x1
    /* CDD4 8001C5D4 2A10E200 */  slt        $v0, $a3, $v0
    /* CDD8 8001C5D8 DEFF4014 */  bnez       $v0, .L8001C554
    /* CDDC 8001C5DC 0400A524 */   addiu     $a1, $a1, 0x4
  .L8001C5E0:
    /* CDE0 8001C5E0 0800BD27 */  addiu      $sp, $sp, 0x8
    /* CDE4 8001C5E4 0800E003 */  jr         $ra
    /* CDE8 8001C5E8 00000000 */   nop
endlabel func_8001C510
