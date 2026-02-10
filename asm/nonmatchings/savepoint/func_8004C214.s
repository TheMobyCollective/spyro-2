.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C214, 0x108

glabel func_8004C214
    /* 3CA14 8004C214 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 3CA18 8004C218 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
    /* 3CA1C 8004C21C FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 3CA20 8004C220 24488200 */  and        $t1, $a0, $v0
    /* 3CA24 8004C224 01000C24 */  addiu      $t4, $zero, 0x1
    /* 3CA28 8004C228 4002C88C */  lw         $t0, 0x240($a2)
    /* 3CA2C 8004C22C 00000000 */  nop
    /* 3CA30 8004C230 0E000019 */  blez       $t0, .L8004C26C
    /* 3CA34 8004C234 21180000 */   addu      $v1, $zero, $zero
    /* 3CA38 8004C238 FF000B3C */  lui        $t3, (0xFFFFFF >> 16)
    /* 3CA3C 8004C23C FFFF6B35 */  ori        $t3, $t3, (0xFFFFFF & 0xFFFF)
    /* 3CA40 8004C240 21500001 */  addu       $t2, $t0, $zero
    /* 3CA44 8004C244 2138C000 */  addu       $a3, $a2, $zero
  .L8004C248:
    /* 3CA48 8004C248 4000E28C */  lw         $v0, 0x40($a3)
    /* 3CA4C 8004C24C 00000000 */  nop
    /* 3CA50 8004C250 24104B00 */  and        $v0, $v0, $t3
    /* 3CA54 8004C254 17002211 */  beq        $t1, $v0, .L8004C2B4
    /* 3CA58 8004C258 00000000 */   nop
    /* 3CA5C 8004C25C 01006324 */  addiu      $v1, $v1, 0x1
    /* 3CA60 8004C260 2A106A00 */  slt        $v0, $v1, $t2
    /* 3CA64 8004C264 F8FF4014 */  bnez       $v0, .L8004C248
    /* 3CA68 8004C268 0800E724 */   addiu     $a3, $a3, 0x8
  .L8004C26C:
    /* 3CA6C 8004C26C 03008011 */  beqz       $t4, .L8004C27C
    /* 3CA70 8004C270 40000229 */   slti      $v0, $t0, 0x40
    /* 3CA74 8004C274 26004010 */  beqz       $v0, .L8004C310
    /* 3CA78 8004C278 00000000 */   nop
  .L8004C27C:
    /* 3CA7C 8004C27C 00160500 */  sll        $v0, $a1, 24
    /* 3CA80 8004C280 25482201 */  or         $t1, $t1, $v0
    /* 3CA84 8004C284 C0100800 */  sll        $v0, $t0, 3
    /* 3CA88 8004C288 2118C200 */  addu       $v1, $a2, $v0
    /* 3CA8C 8004C28C 02000224 */  addiu      $v0, $zero, 0x2
    /* 3CA90 8004C290 1300A210 */  beq        $a1, $v0, .L8004C2E0
    /* 3CA94 8004C294 400069AC */   sw        $t1, 0x40($v1)
    /* 3CA98 8004C298 0300A228 */  slti       $v0, $a1, 0x3
    /* 3CA9C 8004C29C 08004010 */  beqz       $v0, .L8004C2C0
    /* 3CAA0 8004C2A0 01000224 */   addiu     $v0, $zero, 0x1
    /* 3CAA4 8004C2A4 0B00A210 */  beq        $a1, $v0, .L8004C2D4
    /* 3CAA8 8004C2A8 00000000 */   nop
    /* 3CAAC 8004C2AC BE300108 */  j          .L8004C2F8
    /* 3CAB0 8004C2B0 00000000 */   nop
  .L8004C2B4:
    /* 3CAB4 8004C2B4 21600000 */  addu       $t4, $zero, $zero
    /* 3CAB8 8004C2B8 9B300108 */  j          .L8004C26C
    /* 3CABC 8004C2BC 21406000 */   addu      $t0, $v1, $zero
  .L8004C2C0:
    /* 3CAC0 8004C2C0 04000224 */  addiu      $v0, $zero, 0x4
    /* 3CAC4 8004C2C4 0900A210 */  beq        $a1, $v0, .L8004C2EC
    /* 3CAC8 8004C2C8 00000000 */   nop
    /* 3CACC 8004C2CC BE300108 */  j          .L8004C2F8
    /* 3CAD0 8004C2D0 00000000 */   nop
  .L8004C2D4:
    /* 3CAD4 8004C2D4 00008290 */  lbu        $v0, 0x0($a0)
    /* 3CAD8 8004C2D8 BE300108 */  j          .L8004C2F8
    /* 3CADC 8004C2DC 440062AC */   sw        $v0, 0x44($v1)
  .L8004C2E0:
    /* 3CAE0 8004C2E0 00008284 */  lh         $v0, 0x0($a0)
    /* 3CAE4 8004C2E4 BE300108 */  j          .L8004C2F8
    /* 3CAE8 8004C2E8 440062AC */   sw        $v0, 0x44($v1)
  .L8004C2EC:
    /* 3CAEC 8004C2EC 0000828C */  lw         $v0, 0x0($a0)
    /* 3CAF0 8004C2F0 00000000 */  nop
    /* 3CAF4 8004C2F4 440062AC */  sw         $v0, 0x44($v1)
  .L8004C2F8:
    /* 3CAF8 8004C2F8 05008011 */  beqz       $t4, .L8004C310
    /* 3CAFC 8004C2FC 00000000 */   nop
    /* 3CB00 8004C300 4002C28C */  lw         $v0, 0x240($a2)
    /* 3CB04 8004C304 00000000 */  nop
    /* 3CB08 8004C308 01004224 */  addiu      $v0, $v0, 0x1
    /* 3CB0C 8004C30C 4002C2AC */  sw         $v0, 0x240($a2)
  .L8004C310:
    /* 3CB10 8004C310 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 3CB14 8004C314 0800E003 */  jr         $ra
    /* 3CB18 8004C318 00000000 */   nop
endlabel func_8004C214
