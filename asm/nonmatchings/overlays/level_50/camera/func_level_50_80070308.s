.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_50_80070308, 0x28

glabel func_level_50_80070308
    /* 37108A4 80070308 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 37108A8 8007030C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 37108AC 80070310 D676000C */  jal        func_8001DB58
    /* 37108B0 80070314 00000000 */   nop
    /* 37108B4 80070318 1B77000C */  jal        func_8001DC6C
    /* 37108B8 8007031C 00000000 */   nop
    /* 37108BC 80070320 1000BF8F */  lw         $ra, 0x10($sp)
    /* 37108C0 80070324 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 37108C4 80070328 0800E003 */  jr         $ra
    /* 37108C8 8007032C 00000000 */   nop
endlabel func_level_50_80070308
