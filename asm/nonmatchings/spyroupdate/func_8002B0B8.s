.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B0B8, 0x170

glabel func_8002B0B8
    /* 1B8B8 8002B0B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1B8BC 8002B0BC 0780053C */  lui        $a1, %hi(D_8006A24C)
    /* 1B8C0 8002B0C0 4CA2A524 */  addiu      $a1, $a1, %lo(D_8006A24C)
    /* 1B8C4 8002B0C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1B8C8 8002B0C8 0000A28C */  lw         $v0, 0x0($a1)
    /* 1B8CC 8002B0CC 00000000 */  nop
    /* 1B8D0 8002B0D0 51004014 */  bnez       $v0, .L8002B218
    /* 1B8D4 8002B0D4 21100000 */   addu      $v0, $zero, $zero
    /* 1B8D8 8002B0D8 0780023C */  lui        $v0, %hi(D_8006A1C4)
    /* 1B8DC 8002B0DC C4A1428C */  lw         $v0, %lo(D_8006A1C4)($v0)
    /* 1B8E0 8002B0E0 00000000 */  nop
    /* 1B8E4 8002B0E4 4C004014 */  bnez       $v0, .L8002B218
    /* 1B8E8 8002B0E8 21100000 */   addu      $v0, $zero, $zero
    /* 1B8EC 8002B0EC 0780033C */  lui        $v1, %hi(D_8006A014)
    /* 1B8F0 8002B0F0 14A0638C */  lw         $v1, %lo(D_8006A014)($v1)
    /* 1B8F4 8002B0F4 00000000 */  nop
    /* 1B8F8 8002B0F8 F9016230 */  andi       $v0, $v1, 0x1F9
    /* 1B8FC 8002B0FC 45004010 */  beqz       $v0, .L8002B214
    /* 1B900 8002B100 5A000224 */   addiu     $v0, $zero, 0x5A
    /* 1B904 8002B104 0780043C */  lui        $a0, %hi(D_8006A248)
    /* 1B908 8002B108 48A2848C */  lw         $a0, %lo(D_8006A248)($a0)
    /* 1B90C 8002B10C 00000000 */  nop
    /* 1B910 8002B110 04008004 */  bltz       $a0, .L8002B124
    /* 1B914 8002B114 0000A2AC */   sw        $v0, 0x0($a1)
    /* 1B918 8002B118 FFFF8224 */  addiu      $v0, $a0, -0x1
    /* 1B91C 8002B11C 0780013C */  lui        $at, %hi(D_8006A248)
    /* 1B920 8002B120 48A222AC */  sw         $v0, %lo(D_8006A248)($at)
  .L8002B124:
    /* 1B924 8002B124 01006230 */  andi       $v0, $v1, 0x1
    /* 1B928 8002B128 0A004010 */  beqz       $v0, .L8002B154
    /* 1B92C 8002B12C 10006230 */   andi      $v0, $v1, 0x10
    /* 1B930 8002B130 0780023C */  lui        $v0, %hi(D_8006A048)
    /* 1B934 8002B134 48A0428C */  lw         $v0, %lo(D_8006A048)($v0)
    /* 1B938 8002B138 00000000 */  nop
    /* 1B93C 8002B13C F5FF4224 */  addiu      $v0, $v0, -0xB
    /* 1B940 8002B140 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1B944 8002B144 2F004010 */  beqz       $v0, .L8002B204
    /* 1B948 8002B148 0F000424 */   addiu     $a0, $zero, 0xF
    /* 1B94C 8002B14C 81AC0008 */  j          .L8002B204
    /* 1B950 8002B150 39000424 */   addiu     $a0, $zero, 0x39
  .L8002B154:
    /* 1B954 8002B154 2B004014 */  bnez       $v0, .L8002B204
    /* 1B958 8002B158 1A000424 */   addiu     $a0, $zero, 0x1A
    /* 1B95C 8002B15C 20006230 */  andi       $v0, $v1, 0x20
    /* 1B960 8002B160 28004014 */  bnez       $v0, .L8002B204
    /* 1B964 8002B164 08000424 */   addiu     $a0, $zero, 0x8
    /* 1B968 8002B168 80006230 */  andi       $v0, $v1, 0x80
    /* 1B96C 8002B16C 25004014 */  bnez       $v0, .L8002B204
    /* 1B970 8002B170 1D000424 */   addiu     $a0, $zero, 0x1D
    /* 1B974 8002B174 00016230 */  andi       $v0, $v1, 0x100
    /* 1B978 8002B178 22004014 */  bnez       $v0, .L8002B204
    /* 1B97C 8002B17C 17000424 */   addiu     $a0, $zero, 0x17
    /* 1B980 8002B180 08006230 */  andi       $v0, $v1, 0x8
    /* 1B984 8002B184 11004010 */  beqz       $v0, .L8002B1CC
    /* 1B988 8002B188 40006230 */   andi      $v0, $v1, 0x40
    /* 1B98C 8002B18C 0780023C */  lui        $v0, %hi(D_8006A248)
    /* 1B990 8002B190 48A2428C */  lw         $v0, %lo(D_8006A248)($v0)
    /* 1B994 8002B194 00000000 */  nop
    /* 1B998 8002B198 0A004104 */  bgez       $v0, .L8002B1C4
    /* 1B99C 8002B19C 00000000 */   nop
    /* 1B9A0 8002B1A0 0780023C */  lui        $v0, %hi(D_80068C94)
    /* 1B9A4 8002B1A4 948C428C */  lw         $v0, %lo(D_80068C94)($v0)
    /* 1B9A8 8002B1A8 00000000 */  nop
    /* 1B9AC 8002B1AC 2401428C */  lw         $v0, 0x124($v0)
    /* 1B9B0 8002B1B0 00000000 */  nop
    /* 1B9B4 8002B1B4 13004010 */  beqz       $v0, .L8002B204
    /* 1B9B8 8002B1B8 1F000424 */   addiu     $a0, $zero, 0x1F
    /* 1B9BC 8002B1BC 81AC0008 */  j          .L8002B204
    /* 1B9C0 8002B1C0 3A000424 */   addiu     $a0, $zero, 0x3A
  .L8002B1C4:
    /* 1B9C4 8002B1C4 81AC0008 */  j          .L8002B204
    /* 1B9C8 8002B1C8 1C000424 */   addiu     $a0, $zero, 0x1C
  .L8002B1CC:
    /* 1B9CC 8002B1CC 12004010 */  beqz       $v0, .L8002B218
    /* 1B9D0 8002B1D0 01000224 */   addiu     $v0, $zero, 0x1
    /* 1B9D4 8002B1D4 FCFFA28C */  lw         $v0, -0x4($a1)
    /* 1B9D8 8002B1D8 00000000 */  nop
    /* 1B9DC 8002B1DC 09004104 */  bgez       $v0, .L8002B204
    /* 1B9E0 8002B1E0 38000424 */   addiu     $a0, $zero, 0x38
    /* 1B9E4 8002B1E4 0780023C */  lui        $v0, %hi(D_80068C94)
    /* 1B9E8 8002B1E8 948C428C */  lw         $v0, %lo(D_80068C94)($v0)
    /* 1B9EC 8002B1EC 00000000 */  nop
    /* 1B9F0 8002B1F0 2801428C */  lw         $v0, 0x128($v0)
    /* 1B9F4 8002B1F4 00000000 */  nop
    /* 1B9F8 8002B1F8 02004014 */  bnez       $v0, .L8002B204
    /* 1B9FC 8002B1FC 3B000424 */   addiu     $a0, $zero, 0x3B
    /* 1BA00 8002B200 38000424 */  addiu      $a0, $zero, 0x38
  .L8002B204:
    /* 1BA04 8002B204 76D4000C */  jal        func_800351D8
    /* 1BA08 8002B208 00000000 */   nop
    /* 1BA0C 8002B20C 86AC0008 */  j          .L8002B218
    /* 1BA10 8002B210 01000224 */   addiu     $v0, $zero, 0x1
  .L8002B214:
    /* 1BA14 8002B214 21100000 */  addu       $v0, $zero, $zero
  .L8002B218:
    /* 1BA18 8002B218 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1BA1C 8002B21C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1BA20 8002B220 0800E003 */  jr         $ra
    /* 1BA24 8002B224 00000000 */   nop
endlabel func_8002B0B8
