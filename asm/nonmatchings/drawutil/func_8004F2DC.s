.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004F2DC, 0x6C

glabel func_8004F2DC
    /* 3FADC 8004F2DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3FAE0 8004F2E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3FAE4 8004F2E4 21800000 */  addu       $s0, $zero, $zero
    /* 3FAE8 8004F2E8 1400BFAF */  sw         $ra, 0x14($sp)
  .L8004F2EC:
    /* 3FAEC 8004F2EC 0680013C */  lui        $at, %hi(D_80063CFA)
    /* 3FAF0 8004F2F0 21083000 */  addu       $at, $at, $s0
    /* 3FAF4 8004F2F4 FA3C2690 */  lbu        $a2, %lo(D_80063CFA)($at)
    /* 3FAF8 8004F2F8 0680013C */  lui        $at, %hi(D_80063CF8)
    /* 3FAFC 8004F2FC 21083000 */  addu       $at, $at, $s0
    /* 3FB00 8004F300 F83C2490 */  lbu        $a0, %lo(D_80063CF8)($at)
    /* 3FB04 8004F304 0680013C */  lui        $at, %hi(D_80063CF9)
    /* 3FB08 8004F308 21083000 */  addu       $at, $at, $s0
    /* 3FB0C 8004F30C F93C2590 */  lbu        $a1, %lo(D_80063CF9)($at)
    /* 3FB10 8004F310 0680013C */  lui        $at, %hi(D_80063CFB)
    /* 3FB14 8004F314 21083000 */  addu       $at, $at, $s0
    /* 3FB18 8004F318 FB3C2790 */  lbu        $a3, %lo(D_80063CFB)($at)
    /* 3FB1C 8004F31C 04001026 */  addiu      $s0, $s0, 0x4
    /* 3FB20 8004F320 8E38010C */  jal        func_8004E238
    /* 3FB24 8004F324 27300600 */   nor       $a2, $zero, $a2
    /* 3FB28 8004F328 A000022A */  slti       $v0, $s0, 0xA0
    /* 3FB2C 8004F32C EFFF4014 */  bnez       $v0, .L8004F2EC
    /* 3FB30 8004F330 00000000 */   nop
    /* 3FB34 8004F334 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3FB38 8004F338 1000B08F */  lw         $s0, 0x10($sp)
    /* 3FB3C 8004F33C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3FB40 8004F340 0800E003 */  jr         $ra
    /* 3FB44 8004F344 00000000 */   nop
endlabel func_8004F2DC
