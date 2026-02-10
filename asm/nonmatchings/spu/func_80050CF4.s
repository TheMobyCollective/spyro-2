.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80050CF4, 0x44

glabel func_80050CF4
    /* 414F4 80050CF4 40100400 */  sll        $v0, $a0, 1
    /* 414F8 80050CF8 21104400 */  addu       $v0, $v0, $a0
    /* 414FC 80050CFC 80100200 */  sll        $v0, $v0, 2
    /* 41500 80050D00 23104400 */  subu       $v0, $v0, $a0
    /* 41504 80050D04 80100200 */  sll        $v0, $v0, 2
    /* 41508 80050D08 0780013C */  lui        $at, %hi(D_80069A12)
    /* 4150C 80050D0C 21082200 */  addu       $at, $at, $v0
    /* 41510 80050D10 129A2390 */  lbu        $v1, %lo(D_80069A12)($at)
    /* 41514 80050D14 0780013C */  lui        $at, %hi(D_80069A1C)
    /* 41518 80050D18 21082200 */  addu       $at, $at, $v0
    /* 4151C 80050D1C 1C9A25AC */  sw         $a1, %lo(D_80069A1C)($at)
    /* 41520 80050D20 10006334 */  ori        $v1, $v1, 0x10
    /* 41524 80050D24 0780013C */  lui        $at, %hi(D_80069A12)
    /* 41528 80050D28 21082200 */  addu       $at, $at, $v0
    /* 4152C 80050D2C 129A23A0 */  sb         $v1, %lo(D_80069A12)($at)
    /* 41530 80050D30 0800E003 */  jr         $ra
    /* 41534 80050D34 00000000 */   nop
endlabel func_80050CF4
