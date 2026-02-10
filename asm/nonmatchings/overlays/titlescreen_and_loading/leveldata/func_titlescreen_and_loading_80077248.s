.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80077248, 0x5C

glabel func_titlescreen_and_loading_80077248
    /* 2CFE4 80077248 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2CFE8 8007724C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2CFEC 80077250 6850010C */  jal        func_800541A0
    /* 2CFF0 80077254 00000000 */   nop
    /* 2CFF4 80077258 21200000 */  addu       $a0, $zero, $zero
    /* 2CFF8 8007725C 0680053C */  lui        $a1, %hi(D_80067E68)
    /* 2CFFC 80077260 687EA524 */  addiu      $a1, $a1, %lo(D_80067E68)
    /* 2D000 80077264 0FF7010C */  jal        func_titlescreen_and_loading_8007DC3C
    /* 2D004 80077268 0400A624 */   addiu     $a2, $a1, 0x4
    /* 2D008 8007726C 21280000 */  addu       $a1, $zero, $zero
    /* 2D00C 80077270 0680043C */  lui        $a0, %hi(D_80067E70)
    /* 2D010 80077274 707E848C */  lw         $a0, %lo(D_80067E70)($a0)
    /* 2D014 80077278 F26C000C */  jal        func_8001B3C8
    /* 2D018 8007727C 00140624 */   addiu     $a2, $zero, 0x1400
    /* 2D01C 80077280 0780033C */  lui        $v1, %hi(D_800698F4)
    /* 2D020 80077284 F4986324 */  addiu      $v1, $v1, %lo(D_800698F4)
    /* 2D024 80077288 0000628C */  lw         $v0, 0x0($v1)
    /* 2D028 8007728C 00000000 */  nop
    /* 2D02C 80077290 01004224 */  addiu      $v0, $v0, 0x1
    /* 2D030 80077294 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2D034 80077298 000062AC */  sw         $v0, 0x0($v1)
    /* 2D038 8007729C 0800E003 */  jr         $ra
    /* 2D03C 800772A0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_titlescreen_and_loading_80077248
