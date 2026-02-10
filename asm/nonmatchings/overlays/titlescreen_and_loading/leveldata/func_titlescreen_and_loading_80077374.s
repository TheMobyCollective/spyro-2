.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80077374, 0x854

glabel func_titlescreen_and_loading_80077374
    /* 2D110 80077374 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 2D114 80077378 3400B3AF */  sw         $s3, 0x34($sp)
    /* 2D118 8007737C 21988000 */  addu       $s3, $a0, $zero
    /* 2D11C 80077380 0100043C */  lui        $a0, (0x1C000 >> 16)
    /* 2D120 80077384 00C08434 */  ori        $a0, $a0, (0x1C000 & 0xFFFF)
    /* 2D124 80077388 3800BFAF */  sw         $ra, 0x38($sp)
    /* 2D128 8007738C 3000B2AF */  sw         $s2, 0x30($sp)
    /* 2D12C 80077390 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 2D130 80077394 5634010C */  jal        func_8004D158
    /* 2D134 80077398 2800B0AF */   sw        $s0, 0x28($sp)
    /* 2D138 8007739C 0680103C */  lui        $s0, %hi(D_80067E00)
    /* 2D13C 800773A0 007E1026 */  addiu      $s0, $s0, %lo(D_80067E00)
    /* 2D140 800773A4 21200002 */  addu       $a0, $s0, $zero
  alabel D_titlescreen_and_loading_800773A8
    /* 2D144 800773A8 21280000 */  addu       $a1, $zero, $zero
    /* 2D148 800773AC F26C000C */  jal        func_8001B3C8
    /* 2D14C 800773B0 84000624 */   addiu     $a2, $zero, 0x84
    /* 2D150 800773B4 1880023C */  lui        $v0, (0x80180000 >> 16)
    /* 2D154 800773B8 0680013C */  lui        $at, %hi(D_80067E74)
    /* 2D158 800773BC 747E22AC */  sw         $v0, %lo(D_80067E74)($at)
    /* 2D15C 800773C0 0A000224 */  addiu      $v0, $zero, 0xA
    /* 2D160 800773C4 0680013C */  lui        $at, %hi(D_80066D48)
    /* 2D164 800773C8 486D22AC */  sw         $v0, %lo(D_80066D48)($at)
    /* 2D168 800773CC 0680013C */  lui        $at, %hi(D_80066D4C)
    /* 2D16C 800773D0 4C6D22AC */  sw         $v0, %lo(D_80066D4C)($at)
    /* 2D170 800773D4 FF3F0224 */  addiu      $v0, $zero, 0x3FFF
    /* 2D174 800773D8 0780013C */  lui        $at, %hi(D_80068314)
    /* 2D178 800773DC 148322AC */  sw         $v0, %lo(D_80068314)($at)
    /* 2D17C 800773E0 1E006012 */  beqz       $s3, .Ltitlescreen_and_loading_8007745C
    /* 2D180 800773E4 1880053C */   lui       $a1, (0x80180000 >> 16)
    /* 2D184 800773E8 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 2D188 800773EC D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 2D18C 800773F0 0680073C */  lui        $a3, %hi(D_800676F0)
    /* 2D190 800773F4 F076E78C */  lw         $a3, %lo(D_800676F0)($a3)
    /* 2D194 800773F8 044E000C */  jal        func_80013810
    /* 2D198 800773FC 00200624 */   addiu     $a2, $zero, 0x2000
    /* 2D19C 80077400 B763010C */  jal        func_80058EDC
    /* 2D1A0 80077404 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2D1A4 80077408 0100053C */  lui        $a1, (0x1C000 >> 16)
    /* 2D1A8 8007740C 00C0A534 */  ori        $a1, $a1, (0x1C000 & 0xFFFF)
    /* 2D1AC 80077410 00800634 */  ori        $a2, $zero, 0x8000
    /* 2D1B0 80077414 0680043C */  lui        $a0, %hi(D_80067E74)
    /* 2D1B4 80077418 747E848C */  lw         $a0, %lo(D_80067E74)($a0)
    /* 2D1B8 8007741C 78000724 */  addiu      $a3, $zero, 0x78
    /* 2D1BC 80077420 000002AE */  sw         $v0, 0x0($s0)
    /* 2D1C0 80077424 A9DC010C */  jal        func_titlescreen_and_loading_800772A4
    /* 2D1C4 80077428 21288500 */   addu      $a1, $a0, $a1
    /* 2D1C8 8007742C 5647000C */  jal        func_80011D58
    /* 2D1CC 80077430 00000000 */   nop
    /* 2D1D0 80077434 5E47000C */  jal        func_80011D78
    /* 2D1D4 80077438 00000000 */   nop
    /* 2D1D8 8007743C CC47000C */  jal        func_80011F30
    /* 2D1DC 80077440 00000000 */   nop
    /* 2D1E0 80077444 1AF3010C */  jal        func_titlescreen_and_loading_8007CC68
    /* 2D1E4 80077448 00000000 */   nop
    /* 2D1E8 8007744C 20F4010C */  jal        func_titlescreen_and_loading_8007D080
    /* 2D1EC 80077450 21200000 */   addu      $a0, $zero, $zero
    /* 2D1F0 80077454 1CDD0108 */  j          .Ltitlescreen_and_loading_80077470
    /* 2D1F4 80077458 0100063C */   lui       $a2, (0x1A000 >> 16)
  .Ltitlescreen_and_loading_8007745C:
    /* 2D1F8 8007745C 0780033C */  lui        $v1, %hi(D_800681C8)
    /* 2D1FC 80077460 C881638C */  lw         $v1, %lo(D_800681C8)($v1)
    /* 2D200 80077464 09000224 */  addiu      $v0, $zero, 0x9
    /* 2D204 80077468 0B006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80077498
    /* 2D208 8007746C 0100063C */   lui       $a2, (0x1A000 >> 16)
  .Ltitlescreen_and_loading_80077470:
    /* 2D20C 80077470 00A0C634 */  ori        $a2, $a2, (0x1A000 & 0xFFFF)
    /* 2D210 80077474 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 2D214 80077478 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 2D218 8007747C 0680053C */  lui        $a1, %hi(D_80067E74)
    /* 2D21C 80077480 747EA58C */  lw         $a1, %lo(D_80067E74)($a1)
    /* 2D220 80077484 0680073C */  lui        $a3, %hi(D_800676F0)
    /* 2D224 80077488 F076E78C */  lw         $a3, %lo(D_800676F0)($a3)
    /* 2D228 8007748C 0020A524 */  addiu      $a1, $a1, 0x2000
    /* 2D22C 80077490 044E000C */  jal        func_80013810
    /* 2D230 80077494 0020E724 */   addiu     $a3, $a3, 0x2000
  .Ltitlescreen_and_loading_80077498:
    /* 2D234 80077498 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 2D238 8007749C D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 2D23C 800774A0 0180053C */  lui        $a1, %hi(D_80011110)
    /* 2D240 800774A4 1011A58C */  lw         $a1, %lo(D_80011110)($a1)
    /* 2D244 800774A8 0680023C */  lui        $v0, %hi(D_800670C4)
    /* 2D248 800774AC C470428C */  lw         $v0, %lo(D_800670C4)($v0)
    /* 2D24C 800774B0 0680073C */  lui        $a3, %hi(D_800679D0)
    /* 2D250 800774B4 D079E78C */  lw         $a3, %lo(D_800679D0)($a3)
    /* 2D254 800774B8 2128A200 */  addu       $a1, $a1, $v0
    /* 2D258 800774BC 0780013C */  lui        $at, %hi(D_8006B288)
    /* 2D25C 800774C0 88B225AC */  sw         $a1, %lo(D_8006B288)($at)
    /* 2D260 800774C4 0780013C */  lui        $at, %hi(D_8006B28C)
    /* 2D264 800774C8 8CB225AC */  sw         $a1, %lo(D_8006B28C)($at)
    /* 2D268 800774CC 464E000C */  jal        func_80013918
    /* 2D26C 800774D0 00080624 */   addiu     $a2, $zero, 0x800
    /* 2D270 800774D4 23006012 */  beqz       $s3, .Ltitlescreen_and_loading_80077564
    /* 2D274 800774D8 00000000 */   nop
    /* 2D278 800774DC 0680103C */  lui        $s0, %hi(D_80067E00)
    /* 2D27C 800774E0 007E1026 */  addiu      $s0, $s0, %lo(D_80067E00)
  .Ltitlescreen_and_loading_800774E4:
    /* 2D280 800774E4 B763010C */  jal        func_80058EDC
    /* 2D284 800774E8 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2D288 800774EC 0000038E */  lw         $v1, 0x0($s0)
    /* 2D28C 800774F0 00000000 */  nop
    /* 2D290 800774F4 23104300 */  subu       $v0, $v0, $v1
    /* 2D294 800774F8 A4004228 */  slti       $v0, $v0, 0xA4
    /* 2D298 800774FC 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_80077514
    /* 2D29C 80077500 00000000 */   nop
    /* 2D2A0 80077504 B763010C */  jal        func_80058EDC
    /* 2D2A4 80077508 21200000 */   addu      $a0, $zero, $zero
    /* 2D2A8 8007750C 39DD0108 */  j          .Ltitlescreen_and_loading_800774E4
    /* 2D2AC 80077510 00000000 */   nop
  .Ltitlescreen_and_loading_80077514:
    /* 2D2B0 80077514 0436010C */  jal        func_8004D810
    /* 2D2B4 80077518 00000000 */   nop
    /* 2D2B8 8007751C 2131010C */  jal        func_8004C484
    /* 2D2BC 80077520 00000000 */   nop
    /* 2D2C0 80077524 B763010C */  jal        func_80058EDC
    /* 2D2C4 80077528 04000424 */   addiu     $a0, $zero, 0x4
    /* 2D2C8 8007752C 0D006012 */  beqz       $s3, .Ltitlescreen_and_loading_80077564
    /* 2D2CC 80077530 00000000 */   nop
    /* 2D2D0 80077534 B763010C */  jal        func_80058EDC
    /* 2D2D4 80077538 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2D2D8 8007753C 0100053C */  lui        $a1, (0x1C000 >> 16)
    /* 2D2DC 80077540 00C0A534 */  ori        $a1, $a1, (0x1C000 & 0xFFFF)
    /* 2D2E0 80077544 0100063C */  lui        $a2, (0x18000 >> 16)
    /* 2D2E4 80077548 0080C634 */  ori        $a2, $a2, (0x18000 & 0xFFFF)
    /* 2D2E8 8007754C 7400038E */  lw         $v1, 0x74($s0)
    /* 2D2EC 80077550 58000724 */  addiu      $a3, $zero, 0x58
    /* 2D2F0 80077554 000002AE */  sw         $v0, 0x0($s0)
    /* 2D2F4 80077558 00206424 */  addiu      $a0, $v1, 0x2000
    /* 2D2F8 8007755C A9DC010C */  jal        func_titlescreen_and_loading_800772A4
    /* 2D2FC 80077560 21286500 */   addu      $a1, $v1, $a1
  .Ltitlescreen_and_loading_80077564:
    /* 2D300 80077564 A44D000C */  jal        func_80013690
    /* 2D304 80077568 00000000 */   nop
    /* 2D308 8007756C FDFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80077564
    /* 2D30C 80077570 00000000 */   nop
    /* 2D310 80077574 0780103C */  lui        $s0, %hi(D_8006B0A4)
    /* 2D314 80077578 A4B01026 */  addiu      $s0, $s0, %lo(D_8006B0A4)
    /* 2D318 8007757C 21200002 */  addu       $a0, $s0, $zero
    /* 2D31C 80077580 0780113C */  lui        $s1, %hi(D_8006B28C)
    /* 2D320 80077584 8CB23126 */  addiu      $s1, $s1, %lo(D_8006B28C)
    /* 2D324 80077588 0000258E */  lw         $a1, 0x0($s1)
    /* 2D328 8007758C 036D000C */  jal        func_8001B40C
    /* 2D32C 80077590 C0010624 */   addiu     $a2, $zero, 0x1C0
    /* 2D330 80077594 0800063C */  lui        $a2, (0x80000 >> 16)
    /* 2D334 80077598 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 2D338 8007759C D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 2D33C 800775A0 0000028E */  lw         $v0, 0x0($s0)
    /* 2D340 800775A4 0680073C */  lui        $a3, %hi(D_800679D0)
    /* 2D344 800775A8 D079E78C */  lw         $a3, %lo(D_800679D0)($a3)
    /* 2D348 800775AC 0000258E */  lw         $a1, 0x0($s1)
    /* 2D34C 800775B0 464E000C */  jal        func_80013918
    /* 2D350 800775B4 21384700 */   addu      $a3, $v0, $a3
    /* 2D354 800775B8 29006012 */  beqz       $s3, .Ltitlescreen_and_loading_80077660
    /* 2D358 800775BC 00000000 */   nop
    /* 2D35C 800775C0 21200000 */  addu       $a0, $zero, $zero
    /* 2D360 800775C4 0680103C */  lui        $s0, %hi(D_80067E68)
    /* 2D364 800775C8 687E1026 */  addiu      $s0, $s0, %lo(D_80067E68)
    /* 2D368 800775CC 21280002 */  addu       $a1, $s0, $zero
    /* 2D36C 800775D0 04001126 */  addiu      $s1, $s0, 0x4
    /* 2D370 800775D4 0FF7010C */  jal        func_titlescreen_and_loading_8007DC3C
    /* 2D374 800775D8 21302002 */   addu      $a2, $s1, $zero
    /* 2D378 800775DC 0400038E */  lw         $v1, 0x4($s0)
    /* 2D37C 800775E0 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D380 800775E4 03006210 */  beq        $v1, $v0, .Ltitlescreen_and_loading_800775F4
    /* 2D384 800775E8 21200000 */   addu      $a0, $zero, $zero
    /* 2D388 800775EC 13006014 */  bnez       $v1, .Ltitlescreen_and_loading_8007763C
    /* 2D38C 800775F0 00000000 */   nop
  .Ltitlescreen_and_loading_800775F4:
    /* 2D390 800775F4 0780063C */  lui        $a2, %hi(D_800683F0)
    /* 2D394 800775F8 F083C624 */  addiu      $a2, $a2, %lo(D_800683F0)
    /* 2D398 800775FC 21380000 */  addu       $a3, $zero, $zero
    /* 2D39C 80077600 0680053C */  lui        $a1, %hi(D_80066E6C)
    /* 2D3A0 80077604 6C6EA58C */  lw         $a1, %lo(D_80066E6C)($a1)
    /* 2D3A4 80077608 80000224 */  addiu      $v0, $zero, 0x80
    /* 2D3A8 8007760C DEF5010C */  jal        func_titlescreen_and_loading_8007D778
    /* 2D3AC 80077610 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2D3B0 80077614 21200000 */  addu       $a0, $zero, $zero
    /* 2D3B4 80077618 21280002 */  addu       $a1, $s0, $zero
    /* 2D3B8 8007761C 0FF7010C */  jal        func_titlescreen_and_loading_8007DC3C
    /* 2D3BC 80077620 21302002 */   addu      $a2, $s1, $zero
    /* 2D3C0 80077624 0000228E */  lw         $v0, 0x0($s1)
    /* 2D3C4 80077628 00000000 */  nop
    /* 2D3C8 8007762C 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_8007763C
    /* 2D3CC 80077630 01000224 */   addiu     $v0, $zero, 0x1
    /* 2D3D0 80077634 0680013C */  lui        $at, %hi(D_80067E04)
    /* 2D3D4 80077638 047E22AC */  sw         $v0, %lo(D_80067E04)($at)
  .Ltitlescreen_and_loading_8007763C:
    /* 2D3D8 8007763C 0680023C */  lui        $v0, %hi(D_80067E04)
    /* 2D3DC 80077640 047E428C */  lw         $v0, %lo(D_80067E04)($v0)
    /* 2D3E0 80077644 00000000 */  nop
    /* 2D3E4 80077648 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_80077658
    /* 2D3E8 8007764C 00000000 */   nop
    /* 2D3EC 80077650 20F4010C */  jal        func_titlescreen_and_loading_8007D080
    /* 2D3F0 80077654 10000424 */   addiu     $a0, $zero, 0x10
  .Ltitlescreen_and_loading_80077658:
    /* 2D3F4 80077658 06006016 */  bnez       $s3, .Ltitlescreen_and_loading_80077674
    /* 2D3F8 8007765C 00000000 */   nop
  .Ltitlescreen_and_loading_80077660:
    /* 2D3FC 80077660 0780033C */  lui        $v1, %hi(D_800681C8)
    /* 2D400 80077664 C881638C */  lw         $v1, %lo(D_800681C8)($v1)
    /* 2D404 80077668 09000224 */  addiu      $v0, $zero, 0x9
    /* 2D408 8007766C 16006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_800776C8
    /* 2D40C 80077670 00000000 */   nop
  .Ltitlescreen_and_loading_80077674:
    /* 2D410 80077674 0680103C */  lui        $s0, %hi(D_80067E00)
    /* 2D414 80077678 007E1026 */  addiu      $s0, $s0, %lo(D_80067E00)
  .Ltitlescreen_and_loading_8007767C:
    /* 2D418 8007767C B763010C */  jal        func_80058EDC
    /* 2D41C 80077680 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2D420 80077684 0000038E */  lw         $v1, 0x0($s0)
    /* 2D424 80077688 00000000 */  nop
    /* 2D428 8007768C 23104300 */  subu       $v0, $v0, $v1
    /* 2D42C 80077690 3C004228 */  slti       $v0, $v0, 0x3C
    /* 2D430 80077694 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_800776AC
    /* 2D434 80077698 0100053C */   lui       $a1, (0x1C000 >> 16)
    /* 2D438 8007769C B763010C */  jal        func_80058EDC
    /* 2D43C 800776A0 21200000 */   addu      $a0, $zero, $zero
    /* 2D440 800776A4 9FDD0108 */  j          .Ltitlescreen_and_loading_8007767C
    /* 2D444 800776A8 00000000 */   nop
  .Ltitlescreen_and_loading_800776AC:
    /* 2D448 800776AC 00C0A534 */  ori        $a1, $a1, (0x1C000 & 0xFFFF)
    /* 2D44C 800776B0 0100063C */  lui        $a2, (0x10000 >> 16)
    /* 2D450 800776B4 7400028E */  lw         $v0, 0x74($s0)
    /* 2D454 800776B8 C4000724 */  addiu      $a3, $zero, 0xC4
    /* 2D458 800776BC 00784424 */  addiu      $a0, $v0, 0x7800
    /* 2D45C 800776C0 A9DC010C */  jal        func_titlescreen_and_loading_800772A4
    /* 2D460 800776C4 21284500 */   addu      $a1, $v0, $a1
  .Ltitlescreen_and_loading_800776C8:
    /* 2D464 800776C8 3D006012 */  beqz       $s3, .Ltitlescreen_and_loading_800777C0
    /* 2D468 800776CC 00000000 */   nop
    /* 2D46C 800776D0 0680103C */  lui        $s0, %hi(D_80067E04)
    /* 2D470 800776D4 047E1026 */  addiu      $s0, $s0, %lo(D_80067E04)
    /* 2D474 800776D8 0000028E */  lw         $v0, 0x0($s0)
    /* 2D478 800776DC 00000000 */  nop
    /* 2D47C 800776E0 1D004014 */  bnez       $v0, .Ltitlescreen_and_loading_80077758
    /* 2D480 800776E4 21200000 */   addu      $a0, $zero, $zero
    /* 2D484 800776E8 64001226 */  addiu      $s2, $s0, 0x64
    /* 2D488 800776EC 21284002 */  addu       $a1, $s2, $zero
    /* 2D48C 800776F0 68001126 */  addiu      $s1, $s0, 0x68
    /* 2D490 800776F4 0FF7010C */  jal        func_titlescreen_and_loading_8007DC3C
    /* 2D494 800776F8 21302002 */   addu      $a2, $s1, $zero
    /* 2D498 800776FC 6800038E */  lw         $v1, 0x68($s0)
    /* 2D49C 80077700 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D4A0 80077704 03006210 */  beq        $v1, $v0, .Ltitlescreen_and_loading_80077714
    /* 2D4A4 80077708 10000424 */   addiu     $a0, $zero, 0x10
    /* 2D4A8 8007770C 12006014 */  bnez       $v1, .Ltitlescreen_and_loading_80077758
    /* 2D4AC 80077710 00000000 */   nop
  .Ltitlescreen_and_loading_80077714:
    /* 2D4B0 80077714 0780063C */  lui        $a2, %hi(D_800683F0)
    /* 2D4B4 80077718 F083C624 */  addiu      $a2, $a2, %lo(D_800683F0)
    /* 2D4B8 8007771C 21380000 */  addu       $a3, $zero, $zero
    /* 2D4BC 80077720 0680053C */  lui        $a1, %hi(D_80066E6C)
    /* 2D4C0 80077724 6C6EA58C */  lw         $a1, %lo(D_80066E6C)($a1)
    /* 2D4C4 80077728 80000224 */  addiu      $v0, $zero, 0x80
    /* 2D4C8 8007772C DEF5010C */  jal        func_titlescreen_and_loading_8007D778
    /* 2D4CC 80077730 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2D4D0 80077734 21200000 */  addu       $a0, $zero, $zero
    /* 2D4D4 80077738 21284002 */  addu       $a1, $s2, $zero
    /* 2D4D8 8007773C 0FF7010C */  jal        func_titlescreen_and_loading_8007DC3C
    /* 2D4DC 80077740 21302002 */   addu      $a2, $s1, $zero
    /* 2D4E0 80077744 6800028E */  lw         $v0, 0x68($s0)
    /* 2D4E4 80077748 00000000 */  nop
    /* 2D4E8 8007774C 02004014 */  bnez       $v0, .Ltitlescreen_and_loading_80077758
    /* 2D4EC 80077750 01000224 */   addiu     $v0, $zero, 0x1
    /* 2D4F0 80077754 000002AE */  sw         $v0, 0x0($s0)
  .Ltitlescreen_and_loading_80077758:
    /* 2D4F4 80077758 36F3010C */  jal        func_titlescreen_and_loading_8007CCD8
    /* 2D4F8 8007775C 00000000 */   nop
    /* 2D4FC 80077760 0680023C */  lui        $v0, %hi(D_80067E04)
    /* 2D500 80077764 047E428C */  lw         $v0, %lo(D_80067E04)($v0)
    /* 2D504 80077768 00000000 */  nop
    /* 2D508 8007776C 14004010 */  beqz       $v0, .Ltitlescreen_and_loading_800777C0
    /* 2D50C 80077770 00000000 */   nop
    /* 2D510 80077774 0780023C */  lui        $v0, %hi(D_8006846E)
    /* 2D514 80077778 6E844290 */  lbu        $v0, %lo(D_8006846E)($v0)
    /* 2D518 8007777C 0780043C */  lui        $a0, %hi(D_8006846F)
    /* 2D51C 80077780 6F848490 */  lbu        $a0, %lo(D_8006846F)($a0)
    /* 2D520 80077784 F0FF4324 */  addiu      $v1, $v0, -0x10
    /* 2D524 80077788 F0FF8424 */  addiu      $a0, $a0, -0x10
    /* 2D528 8007778C 2100422C */  sltiu      $v0, $v0, 0x21
    /* 2D52C 80077790 0680013C */  lui        $at, %hi(D_80067060)
    /* 2D530 80077794 607023AC */  sw         $v1, %lo(D_80067060)($at)
    /* 2D534 80077798 0680013C */  lui        $at, %hi(D_80067064)
    /* 2D538 8007779C 647024AC */  sw         $a0, %lo(D_80067064)($at)
    /* 2D53C 800777A0 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_800777B0
    /* 2D540 800777A4 1100822C */   sltiu     $v0, $a0, 0x11
    /* 2D544 800777A8 0680013C */  lui        $at, %hi(D_80067060)
    /* 2D548 800777AC 607020AC */  sw         $zero, %lo(D_80067060)($at)
  .Ltitlescreen_and_loading_800777B0:
    /* 2D54C 800777B0 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_800777C0
    /* 2D550 800777B4 00000000 */   nop
    /* 2D554 800777B8 0680013C */  lui        $at, %hi(D_80067064)
    /* 2D558 800777BC 647020AC */  sw         $zero, %lo(D_80067064)($at)
  .Ltitlescreen_and_loading_800777C0:
    /* 2D55C 800777C0 A44D000C */  jal        func_80013690
    /* 2D560 800777C4 00000000 */   nop
    /* 2D564 800777C8 FDFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_800777C0
    /* 2D568 800777CC 1800A427 */   addiu     $a0, $sp, 0x18
    /* 2D56C 800777D0 0780113C */  lui        $s1, %hi(D_8006B28C)
    /* 2D570 800777D4 8CB23126 */  addiu      $s1, $s1, %lo(D_8006B28C)
    /* 2D574 800777D8 0000258E */  lw         $a1, 0x0($s1)
    /* 2D578 800777DC 00020224 */  addiu      $v0, $zero, 0x200
    /* 2D57C 800777E0 1800A2A7 */  sh         $v0, 0x18($sp)
    /* 2D580 800777E4 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* 2D584 800777E8 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* 2D588 800777EC 7E56010C */  jal        func_800559F8
    /* 2D58C 800777F0 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* 2D590 800777F4 F955010C */  jal        func_800557E4
    /* 2D594 800777F8 21200000 */   addu      $a0, $zero, $zero
    /* 2D598 800777FC 0780123C */  lui        $s2, %hi(D_8006B0A8)
    /* 2D59C 80077800 A8B05226 */  addiu      $s2, $s2, %lo(D_8006B0A8)
    /* 2D5A0 80077804 F8FF033C */  lui        $v1, (0xFFF80000 >> 16)
    /* 2D5A4 80077808 0800103C */  lui        $s0, (0x80000 >> 16)
    /* 2D5A8 8007780C 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 2D5AC 80077810 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 2D5B0 80077814 0000258E */  lw         $a1, 0x0($s1)
    /* 2D5B4 80077818 0000468E */  lw         $a2, 0x0($s2)
    /* 2D5B8 8007781C 0780073C */  lui        $a3, %hi(D_8006B0A4)
    /* 2D5BC 80077820 A4B0E78C */  lw         $a3, %lo(D_8006B0A4)($a3)
    /* 2D5C0 80077824 0680023C */  lui        $v0, %hi(D_800679D0)
    /* 2D5C4 80077828 D079428C */  lw         $v0, %lo(D_800679D0)($v0)
    /* 2D5C8 8007782C 2130C300 */  addu       $a2, $a2, $v1
    /* 2D5CC 80077830 2138E200 */  addu       $a3, $a3, $v0
    /* 2D5D0 80077834 044E000C */  jal        func_80013810
    /* 2D5D4 80077838 2138F000 */   addu      $a3, $a3, $s0
    /* 2D5D8 8007783C EF67010C */  jal        func_80059FBC
    /* 2D5DC 80077840 10100424 */   addiu     $a0, $zero, 0x1010
    /* 2D5E0 80077844 0000458E */  lw         $a1, 0x0($s2)
    /* 2D5E4 80077848 0000248E */  lw         $a0, 0x0($s1)
    /* 2D5E8 8007784C AA6A010C */  jal        func_8005AAA8
    /* 2D5EC 80077850 2328B000 */   subu      $a1, $a1, $s0
  .Ltitlescreen_and_loading_80077854:
    /* 2D5F0 80077854 5768010C */  jal        func_8005A15C
    /* 2D5F4 80077858 21200000 */   addu      $a0, $zero, $zero
    /* 2D5F8 8007785C FDFF4010 */  beqz       $v0, .Ltitlescreen_and_loading_80077854
    /* 2D5FC 80077860 00000000 */   nop
    /* 2D600 80077864 0780103C */  lui        $s0, %hi(D_8006B28C)
    /* 2D604 80077868 8CB21026 */  addiu      $s0, $s0, %lo(D_8006B28C)
    /* 2D608 8007786C 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 2D60C 80077870 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 2D610 80077874 0000058E */  lw         $a1, 0x0($s0)
    /* 2D614 80077878 0780023C */  lui        $v0, %hi(D_8006B0AC)
    /* 2D618 8007787C ACB0428C */  lw         $v0, %lo(D_8006B0AC)($v0)
    /* 2D61C 80077880 0680073C */  lui        $a3, %hi(D_800679D0)
    /* 2D620 80077884 D079E78C */  lw         $a3, %lo(D_800679D0)($a3)
    /* 2D624 80077888 0780063C */  lui        $a2, %hi(D_8006B0B0)
    /* 2D628 8007788C B0B0C68C */  lw         $a2, %lo(D_8006B0B0)($a2)
    /* 2D62C 80077890 044E000C */  jal        func_80013810
    /* 2D630 80077894 21384700 */   addu      $a3, $v0, $a3
    /* 2D634 80077898 0000048E */  lw         $a0, 0x0($s0)
    /* 2D638 8007789C A6BE010C */  jal        func_titlescreen_and_loading_8006FA98
    /* 2D63C 800778A0 00000000 */   nop
    /* 2D640 800778A4 0780013C */  lui        $at, %hi(D_8006B290)
    /* 2D644 800778A8 90B222AC */  sw         $v0, %lo(D_8006B290)($at)
    /* 2D648 800778AC 7B71000C */  jal        func_8001C5EC
    /* 2D64C 800778B0 00000000 */   nop
    /* 2D650 800778B4 34006012 */  beqz       $s3, .Ltitlescreen_and_loading_80077988
    /* 2D654 800778B8 00000000 */   nop
    /* 2D658 800778BC 0680103C */  lui        $s0, %hi(D_80067E00)
    /* 2D65C 800778C0 007E1026 */  addiu      $s0, $s0, %lo(D_80067E00)
  .Ltitlescreen_and_loading_800778C4:
    /* 2D660 800778C4 B763010C */  jal        func_80058EDC
    /* 2D664 800778C8 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2D668 800778CC 0000038E */  lw         $v1, 0x0($s0)
    /* 2D66C 800778D0 00000000 */  nop
    /* 2D670 800778D4 23104300 */  subu       $v0, $v0, $v1
    /* 2D674 800778D8 B4004228 */  slti       $v0, $v0, 0xB4
    /* 2D678 800778DC 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_800778F4
    /* 2D67C 800778E0 00000000 */   nop
    /* 2D680 800778E4 B763010C */  jal        func_80058EDC
    /* 2D684 800778E8 21200000 */   addu      $a0, $zero, $zero
    /* 2D688 800778EC 31DE0108 */  j          .Ltitlescreen_and_loading_800778C4
    /* 2D68C 800778F0 00000000 */   nop
  .Ltitlescreen_and_loading_800778F4:
    /* 2D690 800778F4 0436010C */  jal        func_8004D810
    /* 2D694 800778F8 00000000 */   nop
    /* 2D698 800778FC 2131010C */  jal        func_8004C484
    /* 2D69C 80077900 00000000 */   nop
    /* 2D6A0 80077904 0400028E */  lw         $v0, 0x4($s0)
    /* 2D6A4 80077908 00000000 */  nop
    /* 2D6A8 8007790C 0D004010 */  beqz       $v0, .Ltitlescreen_and_loading_80077944
    /* 2D6AC 80077910 00000000 */   nop
    /* 2D6B0 80077914 0680023C */  lui        $v0, %hi(D_80067060)
    /* 2D6B4 80077918 60704294 */  lhu        $v0, %lo(D_80067060)($v0)
    /* 2D6B8 8007791C 0680033C */  lui        $v1, %hi(D_80067064)
    /* 2D6BC 80077920 64706394 */  lhu        $v1, %lo(D_80067064)($v1)
    /* 2D6C0 80077924 0780013C */  lui        $at, %hi(D_80069A00)
    /* 2D6C4 80077928 009A22A4 */  sh         $v0, %lo(D_80069A00)($at)
    /* 2D6C8 8007792C 0780013C */  lui        $at, %hi(D_8006998C)
    /* 2D6CC 80077930 8C9922A4 */  sh         $v0, %lo(D_8006998C)($at)
    /* 2D6D0 80077934 0780013C */  lui        $at, %hi(D_80069A02)
    /* 2D6D4 80077938 029A23A4 */  sh         $v1, %lo(D_80069A02)($at)
    /* 2D6D8 8007793C 0780013C */  lui        $at, %hi(D_8006998E)
    /* 2D6DC 80077940 8E9923A4 */  sh         $v1, %lo(D_8006998E)($at)
  .Ltitlescreen_and_loading_80077944:
    /* 2D6E0 80077944 B763010C */  jal        func_80058EDC
    /* 2D6E4 80077948 04000424 */   addiu     $a0, $zero, 0x4
    /* 2D6E8 8007794C 0E006012 */  beqz       $s3, .Ltitlescreen_and_loading_80077988
    /* 2D6EC 80077950 00000000 */   nop
    /* 2D6F0 80077954 B763010C */  jal        func_80058EDC
    /* 2D6F4 80077958 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2D6F8 8007795C 0100053C */  lui        $a1, (0x1C000 >> 16)
    /* 2D6FC 80077960 00C0A534 */  ori        $a1, $a1, (0x1C000 & 0xFFFF)
    /* 2D700 80077964 0200063C */  lui        $a2, (0x28000 >> 16)
    /* 2D704 80077968 0080C634 */  ori        $a2, $a2, (0x28000 & 0xFFFF)
    /* 2D708 8007796C 78000724 */  addiu      $a3, $zero, 0x78
    /* 2D70C 80077970 000002AE */  sw         $v0, 0x0($s0)
    /* 2D710 80077974 7400028E */  lw         $v0, 0x74($s0)
    /* 2D714 80077978 00B80434 */  ori        $a0, $zero, 0xB800
    /* 2D718 8007797C 21204400 */  addu       $a0, $v0, $a0
    /* 2D71C 80077980 A9DC010C */  jal        func_titlescreen_and_loading_800772A4
    /* 2D720 80077984 21284500 */   addu      $a1, $v0, $a1
  .Ltitlescreen_and_loading_80077988:
    /* 2D724 80077988 0780103C */  lui        $s0, %hi(D_8006B290)
    /* 2D728 8007798C 90B21026 */  addiu      $s0, $s0, %lo(D_8006B290)
    /* 2D72C 80077990 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 2D730 80077994 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 2D734 80077998 0000058E */  lw         $a1, 0x0($s0)
    /* 2D738 8007799C 0680063C */  lui        $a2, %hi(D_800679DC)
    /* 2D73C 800779A0 DC79C68C */  lw         $a2, %lo(D_800679DC)($a2)
    /* 2D740 800779A4 0680073C */  lui        $a3, %hi(D_800679D8)
    /* 2D744 800779A8 D879E78C */  lw         $a3, %lo(D_800679D8)($a3)
    /* 2D748 800779AC 044E000C */  jal        func_80013810
    /* 2D74C 800779B0 00000000 */   nop
    /* 2D750 800779B4 0000048E */  lw         $a0, 0x0($s0)
    /* 2D754 800779B8 0D000224 */  addiu      $v0, $zero, 0xD
    /* 2D758 800779BC 0780013C */  lui        $at, %hi(D_80068C3C)
    /* 2D75C 800779C0 3C8C20AC */  sw         $zero, %lo(D_80068C3C)($at)
    /* 2D760 800779C4 0780013C */  lui        $at, %hi(D_80068C40)
    /* 2D764 800779C8 408C22AC */  sw         $v0, %lo(D_80068C40)($at)
    /* 2D768 800779CC 78CE010C */  jal        func_titlescreen_and_loading_800739E0
    /* 2D76C 800779D0 21280000 */   addu      $a1, $zero, $zero
    /* 2D770 800779D4 05006012 */  beqz       $s3, .Ltitlescreen_and_loading_800779EC
    /* 2D774 800779D8 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 2D778 800779DC 0780013C */  lui        $at, %hi(D_80068C44)
    /* 2D77C 800779E0 448C22AC */  sw         $v0, %lo(D_80068C44)($at)
    /* 2D780 800779E4 81DE0108 */  j          .Ltitlescreen_and_loading_80077A04
    /* 2D784 800779E8 00000000 */   nop
  .Ltitlescreen_and_loading_800779EC:
    /* 2D788 800779EC 82020224 */  addiu      $v0, $zero, 0x282
    /* 2D78C 800779F0 0780013C */  lui        $at, %hi(D_80068C44)
    /* 2D790 800779F4 448C22AC */  sw         $v0, %lo(D_80068C44)($at)
    /* 2D794 800779F8 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 2D798 800779FC 0680013C */  lui        $at, %hi(D_80066F68)
    /* 2D79C 80077A00 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  .Ltitlescreen_and_loading_80077A04:
    /* 2D7A0 80077A04 0780103C */  lui        $s0, %hi(D_80068C48)
    /* 2D7A4 80077A08 488C1026 */  addiu      $s0, $s0, %lo(D_80068C48)
    /* 2D7A8 80077A0C 0780043C */  lui        $a0, %hi(D_8006B29C)
    /* 2D7AC 80077A10 9CB2848C */  lw         $a0, %lo(D_8006B29C)($a0)
    /* 2D7B0 80077A14 02000224 */  addiu      $v0, $zero, 0x2
    /* 2D7B4 80077A18 000002AE */  sw         $v0, 0x0($s0)
    /* 2D7B8 80077A1C 0780013C */  lui        $at, %hi(D_80069941)
    /* 2D7BC 80077A20 419920A0 */  sb         $zero, %lo(D_80069941)($at)
    /* 2D7C0 80077A24 0780013C */  lui        $at, %hi(D_80069942)
    /* 2D7C4 80077A28 429920A0 */  sb         $zero, %lo(D_80069942)($at)
    /* 2D7C8 80077A2C 0780013C */  lui        $at, %hi(D_80069943)
    /* 2D7CC 80077A30 439920A0 */  sb         $zero, %lo(D_80069943)($at)
    /* 2D7D0 80077A34 0780013C */  lui        $at, %hi(D_800699B5)
    /* 2D7D4 80077A38 B59920A0 */  sb         $zero, %lo(D_800699B5)($at)
    /* 2D7D8 80077A3C 0780013C */  lui        $at, %hi(D_800699B6)
    /* 2D7DC 80077A40 B69920A0 */  sb         $zero, %lo(D_800699B6)($at)
    /* 2D7E0 80077A44 0780013C */  lui        $at, %hi(D_800699B7)
    /* 2D7E4 80077A48 B79920A0 */  sb         $zero, %lo(D_800699B7)($at)
    /* 2D7E8 80077A4C A371000C */  jal        func_8001C68C
    /* 2D7EC 80077A50 FCDF8424 */   addiu     $a0, $a0, -0x2004
    /* 2D7F0 80077A54 21280000 */  addu       $a1, $zero, $zero
    /* 2D7F4 80077A58 0680043C */  lui        $a0, %hi(D_80066F18)
    /* 2D7F8 80077A5C 186F848C */  lw         $a0, %lo(D_80066F18)($a0)
    /* 2D7FC 80077A60 00000000 */  nop
    /* 2D800 80077A64 00F08424 */  addiu      $a0, $a0, -0x1000
    /* 2D804 80077A68 0680013C */  lui        $at, %hi(D_80067174)
    /* 2D808 80077A6C 747124AC */  sw         $a0, %lo(D_80067174)($at)
    /* 2D80C 80077A70 F26C000C */  jal        func_8001B3C8
    /* 2D810 80077A74 00100624 */   addiu     $a2, $zero, 0x1000
    /* 2D814 80077A78 38000426 */  addiu      $a0, $s0, 0x38
    /* 2D818 80077A7C 0680053C */  lui        $a1, %hi(D_80067068)
    /* 2D81C 80077A80 6870A58C */  lw         $a1, %lo(D_80067068)($a1)
    /* 2D820 80077A84 036D000C */  jal        func_8001B40C
    /* 2D824 80077A88 14000624 */   addiu     $a2, $zero, 0x14
    /* 2D828 80077A8C 05006012 */  beqz       $s3, .Ltitlescreen_and_loading_80077AA4
    /* 2D82C 80077A90 0200033C */   lui       $v1, (0x21010 >> 16)
    /* 2D830 80077A94 0680023C */  lui        $v0, %hi(D_80067068)
    /* 2D834 80077A98 6870428C */  lw         $v0, %lo(D_80067068)($v0)
    /* 2D838 80077A9C B5DE0108 */  j          .Ltitlescreen_and_loading_80077AD4
    /* 2D83C 80077AA0 10106334 */   ori       $v1, $v1, (0x21010 & 0xFFFF)
  .Ltitlescreen_and_loading_80077AA4:
    /* 2D840 80077AA4 0780033C */  lui        $v1, %hi(D_800681C8)
    /* 2D844 80077AA8 C881638C */  lw         $v1, %lo(D_800681C8)($v1)
    /* 2D848 80077AAC 09000224 */  addiu      $v0, $zero, 0x9
    /* 2D84C 80077AB0 05006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80077AC8
    /* 2D850 80077AB4 0400033C */   lui       $v1, (0x41EB0 >> 16)
    /* 2D854 80077AB8 0680023C */  lui        $v0, %hi(D_80067068)
    /* 2D858 80077ABC 6870428C */  lw         $v0, %lo(D_80067068)($v0)
    /* 2D85C 80077AC0 B5DE0108 */  j          .Ltitlescreen_and_loading_80077AD4
    /* 2D860 80077AC4 B01E6334 */   ori       $v1, $v1, (0x41EB0 & 0xFFFF)
  .Ltitlescreen_and_loading_80077AC8:
    /* 2D864 80077AC8 0680023C */  lui        $v0, %hi(D_80067068)
    /* 2D868 80077ACC 6870428C */  lw         $v0, %lo(D_80067068)($v0)
    /* 2D86C 80077AD0 B00C6334 */  ori        $v1, $v1, (0x40CB0 & 0xFFFF)
  .Ltitlescreen_and_loading_80077AD4:
    /* 2D870 80077AD4 000043AC */  sw         $v1, 0x0($v0)
    /* 2D874 80077AD8 21200000 */  addu       $a0, $zero, $zero
    /* 2D878 80077ADC 21280000 */  addu       $a1, $zero, $zero
    /* 2D87C 80077AE0 21300000 */  addu       $a2, $zero, $zero
    /* 2D880 80077AE4 0680033C */  lui        $v1, %hi(D_80067068)
    /* 2D884 80077AE8 6870638C */  lw         $v1, %lo(D_80067068)($v1)
    /* 2D888 80077AEC FF2F0224 */  addiu      $v0, $zero, 0x2FFF
    /* 2D88C 80077AF0 060062A4 */  sh         $v0, 0x6($v1)
    /* 2D890 80077AF4 00080224 */  addiu      $v0, $zero, 0x800
    /* 2D894 80077AF8 0C0062A4 */  sh         $v0, 0xC($v1)
    /* 2D898 80077AFC C841010C */  jal        func_80050720
    /* 2D89C 80077B00 0E0062A4 */   sh        $v0, 0xE($v1)
    /* 2D8A0 80077B04 0780033C */  lui        $v1, %hi(D_80068C58)
    /* 2D8A4 80077B08 588C638C */  lw         $v1, %lo(D_80068C58)($v1)
    /* 2D8A8 80077B0C 0780013C */  lui        $at, %hi(D_80068C7C)
    /* 2D8AC 80077B10 7C8C22AC */  sw         $v0, %lo(D_80068C7C)($at)
    /* 2D8B0 80077B14 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D8B4 80077B18 0780013C */  lui        $at, %hi(D_8006A250)
    /* 2D8B8 80077B1C 50A222AC */  sw         $v0, %lo(D_8006A250)($at)
    /* 2D8BC 80077B20 12006018 */  blez       $v1, .Ltitlescreen_and_loading_80077B6C
    /* 2D8C0 80077B24 21800000 */   addu      $s0, $zero, $zero
    /* 2D8C4 80077B28 21280002 */  addu       $a1, $s0, $zero
  .Ltitlescreen_and_loading_80077B2C:
    /* 2D8C8 80077B2C 0780033C */  lui        $v1, %hi(D_80068C5C)
    /* 2D8CC 80077B30 5C8C638C */  lw         $v1, %lo(D_80068C5C)($v1)
    /* 2D8D0 80077B34 80101000 */  sll        $v0, $s0, 2
    /* 2D8D4 80077B38 21104300 */  addu       $v0, $v0, $v1
    /* 2D8D8 80077B3C 0780033C */  lui        $v1, %hi(D_8006B290)
    /* 2D8DC 80077B40 90B2638C */  lw         $v1, %lo(D_8006B290)($v1)
    /* 2D8E0 80077B44 0000448C */  lw         $a0, 0x0($v0)
    /* 2D8E4 80077B48 21300000 */  addu       $a2, $zero, $zero
    /* 2D8E8 80077B4C 19CF010C */  jal        func_titlescreen_and_loading_80073C64
    /* 2D8EC 80077B50 21206400 */   addu      $a0, $v1, $a0
    /* 2D8F0 80077B54 0780023C */  lui        $v0, %hi(D_80068C58)
    /* 2D8F4 80077B58 588C428C */  lw         $v0, %lo(D_80068C58)($v0)
    /* 2D8F8 80077B5C 01001026 */  addiu      $s0, $s0, 0x1
    /* 2D8FC 80077B60 2A100202 */  slt        $v0, $s0, $v0
    /* 2D900 80077B64 F1FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80077B2C
    /* 2D904 80077B68 21280002 */   addu      $a1, $s0, $zero
  .Ltitlescreen_and_loading_80077B6C:
    /* 2D908 80077B6C 0E006012 */  beqz       $s3, .Ltitlescreen_and_loading_80077BA8
    /* 2D90C 80077B70 00000000 */   nop
  .Ltitlescreen_and_loading_80077B74:
    /* 2D910 80077B74 B763010C */  jal        func_80058EDC
    /* 2D914 80077B78 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 2D918 80077B7C 0680033C */  lui        $v1, %hi(D_80067E00)
    /* 2D91C 80077B80 007E638C */  lw         $v1, %lo(D_80067E00)($v1)
    /* 2D920 80077B84 00000000 */  nop
    /* 2D924 80077B88 23104300 */  subu       $v0, $v0, $v1
    /* 2D928 80077B8C B4004228 */  slti       $v0, $v0, 0xB4
    /* 2D92C 80077B90 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_80077BA8
    /* 2D930 80077B94 00000000 */   nop
    /* 2D934 80077B98 B763010C */  jal        func_80058EDC
    /* 2D938 80077B9C 21200000 */   addu      $a0, $zero, $zero
    /* 2D93C 80077BA0 DDDE0108 */  j          .Ltitlescreen_and_loading_80077B74
    /* 2D940 80077BA4 00000000 */   nop
  .Ltitlescreen_and_loading_80077BA8:
    /* 2D944 80077BA8 3800BF8F */  lw         $ra, 0x38($sp)
    /* 2D948 80077BAC 3400B38F */  lw         $s3, 0x34($sp)
    /* 2D94C 80077BB0 3000B28F */  lw         $s2, 0x30($sp)
    /* 2D950 80077BB4 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 2D954 80077BB8 2800B08F */  lw         $s0, 0x28($sp)
    /* 2D958 80077BBC 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 2D95C 80077BC0 0800E003 */  jr         $ra
    /* 2D960 80077BC4 00000000 */   nop
endlabel func_titlescreen_and_loading_80077374
