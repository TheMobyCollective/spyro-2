.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011D78, 0x5C

glabel func_80011D78
    /* 2578 80011D78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 257C 80011D7C 0780043C */  lui        $a0, %hi(D_8006A95C)
    /* 2580 80011D80 5CA98424 */  addiu      $a0, $a0, %lo(D_8006A95C)
    /* 2584 80011D84 0780053C */  lui        $a1, %hi(D_8006AB4C)
    /* 2588 80011D88 4CABA524 */  addiu      $a1, $a1, %lo(D_8006AB4C)
    /* 258C 80011D8C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2590 80011D90 C753010C */  jal        func_80054F1C
    /* 2594 80011D94 00000000 */   nop
    /* 2598 80011D98 0261010C */  jal        func_80058408
    /* 259C 80011D9C 00000000 */   nop
    /* 25A0 80011DA0 D64A000C */  jal        func_80012B58
    /* 25A4 80011DA4 00000000 */   nop
    /* 25A8 80011DA8 01000224 */  addiu      $v0, $zero, 0x1
    /* 25AC 80011DAC 0180043C */  lui        $a0, %hi(func_800125C8)
    /* 25B0 80011DB0 C8258424 */  addiu      $a0, $a0, %lo(func_800125C8)
    /* 25B4 80011DB4 0780013C */  lui        $at, %hi(D_80068374)
    /* 25B8 80011DB8 748322A0 */  sb         $v0, %lo(D_80068374)($at)
    /* 25BC 80011DBC 4D52010C */  jal        func_80054934
    /* 25C0 80011DC0 00000000 */   nop
    /* 25C4 80011DC4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 25C8 80011DC8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 25CC 80011DCC 0800E003 */  jr         $ra
    /* 25D0 80011DD0 00000000 */   nop
endlabel func_80011D78
