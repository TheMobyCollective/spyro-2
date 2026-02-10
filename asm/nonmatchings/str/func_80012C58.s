.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80012C58, 0x64

glabel func_80012C58
    /* 3458 80012C58 0780023C */  lui        $v0, %hi(D_8006836C)
    /* 345C 80012C5C 6C83428C */  lw         $v0, %lo(D_8006836C)($v0)
    /* 3460 80012C60 00000000 */  nop
    /* 3464 80012C64 0000428C */  lw         $v0, 0x0($v0)
    /* 3468 80012C68 00000000 */  nop
    /* 346C 80012C6C 11004018 */  blez       $v0, .L80012CB4
    /* 3470 80012C70 05000224 */   addiu     $v0, $zero, 0x5
    /* 3474 80012C74 0780033C */  lui        $v1, %hi(D_800682F4)
    /* 3478 80012C78 F482638C */  lw         $v1, %lo(D_800682F4)($v1)
    /* 347C 80012C7C 0780013C */  lui        $at, %hi(D_8006835C)
    /* 3480 80012C80 5C8324AC */  sw         $a0, %lo(D_8006835C)($at)
    /* 3484 80012C84 0780013C */  lui        $at, %hi(D_80068360)
    /* 3488 80012C88 608324AC */  sw         $a0, %lo(D_80068360)($at)
    /* 348C 80012C8C 0780013C */  lui        $at, %hi(D_80068364)
    /* 3490 80012C90 648325AC */  sw         $a1, %lo(D_80068364)($at)
    /* 3494 80012C94 0780013C */  lui        $at, %hi(D_80068368)
    /* 3498 80012C98 688326AC */  sw         $a2, %lo(D_80068368)($at)
    /* 349C 80012C9C 03006210 */  beq        $v1, $v0, .L80012CAC
    /* 34A0 80012CA0 08000224 */   addiu     $v0, $zero, 0x8
    /* 34A4 80012CA4 0780013C */  lui        $at, %hi(D_800682F4)
    /* 34A8 80012CA8 F48222AC */  sw         $v0, %lo(D_800682F4)($at)
  .L80012CAC:
    /* 34AC 80012CAC 0780013C */  lui        $at, %hi(D_80068304)
    /* 34B0 80012CB0 048320AC */  sw         $zero, %lo(D_80068304)($at)
  .L80012CB4:
    /* 34B4 80012CB4 0800E003 */  jr         $ra
    /* 34B8 80012CB8 00000000 */   nop
endlabel func_80012C58
