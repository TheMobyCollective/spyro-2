.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004F26C, 0x70

glabel func_8004F26C
    /* 3FA6C 8004F26C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3FA70 8004F270 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3FA74 8004F274 21800000 */  addu       $s0, $zero, $zero
    /* 3FA78 8004F278 1400BFAF */  sw         $ra, 0x14($sp)
  .L8004F27C:
    /* 3FA7C 8004F27C 0680013C */  lui        $at, %hi(D_80063C78)
    /* 3FA80 8004F280 21083000 */  addu       $at, $at, $s0
    /* 3FA84 8004F284 783C2490 */  lbu        $a0, %lo(D_80063C78)($at)
    /* 3FA88 8004F288 0680013C */  lui        $at, %hi(D_80063C7A)
    /* 3FA8C 8004F28C 21083000 */  addu       $at, $at, $s0
    /* 3FA90 8004F290 7A3C2690 */  lbu        $a2, %lo(D_80063C7A)($at)
    /* 3FA94 8004F294 0680013C */  lui        $at, %hi(D_80063C79)
    /* 3FA98 8004F298 21083000 */  addu       $at, $at, $s0
    /* 3FA9C 8004F29C 793C2590 */  lbu        $a1, %lo(D_80063C79)($at)
    /* 3FAA0 8004F2A0 0680013C */  lui        $at, %hi(D_80063C7B)
    /* 3FAA4 8004F2A4 21083000 */  addu       $at, $at, $s0
    /* 3FAA8 8004F2A8 7B3C2790 */  lbu        $a3, %lo(D_80063C7B)($at)
    /* 3FAAC 8004F2AC 04001026 */  addiu      $s0, $s0, 0x4
    /* 3FAB0 8004F2B0 00018434 */  ori        $a0, $a0, 0x100
    /* 3FAB4 8004F2B4 8E38010C */  jal        func_8004E238
    /* 3FAB8 8004F2B8 27300600 */   nor       $a2, $zero, $a2
    /* 3FABC 8004F2BC 8000022A */  slti       $v0, $s0, 0x80
    /* 3FAC0 8004F2C0 EEFF4014 */  bnez       $v0, .L8004F27C
    /* 3FAC4 8004F2C4 00000000 */   nop
    /* 3FAC8 8004F2C8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3FACC 8004F2CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 3FAD0 8004F2D0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3FAD4 8004F2D4 0800E003 */  jr         $ra
    /* 3FAD8 8004F2D8 00000000 */   nop
endlabel func_8004F26C
