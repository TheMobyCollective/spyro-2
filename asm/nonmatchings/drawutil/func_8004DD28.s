.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004DD28, 0x6C

glabel func_8004DD28
    /* 3E528 8004DD28 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3E52C 8004DD2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3E530 8004DD30 0680103C */  lui        $s0, %hi(D_80067030)
    /* 3E534 8004DD34 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 3E538 8004DD38 0005023C */  lui        $v0, (0x5000000 >> 16)
    /* 3E53C 8004DD3C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3E540 8004DD40 000002AE */  sw         $v0, 0x0($s0)
    /* 3E544 8004DD44 0028023C */  lui        $v0, (0x28000000 >> 16)
    /* 3E548 8004DD48 080004A6 */  sh         $a0, 0x8($s0)
    /* 3E54C 8004DD4C 100004A6 */  sh         $a0, 0x10($s0)
    /* 3E550 8004DD50 21200002 */  addu       $a0, $s0, $zero
    /* 3E554 8004DD54 040002AE */  sw         $v0, 0x4($s0)
    /* 3E558 8004DD58 0C0005A6 */  sh         $a1, 0xC($s0)
    /* 3E55C 8004DD5C 140005A6 */  sh         $a1, 0x14($s0)
    /* 3E560 8004DD60 0A0006A6 */  sh         $a2, 0xA($s0)
    /* 3E564 8004DD64 0E0006A6 */  sh         $a2, 0xE($s0)
    /* 3E568 8004DD68 120007A6 */  sh         $a3, 0x12($s0)
    /* 3E56C 8004DD6C E46C000C */  jal        func_8001B390
    /* 3E570 8004DD70 160007A6 */   sh        $a3, 0x16($s0)
    /* 3E574 8004DD74 18001026 */  addiu      $s0, $s0, 0x18
    /* 3E578 8004DD78 0680013C */  lui        $at, %hi(D_80067030)
    /* 3E57C 8004DD7C 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 3E580 8004DD80 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3E584 8004DD84 1000B08F */  lw         $s0, 0x10($sp)
    /* 3E588 8004DD88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3E58C 8004DD8C 0800E003 */  jr         $ra
    /* 3E590 8004DD90 00000000 */   nop
endlabel func_8004DD28
