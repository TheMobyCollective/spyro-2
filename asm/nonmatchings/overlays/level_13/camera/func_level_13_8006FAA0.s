.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_13_8006FAA0, 0x37C

glabel func_level_13_8006FAA0
    /* 133C03C 8006FAA0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 133C040 8006FAA4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 133C044 8006FAA8 0680113C */  lui        $s1, %hi(D_80067FBC)
    /* 133C048 8006FAAC BC7F3126 */  addiu      $s1, $s1, %lo(D_80067FBC)
    /* 133C04C 8006FAB0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 133C050 8006FAB4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 133C054 8006FAB8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 133C058 8006FABC 0000228E */  lw         $v0, 0x0($s1)
    /* 133C05C 8006FAC0 00000000 */  nop
    /* 133C060 8006FAC4 02004224 */  addiu      $v0, $v0, 0x2
    /* 133C064 8006FAC8 83900200 */  sra        $s2, $v0, 2
    /* 133C068 8006FACC 0500422A */  slti       $v0, $s2, 0x5
    /* 133C06C 8006FAD0 02004014 */  bnez       $v0, .Llevel_13_8006FADC
    /* 133C070 8006FAD4 00000000 */   nop
    /* 133C074 8006FAD8 04001224 */  addiu      $s2, $zero, 0x4
  .Llevel_13_8006FADC:
    /* 133C078 8006FADC 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 133C07C 8006FAE0 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 133C080 8006FAE4 05000224 */  addiu      $v0, $zero, 0x5
    /* 133C084 8006FAE8 05006210 */  beq        $v1, $v0, .Llevel_13_8006FB00
    /* 133C088 8006FAEC 17000224 */   addiu     $v0, $zero, 0x17
    /* 133C08C 8006FAF0 7D006210 */  beq        $v1, $v0, .Llevel_13_8006FCE8
    /* 133C090 8006FAF4 00000000 */   nop
    /* 133C094 8006FAF8 80BF0108 */  j          .Llevel_13_8006FE00
    /* 133C098 8006FAFC 00000000 */   nop
  .Llevel_13_8006FB00:
    /* 133C09C 8006FB00 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 133C0A0 8006FB04 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 133C0A4 8006FB08 00000000 */  nop
    /* 133C0A8 8006FB0C 43004014 */  bnez       $v0, .Llevel_13_8006FC1C
    /* 133C0AC 8006FB10 00000000 */   nop
    /* 133C0B0 8006FB14 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 133C0B4 8006FB18 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 133C0B8 8006FB1C 0680053C */  lui        $a1, %hi(D_8006159C)
    /* 133C0BC 8006FB20 9C15A524 */  addiu      $a1, $a1, %lo(D_8006159C)
    /* 133C0C0 8006FB24 337B000C */  jal        func_8001ECCC
    /* 133C0C4 8006FB28 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 133C0C8 8006FB2C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 133C0CC 8006FB30 0780103C */  lui        $s0, %hi(D_8006A084)
    /* 133C0D0 8006FB34 84A01026 */  addiu      $s0, $s0, %lo(D_8006A084)
    /* 133C0D4 8006FB38 6C6F000C */  jal        func_8001BDB0
    /* 133C0D8 8006FB3C 21280002 */   addu      $a1, $s0, $zero
    /* 133C0DC 8006FB40 1000A427 */  addiu      $a0, $sp, 0x10
    /* 133C0E0 8006FB44 526F000C */  jal        func_8001BD48
    /* 133C0E4 8006FB48 02000524 */   addiu     $a1, $zero, 0x2
    /* 133C0E8 8006FB4C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 133C0EC 8006FB50 6CFF0526 */  addiu      $a1, $s0, -0x94
    /* 133C0F0 8006FB54 736F000C */  jal        func_8001BDCC
    /* 133C0F4 8006FB58 21308000 */   addu      $a2, $a0, $zero
    /* 133C0F8 8006FB5C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 133C0FC 8006FB60 21288000 */  addu       $a1, $a0, $zero
    /* 133C100 8006FB64 806F000C */  jal        func_8001BE00
    /* 133C104 8006FB68 F0FE2626 */   addiu     $a2, $s1, -0x110
    /* 133C108 8006FB6C 1000A48F */  lw         $a0, 0x10($sp)
    /* 133C10C 8006FB70 1400A58F */  lw         $a1, 0x14($sp)
    /* 133C110 8006FB74 2E6D000C */  jal        func_8001B4B8
    /* 133C114 8006FB78 01000624 */   addiu     $a2, $zero, 0x1
    /* 133C118 8006FB7C 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 133C11C 8006FB80 CC7E6384 */  lh         $v1, %lo(D_80067ECC)($v1)
    /* 133C120 8006FB84 00000000 */  nop
    /* 133C124 8006FB88 23104300 */  subu       $v0, $v0, $v1
    /* 133C128 8006FB8C FF0F4430 */  andi       $a0, $v0, 0xFFF
    /* 133C12C 8006FB90 01088228 */  slti       $v0, $a0, 0x801
    /* 133C130 8006FB94 03004014 */  bnez       $v0, .Llevel_13_8006FBA4
    /* 133C134 8006FB98 40100400 */   sll       $v0, $a0, 1
    /* 133C138 8006FB9C 00F08424 */  addiu      $a0, $a0, -0x1000
    /* 133C13C 8006FBA0 40100400 */  sll        $v0, $a0, 1
  .Llevel_13_8006FBA4:
    /* 133C140 8006FBA4 21104400 */  addu       $v0, $v0, $a0
    /* 133C144 8006FBA8 00190200 */  sll        $v1, $v0, 4
    /* 133C148 8006FBAC 21104300 */  addu       $v0, $v0, $v1
    /* 133C14C 8006FBB0 80100200 */  sll        $v0, $v0, 2
    /* 133C150 8006FBB4 21104400 */  addu       $v0, $v0, $a0
    /* 133C154 8006FBB8 03220200 */  sra        $a0, $v0, 8
    /* 133C158 8006FBBC C1008228 */  slti       $v0, $a0, 0xC1
    /* 133C15C 8006FBC0 03004014 */  bnez       $v0, .Llevel_13_8006FBD0
    /* 133C160 8006FBC4 40FF8228 */   slti      $v0, $a0, -0xC0
    /* 133C164 8006FBC8 C0000424 */  addiu      $a0, $zero, 0xC0
    /* 133C168 8006FBCC 40FF8228 */  slti       $v0, $a0, -0xC0
  .Llevel_13_8006FBD0:
    /* 133C16C 8006FBD0 02004010 */  beqz       $v0, .Llevel_13_8006FBDC
    /* 133C170 8006FBD4 00000000 */   nop
    /* 133C174 8006FBD8 40FF0424 */  addiu      $a0, $zero, -0xC0
  .Llevel_13_8006FBDC:
    /* 133C178 8006FBDC 02008104 */  bgez       $a0, .Llevel_13_8006FBE8
    /* 133C17C 8006FBE0 21108000 */   addu      $v0, $a0, $zero
    /* 133C180 8006FBE4 23100200 */  negu       $v0, $v0
  .Llevel_13_8006FBE8:
    /* 133C184 8006FBE8 09004228 */  slti       $v0, $v0, 0x9
    /* 133C188 8006FBEC 05004014 */  bnez       $v0, .Llevel_13_8006FC04
    /* 133C18C 8006FBF0 00000000 */   nop
    /* 133C190 8006FBF4 0680013C */  lui        $at, %hi(D_80067F24)
    /* 133C194 8006FBF8 247F24AC */  sw         $a0, %lo(D_80067F24)($at)
    /* 133C198 8006FBFC 03BF0108 */  j          .Llevel_13_8006FC0C
    /* 133C19C 8006FC00 00000000 */   nop
  .Llevel_13_8006FC04:
    /* 133C1A0 8006FC04 0680013C */  lui        $at, %hi(D_80067F24)
    /* 133C1A4 8006FC08 247F20AC */  sw         $zero, %lo(D_80067F24)($at)
  .Llevel_13_8006FC0C:
    /* 133C1A8 8006FC0C 087C000C */  jal        func_8001F020
    /* 133C1AC 8006FC10 80010424 */   addiu     $a0, $zero, 0x180
    /* 133C1B0 8006FC14 2F7C000C */  jal        func_8001F0BC
    /* 133C1B4 8006FC18 00000000 */   nop
  .Llevel_13_8006FC1C:
    /* 133C1B8 8006FC1C 0680103C */  lui        $s0, %hi(D_80067EE4)
    /* 133C1BC 8006FC20 E47E1026 */  addiu      $s0, $s0, %lo(D_80067EE4)
    /* 133C1C0 8006FC24 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 133C1C4 8006FC28 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 133C1C8 8006FC2C 6C6F000C */  jal        func_8001BDB0
    /* 133C1CC 8006FC30 21200002 */   addu      $a0, $s0, $zero
    /* 133C1D0 8006FC34 80000426 */  addiu      $a0, $s0, 0x80
    /* 133C1D4 8006FC38 80101200 */  sll        $v0, $s2, 2
    /* 133C1D8 8006FC3C 21105200 */  addu       $v0, $v0, $s2
    /* 133C1DC 8006FC40 80880200 */  sll        $s1, $v0, 2
    /* 133C1E0 8006FC44 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 133C1E4 8006FC48 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 133C1E8 8006FC4C 21282502 */  addu       $a1, $s1, $a1
    /* 133C1EC 8006FC50 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 133C1F0 8006FC54 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 133C1F4 8006FC58 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 133C1F8 8006FC5C F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 133C1FC 8006FC60 337B000C */  jal        func_8001ECCC
    /* 133C200 8006FC64 21300000 */   addu      $a2, $zero, $zero
    /* 133C204 8006FC68 8000028E */  lw         $v0, 0x80($s0)
    /* 133C208 8006FC6C 00000000 */  nop
    /* 133C20C 8006FC70 80004228 */  slti       $v0, $v0, 0x80
    /* 133C210 8006FC74 02004010 */  beqz       $v0, .Llevel_13_8006FC80
    /* 133C214 8006FC78 80000224 */   addiu     $v0, $zero, 0x80
    /* 133C218 8006FC7C 800002AE */  sw         $v0, 0x80($s0)
  .Llevel_13_8006FC80:
    /* 133C21C 8006FC80 0680023C */  lui        $v0, %hi(D_80067F74)
    /* 133C220 8006FC84 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* 133C224 8006FC88 00000000 */  nop
    /* 133C228 8006FC8C 40004228 */  slti       $v0, $v0, 0x40
    /* 133C22C 8006FC90 03004010 */  beqz       $v0, .Llevel_13_8006FCA0
    /* 133C230 8006FC94 40000224 */   addiu     $v0, $zero, 0x40
    /* 133C234 8006FC98 0680013C */  lui        $at, %hi(D_80067F74)
    /* 133C238 8006FC9C 747F22AC */  sw         $v0, %lo(D_80067F74)($at)
  .Llevel_13_8006FCA0:
    /* 133C23C 8006FCA0 94000426 */  addiu      $a0, $s0, 0x94
    /* 133C240 8006FCA4 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 133C244 8006FCA8 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 133C248 8006FCAC 21282502 */  addu       $a1, $s1, $a1
    /* 133C24C 8006FCB0 337B000C */  jal        func_8001ECCC
    /* 133C250 8006FCB4 21300000 */   addu      $a2, $zero, $zero
    /* 133C254 8006FCB8 A8000426 */  addiu      $a0, $s0, 0xA8
    /* 133C258 8006FCBC 0680053C */  lui        $a1, %hi(D_80061858)
    /* 133C25C 8006FCC0 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 133C260 8006FCC4 337B000C */  jal        func_8001ECCC
    /* 133C264 8006FCC8 21300000 */   addu      $a2, $zero, $zero
    /* 133C268 8006FCCC BC000426 */  addiu      $a0, $s0, 0xBC
    /* 133C26C 8006FCD0 0680053C */  lui        $a1, %hi(D_80061844)
    /* 133C270 8006FCD4 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 133C274 8006FCD8 337B000C */  jal        func_8001ECCC
    /* 133C278 8006FCDC 21300000 */   addu      $a2, $zero, $zero
    /* 133C27C 8006FCE0 80BF0108 */  j          .Llevel_13_8006FE00
    /* 133C280 8006FCE4 00000000 */   nop
  .Llevel_13_8006FCE8:
    /* 133C284 8006FCE8 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 133C288 8006FCEC B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 133C28C 8006FCF0 00000000 */  nop
    /* 133C290 8006FCF4 10004014 */  bnez       $v0, .Llevel_13_8006FD38
    /* 133C294 8006FCF8 00000000 */   nop
    /* 133C298 8006FCFC 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 133C29C 8006FD00 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 133C2A0 8006FD04 0680053C */  lui        $a1, %hi(D_80061560)
    /* 133C2A4 8006FD08 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 133C2A8 8006FD0C 337B000C */  jal        func_8001ECCC
    /* 133C2AC 8006FD10 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 133C2B0 8006FD14 087C000C */  jal        func_8001F020
    /* 133C2B4 8006FD18 00040424 */   addiu     $a0, $zero, 0x400
    /* 133C2B8 8006FD1C 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 133C2BC 8006FD20 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 133C2C0 8006FD24 33000224 */  addiu      $v0, $zero, 0x33
    /* 133C2C4 8006FD28 03006214 */  bne        $v1, $v0, .Llevel_13_8006FD38
    /* 133C2C8 8006FD2C 00060224 */   addiu     $v0, $zero, 0x600
    /* 133C2CC 8006FD30 0680013C */  lui        $at, %hi(D_80067F1C)
    /* 133C2D0 8006FD34 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_13_8006FD38:
    /* 133C2D4 8006FD38 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 133C2D8 8006FD3C E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 133C2DC 8006FD40 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 133C2E0 8006FD44 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 133C2E4 8006FD48 6C6F000C */  jal        func_8001BDB0
    /* 133C2E8 8006FD4C 21202002 */   addu      $a0, $s1, $zero
    /* 133C2EC 8006FD50 80002426 */  addiu      $a0, $s1, 0x80
    /* 133C2F0 8006FD54 80801200 */  sll        $s0, $s2, 2
    /* 133C2F4 8006FD58 21801202 */  addu       $s0, $s0, $s2
    /* 133C2F8 8006FD5C 80801000 */  sll        $s0, $s0, 2
    /* 133C2FC 8006FD60 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 133C300 8006FD64 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 133C304 8006FD68 0780023C */  lui        $v0, %hi(D_8006A208)
    /* 133C308 8006FD6C 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* 133C30C 8006FD70 21280502 */  addu       $a1, $s0, $a1
    /* 133C310 8006FD74 46004290 */  lbu        $v0, 0x46($v0)
    /* 133C314 8006FD78 00000000 */  nop
    /* 133C318 8006FD7C 00110200 */  sll        $v0, $v0, 4
    /* 133C31C 8006FD80 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 133C320 8006FD84 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 133C324 8006FD88 337B000C */  jal        func_8001ECCC
    /* 133C328 8006FD8C 21300000 */   addu      $a2, $zero, $zero
    /* 133C32C 8006FD90 94002426 */  addiu      $a0, $s1, 0x94
    /* 133C330 8006FD94 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 133C334 8006FD98 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 133C338 8006FD9C 21280502 */  addu       $a1, $s0, $a1
    /* 133C33C 8006FDA0 337B000C */  jal        func_8001ECCC
    /* 133C340 8006FDA4 21300000 */   addu      $a2, $zero, $zero
    /* 133C344 8006FDA8 A8002426 */  addiu      $a0, $s1, 0xA8
    /* 133C348 8006FDAC 0680053C */  lui        $a1, %hi(D_80061858)
    /* 133C34C 8006FDB0 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 133C350 8006FDB4 337B000C */  jal        func_8001ECCC
    /* 133C354 8006FDB8 21300000 */   addu      $a2, $zero, $zero
    /* 133C358 8006FDBC BC002426 */  addiu      $a0, $s1, 0xBC
    /* 133C35C 8006FDC0 0680053C */  lui        $a1, %hi(D_80061844)
    /* 133C360 8006FDC4 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 133C364 8006FDC8 337B000C */  jal        func_8001ECCC
    /* 133C368 8006FDCC 21300000 */   addu      $a2, $zero, $zero
    /* 133C36C 8006FDD0 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 133C370 8006FDD4 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 133C374 8006FDD8 00000000 */  nop
    /* 133C378 8006FDDC 02004230 */  andi       $v0, $v0, 0x2
    /* 133C37C 8006FDE0 07004014 */  bnez       $v0, .Llevel_13_8006FE00
    /* 133C380 8006FDE4 00000000 */   nop
    /* 133C384 8006FDE8 8000228E */  lw         $v0, 0x80($s1)
    /* 133C388 8006FDEC 00000000 */  nop
    /* 133C38C 8006FDF0 4C004228 */  slti       $v0, $v0, 0x4C
    /* 133C390 8006FDF4 02004010 */  beqz       $v0, .Llevel_13_8006FE00
    /* 133C394 8006FDF8 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 133C398 8006FDFC 800022AE */  sw         $v0, 0x80($s1)
  .Llevel_13_8006FE00:
    /* 133C39C 8006FE00 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 133C3A0 8006FE04 2800B28F */  lw         $s2, 0x28($sp)
    /* 133C3A4 8006FE08 2400B18F */  lw         $s1, 0x24($sp)
    /* 133C3A8 8006FE0C 2000B08F */  lw         $s0, 0x20($sp)
    /* 133C3AC 8006FE10 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 133C3B0 8006FE14 0800E003 */  jr         $ra
    /* 133C3B4 8006FE18 00000000 */   nop
endlabel func_level_13_8006FAA0
