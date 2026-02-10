.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003A98C, 0x348

glabel func_8003A98C
    /* 2B18C 8003A98C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2B190 8003A990 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2B194 8003A994 21888000 */  addu       $s1, $a0, $zero
    /* 2B198 8003A998 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2B19C 8003A99C 2198A000 */  addu       $s3, $a1, $zero
    /* 2B1A0 8003A9A0 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 2B1A4 8003A9A4 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 2B1A8 8003A9A8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 2B1AC 8003A9AC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2B1B0 8003A9B0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2B1B4 8003A9B4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2B1B8 8003A9B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2B1BC 8003A9BC 0000308E */  lw         $s0, 0x0($s1)
    /* 2B1C0 8003A9C0 DB6F000C */  jal        func_8001BF6C
    /* 2B1C4 8003A9C4 0C002426 */   addiu     $a0, $s1, 0xC
    /* 2B1C8 8003A9C8 21404000 */  addu       $t0, $v0, $zero
    /* 2B1CC 8003A9CC 05000392 */  lbu        $v1, 0x5($s0)
    /* 2B1D0 8003A9D0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2B1D4 8003A9D4 03006214 */  bne        $v1, $v0, .L8003A9E4
    /* 2B1D8 8003A9D8 000A0229 */   slti      $v0, $t0, 0xA00
    /* 2B1DC 8003A9DC 2AEB0008 */  j          .L8003ACA8
    /* 2B1E0 8003A9E0 070000A2 */   sb        $zero, 0x7($s0)
  .L8003A9E4:
    /* 2B1E4 8003A9E4 B0004010 */  beqz       $v0, .L8003ACA8
    /* 2B1E8 8003A9E8 21300000 */   addu      $a2, $zero, $zero
    /* 2B1EC 8003A9EC 07001592 */  lbu        $s5, 0x7($s0)
    /* 2B1F0 8003A9F0 01006232 */  andi       $v0, $s3, 0x1
    /* 2B1F4 8003A9F4 06004014 */  bnez       $v0, .L8003AA10
    /* 2B1F8 8003A9F8 070000A2 */   sb        $zero, 0x7($s0)
    /* 2B1FC 8003A9FC 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 2B200 8003AA00 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 2B204 8003AA04 00000000 */  nop
    /* 2B208 8003AA08 02004014 */  bnez       $v0, .L8003AA14
    /* 2B20C 8003AA0C 00000000 */   nop
  .L8003AA10:
    /* 2B210 8003AA10 01000624 */  addiu      $a2, $zero, 0x1
  .L8003AA14:
    /* 2B214 8003AA14 38002286 */  lh         $v0, 0x38($s1)
    /* 2B218 8003AA18 1400238E */  lw         $v1, 0x14($s1)
    /* 2B21C 8003AA1C 00000000 */  nop
    /* 2B220 8003AA20 23206200 */  subu       $a0, $v1, $v0
    /* 2B224 8003AA24 20038724 */  addiu      $a3, $a0, 0x320
    /* 2B228 8003AA28 08006232 */  andi       $v0, $s3, 0x8
    /* 2B22C 8003AA2C 02004010 */  beqz       $v0, .L8003AA38
    /* 2B230 8003AA30 21288000 */   addu      $a1, $a0, $zero
    /* 2B234 8003AA34 E0FCA524 */  addiu      $a1, $a1, -0x320
  .L8003AA38:
    /* 2B238 8003AA38 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 2B23C 8003AA3C 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 2B240 8003AA40 0B000224 */  addiu      $v0, $zero, 0xB
    /* 2B244 8003AA44 04006214 */  bne        $v1, $v0, .L8003AA58
    /* 2B248 8003AA48 00050229 */   slti      $v0, $t0, 0x500
    /* 2B24C 8003AA4C 08078724 */  addiu      $a3, $a0, 0x708
    /* 2B250 8003AA50 70FEA524 */  addiu      $a1, $a1, -0x190
    /* 2B254 8003AA54 01000624 */  addiu      $a2, $zero, 0x1
  .L8003AA58:
    /* 2B258 8003AA58 03004010 */  beqz       $v0, .L8003AA68
    /* 2B25C 8003AA5C 40001224 */   addiu     $s2, $zero, 0x40
    /* 2B260 8003AA60 9CEA0008 */  j          .L8003AA70
    /* 2B264 8003AA64 80001424 */   addiu     $s4, $zero, 0x80
  .L8003AA68:
    /* 2B268 8003AA68 20001224 */  addiu      $s2, $zero, 0x20
    /* 2B26C 8003AA6C 48001424 */  addiu      $s4, $zero, 0x48
  .L8003AA70:
    /* 2B270 8003AA70 8E00C010 */  beqz       $a2, .L8003ACAC
    /* 2B274 8003AA74 21100000 */   addu      $v0, $zero, $zero
    /* 2B278 8003AA78 0780033C */  lui        $v1, %hi(D_80069FF8)
    /* 2B27C 8003AA7C F89F638C */  lw         $v1, %lo(D_80069FF8)($v1)
    /* 2B280 8003AA80 00000000 */  nop
    /* 2B284 8003AA84 2A10E300 */  slt        $v0, $a3, $v1
    /* 2B288 8003AA88 88004014 */  bnez       $v0, .L8003ACAC
    /* 2B28C 8003AA8C 21100000 */   addu      $v0, $zero, $zero
    /* 2B290 8003AA90 2A106500 */  slt        $v0, $v1, $a1
    /* 2B294 8003AA94 85004014 */  bnez       $v0, .L8003ACAC
    /* 2B298 8003AA98 21100000 */   addu      $v0, $zero, $zero
    /* 2B29C 8003AA9C 02006232 */  andi       $v0, $s3, 0x2
    /* 2B2A0 8003AAA0 11004014 */  bnez       $v0, .L8003AAE8
    /* 2B2A4 8003AAA4 21300000 */   addu      $a2, $zero, $zero
    /* 2B2A8 8003AAA8 0780033C */  lui        $v1, %hi(D_80069FF0)
    /* 2B2AC 8003AAAC F09F638C */  lw         $v1, %lo(D_80069FF0)($v1)
    /* 2B2B0 8003AAB0 0C00248E */  lw         $a0, 0xC($s1)
    /* 2B2B4 8003AAB4 0780023C */  lui        $v0, %hi(D_80069FF4)
    /* 2B2B8 8003AAB8 F49F428C */  lw         $v0, %lo(D_80069FF4)($v0)
    /* 2B2BC 8003AABC 1000258E */  lw         $a1, 0x10($s1)
    /* 2B2C0 8003AAC0 23206400 */  subu       $a0, $v1, $a0
    /* 2B2C4 8003AAC4 2E6D000C */  jal        func_8001B4B8
    /* 2B2C8 8003AAC8 23284500 */   subu      $a1, $v0, $a1
    /* 2B2CC 8003AACC 46002492 */  lbu        $a0, 0x46($s1)
    /* 2B2D0 8003AAD0 A76F000C */  jal        func_8001BE9C
    /* 2B2D4 8003AAD4 21284000 */   addu      $a1, $v0, $zero
    /* 2B2D8 8003AAD8 2A104202 */  slt        $v0, $s2, $v0
    /* 2B2DC 8003AADC 73004014 */  bnez       $v0, .L8003ACAC
    /* 2B2E0 8003AAE0 21100000 */   addu      $v0, $zero, $zero
    /* 2B2E4 8003AAE4 21300000 */  addu       $a2, $zero, $zero
  .L8003AAE8:
    /* 2B2E8 8003AAE8 0C00238E */  lw         $v1, 0xC($s1)
    /* 2B2EC 8003AAEC 0780043C */  lui        $a0, %hi(D_80069FF0)
    /* 2B2F0 8003AAF0 F09F848C */  lw         $a0, %lo(D_80069FF0)($a0)
    /* 2B2F4 8003AAF4 1000228E */  lw         $v0, 0x10($s1)
    /* 2B2F8 8003AAF8 0780053C */  lui        $a1, %hi(D_80069FF4)
    /* 2B2FC 8003AAFC F49FA58C */  lw         $a1, %lo(D_80069FF4)($a1)
    /* 2B300 8003AB00 23206400 */  subu       $a0, $v1, $a0
    /* 2B304 8003AB04 2E6D000C */  jal        func_8001B4B8
    /* 2B308 8003AB08 23284500 */   subu      $a1, $v0, $a1
    /* 2B30C 8003AB0C 0780043C */  lui        $a0, %hi(D_80069FFE)
    /* 2B310 8003AB10 FE9F8490 */  lbu        $a0, %lo(D_80069FFE)($a0)
    /* 2B314 8003AB14 A76F000C */  jal        func_8001BE9C
    /* 2B318 8003AB18 21284000 */   addu      $a1, $v0, $zero
    /* 2B31C 8003AB1C 2A108202 */  slt        $v0, $s4, $v0
    /* 2B320 8003AB20 62004014 */  bnez       $v0, .L8003ACAC
    /* 2B324 8003AB24 21100000 */   addu      $v0, $zero, $zero
    /* 2B328 8003AB28 4D002292 */  lbu        $v0, 0x4D($s1)
    /* 2B32C 8003AB2C 00000000 */  nop
    /* 2B330 8003AB30 5E004010 */  beqz       $v0, .L8003ACAC
    /* 2B334 8003AB34 21100000 */   addu      $v0, $zero, $zero
    /* 2B338 8003AB38 0680023C */  lui        $v0, %hi(D_80067100)
    /* 2B33C 8003AB3C 0071428C */  lw         $v0, %lo(D_80067100)($v0)
    /* 2B340 8003AB40 00000000 */  nop
    /* 2B344 8003AB44 06004014 */  bnez       $v0, .L8003AB60
    /* 2B348 8003AB48 00000000 */   nop
    /* 2B34C 8003AB4C 0680023C */  lui        $v0, %hi(D_8006701C)
    /* 2B350 8003AB50 1C70428C */  lw         $v0, %lo(D_8006701C)($v0)
    /* 2B354 8003AB54 00000000 */  nop
    /* 2B358 8003AB58 05004010 */  beqz       $v0, .L8003AB70
    /* 2B35C 8003AB5C 00000000 */   nop
  .L8003AB60:
    /* 2B360 8003AB60 05000392 */  lbu        $v1, 0x5($s0)
    /* 2B364 8003AB64 02000224 */  addiu      $v0, $zero, 0x2
    /* 2B368 8003AB68 50006214 */  bne        $v1, $v0, .L8003ACAC
    /* 2B36C 8003AB6C 21100000 */   addu      $v0, $zero, $zero
  .L8003AB70:
    /* 2B370 8003AB70 0780023C */  lui        $v0, %hi(D_800681C8)
    /* 2B374 8003AB74 C881428C */  lw         $v0, %lo(D_800681C8)($v0)
    /* 2B378 8003AB78 00000000 */  nop
    /* 2B37C 8003AB7C 4B004014 */  bnez       $v0, .L8003ACAC
    /* 2B380 8003AB80 21100000 */   addu      $v0, $zero, $zero
    /* 2B384 8003AB84 04006232 */  andi       $v0, $s3, 0x4
    /* 2B388 8003AB88 06004014 */  bnez       $v0, .L8003ABA4
    /* 2B38C 8003AB8C 04000224 */   addiu     $v0, $zero, 0x4
    /* 2B390 8003AB90 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 2B394 8003AB94 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 2B398 8003AB98 00000000 */  nop
    /* 2B39C 8003AB9C 43006210 */  beq        $v1, $v0, .L8003ACAC
    /* 2B3A0 8003ABA0 21100000 */   addu      $v0, $zero, $zero
  .L8003ABA4:
    /* 2B3A4 8003ABA4 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 2B3A8 8003ABA8 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 2B3AC 8003ABAC 09000224 */  addiu      $v0, $zero, 0x9
    /* 2B3B0 8003ABB0 3E006210 */  beq        $v1, $v0, .L8003ACAC
    /* 2B3B4 8003ABB4 21100000 */   addu      $v0, $zero, $zero
    /* 2B3B8 8003ABB8 0680023C */  lui        $v0, %hi(D_80067008)
    /* 2B3BC 8003ABBC 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* 2B3C0 8003ABC0 00000000 */  nop
    /* 2B3C4 8003ABC4 0A004228 */  slti       $v0, $v0, 0xA
    /* 2B3C8 8003ABC8 0F004010 */  beqz       $v0, .L8003AC08
    /* 2B3CC 8003ABCC 00000000 */   nop
    /* 2B3D0 8003ABD0 05000292 */  lbu        $v0, 0x5($s0)
    /* 2B3D4 8003ABD4 00000000 */  nop
    /* 2B3D8 8003ABD8 0B004010 */  beqz       $v0, .L8003AC08
    /* 2B3DC 8003ABDC 00000000 */   nop
    /* 2B3E0 8003ABE0 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* 2B3E4 8003ABE4 E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* 2B3E8 8003ABE8 00000000 */  nop
    /* 2B3EC 8003ABEC 06004010 */  beqz       $v0, .L8003AC08
    /* 2B3F0 8003ABF0 00000000 */   nop
    /* 2B3F4 8003ABF4 02000292 */  lbu        $v0, 0x2($s0)
    /* 2B3F8 8003ABF8 00000000 */  nop
    /* 2B3FC 8003ABFC 02004010 */  beqz       $v0, .L8003AC08
    /* 2B400 8003AC00 00000000 */   nop
    /* 2B404 8003AC04 050000A2 */  sb         $zero, 0x5($s0)
  .L8003AC08:
    /* 2B408 8003AC08 0780023C */  lui        $v0, %hi(D_800683A4)
    /* 2B40C 8003AC0C A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* 2B410 8003AC10 00000000 */  nop
    /* 2B414 8003AC14 10004230 */  andi       $v0, $v0, 0x10
    /* 2B418 8003AC18 05004014 */  bnez       $v0, .L8003AC30
    /* 2B41C 8003AC1C 00000000 */   nop
    /* 2B420 8003AC20 05000292 */  lbu        $v0, 0x5($s0)
    /* 2B424 8003AC24 00000000 */  nop
    /* 2B428 8003AC28 19004010 */  beqz       $v0, .L8003AC90
    /* 2B42C 8003AC2C 00000000 */   nop
  .L8003AC30:
    /* 2B430 8003AC30 05000392 */  lbu        $v1, 0x5($s0)
    /* 2B434 8003AC34 02000224 */  addiu      $v0, $zero, 0x2
    /* 2B438 8003AC38 07006214 */  bne        $v1, $v0, .L8003AC58
    /* 2B43C 8003AC3C 0010043C */   lui       $a0, (0x10000002 >> 16)
    /* 2B440 8003AC40 0780033C */  lui        $v1, %hi(D_8006A1FC)
    /* 2B444 8003AC44 FCA16324 */  addiu      $v1, $v1, %lo(D_8006A1FC)
    /* 2B448 8003AC48 0000628C */  lw         $v0, 0x0($v1)
    /* 2B44C 8003AC4C 02008434 */  ori        $a0, $a0, (0x10000002 & 0xFFFF)
    /* 2B450 8003AC50 25104400 */  or         $v0, $v0, $a0
    /* 2B454 8003AC54 000062AC */  sw         $v0, 0x0($v1)
  .L8003AC58:
    /* 2B458 8003AC58 050000A2 */  sb         $zero, 0x5($s0)
    /* 2B45C 8003AC5C 05001026 */  addiu      $s0, $s0, 0x5
    /* 2B460 8003AC60 21200002 */  addu       $a0, $s0, $zero
    /* 2B464 8003AC64 0680063C */  lui        $a2, %hi(D_80067414)
    /* 2B468 8003AC68 1474C624 */  addiu      $a2, $a2, %lo(D_80067414)
    /* 2B46C 8003AC6C 8530010C */  jal        func_8004C214
    /* 2B470 8003AC70 01000524 */   addiu     $a1, $zero, 0x1
    /* 2B474 8003AC74 21200002 */  addu       $a0, $s0, $zero
    /* 2B478 8003AC78 0680063C */  lui        $a2, %hi(D_8006718C)
    /* 2B47C 8003AC7C 8C71C624 */  addiu      $a2, $a2, %lo(D_8006718C)
    /* 2B480 8003AC80 8530010C */  jal        func_8004C214
    /* 2B484 8003AC84 01000524 */   addiu     $a1, $zero, 0x1
    /* 2B488 8003AC88 2BEB0008 */  j          .L8003ACAC
    /* 2B48C 8003AC8C 01000224 */   addiu     $v0, $zero, 0x1
  .L8003AC90:
    /* 2B490 8003AC90 0400A016 */  bnez       $s5, .L8003ACA4
    /* 2B494 8003AC94 02000224 */   addiu     $v0, $zero, 0x2
    /* 2B498 8003AC98 35EB000C */  jal        func_8003ACD4
    /* 2B49C 8003AC9C 21202002 */   addu      $a0, $s1, $zero
    /* 2B4A0 8003ACA0 02000224 */  addiu      $v0, $zero, 0x2
  .L8003ACA4:
    /* 2B4A4 8003ACA4 070002A2 */  sb         $v0, 0x7($s0)
  .L8003ACA8:
    /* 2B4A8 8003ACA8 21100000 */  addu       $v0, $zero, $zero
  .L8003ACAC:
    /* 2B4AC 8003ACAC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 2B4B0 8003ACB0 2400B58F */  lw         $s5, 0x24($sp)
    /* 2B4B4 8003ACB4 2000B48F */  lw         $s4, 0x20($sp)
    /* 2B4B8 8003ACB8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2B4BC 8003ACBC 1800B28F */  lw         $s2, 0x18($sp)
    /* 2B4C0 8003ACC0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2B4C4 8003ACC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2B4C8 8003ACC8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2B4CC 8003ACCC 0800E003 */  jr         $ra
    /* 2B4D0 8003ACD0 00000000 */   nop
endlabel func_8003A98C
