.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002EB00, 0xC8

glabel func_8002EB00
    /* 1F300 8002EB00 0780073C */  lui        $a3, %hi(D_8006A00D)
    /* 1F304 8002EB04 0DA0E724 */  addiu      $a3, $a3, %lo(D_8006A00D)
    /* 1F308 8002EB08 0000E490 */  lbu        $a0, 0x0($a3)
    /* 1F30C 8002EB0C 00000000 */  nop
    /* 1F310 8002EB10 02110400 */  srl        $v0, $a0, 4
    /* 1F314 8002EB14 0F008330 */  andi       $v1, $a0, 0xF
    /* 1F318 8002EB18 05006210 */  beq        $v1, $v0, .L8002EB30
    /* 1F31C 8002EB1C F0008230 */   andi      $v0, $a0, 0xF0
    /* 1F320 8002EB20 01006324 */  addiu      $v1, $v1, 0x1
    /* 1F324 8002EB24 21104300 */  addu       $v0, $v0, $v1
    /* 1F328 8002EB28 F0BA0008 */  j          .L8002EBC0
    /* 1F32C 8002EB2C 0000E2A0 */   sb        $v0, 0x0($a3)
  .L8002EB30:
    /* 1F330 8002EB30 0780053C */  lui        $a1, %hi(D_8006A009)
    /* 1F334 8002EB34 09A0A590 */  lbu        $a1, %lo(D_8006A009)($a1)
    /* 1F338 8002EB38 0680033C */  lui        $v1, %hi(D_80066F24)
    /* 1F33C 8002EB3C 246F638C */  lw         $v1, %lo(D_80066F24)($v1)
    /* 1F340 8002EB40 0780043C */  lui        $a0, %hi(D_8006A00B)
    /* 1F344 8002EB44 0BA08490 */  lbu        $a0, %lo(D_8006A00B)($a0)
    /* 1F348 8002EB48 80300500 */  sll        $a2, $a1, 2
    /* 1F34C 8002EB4C 2118C300 */  addu       $v1, $a2, $v1
    /* 1F350 8002EB50 80100400 */  sll        $v0, $a0, 2
    /* 1F354 8002EB54 21104400 */  addu       $v0, $v0, $a0
    /* 1F358 8002EB58 0000638C */  lw         $v1, 0x0($v1)
    /* 1F35C 8002EB5C 80100200 */  sll        $v0, $v0, 2
    /* 1F360 8002EB60 21186200 */  addu       $v1, $v1, $v0
    /* 1F364 8002EB64 1400628C */  lw         $v0, 0x14($v1)
    /* 1F368 8002EB68 01008324 */  addiu      $v1, $a0, 0x1
    /* 1F36C 8002EB6C 0780013C */  lui        $at, %hi(D_8006A008)
    /* 1F370 8002EB70 08A025A0 */  sb         $a1, %lo(D_8006A008)($at)
    /* 1F374 8002EB74 0780013C */  lui        $at, %hi(D_8006A00A)
    /* 1F378 8002EB78 0AA024A0 */  sb         $a0, %lo(D_8006A00A)($at)
    /* 1F37C 8002EB7C 0780013C */  lui        $at, %hi(D_8006A00B)
    /* 1F380 8002EB80 0BA023A0 */  sb         $v1, %lo(D_8006A00B)($at)
    /* 1F384 8002EB84 83130200 */  sra        $v0, $v0, 14
    /* 1F388 8002EB88 F0004230 */  andi       $v0, $v0, 0xF0
    /* 1F38C 8002EB8C 0000E2A0 */  sb         $v0, 0x0($a3)
    /* 1F390 8002EB90 0680013C */  lui        $at, %hi(D_80060335)
    /* 1F394 8002EB94 21082600 */  addu       $at, $at, $a2
    /* 1F398 8002EB98 35032290 */  lbu        $v0, %lo(D_80060335)($at)
    /* 1F39C 8002EB9C FF006330 */  andi       $v1, $v1, 0xFF
    /* 1F3A0 8002EBA0 2B186200 */  sltu       $v1, $v1, $v0
    /* 1F3A4 8002EBA4 06006014 */  bnez       $v1, .L8002EBC0
    /* 1F3A8 8002EBA8 00000000 */   nop
    /* 1F3AC 8002EBAC 0680013C */  lui        $at, %hi(D_80060334)
    /* 1F3B0 8002EBB0 21082600 */  addu       $at, $at, $a2
    /* 1F3B4 8002EBB4 34032290 */  lbu        $v0, %lo(D_80060334)($at)
    /* 1F3B8 8002EBB8 0780013C */  lui        $at, %hi(D_8006A00B)
    /* 1F3BC 8002EBBC 0BA022A0 */  sb         $v0, %lo(D_8006A00B)($at)
  .L8002EBC0:
    /* 1F3C0 8002EBC0 0800E003 */  jr         $ra
    /* 1F3C4 8002EBC4 00000000 */   nop
endlabel func_8002EB00
