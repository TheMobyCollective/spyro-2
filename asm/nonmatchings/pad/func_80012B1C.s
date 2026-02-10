.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80012B1C, 0x3C

glabel func_80012B1C
    /* 331C 80012B1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3320 80012B20 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3324 80012B24 21808000 */  addu       $s0, $a0, $zero
    /* 3328 80012B28 2120A000 */  addu       $a0, $a1, $zero
    /* 332C 80012B2C 21280002 */  addu       $a1, $s0, $zero
    /* 3330 80012B30 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3334 80012B34 036D000C */  jal        func_8001B40C
    /* 3338 80012B38 80000624 */   addiu     $a2, $zero, 0x80
    /* 333C 80012B3C B04A000C */  jal        func_80012AC0
    /* 3340 80012B40 21200002 */   addu      $a0, $s0, $zero
    /* 3344 80012B44 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3348 80012B48 1000B08F */  lw         $s0, 0x10($sp)
    /* 334C 80012B4C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3350 80012B50 0800E003 */  jr         $ra
    /* 3354 80012B54 00000000 */   nop
endlabel func_80012B1C
