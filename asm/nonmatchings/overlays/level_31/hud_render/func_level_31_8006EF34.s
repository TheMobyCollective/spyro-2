.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_31_8006EF34, 0x108

glabel func_level_31_8006EF34
    /* 21374D0 8006EF34 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 21374D4 8006EF38 0680053C */  lui        $a1, %hi(D_80067674)
    /* 21374D8 8006EF3C 7476A524 */  addiu      $a1, $a1, %lo(D_80067674)
    /* 21374DC 8006EF40 1800BFAF */  sw         $ra, 0x18($sp)
    /* 21374E0 8006EF44 0000A290 */  lbu        $v0, 0x0($a1)
    /* 21374E4 8006EF48 00000000 */  nop
    /* 21374E8 8006EF4C 27004010 */  beqz       $v0, .Llevel_31_8006EFEC
    /* 21374EC 8006EF50 AA2A033C */   lui       $v1, (0x2AAAAAAB >> 16)
    /* 21374F0 8006EF54 0680023C */  lui        $v0, %hi(D_80067008)
    /* 21374F4 8006EF58 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* 21374F8 8006EF5C ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 21374FC 8006EF60 43200200 */  sra        $a0, $v0, 1
    /* 2137500 8006EF64 18008300 */  mult       $a0, $v1
    /* 2137504 8006EF68 C3170200 */  sra        $v0, $v0, 31
    /* 2137508 8006EF6C 10400000 */  mfhi       $t0
    /* 213750C 8006EF70 43180800 */  sra        $v1, $t0, 1
    /* 2137510 8006EF74 23186200 */  subu       $v1, $v1, $v0
    /* 2137514 8006EF78 40100300 */  sll        $v0, $v1, 1
    /* 2137518 8006EF7C 21104300 */  addu       $v0, $v0, $v1
    /* 213751C 8006EF80 80100200 */  sll        $v0, $v0, 2
    /* 2137520 8006EF84 23188200 */  subu       $v1, $a0, $v0
    /* 2137524 8006EF88 07006228 */  slti       $v0, $v1, 0x7
    /* 2137528 8006EF8C 0A004010 */  beqz       $v0, .Llevel_31_8006EFB8
    /* 213752C 8006EF90 08000224 */   addiu     $v0, $zero, 0x8
    /* 2137530 8006EF94 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2137534 8006EF98 2120A000 */  addu       $a0, $a1, $zero
    /* 2137538 8006EF9C 80100300 */  sll        $v0, $v1, 2
    /* 213753C 8006EFA0 0680053C */  lui        $a1, %hi(D_800635F8)
    /* 2137540 8006EFA4 F835A524 */  addiu      $a1, $a1, %lo(D_800635F8)
    /* 2137544 8006EFA8 21284500 */  addu       $a1, $v0, $a1
    /* 2137548 8006EFAC 68010624 */  addiu      $a2, $zero, 0x168
    /* 213754C 8006EFB0 07BC0108 */  j          .Llevel_31_8006F01C
    /* 2137550 8006EFB4 EC000724 */   addiu     $a3, $zero, 0xEC
  .Llevel_31_8006EFB8:
    /* 2137554 8006EFB8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2137558 8006EFBC 2120A000 */  addu       $a0, $a1, $zero
    /* 213755C 8006EFC0 0C000524 */  addiu      $a1, $zero, 0xC
    /* 2137560 8006EFC4 2328A300 */  subu       $a1, $a1, $v1
    /* 2137564 8006EFC8 80280500 */  sll        $a1, $a1, 2
    /* 2137568 8006EFCC 0680023C */  lui        $v0, %hi(D_800635F8)
    /* 213756C 8006EFD0 F8354224 */  addiu      $v0, $v0, %lo(D_800635F8)
    /* 2137570 8006EFD4 2128A200 */  addu       $a1, $a1, $v0
    /* 2137574 8006EFD8 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* 2137578 8006EFDC 2628A200 */  xor        $a1, $a1, $v0
    /* 213757C 8006EFE0 68010624 */  addiu      $a2, $zero, 0x168
    /* 2137580 8006EFE4 07BC0108 */  j          .Llevel_31_8006F01C
    /* 2137584 8006EFE8 EC000724 */   addiu     $a3, $zero, 0xEC
  .Llevel_31_8006EFEC:
    /* 2137588 8006EFEC 0800A424 */  addiu      $a0, $a1, 0x8
    /* 213758C 8006EFF0 68010624 */  addiu      $a2, $zero, 0x168
    /* 2137590 8006EFF4 EC000724 */  addiu      $a3, $zero, 0xEC
    /* 2137594 8006EFF8 0680053C */  lui        $a1, %hi(D_80067008)
    /* 2137598 8006EFFC 0870A58C */  lw         $a1, %lo(D_80067008)($a1)
    /* 213759C 8006F000 08000224 */  addiu      $v0, $zero, 0x8
    /* 21375A0 8006F004 1000A2AF */  sw         $v0, 0x10($sp)
    /* 21375A4 8006F008 0680023C */  lui        $v0, %hi(D_80063618)
    /* 21375A8 8006F00C 18364224 */  addiu      $v0, $v0, %lo(D_80063618)
    /* 21375AC 8006F010 40280500 */  sll        $a1, $a1, 1
    /* 21375B0 8006F014 1C00A530 */  andi       $a1, $a1, 0x1C
    /* 21375B4 8006F018 2128A200 */  addu       $a1, $a1, $v0
  .Llevel_31_8006F01C:
    /* 21375B8 8006F01C A449010C */  jal        func_80052690
    /* 21375BC 8006F020 00000000 */   nop
    /* 21375C0 8006F024 154D010C */  jal        func_80053454
    /* 21375C4 8006F028 00000000 */   nop
    /* 21375C8 8006F02C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 21375CC 8006F030 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 21375D0 8006F034 0800E003 */  jr         $ra
    /* 21375D4 8006F038 00000000 */   nop
endlabel func_level_31_8006EF34
    /* 21375D8 8006F03C 00000000 */  nop
