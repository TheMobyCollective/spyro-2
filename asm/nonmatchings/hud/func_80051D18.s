.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80051D18, 0x7C

glabel func_80051D18
    /* 42518 80051D18 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4251C 80051D1C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 42520 80051D20 0680103C */  lui        $s0, %hi(D_800676A0)
    /* 42524 80051D24 A0761026 */  addiu      $s0, $s0, %lo(D_800676A0)
    /* 42528 80051D28 BCFF0426 */  addiu      $a0, $s0, -0x44
    /* 4252C 80051D2C 21280000 */  addu       $a1, $zero, $zero
    /* 42530 80051D30 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 42534 80051D34 1800B2AF */  sw         $s2, 0x18($sp)
    /* 42538 80051D38 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4253C 80051D3C 0000118E */  lw         $s1, 0x0($s0)
    /* 42540 80051D40 0680123C */  lui        $s2, %hi(D_800676BC)
    /* 42544 80051D44 BC76528E */  lw         $s2, %lo(D_800676BC)($s2)
    /* 42548 80051D48 F26C000C */  jal        func_8001B3C8
    /* 4254C 80051D4C 7C000624 */   addiu     $a2, $zero, 0x7C
    /* 42550 80051D50 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 42554 80051D54 BCFF02A2 */  sb         $v0, -0x44($s0)
    /* 42558 80051D58 C4FF02A2 */  sb         $v0, -0x3C($s0)
    /* 4255C 80051D5C CCFF02A2 */  sb         $v0, -0x34($s0)
    /* 42560 80051D60 D4FF02A2 */  sb         $v0, -0x2C($s0)
    /* 42564 80051D64 DCFF02A2 */  sb         $v0, -0x24($s0)
    /* 42568 80051D68 E4FF02A2 */  sb         $v0, -0x1C($s0)
    /* 4256C 80051D6C 000011AE */  sw         $s1, 0x0($s0)
    /* 42570 80051D70 0680013C */  lui        $at, %hi(D_800676BC)
    /* 42574 80051D74 BC7632AC */  sw         $s2, %lo(D_800676BC)($at)
    /* 42578 80051D78 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4257C 80051D7C 1800B28F */  lw         $s2, 0x18($sp)
    /* 42580 80051D80 1400B18F */  lw         $s1, 0x14($sp)
    /* 42584 80051D84 1000B08F */  lw         $s0, 0x10($sp)
    /* 42588 80051D88 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4258C 80051D8C 0800E003 */  jr         $ra
    /* 42590 80051D90 00000000 */   nop
endlabel func_80051D18
