.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001AAA4, 0x17C

glabel func_8001AAA4
    /* B2A4 8001AAA4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B2A8 8001AAA8 0100043C */  lui        $a0, (0x1C000 >> 16)
    /* B2AC 8001AAAC 0B000224 */  addiu      $v0, $zero, 0xB
    /* B2B0 8001AAB0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* B2B4 8001AAB4 1800B2AF */  sw         $s2, 0x18($sp)
    /* B2B8 8001AAB8 1400B1AF */  sw         $s1, 0x14($sp)
    /* B2BC 8001AABC 1000B0AF */  sw         $s0, 0x10($sp)
    /* B2C0 8001AAC0 0780013C */  lui        $at, %hi(D_800681C8)
    /* B2C4 8001AAC4 C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* B2C8 8001AAC8 0680013C */  lui        $at, %hi(D_80067024)
    /* B2CC 8001AACC 247020AC */  sw         $zero, %lo(D_80067024)($at)
    /* B2D0 8001AAD0 0680013C */  lui        $at, %hi(D_80067178)
    /* B2D4 8001AAD4 787120AC */  sw         $zero, %lo(D_80067178)($at)
    /* B2D8 8001AAD8 0680013C */  lui        $at, %hi(D_80067044)
    /* B2DC 8001AADC 447020AC */  sw         $zero, %lo(D_80067044)($at)
    /* B2E0 8001AAE0 0680013C */  lui        $at, %hi(D_80067100)
    /* B2E4 8001AAE4 007120AC */  sw         $zero, %lo(D_80067100)($at)
    /* B2E8 8001AAE8 0680013C */  lui        $at, %hi(D_8006701C)
    /* B2EC 8001AAEC 1C7020AC */  sw         $zero, %lo(D_8006701C)($at)
    /* B2F0 8001AAF0 5634010C */  jal        func_8004D158
    /* B2F4 8001AAF4 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
    /* B2F8 8001AAF8 0680043C */  lui        $a0, %hi(D_80067E00)
    /* B2FC 8001AAFC 007E8424 */  addiu      $a0, $a0, %lo(D_80067E00)
    /* B300 8001AB00 21280000 */  addu       $a1, $zero, $zero
    /* B304 8001AB04 F26C000C */  jal        func_8001B3C8
    /* B308 8001AB08 84000624 */   addiu     $a2, $zero, 0x84
    /* B30C 8001AB0C 0680043C */  lui        $a0, %hi(D_8006765C)
    /* B310 8001AB10 5C768424 */  addiu      $a0, $a0, %lo(D_8006765C)
    /* B314 8001AB14 21280000 */  addu       $a1, $zero, $zero
    /* B318 8001AB18 F26C000C */  jal        func_8001B3C8
    /* B31C 8001AB1C 7C000624 */   addiu     $a2, $zero, 0x7C
    /* B320 8001AB20 0780043C */  lui        $a0, %hi(D_80069FF0)
    /* B324 8001AB24 F09F8424 */  addiu      $a0, $a0, %lo(D_80069FF0)
    /* B328 8001AB28 21280000 */  addu       $a1, $zero, $zero
    /* B32C 8001AB2C F26C000C */  jal        func_8001B3C8
    /* B330 8001AB30 C4020624 */   addiu     $a2, $zero, 0x2C4
    /* B334 8001AB34 0780043C */  lui        $a0, %hi(D_800698D0)
    /* B338 8001AB38 D0988424 */  addiu      $a0, $a0, %lo(D_800698D0)
    /* B33C 8001AB3C 21280000 */  addu       $a1, $zero, $zero
    /* B340 8001AB40 F26C000C */  jal        func_8001B3C8
    /* B344 8001AB44 1C000624 */   addiu     $a2, $zero, 0x1C
    /* B348 8001AB48 0780043C */  lui        $a0, %hi(D_8006AA1C)
    /* B34C 8001AB4C 1CAA8424 */  addiu      $a0, $a0, %lo(D_8006AA1C)
    /* B350 8001AB50 21280000 */  addu       $a1, $zero, $zero
    /* B354 8001AB54 F26C000C */  jal        func_8001B3C8
    /* B358 8001AB58 30010624 */   addiu     $a2, $zero, 0x130
    /* B35C 8001AB5C 0680043C */  lui        $a0, %hi(D_80067E84)
    /* B360 8001AB60 847E8424 */  addiu      $a0, $a0, %lo(D_80067E84)
    /* B364 8001AB64 21280000 */  addu       $a1, $zero, $zero
    /* B368 8001AB68 F26C000C */  jal        func_8001B3C8
    /* B36C 8001AB6C F4010624 */   addiu     $a2, $zero, 0x1F4
    /* B370 8001AB70 0680043C */  lui        $a0, %hi(D_80067414)
    /* B374 8001AB74 14748424 */  addiu      $a0, $a0, %lo(D_80067414)
    /* B378 8001AB78 21280000 */  addu       $a1, $zero, $zero
    /* B37C 8001AB7C 0680123C */  lui        $s2, %hi(D_80061A8C)
    /* B380 8001AB80 8C1A5226 */  addiu      $s2, $s2, %lo(D_80061A8C)
    /* B384 8001AB84 0000438E */  lw         $v1, 0x0($s2)
    /* B388 8001AB88 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B38C 8001AB8C 0780013C */  lui        $at, %hi(D_8006A254)
    /* B390 8001AB90 54A222AC */  sw         $v0, %lo(D_8006A254)($at)
    /* B394 8001AB94 0780013C */  lui        $at, %hi(D_8006A25C)
    /* B398 8001AB98 5CA222AC */  sw         $v0, %lo(D_8006A25C)($at)
    /* B39C 8001AB9C 0780013C */  lui        $at, %hi(D_8006A248)
    /* B3A0 8001ABA0 48A223AC */  sw         $v1, %lo(D_8006A248)($at)
    /* B3A4 8001ABA4 F26C000C */  jal        func_8001B3C8
    /* B3A8 8001ABA8 48020624 */   addiu     $a2, $zero, 0x248
    /* B3AC 8001ABAC 0680043C */  lui        $a0, %hi(D_8006718C)
    /* B3B0 8001ABB0 8C718424 */  addiu      $a0, $a0, %lo(D_8006718C)
    /* B3B4 8001ABB4 21280000 */  addu       $a1, $zero, $zero
    /* B3B8 8001ABB8 F26C000C */  jal        func_8001B3C8
    /* B3BC 8001ABBC 48020624 */   addiu     $a2, $zero, 0x248
    /* B3C0 8001ABC0 0780103C */  lui        $s0, %hi(D_800698BB)
    /* B3C4 8001ABC4 BB981026 */  addiu      $s0, $s0, %lo(D_800698BB)
    /* B3C8 8001ABC8 FDFF0426 */  addiu      $a0, $s0, -0x3
    /* B3CC 8001ABCC 21280000 */  addu       $a1, $zero, $zero
    /* B3D0 8001ABD0 00001192 */  lbu        $s1, 0x0($s0)
    /* B3D4 8001ABD4 F26C000C */  jal        func_8001B3C8
    /* B3D8 8001ABD8 18000624 */   addiu     $a2, $zero, 0x18
    /* B3DC 8001ABDC 21204002 */  addu       $a0, $s2, $zero
    /* B3E0 8001ABE0 0680053C */  lui        $a1, %hi(D_80061AB4)
    /* B3E4 8001ABE4 B41AA524 */  addiu      $a1, $a1, %lo(D_80061AB4)
    /* B3E8 8001ABE8 28000624 */  addiu      $a2, $zero, 0x28
    /* B3EC 8001ABEC 036D000C */  jal        func_8001B40C
    /* B3F0 8001ABF0 000011A2 */   sb        $s1, 0x0($s0)
    /* B3F4 8001ABF4 B670000C */  jal        func_8001C2D8
    /* B3F8 8001ABF8 00000000 */   nop
    /* B3FC 8001ABFC 5767010C */  jal        func_80059D5C
    /* B400 8001AC00 21204000 */   addu      $a0, $v0, $zero
    /* B404 8001AC04 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* B408 8001AC08 1800B28F */  lw         $s2, 0x18($sp)
    /* B40C 8001AC0C 1400B18F */  lw         $s1, 0x14($sp)
    /* B410 8001AC10 1000B08F */  lw         $s0, 0x10($sp)
    /* B414 8001AC14 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B418 8001AC18 0800E003 */  jr         $ra
    /* B41C 8001AC1C 00000000 */   nop
endlabel func_8001AAA4
