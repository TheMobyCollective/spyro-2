.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002E2BC, 0x48

glabel func_8002E2BC
    /* 1EABC 8002E2BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1EAC0 8002E2C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1EAC4 8002E2C4 0780103C */  lui        $s0, %hi(D_8006A090)
    /* 1EAC8 8002E2C8 90A01026 */  addiu      $s0, $s0, %lo(D_8006A090)
    /* 1EACC 8002E2CC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1EAD0 8002E2D0 686F000C */  jal        func_8001BDA0
    /* 1EAD4 8002E2D4 21200002 */   addu      $a0, $s0, $zero
    /* 1EAD8 8002E2D8 686F000C */  jal        func_8001BDA0
    /* 1EADC 8002E2DC E8FF0426 */   addiu     $a0, $s0, -0x18
    /* 1EAE0 8002E2E0 686F000C */  jal        func_8001BDA0
    /* 1EAE4 8002E2E4 F4FF0426 */   addiu     $a0, $s0, -0xC
    /* 1EAE8 8002E2E8 0780013C */  lui        $at, %hi(D_8006A0A8)
    /* 1EAEC 8002E2EC A8A020AC */  sw         $zero, %lo(D_8006A0A8)($at)
    /* 1EAF0 8002E2F0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1EAF4 8002E2F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1EAF8 8002E2F8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1EAFC 8002E2FC 0800E003 */  jr         $ra
    /* 1EB00 8002E300 00000000 */   nop
endlabel func_8002E2BC
