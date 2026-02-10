.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80077E3C, 0x34

glabel func_titlescreen_and_loading_80077E3C
    /* 2DBD8 80077E3C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2DBDC 80077E40 80000424 */  addiu      $a0, $zero, 0x80
    /* 2DBE0 80077E44 68000524 */  addiu      $a1, $zero, 0x68
    /* 2DBE4 80077E48 0680063C */  lui        $a2, %hi(D_80067E30)
    /* 2DBE8 80077E4C 307EC68C */  lw         $a2, %lo(D_80067E30)($a2)
    /* 2DBEC 80077E50 21380000 */  addu       $a3, $zero, $zero
    /* 2DBF0 80077E54 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2DBF4 80077E58 1EE6010C */  jal        func_titlescreen_and_loading_80079878
    /* 2DBF8 80077E5C 3C00C624 */   addiu     $a2, $a2, 0x3C
    /* 2DBFC 80077E60 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2DC00 80077E64 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2DC04 80077E68 0800E003 */  jr         $ra
    /* 2DC08 80077E6C 00000000 */   nop
endlabel func_titlescreen_and_loading_80077E3C
