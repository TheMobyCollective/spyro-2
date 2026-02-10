.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8006DFB8, 0x13C

glabel func_level_52_8006DFB8
    /* 3B00D54 8006DFB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3B00D58 8006DFBC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3B00D5C 8006DFC0 0780103C */  lui        $s0, %hi(D_8006A040)
    /* 3B00D60 8006DFC4 40A01026 */  addiu      $s0, $s0, %lo(D_8006A040)
    /* 3B00D64 8006DFC8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3B00D68 8006DFCC 0000038E */  lw         $v1, 0x0($s0)
    /* 3B00D6C 8006DFD0 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 3B00D70 8006DFD4 12006210 */  beq        $v1, $v0, .Llevel_52_8006E020
    /* 3B00D74 8006DFD8 1E006228 */   slti      $v0, $v1, 0x1E
    /* 3B00D78 8006DFDC 05004010 */  beqz       $v0, .Llevel_52_8006DFF4
    /* 3B00D7C 8006DFE0 12000224 */   addiu     $v0, $zero, 0x12
    /* 3B00D80 8006DFE4 2E006210 */  beq        $v1, $v0, .Llevel_52_8006E0A0
    /* 3B00D84 8006DFE8 00000000 */   nop
    /* 3B00D88 8006DFEC 38B80108 */  j          .Llevel_52_8006E0E0
    /* 3B00D8C 8006DFF0 00000000 */   nop
  .Llevel_52_8006DFF4:
    /* 3B00D90 8006DFF4 37006228 */  slti       $v0, $v1, 0x37
    /* 3B00D94 8006DFF8 39004010 */  beqz       $v0, .Llevel_52_8006E0E0
    /* 3B00D98 8006DFFC 35006228 */   slti      $v0, $v1, 0x35
    /* 3B00D9C 8006E000 37004014 */  bnez       $v0, .Llevel_52_8006E0E0
    /* 3B00DA0 8006E004 00000000 */   nop
    /* 3B00DA4 8006E008 2EAC000C */  jal        func_8002B0B8
    /* 3B00DA8 8006E00C 00000000 */   nop
    /* 3B00DAC 8006E010 33004014 */  bnez       $v0, .Llevel_52_8006E0E0
    /* 3B00DB0 8006E014 21200000 */   addu      $a0, $zero, $zero
    /* 3B00DB4 8006E018 36B80108 */  j          .Llevel_52_8006E0D8
    /* 3B00DB8 8006E01C 00000000 */   nop
  .Llevel_52_8006E020:
    /* 3B00DBC 8006E020 0780023C */  lui        $v0, %hi(D_8006A04C)
    /* 3B00DC0 8006E024 4CA0428C */  lw         $v0, %lo(D_8006A04C)($v0)
    /* 3B00DC4 8006E028 00000000 */  nop
    /* 3B00DC8 8006E02C 19004228 */  slti       $v0, $v0, 0x19
    /* 3B00DCC 8006E030 2B004014 */  bnez       $v0, .Llevel_52_8006E0E0
    /* 3B00DD0 8006E034 00000000 */   nop
    /* 3B00DD4 8006E038 0780023C */  lui        $v0, %hi(D_8006A248)
    /* 3B00DD8 8006E03C 48A2428C */  lw         $v0, %lo(D_8006A248)($v0)
    /* 3B00DDC 8006E040 00000000 */  nop
    /* 3B00DE0 8006E044 03004104 */  bgez       $v0, .Llevel_52_8006E054
    /* 3B00DE4 8006E048 0A000224 */   addiu     $v0, $zero, 0xA
    /* 3B00DE8 8006E04C 36B80108 */  j          .Llevel_52_8006E0D8
    /* 3B00DEC 8006E050 1F000424 */   addiu     $a0, $zero, 0x1F
  .Llevel_52_8006E054:
    /* 3B00DF0 8006E054 0780033C */  lui        $v1, %hi(D_8006A13C)
    /* 3B00DF4 8006E058 3CA1638C */  lw         $v1, %lo(D_8006A13C)($v1)
    /* 3B00DF8 8006E05C 00000000 */  nop
    /* 3B00DFC 8006E060 03006214 */  bne        $v1, $v0, .Llevel_52_8006E070
    /* 3B00E00 8006E064 F5FF6224 */   addiu     $v0, $v1, -0xB
    /* 3B00E04 8006E068 36B80108 */  j          .Llevel_52_8006E0D8
    /* 3B00E08 8006E06C 2C000424 */   addiu     $a0, $zero, 0x2C
  .Llevel_52_8006E070:
    /* 3B00E0C 8006E070 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3B00E10 8006E074 03004010 */  beqz       $v0, .Llevel_52_8006E084
    /* 3B00E14 8006E078 00000000 */   nop
    /* 3B00E18 8006E07C 36B80108 */  j          .Llevel_52_8006E0D8
    /* 3B00E1C 8006E080 29000424 */   addiu     $a0, $zero, 0x29
  .Llevel_52_8006E084:
    /* 3B00E20 8006E084 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 3B00E24 8006E088 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 3B00E28 8006E08C 00000000 */  nop
    /* 3B00E2C 8006E090 11004010 */  beqz       $v0, .Llevel_52_8006E0D8
    /* 3B00E30 8006E094 21200000 */   addu      $a0, $zero, $zero
    /* 3B00E34 8006E098 36B80108 */  j          .Llevel_52_8006E0D8
    /* 3B00E38 8006E09C 06000424 */   addiu     $a0, $zero, 0x6
  .Llevel_52_8006E0A0:
    /* 3B00E3C 8006E0A0 2EAC000C */  jal        func_8002B0B8
    /* 3B00E40 8006E0A4 00000000 */   nop
    /* 3B00E44 8006E0A8 0D004014 */  bnez       $v0, .Llevel_52_8006E0E0
    /* 3B00E48 8006E0AC B0FF0426 */   addiu     $a0, $s0, -0x50
    /* 3B00E4C 8006E0B0 0780053C */  lui        $a1, %hi(D_8006A208)
    /* 3B00E50 8006E0B4 08A2A58C */  lw         $a1, %lo(D_8006A208)($a1)
    /* 3B00E54 8006E0B8 DB6F000C */  jal        func_8001BF6C
    /* 3B00E58 8006E0BC 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 3B00E5C 8006E0C0 0780033C */  lui        $v1, %hi(D_8006A150)
    /* 3B00E60 8006E0C4 50A1638C */  lw         $v1, %lo(D_8006A150)($v1)
    /* 3B00E64 8006E0C8 00000000 */  nop
    /* 3B00E68 8006E0CC 2A186200 */  slt        $v1, $v1, $v0
    /* 3B00E6C 8006E0D0 03006010 */  beqz       $v1, .Llevel_52_8006E0E0
    /* 3B00E70 8006E0D4 10000424 */   addiu     $a0, $zero, 0x10
  .Llevel_52_8006E0D8:
    /* 3B00E74 8006E0D8 76D4000C */  jal        func_800351D8
    /* 3B00E78 8006E0DC 00000000 */   nop
  .Llevel_52_8006E0E0:
    /* 3B00E7C 8006E0E0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3B00E80 8006E0E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 3B00E84 8006E0E8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3B00E88 8006E0EC 0800E003 */  jr         $ra
    /* 3B00E8C 8006E0F0 00000000 */   nop
endlabel func_level_52_8006DFB8
    /* 3B00E90 8006E0F4 00000000 */  nop
