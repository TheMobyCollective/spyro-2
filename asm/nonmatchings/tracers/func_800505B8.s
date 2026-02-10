.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800505B8, 0x88

glabel func_800505B8
    /* 40DB8 800505B8 1000AB8F */  lw         $t3, 0x10($sp)
    /* 40DBC 800505BC 21500000 */  addu       $t2, $zero, $zero
    /* 40DC0 800505C0 0780093C */  lui        $t1, %hi(D_80069F30)
    /* 40DC4 800505C4 309F2925 */  addiu      $t1, $t1, %lo(D_80069F30)
    /* 40DC8 800505C8 21402001 */  addu       $t0, $t1, $zero
    /* 40DCC 800505CC 21180000 */  addu       $v1, $zero, $zero
  .L800505D0:
    /* 40DD0 800505D0 0000028D */  lw         $v0, 0x0($t0)
    /* 40DD4 800505D4 00000000 */  nop
    /* 40DD8 800505D8 10004014 */  bnez       $v0, .L8005061C
    /* 40DDC 800505DC 21102001 */   addu      $v0, $t1, $zero
    /* 40DE0 800505E0 000004AD */  sw         $a0, 0x0($t0)
    /* 40DE4 800505E4 0780013C */  lui        $at, %hi(D_80069F34)
    /* 40DE8 800505E8 21082300 */  addu       $at, $at, $v1
    /* 40DEC 800505EC 349F25AC */  sw         $a1, %lo(D_80069F34)($at)
    /* 40DF0 800505F0 0780013C */  lui        $at, %hi(D_80069F38)
    /* 40DF4 800505F4 21082300 */  addu       $at, $at, $v1
    /* 40DF8 800505F8 389F26AC */  sw         $a2, %lo(D_80069F38)($at)
    /* 40DFC 800505FC 0780013C */  lui        $at, %hi(D_80069F3C)
    /* 40E00 80050600 21082300 */  addu       $at, $at, $v1
    /* 40E04 80050604 3C9F27AC */  sw         $a3, %lo(D_80069F3C)($at)
    /* 40E08 80050608 0780013C */  lui        $at, %hi(D_80069F40)
    /* 40E0C 8005060C 21082300 */  addu       $at, $at, $v1
    /* 40E10 80050610 409F2BAC */  sw         $t3, %lo(D_80069F40)($at)
    /* 40E14 80050614 8E410108 */  j          .L80050638
    /* 40E18 80050618 00000000 */   nop
  .L8005061C:
    /* 40E1C 8005061C 14002925 */  addiu      $t1, $t1, 0x14
    /* 40E20 80050620 14000825 */  addiu      $t0, $t0, 0x14
    /* 40E24 80050624 01004A25 */  addiu      $t2, $t2, 0x1
    /* 40E28 80050628 08004229 */  slti       $v0, $t2, 0x8
    /* 40E2C 8005062C E8FF4014 */  bnez       $v0, .L800505D0
    /* 40E30 80050630 14006324 */   addiu     $v1, $v1, 0x14
    /* 40E34 80050634 21100000 */  addu       $v0, $zero, $zero
  .L80050638:
    /* 40E38 80050638 0800E003 */  jr         $ra
    /* 40E3C 8005063C 00000000 */   nop
endlabel func_800505B8
