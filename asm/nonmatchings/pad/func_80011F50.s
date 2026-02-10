.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011F50, 0xBC

glabel func_80011F50
    /* 2750 80011F50 7F7F063C */  lui        $a2, (0x7F7F7F7F >> 16)
    /* 2754 80011F54 7F7FC634 */  ori        $a2, $a2, (0x7F7F7F7F & 0xFFFF)
    /* 2758 80011F58 21288000 */  addu       $a1, $a0, $zero
    /* 275C 80011F5C 04008324 */  addiu      $v1, $a0, 0x4
  .L80011F60:
    /* 2760 80011F60 0000A290 */  lbu        $v0, 0x0($a1)
    /* 2764 80011F64 00000000 */  nop
    /* 2768 80011F68 0F004224 */  addiu      $v0, $v0, 0xF
    /* 276C 80011F6C BF00422C */  sltiu      $v0, $v0, 0xBF
    /* 2770 80011F70 03004014 */  bnez       $v0, .L80011F80
    /* 2774 80011F74 0100A524 */   addiu     $a1, $a1, 0x1
    /* 2778 80011F78 E3470008 */  j          .L80011F8C
    /* 277C 80011F7C 000086AC */   sw        $a2, 0x0($a0)
  .L80011F80:
    /* 2780 80011F80 2A10A300 */  slt        $v0, $a1, $v1
    /* 2784 80011F84 F6FF4014 */  bnez       $v0, .L80011F60
    /* 2788 80011F88 00000000 */   nop
  .L80011F8C:
    /* 278C 80011F8C 21280000 */  addu       $a1, $zero, $zero
    /* 2790 80011F90 FF000624 */  addiu      $a2, $zero, 0xFF
    /* 2794 80011F94 0780023C */  lui        $v0, %hi(D_80068378)
    /* 2798 80011F98 78834224 */  addiu      $v0, $v0, %lo(D_80068378)
    /* 279C 80011F9C 0000838C */  lw         $v1, 0x0($a0)
    /* 27A0 80011FA0 21204000 */  addu       $a0, $v0, $zero
    /* 27A4 80011FA4 000083AC */  sw         $v1, 0x0($a0)
  .L80011FA8:
    /* 27A8 80011FA8 00008290 */  lbu        $v0, 0x0($a0)
    /* 27AC 80011FAC 00000000 */  nop
    /* 27B0 80011FB0 30004224 */  addiu      $v0, $v0, 0x30
    /* 27B4 80011FB4 0780013C */  lui        $at, %hi(D_8006837C)
    /* 27B8 80011FB8 21082500 */  addu       $at, $at, $a1
    /* 27BC 80011FBC 7C8322A0 */  sb         $v0, %lo(D_8006837C)($at)
    /* 27C0 80011FC0 2310C200 */  subu       $v0, $a2, $v0
    /* 27C4 80011FC4 0780013C */  lui        $at, %hi(D_80068384)
    /* 27C8 80011FC8 21082500 */  addu       $at, $at, $a1
    /* 27CC 80011FCC 848322A0 */  sb         $v0, %lo(D_80068384)($at)
    /* 27D0 80011FD0 00008290 */  lbu        $v0, 0x0($a0)
    /* 27D4 80011FD4 00000000 */  nop
    /* 27D8 80011FD8 D0FF4224 */  addiu      $v0, $v0, -0x30
    /* 27DC 80011FDC 0780013C */  lui        $at, %hi(D_80068380)
    /* 27E0 80011FE0 21082500 */  addu       $at, $at, $a1
    /* 27E4 80011FE4 808322A0 */  sb         $v0, %lo(D_80068380)($at)
    /* 27E8 80011FE8 0780013C */  lui        $at, %hi(D_80068388)
    /* 27EC 80011FEC 21082500 */  addu       $at, $at, $a1
    /* 27F0 80011FF0 888322A0 */  sb         $v0, %lo(D_80068388)($at)
    /* 27F4 80011FF4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 27F8 80011FF8 0400A228 */  slti       $v0, $a1, 0x4
    /* 27FC 80011FFC EAFF4014 */  bnez       $v0, .L80011FA8
    /* 2800 80012000 01008424 */   addiu     $a0, $a0, 0x1
    /* 2804 80012004 0800E003 */  jr         $ra
    /* 2808 80012008 00000000 */   nop
endlabel func_80011F50
