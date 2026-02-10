.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_65_8006FE64, 0x5C

glabel func_level_65_8006FE64
    /* 42C3400 8006FE64 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 42C3404 8006FE68 1000BFAF */  sw         $ra, 0x10($sp)
    /* 42C3408 8006FE6C B73C010C */  jal        func_8004F2DC
    /* 42C340C 8006FE70 00000000 */   nop
    /* 42C3410 8006FE74 2A000424 */  addiu      $a0, $zero, 0x2A
    /* 42C3414 8006FE78 20000524 */  addiu      $a1, $zero, 0x20
    /* 42C3418 8006FE7C 21300000 */  addu       $a2, $zero, $zero
    /* 42C341C 8006FE80 8E38010C */  jal        func_8004E238
    /* 42C3420 8006FE84 21380000 */   addu      $a3, $zero, $zero
    /* 42C3424 8006FE88 4C000424 */  addiu      $a0, $zero, 0x4C
    /* 42C3428 8006FE8C A8000524 */  addiu      $a1, $zero, 0xA8
    /* 42C342C 8006FE90 09000624 */  addiu      $a2, $zero, 0x9
    /* 42C3430 8006FE94 8E38010C */  jal        func_8004E238
    /* 42C3434 8006FE98 21380000 */   addu      $a3, $zero, $zero
    /* 42C3438 8006FE9C 5C000424 */  addiu      $a0, $zero, 0x5C
    /* 42C343C 8006FEA0 C6000524 */  addiu      $a1, $zero, 0xC6
    /* 42C3440 8006FEA4 06000624 */  addiu      $a2, $zero, 0x6
    /* 42C3444 8006FEA8 8E38010C */  jal        func_8004E238
    /* 42C3448 8006FEAC 21380000 */   addu      $a3, $zero, $zero
    /* 42C344C 8006FEB0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 42C3450 8006FEB4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 42C3454 8006FEB8 0800E003 */  jr         $ra
    /* 42C3458 8006FEBC 00000000 */   nop
endlabel func_level_65_8006FE64
