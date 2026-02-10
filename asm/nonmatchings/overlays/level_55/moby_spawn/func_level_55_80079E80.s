.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_55_80079E80, 0xCD8

glabel func_level_55_80079E80
    /* 3D2A41C 80079E80 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 3D2A420 80079E84 7400B1AF */  sw         $s1, 0x74($sp)
    /* 3D2A424 80079E88 21888000 */  addu       $s1, $a0, $zero
    /* 3D2A428 80079E8C 8400B5AF */  sw         $s5, 0x84($sp)
    /* 3D2A42C 80079E90 21A8A000 */  addu       $s5, $a1, $zero
    /* 3D2A430 80079E94 8800BFAF */  sw         $ra, 0x88($sp)
    /* 3D2A434 80079E98 8000B4AF */  sw         $s4, 0x80($sp)
    /* 3D2A438 80079E9C 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 3D2A43C 80079EA0 7800B2AF */  sw         $s2, 0x78($sp)
    /* 3D2A440 80079EA4 A404010C */  jal        func_80041290
    /* 3D2A444 80079EA8 7000B0AF */   sw        $s0, 0x70($sp)
    /* 3D2A448 80079EAC 21984000 */  addu       $s3, $v0, $zero
    /* 3D2A44C 80079EB0 03006016 */  bnez       $s3, .Llevel_55_80079EC0
    /* 3D2A450 80079EB4 21206002 */   addu      $a0, $s3, $zero
    /* 3D2A454 80079EB8 CCEA0108 */  j          .Llevel_55_8007AB30
    /* 3D2A458 80079EBC 21100000 */   addu      $v0, $zero, $zero
  .Llevel_55_80079EC0:
    /* 3D2A45C 80079EC0 21280000 */  addu       $a1, $zero, $zero
    /* 3D2A460 80079EC4 0000708E */  lw         $s0, 0x0($s3)
    /* 3D2A464 80079EC8 F26C000C */  jal        func_8001B3C8
    /* 3D2A468 80079ECC 58000624 */   addiu     $a2, $zero, 0x58
    /* 3D2A46C 80079ED0 21280000 */  addu       $a1, $zero, $zero
    /* 3D2A470 80079ED4 18000624 */  addiu      $a2, $zero, 0x18
    /* 3D2A474 80079ED8 21200002 */  addu       $a0, $s0, $zero
    /* 3D2A478 80079EDC F26C000C */  jal        func_8001B3C8
    /* 3D2A47C 80079EE0 000064AE */   sw        $a0, 0x0($s3)
    /* 3D2A480 80079EE4 1600A012 */  beqz       $s5, .Llevel_55_80079F40
    /* 3D2A484 80079EE8 360071A6 */   sh        $s1, 0x36($s3)
    /* 3D2A488 80079EEC 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 3D2A48C 80079EF0 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 3D2A490 80079EF4 00000000 */  nop
    /* 3D2A494 80079EF8 2320A402 */  subu       $a0, $s5, $a0
    /* 3D2A498 80079EFC 40190400 */  sll        $v1, $a0, 5
    /* 3D2A49C 80079F00 23186400 */  subu       $v1, $v1, $a0
    /* 3D2A4A0 80079F04 40190300 */  sll        $v1, $v1, 5
    /* 3D2A4A4 80079F08 21186400 */  addu       $v1, $v1, $a0
    /* 3D2A4A8 80079F0C C0100300 */  sll        $v0, $v1, 3
    /* 3D2A4AC 80079F10 21186200 */  addu       $v1, $v1, $v0
    /* 3D2A4B0 80079F14 C0130300 */  sll        $v0, $v1, 15
    /* 3D2A4B4 80079F18 23104300 */  subu       $v0, $v0, $v1
    /* 3D2A4B8 80079F1C 80100200 */  sll        $v0, $v0, 2
    /* 3D2A4BC 80079F20 21104400 */  addu       $v0, $v0, $a0
    /* 3D2A4C0 80079F24 23100200 */  negu       $v0, $v0
    /* 3D2A4C4 80079F28 C3180200 */  sra        $v1, $v0, 3
    /* 3D2A4C8 80079F2C 0001622C */  sltiu      $v0, $v1, 0x100
    /* 3D2A4CC 80079F30 04004010 */  beqz       $v0, .Llevel_55_80079F44
    /* 3D2A4D0 80079F34 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 3D2A4D4 80079F38 D2E70108 */  j          .Llevel_55_80079F48
    /* 3D2A4D8 80079F3C 3A0063A2 */   sb        $v1, 0x3A($s3)
  .Llevel_55_80079F40:
    /* 3D2A4DC 80079F40 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_55_80079F44:
    /* 3D2A4E0 80079F44 3A0062A2 */  sb         $v0, 0x3A($s3)
  .Llevel_55_80079F48:
    /* 3D2A4E4 80079F48 72DD000C */  jal        func_800375C8
    /* 3D2A4E8 80079F4C 21206002 */   addu      $a0, $s3, $zero
    /* 3D2A4EC 80079F50 27010224 */  addiu      $v0, $zero, 0x127
    /* 3D2A4F0 80079F54 CE002212 */  beq        $s1, $v0, .Llevel_55_8007A290
    /* 3D2A4F4 80079F58 2801222A */   slti      $v0, $s1, 0x128
    /* 3D2A4F8 80079F5C 19004010 */  beqz       $v0, .Llevel_55_80079FC4
    /* 3D2A4FC 80079F60 81000224 */   addiu     $v0, $zero, 0x81
    /* 3D2A500 80079F64 A4002212 */  beq        $s1, $v0, .Llevel_55_8007A1F8
    /* 3D2A504 80079F68 8200222A */   slti      $v0, $s1, 0x82
    /* 3D2A508 80079F6C 07004010 */  beqz       $v0, .Llevel_55_80079F8C
    /* 3D2A50C 80079F70 1D000224 */   addiu     $v0, $zero, 0x1D
    /* 3D2A510 80079F74 5F002212 */  beq        $s1, $v0, .Llevel_55_8007A0F4
    /* 3D2A514 80079F78 78000224 */   addiu     $v0, $zero, 0x78
    /* 3D2A518 80079F7C 6B002212 */  beq        $s1, $v0, .Llevel_55_8007A12C
    /* 3D2A51C 80079F80 00000000 */   nop
    /* 3D2A520 80079F84 C0EA0108 */  j          .Llevel_55_8007AB00
    /* 3D2A524 80079F88 00000000 */   nop
  .Llevel_55_80079F8C:
    /* 3D2A528 80079F8C D3000224 */  addiu      $v0, $zero, 0xD3
    /* 3D2A52C 80079F90 25002212 */  beq        $s1, $v0, .Llevel_55_8007A028
    /* 3D2A530 80079F94 D400222A */   slti      $v0, $s1, 0xD4
    /* 3D2A534 80079F98 05004010 */  beqz       $v0, .Llevel_55_80079FB0
    /* 3D2A538 80079F9C 92000224 */   addiu     $v0, $zero, 0x92
    /* 3D2A53C 80079FA0 D4002212 */  beq        $s1, $v0, .Llevel_55_8007A2F4
    /* 3D2A540 80079FA4 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3D2A544 80079FA8 C0EA0108 */  j          .Llevel_55_8007AB00
    /* 3D2A548 80079FAC 00000000 */   nop
  .Llevel_55_80079FB0:
    /* 3D2A54C 80079FB0 04010224 */  addiu      $v0, $zero, 0x104
    /* 3D2A550 80079FB4 A1002212 */  beq        $s1, $v0, .Llevel_55_8007A23C
    /* 3D2A554 80079FB8 00000000 */   nop
    /* 3D2A558 80079FBC C0EA0108 */  j          .Llevel_55_8007AB00
    /* 3D2A55C 80079FC0 00000000 */   nop
  .Llevel_55_80079FC4:
    /* 3D2A560 80079FC4 E3010224 */  addiu      $v0, $zero, 0x1E3
    /* 3D2A564 80079FC8 BA012212 */  beq        $s1, $v0, .Llevel_55_8007A6B4
    /* 3D2A568 80079FCC E401222A */   slti      $v0, $s1, 0x1E4
    /* 3D2A56C 80079FD0 07004010 */  beqz       $v0, .Llevel_55_80079FF0
    /* 3D2A570 80079FD4 46010224 */   addiu     $v0, $zero, 0x146
    /* 3D2A574 80079FD8 5C012212 */  beq        $s1, $v0, .Llevel_55_8007A54C
    /* 3D2A578 80079FDC E2010224 */   addiu     $v0, $zero, 0x1E2
    /* 3D2A57C 80079FE0 9D012212 */  beq        $s1, $v0, .Llevel_55_8007A658
    /* 3D2A580 80079FE4 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3D2A584 80079FE8 C0EA0108 */  j          .Llevel_55_8007AB00
    /* 3D2A588 80079FEC 00000000 */   nop
  .Llevel_55_80079FF0:
    /* 3D2A58C 80079FF0 CA020224 */  addiu      $v0, $zero, 0x2CA
    /* 3D2A590 80079FF4 78022212 */  beq        $s1, $v0, .Llevel_55_8007A9D8
    /* 3D2A594 80079FF8 CB02222A */   slti      $v0, $s1, 0x2CB
    /* 3D2A598 80079FFC 05004010 */  beqz       $v0, .Llevel_55_8007A014
    /* 3D2A59C 8007A000 1D020224 */   addiu     $v0, $zero, 0x21D
    /* 3D2A5A0 8007A004 60022212 */  beq        $s1, $v0, .Llevel_55_8007A988
    /* 3D2A5A4 8007A008 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3D2A5A8 8007A00C C0EA0108 */  j          .Llevel_55_8007AB00
    /* 3D2A5AC 8007A010 00000000 */   nop
  .Llevel_55_8007A014:
    /* 3D2A5B0 8007A014 F2020224 */  addiu      $v0, $zero, 0x2F2
    /* 3D2A5B4 8007A018 B6002212 */  beq        $s1, $v0, .Llevel_55_8007A2F4
    /* 3D2A5B8 8007A01C 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3D2A5BC 8007A020 C0EA0108 */  j          .Llevel_55_8007AB00
    /* 3D2A5C0 8007A024 00000000 */   nop
  .Llevel_55_8007A028:
    /* 3D2A5C4 8007A028 10000324 */  addiu      $v1, $zero, 0x10
    /* 3D2A5C8 8007A02C 36006286 */  lh         $v0, 0x36($s3)
    /* 3D2A5CC 8007A030 0000718E */  lw         $s1, 0x0($s3)
    /* 3D2A5D0 8007A034 18004314 */  bne        $v0, $v1, .Llevel_55_8007A098
    /* 3D2A5D4 8007A038 00000000 */   nop
    /* 3D2A5D8 8007A03C 0680043C */  lui        $a0, %hi(D_8006712C)
    /* 3D2A5DC 8007A040 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* 3D2A5E0 8007A044 00000000 */  nop
    /* 3D2A5E4 8007A048 04008228 */  slti       $v0, $a0, 0x4
    /* 3D2A5E8 8007A04C 03004010 */  beqz       $v0, .Llevel_55_8007A05C
    /* 3D2A5EC 8007A050 0A000324 */   addiu     $v1, $zero, 0xA
    /* 3D2A5F0 8007A054 1BE80108 */  j          .Llevel_55_8007A06C
    /* 3D2A5F4 8007A058 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_55_8007A05C:
    /* 3D2A5F8 8007A05C 07008228 */  slti       $v0, $a0, 0x7
    /* 3D2A5FC 8007A060 02004010 */  beqz       $v0, .Llevel_55_8007A06C
    /* 3D2A600 8007A064 00000000 */   nop
    /* 3D2A604 8007A068 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_55_8007A06C:
    /* 3D2A608 8007A06C 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* 3D2A60C 8007A070 AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* 3D2A610 8007A074 0000828C */  lw         $v0, 0x0($a0)
    /* 3D2A614 8007A078 00000000 */  nop
    /* 3D2A618 8007A07C 01004224 */  addiu      $v0, $v0, 0x1
    /* 3D2A61C 8007A080 000082AC */  sw         $v0, 0x0($a0)
    /* 3D2A620 8007A084 2A104300 */  slt        $v0, $v0, $v1
    /* 3D2A624 8007A088 03004014 */  bnez       $v0, .Llevel_55_8007A098
    /* 3D2A628 8007A08C D3000224 */   addiu     $v0, $zero, 0xD3
    /* 3D2A62C 8007A090 000080AC */  sw         $zero, 0x0($a0)
    /* 3D2A630 8007A094 360062A6 */  sh         $v0, 0x36($s3)
  .Llevel_55_8007A098:
    /* 3D2A634 8007A098 0E05010C */  jal        func_80041438
    /* 3D2A638 8007A09C 21206002 */   addu      $a0, $s3, $zero
    /* 3D2A63C 8007A0A0 0C007026 */  addiu      $s0, $s3, 0xC
    /* 3D2A640 8007A0A4 21200002 */  addu       $a0, $s0, $zero
    /* 3D2A644 8007A0A8 6C6F000C */  jal        func_8001BDB0
    /* 3D2A648 8007A0AC 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3D2A64C 8007A0B0 21202002 */  addu       $a0, $s1, $zero
    /* 3D2A650 8007A0B4 1400628E */  lw         $v0, 0x14($s3)
    /* 3D2A654 8007A0B8 21280002 */  addu       $a1, $s0, $zero
    /* 3D2A658 8007A0BC 00024224 */  addiu      $v0, $v0, 0x200
    /* 3D2A65C 8007A0C0 6C6F000C */  jal        func_8001BDB0
    /* 3D2A660 8007A0C4 140062AE */   sw        $v0, 0x14($s3)
    /* 3D2A664 8007A0C8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3D2A668 8007A0CC 1C0062AE */  sw         $v0, 0x1C($s3)
    /* 3D2A66C 8007A0D0 02000224 */  addiu      $v0, $zero, 0x2
    /* 3D2A670 8007A0D4 470062A2 */  sb         $v0, 0x47($s3)
    /* 3D2A674 8007A0D8 08070224 */  addiu      $v0, $zero, 0x708
    /* 3D2A678 8007A0DC 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 3D2A67C 8007A0E0 4B67010C */  jal        func_80059D2C
    /* 3D2A680 8007A0E4 110020A2 */   sb        $zero, 0x11($s1)
    /* 3D2A684 8007A0E8 FC004230 */  andi       $v0, $v0, 0xFC
    /* 3D2A688 8007A0EC CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2A68C 8007A0F0 120022A2 */   sb        $v0, 0x12($s1)
  .Llevel_55_8007A0F4:
    /* 3D2A690 8007A0F4 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2A694 8007A0F8 0000708E */  lw         $s0, 0x0($s3)
    /* 3D2A698 8007A0FC 6C6F000C */  jal        func_8001BDB0
    /* 3D2A69C 8007A100 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3D2A6A0 8007A104 0E05010C */  jal        func_80041438
    /* 3D2A6A4 8007A108 21206002 */   addu      $a0, $s3, $zero
    /* 3D2A6A8 8007A10C 18000224 */  addiu      $v0, $zero, 0x18
    /* 3D2A6AC 8007A110 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 3D2A6B0 8007A114 40000224 */  addiu      $v0, $zero, 0x40
    /* 3D2A6B4 8007A118 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 3D2A6B8 8007A11C 02000224 */  addiu      $v0, $zero, 0x2
    /* 3D2A6BC 8007A120 540062A2 */  sb         $v0, 0x54($s3)
    /* 3D2A6C0 8007A124 CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2A6C4 8007A128 0C0000AE */   sw        $zero, 0xC($s0)
  .Llevel_55_8007A12C:
    /* 3D2A6C8 8007A12C 0000708E */  lw         $s0, 0x0($s3)
    /* 3D2A6CC 8007A130 0E05010C */  jal        func_80041438
    /* 3D2A6D0 8007A134 21206002 */   addu      $a0, $s3, $zero
    /* 3D2A6D4 8007A138 78000224 */  addiu      $v0, $zero, 0x78
    /* 3D2A6D8 8007A13C 490060A2 */  sb         $zero, 0x49($s3)
    /* 3D2A6DC 8007A140 000000A6 */  sh         $zero, 0x0($s0)
    /* 3D2A6E0 8007A144 080000A6 */  sh         $zero, 0x8($s0)
    /* 3D2A6E4 8007A148 060000A6 */  sh         $zero, 0x6($s0)
    /* 3D2A6E8 8007A14C 040000A6 */  sh         $zero, 0x4($s0)
    /* 3D2A6EC 8007A150 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 3D2A6F0 8007A154 100000AE */  sw         $zero, 0x10($s0)
    /* 3D2A6F4 8007A158 0600A012 */  beqz       $s5, .Llevel_55_8007A174
    /* 3D2A6F8 8007A15C 140000AE */   sw        $zero, 0x14($s0)
    /* 3D2A6FC 8007A160 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2A700 8007A164 6C6F000C */  jal        func_8001BDB0
    /* 3D2A704 8007A168 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3D2A708 8007A16C 7CE80108 */  j          .Llevel_55_8007A1F0
    /* 3D2A70C 8007A170 FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_55_8007A174:
    /* 3D2A710 8007A174 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2A714 8007A178 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* 3D2A718 8007A17C FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* 3D2A71C 8007A180 0000A390 */  lbu        $v1, 0x0($a1)
    /* 3D2A720 8007A184 F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 3D2A724 8007A188 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 3D2A728 8007A18C FF006330 */  andi       $v1, $v1, 0xFF
    /* 3D2A72C 8007A190 40180300 */  sll        $v1, $v1, 1
    /* 3D2A730 8007A194 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3D2A734 8007A198 21082300 */  addu       $at, $at, $v1
    /* 3D2A738 8007A19C 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* 3D2A73C 8007A1A0 1000A627 */  addiu      $a2, $sp, 0x10
    /* 3D2A740 8007A1A4 40110700 */  sll        $v0, $a3, 5
    /* 3D2A744 8007A1A8 23104700 */  subu       $v0, $v0, $a3
    /* 3D2A748 8007A1AC 80100200 */  sll        $v0, $v0, 2
    /* 3D2A74C 8007A1B0 21104700 */  addu       $v0, $v0, $a3
    /* 3D2A750 8007A1B4 43120200 */  sra        $v0, $v0, 9
    /* 3D2A754 8007A1B8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3D2A758 8007A1BC 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3D2A75C 8007A1C0 21082300 */  addu       $at, $at, $v1
    /* 3D2A760 8007A1C4 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 3D2A764 8007A1C8 E8030224 */  addiu      $v0, $zero, 0x3E8
    /* 3D2A768 8007A1CC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3D2A76C 8007A1D0 40110300 */  sll        $v0, $v1, 5
    /* 3D2A770 8007A1D4 23104300 */  subu       $v0, $v0, $v1
    /* 3D2A774 8007A1D8 80100200 */  sll        $v0, $v0, 2
    /* 3D2A778 8007A1DC 21104300 */  addu       $v0, $v0, $v1
    /* 3D2A77C 8007A1E0 43120200 */  sra        $v0, $v0, 9
    /* 3D2A780 8007A1E4 736F000C */  jal        func_8001BDCC
    /* 3D2A784 8007A1E8 1400A2AF */   sw        $v0, 0x14($sp)
    /* 3D2A788 8007A1EC FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_55_8007A1F0:
    /* 3D2A78C 8007A1F0 CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2A790 8007A1F4 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_55_8007A1F8:
    /* 3D2A794 8007A1F8 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2A798 8007A1FC 6C6F000C */  jal        func_8001BDB0
    /* 3D2A79C 8007A200 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3D2A7A0 8007A204 0E05010C */  jal        func_80041438
    /* 3D2A7A4 8007A208 21206002 */   addu      $a0, $s3, $zero
    /* 3D2A7A8 8007A20C 003F023C */  lui        $v0, (0x3F005080 >> 16)
    /* 3D2A7AC 8007A210 80504234 */  ori        $v0, $v0, (0x3F005080 & 0xFFFF)
    /* 3D2A7B0 8007A214 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 3D2A7B4 8007A218 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 3D2A7B8 8007A21C 40000424 */  addiu      $a0, $zero, 0x40
    /* 3D2A7BC 8007A220 4F0064A2 */  sb         $a0, 0x4F($s3)
    /* 3D2A7C0 8007A224 540062AE */  sw         $v0, 0x54($s3)
    /* 3D2A7C4 8007A228 001C0300 */  sll        $v1, $v1, 16
    /* 3D2A7C8 8007A22C 031D0300 */  sra        $v1, $v1, 20
    /* 3D2A7CC 8007A230 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 3D2A7D0 8007A234 CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2A7D4 8007A238 460063A2 */   sb        $v1, 0x46($s3)
  .Llevel_55_8007A23C:
    /* 3D2A7D8 8007A23C 0E05010C */  jal        func_80041438
    /* 3D2A7DC 8007A240 21206002 */   addu      $a0, $s3, $zero
    /* 3D2A7E0 8007A244 02000224 */  addiu      $v0, $zero, 0x2
    /* 3D2A7E4 8007A248 0E00A012 */  beqz       $s5, .Llevel_55_8007A284
    /* 3D2A7E8 8007A24C 540062A2 */   sb        $v0, 0x54($s3)
    /* 3D2A7EC 8007A250 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2A7F0 8007A254 0000628E */  lw         $v0, 0x0($s3)
    /* 3D2A7F4 8007A258 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 3D2A7F8 8007A25C 6C6F000C */  jal        func_8001BDB0
    /* 3D2A7FC 8007A260 000055AC */   sw        $s5, 0x0($v0)
    /* 3D2A800 8007A264 0A000224 */  addiu      $v0, $zero, 0xA
    /* 3D2A804 8007A268 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 3D2A808 8007A26C 1400628E */  lw         $v0, 0x14($s3)
    /* 3D2A80C 8007A270 08000324 */  addiu      $v1, $zero, 0x8
    /* 3D2A810 8007A274 4C0063A2 */  sb         $v1, 0x4C($s3)
    /* 3D2A814 8007A278 00044224 */  addiu      $v0, $v0, 0x400
    /* 3D2A818 8007A27C CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2A81C 8007A280 140062AE */   sw        $v0, 0x14($s3)
  .Llevel_55_8007A284:
    /* 3D2A820 8007A284 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3D2A824 8007A288 CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2A828 8007A28C 1C0062AE */   sw        $v0, 0x1C($s3)
  .Llevel_55_8007A290:
    /* 3D2A82C 8007A290 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2A830 8007A294 0000708E */  lw         $s0, 0x0($s3)
    /* 3D2A834 8007A298 6C6F000C */  jal        func_8001BDB0
    /* 3D2A838 8007A29C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3D2A83C 8007A2A0 21200000 */  addu       $a0, $zero, $zero
    /* 3D2A840 8007A2A4 47E2000C */  jal        func_8003891C
    /* 3D2A844 8007A2A8 FF000524 */   addiu     $a1, $zero, 0xFF
    /* 3D2A848 8007A2AC 21206002 */  addu       $a0, $s3, $zero
    /* 3D2A84C 8007A2B0 0E05010C */  jal        func_80041438
    /* 3D2A850 8007A2B4 460062A2 */   sb        $v0, 0x46($s3)
    /* 3D2A854 8007A2B8 78000424 */  addiu      $a0, $zero, 0x78
    /* 3D2A858 8007A2BC 47E2000C */  jal        func_8003891C
    /* 3D2A85C 8007A2C0 B4000524 */   addiu     $a1, $zero, 0xB4
    /* 3D2A860 8007A2C4 000002AE */  sw         $v0, 0x0($s0)
    /* 3D2A864 8007A2C8 C0100200 */  sll        $v0, $v0, 3
    /* 3D2A868 8007A2CC F8014230 */  andi       $v0, $v0, 0x1F8
    /* 3D2A86C 8007A2D0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3D2A870 8007A2D4 21082200 */  addu       $at, $at, $v0
    /* 3D2A874 8007A2D8 D81B2294 */  lhu        $v0, %lo(D_80061BD8)($at)
    /* 3D2A878 8007A2DC 00000000 */  nop
    /* 3D2A87C 8007A2E0 00140200 */  sll        $v0, $v0, 16
    /* 3D2A880 8007A2E4 C3150200 */  sra        $v0, $v0, 23
    /* 3D2A884 8007A2E8 40004224 */  addiu      $v0, $v0, 0x40
    /* 3D2A888 8007A2EC CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2A88C 8007A2F0 450062A2 */   sb        $v0, 0x45($s3)
  .Llevel_55_8007A2F4:
    /* 3D2A890 8007A2F4 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 3D2A894 8007A2F8 0000748E */  lw         $s4, 0x0($s3)
    /* 3D2A898 8007A2FC 20000224 */  addiu      $v0, $zero, 0x20
    /* 3D2A89C 8007A300 6C6F000C */  jal        func_8001BDB0
    /* 3D2A8A0 8007A304 4C0062A2 */   sb        $v0, 0x4C($s3)
    /* 3D2A8A4 8007A308 0E05010C */  jal        func_80041438
    /* 3D2A8A8 8007A30C 21206002 */   addu      $a0, $s3, $zero
    /* 3D2A8AC 8007A310 4B67010C */  jal        func_80059D2C
    /* 3D2A8B0 8007A314 00000000 */   nop
    /* 3D2A8B4 8007A318 4B67010C */  jal        func_80059D2C
    /* 3D2A8B8 8007A31C FF0F5230 */   andi      $s2, $v0, 0xFFF
    /* 3D2A8BC 8007A320 FF075130 */  andi       $s1, $v0, 0x7FF
    /* 3D2A8C0 8007A324 996D000C */  jal        func_8001B664
    /* 3D2A8C4 8007A328 21202002 */   addu      $a0, $s1, $zero
    /* 3D2A8C8 8007A32C 21204002 */  addu       $a0, $s2, $zero
    /* 3D2A8CC 8007A330 996D000C */  jal        func_8001B664
    /* 3D2A8D0 8007A334 21804000 */   addu      $s0, $v0, $zero
    /* 3D2A8D4 8007A338 18000202 */  mult       $s0, $v0
    /* 3D2A8D8 8007A33C 12400000 */  mflo       $t0
    /* 3D2A8DC 8007A340 4900A292 */  lbu        $v0, 0x49($s5)
    /* 3D2A8E0 8007A344 00000000 */  nop
    /* 3D2A8E4 8007A348 18000201 */  mult       $t0, $v0
    /* 3D2A8E8 8007A34C 21202002 */  addu       $a0, $s1, $zero
    /* 3D2A8EC 8007A350 12400000 */  mflo       $t0
    /* 3D2A8F0 8007A354 03160800 */  sra        $v0, $t0, 24
    /* 3D2A8F4 8007A358 996D000C */  jal        func_8001B664
    /* 3D2A8F8 8007A35C 000082A6 */   sh        $v0, 0x0($s4)
    /* 3D2A8FC 8007A360 21204002 */  addu       $a0, $s2, $zero
    /* 3D2A900 8007A364 876D000C */  jal        func_8001B61C
    /* 3D2A904 8007A368 21804000 */   addu      $s0, $v0, $zero
    /* 3D2A908 8007A36C 18000202 */  mult       $s0, $v0
    /* 3D2A90C 8007A370 12400000 */  mflo       $t0
    /* 3D2A910 8007A374 4900A292 */  lbu        $v0, 0x49($s5)
    /* 3D2A914 8007A378 00000000 */  nop
    /* 3D2A918 8007A37C 18000201 */  mult       $t0, $v0
    /* 3D2A91C 8007A380 21202002 */  addu       $a0, $s1, $zero
    /* 3D2A920 8007A384 12400000 */  mflo       $t0
    /* 3D2A924 8007A388 03160800 */  sra        $v0, $t0, 24
    /* 3D2A928 8007A38C 876D000C */  jal        func_8001B61C
    /* 3D2A92C 8007A390 020082A6 */   sh        $v0, 0x2($s4)
    /* 3D2A930 8007A394 4900A392 */  lbu        $v1, 0x49($s5)
    /* 3D2A934 8007A398 00000000 */  nop
    /* 3D2A938 8007A39C 18004300 */  mult       $v0, $v1
    /* 3D2A93C 8007A3A0 12400000 */  mflo       $t0
    /* 3D2A940 8007A3A4 03130800 */  sra        $v0, $t0, 12
    /* 3D2A944 8007A3A8 040082A6 */  sh         $v0, 0x4($s4)
    /* 3D2A948 8007A3AC 1800A28E */  lw         $v0, 0x18($s5)
    /* 3D2A94C 8007A3B0 0200033C */  lui        $v1, (0x20000 >> 16)
    /* 3D2A950 8007A3B4 24104300 */  and        $v0, $v0, $v1
    /* 3D2A954 8007A3B8 14004010 */  beqz       $v0, .Llevel_55_8007A40C
    /* 3D2A958 8007A3BC 04000224 */   addiu     $v0, $zero, 0x4
    /* 3D2A95C 8007A3C0 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 3D2A960 8007A3C4 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 3D2A964 8007A3C8 00000000 */  nop
    /* 3D2A968 8007A3CC 03006210 */  beq        $v1, $v0, .Llevel_55_8007A3DC
    /* 3D2A96C 8007A3D0 0C000224 */   addiu     $v0, $zero, 0xC
    /* 3D2A970 8007A3D4 0D006214 */  bne        $v1, $v0, .Llevel_55_8007A40C
    /* 3D2A974 8007A3D8 00000000 */   nop
  .Llevel_55_8007A3DC:
    /* 3D2A978 8007A3DC 0780023C */  lui        $v0, %hi(D_8006A084)
    /* 3D2A97C 8007A3E0 84A0428C */  lw         $v0, %lo(D_8006A084)($v0)
    /* 3D2A980 8007A3E4 00008396 */  lhu        $v1, 0x0($s4)
    /* 3D2A984 8007A3E8 83110200 */  sra        $v0, $v0, 6
    /* 3D2A988 8007A3EC 21186200 */  addu       $v1, $v1, $v0
    /* 3D2A98C 8007A3F0 000083A6 */  sh         $v1, 0x0($s4)
    /* 3D2A990 8007A3F4 0780023C */  lui        $v0, %hi(D_8006A088)
    /* 3D2A994 8007A3F8 88A0428C */  lw         $v0, %lo(D_8006A088)($v0)
    /* 3D2A998 8007A3FC 02008396 */  lhu        $v1, 0x2($s4)
    /* 3D2A99C 8007A400 83110200 */  sra        $v0, $v0, 6
    /* 3D2A9A0 8007A404 21186200 */  addu       $v1, $v1, $v0
    /* 3D2A9A4 8007A408 020083A6 */  sh         $v1, 0x2($s4)
  .Llevel_55_8007A40C:
    /* 3D2A9A8 8007A40C 5100A492 */  lbu        $a0, 0x51($s5)
    /* 3D2A9AC 8007A410 00000000 */  nop
    /* 3D2A9B0 8007A414 26008010 */  beqz       $a0, .Llevel_55_8007A4B0
    /* 3D2A9B4 8007A418 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 3D2A9B8 8007A41C 1800A28E */  lw         $v0, 0x18($s5)
    /* 3D2A9BC 8007A420 00000000 */  nop
    /* 3D2A9C0 8007A424 24104300 */  and        $v0, $v0, $v1
    /* 3D2A9C4 8007A428 21004010 */  beqz       $v0, .Llevel_55_8007A4B0
    /* 3D2A9C8 8007A42C 40100400 */   sll       $v0, $a0, 1
    /* 3D2A9CC 8007A430 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3D2A9D0 8007A434 21082200 */  addu       $at, $at, $v0
    /* 3D2A9D4 8007A438 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 3D2A9D8 8007A43C 00000000 */  nop
    /* 3D2A9DC 8007A440 80100300 */  sll        $v0, $v1, 2
    /* 3D2A9E0 8007A444 21104300 */  addu       $v0, $v0, $v1
    /* 3D2A9E4 8007A448 00190200 */  sll        $v1, $v0, 4
    /* 3D2A9E8 8007A44C 23186200 */  subu       $v1, $v1, $v0
    /* 3D2A9EC 8007A450 00008296 */  lhu        $v0, 0x0($s4)
    /* 3D2A9F0 8007A454 C31A0300 */  sra        $v1, $v1, 11
    /* 3D2A9F4 8007A458 21104300 */  addu       $v0, $v0, $v1
    /* 3D2A9F8 8007A45C 000082A6 */  sh         $v0, 0x0($s4)
    /* 3D2A9FC 8007A460 5100A292 */  lbu        $v0, 0x51($s5)
    /* 3D2AA00 8007A464 28000424 */  addiu      $a0, $zero, 0x28
    /* 3D2AA04 8007A468 40100200 */  sll        $v0, $v0, 1
    /* 3D2AA08 8007A46C 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3D2AA0C 8007A470 21082200 */  addu       $at, $at, $v0
    /* 3D2AA10 8007A474 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 3D2AA14 8007A478 46000524 */  addiu      $a1, $zero, 0x46
    /* 3D2AA18 8007A47C 80100300 */  sll        $v0, $v1, 2
    /* 3D2AA1C 8007A480 21104300 */  addu       $v0, $v0, $v1
    /* 3D2AA20 8007A484 00190200 */  sll        $v1, $v0, 4
    /* 3D2AA24 8007A488 23186200 */  subu       $v1, $v1, $v0
    /* 3D2AA28 8007A48C 02008296 */  lhu        $v0, 0x2($s4)
    /* 3D2AA2C 8007A490 C31A0300 */  sra        $v1, $v1, 11
    /* 3D2AA30 8007A494 21104300 */  addu       $v0, $v0, $v1
    /* 3D2AA34 8007A498 47E2000C */  jal        func_8003891C
    /* 3D2AA38 8007A49C 020082A6 */   sh        $v0, 0x2($s4)
    /* 3D2AA3C 8007A4A0 04008396 */  lhu        $v1, 0x4($s4)
    /* 3D2AA40 8007A4A4 00000000 */  nop
    /* 3D2AA44 8007A4A8 21186200 */  addu       $v1, $v1, $v0
    /* 3D2AA48 8007A4AC 040083A6 */  sh         $v1, 0x4($s4)
  .Llevel_55_8007A4B0:
    /* 3D2AA4C 8007A4B0 00008286 */  lh         $v0, 0x0($s4)
    /* 3D2AA50 8007A4B4 0C00638E */  lw         $v1, 0xC($s3)
    /* 3D2AA54 8007A4B8 80100200 */  sll        $v0, $v0, 2
    /* 3D2AA58 8007A4BC 21186200 */  addu       $v1, $v1, $v0
    /* 3D2AA5C 8007A4C0 0C0063AE */  sw         $v1, 0xC($s3)
    /* 3D2AA60 8007A4C4 02008286 */  lh         $v0, 0x2($s4)
    /* 3D2AA64 8007A4C8 1000638E */  lw         $v1, 0x10($s3)
    /* 3D2AA68 8007A4CC 80100200 */  sll        $v0, $v0, 2
    /* 3D2AA6C 8007A4D0 21186200 */  addu       $v1, $v1, $v0
    /* 3D2AA70 8007A4D4 100063AE */  sw         $v1, 0x10($s3)
    /* 3D2AA74 8007A4D8 04008286 */  lh         $v0, 0x4($s4)
    /* 3D2AA78 8007A4DC 1400638E */  lw         $v1, 0x14($s3)
    /* 3D2AA7C 8007A4E0 80100200 */  sll        $v0, $v0, 2
    /* 3D2AA80 8007A4E4 21186200 */  addu       $v1, $v1, $v0
    /* 3D2AA84 8007A4E8 4B67010C */  jal        func_80059D2C
    /* 3D2AA88 8007A4EC 140063AE */   sw        $v1, 0x14($s3)
    /* 3D2AA8C 8007A4F0 4B67010C */  jal        func_80059D2C
    /* 3D2AA90 8007A4F4 450062A2 */   sb        $v0, 0x45($s3)
    /* 3D2AA94 8007A4F8 4B67010C */  jal        func_80059D2C
    /* 3D2AA98 8007A4FC 460062A2 */   sb        $v0, 0x46($s3)
    /* 3D2AA9C 8007A500 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3D2AAA0 8007A504 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3D2AAA4 8007A508 4B67010C */  jal        func_80059D2C
    /* 3D2AAA8 8007A50C 060082A6 */   sh        $v0, 0x6($s4)
    /* 3D2AAAC 8007A510 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3D2AAB0 8007A514 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3D2AAB4 8007A518 4B67010C */  jal        func_80059D2C
    /* 3D2AAB8 8007A51C 080082A6 */   sh        $v0, 0x8($s4)
    /* 3D2AABC 8007A520 32000424 */  addiu      $a0, $zero, 0x32
    /* 3D2AAC0 8007A524 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3D2AAC4 8007A528 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3D2AAC8 8007A52C 0A0082A6 */  sh         $v0, 0xA($s4)
    /* 3D2AACC 8007A530 1400A28E */  lw         $v0, 0x14($s5)
    /* 3D2AAD0 8007A534 50000524 */  addiu      $a1, $zero, 0x50
    /* 3D2AAD4 8007A538 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 3D2AAD8 8007A53C 47E2000C */  jal        func_8003891C
    /* 3D2AADC 8007A540 100082AE */   sw        $v0, 0x10($s4)
    /* 3D2AAE0 8007A544 CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2AAE4 8007A548 0C0082AE */   sw        $v0, 0xC($s4)
  .Llevel_55_8007A54C:
    /* 3D2AAE8 8007A54C 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2AAEC 8007A550 0000708E */  lw         $s0, 0x0($s3)
    /* 3D2AAF0 8007A554 6C6F000C */  jal        func_8001BDB0
    /* 3D2AAF4 8007A558 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3D2AAF8 8007A55C 0E05010C */  jal        func_80041438
    /* 3D2AAFC 8007A560 21206002 */   addu      $a0, $s3, $zero
    /* 3D2AB00 8007A564 10000224 */  addiu      $v0, $zero, 0x10
    /* 3D2AB04 8007A568 3B000324 */  addiu      $v1, $zero, 0x3B
    /* 3D2AB08 8007A56C 000002A6 */  sh         $v0, 0x0($s0)
    /* 3D2AB0C 8007A570 80000224 */  addiu      $v0, $zero, 0x80
    /* 3D2AB10 8007A574 570063A2 */  sb         $v1, 0x57($s3)
    /* 3D2AB14 8007A578 540062A2 */  sb         $v0, 0x54($s3)
    /* 3D2AB18 8007A57C 550062A2 */  sb         $v0, 0x55($s3)
    /* 3D2AB1C 8007A580 560060A2 */  sb         $zero, 0x56($s3)
    /* 3D2AB20 8007A584 3600A486 */  lh         $a0, 0x36($s5)
    /* 3D2AB24 8007A588 98010224 */  addiu      $v0, $zero, 0x198
    /* 3D2AB28 8007A58C 04008210 */  beq        $a0, $v0, .Llevel_55_8007A5A0
    /* 3D2AB2C 8007A590 01000224 */   addiu     $v0, $zero, 0x1
    /* 3D2AB30 8007A594 C2020224 */  addiu      $v0, $zero, 0x2C2
    /* 3D2AB34 8007A598 05008214 */  bne        $a0, $v0, .Llevel_55_8007A5B0
    /* 3D2AB38 8007A59C 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_55_8007A5A0:
    /* 3D2AB3C 8007A5A0 020002A2 */  sb         $v0, 0x2($s0)
    /* 3D2AB40 8007A5A4 030002A2 */  sb         $v0, 0x3($s0)
    /* 3D2AB44 8007A5A8 7AE90108 */  j          .Llevel_55_8007A5E8
    /* 3D2AB48 8007A5AC 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_55_8007A5B0:
    /* 3D2AB4C 8007A5B0 70020224 */  addiu      $v0, $zero, 0x270
    /* 3D2AB50 8007A5B4 0A008214 */  bne        $a0, $v0, .Llevel_55_8007A5E0
    /* 3D2AB54 8007A5B8 60000224 */   addiu     $v0, $zero, 0x60
    /* 3D2AB58 8007A5BC 02000224 */  addiu      $v0, $zero, 0x2
    /* 3D2AB5C 8007A5C0 020002A2 */  sb         $v0, 0x2($s0)
    /* 3D2AB60 8007A5C4 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 3D2AB64 8007A5C8 540062A2 */  sb         $v0, 0x54($s3)
    /* 3D2AB68 8007A5CC 550062A2 */  sb         $v0, 0x55($s3)
    /* 3D2AB6C 8007A5D0 560062A2 */  sb         $v0, 0x56($s3)
    /* 3D2AB70 8007A5D4 60000224 */  addiu      $v0, $zero, 0x60
    /* 3D2AB74 8007A5D8 79E90108 */  j          .Llevel_55_8007A5E4
    /* 3D2AB78 8007A5DC 570063A2 */   sb        $v1, 0x57($s3)
  .Llevel_55_8007A5E0:
    /* 3D2AB7C 8007A5E0 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_55_8007A5E4:
    /* 3D2AB80 8007A5E4 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_55_8007A5E8:
    /* 3D2AB84 8007A5E8 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 3D2AB88 8007A5EC 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2AB8C 8007A5F0 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* 3D2AB90 8007A5F4 AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* 3D2AB94 8007A5F8 21280002 */  addu       $a1, $s0, $zero
    /* 3D2AB98 8007A5FC FE000224 */  addiu      $v0, $zero, 0xFE
    /* 3D2AB9C 8007A600 DB6F000C */  jal        func_8001BF6C
    /* 3D2ABA0 8007A604 470062A2 */   sb        $v0, 0x47($s3)
    /* 3D2ABA4 8007A608 21204000 */  addu       $a0, $v0, $zero
    /* 3D2ABA8 8007A60C 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* 3D2ABAC 8007A610 B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* 3D2ABB0 8007A614 1400658E */  lw         $a1, 0x14($s3)
    /* 3D2ABB4 8007A618 21300000 */  addu       $a2, $zero, $zero
    /* 3D2ABB8 8007A61C 2E6D000C */  jal        func_8001B4B8
    /* 3D2ABBC 8007A620 23284500 */   subu      $a1, $v0, $a1
    /* 3D2ABC0 8007A624 21300000 */  addu       $a2, $zero, $zero
    /* 3D2ABC4 8007A628 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 3D2ABC8 8007A62C 450062A2 */  sb         $v0, 0x45($s3)
    /* 3D2ABCC 8007A630 0000038E */  lw         $v1, 0x0($s0)
    /* 3D2ABD0 8007A634 0C00648E */  lw         $a0, 0xC($s3)
    /* 3D2ABD4 8007A638 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* 3D2ABD8 8007A63C B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* 3D2ABDC 8007A640 1000658E */  lw         $a1, 0x10($s3)
    /* 3D2ABE0 8007A644 23206400 */  subu       $a0, $v1, $a0
    /* 3D2ABE4 8007A648 2E6D000C */  jal        func_8001B4B8
    /* 3D2ABE8 8007A64C 23284500 */   subu      $a1, $v0, $a1
    /* 3D2ABEC 8007A650 CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2ABF0 8007A654 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_55_8007A658:
    /* 3D2ABF4 8007A658 0000708E */  lw         $s0, 0x0($s3)
    /* 3D2ABF8 8007A65C 6C6F000C */  jal        func_8001BDB0
    /* 3D2ABFC 8007A660 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3D2AC00 8007A664 0E05010C */  jal        func_80041438
    /* 3D2AC04 8007A668 21206002 */   addu      $a0, $s3, $zero
    /* 3D2AC08 8007A66C 10000224 */  addiu      $v0, $zero, 0x10
    /* 3D2AC0C 8007A670 000002AE */  sw         $v0, 0x0($s0)
    /* 3D2AC10 8007A674 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 3D2AC14 8007A678 570062A2 */  sb         $v0, 0x57($s3)
    /* 3D2AC18 8007A67C 80000224 */  addiu      $v0, $zero, 0x80
    /* 3D2AC1C 8007A680 540062A2 */  sb         $v0, 0x54($s3)
    /* 3D2AC20 8007A684 40000224 */  addiu      $v0, $zero, 0x40
    /* 3D2AC24 8007A688 550062A2 */  sb         $v0, 0x55($s3)
    /* 3D2AC28 8007A68C 4B67010C */  jal        func_80059D2C
    /* 3D2AC2C 8007A690 560060A2 */   sb        $zero, 0x56($s3)
    /* 3D2AC30 8007A694 4B67010C */  jal        func_80059D2C
    /* 3D2AC34 8007A698 450062A2 */   sb        $v0, 0x45($s3)
    /* 3D2AC38 8007A69C 460062A2 */  sb         $v0, 0x46($s3)
    /* 3D2AC3C 8007A6A0 46000224 */  addiu      $v0, $zero, 0x46
    /* 3D2AC40 8007A6A4 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 3D2AC44 8007A6A8 04000224 */  addiu      $v0, $zero, 0x4
    /* 3D2AC48 8007A6AC CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2AC4C 8007A6B0 470062A2 */   sb        $v0, 0x47($s3)
  .Llevel_55_8007A6B4:
    /* 3D2AC50 8007A6B4 0000728E */  lw         $s2, 0x0($s3)
    /* 3D2AC54 8007A6B8 0E05010C */  jal        func_80041438
    /* 3D2AC58 8007A6BC 21206002 */   addu      $a0, $s3, $zero
    /* 3D2AC5C 8007A6C0 40000224 */  addiu      $v0, $zero, 0x40
    /* 3D2AC60 8007A6C4 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 3D2AC64 8007A6C8 9C00A016 */  bnez       $s5, .Llevel_55_8007A93C
    /* 3D2AC68 8007A6CC 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* 3D2AC6C 8007A6D0 B8010224 */  addiu      $v0, $zero, 0x1B8
    /* 3D2AC70 8007A6D4 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* 3D2AC74 8007A6D8 D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* 3D2AC78 8007A6DC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3D2AC7C 8007A6E0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3D2AC80 8007A6E4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3D2AC84 8007A6E8 0000A38C */  lw         $v1, 0x0($a1)
    /* 3D2AC88 8007A6EC 07000224 */  addiu      $v0, $zero, 0x7
    /* 3D2AC8C 8007A6F0 25006214 */  bne        $v1, $v0, .Llevel_55_8007A788
    /* 3D2AC90 8007A6F4 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3D2AC94 8007A6F8 0C007026 */  addiu      $s0, $s3, 0xC
    /* 3D2AC98 8007A6FC 21200002 */  addu       $a0, $s0, $zero
    /* 3D2AC9C 8007A700 6C6F000C */  jal        func_8001BDB0
    /* 3D2ACA0 8007A704 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 3D2ACA4 8007A708 4000A427 */  addiu      $a0, $sp, 0x40
    /* 3D2ACA8 8007A70C 2000B127 */  addiu      $s1, $sp, 0x20
    /* 3D2ACAC 8007A710 21282002 */  addu       $a1, $s1, $zero
    /* 3D2ACB0 8007A714 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 3D2ACB4 8007A718 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 3D2ACB8 8007A71C 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* 3D2ACBC 8007A720 CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* 3D2ACC0 8007A724 21300000 */  addu       $a2, $zero, $zero
    /* 3D2ACC4 8007A728 4000A0A3 */  sb         $zero, 0x40($sp)
    /* 3D2ACC8 8007A72C 02190300 */  srl        $v1, $v1, 4
    /* 3D2ACCC 8007A730 00140200 */  sll        $v0, $v0, 16
    /* 3D2ACD0 8007A734 03150200 */  sra        $v0, $v0, 20
    /* 3D2ACD4 8007A738 23100200 */  negu       $v0, $v0
    /* 3D2ACD8 8007A73C 4100A2A3 */  sb         $v0, 0x41($sp)
    /* 3D2ACDC 8007A740 B26D000C */  jal        func_8001B6C8
    /* 3D2ACE0 8007A744 4200A3A3 */   sb        $v1, 0x42($sp)
    /* 3D2ACE4 8007A748 21202002 */  addu       $a0, $s1, $zero
    /* 3D2ACE8 8007A74C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3D2ACEC 8007A750 696E000C */  jal        func_8001B9A4
    /* 3D2ACF0 8007A754 2130A000 */   addu      $a2, $a1, $zero
    /* 3D2ACF4 8007A758 21200002 */  addu       $a0, $s0, $zero
    /* 3D2ACF8 8007A75C 21280002 */  addu       $a1, $s0, $zero
    /* 3D2ACFC 8007A760 736F000C */  jal        func_8001BDCC
    /* 3D2AD00 8007A764 1000A627 */   addiu     $a2, $sp, 0x10
    /* 3D2AD04 8007A768 21200002 */  addu       $a0, $s0, $zero
    /* 3D2AD08 8007A76C 21280002 */  addu       $a1, $s0, $zero
    /* 3D2AD0C 8007A770 736F000C */  jal        func_8001BDCC
    /* 3D2AD10 8007A774 1000A627 */   addiu     $a2, $sp, 0x10
    /* 3D2AD14 8007A778 21200002 */  addu       $a0, $s0, $zero
    /* 3D2AD18 8007A77C 21288000 */  addu       $a1, $a0, $zero
    /* 3D2AD1C 8007A780 0AEA0108 */  j          .Llevel_55_8007A828
    /* 3D2AD20 8007A784 1000A627 */   addiu     $a2, $sp, 0x10
  .Llevel_55_8007A788:
    /* 3D2AD24 8007A788 6C6F000C */  jal        func_8001BDB0
    /* 3D2AD28 8007A78C DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 3D2AD2C 8007A790 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 3D2AD30 8007A794 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 3D2AD34 8007A798 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 3D2AD38 8007A79C B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 3D2AD3C 8007A7A0 6800A0A3 */  sb         $zero, 0x68($sp)
    /* 3D2AD40 8007A7A4 07004014 */  bnez       $v0, .Llevel_55_8007A7C4
    /* 3D2AD44 8007A7A8 6900A3A3 */   sb        $v1, 0x69($sp)
    /* 3D2AD48 8007A7AC FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 3D2AD4C 8007A7B0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3D2AD50 8007A7B4 F900422C */  sltiu      $v0, $v0, 0xF9
    /* 3D2AD54 8007A7B8 03004014 */  bnez       $v0, .Llevel_55_8007A7C8
    /* 3D2AD58 8007A7BC 6800A427 */   addiu     $a0, $sp, 0x68
    /* 3D2AD5C 8007A7C0 6900A0A3 */  sb         $zero, 0x69($sp)
  .Llevel_55_8007A7C4:
    /* 3D2AD60 8007A7C4 6800A427 */  addiu      $a0, $sp, 0x68
  .Llevel_55_8007A7C8:
    /* 3D2AD64 8007A7C8 4800B027 */  addiu      $s0, $sp, 0x48
    /* 3D2AD68 8007A7CC 21280002 */  addu       $a1, $s0, $zero
    /* 3D2AD6C 8007A7D0 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* 3D2AD70 8007A7D4 FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* 3D2AD74 8007A7D8 00002292 */  lbu        $v0, 0x0($s1)
    /* 3D2AD78 8007A7DC 21300000 */  addu       $a2, $zero, $zero
    /* 3D2AD7C 8007A7E0 B26D000C */  jal        func_8001B6C8
    /* 3D2AD80 8007A7E4 6A00A2A3 */   sb        $v0, 0x6A($sp)
    /* 3D2AD84 8007A7E8 21200002 */  addu       $a0, $s0, $zero
    /* 3D2AD88 8007A7EC 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3D2AD8C 8007A7F0 696E000C */  jal        func_8001B9A4
    /* 3D2AD90 8007A7F4 2130A000 */   addu      $a2, $a1, $zero
    /* 3D2AD94 8007A7F8 21200002 */  addu       $a0, $s0, $zero
    /* 3D2AD98 8007A7FC 0C007026 */  addiu      $s0, $s3, 0xC
    /* 3D2AD9C 8007A800 21280002 */  addu       $a1, $s0, $zero
    /* 3D2ADA0 8007A804 21300002 */  addu       $a2, $s0, $zero
    /* 3D2ADA4 8007A808 F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 3D2ADA8 8007A80C 0C0062AE */  sw         $v0, 0xC($s3)
    /* 3D2ADAC 8007A810 100060AE */  sw         $zero, 0x10($s3)
    /* 3D2ADB0 8007A814 696E000C */  jal        func_8001B9A4
    /* 3D2ADB4 8007A818 140060AE */   sw        $zero, 0x14($s3)
    /* 3D2ADB8 8007A81C 21200002 */  addu       $a0, $s0, $zero
    /* 3D2ADBC 8007A820 21288000 */  addu       $a1, $a0, $zero
    /* 3D2ADC0 8007A824 F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_55_8007A828:
    /* 3D2ADC4 8007A828 736F000C */  jal        func_8001BDCC
    /* 3D2ADC8 8007A82C 00000000 */   nop
    /* 3D2ADCC 8007A830 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3D2ADD0 8007A834 886E000C */  jal        func_8001BA20
    /* 3D2ADD4 8007A838 21280000 */   addu      $a1, $zero, $zero
    /* 3D2ADD8 8007A83C 21204000 */  addu       $a0, $v0, $zero
    /* 3D2ADDC 8007A840 1800A58F */  lw         $a1, 0x18($sp)
    /* 3D2ADE0 8007A844 2E6D000C */  jal        func_8001B4B8
    /* 3D2ADE4 8007A848 21300000 */   addu      $a2, $zero, $zero
    /* 3D2ADE8 8007A84C 450062A2 */  sb         $v0, 0x45($s3)
    /* 3D2ADEC 8007A850 1000A48F */  lw         $a0, 0x10($sp)
    /* 3D2ADF0 8007A854 1400A58F */  lw         $a1, 0x14($sp)
    /* 3D2ADF4 8007A858 2E6D000C */  jal        func_8001B4B8
    /* 3D2ADF8 8007A85C 21300000 */   addu      $a2, $zero, $zero
    /* 3D2ADFC 8007A860 460062A2 */  sb         $v0, 0x46($s3)
    /* 3D2AE00 8007A864 1000A28F */  lw         $v0, 0x10($sp)
    /* 3D2AE04 8007A868 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 3D2AE08 8007A86C 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 3D2AE0C 8007A870 0680043C */  lui        $a0, %hi(D_800670BC)
    /* 3D2AE10 8007A874 BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* 3D2AE14 8007A878 000042A6 */  sh         $v0, 0x0($s2)
    /* 3D2AE18 8007A87C 1400A28F */  lw         $v0, 0x14($sp)
    /* 3D2AE1C 8007A880 00000000 */  nop
    /* 3D2AE20 8007A884 020042A6 */  sh         $v0, 0x2($s2)
    /* 3D2AE24 8007A888 1800A28F */  lw         $v0, 0x18($sp)
    /* 3D2AE28 8007A88C 00000000 */  nop
    /* 3D2AE2C 8007A890 040042A6 */  sh         $v0, 0x4($s2)
    /* 3D2AE30 8007A894 2B106400 */  sltu       $v0, $v1, $a0
    /* 3D2AE34 8007A898 0A004010 */  beqz       $v0, .Llevel_55_8007A8C4
    /* 3D2AE38 8007A89C 44010524 */   addiu     $a1, $zero, 0x144
    /* 3D2AE3C 8007A8A0 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_55_8007A8A4:
    /* 3D2AE40 8007A8A4 36006284 */  lh         $v0, 0x36($v1)
    /* 3D2AE44 8007A8A8 00000000 */  nop
    /* 3D2AE48 8007A8AC 05004610 */  beq        $v0, $a2, .Llevel_55_8007A8C4
    /* 3D2AE4C 8007A8B0 00000000 */   nop
    /* 3D2AE50 8007A8B4 58006324 */  addiu      $v1, $v1, 0x58
    /* 3D2AE54 8007A8B8 2B106400 */  sltu       $v0, $v1, $a0
    /* 3D2AE58 8007A8BC F9FF4014 */  bnez       $v0, .Llevel_55_8007A8A4
    /* 3D2AE5C 8007A8C0 00000000 */   nop
  .Llevel_55_8007A8C4:
    /* 3D2AE60 8007A8C4 13006010 */  beqz       $v1, .Llevel_55_8007A914
    /* 3D2AE64 8007A8C8 40100500 */   sll       $v0, $a1, 1
    /* 3D2AE68 8007A8CC 0000678C */  lw         $a3, 0x0($v1)
    /* 3D2AE6C 8007A8D0 21104500 */  addu       $v0, $v0, $a1
    /* 3D2AE70 8007A8D4 0000E38C */  lw         $v1, 0x0($a3)
    /* 3D2AE74 8007A8D8 40100200 */  sll        $v0, $v0, 1
    /* 3D2AE78 8007A8DC 21186500 */  addu       $v1, $v1, $a1
    /* 3D2AE7C 8007A8E0 0000E3AC */  sw         $v1, 0x0($a3)
    /* 3D2AE80 8007A8E4 2A186200 */  slt        $v1, $v1, $v0
    /* 3D2AE84 8007A8E8 02006014 */  bnez       $v1, .Llevel_55_8007A8F4
    /* 3D2AE88 8007A8EC 10004426 */   addiu     $a0, $s2, 0x10
    /* 3D2AE8C 8007A8F0 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_55_8007A8F4:
    /* 3D2AE90 8007A8F4 0400E524 */  addiu      $a1, $a3, 0x4
    /* 3D2AE94 8007A8F8 0000E28C */  lw         $v0, 0x0($a3)
    /* 3D2AE98 8007A8FC 08000624 */  addiu      $a2, $zero, 0x8
    /* 3D2AE9C 8007A900 0C004224 */  addiu      $v0, $v0, 0xC
    /* 3D2AEA0 8007A904 2110E200 */  addu       $v0, $a3, $v0
    /* 3D2AEA4 8007A908 080042AE */  sw         $v0, 0x8($s2)
    /* 3D2AEA8 8007A90C 036D000C */  jal        func_8001B40C
    /* 3D2AEAC 8007A910 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_55_8007A914:
    /* 3D2AEB0 8007A914 21206002 */  addu       $a0, $s3, $zero
    /* 3D2AEB4 8007A918 21280000 */  addu       $a1, $zero, $zero
    /* 3D2AEB8 8007A91C 21300000 */  addu       $a2, $zero, $zero
    /* 3D2AEBC 8007A920 6E000224 */  addiu      $v0, $zero, 0x6E
    /* 3D2AEC0 8007A924 070042A2 */  sb         $v0, 0x7($s2)
    /* 3D2AEC4 8007A928 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D2AEC8 8007A92C 9241010C */  jal        func_80050648
    /* 3D2AECC 8007A930 4B0062A2 */   sb        $v0, 0x4B($s3)
    /* 3D2AED0 8007A934 CCEA0108 */  j          .Llevel_55_8007AB30
    /* 3D2AED4 8007A938 21106002 */   addu      $v0, $s3, $zero
  .Llevel_55_8007A93C:
    /* 3D2AED8 8007A93C 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2AEDC 8007A940 6C6F000C */  jal        func_8001BDB0
    /* 3D2AEE0 8007A944 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3D2AEE4 8007A948 30000224 */  addiu      $v0, $zero, 0x30
    /* 3D2AEE8 8007A94C 070042A2 */  sb         $v0, 0x7($s2)
    /* 3D2AEEC 8007A950 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 3D2AEF0 8007A954 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 3D2AEF4 8007A958 07004392 */  lbu        $v1, 0x7($s2)
    /* 3D2AEF8 8007A95C 00000000 */  nop
    /* 3D2AEFC 8007A960 40100300 */  sll        $v0, $v1, 1
    /* 3D2AF00 8007A964 21104300 */  addu       $v0, $v0, $v1
    /* 3D2AF04 8007A968 43100200 */  sra        $v0, $v0, 1
    /* 3D2AF08 8007A96C 540062A2 */  sb         $v0, 0x54($s3)
    /* 3D2AF0C 8007A970 07004392 */  lbu        $v1, 0x7($s2)
    /* 3D2AF10 8007A974 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 3D2AF14 8007A978 560060A2 */  sb         $zero, 0x56($s3)
    /* 3D2AF18 8007A97C 570062A2 */  sb         $v0, 0x57($s3)
    /* 3D2AF1C 8007A980 CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2AF20 8007A984 550063A2 */   sb        $v1, 0x55($s3)
  .Llevel_55_8007A988:
    /* 3D2AF24 8007A988 0000708E */  lw         $s0, 0x0($s3)
    /* 3D2AF28 8007A98C 6C6F000C */  jal        func_8001BDB0
    /* 3D2AF2C 8007A990 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3D2AF30 8007A994 0E05010C */  jal        func_80041438
    /* 3D2AF34 8007A998 21206002 */   addu      $a0, $s3, $zero
    /* 3D2AF38 8007A99C 18000224 */  addiu      $v0, $zero, 0x18
    /* 3D2AF3C 8007A9A0 000002AE */  sw         $v0, 0x0($s0)
    /* 3D2AF40 8007A9A4 30000224 */  addiu      $v0, $zero, 0x30
    /* 3D2AF44 8007A9A8 570062A2 */  sb         $v0, 0x57($s3)
    /* 3D2AF48 8007A9AC 64000224 */  addiu      $v0, $zero, 0x64
    /* 3D2AF4C 8007A9B0 540060A2 */  sb         $zero, 0x54($s3)
    /* 3D2AF50 8007A9B4 550060A2 */  sb         $zero, 0x55($s3)
    /* 3D2AF54 8007A9B8 560060A2 */  sb         $zero, 0x56($s3)
    /* 3D2AF58 8007A9BC 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 3D2AF5C 8007A9C0 4B67010C */  jal        func_80059D2C
    /* 3D2AF60 8007A9C4 470060A2 */   sb        $zero, 0x47($s3)
    /* 3D2AF64 8007A9C8 4B67010C */  jal        func_80059D2C
    /* 3D2AF68 8007A9CC 450062A2 */   sb        $v0, 0x45($s3)
    /* 3D2AF6C 8007A9D0 CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2AF70 8007A9D4 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_55_8007A9D8:
    /* 3D2AF74 8007A9D8 2120A002 */  addu       $a0, $s5, $zero
    /* 3D2AF78 8007A9DC 0C007126 */  addiu      $s1, $s3, 0xC
    /* 3D2AF7C 8007A9E0 4900A592 */  lbu        $a1, 0x49($s5)
    /* 3D2AF80 8007A9E4 0000728E */  lw         $s2, 0x0($s3)
    /* 3D2AF84 8007A9E8 0000B08E */  lw         $s0, 0x0($s5)
    /* 3D2AF88 8007A9EC CC05010C */  jal        func_80041730
    /* 3D2AF8C 8007A9F0 21302002 */   addu      $a2, $s1, $zero
    /* 3D2AF90 8007A9F4 3800028E */  lw         $v0, 0x38($s0)
    /* 3D2AF94 8007A9F8 00000000 */  nop
    /* 3D2AF98 8007A9FC 1A004010 */  beqz       $v0, .Llevel_55_8007AA68
    /* 3D2AF9C 8007AA00 21202002 */   addu      $a0, $s1, $zero
    /* 3D2AFA0 8007AA04 440060A2 */  sb         $zero, 0x44($s3)
    /* 3D2AFA4 8007AA08 3800058E */  lw         $a1, 0x38($s0)
    /* 3D2AFA8 8007AA0C DB6F000C */  jal        func_8001BF6C
    /* 3D2AFAC 8007AA10 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 3D2AFB0 8007AA14 21204000 */  addu       $a0, $v0, $zero
    /* 3D2AFB4 8007AA18 3800038E */  lw         $v1, 0x38($s0)
    /* 3D2AFB8 8007AA1C 1400658E */  lw         $a1, 0x14($s3)
    /* 3D2AFBC 8007AA20 1400628C */  lw         $v0, 0x14($v1)
    /* 3D2AFC0 8007AA24 21300000 */  addu       $a2, $zero, $zero
    /* 3D2AFC4 8007AA28 2E6D000C */  jal        func_8001B4B8
    /* 3D2AFC8 8007AA2C 23284500 */   subu      $a1, $v0, $a1
    /* 3D2AFCC 8007AA30 21300000 */  addu       $a2, $zero, $zero
    /* 3D2AFD0 8007AA34 450062A2 */  sb         $v0, 0x45($s3)
    /* 3D2AFD4 8007AA38 3800028E */  lw         $v0, 0x38($s0)
    /* 3D2AFD8 8007AA3C 0C00648E */  lw         $a0, 0xC($s3)
    /* 3D2AFDC 8007AA40 1000658E */  lw         $a1, 0x10($s3)
    /* 3D2AFE0 8007AA44 0C00438C */  lw         $v1, 0xC($v0)
    /* 3D2AFE4 8007AA48 1000428C */  lw         $v0, 0x10($v0)
    /* 3D2AFE8 8007AA4C 23206400 */  subu       $a0, $v1, $a0
    /* 3D2AFEC 8007AA50 2E6D000C */  jal        func_8001B4B8
    /* 3D2AFF0 8007AA54 23284500 */   subu      $a1, $v0, $a1
    /* 3D2AFF4 8007AA58 460062A2 */  sb         $v0, 0x46($s3)
    /* 3D2AFF8 8007AA5C 3800028E */  lw         $v0, 0x38($s0)
    /* 3D2AFFC 8007AA60 B2EA0108 */  j          .Llevel_55_8007AAC8
    /* 3D2B000 8007AA64 080042AE */   sw        $v0, 0x8($s2)
  .Llevel_55_8007AA68:
    /* 3D2B004 8007AA68 2C000526 */  addiu      $a1, $s0, 0x2C
    /* 3D2B008 8007AA6C DB6F000C */  jal        func_8001BF6C
    /* 3D2B00C 8007AA70 440060A2 */   sb        $zero, 0x44($s3)
    /* 3D2B010 8007AA74 21204000 */  addu       $a0, $v0, $zero
    /* 3D2B014 8007AA78 3400028E */  lw         $v0, 0x34($s0)
    /* 3D2B018 8007AA7C 1400658E */  lw         $a1, 0x14($s3)
    /* 3D2B01C 8007AA80 21300000 */  addu       $a2, $zero, $zero
    /* 3D2B020 8007AA84 2E6D000C */  jal        func_8001B4B8
    /* 3D2B024 8007AA88 23284500 */   subu      $a1, $v0, $a1
    /* 3D2B028 8007AA8C 21300000 */  addu       $a2, $zero, $zero
    /* 3D2B02C 8007AA90 450062A2 */  sb         $v0, 0x45($s3)
    /* 3D2B030 8007AA94 2C00038E */  lw         $v1, 0x2C($s0)
    /* 3D2B034 8007AA98 0C00648E */  lw         $a0, 0xC($s3)
    /* 3D2B038 8007AA9C 3000028E */  lw         $v0, 0x30($s0)
    /* 3D2B03C 8007AAA0 1000658E */  lw         $a1, 0x10($s3)
    /* 3D2B040 8007AAA4 23206400 */  subu       $a0, $v1, $a0
    /* 3D2B044 8007AAA8 2E6D000C */  jal        func_8001B4B8
    /* 3D2B048 8007AAAC 23284500 */   subu      $a1, $v0, $a1
    /* 3D2B04C 8007AAB0 4900A392 */  lbu        $v1, 0x49($s5)
    /* 3D2B050 8007AAB4 02004224 */  addiu      $v0, $v0, 0x2
    /* 3D2B054 8007AAB8 80180300 */  sll        $v1, $v1, 2
    /* 3D2B058 8007AABC 23104300 */  subu       $v0, $v0, $v1
    /* 3D2B05C 8007AAC0 460062A2 */  sb         $v0, 0x46($s3)
    /* 3D2B060 8007AAC4 080040AE */  sw         $zero, 0x8($s2)
  .Llevel_55_8007AAC8:
    /* 3D2B064 8007AAC8 0E05010C */  jal        func_80041438
    /* 3D2B068 8007AACC 21206002 */   addu      $a0, $s3, $zero
    /* 3D2B06C 8007AAD0 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2B070 8007AAD4 F4FF0524 */  addiu      $a1, $zero, -0xC
    /* 3D2B074 8007AAD8 06000624 */  addiu      $a2, $zero, 0x6
    /* 3D2B078 8007AADC E000073C */  lui        $a3, (0xE04040 >> 16)
    /* 3D2B07C 8007AAE0 4040E734 */  ori        $a3, $a3, (0xE04040 & 0xFFFF)
    /* 3D2B080 8007AAE4 0A000224 */  addiu      $v0, $zero, 0xA
    /* 3D2B084 8007AAE8 000042A6 */  sh         $v0, 0x0($s2)
    /* 3D2B088 8007AAEC A0000224 */  addiu      $v0, $zero, 0xA0
    /* 3D2B08C 8007AAF0 BF40010C */  jal        func_800502FC
    /* 3D2B090 8007AAF4 020042A6 */   sh        $v0, 0x2($s2)
    /* 3D2B094 8007AAF8 CBEA0108 */  j          .Llevel_55_8007AB2C
    /* 3D2B098 8007AAFC 040042AE */   sw        $v0, 0x4($s2)
  .Llevel_55_8007AB00:
    /* 3D2B09C 8007AB00 0300A012 */  beqz       $s5, .Llevel_55_8007AB10
    /* 3D2B0A0 8007AB04 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3D2B0A4 8007AB08 C7EA0108 */  j          .Llevel_55_8007AB1C
    /* 3D2B0A8 8007AB0C 0C006426 */   addiu     $a0, $s3, 0xC
  .Llevel_55_8007AB10:
    /* 3D2B0AC 8007AB10 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3D2B0B0 8007AB14 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 3D2B0B4 8007AB18 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_55_8007AB1C:
    /* 3D2B0B8 8007AB1C 6C6F000C */  jal        func_8001BDB0
    /* 3D2B0BC 8007AB20 00000000 */   nop
    /* 3D2B0C0 8007AB24 0E05010C */  jal        func_80041438
    /* 3D2B0C4 8007AB28 21206002 */   addu      $a0, $s3, $zero
  .Llevel_55_8007AB2C:
    /* 3D2B0C8 8007AB2C 21106002 */  addu       $v0, $s3, $zero
  .Llevel_55_8007AB30:
    /* 3D2B0CC 8007AB30 8800BF8F */  lw         $ra, 0x88($sp)
    /* 3D2B0D0 8007AB34 8400B58F */  lw         $s5, 0x84($sp)
    /* 3D2B0D4 8007AB38 8000B48F */  lw         $s4, 0x80($sp)
    /* 3D2B0D8 8007AB3C 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 3D2B0DC 8007AB40 7800B28F */  lw         $s2, 0x78($sp)
    /* 3D2B0E0 8007AB44 7400B18F */  lw         $s1, 0x74($sp)
    /* 3D2B0E4 8007AB48 7000B08F */  lw         $s0, 0x70($sp)
    /* 3D2B0E8 8007AB4C 9000BD27 */  addiu      $sp, $sp, 0x90
    /* 3D2B0EC 8007AB50 0800E003 */  jr         $ra
    /* 3D2B0F0 8007AB54 00000000 */   nop
endlabel func_level_55_80079E80
