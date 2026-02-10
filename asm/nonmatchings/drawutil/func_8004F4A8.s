.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004F4A8, 0x24C

glabel func_8004F4A8
    /* 3FCA8 8004F4A8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3FCAC 8004F4AC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3FCB0 8004F4B0 21908000 */  addu       $s2, $a0, $zero
    /* 3FCB4 8004F4B4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3FCB8 8004F4B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3FCBC 8004F4BC B73C010C */  jal        func_8004F2DC
    /* 3FCC0 8004F4C0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3FCC4 8004F4C4 50000424 */  addiu      $a0, $zero, 0x50
    /* 3FCC8 8004F4C8 1A000524 */  addiu      $a1, $zero, 0x1A
    /* 3FCCC 8004F4CC 09000624 */  addiu      $a2, $zero, 0x9
    /* 3FCD0 8004F4D0 8E38010C */  jal        func_8004E238
    /* 3FCD4 8004F4D4 21380000 */   addu      $a3, $zero, $zero
    /* 3FCD8 8004F4D8 A6000424 */  addiu      $a0, $zero, 0xA6
    /* 3FCDC 8004F4DC 1A000524 */  addiu      $a1, $zero, 0x1A
    /* 3FCE0 8004F4E0 0B004626 */  addiu      $a2, $s2, 0xB
    /* 3FCE4 8004F4E4 8E38010C */  jal        func_8004E238
    /* 3FCE8 8004F4E8 21380000 */   addu      $a3, $zero, $zero
    /* 3FCEC 8004F4EC 70000424 */  addiu      $a0, $zero, 0x70
    /* 3FCF0 8004F4F0 29000524 */  addiu      $a1, $zero, 0x29
    /* 3FCF4 8004F4F4 10000624 */  addiu      $a2, $zero, 0x10
    /* 3FCF8 8004F4F8 8E38010C */  jal        func_8004E238
    /* 3FCFC 8004F4FC 21380000 */   addu      $a3, $zero, $zero
    /* 3FD00 8004F500 1A004016 */  bnez       $s2, .L8004F56C
    /* 3FD04 8004F504 B6001024 */   addiu     $s0, $zero, 0xB6
    /* 3FD08 8004F508 0780023C */  lui        $v0, %hi(D_8006B08D)
    /* 3FD0C 8004F50C 8DB04290 */  lbu        $v0, %lo(D_8006B08D)($v0)
    /* 3FD10 8004F510 00000000 */  nop
    /* 3FD14 8004F514 15004010 */  beqz       $v0, .L8004F56C
    /* 3FD18 8004F518 3C000424 */   addiu     $a0, $zero, 0x3C
    /* 3FD1C 8004F51C CA000524 */  addiu      $a1, $zero, 0xCA
    /* 3FD20 8004F520 07000624 */  addiu      $a2, $zero, 0x7
    /* 3FD24 8004F524 8E38010C */  jal        func_8004E238
    /* 3FD28 8004F528 21380000 */   addu      $a3, $zero, $zero
    /* 3FD2C 8004F52C 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 3FD30 8004F530 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 3FD34 8004F534 00000000 */  nop
    /* 3FD38 8004F538 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3FD3C 8004F53C 16004228 */  slti       $v0, $v0, 0x16
    /* 3FD40 8004F540 55004010 */  beqz       $v0, .L8004F698
    /* 3FD44 8004F544 A2001024 */   addiu     $s0, $zero, 0xA2
    /* 3FD48 8004F548 0680033C */  lui        $v1, %hi(D_80067118)
    /* 3FD4C 8004F54C 1871638C */  lw         $v1, %lo(D_80067118)($v1)
    /* 3FD50 8004F550 04000224 */  addiu      $v0, $zero, 0x4
    /* 3FD54 8004F554 02006214 */  bne        $v1, $v0, .L8004F560
    /* 3FD58 8004F558 D8000424 */   addiu     $a0, $zero, 0xD8
    /* 3FD5C 8004F55C DE000424 */  addiu      $a0, $zero, 0xDE
  .L8004F560:
    /* 3FD60 8004F560 CA000524 */  addiu      $a1, $zero, 0xCA
    /* 3FD64 8004F564 A43D0108 */  j          .L8004F690
    /* 3FD68 8004F568 0F000624 */   addiu     $a2, $zero, 0xF
  .L8004F56C:
    /* 3FD6C 8004F56C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3FD70 8004F570 31004216 */  bne        $s2, $v0, .L8004F638
    /* 3FD74 8004F574 02000224 */   addiu     $v0, $zero, 0x2
    /* 3FD78 8004F578 ECFF1026 */  addiu      $s0, $s0, -0x14
    /* 3FD7C 8004F57C 0780113C */  lui        $s1, %hi(D_8006B099)
    /* 3FD80 8004F580 99B03126 */  addiu      $s1, $s1, %lo(D_8006B099)
    /* 3FD84 8004F584 00002292 */  lbu        $v0, 0x0($s1)
    /* 3FD88 8004F588 00000000 */  nop
    /* 3FD8C 8004F58C 02004014 */  bnez       $v0, .L8004F598
    /* 3FD90 8004F590 B6000524 */   addiu     $a1, $zero, 0xB6
    /* 3FD94 8004F594 CA000524 */  addiu      $a1, $zero, 0xCA
  .L8004F598:
    /* 3FD98 8004F598 3C000424 */  addiu      $a0, $zero, 0x3C
    /* 3FD9C 8004F59C 06000624 */  addiu      $a2, $zero, 0x6
    /* 3FDA0 8004F5A0 8E38010C */  jal        func_8004E238
    /* 3FDA4 8004F5A4 21380000 */   addu      $a3, $zero, $zero
    /* 3FDA8 8004F5A8 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 3FDAC 8004F5AC EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 3FDB0 8004F5B0 00000000 */  nop
    /* 3FDB4 8004F5B4 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3FDB8 8004F5B8 16004228 */  slti       $v0, $v0, 0x16
    /* 3FDBC 8004F5BC 0A004010 */  beqz       $v0, .L8004F5E8
    /* 3FDC0 8004F5C0 00000000 */   nop
    /* 3FDC4 8004F5C4 00002292 */  lbu        $v0, 0x0($s1)
    /* 3FDC8 8004F5C8 00000000 */  nop
    /* 3FDCC 8004F5CC 02004014 */  bnez       $v0, .L8004F5D8
    /* 3FDD0 8004F5D0 B6000524 */   addiu     $a1, $zero, 0xB6
    /* 3FDD4 8004F5D4 CA000524 */  addiu      $a1, $zero, 0xCA
  .L8004F5D8:
    /* 3FDD8 8004F5D8 2C000424 */  addiu      $a0, $zero, 0x2C
    /* 3FDDC 8004F5DC 0E000624 */  addiu      $a2, $zero, 0xE
    /* 3FDE0 8004F5E0 8E38010C */  jal        func_8004E238
    /* 3FDE4 8004F5E4 21380000 */   addu      $a3, $zero, $zero
  .L8004F5E8:
    /* 3FDE8 8004F5E8 0780023C */  lui        $v0, %hi(D_8006B099)
    /* 3FDEC 8004F5EC 99B04290 */  lbu        $v0, %lo(D_8006B099)($v0)
    /* 3FDF0 8004F5F0 00000000 */  nop
    /* 3FDF4 8004F5F4 28004010 */  beqz       $v0, .L8004F698
    /* 3FDF8 8004F5F8 3C000424 */   addiu     $a0, $zero, 0x3C
    /* 3FDFC 8004F5FC CA000524 */  addiu      $a1, $zero, 0xCA
    /* 3FE00 8004F600 08000624 */  addiu      $a2, $zero, 0x8
    /* 3FE04 8004F604 8E38010C */  jal        func_8004E238
    /* 3FE08 8004F608 21380000 */   addu      $a3, $zero, $zero
    /* 3FE0C 8004F60C 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 3FE10 8004F610 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 3FE14 8004F614 00000000 */  nop
    /* 3FE18 8004F618 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3FE1C 8004F61C 16004228 */  slti       $v0, $v0, 0x16
    /* 3FE20 8004F620 1D004010 */  beqz       $v0, .L8004F698
    /* 3FE24 8004F624 ECFF1026 */   addiu     $s0, $s0, -0x14
    /* 3FE28 8004F628 D8000424 */  addiu      $a0, $zero, 0xD8
    /* 3FE2C 8004F62C CA000524 */  addiu      $a1, $zero, 0xCA
    /* 3FE30 8004F630 A43D0108 */  j          .L8004F690
    /* 3FE34 8004F634 0F000624 */   addiu     $a2, $zero, 0xF
  .L8004F638:
    /* 3FE38 8004F638 18004216 */  bne        $s2, $v0, .L8004F69C
    /* 3FE3C 8004F63C 5C000424 */   addiu     $a0, $zero, 0x5C
    /* 3FE40 8004F640 3C000424 */  addiu      $a0, $zero, 0x3C
    /* 3FE44 8004F644 CA000524 */  addiu      $a1, $zero, 0xCA
    /* 3FE48 8004F648 07000624 */  addiu      $a2, $zero, 0x7
    /* 3FE4C 8004F64C 8E38010C */  jal        func_8004E238
    /* 3FE50 8004F650 21380000 */   addu      $a3, $zero, $zero
    /* 3FE54 8004F654 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 3FE58 8004F658 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 3FE5C 8004F65C 00000000 */  nop
    /* 3FE60 8004F660 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3FE64 8004F664 16004228 */  slti       $v0, $v0, 0x16
    /* 3FE68 8004F668 0B004010 */  beqz       $v0, .L8004F698
    /* 3FE6C 8004F66C ECFF1026 */   addiu     $s0, $s0, -0x14
    /* 3FE70 8004F670 0680033C */  lui        $v1, %hi(D_80067118)
    /* 3FE74 8004F674 1871638C */  lw         $v1, %lo(D_80067118)($v1)
    /* 3FE78 8004F678 04000224 */  addiu      $v0, $zero, 0x4
    /* 3FE7C 8004F67C 02006214 */  bne        $v1, $v0, .L8004F688
    /* 3FE80 8004F680 2C000424 */   addiu     $a0, $zero, 0x2C
    /* 3FE84 8004F684 26000424 */  addiu      $a0, $zero, 0x26
  .L8004F688:
    /* 3FE88 8004F688 CA000524 */  addiu      $a1, $zero, 0xCA
    /* 3FE8C 8004F68C 0E000624 */  addiu      $a2, $zero, 0xE
  .L8004F690:
    /* 3FE90 8004F690 8E38010C */  jal        func_8004E238
    /* 3FE94 8004F694 21380000 */   addu      $a3, $zero, $zero
  .L8004F698:
    /* 3FE98 8004F698 5C000424 */  addiu      $a0, $zero, 0x5C
  .L8004F69C:
    /* 3FE9C 8004F69C 21280002 */  addu       $a1, $s0, $zero
    /* 3FEA0 8004F6A0 03000624 */  addiu      $a2, $zero, 0x3
    /* 3FEA4 8004F6A4 8E38010C */  jal        func_8004E238
    /* 3FEA8 8004F6A8 21380000 */   addu      $a3, $zero, $zero
    /* 3FEAC 8004F6AC 5C000424 */  addiu      $a0, $zero, 0x5C
    /* 3FEB0 8004F6B0 14000526 */  addiu      $a1, $s0, 0x14
    /* 3FEB4 8004F6B4 04000624 */  addiu      $a2, $zero, 0x4
    /* 3FEB8 8004F6B8 8E38010C */  jal        func_8004E238
    /* 3FEBC 8004F6BC 21380000 */   addu      $a3, $zero, $zero
    /* 3FEC0 8004F6C0 3C000424 */  addiu      $a0, $zero, 0x3C
    /* 3FEC4 8004F6C4 43281000 */  sra        $a1, $s0, 1
    /* 3FEC8 8004F6C8 E8FFA524 */  addiu      $a1, $a1, -0x18
    /* 3FECC 8004F6CC 21304002 */  addu       $a2, $s2, $zero
    /* 3FED0 8004F6D0 8E38010C */  jal        func_8004E238
    /* 3FED4 8004F6D4 21380000 */   addu      $a3, $zero, $zero
    /* 3FED8 8004F6D8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3FEDC 8004F6DC 1800B28F */  lw         $s2, 0x18($sp)
    /* 3FEE0 8004F6E0 1400B18F */  lw         $s1, 0x14($sp)
    /* 3FEE4 8004F6E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 3FEE8 8004F6E8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3FEEC 8004F6EC 0800E003 */  jr         $ra
    /* 3FEF0 8004F6F0 00000000 */   nop
endlabel func_8004F4A8
