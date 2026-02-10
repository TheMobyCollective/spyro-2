.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A164, 0x364

glabel func_8002A164
    /* 1A964 8002A164 0680023C */  lui        $v0, %hi(D_80067018)
    /* 1A968 8002A168 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* 1A96C 8002A16C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1A970 8002A170 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1A974 8002A174 21800000 */  addu       $s0, $zero, $zero
    /* 1A978 8002A178 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1A97C 8002A17C 09004018 */  blez       $v0, .L8002A1A4
    /* 1A980 8002A180 2400B1AF */   sw        $s1, 0x24($sp)
  .L8002A184:
    /* 1A984 8002A184 C0CC000C */  jal        func_80033300
    /* 1A988 8002A188 21200002 */   addu      $a0, $s0, $zero
    /* 1A98C 8002A18C 0680023C */  lui        $v0, %hi(D_80067018)
    /* 1A990 8002A190 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* 1A994 8002A194 01001026 */  addiu      $s0, $s0, 0x1
    /* 1A998 8002A198 2A100202 */  slt        $v0, $s0, $v0
    /* 1A99C 8002A19C F9FF4014 */  bnez       $v0, .L8002A184
    /* 1A9A0 8002A1A0 00000000 */   nop
  .L8002A1A4:
    /* 1A9A4 8002A1A4 E3A9000C */  jal        func_8002A78C
    /* 1A9A8 8002A1A8 21800000 */   addu      $s0, $zero, $zero
    /* 1A9AC 8002A1AC E9D1000C */  jal        func_800347A4
    /* 1A9B0 8002A1B0 00000000 */   nop
    /* 1A9B4 8002A1B4 83D3000C */  jal        func_80034E0C
    /* 1A9B8 8002A1B8 00000000 */   nop
    /* 1A9BC 8002A1BC 0680023C */  lui        $v0, %hi(D_80067018)
    /* 1A9C0 8002A1C0 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* 1A9C4 8002A1C4 00000000 */  nop
    /* 1A9C8 8002A1C8 09004018 */  blez       $v0, .L8002A1F0
    /* 1A9CC 8002A1CC 00000000 */   nop
  .L8002A1D0:
    /* 1A9D0 8002A1D0 34D4000C */  jal        func_800350D0
    /* 1A9D4 8002A1D4 21200002 */   addu      $a0, $s0, $zero
    /* 1A9D8 8002A1D8 0680023C */  lui        $v0, %hi(D_80067018)
    /* 1A9DC 8002A1DC 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* 1A9E0 8002A1E0 01001026 */  addiu      $s0, $s0, 0x1
    /* 1A9E4 8002A1E4 2A100202 */  slt        $v0, $s0, $v0
    /* 1A9E8 8002A1E8 F9FF4014 */  bnez       $v0, .L8002A1D0
    /* 1A9EC 8002A1EC 00000000 */   nop
  .L8002A1F0:
    /* 1A9F0 8002A1F0 0780103C */  lui        $s0, %hi(D_80069FFC)
    /* 1A9F4 8002A1F4 FC9F1026 */  addiu      $s0, $s0, %lo(D_80069FFC)
    /* 1A9F8 8002A1F8 21200002 */  addu       $a0, $s0, $zero
    /* 1A9FC 8002A1FC 24001126 */  addiu      $s1, $s0, 0x24
    /* 1AA00 8002A200 21282002 */  addu       $a1, $s1, $zero
    /* 1AA04 8002A204 0780023C */  lui        $v0, %hi(D_8006A054)
    /* 1AA08 8002A208 54A0428C */  lw         $v0, %lo(D_8006A054)($v0)
    /* 1AA0C 8002A20C 00000000 */  nop
    /* 1AA10 8002A210 03110200 */  sra        $v0, $v0, 4
    /* 1AA14 8002A214 000002A2 */  sb         $v0, 0x0($s0)
    /* 1AA18 8002A218 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 1AA1C 8002A21C 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 1AA20 8002A220 0780033C */  lui        $v1, %hi(D_8006A05C)
    /* 1AA24 8002A224 5CA0638C */  lw         $v1, %lo(D_8006A05C)($v1)
    /* 1AA28 8002A228 03110200 */  sra        $v0, $v0, 4
    /* 1AA2C 8002A22C 03190300 */  sra        $v1, $v1, 4
    /* 1AA30 8002A230 0780013C */  lui        $at, %hi(D_80069FFD)
    /* 1AA34 8002A234 FD9F22A0 */  sb         $v0, %lo(D_80069FFD)($at)
    /* 1AA38 8002A238 0780013C */  lui        $at, %hi(D_80069FFE)
    /* 1AA3C 8002A23C FE9F23A0 */  sb         $v1, %lo(D_80069FFE)($at)
    /* 1AA40 8002A240 B26D000C */  jal        func_8001B6C8
    /* 1AA44 8002A244 21300000 */   addu      $a2, $zero, $zero
    /* 1AA48 8002A248 04000426 */  addiu      $a0, $s0, 0x4
    /* 1AA4C 8002A24C 90011026 */  addiu      $s0, $s0, 0x190
    /* 1AA50 8002A250 21280002 */  addu       $a1, $s0, $zero
    /* 1AA54 8002A254 B26D000C */  jal        func_8001B6C8
    /* 1AA58 8002A258 21300000 */   addu      $a2, $zero, $zero
    /* 1AA5C 8002A25C 21202002 */  addu       $a0, $s1, $zero
    /* 1AA60 8002A260 21280002 */  addu       $a1, $s0, $zero
    /* 1AA64 8002A264 5B67010C */  jal        func_80059D6C
    /* 1AA68 8002A268 21300002 */   addu      $a2, $s0, $zero
    /* 1AA6C 8002A26C 0780053C */  lui        $a1, %hi(D_800698BE)
    /* 1AA70 8002A270 BE98A524 */  addiu      $a1, $a1, %lo(D_800698BE)
    /* 1AA74 8002A274 0000A290 */  lbu        $v0, 0x0($a1)
    /* 1AA78 8002A278 00000000 */  nop
    /* 1AA7C 8002A27C 03004010 */  beqz       $v0, .L8002A28C
    /* 1AA80 8002A280 21200002 */   addu      $a0, $s0, $zero
    /* 1AA84 8002A284 9F67010C */  jal        func_80059E7C
    /* 1AA88 8002A288 0200A524 */   addiu     $a1, $a1, 0x2
  .L8002A28C:
    /* 1AA8C 8002A28C 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* 1AA90 8002A290 F89F428C */  lw         $v0, %lo(D_80069FF8)($v0)
    /* 1AA94 8002A294 00000000 */  nop
    /* 1AA98 8002A298 00044228 */  slti       $v0, $v0, 0x400
    /* 1AA9C 8002A29C 11004014 */  bnez       $v0, .L8002A2E4
    /* 1AAA0 8002A2A0 06000224 */   addiu     $v0, $zero, 0x6
    /* 1AAA4 8002A2A4 0780033C */  lui        $v1, %hi(D_8006A040)
    /* 1AAA8 8002A2A8 40A0638C */  lw         $v1, %lo(D_8006A040)($v1)
    /* 1AAAC 8002A2AC 00000000 */  nop
    /* 1AAB0 8002A2B0 10006214 */  bne        $v1, $v0, .L8002A2F4
    /* 1AAB4 8002A2B4 01000224 */   addiu     $v0, $zero, 0x1
    /* 1AAB8 8002A2B8 0780033C */  lui        $v1, %hi(D_8006A044)
    /* 1AABC 8002A2BC 44A0638C */  lw         $v1, %lo(D_8006A044)($v1)
    /* 1AAC0 8002A2C0 00000000 */  nop
    /* 1AAC4 8002A2C4 0B006214 */  bne        $v1, $v0, .L8002A2F4
    /* 1AAC8 8002A2C8 00000000 */   nop
    /* 1AACC 8002A2CC 0780023C */  lui        $v0, %hi(D_8006A04C)
    /* 1AAD0 8002A2D0 4CA0428C */  lw         $v0, %lo(D_8006A04C)($v0)
    /* 1AAD4 8002A2D4 00000000 */  nop
    /* 1AAD8 8002A2D8 3C004228 */  slti       $v0, $v0, 0x3C
    /* 1AADC 8002A2DC 05004014 */  bnez       $v0, .L8002A2F4
    /* 1AAE0 8002A2E0 00000000 */   nop
  .L8002A2E4:
    /* 1AAE4 8002A2E4 9DCB000C */  jal        func_80032E74
    /* 1AAE8 8002A2E8 00000000 */   nop
    /* 1AAEC 8002A2EC 2CA90008 */  j          .L8002A4B0
    /* 1AAF0 8002A2F0 00000000 */   nop
  .L8002A2F4:
    /* 1AAF4 8002A2F4 0780103C */  lui        $s0, %hi(D_80069FF8)
    /* 1AAF8 8002A2F8 F89F1026 */  addiu      $s0, $s0, %lo(D_80069FF8)
    /* 1AAFC 8002A2FC 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 1AB00 8002A300 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 1AB04 8002A304 0000038E */  lw         $v1, 0x0($s0)
    /* 1AB08 8002A308 80100200 */  sll        $v0, $v0, 2
    /* 1AB0C 8002A30C 0680013C */  lui        $at, %hi(D_80060234)
    /* 1AB10 8002A310 21082200 */  addu       $at, $at, $v0
    /* 1AB14 8002A314 3402228C */  lw         $v0, %lo(D_80060234)($at)
    /* 1AB18 8002A318 00000000 */  nop
    /* 1AB1C 8002A31C 2A186200 */  slt        $v1, $v1, $v0
    /* 1AB20 8002A320 29006010 */  beqz       $v1, .L8002A3C8
    /* 1AB24 8002A324 06000224 */   addiu     $v0, $zero, 0x6
    /* 1AB28 8002A328 0780033C */  lui        $v1, %hi(D_8006A040)
    /* 1AB2C 8002A32C 40A0638C */  lw         $v1, %lo(D_8006A040)($v1)
    /* 1AB30 8002A330 00000000 */  nop
    /* 1AB34 8002A334 04006210 */  beq        $v1, $v0, .L8002A348
    /* 1AB38 8002A338 01000224 */   addiu     $v0, $zero, 0x1
    /* 1AB3C 8002A33C 76D4000C */  jal        func_800351D8
    /* 1AB40 8002A340 06000424 */   addiu     $a0, $zero, 0x6
    /* 1AB44 8002A344 01000224 */  addiu      $v0, $zero, 0x1
  .L8002A348:
    /* 1AB48 8002A348 0680113C */  lui        $s1, %hi(D_80067ED0)
    /* 1AB4C 8002A34C D07E3126 */  addiu      $s1, $s1, %lo(D_80067ED0)
    /* 1AB50 8002A350 0780013C */  lui        $at, %hi(D_8006A044)
    /* 1AB54 8002A354 44A022AC */  sw         $v0, %lo(D_8006A044)($at)
    /* 1AB58 8002A358 0000228E */  lw         $v0, 0x0($s1)
    /* 1AB5C 8002A35C 09000324 */  addiu      $v1, $zero, 0x9
    /* 1AB60 8002A360 0C004310 */  beq        $v0, $v1, .L8002A394
    /* 1AB64 8002A364 38012426 */   addiu     $a0, $s1, 0x138
    /* 1AB68 8002A368 0680013C */  lui        $at, %hi(D_80067FEC)
    /* 1AB6C 8002A36C EC7F23AC */  sw         $v1, %lo(D_80067FEC)($at)
    /* 1AB70 8002A370 B685000C */  jal        func_800216D8
    /* 1AB74 8002A374 09000424 */   addiu     $a0, $zero, 0x9
    /* 1AB78 8002A378 6C012426 */  addiu      $a0, $s1, 0x16C
    /* 1AB7C 8002A37C 02000224 */  addiu      $v0, $zero, 0x2
    /* 1AB80 8002A380 0680013C */  lui        $at, %hi(D_80067ED4)
    /* 1AB84 8002A384 D47E22AC */  sw         $v0, %lo(D_80067ED4)($at)
    /* 1AB88 8002A388 6C6F000C */  jal        func_8001BDB0
    /* 1AB8C 8002A38C DCFF2526 */   addiu     $a1, $s1, -0x24
    /* 1AB90 8002A390 38012426 */  addiu      $a0, $s1, 0x138
  .L8002A394:
    /* 1AB94 8002A394 F8FF1026 */  addiu      $s0, $s0, -0x8
    /* 1AB98 8002A398 6C6F000C */  jal        func_8001BDB0
    /* 1AB9C 8002A39C 21280002 */   addu      $a1, $s0, $zero
    /* 1ABA0 8002A3A0 24012426 */  addiu      $a0, $s1, 0x124
    /* 1ABA4 8002A3A4 6C012526 */  addiu      $a1, $s1, 0x16C
    /* 1ABA8 8002A3A8 867B000C */  jal        func_8001EE18
    /* 1ABAC 8002A3AC 21300002 */   addu      $a2, $s0, $zero
    /* 1ABB0 8002A3B0 0780013C */  lui        $at, %hi(D_80068000)
    /* 1ABB4 8002A3B4 008020AC */  sw         $zero, %lo(D_80068000)($at)
    /* 1ABB8 8002A3B8 0780013C */  lui        $at, %hi(D_80068004)
    /* 1ABBC 8002A3BC 048020AC */  sw         $zero, %lo(D_80068004)($at)
    /* 1ABC0 8002A3C0 2CA90008 */  j          .L8002A4B0
    /* 1ABC4 8002A3C4 00000000 */   nop
  .L8002A3C8:
    /* 1ABC8 8002A3C8 0780023C */  lui        $v0, %hi(D_80069FF0)
    /* 1ABCC 8002A3CC F09F428C */  lw         $v0, %lo(D_80069FF0)($v0)
    /* 1ABD0 8002A3D0 00000000 */  nop
    /* 1ABD4 8002A3D4 00084228 */  slti       $v0, $v0, 0x800
    /* 1ABD8 8002A3D8 07004014 */  bnez       $v0, .L8002A3F8
    /* 1ABDC 8002A3DC 00000000 */   nop
    /* 1ABE0 8002A3E0 0780023C */  lui        $v0, %hi(D_80069FF4)
    /* 1ABE4 8002A3E4 F49F428C */  lw         $v0, %lo(D_80069FF4)($v0)
    /* 1ABE8 8002A3E8 00000000 */  nop
    /* 1ABEC 8002A3EC 00084228 */  slti       $v0, $v0, 0x800
    /* 1ABF0 8002A3F0 2F004010 */  beqz       $v0, .L8002A4B0
    /* 1ABF4 8002A3F4 00000000 */   nop
  .L8002A3F8:
    /* 1ABF8 8002A3F8 0780033C */  lui        $v1, %hi(D_8006A040)
    /* 1ABFC 8002A3FC 40A0638C */  lw         $v1, %lo(D_8006A040)($v1)
    /* 1AC00 8002A400 06000224 */  addiu      $v0, $zero, 0x6
    /* 1AC04 8002A404 0B006214 */  bne        $v1, $v0, .L8002A434
    /* 1AC08 8002A408 00000000 */   nop
    /* 1AC0C 8002A40C 0780013C */  lui        $at, %hi(D_8006A090)
    /* 1AC10 8002A410 90A020AC */  sw         $zero, %lo(D_8006A090)($at)
    /* 1AC14 8002A414 0780013C */  lui        $at, %hi(D_8006A094)
    /* 1AC18 8002A418 94A020AC */  sw         $zero, %lo(D_8006A094)($at)
    /* 1AC1C 8002A41C 0780013C */  lui        $at, %hi(D_8006A084)
    /* 1AC20 8002A420 84A020AC */  sw         $zero, %lo(D_8006A084)($at)
    /* 1AC24 8002A424 0780013C */  lui        $at, %hi(D_8006A088)
    /* 1AC28 8002A428 88A020AC */  sw         $zero, %lo(D_8006A088)($at)
    /* 1AC2C 8002A42C 13A90008 */  j          .L8002A44C
    /* 1AC30 8002A430 00000000 */   nop
  .L8002A434:
    /* 1AC34 8002A434 686F000C */  jal        func_8001BDA0
    /* 1AC38 8002A438 98000426 */   addiu     $a0, $s0, 0x98
    /* 1AC3C 8002A43C 686F000C */  jal        func_8001BDA0
    /* 1AC40 8002A440 8C000426 */   addiu     $a0, $s0, 0x8C
    /* 1AC44 8002A444 76D4000C */  jal        func_800351D8
    /* 1AC48 8002A448 06000424 */   addiu     $a0, $zero, 0x6
  .L8002A44C:
    /* 1AC4C 8002A44C 0780103C */  lui        $s0, %hi(D_8006A044)
    /* 1AC50 8002A450 44A01026 */  addiu      $s0, $s0, %lo(D_8006A044)
    /* 1AC54 8002A454 01000224 */  addiu      $v0, $zero, 0x1
    /* 1AC58 8002A458 0680113C */  lui        $s1, %hi(D_80067ED0)
    /* 1AC5C 8002A45C D07E3126 */  addiu      $s1, $s1, %lo(D_80067ED0)
    /* 1AC60 8002A460 000002AE */  sw         $v0, 0x0($s0)
    /* 1AC64 8002A464 0000228E */  lw         $v0, 0x0($s1)
    /* 1AC68 8002A468 09000324 */  addiu      $v1, $zero, 0x9
    /* 1AC6C 8002A46C 09004310 */  beq        $v0, $v1, .L8002A494
    /* 1AC70 8002A470 38012426 */   addiu     $a0, $s1, 0x138
    /* 1AC74 8002A474 0680013C */  lui        $at, %hi(D_80067FEC)
    /* 1AC78 8002A478 EC7F23AC */  sw         $v1, %lo(D_80067FEC)($at)
    /* 1AC7C 8002A47C B685000C */  jal        func_800216D8
    /* 1AC80 8002A480 09000424 */   addiu     $a0, $zero, 0x9
    /* 1AC84 8002A484 02000224 */  addiu      $v0, $zero, 0x2
    /* 1AC88 8002A488 0680013C */  lui        $at, %hi(D_80067ED4)
    /* 1AC8C 8002A48C D47E22AC */  sw         $v0, %lo(D_80067ED4)($at)
    /* 1AC90 8002A490 38012426 */  addiu      $a0, $s1, 0x138
  .L8002A494:
    /* 1AC94 8002A494 ACFF1026 */  addiu      $s0, $s0, -0x54
    /* 1AC98 8002A498 6C6F000C */  jal        func_8001BDB0
    /* 1AC9C 8002A49C 21280002 */   addu      $a1, $s0, $zero
    /* 1ACA0 8002A4A0 24012426 */  addiu      $a0, $s1, 0x124
    /* 1ACA4 8002A4A4 DCFF2526 */  addiu      $a1, $s1, -0x24
    /* 1ACA8 8002A4A8 867B000C */  jal        func_8001EE18
    /* 1ACAC 8002A4AC 21300002 */   addu      $a2, $s0, $zero
  .L8002A4B0:
    /* 1ACB0 8002A4B0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1ACB4 8002A4B4 2400B18F */  lw         $s1, 0x24($sp)
    /* 1ACB8 8002A4B8 2000B08F */  lw         $s0, 0x20($sp)
    /* 1ACBC 8002A4BC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1ACC0 8002A4C0 0800E003 */  jr         $ra
    /* 1ACC4 8002A4C4 00000000 */   nop
endlabel func_8002A164
