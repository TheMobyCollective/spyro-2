.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011DD4, 0xC8

glabel func_80011DD4
    /* 25D4 80011DD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 25D8 80011DD8 1F80033C */  lui        $v1, (0x801FF800 >> 16)
    /* 25DC 80011DDC 00F86334 */  ori        $v1, $v1, (0x801FF800 & 0xFFFF)
    /* 25E0 80011DE0 FEFF073C */  lui        $a3, (0xFFFE4000 >> 16)
    /* 25E4 80011DE4 0040E734 */  ori        $a3, $a3, (0xFFFE4000 & 0xFFFF)
    /* 25E8 80011DE8 0780023C */  lui        $v0, %hi(D_8006B2AC)
    /* 25EC 80011DEC ACB2428C */  lw         $v0, %lo(D_8006B2AC)($v0)
    /* 25F0 80011DF0 21280000 */  addu       $a1, $zero, $zero
    /* 25F4 80011DF4 0780013C */  lui        $at, %hi(D_8006B2B0)
    /* 25F8 80011DF8 B0B223AC */  sw         $v1, %lo(D_8006B2B0)($at)
    /* 25FC 80011DFC 0180033C */  lui        $v1, %hi(D_80011110)
    /* 2600 80011E00 1011638C */  lw         $v1, %lo(D_80011110)($v1)
    /* 2604 80011E04 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2608 80011E08 F8D34424 */  addiu      $a0, $v0, -0x2C08
    /* 260C 80011E0C 00D44224 */  addiu      $v0, $v0, -0x2C00
    /* 2610 80011E10 0780013C */  lui        $at, %hi(D_8006B2A8)
    /* 2614 80011E14 A8B222AC */  sw         $v0, %lo(D_8006B2A8)($at)
    /* 2618 80011E18 21108700 */  addu       $v0, $a0, $a3
    /* 261C 80011E1C 21384700 */  addu       $a3, $v0, $a3
    /* 2620 80011E20 0780013C */  lui        $at, %hi(D_8006B284)
    /* 2624 80011E24 84B223AC */  sw         $v1, %lo(D_8006B284)($at)
    /* 2628 80011E28 0780013C */  lui        $at, %hi(D_8006B2A4)
    /* 262C 80011E2C A4B224AC */  sw         $a0, %lo(D_8006B2A4)($at)
    /* 2630 80011E30 0780013C */  lui        $at, %hi(D_8006B2A0)
    /* 2634 80011E34 A0B222AC */  sw         $v0, %lo(D_8006B2A0)($at)
    /* 2638 80011E38 0780013C */  lui        $at, %hi(D_8006B29C)
    /* 263C 80011E3C 9CB227AC */  sw         $a3, %lo(D_8006B29C)($at)
    /* 2640 80011E40 0780013C */  lui        $at, %hi(D_80069998)
    /* 2644 80011E44 989927AC */  sw         $a3, %lo(D_80069998)($at)
    /* 2648 80011E48 0780013C */  lui        $at, %hi(D_80069A0C)
    /* 264C 80011E4C 0C9A22AC */  sw         $v0, %lo(D_80069A0C)($at)
    /* 2650 80011E50 F26C000C */  jal        func_8001B3C8
    /* 2654 80011E54 08000624 */   addiu     $a2, $zero, 0x8
    /* 2658 80011E58 21280000 */  addu       $a1, $zero, $zero
    /* 265C 80011E5C 0780043C */  lui        $a0, %hi(D_8006B2A8)
    /* 2660 80011E60 A8B2848C */  lw         $a0, %lo(D_8006B2A8)($a0)
    /* 2664 80011E64 F26C000C */  jal        func_8001B3C8
    /* 2668 80011E68 002C0624 */   addiu     $a2, $zero, 0x2C00
    /* 266C 80011E6C 0780023C */  lui        $v0, %hi(D_8006B2A4)
    /* 2670 80011E70 A4B2428C */  lw         $v0, %lo(D_8006B2A4)($v0)
    /* 2674 80011E74 0780033C */  lui        $v1, %hi(D_8006B2A8)
    /* 2678 80011E78 A8B2638C */  lw         $v1, %lo(D_8006B2A8)($v1)
    /* 267C 80011E7C 0680013C */  lui        $at, %hi(D_80067000)
    /* 2680 80011E80 007022AC */  sw         $v0, %lo(D_80067000)($at)
    /* 2684 80011E84 0680013C */  lui        $at, %hi(D_80066FFC)
    /* 2688 80011E88 FC6F23AC */  sw         $v1, %lo(D_80066FFC)($at)
    /* 268C 80011E8C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2690 80011E90 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2694 80011E94 0800E003 */  jr         $ra
    /* 2698 80011E98 00000000 */   nop
endlabel func_80011DD4
