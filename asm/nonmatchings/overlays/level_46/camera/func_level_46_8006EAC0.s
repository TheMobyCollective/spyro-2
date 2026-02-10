.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_46_8006EAC0, 0x364

glabel func_level_46_8006EAC0
    /* 358285C 8006EAC0 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 3582860 8006EAC4 4800B2AF */  sw         $s2, 0x48($sp)
    /* 3582864 8006EAC8 0680123C */  lui        $s2, %hi(D_80067FBC)
    /* 3582868 8006EACC BC7F5226 */  addiu      $s2, $s2, %lo(D_80067FBC)
    /* 358286C 8006EAD0 5000BFAF */  sw         $ra, 0x50($sp)
    /* 3582870 8006EAD4 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* 3582874 8006EAD8 4400B1AF */  sw         $s1, 0x44($sp)
    /* 3582878 8006EADC 4000B0AF */  sw         $s0, 0x40($sp)
    /* 358287C 8006EAE0 0000428E */  lw         $v0, 0x0($s2)
    /* 3582880 8006EAE4 00000000 */  nop
    /* 3582884 8006EAE8 02004224 */  addiu      $v0, $v0, 0x2
    /* 3582888 8006EAEC 83980200 */  sra        $s3, $v0, 2
    /* 358288C 8006EAF0 0500622A */  slti       $v0, $s3, 0x5
    /* 3582890 8006EAF4 02004014 */  bnez       $v0, .Llevel_46_8006EB00
    /* 3582894 8006EAF8 00000000 */   nop
    /* 3582898 8006EAFC 04001324 */  addiu      $s3, $zero, 0x4
  .Llevel_46_8006EB00:
    /* 358289C 8006EB00 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 35828A0 8006EB04 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 35828A4 8006EB08 0D000224 */  addiu      $v0, $zero, 0xD
    /* 35828A8 8006EB0C 05006210 */  beq        $v1, $v0, .Llevel_46_8006EB24
    /* 35828AC 8006EB10 14000224 */   addiu     $v0, $zero, 0x14
    /* 35828B0 8006EB14 68006210 */  beq        $v1, $v0, .Llevel_46_8006ECB8
    /* 35828B4 8006EB18 21280000 */   addu      $a1, $zero, $zero
    /* 35828B8 8006EB1C 81BB0108 */  j          .Llevel_46_8006EE04
    /* 35828BC 8006EB20 00000000 */   nop
  .Llevel_46_8006EB24:
    /* 35828C0 8006EB24 28FF4426 */  addiu      $a0, $s2, -0xD8
    /* 35828C4 8006EB28 0780103C */  lui        $s0, %hi(D_80069FF0)
    /* 35828C8 8006EB2C F09F1026 */  addiu      $s0, $s0, %lo(D_80069FF0)
    /* 35828CC 8006EB30 6C6F000C */  jal        func_8001BDB0
    /* 35828D0 8006EB34 21280002 */   addu      $a1, $s0, $zero
    /* 35828D4 8006EB38 1000A427 */  addiu      $a0, $sp, 0x10
    /* 35828D8 8006EB3C 0680053C */  lui        $a1, %hi(D_80067FF0)
    /* 35828DC 8006EB40 F07FA58C */  lw         $a1, %lo(D_80067FF0)($a1)
    /* 35828E0 8006EB44 21300002 */  addu       $a2, $s0, $zero
    /* 35828E4 8006EB48 806F000C */  jal        func_8001BE00
    /* 35828E8 8006EB4C 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 35828EC 8006EB50 1000A48F */  lw         $a0, 0x10($sp)
    /* 35828F0 8006EB54 1400A58F */  lw         $a1, 0x14($sp)
    /* 35828F4 8006EB58 2E6D000C */  jal        func_8001B4B8
    /* 35828F8 8006EB5C 01000624 */   addiu     $a2, $zero, 0x1
    /* 35828FC 8006EB60 0680033C */  lui        $v1, %hi(D_80067FB8)
    /* 3582900 8006EB64 B87F638C */  lw         $v1, %lo(D_80067FB8)($v1)
    /* 3582904 8006EB68 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 3582908 8006EB6C F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 358290C 8006EB70 37006014 */  bnez       $v1, .Llevel_46_8006EC50
    /* 3582910 8006EB74 00000000 */   nop
    /* 3582914 8006EB78 58FF4426 */  addiu      $a0, $s2, -0xA8
    /* 3582918 8006EB7C 0680053C */  lui        $a1, %hi(D_80061628)
    /* 358291C 8006EB80 2816A524 */  addiu      $a1, $a1, %lo(D_80061628)
    /* 3582920 8006EB84 337B000C */  jal        func_8001ECCC
    /* 3582924 8006EB88 21304000 */   addu      $a2, $v0, $zero
    /* 3582928 8006EB8C 087C000C */  jal        func_8001F020
    /* 358292C 8006EB90 00040424 */   addiu     $a0, $zero, 0x400
    /* 3582930 8006EB94 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 3582934 8006EB98 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 3582938 8006EB9C 42000224 */  addiu      $v0, $zero, 0x42
    /* 358293C 8006EBA0 2B006214 */  bne        $v1, $v0, .Llevel_46_8006EC50
    /* 3582940 8006EBA4 00000000 */   nop
    /* 3582944 8006EBA8 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 3582948 8006EBAC 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 358294C 8006EBB0 00000000 */  nop
    /* 3582950 8006EBB4 5800428C */  lw         $v0, 0x58($v0)
    /* 3582954 8006EBB8 00000000 */  nop
    /* 3582958 8006EBBC 06004390 */  lbu        $v1, 0x6($v0)
    /* 358295C 8006EBC0 03000224 */  addiu      $v0, $zero, 0x3
    /* 3582960 8006EBC4 22006214 */  bne        $v1, $v0, .Llevel_46_8006EC50
    /* 3582964 8006EBC8 00000000 */   nop
    /* 3582968 8006EBCC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 358296C 8006EBD0 886E000C */  jal        func_8001BA20
    /* 3582970 8006EBD4 21280000 */   addu      $a1, $zero, $zero
    /* 3582974 8006EBD8 21284000 */  addu       $a1, $v0, $zero
    /* 3582978 8006EBDC 0048A228 */  slti       $v0, $a1, 0x4800
    /* 358297C 8006EBE0 1B004010 */  beqz       $v0, .Llevel_46_8006EC50
    /* 3582980 8006EBE4 00F8A524 */   addiu     $a1, $a1, -0x800
    /* 3582984 8006EBE8 0200A104 */  bgez       $a1, .Llevel_46_8006EBF4
    /* 3582988 8006EBEC 00400224 */   addiu     $v0, $zero, 0x4000
    /* 358298C 8006EBF0 21280000 */  addu       $a1, $zero, $zero
  .Llevel_46_8006EBF4:
    /* 3582990 8006EBF4 23284500 */  subu       $a1, $v0, $a1
    /* 3582994 8006EBF8 0680033C */  lui        $v1, %hi(D_8006162C)
    /* 3582998 8006EBFC 2C16638C */  lw         $v1, %lo(D_8006162C)($v1)
    /* 358299C 8006EC00 30000224 */  addiu      $v0, $zero, 0x30
    /* 35829A0 8006EC04 23104300 */  subu       $v0, $v0, $v1
    /* 35829A4 8006EC08 18004500 */  mult       $v0, $a1
    /* 35829A8 8006EC0C 0680043C */  lui        $a0, %hi(D_80061634)
    /* 35829AC 8006EC10 3416848C */  lw         $a0, %lo(D_80061634)($a0)
    /* 35829B0 8006EC14 12400000 */  mflo       $t0
    /* 35829B4 8006EC18 60FF0224 */  addiu      $v0, $zero, -0xA0
    /* 35829B8 8006EC1C 23104400 */  subu       $v0, $v0, $a0
    /* 35829BC 8006EC20 18004500 */  mult       $v0, $a1
    /* 35829C0 8006EC24 83130800 */  sra        $v0, $t0, 14
    /* 35829C4 8006EC28 21186200 */  addu       $v1, $v1, $v0
    /* 35829C8 8006EC2C FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 35829CC 8006EC30 0680013C */  lui        $at, %hi(D_80067F18)
    /* 35829D0 8006EC34 187F23AC */  sw         $v1, %lo(D_80067F18)($at)
    /* 35829D4 8006EC38 12280000 */  mflo       $a1
    /* 35829D8 8006EC3C 83130500 */  sra        $v0, $a1, 14
    /* 35829DC 8006EC40 21208200 */  addu       $a0, $a0, $v0
    /* 35829E0 8006EC44 FF0F8430 */  andi       $a0, $a0, 0xFFF
    /* 35829E4 8006EC48 0680013C */  lui        $at, %hi(D_80067F20)
    /* 35829E8 8006EC4C 207F24AC */  sw         $a0, %lo(D_80067F20)($at)
  .Llevel_46_8006EC50:
    /* 35829EC 8006EC50 0680113C */  lui        $s1, %hi(D_80067F64)
    /* 35829F0 8006EC54 647F3126 */  addiu      $s1, $s1, %lo(D_80067F64)
    /* 35829F4 8006EC58 21202002 */  addu       $a0, $s1, $zero
    /* 35829F8 8006EC5C 80801300 */  sll        $s0, $s3, 2
    /* 35829FC 8006EC60 21801302 */  addu       $s0, $s0, $s3
    /* 3582A00 8006EC64 80801000 */  sll        $s0, $s0, 2
    /* 3582A04 8006EC68 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 3582A08 8006EC6C 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 3582A0C 8006EC70 21280502 */  addu       $a1, $s0, $a1
    /* 3582A10 8006EC74 337B000C */  jal        func_8001ECCC
    /* 3582A14 8006EC78 21300000 */   addu      $a2, $zero, $zero
    /* 3582A18 8006EC7C 14002426 */  addiu      $a0, $s1, 0x14
    /* 3582A1C 8006EC80 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 3582A20 8006EC84 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 3582A24 8006EC88 21280502 */  addu       $a1, $s0, $a1
    /* 3582A28 8006EC8C 337B000C */  jal        func_8001ECCC
    /* 3582A2C 8006EC90 21300000 */   addu      $a2, $zero, $zero
    /* 3582A30 8006EC94 28002426 */  addiu      $a0, $s1, 0x28
    /* 3582A34 8006EC98 0680053C */  lui        $a1, %hi(D_80061858)
    /* 3582A38 8006EC9C 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 3582A3C 8006ECA0 337B000C */  jal        func_8001ECCC
    /* 3582A40 8006ECA4 21300000 */   addu      $a2, $zero, $zero
    /* 3582A44 8006ECA8 0680053C */  lui        $a1, %hi(D_80061844)
    /* 3582A48 8006ECAC 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 3582A4C 8006ECB0 7FBB0108 */  j          .Llevel_46_8006EDFC
    /* 3582A50 8006ECB4 3C002426 */   addiu     $a0, $s1, 0x3C
  .Llevel_46_8006ECB8:
    /* 3582A54 8006ECB8 2000B027 */  addiu      $s0, $sp, 0x20
    /* 3582A58 8006ECBC 0680043C */  lui        $a0, %hi(D_80067FF0)
    /* 3582A5C 8006ECC0 F07F848C */  lw         $a0, %lo(D_80067FF0)($a0)
    /* 3582A60 8006ECC4 CC05010C */  jal        func_80041730
    /* 3582A64 8006ECC8 21300002 */   addu      $a2, $s0, $zero
    /* 3582A68 8006ECCC 01000524 */  addiu      $a1, $zero, 0x1
    /* 3582A6C 8006ECD0 3000B127 */  addiu      $s1, $sp, 0x30
    /* 3582A70 8006ECD4 0680043C */  lui        $a0, %hi(D_80067FF0)
    /* 3582A74 8006ECD8 F07F848C */  lw         $a0, %lo(D_80067FF0)($a0)
    /* 3582A78 8006ECDC CC05010C */  jal        func_80041730
    /* 3582A7C 8006ECE0 21302002 */   addu      $a2, $s1, $zero
    /* 3582A80 8006ECE4 21200002 */  addu       $a0, $s0, $zero
    /* 3582A84 8006ECE8 21280002 */  addu       $a1, $s0, $zero
    /* 3582A88 8006ECEC 736F000C */  jal        func_8001BDCC
    /* 3582A8C 8006ECF0 21302002 */   addu      $a2, $s1, $zero
    /* 3582A90 8006ECF4 21200002 */  addu       $a0, $s0, $zero
    /* 3582A94 8006ECF8 526F000C */  jal        func_8001BD48
    /* 3582A98 8006ECFC 01000524 */   addiu     $a1, $zero, 0x1
    /* 3582A9C 8006ED00 21200002 */  addu       $a0, $s0, $zero
    /* 3582AA0 8006ED04 21280002 */  addu       $a1, $s0, $zero
    /* 3582AA4 8006ED08 806F000C */  jal        func_8001BE00
    /* 3582AA8 8006ED0C F0FE4626 */   addiu     $a2, $s2, -0x110
    /* 3582AAC 8006ED10 21200002 */  addu       $a0, $s0, $zero
    /* 3582AB0 8006ED14 886E000C */  jal        func_8001BA20
    /* 3582AB4 8006ED18 21280000 */   addu      $a1, $zero, $zero
    /* 3582AB8 8006ED1C 21204000 */  addu       $a0, $v0, $zero
    /* 3582ABC 8006ED20 2800A58F */  lw         $a1, 0x28($sp)
    /* 3582AC0 8006ED24 2E6D000C */  jal        func_8001B4B8
    /* 3582AC4 8006ED28 01000624 */   addiu     $a2, $zero, 0x1
    /* 3582AC8 8006ED2C 0680033C */  lui        $v1, %hi(D_80067F18)
    /* 3582ACC 8006ED30 187F638C */  lw         $v1, %lo(D_80067F18)($v1)
    /* 3582AD0 8006ED34 23100200 */  negu       $v0, $v0
    /* 3582AD4 8006ED38 23104300 */  subu       $v0, $v0, $v1
    /* 3582AD8 8006ED3C FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 3582ADC 8006ED40 01086228 */  slti       $v0, $v1, 0x801
    /* 3582AE0 8006ED44 0680013C */  lui        $at, %hi(D_80067F20)
    /* 3582AE4 8006ED48 207F23AC */  sw         $v1, %lo(D_80067F20)($at)
    /* 3582AE8 8006ED4C 03004014 */  bnez       $v0, .Llevel_46_8006ED5C
    /* 3582AEC 8006ED50 00F06224 */   addiu     $v0, $v1, -0x1000
    /* 3582AF0 8006ED54 0680013C */  lui        $at, %hi(D_80067F20)
    /* 3582AF4 8006ED58 207F22AC */  sw         $v0, %lo(D_80067F20)($at)
  .Llevel_46_8006ED5C:
    /* 3582AF8 8006ED5C 2000A48F */  lw         $a0, 0x20($sp)
    /* 3582AFC 8006ED60 2400A58F */  lw         $a1, 0x24($sp)
    /* 3582B00 8006ED64 2E6D000C */  jal        func_8001B4B8
    /* 3582B04 8006ED68 01000624 */   addiu     $a2, $zero, 0x1
    /* 3582B08 8006ED6C 0680033C */  lui        $v1, %hi(D_80067F14)
    /* 3582B0C 8006ED70 147F638C */  lw         $v1, %lo(D_80067F14)($v1)
    /* 3582B10 8006ED74 00000000 */  nop
    /* 3582B14 8006ED78 23104300 */  subu       $v0, $v0, $v1
    /* 3582B18 8006ED7C 00084224 */  addiu      $v0, $v0, 0x800
    /* 3582B1C 8006ED80 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 3582B20 8006ED84 01086228 */  slti       $v0, $v1, 0x801
    /* 3582B24 8006ED88 0680013C */  lui        $at, %hi(D_80067F24)
    /* 3582B28 8006ED8C 247F23AC */  sw         $v1, %lo(D_80067F24)($at)
    /* 3582B2C 8006ED90 04004014 */  bnez       $v0, .Llevel_46_8006EDA4
    /* 3582B30 8006ED94 A8FF4426 */   addiu     $a0, $s2, -0x58
    /* 3582B34 8006ED98 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 3582B38 8006ED9C 0680013C */  lui        $at, %hi(D_80067F24)
    /* 3582B3C 8006EDA0 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
  .Llevel_46_8006EDA4:
    /* 3582B40 8006EDA4 80801300 */  sll        $s0, $s3, 2
    /* 3582B44 8006EDA8 21801302 */  addu       $s0, $s0, $s3
    /* 3582B48 8006EDAC 80801000 */  sll        $s0, $s0, 2
    /* 3582B4C 8006EDB0 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 3582B50 8006EDB4 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 3582B54 8006EDB8 21280502 */  addu       $a1, $s0, $a1
    /* 3582B58 8006EDBC 337B000C */  jal        func_8001ECCC
    /* 3582B5C 8006EDC0 21300000 */   addu      $a2, $zero, $zero
    /* 3582B60 8006EDC4 BCFF4426 */  addiu      $a0, $s2, -0x44
    /* 3582B64 8006EDC8 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 3582B68 8006EDCC B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 3582B6C 8006EDD0 21280502 */  addu       $a1, $s0, $a1
    /* 3582B70 8006EDD4 337B000C */  jal        func_8001ECCC
    /* 3582B74 8006EDD8 21300000 */   addu      $a2, $zero, $zero
    /* 3582B78 8006EDDC E4FF4426 */  addiu      $a0, $s2, -0x1C
    /* 3582B7C 8006EDE0 0680053C */  lui        $a1, %hi(D_80061844)
    /* 3582B80 8006EDE4 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 3582B84 8006EDE8 337B000C */  jal        func_8001ECCC
    /* 3582B88 8006EDEC 21300000 */   addu      $a2, $zero, $zero
    /* 3582B8C 8006EDF0 D0FF4426 */  addiu      $a0, $s2, -0x30
    /* 3582B90 8006EDF4 0680053C */  lui        $a1, %hi(D_80061858)
    /* 3582B94 8006EDF8 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
  .Llevel_46_8006EDFC:
    /* 3582B98 8006EDFC 337B000C */  jal        func_8001ECCC
    /* 3582B9C 8006EE00 21300000 */   addu      $a2, $zero, $zero
  .Llevel_46_8006EE04:
    /* 3582BA0 8006EE04 5000BF8F */  lw         $ra, 0x50($sp)
    /* 3582BA4 8006EE08 4C00B38F */  lw         $s3, 0x4C($sp)
    /* 3582BA8 8006EE0C 4800B28F */  lw         $s2, 0x48($sp)
    /* 3582BAC 8006EE10 4400B18F */  lw         $s1, 0x44($sp)
    /* 3582BB0 8006EE14 4000B08F */  lw         $s0, 0x40($sp)
    /* 3582BB4 8006EE18 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 3582BB8 8006EE1C 0800E003 */  jr         $ra
    /* 3582BBC 8006EE20 00000000 */   nop
endlabel func_level_46_8006EAC0
