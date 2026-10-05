.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800543A8, 0x34

glabel func_800543A8
    /* 44BA8 800543A8 0F000324 */  addiu      $v1, $zero, 0xF
    /* 44BAC 800543AC 0780023C */  lui        $v0, %hi(D_8006A958)
    /* 44BB0 800543B0 58A94224 */  addiu      $v0, $v0, %lo(D_8006A958)
  .L800543B4:
    /* 44BB4 800543B4 000040AC */  sw         $zero, 0x0($v0)
    /* 44BB8 800543B8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 44BBC 800543BC FDFF6104 */  bgez       $v1, .L800543B4
    /* 44BC0 800543C0 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* 44BC4 800543C4 0680013C */  lui        $at, %hi(D_80066F98)
    /* 44BC8 800543C8 986F20AC */  sw         $zero, %lo(D_80066F98)($at)
    /* 44BCC 800543CC 0780013C */  lui        $at, %hi(D_800698BD)
    /* 44BD0 800543D0 BD9820A0 */  sb         $zero, %lo(D_800698BD)($at)
    /* 44BD4 800543D4 0800E003 */  jr         $ra
    /* 44BD8 800543D8 00000000 */   nop
endlabel func_800543A8
