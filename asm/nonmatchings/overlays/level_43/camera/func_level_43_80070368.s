.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_43_80070368, 0x544

glabel func_level_43_80070368
    /* 2FC7904 80070368 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FC7908 8007036C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FC790C 80070370 0680113C */  lui        $s1, %hi(D_80067FBC)
    /* 2FC7910 80070374 BC7F3126 */  addiu      $s1, $s1, %lo(D_80067FBC)
    /* 2FC7914 80070378 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2FC7918 8007037C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2FC791C 80070380 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FC7920 80070384 0000228E */  lw         $v0, 0x0($s1)
    /* 2FC7924 80070388 00000000 */  nop
    /* 2FC7928 8007038C 02004224 */  addiu      $v0, $v0, 0x2
    /* 2FC792C 80070390 83900200 */  sra        $s2, $v0, 2
    /* 2FC7930 80070394 0500422A */  slti       $v0, $s2, 0x5
    /* 2FC7934 80070398 02004014 */  bnez       $v0, .Llevel_43_800703A4
    /* 2FC7938 8007039C 00000000 */   nop
    /* 2FC793C 800703A0 04001224 */  addiu      $s2, $zero, 0x4
  .Llevel_43_800703A4:
    /* 2FC7940 800703A4 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 2FC7944 800703A8 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 2FC7948 800703AC 10000224 */  addiu      $v0, $zero, 0x10
    /* 2FC794C 800703B0 79006210 */  beq        $v1, $v0, .Llevel_43_80070598
    /* 2FC7950 800703B4 11006228 */   slti      $v0, $v1, 0x11
    /* 2FC7954 800703B8 05004010 */  beqz       $v0, .Llevel_43_800703D0
    /* 2FC7958 800703BC 03000224 */   addiu     $v0, $zero, 0x3
    /* 2FC795C 800703C0 0A006210 */  beq        $v1, $v0, .Llevel_43_800703EC
    /* 2FC7960 800703C4 00000000 */   nop
    /* 2FC7964 800703C8 24C20108 */  j          .Llevel_43_80070890
    /* 2FC7968 800703CC 00000000 */   nop
  .Llevel_43_800703D0:
    /* 2FC796C 800703D0 16000224 */  addiu      $v0, $zero, 0x16
    /* 2FC7970 800703D4 9E006210 */  beq        $v1, $v0, .Llevel_43_80070650
    /* 2FC7974 800703D8 17000224 */   addiu     $v0, $zero, 0x17
    /* 2FC7978 800703DC E6006210 */  beq        $v1, $v0, .Llevel_43_80070778
    /* 2FC797C 800703E0 00000000 */   nop
    /* 2FC7980 800703E4 24C20108 */  j          .Llevel_43_80070890
    /* 2FC7984 800703E8 00000000 */   nop
  .Llevel_43_800703EC:
    /* 2FC7988 800703EC 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 2FC798C 800703F0 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 2FC7990 800703F4 00000000 */  nop
    /* 2FC7994 800703F8 2C004014 */  bnez       $v0, .Llevel_43_800704AC
    /* 2FC7998 800703FC 00000000 */   nop
    /* 2FC799C 80070400 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 2FC79A0 80070404 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 2FC79A4 80070408 0680053C */  lui        $a1, %hi(D_800615C4)
    /* 2FC79A8 8007040C C415A524 */  addiu      $a1, $a1, %lo(D_800615C4)
    /* 2FC79AC 80070410 337B000C */  jal        func_8001ECCC
    /* 2FC79B0 80070414 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 2FC79B4 80070418 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 2FC79B8 8007041C 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 2FC79BC 80070420 0680033C */  lui        $v1, %hi(D_80067F04)
    /* 2FC79C0 80070424 047F638C */  lw         $v1, %lo(D_80067F04)($v1)
    /* 2FC79C4 80070428 23100200 */  negu       $v0, $v0
    /* 2FC79C8 8007042C 23184300 */  subu       $v1, $v0, $v1
    /* 2FC79CC 80070430 83180300 */  sra        $v1, $v1, 2
    /* 2FC79D0 80070434 0680013C */  lui        $at, %hi(D_80067F18)
    /* 2FC79D4 80070438 187F22AC */  sw         $v0, %lo(D_80067F18)($at)
    /* 2FC79D8 8007043C C1006228 */  slti       $v0, $v1, 0xC1
    /* 2FC79DC 80070440 03004014 */  bnez       $v0, .Llevel_43_80070450
    /* 2FC79E0 80070444 40FF6228 */   slti      $v0, $v1, -0xC0
    /* 2FC79E4 80070448 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 2FC79E8 8007044C 40FF6228 */  slti       $v0, $v1, -0xC0
  .Llevel_43_80070450:
    /* 2FC79EC 80070450 02004010 */  beqz       $v0, .Llevel_43_8007045C
    /* 2FC79F0 80070454 00000000 */   nop
    /* 2FC79F4 80070458 40FF0324 */  addiu      $v1, $zero, -0xC0
  .Llevel_43_8007045C:
    /* 2FC79F8 8007045C 02006104 */  bgez       $v1, .Llevel_43_80070468
    /* 2FC79FC 80070460 21106000 */   addu      $v0, $v1, $zero
    /* 2FC7A00 80070464 23100200 */  negu       $v0, $v0
  .Llevel_43_80070468:
    /* 2FC7A04 80070468 09004228 */  slti       $v0, $v0, 0x9
    /* 2FC7A08 8007046C 03004014 */  bnez       $v0, .Llevel_43_8007047C
    /* 2FC7A0C 80070470 00000000 */   nop
    /* 2FC7A10 80070474 20C10108 */  j          .Llevel_43_80070480
    /* 2FC7A14 80070478 64FF23AE */   sw        $v1, -0x9C($s1)
  .Llevel_43_8007047C:
    /* 2FC7A18 8007047C 64FF20AE */  sw         $zero, -0x9C($s1)
  .Llevel_43_80070480:
    /* 2FC7A1C 80070480 0780023C */  lui        $v0, %hi(D_8006A054)
    /* 2FC7A20 80070484 54A0428C */  lw         $v0, %lo(D_8006A054)($v0)
    /* 2FC7A24 80070488 00000000 */  nop
    /* 2FC7A28 8007048C 23100200 */  negu       $v0, $v0
    /* 2FC7A2C 80070490 83100200 */  sra        $v0, $v0, 2
    /* 2FC7A30 80070494 0680013C */  lui        $at, %hi(D_80067F24)
    /* 2FC7A34 80070498 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
    /* 2FC7A38 8007049C 087C000C */  jal        func_8001F020
    /* 2FC7A3C 800704A0 C0000424 */   addiu     $a0, $zero, 0xC0
    /* 2FC7A40 800704A4 2F7C000C */  jal        func_8001F0BC
    /* 2FC7A44 800704A8 00000000 */   nop
  .Llevel_43_800704AC:
    /* 2FC7A48 800704AC 0680103C */  lui        $s0, %hi(D_80067EE4)
    /* 2FC7A4C 800704B0 E47E1026 */  addiu      $s0, $s0, %lo(D_80067EE4)
    /* 2FC7A50 800704B4 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 2FC7A54 800704B8 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 2FC7A58 800704BC 6C6F000C */  jal        func_8001BDB0
    /* 2FC7A5C 800704C0 21200002 */   addu      $a0, $s0, $zero
    /* 2FC7A60 800704C4 80000426 */  addiu      $a0, $s0, 0x80
    /* 2FC7A64 800704C8 80101200 */  sll        $v0, $s2, 2
    /* 2FC7A68 800704CC 21105200 */  addu       $v0, $v0, $s2
    /* 2FC7A6C 800704D0 80880200 */  sll        $s1, $v0, 2
    /* 2FC7A70 800704D4 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 2FC7A74 800704D8 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 2FC7A78 800704DC 21282502 */  addu       $a1, $s1, $a1
    /* 2FC7A7C 800704E0 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 2FC7A80 800704E4 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 2FC7A84 800704E8 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2FC7A88 800704EC F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2FC7A8C 800704F0 337B000C */  jal        func_8001ECCC
    /* 2FC7A90 800704F4 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7A94 800704F8 8000028E */  lw         $v0, 0x80($s0)
    /* 2FC7A98 800704FC 00000000 */  nop
    /* 2FC7A9C 80070500 00014228 */  slti       $v0, $v0, 0x100
    /* 2FC7AA0 80070504 02004010 */  beqz       $v0, .Llevel_43_80070510
    /* 2FC7AA4 80070508 00010224 */   addiu     $v0, $zero, 0x100
    /* 2FC7AA8 8007050C 800002AE */  sw         $v0, 0x80($s0)
  .Llevel_43_80070510:
    /* 2FC7AAC 80070510 0680023C */  lui        $v0, %hi(D_80067F68)
    /* 2FC7AB0 80070514 687F428C */  lw         $v0, %lo(D_80067F68)($v0)
    /* 2FC7AB4 80070518 00000000 */  nop
    /* 2FC7AB8 8007051C 60004228 */  slti       $v0, $v0, 0x60
    /* 2FC7ABC 80070520 03004010 */  beqz       $v0, .Llevel_43_80070530
    /* 2FC7AC0 80070524 60000224 */   addiu     $v0, $zero, 0x60
    /* 2FC7AC4 80070528 0680013C */  lui        $at, %hi(D_80067F68)
    /* 2FC7AC8 8007052C 687F22AC */  sw         $v0, %lo(D_80067F68)($at)
  .Llevel_43_80070530:
    /* 2FC7ACC 80070530 0680023C */  lui        $v0, %hi(D_80067F74)
    /* 2FC7AD0 80070534 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* 2FC7AD4 80070538 00000000 */  nop
    /* 2FC7AD8 8007053C 40004228 */  slti       $v0, $v0, 0x40
    /* 2FC7ADC 80070540 03004010 */  beqz       $v0, .Llevel_43_80070550
    /* 2FC7AE0 80070544 40000224 */   addiu     $v0, $zero, 0x40
    /* 2FC7AE4 80070548 0680013C */  lui        $at, %hi(D_80067F74)
    /* 2FC7AE8 8007054C 747F22AC */  sw         $v0, %lo(D_80067F74)($at)
  .Llevel_43_80070550:
    /* 2FC7AEC 80070550 94000426 */  addiu      $a0, $s0, 0x94
    /* 2FC7AF0 80070554 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 2FC7AF4 80070558 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 2FC7AF8 8007055C 21282502 */  addu       $a1, $s1, $a1
    /* 2FC7AFC 80070560 337B000C */  jal        func_8001ECCC
    /* 2FC7B00 80070564 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7B04 80070568 A8000426 */  addiu      $a0, $s0, 0xA8
    /* 2FC7B08 8007056C 0680053C */  lui        $a1, %hi(D_80061858)
    /* 2FC7B0C 80070570 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 2FC7B10 80070574 337B000C */  jal        func_8001ECCC
    /* 2FC7B14 80070578 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7B18 8007057C BC000426 */  addiu      $a0, $s0, 0xBC
    /* 2FC7B1C 80070580 0680053C */  lui        $a1, %hi(D_80061844)
    /* 2FC7B20 80070584 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 2FC7B24 80070588 337B000C */  jal        func_8001ECCC
    /* 2FC7B28 8007058C 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7B2C 80070590 24C20108 */  j          .Llevel_43_80070890
    /* 2FC7B30 80070594 00000000 */   nop
  .Llevel_43_80070598:
    /* 2FC7B34 80070598 087C000C */  jal        func_8001F020
    /* 2FC7B38 8007059C 00040424 */   addiu     $a0, $zero, 0x400
    /* 2FC7B3C 800705A0 0680023C */  lui        $v0, %hi(D_80067FD4)
    /* 2FC7B40 800705A4 D47F428C */  lw         $v0, %lo(D_80067FD4)($v0)
    /* 2FC7B44 800705A8 00000000 */  nop
    /* 2FC7B48 800705AC 05004010 */  beqz       $v0, .Llevel_43_800705C4
    /* 2FC7B4C 800705B0 01000224 */   addiu     $v0, $zero, 0x1
    /* 2FC7B50 800705B4 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2FC7B54 800705B8 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 2FC7B58 800705BC 73C10108 */  j          .Llevel_43_800705CC
    /* 2FC7B5C 800705C0 00000000 */   nop
  .Llevel_43_800705C4:
    /* 2FC7B60 800705C4 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2FC7B64 800705C8 C67F20A0 */  sb         $zero, %lo(D_80067FC6)($at)
  .Llevel_43_800705CC:
    /* 2FC7B68 800705CC 0680043C */  lui        $a0, %hi(D_80067FB8)
    /* 2FC7B6C 800705D0 B87F8424 */  addiu      $a0, $a0, %lo(D_80067FB8)
    /* 2FC7B70 800705D4 0000828C */  lw         $v0, 0x0($a0)
    /* 2FC7B74 800705D8 00000000 */  nop
    /* 2FC7B78 800705DC 09004014 */  bnez       $v0, .Llevel_43_80070604
    /* 2FC7B7C 800705E0 00000000 */   nop
    /* 2FC7B80 800705E4 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 2FC7B84 800705E8 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 2FC7B88 800705EC 0680053C */  lui        $a1, %hi(D_80061614)
    /* 2FC7B8C 800705F0 1416A524 */  addiu      $a1, $a1, %lo(D_80061614)
    /* 2FC7B90 800705F4 337B000C */  jal        func_8001ECCC
    /* 2FC7B94 800705F8 5CFF8424 */   addiu     $a0, $a0, -0xA4
    /* 2FC7B98 800705FC 83C10108 */  j          .Llevel_43_8007060C
    /* 2FC7B9C 80070600 00000000 */   nop
  .Llevel_43_80070604:
    /* 2FC7BA0 80070604 0680013C */  lui        $at, %hi(D_80067FD4)
    /* 2FC7BA4 80070608 D47F20AC */  sw         $zero, %lo(D_80067FD4)($at)
  .Llevel_43_8007060C:
    /* 2FC7BA8 8007060C 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 2FC7BAC 80070610 E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 2FC7BB0 80070614 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 2FC7BB4 80070618 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 2FC7BB8 8007061C 6C6F000C */  jal        func_8001BDB0
    /* 2FC7BBC 80070620 21202002 */   addu      $a0, $s1, $zero
    /* 2FC7BC0 80070624 80002426 */  addiu      $a0, $s1, 0x80
    /* 2FC7BC4 80070628 80801200 */  sll        $s0, $s2, 2
    /* 2FC7BC8 8007062C 21801202 */  addu       $s0, $s0, $s2
    /* 2FC7BCC 80070630 80801000 */  sll        $s0, $s0, 2
    /* 2FC7BD0 80070634 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 2FC7BD4 80070638 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 2FC7BD8 8007063C 21280502 */  addu       $a1, $s0, $a1
    /* 2FC7BDC 80070640 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 2FC7BE0 80070644 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 2FC7BE4 80070648 04C20108 */  j          .Llevel_43_80070810
    /* 2FC7BE8 8007064C 21300000 */   addu      $a2, $zero, $zero
  .Llevel_43_80070650:
    /* 2FC7BEC 80070650 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 2FC7BF0 80070654 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 2FC7BF4 80070658 00000000 */  nop
    /* 2FC7BF8 8007065C 07004014 */  bnez       $v0, .Llevel_43_8007067C
    /* 2FC7BFC 80070660 00000000 */   nop
    /* 2FC7C00 80070664 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 2FC7C04 80070668 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 2FC7C08 8007066C 0680053C */  lui        $a1, %hi(D_800616B4)
    /* 2FC7C0C 80070670 B416A524 */  addiu      $a1, $a1, %lo(D_800616B4)
    /* 2FC7C10 80070674 337B000C */  jal        func_8001ECCC
    /* 2FC7C14 80070678 58FF2426 */   addiu     $a0, $s1, -0xA8
  .Llevel_43_8007067C:
    /* 2FC7C18 8007067C 0680053C */  lui        $a1, %hi(D_80067FF0)
    /* 2FC7C1C 80070680 F07FA58C */  lw         $a1, %lo(D_80067FF0)($a1)
    /* 2FC7C20 80070684 28FF2426 */  addiu      $a0, $s1, -0xD8
    /* 2FC7C24 80070688 6C6F000C */  jal        func_8001BDB0
    /* 2FC7C28 8007068C 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 2FC7C2C 80070690 A8FF2426 */  addiu      $a0, $s1, -0x58
    /* 2FC7C30 80070694 80801200 */  sll        $s0, $s2, 2
    /* 2FC7C34 80070698 21801202 */  addu       $s0, $s0, $s2
    /* 2FC7C38 8007069C 80801000 */  sll        $s0, $s0, 2
    /* 2FC7C3C 800706A0 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 2FC7C40 800706A4 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 2FC7C44 800706A8 21280502 */  addu       $a1, $s0, $a1
    /* 2FC7C48 800706AC 0680023C */  lui        $v0, %hi(D_80067EEC)
    /* 2FC7C4C 800706B0 EC7E428C */  lw         $v0, %lo(D_80067EEC)($v0)
    /* 2FC7C50 800706B4 0680033C */  lui        $v1, %hi(D_80067FF0)
    /* 2FC7C54 800706B8 F07F638C */  lw         $v1, %lo(D_80067FF0)($v1)
    /* 2FC7C58 800706BC 64014224 */  addiu      $v0, $v0, 0x164
    /* 2FC7C5C 800706C0 0680013C */  lui        $at, %hi(D_80067EEC)
    /* 2FC7C60 800706C4 EC7E22AC */  sw         $v0, %lo(D_80067EEC)($at)
    /* 2FC7C64 800706C8 46006290 */  lbu        $v0, 0x46($v1)
    /* 2FC7C68 800706CC 00000000 */  nop
    /* 2FC7C6C 800706D0 00110200 */  sll        $v0, $v0, 4
    /* 2FC7C70 800706D4 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2FC7C74 800706D8 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2FC7C78 800706DC 337B000C */  jal        func_8001ECCC
    /* 2FC7C7C 800706E0 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7C80 800706E4 BCFF2426 */  addiu      $a0, $s1, -0x44
    /* 2FC7C84 800706E8 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 2FC7C88 800706EC B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 2FC7C8C 800706F0 21280502 */  addu       $a1, $s0, $a1
    /* 2FC7C90 800706F4 337B000C */  jal        func_8001ECCC
    /* 2FC7C94 800706F8 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7C98 800706FC D0FF2426 */  addiu      $a0, $s1, -0x30
    /* 2FC7C9C 80070700 0680053C */  lui        $a1, %hi(D_80061858)
    /* 2FC7CA0 80070704 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 2FC7CA4 80070708 337B000C */  jal        func_8001ECCC
    /* 2FC7CA8 8007070C 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7CAC 80070710 E4FF2426 */  addiu      $a0, $s1, -0x1C
    /* 2FC7CB0 80070714 0680053C */  lui        $a1, %hi(D_80061844)
    /* 2FC7CB4 80070718 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 2FC7CB8 8007071C 337B000C */  jal        func_8001ECCC
    /* 2FC7CBC 80070720 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7CC0 80070724 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 2FC7CC4 80070728 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 2FC7CC8 8007072C 00000000 */  nop
    /* 2FC7CCC 80070730 02004230 */  andi       $v0, $v0, 0x2
    /* 2FC7CD0 80070734 07004014 */  bnez       $v0, .Llevel_43_80070754
    /* 2FC7CD4 80070738 00000000 */   nop
    /* 2FC7CD8 8007073C A8FF228E */  lw         $v0, -0x58($s1)
    /* 2FC7CDC 80070740 00000000 */  nop
    /* 2FC7CE0 80070744 4C004228 */  slti       $v0, $v0, 0x4C
    /* 2FC7CE4 80070748 02004010 */  beqz       $v0, .Llevel_43_80070754
    /* 2FC7CE8 8007074C 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 2FC7CEC 80070750 A8FF22AE */  sw         $v0, -0x58($s1)
  .Llevel_43_80070754:
    /* 2FC7CF0 80070754 0680033C */  lui        $v1, %hi(D_80067F68)
    /* 2FC7CF4 80070758 687F6324 */  addiu      $v1, $v1, %lo(D_80067F68)
    /* 2FC7CF8 8007075C 0000628C */  lw         $v0, 0x0($v1)
    /* 2FC7CFC 80070760 00000000 */  nop
    /* 2FC7D00 80070764 40004228 */  slti       $v0, $v0, 0x40
    /* 2FC7D04 80070768 49004010 */  beqz       $v0, .Llevel_43_80070890
    /* 2FC7D08 8007076C 40000224 */   addiu     $v0, $zero, 0x40
    /* 2FC7D0C 80070770 24C20108 */  j          .Llevel_43_80070890
    /* 2FC7D10 80070774 000062AC */   sw        $v0, 0x0($v1)
  .Llevel_43_80070778:
    /* 2FC7D14 80070778 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 2FC7D18 8007077C B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 2FC7D1C 80070780 00000000 */  nop
    /* 2FC7D20 80070784 10004014 */  bnez       $v0, .Llevel_43_800707C8
    /* 2FC7D24 80070788 00000000 */   nop
    /* 2FC7D28 8007078C 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 2FC7D2C 80070790 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 2FC7D30 80070794 0680053C */  lui        $a1, %hi(D_80061560)
    /* 2FC7D34 80070798 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 2FC7D38 8007079C 337B000C */  jal        func_8001ECCC
    /* 2FC7D3C 800707A0 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 2FC7D40 800707A4 087C000C */  jal        func_8001F020
    /* 2FC7D44 800707A8 00040424 */   addiu     $a0, $zero, 0x400
    /* 2FC7D48 800707AC 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 2FC7D4C 800707B0 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 2FC7D50 800707B4 33000224 */  addiu      $v0, $zero, 0x33
    /* 2FC7D54 800707B8 03006214 */  bne        $v1, $v0, .Llevel_43_800707C8
    /* 2FC7D58 800707BC 00060224 */   addiu     $v0, $zero, 0x600
    /* 2FC7D5C 800707C0 0680013C */  lui        $at, %hi(D_80067F1C)
    /* 2FC7D60 800707C4 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_43_800707C8:
    /* 2FC7D64 800707C8 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 2FC7D68 800707CC E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 2FC7D6C 800707D0 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 2FC7D70 800707D4 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 2FC7D74 800707D8 6C6F000C */  jal        func_8001BDB0
    /* 2FC7D78 800707DC 21202002 */   addu      $a0, $s1, $zero
    /* 2FC7D7C 800707E0 80002426 */  addiu      $a0, $s1, 0x80
    /* 2FC7D80 800707E4 80801200 */  sll        $s0, $s2, 2
    /* 2FC7D84 800707E8 21801202 */  addu       $s0, $s0, $s2
    /* 2FC7D88 800707EC 80801000 */  sll        $s0, $s0, 2
    /* 2FC7D8C 800707F0 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 2FC7D90 800707F4 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 2FC7D94 800707F8 0780023C */  lui        $v0, %hi(D_8006A208)
    /* 2FC7D98 800707FC 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* 2FC7D9C 80070800 21280502 */  addu       $a1, $s0, $a1
    /* 2FC7DA0 80070804 46004290 */  lbu        $v0, 0x46($v0)
    /* 2FC7DA4 80070808 21300000 */  addu       $a2, $zero, $zero
    /* 2FC7DA8 8007080C 00110200 */  sll        $v0, $v0, 4
  .Llevel_43_80070810:
    /* 2FC7DAC 80070810 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2FC7DB0 80070814 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2FC7DB4 80070818 337B000C */  jal        func_8001ECCC
    /* 2FC7DB8 8007081C 00000000 */   nop
    /* 2FC7DBC 80070820 94002426 */  addiu      $a0, $s1, 0x94
    /* 2FC7DC0 80070824 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 2FC7DC4 80070828 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 2FC7DC8 8007082C 21280502 */  addu       $a1, $s0, $a1
    /* 2FC7DCC 80070830 337B000C */  jal        func_8001ECCC
    /* 2FC7DD0 80070834 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7DD4 80070838 A8002426 */  addiu      $a0, $s1, 0xA8
    /* 2FC7DD8 8007083C 0680053C */  lui        $a1, %hi(D_80061858)
    /* 2FC7DDC 80070840 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 2FC7DE0 80070844 337B000C */  jal        func_8001ECCC
    /* 2FC7DE4 80070848 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7DE8 8007084C BC002426 */  addiu      $a0, $s1, 0xBC
    /* 2FC7DEC 80070850 0680053C */  lui        $a1, %hi(D_80061844)
    /* 2FC7DF0 80070854 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 2FC7DF4 80070858 337B000C */  jal        func_8001ECCC
    /* 2FC7DF8 8007085C 21300000 */   addu      $a2, $zero, $zero
    /* 2FC7DFC 80070860 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 2FC7E00 80070864 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 2FC7E04 80070868 00000000 */  nop
    /* 2FC7E08 8007086C 02004230 */  andi       $v0, $v0, 0x2
    /* 2FC7E0C 80070870 07004014 */  bnez       $v0, .Llevel_43_80070890
    /* 2FC7E10 80070874 00000000 */   nop
    /* 2FC7E14 80070878 8000228E */  lw         $v0, 0x80($s1)
    /* 2FC7E18 8007087C 00000000 */  nop
    /* 2FC7E1C 80070880 4C004228 */  slti       $v0, $v0, 0x4C
    /* 2FC7E20 80070884 02004010 */  beqz       $v0, .Llevel_43_80070890
    /* 2FC7E24 80070888 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 2FC7E28 8007088C 800022AE */  sw         $v0, 0x80($s1)
  .Llevel_43_80070890:
    /* 2FC7E2C 80070890 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2FC7E30 80070894 1800B28F */  lw         $s2, 0x18($sp)
    /* 2FC7E34 80070898 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FC7E38 8007089C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FC7E3C 800708A0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2FC7E40 800708A4 0800E003 */  jr         $ra
    /* 2FC7E44 800708A8 00000000 */   nop
endlabel func_level_43_80070368
