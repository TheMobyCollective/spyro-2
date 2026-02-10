.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_43_800708AC, 0x28

glabel func_level_43_800708AC
    /* 2FC7E48 800708AC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FC7E4C 800708B0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2FC7E50 800708B4 D676000C */  jal        func_8001DB58
    /* 2FC7E54 800708B8 00000000 */   nop
    /* 2FC7E58 800708BC 1B77000C */  jal        func_8001DC6C
    /* 2FC7E5C 800708C0 00000000 */   nop
    /* 2FC7E60 800708C4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2FC7E64 800708C8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FC7E68 800708CC 0800E003 */  jr         $ra
    /* 2FC7E6C 800708D0 00000000 */   nop
endlabel func_level_43_800708AC
