.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001AC40, 0x2D8

glabel func_8001AC40
    /* B440 8001AC40 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B444 8001AC44 0C000224 */  addiu      $v0, $zero, 0xC
    /* B448 8001AC48 1000B0AF */  sw         $s0, 0x10($sp)
    /* B44C 8001AC4C 0780103C */  lui        $s0, %hi(D_800698EC)
    /* B450 8001AC50 EC981026 */  addiu      $s0, $s0, %lo(D_800698EC)
    /* B454 8001AC54 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* B458 8001AC58 1800B2AF */  sw         $s2, 0x18($sp)
    /* B45C 8001AC5C 1400B1AF */  sw         $s1, 0x14($sp)
    /* B460 8001AC60 0780013C */  lui        $at, %hi(D_800681C8)
    /* B464 8001AC64 C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* B468 8001AC68 000000AE */  sw         $zero, 0x0($s0)
    /* B46C 8001AC6C 0780013C */  lui        $at, %hi(D_800698F0)
    /* B470 8001AC70 F09824AC */  sw         $a0, %lo(D_800698F0)($at)
    /* B474 8001AC74 A1008010 */  beqz       $a0, .L8001AEFC
    /* B478 8001AC78 21280000 */   addu      $a1, $zero, $zero
    /* B47C 8001AC7C 0680043C */  lui        $a0, %hi(D_80067414)
    /* B480 8001AC80 14748424 */  addiu      $a0, $a0, %lo(D_80067414)
    /* B484 8001AC84 F26C000C */  jal        func_8001B3C8
    /* B488 8001AC88 48020624 */   addiu     $a2, $zero, 0x248
    /* B48C 8001AC8C 0680043C */  lui        $a0, %hi(D_8006718C)
    /* B490 8001AC90 8C718424 */  addiu      $a0, $a0, %lo(D_8006718C)
    /* B494 8001AC94 21280000 */  addu       $a1, $zero, $zero
    /* B498 8001AC98 F26C000C */  jal        func_8001B3C8
    /* B49C 8001AC9C 48020624 */   addiu     $a2, $zero, 0x248
    /* B4A0 8001ACA0 9BC2000C */  jal        func_80030A6C
    /* B4A4 8001ACA4 00000000 */   nop
    /* B4A8 8001ACA8 0780043C */  lui        $a0, %hi(D_8006B294)
    /* B4AC 8001ACAC 94B2848C */  lw         $a0, %lo(D_8006B294)($a0)
    /* B4B0 8001ACB0 CD71000C */  jal        func_8001C734
    /* B4B4 8001ACB4 00000000 */   nop
    /* B4B8 8001ACB8 0680023C */  lui        $v0, %hi(D_80066F54)
    /* B4BC 8001ACBC 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* B4C0 8001ACC0 0680013C */  lui        $at, %hi(D_80060140)
    /* B4C4 8001ACC4 21082200 */  addu       $at, $at, $v0
    /* B4C8 8001ACC8 40012290 */  lbu        $v0, %lo(D_80060140)($at)
    /* B4CC 8001ACCC 0680043C */  lui        $a0, %hi(D_80066D44)
    /* B4D0 8001ACD0 446D848C */  lw         $a0, %lo(D_80066D44)($a0)
    /* B4D4 8001ACD4 C0100200 */  sll        $v0, $v0, 3
    /* B4D8 8001ACD8 0680013C */  lui        $at, %hi(D_80064DE4)
    /* B4DC 8001ACDC 21082200 */  addu       $at, $at, $v0
    /* B4E0 8001ACE0 E44D238C */  lw         $v1, %lo(D_80064DE4)($at)
    /* B4E4 8001ACE4 0680013C */  lui        $at, %hi(D_80064DEA)
    /* B4E8 8001ACE8 21082200 */  addu       $at, $at, $v0
    /* B4EC 8001ACEC EA4D2694 */  lhu        $a2, %lo(D_80064DEA)($at)
    /* B4F0 8001ACF0 0680013C */  lui        $at, %hi(D_80064DE8)
    /* B4F4 8001ACF4 21082200 */  addu       $at, $at, $v0
    /* B4F8 8001ACF8 E84D2594 */  lhu        $a1, %lo(D_80064DE8)($at)
    /* B4FC 8001ACFC 21208300 */  addu       $a0, $a0, $v1
    /* B500 8001AD00 074B000C */  jal        func_80012C1C
    /* B504 8001AD04 21288500 */   addu      $a1, $a0, $a1
    /* B508 8001AD08 0680113C */  lui        $s1, %hi(D_80066F14)
    /* B50C 8001AD0C 146F318E */  lw         $s1, %lo(D_80066F14)($s1)
    /* B510 8001AD10 00000000 */  nop
    /* B514 8001AD14 48002392 */  lbu        $v1, 0x48($s1)
    /* B518 8001AD18 FF000224 */  addiu      $v0, $zero, 0xFF
    /* B51C 8001AD1C 14006210 */  beq        $v1, $v0, .L8001AD70
    /* B520 8001AD20 3B020724 */   addiu     $a3, $zero, 0x23B
    /* B524 8001AD24 34000626 */  addiu      $a2, $s0, 0x34
    /* B528 8001AD28 FF000524 */  addiu      $a1, $zero, 0xFF
    /* B52C 8001AD2C 48002426 */  addiu      $a0, $s1, 0x48
  .L8001AD30:
    /* B530 8001AD30 EEFF8284 */  lh         $v0, -0x12($a0)
    /* B534 8001AD34 00000000 */  nop
    /* B538 8001AD38 08004714 */  bne        $v0, $a3, .L8001AD5C
    /* B53C 8001AD3C 00000000 */   nop
    /* B540 8001AD40 0000228E */  lw         $v0, 0x0($s1)
    /* B544 8001AD44 00000000 */  nop
    /* B548 8001AD48 0800438C */  lw         $v1, 0x8($v0)
    /* B54C 8001AD4C 0000C28C */  lw         $v0, 0x0($a2)
    /* B550 8001AD50 00000000 */  nop
    /* B554 8001AD54 06006210 */  beq        $v1, $v0, .L8001AD70
    /* B558 8001AD58 00000000 */   nop
  .L8001AD5C:
    /* B55C 8001AD5C 58008424 */  addiu      $a0, $a0, 0x58
    /* B560 8001AD60 00008290 */  lbu        $v0, 0x0($a0)
    /* B564 8001AD64 00000000 */  nop
    /* B568 8001AD68 F1FF4514 */  bne        $v0, $a1, .L8001AD30
    /* B56C 8001AD6C 58003126 */   addiu     $s1, $s1, 0x58
  .L8001AD70:
    /* B570 8001AD70 0780043C */  lui        $a0, %hi(D_80069FF0)
    /* B574 8001AD74 F09F8424 */  addiu      $a0, $a0, %lo(D_80069FF0)
    /* B578 8001AD78 6C6F000C */  jal        func_8001BDB0
    /* B57C 8001AD7C 0C002526 */   addiu     $a1, $s1, 0xC
    /* B580 8001AD80 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* B584 8001AD84 F89F428C */  lw         $v0, %lo(D_80069FF8)($v0)
    /* B588 8001AD88 00000000 */  nop
    /* B58C 8001AD8C F4064224 */  addiu      $v0, $v0, 0x6F4
    /* B590 8001AD90 0780013C */  lui        $at, %hi(D_80069FF8)
    /* B594 8001AD94 F89F22AC */  sw         $v0, %lo(D_80069FF8)($at)
    /* B598 8001AD98 46002292 */  lbu        $v0, 0x46($s1)
    /* B59C 8001AD9C 00000000 */  nop
    /* B5A0 8001ADA0 00110200 */  sll        $v0, $v0, 4
    /* B5A4 8001ADA4 0780013C */  lui        $at, %hi(D_8006A05C)
    /* B5A8 8001ADA8 5CA022AC */  sw         $v0, %lo(D_8006A05C)($at)
    /* B5AC 8001ADAC 46002392 */  lbu        $v1, 0x46($s1)
    /* B5B0 8001ADB0 04000224 */  addiu      $v0, $zero, 0x4
    /* B5B4 8001ADB4 0780013C */  lui        $at, %hi(D_8006A00E)
    /* B5B8 8001ADB8 0EA022A0 */  sb         $v0, %lo(D_8006A00E)($at)
    /* B5BC 8001ADBC 0780013C */  lui        $at, %hi(D_80069FFE)
    /* B5C0 8001ADC0 FE9F23A0 */  sb         $v1, %lo(D_80069FFE)($at)
    /* B5C4 8001ADC4 76D4000C */  jal        func_800351D8
    /* B5C8 8001ADC8 10000424 */   addiu     $a0, $zero, 0x10
    /* B5CC 8001ADCC 0680043C */  lui        $a0, %hi(D_80061718)
    /* B5D0 8001ADD0 18178424 */  addiu      $a0, $a0, %lo(D_80061718)
    /* B5D4 8001ADD4 B978000C */  jal        func_8001E2E4
    /* B5D8 8001ADD8 21900000 */   addu      $s2, $zero, $zero
    /* B5DC 8001ADDC 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* B5E0 8001ADE0 F89F428C */  lw         $v0, %lo(D_80069FF8)($v0)
    /* B5E4 8001ADE4 00000000 */  nop
    /* B5E8 8001ADE8 00FC4224 */  addiu      $v0, $v0, -0x400
    /* B5EC 8001ADEC 0780013C */  lui        $at, %hi(D_80069FF8)
    /* B5F0 8001ADF0 F89F22AC */  sw         $v0, %lo(D_80069FF8)($at)
    /* B5F4 8001ADF4 46002292 */  lbu        $v0, 0x46($s1)
    /* B5F8 8001ADF8 00000000 */  nop
    /* B5FC 8001ADFC 40100200 */  sll        $v0, $v0, 1
    /* B600 8001AE00 0680013C */  lui        $at, %hi(D_80061C58)
    /* B604 8001AE04 21082200 */  addu       $at, $at, $v0
    /* B608 8001AE08 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* B60C 8001AE0C 0C00228E */  lw         $v0, 0xC($s1)
    /* B610 8001AE10 0780043C */  lui        $a0, %hi(D_8006B2C4)
    /* B614 8001AE14 C4B28424 */  addiu      $a0, $a0, %lo(D_8006B2C4)
    /* B618 8001AE18 21104300 */  addu       $v0, $v0, $v1
    /* B61C 8001AE1C 000082AC */  sw         $v0, 0x0($a0)
    /* B620 8001AE20 46002292 */  lbu        $v0, 0x46($s1)
    /* B624 8001AE24 00000000 */  nop
    /* B628 8001AE28 40100200 */  sll        $v0, $v0, 1
    /* B62C 8001AE2C 0680013C */  lui        $at, %hi(D_80061BD8)
    /* B630 8001AE30 21082200 */  addu       $at, $at, $v0
    /* B634 8001AE34 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* B638 8001AE38 1000228E */  lw         $v0, 0x10($s1)
    /* B63C 8001AE3C 00000000 */  nop
    /* B640 8001AE40 21104300 */  addu       $v0, $v0, $v1
    /* B644 8001AE44 0780013C */  lui        $at, %hi(D_8006B2C8)
    /* B648 8001AE48 C8B222AC */  sw         $v0, %lo(D_8006B2C8)($at)
    /* B64C 8001AE4C 1400228E */  lw         $v0, 0x14($s1)
    /* B650 8001AE50 00000000 */  nop
    /* B654 8001AE54 00044224 */  addiu      $v0, $v0, 0x400
    /* B658 8001AE58 0780013C */  lui        $at, %hi(D_8006B2CC)
    /* B65C 8001AE5C CCB222AC */  sw         $v0, %lo(D_8006B2CC)($at)
    /* B660 8001AE60 A1FB000C */  jal        func_8003EE84
    /* B664 8001AE64 00100524 */   addiu     $a1, $zero, 0x1000
    /* B668 8001AE68 64014224 */  addiu      $v0, $v0, 0x164
    /* B66C 8001AE6C 0780013C */  lui        $at, %hi(D_8006B2CC)
    /* B670 8001AE70 CCB222AC */  sw         $v0, %lo(D_8006B2CC)($at)
  .L8001AE74:
    /* B674 8001AE74 4B67010C */  jal        func_80059D2C
    /* B678 8001AE78 01005226 */   addiu     $s2, $s2, 0x1
    /* B67C 8001AE7C 21202002 */  addu       $a0, $s1, $zero
    /* B680 8001AE80 04000524 */  addiu      $a1, $zero, 0x4
    /* B684 8001AE84 FF005030 */  andi       $s0, $v0, 0xFF
    /* B688 8001AE88 46002292 */  lbu        $v0, 0x46($s1)
    /* B68C 8001AE8C 1400238E */  lw         $v1, 0x14($s1)
    /* B690 8001AE90 21105000 */  addu       $v0, $v0, $s0
    /* B694 8001AE94 00026324 */  addiu      $v1, $v1, 0x200
    /* B698 8001AE98 460022A2 */  sb         $v0, 0x46($s1)
    /* B69C 8001AE9C 4E05010C */  jal        func_80041538
    /* B6A0 8001AEA0 140023AE */   sw        $v1, 0x14($s1)
    /* B6A4 8001AEA4 08000424 */  addiu      $a0, $zero, 0x8
    /* B6A8 8001AEA8 0C000524 */  addiu      $a1, $zero, 0xC
    /* B6AC 8001AEAC 21302002 */  addu       $a2, $s1, $zero
    /* B6B0 8001AEB0 0680023C */  lui        $v0, %hi(D_800670FC)
    /* B6B4 8001AEB4 FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* B6B8 8001AEB8 00000000 */  nop
    /* B6BC 8001AEBC 09F84000 */  jalr       $v0
    /* B6C0 8001AEC0 03000724 */   addiu     $a3, $zero, 0x3
    /* B6C4 8001AEC4 21202002 */  addu       $a0, $s1, $zero
    /* B6C8 8001AEC8 04000524 */  addiu      $a1, $zero, 0x4
    /* B6CC 8001AECC 1400228E */  lw         $v0, 0x14($s1)
    /* B6D0 8001AED0 46002392 */  lbu        $v1, 0x46($s1)
    /* B6D4 8001AED4 00FE4224 */  addiu      $v0, $v0, -0x200
    /* B6D8 8001AED8 23187000 */  subu       $v1, $v1, $s0
    /* B6DC 8001AEDC 140022AE */  sw         $v0, 0x14($s1)
    /* B6E0 8001AEE0 4E05010C */  jal        func_80041538
    /* B6E4 8001AEE4 460023A2 */   sb        $v1, 0x46($s1)
    /* B6E8 8001AEE8 1000422A */  slti       $v0, $s2, 0x10
    /* B6EC 8001AEEC E1FF4014 */  bnez       $v0, .L8001AE74
    /* B6F0 8001AEF0 FF000224 */   addiu     $v0, $zero, 0xFF
    /* B6F4 8001AEF4 0680013C */  lui        $at, %hi(D_80066F68)
    /* B6F8 8001AEF8 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  .L8001AEFC:
    /* B6FC 8001AEFC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* B700 8001AF00 1800B28F */  lw         $s2, 0x18($sp)
    /* B704 8001AF04 1400B18F */  lw         $s1, 0x14($sp)
    /* B708 8001AF08 1000B08F */  lw         $s0, 0x10($sp)
    /* B70C 8001AF0C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B710 8001AF10 0800E003 */  jr         $ra
    /* B714 8001AF14 00000000 */   nop
endlabel func_8001AC40
