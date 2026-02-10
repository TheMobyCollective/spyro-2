.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80012C1C, 0x3C

glabel func_80012C1C
    /* 341C 80012C1C 08000224 */  addiu      $v0, $zero, 0x8
    /* 3420 80012C20 0780013C */  lui        $at, %hi(D_80068334)
    /* 3424 80012C24 348324AC */  sw         $a0, %lo(D_80068334)($at)
    /* 3428 80012C28 0780013C */  lui        $at, %hi(D_80068338)
    /* 342C 80012C2C 388324AC */  sw         $a0, %lo(D_80068338)($at)
    /* 3430 80012C30 0780013C */  lui        $at, %hi(D_8006833C)
    /* 3434 80012C34 3C8325AC */  sw         $a1, %lo(D_8006833C)($at)
    /* 3438 80012C38 0780013C */  lui        $at, %hi(D_80068340)
    /* 343C 80012C3C 408326AC */  sw         $a2, %lo(D_80068340)($at)
    /* 3440 80012C40 0780013C */  lui        $at, %hi(D_800682F4)
    /* 3444 80012C44 F48222AC */  sw         $v0, %lo(D_800682F4)($at)
    /* 3448 80012C48 0780013C */  lui        $at, %hi(D_80068304)
    /* 344C 80012C4C 048320AC */  sw         $zero, %lo(D_80068304)($at)
    /* 3450 80012C50 0800E003 */  jr         $ra
    /* 3454 80012C54 00000000 */   nop
endlabel func_80012C1C
