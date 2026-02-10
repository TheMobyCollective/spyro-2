.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003853C, 0x58

glabel func_8003853C
    /* 28D3C 8003853C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 28D40 80038540 21108000 */  addu       $v0, $a0, $zero
    /* 28D44 80038544 1400B1AF */  sw         $s1, 0x14($sp)
    /* 28D48 80038548 2188A000 */  addu       $s1, $a1, $zero
    /* 28D4C 8003854C 21202002 */  addu       $a0, $s1, $zero
    /* 28D50 80038550 21284000 */  addu       $a1, $v0, $zero
    /* 28D54 80038554 1000B0AF */  sw         $s0, 0x10($sp)
    /* 28D58 80038558 1800BFAF */  sw         $ra, 0x18($sp)
    /* 28D5C 8003855C 76E1000C */  jal        func_800385D8
    /* 28D60 80038560 2180C000 */   addu      $s0, $a2, $zero
    /* 28D64 80038564 FF001032 */  andi       $s0, $s0, 0xFF
    /* 28D68 80038568 18005000 */  mult       $v0, $s0
    /* 28D6C 8003856C 21202002 */  addu       $a0, $s1, $zero
    /* 28D70 80038570 12180000 */  mflo       $v1
    /* 28D74 80038574 7EE1000C */  jal        func_800385F8
    /* 28D78 80038578 032A0300 */   sra       $a1, $v1, 8
    /* 28D7C 8003857C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 28D80 80038580 1400B18F */  lw         $s1, 0x14($sp)
    /* 28D84 80038584 1000B08F */  lw         $s0, 0x10($sp)
    /* 28D88 80038588 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 28D8C 8003858C 0800E003 */  jr         $ra
    /* 28D90 80038590 00000000 */   nop
endlabel func_8003853C
