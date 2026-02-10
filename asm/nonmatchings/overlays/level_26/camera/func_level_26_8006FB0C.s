.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_26_8006FB0C, 0x28

glabel func_level_26_8006FB0C
    /* 1DB28A8 8006FB0C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1DB28AC 8006FB10 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1DB28B0 8006FB14 D676000C */  jal        func_8001DB58
    /* 1DB28B4 8006FB18 00000000 */   nop
    /* 1DB28B8 8006FB1C 1B77000C */  jal        func_8001DC6C
    /* 1DB28BC 8006FB20 00000000 */   nop
    /* 1DB28C0 8006FB24 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1DB28C4 8006FB28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1DB28C8 8006FB2C 0800E003 */  jr         $ra
    /* 1DB28CC 8006FB30 00000000 */   nop
endlabel func_level_26_8006FB0C
