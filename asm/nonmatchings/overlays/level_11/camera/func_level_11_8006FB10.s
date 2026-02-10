.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_11_8006FB10, 0x340

glabel func_level_11_8006FB10
    /* F2B0AC 8006FB10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F2B0B0 8006FB14 1000B0AF */  sw         $s0, 0x10($sp)
    /* F2B0B4 8006FB18 0680103C */  lui        $s0, %hi(D_80067FBC)
    /* F2B0B8 8006FB1C BC7F1026 */  addiu      $s0, $s0, %lo(D_80067FBC)
    /* F2B0BC 8006FB20 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* F2B0C0 8006FB24 1800B2AF */  sw         $s2, 0x18($sp)
    /* F2B0C4 8006FB28 1400B1AF */  sw         $s1, 0x14($sp)
    /* F2B0C8 8006FB2C 0000028E */  lw         $v0, 0x0($s0)
    /* F2B0CC 8006FB30 00000000 */  nop
    /* F2B0D0 8006FB34 02004224 */  addiu      $v0, $v0, 0x2
    /* F2B0D4 8006FB38 83900200 */  sra        $s2, $v0, 2
    /* F2B0D8 8006FB3C 0500422A */  slti       $v0, $s2, 0x5
    /* F2B0DC 8006FB40 02004014 */  bnez       $v0, .Llevel_11_8006FB4C
    /* F2B0E0 8006FB44 00000000 */   nop
    /* F2B0E4 8006FB48 04001224 */  addiu      $s2, $zero, 0x4
  .Llevel_11_8006FB4C:
    /* F2B0E8 8006FB4C 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* F2B0EC 8006FB50 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* F2B0F0 8006FB54 03000224 */  addiu      $v0, $zero, 0x3
    /* F2B0F4 8006FB58 05006210 */  beq        $v1, $v0, .Llevel_11_8006FB70
    /* F2B0F8 8006FB5C 17000224 */   addiu     $v0, $zero, 0x17
    /* F2B0FC 8006FB60 6E006210 */  beq        $v1, $v0, .Llevel_11_8006FD1C
    /* F2B100 8006FB64 00000000 */   nop
    /* F2B104 8006FB68 8DBF0108 */  j          .Llevel_11_8006FE34
    /* F2B108 8006FB6C 00000000 */   nop
  .Llevel_11_8006FB70:
    /* F2B10C 8006FB70 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* F2B110 8006FB74 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* F2B114 8006FB78 00000000 */  nop
    /* F2B118 8006FB7C 2C004014 */  bnez       $v0, .Llevel_11_8006FC30
    /* F2B11C 8006FB80 00000000 */   nop
    /* F2B120 8006FB84 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* F2B124 8006FB88 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* F2B128 8006FB8C 0680053C */  lui        $a1, %hi(D_800615C4)
    /* F2B12C 8006FB90 C415A524 */  addiu      $a1, $a1, %lo(D_800615C4)
    /* F2B130 8006FB94 337B000C */  jal        func_8001ECCC
    /* F2B134 8006FB98 58FF0426 */   addiu     $a0, $s0, -0xA8
    /* F2B138 8006FB9C 0780023C */  lui        $v0, %hi(D_8006A058)
    /* F2B13C 8006FBA0 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* F2B140 8006FBA4 0680033C */  lui        $v1, %hi(D_80067F04)
    /* F2B144 8006FBA8 047F638C */  lw         $v1, %lo(D_80067F04)($v1)
    /* F2B148 8006FBAC 23100200 */  negu       $v0, $v0
    /* F2B14C 8006FBB0 23184300 */  subu       $v1, $v0, $v1
    /* F2B150 8006FBB4 83180300 */  sra        $v1, $v1, 2
    /* F2B154 8006FBB8 0680013C */  lui        $at, %hi(D_80067F18)
    /* F2B158 8006FBBC 187F22AC */  sw         $v0, %lo(D_80067F18)($at)
    /* F2B15C 8006FBC0 C1006228 */  slti       $v0, $v1, 0xC1
    /* F2B160 8006FBC4 03004014 */  bnez       $v0, .Llevel_11_8006FBD4
    /* F2B164 8006FBC8 40FF6228 */   slti      $v0, $v1, -0xC0
    /* F2B168 8006FBCC C0000324 */  addiu      $v1, $zero, 0xC0
    /* F2B16C 8006FBD0 40FF6228 */  slti       $v0, $v1, -0xC0
  .Llevel_11_8006FBD4:
    /* F2B170 8006FBD4 02004010 */  beqz       $v0, .Llevel_11_8006FBE0
    /* F2B174 8006FBD8 00000000 */   nop
    /* F2B178 8006FBDC 40FF0324 */  addiu      $v1, $zero, -0xC0
  .Llevel_11_8006FBE0:
    /* F2B17C 8006FBE0 02006104 */  bgez       $v1, .Llevel_11_8006FBEC
    /* F2B180 8006FBE4 21106000 */   addu      $v0, $v1, $zero
    /* F2B184 8006FBE8 23100200 */  negu       $v0, $v0
  .Llevel_11_8006FBEC:
    /* F2B188 8006FBEC 09004228 */  slti       $v0, $v0, 0x9
    /* F2B18C 8006FBF0 03004014 */  bnez       $v0, .Llevel_11_8006FC00
    /* F2B190 8006FBF4 00000000 */   nop
    /* F2B194 8006FBF8 01BF0108 */  j          .Llevel_11_8006FC04
    /* F2B198 8006FBFC 64FF03AE */   sw        $v1, -0x9C($s0)
  .Llevel_11_8006FC00:
    /* F2B19C 8006FC00 64FF00AE */  sw         $zero, -0x9C($s0)
  .Llevel_11_8006FC04:
    /* F2B1A0 8006FC04 0780023C */  lui        $v0, %hi(D_8006A054)
    /* F2B1A4 8006FC08 54A0428C */  lw         $v0, %lo(D_8006A054)($v0)
    /* F2B1A8 8006FC0C 00000000 */  nop
    /* F2B1AC 8006FC10 23100200 */  negu       $v0, $v0
    /* F2B1B0 8006FC14 83100200 */  sra        $v0, $v0, 2
    /* F2B1B4 8006FC18 0680013C */  lui        $at, %hi(D_80067F24)
    /* F2B1B8 8006FC1C 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
    /* F2B1BC 8006FC20 087C000C */  jal        func_8001F020
    /* F2B1C0 8006FC24 C0000424 */   addiu     $a0, $zero, 0xC0
    /* F2B1C4 8006FC28 2F7C000C */  jal        func_8001F0BC
    /* F2B1C8 8006FC2C 00000000 */   nop
  .Llevel_11_8006FC30:
    /* F2B1CC 8006FC30 0680103C */  lui        $s0, %hi(D_80067EE4)
    /* F2B1D0 8006FC34 E47E1026 */  addiu      $s0, $s0, %lo(D_80067EE4)
    /* F2B1D4 8006FC38 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* F2B1D8 8006FC3C F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* F2B1DC 8006FC40 6C6F000C */  jal        func_8001BDB0
    /* F2B1E0 8006FC44 21200002 */   addu      $a0, $s0, $zero
    /* F2B1E4 8006FC48 80000426 */  addiu      $a0, $s0, 0x80
    /* F2B1E8 8006FC4C 80101200 */  sll        $v0, $s2, 2
    /* F2B1EC 8006FC50 21105200 */  addu       $v0, $v0, $s2
    /* F2B1F0 8006FC54 80880200 */  sll        $s1, $v0, 2
    /* F2B1F4 8006FC58 0680053C */  lui        $a1, %hi(D_8006172C)
    /* F2B1F8 8006FC5C 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* F2B1FC 8006FC60 21282502 */  addu       $a1, $s1, $a1
    /* F2B200 8006FC64 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* F2B204 8006FC68 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* F2B208 8006FC6C 0680013C */  lui        $at, %hi(D_80067EF0)
    /* F2B20C 8006FC70 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* F2B210 8006FC74 337B000C */  jal        func_8001ECCC
    /* F2B214 8006FC78 21300000 */   addu      $a2, $zero, $zero
    /* F2B218 8006FC7C 8000028E */  lw         $v0, 0x80($s0)
    /* F2B21C 8006FC80 00000000 */  nop
    /* F2B220 8006FC84 00014228 */  slti       $v0, $v0, 0x100
    /* F2B224 8006FC88 02004010 */  beqz       $v0, .Llevel_11_8006FC94
    /* F2B228 8006FC8C 00010224 */   addiu     $v0, $zero, 0x100
    /* F2B22C 8006FC90 800002AE */  sw         $v0, 0x80($s0)
  .Llevel_11_8006FC94:
    /* F2B230 8006FC94 0680023C */  lui        $v0, %hi(D_80067F68)
    /* F2B234 8006FC98 687F428C */  lw         $v0, %lo(D_80067F68)($v0)
    /* F2B238 8006FC9C 00000000 */  nop
    /* F2B23C 8006FCA0 60004228 */  slti       $v0, $v0, 0x60
    /* F2B240 8006FCA4 03004010 */  beqz       $v0, .Llevel_11_8006FCB4
    /* F2B244 8006FCA8 60000224 */   addiu     $v0, $zero, 0x60
    /* F2B248 8006FCAC 0680013C */  lui        $at, %hi(D_80067F68)
    /* F2B24C 8006FCB0 687F22AC */  sw         $v0, %lo(D_80067F68)($at)
  .Llevel_11_8006FCB4:
    /* F2B250 8006FCB4 0680023C */  lui        $v0, %hi(D_80067F74)
    /* F2B254 8006FCB8 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* F2B258 8006FCBC 00000000 */  nop
    /* F2B25C 8006FCC0 40004228 */  slti       $v0, $v0, 0x40
    /* F2B260 8006FCC4 03004010 */  beqz       $v0, .Llevel_11_8006FCD4
    /* F2B264 8006FCC8 40000224 */   addiu     $v0, $zero, 0x40
    /* F2B268 8006FCCC 0680013C */  lui        $at, %hi(D_80067F74)
    /* F2B26C 8006FCD0 747F22AC */  sw         $v0, %lo(D_80067F74)($at)
  .Llevel_11_8006FCD4:
    /* F2B270 8006FCD4 94000426 */  addiu      $a0, $s0, 0x94
    /* F2B274 8006FCD8 0680053C */  lui        $a1, %hi(D_800617B8)
    /* F2B278 8006FCDC B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* F2B27C 8006FCE0 21282502 */  addu       $a1, $s1, $a1
    /* F2B280 8006FCE4 337B000C */  jal        func_8001ECCC
    /* F2B284 8006FCE8 21300000 */   addu      $a2, $zero, $zero
    /* F2B288 8006FCEC A8000426 */  addiu      $a0, $s0, 0xA8
    /* F2B28C 8006FCF0 0680053C */  lui        $a1, %hi(D_80061858)
    /* F2B290 8006FCF4 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* F2B294 8006FCF8 337B000C */  jal        func_8001ECCC
    /* F2B298 8006FCFC 21300000 */   addu      $a2, $zero, $zero
    /* F2B29C 8006FD00 BC000426 */  addiu      $a0, $s0, 0xBC
    /* F2B2A0 8006FD04 0680053C */  lui        $a1, %hi(D_80061844)
    /* F2B2A4 8006FD08 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* F2B2A8 8006FD0C 337B000C */  jal        func_8001ECCC
    /* F2B2AC 8006FD10 21300000 */   addu      $a2, $zero, $zero
    /* F2B2B0 8006FD14 8DBF0108 */  j          .Llevel_11_8006FE34
    /* F2B2B4 8006FD18 00000000 */   nop
  .Llevel_11_8006FD1C:
    /* F2B2B8 8006FD1C 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* F2B2BC 8006FD20 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* F2B2C0 8006FD24 00000000 */  nop
    /* F2B2C4 8006FD28 10004014 */  bnez       $v0, .Llevel_11_8006FD6C
    /* F2B2C8 8006FD2C 00000000 */   nop
    /* F2B2CC 8006FD30 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* F2B2D0 8006FD34 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* F2B2D4 8006FD38 0680053C */  lui        $a1, %hi(D_80061560)
    /* F2B2D8 8006FD3C 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* F2B2DC 8006FD40 337B000C */  jal        func_8001ECCC
    /* F2B2E0 8006FD44 58FF0426 */   addiu     $a0, $s0, -0xA8
    /* F2B2E4 8006FD48 087C000C */  jal        func_8001F020
    /* F2B2E8 8006FD4C 00040424 */   addiu     $a0, $zero, 0x400
    /* F2B2EC 8006FD50 0680033C */  lui        $v1, %hi(D_80066F90)
    /* F2B2F0 8006FD54 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* F2B2F4 8006FD58 33000224 */  addiu      $v0, $zero, 0x33
    /* F2B2F8 8006FD5C 03006214 */  bne        $v1, $v0, .Llevel_11_8006FD6C
    /* F2B2FC 8006FD60 00060224 */   addiu     $v0, $zero, 0x600
    /* F2B300 8006FD64 0680013C */  lui        $at, %hi(D_80067F1C)
    /* F2B304 8006FD68 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_11_8006FD6C:
    /* F2B308 8006FD6C 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* F2B30C 8006FD70 E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* F2B310 8006FD74 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* F2B314 8006FD78 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* F2B318 8006FD7C 6C6F000C */  jal        func_8001BDB0
    /* F2B31C 8006FD80 21202002 */   addu      $a0, $s1, $zero
    /* F2B320 8006FD84 80002426 */  addiu      $a0, $s1, 0x80
    /* F2B324 8006FD88 80801200 */  sll        $s0, $s2, 2
    /* F2B328 8006FD8C 21801202 */  addu       $s0, $s0, $s2
    /* F2B32C 8006FD90 80801000 */  sll        $s0, $s0, 2
    /* F2B330 8006FD94 0680053C */  lui        $a1, %hi(D_8006172C)
    /* F2B334 8006FD98 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* F2B338 8006FD9C 0780023C */  lui        $v0, %hi(D_8006A208)
    /* F2B33C 8006FDA0 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* F2B340 8006FDA4 21280502 */  addu       $a1, $s0, $a1
    /* F2B344 8006FDA8 46004290 */  lbu        $v0, 0x46($v0)
    /* F2B348 8006FDAC 00000000 */  nop
    /* F2B34C 8006FDB0 00110200 */  sll        $v0, $v0, 4
    /* F2B350 8006FDB4 0680013C */  lui        $at, %hi(D_80067EF0)
    /* F2B354 8006FDB8 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* F2B358 8006FDBC 337B000C */  jal        func_8001ECCC
    /* F2B35C 8006FDC0 21300000 */   addu      $a2, $zero, $zero
    /* F2B360 8006FDC4 94002426 */  addiu      $a0, $s1, 0x94
    /* F2B364 8006FDC8 0680053C */  lui        $a1, %hi(D_800617B8)
    /* F2B368 8006FDCC B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* F2B36C 8006FDD0 21280502 */  addu       $a1, $s0, $a1
    /* F2B370 8006FDD4 337B000C */  jal        func_8001ECCC
    /* F2B374 8006FDD8 21300000 */   addu      $a2, $zero, $zero
    /* F2B378 8006FDDC A8002426 */  addiu      $a0, $s1, 0xA8
    /* F2B37C 8006FDE0 0680053C */  lui        $a1, %hi(D_80061858)
    /* F2B380 8006FDE4 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* F2B384 8006FDE8 337B000C */  jal        func_8001ECCC
    /* F2B388 8006FDEC 21300000 */   addu      $a2, $zero, $zero
    /* F2B38C 8006FDF0 BC002426 */  addiu      $a0, $s1, 0xBC
    /* F2B390 8006FDF4 0680053C */  lui        $a1, %hi(D_80061844)
    /* F2B394 8006FDF8 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* F2B398 8006FDFC 337B000C */  jal        func_8001ECCC
    /* F2B39C 8006FE00 21300000 */   addu      $a2, $zero, $zero
    /* F2B3A0 8006FE04 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* F2B3A4 8006FE08 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* F2B3A8 8006FE0C 00000000 */  nop
    /* F2B3AC 8006FE10 02004230 */  andi       $v0, $v0, 0x2
    /* F2B3B0 8006FE14 07004014 */  bnez       $v0, .Llevel_11_8006FE34
    /* F2B3B4 8006FE18 00000000 */   nop
    /* F2B3B8 8006FE1C 8000228E */  lw         $v0, 0x80($s1)
    /* F2B3BC 8006FE20 00000000 */  nop
    /* F2B3C0 8006FE24 4C004228 */  slti       $v0, $v0, 0x4C
    /* F2B3C4 8006FE28 02004010 */  beqz       $v0, .Llevel_11_8006FE34
    /* F2B3C8 8006FE2C 4C000224 */   addiu     $v0, $zero, 0x4C
    /* F2B3CC 8006FE30 800022AE */  sw         $v0, 0x80($s1)
  .Llevel_11_8006FE34:
    /* F2B3D0 8006FE34 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* F2B3D4 8006FE38 1800B28F */  lw         $s2, 0x18($sp)
    /* F2B3D8 8006FE3C 1400B18F */  lw         $s1, 0x14($sp)
    /* F2B3DC 8006FE40 1000B08F */  lw         $s0, 0x10($sp)
    /* F2B3E0 8006FE44 2000BD27 */  addiu      $sp, $sp, 0x20
    /* F2B3E4 8006FE48 0800E003 */  jr         $ra
    /* F2B3E8 8006FE4C 00000000 */   nop
endlabel func_level_11_8006FB10
