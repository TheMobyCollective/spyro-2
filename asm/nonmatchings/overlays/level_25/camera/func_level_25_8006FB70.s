.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_25_8006FB70, 0x208

glabel func_level_25_8006FB70
    /* 1BC810C 8006FB70 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1BC8110 8006FB74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1BC8114 8006FB78 0680103C */  lui        $s0, %hi(D_80067FBC)
    /* 1BC8118 8006FB7C BC7F1026 */  addiu      $s0, $s0, %lo(D_80067FBC)
    /* 1BC811C 8006FB80 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1BC8120 8006FB84 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1BC8124 8006FB88 0000028E */  lw         $v0, 0x0($s0)
    /* 1BC8128 8006FB8C 00000000 */  nop
    /* 1BC812C 8006FB90 02004224 */  addiu      $v0, $v0, 0x2
    /* 1BC8130 8006FB94 83880200 */  sra        $s1, $v0, 2
    /* 1BC8134 8006FB98 0500222A */  slti       $v0, $s1, 0x5
    /* 1BC8138 8006FB9C 02004014 */  bnez       $v0, .Llevel_25_8006FBA8
    /* 1BC813C 8006FBA0 00000000 */   nop
    /* 1BC8140 8006FBA4 04001124 */  addiu      $s1, $zero, 0x4
  .Llevel_25_8006FBA8:
    /* 1BC8144 8006FBA8 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 1BC8148 8006FBAC D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 1BC814C 8006FBB0 03000224 */  addiu      $v0, $zero, 0x3
    /* 1BC8150 8006FBB4 6A006214 */  bne        $v1, $v0, .Llevel_25_8006FD60
    /* 1BC8154 8006FBB8 00000000 */   nop
    /* 1BC8158 8006FBBC 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 1BC815C 8006FBC0 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 1BC8160 8006FBC4 00000000 */  nop
    /* 1BC8164 8006FBC8 2C004014 */  bnez       $v0, .Llevel_25_8006FC7C
    /* 1BC8168 8006FBCC 00000000 */   nop
    /* 1BC816C 8006FBD0 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 1BC8170 8006FBD4 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 1BC8174 8006FBD8 0680053C */  lui        $a1, %hi(D_800615C4)
    /* 1BC8178 8006FBDC C415A524 */  addiu      $a1, $a1, %lo(D_800615C4)
    /* 1BC817C 8006FBE0 337B000C */  jal        func_8001ECCC
    /* 1BC8180 8006FBE4 58FF0426 */   addiu     $a0, $s0, -0xA8
    /* 1BC8184 8006FBE8 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 1BC8188 8006FBEC 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 1BC818C 8006FBF0 0680033C */  lui        $v1, %hi(D_80067F04)
    /* 1BC8190 8006FBF4 047F638C */  lw         $v1, %lo(D_80067F04)($v1)
    /* 1BC8194 8006FBF8 23100200 */  negu       $v0, $v0
    /* 1BC8198 8006FBFC 23184300 */  subu       $v1, $v0, $v1
    /* 1BC819C 8006FC00 83180300 */  sra        $v1, $v1, 2
    /* 1BC81A0 8006FC04 0680013C */  lui        $at, %hi(D_80067F18)
    /* 1BC81A4 8006FC08 187F22AC */  sw         $v0, %lo(D_80067F18)($at)
    /* 1BC81A8 8006FC0C C1006228 */  slti       $v0, $v1, 0xC1
    /* 1BC81AC 8006FC10 03004014 */  bnez       $v0, .Llevel_25_8006FC20
    /* 1BC81B0 8006FC14 40FF6228 */   slti      $v0, $v1, -0xC0
    /* 1BC81B4 8006FC18 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 1BC81B8 8006FC1C 40FF6228 */  slti       $v0, $v1, -0xC0
  .Llevel_25_8006FC20:
    /* 1BC81BC 8006FC20 02004010 */  beqz       $v0, .Llevel_25_8006FC2C
    /* 1BC81C0 8006FC24 00000000 */   nop
    /* 1BC81C4 8006FC28 40FF0324 */  addiu      $v1, $zero, -0xC0
  .Llevel_25_8006FC2C:
    /* 1BC81C8 8006FC2C 02006104 */  bgez       $v1, .Llevel_25_8006FC38
    /* 1BC81CC 8006FC30 21106000 */   addu      $v0, $v1, $zero
    /* 1BC81D0 8006FC34 23100200 */  negu       $v0, $v0
  .Llevel_25_8006FC38:
    /* 1BC81D4 8006FC38 09004228 */  slti       $v0, $v0, 0x9
    /* 1BC81D8 8006FC3C 03004014 */  bnez       $v0, .Llevel_25_8006FC4C
    /* 1BC81DC 8006FC40 00000000 */   nop
    /* 1BC81E0 8006FC44 14BF0108 */  j          .Llevel_25_8006FC50
    /* 1BC81E4 8006FC48 64FF03AE */   sw        $v1, -0x9C($s0)
  .Llevel_25_8006FC4C:
    /* 1BC81E8 8006FC4C 64FF00AE */  sw         $zero, -0x9C($s0)
  .Llevel_25_8006FC50:
    /* 1BC81EC 8006FC50 0780023C */  lui        $v0, %hi(D_8006A054)
    /* 1BC81F0 8006FC54 54A0428C */  lw         $v0, %lo(D_8006A054)($v0)
    /* 1BC81F4 8006FC58 00000000 */  nop
    /* 1BC81F8 8006FC5C 23100200 */  negu       $v0, $v0
    /* 1BC81FC 8006FC60 83100200 */  sra        $v0, $v0, 2
    /* 1BC8200 8006FC64 0680013C */  lui        $at, %hi(D_80067F24)
    /* 1BC8204 8006FC68 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
    /* 1BC8208 8006FC6C 087C000C */  jal        func_8001F020
    /* 1BC820C 8006FC70 C0000424 */   addiu     $a0, $zero, 0xC0
    /* 1BC8210 8006FC74 2F7C000C */  jal        func_8001F0BC
    /* 1BC8214 8006FC78 00000000 */   nop
  .Llevel_25_8006FC7C:
    /* 1BC8218 8006FC7C 0680103C */  lui        $s0, %hi(D_80067EE4)
    /* 1BC821C 8006FC80 E47E1026 */  addiu      $s0, $s0, %lo(D_80067EE4)
    /* 1BC8220 8006FC84 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1BC8224 8006FC88 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 1BC8228 8006FC8C 6C6F000C */  jal        func_8001BDB0
    /* 1BC822C 8006FC90 21200002 */   addu      $a0, $s0, $zero
    /* 1BC8230 8006FC94 80000426 */  addiu      $a0, $s0, 0x80
    /* 1BC8234 8006FC98 80101100 */  sll        $v0, $s1, 2
    /* 1BC8238 8006FC9C 21105100 */  addu       $v0, $v0, $s1
    /* 1BC823C 8006FCA0 80880200 */  sll        $s1, $v0, 2
    /* 1BC8240 8006FCA4 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 1BC8244 8006FCA8 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 1BC8248 8006FCAC 21282502 */  addu       $a1, $s1, $a1
    /* 1BC824C 8006FCB0 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 1BC8250 8006FCB4 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 1BC8254 8006FCB8 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1BC8258 8006FCBC F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 1BC825C 8006FCC0 337B000C */  jal        func_8001ECCC
    /* 1BC8260 8006FCC4 21300000 */   addu      $a2, $zero, $zero
    /* 1BC8264 8006FCC8 8000028E */  lw         $v0, 0x80($s0)
    /* 1BC8268 8006FCCC 00000000 */  nop
    /* 1BC826C 8006FCD0 00014228 */  slti       $v0, $v0, 0x100
    /* 1BC8270 8006FCD4 02004010 */  beqz       $v0, .Llevel_25_8006FCE0
    /* 1BC8274 8006FCD8 00010224 */   addiu     $v0, $zero, 0x100
    /* 1BC8278 8006FCDC 800002AE */  sw         $v0, 0x80($s0)
  .Llevel_25_8006FCE0:
    /* 1BC827C 8006FCE0 0680023C */  lui        $v0, %hi(D_80067F68)
    /* 1BC8280 8006FCE4 687F428C */  lw         $v0, %lo(D_80067F68)($v0)
    /* 1BC8284 8006FCE8 00000000 */  nop
    /* 1BC8288 8006FCEC 60004228 */  slti       $v0, $v0, 0x60
    /* 1BC828C 8006FCF0 03004010 */  beqz       $v0, .Llevel_25_8006FD00
    /* 1BC8290 8006FCF4 60000224 */   addiu     $v0, $zero, 0x60
    /* 1BC8294 8006FCF8 0680013C */  lui        $at, %hi(D_80067F68)
    /* 1BC8298 8006FCFC 687F22AC */  sw         $v0, %lo(D_80067F68)($at)
  .Llevel_25_8006FD00:
    /* 1BC829C 8006FD00 0680023C */  lui        $v0, %hi(D_80067F74)
    /* 1BC82A0 8006FD04 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* 1BC82A4 8006FD08 00000000 */  nop
    /* 1BC82A8 8006FD0C 40004228 */  slti       $v0, $v0, 0x40
    /* 1BC82AC 8006FD10 03004010 */  beqz       $v0, .Llevel_25_8006FD20
    /* 1BC82B0 8006FD14 40000224 */   addiu     $v0, $zero, 0x40
    /* 1BC82B4 8006FD18 0680013C */  lui        $at, %hi(D_80067F74)
    /* 1BC82B8 8006FD1C 747F22AC */  sw         $v0, %lo(D_80067F74)($at)
  .Llevel_25_8006FD20:
    /* 1BC82BC 8006FD20 94000426 */  addiu      $a0, $s0, 0x94
    /* 1BC82C0 8006FD24 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 1BC82C4 8006FD28 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 1BC82C8 8006FD2C 21282502 */  addu       $a1, $s1, $a1
    /* 1BC82CC 8006FD30 337B000C */  jal        func_8001ECCC
    /* 1BC82D0 8006FD34 21300000 */   addu      $a2, $zero, $zero
    /* 1BC82D4 8006FD38 A8000426 */  addiu      $a0, $s0, 0xA8
    /* 1BC82D8 8006FD3C 0680053C */  lui        $a1, %hi(D_80061858)
    /* 1BC82DC 8006FD40 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 1BC82E0 8006FD44 337B000C */  jal        func_8001ECCC
    /* 1BC82E4 8006FD48 21300000 */   addu      $a2, $zero, $zero
    /* 1BC82E8 8006FD4C BC000426 */  addiu      $a0, $s0, 0xBC
    /* 1BC82EC 8006FD50 0680053C */  lui        $a1, %hi(D_80061844)
    /* 1BC82F0 8006FD54 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 1BC82F4 8006FD58 337B000C */  jal        func_8001ECCC
    /* 1BC82F8 8006FD5C 21300000 */   addu      $a2, $zero, $zero
  .Llevel_25_8006FD60:
    /* 1BC82FC 8006FD60 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1BC8300 8006FD64 1400B18F */  lw         $s1, 0x14($sp)
    /* 1BC8304 8006FD68 1000B08F */  lw         $s0, 0x10($sp)
    /* 1BC8308 8006FD6C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1BC830C 8006FD70 0800E003 */  jr         $ra
    /* 1BC8310 8006FD74 00000000 */   nop
endlabel func_level_25_8006FB70
