.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002E304, 0xF4

glabel func_8002E304
    /* 1EB04 8002E304 0680023C */  lui        $v0, %hi(D_80067018)
    /* 1EB08 8002E308 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* 1EB0C 8002E30C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1EB10 8002E310 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1EB14 8002E314 21800000 */  addu       $s0, $zero, $zero
    /* 1EB18 8002E318 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1EB1C 8002E31C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1EB20 8002E320 2E004018 */  blez       $v0, .L8002E3DC
    /* 1EB24 8002E324 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 1EB28 8002E328 0780113C */  lui        $s1, %hi(D_8006A1E0)
    /* 1EB2C 8002E32C E0A13126 */  addiu      $s1, $s1, %lo(D_8006A1E0)
    /* 1EB30 8002E330 7CFF3226 */  addiu      $s2, $s1, -0x84
  .L8002E334:
    /* 1EB34 8002E334 0000228E */  lw         $v0, 0x0($s1)
    /* 1EB38 8002E338 00000000 */  nop
    /* 1EB3C 8002E33C 06004014 */  bnez       $v0, .L8002E358
    /* 1EB40 8002E340 00000000 */   nop
    /* 1EB44 8002E344 60FE238E */  lw         $v1, -0x1A0($s1)
    /* 1EB48 8002E348 FCFF228E */  lw         $v0, -0x4($s1)
    /* 1EB4C 8002E34C 00000000 */  nop
    /* 1EB50 8002E350 05006210 */  beq        $v1, $v0, .L8002E368
    /* 1EB54 8002E354 00000000 */   nop
  .L8002E358:
    /* 1EB58 8002E358 93B9000C */  jal        func_8002E64C
    /* 1EB5C 8002E35C 00000000 */   nop
    /* 1EB60 8002E360 DCB80008 */  j          .L8002E370
    /* 1EB64 8002E364 00000000 */   nop
  .L8002E368:
    /* 1EB68 8002E368 10B9000C */  jal        func_8002E440
    /* 1EB6C 8002E36C 00000000 */   nop
  .L8002E370:
    /* 1EB70 8002E370 0000438E */  lw         $v1, 0x0($s2)
    /* 1EB74 8002E374 9000428E */  lw         $v0, 0x90($s2)
    /* 1EB78 8002E378 00000000 */  nop
    /* 1EB7C 8002E37C 0F006214 */  bne        $v1, $v0, .L8002E3BC
    /* 1EB80 8002E380 00000000 */   nop
    /* 1EB84 8002E384 9400438E */  lw         $v1, 0x94($s2)
    /* 1EB88 8002E388 00000000 */  nop
    /* 1EB8C 8002E38C 05006014 */  bnez       $v1, .L8002E3A4
    /* 1EB90 8002E390 06000224 */   addiu     $v0, $zero, 0x6
    /* 1EB94 8002E394 C0BA000C */  jal        func_8002EB00
    /* 1EB98 8002E398 00000000 */   nop
    /* 1EB9C 8002E39C F1B80008 */  j          .L8002E3C4
    /* 1EBA0 8002E3A0 00000000 */   nop
  .L8002E3A4:
    /* 1EBA4 8002E3A4 05006214 */  bne        $v1, $v0, .L8002E3BC
    /* 1EBA8 8002E3A8 00000000 */   nop
    /* 1EBAC 8002E3AC 85C2000C */  jal        func_80030A14
    /* 1EBB0 8002E3B0 00000000 */   nop
    /* 1EBB4 8002E3B4 F1B80008 */  j          .L8002E3C4
    /* 1EBB8 8002E3B8 00000000 */   nop
  .L8002E3BC:
    /* 1EBBC 8002E3BC F2BA000C */  jal        func_8002EBC8
    /* 1EBC0 8002E3C0 00000000 */   nop
  .L8002E3C4:
    /* 1EBC4 8002E3C4 0680023C */  lui        $v0, %hi(D_80067018)
    /* 1EBC8 8002E3C8 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* 1EBCC 8002E3CC 01001026 */  addiu      $s0, $s0, 0x1
    /* 1EBD0 8002E3D0 2A100202 */  slt        $v0, $s0, $v0
    /* 1EBD4 8002E3D4 D7FF4014 */  bnez       $v0, .L8002E334
    /* 1EBD8 8002E3D8 00000000 */   nop
  .L8002E3DC:
    /* 1EBDC 8002E3DC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1EBE0 8002E3E0 2000B28F */  lw         $s2, 0x20($sp)
    /* 1EBE4 8002E3E4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1EBE8 8002E3E8 1800B08F */  lw         $s0, 0x18($sp)
    /* 1EBEC 8002E3EC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1EBF0 8002E3F0 0800E003 */  jr         $ra
    /* 1EBF4 8002E3F4 00000000 */   nop
endlabel func_8002E304
