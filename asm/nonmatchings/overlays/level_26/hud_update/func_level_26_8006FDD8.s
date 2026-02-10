.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_26_8006FDD8, 0xA8

glabel func_level_26_8006FDD8
    /* 1DB2B74 8006FDD8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1DB2B78 8006FDDC 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1DB2B7C 8006FDE0 0680103C */  lui        $s0, %hi(D_80067678)
    /* 1DB2B80 8006FDE4 78761026 */  addiu      $s0, $s0, %lo(D_80067678)
    /* 1DB2B84 8006FDE8 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 1DB2B88 8006FDEC EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 1DB2B8C 8006FDF0 03000224 */  addiu      $v0, $zero, 0x3
    /* 1DB2B90 8006FDF4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1DB2B94 8006FDF8 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1DB2B98 8006FDFC 0680013C */  lui        $at, %hi(D_80067675)
    /* 1DB2B9C 8006FE00 757622A0 */  sb         $v0, %lo(D_80067675)($at)
    /* 1DB2BA0 8006FE04 0000118E */  lw         $s1, 0x0($s0)
    /* 1DB2BA4 8006FE08 6746010C */  jal        func_8005199C
    /* 1DB2BA8 8006FE0C FCFF0426 */   addiu     $a0, $s0, -0x4
    /* 1DB2BAC 8006FE10 0000108E */  lw         $s0, 0x0($s0)
    /* 1DB2BB0 8006FE14 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 1DB2BB4 8006FE18 13001116 */  bne        $s0, $s1, .Llevel_26_8006FE68
    /* 1DB2BB8 8006FE1C 10000424 */   addiu     $a0, $zero, 0x10
    /* 1DB2BBC 8006FE20 3B000524 */  addiu      $a1, $zero, 0x3B
    /* 1DB2BC0 8006FE24 80101000 */  sll        $v0, $s0, 2
    /* 1DB2BC4 8006FE28 21105000 */  addu       $v0, $v0, $s0
    /* 1DB2BC8 8006FE2C 00190200 */  sll        $v1, $v0, 4
    /* 1DB2BCC 8006FE30 21104300 */  addu       $v0, $v0, $v1
    /* 1DB2BD0 8006FE34 40100200 */  sll        $v0, $v0, 1
    /* 1DB2BD4 8006FE38 C0F84224 */  addiu      $v0, $v0, -0x740
    /* 1DB2BD8 8006FE3C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1DB2BDC 8006FE40 C4020224 */  addiu      $v0, $zero, 0x2C4
    /* 1DB2BE0 8006FE44 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1DB2BE4 8006FE48 000C0224 */  addiu      $v0, $zero, 0xC00
    /* 1DB2BE8 8006FE4C 1000A627 */  addiu      $a2, $sp, 0x10
    /* 1DB2BEC 8006FE50 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1DB2BF0 8006FE54 0680023C */  lui        $v0, %hi(D_800670FC)
    /* 1DB2BF4 8006FE58 FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* 1DB2BF8 8006FE5C 00000000 */  nop
    /* 1DB2BFC 8006FE60 09F84000 */  jalr       $v0
    /* 1DB2C00 8006FE64 21380000 */   addu      $a3, $zero, $zero
  .Llevel_26_8006FE68:
    /* 1DB2C04 8006FE68 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1DB2C08 8006FE6C 2400B18F */  lw         $s1, 0x24($sp)
    /* 1DB2C0C 8006FE70 2000B08F */  lw         $s0, 0x20($sp)
    /* 1DB2C10 8006FE74 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1DB2C14 8006FE78 0800E003 */  jr         $ra
    /* 1DB2C18 8006FE7C 00000000 */   nop
endlabel func_level_26_8006FDD8
