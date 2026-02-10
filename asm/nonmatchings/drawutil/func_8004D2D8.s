.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D2D8, 0x70

glabel func_8004D2D8
    /* 3DAD8 8004D2D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3DADC 8004D2DC 082A033C */  lui        $v1, (0x2A080808 >> 16)
    /* 3DAE0 8004D2E0 08086334 */  ori        $v1, $v1, (0x2A080808 & 0xFFFF)
    /* 3DAE4 8004D2E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3DAE8 8004D2E8 0680103C */  lui        $s0, %hi(D_80067030)
    /* 3DAEC 8004D2EC 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 3DAF0 8004D2F0 0005023C */  lui        $v0, (0x5000000 >> 16)
    /* 3DAF4 8004D2F4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3DAF8 8004D2F8 080004A6 */  sh         $a0, 0x8($s0)
    /* 3DAFC 8004D2FC 100004A6 */  sh         $a0, 0x10($s0)
    /* 3DB00 8004D300 21200002 */  addu       $a0, $s0, $zero
    /* 3DB04 8004D304 000002AE */  sw         $v0, 0x0($s0)
    /* 3DB08 8004D308 040003AE */  sw         $v1, 0x4($s0)
    /* 3DB0C 8004D30C 0C0005A6 */  sh         $a1, 0xC($s0)
    /* 3DB10 8004D310 140005A6 */  sh         $a1, 0x14($s0)
    /* 3DB14 8004D314 0A0006A6 */  sh         $a2, 0xA($s0)
    /* 3DB18 8004D318 0E0006A6 */  sh         $a2, 0xE($s0)
    /* 3DB1C 8004D31C 120007A6 */  sh         $a3, 0x12($s0)
    /* 3DB20 8004D320 E46C000C */  jal        func_8001B390
    /* 3DB24 8004D324 160007A6 */   sh        $a3, 0x16($s0)
    /* 3DB28 8004D328 18001026 */  addiu      $s0, $s0, 0x18
    /* 3DB2C 8004D32C 0680013C */  lui        $at, %hi(D_80067030)
    /* 3DB30 8004D330 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 3DB34 8004D334 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3DB38 8004D338 1000B08F */  lw         $s0, 0x10($sp)
    /* 3DB3C 8004D33C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3DB40 8004D340 0800E003 */  jr         $ra
    /* 3DB44 8004D344 00000000 */   nop
endlabel func_8004D2D8
