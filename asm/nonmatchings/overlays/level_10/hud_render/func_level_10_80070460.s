.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_10_80070460, 0x20

glabel func_level_10_80070460
    /* D391FC 80070460 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D39200 80070464 1000BFAF */  sw         $ra, 0x10($sp)
    /* D39204 80070468 154D010C */  jal        func_80053454
    /* D39208 8007046C 00000000 */   nop
    /* D3920C 80070470 1000BF8F */  lw         $ra, 0x10($sp)
    /* D39210 80070474 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D39214 80070478 0800E003 */  jr         $ra
    /* D39218 8007047C 00000000 */   nop
endlabel func_level_10_80070460
