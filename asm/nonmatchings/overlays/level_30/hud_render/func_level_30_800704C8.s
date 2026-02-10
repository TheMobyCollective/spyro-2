.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_30_800704C8, 0x20

glabel func_level_30_800704C8
    /* 1F2E264 800704C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1F2E268 800704CC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1F2E26C 800704D0 154D010C */  jal        func_80053454
    /* 1F2E270 800704D4 00000000 */   nop
    /* 1F2E274 800704D8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1F2E278 800704DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1F2E27C 800704E0 0800E003 */  jr         $ra
    /* 1F2E280 800704E4 00000000 */   nop
endlabel func_level_30_800704C8
