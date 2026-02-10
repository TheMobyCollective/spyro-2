.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C5EC, 0xA0

glabel func_8001C5EC
    /* CDEC 8001C5EC 0780033C */  lui        $v1, %hi(D_800681C4)
    /* CDF0 8001C5F0 C4816324 */  addiu      $v1, $v1, %lo(D_800681C4)
    /* CDF4 8001C5F4 0000648C */  lw         $a0, 0x0($v1)
    /* CDF8 8001C5F8 00000000 */  nop
    /* CDFC 8001C5FC 20008010 */  beqz       $a0, .L8001C680
    /* CE00 8001C600 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* CE04 8001C604 00008290 */  lbu        $v0, 0x0($a0)
    /* CE08 8001C608 0780013C */  lui        $at, %hi(D_800681C0)
    /* CE0C 8001C60C C08122A0 */  sb         $v0, %lo(D_800681C0)($at)
    /* CE10 8001C610 01008290 */  lbu        $v0, 0x1($a0)
    /* CE14 8001C614 0780013C */  lui        $at, %hi(D_800681C1)
    /* CE18 8001C618 C18122A0 */  sb         $v0, %lo(D_800681C1)($at)
    /* CE1C 8001C61C 02008290 */  lbu        $v0, 0x2($a0)
    /* CE20 8001C620 04008424 */  addiu      $a0, $a0, 0x4
    /* CE24 8001C624 0780013C */  lui        $at, %hi(D_800681C2)
    /* CE28 8001C628 C28122A0 */  sb         $v0, %lo(D_800681C2)($at)
    /* CE2C 8001C62C 0000828C */  lw         $v0, 0x0($a0)
    /* CE30 8001C630 04008424 */  addiu      $a0, $a0, 0x4
    /* CE34 8001C634 0780013C */  lui        $at, %hi(D_800681BC)
    /* CE38 8001C638 BC8124AC */  sw         $a0, %lo(D_800681BC)($at)
    /* CE3C 8001C63C 0780013C */  lui        $at, %hi(D_800681B8)
    /* CE40 8001C640 B88122AC */  sw         $v0, %lo(D_800681B8)($at)
    /* CE44 8001C644 0C004018 */  blez       $v0, .L8001C678
    /* CE48 8001C648 21280000 */   addu      $a1, $zero, $zero
    /* CE4C 8001C64C 21306000 */  addu       $a2, $v1, $zero
  .L8001C650:
    /* CE50 8001C650 0000C28C */  lw         $v0, 0x0($a2)
    /* CE54 8001C654 0000838C */  lw         $v1, 0x0($a0)
    /* CE58 8001C658 0100A524 */  addiu      $a1, $a1, 0x1
    /* CE5C 8001C65C 21104300 */  addu       $v0, $v0, $v1
    /* CE60 8001C660 000082AC */  sw         $v0, 0x0($a0)
    /* CE64 8001C664 F4FFC28C */  lw         $v0, -0xC($a2)
    /* CE68 8001C668 00000000 */  nop
    /* CE6C 8001C66C 2A10A200 */  slt        $v0, $a1, $v0
    /* CE70 8001C670 F7FF4014 */  bnez       $v0, .L8001C650
    /* CE74 8001C674 04008424 */   addiu     $a0, $a0, 0x4
  .L8001C678:
    /* CE78 8001C678 0780013C */  lui        $at, %hi(D_800681C4)
    /* CE7C 8001C67C C48120AC */  sw         $zero, %lo(D_800681C4)($at)
  .L8001C680:
    /* CE80 8001C680 0800BD27 */  addiu      $sp, $sp, 0x8
    /* CE84 8001C684 0800E003 */  jr         $ra
    /* CE88 8001C688 00000000 */   nop
endlabel func_8001C5EC
