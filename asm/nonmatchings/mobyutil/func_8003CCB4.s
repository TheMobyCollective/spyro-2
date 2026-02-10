.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003CCB4, 0x184

glabel func_8003CCB4
    /* 2D4B4 8003CCB4 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 2D4B8 8003CCB8 21308000 */  addu       $a2, $a0, $zero
    /* 2D4BC 8003CCBC 21200000 */  addu       $a0, $zero, $zero
    /* 2D4C0 8003CCC0 80100600 */  sll        $v0, $a2, 2
    /* 2D4C4 8003CCC4 0680013C */  lui        $at, %hi(D_800647F4)
    /* 2D4C8 8003CCC8 21082600 */  addu       $at, $at, $a2
    /* 2D4CC 8003CCCC F4472390 */  lbu        $v1, %lo(D_800647F4)($at)
    /* 2D4D0 8003CCD0 0780013C */  lui        $at, %hi(D_8006AC04)
    /* 2D4D4 8003CCD4 21082200 */  addu       $at, $at, $v0
    /* 2D4D8 8003CCD8 04AC258C */  lw         $a1, %lo(D_8006AC04)($at)
    /* 2D4DC 8003CCDC 40100300 */  sll        $v0, $v1, 1
    /* 2D4E0 8003CCE0 21104300 */  addu       $v0, $v0, $v1
    /* 2D4E4 8003CCE4 C0100200 */  sll        $v0, $v0, 3
    /* 2D4E8 8003CCE8 21104300 */  addu       $v0, $v0, $v1
    /* 2D4EC 8003CCEC 0680013C */  lui        $at, %hi(D_80064834)
    /* 2D4F0 8003CCF0 21082600 */  addu       $at, $at, $a2
    /* 2D4F4 8003CCF4 34482390 */  lbu        $v1, %lo(D_80064834)($at)
    /* 2D4F8 8003CCF8 00000000 */  nop
    /* 2D4FC 8003CCFC 0E006018 */  blez       $v1, .L8003CD38
    /* 2D500 8003CD00 80400200 */   sll       $t0, $v0, 2
    /* 2D504 8003CD04 0780013C */  lui        $at, %hi(D_80069FD0)
    /* 2D508 8003CD08 21082600 */  addu       $at, $at, $a2
    /* 2D50C 8003CD0C D09F2790 */  lbu        $a3, %lo(D_80069FD0)($at)
    /* 2D510 8003CD10 00000000 */  nop
    /* 2D514 8003CD14 07108700 */  srav       $v0, $a3, $a0
  .L8003CD18:
    /* 2D518 8003CD18 01004230 */  andi       $v0, $v0, 0x1
    /* 2D51C 8003CD1C 02004010 */  beqz       $v0, .L8003CD28
    /* 2D520 8003CD20 00000000 */   nop
    /* 2D524 8003CD24 C800A524 */  addiu      $a1, $a1, 0xC8
  .L8003CD28:
    /* 2D528 8003CD28 01008424 */  addiu      $a0, $a0, 0x1
    /* 2D52C 8003CD2C 2A108300 */  slt        $v0, $a0, $v1
    /* 2D530 8003CD30 F9FF4014 */  bnez       $v0, .L8003CD18
    /* 2D534 8003CD34 07108700 */   srav      $v0, $a3, $a0
  .L8003CD38:
    /* 2D538 8003CD38 0680013C */  lui        $at, %hi(D_80064994)
    /* 2D53C 8003CD3C 21082600 */  addu       $at, $at, $a2
    /* 2D540 8003CD40 94492490 */  lbu        $a0, %lo(D_80064994)($at)
    /* 2D544 8003CD44 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 2D548 8003CD48 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 2D54C 8003CD4C 19008200 */  multu      $a0, $v0
    /* 2D550 8003CD50 0680013C */  lui        $at, %hi(D_80064834)
    /* 2D554 8003CD54 21082600 */  addu       $at, $at, $a2
    /* 2D558 8003CD58 34482390 */  lbu        $v1, %lo(D_80064834)($at)
    /* 2D55C 8003CD5C 00000000 */  nop
    /* 2D560 8003CD60 40100300 */  sll        $v0, $v1, 1
    /* 2D564 8003CD64 21104300 */  addu       $v0, $v0, $v1
    /* 2D568 8003CD68 C0100200 */  sll        $v0, $v0, 3
    /* 2D56C 8003CD6C 21104300 */  addu       $v0, $v0, $v1
    /* 2D570 8003CD70 C0100200 */  sll        $v0, $v0, 3
    /* 2D574 8003CD74 21400201 */  addu       $t0, $t0, $v0
    /* 2D578 8003CD78 10480000 */  mfhi       $t1
    /* 2D57C 8003CD7C C2180900 */  srl        $v1, $t1, 3
    /* 2D580 8003CD80 80100300 */  sll        $v0, $v1, 2
    /* 2D584 8003CD84 21104300 */  addu       $v0, $v0, $v1
    /* 2D588 8003CD88 40100200 */  sll        $v0, $v0, 1
    /* 2D58C 8003CD8C 23208200 */  subu       $a0, $a0, $v0
    /* 2D590 8003CD90 FF008430 */  andi       $a0, $a0, 0xFF
    /* 2D594 8003CD94 FFFF8224 */  addiu      $v0, $a0, -0x1
    /* 2D598 8003CD98 0400422C */  sltiu      $v0, $v0, 0x4
    /* 2D59C 8003CD9C 03004010 */  beqz       $v0, .L8003CDAC
    /* 2D5A0 8003CDA0 1500C228 */   slti      $v0, $a2, 0x15
    /* 2D5A4 8003CDA4 04004014 */  bnez       $v0, .L8003CDB8
    /* 2D5A8 8003CDA8 00000000 */   nop
  .L8003CDAC:
    /* 2D5AC 8003CDAC 06000224 */  addiu      $v0, $zero, 0x6
    /* 2D5B0 8003CDB0 0A008214 */  bne        $a0, $v0, .L8003CDDC
    /* 2D5B4 8003CDB4 40100500 */   sll       $v0, $a1, 1
  .L8003CDB8:
    /* 2D5B8 8003CDB8 0780013C */  lui        $at, %hi(D_8006B264)
    /* 2D5BC 8003CDBC 21082600 */  addu       $at, $at, $a2
    /* 2D5C0 8003CDC0 64B22290 */  lbu        $v0, %lo(D_8006B264)($at)
    /* 2D5C4 8003CDC4 00000000 */  nop
    /* 2D5C8 8003CDC8 02004010 */  beqz       $v0, .L8003CDD4
    /* 2D5CC 8003CDCC 00000000 */   nop
    /* 2D5D0 8003CDD0 F401A524 */  addiu      $a1, $a1, 0x1F4
  .L8003CDD4:
    /* 2D5D4 8003CDD4 F4010825 */  addiu      $t0, $t0, 0x1F4
    /* 2D5D8 8003CDD8 40100500 */  sll        $v0, $a1, 1
  .L8003CDDC:
    /* 2D5DC 8003CDDC 21104500 */  addu       $v0, $v0, $a1
    /* 2D5E0 8003CDE0 C0100200 */  sll        $v0, $v0, 3
    /* 2D5E4 8003CDE4 21104500 */  addu       $v0, $v0, $a1
    /* 2D5E8 8003CDE8 80100200 */  sll        $v0, $v0, 2
    /* 2D5EC 8003CDEC 1A004800 */  div        $zero, $v0, $t0
    /* 2D5F0 8003CDF0 02000015 */  bnez       $t0, .L8003CDFC
    /* 2D5F4 8003CDF4 00000000 */   nop
    /* 2D5F8 8003CDF8 0D000700 */  break      7
  .L8003CDFC:
    /* 2D5FC 8003CDFC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2D600 8003CE00 04000115 */  bne        $t0, $at, .L8003CE14
    /* 2D604 8003CE04 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2D608 8003CE08 02004114 */  bne        $v0, $at, .L8003CE14
    /* 2D60C 8003CE0C 00000000 */   nop
    /* 2D610 8003CE10 0D000600 */  break      6
  .L8003CE14:
    /* 2D614 8003CE14 12180000 */  mflo       $v1
    /* 2D618 8003CE18 0400A010 */  beqz       $a1, .L8003CE2C
    /* 2D61C 8003CE1C 21106000 */   addu      $v0, $v1, $zero
    /* 2D620 8003CE20 02006014 */  bnez       $v1, .L8003CE2C
    /* 2D624 8003CE24 01000324 */   addiu     $v1, $zero, 0x1
    /* 2D628 8003CE28 21106000 */  addu       $v0, $v1, $zero
  .L8003CE2C:
    /* 2D62C 8003CE2C 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 2D630 8003CE30 0800E003 */  jr         $ra
    /* 2D634 8003CE34 00000000 */   nop
endlabel func_8003CCB4
