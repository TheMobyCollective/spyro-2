.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8006FA98, 0x418

glabel func_titlescreen_and_loading_8006FA98
    /* 25834 8006FA98 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 25838 8006FA9C 3000B0AF */  sw         $s0, 0x30($sp)
  alabel D_titlescreen_and_loading_8006FAA0
    /* 2583C 8006FAA0 21808000 */  addu       $s0, $a0, $zero
    /* 25840 8006FAA4 3400B1AF */  sw         $s1, 0x34($sp)
    /* 25844 8006FAA8 21880002 */  addu       $s1, $s0, $zero
    /* 25848 8006FAAC 04001026 */  addiu      $s0, $s0, 0x4
    /* 2584C 8006FAB0 3800BFAF */  sw         $ra, 0x38($sp)
    /* 25850 8006FAB4 0000028E */  lw         $v0, 0x0($s0)
    /* 25854 8006FAB8 04001026 */  addiu      $s0, $s0, 0x4
    /* 25858 8006FABC 0680043C */  lui        $a0, %hi(D_800673F8)
  alabel D_titlescreen_and_loading_8006FAC0
    /* 2585C 8006FAC0 F8738424 */  addiu      $a0, $a0, %lo(D_800673F8)
    /* 25860 8006FAC4 0680013C */  lui        $at, %hi(D_800673F4)
    /* 25864 8006FAC8 F47330AC */  sw         $s0, %lo(D_800673F4)($at)
    /* 25868 8006FACC 000082AC */  sw         $v0, 0x0($a0)
  alabel D_titlescreen_and_loading_8006FAD0
    /* 2586C 8006FAD0 0000228E */  lw         $v0, 0x0($s1)
    /* 25870 8006FAD4 4992033C */  lui        $v1, (0x92492493 >> 16)
    /* 25874 8006FAD8 21802202 */  addu       $s0, $s1, $v0
    /* 25878 8006FADC 21880002 */  addu       $s1, $s0, $zero
    /* 2587C 8006FAE0 04001026 */  addiu      $s0, $s0, 0x4
    /* 25880 8006FAE4 04000226 */  addiu      $v0, $s0, 0x4
    /* 25884 8006FAE8 0680013C */  lui        $at, %hi(D_800670D4)
    /* 25888 8006FAEC D47022AC */  sw         $v0, %lo(D_800670D4)($at)
    /* 2588C 8006FAF0 0000028E */  lw         $v0, 0x0($s0)
    /* 25890 8006FAF4 93246334 */  ori        $v1, $v1, (0x92492493 & 0xFFFF)
  alabel D_titlescreen_and_loading_8006FAF8
    /* 25894 8006FAF8 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* 25898 8006FAFC 18004300 */  mult       $v0, $v1
    /* 2589C 8006FB00 10300000 */  mfhi       $a2
    /* 258A0 8006FB04 2118C200 */  addu       $v1, $a2, $v0
    /* 258A4 8006FB08 03190300 */  sra        $v1, $v1, 4
  alabel D_titlescreen_and_loading_8006FB0C
    /* 258A8 8006FB0C C3170200 */  sra        $v0, $v0, 31
  alabel D_titlescreen_and_loading_8006FB10
    /* 258AC 8006FB10 23186200 */  subu       $v1, $v1, $v0
    /* 258B0 8006FB14 0680013C */  lui        $at, %hi(D_80067124)
    /* 258B4 8006FB18 247123AC */  sw         $v1, %lo(D_80067124)($at)
    /* 258B8 8006FB1C 0000028E */  lw         $v0, 0x0($s0)
    /* 258BC 8006FB20 00000000 */  nop
    /* 258C0 8006FB24 21800202 */  addu       $s0, $s0, $v0
    /* 258C4 8006FB28 0000028E */  lw         $v0, 0x0($s0)
    /* 258C8 8006FB2C 04001026 */  addiu      $s0, $s0, 0x4
    /* 258CC 8006FB30 0680013C */  lui        $at, %hi(D_800673D4)
  alabel D_titlescreen_and_loading_8006FB34
    /* 258D0 8006FB34 D47330AC */  sw         $s0, %lo(D_800673D4)($at)
    /* 258D4 8006FB38 0680013C */  lui        $at, %hi(D_800673D8)
    /* 258D8 8006FB3C D87322AC */  sw         $v0, %lo(D_800673D8)($at)
    /* 258DC 8006FB40 0C004018 */  blez       $v0, .Ltitlescreen_and_loading_8006FB74
    /* 258E0 8006FB44 21180000 */   addu      $v1, $zero, $zero
  alabel D_titlescreen_and_loading_8006FB48
    /* 258E4 8006FB48 E0FF8424 */  addiu      $a0, $a0, -0x20
  .Ltitlescreen_and_loading_8006FB4C:
    /* 258E8 8006FB4C 0000028E */  lw         $v0, 0x0($s0)
    /* 258EC 8006FB50 01006324 */  addiu      $v1, $v1, 0x1
    /* 258F0 8006FB54 04004224 */  addiu      $v0, $v0, 0x4
    /* 258F4 8006FB58 21102202 */  addu       $v0, $s1, $v0
    /* 258F8 8006FB5C 000002AE */  sw         $v0, 0x0($s0)
    /* 258FC 8006FB60 0000828C */  lw         $v0, 0x0($a0)
    /* 25900 8006FB64 00000000 */  nop
    /* 25904 8006FB68 2A106200 */  slt        $v0, $v1, $v0
    /* 25908 8006FB6C F7FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_8006FB4C
  alabel D_titlescreen_and_loading_8006FB70
    /* 2590C 8006FB70 04001026 */   addiu     $s0, $s0, 0x4
  .Ltitlescreen_and_loading_8006FB74:
    /* 25910 8006FB74 0000228E */  lw         $v0, 0x0($s1)
    /* 25914 8006FB78 00000000 */  nop
    /* 25918 8006FB7C 21802202 */  addu       $s0, $s1, $v0
    /* 2591C 8006FB80 21880002 */  addu       $s1, $s0, $zero
    /* 25920 8006FB84 0000038E */  lw         $v1, 0x0($s0)
    /* 25924 8006FB88 0000228E */  lw         $v0, 0x0($s1)
    /* 25928 8006FB8C 00000000 */  nop
    /* 2592C 8006FB90 09004228 */  slti       $v0, $v0, 0x9
    /* 25930 8006FB94 0B004010 */  beqz       $v0, .Ltitlescreen_and_loading_8006FBC4
    /* 25934 8006FB98 21800302 */   addu      $s0, $s0, $v1
    /* 25938 8006FB9C 0100023C */  lui        $v0, (0x18000 >> 16)
    /* 2593C 8006FBA0 00804234 */  ori        $v0, $v0, (0x18000 & 0xFFFF)
    /* 25940 8006FBA4 0680013C */  lui        $at, %hi(D_800673DC)
    /* 25944 8006FBA8 DC7331AC */  sw         $s1, %lo(D_800673DC)($at)
    /* 25948 8006FBAC 0680013C */  lui        $at, %hi(D_80067400)
    /* 2594C 8006FBB0 007422AC */  sw         $v0, %lo(D_80067400)($at)
    /* 25950 8006FBB4 0680013C */  lui        $at, %hi(D_800673E4)
    /* 25954 8006FBB8 E47320AC */  sw         $zero, %lo(D_800673E4)($at)
    /* 25958 8006FBBC FCBE0108 */  j          .Ltitlescreen_and_loading_8006FBF0
    /* 2595C 8006FBC0 21880002 */   addu      $s1, $s0, $zero
  .Ltitlescreen_and_loading_8006FBC4:
    /* 25960 8006FBC4 0200023C */  lui        $v0, (0x2C000 >> 16)
    /* 25964 8006FBC8 00C04234 */  ori        $v0, $v0, (0x2C000 & 0xFFFF)
    /* 25968 8006FBCC 0680013C */  lui        $at, %hi(D_80067400)
    /* 2596C 8006FBD0 007422AC */  sw         $v0, %lo(D_80067400)($at)
    /* 25970 8006FBD4 04002226 */  addiu      $v0, $s1, 0x4
  alabel D_titlescreen_and_loading_8006FBD8
    /* 25974 8006FBD8 0680013C */  lui        $at, %hi(D_800673DC)
    /* 25978 8006FBDC DC7322AC */  sw         $v0, %lo(D_800673DC)($at)
    /* 2597C 8006FBE0 01000224 */  addiu      $v0, $zero, 0x1
    /* 25980 8006FBE4 0680013C */  lui        $at, %hi(D_800673E4)
    /* 25984 8006FBE8 E47322AC */  sw         $v0, %lo(D_800673E4)($at)
    /* 25988 8006FBEC 21880002 */  addu       $s1, $s0, $zero
  .Ltitlescreen_and_loading_8006FBF0:
    /* 2598C 8006FBF0 0000038E */  lw         $v1, 0x0($s0)
    /* 25990 8006FBF4 0000228E */  lw         $v0, 0x0($s1)
    /* 25994 8006FBF8 00000000 */  nop
    /* 25998 8006FBFC 09004228 */  slti       $v0, $v0, 0x9
    /* 2599C 8006FC00 06004010 */  beqz       $v0, .Ltitlescreen_and_loading_8006FC1C
    /* 259A0 8006FC04 21800302 */   addu      $s0, $s0, $v1
    /* 259A4 8006FC08 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 259A8 8006FC0C 0680013C */  lui        $at, %hi(D_800673E0)
    /* 259AC 8006FC10 E07331AC */  sw         $s1, %lo(D_800673E0)($at)
    /* 259B0 8006FC14 0ABF0108 */  j          .Ltitlescreen_and_loading_8006FC28
  alabel D_titlescreen_and_loading_8006FC18
    /* 259B4 8006FC18 000022AE */   sw        $v0, 0x0($s1)
  .Ltitlescreen_and_loading_8006FC1C:
    /* 259B8 8006FC1C 04002226 */  addiu      $v0, $s1, 0x4
  alabel D_titlescreen_and_loading_8006FC20
    /* 259BC 8006FC20 0680013C */  lui        $at, %hi(D_800673E0)
    /* 259C0 8006FC24 E07322AC */  sw         $v0, %lo(D_800673E0)($at)
  .Ltitlescreen_and_loading_8006FC28:
    /* 259C4 8006FC28 21880002 */  addu       $s1, $s0, $zero
    /* 259C8 8006FC2C 04001026 */  addiu      $s0, $s0, 0x4
    /* 259CC 8006FC30 0000028E */  lw         $v0, 0x0($s0)
    /* 259D0 8006FC34 04001026 */  addiu      $s0, $s0, 0x4
    /* 259D4 8006FC38 21180000 */  addu       $v1, $zero, $zero
    /* 259D8 8006FC3C 0680043C */  lui        $a0, %hi(D_800673EC)
    /* 259DC 8006FC40 EC738424 */  addiu      $a0, $a0, %lo(D_800673EC)
    /* 259E0 8006FC44 0680013C */  lui        $at, %hi(D_800673E8)
    /* 259E4 8006FC48 E87330AC */  sw         $s0, %lo(D_800673E8)($at)
    /* 259E8 8006FC4C 0B004018 */  blez       $v0, .Ltitlescreen_and_loading_8006FC7C
    /* 259EC 8006FC50 000082AC */   sw        $v0, 0x0($a0)
  .Ltitlescreen_and_loading_8006FC54:
    /* 259F0 8006FC54 0000028E */  lw         $v0, 0x0($s0)
    /* 259F4 8006FC58 01006324 */  addiu      $v1, $v1, 0x1
    /* 259F8 8006FC5C 04004224 */  addiu      $v0, $v0, 0x4
    /* 259FC 8006FC60 21102202 */  addu       $v0, $s1, $v0
    /* 25A00 8006FC64 000002AE */  sw         $v0, 0x0($s0)
    /* 25A04 8006FC68 0000828C */  lw         $v0, 0x0($a0)
    /* 25A08 8006FC6C 00000000 */  nop
    /* 25A0C 8006FC70 2A106200 */  slt        $v0, $v1, $v0
    /* 25A10 8006FC74 F7FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_8006FC54
    /* 25A14 8006FC78 04001026 */   addiu     $s0, $s0, 0x4
  .Ltitlescreen_and_loading_8006FC7C:
    /* 25A18 8006FC7C 0000228E */  lw         $v0, 0x0($s1)
    /* 25A1C 8006FC80 0680043C */  lui        $a0, %hi(D_800673F0)
  alabel D_titlescreen_and_loading_8006FC84
    /* 25A20 8006FC84 F0738424 */  addiu      $a0, $a0, %lo(D_800673F0)
    /* 25A24 8006FC88 21802202 */  addu       $s0, $s1, $v0
    /* 25A28 8006FC8C 21880002 */  addu       $s1, $s0, $zero
    /* 25A2C 8006FC90 04001026 */  addiu      $s0, $s0, 0x4
    /* 25A30 8006FC94 000090AC */  sw         $s0, 0x0($a0)
    /* 25A34 8006FC98 0000228E */  lw         $v0, 0x0($s1)
    /* 25A38 8006FC9C 18008424 */  addiu      $a0, $a0, 0x18
    /* 25A3C 8006FCA0 21802202 */  addu       $s0, $s1, $v0
    /* 25A40 8006FCA4 6C6F000C */  jal        func_8001BDB0
    /* 25A44 8006FCA8 21280002 */   addu      $a1, $s0, $zero
    /* 25A48 8006FCAC 0C001026 */  addiu      $s0, $s0, 0xC
    /* 25A4C 8006FCB0 21880002 */  addu       $s1, $s0, $zero
    /* 25A50 8006FCB4 04001026 */  addiu      $s0, $s0, 0x4
    /* 25A54 8006FCB8 0680013C */  lui        $at, %hi(D_800673FC)
    /* 25A58 8006FCBC FC7330AC */  sw         $s0, %lo(D_800673FC)($at)
    /* 25A5C 8006FCC0 0C00028E */  lw         $v0, 0xC($s0)
    /* 25A60 8006FCC4 00000000 */  nop
  alabel D_titlescreen_and_loading_8006FCC8
    /* 25A64 8006FCC8 21100202 */  addu       $v0, $s0, $v0
    /* 25A68 8006FCCC 0C0002AE */  sw         $v0, 0xC($s0)
    /* 25A6C 8006FCD0 0680033C */  lui        $v1, %hi(D_800673FC)
    /* 25A70 8006FCD4 FC73638C */  lw         $v1, %lo(D_800673FC)($v1)
    /* 25A74 8006FCD8 00000000 */  nop
    /* 25A78 8006FCDC 1000628C */  lw         $v0, 0x10($v1)
    /* 25A7C 8006FCE0 00000000 */  nop
    /* 25A80 8006FCE4 21100202 */  addu       $v0, $s0, $v0
    /* 25A84 8006FCE8 100062AC */  sw         $v0, 0x10($v1)
    /* 25A88 8006FCEC 0680033C */  lui        $v1, %hi(D_800673FC)
    /* 25A8C 8006FCF0 FC73638C */  lw         $v1, %lo(D_800673FC)($v1)
    /* 25A90 8006FCF4 00000000 */  nop
    /* 25A94 8006FCF8 1400628C */  lw         $v0, 0x14($v1)
    /* 25A98 8006FCFC 00000000 */  nop
    /* 25A9C 8006FD00 21100202 */  addu       $v0, $s0, $v0
    /* 25AA0 8006FD04 140062AC */  sw         $v0, 0x14($v1)
    /* 25AA4 8006FD08 0680033C */  lui        $v1, %hi(D_800673FC)
    /* 25AA8 8006FD0C FC73638C */  lw         $v1, %lo(D_800673FC)($v1)
    /* 25AAC 8006FD10 00000000 */  nop
    /* 25AB0 8006FD14 1800628C */  lw         $v0, 0x18($v1)
    /* 25AB4 8006FD18 00000000 */  nop
    /* 25AB8 8006FD1C 21100202 */  addu       $v0, $s0, $v0
    /* 25ABC 8006FD20 180062AC */  sw         $v0, 0x18($v1)
    /* 25AC0 8006FD24 0680033C */  lui        $v1, %hi(D_800673FC)
    /* 25AC4 8006FD28 FC73638C */  lw         $v1, %lo(D_800673FC)($v1)
    /* 25AC8 8006FD2C 00000000 */  nop
    /* 25ACC 8006FD30 1C00628C */  lw         $v0, 0x1C($v1)
    /* 25AD0 8006FD34 00000000 */  nop
    /* 25AD4 8006FD38 21100202 */  addu       $v0, $s0, $v0
    /* 25AD8 8006FD3C 1C0062AC */  sw         $v0, 0x1C($v1)
    /* 25ADC 8006FD40 0680033C */  lui        $v1, %hi(D_800673FC)
    /* 25AE0 8006FD44 FC73638C */  lw         $v1, %lo(D_800673FC)($v1)
    /* 25AE4 8006FD48 00000000 */  nop
    /* 25AE8 8006FD4C 2000628C */  lw         $v0, 0x20($v1)
  alabel D_titlescreen_and_loading_8006FD50
    /* 25AEC 8006FD50 00000000 */  nop
    /* 25AF0 8006FD54 21100202 */  addu       $v0, $s0, $v0
    /* 25AF4 8006FD58 200062AC */  sw         $v0, 0x20($v1)
    /* 25AF8 8006FD5C 0000228E */  lw         $v0, 0x0($s1)
    /* 25AFC 8006FD60 00000000 */  nop
    /* 25B00 8006FD64 21802202 */  addu       $s0, $s1, $v0
    /* 25B04 8006FD68 04000226 */  addiu      $v0, $s0, 0x4
    /* 25B08 8006FD6C 0780013C */  lui        $at, %hi(D_800681C4)
    /* 25B0C 8006FD70 C48122AC */  sw         $v0, %lo(D_800681C4)($at)
    /* 25B10 8006FD74 0000028E */  lw         $v0, 0x0($s0)
  alabel D_titlescreen_and_loading_8006FD78
    /* 25B14 8006FD78 00000000 */  nop
    /* 25B18 8006FD7C 21800202 */  addu       $s0, $s0, $v0
    /* 25B1C 8006FD80 21880002 */  addu       $s1, $s0, $zero
    /* 25B20 8006FD84 04001026 */  addiu      $s0, $s0, 0x4
    /* 25B24 8006FD88 0000028E */  lw         $v0, 0x0($s0)
    /* 25B28 8006FD8C 04001026 */  addiu      $s0, $s0, 0x4
  alabel D_titlescreen_and_loading_8006FD90
    /* 25B2C 8006FD90 0680013C */  lui        $at, %hi(D_80066F00)
    /* 25B30 8006FD94 006F30AC */  sw         $s0, %lo(D_80066F00)($at)
    /* 25B34 8006FD98 0680013C */  lui        $at, %hi(D_80066FA8)
    /* 25B38 8006FD9C A86F22AC */  sw         $v0, %lo(D_80066FA8)($at)
  alabel D_titlescreen_and_loading_8006FDA0
    /* 25B3C 8006FDA0 0A004018 */  blez       $v0, .Ltitlescreen_and_loading_8006FDCC
    /* 25B40 8006FDA4 21180000 */   addu      $v1, $zero, $zero
    /* 25B44 8006FDA8 21284000 */  addu       $a1, $v0, $zero
    /* 25B48 8006FDAC 21200002 */  addu       $a0, $s0, $zero
  .Ltitlescreen_and_loading_8006FDB0:
    /* 25B4C 8006FDB0 3C00828C */  lw         $v0, 0x3C($a0)
    /* 25B50 8006FDB4 01006324 */  addiu      $v1, $v1, 0x1
    /* 25B54 8006FDB8 21105100 */  addu       $v0, $v0, $s1
    /* 25B58 8006FDBC 3C0082AC */  sw         $v0, 0x3C($a0)
    /* 25B5C 8006FDC0 2A106500 */  slt        $v0, $v1, $a1
    /* 25B60 8006FDC4 FAFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_8006FDB0
    /* 25B64 8006FDC8 44008424 */   addiu     $a0, $a0, 0x44
  .Ltitlescreen_and_loading_8006FDCC:
    /* 25B68 8006FDCC 0000228E */  lw         $v0, 0x0($s1)
    /* 25B6C 8006FDD0 00000000 */  nop
  alabel D_titlescreen_and_loading_8006FDD4
    /* 25B70 8006FDD4 21802202 */  addu       $s0, $s1, $v0
  alabel D_titlescreen_and_loading_8006FDD8
    /* 25B74 8006FDD8 21880002 */  addu       $s1, $s0, $zero
    /* 25B78 8006FDDC 04001026 */  addiu      $s0, $s0, 0x4
    /* 25B7C 8006FDE0 0000038E */  lw         $v1, 0x0($s0)
    /* 25B80 8006FDE4 00000000 */  nop
    /* 25B84 8006FDE8 0D006018 */  blez       $v1, .Ltitlescreen_and_loading_8006FE20
    /* 25B88 8006FDEC 04001026 */   addiu     $s0, $s0, 0x4
    /* 25B8C 8006FDF0 0780043C */  lui        $a0, %hi(D_80069E30)
    /* 25B90 8006FDF4 309E8424 */  addiu      $a0, $a0, %lo(D_80069E30)
  .Ltitlescreen_and_loading_8006FDF8:
    /* 25B94 8006FDF8 00000286 */  lh         $v0, 0x0($s0)
    /* 25B98 8006FDFC 00000000 */  nop
    /* 25B9C 8006FE00 80100200 */  sll        $v0, $v0, 2
    /* 25BA0 8006FE04 21104400 */  addu       $v0, $v0, $a0
    /* 25BA4 8006FE08 000050AC */  sw         $s0, 0x0($v0)
    /* 25BA8 8006FE0C 02000286 */  lh         $v0, 0x2($s0)
    /* 25BAC 8006FE10 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 25BB0 8006FE14 21100202 */  addu       $v0, $s0, $v0
  alabel D_titlescreen_and_loading_8006FE18
    /* 25BB4 8006FE18 F7FF601C */  bgtz       $v1, .Ltitlescreen_and_loading_8006FDF8
  alabel D_titlescreen_and_loading_8006FE1C
    /* 25BB8 8006FE1C 04005024 */   addiu     $s0, $v0, 0x4
  .Ltitlescreen_and_loading_8006FE20:
    /* 25BBC 8006FE20 0000228E */  lw         $v0, 0x0($s1)
    /* 25BC0 8006FE24 00000000 */  nop
    /* 25BC4 8006FE28 21802202 */  addu       $s0, $s1, $v0
    /* 25BC8 8006FE2C 21880002 */  addu       $s1, $s0, $zero
    /* 25BCC 8006FE30 04001026 */  addiu      $s0, $s0, 0x4
    /* 25BD0 8006FE34 0000048E */  lw         $a0, 0x0($s0)
    /* 25BD4 8006FE38 04001026 */  addiu      $s0, $s0, 0x4
  alabel D_titlescreen_and_loading_8006FE3C
    /* 25BD8 8006FE3C 0680013C */  lui        $at, %hi(D_80066F2C)
    /* 25BDC 8006FE40 2C6F30AC */  sw         $s0, %lo(D_80066F2C)($at)
  alabel D_titlescreen_and_loading_8006FE44
    /* 25BE0 8006FE44 08008018 */  blez       $a0, .Ltitlescreen_and_loading_8006FE68
    /* 25BE4 8006FE48 21180000 */   addu      $v1, $zero, $zero
  .Ltitlescreen_and_loading_8006FE4C:
    /* 25BE8 8006FE4C 0000028E */  lw         $v0, 0x0($s0)
  alabel D_titlescreen_and_loading_8006FE50
    /* 25BEC 8006FE50 01006324 */  addiu      $v1, $v1, 0x1
    /* 25BF0 8006FE54 21100202 */  addu       $v0, $s0, $v0
    /* 25BF4 8006FE58 000002AE */  sw         $v0, 0x0($s0)
    /* 25BF8 8006FE5C 2A106400 */  slt        $v0, $v1, $a0
    /* 25BFC 8006FE60 FAFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_8006FE4C
  alabel D_titlescreen_and_loading_8006FE64
    /* 25C00 8006FE64 04001026 */   addiu     $s0, $s0, 0x4
  .Ltitlescreen_and_loading_8006FE68:
    /* 25C04 8006FE68 0000228E */  lw         $v0, 0x0($s1)
    /* 25C08 8006FE6C 01000524 */  addiu      $a1, $zero, 0x1
    /* 25C0C 8006FE70 21802202 */  addu       $s0, $s1, $v0
  alabel D_titlescreen_and_loading_8006FE74
    /* 25C10 8006FE74 0680013C */  lui        $at, %hi(D_800670C0)
  alabel D_titlescreen_and_loading_8006FE78
    /* 25C14 8006FE78 C07030AC */  sw         $s0, %lo(D_800670C0)($at)
    /* 25C18 8006FE7C 20001026 */  addiu      $s0, $s0, 0x20
  alabel D_titlescreen_and_loading_8006FE80
    /* 25C1C 8006FE80 21880002 */  addu       $s1, $s0, $zero
    /* 25C20 8006FE84 7F75000C */  jal        func_8001D5FC
    /* 25C24 8006FE88 04002426 */   addiu     $a0, $s1, 0x4
    /* 25C28 8006FE8C 0000228E */  lw         $v0, 0x0($s1)
    /* 25C2C 8006FE90 00000000 */  nop
    /* 25C30 8006FE94 21102202 */  addu       $v0, $s1, $v0
  alabel D_titlescreen_and_loading_8006FE98
    /* 25C34 8006FE98 3800BF8F */  lw         $ra, 0x38($sp)
    /* 25C38 8006FE9C 3400B18F */  lw         $s1, 0x34($sp)
    /* 25C3C 8006FEA0 3000B08F */  lw         $s0, 0x30($sp)
    /* 25C40 8006FEA4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 25C44 8006FEA8 0800E003 */  jr         $ra
    /* 25C48 8006FEAC 00000000 */   nop
endlabel func_titlescreen_and_loading_8006FA98
