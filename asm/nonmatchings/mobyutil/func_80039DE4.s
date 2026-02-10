.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80039DE4, 0x2F4

glabel func_80039DE4
    /* 2A5E4 80039DE4 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 2A5E8 80039DE8 4400B5AF */  sw         $s5, 0x44($sp)
    /* 2A5EC 80039DEC 6C00B58F */  lw         $s5, 0x6C($sp)
    /* 2A5F0 80039DF0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 2A5F4 80039DF4 21988000 */  addu       $s3, $a0, $zero
    /* 2A5F8 80039DF8 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 2A5FC 80039DFC 21B8A000 */  addu       $s7, $a1, $zero
    /* 2A600 80039E00 3400B1AF */  sw         $s1, 0x34($sp)
    /* 2A604 80039E04 2188E000 */  addu       $s1, $a3, $zero
    /* 2A608 80039E08 2800A6AF */  sw         $a2, 0x28($sp)
    /* 2A60C 80039E0C 21300000 */  addu       $a2, $zero, $zero
    /* 2A610 80039E10 5400BFAF */  sw         $ra, 0x54($sp)
    /* 2A614 80039E14 5000BEAF */  sw         $fp, 0x50($sp)
    /* 2A618 80039E18 4800B6AF */  sw         $s6, 0x48($sp)
    /* 2A61C 80039E1C 4000B4AF */  sw         $s4, 0x40($sp)
    /* 2A620 80039E20 3800B2AF */  sw         $s2, 0x38($sp)
    /* 2A624 80039E24 3000B0AF */  sw         $s0, 0x30($sp)
    /* 2A628 80039E28 0C00638E */  lw         $v1, 0xC($s3)
    /* 2A62C 80039E2C 0000E48E */  lw         $a0, 0x0($s7)
    /* 2A630 80039E30 1000628E */  lw         $v0, 0x10($s3)
    /* 2A634 80039E34 0400E58E */  lw         $a1, 0x4($s7)
    /* 2A638 80039E38 6800B08F */  lw         $s0, 0x68($sp)
    /* 2A63C 80039E3C 7800B68F */  lw         $s6, 0x78($sp)
    /* 2A640 80039E40 7C00BE8F */  lw         $fp, 0x7C($sp)
    /* 2A644 80039E44 23206400 */  subu       $a0, $v1, $a0
    /* 2A648 80039E48 2E6D000C */  jal        func_8001B4B8
    /* 2A64C 80039E4C 23284500 */   subu      $a1, $v0, $a1
    /* 2A650 80039E50 21904000 */  addu       $s2, $v0, $zero
    /* 2A654 80039E54 21202002 */  addu       $a0, $s1, $zero
    /* 2A658 80039E58 FF005132 */  andi       $s1, $s2, 0xFF
    /* 2A65C 80039E5C 76E1000C */  jal        func_800385D8
    /* 2A660 80039E60 21282002 */   addu      $a1, $s1, $zero
    /* 2A664 80039E64 21A04000 */  addu       $s4, $v0, $zero
    /* 2A668 80039E68 02008106 */  bgez       $s4, .L80039E74
    /* 2A66C 80039E6C 21108002 */   addu      $v0, $s4, $zero
    /* 2A670 80039E70 23100200 */  negu       $v0, $v0
  .L80039E74:
    /* 2A674 80039E74 2A805000 */  slt        $s0, $v0, $s0
    /* 2A678 80039E78 8A000016 */  bnez       $s0, .L8003A0A4
    /* 2A67C 80039E7C 00000000 */   nop
    /* 2A680 80039E80 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2A684 80039E84 1100C212 */  beq        $s6, $v0, .L80039ECC
    /* 2A688 80039E88 21202002 */   addu      $a0, $s1, $zero
    /* 2A68C 80039E8C A76F000C */  jal        func_8001BE9C
    /* 2A690 80039E90 2128C002 */   addu      $a1, $s6, $zero
    /* 2A694 80039E94 05004228 */  slti       $v0, $v0, 0x5
    /* 2A698 80039E98 0B004010 */  beqz       $v0, .L80039EC8
    /* 2A69C 80039E9C 2120C002 */   addu      $a0, $s6, $zero
    /* 2A6A0 80039EA0 76E1000C */  jal        func_800385D8
    /* 2A6A4 80039EA4 21282002 */   addu      $a1, $s1, $zero
    /* 2A6A8 80039EA8 03008106 */  bgez       $s4, .L80039EB8
    /* 2A6AC 80039EAC 00000000 */   nop
    /* 2A6B0 80039EB0 18004004 */  bltz       $v0, .L80039F14
    /* 2A6B4 80039EB4 00000000 */   nop
  .L80039EB8:
    /* 2A6B8 80039EB8 0300801A */  blez       $s4, .L80039EC8
    /* 2A6BC 80039EBC 00000000 */   nop
    /* 2A6C0 80039EC0 7800401C */  bgtz       $v0, .L8003A0A4
    /* 2A6C4 80039EC4 00010224 */   addiu     $v0, $zero, 0x100
  .L80039EC8:
    /* 2A6C8 80039EC8 FF000224 */  addiu      $v0, $zero, 0xFF
  .L80039ECC:
    /* 2A6CC 80039ECC 1300C213 */  beq        $fp, $v0, .L80039F1C
    /* 2A6D0 80039ED0 FF005032 */   andi      $s0, $s2, 0xFF
    /* 2A6D4 80039ED4 21200002 */  addu       $a0, $s0, $zero
    /* 2A6D8 80039ED8 A76F000C */  jal        func_8001BE9C
    /* 2A6DC 80039EDC 2128C003 */   addu      $a1, $fp, $zero
    /* 2A6E0 80039EE0 05004228 */  slti       $v0, $v0, 0x5
    /* 2A6E4 80039EE4 0D004010 */  beqz       $v0, .L80039F1C
    /* 2A6E8 80039EE8 2120C003 */   addu      $a0, $fp, $zero
    /* 2A6EC 80039EEC 76E1000C */  jal        func_800385D8
    /* 2A6F0 80039EF0 21280002 */   addu      $a1, $s0, $zero
    /* 2A6F4 80039EF4 03008106 */  bgez       $s4, .L80039F04
    /* 2A6F8 80039EF8 00000000 */   nop
    /* 2A6FC 80039EFC 05004004 */  bltz       $v0, .L80039F14
    /* 2A700 80039F00 00000000 */   nop
  .L80039F04:
    /* 2A704 80039F04 0500801A */  blez       $s4, .L80039F1C
    /* 2A708 80039F08 00000000 */   nop
    /* 2A70C 80039F0C 03004018 */  blez       $v0, .L80039F1C
    /* 2A710 80039F10 00000000 */   nop
  .L80039F14:
    /* 2A714 80039F14 29E80008 */  j          .L8003A0A4
    /* 2A718 80039F18 00010224 */   addiu     $v0, $zero, 0x100
  .L80039F1C:
    /* 2A71C 80039F1C 03008106 */  bgez       $s4, .L80039F2C
    /* 2A720 80039F20 00000000 */   nop
    /* 2A724 80039F24 CCE70008 */  j          .L80039F30
    /* 2A728 80039F28 03005226 */   addiu     $s2, $s2, 0x3
  .L80039F2C:
    /* 2A72C 80039F2C FDFF5226 */  addiu      $s2, $s2, -0x3
  .L80039F30:
    /* 2A730 80039F30 FF004332 */  andi       $v1, $s2, 0xFF
    /* 2A734 80039F34 40180300 */  sll        $v1, $v1, 1
    /* 2A738 80039F38 0680013C */  lui        $at, %hi(D_80061C58)
    /* 2A73C 80039F3C 21082300 */  addu       $at, $at, $v1
    /* 2A740 80039F40 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 2A744 80039F44 2800A88F */  lw         $t0, 0x28($sp)
    /* 2A748 80039F48 00000000 */  nop
    /* 2A74C 80039F4C 18004800 */  mult       $v0, $t0
    /* 2A750 80039F50 0000E78E */  lw         $a3, 0x0($s7)
    /* 2A754 80039F54 12400000 */  mflo       $t0
    /* 2A758 80039F58 03130800 */  sra        $v0, $t0, 12
    /* 2A75C 80039F5C 2138E200 */  addu       $a3, $a3, $v0
    /* 2A760 80039F60 1800A7AF */  sw         $a3, 0x18($sp)
    /* 2A764 80039F64 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 2A768 80039F68 21082300 */  addu       $at, $at, $v1
    /* 2A76C 80039F6C D81B2284 */  lh         $v0, %lo(D_80061BD8)($at)
    /* 2A770 80039F70 2800A88F */  lw         $t0, 0x28($sp)
    /* 2A774 80039F74 00000000 */  nop
    /* 2A778 80039F78 18004800 */  mult       $v0, $t0
    /* 2A77C 80039F7C 21300000 */  addu       $a2, $zero, $zero
    /* 2A780 80039F80 0400E58E */  lw         $a1, 0x4($s7)
    /* 2A784 80039F84 12400000 */  mflo       $t0
    /* 2A788 80039F88 03130800 */  sra        $v0, $t0, 12
    /* 2A78C 80039F8C 2128A200 */  addu       $a1, $a1, $v0
    /* 2A790 80039F90 1C00A5AF */  sw         $a1, 0x1C($sp)
    /* 2A794 80039F94 0C00648E */  lw         $a0, 0xC($s3)
    /* 2A798 80039F98 1000628E */  lw         $v0, 0x10($s3)
    /* 2A79C 80039F9C 2320E400 */  subu       $a0, $a3, $a0
    /* 2A7A0 80039FA0 2E6D000C */  jal        func_8001B4B8
    /* 2A7A4 80039FA4 2328A200 */   subu      $a1, $a1, $v0
    /* 2A7A8 80039FA8 21804000 */  addu       $s0, $v0, $zero
    /* 2A7AC 80039FAC 0680033C */  lui        $v1, %hi(D_80067018)
    /* 2A7B0 80039FB0 1870638C */  lw         $v1, %lo(D_80067018)($v1)
    /* 2A7B4 80039FB4 03000224 */  addiu      $v0, $zero, 0x3
    /* 2A7B8 80039FB8 04006214 */  bne        $v1, $v0, .L80039FCC
    /* 2A7BC 80039FBC 04000224 */   addiu     $v0, $zero, 0x4
    /* 2A7C0 80039FC0 43101500 */  sra        $v0, $s5, 1
    /* 2A7C4 80039FC4 F6E70008 */  j          .L80039FD8
    /* 2A7C8 80039FC8 21A8A202 */   addu      $s5, $s5, $v0
  .L80039FCC:
    /* 2A7CC 80039FCC 02006214 */  bne        $v1, $v0, .L80039FD8
    /* 2A7D0 80039FD0 00000000 */   nop
    /* 2A7D4 80039FD4 40A81500 */  sll        $s5, $s5, 1
  .L80039FD8:
    /* 2A7D8 80039FD8 8800A88F */  lw         $t0, 0x88($sp)
    /* 2A7DC 80039FDC 00000000 */  nop
    /* 2A7E0 80039FE0 08000231 */  andi       $v0, $t0, 0x8
    /* 2A7E4 80039FE4 1A004010 */  beqz       $v0, .L8003A050
    /* 2A7E8 80039FE8 21300000 */   addu      $a2, $zero, $zero
    /* 2A7EC 80039FEC 0000E38E */  lw         $v1, 0x0($s7)
    /* 2A7F0 80039FF0 0C00648E */  lw         $a0, 0xC($s3)
    /* 2A7F4 80039FF4 0400E28E */  lw         $v0, 0x4($s7)
    /* 2A7F8 80039FF8 1000658E */  lw         $a1, 0x10($s3)
    /* 2A7FC 80039FFC 23206400 */  subu       $a0, $v1, $a0
    /* 2A800 8003A000 2E6D000C */  jal        func_8001B4B8
    /* 2A804 8003A004 23284500 */   subu      $a1, $v0, $a1
    /* 2A808 8003A008 21206002 */  addu       $a0, $s3, $zero
    /* 2A80C 8003A00C 21284000 */  addu       $a1, $v0, $zero
    /* 2A810 8003A010 7000A68F */  lw         $a2, 0x70($sp)
    /* 2A814 8003A014 21380000 */  addu       $a3, $zero, $zero
    /* 2A818 8003A018 1000A0AF */  sw         $zero, 0x10($sp)
    /* 2A81C 8003A01C 6ADF000C */  jal        func_80037DA8
    /* 2A820 8003A020 1400A0AF */   sw        $zero, 0x14($sp)
    /* 2A824 8003A024 21206002 */  addu       $a0, $s3, $zero
    /* 2A828 8003A028 8000A78F */  lw         $a3, 0x80($sp)
    /* 2A82C 8003A02C 8400A88F */  lw         $t0, 0x84($sp)
    /* 2A830 8003A030 21280002 */  addu       $a1, $s0, $zero
    /* 2A834 8003A034 1000A8AF */  sw         $t0, 0x10($sp)
    /* 2A838 8003A038 8800A88F */  lw         $t0, 0x88($sp)
    /* 2A83C 8003A03C 2130A002 */  addu       $a2, $s5, $zero
    /* 2A840 8003A040 E2E0000C */  jal        func_80038388
    /* 2A844 8003A044 1400A8AF */   sw        $t0, 0x14($sp)
    /* 2A848 8003A048 24E80008 */  j          .L8003A090
    /* 2A84C 8003A04C 00000000 */   nop
  .L8003A050:
    /* 2A850 8003A050 21206002 */  addu       $a0, $s3, $zero
    /* 2A854 8003A054 21280002 */  addu       $a1, $s0, $zero
    /* 2A858 8003A058 7000A68F */  lw         $a2, 0x70($sp)
    /* 2A85C 8003A05C 7400A78F */  lw         $a3, 0x74($sp)
    /* 2A860 8003A060 01000224 */  addiu      $v0, $zero, 0x1
    /* 2A864 8003A064 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2A868 8003A068 6ADF000C */  jal        func_80037DA8
    /* 2A86C 8003A06C 1400A0AF */   sw        $zero, 0x14($sp)
    /* 2A870 8003A070 09004010 */  beqz       $v0, .L8003A098
    /* 2A874 8003A074 21206002 */   addu      $a0, $s3, $zero
    /* 2A878 8003A078 8800A88F */  lw         $t0, 0x88($sp)
    /* 2A87C 8003A07C 8000A68F */  lw         $a2, 0x80($sp)
    /* 2A880 8003A080 8400A78F */  lw         $a3, 0x84($sp)
    /* 2A884 8003A084 2128A002 */  addu       $a1, $s5, $zero
    /* 2A888 8003A088 A4E0000C */  jal        func_80038290
    /* 2A88C 8003A08C 1000A8AF */   sw        $t0, 0x10($sp)
  .L8003A090:
    /* 2A890 8003A090 04004014 */  bnez       $v0, .L8003A0A4
    /* 2A894 8003A094 23100200 */   negu      $v0, $v0
  .L8003A098:
    /* 2A898 8003A098 02008106 */  bgez       $s4, .L8003A0A4
    /* 2A89C 8003A09C 21108002 */   addu      $v0, $s4, $zero
    /* 2A8A0 8003A0A0 23100200 */  negu       $v0, $v0
  .L8003A0A4:
    /* 2A8A4 8003A0A4 5400BF8F */  lw         $ra, 0x54($sp)
    /* 2A8A8 8003A0A8 5000BE8F */  lw         $fp, 0x50($sp)
    /* 2A8AC 8003A0AC 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 2A8B0 8003A0B0 4800B68F */  lw         $s6, 0x48($sp)
    /* 2A8B4 8003A0B4 4400B58F */  lw         $s5, 0x44($sp)
    /* 2A8B8 8003A0B8 4000B48F */  lw         $s4, 0x40($sp)
    /* 2A8BC 8003A0BC 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 2A8C0 8003A0C0 3800B28F */  lw         $s2, 0x38($sp)
    /* 2A8C4 8003A0C4 3400B18F */  lw         $s1, 0x34($sp)
    /* 2A8C8 8003A0C8 3000B08F */  lw         $s0, 0x30($sp)
    /* 2A8CC 8003A0CC 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 2A8D0 8003A0D0 0800E003 */  jr         $ra
    /* 2A8D4 8003A0D4 00000000 */   nop
endlabel func_80039DE4
