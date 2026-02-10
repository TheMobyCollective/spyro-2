.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A290, 0x6C

glabel func_8001A290
    /* AA90 8001A290 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AA94 8001A294 0680023C */  lui        $v0, %hi(D_80066F90)
    /* AA98 8001A298 906F428C */  lw         $v0, %lo(D_80066F90)($v0)
    /* AA9C 8001A29C 08000324 */  addiu      $v1, $zero, 0x8
    /* AAA0 8001A2A0 1000BFAF */  sw         $ra, 0x10($sp)
    /* AAA4 8001A2A4 0780013C */  lui        $at, %hi(D_800698F0)
    /* AAA8 8001A2A8 F09820AC */  sw         $zero, %lo(D_800698F0)($at)
    /* AAAC 8001A2AC 0780013C */  lui        $at, %hi(D_800698EC)
    /* AAB0 8001A2B0 EC9820AC */  sw         $zero, %lo(D_800698EC)($at)
    /* AAB4 8001A2B4 0680013C */  lui        $at, %hi(D_80066EEC)
    /* AAB8 8001A2B8 EC6E20AC */  sw         $zero, %lo(D_80066EEC)($at)
    /* AABC 8001A2BC 0680013C */  lui        $at, %hi(D_80067E04)
    /* AAC0 8001A2C0 047E20AC */  sw         $zero, %lo(D_80067E04)($at)
    /* AAC4 8001A2C4 0780013C */  lui        $at, %hi(D_800681C8)
    /* AAC8 8001A2C8 C88123AC */  sw         $v1, %lo(D_800681C8)($at)
    /* AACC 8001A2CC 10004224 */  addiu      $v0, $v0, 0x10
    /* AAD0 8001A2D0 0680013C */  lui        $at, %hi(D_8006715C)
    /* AAD4 8001A2D4 5C7122AC */  sw         $v0, %lo(D_8006715C)($at)
    /* AAD8 8001A2D8 AB42010C */  jal        func_80050AAC
    /* AADC 8001A2DC 00000000 */   nop
    /* AAE0 8001A2E0 01000224 */  addiu      $v0, $zero, 0x1
    /* AAE4 8001A2E4 0780013C */  lui        $at, %hi(D_80068304)
    /* AAE8 8001A2E8 048322AC */  sw         $v0, %lo(D_80068304)($at)
    /* AAEC 8001A2EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* AAF0 8001A2F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AAF4 8001A2F4 0800E003 */  jr         $ra
    /* AAF8 8001A2F8 00000000 */   nop
endlabel func_8001A290
