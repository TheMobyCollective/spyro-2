.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80038594, 0x44

glabel func_80038594
    /* 28D94 80038594 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 28D98 80038598 1400B1AF */  sw         $s1, 0x14($sp)
    /* 28D9C 8003859C 2188A000 */  addu       $s1, $a1, $zero
    /* 28DA0 800385A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 28DA4 800385A4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 28DA8 800385A8 2DE1000C */  jal        func_800384B4
    /* 28DAC 800385AC 2180E000 */   addu      $s0, $a3, $zero
    /* 28DB0 800385B0 21204000 */  addu       $a0, $v0, $zero
    /* 28DB4 800385B4 21282002 */  addu       $a1, $s1, $zero
    /* 28DB8 800385B8 4FE1000C */  jal        func_8003853C
    /* 28DBC 800385BC FF000632 */   andi      $a2, $s0, 0xFF
    /* 28DC0 800385C0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 28DC4 800385C4 1400B18F */  lw         $s1, 0x14($sp)
    /* 28DC8 800385C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 28DCC 800385CC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 28DD0 800385D0 0800E003 */  jr         $ra
    /* 28DD4 800385D4 00000000 */   nop
endlabel func_80038594
