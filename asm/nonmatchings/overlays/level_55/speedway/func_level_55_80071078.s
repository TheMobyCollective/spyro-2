.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_55_80071078, 0x60

glabel func_level_55_80071078
    /* 3D21614 80071078 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3D21618 8007107C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3D2161C 80071080 AB42010C */  jal        func_80050AAC
    /* 3D21620 80071084 00000000 */   nop
    /* 3D21624 80071088 0680033C */  lui        $v1, %hi(D_80066F2C)
    /* 3D21628 8007108C 2C6F638C */  lw         $v1, %lo(D_80066F2C)($v1)
    /* 3D2162C 80071090 02000224 */  addiu      $v0, $zero, 0x2
    /* 3D21630 80071094 0780013C */  lui        $at, %hi(D_800681C8)
    /* 3D21634 80071098 C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* 3D21638 8007109C 0780013C */  lui        $at, %hi(D_800698EC)
    /* 3D2163C 800710A0 EC9820AC */  sw         $zero, %lo(D_800698EC)($at)
    /* 3D21640 800710A4 0780013C */  lui        $at, %hi(D_800698F0)
    /* 3D21644 800710A8 F09820AC */  sw         $zero, %lo(D_800698F0)($at)
    /* 3D21648 800710AC 0780013C */  lui        $at, %hi(D_800698F4)
    /* 3D2164C 800710B0 F49820AC */  sw         $zero, %lo(D_800698F4)($at)
    /* 3D21650 800710B4 0780013C */  lui        $at, %hi(D_800698F8)
    /* 3D21654 800710B8 F89820AC */  sw         $zero, %lo(D_800698F8)($at)
    /* 3D21658 800710BC 0000648C */  lw         $a0, 0x0($v1)
    /* 3D2165C 800710C0 297D000C */  jal        func_8001F4A4
    /* 3D21660 800710C4 04000524 */   addiu     $a1, $zero, 0x4
    /* 3D21664 800710C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3D21668 800710CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3D2166C 800710D0 0800E003 */  jr         $ra
    /* 3D21670 800710D4 00000000 */   nop
endlabel func_level_55_80071078
