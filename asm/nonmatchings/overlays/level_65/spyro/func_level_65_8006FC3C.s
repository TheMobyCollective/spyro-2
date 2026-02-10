.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_65_8006FC3C, 0x1F0

glabel func_level_65_8006FC3C
    /* 42C31D8 8006FC3C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 42C31DC 8006FC40 1000B0AF */  sw         $s0, 0x10($sp)
    /* 42C31E0 8006FC44 0780103C */  lui        $s0, %hi(D_80069910)
    /* 42C31E4 8006FC48 10991026 */  addiu      $s0, $s0, %lo(D_80069910)
    /* 42C31E8 8006FC4C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 42C31EC 8006FC50 0000038E */  lw         $v1, 0x0($s0)
    /* 42C31F0 8006FC54 00000000 */  nop
    /* 42C31F4 8006FC58 34006014 */  bnez       $v1, .Llevel_65_8006FD2C
    /* 42C31F8 8006FC5C 01000224 */   addiu     $v0, $zero, 0x1
    /* 42C31FC 8006FC60 DCFF028E */  lw         $v0, -0x24($s0)
    /* 42C3200 8006FC64 00000000 */  nop
    /* 42C3204 8006FC68 12004228 */  slti       $v0, $v0, 0x12
    /* 42C3208 8006FC6C 07004010 */  beqz       $v0, .Llevel_65_8006FC8C
    /* 42C320C 8006FC70 00000000 */   nop
    /* 42C3210 8006FC74 5338010C */  jal        func_8004E14C
    /* 42C3214 8006FC78 00000000 */   nop
    /* 42C3218 8006FC7C 8B39010C */  jal        func_8004E62C
    /* 42C321C 8006FC80 21200000 */   addu      $a0, $zero, $zero
    /* 42C3220 8006FC84 FE39010C */  jal        func_8004E7F8
    /* 42C3224 8006FC88 21200000 */   addu      $a0, $zero, $zero
  .Llevel_65_8006FC8C:
    /* 42C3228 8006FC8C DCFF028E */  lw         $v0, -0x24($s0)
    /* 42C322C 8006FC90 00000000 */  nop
    /* 42C3230 8006FC94 07004228 */  slti       $v0, $v0, 0x7
    /* 42C3234 8006FC98 05004014 */  bnez       $v0, .Llevel_65_8006FCB0
    /* 42C3238 8006FC9C 00000000 */   nop
    /* 42C323C 8006FCA0 9B3C010C */  jal        func_8004F26C
    /* 42C3240 8006FCA4 00000000 */   nop
    /* 42C3244 8006FCA8 D23C010C */  jal        func_8004F348
    /* 42C3248 8006FCAC 00000000 */   nop
  .Llevel_65_8006FCB0:
    /* 42C324C 8006FCB0 DCFF028E */  lw         $v0, -0x24($s0)
    /* 42C3250 8006FCB4 00000000 */  nop
    /* 42C3254 8006FCB8 0C004228 */  slti       $v0, $v0, 0xC
    /* 42C3258 8006FCBC 17004010 */  beqz       $v0, .Llevel_65_8006FD1C
    /* 42C325C 8006FCC0 21200000 */   addu      $a0, $zero, $zero
    /* 42C3260 8006FCC4 0680023C */  lui        $v0, %hi(D_80067030)
    /* 42C3264 8006FCC8 3070428C */  lw         $v0, %lo(D_80067030)($v0)
    /* 42C3268 8006FCCC 2F3B010C */  jal        func_8004ECBC
    /* 42C326C 8006FCD0 140002AE */   sw        $v0, 0x14($s0)
    /* 42C3270 8006FCD4 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* 42C3274 8006FCD8 DCFF058E */  lw         $a1, -0x24($s0)
    /* 42C3278 8006FCDC ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 42C327C 8006FCE0 1800A200 */  mult       $a1, $v0
    /* 42C3280 8006FCE4 1400048E */  lw         $a0, 0x14($s0)
    /* 42C3284 8006FCE8 C3170500 */  sra        $v0, $a1, 31
    /* 42C3288 8006FCEC 10300000 */  mfhi       $a2
    /* 42C328C 8006FCF0 43180600 */  sra        $v1, $a2, 1
    /* 42C3290 8006FCF4 23186200 */  subu       $v1, $v1, $v0
    /* 42C3294 8006FCF8 40100300 */  sll        $v0, $v1, 1
    /* 42C3298 8006FCFC 21104300 */  addu       $v0, $v0, $v1
    /* 42C329C 8006FD00 80100200 */  sll        $v0, $v0, 2
    /* 42C32A0 8006FD04 2328A200 */  subu       $a1, $a1, $v0
    /* 42C32A4 8006FD08 0680013C */  lui        $at, %hi(D_80063870)
    /* 42C32A8 8006FD0C 21082500 */  addu       $at, $at, $a1
    /* 42C32AC 8006FD10 70382590 */  lbu        $a1, %lo(D_80063870)($at)
    /* 42C32B0 8006FD14 84BF0108 */  j          .Llevel_65_8006FE10
    /* 42C32B4 8006FD18 00000000 */   nop
  .Llevel_65_8006FD1C:
    /* 42C32B8 8006FD1C EE3C010C */  jal        func_8004F3B8
    /* 42C32BC 8006FD20 01000424 */   addiu     $a0, $zero, 0x1
    /* 42C32C0 8006FD24 86BF0108 */  j          .Llevel_65_8006FE18
    /* 42C32C4 8006FD28 00000000 */   nop
  .Llevel_65_8006FD2C:
    /* 42C32C8 8006FD2C 0B006214 */  bne        $v1, $v0, .Llevel_65_8006FD5C
    /* 42C32CC 8006FD30 02000224 */   addiu     $v0, $zero, 0x2
    /* 42C32D0 8006FD34 803C010C */  jal        func_8004F200
    /* 42C32D4 8006FD38 00000000 */   nop
    /* 42C32D8 8006FD3C 9B3C010C */  jal        func_8004F26C
    /* 42C32DC 8006FD40 00000000 */   nop
    /* 42C32E0 8006FD44 B73C010C */  jal        func_8004F2DC
    /* 42C32E4 8006FD48 00000000 */   nop
    /* 42C32E8 8006FD4C D23C010C */  jal        func_8004F348
    /* 42C32EC 8006FD50 00000000 */   nop
    /* 42C32F0 8006FD54 67BF0108 */  j          .Llevel_65_8006FD9C
    /* 42C32F4 8006FD58 00000000 */   nop
  .Llevel_65_8006FD5C:
    /* 42C32F8 8006FD5C 2E006214 */  bne        $v1, $v0, .Llevel_65_8006FE18
    /* 42C32FC 8006FD60 00000000 */   nop
    /* 42C3300 8006FD64 803C010C */  jal        func_8004F200
    /* 42C3304 8006FD68 00000000 */   nop
    /* 42C3308 8006FD6C 9B3C010C */  jal        func_8004F26C
    /* 42C330C 8006FD70 00000000 */   nop
    /* 42C3310 8006FD74 B0BF010C */  jal        func_level_65_8006FEC0
    /* 42C3314 8006FD78 00000000 */   nop
    /* 42C3318 8006FD7C B73C010C */  jal        func_8004F2DC
    /* 42C331C 8006FD80 00000000 */   nop
    /* 42C3320 8006FD84 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 42C3324 8006FD88 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 42C3328 8006FD8C 00000000 */  nop
    /* 42C332C 8006FD90 0C004228 */  slti       $v0, $v0, 0xC
    /* 42C3330 8006FD94 05004010 */  beqz       $v0, .Llevel_65_8006FDAC
    /* 42C3334 8006FD98 00000000 */   nop
  .Llevel_65_8006FD9C:
    /* 42C3338 8006FD9C EE3C010C */  jal        func_8004F3B8
    /* 42C333C 8006FDA0 21200000 */   addu      $a0, $zero, $zero
    /* 42C3340 8006FDA4 86BF0108 */  j          .Llevel_65_8006FE18
    /* 42C3344 8006FDA8 00000000 */   nop
  .Llevel_65_8006FDAC:
    /* 42C3348 8006FDAC 0680023C */  lui        $v0, %hi(D_80067030)
    /* 42C334C 8006FDB0 3070428C */  lw         $v0, %lo(D_80067030)($v0)
    /* 42C3350 8006FDB4 0780013C */  lui        $at, %hi(D_80069924)
    /* 42C3354 8006FDB8 249922AC */  sw         $v0, %lo(D_80069924)($at)
    /* 42C3358 8006FDBC 99BF010C */  jal        func_level_65_8006FE64
    /* 42C335C 8006FDC0 00000000 */   nop
    /* 42C3360 8006FDC4 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* 42C3364 8006FDC8 0780043C */  lui        $a0, %hi(D_800698EC)
    /* 42C3368 8006FDCC EC98848C */  lw         $a0, %lo(D_800698EC)($a0)
    /* 42C336C 8006FDD0 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 42C3370 8006FDD4 18008200 */  mult       $a0, $v0
    /* 42C3374 8006FDD8 C3170400 */  sra        $v0, $a0, 31
    /* 42C3378 8006FDDC 10300000 */  mfhi       $a2
    /* 42C337C 8006FDE0 43180600 */  sra        $v1, $a2, 1
    /* 42C3380 8006FDE4 23186200 */  subu       $v1, $v1, $v0
    /* 42C3384 8006FDE8 40100300 */  sll        $v0, $v1, 1
    /* 42C3388 8006FDEC 21104300 */  addu       $v0, $v0, $v1
    /* 42C338C 8006FDF0 80100200 */  sll        $v0, $v0, 2
    /* 42C3390 8006FDF4 23208200 */  subu       $a0, $a0, $v0
    /* 42C3394 8006FDF8 0680013C */  lui        $at, %hi(D_80063870)
    /* 42C3398 8006FDFC 21082400 */  addu       $at, $at, $a0
    /* 42C339C 8006FE00 70382590 */  lbu        $a1, %lo(D_80063870)($at)
    /* 42C33A0 8006FE04 0780043C */  lui        $a0, %hi(D_80069924)
    /* 42C33A4 8006FE08 2499848C */  lw         $a0, %lo(D_80069924)($a0)
    /* 42C33A8 8006FE0C C000A524 */  addiu      $a1, $a1, 0xC0
  .Llevel_65_8006FE10:
    /* 42C33AC 8006FE10 E52F010C */  jal        func_8004BF94
    /* 42C33B0 8006FE14 00000000 */   nop
  .Llevel_65_8006FE18:
    /* 42C33B4 8006FE18 1400BF8F */  lw         $ra, 0x14($sp)
    /* 42C33B8 8006FE1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 42C33BC 8006FE20 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 42C33C0 8006FE24 0800E003 */  jr         $ra
    /* 42C33C4 8006FE28 00000000 */   nop
endlabel func_level_65_8006FC3C
