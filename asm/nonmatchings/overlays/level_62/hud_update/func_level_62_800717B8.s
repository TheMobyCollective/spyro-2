.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_62_800717B8, 0x80

glabel func_level_62_800717B8
    /* 40B5554 800717B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 40B5558 800717BC 0680033C */  lui        $v1, %hi(D_80066F30)
    /* 40B555C 800717C0 306F638C */  lw         $v1, %lo(D_80066F30)($v1)
    /* 40B5560 800717C4 01000224 */  addiu      $v0, $zero, 0x1
    /* 40B5564 800717C8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 40B5568 800717CC 04006214 */  bne        $v1, $v0, .Llevel_62_800717E0
    /* 40B556C 800717D0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 40B5570 800717D4 03000224 */  addiu      $v0, $zero, 0x3
    /* 40B5574 800717D8 0680013C */  lui        $at, %hi(D_80067675)
    /* 40B5578 800717DC 757622A0 */  sb         $v0, %lo(D_80067675)($at)
  .Llevel_62_800717E0:
    /* 40B557C 800717E0 0680103C */  lui        $s0, %hi(D_80067674)
    /* 40B5580 800717E4 74761026 */  addiu      $s0, $s0, %lo(D_80067674)
    /* 40B5584 800717E8 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 40B5588 800717EC EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 40B558C 800717F0 6746010C */  jal        func_8005199C
    /* 40B5590 800717F4 21200002 */   addu      $a0, $s0, $zero
    /* 40B5594 800717F8 0680033C */  lui        $v1, %hi(D_80066F30)
    /* 40B5598 800717FC 306F638C */  lw         $v1, %lo(D_80066F30)($v1)
    /* 40B559C 80071800 02000224 */  addiu      $v0, $zero, 0x2
    /* 40B55A0 80071804 03006214 */  bne        $v1, $v0, .Llevel_62_80071814
    /* 40B55A4 80071808 03000224 */   addiu     $v0, $zero, 0x3
    /* 40B55A8 8007180C 0680013C */  lui        $at, %hi(D_8006767D)
    /* 40B55AC 80071810 7D7622A0 */  sb         $v0, %lo(D_8006767D)($at)
  .Llevel_62_80071814:
    /* 40B55B0 80071814 0680053C */  lui        $a1, %hi(D_80067088)
    /* 40B55B4 80071818 8870A58C */  lw         $a1, %lo(D_80067088)($a1)
    /* 40B55B8 8007181C 6746010C */  jal        func_8005199C
    /* 40B55BC 80071820 08000426 */   addiu     $a0, $s0, 0x8
    /* 40B55C0 80071824 1400BF8F */  lw         $ra, 0x14($sp)
    /* 40B55C4 80071828 1000B08F */  lw         $s0, 0x10($sp)
    /* 40B55C8 8007182C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 40B55CC 80071830 0800E003 */  jr         $ra
    /* 40B55D0 80071834 00000000 */   nop
endlabel func_level_62_800717B8
