.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8006E7D0, 0x30

glabel func_level_52_8006E7D0
    /* 3B0156C 8006E7D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3B01570 8006E7D4 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 3B01574 8006E7D8 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 3B01578 8006E7DC 0680043C */  lui        $a0, %hi(D_80067674)
    /* 3B0157C 8006E7E0 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 3B01580 8006E7E4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3B01584 8006E7E8 6746010C */  jal        func_8005199C
    /* 3B01588 8006E7EC 00000000 */   nop
    /* 3B0158C 8006E7F0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3B01590 8006E7F4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3B01594 8006E7F8 0800E003 */  jr         $ra
    /* 3B01598 8006E7FC 00000000 */   nop
endlabel func_level_52_8006E7D0
