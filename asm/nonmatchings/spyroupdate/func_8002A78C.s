.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A78C, 0x370

glabel func_8002A78C
    /* 1AF8C 8002A78C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1AF90 8002A790 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1AF94 8002A794 0780103C */  lui        $s0, %hi(D_8006A234)
    /* 1AF98 8002A798 34A21026 */  addiu      $s0, $s0, %lo(D_8006A234)
    /* 1AF9C 8002A79C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 1AFA0 8002A7A0 3800B2AF */  sw         $s2, 0x38($sp)
    /* 1AFA4 8002A7A4 3400B1AF */  sw         $s1, 0x34($sp)
    /* 1AFA8 8002A7A8 0000028E */  lw         $v0, 0x0($s0)
    /* 1AFAC 8002A7AC 00000000 */  nop
    /* 1AFB0 8002A7B0 01004230 */  andi       $v0, $v0, 0x1
    /* 1AFB4 8002A7B4 CA004010 */  beqz       $v0, .L8002AAE0
    /* 1AFB8 8002A7B8 00000000 */   nop
    /* 1AFBC 8002A7BC 686F000C */  jal        func_8001BDA0
    /* 1AFC0 8002A7C0 2000A427 */   addiu     $a0, $sp, 0x20
    /* 1AFC4 8002A7C4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1AFC8 8002A7C8 6C6F000C */  jal        func_8001BDB0
    /* 1AFCC 8002A7CC 38FE0526 */   addiu     $a1, $s0, -0x1C8
    /* 1AFD0 8002A7D0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1AFD4 8002A7D4 526F000C */  jal        func_8001BD48
    /* 1AFD8 8002A7D8 06000524 */   addiu     $a1, $zero, 0x6
    /* 1AFDC 8002A7DC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1AFE0 8002A7E0 21288000 */  addu       $a1, $a0, $zero
    /* 1AFE4 8002A7E4 736F000C */  jal        func_8001BDCC
    /* 1AFE8 8002A7E8 BCFD0626 */   addiu     $a2, $s0, -0x244
    /* 1AFEC 8002A7EC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1AFF0 8002A7F0 04000526 */  addiu      $a1, $s0, 0x4
    /* 1AFF4 8002A7F4 806F000C */  jal        func_8001BE00
    /* 1AFF8 8002A7F8 21308000 */   addu      $a2, $a0, $zero
    /* 1AFFC 8002A7FC 0000028E */  lw         $v0, 0x0($s0)
    /* 1B000 8002A800 00000000 */  nop
    /* 1B004 8002A804 04004230 */  andi       $v0, $v0, 0x4
    /* 1B008 8002A808 05004010 */  beqz       $v0, .L8002A820
    /* 1B00C 8002A80C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 1B010 8002A810 886E000C */  jal        func_8001BA20
    /* 1B014 8002A814 01000524 */   addiu     $a1, $zero, 0x1
    /* 1B018 8002A818 0CAA0008 */  j          .L8002A830
    /* 1B01C 8002A81C 21284000 */   addu      $a1, $v0, $zero
  .L8002A820:
    /* 1B020 8002A820 886E000C */  jal        func_8001BA20
    /* 1B024 8002A824 21280000 */   addu      $a1, $zero, $zero
    /* 1B028 8002A828 21284000 */  addu       $a1, $v0, $zero
    /* 1B02C 8002A82C 1800A0AF */  sw         $zero, 0x18($sp)
  .L8002A830:
    /* 1B030 8002A830 0780103C */  lui        $s0, %hi(D_8006A234)
    /* 1B034 8002A834 34A21026 */  addiu      $s0, $s0, %lo(D_8006A234)
    /* 1B038 8002A838 0000028E */  lw         $v0, 0x0($s0)
    /* 1B03C 8002A83C 00000000 */  nop
    /* 1B040 8002A840 02004230 */  andi       $v0, $v0, 0x2
    /* 1B044 8002A844 5E004010 */  beqz       $v0, .L8002A9C0
    /* 1B048 8002A848 00000000 */   nop
    /* 1B04C 8002A84C 0780023C */  lui        $v0, %hi(D_8006A244)
    /* 1B050 8002A850 44A2428C */  lw         $v0, %lo(D_8006A244)($v0)
    /* 1B054 8002A854 00000000 */  nop
    /* 1B058 8002A858 2A10A200 */  slt        $v0, $a1, $v0
    /* 1B05C 8002A85C A0004014 */  bnez       $v0, .L8002AAE0
    /* 1B060 8002A860 1000A427 */   addiu     $a0, $sp, 0x10
    /* 1B064 8002A864 526F000C */  jal        func_8001BD48
    /* 1B068 8002A868 06000524 */   addiu     $a1, $zero, 0x6
    /* 1B06C 8002A86C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1B070 8002A870 CF6E000C */  jal        func_8001BB3C
    /* 1B074 8002A874 00100524 */   addiu     $a1, $zero, 0x1000
    /* 1B078 8002A878 1000A38F */  lw         $v1, 0x10($sp)
    /* 1B07C 8002A87C 0780023C */  lui        $v0, %hi(D_8006A06C)
    /* 1B080 8002A880 6CA0428C */  lw         $v0, %lo(D_8006A06C)($v0)
    /* 1B084 8002A884 00000000 */  nop
    /* 1B088 8002A888 18006200 */  mult       $v1, $v0
    /* 1B08C 8002A88C 1400A38F */  lw         $v1, 0x14($sp)
    /* 1B090 8002A890 12280000 */  mflo       $a1
    /* 1B094 8002A894 0780023C */  lui        $v0, %hi(D_8006A070)
    /* 1B098 8002A898 70A0428C */  lw         $v0, %lo(D_8006A070)($v0)
    /* 1B09C 8002A89C 00000000 */  nop
    /* 1B0A0 8002A8A0 18006200 */  mult       $v1, $v0
    /* 1B0A4 8002A8A4 1800A38F */  lw         $v1, 0x18($sp)
    /* 1B0A8 8002A8A8 12200000 */  mflo       $a0
    /* 1B0AC 8002A8AC 0780023C */  lui        $v0, %hi(D_8006A074)
    /* 1B0B0 8002A8B0 74A0428C */  lw         $v0, %lo(D_8006A074)($v0)
    /* 1B0B4 8002A8B4 00000000 */  nop
    /* 1B0B8 8002A8B8 18006200 */  mult       $v1, $v0
    /* 1B0BC 8002A8BC 2110A400 */  addu       $v0, $a1, $a0
    /* 1B0C0 8002A8C0 12180000 */  mflo       $v1
    /* 1B0C4 8002A8C4 21104300 */  addu       $v0, $v0, $v1
    /* 1B0C8 8002A8C8 038B0200 */  sra        $s1, $v0, 12
    /* 1B0CC 8002A8CC 84002106 */  bgez       $s1, .L8002AAE0
    /* 1B0D0 8002A8D0 00000000 */   nop
    /* 1B0D4 8002A8D4 0000028E */  lw         $v0, 0x0($s0)
    /* 1B0D8 8002A8D8 00000000 */  nop
    /* 1B0DC 8002A8DC 04004230 */  andi       $v0, $v0, 0x4
    /* 1B0E0 8002A8E0 11004010 */  beqz       $v0, .L8002A928
    /* 1B0E4 8002A8E4 1000A427 */   addiu     $a0, $sp, 0x10
    /* 1B0E8 8002A8E8 886E000C */  jal        func_8001BA20
    /* 1B0EC 8002A8EC 21280000 */   addu      $a1, $zero, $zero
    /* 1B0F0 8002A8F0 21204000 */  addu       $a0, $v0, $zero
    /* 1B0F4 8002A8F4 1800A58F */  lw         $a1, 0x18($sp)
    /* 1B0F8 8002A8F8 2E6D000C */  jal        func_8001B4B8
    /* 1B0FC 8002A8FC 01000624 */   addiu     $a2, $zero, 0x1
    /* 1B100 8002A900 0780033C */  lui        $v1, %hi(D_8006A058)
    /* 1B104 8002A904 58A0638C */  lw         $v1, %lo(D_8006A058)($v1)
    /* 1B108 8002A908 00000000 */  nop
    /* 1B10C 8002A90C 23104300 */  subu       $v0, $v0, $v1
    /* 1B110 8002A910 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1B114 8002A914 01086228 */  slti       $v0, $v1, 0x801
    /* 1B118 8002A918 03004014 */  bnez       $v0, .L8002A928
    /* 1B11C 8002A91C 2400A3AF */   sw        $v1, 0x24($sp)
    /* 1B120 8002A920 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1B124 8002A924 2400A2AF */  sw         $v0, 0x24($sp)
  .L8002A928:
    /* 1B128 8002A928 1000A48F */  lw         $a0, 0x10($sp)
    /* 1B12C 8002A92C 1400A58F */  lw         $a1, 0x14($sp)
    /* 1B130 8002A930 2E6D000C */  jal        func_8001B4B8
    /* 1B134 8002A934 01000624 */   addiu     $a2, $zero, 0x1
    /* 1B138 8002A938 0780103C */  lui        $s0, %hi(D_8006A05C)
    /* 1B13C 8002A93C 5CA01026 */  addiu      $s0, $s0, %lo(D_8006A05C)
    /* 1B140 8002A940 0000038E */  lw         $v1, 0x0($s0)
    /* 1B144 8002A944 00000000 */  nop
    /* 1B148 8002A948 23104300 */  subu       $v0, $v0, $v1
    /* 1B14C 8002A94C FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1B150 8002A950 01086228 */  slti       $v0, $v1, 0x801
    /* 1B154 8002A954 03004014 */  bnez       $v0, .L8002A964
    /* 1B158 8002A958 2800A3AF */   sw        $v1, 0x28($sp)
    /* 1B15C 8002A95C 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1B160 8002A960 2800A2AF */  sw         $v0, 0x28($sp)
  .L8002A964:
    /* 1B164 8002A964 2000A427 */  addiu      $a0, $sp, 0x20
    /* 1B168 8002A968 526F000C */  jal        func_8001BD48
    /* 1B16C 8002A96C 05000524 */   addiu     $a1, $zero, 0x5
    /* 1B170 8002A970 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1B174 8002A974 00100524 */  addiu      $a1, $zero, 0x1000
    /* 1B178 8002A978 23301100 */  negu       $a2, $s1
    /* 1B17C 8002A97C 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 1B180 8002A980 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 1B184 8002A984 2400A78F */  lw         $a3, 0x24($sp)
    /* 1B188 8002A988 0000038E */  lw         $v1, 0x0($s0)
    /* 1B18C 8002A98C 2800A88F */  lw         $t0, 0x28($sp)
    /* 1B190 8002A990 21104700 */  addu       $v0, $v0, $a3
    /* 1B194 8002A994 21186800 */  addu       $v1, $v1, $t0
    /* 1B198 8002A998 0780013C */  lui        $at, %hi(D_8006A058)
    /* 1B19C 8002A99C 58A022AC */  sw         $v0, %lo(D_8006A058)($at)
    /* 1B1A0 8002A9A0 316F000C */  jal        func_8001BCC4
    /* 1B1A4 8002A9A4 000003AE */   sw        $v1, 0x0($s0)
    /* 1B1A8 8002A9A8 10000426 */  addiu      $a0, $s0, 0x10
    /* 1B1AC 8002A9AC 21288000 */  addu       $a1, $a0, $zero
    /* 1B1B0 8002A9B0 736F000C */  jal        func_8001BDCC
    /* 1B1B4 8002A9B4 1000A627 */   addiu     $a2, $sp, 0x10
    /* 1B1B8 8002A9B8 B8AA0008 */  j          .L8002AAE0
    /* 1B1BC 8002A9BC 00000000 */   nop
  .L8002A9C0:
    /* 1B1C0 8002A9C0 0780063C */  lui        $a2, %hi(D_8006A244)
    /* 1B1C4 8002A9C4 44A2C68C */  lw         $a2, %lo(D_8006A244)($a2)
    /* 1B1C8 8002A9C8 00000000 */  nop
    /* 1B1CC 8002A9CC 00E0C224 */  addiu      $v0, $a2, -0x2000
    /* 1B1D0 8002A9D0 2A104500 */  slt        $v0, $v0, $a1
    /* 1B1D4 8002A9D4 42004010 */  beqz       $v0, .L8002AAE0
    /* 1B1D8 8002A9D8 0020A224 */   addiu     $v0, $a1, 0x2000
    /* 1B1DC 8002A9DC 23884600 */  subu       $s1, $v0, $a2
    /* 1B1E0 8002A9E0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1B1E4 8002A9E4 316F000C */  jal        func_8001BCC4
    /* 1B1E8 8002A9E8 21302002 */   addu      $a2, $s1, $zero
    /* 1B1EC 8002A9EC 38FE0426 */  addiu      $a0, $s0, -0x1C8
    /* 1B1F0 8002A9F0 21288000 */  addu       $a1, $a0, $zero
    /* 1B1F4 8002A9F4 736F000C */  jal        func_8001BDCC
    /* 1B1F8 8002A9F8 1000A627 */   addiu     $a2, $sp, 0x10
    /* 1B1FC 8002A9FC 0000028E */  lw         $v0, 0x0($s0)
    /* 1B200 8002AA00 00000000 */  nop
    /* 1B204 8002AA04 04004230 */  andi       $v0, $v0, 0x4
    /* 1B208 8002AA08 11004010 */  beqz       $v0, .L8002AA50
    /* 1B20C 8002AA0C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 1B210 8002AA10 886E000C */  jal        func_8001BA20
    /* 1B214 8002AA14 21280000 */   addu      $a1, $zero, $zero
    /* 1B218 8002AA18 21204000 */  addu       $a0, $v0, $zero
    /* 1B21C 8002AA1C 1800A58F */  lw         $a1, 0x18($sp)
    /* 1B220 8002AA20 2E6D000C */  jal        func_8001B4B8
    /* 1B224 8002AA24 01000624 */   addiu     $a2, $zero, 0x1
    /* 1B228 8002AA28 0780033C */  lui        $v1, %hi(D_8006A058)
    /* 1B22C 8002AA2C 58A0638C */  lw         $v1, %lo(D_8006A058)($v1)
    /* 1B230 8002AA30 00000000 */  nop
    /* 1B234 8002AA34 23104300 */  subu       $v0, $v0, $v1
    /* 1B238 8002AA38 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1B23C 8002AA3C 01086228 */  slti       $v0, $v1, 0x801
    /* 1B240 8002AA40 03004014 */  bnez       $v0, .L8002AA50
    /* 1B244 8002AA44 2400A3AF */   sw        $v1, 0x24($sp)
    /* 1B248 8002AA48 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1B24C 8002AA4C 2400A2AF */  sw         $v0, 0x24($sp)
  .L8002AA50:
    /* 1B250 8002AA50 1000A48F */  lw         $a0, 0x10($sp)
    /* 1B254 8002AA54 1400A58F */  lw         $a1, 0x14($sp)
    /* 1B258 8002AA58 2E6D000C */  jal        func_8001B4B8
    /* 1B25C 8002AA5C 01000624 */   addiu     $a2, $zero, 0x1
    /* 1B260 8002AA60 0780123C */  lui        $s2, %hi(D_8006A05C)
    /* 1B264 8002AA64 5CA05226 */  addiu      $s2, $s2, %lo(D_8006A05C)
    /* 1B268 8002AA68 0000438E */  lw         $v1, 0x0($s2)
    /* 1B26C 8002AA6C 00000000 */  nop
    /* 1B270 8002AA70 23104300 */  subu       $v0, $v0, $v1
    /* 1B274 8002AA74 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1B278 8002AA78 01086228 */  slti       $v0, $v1, 0x801
    /* 1B27C 8002AA7C 03004014 */  bnez       $v0, .L8002AA8C
    /* 1B280 8002AA80 2800A3AF */   sw        $v1, 0x28($sp)
    /* 1B284 8002AA84 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1B288 8002AA88 2800A2AF */  sw         $v0, 0x28($sp)
  .L8002AA8C:
    /* 1B28C 8002AA8C 0120222A */  slti       $v0, $s1, 0x2001
    /* 1B290 8002AA90 02004014 */  bnez       $v0, .L8002AA9C
    /* 1B294 8002AA94 2000B027 */   addiu     $s0, $sp, 0x20
    /* 1B298 8002AA98 00201124 */  addiu      $s1, $zero, 0x2000
  .L8002AA9C:
    /* 1B29C 8002AA9C 21200002 */  addu       $a0, $s0, $zero
    /* 1B2A0 8002AAA0 00200524 */  addiu      $a1, $zero, 0x2000
    /* 1B2A4 8002AAA4 316F000C */  jal        func_8001BCC4
    /* 1B2A8 8002AAA8 21302002 */   addu      $a2, $s1, $zero
    /* 1B2AC 8002AAAC 21200002 */  addu       $a0, $s0, $zero
    /* 1B2B0 8002AAB0 526F000C */  jal        func_8001BD48
    /* 1B2B4 8002AAB4 03000524 */   addiu     $a1, $zero, 0x3
    /* 1B2B8 8002AAB8 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 1B2BC 8002AABC 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 1B2C0 8002AAC0 2400A48F */  lw         $a0, 0x24($sp)
    /* 1B2C4 8002AAC4 0000438E */  lw         $v1, 0x0($s2)
    /* 1B2C8 8002AAC8 2800A58F */  lw         $a1, 0x28($sp)
    /* 1B2CC 8002AACC 21104400 */  addu       $v0, $v0, $a0
    /* 1B2D0 8002AAD0 21186500 */  addu       $v1, $v1, $a1
    /* 1B2D4 8002AAD4 0780013C */  lui        $at, %hi(D_8006A058)
    /* 1B2D8 8002AAD8 58A022AC */  sw         $v0, %lo(D_8006A058)($at)
    /* 1B2DC 8002AADC 000043AE */  sw         $v1, 0x0($s2)
  .L8002AAE0:
    /* 1B2E0 8002AAE0 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 1B2E4 8002AAE4 3800B28F */  lw         $s2, 0x38($sp)
    /* 1B2E8 8002AAE8 3400B18F */  lw         $s1, 0x34($sp)
    /* 1B2EC 8002AAEC 3000B08F */  lw         $s0, 0x30($sp)
    /* 1B2F0 8002AAF0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1B2F4 8002AAF4 0800E003 */  jr         $ra
    /* 1B2F8 8002AAF8 00000000 */   nop
endlabel func_8002A78C
