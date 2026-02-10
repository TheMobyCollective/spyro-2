.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004DEE8, 0x9C

glabel func_8004DEE8
    /* 3E6E8 8004DEE8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3E6EC 8004DEEC 21200000 */  addu       $a0, $zero, $zero
    /* 3E6F0 8004DEF0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3E6F4 8004DEF4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3E6F8 8004DEF8 F955010C */  jal        func_800557E4
    /* 3E6FC 8004DEFC 1800B0AF */   sw        $s0, 0x18($sp)
    /* 3E700 8004DF00 0200113C */  lui        $s1, (0x2C000 >> 16)
    /* 3E704 8004DF04 0780103C */  lui        $s0, %hi(D_8006B29C)
    /* 3E708 8004DF08 9CB21026 */  addiu      $s0, $s0, %lo(D_8006B29C)
    /* 3E70C 8004DF0C 00C03136 */  ori        $s1, $s1, (0x2C000 & 0xFFFF)
    /* 3E710 8004DF10 0000048E */  lw         $a0, 0x0($s0)
    /* 3E714 8004DF14 00C00634 */  ori        $a2, $zero, 0xC000
    /* 3E718 8004DF18 036D000C */  jal        func_8001B40C
    /* 3E71C 8004DF1C 21289100 */   addu      $a1, $a0, $s1
    /* 3E720 8004DF20 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3E724 8004DF24 00020224 */  addiu      $v0, $zero, 0x200
    /* 3E728 8004DF28 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 3E72C 8004DF2C 80000224 */  addiu      $v0, $zero, 0x80
    /* 3E730 8004DF30 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 3E734 8004DF34 00010224 */  addiu      $v0, $zero, 0x100
    /* 3E738 8004DF38 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 3E73C 8004DF3C 0000058E */  lw         $a1, 0x0($s0)
    /* 3E740 8004DF40 60000224 */  addiu      $v0, $zero, 0x60
    /* 3E744 8004DF44 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 3E748 8004DF48 9656010C */  jal        func_80055A58
    /* 3E74C 8004DF4C 2128B100 */   addu      $a1, $a1, $s1
    /* 3E750 8004DF50 F955010C */  jal        func_800557E4
    /* 3E754 8004DF54 21200000 */   addu      $a0, $zero, $zero
    /* 3E758 8004DF58 0000058E */  lw         $a1, 0x0($s0)
    /* 3E75C 8004DF5C 7E56010C */  jal        func_800559F8
    /* 3E760 8004DF60 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3E764 8004DF64 F955010C */  jal        func_800557E4
    /* 3E768 8004DF68 21200000 */   addu      $a0, $zero, $zero
    /* 3E76C 8004DF6C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3E770 8004DF70 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3E774 8004DF74 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E778 8004DF78 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3E77C 8004DF7C 0800E003 */  jr         $ra
    /* 3E780 8004DF80 00000000 */   nop
endlabel func_8004DEE8
