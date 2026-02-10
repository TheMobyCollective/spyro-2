.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011BBC, 0x168

glabel func_80011BBC
    /* 23BC 80011BBC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 23C0 80011BC0 21200000 */  addu       $a0, $zero, $zero
    /* 23C4 80011BC4 2400BFAF */  sw         $ra, 0x24($sp)
    /* 23C8 80011BC8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 23CC 80011BCC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 23D0 80011BD0 B763010C */  jal        func_80058EDC
    /* 23D4 80011BD4 1800B0AF */   sw        $s0, 0x18($sp)
    /* 23D8 80011BD8 D355010C */  jal        func_8005574C
    /* 23DC 80011BDC 21200000 */   addu      $a0, $zero, $zero
    /* 23E0 80011BE0 5F55010C */  jal        func_8005557C
    /* 23E4 80011BE4 21200000 */   addu      $a0, $zero, $zero
    /* 23E8 80011BE8 BC55010C */  jal        func_800556F0
    /* 23EC 80011BEC 21200000 */   addu      $a0, $zero, $zero
    /* 23F0 80011BF0 0780103C */  lui        $s0, %hi(D_80069928)
    /* 23F4 80011BF4 28991026 */  addiu      $s0, $s0, %lo(D_80069928)
    /* 23F8 80011BF8 21200002 */  addu       $a0, $s0, $zero
    /* 23FC 80011BFC 21280000 */  addu       $a1, $zero, $zero
    /* 2400 80011C00 0C000624 */  addiu      $a2, $zero, 0xC
    /* 2404 80011C04 00020724 */  addiu      $a3, $zero, 0x200
    /* 2408 80011C08 D8001124 */  addiu      $s1, $zero, 0xD8
    /* 240C 80011C0C 8763010C */  jal        func_80058E1C
    /* 2410 80011C10 1000B1AF */   sw        $s1, 0x10($sp)
    /* 2414 80011C14 74001226 */  addiu      $s2, $s0, 0x74
    /* 2418 80011C18 21204002 */  addu       $a0, $s2, $zero
    /* 241C 80011C1C 21280000 */  addu       $a1, $zero, $zero
    /* 2420 80011C20 F0000624 */  addiu      $a2, $zero, 0xF0
    /* 2424 80011C24 00020724 */  addiu      $a3, $zero, 0x200
    /* 2428 80011C28 8763010C */  jal        func_80058E1C
    /* 242C 80011C2C 1000B1AF */   sw        $s1, 0x10($sp)
    /* 2430 80011C30 5C000426 */  addiu      $a0, $s0, 0x5C
    /* 2434 80011C34 21280000 */  addu       $a1, $zero, $zero
    /* 2438 80011C38 E4000624 */  addiu      $a2, $zero, 0xE4
    /* 243C 80011C3C 00020724 */  addiu      $a3, $zero, 0x200
    /* 2440 80011C40 F0001124 */  addiu      $s1, $zero, 0xF0
    /* 2444 80011C44 3B64010C */  jal        func_800590EC
    /* 2448 80011C48 1000B1AF */   sw        $s1, 0x10($sp)
    /* 244C 80011C4C D0001026 */  addiu      $s0, $s0, 0xD0
    /* 2450 80011C50 21200002 */  addu       $a0, $s0, $zero
    /* 2454 80011C54 21280000 */  addu       $a1, $zero, $zero
    /* 2458 80011C58 21300000 */  addu       $a2, $zero, $zero
    /* 245C 80011C5C 00020724 */  addiu      $a3, $zero, 0x200
    /* 2460 80011C60 3B64010C */  jal        func_800590EC
    /* 2464 80011C64 1000B1AF */   sw        $s1, 0x10($sp)
    /* 2468 80011C68 E4000224 */  addiu      $v0, $zero, 0xE4
    /* 246C 80011C6C 0780013C */  lui        $at, %hi(D_800699A6)
    /* 2470 80011C70 A69922A4 */  sh         $v0, %lo(D_800699A6)($at)
    /* 2474 80011C74 01000224 */  addiu      $v0, $zero, 0x1
    /* 2478 80011C78 0780013C */  lui        $at, %hi(D_80069930)
    /* 247C 80011C7C 309920A4 */  sh         $zero, %lo(D_80069930)($at)
    /* 2480 80011C80 0780013C */  lui        $at, %hi(D_80069932)
    /* 2484 80011C84 329920A4 */  sh         $zero, %lo(D_80069932)($at)
    /* 2488 80011C88 0780013C */  lui        $at, %hi(D_800699A4)
    /* 248C 80011C8C A49920A4 */  sh         $zero, %lo(D_800699A4)($at)
    /* 2490 80011C90 0780013C */  lui        $at, %hi(D_80069A00)
    /* 2494 80011C94 009A20A4 */  sh         $zero, %lo(D_80069A00)($at)
    /* 2498 80011C98 0780013C */  lui        $at, %hi(D_8006998C)
    /* 249C 80011C9C 8C9920A4 */  sh         $zero, %lo(D_8006998C)($at)
    /* 24A0 80011CA0 0780013C */  lui        $at, %hi(D_80069A02)
    /* 24A4 80011CA4 029A20A4 */  sh         $zero, %lo(D_80069A02)($at)
    /* 24A8 80011CA8 0780013C */  lui        $at, %hi(D_8006998E)
    /* 24AC 80011CAC 8E9920A4 */  sh         $zero, %lo(D_8006998E)($at)
    /* 24B0 80011CB0 0780013C */  lui        $at, %hi(D_80069940)
    /* 24B4 80011CB4 409922A0 */  sb         $v0, %lo(D_80069940)($at)
    /* 24B8 80011CB8 0780013C */  lui        $at, %hi(D_800699B4)
    /* 24BC 80011CBC B49922A0 */  sb         $v0, %lo(D_800699B4)($at)
    /* 24C0 80011CC0 0780013C */  lui        $at, %hi(D_8006993E)
    /* 24C4 80011CC4 3E9922A0 */  sb         $v0, %lo(D_8006993E)($at)
    /* 24C8 80011CC8 0780013C */  lui        $at, %hi(D_800699B2)
    /* 24CC 80011CCC B29922A0 */  sb         $v0, %lo(D_800699B2)($at)
    /* 24D0 80011CD0 2131010C */  jal        func_8004C484
    /* 24D4 80011CD4 00000000 */   nop
    /* 24D8 80011CD8 B763010C */  jal        func_80058EDC
    /* 24DC 80011CDC 21200000 */   addu      $a0, $zero, $zero
    /* 24E0 80011CE0 0680013C */  lui        $at, %hi(D_80066FC0)
    /* 24E4 80011CE4 C06F32AC */  sw         $s2, %lo(D_80066FC0)($at)
    /* 24E8 80011CE8 2857010C */  jal        func_80055CA0
    /* 24EC 80011CEC 21200002 */   addu      $a0, $s0, $zero
    /* 24F0 80011CF0 0680043C */  lui        $a0, %hi(D_80066FC0)
    /* 24F4 80011CF4 C06F848C */  lw         $a0, %lo(D_80066FC0)($a0)
    /* 24F8 80011CF8 F856010C */  jal        func_80055BE0
    /* 24FC 80011CFC 00000000 */   nop
    /* 2500 80011D00 D355010C */  jal        func_8005574C
    /* 2504 80011D04 01000424 */   addiu     $a0, $zero, 0x1
    /* 2508 80011D08 2400BF8F */  lw         $ra, 0x24($sp)
    /* 250C 80011D0C 2000B28F */  lw         $s2, 0x20($sp)
    /* 2510 80011D10 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2514 80011D14 1800B08F */  lw         $s0, 0x18($sp)
    /* 2518 80011D18 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 251C 80011D1C 0800E003 */  jr         $ra
    /* 2520 80011D20 00000000 */   nop
endlabel func_80011BBC
