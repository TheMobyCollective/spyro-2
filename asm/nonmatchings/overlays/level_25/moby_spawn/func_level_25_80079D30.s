.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_25_80079D30, 0xAD0

glabel func_level_25_80079D30
    /* 1BD22CC 80079D30 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 1BD22D0 80079D34 7400B1AF */  sw         $s1, 0x74($sp)
    /* 1BD22D4 80079D38 21888000 */  addu       $s1, $a0, $zero
    /* 1BD22D8 80079D3C 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 1BD22DC 80079D40 2198A000 */  addu       $s3, $a1, $zero
    /* 1BD22E0 80079D44 8400BFAF */  sw         $ra, 0x84($sp)
    /* 1BD22E4 80079D48 8000B4AF */  sw         $s4, 0x80($sp)
    /* 1BD22E8 80079D4C 7800B2AF */  sw         $s2, 0x78($sp)
    /* 1BD22EC 80079D50 A404010C */  jal        func_80041290
    /* 1BD22F0 80079D54 7000B0AF */   sw        $s0, 0x70($sp)
    /* 1BD22F4 80079D58 21904000 */  addu       $s2, $v0, $zero
    /* 1BD22F8 80079D5C 03004016 */  bnez       $s2, .Llevel_25_80079D6C
    /* 1BD22FC 80079D60 21204002 */   addu      $a0, $s2, $zero
    /* 1BD2300 80079D64 F7E90108 */  j          .Llevel_25_8007A7DC
    /* 1BD2304 80079D68 21100000 */   addu      $v0, $zero, $zero
  .Llevel_25_80079D6C:
    /* 1BD2308 80079D6C 21280000 */  addu       $a1, $zero, $zero
    /* 1BD230C 80079D70 0000508E */  lw         $s0, 0x0($s2)
    /* 1BD2310 80079D74 F26C000C */  jal        func_8001B3C8
    /* 1BD2314 80079D78 58000624 */   addiu     $a2, $zero, 0x58
    /* 1BD2318 80079D7C 21280000 */  addu       $a1, $zero, $zero
    /* 1BD231C 80079D80 18000624 */  addiu      $a2, $zero, 0x18
    /* 1BD2320 80079D84 21200002 */  addu       $a0, $s0, $zero
    /* 1BD2324 80079D88 F26C000C */  jal        func_8001B3C8
    /* 1BD2328 80079D8C 000044AE */   sw        $a0, 0x0($s2)
    /* 1BD232C 80079D90 16006012 */  beqz       $s3, .Llevel_25_80079DEC
    /* 1BD2330 80079D94 360051A6 */   sh        $s1, 0x36($s2)
    /* 1BD2334 80079D98 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 1BD2338 80079D9C 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 1BD233C 80079DA0 00000000 */  nop
    /* 1BD2340 80079DA4 23206402 */  subu       $a0, $s3, $a0
    /* 1BD2344 80079DA8 40190400 */  sll        $v1, $a0, 5
    /* 1BD2348 80079DAC 23186400 */  subu       $v1, $v1, $a0
    /* 1BD234C 80079DB0 40190300 */  sll        $v1, $v1, 5
    /* 1BD2350 80079DB4 21186400 */  addu       $v1, $v1, $a0
    /* 1BD2354 80079DB8 C0100300 */  sll        $v0, $v1, 3
    /* 1BD2358 80079DBC 21186200 */  addu       $v1, $v1, $v0
    /* 1BD235C 80079DC0 C0130300 */  sll        $v0, $v1, 15
    /* 1BD2360 80079DC4 23104300 */  subu       $v0, $v0, $v1
    /* 1BD2364 80079DC8 80100200 */  sll        $v0, $v0, 2
    /* 1BD2368 80079DCC 21104400 */  addu       $v0, $v0, $a0
    /* 1BD236C 80079DD0 23100200 */  negu       $v0, $v0
    /* 1BD2370 80079DD4 C3180200 */  sra        $v1, $v0, 3
    /* 1BD2374 80079DD8 0001622C */  sltiu      $v0, $v1, 0x100
    /* 1BD2378 80079DDC 04004010 */  beqz       $v0, .Llevel_25_80079DF0
    /* 1BD237C 80079DE0 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 1BD2380 80079DE4 7DE70108 */  j          .Llevel_25_80079DF4
    /* 1BD2384 80079DE8 3A0043A2 */   sb        $v1, 0x3A($s2)
  .Llevel_25_80079DEC:
    /* 1BD2388 80079DEC FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_25_80079DF0:
    /* 1BD238C 80079DF0 3A0042A2 */  sb         $v0, 0x3A($s2)
  .Llevel_25_80079DF4:
    /* 1BD2390 80079DF4 72DD000C */  jal        func_800375C8
    /* 1BD2394 80079DF8 21204002 */   addu      $a0, $s2, $zero
    /* 1BD2398 80079DFC 62010224 */  addiu      $v0, $zero, 0x162
    /* 1BD239C 80079E00 0F012212 */  beq        $s1, $v0, .Llevel_25_8007A240
    /* 1BD23A0 80079E04 6301222A */   slti      $v0, $s1, 0x163
    /* 1BD23A4 80079E08 19004010 */  beqz       $v0, .Llevel_25_80079E70
    /* 1BD23A8 80079E0C 81000224 */   addiu     $v0, $zero, 0x81
    /* 1BD23AC 80079E10 A3002212 */  beq        $s1, $v0, .Llevel_25_8007A0A0
    /* 1BD23B0 80079E14 8200222A */   slti      $v0, $s1, 0x82
    /* 1BD23B4 80079E18 07004010 */  beqz       $v0, .Llevel_25_80079E38
    /* 1BD23B8 80079E1C 1D000224 */   addiu     $v0, $zero, 0x1D
    /* 1BD23BC 80079E20 5E002212 */  beq        $s1, $v0, .Llevel_25_80079F9C
    /* 1BD23C0 80079E24 78000224 */   addiu     $v0, $zero, 0x78
    /* 1BD23C4 80079E28 6A002212 */  beq        $s1, $v0, .Llevel_25_80079FD4
    /* 1BD23C8 80079E2C 00000000 */   nop
    /* 1BD23CC 80079E30 EBE90108 */  j          .Llevel_25_8007A7AC
    /* 1BD23D0 80079E34 00000000 */   nop
  .Llevel_25_80079E38:
    /* 1BD23D4 80079E38 04010224 */  addiu      $v0, $zero, 0x104
    /* 1BD23D8 80079E3C A9002212 */  beq        $s1, $v0, .Llevel_25_8007A0E4
    /* 1BD23DC 80079E40 0501222A */   slti      $v0, $s1, 0x105
    /* 1BD23E0 80079E44 05004010 */  beqz       $v0, .Llevel_25_80079E5C
    /* 1BD23E4 80079E48 D3000224 */   addiu     $v0, $zero, 0xD3
    /* 1BD23E8 80079E4C 21002212 */  beq        $s1, $v0, .Llevel_25_80079ED4
    /* 1BD23EC 80079E50 10000324 */   addiu     $v1, $zero, 0x10
    /* 1BD23F0 80079E54 EBE90108 */  j          .Llevel_25_8007A7AC
    /* 1BD23F4 80079E58 00000000 */   nop
  .Llevel_25_80079E5C:
    /* 1BD23F8 80079E5C 46010224 */  addiu      $v0, $zero, 0x146
    /* 1BD23FC 80079E60 B5002212 */  beq        $s1, $v0, .Llevel_25_8007A138
    /* 1BD2400 80079E64 0C004426 */   addiu     $a0, $s2, 0xC
    /* 1BD2404 80079E68 EBE90108 */  j          .Llevel_25_8007A7AC
    /* 1BD2408 80079E6C 00000000 */   nop
  .Llevel_25_80079E70:
    /* 1BD240C 80079E70 90010224 */  addiu      $v0, $zero, 0x190
    /* 1BD2410 80079E74 4B012212 */  beq        $s1, $v0, .Llevel_25_8007A3A4
    /* 1BD2414 80079E78 9101222A */   slti      $v0, $s1, 0x191
    /* 1BD2418 80079E7C 07004010 */  beqz       $v0, .Llevel_25_80079E9C
    /* 1BD241C 80079E80 63010224 */   addiu     $v0, $zero, 0x163
    /* 1BD2420 80079E84 47012212 */  beq        $s1, $v0, .Llevel_25_8007A3A4
    /* 1BD2424 80079E88 8C010224 */   addiu     $v0, $zero, 0x18C
    /* 1BD2428 80079E8C 34012212 */  beq        $s1, $v0, .Llevel_25_8007A360
    /* 1BD242C 80079E90 0C004426 */   addiu     $a0, $s2, 0xC
    /* 1BD2430 80079E94 EBE90108 */  j          .Llevel_25_8007A7AC
    /* 1BD2434 80079E98 00000000 */   nop
  .Llevel_25_80079E9C:
    /* 1BD2438 80079E9C E3010224 */  addiu      $v0, $zero, 0x1E3
    /* 1BD243C 80079EA0 79012212 */  beq        $s1, $v0, .Llevel_25_8007A488
    /* 1BD2440 80079EA4 E401222A */   slti      $v0, $s1, 0x1E4
    /* 1BD2444 80079EA8 05004010 */  beqz       $v0, .Llevel_25_80079EC0
    /* 1BD2448 80079EAC E2010224 */   addiu     $v0, $zero, 0x1E2
    /* 1BD244C 80079EB0 5E012212 */  beq        $s1, $v0, .Llevel_25_8007A42C
    /* 1BD2450 80079EB4 0C004426 */   addiu     $a0, $s2, 0xC
    /* 1BD2454 80079EB8 EBE90108 */  j          .Llevel_25_8007A7AC
    /* 1BD2458 80079EBC 00000000 */   nop
  .Llevel_25_80079EC0:
    /* 1BD245C 80079EC0 1D020224 */  addiu      $v0, $zero, 0x21D
    /* 1BD2460 80079EC4 25022212 */  beq        $s1, $v0, .Llevel_25_8007A75C
    /* 1BD2464 80079EC8 0C004426 */   addiu     $a0, $s2, 0xC
    /* 1BD2468 80079ECC EBE90108 */  j          .Llevel_25_8007A7AC
    /* 1BD246C 80079ED0 00000000 */   nop
  .Llevel_25_80079ED4:
    /* 1BD2470 80079ED4 36004286 */  lh         $v0, 0x36($s2)
    /* 1BD2474 80079ED8 0000518E */  lw         $s1, 0x0($s2)
    /* 1BD2478 80079EDC 18004314 */  bne        $v0, $v1, .Llevel_25_80079F40
    /* 1BD247C 80079EE0 00000000 */   nop
    /* 1BD2480 80079EE4 0680043C */  lui        $a0, %hi(D_8006712C)
    /* 1BD2484 80079EE8 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* 1BD2488 80079EEC 00000000 */  nop
    /* 1BD248C 80079EF0 04008228 */  slti       $v0, $a0, 0x4
    /* 1BD2490 80079EF4 03004010 */  beqz       $v0, .Llevel_25_80079F04
    /* 1BD2494 80079EF8 0A000324 */   addiu     $v1, $zero, 0xA
    /* 1BD2498 80079EFC C5E70108 */  j          .Llevel_25_80079F14
    /* 1BD249C 80079F00 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_25_80079F04:
    /* 1BD24A0 80079F04 07008228 */  slti       $v0, $a0, 0x7
    /* 1BD24A4 80079F08 02004010 */  beqz       $v0, .Llevel_25_80079F14
    /* 1BD24A8 80079F0C 00000000 */   nop
    /* 1BD24AC 80079F10 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_25_80079F14:
    /* 1BD24B0 80079F14 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* 1BD24B4 80079F18 AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* 1BD24B8 80079F1C 0000828C */  lw         $v0, 0x0($a0)
    /* 1BD24BC 80079F20 00000000 */  nop
    /* 1BD24C0 80079F24 01004224 */  addiu      $v0, $v0, 0x1
    /* 1BD24C4 80079F28 000082AC */  sw         $v0, 0x0($a0)
    /* 1BD24C8 80079F2C 2A104300 */  slt        $v0, $v0, $v1
    /* 1BD24CC 80079F30 03004014 */  bnez       $v0, .Llevel_25_80079F40
    /* 1BD24D0 80079F34 D3000224 */   addiu     $v0, $zero, 0xD3
    /* 1BD24D4 80079F38 000080AC */  sw         $zero, 0x0($a0)
    /* 1BD24D8 80079F3C 360042A6 */  sh         $v0, 0x36($s2)
  .Llevel_25_80079F40:
    /* 1BD24DC 80079F40 0E05010C */  jal        func_80041438
    /* 1BD24E0 80079F44 21204002 */   addu      $a0, $s2, $zero
    /* 1BD24E4 80079F48 0C005026 */  addiu      $s0, $s2, 0xC
    /* 1BD24E8 80079F4C 21200002 */  addu       $a0, $s0, $zero
    /* 1BD24EC 80079F50 6C6F000C */  jal        func_8001BDB0
    /* 1BD24F0 80079F54 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1BD24F4 80079F58 21202002 */  addu       $a0, $s1, $zero
    /* 1BD24F8 80079F5C 1400428E */  lw         $v0, 0x14($s2)
    /* 1BD24FC 80079F60 21280002 */  addu       $a1, $s0, $zero
    /* 1BD2500 80079F64 00024224 */  addiu      $v0, $v0, 0x200
    /* 1BD2504 80079F68 6C6F000C */  jal        func_8001BDB0
    /* 1BD2508 80079F6C 140042AE */   sw        $v0, 0x14($s2)
    /* 1BD250C 80079F70 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1BD2510 80079F74 1C0042AE */  sw         $v0, 0x1C($s2)
    /* 1BD2514 80079F78 02000224 */  addiu      $v0, $zero, 0x2
    /* 1BD2518 80079F7C 470042A2 */  sb         $v0, 0x47($s2)
    /* 1BD251C 80079F80 08070224 */  addiu      $v0, $zero, 0x708
    /* 1BD2520 80079F84 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 1BD2524 80079F88 4B67010C */  jal        func_80059D2C
    /* 1BD2528 80079F8C 110020A2 */   sb        $zero, 0x11($s1)
    /* 1BD252C 80079F90 FC004230 */  andi       $v0, $v0, 0xFC
    /* 1BD2530 80079F94 F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD2534 80079F98 120022A2 */   sb        $v0, 0x12($s1)
  .Llevel_25_80079F9C:
    /* 1BD2538 80079F9C 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1BD253C 80079FA0 0000508E */  lw         $s0, 0x0($s2)
    /* 1BD2540 80079FA4 6C6F000C */  jal        func_8001BDB0
    /* 1BD2544 80079FA8 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1BD2548 80079FAC 0E05010C */  jal        func_80041438
    /* 1BD254C 80079FB0 21204002 */   addu      $a0, $s2, $zero
    /* 1BD2550 80079FB4 18000224 */  addiu      $v0, $zero, 0x18
    /* 1BD2554 80079FB8 4C0042A2 */  sb         $v0, 0x4C($s2)
    /* 1BD2558 80079FBC 40000224 */  addiu      $v0, $zero, 0x40
    /* 1BD255C 80079FC0 4A0042A2 */  sb         $v0, 0x4A($s2)
    /* 1BD2560 80079FC4 02000224 */  addiu      $v0, $zero, 0x2
    /* 1BD2564 80079FC8 540042A2 */  sb         $v0, 0x54($s2)
    /* 1BD2568 80079FCC F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD256C 80079FD0 0C0000AE */   sw        $zero, 0xC($s0)
  .Llevel_25_80079FD4:
    /* 1BD2570 80079FD4 0000508E */  lw         $s0, 0x0($s2)
    /* 1BD2574 80079FD8 0E05010C */  jal        func_80041438
    /* 1BD2578 80079FDC 21204002 */   addu      $a0, $s2, $zero
    /* 1BD257C 80079FE0 78000224 */  addiu      $v0, $zero, 0x78
    /* 1BD2580 80079FE4 490040A2 */  sb         $zero, 0x49($s2)
    /* 1BD2584 80079FE8 000000A6 */  sh         $zero, 0x0($s0)
    /* 1BD2588 80079FEC 080000A6 */  sh         $zero, 0x8($s0)
    /* 1BD258C 80079FF0 060000A6 */  sh         $zero, 0x6($s0)
    /* 1BD2590 80079FF4 040000A6 */  sh         $zero, 0x4($s0)
    /* 1BD2594 80079FF8 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 1BD2598 80079FFC 100000AE */  sw         $zero, 0x10($s0)
    /* 1BD259C 8007A000 06006012 */  beqz       $s3, .Llevel_25_8007A01C
    /* 1BD25A0 8007A004 140000AE */   sw        $zero, 0x14($s0)
    /* 1BD25A4 8007A008 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1BD25A8 8007A00C 6C6F000C */  jal        func_8001BDB0
    /* 1BD25AC 8007A010 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1BD25B0 8007A014 26E80108 */  j          .Llevel_25_8007A098
    /* 1BD25B4 8007A018 FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_25_8007A01C:
    /* 1BD25B8 8007A01C 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1BD25BC 8007A020 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* 1BD25C0 8007A024 FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* 1BD25C4 8007A028 0000A390 */  lbu        $v1, 0x0($a1)
    /* 1BD25C8 8007A02C F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 1BD25CC 8007A030 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 1BD25D0 8007A034 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1BD25D4 8007A038 40180300 */  sll        $v1, $v1, 1
    /* 1BD25D8 8007A03C 0680013C */  lui        $at, %hi(D_80061C58)
    /* 1BD25DC 8007A040 21082300 */  addu       $at, $at, $v1
    /* 1BD25E0 8007A044 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* 1BD25E4 8007A048 1000A627 */  addiu      $a2, $sp, 0x10
    /* 1BD25E8 8007A04C 40110700 */  sll        $v0, $a3, 5
    /* 1BD25EC 8007A050 23104700 */  subu       $v0, $v0, $a3
    /* 1BD25F0 8007A054 80100200 */  sll        $v0, $v0, 2
    /* 1BD25F4 8007A058 21104700 */  addu       $v0, $v0, $a3
    /* 1BD25F8 8007A05C 43120200 */  sra        $v0, $v0, 9
    /* 1BD25FC 8007A060 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1BD2600 8007A064 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 1BD2604 8007A068 21082300 */  addu       $at, $at, $v1
    /* 1BD2608 8007A06C D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 1BD260C 8007A070 E8030224 */  addiu      $v0, $zero, 0x3E8
    /* 1BD2610 8007A074 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1BD2614 8007A078 40110300 */  sll        $v0, $v1, 5
    /* 1BD2618 8007A07C 23104300 */  subu       $v0, $v0, $v1
    /* 1BD261C 8007A080 80100200 */  sll        $v0, $v0, 2
    /* 1BD2620 8007A084 21104300 */  addu       $v0, $v0, $v1
    /* 1BD2624 8007A088 43120200 */  sra        $v0, $v0, 9
    /* 1BD2628 8007A08C 736F000C */  jal        func_8001BDCC
    /* 1BD262C 8007A090 1400A2AF */   sw        $v0, 0x14($sp)
    /* 1BD2630 8007A094 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_25_8007A098:
    /* 1BD2634 8007A098 F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD2638 8007A09C 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_25_8007A0A0:
    /* 1BD263C 8007A0A0 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1BD2640 8007A0A4 6C6F000C */  jal        func_8001BDB0
    /* 1BD2644 8007A0A8 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1BD2648 8007A0AC 0E05010C */  jal        func_80041438
    /* 1BD264C 8007A0B0 21204002 */   addu      $a0, $s2, $zero
    /* 1BD2650 8007A0B4 003F023C */  lui        $v0, (0x3F005080 >> 16)
    /* 1BD2654 8007A0B8 80504234 */  ori        $v0, $v0, (0x3F005080 & 0xFFFF)
    /* 1BD2658 8007A0BC 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 1BD265C 8007A0C0 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 1BD2660 8007A0C4 40000424 */  addiu      $a0, $zero, 0x40
    /* 1BD2664 8007A0C8 4F0044A2 */  sb         $a0, 0x4F($s2)
    /* 1BD2668 8007A0CC 540042AE */  sw         $v0, 0x54($s2)
    /* 1BD266C 8007A0D0 001C0300 */  sll        $v1, $v1, 16
    /* 1BD2670 8007A0D4 031D0300 */  sra        $v1, $v1, 20
    /* 1BD2674 8007A0D8 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 1BD2678 8007A0DC F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD267C 8007A0E0 460043A2 */   sb        $v1, 0x46($s2)
  .Llevel_25_8007A0E4:
    /* 1BD2680 8007A0E4 0E05010C */  jal        func_80041438
    /* 1BD2684 8007A0E8 21204002 */   addu      $a0, $s2, $zero
    /* 1BD2688 8007A0EC 02000224 */  addiu      $v0, $zero, 0x2
    /* 1BD268C 8007A0F0 0E006012 */  beqz       $s3, .Llevel_25_8007A12C
    /* 1BD2690 8007A0F4 540042A2 */   sb        $v0, 0x54($s2)
    /* 1BD2694 8007A0F8 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1BD2698 8007A0FC 0000428E */  lw         $v0, 0x0($s2)
    /* 1BD269C 8007A100 0C006526 */  addiu      $a1, $s3, 0xC
    /* 1BD26A0 8007A104 6C6F000C */  jal        func_8001BDB0
    /* 1BD26A4 8007A108 000053AC */   sw        $s3, 0x0($v0)
    /* 1BD26A8 8007A10C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1BD26AC 8007A110 4A0042A2 */  sb         $v0, 0x4A($s2)
    /* 1BD26B0 8007A114 1400428E */  lw         $v0, 0x14($s2)
    /* 1BD26B4 8007A118 08000324 */  addiu      $v1, $zero, 0x8
    /* 1BD26B8 8007A11C 4C0043A2 */  sb         $v1, 0x4C($s2)
    /* 1BD26BC 8007A120 00044224 */  addiu      $v0, $v0, 0x400
    /* 1BD26C0 8007A124 F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD26C4 8007A128 140042AE */   sw        $v0, 0x14($s2)
  .Llevel_25_8007A12C:
    /* 1BD26C8 8007A12C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1BD26CC 8007A130 F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD26D0 8007A134 1C0042AE */   sw        $v0, 0x1C($s2)
  .Llevel_25_8007A138:
    /* 1BD26D4 8007A138 0000508E */  lw         $s0, 0x0($s2)
    /* 1BD26D8 8007A13C 6C6F000C */  jal        func_8001BDB0
    /* 1BD26DC 8007A140 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1BD26E0 8007A144 0E05010C */  jal        func_80041438
    /* 1BD26E4 8007A148 21204002 */   addu      $a0, $s2, $zero
    /* 1BD26E8 8007A14C 10000224 */  addiu      $v0, $zero, 0x10
    /* 1BD26EC 8007A150 3B000324 */  addiu      $v1, $zero, 0x3B
    /* 1BD26F0 8007A154 000002A6 */  sh         $v0, 0x0($s0)
    /* 1BD26F4 8007A158 80000224 */  addiu      $v0, $zero, 0x80
    /* 1BD26F8 8007A15C 570043A2 */  sb         $v1, 0x57($s2)
    /* 1BD26FC 8007A160 540042A2 */  sb         $v0, 0x54($s2)
    /* 1BD2700 8007A164 550042A2 */  sb         $v0, 0x55($s2)
    /* 1BD2704 8007A168 560040A2 */  sb         $zero, 0x56($s2)
    /* 1BD2708 8007A16C 36006486 */  lh         $a0, 0x36($s3)
    /* 1BD270C 8007A170 98010224 */  addiu      $v0, $zero, 0x198
    /* 1BD2710 8007A174 04008210 */  beq        $a0, $v0, .Llevel_25_8007A188
    /* 1BD2714 8007A178 01000224 */   addiu     $v0, $zero, 0x1
    /* 1BD2718 8007A17C C2020224 */  addiu      $v0, $zero, 0x2C2
    /* 1BD271C 8007A180 05008214 */  bne        $a0, $v0, .Llevel_25_8007A198
    /* 1BD2720 8007A184 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_25_8007A188:
    /* 1BD2724 8007A188 020002A2 */  sb         $v0, 0x2($s0)
    /* 1BD2728 8007A18C 030002A2 */  sb         $v0, 0x3($s0)
    /* 1BD272C 8007A190 74E80108 */  j          .Llevel_25_8007A1D0
    /* 1BD2730 8007A194 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_25_8007A198:
    /* 1BD2734 8007A198 70020224 */  addiu      $v0, $zero, 0x270
    /* 1BD2738 8007A19C 0A008214 */  bne        $a0, $v0, .Llevel_25_8007A1C8
    /* 1BD273C 8007A1A0 60000224 */   addiu     $v0, $zero, 0x60
    /* 1BD2740 8007A1A4 02000224 */  addiu      $v0, $zero, 0x2
    /* 1BD2744 8007A1A8 020002A2 */  sb         $v0, 0x2($s0)
    /* 1BD2748 8007A1AC E0000224 */  addiu      $v0, $zero, 0xE0
    /* 1BD274C 8007A1B0 540042A2 */  sb         $v0, 0x54($s2)
    /* 1BD2750 8007A1B4 550042A2 */  sb         $v0, 0x55($s2)
    /* 1BD2754 8007A1B8 560042A2 */  sb         $v0, 0x56($s2)
    /* 1BD2758 8007A1BC 60000224 */  addiu      $v0, $zero, 0x60
    /* 1BD275C 8007A1C0 73E80108 */  j          .Llevel_25_8007A1CC
    /* 1BD2760 8007A1C4 570043A2 */   sb        $v1, 0x57($s2)
  .Llevel_25_8007A1C8:
    /* 1BD2764 8007A1C8 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_25_8007A1CC:
    /* 1BD2768 8007A1CC 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_25_8007A1D0:
    /* 1BD276C 8007A1D0 4F0042A2 */  sb         $v0, 0x4F($s2)
    /* 1BD2770 8007A1D4 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1BD2774 8007A1D8 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* 1BD2778 8007A1DC AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* 1BD277C 8007A1E0 21280002 */  addu       $a1, $s0, $zero
    /* 1BD2780 8007A1E4 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 1BD2784 8007A1E8 DB6F000C */  jal        func_8001BF6C
    /* 1BD2788 8007A1EC 470042A2 */   sb        $v0, 0x47($s2)
    /* 1BD278C 8007A1F0 21204000 */  addu       $a0, $v0, $zero
    /* 1BD2790 8007A1F4 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* 1BD2794 8007A1F8 B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* 1BD2798 8007A1FC 1400458E */  lw         $a1, 0x14($s2)
    /* 1BD279C 8007A200 21300000 */  addu       $a2, $zero, $zero
    /* 1BD27A0 8007A204 2E6D000C */  jal        func_8001B4B8
    /* 1BD27A4 8007A208 23284500 */   subu      $a1, $v0, $a1
    /* 1BD27A8 8007A20C 21300000 */  addu       $a2, $zero, $zero
    /* 1BD27AC 8007A210 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 1BD27B0 8007A214 450042A2 */  sb         $v0, 0x45($s2)
    /* 1BD27B4 8007A218 0000038E */  lw         $v1, 0x0($s0)
    /* 1BD27B8 8007A21C 0C00448E */  lw         $a0, 0xC($s2)
    /* 1BD27BC 8007A220 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* 1BD27C0 8007A224 B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* 1BD27C4 8007A228 1000458E */  lw         $a1, 0x10($s2)
    /* 1BD27C8 8007A22C 23206400 */  subu       $a0, $v1, $a0
    /* 1BD27CC 8007A230 2E6D000C */  jal        func_8001B4B8
    /* 1BD27D0 8007A234 23284500 */   subu      $a1, $v0, $a1
    /* 1BD27D4 8007A238 F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD27D8 8007A23C 460042A2 */   sb        $v0, 0x46($s2)
  .Llevel_25_8007A240:
    /* 1BD27DC 8007A240 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1BD27E0 8007A244 0C006526 */  addiu      $a1, $s3, 0xC
    /* 1BD27E4 8007A248 0000508E */  lw         $s0, 0x0($s2)
    /* 1BD27E8 8007A24C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1BD27EC 8007A250 6C6F000C */  jal        func_8001BDB0
    /* 1BD27F0 8007A254 4A0042A2 */   sb        $v0, 0x4A($s2)
    /* 1BD27F4 8007A258 44006292 */  lbu        $v0, 0x44($s3)
    /* 1BD27F8 8007A25C 00000000 */  nop
    /* 1BD27FC 8007A260 440042A2 */  sb         $v0, 0x44($s2)
    /* 1BD2800 8007A264 45006292 */  lbu        $v0, 0x45($s3)
    /* 1BD2804 8007A268 00000000 */  nop
    /* 1BD2808 8007A26C 450042A2 */  sb         $v0, 0x45($s2)
    /* 1BD280C 8007A270 46006292 */  lbu        $v0, 0x46($s3)
    /* 1BD2810 8007A274 00000000 */  nop
    /* 1BD2814 8007A278 460042A2 */  sb         $v0, 0x46($s2)
    /* 1BD2818 8007A27C 4C006292 */  lbu        $v0, 0x4C($s3)
    /* 1BD281C 8007A280 00000000 */  nop
    /* 1BD2820 8007A284 4C0042A2 */  sb         $v0, 0x4C($s2)
    /* 1BD2824 8007A288 4E006292 */  lbu        $v0, 0x4E($s3)
    /* 1BD2828 8007A28C 470040A2 */  sb         $zero, 0x47($s2)
    /* 1BD282C 8007A290 4E0042A2 */  sb         $v0, 0x4E($s2)
    /* 1BD2830 8007A294 040000AE */  sw         $zero, 0x4($s0)
    /* 1BD2834 8007A298 51004292 */  lbu        $v0, 0x51($s2)
    /* 1BD2838 8007A29C 00000000 */  nop
    /* 1BD283C 8007A2A0 12004014 */  bnez       $v0, .Llevel_25_8007A2EC
    /* 1BD2840 8007A2A4 21184000 */   addu      $v1, $v0, $zero
    /* 1BD2844 8007A2A8 21300000 */  addu       $a2, $zero, $zero
    /* 1BD2848 8007A2AC 0C00438E */  lw         $v1, 0xC($s2)
    /* 1BD284C 8007A2B0 0780043C */  lui        $a0, %hi(D_80069FF0)
    /* 1BD2850 8007A2B4 F09F848C */  lw         $a0, %lo(D_80069FF0)($a0)
    /* 1BD2854 8007A2B8 1000428E */  lw         $v0, 0x10($s2)
    /* 1BD2858 8007A2BC 0780053C */  lui        $a1, %hi(D_80069FF4)
    /* 1BD285C 8007A2C0 F49FA58C */  lw         $a1, %lo(D_80069FF4)($a1)
    /* 1BD2860 8007A2C4 23206400 */  subu       $a0, $v1, $a0
    /* 1BD2864 8007A2C8 2E6D000C */  jal        func_8001B4B8
    /* 1BD2868 8007A2CC 23284500 */   subu      $a1, $v0, $a1
    /* 1BD286C 8007A2D0 21204000 */  addu       $a0, $v0, $zero
    /* 1BD2870 8007A2D4 20000624 */  addiu      $a2, $zero, 0x20
    /* 1BD2874 8007A2D8 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* 1BD2878 8007A2DC FE9FA590 */  lbu        $a1, %lo(D_80069FFE)($a1)
    /* 1BD287C 8007A2E0 65E1000C */  jal        func_80038594
    /* 1BD2880 8007A2E4 40000724 */   addiu     $a3, $zero, 0x40
    /* 1BD2884 8007A2E8 21184000 */  addu       $v1, $v0, $zero
  .Llevel_25_8007A2EC:
    /* 1BD2888 8007A2EC 0780023C */  lui        $v0, %hi(D_8006A0AC)
    /* 1BD288C 8007A2F0 ACA0428C */  lw         $v0, %lo(D_8006A0AC)($v0)
    /* 1BD2890 8007A2F4 00000000 */  nop
    /* 1BD2894 8007A2F8 43210200 */  sra        $a0, $v0, 5
    /* 1BD2898 8007A2FC 00018228 */  slti       $v0, $a0, 0x100
    /* 1BD289C 8007A300 02004010 */  beqz       $v0, .Llevel_25_8007A30C
    /* 1BD28A0 8007A304 00000000 */   nop
    /* 1BD28A4 8007A308 00010424 */  addiu      $a0, $zero, 0x100
  .Llevel_25_8007A30C:
    /* 1BD28A8 8007A30C 40180300 */  sll        $v1, $v1, 1
    /* 1BD28AC 8007A310 0680013C */  lui        $at, %hi(D_80061C58)
    /* 1BD28B0 8007A314 21082300 */  addu       $at, $at, $v1
    /* 1BD28B4 8007A318 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 1BD28B8 8007A31C 00000000 */  nop
    /* 1BD28BC 8007A320 18004400 */  mult       $v0, $a0
    /* 1BD28C0 8007A324 12400000 */  mflo       $t0
    /* 1BD28C4 8007A328 03130800 */  sra        $v0, $t0, 12
    /* 1BD28C8 8007A32C 080002AE */  sw         $v0, 0x8($s0)
    /* 1BD28CC 8007A330 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 1BD28D0 8007A334 21082300 */  addu       $at, $at, $v1
    /* 1BD28D4 8007A338 D81B2284 */  lh         $v0, %lo(D_80061BD8)($at)
    /* 1BD28D8 8007A33C 00000000 */  nop
    /* 1BD28DC 8007A340 18004400 */  mult       $v0, $a0
    /* 1BD28E0 8007A344 21204002 */  addu       $a0, $s2, $zero
    /* 1BD28E4 8007A348 80000224 */  addiu      $v0, $zero, 0x80
    /* 1BD28E8 8007A34C 100002AE */  sw         $v0, 0x10($s0)
    /* 1BD28EC 8007A350 12400000 */  mflo       $t0
    /* 1BD28F0 8007A354 03130800 */  sra        $v0, $t0, 12
    /* 1BD28F4 8007A358 F4E90108 */  j          .Llevel_25_8007A7D0
    /* 1BD28F8 8007A35C 0C0002AE */   sw        $v0, 0xC($s0)
  .Llevel_25_8007A360:
    /* 1BD28FC 8007A360 0C006526 */  addiu      $a1, $s3, 0xC
    /* 1BD2900 8007A364 0000508E */  lw         $s0, 0x0($s2)
    /* 1BD2904 8007A368 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1BD2908 8007A36C 6C6F000C */  jal        func_8001BDB0
    /* 1BD290C 8007A370 4A0042A2 */   sb        $v0, 0x4A($s2)
    /* 1BD2910 8007A374 46006292 */  lbu        $v0, 0x46($s3)
    /* 1BD2914 8007A378 00000000 */  nop
    /* 1BD2918 8007A37C 460042A2 */  sb         $v0, 0x46($s2)
    /* 1BD291C 8007A380 4C006292 */  lbu        $v0, 0x4C($s3)
    /* 1BD2920 8007A384 00000000 */  nop
    /* 1BD2924 8007A388 4C0042A2 */  sb         $v0, 0x4C($s2)
    /* 1BD2928 8007A38C 4E006292 */  lbu        $v0, 0x4E($s3)
    /* 1BD292C 8007A390 21204002 */  addu       $a0, $s2, $zero
    /* 1BD2930 8007A394 0E05010C */  jal        func_80041438
    /* 1BD2934 8007A398 4E0042A2 */   sb        $v0, 0x4E($s2)
    /* 1BD2938 8007A39C F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD293C 8007A3A0 000013AE */   sw        $s3, 0x0($s0)
  .Llevel_25_8007A3A4:
    /* 1BD2940 8007A3A4 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1BD2944 8007A3A8 0C006526 */  addiu      $a1, $s3, 0xC
    /* 1BD2948 8007A3AC 0000508E */  lw         $s0, 0x0($s2)
    /* 1BD294C 8007A3B0 20000224 */  addiu      $v0, $zero, 0x20
    /* 1BD2950 8007A3B4 4C0042A2 */  sb         $v0, 0x4C($s2)
    /* 1BD2954 8007A3B8 03000224 */  addiu      $v0, $zero, 0x3
    /* 1BD2958 8007A3BC 6C6F000C */  jal        func_8001BDB0
    /* 1BD295C 8007A3C0 490042A2 */   sb        $v0, 0x49($s2)
    /* 1BD2960 8007A3C4 0E05010C */  jal        func_80041438
    /* 1BD2964 8007A3C8 21204002 */   addu      $a0, $s2, $zero
    /* 1BD2968 8007A3CC 46006292 */  lbu        $v0, 0x46($s3)
    /* 1BD296C 8007A3D0 4B67010C */  jal        func_80059D2C
    /* 1BD2970 8007A3D4 460042A2 */   sb        $v0, 0x46($s2)
    /* 1BD2974 8007A3D8 02004230 */  andi       $v0, $v0, 0x2
    /* 1BD2978 8007A3DC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1BD297C 8007A3E0 4B67010C */  jal        func_80059D2C
    /* 1BD2980 8007A3E4 060002A6 */   sh        $v0, 0x6($s0)
    /* 1BD2984 8007A3E8 02004230 */  andi       $v0, $v0, 0x2
    /* 1BD2988 8007A3EC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1BD298C 8007A3F0 4B67010C */  jal        func_80059D2C
    /* 1BD2990 8007A3F4 080002A6 */   sh        $v0, 0x8($s0)
    /* 1BD2994 8007A3F8 02004230 */  andi       $v0, $v0, 0x2
    /* 1BD2998 8007A3FC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1BD299C 8007A400 0A0002A6 */  sh         $v0, 0xA($s0)
    /* 1BD29A0 8007A404 1400628E */  lw         $v0, 0x14($s3)
    /* 1BD29A4 8007A408 00000000 */  nop
    /* 1BD29A8 8007A40C C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 1BD29AC 8007A410 4B67010C */  jal        func_80059D2C
    /* 1BD29B0 8007A414 100002AE */   sw        $v0, 0x10($s0)
    /* 1BD29B4 8007A418 0F004230 */  andi       $v0, $v0, 0xF
    /* 1BD29B8 8007A41C 20000324 */  addiu      $v1, $zero, 0x20
    /* 1BD29BC 8007A420 23186200 */  subu       $v1, $v1, $v0
    /* 1BD29C0 8007A424 F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD29C4 8007A428 0C0003AE */   sw        $v1, 0xC($s0)
  .Llevel_25_8007A42C:
    /* 1BD29C8 8007A42C 0000508E */  lw         $s0, 0x0($s2)
    /* 1BD29CC 8007A430 6C6F000C */  jal        func_8001BDB0
    /* 1BD29D0 8007A434 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1BD29D4 8007A438 0E05010C */  jal        func_80041438
    /* 1BD29D8 8007A43C 21204002 */   addu      $a0, $s2, $zero
    /* 1BD29DC 8007A440 10000224 */  addiu      $v0, $zero, 0x10
    /* 1BD29E0 8007A444 000002AE */  sw         $v0, 0x0($s0)
    /* 1BD29E4 8007A448 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 1BD29E8 8007A44C 570042A2 */  sb         $v0, 0x57($s2)
    /* 1BD29EC 8007A450 80000224 */  addiu      $v0, $zero, 0x80
    /* 1BD29F0 8007A454 540042A2 */  sb         $v0, 0x54($s2)
    /* 1BD29F4 8007A458 40000224 */  addiu      $v0, $zero, 0x40
    /* 1BD29F8 8007A45C 550042A2 */  sb         $v0, 0x55($s2)
    /* 1BD29FC 8007A460 4B67010C */  jal        func_80059D2C
    /* 1BD2A00 8007A464 560040A2 */   sb        $zero, 0x56($s2)
    /* 1BD2A04 8007A468 4B67010C */  jal        func_80059D2C
    /* 1BD2A08 8007A46C 450042A2 */   sb        $v0, 0x45($s2)
    /* 1BD2A0C 8007A470 460042A2 */  sb         $v0, 0x46($s2)
    /* 1BD2A10 8007A474 46000224 */  addiu      $v0, $zero, 0x46
    /* 1BD2A14 8007A478 4F0042A2 */  sb         $v0, 0x4F($s2)
    /* 1BD2A18 8007A47C 04000224 */  addiu      $v0, $zero, 0x4
    /* 1BD2A1C 8007A480 F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD2A20 8007A484 470042A2 */   sb        $v0, 0x47($s2)
  .Llevel_25_8007A488:
    /* 1BD2A24 8007A488 0000548E */  lw         $s4, 0x0($s2)
    /* 1BD2A28 8007A48C 0E05010C */  jal        func_80041438
    /* 1BD2A2C 8007A490 21204002 */   addu      $a0, $s2, $zero
    /* 1BD2A30 8007A494 40000224 */  addiu      $v0, $zero, 0x40
    /* 1BD2A34 8007A498 4C0042A2 */  sb         $v0, 0x4C($s2)
    /* 1BD2A38 8007A49C 9C006016 */  bnez       $s3, .Llevel_25_8007A710
    /* 1BD2A3C 8007A4A0 4E0042A2 */   sb        $v0, 0x4E($s2)
    /* 1BD2A40 8007A4A4 B8010224 */  addiu      $v0, $zero, 0x1B8
    /* 1BD2A44 8007A4A8 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* 1BD2A48 8007A4AC D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* 1BD2A4C 8007A4B0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1BD2A50 8007A4B4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1BD2A54 8007A4B8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1BD2A58 8007A4BC 0000A38C */  lw         $v1, 0x0($a1)
    /* 1BD2A5C 8007A4C0 07000224 */  addiu      $v0, $zero, 0x7
    /* 1BD2A60 8007A4C4 25006214 */  bne        $v1, $v0, .Llevel_25_8007A55C
    /* 1BD2A64 8007A4C8 0C004426 */   addiu     $a0, $s2, 0xC
    /* 1BD2A68 8007A4CC 0C005026 */  addiu      $s0, $s2, 0xC
    /* 1BD2A6C 8007A4D0 21200002 */  addu       $a0, $s0, $zero
    /* 1BD2A70 8007A4D4 6C6F000C */  jal        func_8001BDB0
    /* 1BD2A74 8007A4D8 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 1BD2A78 8007A4DC 4000A427 */  addiu      $a0, $sp, 0x40
    /* 1BD2A7C 8007A4E0 2000B127 */  addiu      $s1, $sp, 0x20
    /* 1BD2A80 8007A4E4 21282002 */  addu       $a1, $s1, $zero
    /* 1BD2A84 8007A4E8 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 1BD2A88 8007A4EC CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 1BD2A8C 8007A4F0 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* 1BD2A90 8007A4F4 CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* 1BD2A94 8007A4F8 21300000 */  addu       $a2, $zero, $zero
    /* 1BD2A98 8007A4FC 4000A0A3 */  sb         $zero, 0x40($sp)
    /* 1BD2A9C 8007A500 02190300 */  srl        $v1, $v1, 4
    /* 1BD2AA0 8007A504 00140200 */  sll        $v0, $v0, 16
    /* 1BD2AA4 8007A508 03150200 */  sra        $v0, $v0, 20
    /* 1BD2AA8 8007A50C 23100200 */  negu       $v0, $v0
    /* 1BD2AAC 8007A510 4100A2A3 */  sb         $v0, 0x41($sp)
    /* 1BD2AB0 8007A514 B26D000C */  jal        func_8001B6C8
    /* 1BD2AB4 8007A518 4200A3A3 */   sb        $v1, 0x42($sp)
    /* 1BD2AB8 8007A51C 21202002 */  addu       $a0, $s1, $zero
    /* 1BD2ABC 8007A520 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1BD2AC0 8007A524 696E000C */  jal        func_8001B9A4
    /* 1BD2AC4 8007A528 2130A000 */   addu      $a2, $a1, $zero
    /* 1BD2AC8 8007A52C 21200002 */  addu       $a0, $s0, $zero
    /* 1BD2ACC 8007A530 21280002 */  addu       $a1, $s0, $zero
    /* 1BD2AD0 8007A534 736F000C */  jal        func_8001BDCC
    /* 1BD2AD4 8007A538 1000A627 */   addiu     $a2, $sp, 0x10
    /* 1BD2AD8 8007A53C 21200002 */  addu       $a0, $s0, $zero
    /* 1BD2ADC 8007A540 21280002 */  addu       $a1, $s0, $zero
    /* 1BD2AE0 8007A544 736F000C */  jal        func_8001BDCC
    /* 1BD2AE4 8007A548 1000A627 */   addiu     $a2, $sp, 0x10
    /* 1BD2AE8 8007A54C 21200002 */  addu       $a0, $s0, $zero
    /* 1BD2AEC 8007A550 21288000 */  addu       $a1, $a0, $zero
    /* 1BD2AF0 8007A554 7FE90108 */  j          .Llevel_25_8007A5FC
    /* 1BD2AF4 8007A558 1000A627 */   addiu     $a2, $sp, 0x10
  .Llevel_25_8007A55C:
    /* 1BD2AF8 8007A55C 6C6F000C */  jal        func_8001BDB0
    /* 1BD2AFC 8007A560 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 1BD2B00 8007A564 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 1BD2B04 8007A568 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 1BD2B08 8007A56C 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 1BD2B0C 8007A570 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 1BD2B10 8007A574 6800A0A3 */  sb         $zero, 0x68($sp)
    /* 1BD2B14 8007A578 07004014 */  bnez       $v0, .Llevel_25_8007A598
    /* 1BD2B18 8007A57C 6900A3A3 */   sb        $v1, 0x69($sp)
    /* 1BD2B1C 8007A580 FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 1BD2B20 8007A584 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1BD2B24 8007A588 F900422C */  sltiu      $v0, $v0, 0xF9
    /* 1BD2B28 8007A58C 03004014 */  bnez       $v0, .Llevel_25_8007A59C
    /* 1BD2B2C 8007A590 6800A427 */   addiu     $a0, $sp, 0x68
    /* 1BD2B30 8007A594 6900A0A3 */  sb         $zero, 0x69($sp)
  .Llevel_25_8007A598:
    /* 1BD2B34 8007A598 6800A427 */  addiu      $a0, $sp, 0x68
  .Llevel_25_8007A59C:
    /* 1BD2B38 8007A59C 4800B027 */  addiu      $s0, $sp, 0x48
    /* 1BD2B3C 8007A5A0 21280002 */  addu       $a1, $s0, $zero
    /* 1BD2B40 8007A5A4 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* 1BD2B44 8007A5A8 FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* 1BD2B48 8007A5AC 00002292 */  lbu        $v0, 0x0($s1)
    /* 1BD2B4C 8007A5B0 21300000 */  addu       $a2, $zero, $zero
    /* 1BD2B50 8007A5B4 B26D000C */  jal        func_8001B6C8
    /* 1BD2B54 8007A5B8 6A00A2A3 */   sb        $v0, 0x6A($sp)
    /* 1BD2B58 8007A5BC 21200002 */  addu       $a0, $s0, $zero
    /* 1BD2B5C 8007A5C0 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1BD2B60 8007A5C4 696E000C */  jal        func_8001B9A4
    /* 1BD2B64 8007A5C8 2130A000 */   addu      $a2, $a1, $zero
    /* 1BD2B68 8007A5CC 21200002 */  addu       $a0, $s0, $zero
    /* 1BD2B6C 8007A5D0 0C005026 */  addiu      $s0, $s2, 0xC
    /* 1BD2B70 8007A5D4 21280002 */  addu       $a1, $s0, $zero
    /* 1BD2B74 8007A5D8 21300002 */  addu       $a2, $s0, $zero
    /* 1BD2B78 8007A5DC F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 1BD2B7C 8007A5E0 0C0042AE */  sw         $v0, 0xC($s2)
    /* 1BD2B80 8007A5E4 100040AE */  sw         $zero, 0x10($s2)
    /* 1BD2B84 8007A5E8 696E000C */  jal        func_8001B9A4
    /* 1BD2B88 8007A5EC 140040AE */   sw        $zero, 0x14($s2)
    /* 1BD2B8C 8007A5F0 21200002 */  addu       $a0, $s0, $zero
    /* 1BD2B90 8007A5F4 21288000 */  addu       $a1, $a0, $zero
    /* 1BD2B94 8007A5F8 F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_25_8007A5FC:
    /* 1BD2B98 8007A5FC 736F000C */  jal        func_8001BDCC
    /* 1BD2B9C 8007A600 00000000 */   nop
    /* 1BD2BA0 8007A604 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1BD2BA4 8007A608 886E000C */  jal        func_8001BA20
    /* 1BD2BA8 8007A60C 21280000 */   addu      $a1, $zero, $zero
    /* 1BD2BAC 8007A610 21204000 */  addu       $a0, $v0, $zero
    /* 1BD2BB0 8007A614 1800A58F */  lw         $a1, 0x18($sp)
    /* 1BD2BB4 8007A618 2E6D000C */  jal        func_8001B4B8
    /* 1BD2BB8 8007A61C 21300000 */   addu      $a2, $zero, $zero
    /* 1BD2BBC 8007A620 450042A2 */  sb         $v0, 0x45($s2)
    /* 1BD2BC0 8007A624 1000A48F */  lw         $a0, 0x10($sp)
    /* 1BD2BC4 8007A628 1400A58F */  lw         $a1, 0x14($sp)
    /* 1BD2BC8 8007A62C 2E6D000C */  jal        func_8001B4B8
    /* 1BD2BCC 8007A630 21300000 */   addu      $a2, $zero, $zero
    /* 1BD2BD0 8007A634 460042A2 */  sb         $v0, 0x46($s2)
    /* 1BD2BD4 8007A638 1000A28F */  lw         $v0, 0x10($sp)
    /* 1BD2BD8 8007A63C 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 1BD2BDC 8007A640 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 1BD2BE0 8007A644 0680043C */  lui        $a0, %hi(D_800670BC)
    /* 1BD2BE4 8007A648 BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* 1BD2BE8 8007A64C 000082A6 */  sh         $v0, 0x0($s4)
    /* 1BD2BEC 8007A650 1400A28F */  lw         $v0, 0x14($sp)
    /* 1BD2BF0 8007A654 00000000 */  nop
    /* 1BD2BF4 8007A658 020082A6 */  sh         $v0, 0x2($s4)
    /* 1BD2BF8 8007A65C 1800A28F */  lw         $v0, 0x18($sp)
    /* 1BD2BFC 8007A660 00000000 */  nop
    /* 1BD2C00 8007A664 040082A6 */  sh         $v0, 0x4($s4)
    /* 1BD2C04 8007A668 2B106400 */  sltu       $v0, $v1, $a0
    /* 1BD2C08 8007A66C 0A004010 */  beqz       $v0, .Llevel_25_8007A698
    /* 1BD2C0C 8007A670 44010524 */   addiu     $a1, $zero, 0x144
    /* 1BD2C10 8007A674 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_25_8007A678:
    /* 1BD2C14 8007A678 36006284 */  lh         $v0, 0x36($v1)
    /* 1BD2C18 8007A67C 00000000 */  nop
    /* 1BD2C1C 8007A680 05004610 */  beq        $v0, $a2, .Llevel_25_8007A698
    /* 1BD2C20 8007A684 00000000 */   nop
    /* 1BD2C24 8007A688 58006324 */  addiu      $v1, $v1, 0x58
    /* 1BD2C28 8007A68C 2B106400 */  sltu       $v0, $v1, $a0
    /* 1BD2C2C 8007A690 F9FF4014 */  bnez       $v0, .Llevel_25_8007A678
    /* 1BD2C30 8007A694 00000000 */   nop
  .Llevel_25_8007A698:
    /* 1BD2C34 8007A698 13006010 */  beqz       $v1, .Llevel_25_8007A6E8
    /* 1BD2C38 8007A69C 40100500 */   sll       $v0, $a1, 1
    /* 1BD2C3C 8007A6A0 0000678C */  lw         $a3, 0x0($v1)
    /* 1BD2C40 8007A6A4 21104500 */  addu       $v0, $v0, $a1
    /* 1BD2C44 8007A6A8 0000E38C */  lw         $v1, 0x0($a3)
    /* 1BD2C48 8007A6AC 40100200 */  sll        $v0, $v0, 1
    /* 1BD2C4C 8007A6B0 21186500 */  addu       $v1, $v1, $a1
    /* 1BD2C50 8007A6B4 0000E3AC */  sw         $v1, 0x0($a3)
    /* 1BD2C54 8007A6B8 2A186200 */  slt        $v1, $v1, $v0
    /* 1BD2C58 8007A6BC 02006014 */  bnez       $v1, .Llevel_25_8007A6C8
    /* 1BD2C5C 8007A6C0 10008426 */   addiu     $a0, $s4, 0x10
    /* 1BD2C60 8007A6C4 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_25_8007A6C8:
    /* 1BD2C64 8007A6C8 0400E524 */  addiu      $a1, $a3, 0x4
    /* 1BD2C68 8007A6CC 0000E28C */  lw         $v0, 0x0($a3)
    /* 1BD2C6C 8007A6D0 08000624 */  addiu      $a2, $zero, 0x8
    /* 1BD2C70 8007A6D4 0C004224 */  addiu      $v0, $v0, 0xC
    /* 1BD2C74 8007A6D8 2110E200 */  addu       $v0, $a3, $v0
    /* 1BD2C78 8007A6DC 080082AE */  sw         $v0, 0x8($s4)
    /* 1BD2C7C 8007A6E0 036D000C */  jal        func_8001B40C
    /* 1BD2C80 8007A6E4 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_25_8007A6E8:
    /* 1BD2C84 8007A6E8 21204002 */  addu       $a0, $s2, $zero
    /* 1BD2C88 8007A6EC 21280000 */  addu       $a1, $zero, $zero
    /* 1BD2C8C 8007A6F0 21300000 */  addu       $a2, $zero, $zero
    /* 1BD2C90 8007A6F4 6E000224 */  addiu      $v0, $zero, 0x6E
    /* 1BD2C94 8007A6F8 070082A2 */  sb         $v0, 0x7($s4)
    /* 1BD2C98 8007A6FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 1BD2C9C 8007A700 9241010C */  jal        func_80050648
    /* 1BD2CA0 8007A704 4B0042A2 */   sb        $v0, 0x4B($s2)
    /* 1BD2CA4 8007A708 F7E90108 */  j          .Llevel_25_8007A7DC
    /* 1BD2CA8 8007A70C 21104002 */   addu      $v0, $s2, $zero
  .Llevel_25_8007A710:
    /* 1BD2CAC 8007A710 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1BD2CB0 8007A714 6C6F000C */  jal        func_8001BDB0
    /* 1BD2CB4 8007A718 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1BD2CB8 8007A71C 30000224 */  addiu      $v0, $zero, 0x30
    /* 1BD2CBC 8007A720 070082A2 */  sb         $v0, 0x7($s4)
    /* 1BD2CC0 8007A724 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 1BD2CC4 8007A728 4F0042A2 */  sb         $v0, 0x4F($s2)
    /* 1BD2CC8 8007A72C 07008392 */  lbu        $v1, 0x7($s4)
    /* 1BD2CCC 8007A730 00000000 */  nop
    /* 1BD2CD0 8007A734 40100300 */  sll        $v0, $v1, 1
    /* 1BD2CD4 8007A738 21104300 */  addu       $v0, $v0, $v1
    /* 1BD2CD8 8007A73C 43100200 */  sra        $v0, $v0, 1
    /* 1BD2CDC 8007A740 540042A2 */  sb         $v0, 0x54($s2)
    /* 1BD2CE0 8007A744 07008392 */  lbu        $v1, 0x7($s4)
    /* 1BD2CE4 8007A748 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 1BD2CE8 8007A74C 560040A2 */  sb         $zero, 0x56($s2)
    /* 1BD2CEC 8007A750 570042A2 */  sb         $v0, 0x57($s2)
    /* 1BD2CF0 8007A754 F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD2CF4 8007A758 550043A2 */   sb        $v1, 0x55($s2)
  .Llevel_25_8007A75C:
    /* 1BD2CF8 8007A75C 0000508E */  lw         $s0, 0x0($s2)
    /* 1BD2CFC 8007A760 6C6F000C */  jal        func_8001BDB0
    /* 1BD2D00 8007A764 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1BD2D04 8007A768 0E05010C */  jal        func_80041438
    /* 1BD2D08 8007A76C 21204002 */   addu      $a0, $s2, $zero
    /* 1BD2D0C 8007A770 18000224 */  addiu      $v0, $zero, 0x18
    /* 1BD2D10 8007A774 000002AE */  sw         $v0, 0x0($s0)
    /* 1BD2D14 8007A778 30000224 */  addiu      $v0, $zero, 0x30
    /* 1BD2D18 8007A77C 570042A2 */  sb         $v0, 0x57($s2)
    /* 1BD2D1C 8007A780 64000224 */  addiu      $v0, $zero, 0x64
    /* 1BD2D20 8007A784 540040A2 */  sb         $zero, 0x54($s2)
    /* 1BD2D24 8007A788 550040A2 */  sb         $zero, 0x55($s2)
    /* 1BD2D28 8007A78C 560040A2 */  sb         $zero, 0x56($s2)
    /* 1BD2D2C 8007A790 4F0042A2 */  sb         $v0, 0x4F($s2)
    /* 1BD2D30 8007A794 4B67010C */  jal        func_80059D2C
    /* 1BD2D34 8007A798 470040A2 */   sb        $zero, 0x47($s2)
    /* 1BD2D38 8007A79C 4B67010C */  jal        func_80059D2C
    /* 1BD2D3C 8007A7A0 450042A2 */   sb        $v0, 0x45($s2)
    /* 1BD2D40 8007A7A4 F6E90108 */  j          .Llevel_25_8007A7D8
    /* 1BD2D44 8007A7A8 460042A2 */   sb        $v0, 0x46($s2)
  .Llevel_25_8007A7AC:
    /* 1BD2D48 8007A7AC 03006012 */  beqz       $s3, .Llevel_25_8007A7BC
    /* 1BD2D4C 8007A7B0 0C004426 */   addiu     $a0, $s2, 0xC
    /* 1BD2D50 8007A7B4 F1E90108 */  j          .Llevel_25_8007A7C4
    /* 1BD2D54 8007A7B8 0C006526 */   addiu     $a1, $s3, 0xC
  .Llevel_25_8007A7BC:
    /* 1BD2D58 8007A7BC 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1BD2D5C 8007A7C0 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_25_8007A7C4:
    /* 1BD2D60 8007A7C4 6C6F000C */  jal        func_8001BDB0
    /* 1BD2D64 8007A7C8 00000000 */   nop
    /* 1BD2D68 8007A7CC 21204002 */  addu       $a0, $s2, $zero
  .Llevel_25_8007A7D0:
    /* 1BD2D6C 8007A7D0 0E05010C */  jal        func_80041438
    /* 1BD2D70 8007A7D4 00000000 */   nop
  .Llevel_25_8007A7D8:
    /* 1BD2D74 8007A7D8 21104002 */  addu       $v0, $s2, $zero
  .Llevel_25_8007A7DC:
    /* 1BD2D78 8007A7DC 8400BF8F */  lw         $ra, 0x84($sp)
    /* 1BD2D7C 8007A7E0 8000B48F */  lw         $s4, 0x80($sp)
    /* 1BD2D80 8007A7E4 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 1BD2D84 8007A7E8 7800B28F */  lw         $s2, 0x78($sp)
    /* 1BD2D88 8007A7EC 7400B18F */  lw         $s1, 0x74($sp)
    /* 1BD2D8C 8007A7F0 7000B08F */  lw         $s0, 0x70($sp)
    /* 1BD2D90 8007A7F4 8800BD27 */  addiu      $sp, $sp, 0x88
    /* 1BD2D94 8007A7F8 0800E003 */  jr         $ra
    /* 1BD2D98 8007A7FC 00000000 */   nop
endlabel func_level_25_80079D30
