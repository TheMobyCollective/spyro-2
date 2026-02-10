.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_25_80070730, 0x60

glabel func_level_25_80070730
    /* 1BC8CCC 80070730 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1BC8CD0 80070734 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1BC8CD4 80070738 AB42010C */  jal        func_80050AAC
    /* 1BC8CD8 8007073C 00000000 */   nop
    /* 1BC8CDC 80070740 0680033C */  lui        $v1, %hi(D_80066F2C)
    /* 1BC8CE0 80070744 2C6F638C */  lw         $v1, %lo(D_80066F2C)($v1)
    /* 1BC8CE4 80070748 02000224 */  addiu      $v0, $zero, 0x2
    /* 1BC8CE8 8007074C 0780013C */  lui        $at, %hi(D_800681C8)
    /* 1BC8CEC 80070750 C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* 1BC8CF0 80070754 0780013C */  lui        $at, %hi(D_800698EC)
    /* 1BC8CF4 80070758 EC9820AC */  sw         $zero, %lo(D_800698EC)($at)
    /* 1BC8CF8 8007075C 0780013C */  lui        $at, %hi(D_800698F0)
    /* 1BC8CFC 80070760 F09820AC */  sw         $zero, %lo(D_800698F0)($at)
    /* 1BC8D00 80070764 0780013C */  lui        $at, %hi(D_800698F4)
    /* 1BC8D04 80070768 F49820AC */  sw         $zero, %lo(D_800698F4)($at)
    /* 1BC8D08 8007076C 0780013C */  lui        $at, %hi(D_800698F8)
    /* 1BC8D0C 80070770 F89820AC */  sw         $zero, %lo(D_800698F8)($at)
    /* 1BC8D10 80070774 0000648C */  lw         $a0, 0x0($v1)
    /* 1BC8D14 80070778 297D000C */  jal        func_8001F4A4
    /* 1BC8D18 8007077C 04000524 */   addiu     $a1, $zero, 0x4
    /* 1BC8D1C 80070780 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1BC8D20 80070784 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1BC8D24 80070788 0800E003 */  jr         $ra
    /* 1BC8D28 8007078C 00000000 */   nop
endlabel func_level_25_80070730
