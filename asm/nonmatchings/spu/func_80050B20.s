.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80050B20, 0x54

glabel func_80050B20
    /* 41320 80050B20 1200A004 */  bltz       $a1, .L80050B6C
    /* 41324 80050B24 21100000 */   addu      $v0, $zero, $zero
    /* 41328 80050B28 40180500 */  sll        $v1, $a1, 1
    /* 4132C 80050B2C 21186500 */  addu       $v1, $v1, $a1
    /* 41330 80050B30 80180300 */  sll        $v1, $v1, 2
    /* 41334 80050B34 23186500 */  subu       $v1, $v1, $a1
    /* 41338 80050B38 80280300 */  sll        $a1, $v1, 2
    /* 4133C 80050B3C 0780013C */  lui        $at, %hi(D_80069A11)
    /* 41340 80050B40 21082500 */  addu       $at, $at, $a1
    /* 41344 80050B44 119A2390 */  lbu        $v1, %lo(D_80069A11)($at)
    /* 41348 80050B48 00000000 */  nop
    /* 4134C 80050B4C 07006414 */  bne        $v1, $a0, .L80050B6C
    /* 41350 80050B50 00000000 */   nop
    /* 41354 80050B54 0780013C */  lui        $at, %hi(D_80069A10)
    /* 41358 80050B58 21082500 */  addu       $at, $at, $a1
    /* 4135C 80050B5C 109A2290 */  lbu        $v0, %lo(D_80069A10)($at)
    /* 41360 80050B60 00000000 */  nop
    /* 41364 80050B64 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 41368 80050B68 0200422C */  sltiu      $v0, $v0, 0x2
  .L80050B6C:
    /* 4136C 80050B6C 0800E003 */  jr         $ra
    /* 41370 80050B70 00000000 */   nop
endlabel func_80050B20
