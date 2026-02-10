.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80076EA0, 0x138

glabel func_titlescreen_and_loading_80076EA0
    /* 2CC3C 80076EA0 21280000 */  addu       $a1, $zero, $zero
    /* 2CC40 80076EA4 21380000 */  addu       $a3, $zero, $zero
    /* 2CC44 80076EA8 21200000 */  addu       $a0, $zero, $zero
    /* 2CC48 80076EAC 0780063C */  lui        $a2, %hi(D_8006AC04)
    /* 2CC4C 80076EB0 04ACC624 */  addiu      $a2, $a2, %lo(D_8006AC04)
  .Ltitlescreen_and_loading_80076EB4:
    /* 2CC50 80076EB4 0000C28C */  lw         $v0, 0x0($a2)
    /* 2CC54 80076EB8 0680013C */  lui        $at, %hi(D_800647F4)
    /* 2CC58 80076EBC 21082400 */  addu       $at, $at, $a0
    /* 2CC5C 80076EC0 F4472390 */  lbu        $v1, %lo(D_800647F4)($at)
    /* 2CC60 80076EC4 01008424 */  addiu      $a0, $a0, 0x1
    /* 2CC64 80076EC8 2128A200 */  addu       $a1, $a1, $v0
    /* 2CC68 80076ECC 40100300 */  sll        $v0, $v1, 1
    /* 2CC6C 80076ED0 21104300 */  addu       $v0, $v0, $v1
    /* 2CC70 80076ED4 C0100200 */  sll        $v0, $v0, 3
    /* 2CC74 80076ED8 21104300 */  addu       $v0, $v0, $v1
    /* 2CC78 80076EDC 80100200 */  sll        $v0, $v0, 2
    /* 2CC7C 80076EE0 2138E200 */  addu       $a3, $a3, $v0
    /* 2CC80 80076EE4 1D008228 */  slti       $v0, $a0, 0x1D
    /* 2CC84 80076EE8 F2FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80076EB4
    /* 2CC88 80076EEC 0400C624 */   addiu     $a2, $a2, 0x4
    /* 2CC8C 80076EF0 0680033C */  lui        $v1, %hi(D_8006702C)
    /* 2CC90 80076EF4 2C70638C */  lw         $v1, %lo(D_8006702C)($v1)
    /* 2CC94 80076EF8 584DE724 */  addiu      $a3, $a3, 0x4D58
    /* 2CC98 80076EFC 40100300 */  sll        $v0, $v1, 1
    /* 2CC9C 80076F00 21104300 */  addu       $v0, $v0, $v1
    /* 2CCA0 80076F04 C0100200 */  sll        $v0, $v0, 3
    /* 2CCA4 80076F08 21104300 */  addu       $v0, $v0, $v1
    /* 2CCA8 80076F0C C0100200 */  sll        $v0, $v0, 3
    /* 2CCAC 80076F10 0680033C */  lui        $v1, %hi(D_80067108)
    /* 2CCB0 80076F14 0871638C */  lw         $v1, %lo(D_80067108)($v1)
    /* 2CCB4 80076F18 2128A200 */  addu       $a1, $a1, $v0
    /* 2CCB8 80076F1C 40110300 */  sll        $v0, $v1, 5
    /* 2CCBC 80076F20 23104300 */  subu       $v0, $v0, $v1
    /* 2CCC0 80076F24 80100200 */  sll        $v0, $v0, 2
    /* 2CCC4 80076F28 21104300 */  addu       $v0, $v0, $v1
    /* 2CCC8 80076F2C 80100200 */  sll        $v0, $v0, 2
    /* 2CCCC 80076F30 0780033C */  lui        $v1, %hi(D_8006B26D)
    /* 2CCD0 80076F34 6DB26390 */  lbu        $v1, %lo(D_8006B26D)($v1)
    /* 2CCD4 80076F38 00000000 */  nop
    /* 2CCD8 80076F3C 02006010 */  beqz       $v1, .Ltitlescreen_and_loading_80076F48
    /* 2CCDC 80076F40 2128A200 */   addu      $a1, $a1, $v0
    /* 2CCE0 80076F44 F401A524 */  addiu      $a1, $a1, 0x1F4
  .Ltitlescreen_and_loading_80076F48:
    /* 2CCE4 80076F48 0780023C */  lui        $v0, %hi(D_8006B279)
    /* 2CCE8 80076F4C 79B24290 */  lbu        $v0, %lo(D_8006B279)($v0)
    /* 2CCEC 80076F50 00000000 */  nop
    /* 2CCF0 80076F54 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_80076F60
    /* 2CCF4 80076F58 00000000 */   nop
    /* 2CCF8 80076F5C F401A524 */  addiu      $a1, $a1, 0x1F4
  .Ltitlescreen_and_loading_80076F60:
    /* 2CCFC 80076F60 0780023C */  lui        $v0, %hi(D_8006B27F)
    /* 2CD00 80076F64 7FB24290 */  lbu        $v0, %lo(D_8006B27F)($v0)
    /* 2CD04 80076F68 00000000 */  nop
    /* 2CD08 80076F6C 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_80076F78
    /* 2CD0C 80076F70 00000000 */   nop
    /* 2CD10 80076F74 F401A524 */  addiu      $a1, $a1, 0x1F4
  .Ltitlescreen_and_loading_80076F78:
    /* 2CD14 80076F78 DC05E724 */  addiu      $a3, $a3, 0x5DC
    /* 2CD18 80076F7C 40100500 */  sll        $v0, $a1, 1
    /* 2CD1C 80076F80 21104500 */  addu       $v0, $v0, $a1
    /* 2CD20 80076F84 C0100200 */  sll        $v0, $v0, 3
    /* 2CD24 80076F88 21104500 */  addu       $v0, $v0, $a1
    /* 2CD28 80076F8C 80100200 */  sll        $v0, $v0, 2
    /* 2CD2C 80076F90 1A004700 */  div        $zero, $v0, $a3
    /* 2CD30 80076F94 0200E014 */  bnez       $a3, .Ltitlescreen_and_loading_80076FA0
    /* 2CD34 80076F98 00000000 */   nop
    /* 2CD38 80076F9C 0D000700 */  break      7
  .Ltitlescreen_and_loading_80076FA0:
    /* 2CD3C 80076FA0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2CD40 80076FA4 0400E114 */  bne        $a3, $at, .Ltitlescreen_and_loading_80076FB8
    /* 2CD44 80076FA8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2CD48 80076FAC 02004114 */  bne        $v0, $at, .Ltitlescreen_and_loading_80076FB8
    /* 2CD4C 80076FB0 00000000 */   nop
    /* 2CD50 80076FB4 0D000600 */  break      6
  .Ltitlescreen_and_loading_80076FB8:
    /* 2CD54 80076FB8 12180000 */  mflo       $v1
    /* 2CD58 80076FBC 0400A010 */  beqz       $a1, .Ltitlescreen_and_loading_80076FD0
    /* 2CD5C 80076FC0 00000000 */   nop
    /* 2CD60 80076FC4 02006014 */  bnez       $v1, .Ltitlescreen_and_loading_80076FD0
    /* 2CD64 80076FC8 00000000 */   nop
    /* 2CD68 80076FCC 01000324 */  addiu      $v1, $zero, 0x1
  .Ltitlescreen_and_loading_80076FD0:
    /* 2CD6C 80076FD0 0800E003 */  jr         $ra
    /* 2CD70 80076FD4 21106000 */   addu      $v0, $v1, $zero
endlabel func_titlescreen_and_loading_80076EA0
