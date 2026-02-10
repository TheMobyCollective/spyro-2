.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8006E524, 0x28

glabel func_level_52_8006E524
    /* 3B012C0 8006E524 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3B012C4 8006E528 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3B012C8 8006E52C D676000C */  jal        func_8001DB58
    /* 3B012CC 8006E530 00000000 */   nop
    /* 3B012D0 8006E534 1B77000C */  jal        func_8001DC6C
    /* 3B012D4 8006E538 00000000 */   nop
    /* 3B012D8 8006E53C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3B012DC 8006E540 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3B012E0 8006E544 0800E003 */  jr         $ra
    /* 3B012E4 8006E548 00000000 */   nop
endlabel func_level_52_8006E524
