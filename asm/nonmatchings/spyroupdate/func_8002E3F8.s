.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002E3F8, 0x48

glabel func_8002E3F8
    /* 1EBF8 8002E3F8 0780053C */  lui        $a1, %hi(D_8006A00C)
    /* 1EBFC 8002E3FC 0CA0A524 */  addiu      $a1, $a1, %lo(D_8006A00C)
    /* 1EC00 8002E400 0000A390 */  lbu        $v1, 0x0($a1)
    /* 1EC04 8002E404 00000000 */  nop
    /* 1EC08 8002E408 1000622C */  sltiu      $v0, $v1, 0x10
    /* 1EC0C 8002E40C 08004014 */  bnez       $v0, .L8002E430
    /* 1EC10 8002E410 00000000 */   nop
    /* 1EC14 8002E414 0680013C */  lui        $at, %hi(D_80062868)
    /* 1EC18 8002E418 21082300 */  addu       $at, $at, $v1
    /* 1EC1C 8002E41C 68282290 */  lbu        $v0, %lo(D_80062868)($at)
    /* 1EC20 8002E420 0780013C */  lui        $at, %hi(D_8006A1E8)
    /* 1EC24 8002E424 E8A122AC */  sw         $v0, %lo(D_8006A1E8)($at)
    /* 1EC28 8002E428 03110200 */  sra        $v0, $v0, 4
    /* 1EC2C 8002E42C 0000A2A0 */  sb         $v0, 0x0($a1)
  .L8002E430:
    /* 1EC30 8002E430 0780013C */  lui        $at, %hi(D_8006A1E4)
    /* 1EC34 8002E434 E4A124AC */  sw         $a0, %lo(D_8006A1E4)($at)
    /* 1EC38 8002E438 0800E003 */  jr         $ra
    /* 1EC3C 8002E43C 00000000 */   nop
endlabel func_8002E3F8
