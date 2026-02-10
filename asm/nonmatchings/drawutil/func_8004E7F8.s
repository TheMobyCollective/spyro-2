.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004E7F8, 0x4C4

glabel func_8004E7F8
    /* 3EFF8 8004E7F8 0780033C */  lui        $v1, %hi(D_800698F8)
    /* 3EFFC 8004E7FC F898638C */  lw         $v1, %lo(D_800698F8)($v1)
    /* 3F000 8004E800 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 3F004 8004E804 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3F008 8004E808 21908000 */  addu       $s2, $a0, $zero
    /* 3F00C 8004E80C 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 3F010 8004E810 4800B6AF */  sw         $s6, 0x48($sp)
    /* 3F014 8004E814 4400B5AF */  sw         $s5, 0x44($sp)
    /* 3F018 8004E818 4000B4AF */  sw         $s4, 0x40($sp)
    /* 3F01C 8004E81C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3F020 8004E820 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3F024 8004E824 1F006014 */  bnez       $v1, .L8004E8A4
    /* 3F028 8004E828 3000B0AF */   sw        $s0, 0x30($sp)
    /* 3F02C 8004E82C 21800000 */  addu       $s0, $zero, $zero
    /* 3F030 8004E830 21200002 */  addu       $a0, $s0, $zero
  .L8004E834:
    /* 3F034 8004E834 21280002 */  addu       $a1, $s0, $zero
    /* 3F038 8004E838 B339010C */  jal        func_8004E6CC
    /* 3F03C 8004E83C 21304002 */   addu      $a2, $s2, $zero
    /* 3F040 8004E840 01001026 */  addiu      $s0, $s0, 0x1
    /* 3F044 8004E844 0500022A */  slti       $v0, $s0, 0x5
    /* 3F048 8004E848 FAFF4014 */  bnez       $v0, .L8004E834
    /* 3F04C 8004E84C 21200002 */   addu      $a0, $s0, $zero
    /* 3F050 8004E850 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* 3F054 8004E854 E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* 3F058 8004E858 00000000 */  nop
    /* 3F05C 8004E85C 03004010 */  beqz       $v0, .L8004E86C
    /* 3F060 8004E860 06000424 */   addiu     $a0, $zero, 0x6
    /* 3F064 8004E864 223B0108 */  j          .L8004EC88
    /* 3F068 8004E868 05000524 */   addiu     $a1, $zero, 0x5
  .L8004E86C:
    /* 3F06C 8004E86C 0780033C */  lui        $v1, %hi(D_80069894)
    /* 3F070 8004E870 9498638C */  lw         $v1, %lo(D_80069894)($v1)
    /* 3F074 8004E874 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3F078 8004E878 03006210 */  beq        $v1, $v0, .L8004E888
    /* 3F07C 8004E87C 07000424 */   addiu     $a0, $zero, 0x7
    /* 3F080 8004E880 223B0108 */  j          .L8004EC88
    /* 3F084 8004E884 05000524 */   addiu     $a1, $zero, 0x5
  .L8004E888:
    /* 3F088 8004E888 0780023C */  lui        $v0, %hi(D_800698FC)
    /* 3F08C 8004E88C FC98428C */  lw         $v0, %lo(D_800698FC)($v0)
    /* 3F090 8004E890 00000000 */  nop
    /* 3F094 8004E894 FE004014 */  bnez       $v0, .L8004EC90
    /* 3F098 8004E898 05000424 */   addiu     $a0, $zero, 0x5
    /* 3F09C 8004E89C 223B0108 */  j          .L8004EC88
    /* 3F0A0 8004E8A0 05000524 */   addiu     $a1, $zero, 0x5
  .L8004E8A4:
    /* 3F0A4 8004E8A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 3F0A8 8004E8A8 0A006214 */  bne        $v1, $v0, .L8004E8D4
    /* 3F0AC 8004E8AC 02000424 */   addiu     $a0, $zero, 0x2
    /* 3F0B0 8004E8B0 0780033C */  lui        $v1, %hi(D_800698F4)
    /* 3F0B4 8004E8B4 F498638C */  lw         $v1, %lo(D_800698F4)($v1)
    /* 3F0B8 8004E8B8 02000224 */  addiu      $v0, $zero, 0x2
    /* 3F0BC 8004E8BC F4006214 */  bne        $v1, $v0, .L8004EC90
    /* 3F0C0 8004E8C0 00000000 */   nop
    /* 3F0C4 8004E8C4 4FE4010C */  jal        func_titlescreen_and_loading_8007913C
    /* 3F0C8 8004E8C8 00000000 */   nop
    /* 3F0CC 8004E8CC 243B0108 */  j          .L8004EC90
    /* 3F0D0 8004E8D0 00000000 */   nop
  .L8004E8D4:
    /* 3F0D4 8004E8D4 51006414 */  bne        $v1, $a0, .L8004EA1C
    /* 3F0D8 8004E8D8 03000224 */   addiu     $v0, $zero, 0x3
    /* 3F0DC 8004E8DC 09001024 */  addiu      $s0, $zero, 0x9
  .L8004E8E0:
    /* 3F0E0 8004E8E0 21200002 */  addu       $a0, $s0, $zero
    /* 3F0E4 8004E8E4 F7FF0526 */  addiu      $a1, $s0, -0x9
    /* 3F0E8 8004E8E8 B339010C */  jal        func_8004E6CC
    /* 3F0EC 8004E8EC 21304002 */   addu      $a2, $s2, $zero
    /* 3F0F0 8004E8F0 01001026 */  addiu      $s0, $s0, 0x1
    /* 3F0F4 8004E8F4 0F00022A */  slti       $v0, $s0, 0xF
    /* 3F0F8 8004E8F8 F9FF4014 */  bnez       $v0, .L8004E8E0
    /* 3F0FC 8004E8FC 21280000 */   addu      $a1, $zero, $zero
    /* 3F100 8004E900 0680043C */  lui        $a0, %hi(D_800676A0)
    /* 3F104 8004E904 A076848C */  lw         $a0, %lo(D_800676A0)($a0)
    /* 3F108 8004E908 00000000 */  nop
    /* 3F10C 8004E90C 14008424 */  addiu      $a0, $a0, 0x14
    /* 3F110 8004E910 B339010C */  jal        func_8004E6CC
    /* 3F114 8004E914 21304002 */   addu      $a2, $s2, $zero
    /* 3F118 8004E918 01000524 */  addiu      $a1, $zero, 0x1
    /* 3F11C 8004E91C 0780043C */  lui        $a0, %hi(D_800698BA)
    /* 3F120 8004E920 BA988490 */  lbu        $a0, %lo(D_800698BA)($a0)
    /* 3F124 8004E924 21304002 */  addu       $a2, $s2, $zero
    /* 3F128 8004E928 B339010C */  jal        func_8004E6CC
    /* 3F12C 8004E92C 16008424 */   addiu     $a0, $a0, 0x16
    /* 3F130 8004E930 02000524 */  addiu      $a1, $zero, 0x2
    /* 3F134 8004E934 0780043C */  lui        $a0, %hi(D_80068374)
    /* 3F138 8004E938 74838490 */  lbu        $a0, %lo(D_80068374)($a0)
    /* 3F13C 8004E93C 21304002 */  addu       $a2, $s2, $zero
    /* 3F140 8004E940 B339010C */  jal        func_8004E6CC
    /* 3F144 8004E944 18008424 */   addiu     $a0, $a0, 0x18
    /* 3F148 8004E948 0680103C */  lui        $s0, %hi(D_80063B44)
    /* 3F14C 8004E94C 443B1026 */  addiu      $s0, $s0, %lo(D_80063B44)
    /* 3F150 8004E950 0780113C */  lui        $s1, %hi(D_800698F4)
    /* 3F154 8004E954 F4983126 */  addiu      $s1, $s1, %lo(D_800698F4)
    /* 3F158 8004E958 03000424 */  addiu      $a0, $zero, 0x3
    /* 3F15C 8004E95C 0680023C */  lui        $v0, %hi(D_80067118)
    /* 3F160 8004E960 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 3F164 8004E964 0680083C */  lui        $t0, %hi(D_80067060)
    /* 3F168 8004E968 6070088D */  lw         $t0, %lo(D_80067060)($t0)
    /* 3F16C 8004E96C 00190200 */  sll        $v1, $v0, 4
    /* 3F170 8004E970 21186200 */  addu       $v1, $v1, $v0
    /* 3F174 8004E974 40180300 */  sll        $v1, $v1, 1
    /* 3F178 8004E978 43000224 */  addiu      $v0, $zero, 0x43
    /* 3F17C 8004E97C 23305200 */  subu       $a2, $v0, $s2
    /* 3F180 8004E980 0000228E */  lw         $v0, 0x0($s1)
    /* 3F184 8004E984 0680013C */  lui        $at, %hi(D_80063B44)
    /* 3F188 8004E988 21082300 */  addu       $at, $at, $v1
    /* 3F18C 8004E98C 443B2590 */  lbu        $a1, %lo(D_80063B44)($at)
    /* 3F190 8004E990 06004414 */  bne        $v0, $a0, .L8004E9AC
    /* 3F194 8004E994 21380000 */   addu      $a3, $zero, $zero
    /* 3F198 8004E998 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 3F19C 8004E99C EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 3F1A0 8004E9A0 00000000 */  nop
    /* 3F1A4 8004E9A4 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3F1A8 8004E9A8 16004728 */  slti       $a3, $v0, 0x16
  .L8004E9AC:
    /* 3F1AC 8004E9AC 21200001 */  addu       $a0, $t0, $zero
    /* 3F1B0 8004E9B0 B436010C */  jal        func_8004DAD0
    /* 3F1B4 8004E9B4 0200E734 */   ori       $a3, $a3, 0x2
    /* 3F1B8 8004E9B8 04000424 */  addiu      $a0, $zero, 0x4
    /* 3F1BC 8004E9BC 0680033C */  lui        $v1, %hi(D_80067118)
    /* 3F1C0 8004E9C0 1871638C */  lw         $v1, %lo(D_80067118)($v1)
    /* 3F1C4 8004E9C4 0680083C */  lui        $t0, %hi(D_80067064)
    /* 3F1C8 8004E9C8 6470088D */  lw         $t0, %lo(D_80067064)($t0)
    /* 3F1CC 8004E9CC 00110300 */  sll        $v0, $v1, 4
    /* 3F1D0 8004E9D0 21104300 */  addu       $v0, $v0, $v1
    /* 3F1D4 8004E9D4 40100200 */  sll        $v0, $v0, 1
    /* 3F1D8 8004E9D8 21105000 */  addu       $v0, $v0, $s0
    /* 3F1DC 8004E9DC 51000324 */  addiu      $v1, $zero, 0x51
    /* 3F1E0 8004E9E0 23307200 */  subu       $a2, $v1, $s2
    /* 3F1E4 8004E9E4 0000238E */  lw         $v1, 0x0($s1)
    /* 3F1E8 8004E9E8 00004590 */  lbu        $a1, 0x0($v0)
    /* 3F1EC 8004E9EC 06006414 */  bne        $v1, $a0, .L8004EA08
    /* 3F1F0 8004E9F0 21380000 */   addu      $a3, $zero, $zero
    /* 3F1F4 8004E9F4 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 3F1F8 8004E9F8 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 3F1FC 8004E9FC 00000000 */  nop
    /* 3F200 8004EA00 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3F204 8004EA04 16004728 */  slti       $a3, $v0, 0x16
  .L8004EA08:
    /* 3F208 8004EA08 21200001 */  addu       $a0, $t0, $zero
    /* 3F20C 8004EA0C B436010C */  jal        func_8004DAD0
    /* 3F210 8004EA10 0200E734 */   ori       $a3, $a3, 0x2
    /* 3F214 8004EA14 243B0108 */  j          .L8004EC90
    /* 3F218 8004EA18 00000000 */   nop
  .L8004EA1C:
    /* 3F21C 8004EA1C 89006214 */  bne        $v1, $v0, .L8004EC44
    /* 3F220 8004EA20 04000224 */   addiu     $v0, $zero, 0x4
    /* 3F224 8004EA24 0780023C */  lui        $v0, %hi(D_800698F4)
    /* 3F228 8004EA28 F498428C */  lw         $v0, %lo(D_800698F4)($v0)
    /* 3F22C 8004EA2C 00000000 */  nop
    /* 3F230 8004EA30 05004414 */  bne        $v0, $a0, .L8004EA48
    /* 3F234 8004EA34 0F001024 */   addiu     $s0, $zero, 0xF
    /* 3F238 8004EA38 0680023C */  lui        $v0, %hi(D_8006716C)
    /* 3F23C 8004EA3C 6C71428C */  lw         $v0, %lo(D_8006716C)($v0)
    /* 3F240 8004EA40 0680013C */  lui        $at, %hi(D_80066D48)
    /* 3F244 8004EA44 486D22AC */  sw         $v0, %lo(D_80066D48)($at)
  .L8004EA48:
    /* 3F248 8004EA48 21200002 */  addu       $a0, $s0, $zero
    /* 3F24C 8004EA4C F1FF0526 */  addiu      $a1, $s0, -0xF
    /* 3F250 8004EA50 B339010C */  jal        func_8004E6CC
    /* 3F254 8004EA54 21304002 */   addu      $a2, $s2, $zero
    /* 3F258 8004EA58 01001026 */  addiu      $s0, $s0, 0x1
    /* 3F25C 8004EA5C 1400022A */  slti       $v0, $s0, 0x14
    /* 3F260 8004EA60 F9FF4014 */  bnez       $v0, .L8004EA48
    /* 3F264 8004EA64 21280000 */   addu      $a1, $zero, $zero
    /* 3F268 8004EA68 0680043C */  lui        $a0, %hi(D_80067144)
    /* 3F26C 8004EA6C 4471848C */  lw         $a0, %lo(D_80067144)($a0)
    /* 3F270 8004EA70 21304002 */  addu       $a2, $s2, $zero
    /* 3F274 8004EA74 B339010C */  jal        func_8004E6CC
    /* 3F278 8004EA78 1A008424 */   addiu     $a0, $a0, 0x1A
    /* 3F27C 8004EA7C 0680023C */  lui        $v0, %hi(D_80066D48)
    /* 3F280 8004EA80 486D428C */  lw         $v0, %lo(D_80066D48)($v0)
    /* 3F284 8004EA84 00000000 */  nop
    /* 3F288 8004EA88 2A004010 */  beqz       $v0, .L8004EB34
    /* 3F28C 8004EA8C 01000524 */   addiu     $a1, $zero, 0x1
    /* 3F290 8004EA90 2B004018 */  blez       $v0, .L8004EB40
    /* 3F294 8004EA94 21800000 */   addu      $s0, $zero, $zero
    /* 3F298 8004EA98 0680163C */  lui        $s6, %hi(D_80066ECC)
    /* 3F29C 8004EA9C CC6ED626 */  addiu      $s6, $s6, %lo(D_80066ECC)
    /* 3F2A0 8004EAA0 0680153C */  lui        $s5, %hi(D_80063B48)
    /* 3F2A4 8004EAA4 483BB526 */  addiu      $s5, $s5, %lo(D_80063B48)
    /* 3F2A8 8004EAA8 2D000224 */  addiu      $v0, $zero, 0x2D
    /* 3F2AC 8004EAAC 23A05200 */  subu       $s4, $v0, $s2
    /* 3F2B0 8004EAB0 0780133C */  lui        $s3, %hi(D_800698F4)
    /* 3F2B4 8004EAB4 F4987326 */  addiu      $s3, $s3, %lo(D_800698F4)
    /* 3F2B8 8004EAB8 21880000 */  addu       $s1, $zero, $zero
  .L8004EABC:
    /* 3F2BC 8004EABC 0680033C */  lui        $v1, %hi(D_80067118)
    /* 3F2C0 8004EAC0 1871638C */  lw         $v1, %lo(D_80067118)($v1)
    /* 3F2C4 8004EAC4 00000000 */  nop
    /* 3F2C8 8004EAC8 00110300 */  sll        $v0, $v1, 4
    /* 3F2CC 8004EACC 21104300 */  addu       $v0, $v0, $v1
    /* 3F2D0 8004EAD0 40100200 */  sll        $v0, $v0, 1
    /* 3F2D4 8004EAD4 21105500 */  addu       $v0, $v0, $s5
    /* 3F2D8 8004EAD8 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F2DC 8004EADC 0000638E */  lw         $v1, 0x0($s3)
    /* 3F2E0 8004EAE0 21285100 */  addu       $a1, $v0, $s1
    /* 3F2E4 8004EAE4 01000224 */  addiu      $v0, $zero, 0x1
    /* 3F2E8 8004EAE8 05006214 */  bne        $v1, $v0, .L8004EB00
    /* 3F2EC 8004EAEC 21380000 */   addu      $a3, $zero, $zero
    /* 3F2F0 8004EAF0 F8FF628E */  lw         $v0, -0x8($s3)
    /* 3F2F4 8004EAF4 00000000 */  nop
    /* 3F2F8 8004EAF8 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3F2FC 8004EAFC 16004728 */  slti       $a3, $v0, 0x16
  .L8004EB00:
    /* 3F300 8004EB00 2120C002 */  addu       $a0, $s6, $zero
    /* 3F304 8004EB04 21308002 */  addu       $a2, $s4, $zero
    /* 3F308 8004EB08 0200E734 */  ori        $a3, $a3, 0x2
    /* 3F30C 8004EB0C DD28010C */  jal        func_8004A374
    /* 3F310 8004EB10 1000A0AF */   sw        $zero, 0x10($sp)
    /* 3F314 8004EB14 0680023C */  lui        $v0, %hi(D_80066D48)
    /* 3F318 8004EB18 486D428C */  lw         $v0, %lo(D_80066D48)($v0)
    /* 3F31C 8004EB1C 01001026 */  addiu      $s0, $s0, 0x1
    /* 3F320 8004EB20 2A100202 */  slt        $v0, $s0, $v0
    /* 3F324 8004EB24 E5FF4014 */  bnez       $v0, .L8004EABC
    /* 3F328 8004EB28 06003126 */   addiu     $s1, $s1, 0x6
    /* 3F32C 8004EB2C D03A0108 */  j          .L8004EB40
    /* 3F330 8004EB30 00000000 */   nop
  .L8004EB34:
    /* 3F334 8004EB34 1C000424 */  addiu      $a0, $zero, 0x1C
    /* 3F338 8004EB38 B339010C */  jal        func_8004E6CC
    /* 3F33C 8004EB3C 21304002 */   addu      $a2, $s2, $zero
  .L8004EB40:
    /* 3F340 8004EB40 0680023C */  lui        $v0, %hi(D_80066D4C)
    /* 3F344 8004EB44 4C6D428C */  lw         $v0, %lo(D_80066D4C)($v0)
    /* 3F348 8004EB48 00000000 */  nop
    /* 3F34C 8004EB4C 2A004010 */  beqz       $v0, .L8004EBF8
    /* 3F350 8004EB50 1D000424 */   addiu     $a0, $zero, 0x1D
    /* 3F354 8004EB54 2B004018 */  blez       $v0, .L8004EC04
    /* 3F358 8004EB58 21800000 */   addu      $s0, $zero, $zero
    /* 3F35C 8004EB5C 0680163C */  lui        $s6, %hi(D_80066ECC)
    /* 3F360 8004EB60 CC6ED626 */  addiu      $s6, $s6, %lo(D_80066ECC)
    /* 3F364 8004EB64 0680153C */  lui        $s5, %hi(D_80063B49)
    /* 3F368 8004EB68 493BB526 */  addiu      $s5, $s5, %lo(D_80063B49)
    /* 3F36C 8004EB6C 3D000224 */  addiu      $v0, $zero, 0x3D
    /* 3F370 8004EB70 23A05200 */  subu       $s4, $v0, $s2
    /* 3F374 8004EB74 0780133C */  lui        $s3, %hi(D_800698F4)
    /* 3F378 8004EB78 F4987326 */  addiu      $s3, $s3, %lo(D_800698F4)
    /* 3F37C 8004EB7C 21880000 */  addu       $s1, $zero, $zero
  .L8004EB80:
    /* 3F380 8004EB80 0680033C */  lui        $v1, %hi(D_80067118)
    /* 3F384 8004EB84 1871638C */  lw         $v1, %lo(D_80067118)($v1)
    /* 3F388 8004EB88 00000000 */  nop
    /* 3F38C 8004EB8C 00110300 */  sll        $v0, $v1, 4
    /* 3F390 8004EB90 21104300 */  addu       $v0, $v0, $v1
    /* 3F394 8004EB94 40100200 */  sll        $v0, $v0, 1
    /* 3F398 8004EB98 21105500 */  addu       $v0, $v0, $s5
    /* 3F39C 8004EB9C 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F3A0 8004EBA0 0000638E */  lw         $v1, 0x0($s3)
    /* 3F3A4 8004EBA4 21285100 */  addu       $a1, $v0, $s1
    /* 3F3A8 8004EBA8 02000224 */  addiu      $v0, $zero, 0x2
    /* 3F3AC 8004EBAC 05006214 */  bne        $v1, $v0, .L8004EBC4
    /* 3F3B0 8004EBB0 21380000 */   addu      $a3, $zero, $zero
    /* 3F3B4 8004EBB4 F8FF628E */  lw         $v0, -0x8($s3)
    /* 3F3B8 8004EBB8 00000000 */  nop
    /* 3F3BC 8004EBBC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3F3C0 8004EBC0 16004728 */  slti       $a3, $v0, 0x16
  .L8004EBC4:
    /* 3F3C4 8004EBC4 2120C002 */  addu       $a0, $s6, $zero
    /* 3F3C8 8004EBC8 21308002 */  addu       $a2, $s4, $zero
    /* 3F3CC 8004EBCC 0200E734 */  ori        $a3, $a3, 0x2
    /* 3F3D0 8004EBD0 DD28010C */  jal        func_8004A374
    /* 3F3D4 8004EBD4 1000A0AF */   sw        $zero, 0x10($sp)
    /* 3F3D8 8004EBD8 0680023C */  lui        $v0, %hi(D_80066D4C)
    /* 3F3DC 8004EBDC 4C6D428C */  lw         $v0, %lo(D_80066D4C)($v0)
    /* 3F3E0 8004EBE0 01001026 */  addiu      $s0, $s0, 0x1
    /* 3F3E4 8004EBE4 2A100202 */  slt        $v0, $s0, $v0
    /* 3F3E8 8004EBE8 E5FF4014 */  bnez       $v0, .L8004EB80
    /* 3F3EC 8004EBEC 06003126 */   addiu     $s1, $s1, 0x6
    /* 3F3F0 8004EBF0 023B0108 */  j          .L8004EC08
    /* 3F3F4 8004EBF4 03000524 */   addiu     $a1, $zero, 0x3
  .L8004EBF8:
    /* 3F3F8 8004EBF8 02000524 */  addiu      $a1, $zero, 0x2
    /* 3F3FC 8004EBFC B339010C */  jal        func_8004E6CC
    /* 3F400 8004EC00 21304002 */   addu      $a2, $s2, $zero
  .L8004EC04:
    /* 3F404 8004EC04 03000524 */  addiu      $a1, $zero, 0x3
  .L8004EC08:
    /* 3F408 8004EC08 21304002 */  addu       $a2, $s2, $zero
    /* 3F40C 8004EC0C 0680023C */  lui        $v0, %hi(D_80066D50)
    /* 3F410 8004EC10 506D428C */  lw         $v0, %lo(D_80066D50)($v0)
    /* 3F414 8004EC14 1F000424 */  addiu      $a0, $zero, 0x1F
    /* 3F418 8004EC18 B339010C */  jal        func_8004E6CC
    /* 3F41C 8004EC1C 23208200 */   subu      $a0, $a0, $v0
    /* 3F420 8004EC20 0780033C */  lui        $v1, %hi(D_800698F4)
    /* 3F424 8004EC24 F498638C */  lw         $v1, %lo(D_800698F4)($v1)
    /* 3F428 8004EC28 02000224 */  addiu      $v0, $zero, 0x2
    /* 3F42C 8004EC2C 18006214 */  bne        $v1, $v0, .L8004EC90
    /* 3F430 8004EC30 0A000224 */   addiu     $v0, $zero, 0xA
    /* 3F434 8004EC34 0680013C */  lui        $at, %hi(D_80066D48)
    /* 3F438 8004EC38 486D22AC */  sw         $v0, %lo(D_80066D48)($at)
    /* 3F43C 8004EC3C 243B0108 */  j          .L8004EC90
    /* 3F440 8004EC40 00000000 */   nop
  .L8004EC44:
    /* 3F444 8004EC44 12006214 */  bne        $v1, $v0, .L8004EC90
    /* 3F448 8004EC48 08000424 */   addiu     $a0, $zero, 0x8
    /* 3F44C 8004EC4C FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 3F450 8004EC50 B339010C */  jal        func_8004E6CC
    /* 3F454 8004EC54 21304002 */   addu      $a2, $s2, $zero
    /* 3F458 8004EC58 60000424 */  addiu      $a0, $zero, 0x60
    /* 3F45C 8004EC5C 3C000524 */  addiu      $a1, $zero, 0x3C
    /* 3F460 8004EC60 2328B200 */  subu       $a1, $a1, $s2
    /* 3F464 8004EC64 9E000624 */  addiu      $a2, $zero, 0x9E
    /* 3F468 8004EC68 6F34010C */  jal        func_8004D1BC
    /* 3F46C 8004EC6C 2138A000 */   addu      $a3, $a1, $zero
    /* 3F470 8004EC70 20000424 */  addiu      $a0, $zero, 0x20
    /* 3F474 8004EC74 21280000 */  addu       $a1, $zero, $zero
    /* 3F478 8004EC78 B339010C */  jal        func_8004E6CC
    /* 3F47C 8004EC7C 21304002 */   addu      $a2, $s2, $zero
    /* 3F480 8004EC80 21000424 */  addiu      $a0, $zero, 0x21
    /* 3F484 8004EC84 01000524 */  addiu      $a1, $zero, 0x1
  .L8004EC88:
    /* 3F488 8004EC88 B339010C */  jal        func_8004E6CC
    /* 3F48C 8004EC8C 21304002 */   addu      $a2, $s2, $zero
  .L8004EC90:
    /* 3F490 8004EC90 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 3F494 8004EC94 4800B68F */  lw         $s6, 0x48($sp)
    /* 3F498 8004EC98 4400B58F */  lw         $s5, 0x44($sp)
    /* 3F49C 8004EC9C 4000B48F */  lw         $s4, 0x40($sp)
    /* 3F4A0 8004ECA0 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 3F4A4 8004ECA4 3800B28F */  lw         $s2, 0x38($sp)
    /* 3F4A8 8004ECA8 3400B18F */  lw         $s1, 0x34($sp)
    /* 3F4AC 8004ECAC 3000B08F */  lw         $s0, 0x30($sp)
    /* 3F4B0 8004ECB0 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 3F4B4 8004ECB4 0800E003 */  jr         $ra
    /* 3F4B8 8004ECB8 00000000 */   nop
endlabel func_8004E7F8
