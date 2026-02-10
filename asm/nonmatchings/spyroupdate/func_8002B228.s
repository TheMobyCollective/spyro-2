.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B228, 0x144

glabel func_8002B228
    /* 1BA28 8002B228 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1BA2C 8002B22C 0780063C */  lui        $a2, %hi(D_8006A048)
    /* 1BA30 8002B230 48A0C624 */  addiu      $a2, $a2, %lo(D_8006A048)
    /* 1BA34 8002B234 2000BFAF */  sw         $ra, 0x20($sp)
    /* 1BA38 8002B238 0000C48C */  lw         $a0, 0x0($a2)
    /* 1BA3C 8002B23C 09000224 */  addiu      $v0, $zero, 0x9
    /* 1BA40 8002B240 09008214 */  bne        $a0, $v0, .L8002B268
    /* 1BA44 8002B244 00000000 */   nop
    /* 1BA48 8002B248 0780023C */  lui        $v0, %hi(D_8006A014)
    /* 1BA4C 8002B24C 14A0428C */  lw         $v0, %lo(D_8006A014)($v0)
    /* 1BA50 8002B250 00000000 */  nop
    /* 1BA54 8002B254 00404230 */  andi       $v0, $v0, 0x4000
    /* 1BA58 8002B258 40004010 */  beqz       $v0, .L8002B35C
    /* 1BA5C 8002B25C 21100000 */   addu      $v0, $zero, $zero
    /* 1BA60 8002B260 CEAC0008 */  j          .L8002B338
    /* 1BA64 8002B264 00000000 */   nop
  .L8002B268:
    /* 1BA68 8002B268 0780023C */  lui        $v0, %hi(D_8006A014)
    /* 1BA6C 8002B26C 14A0428C */  lw         $v0, %lo(D_8006A014)($v0)
    /* 1BA70 8002B270 00000000 */  nop
    /* 1BA74 8002B274 06004330 */  andi       $v1, $v0, 0x6
    /* 1BA78 8002B278 04000224 */  addiu      $v0, $zero, 0x4
    /* 1BA7C 8002B27C 2B006210 */  beq        $v1, $v0, .L8002B32C
    /* 1BA80 8002B280 05006228 */   slti      $v0, $v1, 0x5
    /* 1BA84 8002B284 05004010 */  beqz       $v0, .L8002B29C
    /* 1BA88 8002B288 02000224 */   addiu     $v0, $zero, 0x2
    /* 1BA8C 8002B28C 08006210 */  beq        $v1, $v0, .L8002B2B0
    /* 1BA90 8002B290 21100000 */   addu      $v0, $zero, $zero
    /* 1BA94 8002B294 D7AC0008 */  j          .L8002B35C
    /* 1BA98 8002B298 00000000 */   nop
  .L8002B29C:
    /* 1BA9C 8002B29C 06000224 */  addiu      $v0, $zero, 0x6
    /* 1BAA0 8002B2A0 29006210 */  beq        $v1, $v0, .L8002B348
    /* 1BAA4 8002B2A4 21100000 */   addu      $v0, $zero, $zero
    /* 1BAA8 8002B2A8 D7AC0008 */  j          .L8002B35C
    /* 1BAAC 8002B2AC 00000000 */   nop
  .L8002B2B0:
    /* 1BAB0 8002B2B0 0780053C */  lui        $a1, %hi(D_8006A130)
    /* 1BAB4 8002B2B4 30A1A58C */  lw         $a1, %lo(D_8006A130)($a1)
    /* 1BAB8 8002B2B8 00000000 */  nop
    /* 1BABC 8002B2BC 2600A010 */  beqz       $a1, .L8002B358
    /* 1BAC0 8002B2C0 0C000224 */   addiu     $v0, $zero, 0xC
    /* 1BAC4 8002B2C4 24008210 */  beq        $a0, $v0, .L8002B358
    /* 1BAC8 8002B2C8 1000A427 */   addiu     $a0, $sp, 0x10
    /* 1BACC 8002B2CC 0C00A524 */  addiu      $a1, $a1, 0xC
    /* 1BAD0 8002B2D0 806F000C */  jal        func_8001BE00
    /* 1BAD4 8002B2D4 A8FFC624 */   addiu     $a2, $a2, -0x58
    /* 1BAD8 8002B2D8 1000A48F */  lw         $a0, 0x10($sp)
    /* 1BADC 8002B2DC 1400A58F */  lw         $a1, 0x14($sp)
    /* 1BAE0 8002B2E0 2E6D000C */  jal        func_8001B4B8
    /* 1BAE4 8002B2E4 01000624 */   addiu     $a2, $zero, 0x1
    /* 1BAE8 8002B2E8 0780033C */  lui        $v1, %hi(D_8006A05C)
    /* 1BAEC 8002B2EC 5CA0638C */  lw         $v1, %lo(D_8006A05C)($v1)
    /* 1BAF0 8002B2F0 00000000 */  nop
    /* 1BAF4 8002B2F4 23104300 */  subu       $v0, $v0, $v1
    /* 1BAF8 8002B2F8 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1BAFC 8002B2FC 01086228 */  slti       $v0, $v1, 0x801
    /* 1BB00 8002B300 02004014 */  bnez       $v0, .L8002B30C
    /* 1BB04 8002B304 00000000 */   nop
    /* 1BB08 8002B308 00F06324 */  addiu      $v1, $v1, -0x1000
  .L8002B30C:
    /* 1BB0C 8002B30C 02006104 */  bgez       $v1, .L8002B318
    /* 1BB10 8002B310 21106000 */   addu      $v0, $v1, $zero
    /* 1BB14 8002B314 23100200 */  negu       $v0, $v0
  .L8002B318:
    /* 1BB18 8002B318 00024228 */  slti       $v0, $v0, 0x200
    /* 1BB1C 8002B31C 0F004010 */  beqz       $v0, .L8002B35C
    /* 1BB20 8002B320 21100000 */   addu      $v0, $zero, $zero
    /* 1BB24 8002B324 CEAC0008 */  j          .L8002B338
    /* 1BB28 8002B328 00000000 */   nop
  .L8002B32C:
    /* 1BB2C 8002B32C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 1BB30 8002B330 0A008210 */  beq        $a0, $v0, .L8002B35C
    /* 1BB34 8002B334 21100000 */   addu      $v0, $zero, $zero
  .L8002B338:
    /* 1BB38 8002B338 76D4000C */  jal        func_800351D8
    /* 1BB3C 8002B33C 0D000424 */   addiu     $a0, $zero, 0xD
    /* 1BB40 8002B340 D7AC0008 */  j          .L8002B35C
    /* 1BB44 8002B344 01000224 */   addiu     $v0, $zero, 0x1
  .L8002B348:
    /* 1BB48 8002B348 2EAC000C */  jal        func_8002B0B8
    /* 1BB4C 8002B34C 00000000 */   nop
    /* 1BB50 8002B350 D7AC0008 */  j          .L8002B35C
    /* 1BB54 8002B354 00000000 */   nop
  .L8002B358:
    /* 1BB58 8002B358 21100000 */  addu       $v0, $zero, $zero
  .L8002B35C:
    /* 1BB5C 8002B35C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 1BB60 8002B360 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1BB64 8002B364 0800E003 */  jr         $ra
    /* 1BB68 8002B368 00000000 */   nop
endlabel func_8002B228
