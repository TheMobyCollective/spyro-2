.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_23_80071318, 0x34

glabel func_level_23_80071318
    /* 19AF0B4 80071318 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 19AF0B8 8007131C 07000524 */  addiu      $a1, $zero, 0x7
    /* 19AF0BC 80071320 0680023C */  lui        $v0, %hi(D_80066FEC)
    /* 19AF0C0 80071324 EC6F428C */  lw         $v0, %lo(D_80066FEC)($v0)
    /* 19AF0C4 80071328 0680043C */  lui        $a0, %hi(D_80067674)
    /* 19AF0C8 8007132C 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 19AF0CC 80071330 1000BFAF */  sw         $ra, 0x10($sp)
    /* 19AF0D0 80071334 6746010C */  jal        func_8005199C
    /* 19AF0D4 80071338 2328A200 */   subu      $a1, $a1, $v0
    /* 19AF0D8 8007133C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 19AF0DC 80071340 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 19AF0E0 80071344 0800E003 */  jr         $ra
    /* 19AF0E4 80071348 00000000 */   nop
endlabel func_level_23_80071318
