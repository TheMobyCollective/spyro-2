.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80077190, 0x6C

glabel func_titlescreen_and_loading_80077190
    /* 2CF2C 80077190 0780023C */  lui        $v0, %hi(D_800683A4)
    /* 2CF30 80077194 A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* 2CF34 80077198 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2CF38 8007719C 10004230 */  andi       $v0, $v0, 0x10
    /* 2CF3C 800771A0 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_800771B0
    /* 2CF40 800771A4 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2CF44 800771A8 7BDC0108 */  j          .Ltitlescreen_and_loading_800771EC
    /* 2CF48 800771AC 21100000 */   addu      $v0, $zero, $zero
  .Ltitlescreen_and_loading_800771B0:
    /* 2CF4C 800771B0 0680063C */  lui        $a2, %hi(D_80067E04)
    /* 2CF50 800771B4 047EC624 */  addiu      $a2, $a2, %lo(D_80067E04)
    /* 2CF54 800771B8 04000224 */  addiu      $v0, $zero, 0x4
    /* 2CF58 800771BC 21200000 */  addu       $a0, $zero, $zero
    /* 2CF5C 800771C0 6400C524 */  addiu      $a1, $a2, 0x64
    /* 2CF60 800771C4 0000C0AC */  sw         $zero, 0x0($a2)
    /* 2CF64 800771C8 0680013C */  lui        $at, %hi(D_80067E0C)
    /* 2CF68 800771CC 0C7E22AC */  sw         $v0, %lo(D_80067E0C)($at)
    /* 2CF6C 800771D0 0680013C */  lui        $at, %hi(D_80067E00)
    /* 2CF70 800771D4 007E20AC */  sw         $zero, %lo(D_80067E00)($at)
    /* 2CF74 800771D8 0FF7010C */  jal        func_titlescreen_and_loading_8007DC3C
    /* 2CF78 800771DC 6800C624 */   addiu     $a2, $a2, 0x68
    /* 2CF7C 800771E0 36F3010C */  jal        func_titlescreen_and_loading_8007CCD8
    /* 2CF80 800771E4 00000000 */   nop
    /* 2CF84 800771E8 01000224 */  addiu      $v0, $zero, 0x1
  .Ltitlescreen_and_loading_800771EC:
    /* 2CF88 800771EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2CF8C 800771F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2CF90 800771F4 0800E003 */  jr         $ra
    /* 2CF94 800771F8 00000000 */   nop
endlabel func_titlescreen_and_loading_80077190
