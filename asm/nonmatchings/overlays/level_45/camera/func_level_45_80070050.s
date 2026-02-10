.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_45_80070050, 0x28

glabel func_level_45_80070050
    /* 33FA5EC 80070050 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 33FA5F0 80070054 1000BFAF */  sw         $ra, 0x10($sp)
    /* 33FA5F4 80070058 D676000C */  jal        func_8001DB58
    /* 33FA5F8 8007005C 00000000 */   nop
    /* 33FA5FC 80070060 1B77000C */  jal        func_8001DC6C
    /* 33FA600 80070064 00000000 */   nop
    /* 33FA604 80070068 1000BF8F */  lw         $ra, 0x10($sp)
    /* 33FA608 8007006C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 33FA60C 80070070 0800E003 */  jr         $ra
    /* 33FA610 80070074 00000000 */   nop
endlabel func_level_45_80070050
