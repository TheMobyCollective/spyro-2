.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BD70, 0x4C

glabel func_8002BD70
    /* 1C570 8002BD70 0780073C */  lui        $a3, %hi(D_8006A0A4)
    /* 1C574 8002BD74 A4A0E724 */  addiu      $a3, $a3, %lo(D_8006A0A4)
    /* 1C578 8002BD78 0000E68C */  lw         $a2, 0x0($a3)
    /* 1C57C 8002BD7C 0400E38C */  lw         $v1, 0x4($a3)
    /* 1C580 8002BD80 00000000 */  nop
    /* 1C584 8002BD84 2A106600 */  slt        $v0, $v1, $a2
    /* 1C588 8002BD88 04004010 */  beqz       $v0, .L8002BD9C
    /* 1C58C 8002BD8C 21106400 */   addu      $v0, $v1, $a0
    /* 1C590 8002BD90 0400E2AC */  sw         $v0, 0x4($a3)
    /* 1C594 8002BD94 6AAF0008 */  j          .L8002BDA8
    /* 1C598 8002BD98 2A10C200 */   slt       $v0, $a2, $v0
  .L8002BD9C:
    /* 1C59C 8002BD9C 23106500 */  subu       $v0, $v1, $a1
    /* 1C5A0 8002BDA0 0400E2AC */  sw         $v0, 0x4($a3)
    /* 1C5A4 8002BDA4 2A104600 */  slt        $v0, $v0, $a2
  .L8002BDA8:
    /* 1C5A8 8002BDA8 02004010 */  beqz       $v0, .L8002BDB4
    /* 1C5AC 8002BDAC 00000000 */   nop
    /* 1C5B0 8002BDB0 0400E6AC */  sw         $a2, 0x4($a3)
  .L8002BDB4:
    /* 1C5B4 8002BDB4 0800E003 */  jr         $ra
    /* 1C5B8 8002BDB8 00000000 */   nop
endlabel func_8002BD70
