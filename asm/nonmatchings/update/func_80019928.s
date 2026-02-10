.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019928, 0x318

glabel func_80019928
    /* A128 80019928 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* A12C 8001992C 3400B5AF */  sw         $s5, 0x34($sp)
    /* A130 80019930 21A88000 */  addu       $s5, $a0, $zero
    /* A134 80019934 3800BFAF */  sw         $ra, 0x38($sp)
    /* A138 80019938 3000B4AF */  sw         $s4, 0x30($sp)
    /* A13C 8001993C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* A140 80019940 2800B2AF */  sw         $s2, 0x28($sp)
    /* A144 80019944 2400B1AF */  sw         $s1, 0x24($sp)
    /* A148 80019948 9500A006 */  bltz       $s5, .L80019BA0
    /* A14C 8001994C 2000B0AF */   sw        $s0, 0x20($sp)
    /* A150 80019950 01000624 */  addiu      $a2, $zero, 0x1
    /* A154 80019954 00811500 */  sll        $s0, $s5, 4
    /* A158 80019958 21801502 */  addu       $s0, $s0, $s5
    /* A15C 8001995C 0680023C */  lui        $v0, %hi(D_80066F00)
    /* A160 80019960 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* A164 80019964 80801000 */  sll        $s0, $s0, 2
    /* A168 80019968 21100202 */  addu       $v0, $s0, $v0
    /* A16C 8001996C 3000478C */  lw         $a3, 0x30($v0)
    /* A170 80019970 0000448C */  lw         $a0, 0x0($v0)
    /* A174 80019974 3400438C */  lw         $v1, 0x34($v0)
    /* A178 80019978 0400458C */  lw         $a1, 0x4($v0)
    /* A17C 8001997C 2320E400 */  subu       $a0, $a3, $a0
    /* A180 80019980 2E6D000C */  jal        func_8001B4B8
    /* A184 80019984 23286500 */   subu      $a1, $v1, $a1
    /* A188 80019988 21984000 */  addu       $s3, $v0, $zero
    /* A18C 8001998C 01000624 */  addiu      $a2, $zero, 0x1
    /* A190 80019990 0680023C */  lui        $v0, %hi(D_80066F00)
    /* A194 80019994 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* A198 80019998 0780033C */  lui        $v1, %hi(D_80069FF0)
    /* A19C 8001999C F09F638C */  lw         $v1, %lo(D_80069FF0)($v1)
    /* A1A0 800199A0 21800202 */  addu       $s0, $s0, $v0
    /* A1A4 800199A4 1800048E */  lw         $a0, 0x18($s0)
    /* A1A8 800199A8 0780023C */  lui        $v0, %hi(D_80069FF4)
    /* A1AC 800199AC F49F428C */  lw         $v0, %lo(D_80069FF4)($v0)
    /* A1B0 800199B0 1C00058E */  lw         $a1, 0x1C($s0)
    /* A1B4 800199B4 23206400 */  subu       $a0, $v1, $a0
    /* A1B8 800199B8 2E6D000C */  jal        func_8001B4B8
    /* A1BC 800199BC 23284500 */   subu      $a1, $v0, $a1
    /* A1C0 800199C0 21206002 */  addu       $a0, $s3, $zero
    /* A1C4 800199C4 C06F000C */  jal        func_8001BF00
    /* A1C8 800199C8 21284000 */   addu      $a1, $v0, $zero
    /* A1CC 800199CC 02004104 */  bgez       $v0, .L800199D8
    /* A1D0 800199D0 00046226 */   addiu     $v0, $s3, 0x400
    /* A1D4 800199D4 00FC6226 */  addiu      $v0, $s3, -0x400
  .L800199D8:
    /* A1D8 800199D8 FF0F5330 */  andi       $s3, $v0, 0xFFF
    /* A1DC 800199DC 996D000C */  jal        func_8001B664
    /* A1E0 800199E0 21206002 */   addu      $a0, $s3, $zero
    /* A1E4 800199E4 21206002 */  addu       $a0, $s3, $zero
    /* A1E8 800199E8 43100200 */  sra        $v0, $v0, 1
    /* A1EC 800199EC 876D000C */  jal        func_8001B61C
    /* A1F0 800199F0 1000A2AF */   sw        $v0, 0x10($sp)
    /* A1F4 800199F4 0780103C */  lui        $s0, %hi(D_8006B2B8)
    /* A1F8 800199F8 B8B21026 */  addiu      $s0, $s0, %lo(D_8006B2B8)
    /* A1FC 800199FC 21200002 */  addu       $a0, $s0, $zero
    /* A200 80019A00 1000A627 */  addiu      $a2, $sp, 0x10
    /* A204 80019A04 43100200 */  sra        $v0, $v0, 1
    /* A208 80019A08 1400A2AF */  sw         $v0, 0x14($sp)
    /* A20C 80019A0C 18FC0224 */  addiu      $v0, $zero, -0x3E8
    /* A210 80019A10 1800A2AF */  sw         $v0, 0x18($sp)
    /* A214 80019A14 00111500 */  sll        $v0, $s5, 4
    /* A218 80019A18 21105500 */  addu       $v0, $v0, $s5
    /* A21C 80019A1C 0680053C */  lui        $a1, %hi(D_80066F00)
    /* A220 80019A20 006FA58C */  lw         $a1, %lo(D_80066F00)($a1)
    /* A224 80019A24 80A00200 */  sll        $s4, $v0, 2
    /* A228 80019A28 2128B400 */  addu       $a1, $a1, $s4
    /* A22C 80019A2C 736F000C */  jal        func_8001BDCC
    /* A230 80019A30 1800A524 */   addiu     $a1, $a1, 0x18
    /* A234 80019A34 0C000426 */  addiu      $a0, $s0, 0xC
    /* A238 80019A38 6C6F000C */  jal        func_8001BDB0
    /* A23C 80019A3C 1000A527 */   addiu     $a1, $sp, 0x10
    /* A240 80019A40 1C001226 */  addiu      $s2, $s0, 0x1C
    /* A244 80019A44 21204002 */  addu       $a0, $s2, $zero
    /* A248 80019A48 0680113C */  lui        $s1, %hi(D_80067EAC)
    /* A24C 80019A4C AC7E3126 */  addiu      $s1, $s1, %lo(D_80067EAC)
    /* A250 80019A50 21282002 */  addu       $a1, $s1, $zero
    /* A254 80019A54 1000A28F */  lw         $v0, 0x10($sp)
    /* A258 80019A58 1400A38F */  lw         $v1, 0x14($sp)
    /* A25C 80019A5C 23100200 */  negu       $v0, $v0
    /* A260 80019A60 83100200 */  sra        $v0, $v0, 2
    /* A264 80019A64 23180300 */  negu       $v1, $v1
    /* A268 80019A68 83180300 */  sra        $v1, $v1, 2
    /* A26C 80019A6C 1000A2AF */  sw         $v0, 0x10($sp)
    /* A270 80019A70 6C6F000C */  jal        func_8001BDB0
    /* A274 80019A74 1400A3AF */   sw        $v1, 0x14($sp)
    /* A278 80019A78 28001026 */  addiu      $s0, $s0, 0x28
    /* A27C 80019A7C 21200002 */  addu       $a0, $s0, $zero
    /* A280 80019A80 0680053C */  lui        $a1, %hi(D_80066F00)
    /* A284 80019A84 006FA58C */  lw         $a1, %lo(D_80066F00)($a1)
    /* A288 80019A88 1000A627 */  addiu      $a2, $sp, 0x10
    /* A28C 80019A8C 2128B400 */  addu       $a1, $a1, $s4
    /* A290 80019A90 736F000C */  jal        func_8001BDCC
    /* A294 80019A94 1800A524 */   addiu     $a1, $a1, 0x18
    /* A298 80019A98 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* A29C 80019A9C CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* A2A0 80019AA0 0680023C */  lui        $v0, %hi(D_80066F00)
    /* A2A4 80019AA4 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* A2A8 80019AA8 0680053C */  lui        $a1, %hi(D_80067EB0)
    /* A2AC 80019AAC B07EA58C */  lw         $a1, %lo(D_80067EB0)($a1)
    /* A2B0 80019AB0 01000624 */  addiu      $a2, $zero, 0x1
    /* A2B4 80019AB4 0780013C */  lui        $at, %hi(D_8006B2EE)
    /* A2B8 80019AB8 EEB233A4 */  sh         $s3, %lo(D_8006B2EE)($at)
    /* A2BC 80019ABC 21108202 */  addu       $v0, $s4, $v0
    /* A2C0 80019AC0 0780013C */  lui        $at, %hi(D_8006B2EC)
    /* A2C4 80019AC4 ECB223A4 */  sh         $v1, %lo(D_8006B2EC)($at)
    /* A2C8 80019AC8 1800438C */  lw         $v1, 0x18($v0)
    /* A2CC 80019ACC 0000248E */  lw         $a0, 0x0($s1)
    /* A2D0 80019AD0 1C00428C */  lw         $v0, 0x1C($v0)
    /* A2D4 80019AD4 23206400 */  subu       $a0, $v1, $a0
    /* A2D8 80019AD8 2E6D000C */  jal        func_8001B4B8
    /* A2DC 80019ADC 23284500 */   subu      $a1, $v0, $a1
    /* A2E0 80019AE0 1000A427 */  addiu      $a0, $sp, 0x10
    /* A2E4 80019AE4 21284002 */  addu       $a1, $s2, $zero
    /* A2E8 80019AE8 21300002 */  addu       $a2, $s0, $zero
    /* A2EC 80019AEC 806F000C */  jal        func_8001BE00
    /* A2F0 80019AF0 21804000 */   addu      $s0, $v0, $zero
    /* A2F4 80019AF4 21206002 */  addu       $a0, $s3, $zero
    /* A2F8 80019AF8 AF6F000C */  jal        func_8001BEBC
    /* A2FC 80019AFC 21280002 */   addu      $a1, $s0, $zero
    /* A300 80019B00 1000A427 */  addiu      $a0, $sp, 0x10
    /* A304 80019B04 21280000 */  addu       $a1, $zero, $zero
    /* A308 80019B08 886E000C */  jal        func_8001BA20
    /* A30C 80019B0C 21804000 */   addu      $s0, $v0, $zero
    /* A310 80019B10 18000202 */  mult       $s0, $v0
    /* A314 80019B14 12400000 */  mflo       $t0
    /* A318 80019B18 C3120800 */  sra        $v0, $t0, 11
    /* A31C 80019B1C 0780013C */  lui        $at, %hi(D_8006B2F0)
    /* A320 80019B20 F0B222AC */  sw         $v0, %lo(D_8006B2F0)($at)
    /* A324 80019B24 90014228 */  slti       $v0, $v0, 0x190
    /* A328 80019B28 03004010 */  beqz       $v0, .L80019B38
    /* A32C 80019B2C 00000000 */   nop
    /* A330 80019B30 0780013C */  lui        $at, %hi(D_8006B2F0)
    /* A334 80019B34 F0B220AC */  sw         $zero, %lo(D_8006B2F0)($at)
  .L80019B38:
    /* A338 80019B38 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* A33C 80019B3C E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* A340 80019B40 0780013C */  lui        $at, %hi(D_8006B2B4)
    /* A344 80019B44 B4B235AC */  sw         $s5, %lo(D_8006B2B4)($at)
    /* A348 80019B48 0780013C */  lui        $at, %hi(D_8006B2F8)
    /* A34C 80019B4C F8B220AC */  sw         $zero, %lo(D_8006B2F8)($at)
    /* A350 80019B50 08004014 */  bnez       $v0, .L80019B74
    /* A354 80019B54 00000000 */   nop
    /* A358 80019B58 0680023C */  lui        $v0, %hi(D_80066F54)
    /* A35C 80019B5C 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* A360 80019B60 0680013C */  lui        $at, %hi(D_80064B84)
    /* A364 80019B64 21082200 */  addu       $at, $at, $v0
    /* A368 80019B68 844B2290 */  lbu        $v0, %lo(D_80064B84)($at)
    /* A36C 80019B6C E2660008 */  j          .L80019B88
    /* A370 80019B70 00000000 */   nop
  .L80019B74:
    /* A374 80019B74 0680023C */  lui        $v0, %hi(D_80066F00)
    /* A378 80019B78 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* A37C 80019B7C 00000000 */  nop
    /* A380 80019B80 21108202 */  addu       $v0, $s4, $v0
    /* A384 80019B84 42004290 */  lbu        $v0, 0x42($v0)
  .L80019B88:
    /* A388 80019B88 0680013C */  lui        $at, %hi(D_8006715C)
    /* A38C 80019B8C 5C7122AC */  sw         $v0, %lo(D_8006715C)($at)
    /* A390 80019B90 0780013C */  lui        $at, %hi(D_800698F8)
    /* A394 80019B94 F89820AC */  sw         $zero, %lo(D_800698F8)($at)
    /* A398 80019B98 F3660008 */  j          .L80019BCC
    /* A39C 80019B9C 07000224 */   addiu     $v0, $zero, 0x7
  .L80019BA0:
    /* A3A0 80019BA0 0680023C */  lui        $v0, %hi(D_80066F54)
    /* A3A4 80019BA4 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* A3A8 80019BA8 0680013C */  lui        $at, %hi(D_80064B84)
    /* A3AC 80019BAC 21082200 */  addu       $at, $at, $v0
    /* A3B0 80019BB0 844B2390 */  lbu        $v1, %lo(D_80064B84)($at)
    /* A3B4 80019BB4 01000224 */  addiu      $v0, $zero, 0x1
    /* A3B8 80019BB8 0780013C */  lui        $at, %hi(D_800698F8)
    /* A3BC 80019BBC F89822AC */  sw         $v0, %lo(D_800698F8)($at)
    /* A3C0 80019BC0 0680013C */  lui        $at, %hi(D_8006715C)
    /* A3C4 80019BC4 5C7123AC */  sw         $v1, %lo(D_8006715C)($at)
    /* A3C8 80019BC8 07000224 */  addiu      $v0, $zero, 0x7
  .L80019BCC:
    /* A3CC 80019BCC 0780013C */  lui        $at, %hi(D_8006B2FC)
    /* A3D0 80019BD0 FCB220AC */  sw         $zero, %lo(D_8006B2FC)($at)
    /* A3D4 80019BD4 0780013C */  lui        $at, %hi(D_800698F0)
    /* A3D8 80019BD8 F09820AC */  sw         $zero, %lo(D_800698F0)($at)
    /* A3DC 80019BDC 0780013C */  lui        $at, %hi(D_800698EC)
    /* A3E0 80019BE0 EC9820AC */  sw         $zero, %lo(D_800698EC)($at)
    /* A3E4 80019BE4 0680013C */  lui        $at, %hi(D_80066EEC)
    /* A3E8 80019BE8 EC6E20AC */  sw         $zero, %lo(D_80066EEC)($at)
    /* A3EC 80019BEC 0680013C */  lui        $at, %hi(D_80067E04)
    /* A3F0 80019BF0 047E20AC */  sw         $zero, %lo(D_80067E04)($at)
    /* A3F4 80019BF4 0780013C */  lui        $at, %hi(D_800681C8)
    /* A3F8 80019BF8 C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* A3FC 80019BFC 6A4E010C */  jal        func_800539A8
    /* A400 80019C00 00000000 */   nop
    /* A404 80019C04 AB42010C */  jal        func_80050AAC
    /* A408 80019C08 00000000 */   nop
    /* A40C 80019C0C 01000224 */  addiu      $v0, $zero, 0x1
    /* A410 80019C10 0780013C */  lui        $at, %hi(D_80068304)
    /* A414 80019C14 048322AC */  sw         $v0, %lo(D_80068304)($at)
    /* A418 80019C18 3800BF8F */  lw         $ra, 0x38($sp)
    /* A41C 80019C1C 3400B58F */  lw         $s5, 0x34($sp)
    /* A420 80019C20 3000B48F */  lw         $s4, 0x30($sp)
    /* A424 80019C24 2C00B38F */  lw         $s3, 0x2C($sp)
    /* A428 80019C28 2800B28F */  lw         $s2, 0x28($sp)
    /* A42C 80019C2C 2400B18F */  lw         $s1, 0x24($sp)
    /* A430 80019C30 2000B08F */  lw         $s0, 0x20($sp)
    /* A434 80019C34 4000BD27 */  addiu      $sp, $sp, 0x40
    /* A438 80019C38 0800E003 */  jr         $ra
    /* A43C 80019C3C 00000000 */   nop
endlabel func_80019928
