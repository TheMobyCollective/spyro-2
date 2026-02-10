.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004F200, 0x6C

glabel func_8004F200
    /* 3FA00 8004F200 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3FA04 8004F204 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3FA08 8004F208 21800000 */  addu       $s0, $zero, $zero
    /* 3FA0C 8004F20C 1400BFAF */  sw         $ra, 0x14($sp)
  .L8004F210:
    /* 3FA10 8004F210 0680013C */  lui        $at, %hi(D_80063BFA)
    /* 3FA14 8004F214 21083000 */  addu       $at, $at, $s0
    /* 3FA18 8004F218 FA3B2690 */  lbu        $a2, %lo(D_80063BFA)($at)
    /* 3FA1C 8004F21C 0680013C */  lui        $at, %hi(D_80063BF8)
    /* 3FA20 8004F220 21083000 */  addu       $at, $at, $s0
    /* 3FA24 8004F224 F83B2490 */  lbu        $a0, %lo(D_80063BF8)($at)
    /* 3FA28 8004F228 0680013C */  lui        $at, %hi(D_80063BF9)
    /* 3FA2C 8004F22C 21083000 */  addu       $at, $at, $s0
    /* 3FA30 8004F230 F93B2590 */  lbu        $a1, %lo(D_80063BF9)($at)
    /* 3FA34 8004F234 0680013C */  lui        $at, %hi(D_80063BFB)
    /* 3FA38 8004F238 21083000 */  addu       $at, $at, $s0
    /* 3FA3C 8004F23C FB3B2790 */  lbu        $a3, %lo(D_80063BFB)($at)
    /* 3FA40 8004F240 04001026 */  addiu      $s0, $s0, 0x4
    /* 3FA44 8004F244 8E38010C */  jal        func_8004E238
    /* 3FA48 8004F248 27300600 */   nor       $a2, $zero, $a2
    /* 3FA4C 8004F24C 8000022A */  slti       $v0, $s0, 0x80
    /* 3FA50 8004F250 EFFF4014 */  bnez       $v0, .L8004F210
    /* 3FA54 8004F254 00000000 */   nop
    /* 3FA58 8004F258 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3FA5C 8004F25C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3FA60 8004F260 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3FA64 8004F264 0800E003 */  jr         $ra
    /* 3FA68 8004F268 00000000 */   nop
endlabel func_8004F200
