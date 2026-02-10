.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800153F8, 0x38

glabel func_800153F8
    /* 5BF8 800153F8 0680023C */  lui        $v0, %hi(D_80066F90)
    /* 5BFC 800153FC 906F428C */  lw         $v0, %lo(D_80066F90)($v0)
    /* 5C00 80015400 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C04 80015404 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5C08 80015408 46004228 */  slti       $v0, $v0, 0x46
    /* 5C0C 8001540C 02004014 */  bnez       $v0, .L80015418
    /* 5C10 80015410 0D000424 */   addiu     $a0, $zero, 0xD
    /* 5C14 80015414 1D000424 */  addiu      $a0, $zero, 0x1D
  .L80015418:
    /* 5C18 80015418 6855000C */  jal        func_800155A0
    /* 5C1C 8001541C 00000000 */   nop
    /* 5C20 80015420 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5C24 80015424 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5C28 80015428 0800E003 */  jr         $ra
    /* 5C2C 8001542C 00000000 */   nop
endlabel func_800153F8
