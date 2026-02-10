.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D3FC, 0x10C

glabel func_8004D3FC
    /* 3DBFC 8004D3FC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3DC00 8004D400 2400B5AF */  sw         $s5, 0x24($sp)
    /* 3DC04 8004D404 21A88000 */  addu       $s5, $a0, $zero
    /* 3DC08 8004D408 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3DC0C 8004D40C 2188A000 */  addu       $s1, $a1, $zero
    /* 3DC10 8004D410 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3DC14 8004D414 2190C000 */  addu       $s2, $a2, $zero
    /* 3DC18 8004D418 2800B6AF */  sw         $s6, 0x28($sp)
    /* 3DC1C 8004D41C 21B0E000 */  addu       $s6, $a3, $zero
    /* 3DC20 8004D420 18000424 */  addiu      $a0, $zero, 0x18
    /* 3DC24 8004D424 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 3DC28 8004D428 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3DC2C 8004D42C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3DC30 8004D430 4134010C */  jal        func_8004D104
    /* 3DC34 8004D434 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3DC38 8004D438 2120A002 */  addu       $a0, $s5, $zero
    /* 3DC3C 8004D43C 21282002 */  addu       $a1, $s1, $zero
    /* 3DC40 8004D440 08005426 */  addiu      $s4, $s2, 0x8
    /* 3DC44 8004D444 21308002 */  addu       $a2, $s4, $zero
    /* 3DC48 8004D448 F8FFD326 */  addiu      $s3, $s6, -0x8
    /* 3DC4C 8004D44C B634010C */  jal        func_8004D2D8
    /* 3DC50 8004D450 21386002 */   addu      $a3, $s3, $zero
    /* 3DC54 8004D454 0C00B026 */  addiu      $s0, $s5, 0xC
    /* 3DC58 8004D458 21200002 */  addu       $a0, $s0, $zero
    /* 3DC5C 8004D45C F4FF3126 */  addiu      $s1, $s1, -0xC
    /* 3DC60 8004D460 21282002 */  addu       $a1, $s1, $zero
    /* 3DC64 8004D464 21304002 */  addu       $a2, $s2, $zero
    /* 3DC68 8004D468 B634010C */  jal        func_8004D2D8
    /* 3DC6C 8004D46C 21388002 */   addu      $a3, $s4, $zero
    /* 3DC70 8004D470 21200002 */  addu       $a0, $s0, $zero
    /* 3DC74 8004D474 21282002 */  addu       $a1, $s1, $zero
    /* 3DC78 8004D478 21306002 */  addu       $a2, $s3, $zero
    /* 3DC7C 8004D47C B634010C */  jal        func_8004D2D8
    /* 3DC80 8004D480 2138C002 */   addu      $a3, $s6, $zero
    /* 3DC84 8004D484 0680103C */  lui        $s0, %hi(D_800635AC)
    /* 3DC88 8004D488 AC351026 */  addiu      $s0, $s0, %lo(D_800635AC)
    /* 3DC8C 8004D48C 21200002 */  addu       $a0, $s0, $zero
    /* 3DC90 8004D490 2128A002 */  addu       $a1, $s5, $zero
    /* 3DC94 8004D494 21304002 */  addu       $a2, $s2, $zero
    /* 3DC98 8004D498 3348010C */  jal        func_800520CC
    /* 3DC9C 8004D49C 0B000724 */   addiu     $a3, $zero, 0xB
    /* 3DCA0 8004D4A0 04000426 */  addiu      $a0, $s0, 0x4
    /* 3DCA4 8004D4A4 21282002 */  addu       $a1, $s1, $zero
    /* 3DCA8 8004D4A8 21304002 */  addu       $a2, $s2, $zero
    /* 3DCAC 8004D4AC 3348010C */  jal        func_800520CC
    /* 3DCB0 8004D4B0 0B000724 */   addiu     $a3, $zero, 0xB
    /* 3DCB4 8004D4B4 08000426 */  addiu      $a0, $s0, 0x8
    /* 3DCB8 8004D4B8 2128A002 */  addu       $a1, $s5, $zero
    /* 3DCBC 8004D4BC 21306002 */  addu       $a2, $s3, $zero
    /* 3DCC0 8004D4C0 3348010C */  jal        func_800520CC
    /* 3DCC4 8004D4C4 0B000724 */   addiu     $a3, $zero, 0xB
    /* 3DCC8 8004D4C8 0C000426 */  addiu      $a0, $s0, 0xC
    /* 3DCCC 8004D4CC 21282002 */  addu       $a1, $s1, $zero
    /* 3DCD0 8004D4D0 21306002 */  addu       $a2, $s3, $zero
    /* 3DCD4 8004D4D4 3348010C */  jal        func_800520CC
    /* 3DCD8 8004D4D8 0B000724 */   addiu     $a3, $zero, 0xB
    /* 3DCDC 8004D4DC 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 3DCE0 8004D4E0 2800B68F */  lw         $s6, 0x28($sp)
    /* 3DCE4 8004D4E4 2400B58F */  lw         $s5, 0x24($sp)
    /* 3DCE8 8004D4E8 2000B48F */  lw         $s4, 0x20($sp)
    /* 3DCEC 8004D4EC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3DCF0 8004D4F0 1800B28F */  lw         $s2, 0x18($sp)
    /* 3DCF4 8004D4F4 1400B18F */  lw         $s1, 0x14($sp)
    /* 3DCF8 8004D4F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 3DCFC 8004D4FC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3DD00 8004D500 0800E003 */  jr         $ra
    /* 3DD04 8004D504 00000000 */   nop
endlabel func_8004D3FC
