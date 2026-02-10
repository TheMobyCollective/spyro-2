.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_44_8006FAC0, 0x430

glabel func_level_44_8006FAC0
    /* 31D705C 8006FAC0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 31D7060 8006FAC4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 31D7064 8006FAC8 0680113C */  lui        $s1, %hi(D_80067FBC)
    /* 31D7068 8006FACC BC7F3126 */  addiu      $s1, $s1, %lo(D_80067FBC)
    /* 31D706C 8006FAD0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 31D7070 8006FAD4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 31D7074 8006FAD8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 31D7078 8006FADC 0000228E */  lw         $v0, 0x0($s1)
    /* 31D707C 8006FAE0 00000000 */  nop
    /* 31D7080 8006FAE4 02004224 */  addiu      $v0, $v0, 0x2
    /* 31D7084 8006FAE8 83900200 */  sra        $s2, $v0, 2
    /* 31D7088 8006FAEC 0500422A */  slti       $v0, $s2, 0x5
    /* 31D708C 8006FAF0 02004014 */  bnez       $v0, .Llevel_44_8006FAFC
    /* 31D7090 8006FAF4 00000000 */   nop
    /* 31D7094 8006FAF8 04001224 */  addiu      $s2, $zero, 0x4
  .Llevel_44_8006FAFC:
    /* 31D7098 8006FAFC 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 31D709C 8006FB00 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 31D70A0 8006FB04 11000224 */  addiu      $v0, $zero, 0x11
    /* 31D70A4 8006FB08 45006210 */  beq        $v1, $v0, .Llevel_44_8006FC20
    /* 31D70A8 8006FB0C 12006228 */   slti      $v0, $v1, 0x12
    /* 31D70AC 8006FB10 05004010 */  beqz       $v0, .Llevel_44_8006FB28
    /* 31D70B0 8006FB14 0C000224 */   addiu     $v0, $zero, 0xC
    /* 31D70B4 8006FB18 08006210 */  beq        $v1, $v0, .Llevel_44_8006FB3C
    /* 31D70B8 8006FB1C 00000000 */   nop
    /* 31D70BC 8006FB20 B5BF0108 */  j          .Llevel_44_8006FED4
    /* 31D70C0 8006FB24 00000000 */   nop
  .Llevel_44_8006FB28:
    /* 31D70C4 8006FB28 17000224 */  addiu      $v0, $zero, 0x17
    /* 31D70C8 8006FB2C A3006210 */  beq        $v1, $v0, .Llevel_44_8006FDBC
    /* 31D70CC 8006FB30 00000000 */   nop
    /* 31D70D0 8006FB34 B5BF0108 */  j          .Llevel_44_8006FED4
    /* 31D70D4 8006FB38 00000000 */   nop
  .Llevel_44_8006FB3C:
    /* 31D70D8 8006FB3C 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 31D70DC 8006FB40 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 31D70E0 8006FB44 00000000 */  nop
    /* 31D70E4 8006FB48 0A004014 */  bnez       $v0, .Llevel_44_8006FB74
    /* 31D70E8 8006FB4C 28FF2426 */   addiu     $a0, $s1, -0xD8
    /* 31D70EC 8006FB50 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 31D70F0 8006FB54 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 31D70F4 8006FB58 0680053C */  lui        $a1, %hi(D_80061560)
    /* 31D70F8 8006FB5C 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 31D70FC 8006FB60 337B000C */  jal        func_8001ECCC
    /* 31D7100 8006FB64 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 31D7104 8006FB68 087C000C */  jal        func_8001F020
    /* 31D7108 8006FB6C 00040424 */   addiu     $a0, $zero, 0x400
    /* 31D710C 8006FB70 28FF2426 */  addiu      $a0, $s1, -0xD8
  .Llevel_44_8006FB74:
    /* 31D7110 8006FB74 0780103C */  lui        $s0, %hi(D_80069FF0)
    /* 31D7114 8006FB78 F09F1026 */  addiu      $s0, $s0, %lo(D_80069FF0)
    /* 31D7118 8006FB7C 6C6F000C */  jal        func_8001BDB0
    /* 31D711C 8006FB80 21280002 */   addu      $a1, $s0, $zero
    /* 31D7120 8006FB84 1000A427 */  addiu      $a0, $sp, 0x10
    /* 31D7124 8006FB88 0680053C */  lui        $a1, %hi(D_80067FF0)
    /* 31D7128 8006FB8C F07FA58C */  lw         $a1, %lo(D_80067FF0)($a1)
    /* 31D712C 8006FB90 21300002 */  addu       $a2, $s0, $zero
    /* 31D7130 8006FB94 806F000C */  jal        func_8001BE00
    /* 31D7134 8006FB98 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 31D7138 8006FB9C 1000A48F */  lw         $a0, 0x10($sp)
    /* 31D713C 8006FBA0 1400A58F */  lw         $a1, 0x14($sp)
    /* 31D7140 8006FBA4 2E6D000C */  jal        func_8001B4B8
    /* 31D7144 8006FBA8 01000624 */   addiu     $a2, $zero, 0x1
    /* 31D7148 8006FBAC A8FF2426 */  addiu      $a0, $s1, -0x58
    /* 31D714C 8006FBB0 80801200 */  sll        $s0, $s2, 2
    /* 31D7150 8006FBB4 21801202 */  addu       $s0, $s0, $s2
    /* 31D7154 8006FBB8 80801000 */  sll        $s0, $s0, 2
    /* 31D7158 8006FBBC 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 31D715C 8006FBC0 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 31D7160 8006FBC4 21280502 */  addu       $a1, $s0, $a1
    /* 31D7164 8006FBC8 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 31D7168 8006FBCC F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 31D716C 8006FBD0 337B000C */  jal        func_8001ECCC
    /* 31D7170 8006FBD4 21300000 */   addu      $a2, $zero, $zero
    /* 31D7174 8006FBD8 BCFF2426 */  addiu      $a0, $s1, -0x44
    /* 31D7178 8006FBDC 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 31D717C 8006FBE0 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 31D7180 8006FBE4 21280502 */  addu       $a1, $s0, $a1
    /* 31D7184 8006FBE8 337B000C */  jal        func_8001ECCC
    /* 31D7188 8006FBEC 21300000 */   addu      $a2, $zero, $zero
    /* 31D718C 8006FBF0 E4FF2426 */  addiu      $a0, $s1, -0x1C
    /* 31D7190 8006FBF4 0680053C */  lui        $a1, %hi(D_80061844)
    /* 31D7194 8006FBF8 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 31D7198 8006FBFC 337B000C */  jal        func_8001ECCC
    /* 31D719C 8006FC00 21300000 */   addu      $a2, $zero, $zero
    /* 31D71A0 8006FC04 D0FF2426 */  addiu      $a0, $s1, -0x30
    /* 31D71A4 8006FC08 0680053C */  lui        $a1, %hi(D_80061858)
    /* 31D71A8 8006FC0C 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 31D71AC 8006FC10 337B000C */  jal        func_8001ECCC
    /* 31D71B0 8006FC14 21300000 */   addu      $a2, $zero, $zero
    /* 31D71B4 8006FC18 B5BF0108 */  j          .Llevel_44_8006FED4
    /* 31D71B8 8006FC1C 00000000 */   nop
  .Llevel_44_8006FC20:
    /* 31D71BC 8006FC20 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 31D71C0 8006FC24 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 31D71C4 8006FC28 00000000 */  nop
    /* 31D71C8 8006FC2C 13004014 */  bnez       $v0, .Llevel_44_8006FC7C
    /* 31D71CC 8006FC30 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 31D71D0 8006FC34 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 31D71D4 8006FC38 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 31D71D8 8006FC3C 337B000C */  jal        func_8001ECCC
    /* 31D71DC 8006FC40 38002526 */   addiu     $a1, $s1, 0x38
    /* 31D71E0 8006FC44 087C000C */  jal        func_8001F020
    /* 31D71E4 8006FC48 00040424 */   addiu     $a0, $zero, 0x400
    /* 31D71E8 8006FC4C 0680023C */  lui        $v0, %hi(D_80067FD4)
    /* 31D71EC 8006FC50 D47F428C */  lw         $v0, %lo(D_80067FD4)($v0)
    /* 31D71F0 8006FC54 00000000 */  nop
    /* 31D71F4 8006FC58 08004010 */  beqz       $v0, .Llevel_44_8006FC7C
    /* 31D71F8 8006FC5C 01000224 */   addiu     $v0, $zero, 0x1
    /* 31D71FC 8006FC60 0680033C */  lui        $v1, %hi(D_80067ED4)
    /* 31D7200 8006FC64 D47E638C */  lw         $v1, %lo(D_80067ED4)($v1)
    /* 31D7204 8006FC68 00000000 */  nop
    /* 31D7208 8006FC6C 14006214 */  bne        $v1, $v0, .Llevel_44_8006FCC0
    /* 31D720C 8006FC70 00000000 */   nop
    /* 31D7210 8006FC74 0680013C */  lui        $at, %hi(D_80067ED4)
    /* 31D7214 8006FC78 D47E20AC */  sw         $zero, %lo(D_80067ED4)($at)
  .Llevel_44_8006FC7C:
    /* 31D7218 8006FC7C 0680043C */  lui        $a0, %hi(D_80067ED4)
    /* 31D721C 8006FC80 D47E8424 */  addiu      $a0, $a0, %lo(D_80067ED4)
    /* 31D7220 8006FC84 0000838C */  lw         $v1, 0x0($a0)
    /* 31D7224 8006FC88 01000224 */  addiu      $v0, $zero, 0x1
    /* 31D7228 8006FC8C 0C006214 */  bne        $v1, $v0, .Llevel_44_8006FCC0
    /* 31D722C 8006FC90 00000000 */   nop
    /* 31D7230 8006FC94 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 31D7234 8006FC98 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 31D7238 8006FC9C 00000000 */  nop
    /* 31D723C 8006FCA0 80100200 */  sll        $v0, $v0, 2
    /* 31D7240 8006FCA4 0680013C */  lui        $at, %hi(D_80061468)
    /* 31D7244 8006FCA8 21082200 */  addu       $at, $at, $v0
    /* 31D7248 8006FCAC 6814228C */  lw         $v0, %lo(D_80061468)($at)
    /* 31D724C 8006FCB0 00000000 */  nop
    /* 31D7250 8006FCB4 02004010 */  beqz       $v0, .Llevel_44_8006FCC0
    /* 31D7254 8006FCB8 00000000 */   nop
    /* 31D7258 8006FCBC 000080AC */  sw         $zero, 0x0($a0)
  .Llevel_44_8006FCC0:
    /* 31D725C 8006FCC0 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 31D7260 8006FCC4 E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 31D7264 8006FCC8 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 31D7268 8006FCCC F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 31D726C 8006FCD0 6C6F000C */  jal        func_8001BDB0
    /* 31D7270 8006FCD4 21202002 */   addu      $a0, $s1, $zero
    /* 31D7274 8006FCD8 80002426 */  addiu      $a0, $s1, 0x80
    /* 31D7278 8006FCDC 80801200 */  sll        $s0, $s2, 2
    /* 31D727C 8006FCE0 21801202 */  addu       $s0, $s0, $s2
    /* 31D7280 8006FCE4 80801000 */  sll        $s0, $s0, 2
    /* 31D7284 8006FCE8 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 31D7288 8006FCEC 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 31D728C 8006FCF0 21280502 */  addu       $a1, $s0, $a1
    /* 31D7290 8006FCF4 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 31D7294 8006FCF8 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 31D7298 8006FCFC 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 31D729C 8006FD00 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 31D72A0 8006FD04 337B000C */  jal        func_8001ECCC
    /* 31D72A4 8006FD08 21300000 */   addu      $a2, $zero, $zero
    /* 31D72A8 8006FD0C 94002426 */  addiu      $a0, $s1, 0x94
    /* 31D72AC 8006FD10 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 31D72B0 8006FD14 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 31D72B4 8006FD18 21280502 */  addu       $a1, $s0, $a1
    /* 31D72B8 8006FD1C 337B000C */  jal        func_8001ECCC
    /* 31D72BC 8006FD20 21300000 */   addu      $a2, $zero, $zero
    /* 31D72C0 8006FD24 BC002426 */  addiu      $a0, $s1, 0xBC
    /* 31D72C4 8006FD28 0680053C */  lui        $a1, %hi(D_80061844)
    /* 31D72C8 8006FD2C 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 31D72CC 8006FD30 337B000C */  jal        func_8001ECCC
    /* 31D72D0 8006FD34 21300000 */   addu      $a2, $zero, $zero
    /* 31D72D4 8006FD38 0680033C */  lui        $v1, %hi(D_80067ED4)
    /* 31D72D8 8006FD3C D47E638C */  lw         $v1, %lo(D_80067ED4)($v1)
    /* 31D72DC 8006FD40 01000224 */  addiu      $v0, $zero, 0x1
    /* 31D72E0 8006FD44 07006214 */  bne        $v1, $v0, .Llevel_44_8006FD64
    /* 31D72E4 8006FD48 00000000 */   nop
    /* 31D72E8 8006FD4C BC00228E */  lw         $v0, 0xBC($s1)
    /* 31D72EC 8006FD50 00000000 */  nop
    /* 31D72F0 8006FD54 09004228 */  slti       $v0, $v0, 0x9
    /* 31D72F4 8006FD58 02004014 */  bnez       $v0, .Llevel_44_8006FD64
    /* 31D72F8 8006FD5C 08000224 */   addiu     $v0, $zero, 0x8
    /* 31D72FC 8006FD60 BC0022AE */  sw         $v0, 0xBC($s1)
  .Llevel_44_8006FD64:
    /* 31D7300 8006FD64 0680043C */  lui        $a0, %hi(D_80067F8C)
    /* 31D7304 8006FD68 8C7F8424 */  addiu      $a0, $a0, %lo(D_80067F8C)
    /* 31D7308 8006FD6C 0680053C */  lui        $a1, %hi(D_80061858)
    /* 31D730C 8006FD70 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 31D7310 8006FD74 337B000C */  jal        func_8001ECCC
    /* 31D7314 8006FD78 21300000 */   addu      $a2, $zero, $zero
    /* 31D7318 8006FD7C 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 31D731C 8006FD80 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 31D7320 8006FD84 00000000 */  nop
    /* 31D7324 8006FD88 02004230 */  andi       $v0, $v0, 0x2
    /* 31D7328 8006FD8C 51004014 */  bnez       $v0, .Llevel_44_8006FED4
    /* 31D732C 8006FD90 00000000 */   nop
    /* 31D7330 8006FD94 0680023C */  lui        $v0, %hi(D_80067F64)
    /* 31D7334 8006FD98 647F428C */  lw         $v0, %lo(D_80067F64)($v0)
    /* 31D7338 8006FD9C 00000000 */  nop
    /* 31D733C 8006FDA0 4C004228 */  slti       $v0, $v0, 0x4C
    /* 31D7340 8006FDA4 4B004010 */  beqz       $v0, .Llevel_44_8006FED4
    /* 31D7344 8006FDA8 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 31D7348 8006FDAC 0680013C */  lui        $at, %hi(D_80067F64)
    /* 31D734C 8006FDB0 647F22AC */  sw         $v0, %lo(D_80067F64)($at)
    /* 31D7350 8006FDB4 B5BF0108 */  j          .Llevel_44_8006FED4
    /* 31D7354 8006FDB8 00000000 */   nop
  .Llevel_44_8006FDBC:
    /* 31D7358 8006FDBC 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 31D735C 8006FDC0 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 31D7360 8006FDC4 00000000 */  nop
    /* 31D7364 8006FDC8 10004014 */  bnez       $v0, .Llevel_44_8006FE0C
    /* 31D7368 8006FDCC 00000000 */   nop
    /* 31D736C 8006FDD0 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 31D7370 8006FDD4 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 31D7374 8006FDD8 0680053C */  lui        $a1, %hi(D_80061560)
    /* 31D7378 8006FDDC 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 31D737C 8006FDE0 337B000C */  jal        func_8001ECCC
    /* 31D7380 8006FDE4 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 31D7384 8006FDE8 087C000C */  jal        func_8001F020
    /* 31D7388 8006FDEC 00040424 */   addiu     $a0, $zero, 0x400
    /* 31D738C 8006FDF0 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 31D7390 8006FDF4 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 31D7394 8006FDF8 33000224 */  addiu      $v0, $zero, 0x33
    /* 31D7398 8006FDFC 03006214 */  bne        $v1, $v0, .Llevel_44_8006FE0C
    /* 31D739C 8006FE00 00060224 */   addiu     $v0, $zero, 0x600
    /* 31D73A0 8006FE04 0680013C */  lui        $at, %hi(D_80067F1C)
    /* 31D73A4 8006FE08 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_44_8006FE0C:
    /* 31D73A8 8006FE0C 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 31D73AC 8006FE10 E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 31D73B0 8006FE14 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 31D73B4 8006FE18 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 31D73B8 8006FE1C 6C6F000C */  jal        func_8001BDB0
    /* 31D73BC 8006FE20 21202002 */   addu      $a0, $s1, $zero
    /* 31D73C0 8006FE24 80002426 */  addiu      $a0, $s1, 0x80
    /* 31D73C4 8006FE28 80801200 */  sll        $s0, $s2, 2
    /* 31D73C8 8006FE2C 21801202 */  addu       $s0, $s0, $s2
    /* 31D73CC 8006FE30 80801000 */  sll        $s0, $s0, 2
    /* 31D73D0 8006FE34 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 31D73D4 8006FE38 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 31D73D8 8006FE3C 0780023C */  lui        $v0, %hi(D_8006A208)
    /* 31D73DC 8006FE40 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* 31D73E0 8006FE44 21280502 */  addu       $a1, $s0, $a1
    /* 31D73E4 8006FE48 46004290 */  lbu        $v0, 0x46($v0)
    /* 31D73E8 8006FE4C 00000000 */  nop
    /* 31D73EC 8006FE50 00110200 */  sll        $v0, $v0, 4
    /* 31D73F0 8006FE54 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 31D73F4 8006FE58 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 31D73F8 8006FE5C 337B000C */  jal        func_8001ECCC
    /* 31D73FC 8006FE60 21300000 */   addu      $a2, $zero, $zero
    /* 31D7400 8006FE64 94002426 */  addiu      $a0, $s1, 0x94
    /* 31D7404 8006FE68 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 31D7408 8006FE6C B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 31D740C 8006FE70 21280502 */  addu       $a1, $s0, $a1
    /* 31D7410 8006FE74 337B000C */  jal        func_8001ECCC
    /* 31D7414 8006FE78 21300000 */   addu      $a2, $zero, $zero
    /* 31D7418 8006FE7C A8002426 */  addiu      $a0, $s1, 0xA8
    /* 31D741C 8006FE80 0680053C */  lui        $a1, %hi(D_80061858)
    /* 31D7420 8006FE84 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 31D7424 8006FE88 337B000C */  jal        func_8001ECCC
    /* 31D7428 8006FE8C 21300000 */   addu      $a2, $zero, $zero
    /* 31D742C 8006FE90 BC002426 */  addiu      $a0, $s1, 0xBC
    /* 31D7430 8006FE94 0680053C */  lui        $a1, %hi(D_80061844)
    /* 31D7434 8006FE98 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 31D7438 8006FE9C 337B000C */  jal        func_8001ECCC
    /* 31D743C 8006FEA0 21300000 */   addu      $a2, $zero, $zero
    /* 31D7440 8006FEA4 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 31D7444 8006FEA8 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 31D7448 8006FEAC 00000000 */  nop
    /* 31D744C 8006FEB0 02004230 */  andi       $v0, $v0, 0x2
    /* 31D7450 8006FEB4 07004014 */  bnez       $v0, .Llevel_44_8006FED4
    /* 31D7454 8006FEB8 00000000 */   nop
    /* 31D7458 8006FEBC 8000228E */  lw         $v0, 0x80($s1)
    /* 31D745C 8006FEC0 00000000 */  nop
    /* 31D7460 8006FEC4 4C004228 */  slti       $v0, $v0, 0x4C
    /* 31D7464 8006FEC8 02004010 */  beqz       $v0, .Llevel_44_8006FED4
    /* 31D7468 8006FECC 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 31D746C 8006FED0 800022AE */  sw         $v0, 0x80($s1)
  .Llevel_44_8006FED4:
    /* 31D7470 8006FED4 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 31D7474 8006FED8 2800B28F */  lw         $s2, 0x28($sp)
    /* 31D7478 8006FEDC 2400B18F */  lw         $s1, 0x24($sp)
    /* 31D747C 8006FEE0 2000B08F */  lw         $s0, 0x20($sp)
    /* 31D7480 8006FEE4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 31D7484 8006FEE8 0800E003 */  jr         $ra
    /* 31D7488 8006FEEC 00000000 */   nop
endlabel func_level_44_8006FAC0
