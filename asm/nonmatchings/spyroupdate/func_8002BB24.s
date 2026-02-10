.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BB24, 0x144

glabel func_8002BB24
    /* 1C324 8002BB24 0780023C */  lui        $v0, %hi(D_8006A09C)
    /* 1C328 8002BB28 9CA0428C */  lw         $v0, %lo(D_8006A09C)($v0)
    /* 1C32C 8002BB2C 0780033C */  lui        $v1, %hi(D_8006A05C)
    /* 1C330 8002BB30 5CA0638C */  lw         $v1, %lo(D_8006A05C)($v1)
    /* 1C334 8002BB34 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1C338 8002BB38 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1C33C 8002BB3C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C340 8002BB40 23104300 */  subu       $v0, $v0, $v1
    /* 1C344 8002BB44 FF0F5030 */  andi       $s0, $v0, 0xFFF
    /* 1C348 8002BB48 0108022A */  slti       $v0, $s0, 0x801
    /* 1C34C 8002BB4C 02004014 */  bnez       $v0, .L8002BB58
    /* 1C350 8002BB50 00000000 */   nop
    /* 1C354 8002BB54 00F01026 */  addiu      $s0, $s0, -0x1000
  .L8002BB58:
    /* 1C358 8002BB58 1700001A */  blez       $s0, .L8002BBB8
    /* 1C35C 8002BB5C 00000000 */   nop
    /* 1C360 8002BB60 0780023C */  lui        $v0, %hi(D_8006A0A0)
    /* 1C364 8002BB64 A0A0428C */  lw         $v0, %lo(D_8006A0A0)($v0)
    /* 1C368 8002BB68 00000000 */  nop
    /* 1C36C 8002BB6C 07004104 */  bgez       $v0, .L8002BB8C
    /* 1C370 8002BB70 21104500 */   addu      $v0, $v0, $a1
    /* 1C374 8002BB74 0780013C */  lui        $at, %hi(D_8006A0A0)
    /* 1C378 8002BB78 A0A020AC */  sw         $zero, %lo(D_8006A0A0)($at)
    /* 1C37C 8002BB7C 0780023C */  lui        $v0, %hi(D_8006A0A0)
    /* 1C380 8002BB80 A0A0428C */  lw         $v0, %lo(D_8006A0A0)($v0)
    /* 1C384 8002BB84 00000000 */  nop
    /* 1C388 8002BB88 21104500 */  addu       $v0, $v0, $a1
  .L8002BB8C:
    /* 1C38C 8002BB8C 0780013C */  lui        $at, %hi(D_8006A0A0)
    /* 1C390 8002BB90 A0A022AC */  sw         $v0, %lo(D_8006A0A0)($at)
    /* 1C394 8002BB94 2A108200 */  slt        $v0, $a0, $v0
    /* 1C398 8002BB98 03004010 */  beqz       $v0, .L8002BBA8
    /* 1C39C 8002BB9C 00000000 */   nop
    /* 1C3A0 8002BBA0 0780013C */  lui        $at, %hi(D_8006A0A0)
    /* 1C3A4 8002BBA4 A0A024AC */  sw         $a0, %lo(D_8006A0A0)($at)
  .L8002BBA8:
    /* 1C3A8 8002BBA8 0780023C */  lui        $v0, %hi(D_8006A0A0)
    /* 1C3AC 8002BBAC A0A0428C */  lw         $v0, %lo(D_8006A0A0)($v0)
    /* 1C3B0 8002BBB0 06AF0008 */  j          .L8002BC18
    /* 1C3B4 8002BBB4 2A100202 */   slt       $v0, $s0, $v0
  .L8002BBB8:
    /* 1C3B8 8002BBB8 1D000106 */  bgez       $s0, .L8002BC30
    /* 1C3BC 8002BBBC 00000000 */   nop
    /* 1C3C0 8002BBC0 0780023C */  lui        $v0, %hi(D_8006A0A0)
    /* 1C3C4 8002BBC4 A0A0428C */  lw         $v0, %lo(D_8006A0A0)($v0)
    /* 1C3C8 8002BBC8 00000000 */  nop
    /* 1C3CC 8002BBCC 05004018 */  blez       $v0, .L8002BBE4
    /* 1C3D0 8002BBD0 00000000 */   nop
    /* 1C3D4 8002BBD4 0780013C */  lui        $at, %hi(D_8006A0A0)
    /* 1C3D8 8002BBD8 A0A020AC */  sw         $zero, %lo(D_8006A0A0)($at)
    /* 1C3DC 8002BBDC 0780023C */  lui        $v0, %hi(D_8006A0A0)
    /* 1C3E0 8002BBE0 A0A0428C */  lw         $v0, %lo(D_8006A0A0)($v0)
  .L8002BBE4:
    /* 1C3E4 8002BBE4 23200400 */  negu       $a0, $a0
    /* 1C3E8 8002BBE8 23104500 */  subu       $v0, $v0, $a1
    /* 1C3EC 8002BBEC 0780013C */  lui        $at, %hi(D_8006A0A0)
    /* 1C3F0 8002BBF0 A0A022AC */  sw         $v0, %lo(D_8006A0A0)($at)
    /* 1C3F4 8002BBF4 2A104400 */  slt        $v0, $v0, $a0
    /* 1C3F8 8002BBF8 03004010 */  beqz       $v0, .L8002BC08
    /* 1C3FC 8002BBFC 00000000 */   nop
    /* 1C400 8002BC00 0780013C */  lui        $at, %hi(D_8006A0A0)
    /* 1C404 8002BC04 A0A024AC */  sw         $a0, %lo(D_8006A0A0)($at)
  .L8002BC08:
    /* 1C408 8002BC08 0780023C */  lui        $v0, %hi(D_8006A0A0)
    /* 1C40C 8002BC0C A0A0428C */  lw         $v0, %lo(D_8006A0A0)($v0)
    /* 1C410 8002BC10 00000000 */  nop
    /* 1C414 8002BC14 2A105000 */  slt        $v0, $v0, $s0
  .L8002BC18:
    /* 1C418 8002BC18 09004010 */  beqz       $v0, .L8002BC40
    /* 1C41C 8002BC1C 00000000 */   nop
    /* 1C420 8002BC20 0780013C */  lui        $at, %hi(D_8006A0A0)
    /* 1C424 8002BC24 A0A030AC */  sw         $s0, %lo(D_8006A0A0)($at)
    /* 1C428 8002BC28 10AF0008 */  j          .L8002BC40
    /* 1C42C 8002BC2C 00000000 */   nop
  .L8002BC30:
    /* 1C430 8002BC30 0780013C */  lui        $at, %hi(D_8006A0A0)
    /* 1C434 8002BC34 A0A020AC */  sw         $zero, %lo(D_8006A0A0)($at)
    /* 1C438 8002BC38 15AF0008 */  j          .L8002BC54
    /* 1C43C 8002BC3C 21100000 */   addu      $v0, $zero, $zero
  .L8002BC40:
    /* 1C440 8002BC40 0780043C */  lui        $a0, %hi(D_8006A0A0)
    /* 1C444 8002BC44 A0A0848C */  lw         $a0, %lo(D_8006A0A0)($a0)
    /* 1C448 8002BC48 68AE000C */  jal        func_8002B9A0
    /* 1C44C 8002BC4C 00000000 */   nop
    /* 1C450 8002BC50 21100002 */  addu       $v0, $s0, $zero
  .L8002BC54:
    /* 1C454 8002BC54 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1C458 8002BC58 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C45C 8002BC5C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1C460 8002BC60 0800E003 */  jr         $ra
    /* 1C464 8002BC64 00000000 */   nop
endlabel func_8002BB24
