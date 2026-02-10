.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011B3C, 0x80

glabel func_80011B3C
    /* 233C 80011B3C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2340 80011B40 80000224 */  addiu      $v0, $zero, 0x80
    /* 2344 80011B44 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2348 80011B48 AE60010C */  jal        func_800582B8
    /* 234C 80011B4C 1000A2A3 */   sb        $v0, 0x10($sp)
    /* 2350 80011B50 0E000424 */  addiu      $a0, $zero, 0xE
    /* 2354 80011B54 1000A527 */  addiu      $a1, $sp, 0x10
    /* 2358 80011B58 1662010C */  jal        func_80058858
    /* 235C 80011B5C 21300000 */   addu      $a2, $zero, $zero
    /* 2360 80011B60 0180043C */  lui        $a0, %hi(func_8001379C)
    /* 2364 80011B64 9C378424 */  addiu      $a0, $a0, %lo(func_8001379C)
    /* 2368 80011B68 A960010C */  jal        func_800582A4
    /* 236C 80011B6C 00000000 */   nop
    /* 2370 80011B70 F4010424 */  addiu      $a0, $zero, 0x1F4
    /* 2374 80011B74 00080624 */  addiu      $a2, $zero, 0x800
    /* 2378 80011B78 F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 237C 80011B7C 0180053C */  lui        $a1, %hi(D_80011110)
    /* 2380 80011B80 1011A58C */  lw         $a1, %lo(D_80011110)($a1)
    /* 2384 80011B84 0780013C */  lui        $at, %hi(D_800682D8)
    /* 2388 80011B88 D88222AC */  sw         $v0, %lo(D_800682D8)($at)
    /* 238C 80011B8C 044E000C */  jal        func_80013810
    /* 2390 80011B90 21380000 */   addu      $a3, $zero, $zero
    /* 2394 80011B94 0680043C */  lui        $a0, %hi(D_800676D8)
    /* 2398 80011B98 D8768424 */  addiu      $a0, $a0, %lo(D_800676D8)
    /* 239C 80011B9C 0180053C */  lui        $a1, %hi(D_80011110)
    /* 23A0 80011BA0 1011A58C */  lw         $a1, %lo(D_80011110)($a1)
    /* 23A4 80011BA4 036D000C */  jal        func_8001B40C
    /* 23A8 80011BA8 28060624 */   addiu     $a2, $zero, 0x628
    /* 23AC 80011BAC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 23B0 80011BB0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 23B4 80011BB4 0800E003 */  jr         $ra
    /* 23B8 80011BB8 00000000 */   nop
endlabel func_80011B3C
