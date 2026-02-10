.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C4FC, 0x38

glabel func_8004C4FC
    /* 3CCFC 8004C4FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3CD00 8004C500 21280000 */  addu       $a1, $zero, $zero
    /* 3CD04 8004C504 0680043C */  lui        $a0, %hi(D_80067034)
    /* 3CD08 8004C508 3470848C */  lw         $a0, %lo(D_80067034)($a0)
    /* 3CD0C 8004C50C 001C0624 */  addiu      $a2, $zero, 0x1C00
    /* 3CD10 8004C510 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3CD14 8004C514 F96C000C */  jal        func_8001B3E4
    /* 3CD18 8004C518 00D08424 */   addiu     $a0, $a0, -0x3000
    /* 3CD1C 8004C51C ED8E000C */  jal        func_80023BB4
    /* 3CD20 8004C520 00000000 */   nop
    /* 3CD24 8004C524 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3CD28 8004C528 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3CD2C 8004C52C 0800E003 */  jr         $ra
    /* 3CD30 8004C530 00000000 */   nop
endlabel func_8004C4FC
