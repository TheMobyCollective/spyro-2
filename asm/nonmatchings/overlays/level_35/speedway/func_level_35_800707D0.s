.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_35_800707D0, 0x60

glabel func_level_35_800707D0
    /* 29D5D6C 800707D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 29D5D70 800707D4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 29D5D74 800707D8 AB42010C */  jal        func_80050AAC
    /* 29D5D78 800707DC 00000000 */   nop
    /* 29D5D7C 800707E0 0680033C */  lui        $v1, %hi(D_80066F2C)
    /* 29D5D80 800707E4 2C6F638C */  lw         $v1, %lo(D_80066F2C)($v1)
    /* 29D5D84 800707E8 02000224 */  addiu      $v0, $zero, 0x2
    /* 29D5D88 800707EC 0780013C */  lui        $at, %hi(D_800681C8)
    /* 29D5D8C 800707F0 C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* 29D5D90 800707F4 0780013C */  lui        $at, %hi(D_800698EC)
    /* 29D5D94 800707F8 EC9820AC */  sw         $zero, %lo(D_800698EC)($at)
    /* 29D5D98 800707FC 0780013C */  lui        $at, %hi(D_800698F0)
    /* 29D5D9C 80070800 F09820AC */  sw         $zero, %lo(D_800698F0)($at)
    /* 29D5DA0 80070804 0780013C */  lui        $at, %hi(D_800698F4)
    /* 29D5DA4 80070808 F49820AC */  sw         $zero, %lo(D_800698F4)($at)
    /* 29D5DA8 8007080C 0780013C */  lui        $at, %hi(D_800698F8)
    /* 29D5DAC 80070810 F89820AC */  sw         $zero, %lo(D_800698F8)($at)
    /* 29D5DB0 80070814 0000648C */  lw         $a0, 0x0($v1)
    /* 29D5DB4 80070818 297D000C */  jal        func_8001F4A4
    /* 29D5DB8 8007081C 04000524 */   addiu     $a1, $zero, 0x4
    /* 29D5DBC 80070820 1000BF8F */  lw         $ra, 0x10($sp)
    /* 29D5DC0 80070824 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 29D5DC4 80070828 0800E003 */  jr         $ra
    /* 29D5DC8 8007082C 00000000 */   nop
endlabel func_level_35_800707D0
