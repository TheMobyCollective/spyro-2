.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002E440, 0x128

glabel func_8002E440
    /* 1EC40 8002E440 0780053C */  lui        $a1, %hi(D_8006A00C)
    /* 1EC44 8002E444 0CA0A524 */  addiu      $a1, $a1, %lo(D_8006A00C)
    /* 1EC48 8002E448 0000A490 */  lbu        $a0, 0x0($a1)
    /* 1EC4C 8002E44C 00000000 */  nop
    /* 1EC50 8002E450 FF008330 */  andi       $v1, $a0, 0xFF
    /* 1EC54 8002E454 1000622C */  sltiu      $v0, $v1, 0x10
    /* 1EC58 8002E458 0F004010 */  beqz       $v0, .L8002E498
    /* 1EC5C 8002E45C 21300000 */   addu      $a2, $zero, $zero
    /* 1EC60 8002E460 DC01A28C */  lw         $v0, 0x1DC($a1)
    /* 1EC64 8002E464 0780033C */  lui        $v1, %hi(D_8006A1E4)
    /* 1EC68 8002E468 E4A1638C */  lw         $v1, %lo(D_8006A1E4)($v1)
    /* 1EC6C 8002E46C 00000000 */  nop
    /* 1EC70 8002E470 21184300 */  addu       $v1, $v0, $v1
    /* 1EC74 8002E474 00016228 */  slti       $v0, $v1, 0x100
    /* 1EC78 8002E478 04004014 */  bnez       $v0, .L8002E48C
    /* 1EC7C 8002E47C DC01A3AC */   sw        $v1, 0x1DC($a1)
    /* 1EC80 8002E480 00FF6224 */  addiu      $v0, $v1, -0x100
    /* 1EC84 8002E484 DC01A2AC */  sw         $v0, 0x1DC($a1)
    /* 1EC88 8002E488 01000624 */  addiu      $a2, $zero, 0x1
  .L8002E48C:
    /* 1EC8C 8002E48C DC01A28C */  lw         $v0, 0x1DC($a1)
    /* 1EC90 8002E490 3EB90008 */  j          .L8002E4F8
    /* 1EC94 8002E494 03110200 */   sra       $v0, $v0, 4
  .L8002E498:
    /* 1EC98 8002E498 02110300 */  srl        $v0, $v1, 4
    /* 1EC9C 8002E49C 0F008330 */  andi       $v1, $a0, 0xF
    /* 1ECA0 8002E4A0 04006210 */  beq        $v1, $v0, .L8002E4B4
    /* 1ECA4 8002E4A4 F0008230 */   andi      $v0, $a0, 0xF0
    /* 1ECA8 8002E4A8 01006324 */  addiu      $v1, $v1, 0x1
    /* 1ECAC 8002E4AC 3EB90008 */  j          .L8002E4F8
    /* 1ECB0 8002E4B0 21104300 */   addu      $v0, $v0, $v1
  .L8002E4B4:
    /* 1ECB4 8002E4B4 0780033C */  lui        $v1, %hi(D_8006A005)
    /* 1ECB8 8002E4B8 05A06390 */  lbu        $v1, %lo(D_8006A005)($v1)
    /* 1ECBC 8002E4BC 0680023C */  lui        $v0, %hi(D_80066F24)
    /* 1ECC0 8002E4C0 246F428C */  lw         $v0, %lo(D_80066F24)($v0)
    /* 1ECC4 8002E4C4 0780043C */  lui        $a0, %hi(D_8006A007)
    /* 1ECC8 8002E4C8 07A08490 */  lbu        $a0, %lo(D_8006A007)($a0)
    /* 1ECCC 8002E4CC 80180300 */  sll        $v1, $v1, 2
    /* 1ECD0 8002E4D0 21186200 */  addu       $v1, $v1, $v0
    /* 1ECD4 8002E4D4 80100400 */  sll        $v0, $a0, 2
    /* 1ECD8 8002E4D8 21104400 */  addu       $v0, $v0, $a0
    /* 1ECDC 8002E4DC 0000638C */  lw         $v1, 0x0($v1)
    /* 1ECE0 8002E4E0 80100200 */  sll        $v0, $v0, 2
    /* 1ECE4 8002E4E4 21186200 */  addu       $v1, $v1, $v0
    /* 1ECE8 8002E4E8 1400628C */  lw         $v0, 0x14($v1)
    /* 1ECEC 8002E4EC 01000624 */  addiu      $a2, $zero, 0x1
    /* 1ECF0 8002E4F0 83130200 */  sra        $v0, $v0, 14
    /* 1ECF4 8002E4F4 F0004230 */  andi       $v0, $v0, 0xF0
  .L8002E4F8:
    /* 1ECF8 8002E4F8 1900C010 */  beqz       $a2, .L8002E560
    /* 1ECFC 8002E4FC 0000A2A0 */   sb        $v0, 0x0($a1)
    /* 1ED00 8002E500 0780033C */  lui        $v1, %hi(D_8006A007)
    /* 1ED04 8002E504 07A06390 */  lbu        $v1, %lo(D_8006A007)($v1)
    /* 1ED08 8002E508 0780043C */  lui        $a0, %hi(D_8006A005)
    /* 1ED0C 8002E50C 05A08490 */  lbu        $a0, %lo(D_8006A005)($a0)
    /* 1ED10 8002E510 01006224 */  addiu      $v0, $v1, 0x1
    /* 1ED14 8002E514 0780013C */  lui        $at, %hi(D_8006A004)
    /* 1ED18 8002E518 04A024A0 */  sb         $a0, %lo(D_8006A004)($at)
    /* 1ED1C 8002E51C 80200400 */  sll        $a0, $a0, 2
    /* 1ED20 8002E520 0780013C */  lui        $at, %hi(D_8006A006)
    /* 1ED24 8002E524 06A023A0 */  sb         $v1, %lo(D_8006A006)($at)
    /* 1ED28 8002E528 0780013C */  lui        $at, %hi(D_8006A007)
    /* 1ED2C 8002E52C 07A022A0 */  sb         $v0, %lo(D_8006A007)($at)
    /* 1ED30 8002E530 0680013C */  lui        $at, %hi(D_80060335)
    /* 1ED34 8002E534 21082400 */  addu       $at, $at, $a0
    /* 1ED38 8002E538 35032390 */  lbu        $v1, %lo(D_80060335)($at)
    /* 1ED3C 8002E53C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1ED40 8002E540 2B104300 */  sltu       $v0, $v0, $v1
    /* 1ED44 8002E544 06004014 */  bnez       $v0, .L8002E560
    /* 1ED48 8002E548 00000000 */   nop
    /* 1ED4C 8002E54C 0680013C */  lui        $at, %hi(D_80060334)
    /* 1ED50 8002E550 21082400 */  addu       $at, $at, $a0
    /* 1ED54 8002E554 34032290 */  lbu        $v0, %lo(D_80060334)($at)
    /* 1ED58 8002E558 0780013C */  lui        $at, %hi(D_8006A007)
    /* 1ED5C 8002E55C 07A022A0 */  sb         $v0, %lo(D_8006A007)($at)
  .L8002E560:
    /* 1ED60 8002E560 0800E003 */  jr         $ra
    /* 1ED64 8002E564 00000000 */   nop
endlabel func_8002E440
