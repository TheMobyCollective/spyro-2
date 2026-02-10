.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004F994, 0x1B4

glabel func_8004F994
    /* 40194 8004F994 0780023C */  lui        $v0, %hi(D_80069904)
    /* 40198 8004F998 0499428C */  lw         $v0, %lo(D_80069904)($v0)
    /* 4019C 8004F99C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 401A0 8004F9A0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 401A4 8004F9A4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 401A8 8004F9A8 0680013C */  lui        $at, %hi(D_80064994)
    /* 401AC 8004F9AC 21082200 */  addu       $at, $at, $v0
    /* 401B0 8004F9B0 94493090 */  lbu        $s0, %lo(D_80064994)($at)
    /* 401B4 8004F9B4 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 401B8 8004F9B8 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 401BC 8004F9BC 19000202 */  multu      $s0, $v0
    /* 401C0 8004F9C0 10400000 */  mfhi       $t0
    /* 401C4 8004F9C4 C2180800 */  srl        $v1, $t0, 3
    /* 401C8 8004F9C8 80100300 */  sll        $v0, $v1, 2
    /* 401CC 8004F9CC 21104300 */  addu       $v0, $v0, $v1
    /* 401D0 8004F9D0 40100200 */  sll        $v0, $v0, 1
    /* 401D4 8004F9D4 23800202 */  subu       $s0, $s0, $v0
    /* 401D8 8004F9D8 B73C010C */  jal        func_8004F2DC
    /* 401DC 8004F9DC FF001032 */   andi      $s0, $s0, 0xFF
    /* 401E0 8004F9E0 28000424 */  addiu      $a0, $zero, 0x28
    /* 401E4 8004F9E4 1C000524 */  addiu      $a1, $zero, 0x1C
    /* 401E8 8004F9E8 21300000 */  addu       $a2, $zero, $zero
    /* 401EC 8004F9EC 8E38010C */  jal        func_8004E238
    /* 401F0 8004F9F0 21380000 */   addu      $a3, $zero, $zero
    /* 401F4 8004F9F4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 401F8 8004F9F8 0400102E */  sltiu      $s0, $s0, 0x4
    /* 401FC 8004F9FC 21000012 */  beqz       $s0, .L8004FA84
    /* 40200 8004FA00 24000424 */   addiu     $a0, $zero, 0x24
    /* 40204 8004FA04 0780023C */  lui        $v0, %hi(D_80069904)
    /* 40208 8004FA08 0499428C */  lw         $v0, %lo(D_80069904)($v0)
    /* 4020C 8004FA0C 00000000 */  nop
    /* 40210 8004FA10 15004228 */  slti       $v0, $v0, 0x15
    /* 40214 8004FA14 1B004010 */  beqz       $v0, .L8004FA84
    /* 40218 8004FA18 67000524 */   addiu     $a1, $zero, 0x67
    /* 4021C 8004FA1C 07000624 */  addiu      $a2, $zero, 0x7
    /* 40220 8004FA20 8E38010C */  jal        func_8004E238
    /* 40224 8004FA24 21380000 */   addu      $a3, $zero, $zero
    /* 40228 8004FA28 24000424 */  addiu      $a0, $zero, 0x24
    /* 4022C 8004FA2C B6000524 */  addiu      $a1, $zero, 0xB6
    /* 40230 8004FA30 08000624 */  addiu      $a2, $zero, 0x8
    /* 40234 8004FA34 8E38010C */  jal        func_8004E238
    /* 40238 8004FA38 21380000 */   addu      $a3, $zero, $zero
    /* 4023C 8004FA3C 4C000424 */  addiu      $a0, $zero, 0x4C
    /* 40240 8004FA40 6E000524 */  addiu      $a1, $zero, 0x6E
    /* 40244 8004FA44 03000624 */  addiu      $a2, $zero, 0x3
    /* 40248 8004FA48 8E38010C */  jal        func_8004E238
    /* 4024C 8004FA4C 21380000 */   addu      $a3, $zero, $zero
    /* 40250 8004FA50 2A000424 */  addiu      $a0, $zero, 0x2A
    /* 40254 8004FA54 0780023C */  lui        $v0, %hi(D_80069904)
    /* 40258 8004FA58 0499428C */  lw         $v0, %lo(D_80069904)($v0)
    /* 4025C 8004FA5C 86000524 */  addiu      $a1, $zero, 0x86
    /* 40260 8004FA60 0780013C */  lui        $at, %hi(D_8006B264)
    /* 40264 8004FA64 21082200 */  addu       $at, $at, $v0
    /* 40268 8004FA68 64B22690 */  lbu        $a2, %lo(D_8006B264)($at)
    /* 4026C 8004FA6C 21380000 */  addu       $a3, $zero, $zero
    /* 40270 8004FA70 8E38010C */  jal        func_8004E238
    /* 40274 8004FA74 0D00C624 */   addiu     $a2, $a2, 0xD
    /* 40278 8004FA78 68000424 */  addiu      $a0, $zero, 0x68
    /* 4027C 8004FA7C AC3E0108 */  j          .L8004FAB0
    /* 40280 8004FA80 86000524 */   addiu     $a1, $zero, 0x86
  .L8004FA84:
    /* 40284 8004FA84 6B000524 */  addiu      $a1, $zero, 0x6B
    /* 40288 8004FA88 07000624 */  addiu      $a2, $zero, 0x7
    /* 4028C 8004FA8C 8E38010C */  jal        func_8004E238
    /* 40290 8004FA90 21380000 */   addu      $a3, $zero, $zero
    /* 40294 8004FA94 24000424 */  addiu      $a0, $zero, 0x24
    /* 40298 8004FA98 B2000524 */  addiu      $a1, $zero, 0xB2
    /* 4029C 8004FA9C 08000624 */  addiu      $a2, $zero, 0x8
    /* 402A0 8004FAA0 8E38010C */  jal        func_8004E238
    /* 402A4 8004FAA4 21380000 */   addu      $a3, $zero, $zero
    /* 402A8 8004FAA8 48000424 */  addiu      $a0, $zero, 0x48
    /* 402AC 8004FAAC 7B000524 */  addiu      $a1, $zero, 0x7B
  .L8004FAB0:
    /* 402B0 8004FAB0 0F000624 */  addiu      $a2, $zero, 0xF
    /* 402B4 8004FAB4 8E38010C */  jal        func_8004E238
    /* 402B8 8004FAB8 21380000 */   addu      $a3, $zero, $zero
    /* 402BC 8004FABC 5C000424 */  addiu      $a0, $zero, 0x5C
    /* 402C0 8004FAC0 C8000524 */  addiu      $a1, $zero, 0xC8
    /* 402C4 8004FAC4 06000624 */  addiu      $a2, $zero, 0x6
    /* 402C8 8004FAC8 8E38010C */  jal        func_8004E238
    /* 402CC 8004FACC 21380000 */   addu      $a3, $zero, $zero
    /* 402D0 8004FAD0 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 402D4 8004FAD4 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 402D8 8004FAD8 00000000 */  nop
    /* 402DC 8004FADC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 402E0 8004FAE0 13004228 */  slti       $v0, $v0, 0x13
    /* 402E4 8004FAE4 13004010 */  beqz       $v0, .L8004FB34
    /* 402E8 8004FAE8 00000000 */   nop
    /* 402EC 8004FAEC 0780023C */  lui        $v0, %hi(D_80069908)
    /* 402F0 8004FAF0 0899428C */  lw         $v0, %lo(D_80069908)($v0)
    /* 402F4 8004FAF4 00000000 */  nop
    /* 402F8 8004FAF8 05004004 */  bltz       $v0, .L8004FB10
    /* 402FC 8004FAFC 24000424 */   addiu     $a0, $zero, 0x24
    /* 40300 8004FB00 C8000524 */  addiu      $a1, $zero, 0xC8
    /* 40304 8004FB04 10000624 */  addiu      $a2, $zero, 0x10
    /* 40308 8004FB08 8E38010C */  jal        func_8004E238
    /* 4030C 8004FB0C 21380000 */   addu      $a3, $zero, $zero
  .L8004FB10:
    /* 40310 8004FB10 0780023C */  lui        $v0, %hi(D_8006990C)
    /* 40314 8004FB14 0C99428C */  lw         $v0, %lo(D_8006990C)($v0)
    /* 40318 8004FB18 00000000 */  nop
    /* 4031C 8004FB1C 05004004 */  bltz       $v0, .L8004FB34
    /* 40320 8004FB20 DA000424 */   addiu     $a0, $zero, 0xDA
    /* 40324 8004FB24 C8000524 */  addiu      $a1, $zero, 0xC8
    /* 40328 8004FB28 11000624 */  addiu      $a2, $zero, 0x11
    /* 4032C 8004FB2C 8E38010C */  jal        func_8004E238
    /* 40330 8004FB30 21380000 */   addu      $a3, $zero, $zero
  .L8004FB34:
    /* 40334 8004FB34 1400BF8F */  lw         $ra, 0x14($sp)
    /* 40338 8004FB38 1000B08F */  lw         $s0, 0x10($sp)
    /* 4033C 8004FB3C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 40340 8004FB40 0800E003 */  jr         $ra
    /* 40344 8004FB44 00000000 */   nop
endlabel func_8004F994
