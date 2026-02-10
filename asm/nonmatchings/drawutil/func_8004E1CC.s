.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004E1CC, 0x6C

glabel func_8004E1CC
    /* 3E9CC 8004E1CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3E9D0 8004E1D0 2800A38F */  lw         $v1, 0x28($sp)
    /* 3E9D4 8004E1D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3E9D8 8004E1D8 0680103C */  lui        $s0, %hi(D_80067030)
    /* 3E9DC 8004E1DC 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 3E9E0 8004E1E0 0005023C */  lui        $v0, (0x5000000 >> 16)
    /* 3E9E4 8004E1E4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3E9E8 8004E1E8 080004A6 */  sh         $a0, 0x8($s0)
    /* 3E9EC 8004E1EC 100004A6 */  sh         $a0, 0x10($s0)
    /* 3E9F0 8004E1F0 21200002 */  addu       $a0, $s0, $zero
    /* 3E9F4 8004E1F4 000002AE */  sw         $v0, 0x0($s0)
    /* 3E9F8 8004E1F8 040003AE */  sw         $v1, 0x4($s0)
    /* 3E9FC 8004E1FC 0C0006A6 */  sh         $a2, 0xC($s0)
    /* 3EA00 8004E200 140006A6 */  sh         $a2, 0x14($s0)
    /* 3EA04 8004E204 0A0005A6 */  sh         $a1, 0xA($s0)
    /* 3EA08 8004E208 0E0005A6 */  sh         $a1, 0xE($s0)
    /* 3EA0C 8004E20C 120007A6 */  sh         $a3, 0x12($s0)
    /* 3EA10 8004E210 E46C000C */  jal        func_8001B390
    /* 3EA14 8004E214 160007A6 */   sh        $a3, 0x16($s0)
    /* 3EA18 8004E218 18001026 */  addiu      $s0, $s0, 0x18
    /* 3EA1C 8004E21C 0680013C */  lui        $at, %hi(D_80067030)
    /* 3EA20 8004E220 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 3EA24 8004E224 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3EA28 8004E228 1000B08F */  lw         $s0, 0x10($sp)
    /* 3EA2C 8004E22C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3EA30 8004E230 0800E003 */  jr         $ra
    /* 3EA34 8004E234 00000000 */   nop
endlabel func_8004E1CC
