.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80050BC8, 0x9C

glabel func_80050BC8
    /* 413C8 80050BC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 413CC 80050BCC 40100400 */  sll        $v0, $a0, 1
    /* 413D0 80050BD0 21104400 */  addu       $v0, $v0, $a0
    /* 413D4 80050BD4 80100200 */  sll        $v0, $v0, 2
    /* 413D8 80050BD8 23104400 */  subu       $v0, $v0, $a0
    /* 413DC 80050BDC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 413E0 80050BE0 80800200 */  sll        $s0, $v0, 2
    /* 413E4 80050BE4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 413E8 80050BE8 0780013C */  lui        $at, %hi(D_80069A38)
    /* 413EC 80050BEC 21083000 */  addu       $at, $at, $s0
    /* 413F0 80050BF0 389A228C */  lw         $v0, %lo(D_80069A38)($at)
    /* 413F4 80050BF4 00000000 */  nop
    /* 413F8 80050BF8 15004010 */  beqz       $v0, .L80050C50
    /* 413FC 80050BFC 00000000 */   nop
    /* 41400 80050C00 0780013C */  lui        $at, %hi(D_80069A10)
    /* 41404 80050C04 21083000 */  addu       $at, $at, $s0
    /* 41408 80050C08 109A2290 */  lbu        $v0, %lo(D_80069A10)($at)
    /* 4140C 80050C0C 00000000 */  nop
    /* 41410 80050C10 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 41414 80050C14 0200422C */  sltiu      $v0, $v0, 0x2
    /* 41418 80050C18 0D004010 */  beqz       $v0, .L80050C50
    /* 4141C 80050C1C 00000000 */   nop
    /* 41420 80050C20 0780043C */  lui        $a0, %hi(D_80069A2C)
    /* 41424 80050C24 2C9A8424 */  addiu      $a0, $a0, %lo(D_80069A2C)
    /* 41428 80050C28 6C6F000C */  jal        func_8001BDB0
    /* 4142C 80050C2C 21200402 */   addu      $a0, $s0, $a0
    /* 41430 80050C30 0780013C */  lui        $at, %hi(D_80069A12)
    /* 41434 80050C34 21083000 */  addu       $at, $at, $s0
    /* 41438 80050C38 129A2290 */  lbu        $v0, %lo(D_80069A12)($at)
    /* 4143C 80050C3C 00000000 */  nop
    /* 41440 80050C40 02004234 */  ori        $v0, $v0, 0x2
    /* 41444 80050C44 0780013C */  lui        $at, %hi(D_80069A12)
    /* 41448 80050C48 21083000 */  addu       $at, $at, $s0
    /* 4144C 80050C4C 129A22A0 */  sb         $v0, %lo(D_80069A12)($at)
  .L80050C50:
    /* 41450 80050C50 1400BF8F */  lw         $ra, 0x14($sp)
    /* 41454 80050C54 1000B08F */  lw         $s0, 0x10($sp)
    /* 41458 80050C58 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4145C 80050C5C 0800E003 */  jr         $ra
    /* 41460 80050C60 00000000 */   nop
endlabel func_80050BC8
