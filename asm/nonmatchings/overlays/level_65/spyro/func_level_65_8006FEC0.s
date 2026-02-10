.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_65_8006FEC0, 0xE8

glabel func_level_65_8006FEC0
    /* 42C345C 8006FEC0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 42C3460 8006FEC4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 42C3464 8006FEC8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 42C3468 8006FECC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 42C346C 8006FED0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 42C3470 8006FED4 D23C010C */  jal        func_8004F348
    /* 42C3474 8006FED8 1800B0AF */   sw        $s0, 0x18($sp)
    /* 42C3478 8006FEDC 28001124 */  addiu      $s1, $zero, 0x28
    /* 42C347C 8006FEE0 21800000 */  addu       $s0, $zero, $zero
    /* 42C3480 8006FEE4 0780123C */  lui        $s2, %hi(D_800698EC)
    /* 42C3484 8006FEE8 EC985226 */  addiu      $s2, $s2, %lo(D_800698EC)
    /* 42C3488 8006FEEC 0780133C */  lui        $s3, %hi(D_level_65_8006DAD0)
    /* 42C348C 8006FEF0 D0DA7326 */  addiu      $s3, $s3, %lo(D_level_65_8006DAD0)
  .Llevel_65_8006FEF4:
    /* 42C3490 8006FEF4 0000428E */  lw         $v0, 0x0($s2)
    /* 42C3494 8006FEF8 00000000 */  nop
    /* 42C3498 8006FEFC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 42C349C 8006FF00 16004228 */  slti       $v0, $v0, 0x16
    /* 42C34A0 8006FF04 05004010 */  beqz       $v0, .Llevel_65_8006FF1C
    /* 42C34A4 8006FF08 21380000 */   addu      $a3, $zero, $zero
    /* 42C34A8 8006FF0C 1400428E */  lw         $v0, 0x14($s2)
    /* 42C34AC 8006FF10 00000000 */  nop
    /* 42C34B0 8006FF14 26105000 */  xor        $v0, $v0, $s0
    /* 42C34B4 8006FF18 0100472C */  sltiu      $a3, $v0, 0x1
  .Llevel_65_8006FF1C:
    /* 42C34B8 8006FF1C 0800E724 */  addiu      $a3, $a3, 0x8
    /* 42C34BC 8006FF20 08000224 */  addiu      $v0, $zero, 0x8
    /* 42C34C0 8006FF24 0500E214 */  bne        $a3, $v0, .Llevel_65_8006FF3C
    /* 42C34C4 8006FF28 21302002 */   addu      $a2, $s1, $zero
    /* 42C34C8 8006FF2C 01000232 */  andi       $v0, $s0, 0x1
    /* 42C34CC 8006FF30 02004010 */  beqz       $v0, .Llevel_65_8006FF3C
    /* 42C34D0 8006FF34 00000000 */   nop
    /* 42C34D4 8006FF38 0C000724 */  addiu      $a3, $zero, 0xC
  .Llevel_65_8006FF3C:
    /* 42C34D8 8006FF3C 0F003126 */  addiu      $s1, $s1, 0xF
    /* 42C34DC 8006FF40 01000224 */  addiu      $v0, $zero, 0x1
    /* 42C34E0 8006FF44 0680033C */  lui        $v1, %hi(D_80067118)
    /* 42C34E4 8006FF48 1871638C */  lw         $v1, %lo(D_80067118)($v1)
    /* 42C34E8 8006FF4C 14010524 */  addiu      $a1, $zero, 0x114
    /* 42C34EC 8006FF50 1000A2AF */  sw         $v0, 0x10($sp)
    /* 42C34F0 8006FF54 40100300 */  sll        $v0, $v1, 1
    /* 42C34F4 8006FF58 21104300 */  addu       $v0, $v0, $v1
    /* 42C34F8 8006FF5C 80100200 */  sll        $v0, $v0, 2
    /* 42C34FC 8006FF60 23104300 */  subu       $v0, $v0, $v1
    /* 42C3500 8006FF64 21105000 */  addu       $v0, $v0, $s0
    /* 42C3504 8006FF68 80100200 */  sll        $v0, $v0, 2
    /* 42C3508 8006FF6C 21105300 */  addu       $v0, $v0, $s3
    /* 42C350C 8006FF70 0000448C */  lw         $a0, 0x0($v0)
    /* 42C3510 8006FF74 6729010C */  jal        func_8004A59C
    /* 42C3514 8006FF78 01001026 */   addiu     $s0, $s0, 0x1
    /* 42C3518 8006FF7C 0B00022A */  slti       $v0, $s0, 0xB
    /* 42C351C 8006FF80 DCFF4014 */  bnez       $v0, .Llevel_65_8006FEF4
    /* 42C3520 8006FF84 00000000 */   nop
    /* 42C3524 8006FF88 2800BF8F */  lw         $ra, 0x28($sp)
    /* 42C3528 8006FF8C 2400B38F */  lw         $s3, 0x24($sp)
    /* 42C352C 8006FF90 2000B28F */  lw         $s2, 0x20($sp)
    /* 42C3530 8006FF94 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 42C3534 8006FF98 1800B08F */  lw         $s0, 0x18($sp)
    /* 42C3538 8006FF9C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 42C353C 8006FFA0 0800E003 */  jr         $ra
    /* 42C3540 8006FFA4 00000000 */   nop
endlabel func_level_65_8006FEC0
