.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E808, 0x4C4

glabel func_8001E808
    /* F008 8001E808 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* F00C 8001E80C 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* F010 8001E810 0680113C */  lui        $s1, %hi(D_80067FC5)
    /* F014 8001E814 C57F3126 */  addiu      $s1, $s1, %lo(D_80067FC5)
    /* F018 8001E818 6000BFAF */  sw         $ra, 0x60($sp)
    /* F01C 8001E81C 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* F020 8001E820 5800B4AF */  sw         $s4, 0x58($sp)
    /* F024 8001E824 5400B3AF */  sw         $s3, 0x54($sp)
    /* F028 8001E828 5000B2AF */  sw         $s2, 0x50($sp)
    /* F02C 8001E82C 4800B0AF */  sw         $s0, 0x48($sp)
    /* F030 8001E830 00002292 */  lbu        $v0, 0x0($s1)
    /* F034 8001E834 00000000 */  nop
    /* F038 8001E838 16014014 */  bnez       $v0, .L8001EC94
    /* F03C 8001E83C 07000224 */   addiu     $v0, $zero, 0x7
    /* F040 8001E840 0780033C */  lui        $v1, %hi(D_800681C8)
    /* F044 8001E844 C881638C */  lw         $v1, %lo(D_800681C8)($v1)
    /* F048 8001E848 00000000 */  nop
    /* F04C 8001E84C 11016210 */  beq        $v1, $v0, .L8001EC94
    /* F050 8001E850 00000000 */   nop
    /* F054 8001E854 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* F058 8001E858 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* F05C 8001E85C 6C6F000C */  jal        func_8001BDB0
    /* F060 8001E860 1000A427 */   addiu     $a0, $sp, 0x10
    /* F064 8001E864 E7FE3226 */  addiu      $s2, $s1, -0x119
    /* F068 8001E868 21204002 */  addu       $a0, $s2, $zero
    /* F06C 8001E86C 1000A527 */  addiu      $a1, $sp, 0x10
    /* F070 8001E870 1800A28F */  lw         $v0, 0x18($sp)
    /* F074 8001E874 01000624 */  addiu      $a2, $zero, 0x1
    /* F078 8001E878 DCFE4224 */  addiu      $v0, $v0, -0x124
    /* F07C 8001E87C 867D000C */  jal        func_8001F618
    /* F080 8001E880 1800A2AF */   sw        $v0, 0x18($sp)
    /* F084 8001E884 F6004014 */  bnez       $v0, .L8001EC60
    /* F088 8001E888 01000324 */   addiu     $v1, $zero, 0x1
    /* F08C 8001E88C 0680023C */  lui        $v0, %hi(D_80067FBC)
    /* F090 8001E890 BC7F428C */  lw         $v0, %lo(D_80067FBC)($v0)
    /* F094 8001E894 0680043C */  lui        $a0, %hi(D_80067018)
    /* F098 8001E898 1870848C */  lw         $a0, %lo(D_80067018)($a0)
    /* F09C 8001E89C 0680013C */  lui        $at, %hi(D_80067FC8)
    /* F0A0 8001E8A0 C87F23A0 */  sb         $v1, %lo(D_80067FC8)($at)
    /* F0A4 8001E8A4 21104400 */  addu       $v0, $v0, $a0
    /* F0A8 8001E8A8 0680013C */  lui        $at, %hi(D_80067FBC)
    /* F0AC 8001E8AC BC7F22AC */  sw         $v0, %lo(D_80067FBC)($at)
    /* F0B0 8001E8B0 3D004228 */  slti       $v0, $v0, 0x3D
    /* F0B4 8001E8B4 16004014 */  bnez       $v0, .L8001E910
    /* F0B8 8001E8B8 21980000 */   addu      $s3, $zero, $zero
    /* F0BC 8001E8BC 21800000 */  addu       $s0, $zero, $zero
    /* F0C0 8001E8C0 0680113C */  lui        $s1, %hi(D_800618BC)
    /* F0C4 8001E8C4 BC183126 */  addiu      $s1, $s1, %lo(D_800618BC)
  .L8001E8C8:
    /* F0C8 8001E8C8 B978000C */  jal        func_8001E2E4
    /* F0CC 8001E8CC 21202002 */   addu      $a0, $s1, $zero
    /* F0D0 8001E8D0 21204002 */  addu       $a0, $s2, $zero
    /* F0D4 8001E8D4 30F7000C */  jal        func_8003DCC0
    /* F0D8 8001E8D8 00010524 */   addiu     $a1, $zero, 0x100
    /* F0DC 8001E8DC 06004014 */  bnez       $v0, .L8001E8F8
    /* F0E0 8001E8E0 21204002 */   addu      $a0, $s2, $zero
    /* F0E4 8001E8E4 1000A527 */  addiu      $a1, $sp, 0x10
    /* F0E8 8001E8E8 867D000C */  jal        func_8001F618
    /* F0EC 8001E8EC 01000624 */   addiu     $a2, $zero, 0x1
    /* F0F0 8001E8F0 EC004014 */  bnez       $v0, .L8001ECA4
    /* F0F4 8001E8F4 00000000 */   nop
  .L8001E8F8:
    /* F0F8 8001E8F8 01001026 */  addiu      $s0, $s0, 0x1
    /* F0FC 8001E8FC 0500022A */  slti       $v0, $s0, 0x5
    /* F100 8001E900 F1FF4014 */  bnez       $v0, .L8001E8C8
    /* F104 8001E904 14003126 */   addiu     $s1, $s1, 0x14
    /* F108 8001E908 297B0008 */  j          .L8001ECA4
    /* F10C 8001E90C 00000000 */   nop
  .L8001E910:
    /* F110 8001E910 21800000 */  addu       $s0, $zero, $zero
    /* F114 8001E914 3BFF3426 */  addiu      $s4, $s1, -0xC5
    /* F118 8001E918 2000B227 */  addiu      $s2, $sp, 0x20
    /* F11C 8001E91C 1FFF3526 */  addiu      $s5, $s1, -0xE1
    /* F120 8001E920 21880000 */  addu       $s1, $zero, $zero
  .L8001E924:
    /* F124 8001E924 0000828E */  lw         $v0, 0x0($s4)
    /* F128 8001E928 0680013C */  lui        $at, %hi(D_8006186C)
    /* F12C 8001E92C 21083100 */  addu       $at, $at, $s1
    /* F130 8001E930 6C18238C */  lw         $v1, %lo(D_8006186C)($at)
    /* F134 8001E934 00000000 */  nop
    /* F138 8001E938 21104300 */  addu       $v0, $v0, $v1
    /* F13C 8001E93C FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* F140 8001E940 01086228 */  slti       $v0, $v1, 0x801
    /* F144 8001E944 03004014 */  bnez       $v0, .L8001E954
    /* F148 8001E948 3000A3AF */   sw        $v1, 0x30($sp)
    /* F14C 8001E94C 00F06224 */  addiu      $v0, $v1, -0x1000
    /* F150 8001E950 3000A2AF */  sw         $v0, 0x30($sp)
  .L8001E954:
    /* F154 8001E954 3000A28F */  lw         $v0, 0x30($sp)
    /* F158 8001E958 00000000 */  nop
    /* F15C 8001E95C 01044228 */  slti       $v0, $v0, 0x401
    /* F160 8001E960 03004014 */  bnez       $v0, .L8001E970
    /* F164 8001E964 21204002 */   addu      $a0, $s2, $zero
    /* F168 8001E968 00040224 */  addiu      $v0, $zero, 0x400
    /* F16C 8001E96C 3000A2AF */  sw         $v0, 0x30($sp)
  .L8001E970:
    /* F170 8001E970 0400828E */  lw         $v0, 0x4($s4)
    /* F174 8001E974 0680013C */  lui        $at, %hi(D_80061870)
    /* F178 8001E978 21083100 */  addu       $at, $at, $s1
    /* F17C 8001E97C 7018238C */  lw         $v1, %lo(D_80061870)($at)
    /* F180 8001E980 3000A527 */  addiu      $a1, $sp, 0x30
    /* F184 8001E984 21104300 */  addu       $v0, $v0, $v1
    /* F188 8001E988 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* F18C 8001E98C 3400A2AF */  sw         $v0, 0x34($sp)
    /* F190 8001E990 0800828E */  lw         $v0, 0x8($s4)
    /* F194 8001E994 0680013C */  lui        $at, %hi(D_80061874)
    /* F198 8001E998 21083100 */  addu       $at, $at, $s1
    /* F19C 8001E99C 7418238C */  lw         $v1, %lo(D_80061874)($at)
    /* F1A0 8001E9A0 2130A002 */  addu       $a2, $s5, $zero
    /* F1A4 8001E9A4 21104300 */  addu       $v0, $v0, $v1
    /* F1A8 8001E9A8 487B000C */  jal        func_8001ED20
    /* F1AC 8001E9AC 3800A2AF */   sw        $v0, 0x38($sp)
    /* F1B0 8001E9B0 21204002 */  addu       $a0, $s2, $zero
    /* F1B4 8001E9B4 30F7000C */  jal        func_8003DCC0
    /* F1B8 8001E9B8 00010524 */   addiu     $a1, $zero, 0x100
    /* F1BC 8001E9BC 0E004014 */  bnez       $v0, .L8001E9F8
    /* F1C0 8001E9C0 ACFF8426 */   addiu     $a0, $s4, -0x54
    /* F1C4 8001E9C4 21284002 */  addu       $a1, $s2, $zero
    /* F1C8 8001E9C8 867D000C */  jal        func_8001F618
    /* F1CC 8001E9CC 01000624 */   addiu     $a2, $zero, 0x1
    /* F1D0 8001E9D0 09004010 */  beqz       $v0, .L8001E9F8
    /* F1D4 8001E9D4 01000224 */   addiu     $v0, $zero, 0x1
    /* F1D8 8001E9D8 04100202 */  sllv       $v0, $v0, $s0
    /* F1DC 8001E9DC 25986202 */  or         $s3, $s3, $v0
    /* F1E0 8001E9E0 21204002 */  addu       $a0, $s2, $zero
    /* F1E4 8001E9E4 1000A527 */  addiu      $a1, $sp, 0x10
    /* F1E8 8001E9E8 867D000C */  jal        func_8001F618
    /* F1EC 8001E9EC 01000624 */   addiu     $a2, $zero, 0x1
    /* F1F0 8001E9F0 A2004014 */  bnez       $v0, .L8001EC7C
    /* F1F4 8001E9F4 14008426 */   addiu     $a0, $s4, 0x14
  .L8001E9F8:
    /* F1F8 8001E9F8 01001026 */  addiu      $s0, $s0, 0x1
    /* F1FC 8001E9FC 0400022A */  slti       $v0, $s0, 0x4
    /* F200 8001EA00 C8FF4014 */  bnez       $v0, .L8001E924
    /* F204 8001EA04 14003126 */   addiu     $s1, $s1, 0x14
    /* F208 8001EA08 A6006012 */  beqz       $s3, .L8001ECA4
    /* F20C 8001EA0C 21800000 */   addu      $s0, $zero, $zero
    /* F210 8001EA10 2000B227 */  addiu      $s2, $sp, 0x20
    /* F214 8001EA14 0680143C */  lui        $s4, %hi(D_80067F00)
    /* F218 8001EA18 007F9426 */  addiu      $s4, $s4, %lo(D_80067F00)
    /* F21C 8001EA1C E4FF9526 */  addiu      $s5, $s4, -0x1C
    /* F220 8001EA20 21880000 */  addu       $s1, $zero, $zero
  .L8001EA24:
    /* F224 8001EA24 07101302 */  srav       $v0, $s3, $s0
    /* F228 8001EA28 01004230 */  andi       $v0, $v0, 0x1
    /* F22C 8001EA2C 3C004010 */  beqz       $v0, .L8001EB20
    /* F230 8001EA30 00000000 */   nop
    /* F234 8001EA34 0680013C */  lui        $at, %hi(D_8006186C)
    /* F238 8001EA38 21083100 */  addu       $at, $at, $s1
    /* F23C 8001EA3C 6C18228C */  lw         $v0, %lo(D_8006186C)($at)
    /* F240 8001EA40 0000838E */  lw         $v1, 0x0($s4)
    /* F244 8001EA44 40100200 */  sll        $v0, $v0, 1
    /* F248 8001EA48 21186200 */  addu       $v1, $v1, $v0
    /* F24C 8001EA4C FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* F250 8001EA50 01086228 */  slti       $v0, $v1, 0x801
    /* F254 8001EA54 03004014 */  bnez       $v0, .L8001EA64
    /* F258 8001EA58 3000A3AF */   sw        $v1, 0x30($sp)
    /* F25C 8001EA5C 00F06224 */  addiu      $v0, $v1, -0x1000
    /* F260 8001EA60 3000A2AF */  sw         $v0, 0x30($sp)
  .L8001EA64:
    /* F264 8001EA64 3000A28F */  lw         $v0, 0x30($sp)
    /* F268 8001EA68 00000000 */  nop
    /* F26C 8001EA6C 01044228 */  slti       $v0, $v0, 0x401
    /* F270 8001EA70 03004014 */  bnez       $v0, .L8001EA80
    /* F274 8001EA74 21204002 */   addu      $a0, $s2, $zero
    /* F278 8001EA78 00040224 */  addiu      $v0, $zero, 0x400
    /* F27C 8001EA7C 3000A2AF */  sw         $v0, 0x30($sp)
  .L8001EA80:
    /* F280 8001EA80 3000A527 */  addiu      $a1, $sp, 0x30
    /* F284 8001EA84 2130A002 */  addu       $a2, $s5, $zero
    /* F288 8001EA88 0680013C */  lui        $at, %hi(D_80061870)
    /* F28C 8001EA8C 21083100 */  addu       $at, $at, $s1
    /* F290 8001EA90 7018238C */  lw         $v1, %lo(D_80061870)($at)
    /* F294 8001EA94 0400828E */  lw         $v0, 0x4($s4)
    /* F298 8001EA98 40180300 */  sll        $v1, $v1, 1
    /* F29C 8001EA9C 21104300 */  addu       $v0, $v0, $v1
    /* F2A0 8001EAA0 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* F2A4 8001EAA4 3400A2AF */  sw         $v0, 0x34($sp)
    /* F2A8 8001EAA8 0680013C */  lui        $at, %hi(D_80061874)
    /* F2AC 8001EAAC 21083100 */  addu       $at, $at, $s1
    /* F2B0 8001EAB0 7418228C */  lw         $v0, %lo(D_80061874)($at)
    /* F2B4 8001EAB4 0800838E */  lw         $v1, 0x8($s4)
    /* F2B8 8001EAB8 40100200 */  sll        $v0, $v0, 1
    /* F2BC 8001EABC 21186200 */  addu       $v1, $v1, $v0
    /* F2C0 8001EAC0 487B000C */  jal        func_8001ED20
    /* F2C4 8001EAC4 3800A3AF */   sw        $v1, 0x38($sp)
    /* F2C8 8001EAC8 21204002 */  addu       $a0, $s2, $zero
    /* F2CC 8001EACC 30F7000C */  jal        func_8003DCC0
    /* F2D0 8001EAD0 00010524 */   addiu     $a1, $zero, 0x100
    /* F2D4 8001EAD4 0F004014 */  bnez       $v0, .L8001EB14
    /* F2D8 8001EAD8 01000224 */   addiu     $v0, $zero, 0x1
    /* F2DC 8001EADC ACFF8426 */  addiu      $a0, $s4, -0x54
    /* F2E0 8001EAE0 21284002 */  addu       $a1, $s2, $zero
    /* F2E4 8001EAE4 867D000C */  jal        func_8001F618
    /* F2E8 8001EAE8 01000624 */   addiu     $a2, $zero, 0x1
    /* F2EC 8001EAEC 08004010 */  beqz       $v0, .L8001EB10
    /* F2F0 8001EAF0 21204002 */   addu      $a0, $s2, $zero
    /* F2F4 8001EAF4 1000A527 */  addiu      $a1, $sp, 0x10
    /* F2F8 8001EAF8 867D000C */  jal        func_8001F618
    /* F2FC 8001EAFC 01000624 */   addiu     $a2, $zero, 0x1
    /* F300 8001EB00 08004010 */  beqz       $v0, .L8001EB24
    /* F304 8001EB04 01001026 */   addiu     $s0, $s0, 0x1
    /* F308 8001EB08 1F7B0008 */  j          .L8001EC7C
    /* F30C 8001EB0C 14008426 */   addiu     $a0, $s4, 0x14
  .L8001EB10:
    /* F310 8001EB10 01000224 */  addiu      $v0, $zero, 0x1
  .L8001EB14:
    /* F314 8001EB14 04100202 */  sllv       $v0, $v0, $s0
    /* F318 8001EB18 27100200 */  nor        $v0, $zero, $v0
    /* F31C 8001EB1C 24986202 */  and        $s3, $s3, $v0
  .L8001EB20:
    /* F320 8001EB20 01001026 */  addiu      $s0, $s0, 0x1
  .L8001EB24:
    /* F324 8001EB24 0400022A */  slti       $v0, $s0, 0x4
    /* F328 8001EB28 BEFF4014 */  bnez       $v0, .L8001EA24
    /* F32C 8001EB2C 14003126 */   addiu     $s1, $s1, 0x14
    /* F330 8001EB30 5C006012 */  beqz       $s3, .L8001ECA4
    /* F334 8001EB34 21800000 */   addu      $s0, $zero, $zero
    /* F338 8001EB38 2000B227 */  addiu      $s2, $sp, 0x20
    /* F33C 8001EB3C 0680143C */  lui        $s4, %hi(D_80067F00)
    /* F340 8001EB40 007F9426 */  addiu      $s4, $s4, %lo(D_80067F00)
    /* F344 8001EB44 E4FF9526 */  addiu      $s5, $s4, -0x1C
    /* F348 8001EB48 21880000 */  addu       $s1, $zero, $zero
  .L8001EB4C:
    /* F34C 8001EB4C 07101302 */  srav       $v0, $s3, $s0
    /* F350 8001EB50 01004230 */  andi       $v0, $v0, 0x1
    /* F354 8001EB54 3C004010 */  beqz       $v0, .L8001EC48
    /* F358 8001EB58 00000000 */   nop
    /* F35C 8001EB5C 0680013C */  lui        $at, %hi(D_8006186C)
    /* F360 8001EB60 21083100 */  addu       $at, $at, $s1
    /* F364 8001EB64 6C18228C */  lw         $v0, %lo(D_8006186C)($at)
    /* F368 8001EB68 0000838E */  lw         $v1, 0x0($s4)
    /* F36C 8001EB6C 80100200 */  sll        $v0, $v0, 2
    /* F370 8001EB70 21186200 */  addu       $v1, $v1, $v0
    /* F374 8001EB74 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* F378 8001EB78 01086228 */  slti       $v0, $v1, 0x801
    /* F37C 8001EB7C 03004014 */  bnez       $v0, .L8001EB8C
    /* F380 8001EB80 3000A3AF */   sw        $v1, 0x30($sp)
    /* F384 8001EB84 00F06224 */  addiu      $v0, $v1, -0x1000
    /* F388 8001EB88 3000A2AF */  sw         $v0, 0x30($sp)
  .L8001EB8C:
    /* F38C 8001EB8C 3000A28F */  lw         $v0, 0x30($sp)
    /* F390 8001EB90 00000000 */  nop
    /* F394 8001EB94 01044228 */  slti       $v0, $v0, 0x401
    /* F398 8001EB98 03004014 */  bnez       $v0, .L8001EBA8
    /* F39C 8001EB9C 21204002 */   addu      $a0, $s2, $zero
    /* F3A0 8001EBA0 00040224 */  addiu      $v0, $zero, 0x400
    /* F3A4 8001EBA4 3000A2AF */  sw         $v0, 0x30($sp)
  .L8001EBA8:
    /* F3A8 8001EBA8 3000A527 */  addiu      $a1, $sp, 0x30
    /* F3AC 8001EBAC 2130A002 */  addu       $a2, $s5, $zero
    /* F3B0 8001EBB0 0680013C */  lui        $at, %hi(D_80061870)
    /* F3B4 8001EBB4 21083100 */  addu       $at, $at, $s1
    /* F3B8 8001EBB8 7018238C */  lw         $v1, %lo(D_80061870)($at)
    /* F3BC 8001EBBC 0400828E */  lw         $v0, 0x4($s4)
    /* F3C0 8001EBC0 80180300 */  sll        $v1, $v1, 2
    /* F3C4 8001EBC4 21104300 */  addu       $v0, $v0, $v1
    /* F3C8 8001EBC8 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* F3CC 8001EBCC 3400A2AF */  sw         $v0, 0x34($sp)
    /* F3D0 8001EBD0 0680013C */  lui        $at, %hi(D_80061874)
    /* F3D4 8001EBD4 21083100 */  addu       $at, $at, $s1
    /* F3D8 8001EBD8 7418228C */  lw         $v0, %lo(D_80061874)($at)
    /* F3DC 8001EBDC 0800838E */  lw         $v1, 0x8($s4)
    /* F3E0 8001EBE0 80100200 */  sll        $v0, $v0, 2
    /* F3E4 8001EBE4 21186200 */  addu       $v1, $v1, $v0
    /* F3E8 8001EBE8 487B000C */  jal        func_8001ED20
    /* F3EC 8001EBEC 3800A3AF */   sw        $v1, 0x38($sp)
    /* F3F0 8001EBF0 21204002 */  addu       $a0, $s2, $zero
    /* F3F4 8001EBF4 30F7000C */  jal        func_8003DCC0
    /* F3F8 8001EBF8 00010524 */   addiu     $a1, $zero, 0x100
    /* F3FC 8001EBFC 0F004014 */  bnez       $v0, .L8001EC3C
    /* F400 8001EC00 01000224 */   addiu     $v0, $zero, 0x1
    /* F404 8001EC04 ACFF8426 */  addiu      $a0, $s4, -0x54
    /* F408 8001EC08 21284002 */  addu       $a1, $s2, $zero
    /* F40C 8001EC0C 867D000C */  jal        func_8001F618
    /* F410 8001EC10 01000624 */   addiu     $a2, $zero, 0x1
    /* F414 8001EC14 08004010 */  beqz       $v0, .L8001EC38
    /* F418 8001EC18 21204002 */   addu      $a0, $s2, $zero
    /* F41C 8001EC1C 1000A527 */  addiu      $a1, $sp, 0x10
    /* F420 8001EC20 867D000C */  jal        func_8001F618
    /* F424 8001EC24 01000624 */   addiu     $a2, $zero, 0x1
    /* F428 8001EC28 08004010 */  beqz       $v0, .L8001EC4C
    /* F42C 8001EC2C 01001026 */   addiu     $s0, $s0, 0x1
    /* F430 8001EC30 1F7B0008 */  j          .L8001EC7C
    /* F434 8001EC34 14008426 */   addiu     $a0, $s4, 0x14
  .L8001EC38:
    /* F438 8001EC38 01000224 */  addiu      $v0, $zero, 0x1
  .L8001EC3C:
    /* F43C 8001EC3C 04100202 */  sllv       $v0, $v0, $s0
    /* F440 8001EC40 27100200 */  nor        $v0, $zero, $v0
    /* F444 8001EC44 24986202 */  and        $s3, $s3, $v0
  .L8001EC48:
    /* F448 8001EC48 01001026 */  addiu      $s0, $s0, 0x1
  .L8001EC4C:
    /* F44C 8001EC4C 0400022A */  slti       $v0, $s0, 0x4
    /* F450 8001EC50 BEFF4014 */  bnez       $v0, .L8001EB4C
    /* F454 8001EC54 14003126 */   addiu     $s1, $s1, 0x14
    /* F458 8001EC58 297B0008 */  j          .L8001ECA4
    /* F45C 8001EC5C 00000000 */   nop
  .L8001EC60:
    /* F460 8001EC60 0680023C */  lui        $v0, %hi(D_80067FC6)
    /* F464 8001EC64 C67F4290 */  lbu        $v0, %lo(D_80067FC6)($v0)
    /* F468 8001EC68 00000000 */  nop
    /* F46C 8001EC6C 0B004010 */  beqz       $v0, .L8001EC9C
    /* F470 8001EC70 00000000 */   nop
    /* F474 8001EC74 257B0008 */  j          .L8001EC94
    /* F478 8001EC78 00000000 */   nop
  .L8001EC7C:
    /* F47C 8001EC7C 21284002 */  addu       $a1, $s2, $zero
    /* F480 8001EC80 867B000C */  jal        func_8001EE18
    /* F484 8001EC84 2130A002 */   addu      $a2, $s5, $zero
    /* F488 8001EC88 10000224 */  addiu      $v0, $zero, 0x10
    /* F48C 8001EC8C 297B0008 */  j          .L8001ECA4
    /* F490 8001EC90 B80082AE */   sw        $v0, 0xB8($s4)
  .L8001EC94:
    /* F494 8001EC94 0680013C */  lui        $at, %hi(D_80067FB8)
    /* F498 8001EC98 B87F20AC */  sw         $zero, %lo(D_80067FB8)($at)
  .L8001EC9C:
    /* F49C 8001EC9C 0680013C */  lui        $at, %hi(D_80067FBC)
    /* F4A0 8001ECA0 BC7F20AC */  sw         $zero, %lo(D_80067FBC)($at)
  .L8001ECA4:
    /* F4A4 8001ECA4 6000BF8F */  lw         $ra, 0x60($sp)
    /* F4A8 8001ECA8 5C00B58F */  lw         $s5, 0x5C($sp)
    /* F4AC 8001ECAC 5800B48F */  lw         $s4, 0x58($sp)
    /* F4B0 8001ECB0 5400B38F */  lw         $s3, 0x54($sp)
    /* F4B4 8001ECB4 5000B28F */  lw         $s2, 0x50($sp)
    /* F4B8 8001ECB8 4C00B18F */  lw         $s1, 0x4C($sp)
    /* F4BC 8001ECBC 4800B08F */  lw         $s0, 0x48($sp)
    /* F4C0 8001ECC0 6800BD27 */  addiu      $sp, $sp, 0x68
    /* F4C4 8001ECC4 0800E003 */  jr         $ra
    /* F4C8 8001ECC8 00000000 */   nop
endlabel func_8001E808
