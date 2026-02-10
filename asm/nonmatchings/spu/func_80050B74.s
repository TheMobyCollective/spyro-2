.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80050B74, 0x54

glabel func_80050B74
    /* 41374 80050B74 1200A004 */  bltz       $a1, .L80050BC0
    /* 41378 80050B78 21100000 */   addu      $v0, $zero, $zero
    /* 4137C 80050B7C 40180500 */  sll        $v1, $a1, 1
    /* 41380 80050B80 21186500 */  addu       $v1, $v1, $a1
    /* 41384 80050B84 80180300 */  sll        $v1, $v1, 2
    /* 41388 80050B88 23186500 */  subu       $v1, $v1, $a1
    /* 4138C 80050B8C 80280300 */  sll        $a1, $v1, 2
    /* 41390 80050B90 0780013C */  lui        $at, %hi(D_80069A38)
    /* 41394 80050B94 21082500 */  addu       $at, $at, $a1
    /* 41398 80050B98 389A238C */  lw         $v1, %lo(D_80069A38)($at)
    /* 4139C 80050B9C 00000000 */  nop
    /* 413A0 80050BA0 07006414 */  bne        $v1, $a0, .L80050BC0
    /* 413A4 80050BA4 00000000 */   nop
    /* 413A8 80050BA8 0780013C */  lui        $at, %hi(D_80069A10)
    /* 413AC 80050BAC 21082500 */  addu       $at, $at, $a1
    /* 413B0 80050BB0 109A2290 */  lbu        $v0, %lo(D_80069A10)($at)
    /* 413B4 80050BB4 00000000 */  nop
    /* 413B8 80050BB8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 413BC 80050BBC 0200422C */  sltiu      $v0, $v0, 0x2
  .L80050BC0:
    /* 413C0 80050BC0 0800E003 */  jr         $ra
    /* 413C4 80050BC4 00000000 */   nop
endlabel func_80050B74
