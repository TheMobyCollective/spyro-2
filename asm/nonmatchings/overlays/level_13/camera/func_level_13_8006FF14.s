.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_13_8006FF14, 0x84

glabel func_level_13_8006FF14
    /* 133C4B0 8006FF14 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 133C4B4 8006FF18 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 133C4B8 8006FF1C D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 133C4BC 8006FF20 05000224 */  addiu      $v0, $zero, 0x5
    /* 133C4C0 8006FF24 04006210 */  beq        $v1, $v0, .Llevel_13_8006FF38
    /* 133C4C4 8006FF28 1000BFAF */   sw        $ra, 0x10($sp)
    /* 133C4C8 8006FF2C 17000224 */  addiu      $v0, $zero, 0x17
    /* 133C4CC 8006FF30 15006214 */  bne        $v1, $v0, .Llevel_13_8006FF88
    /* 133C4D0 8006FF34 00000000 */   nop
  .Llevel_13_8006FF38:
    /* 133C4D4 8006FF38 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 133C4D8 8006FF3C EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 133C4DC 8006FF40 00000000 */  nop
    /* 133C4E0 8006FF44 0E008014 */  bnez       $a0, .Llevel_13_8006FF80
    /* 133C4E4 8006FF48 00000000 */   nop
    /* 133C4E8 8006FF4C 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 133C4EC 8006FF50 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 133C4F0 8006FF54 00000000 */  nop
    /* 133C4F4 8006FF58 80100200 */  sll        $v0, $v0, 2
    /* 133C4F8 8006FF5C 0680013C */  lui        $at, %hi(D_80061468)
    /* 133C4FC 8006FF60 21082200 */  addu       $at, $at, $v0
    /* 133C500 8006FF64 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 133C504 8006FF68 00000000 */  nop
    /* 133C508 8006FF6C 06008310 */  beq        $a0, $v1, .Llevel_13_8006FF88
    /* 133C50C 8006FF70 00000000 */   nop
    /* 133C510 8006FF74 02008014 */  bnez       $a0, .Llevel_13_8006FF80
    /* 133C514 8006FF78 00000000 */   nop
    /* 133C518 8006FF7C 06000424 */  addiu      $a0, $zero, 0x6
  .Llevel_13_8006FF80:
    /* 133C51C 8006FF80 B685000C */  jal        func_800216D8
    /* 133C520 8006FF84 00000000 */   nop
  .Llevel_13_8006FF88:
    /* 133C524 8006FF88 1000BF8F */  lw         $ra, 0x10($sp)
    /* 133C528 8006FF8C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 133C52C 8006FF90 0800E003 */  jr         $ra
    /* 133C530 8006FF94 00000000 */   nop
endlabel func_level_13_8006FF14
