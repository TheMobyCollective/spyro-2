.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D104, 0x54

glabel func_8004D104
    /* 3D904 8004D104 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3D908 8004D108 21388000 */  addu       $a3, $a0, $zero
    /* 3D90C 8004D10C 01000524 */  addiu      $a1, $zero, 0x1
    /* 3D910 8004D110 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3D914 8004D114 0680103C */  lui        $s0, %hi(D_80067030)
    /* 3D918 8004D118 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 3D91C 8004D11C 21300000 */  addu       $a2, $zero, $zero
    /* 3D920 8004D120 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3D924 8004D124 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3D928 8004D128 0768010C */  jal        func_8005A01C
    /* 3D92C 8004D12C 21200002 */   addu      $a0, $s0, $zero
    /* 3D930 8004D130 E46C000C */  jal        func_8001B390
    /* 3D934 8004D134 21200002 */   addu      $a0, $s0, $zero
    /* 3D938 8004D138 0C001026 */  addiu      $s0, $s0, 0xC
    /* 3D93C 8004D13C 0680013C */  lui        $at, %hi(D_80067030)
    /* 3D940 8004D140 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 3D944 8004D144 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3D948 8004D148 1800B08F */  lw         $s0, 0x18($sp)
    /* 3D94C 8004D14C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3D950 8004D150 0800E003 */  jr         $ra
    /* 3D954 8004D154 00000000 */   nop
endlabel func_8004D104
