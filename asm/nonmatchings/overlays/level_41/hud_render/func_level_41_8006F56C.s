.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_41_8006F56C, 0xD4

glabel func_level_41_8006F56C
    /* 2BBAB08 8006F56C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2BBAB0C 8006F570 0680043C */  lui        $a0, %hi(D_80067674)
    /* 2BBAB10 8006F574 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 2BBAB14 8006F578 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2BBAB18 8006F57C 00008290 */  lbu        $v0, 0x0($a0)
    /* 2BBAB1C 8006F580 00000000 */  nop
    /* 2BBAB20 8006F584 1A004010 */  beqz       $v0, .Llevel_41_8006F5F0
    /* 2BBAB24 8006F588 AA2A033C */   lui       $v1, (0x2AAAAAAB >> 16)
    /* 2BBAB28 8006F58C 0680023C */  lui        $v0, %hi(D_80067008)
    /* 2BBAB2C 8006F590 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* 2BBAB30 8006F594 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 2BBAB34 8006F598 43280200 */  sra        $a1, $v0, 1
    /* 2BBAB38 8006F59C 1800A300 */  mult       $a1, $v1
    /* 2BBAB3C 8006F5A0 68010624 */  addiu      $a2, $zero, 0x168
    /* 2BBAB40 8006F5A4 EC000724 */  addiu      $a3, $zero, 0xEC
    /* 2BBAB44 8006F5A8 C3170200 */  sra        $v0, $v0, 31
    /* 2BBAB48 8006F5AC 10400000 */  mfhi       $t0
    /* 2BBAB4C 8006F5B0 43180800 */  sra        $v1, $t0, 1
    /* 2BBAB50 8006F5B4 23186200 */  subu       $v1, $v1, $v0
    /* 2BBAB54 8006F5B8 40100300 */  sll        $v0, $v1, 1
    /* 2BBAB58 8006F5BC 21104300 */  addu       $v0, $v0, $v1
    /* 2BBAB5C 8006F5C0 80100200 */  sll        $v0, $v0, 2
    /* 2BBAB60 8006F5C4 2328A200 */  subu       $a1, $a1, $v0
    /* 2BBAB64 8006F5C8 06000224 */  addiu      $v0, $zero, 0x6
    /* 2BBAB68 8006F5CC 0680013C */  lui        $at, %hi(D_8006349C)
    /* 2BBAB6C 8006F5D0 21082500 */  addu       $at, $at, $a1
    /* 2BBAB70 8006F5D4 9C342390 */  lbu        $v1, %lo(D_8006349C)($at)
    /* 2BBAB74 8006F5D8 0680053C */  lui        $a1, %hi(D_80063618)
    /* 2BBAB78 8006F5DC 1836A524 */  addiu      $a1, $a1, %lo(D_80063618)
    /* 2BBAB7C 8006F5E0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2BBAB80 8006F5E4 80180300 */  sll        $v1, $v1, 2
    /* 2BBAB84 8006F5E8 88BD0108 */  j          .Llevel_41_8006F620
    /* 2BBAB88 8006F5EC 21286500 */   addu      $a1, $v1, $a1
  .Llevel_41_8006F5F0:
    /* 2BBAB8C 8006F5F0 08008424 */  addiu      $a0, $a0, 0x8
    /* 2BBAB90 8006F5F4 68010624 */  addiu      $a2, $zero, 0x168
    /* 2BBAB94 8006F5F8 EC000724 */  addiu      $a3, $zero, 0xEC
    /* 2BBAB98 8006F5FC 0680053C */  lui        $a1, %hi(D_80067008)
    /* 2BBAB9C 8006F600 0870A58C */  lw         $a1, %lo(D_80067008)($a1)
    /* 2BBABA0 8006F604 03000224 */  addiu      $v0, $zero, 0x3
    /* 2BBABA4 8006F608 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2BBABA8 8006F60C 0680023C */  lui        $v0, %hi(D_800635F8)
    /* 2BBABAC 8006F610 F8354224 */  addiu      $v0, $v0, %lo(D_800635F8)
    /* 2BBABB0 8006F614 40280500 */  sll        $a1, $a1, 1
    /* 2BBABB4 8006F618 1C00A530 */  andi       $a1, $a1, 0x1C
    /* 2BBABB8 8006F61C 2128A200 */  addu       $a1, $a1, $v0
  .Llevel_41_8006F620:
    /* 2BBABBC 8006F620 A449010C */  jal        func_80052690
    /* 2BBABC0 8006F624 00000000 */   nop
    /* 2BBABC4 8006F628 154D010C */  jal        func_80053454
    /* 2BBABC8 8006F62C 00000000 */   nop
    /* 2BBABCC 8006F630 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2BBABD0 8006F634 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2BBABD4 8006F638 0800E003 */  jr         $ra
    /* 2BBABD8 8006F63C 00000000 */   nop
endlabel func_level_41_8006F56C
