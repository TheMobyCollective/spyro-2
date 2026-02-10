.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B078, 0x40

glabel func_8002B078
    /* 1B878 8002B078 3F008330 */  andi       $v1, $a0, 0x3F
    /* 1B87C 8002B07C 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 1B880 8002B080 0A006210 */  beq        $v1, $v0, .L8002B0AC
    /* 1B884 8002B084 80180300 */   sll       $v1, $v1, 2
    /* 1B888 8002B088 0680023C */  lui        $v0, %hi(D_800673E8)
    /* 1B88C 8002B08C E873428C */  lw         $v0, %lo(D_800673E8)($v0)
    /* 1B890 8002B090 00000000 */  nop
    /* 1B894 8002B094 21186200 */  addu       $v1, $v1, $v0
    /* 1B898 8002B098 0000628C */  lw         $v0, 0x0($v1)
    /* 1B89C 8002B09C 00000000 */  nop
    /* 1B8A0 8002B0A0 00004290 */  lbu        $v0, 0x0($v0)
    /* 1B8A4 8002B0A4 2CAC0008 */  j          .L8002B0B0
    /* 1B8A8 8002B0A8 00000000 */   nop
  .L8002B0AC:
    /* 1B8AC 8002B0AC FFFF0224 */  addiu      $v0, $zero, -0x1
  .L8002B0B0:
    /* 1B8B0 8002B0B0 0800E003 */  jr         $ra
    /* 1B8B4 8002B0B4 00000000 */   nop
endlabel func_8002B078
