.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001379C, 0x74

glabel func_8001379C
    /* 3F9C 8001379C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3FA0 800137A0 0780053C */  lui        $a1, %hi(D_800682E8)
    /* 3FA4 800137A4 E882A524 */  addiu      $a1, $a1, %lo(D_800682E8)
    /* 3FA8 800137A8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3FAC 800137AC 0000A28C */  lw         $v0, 0x0($a1)
    /* 3FB0 800137B0 00000000 */  nop
    /* 3FB4 800137B4 12004010 */  beqz       $v0, .L80013800
    /* 3FB8 800137B8 FF008330 */   andi      $v1, $a0, 0xFF
    /* 3FBC 800137BC 02000224 */  addiu      $v0, $zero, 0x2
    /* 3FC0 800137C0 04006214 */  bne        $v1, $v0, .L800137D4
    /* 3FC4 800137C4 02000424 */   addiu     $a0, $zero, 0x2
    /* 3FC8 800137C8 0000A0AC */  sw         $zero, 0x0($a1)
    /* 3FCC 800137CC 004E0008 */  j          .L80013800
    /* 3FD0 800137D0 00000000 */   nop
  .L800137D4:
    /* 3FD4 800137D4 F8FFA524 */  addiu      $a1, $a1, -0x8
    /* 3FD8 800137D8 1662010C */  jal        func_80058858
    /* 3FDC 800137DC 21300000 */   addu      $a2, $zero, $zero
    /* 3FE0 800137E0 0780043C */  lui        $a0, %hi(D_800682DC)
    /* 3FE4 800137E4 DC82848C */  lw         $a0, %lo(D_800682DC)($a0)
    /* 3FE8 800137E8 0780053C */  lui        $a1, %hi(D_800682E4)
    /* 3FEC 800137EC E482A58C */  lw         $a1, %lo(D_800682E4)($a1)
    /* 3FF0 800137F0 0780013C */  lui        $at, %hi(D_800682EC)
    /* 3FF4 800137F4 EC8220AC */  sw         $zero, %lo(D_800682EC)($at)
    /* 3FF8 800137F8 4260010C */  jal        func_80058108
    /* 3FFC 800137FC 80000624 */   addiu     $a2, $zero, 0x80
  .L80013800:
    /* 4000 80013800 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4004 80013804 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4008 80013808 0800E003 */  jr         $ra
    /* 400C 8001380C 00000000 */   nop
endlabel func_8001379C
