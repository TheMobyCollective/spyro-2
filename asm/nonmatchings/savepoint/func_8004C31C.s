.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C31C, 0xB8

glabel func_8004C31C
    /* 3CB1C 8004C31C F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 3CB20 8004C320 4002828C */  lw         $v0, 0x240($a0)
    /* 3CB24 8004C324 00000000 */  nop
    /* 3CB28 8004C328 27004018 */  blez       $v0, .L8004C3C8
    /* 3CB2C 8004C32C 21380000 */   addu      $a3, $zero, $zero
    /* 3CB30 8004C330 FF00083C */  lui        $t0, (0xFFFFFF >> 16)
    /* 3CB34 8004C334 FFFF0835 */  ori        $t0, $t0, (0xFFFFFF & 0xFFFF)
    /* 3CB38 8004C338 00800C3C */  lui        $t4, %hi(0x80000000)
    /* 3CB3C 8004C33C 02000B24 */  addiu      $t3, $zero, 0x2
    /* 3CB40 8004C340 01000A24 */  addiu      $t2, $zero, 0x1
    /* 3CB44 8004C344 04000924 */  addiu      $t1, $zero, 0x4
    /* 3CB48 8004C348 21308000 */  addu       $a2, $a0, $zero
  .L8004C34C:
    /* 3CB4C 8004C34C 4000C28C */  lw         $v0, 0x40($a2)
    /* 3CB50 8004C350 00000000 */  nop
    /* 3CB54 8004C354 031E0200 */  sra        $v1, $v0, 24
    /* 3CB58 8004C358 24104800 */  and        $v0, $v0, $t0
    /* 3CB5C 8004C35C 0F006B10 */  beq        $v1, $t3, .L8004C39C
    /* 3CB60 8004C360 25284C00 */   or        $a1, $v0, $t4
    /* 3CB64 8004C364 03006228 */  slti       $v0, $v1, 0x3
    /* 3CB68 8004C368 05004010 */  beqz       $v0, .L8004C380
    /* 3CB6C 8004C36C 00000000 */   nop
    /* 3CB70 8004C370 07006A10 */  beq        $v1, $t2, .L8004C390
    /* 3CB74 8004C374 00000000 */   nop
    /* 3CB78 8004C378 ED300108 */  j          .L8004C3B4
    /* 3CB7C 8004C37C 00000000 */   nop
  .L8004C380:
    /* 3CB80 8004C380 09006910 */  beq        $v1, $t1, .L8004C3A8
    /* 3CB84 8004C384 00000000 */   nop
    /* 3CB88 8004C388 ED300108 */  j          .L8004C3B4
    /* 3CB8C 8004C38C 00000000 */   nop
  .L8004C390:
    /* 3CB90 8004C390 4400C28C */  lw         $v0, 0x44($a2)
    /* 3CB94 8004C394 ED300108 */  j          .L8004C3B4
    /* 3CB98 8004C398 0000A2A0 */   sb        $v0, %lo(0x80000000)($a1)
  .L8004C39C:
    /* 3CB9C 8004C39C 4400C28C */  lw         $v0, 0x44($a2)
    /* 3CBA0 8004C3A0 ED300108 */  j          .L8004C3B4
    /* 3CBA4 8004C3A4 0000A2A4 */   sh        $v0, %lo(0x80000000)($a1)
  .L8004C3A8:
    /* 3CBA8 8004C3A8 4400C28C */  lw         $v0, 0x44($a2)
    /* 3CBAC 8004C3AC 00000000 */  nop
    /* 3CBB0 8004C3B0 0000A2AC */  sw         $v0, %lo(0x80000000)($a1)
  .L8004C3B4:
    /* 3CBB4 8004C3B4 4002828C */  lw         $v0, 0x240($a0)
    /* 3CBB8 8004C3B8 0100E724 */  addiu      $a3, $a3, 0x1
    /* 3CBBC 8004C3BC 2A10E200 */  slt        $v0, $a3, $v0
    /* 3CBC0 8004C3C0 E2FF4014 */  bnez       $v0, .L8004C34C
    /* 3CBC4 8004C3C4 0800C624 */   addiu     $a2, $a2, 0x8
  .L8004C3C8:
    /* 3CBC8 8004C3C8 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 3CBCC 8004C3CC 0800E003 */  jr         $ra
    /* 3CBD0 8004C3D0 00000000 */   nop
endlabel func_8004C31C
