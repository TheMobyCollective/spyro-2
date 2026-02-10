.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_42_8006F800, 0x70

glabel func_level_42_8006F800
    /* 2DD0D9C 8006F800 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2DD0DA0 8006F804 0680033C */  lui        $v1, %hi(D_80066F30)
    /* 2DD0DA4 8006F808 306F638C */  lw         $v1, %lo(D_80066F30)($v1)
    /* 2DD0DA8 8006F80C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DD0DAC 8006F810 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2DD0DB0 8006F814 04006214 */  bne        $v1, $v0, .Llevel_42_8006F828
    /* 2DD0DB4 8006F818 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2DD0DB8 8006F81C 03000224 */  addiu      $v0, $zero, 0x3
    /* 2DD0DBC 8006F820 0680013C */  lui        $at, %hi(D_80067675)
    /* 2DD0DC0 8006F824 757622A0 */  sb         $v0, %lo(D_80067675)($at)
  .Llevel_42_8006F828:
    /* 2DD0DC4 8006F828 0680103C */  lui        $s0, %hi(D_80067674)
    /* 2DD0DC8 8006F82C 74761026 */  addiu      $s0, $s0, %lo(D_80067674)
    /* 2DD0DCC 8006F830 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 2DD0DD0 8006F834 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 2DD0DD4 8006F838 6746010C */  jal        func_8005199C
    /* 2DD0DD8 8006F83C 21200002 */   addu      $a0, $s0, $zero
    /* 2DD0DDC 8006F840 0680053C */  lui        $a1, %hi(D_80067084)
    /* 2DD0DE0 8006F844 8470A58C */  lw         $a1, %lo(D_80067084)($a1)
    /* 2DD0DE4 8006F848 03000224 */  addiu      $v0, $zero, 0x3
    /* 2DD0DE8 8006F84C 0680013C */  lui        $at, %hi(D_8006767D)
    /* 2DD0DEC 8006F850 7D7622A0 */  sb         $v0, %lo(D_8006767D)($at)
    /* 2DD0DF0 8006F854 6746010C */  jal        func_8005199C
    /* 2DD0DF4 8006F858 08000426 */   addiu     $a0, $s0, 0x8
    /* 2DD0DF8 8006F85C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2DD0DFC 8006F860 1000B08F */  lw         $s0, 0x10($sp)
    /* 2DD0E00 8006F864 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2DD0E04 8006F868 0800E003 */  jr         $ra
    /* 2DD0E08 8006F86C 00000000 */   nop
endlabel func_level_42_8006F800
