.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_32_8006FAD0, 0x28

glabel func_level_32_8006FAD0
    /* 236186C 8006FAD0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2361870 8006FAD4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2361874 8006FAD8 D676000C */  jal        func_8001DB58
    /* 2361878 8006FADC 00000000 */   nop
    /* 236187C 8006FAE0 1B77000C */  jal        func_8001DC6C
    /* 2361880 8006FAE4 00000000 */   nop
    /* 2361884 8006FAE8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2361888 8006FAEC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 236188C 8006FAF0 0800E003 */  jr         $ra
    /* 2361890 8006FAF4 00000000 */   nop
endlabel func_level_32_8006FAD0
