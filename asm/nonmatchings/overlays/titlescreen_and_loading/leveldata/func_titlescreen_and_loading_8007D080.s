.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8007D080, 0x68

glabel func_titlescreen_and_loading_8007D080
    /* 32E1C 8007D080 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32E20 8007D084 0880033C */  lui        $v1, %hi(D_titlescreen_and_loading_8007F09C)
    /* 32E24 8007D088 9CF06324 */  addiu      $v1, $v1, %lo(D_titlescreen_and_loading_8007F09C)
    /* 32E28 8007D08C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 32E2C 8007D090 0000628C */  lw         $v0, 0x0($v1)
    /* 32E30 8007D094 00000000 */  nop
    /* 32E34 8007D098 0B00401C */  bgtz       $v0, .Ltitlescreen_and_loading_8007D0C8
    /* 32E38 8007D09C 21288000 */   addu      $a1, $a0, $zero
    /* 32E3C 8007D0A0 0880043C */  lui        $a0, %hi(func_titlescreen_and_loading_8007D0E8)
    /* 32E40 8007D0A4 E8D08424 */  addiu      $a0, $a0, %lo(func_titlescreen_and_loading_8007D0E8)
    /* 32E44 8007D0A8 02000224 */  addiu      $v0, $zero, 0x2
    /* 32E48 8007D0AC 000062AC */  sw         $v0, 0x0($v1)
    /* 32E4C 8007D0B0 040060AC */  sw         $zero, 0x4($v1)
    /* 32E50 8007D0B4 080060AC */  sw         $zero, 0x8($v1)
    /* 32E54 8007D0B8 B7F8010C */  jal        func_titlescreen_and_loading_8007E2DC
    /* 32E58 8007D0BC 100065AC */   sw        $a1, 0x10($v1)
    /* 32E5C 8007D0C0 36F40108 */  j          .Ltitlescreen_and_loading_8007D0D8
    /* 32E60 8007D0C4 01000224 */   addiu     $v0, $zero, 0x1
  .Ltitlescreen_and_loading_8007D0C8:
    /* 32E64 8007D0C8 0780043C */  lui        $a0, %hi(D_titlescreen_and_loading_8006D690)
    /* 32E68 8007D0CC C66A010C */  jal        func_8005AB18
    /* 32E6C 8007D0D0 90D68424 */   addiu     $a0, $a0, %lo(D_titlescreen_and_loading_8006D690)
    /* 32E70 8007D0D4 21100000 */  addu       $v0, $zero, $zero
  .Ltitlescreen_and_loading_8007D0D8:
    /* 32E74 8007D0D8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32E78 8007D0DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32E7C 8007D0E0 0800E003 */  jr         $ra
    /* 32E80 8007D0E4 00000000 */   nop
endlabel func_titlescreen_and_loading_8007D080
