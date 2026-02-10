.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80015580, 0x20

glabel func_80015580
    /* 5D80 80015580 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5D84 80015584 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5D88 80015588 6855000C */  jal        func_800155A0
    /* 5D8C 8001558C 3D000424 */   addiu     $a0, $zero, 0x3D
    /* 5D90 80015590 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5D94 80015594 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5D98 80015598 0800E003 */  jr         $ra
    /* 5D9C 8001559C 00000000 */   nop
endlabel func_80015580
