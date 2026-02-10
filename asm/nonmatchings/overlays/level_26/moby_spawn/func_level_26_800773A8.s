.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_26_800773A8, 0xB74

glabel func_level_26_800773A8
    /* 1DBA144 800773A8 48FFBD27 */  addiu      $sp, $sp, -0xB8
    /* 1DBA148 800773AC 9400B1AF */  sw         $s1, 0x94($sp)
    /* 1DBA14C 800773B0 21888000 */  addu       $s1, $a0, $zero
    /* 1DBA150 800773B4 9C00B3AF */  sw         $s3, 0x9C($sp)
    /* 1DBA154 800773B8 2198A000 */  addu       $s3, $a1, $zero
    /* 1DBA158 800773BC B400BFAF */  sw         $ra, 0xB4($sp)
    /* 1DBA15C 800773C0 B000BEAF */  sw         $fp, 0xB0($sp)
    /* 1DBA160 800773C4 AC00B7AF */  sw         $s7, 0xAC($sp)
    /* 1DBA164 800773C8 A800B6AF */  sw         $s6, 0xA8($sp)
    /* 1DBA168 800773CC A400B5AF */  sw         $s5, 0xA4($sp)
    /* 1DBA16C 800773D0 A000B4AF */  sw         $s4, 0xA0($sp)
    /* 1DBA170 800773D4 9800B2AF */  sw         $s2, 0x98($sp)
    /* 1DBA174 800773D8 A404010C */  jal        func_80041290
    /* 1DBA178 800773DC 9000B0AF */   sw        $s0, 0x90($sp)
    /* 1DBA17C 800773E0 21904000 */  addu       $s2, $v0, $zero
    /* 1DBA180 800773E4 03004016 */  bnez       $s2, .Llevel_26_800773F4
    /* 1DBA184 800773E8 21204002 */   addu      $a0, $s2, $zero
    /* 1DBA188 800773EC BADF0108 */  j          .Llevel_26_80077EE8
    /* 1DBA18C 800773F0 21100000 */   addu      $v0, $zero, $zero
  .Llevel_26_800773F4:
    /* 1DBA190 800773F4 21280000 */  addu       $a1, $zero, $zero
    /* 1DBA194 800773F8 0000508E */  lw         $s0, 0x0($s2)
    /* 1DBA198 800773FC F26C000C */  jal        func_8001B3C8
    /* 1DBA19C 80077400 58000624 */   addiu     $a2, $zero, 0x58
    /* 1DBA1A0 80077404 21280000 */  addu       $a1, $zero, $zero
    /* 1DBA1A4 80077408 18000624 */  addiu      $a2, $zero, 0x18
    /* 1DBA1A8 8007740C 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA1AC 80077410 F26C000C */  jal        func_8001B3C8
    /* 1DBA1B0 80077414 000044AE */   sw        $a0, 0x0($s2)
    /* 1DBA1B4 80077418 16006012 */  beqz       $s3, .Llevel_26_80077474
    /* 1DBA1B8 8007741C 360051A6 */   sh        $s1, 0x36($s2)
    /* 1DBA1BC 80077420 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 1DBA1C0 80077424 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 1DBA1C4 80077428 00000000 */  nop
    /* 1DBA1C8 8007742C 23206402 */  subu       $a0, $s3, $a0
    /* 1DBA1CC 80077430 40190400 */  sll        $v1, $a0, 5
    /* 1DBA1D0 80077434 23186400 */  subu       $v1, $v1, $a0
    /* 1DBA1D4 80077438 40190300 */  sll        $v1, $v1, 5
    /* 1DBA1D8 8007743C 21186400 */  addu       $v1, $v1, $a0
    /* 1DBA1DC 80077440 C0100300 */  sll        $v0, $v1, 3
    /* 1DBA1E0 80077444 21186200 */  addu       $v1, $v1, $v0
    /* 1DBA1E4 80077448 C0130300 */  sll        $v0, $v1, 15
    /* 1DBA1E8 8007744C 23104300 */  subu       $v0, $v0, $v1
    /* 1DBA1EC 80077450 80100200 */  sll        $v0, $v0, 2
    /* 1DBA1F0 80077454 21104400 */  addu       $v0, $v0, $a0
    /* 1DBA1F4 80077458 23100200 */  negu       $v0, $v0
    /* 1DBA1F8 8007745C C3180200 */  sra        $v1, $v0, 3
    /* 1DBA1FC 80077460 0001622C */  sltiu      $v0, $v1, 0x100
    /* 1DBA200 80077464 04004010 */  beqz       $v0, .Llevel_26_80077478
    /* 1DBA204 80077468 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 1DBA208 8007746C 1FDD0108 */  j          .Llevel_26_8007747C
    /* 1DBA20C 80077470 3A0043A2 */   sb        $v1, 0x3A($s2)
  .Llevel_26_80077474:
    /* 1DBA210 80077474 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_26_80077478:
    /* 1DBA214 80077478 3A0042A2 */  sb         $v0, 0x3A($s2)
  .Llevel_26_8007747C:
    /* 1DBA218 8007747C 72DD000C */  jal        func_800375C8
    /* 1DBA21C 80077480 21204002 */   addu      $a0, $s2, $zero
    /* 1DBA220 80077484 46010224 */  addiu      $v0, $zero, 0x146
    /* 1DBA224 80077488 3B012212 */  beq        $s1, $v0, .Llevel_26_80077978
    /* 1DBA228 8007748C 4701222A */   slti      $v0, $s1, 0x147
    /* 1DBA22C 80077490 12004010 */  beqz       $v0, .Llevel_26_800774DC
    /* 1DBA230 80077494 90000224 */   addiu     $v0, $zero, 0x90
    /* 1DBA234 80077498 88002212 */  beq        $s1, $v0, .Llevel_26_800776BC
    /* 1DBA238 8007749C 9100222A */   slti      $v0, $s1, 0x91
    /* 1DBA23C 800774A0 07004010 */  beqz       $v0, .Llevel_26_800774C0
    /* 1DBA240 800774A4 10000224 */   addiu     $v0, $zero, 0x10
    /* 1DBA244 800774A8 1E002212 */  beq        $s1, $v0, .Llevel_26_80077524
    /* 1DBA248 800774AC 78000224 */   addiu     $v0, $zero, 0x78
    /* 1DBA24C 800774B0 4F002212 */  beq        $s1, $v0, .Llevel_26_800775F0
    /* 1DBA250 800774B4 00000000 */   nop
    /* 1DBA254 800774B8 AEDF0108 */  j          .Llevel_26_80077EB8
    /* 1DBA258 800774BC 00000000 */   nop
  .Llevel_26_800774C0:
    /* 1DBA25C 800774C0 D3000224 */  addiu      $v0, $zero, 0xD3
    /* 1DBA260 800774C4 17002212 */  beq        $s1, $v0, .Llevel_26_80077524
    /* 1DBA264 800774C8 04010224 */   addiu     $v0, $zero, 0x104
    /* 1DBA268 800774CC 15012212 */  beq        $s1, $v0, .Llevel_26_80077924
    /* 1DBA26C 800774D0 00000000 */   nop
    /* 1DBA270 800774D4 AEDF0108 */  j          .Llevel_26_80077EB8
    /* 1DBA274 800774D8 00000000 */   nop
  .Llevel_26_800774DC:
    /* 1DBA278 800774DC 14020224 */  addiu      $v0, $zero, 0x214
    /* 1DBA27C 800774E0 36022212 */  beq        $s1, $v0, .Llevel_26_80077DBC
    /* 1DBA280 800774E4 1502222A */   slti      $v0, $s1, 0x215
    /* 1DBA284 800774E8 07004010 */  beqz       $v0, .Llevel_26_80077508
    /* 1DBA288 800774EC E2010224 */   addiu     $v0, $zero, 0x1E2
    /* 1DBA28C 800774F0 64012212 */  beq        $s1, $v0, .Llevel_26_80077A84
    /* 1DBA290 800774F4 E3010224 */   addiu     $v0, $zero, 0x1E3
    /* 1DBA294 800774F8 7A012212 */  beq        $s1, $v0, .Llevel_26_80077AE4
    /* 1DBA298 800774FC 00000000 */   nop
    /* 1DBA29C 80077500 AEDF0108 */  j          .Llevel_26_80077EB8
    /* 1DBA2A0 80077504 00000000 */   nop
  .Llevel_26_80077508:
    /* 1DBA2A4 80077508 19020224 */  addiu      $v0, $zero, 0x219
    /* 1DBA2A8 8007750C 4E022212 */  beq        $s1, $v0, .Llevel_26_80077E48
    /* 1DBA2AC 80077510 1D020224 */   addiu     $v0, $zero, 0x21D
    /* 1DBA2B0 80077514 54022212 */  beq        $s1, $v0, .Llevel_26_80077E68
    /* 1DBA2B4 80077518 0C004426 */   addiu     $a0, $s2, 0xC
    /* 1DBA2B8 8007751C AEDF0108 */  j          .Llevel_26_80077EB8
    /* 1DBA2BC 80077520 00000000 */   nop
  .Llevel_26_80077524:
    /* 1DBA2C0 80077524 10000324 */  addiu      $v1, $zero, 0x10
    /* 1DBA2C4 80077528 36004286 */  lh         $v0, 0x36($s2)
    /* 1DBA2C8 8007752C 0000518E */  lw         $s1, 0x0($s2)
    /* 1DBA2CC 80077530 18004314 */  bne        $v0, $v1, .Llevel_26_80077594
    /* 1DBA2D0 80077534 00000000 */   nop
    /* 1DBA2D4 80077538 0680043C */  lui        $a0, %hi(D_8006712C)
    /* 1DBA2D8 8007753C 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* 1DBA2DC 80077540 00000000 */  nop
    /* 1DBA2E0 80077544 04008228 */  slti       $v0, $a0, 0x4
    /* 1DBA2E4 80077548 03004010 */  beqz       $v0, .Llevel_26_80077558
    /* 1DBA2E8 8007754C 0A000324 */   addiu     $v1, $zero, 0xA
    /* 1DBA2EC 80077550 5ADD0108 */  j          .Llevel_26_80077568
    /* 1DBA2F0 80077554 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_26_80077558:
    /* 1DBA2F4 80077558 07008228 */  slti       $v0, $a0, 0x7
    /* 1DBA2F8 8007755C 02004010 */  beqz       $v0, .Llevel_26_80077568
    /* 1DBA2FC 80077560 00000000 */   nop
    /* 1DBA300 80077564 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_26_80077568:
    /* 1DBA304 80077568 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* 1DBA308 8007756C AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* 1DBA30C 80077570 0000828C */  lw         $v0, 0x0($a0)
    /* 1DBA310 80077574 00000000 */  nop
    /* 1DBA314 80077578 01004224 */  addiu      $v0, $v0, 0x1
    /* 1DBA318 8007757C 000082AC */  sw         $v0, 0x0($a0)
    /* 1DBA31C 80077580 2A104300 */  slt        $v0, $v0, $v1
    /* 1DBA320 80077584 03004014 */  bnez       $v0, .Llevel_26_80077594
    /* 1DBA324 80077588 D3000224 */   addiu     $v0, $zero, 0xD3
    /* 1DBA328 8007758C 000080AC */  sw         $zero, 0x0($a0)
    /* 1DBA32C 80077590 360042A6 */  sh         $v0, 0x36($s2)
  .Llevel_26_80077594:
    /* 1DBA330 80077594 0E05010C */  jal        func_80041438
    /* 1DBA334 80077598 21204002 */   addu      $a0, $s2, $zero
    /* 1DBA338 8007759C 0C005026 */  addiu      $s0, $s2, 0xC
    /* 1DBA33C 800775A0 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA340 800775A4 6C6F000C */  jal        func_8001BDB0
    /* 1DBA344 800775A8 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1DBA348 800775AC 21202002 */  addu       $a0, $s1, $zero
    /* 1DBA34C 800775B0 1400428E */  lw         $v0, 0x14($s2)
    /* 1DBA350 800775B4 21280002 */  addu       $a1, $s0, $zero
    /* 1DBA354 800775B8 00024224 */  addiu      $v0, $v0, 0x200
    /* 1DBA358 800775BC 6C6F000C */  jal        func_8001BDB0
    /* 1DBA35C 800775C0 140042AE */   sw        $v0, 0x14($s2)
    /* 1DBA360 800775C4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1DBA364 800775C8 1C0042AE */  sw         $v0, 0x1C($s2)
    /* 1DBA368 800775CC 02000224 */  addiu      $v0, $zero, 0x2
    /* 1DBA36C 800775D0 470042A2 */  sb         $v0, 0x47($s2)
    /* 1DBA370 800775D4 08070224 */  addiu      $v0, $zero, 0x708
    /* 1DBA374 800775D8 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 1DBA378 800775DC 4B67010C */  jal        func_80059D2C
    /* 1DBA37C 800775E0 110020A2 */   sb        $zero, 0x11($s1)
    /* 1DBA380 800775E4 FC004230 */  andi       $v0, $v0, 0xFC
    /* 1DBA384 800775E8 B9DF0108 */  j          .Llevel_26_80077EE4
    /* 1DBA388 800775EC 120022A2 */   sb        $v0, 0x12($s1)
  .Llevel_26_800775F0:
    /* 1DBA38C 800775F0 0000508E */  lw         $s0, 0x0($s2)
    /* 1DBA390 800775F4 0E05010C */  jal        func_80041438
    /* 1DBA394 800775F8 21204002 */   addu      $a0, $s2, $zero
    /* 1DBA398 800775FC 78000224 */  addiu      $v0, $zero, 0x78
    /* 1DBA39C 80077600 490040A2 */  sb         $zero, 0x49($s2)
    /* 1DBA3A0 80077604 000000A6 */  sh         $zero, 0x0($s0)
    /* 1DBA3A4 80077608 080000A6 */  sh         $zero, 0x8($s0)
    /* 1DBA3A8 8007760C 060000A6 */  sh         $zero, 0x6($s0)
    /* 1DBA3AC 80077610 040000A6 */  sh         $zero, 0x4($s0)
    /* 1DBA3B0 80077614 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 1DBA3B4 80077618 100000AE */  sw         $zero, 0x10($s0)
    /* 1DBA3B8 8007761C 06006012 */  beqz       $s3, .Llevel_26_80077638
    /* 1DBA3BC 80077620 140000AE */   sw        $zero, 0x14($s0)
    /* 1DBA3C0 80077624 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1DBA3C4 80077628 6C6F000C */  jal        func_8001BDB0
    /* 1DBA3C8 8007762C 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1DBA3CC 80077630 ADDD0108 */  j          .Llevel_26_800776B4
    /* 1DBA3D0 80077634 FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_26_80077638:
    /* 1DBA3D4 80077638 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1DBA3D8 8007763C 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* 1DBA3DC 80077640 FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* 1DBA3E0 80077644 0000A390 */  lbu        $v1, 0x0($a1)
    /* 1DBA3E4 80077648 F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 1DBA3E8 8007764C 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 1DBA3EC 80077650 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1DBA3F0 80077654 40180300 */  sll        $v1, $v1, 1
    /* 1DBA3F4 80077658 0680013C */  lui        $at, %hi(D_80061C58)
    /* 1DBA3F8 8007765C 21082300 */  addu       $at, $at, $v1
    /* 1DBA3FC 80077660 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* 1DBA400 80077664 1000A627 */  addiu      $a2, $sp, 0x10
    /* 1DBA404 80077668 40110700 */  sll        $v0, $a3, 5
    /* 1DBA408 8007766C 23104700 */  subu       $v0, $v0, $a3
    /* 1DBA40C 80077670 80100200 */  sll        $v0, $v0, 2
    /* 1DBA410 80077674 21104700 */  addu       $v0, $v0, $a3
    /* 1DBA414 80077678 43120200 */  sra        $v0, $v0, 9
    /* 1DBA418 8007767C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1DBA41C 80077680 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 1DBA420 80077684 21082300 */  addu       $at, $at, $v1
    /* 1DBA424 80077688 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 1DBA428 8007768C E8030224 */  addiu      $v0, $zero, 0x3E8
    /* 1DBA42C 80077690 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1DBA430 80077694 40110300 */  sll        $v0, $v1, 5
    /* 1DBA434 80077698 23104300 */  subu       $v0, $v0, $v1
    /* 1DBA438 8007769C 80100200 */  sll        $v0, $v0, 2
    /* 1DBA43C 800776A0 21104300 */  addu       $v0, $v0, $v1
    /* 1DBA440 800776A4 43120200 */  sra        $v0, $v0, 9
    /* 1DBA444 800776A8 736F000C */  jal        func_8001BDCC
    /* 1DBA448 800776AC 1400A2AF */   sw        $v0, 0x14($sp)
    /* 1DBA44C 800776B0 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_26_800776B4:
    /* 1DBA450 800776B4 B9DF0108 */  j          .Llevel_26_80077EE4
    /* 1DBA454 800776B8 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_26_800776BC:
    /* 1DBA458 800776BC 0680153C */  lui        $s5, %hi(D_80066E78)
    /* 1DBA45C 800776C0 786EB592 */  lbu        $s5, %lo(D_80066E78)($s5)
    /* 1DBA460 800776C4 0000778E */  lw         $s7, 0x0($s3)
    /* 1DBA464 800776C8 0680023C */  lui        $v0, %hi(D_800646A6)
    /* 1DBA468 800776CC A6464284 */  lh         $v0, %lo(D_800646A6)($v0)
    /* 1DBA46C 800776D0 0000548E */  lw         $s4, 0x0($s2)
    /* 1DBA470 800776D4 02004010 */  beqz       $v0, .Llevel_26_800776E0
    /* 1DBA474 800776D8 A00F1E24 */   addiu     $fp, $zero, 0xFA0
    /* 1DBA478 800776DC 21A80000 */  addu       $s5, $zero, $zero
  .Llevel_26_800776E0:
    /* 1DBA47C 800776E0 0C005026 */  addiu      $s0, $s2, 0xC
    /* 1DBA480 800776E4 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA484 800776E8 6C6F000C */  jal        func_8001BDB0
    /* 1DBA488 800776EC 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1DBA48C 800776F0 0E05010C */  jal        func_80041438
    /* 1DBA490 800776F4 21204002 */   addu      $a0, $s2, $zero
    /* 1DBA494 800776F8 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA498 800776FC 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1DBA49C 80077700 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 1DBA4A0 80077704 1400428E */  lw         $v0, 0x14($s2)
    /* 1DBA4A4 80077708 FF000324 */  addiu      $v1, $zero, 0xFF
    /* 1DBA4A8 8007770C 4A0043A2 */  sb         $v1, 0x4A($s2)
    /* 1DBA4AC 80077710 20034224 */  addiu      $v0, $v0, 0x320
    /* 1DBA4B0 80077714 DB6F000C */  jal        func_8001BF6C
    /* 1DBA4B4 80077718 140042AE */   sw        $v0, 0x14($s2)
    /* 1DBA4B8 8007771C 7605033C */  lui        $v1, (0x57619F1 >> 16)
    /* 1DBA4BC 80077720 F1196334 */  ori        $v1, $v1, (0x57619F1 & 0xFFFF)
    /* 1DBA4C0 80077724 21204000 */  addu       $a0, $v0, $zero
    /* 1DBA4C4 80077728 18008300 */  mult       $a0, $v1
    /* 1DBA4C8 8007772C C32F0400 */  sra        $a1, $a0, 31
    /* 1DBA4CC 80077730 2A00E392 */  lbu        $v1, 0x2A($s7)
    /* 1DBA4D0 80077734 10400000 */  mfhi       $t0
    /* 1DBA4D4 80077738 43110800 */  sra        $v0, $t0, 5
    /* 1DBA4D8 8007773C 23104500 */  subu       $v0, $v0, $a1
    /* 1DBA4DC 80077740 04005124 */  addiu      $s1, $v0, 0x4
    /* 1DBA4E0 80077744 02000224 */  addiu      $v0, $zero, 0x2
    /* 1DBA4E4 80077748 09006214 */  bne        $v1, $v0, .Llevel_26_80077770
    /* 1DBA4E8 8007774C 0A00A22A */   slti      $v0, $s5, 0xA
    /* 1DBA4EC 80077750 6210023C */  lui        $v0, (0x10624DD3 >> 16)
    /* 1DBA4F0 80077754 D34D4234 */  ori        $v0, $v0, (0x10624DD3 & 0xFFFF)
    /* 1DBA4F4 80077758 18008200 */  mult       $a0, $v0
    /* 1DBA4F8 8007775C 10400000 */  mfhi       $t0
    /* 1DBA4FC 80077760 83110800 */  sra        $v0, $t0, 6
    /* 1DBA500 80077764 23104500 */  subu       $v0, $v0, $a1
    /* 1DBA504 80077768 06005124 */  addiu      $s1, $v0, 0x6
    /* 1DBA508 8007776C 0A00A22A */  slti       $v0, $s5, 0xA
  .Llevel_26_80077770:
    /* 1DBA50C 80077770 14004014 */  bnez       $v0, .Llevel_26_800777C4
    /* 1DBA510 80077774 58021624 */   addiu     $s6, $zero, 0x258
    /* 1DBA514 80077778 F7FFA426 */  addiu      $a0, $s5, -0x9
    /* 1DBA518 8007777C 06008228 */  slti       $v0, $a0, 0x6
    /* 1DBA51C 80077780 03004014 */  bnez       $v0, .Llevel_26_80077790
    /* 1DBA520 80077784 00110400 */   sll       $v0, $a0, 4
    /* 1DBA524 80077788 05000424 */  addiu      $a0, $zero, 0x5
    /* 1DBA528 8007778C 00110400 */  sll        $v0, $a0, 4
  .Llevel_26_80077790:
    /* 1DBA52C 80077790 23104400 */  subu       $v0, $v0, $a0
    /* 1DBA530 80077794 00010324 */  addiu      $v1, $zero, 0x100
    /* 1DBA534 80077798 23106200 */  subu       $v0, $v1, $v0
    /* 1DBA538 8007779C 18005600 */  mult       $v0, $s6
    /* 1DBA53C 800777A0 80100400 */  sll        $v0, $a0, 2
    /* 1DBA540 800777A4 21104400 */  addu       $v0, $v0, $a0
    /* 1DBA544 800777A8 12280000 */  mflo       $a1
    /* 1DBA548 800777AC 80100200 */  sll        $v0, $v0, 2
    /* 1DBA54C 800777B0 23106200 */  subu       $v0, $v1, $v0
    /* 1DBA550 800777B4 18002202 */  mult       $s1, $v0
    /* 1DBA554 800777B8 03B20500 */  sra        $s6, $a1, 8
    /* 1DBA558 800777BC 12180000 */  mflo       $v1
    /* 1DBA55C 800777C0 038A0300 */  sra        $s1, $v1, 8
  .Llevel_26_800777C4:
    /* 1DBA560 800777C4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1DBA564 800777C8 0780103C */  lui        $s0, %hi(D_8006A090)
    /* 1DBA568 800777CC 90A01026 */  addiu      $s0, $s0, %lo(D_8006A090)
    /* 1DBA56C 800777D0 6C6F000C */  jal        func_8001BDB0
    /* 1DBA570 800777D4 21280002 */   addu      $a1, $s0, $zero
    /* 1DBA574 800777D8 1000A28F */  lw         $v0, 0x10($sp)
    /* 1DBA578 800777DC 00000000 */  nop
    /* 1DBA57C 800777E0 18005100 */  mult       $v0, $s1
    /* 1DBA580 800777E4 12300000 */  mflo       $a2
    /* 1DBA584 800777E8 1400A28F */  lw         $v0, 0x14($sp)
    /* 1DBA588 800777EC 00000000 */  nop
    /* 1DBA58C 800777F0 18005100 */  mult       $v0, $s1
    /* 1DBA590 800777F4 12180000 */  mflo       $v1
    /* 1DBA594 800777F8 1800A28F */  lw         $v0, 0x18($sp)
    /* 1DBA598 800777FC 00000000 */  nop
    /* 1DBA59C 80077800 18005100 */  mult       $v0, $s1
    /* 1DBA5A0 80077804 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1DBA5A4 80077808 06000524 */  addiu      $a1, $zero, 0x6
    /* 1DBA5A8 8007780C 1000A6AF */  sw         $a2, 0x10($sp)
    /* 1DBA5AC 80077810 1400A3AF */  sw         $v1, 0x14($sp)
    /* 1DBA5B0 80077814 12380000 */  mflo       $a3
    /* 1DBA5B4 80077818 526F000C */  jal        func_8001BD48
    /* 1DBA5B8 8007781C 1800A7AF */   sw        $a3, 0x18($sp)
    /* 1DBA5BC 80077820 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1DBA5C0 80077824 21288000 */  addu       $a1, $a0, $zero
    /* 1DBA5C4 80077828 736F000C */  jal        func_8001BDCC
    /* 1DBA5C8 8007782C 60FF0626 */   addiu     $a2, $s0, -0xA0
    /* 1DBA5CC 80077830 2000B027 */  addiu      $s0, $sp, 0x20
    /* 1DBA5D0 80077834 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA5D4 80077838 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1DBA5D8 8007783C 806F000C */  jal        func_8001BE00
    /* 1DBA5DC 80077840 0C004626 */   addiu     $a2, $s2, 0xC
    /* 1DBA5E0 80077844 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA5E4 80077848 886E000C */  jal        func_8001BA20
    /* 1DBA5E8 8007784C 01000524 */   addiu     $a1, $zero, 0x1
    /* 1DBA5EC 80077850 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA5F0 80077854 21284000 */  addu       $a1, $v0, $zero
    /* 1DBA5F4 80077858 316F000C */  jal        func_8001BCC4
    /* 1DBA5F8 8007785C 2130C002 */   addu      $a2, $s6, $zero
    /* 1DBA5FC 80077860 2000A28F */  lw         $v0, 0x20($sp)
    /* 1DBA600 80077864 21300000 */  addu       $a2, $zero, $zero
    /* 1DBA604 80077868 000082A6 */  sh         $v0, 0x0($s4)
    /* 1DBA608 8007786C 2400A28F */  lw         $v0, 0x24($sp)
    /* 1DBA60C 80077870 00008486 */  lh         $a0, 0x0($s4)
    /* 1DBA610 80077874 002C0200 */  sll        $a1, $v0, 16
    /* 1DBA614 80077878 032C0500 */  sra        $a1, $a1, 16
    /* 1DBA618 8007787C 2E6D000C */  jal        func_8001B4B8
    /* 1DBA61C 80077880 020082A6 */   sh        $v0, 0x2($s4)
    /* 1DBA620 80077884 460042A2 */  sb         $v0, 0x46($s2)
    /* 1DBA624 80077888 00008386 */  lh         $v1, 0x0($s4)
    /* 1DBA628 8007788C 0C00428E */  lw         $v0, 0xC($s2)
    /* 1DBA62C 80077890 00000000 */  nop
    /* 1DBA630 80077894 21104300 */  addu       $v0, $v0, $v1
    /* 1DBA634 80077898 0C0042AE */  sw         $v0, 0xC($s2)
    /* 1DBA638 8007789C 02008386 */  lh         $v1, 0x2($s4)
    /* 1DBA63C 800778A0 1000428E */  lw         $v0, 0x10($s2)
    /* 1DBA640 800778A4 00000000 */  nop
    /* 1DBA644 800778A8 21104300 */  addu       $v0, $v0, $v1
    /* 1DBA648 800778AC 100042AE */  sw         $v0, 0x10($s2)
    /* 1DBA64C 800778B0 05000224 */  addiu      $v0, $zero, 0x5
    /* 1DBA650 800778B4 4B67010C */  jal        func_80059D2C
    /* 1DBA654 800778B8 090082A2 */   sb        $v0, 0x9($s4)
    /* 1DBA658 800778BC 01004230 */  andi       $v0, $v0, 0x1
    /* 1DBA65C 800778C0 05004010 */  beqz       $v0, .Llevel_26_800778D8
    /* 1DBA660 800778C4 00000000 */   nop
    /* 1DBA664 800778C8 09008292 */  lbu        $v0, 0x9($s4)
    /* 1DBA668 800778CC 00000000 */  nop
    /* 1DBA66C 800778D0 23100200 */  negu       $v0, $v0
    /* 1DBA670 800778D4 090082A2 */  sb         $v0, 0x9($s4)
  .Llevel_26_800778D8:
    /* 1DBA674 800778D8 C400E28E */  lw         $v0, 0xC4($s7)
    /* 1DBA678 800778DC 80181E00 */  sll        $v1, $fp, 2
    /* 1DBA67C 800778E0 21105E00 */  addu       $v0, $v0, $fp
    /* 1DBA680 800778E4 C400E2AE */  sw         $v0, 0xC4($s7)
    /* 1DBA684 800778E8 2A104300 */  slt        $v0, $v0, $v1
    /* 1DBA688 800778EC 02004014 */  bnez       $v0, .Llevel_26_800778F8
    /* 1DBA68C 800778F0 00000000 */   nop
    /* 1DBA690 800778F4 C400E0AE */  sw         $zero, 0xC4($s7)
  .Llevel_26_800778F8:
    /* 1DBA694 800778F8 C400E28E */  lw         $v0, 0xC4($s7)
    /* 1DBA698 800778FC 21280000 */  addu       $a1, $zero, $zero
    /* 1DBA69C 80077900 D8004224 */  addiu      $v0, $v0, 0xD8
    /* 1DBA6A0 80077904 2110E202 */  addu       $v0, $s7, $v0
    /* 1DBA6A4 80077908 0C0082AE */  sw         $v0, 0xC($s4)
    /* 1DBA6A8 8007790C 0C00848E */  lw         $a0, 0xC($s4)
    /* 1DBA6AC 80077910 2130C003 */  addu       $a2, $fp, $zero
    /* 1DBA6B0 80077914 F96C000C */  jal        func_8001B3E4
    /* 1DBA6B4 80077918 140093AE */   sw        $s3, 0x14($s4)
    /* 1DBA6B8 8007791C BADF0108 */  j          .Llevel_26_80077EE8
    /* 1DBA6BC 80077920 21104002 */   addu      $v0, $s2, $zero
  .Llevel_26_80077924:
    /* 1DBA6C0 80077924 0E05010C */  jal        func_80041438
    /* 1DBA6C4 80077928 21204002 */   addu      $a0, $s2, $zero
    /* 1DBA6C8 8007792C 02000224 */  addiu      $v0, $zero, 0x2
    /* 1DBA6CC 80077930 0E006012 */  beqz       $s3, .Llevel_26_8007796C
    /* 1DBA6D0 80077934 540042A2 */   sb        $v0, 0x54($s2)
    /* 1DBA6D4 80077938 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1DBA6D8 8007793C 0000428E */  lw         $v0, 0x0($s2)
    /* 1DBA6DC 80077940 0C006526 */  addiu      $a1, $s3, 0xC
    /* 1DBA6E0 80077944 6C6F000C */  jal        func_8001BDB0
    /* 1DBA6E4 80077948 000053AC */   sw        $s3, 0x0($v0)
    /* 1DBA6E8 8007794C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1DBA6EC 80077950 4A0042A2 */  sb         $v0, 0x4A($s2)
    /* 1DBA6F0 80077954 1400428E */  lw         $v0, 0x14($s2)
    /* 1DBA6F4 80077958 08000324 */  addiu      $v1, $zero, 0x8
    /* 1DBA6F8 8007795C 4C0043A2 */  sb         $v1, 0x4C($s2)
    /* 1DBA6FC 80077960 00044224 */  addiu      $v0, $v0, 0x400
    /* 1DBA700 80077964 B9DF0108 */  j          .Llevel_26_80077EE4
    /* 1DBA704 80077968 140042AE */   sw        $v0, 0x14($s2)
  .Llevel_26_8007796C:
    /* 1DBA708 8007796C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1DBA70C 80077970 B9DF0108 */  j          .Llevel_26_80077EE4
    /* 1DBA710 80077974 1C0042AE */   sw        $v0, 0x1C($s2)
  .Llevel_26_80077978:
    /* 1DBA714 80077978 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1DBA718 8007797C 0000508E */  lw         $s0, 0x0($s2)
    /* 1DBA71C 80077980 6C6F000C */  jal        func_8001BDB0
    /* 1DBA720 80077984 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1DBA724 80077988 0E05010C */  jal        func_80041438
    /* 1DBA728 8007798C 21204002 */   addu      $a0, $s2, $zero
    /* 1DBA72C 80077990 10000224 */  addiu      $v0, $zero, 0x10
    /* 1DBA730 80077994 3B000324 */  addiu      $v1, $zero, 0x3B
    /* 1DBA734 80077998 000002A6 */  sh         $v0, 0x0($s0)
    /* 1DBA738 8007799C 80000224 */  addiu      $v0, $zero, 0x80
    /* 1DBA73C 800779A0 570043A2 */  sb         $v1, 0x57($s2)
    /* 1DBA740 800779A4 540042A2 */  sb         $v0, 0x54($s2)
    /* 1DBA744 800779A8 550042A2 */  sb         $v0, 0x55($s2)
    /* 1DBA748 800779AC 560040A2 */  sb         $zero, 0x56($s2)
    /* 1DBA74C 800779B0 36006486 */  lh         $a0, 0x36($s3)
    /* 1DBA750 800779B4 98010224 */  addiu      $v0, $zero, 0x198
    /* 1DBA754 800779B8 04008210 */  beq        $a0, $v0, .Llevel_26_800779CC
    /* 1DBA758 800779BC 01000224 */   addiu     $v0, $zero, 0x1
    /* 1DBA75C 800779C0 C2020224 */  addiu      $v0, $zero, 0x2C2
    /* 1DBA760 800779C4 05008214 */  bne        $a0, $v0, .Llevel_26_800779DC
    /* 1DBA764 800779C8 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_26_800779CC:
    /* 1DBA768 800779CC 020002A2 */  sb         $v0, 0x2($s0)
    /* 1DBA76C 800779D0 030002A2 */  sb         $v0, 0x3($s0)
    /* 1DBA770 800779D4 85DE0108 */  j          .Llevel_26_80077A14
    /* 1DBA774 800779D8 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_26_800779DC:
    /* 1DBA778 800779DC 70020224 */  addiu      $v0, $zero, 0x270
    /* 1DBA77C 800779E0 0A008214 */  bne        $a0, $v0, .Llevel_26_80077A0C
    /* 1DBA780 800779E4 60000224 */   addiu     $v0, $zero, 0x60
    /* 1DBA784 800779E8 02000224 */  addiu      $v0, $zero, 0x2
    /* 1DBA788 800779EC 020002A2 */  sb         $v0, 0x2($s0)
    /* 1DBA78C 800779F0 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 1DBA790 800779F4 540042A2 */  sb         $v0, 0x54($s2)
    /* 1DBA794 800779F8 550042A2 */  sb         $v0, 0x55($s2)
    /* 1DBA798 800779FC 560042A2 */  sb         $v0, 0x56($s2)
    /* 1DBA79C 80077A00 60000224 */  addiu      $v0, $zero, 0x60
    /* 1DBA7A0 80077A04 84DE0108 */  j          .Llevel_26_80077A10
    /* 1DBA7A4 80077A08 570043A2 */   sb        $v1, 0x57($s2)
  .Llevel_26_80077A0C:
    /* 1DBA7A8 80077A0C 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_26_80077A10:
    /* 1DBA7AC 80077A10 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_26_80077A14:
    /* 1DBA7B0 80077A14 4F0042A2 */  sb         $v0, 0x4F($s2)
    /* 1DBA7B4 80077A18 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1DBA7B8 80077A1C 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* 1DBA7BC 80077A20 AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* 1DBA7C0 80077A24 21280002 */  addu       $a1, $s0, $zero
    /* 1DBA7C4 80077A28 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 1DBA7C8 80077A2C DB6F000C */  jal        func_8001BF6C
    /* 1DBA7CC 80077A30 470042A2 */   sb        $v0, 0x47($s2)
    /* 1DBA7D0 80077A34 21204000 */  addu       $a0, $v0, $zero
    /* 1DBA7D4 80077A38 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* 1DBA7D8 80077A3C B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* 1DBA7DC 80077A40 1400458E */  lw         $a1, 0x14($s2)
    /* 1DBA7E0 80077A44 21300000 */  addu       $a2, $zero, $zero
    /* 1DBA7E4 80077A48 2E6D000C */  jal        func_8001B4B8
    /* 1DBA7E8 80077A4C 23284500 */   subu      $a1, $v0, $a1
    /* 1DBA7EC 80077A50 21300000 */  addu       $a2, $zero, $zero
    /* 1DBA7F0 80077A54 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 1DBA7F4 80077A58 450042A2 */  sb         $v0, 0x45($s2)
    /* 1DBA7F8 80077A5C 0000038E */  lw         $v1, 0x0($s0)
    /* 1DBA7FC 80077A60 0C00448E */  lw         $a0, 0xC($s2)
    /* 1DBA800 80077A64 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* 1DBA804 80077A68 B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* 1DBA808 80077A6C 1000458E */  lw         $a1, 0x10($s2)
    /* 1DBA80C 80077A70 23206400 */  subu       $a0, $v1, $a0
    /* 1DBA810 80077A74 2E6D000C */  jal        func_8001B4B8
    /* 1DBA814 80077A78 23284500 */   subu      $a1, $v0, $a1
    /* 1DBA818 80077A7C B9DF0108 */  j          .Llevel_26_80077EE4
    /* 1DBA81C 80077A80 460042A2 */   sb        $v0, 0x46($s2)
  .Llevel_26_80077A84:
    /* 1DBA820 80077A84 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1DBA824 80077A88 0000508E */  lw         $s0, 0x0($s2)
    /* 1DBA828 80077A8C 6C6F000C */  jal        func_8001BDB0
    /* 1DBA82C 80077A90 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1DBA830 80077A94 0E05010C */  jal        func_80041438
    /* 1DBA834 80077A98 21204002 */   addu      $a0, $s2, $zero
    /* 1DBA838 80077A9C 10000224 */  addiu      $v0, $zero, 0x10
    /* 1DBA83C 80077AA0 000002AE */  sw         $v0, 0x0($s0)
    /* 1DBA840 80077AA4 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 1DBA844 80077AA8 570042A2 */  sb         $v0, 0x57($s2)
    /* 1DBA848 80077AAC 80000224 */  addiu      $v0, $zero, 0x80
    /* 1DBA84C 80077AB0 540042A2 */  sb         $v0, 0x54($s2)
    /* 1DBA850 80077AB4 40000224 */  addiu      $v0, $zero, 0x40
    /* 1DBA854 80077AB8 550042A2 */  sb         $v0, 0x55($s2)
    /* 1DBA858 80077ABC 4B67010C */  jal        func_80059D2C
    /* 1DBA85C 80077AC0 560040A2 */   sb        $zero, 0x56($s2)
    /* 1DBA860 80077AC4 4B67010C */  jal        func_80059D2C
    /* 1DBA864 80077AC8 450042A2 */   sb        $v0, 0x45($s2)
    /* 1DBA868 80077ACC 460042A2 */  sb         $v0, 0x46($s2)
    /* 1DBA86C 80077AD0 46000224 */  addiu      $v0, $zero, 0x46
    /* 1DBA870 80077AD4 4F0042A2 */  sb         $v0, 0x4F($s2)
    /* 1DBA874 80077AD8 04000224 */  addiu      $v0, $zero, 0x4
    /* 1DBA878 80077ADC B9DF0108 */  j          .Llevel_26_80077EE4
    /* 1DBA87C 80077AE0 470042A2 */   sb        $v0, 0x47($s2)
  .Llevel_26_80077AE4:
    /* 1DBA880 80077AE4 0000548E */  lw         $s4, 0x0($s2)
    /* 1DBA884 80077AE8 0E05010C */  jal        func_80041438
    /* 1DBA888 80077AEC 21204002 */   addu      $a0, $s2, $zero
    /* 1DBA88C 80077AF0 40000224 */  addiu      $v0, $zero, 0x40
    /* 1DBA890 80077AF4 4C0042A2 */  sb         $v0, 0x4C($s2)
    /* 1DBA894 80077AF8 9D006016 */  bnez       $s3, .Llevel_26_80077D70
    /* 1DBA898 80077AFC 4E0042A2 */   sb        $v0, 0x4E($s2)
    /* 1DBA89C 80077B00 B8010224 */  addiu      $v0, $zero, 0x1B8
    /* 1DBA8A0 80077B04 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* 1DBA8A4 80077B08 D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* 1DBA8A8 80077B0C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 1DBA8AC 80077B10 3400A0AF */  sw         $zero, 0x34($sp)
    /* 1DBA8B0 80077B14 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1DBA8B4 80077B18 0000A38C */  lw         $v1, 0x0($a1)
    /* 1DBA8B8 80077B1C 07000224 */  addiu      $v0, $zero, 0x7
    /* 1DBA8BC 80077B20 26006214 */  bne        $v1, $v0, .Llevel_26_80077BBC
    /* 1DBA8C0 80077B24 0C004426 */   addiu     $a0, $s2, 0xC
    /* 1DBA8C4 80077B28 0C005126 */  addiu      $s1, $s2, 0xC
    /* 1DBA8C8 80077B2C 21202002 */  addu       $a0, $s1, $zero
    /* 1DBA8CC 80077B30 6C6F000C */  jal        func_8001BDB0
    /* 1DBA8D0 80077B34 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 1DBA8D4 80077B38 6000A427 */  addiu      $a0, $sp, 0x60
    /* 1DBA8D8 80077B3C 4000B027 */  addiu      $s0, $sp, 0x40
    /* 1DBA8DC 80077B40 21280002 */  addu       $a1, $s0, $zero
    /* 1DBA8E0 80077B44 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 1DBA8E4 80077B48 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 1DBA8E8 80077B4C 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* 1DBA8EC 80077B50 CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* 1DBA8F0 80077B54 21300000 */  addu       $a2, $zero, $zero
    /* 1DBA8F4 80077B58 6000A0A3 */  sb         $zero, 0x60($sp)
    /* 1DBA8F8 80077B5C 02190300 */  srl        $v1, $v1, 4
    /* 1DBA8FC 80077B60 00140200 */  sll        $v0, $v0, 16
    /* 1DBA900 80077B64 03150200 */  sra        $v0, $v0, 20
    /* 1DBA904 80077B68 23100200 */  negu       $v0, $v0
    /* 1DBA908 80077B6C 6100A2A3 */  sb         $v0, 0x61($sp)
    /* 1DBA90C 80077B70 B26D000C */  jal        func_8001B6C8
    /* 1DBA910 80077B74 6200A3A3 */   sb        $v1, 0x62($sp)
    /* 1DBA914 80077B78 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA918 80077B7C 3000B027 */  addiu      $s0, $sp, 0x30
    /* 1DBA91C 80077B80 21280002 */  addu       $a1, $s0, $zero
    /* 1DBA920 80077B84 696E000C */  jal        func_8001B9A4
    /* 1DBA924 80077B88 21300002 */   addu      $a2, $s0, $zero
    /* 1DBA928 80077B8C 21202002 */  addu       $a0, $s1, $zero
    /* 1DBA92C 80077B90 21282002 */  addu       $a1, $s1, $zero
    /* 1DBA930 80077B94 736F000C */  jal        func_8001BDCC
    /* 1DBA934 80077B98 21300002 */   addu      $a2, $s0, $zero
    /* 1DBA938 80077B9C 21202002 */  addu       $a0, $s1, $zero
    /* 1DBA93C 80077BA0 21282002 */  addu       $a1, $s1, $zero
    /* 1DBA940 80077BA4 736F000C */  jal        func_8001BDCC
    /* 1DBA944 80077BA8 21300002 */   addu      $a2, $s0, $zero
    /* 1DBA948 80077BAC 21202002 */  addu       $a0, $s1, $zero
    /* 1DBA94C 80077BB0 21288000 */  addu       $a1, $a0, $zero
    /* 1DBA950 80077BB4 17DF0108 */  j          .Llevel_26_80077C5C
    /* 1DBA954 80077BB8 21300002 */   addu      $a2, $s0, $zero
  .Llevel_26_80077BBC:
    /* 1DBA958 80077BBC 6C6F000C */  jal        func_8001BDB0
    /* 1DBA95C 80077BC0 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 1DBA960 80077BC4 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 1DBA964 80077BC8 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 1DBA968 80077BCC 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 1DBA96C 80077BD0 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 1DBA970 80077BD4 8800A0A3 */  sb         $zero, 0x88($sp)
    /* 1DBA974 80077BD8 07004014 */  bnez       $v0, .Llevel_26_80077BF8
    /* 1DBA978 80077BDC 8900A3A3 */   sb        $v1, 0x89($sp)
    /* 1DBA97C 80077BE0 FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 1DBA980 80077BE4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1DBA984 80077BE8 F900422C */  sltiu      $v0, $v0, 0xF9
    /* 1DBA988 80077BEC 03004014 */  bnez       $v0, .Llevel_26_80077BFC
    /* 1DBA98C 80077BF0 8800A427 */   addiu     $a0, $sp, 0x88
    /* 1DBA990 80077BF4 8900A0A3 */  sb         $zero, 0x89($sp)
  .Llevel_26_80077BF8:
    /* 1DBA994 80077BF8 8800A427 */  addiu      $a0, $sp, 0x88
  .Llevel_26_80077BFC:
    /* 1DBA998 80077BFC 6800B027 */  addiu      $s0, $sp, 0x68
    /* 1DBA99C 80077C00 21280002 */  addu       $a1, $s0, $zero
    /* 1DBA9A0 80077C04 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* 1DBA9A4 80077C08 FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* 1DBA9A8 80077C0C 00002292 */  lbu        $v0, 0x0($s1)
    /* 1DBA9AC 80077C10 21300000 */  addu       $a2, $zero, $zero
    /* 1DBA9B0 80077C14 B26D000C */  jal        func_8001B6C8
    /* 1DBA9B4 80077C18 8A00A2A3 */   sb        $v0, 0x8A($sp)
    /* 1DBA9B8 80077C1C 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA9BC 80077C20 3000A527 */  addiu      $a1, $sp, 0x30
    /* 1DBA9C0 80077C24 696E000C */  jal        func_8001B9A4
    /* 1DBA9C4 80077C28 2130A000 */   addu      $a2, $a1, $zero
    /* 1DBA9C8 80077C2C 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA9CC 80077C30 0C005026 */  addiu      $s0, $s2, 0xC
    /* 1DBA9D0 80077C34 21280002 */  addu       $a1, $s0, $zero
    /* 1DBA9D4 80077C38 21300002 */  addu       $a2, $s0, $zero
    /* 1DBA9D8 80077C3C F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 1DBA9DC 80077C40 0C0042AE */  sw         $v0, 0xC($s2)
    /* 1DBA9E0 80077C44 100040AE */  sw         $zero, 0x10($s2)
    /* 1DBA9E4 80077C48 696E000C */  jal        func_8001B9A4
    /* 1DBA9E8 80077C4C 140040AE */   sw        $zero, 0x14($s2)
    /* 1DBA9EC 80077C50 21200002 */  addu       $a0, $s0, $zero
    /* 1DBA9F0 80077C54 21288000 */  addu       $a1, $a0, $zero
    /* 1DBA9F4 80077C58 F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_26_80077C5C:
    /* 1DBA9F8 80077C5C 736F000C */  jal        func_8001BDCC
    /* 1DBA9FC 80077C60 00000000 */   nop
    /* 1DBAA00 80077C64 3000A427 */  addiu      $a0, $sp, 0x30
    /* 1DBAA04 80077C68 886E000C */  jal        func_8001BA20
    /* 1DBAA08 80077C6C 21280000 */   addu      $a1, $zero, $zero
    /* 1DBAA0C 80077C70 21204000 */  addu       $a0, $v0, $zero
    /* 1DBAA10 80077C74 3800A58F */  lw         $a1, 0x38($sp)
    /* 1DBAA14 80077C78 2E6D000C */  jal        func_8001B4B8
    /* 1DBAA18 80077C7C 21300000 */   addu      $a2, $zero, $zero
    /* 1DBAA1C 80077C80 450042A2 */  sb         $v0, 0x45($s2)
    /* 1DBAA20 80077C84 3000A48F */  lw         $a0, 0x30($sp)
    /* 1DBAA24 80077C88 3400A58F */  lw         $a1, 0x34($sp)
    /* 1DBAA28 80077C8C 2E6D000C */  jal        func_8001B4B8
    /* 1DBAA2C 80077C90 21300000 */   addu      $a2, $zero, $zero
    /* 1DBAA30 80077C94 460042A2 */  sb         $v0, 0x46($s2)
    /* 1DBAA34 80077C98 3000A28F */  lw         $v0, 0x30($sp)
    /* 1DBAA38 80077C9C 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 1DBAA3C 80077CA0 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 1DBAA40 80077CA4 0680043C */  lui        $a0, %hi(D_800670BC)
    /* 1DBAA44 80077CA8 BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* 1DBAA48 80077CAC 000082A6 */  sh         $v0, 0x0($s4)
    /* 1DBAA4C 80077CB0 3400A28F */  lw         $v0, 0x34($sp)
    /* 1DBAA50 80077CB4 00000000 */  nop
    /* 1DBAA54 80077CB8 020082A6 */  sh         $v0, 0x2($s4)
    /* 1DBAA58 80077CBC 3800A28F */  lw         $v0, 0x38($sp)
    /* 1DBAA5C 80077CC0 00000000 */  nop
    /* 1DBAA60 80077CC4 040082A6 */  sh         $v0, 0x4($s4)
    /* 1DBAA64 80077CC8 2B106400 */  sltu       $v0, $v1, $a0
    /* 1DBAA68 80077CCC 0A004010 */  beqz       $v0, .Llevel_26_80077CF8
    /* 1DBAA6C 80077CD0 44010524 */   addiu     $a1, $zero, 0x144
    /* 1DBAA70 80077CD4 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_26_80077CD8:
    /* 1DBAA74 80077CD8 36006284 */  lh         $v0, 0x36($v1)
    /* 1DBAA78 80077CDC 00000000 */  nop
    /* 1DBAA7C 80077CE0 05004610 */  beq        $v0, $a2, .Llevel_26_80077CF8
    /* 1DBAA80 80077CE4 00000000 */   nop
    /* 1DBAA84 80077CE8 58006324 */  addiu      $v1, $v1, 0x58
    /* 1DBAA88 80077CEC 2B106400 */  sltu       $v0, $v1, $a0
    /* 1DBAA8C 80077CF0 F9FF4014 */  bnez       $v0, .Llevel_26_80077CD8
    /* 1DBAA90 80077CF4 00000000 */   nop
  .Llevel_26_80077CF8:
    /* 1DBAA94 80077CF8 13006010 */  beqz       $v1, .Llevel_26_80077D48
    /* 1DBAA98 80077CFC 40100500 */   sll       $v0, $a1, 1
    /* 1DBAA9C 80077D00 0000678C */  lw         $a3, 0x0($v1)
    /* 1DBAAA0 80077D04 21104500 */  addu       $v0, $v0, $a1
    /* 1DBAAA4 80077D08 0000E38C */  lw         $v1, 0x0($a3)
    /* 1DBAAA8 80077D0C 40100200 */  sll        $v0, $v0, 1
    /* 1DBAAAC 80077D10 21186500 */  addu       $v1, $v1, $a1
    /* 1DBAAB0 80077D14 0000E3AC */  sw         $v1, 0x0($a3)
    /* 1DBAAB4 80077D18 2A186200 */  slt        $v1, $v1, $v0
    /* 1DBAAB8 80077D1C 02006014 */  bnez       $v1, .Llevel_26_80077D28
    /* 1DBAABC 80077D20 10008426 */   addiu     $a0, $s4, 0x10
    /* 1DBAAC0 80077D24 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_26_80077D28:
    /* 1DBAAC4 80077D28 0400E524 */  addiu      $a1, $a3, 0x4
    /* 1DBAAC8 80077D2C 0000E28C */  lw         $v0, 0x0($a3)
    /* 1DBAACC 80077D30 08000624 */  addiu      $a2, $zero, 0x8
    /* 1DBAAD0 80077D34 0C004224 */  addiu      $v0, $v0, 0xC
    /* 1DBAAD4 80077D38 2110E200 */  addu       $v0, $a3, $v0
    /* 1DBAAD8 80077D3C 080082AE */  sw         $v0, 0x8($s4)
    /* 1DBAADC 80077D40 036D000C */  jal        func_8001B40C
    /* 1DBAAE0 80077D44 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_26_80077D48:
    /* 1DBAAE4 80077D48 21204002 */  addu       $a0, $s2, $zero
    /* 1DBAAE8 80077D4C 21280000 */  addu       $a1, $zero, $zero
    /* 1DBAAEC 80077D50 21300000 */  addu       $a2, $zero, $zero
    /* 1DBAAF0 80077D54 6E000224 */  addiu      $v0, $zero, 0x6E
    /* 1DBAAF4 80077D58 070082A2 */  sb         $v0, 0x7($s4)
    /* 1DBAAF8 80077D5C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1DBAAFC 80077D60 9241010C */  jal        func_80050648
    /* 1DBAB00 80077D64 4B0042A2 */   sb        $v0, 0x4B($s2)
    /* 1DBAB04 80077D68 BADF0108 */  j          .Llevel_26_80077EE8
    /* 1DBAB08 80077D6C 21104002 */   addu      $v0, $s2, $zero
  .Llevel_26_80077D70:
    /* 1DBAB0C 80077D70 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1DBAB10 80077D74 6C6F000C */  jal        func_8001BDB0
    /* 1DBAB14 80077D78 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1DBAB18 80077D7C 30000224 */  addiu      $v0, $zero, 0x30
    /* 1DBAB1C 80077D80 070082A2 */  sb         $v0, 0x7($s4)
    /* 1DBAB20 80077D84 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 1DBAB24 80077D88 4F0042A2 */  sb         $v0, 0x4F($s2)
    /* 1DBAB28 80077D8C 07008392 */  lbu        $v1, 0x7($s4)
    /* 1DBAB2C 80077D90 00000000 */  nop
    /* 1DBAB30 80077D94 40100300 */  sll        $v0, $v1, 1
    /* 1DBAB34 80077D98 21104300 */  addu       $v0, $v0, $v1
    /* 1DBAB38 80077D9C 43100200 */  sra        $v0, $v0, 1
    /* 1DBAB3C 80077DA0 540042A2 */  sb         $v0, 0x54($s2)
    /* 1DBAB40 80077DA4 07008392 */  lbu        $v1, 0x7($s4)
    /* 1DBAB44 80077DA8 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 1DBAB48 80077DAC 560040A2 */  sb         $zero, 0x56($s2)
    /* 1DBAB4C 80077DB0 570042A2 */  sb         $v0, 0x57($s2)
    /* 1DBAB50 80077DB4 B9DF0108 */  j          .Llevel_26_80077EE4
    /* 1DBAB54 80077DB8 550043A2 */   sb        $v1, 0x55($s2)
  .Llevel_26_80077DBC:
    /* 1DBAB58 80077DBC 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1DBAB5C 80077DC0 0000708E */  lw         $s0, 0x0($s3)
    /* 1DBAB60 80077DC4 0000518E */  lw         $s1, 0x0($s2)
    /* 1DBAB64 80077DC8 6C6F000C */  jal        func_8001BDB0
    /* 1DBAB68 80077DCC 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1DBAB6C 80077DD0 0E05010C */  jal        func_80041438
    /* 1DBAB70 80077DD4 21204002 */   addu      $a0, $s2, $zero
    /* 1DBAB74 80077DD8 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1DBAB78 80077DDC 4A0042A2 */  sb         $v0, 0x4A($s2)
    /* 1DBAB7C 80077DE0 1400428E */  lw         $v0, 0x14($s2)
    /* 1DBAB80 80077DE4 410040A2 */  sb         $zero, 0x41($s2)
    /* 1DBAB84 80077DE8 4C0040A2 */  sb         $zero, 0x4C($s2)
    /* 1DBAB88 80077DEC 4D0040A2 */  sb         $zero, 0x4D($s2)
    /* 1DBAB8C 80077DF0 46006392 */  lbu        $v1, 0x46($s3)
    /* 1DBAB90 80077DF4 F4014224 */  addiu      $v0, $v0, 0x1F4
    /* 1DBAB94 80077DF8 460043A2 */  sb         $v1, 0x46($s2)
    /* 1DBAB98 80077DFC 140042AE */  sw         $v0, 0x14($s2)
    /* 1DBAB9C 80077E00 C400028E */  lw         $v0, 0xC4($s0)
    /* 1DBABA0 80077E04 00000000 */  nop
    /* 1DBABA4 80077E08 A00F4224 */  addiu      $v0, $v0, 0xFA0
    /* 1DBABA8 80077E0C C40002AE */  sw         $v0, 0xC4($s0)
    /* 1DBABAC 80077E10 803E4228 */  slti       $v0, $v0, 0x3E80
    /* 1DBABB0 80077E14 02004014 */  bnez       $v0, .Llevel_26_80077E20
    /* 1DBABB4 80077E18 21280000 */   addu      $a1, $zero, $zero
    /* 1DBABB8 80077E1C C40000AE */  sw         $zero, 0xC4($s0)
  .Llevel_26_80077E20:
    /* 1DBABBC 80077E20 C400048E */  lw         $a0, 0xC4($s0)
    /* 1DBABC0 80077E24 A00F0624 */  addiu      $a2, $zero, 0xFA0
    /* 1DBABC4 80077E28 D8008424 */  addiu      $a0, $a0, 0xD8
    /* 1DBABC8 80077E2C 21200402 */  addu       $a0, $s0, $a0
    /* 1DBABCC 80077E30 F96C000C */  jal        func_8001B3E4
    /* 1DBABD0 80077E34 040024AE */   sw        $a0, 0x4($s1)
    /* 1DBABD4 80077E38 DC050224 */  addiu      $v0, $zero, 0x5DC
    /* 1DBABD8 80077E3C 000022AE */  sw         $v0, 0x0($s1)
    /* 1DBABDC 80077E40 B9DF0108 */  j          .Llevel_26_80077EE4
    /* 1DBABE0 80077E44 100033AE */   sw        $s3, 0x10($s1)
  .Llevel_26_80077E48:
    /* 1DBABE4 80077E48 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1DBABE8 80077E4C 6C6F000C */  jal        func_8001BDB0
    /* 1DBABEC 80077E50 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1DBABF0 80077E54 0E05010C */  jal        func_80041438
    /* 1DBABF4 80077E58 21204002 */   addu      $a0, $s2, $zero
    /* 1DBABF8 80077E5C 4C0040A2 */  sb         $zero, 0x4C($s2)
    /* 1DBABFC 80077E60 B9DF0108 */  j          .Llevel_26_80077EE4
    /* 1DBAC00 80077E64 4D0040A2 */   sb        $zero, 0x4D($s2)
  .Llevel_26_80077E68:
    /* 1DBAC04 80077E68 0000508E */  lw         $s0, 0x0($s2)
    /* 1DBAC08 80077E6C 6C6F000C */  jal        func_8001BDB0
    /* 1DBAC0C 80077E70 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1DBAC10 80077E74 0E05010C */  jal        func_80041438
    /* 1DBAC14 80077E78 21204002 */   addu      $a0, $s2, $zero
    /* 1DBAC18 80077E7C 18000224 */  addiu      $v0, $zero, 0x18
    /* 1DBAC1C 80077E80 000002AE */  sw         $v0, 0x0($s0)
    /* 1DBAC20 80077E84 30000224 */  addiu      $v0, $zero, 0x30
    /* 1DBAC24 80077E88 570042A2 */  sb         $v0, 0x57($s2)
    /* 1DBAC28 80077E8C 64000224 */  addiu      $v0, $zero, 0x64
    /* 1DBAC2C 80077E90 540040A2 */  sb         $zero, 0x54($s2)
    /* 1DBAC30 80077E94 550040A2 */  sb         $zero, 0x55($s2)
    /* 1DBAC34 80077E98 560040A2 */  sb         $zero, 0x56($s2)
    /* 1DBAC38 80077E9C 4F0042A2 */  sb         $v0, 0x4F($s2)
    /* 1DBAC3C 80077EA0 4B67010C */  jal        func_80059D2C
    /* 1DBAC40 80077EA4 470040A2 */   sb        $zero, 0x47($s2)
    /* 1DBAC44 80077EA8 4B67010C */  jal        func_80059D2C
    /* 1DBAC48 80077EAC 450042A2 */   sb        $v0, 0x45($s2)
    /* 1DBAC4C 80077EB0 B9DF0108 */  j          .Llevel_26_80077EE4
    /* 1DBAC50 80077EB4 460042A2 */   sb        $v0, 0x46($s2)
  .Llevel_26_80077EB8:
    /* 1DBAC54 80077EB8 03006012 */  beqz       $s3, .Llevel_26_80077EC8
    /* 1DBAC58 80077EBC 0C006526 */   addiu     $a1, $s3, 0xC
    /* 1DBAC5C 80077EC0 B5DF0108 */  j          .Llevel_26_80077ED4
    /* 1DBAC60 80077EC4 0C004426 */   addiu     $a0, $s2, 0xC
  .Llevel_26_80077EC8:
    /* 1DBAC64 80077EC8 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1DBAC68 80077ECC 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1DBAC6C 80077ED0 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_26_80077ED4:
    /* 1DBAC70 80077ED4 6C6F000C */  jal        func_8001BDB0
    /* 1DBAC74 80077ED8 00000000 */   nop
    /* 1DBAC78 80077EDC 0E05010C */  jal        func_80041438
    /* 1DBAC7C 80077EE0 21204002 */   addu      $a0, $s2, $zero
  .Llevel_26_80077EE4:
    /* 1DBAC80 80077EE4 21104002 */  addu       $v0, $s2, $zero
  .Llevel_26_80077EE8:
    /* 1DBAC84 80077EE8 B400BF8F */  lw         $ra, 0xB4($sp)
    /* 1DBAC88 80077EEC B000BE8F */  lw         $fp, 0xB0($sp)
    /* 1DBAC8C 80077EF0 AC00B78F */  lw         $s7, 0xAC($sp)
    /* 1DBAC90 80077EF4 A800B68F */  lw         $s6, 0xA8($sp)
    /* 1DBAC94 80077EF8 A400B58F */  lw         $s5, 0xA4($sp)
    /* 1DBAC98 80077EFC A000B48F */  lw         $s4, 0xA0($sp)
    /* 1DBAC9C 80077F00 9C00B38F */  lw         $s3, 0x9C($sp)
    /* 1DBACA0 80077F04 9800B28F */  lw         $s2, 0x98($sp)
    /* 1DBACA4 80077F08 9400B18F */  lw         $s1, 0x94($sp)
    /* 1DBACA8 80077F0C 9000B08F */  lw         $s0, 0x90($sp)
    /* 1DBACAC 80077F10 B800BD27 */  addiu      $sp, $sp, 0xB8
    /* 1DBACB0 80077F14 0800E003 */  jr         $ra
    /* 1DBACB4 80077F18 00000000 */   nop
endlabel func_level_26_800773A8
    /* 1DBACB8 80077F1C 00000000 */  nop
