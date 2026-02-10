.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_34_8006F7D8, 0x30

glabel func_level_34_8006F7D8
    /* 27AC574 8006F7D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 27AC578 8006F7DC 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 27AC57C 8006F7E0 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 27AC580 8006F7E4 0680043C */  lui        $a0, %hi(D_80067674)
    /* 27AC584 8006F7E8 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 27AC588 8006F7EC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 27AC58C 8006F7F0 6746010C */  jal        func_8005199C
    /* 27AC590 8006F7F4 00000000 */   nop
    /* 27AC594 8006F7F8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 27AC598 8006F7FC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 27AC59C 8006F800 0800E003 */  jr         $ra
    /* 27AC5A0 8006F804 00000000 */   nop
endlabel func_level_34_8006F7D8
