.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80012B58, 0x2C

glabel func_80012B58
    /* 3358 80012B58 01000224 */  addiu      $v0, $zero, 0x1
    /* 335C 80012B5C 0780013C */  lui        $at, %hi(D_80068375)
    /* 3360 80012B60 758322A0 */  sb         $v0, %lo(D_80068375)($at)
    /* 3364 80012B64 0780013C */  lui        $at, %hi(D_80068372)
    /* 3368 80012B68 728320A0 */  sb         $zero, %lo(D_80068372)($at)
    /* 336C 80012B6C 0780013C */  lui        $at, %hi(D_80068373)
    /* 3370 80012B70 738320A0 */  sb         $zero, %lo(D_80068373)($at)
    /* 3374 80012B74 0780013C */  lui        $at, %hi(D_80068371)
    /* 3378 80012B78 718320A0 */  sb         $zero, %lo(D_80068371)($at)
    /* 337C 80012B7C 0800E003 */  jr         $ra
    /* 3380 80012B80 00000000 */   nop
endlabel func_80012B58
