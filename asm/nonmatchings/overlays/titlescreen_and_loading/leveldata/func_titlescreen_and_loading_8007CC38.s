.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8007CC38, 0x30

glabel func_titlescreen_and_loading_8007CC38
    /* 329D4 8007CC38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 329D8 8007CC3C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 329DC 8007CC40 8AF8010C */  jal        func_titlescreen_and_loading_8007E228
    /* 329E0 8007CC44 00000000 */   nop
    /* 329E4 8007CC48 A5F8010C */  jal        func_titlescreen_and_loading_8007E294
    /* 329E8 8007CC4C 00000000 */   nop
    /* 329EC 8007CC50 CD70010C */  jal        func_8005C334
    /* 329F0 8007CC54 00000000 */   nop
    /* 329F4 8007CC58 1000BF8F */  lw         $ra, 0x10($sp)
    /* 329F8 8007CC5C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 329FC 8007CC60 0800E003 */  jr         $ra
    /* 32A00 8007CC64 00000000 */   nop
endlabel func_titlescreen_and_loading_8007CC38
