.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_30_8006FBD8, 0x504

glabel func_level_30_8006FBD8
    /* 1F2D974 8006FBD8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1F2D978 8006FBDC 0680053C */  lui        $a1, %hi(D_80067FBC)
    /* 1F2D97C 8006FBE0 BC7FA524 */  addiu      $a1, $a1, %lo(D_80067FBC)
    /* 1F2D980 8006FBE4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1F2D984 8006FBE8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1F2D988 8006FBEC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1F2D98C 8006FBF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1F2D990 8006FBF4 0000A28C */  lw         $v0, 0x0($a1)
    /* 1F2D994 8006FBF8 00000000 */  nop
    /* 1F2D998 8006FBFC 02004224 */  addiu      $v0, $v0, 0x2
    /* 1F2D99C 8006FC00 83900200 */  sra        $s2, $v0, 2
    /* 1F2D9A0 8006FC04 0500422A */  slti       $v0, $s2, 0x5
    /* 1F2D9A4 8006FC08 02004014 */  bnez       $v0, .Llevel_30_8006FC14
    /* 1F2D9A8 8006FC0C 00000000 */   nop
    /* 1F2D9AC 8006FC10 04001224 */  addiu      $s2, $zero, 0x4
  .Llevel_30_8006FC14:
    /* 1F2D9B0 8006FC14 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 1F2D9B4 8006FC18 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 1F2D9B8 8006FC1C 11000224 */  addiu      $v0, $zero, 0x11
    /* 1F2D9BC 8006FC20 7A006210 */  beq        $v1, $v0, .Llevel_30_8006FE0C
    /* 1F2D9C0 8006FC24 12006228 */   slti      $v0, $v1, 0x12
    /* 1F2D9C4 8006FC28 05004010 */  beqz       $v0, .Llevel_30_8006FC40
    /* 1F2D9C8 8006FC2C 04000224 */   addiu     $v0, $zero, 0x4
    /* 1F2D9CC 8006FC30 08006210 */  beq        $v1, $v0, .Llevel_30_8006FC54
    /* 1F2D9D0 8006FC34 00000000 */   nop
    /* 1F2D9D4 8006FC38 30C00108 */  j          .Llevel_30_800700C0
    /* 1F2D9D8 8006FC3C 00000000 */   nop
  .Llevel_30_8006FC40:
    /* 1F2D9DC 8006FC40 17000224 */  addiu      $v0, $zero, 0x17
    /* 1F2D9E0 8006FC44 D8006210 */  beq        $v1, $v0, .Llevel_30_8006FFA8
    /* 1F2D9E4 8006FC48 00000000 */   nop
    /* 1F2D9E8 8006FC4C 30C00108 */  j          .Llevel_30_800700C0
    /* 1F2D9EC 8006FC50 00000000 */   nop
  .Llevel_30_8006FC54:
    /* 1F2D9F0 8006FC54 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 1F2D9F4 8006FC58 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 1F2D9F8 8006FC5C 00000000 */  nop
    /* 1F2D9FC 8006FC60 2F004014 */  bnez       $v0, .Llevel_30_8006FD20
    /* 1F2DA00 8006FC64 58FFA424 */   addiu     $a0, $a1, -0xA8
    /* 1F2DA04 8006FC68 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 1F2DA08 8006FC6C F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 1F2DA0C 8006FC70 0680053C */  lui        $a1, %hi(D_800615D8)
    /* 1F2DA10 8006FC74 D815A524 */  addiu      $a1, $a1, %lo(D_800615D8)
    /* 1F2DA14 8006FC78 337B000C */  jal        func_8001ECCC
    /* 1F2DA18 8006FC7C 00000000 */   nop
    /* 1F2DA1C 8006FC80 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 1F2DA20 8006FC84 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 1F2DA24 8006FC88 0680033C */  lui        $v1, %hi(D_80067F04)
    /* 1F2DA28 8006FC8C 047F638C */  lw         $v1, %lo(D_80067F04)($v1)
    /* 1F2DA2C 8006FC90 23100200 */  negu       $v0, $v0
    /* 1F2DA30 8006FC94 23184300 */  subu       $v1, $v0, $v1
    /* 1F2DA34 8006FC98 83180300 */  sra        $v1, $v1, 2
    /* 1F2DA38 8006FC9C 0680013C */  lui        $at, %hi(D_80067F18)
    /* 1F2DA3C 8006FCA0 187F22AC */  sw         $v0, %lo(D_80067F18)($at)
    /* 1F2DA40 8006FCA4 C1006228 */  slti       $v0, $v1, 0xC1
    /* 1F2DA44 8006FCA8 03004014 */  bnez       $v0, .Llevel_30_8006FCB8
    /* 1F2DA48 8006FCAC 40FF6228 */   slti      $v0, $v1, -0xC0
    /* 1F2DA4C 8006FCB0 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 1F2DA50 8006FCB4 40FF6228 */  slti       $v0, $v1, -0xC0
  .Llevel_30_8006FCB8:
    /* 1F2DA54 8006FCB8 02004010 */  beqz       $v0, .Llevel_30_8006FCC4
    /* 1F2DA58 8006FCBC 00000000 */   nop
    /* 1F2DA5C 8006FCC0 40FF0324 */  addiu      $v1, $zero, -0xC0
  .Llevel_30_8006FCC4:
    /* 1F2DA60 8006FCC4 02006104 */  bgez       $v1, .Llevel_30_8006FCD0
    /* 1F2DA64 8006FCC8 21106000 */   addu      $v0, $v1, $zero
    /* 1F2DA68 8006FCCC 23100200 */  negu       $v0, $v0
  .Llevel_30_8006FCD0:
    /* 1F2DA6C 8006FCD0 09004228 */  slti       $v0, $v0, 0x9
    /* 1F2DA70 8006FCD4 05004014 */  bnez       $v0, .Llevel_30_8006FCEC
    /* 1F2DA74 8006FCD8 00000000 */   nop
    /* 1F2DA78 8006FCDC 0680013C */  lui        $at, %hi(D_80067F20)
    /* 1F2DA7C 8006FCE0 207F23AC */  sw         $v1, %lo(D_80067F20)($at)
    /* 1F2DA80 8006FCE4 3DBF0108 */  j          .Llevel_30_8006FCF4
    /* 1F2DA84 8006FCE8 00000000 */   nop
  .Llevel_30_8006FCEC:
    /* 1F2DA88 8006FCEC 0680013C */  lui        $at, %hi(D_80067F20)
    /* 1F2DA8C 8006FCF0 207F20AC */  sw         $zero, %lo(D_80067F20)($at)
  .Llevel_30_8006FCF4:
    /* 1F2DA90 8006FCF4 0780023C */  lui        $v0, %hi(D_8006A054)
    /* 1F2DA94 8006FCF8 54A0428C */  lw         $v0, %lo(D_8006A054)($v0)
    /* 1F2DA98 8006FCFC 00000000 */  nop
    /* 1F2DA9C 8006FD00 23100200 */  negu       $v0, $v0
    /* 1F2DAA0 8006FD04 83100200 */  sra        $v0, $v0, 2
    /* 1F2DAA4 8006FD08 0680013C */  lui        $at, %hi(D_80067F24)
    /* 1F2DAA8 8006FD0C 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
    /* 1F2DAAC 8006FD10 087C000C */  jal        func_8001F020
    /* 1F2DAB0 8006FD14 80010424 */   addiu     $a0, $zero, 0x180
    /* 1F2DAB4 8006FD18 2F7C000C */  jal        func_8001F0BC
    /* 1F2DAB8 8006FD1C 00000000 */   nop
  .Llevel_30_8006FD20:
    /* 1F2DABC 8006FD20 0680103C */  lui        $s0, %hi(D_80067EE4)
    /* 1F2DAC0 8006FD24 E47E1026 */  addiu      $s0, $s0, %lo(D_80067EE4)
    /* 1F2DAC4 8006FD28 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1F2DAC8 8006FD2C F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 1F2DACC 8006FD30 6C6F000C */  jal        func_8001BDB0
    /* 1F2DAD0 8006FD34 21200002 */   addu      $a0, $s0, $zero
    /* 1F2DAD4 8006FD38 80000426 */  addiu      $a0, $s0, 0x80
    /* 1F2DAD8 8006FD3C 80101200 */  sll        $v0, $s2, 2
    /* 1F2DADC 8006FD40 21105200 */  addu       $v0, $v0, $s2
    /* 1F2DAE0 8006FD44 80880200 */  sll        $s1, $v0, 2
    /* 1F2DAE4 8006FD48 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 1F2DAE8 8006FD4C 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 1F2DAEC 8006FD50 21282502 */  addu       $a1, $s1, $a1
    /* 1F2DAF0 8006FD54 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 1F2DAF4 8006FD58 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 1F2DAF8 8006FD5C 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1F2DAFC 8006FD60 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 1F2DB00 8006FD64 337B000C */  jal        func_8001ECCC
    /* 1F2DB04 8006FD68 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DB08 8006FD6C 8000028E */  lw         $v0, 0x80($s0)
    /* 1F2DB0C 8006FD70 00000000 */  nop
    /* 1F2DB10 8006FD74 80004228 */  slti       $v0, $v0, 0x80
    /* 1F2DB14 8006FD78 02004010 */  beqz       $v0, .Llevel_30_8006FD84
    /* 1F2DB18 8006FD7C 80000224 */   addiu     $v0, $zero, 0x80
    /* 1F2DB1C 8006FD80 800002AE */  sw         $v0, 0x80($s0)
  .Llevel_30_8006FD84:
    /* 1F2DB20 8006FD84 0680023C */  lui        $v0, %hi(D_80067F68)
    /* 1F2DB24 8006FD88 687F428C */  lw         $v0, %lo(D_80067F68)($v0)
    /* 1F2DB28 8006FD8C 00000000 */  nop
    /* 1F2DB2C 8006FD90 60004228 */  slti       $v0, $v0, 0x60
    /* 1F2DB30 8006FD94 03004010 */  beqz       $v0, .Llevel_30_8006FDA4
    /* 1F2DB34 8006FD98 60000224 */   addiu     $v0, $zero, 0x60
    /* 1F2DB38 8006FD9C 0680013C */  lui        $at, %hi(D_80067F68)
    /* 1F2DB3C 8006FDA0 687F22AC */  sw         $v0, %lo(D_80067F68)($at)
  .Llevel_30_8006FDA4:
    /* 1F2DB40 8006FDA4 0680023C */  lui        $v0, %hi(D_80067F74)
    /* 1F2DB44 8006FDA8 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* 1F2DB48 8006FDAC 00000000 */  nop
    /* 1F2DB4C 8006FDB0 40004228 */  slti       $v0, $v0, 0x40
    /* 1F2DB50 8006FDB4 03004010 */  beqz       $v0, .Llevel_30_8006FDC4
    /* 1F2DB54 8006FDB8 40000224 */   addiu     $v0, $zero, 0x40
    /* 1F2DB58 8006FDBC 0680013C */  lui        $at, %hi(D_80067F74)
    /* 1F2DB5C 8006FDC0 747F22AC */  sw         $v0, %lo(D_80067F74)($at)
  .Llevel_30_8006FDC4:
    /* 1F2DB60 8006FDC4 94000426 */  addiu      $a0, $s0, 0x94
    /* 1F2DB64 8006FDC8 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 1F2DB68 8006FDCC B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 1F2DB6C 8006FDD0 21282502 */  addu       $a1, $s1, $a1
    /* 1F2DB70 8006FDD4 337B000C */  jal        func_8001ECCC
    /* 1F2DB74 8006FDD8 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DB78 8006FDDC A8000426 */  addiu      $a0, $s0, 0xA8
    /* 1F2DB7C 8006FDE0 0680053C */  lui        $a1, %hi(D_80061858)
    /* 1F2DB80 8006FDE4 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 1F2DB84 8006FDE8 337B000C */  jal        func_8001ECCC
    /* 1F2DB88 8006FDEC 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DB8C 8006FDF0 BC000426 */  addiu      $a0, $s0, 0xBC
    /* 1F2DB90 8006FDF4 0680053C */  lui        $a1, %hi(D_80061844)
    /* 1F2DB94 8006FDF8 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 1F2DB98 8006FDFC 337B000C */  jal        func_8001ECCC
    /* 1F2DB9C 8006FE00 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DBA0 8006FE04 30C00108 */  j          .Llevel_30_800700C0
    /* 1F2DBA4 8006FE08 00000000 */   nop
  .Llevel_30_8006FE0C:
    /* 1F2DBA8 8006FE0C 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 1F2DBAC 8006FE10 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 1F2DBB0 8006FE14 00000000 */  nop
    /* 1F2DBB4 8006FE18 13004014 */  bnez       $v0, .Llevel_30_8006FE68
    /* 1F2DBB8 8006FE1C 58FFA424 */   addiu     $a0, $a1, -0xA8
    /* 1F2DBBC 8006FE20 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 1F2DBC0 8006FE24 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 1F2DBC4 8006FE28 337B000C */  jal        func_8001ECCC
    /* 1F2DBC8 8006FE2C 3800A524 */   addiu     $a1, $a1, 0x38
    /* 1F2DBCC 8006FE30 087C000C */  jal        func_8001F020
    /* 1F2DBD0 8006FE34 00040424 */   addiu     $a0, $zero, 0x400
    /* 1F2DBD4 8006FE38 0680023C */  lui        $v0, %hi(D_80067FD4)
    /* 1F2DBD8 8006FE3C D47F428C */  lw         $v0, %lo(D_80067FD4)($v0)
    /* 1F2DBDC 8006FE40 00000000 */  nop
    /* 1F2DBE0 8006FE44 08004010 */  beqz       $v0, .Llevel_30_8006FE68
    /* 1F2DBE4 8006FE48 01000224 */   addiu     $v0, $zero, 0x1
    /* 1F2DBE8 8006FE4C 0680033C */  lui        $v1, %hi(D_80067ED4)
    /* 1F2DBEC 8006FE50 D47E638C */  lw         $v1, %lo(D_80067ED4)($v1)
    /* 1F2DBF0 8006FE54 00000000 */  nop
    /* 1F2DBF4 8006FE58 14006214 */  bne        $v1, $v0, .Llevel_30_8006FEAC
    /* 1F2DBF8 8006FE5C 00000000 */   nop
    /* 1F2DBFC 8006FE60 0680013C */  lui        $at, %hi(D_80067ED4)
    /* 1F2DC00 8006FE64 D47E20AC */  sw         $zero, %lo(D_80067ED4)($at)
  .Llevel_30_8006FE68:
    /* 1F2DC04 8006FE68 0680043C */  lui        $a0, %hi(D_80067ED4)
    /* 1F2DC08 8006FE6C D47E8424 */  addiu      $a0, $a0, %lo(D_80067ED4)
    /* 1F2DC0C 8006FE70 0000838C */  lw         $v1, 0x0($a0)
    /* 1F2DC10 8006FE74 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F2DC14 8006FE78 0C006214 */  bne        $v1, $v0, .Llevel_30_8006FEAC
    /* 1F2DC18 8006FE7C 00000000 */   nop
    /* 1F2DC1C 8006FE80 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 1F2DC20 8006FE84 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 1F2DC24 8006FE88 00000000 */  nop
    /* 1F2DC28 8006FE8C 80100200 */  sll        $v0, $v0, 2
    /* 1F2DC2C 8006FE90 0680013C */  lui        $at, %hi(D_80061468)
    /* 1F2DC30 8006FE94 21082200 */  addu       $at, $at, $v0
    /* 1F2DC34 8006FE98 6814228C */  lw         $v0, %lo(D_80061468)($at)
    /* 1F2DC38 8006FE9C 00000000 */  nop
    /* 1F2DC3C 8006FEA0 02004010 */  beqz       $v0, .Llevel_30_8006FEAC
    /* 1F2DC40 8006FEA4 00000000 */   nop
    /* 1F2DC44 8006FEA8 000080AC */  sw         $zero, 0x0($a0)
  .Llevel_30_8006FEAC:
    /* 1F2DC48 8006FEAC 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 1F2DC4C 8006FEB0 E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 1F2DC50 8006FEB4 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1F2DC54 8006FEB8 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 1F2DC58 8006FEBC 6C6F000C */  jal        func_8001BDB0
    /* 1F2DC5C 8006FEC0 21202002 */   addu      $a0, $s1, $zero
    /* 1F2DC60 8006FEC4 80002426 */  addiu      $a0, $s1, 0x80
    /* 1F2DC64 8006FEC8 80801200 */  sll        $s0, $s2, 2
    /* 1F2DC68 8006FECC 21801202 */  addu       $s0, $s0, $s2
    /* 1F2DC6C 8006FED0 80801000 */  sll        $s0, $s0, 2
    /* 1F2DC70 8006FED4 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 1F2DC74 8006FED8 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 1F2DC78 8006FEDC 21280502 */  addu       $a1, $s0, $a1
    /* 1F2DC7C 8006FEE0 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 1F2DC80 8006FEE4 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 1F2DC84 8006FEE8 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1F2DC88 8006FEEC F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 1F2DC8C 8006FEF0 337B000C */  jal        func_8001ECCC
    /* 1F2DC90 8006FEF4 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DC94 8006FEF8 94002426 */  addiu      $a0, $s1, 0x94
    /* 1F2DC98 8006FEFC 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 1F2DC9C 8006FF00 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 1F2DCA0 8006FF04 21280502 */  addu       $a1, $s0, $a1
    /* 1F2DCA4 8006FF08 337B000C */  jal        func_8001ECCC
    /* 1F2DCA8 8006FF0C 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DCAC 8006FF10 BC002426 */  addiu      $a0, $s1, 0xBC
    /* 1F2DCB0 8006FF14 0680053C */  lui        $a1, %hi(D_80061844)
    /* 1F2DCB4 8006FF18 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 1F2DCB8 8006FF1C 337B000C */  jal        func_8001ECCC
    /* 1F2DCBC 8006FF20 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DCC0 8006FF24 0680033C */  lui        $v1, %hi(D_80067ED4)
    /* 1F2DCC4 8006FF28 D47E638C */  lw         $v1, %lo(D_80067ED4)($v1)
    /* 1F2DCC8 8006FF2C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F2DCCC 8006FF30 07006214 */  bne        $v1, $v0, .Llevel_30_8006FF50
    /* 1F2DCD0 8006FF34 00000000 */   nop
    /* 1F2DCD4 8006FF38 BC00228E */  lw         $v0, 0xBC($s1)
    /* 1F2DCD8 8006FF3C 00000000 */  nop
    /* 1F2DCDC 8006FF40 09004228 */  slti       $v0, $v0, 0x9
    /* 1F2DCE0 8006FF44 02004014 */  bnez       $v0, .Llevel_30_8006FF50
    /* 1F2DCE4 8006FF48 08000224 */   addiu     $v0, $zero, 0x8
    /* 1F2DCE8 8006FF4C BC0022AE */  sw         $v0, 0xBC($s1)
  .Llevel_30_8006FF50:
    /* 1F2DCEC 8006FF50 0680043C */  lui        $a0, %hi(D_80067F8C)
    /* 1F2DCF0 8006FF54 8C7F8424 */  addiu      $a0, $a0, %lo(D_80067F8C)
    /* 1F2DCF4 8006FF58 0680053C */  lui        $a1, %hi(D_80061858)
    /* 1F2DCF8 8006FF5C 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 1F2DCFC 8006FF60 337B000C */  jal        func_8001ECCC
    /* 1F2DD00 8006FF64 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DD04 8006FF68 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 1F2DD08 8006FF6C DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 1F2DD0C 8006FF70 00000000 */  nop
    /* 1F2DD10 8006FF74 02004230 */  andi       $v0, $v0, 0x2
    /* 1F2DD14 8006FF78 51004014 */  bnez       $v0, .Llevel_30_800700C0
    /* 1F2DD18 8006FF7C 00000000 */   nop
    /* 1F2DD1C 8006FF80 0680023C */  lui        $v0, %hi(D_80067F64)
    /* 1F2DD20 8006FF84 647F428C */  lw         $v0, %lo(D_80067F64)($v0)
    /* 1F2DD24 8006FF88 00000000 */  nop
    /* 1F2DD28 8006FF8C 4C004228 */  slti       $v0, $v0, 0x4C
    /* 1F2DD2C 8006FF90 4B004010 */  beqz       $v0, .Llevel_30_800700C0
    /* 1F2DD30 8006FF94 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 1F2DD34 8006FF98 0680013C */  lui        $at, %hi(D_80067F64)
    /* 1F2DD38 8006FF9C 647F22AC */  sw         $v0, %lo(D_80067F64)($at)
    /* 1F2DD3C 8006FFA0 30C00108 */  j          .Llevel_30_800700C0
    /* 1F2DD40 8006FFA4 00000000 */   nop
  .Llevel_30_8006FFA8:
    /* 1F2DD44 8006FFA8 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 1F2DD48 8006FFAC B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 1F2DD4C 8006FFB0 00000000 */  nop
    /* 1F2DD50 8006FFB4 10004014 */  bnez       $v0, .Llevel_30_8006FFF8
    /* 1F2DD54 8006FFB8 58FFA424 */   addiu     $a0, $a1, -0xA8
    /* 1F2DD58 8006FFBC 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 1F2DD5C 8006FFC0 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 1F2DD60 8006FFC4 0680053C */  lui        $a1, %hi(D_80061560)
    /* 1F2DD64 8006FFC8 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 1F2DD68 8006FFCC 337B000C */  jal        func_8001ECCC
    /* 1F2DD6C 8006FFD0 00000000 */   nop
    /* 1F2DD70 8006FFD4 087C000C */  jal        func_8001F020
    /* 1F2DD74 8006FFD8 00040424 */   addiu     $a0, $zero, 0x400
    /* 1F2DD78 8006FFDC 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 1F2DD7C 8006FFE0 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 1F2DD80 8006FFE4 33000224 */  addiu      $v0, $zero, 0x33
    /* 1F2DD84 8006FFE8 03006214 */  bne        $v1, $v0, .Llevel_30_8006FFF8
    /* 1F2DD88 8006FFEC 00060224 */   addiu     $v0, $zero, 0x600
    /* 1F2DD8C 8006FFF0 0680013C */  lui        $at, %hi(D_80067F1C)
    /* 1F2DD90 8006FFF4 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_30_8006FFF8:
    /* 1F2DD94 8006FFF8 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 1F2DD98 8006FFFC E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 1F2DD9C 80070000 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1F2DDA0 80070004 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 1F2DDA4 80070008 6C6F000C */  jal        func_8001BDB0
    /* 1F2DDA8 8007000C 21202002 */   addu      $a0, $s1, $zero
    /* 1F2DDAC 80070010 80002426 */  addiu      $a0, $s1, 0x80
    /* 1F2DDB0 80070014 80801200 */  sll        $s0, $s2, 2
    /* 1F2DDB4 80070018 21801202 */  addu       $s0, $s0, $s2
    /* 1F2DDB8 8007001C 80801000 */  sll        $s0, $s0, 2
    /* 1F2DDBC 80070020 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 1F2DDC0 80070024 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 1F2DDC4 80070028 0780023C */  lui        $v0, %hi(D_8006A208)
    /* 1F2DDC8 8007002C 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* 1F2DDCC 80070030 21280502 */  addu       $a1, $s0, $a1
    /* 1F2DDD0 80070034 46004290 */  lbu        $v0, 0x46($v0)
    /* 1F2DDD4 80070038 00000000 */  nop
    /* 1F2DDD8 8007003C 00110200 */  sll        $v0, $v0, 4
    /* 1F2DDDC 80070040 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1F2DDE0 80070044 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 1F2DDE4 80070048 337B000C */  jal        func_8001ECCC
    /* 1F2DDE8 8007004C 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DDEC 80070050 94002426 */  addiu      $a0, $s1, 0x94
    /* 1F2DDF0 80070054 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 1F2DDF4 80070058 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 1F2DDF8 8007005C 21280502 */  addu       $a1, $s0, $a1
    /* 1F2DDFC 80070060 337B000C */  jal        func_8001ECCC
    /* 1F2DE00 80070064 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DE04 80070068 A8002426 */  addiu      $a0, $s1, 0xA8
    /* 1F2DE08 8007006C 0680053C */  lui        $a1, %hi(D_80061858)
    /* 1F2DE0C 80070070 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 1F2DE10 80070074 337B000C */  jal        func_8001ECCC
    /* 1F2DE14 80070078 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DE18 8007007C BC002426 */  addiu      $a0, $s1, 0xBC
    /* 1F2DE1C 80070080 0680053C */  lui        $a1, %hi(D_80061844)
    /* 1F2DE20 80070084 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 1F2DE24 80070088 337B000C */  jal        func_8001ECCC
    /* 1F2DE28 8007008C 21300000 */   addu      $a2, $zero, $zero
    /* 1F2DE2C 80070090 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 1F2DE30 80070094 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 1F2DE34 80070098 00000000 */  nop
    /* 1F2DE38 8007009C 02004230 */  andi       $v0, $v0, 0x2
    /* 1F2DE3C 800700A0 07004014 */  bnez       $v0, .Llevel_30_800700C0
    /* 1F2DE40 800700A4 00000000 */   nop
    /* 1F2DE44 800700A8 8000228E */  lw         $v0, 0x80($s1)
    /* 1F2DE48 800700AC 00000000 */  nop
    /* 1F2DE4C 800700B0 4C004228 */  slti       $v0, $v0, 0x4C
    /* 1F2DE50 800700B4 02004010 */  beqz       $v0, .Llevel_30_800700C0
    /* 1F2DE54 800700B8 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 1F2DE58 800700BC 800022AE */  sw         $v0, 0x80($s1)
  .Llevel_30_800700C0:
    /* 1F2DE5C 800700C0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1F2DE60 800700C4 1800B28F */  lw         $s2, 0x18($sp)
    /* 1F2DE64 800700C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 1F2DE68 800700CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 1F2DE6C 800700D0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1F2DE70 800700D4 0800E003 */  jr         $ra
    /* 1F2DE74 800700D8 00000000 */   nop
endlabel func_level_30_8006FBD8
