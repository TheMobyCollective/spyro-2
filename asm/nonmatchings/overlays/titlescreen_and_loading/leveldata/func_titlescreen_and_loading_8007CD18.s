.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8007CD18, 0x68

glabel func_titlescreen_and_loading_8007CD18
    /* 32AB4 8007CD18 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32AB8 8007CD1C 0880033C */  lui        $v1, %hi(D_titlescreen_and_loading_8007F09C)
    /* 32ABC 8007CD20 9CF06324 */  addiu      $v1, $v1, %lo(D_titlescreen_and_loading_8007F09C)
    /* 32AC0 8007CD24 1000BFAF */  sw         $ra, 0x10($sp)
    /* 32AC4 8007CD28 0000628C */  lw         $v0, 0x0($v1)
    /* 32AC8 8007CD2C 00000000 */  nop
    /* 32ACC 8007CD30 0B00401C */  bgtz       $v0, .Ltitlescreen_and_loading_8007CD60
    /* 32AD0 8007CD34 21288000 */   addu      $a1, $a0, $zero
    /* 32AD4 8007CD38 0880043C */  lui        $a0, %hi(func_titlescreen_and_loading_8007CD80)
    /* 32AD8 8007CD3C 80CD8424 */  addiu      $a0, $a0, %lo(func_titlescreen_and_loading_8007CD80)
    /* 32ADC 8007CD40 01000224 */  addiu      $v0, $zero, 0x1
    /* 32AE0 8007CD44 000062AC */  sw         $v0, 0x0($v1)
    /* 32AE4 8007CD48 040060AC */  sw         $zero, 0x4($v1)
    /* 32AE8 8007CD4C 080060AC */  sw         $zero, 0x8($v1)
    /* 32AEC 8007CD50 B7F8010C */  jal        func_titlescreen_and_loading_8007E2DC
    /* 32AF0 8007CD54 100065AC */   sw        $a1, 0x10($v1)
    /* 32AF4 8007CD58 5CF30108 */  j          .Ltitlescreen_and_loading_8007CD70
    /* 32AF8 8007CD5C 01000224 */   addiu     $v0, $zero, 0x1
  .Ltitlescreen_and_loading_8007CD60:
    /* 32AFC 8007CD60 0780043C */  lui        $a0, %hi(D_titlescreen_and_loading_8006D690)
    /* 32B00 8007CD64 C66A010C */  jal        func_8005AB18
    /* 32B04 8007CD68 90D68424 */   addiu     $a0, $a0, %lo(D_titlescreen_and_loading_8006D690)
    /* 32B08 8007CD6C 21100000 */  addu       $v0, $zero, $zero
  .Ltitlescreen_and_loading_8007CD70:
    /* 32B0C 8007CD70 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32B10 8007CD74 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32B14 8007CD78 0800E003 */  jr         $ra
    /* 32B18 8007CD7C 00000000 */   nop
endlabel func_titlescreen_and_loading_8007CD18
