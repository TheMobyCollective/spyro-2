.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80017164, 0x58

glabel func_80017164
    /* 7964 80017164 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7968 80017168 03000224 */  addiu      $v0, $zero, 0x3
    /* 796C 8001716C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 7970 80017170 0780013C */  lui        $at, %hi(D_800698F0)
    /* 7974 80017174 F09820AC */  sw         $zero, %lo(D_800698F0)($at)
    /* 7978 80017178 0780013C */  lui        $at, %hi(D_800698EC)
    /* 797C 8001717C EC9820AC */  sw         $zero, %lo(D_800698EC)($at)
    /* 7980 80017180 0780013C */  lui        $at, %hi(D_800698F8)
    /* 7984 80017184 F89820AC */  sw         $zero, %lo(D_800698F8)($at)
    /* 7988 80017188 0780013C */  lui        $at, %hi(D_800698FC)
    /* 798C 8001718C FC9820AC */  sw         $zero, %lo(D_800698FC)($at)
    /* 7990 80017190 0780013C */  lui        $at, %hi(D_800681C8)
    /* 7994 80017194 C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* 7998 80017198 AB42010C */  jal        func_80050AAC
    /* 799C 8001719C 00000000 */   nop
    /* 79A0 800171A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 79A4 800171A4 0780013C */  lui        $at, %hi(D_80068304)
    /* 79A8 800171A8 048322AC */  sw         $v0, %lo(D_80068304)($at)
    /* 79AC 800171AC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 79B0 800171B0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 79B4 800171B4 0800E003 */  jr         $ra
    /* 79B8 800171B8 00000000 */   nop
endlabel func_80017164
