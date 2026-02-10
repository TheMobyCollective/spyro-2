.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800381EC, 0x4C

glabel func_800381EC
    /* 289EC 800381EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 289F0 800381F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 289F4 800381F4 21808000 */  addu       $s0, $a0, $zero
    /* 289F8 800381F8 0C000426 */  addiu      $a0, $s0, 0xC
    /* 289FC 800381FC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 28A00 80038200 1400028E */  lw         $v0, 0x14($s0)
    /* 28A04 80038204 00100524 */  addiu      $a1, $zero, 0x1000
    /* 28A08 80038208 DC054224 */  addiu      $v0, $v0, 0x5DC
    /* 28A0C 8003820C A1FB000C */  jal        func_8003EE84
    /* 28A10 80038210 140002AE */   sw        $v0, 0x14($s0)
    /* 28A14 80038214 1400038E */  lw         $v1, 0x14($s0)
    /* 28A18 80038218 00000000 */  nop
    /* 28A1C 8003821C 24FA6324 */  addiu      $v1, $v1, -0x5DC
    /* 28A20 80038220 140003AE */  sw         $v1, 0x14($s0)
    /* 28A24 80038224 1400BF8F */  lw         $ra, 0x14($sp)
    /* 28A28 80038228 1000B08F */  lw         $s0, 0x10($sp)
    /* 28A2C 8003822C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 28A30 80038230 0800E003 */  jr         $ra
    /* 28A34 80038234 00000000 */   nop
endlabel func_800381EC
