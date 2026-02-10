.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_35_8006FB48, 0x208

glabel func_level_35_8006FB48
    /* 29D50E4 8006FB48 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 29D50E8 8006FB4C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 29D50EC 8006FB50 0680103C */  lui        $s0, %hi(D_80067FBC)
    /* 29D50F0 8006FB54 BC7F1026 */  addiu      $s0, $s0, %lo(D_80067FBC)
    /* 29D50F4 8006FB58 1800BFAF */  sw         $ra, 0x18($sp)
    /* 29D50F8 8006FB5C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 29D50FC 8006FB60 0000028E */  lw         $v0, 0x0($s0)
    /* 29D5100 8006FB64 00000000 */  nop
    /* 29D5104 8006FB68 02004224 */  addiu      $v0, $v0, 0x2
    /* 29D5108 8006FB6C 83880200 */  sra        $s1, $v0, 2
    /* 29D510C 8006FB70 0500222A */  slti       $v0, $s1, 0x5
    /* 29D5110 8006FB74 02004014 */  bnez       $v0, .Llevel_35_8006FB80
    /* 29D5114 8006FB78 00000000 */   nop
    /* 29D5118 8006FB7C 04001124 */  addiu      $s1, $zero, 0x4
  .Llevel_35_8006FB80:
    /* 29D511C 8006FB80 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 29D5120 8006FB84 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 29D5124 8006FB88 03000224 */  addiu      $v0, $zero, 0x3
    /* 29D5128 8006FB8C 6A006214 */  bne        $v1, $v0, .Llevel_35_8006FD38
    /* 29D512C 8006FB90 00000000 */   nop
    /* 29D5130 8006FB94 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 29D5134 8006FB98 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 29D5138 8006FB9C 00000000 */  nop
    /* 29D513C 8006FBA0 2C004014 */  bnez       $v0, .Llevel_35_8006FC54
    /* 29D5140 8006FBA4 00000000 */   nop
    /* 29D5144 8006FBA8 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 29D5148 8006FBAC F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 29D514C 8006FBB0 0680053C */  lui        $a1, %hi(D_800615C4)
    /* 29D5150 8006FBB4 C415A524 */  addiu      $a1, $a1, %lo(D_800615C4)
    /* 29D5154 8006FBB8 337B000C */  jal        func_8001ECCC
    /* 29D5158 8006FBBC 58FF0426 */   addiu     $a0, $s0, -0xA8
    /* 29D515C 8006FBC0 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 29D5160 8006FBC4 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 29D5164 8006FBC8 0680033C */  lui        $v1, %hi(D_80067F04)
    /* 29D5168 8006FBCC 047F638C */  lw         $v1, %lo(D_80067F04)($v1)
    /* 29D516C 8006FBD0 23100200 */  negu       $v0, $v0
    /* 29D5170 8006FBD4 23184300 */  subu       $v1, $v0, $v1
    /* 29D5174 8006FBD8 83180300 */  sra        $v1, $v1, 2
    /* 29D5178 8006FBDC 0680013C */  lui        $at, %hi(D_80067F18)
    /* 29D517C 8006FBE0 187F22AC */  sw         $v0, %lo(D_80067F18)($at)
    /* 29D5180 8006FBE4 C1006228 */  slti       $v0, $v1, 0xC1
    /* 29D5184 8006FBE8 03004014 */  bnez       $v0, .Llevel_35_8006FBF8
    /* 29D5188 8006FBEC 40FF6228 */   slti      $v0, $v1, -0xC0
    /* 29D518C 8006FBF0 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 29D5190 8006FBF4 40FF6228 */  slti       $v0, $v1, -0xC0
  .Llevel_35_8006FBF8:
    /* 29D5194 8006FBF8 02004010 */  beqz       $v0, .Llevel_35_8006FC04
    /* 29D5198 8006FBFC 00000000 */   nop
    /* 29D519C 8006FC00 40FF0324 */  addiu      $v1, $zero, -0xC0
  .Llevel_35_8006FC04:
    /* 29D51A0 8006FC04 02006104 */  bgez       $v1, .Llevel_35_8006FC10
    /* 29D51A4 8006FC08 21106000 */   addu      $v0, $v1, $zero
    /* 29D51A8 8006FC0C 23100200 */  negu       $v0, $v0
  .Llevel_35_8006FC10:
    /* 29D51AC 8006FC10 09004228 */  slti       $v0, $v0, 0x9
    /* 29D51B0 8006FC14 03004014 */  bnez       $v0, .Llevel_35_8006FC24
    /* 29D51B4 8006FC18 00000000 */   nop
    /* 29D51B8 8006FC1C 0ABF0108 */  j          .Llevel_35_8006FC28
    /* 29D51BC 8006FC20 64FF03AE */   sw        $v1, -0x9C($s0)
  .Llevel_35_8006FC24:
    /* 29D51C0 8006FC24 64FF00AE */  sw         $zero, -0x9C($s0)
  .Llevel_35_8006FC28:
    /* 29D51C4 8006FC28 0780023C */  lui        $v0, %hi(D_8006A054)
    /* 29D51C8 8006FC2C 54A0428C */  lw         $v0, %lo(D_8006A054)($v0)
    /* 29D51CC 8006FC30 00000000 */  nop
    /* 29D51D0 8006FC34 23100200 */  negu       $v0, $v0
    /* 29D51D4 8006FC38 83100200 */  sra        $v0, $v0, 2
    /* 29D51D8 8006FC3C 0680013C */  lui        $at, %hi(D_80067F24)
    /* 29D51DC 8006FC40 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
    /* 29D51E0 8006FC44 087C000C */  jal        func_8001F020
    /* 29D51E4 8006FC48 C0000424 */   addiu     $a0, $zero, 0xC0
    /* 29D51E8 8006FC4C 2F7C000C */  jal        func_8001F0BC
    /* 29D51EC 8006FC50 00000000 */   nop
  .Llevel_35_8006FC54:
    /* 29D51F0 8006FC54 0680103C */  lui        $s0, %hi(D_80067EE4)
    /* 29D51F4 8006FC58 E47E1026 */  addiu      $s0, $s0, %lo(D_80067EE4)
    /* 29D51F8 8006FC5C 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 29D51FC 8006FC60 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 29D5200 8006FC64 6C6F000C */  jal        func_8001BDB0
    /* 29D5204 8006FC68 21200002 */   addu      $a0, $s0, $zero
    /* 29D5208 8006FC6C 80000426 */  addiu      $a0, $s0, 0x80
    /* 29D520C 8006FC70 80101100 */  sll        $v0, $s1, 2
    /* 29D5210 8006FC74 21105100 */  addu       $v0, $v0, $s1
    /* 29D5214 8006FC78 80880200 */  sll        $s1, $v0, 2
    /* 29D5218 8006FC7C 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 29D521C 8006FC80 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 29D5220 8006FC84 21282502 */  addu       $a1, $s1, $a1
    /* 29D5224 8006FC88 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 29D5228 8006FC8C 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 29D522C 8006FC90 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 29D5230 8006FC94 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 29D5234 8006FC98 337B000C */  jal        func_8001ECCC
    /* 29D5238 8006FC9C 21300000 */   addu      $a2, $zero, $zero
    /* 29D523C 8006FCA0 8000028E */  lw         $v0, 0x80($s0)
    /* 29D5240 8006FCA4 00000000 */  nop
    /* 29D5244 8006FCA8 00014228 */  slti       $v0, $v0, 0x100
    /* 29D5248 8006FCAC 02004010 */  beqz       $v0, .Llevel_35_8006FCB8
    /* 29D524C 8006FCB0 00010224 */   addiu     $v0, $zero, 0x100
    /* 29D5250 8006FCB4 800002AE */  sw         $v0, 0x80($s0)
  .Llevel_35_8006FCB8:
    /* 29D5254 8006FCB8 0680023C */  lui        $v0, %hi(D_80067F68)
    /* 29D5258 8006FCBC 687F428C */  lw         $v0, %lo(D_80067F68)($v0)
    /* 29D525C 8006FCC0 00000000 */  nop
    /* 29D5260 8006FCC4 60004228 */  slti       $v0, $v0, 0x60
    /* 29D5264 8006FCC8 03004010 */  beqz       $v0, .Llevel_35_8006FCD8
    /* 29D5268 8006FCCC 60000224 */   addiu     $v0, $zero, 0x60
    /* 29D526C 8006FCD0 0680013C */  lui        $at, %hi(D_80067F68)
    /* 29D5270 8006FCD4 687F22AC */  sw         $v0, %lo(D_80067F68)($at)
  .Llevel_35_8006FCD8:
    /* 29D5274 8006FCD8 0680023C */  lui        $v0, %hi(D_80067F74)
    /* 29D5278 8006FCDC 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* 29D527C 8006FCE0 00000000 */  nop
    /* 29D5280 8006FCE4 40004228 */  slti       $v0, $v0, 0x40
    /* 29D5284 8006FCE8 03004010 */  beqz       $v0, .Llevel_35_8006FCF8
    /* 29D5288 8006FCEC 40000224 */   addiu     $v0, $zero, 0x40
    /* 29D528C 8006FCF0 0680013C */  lui        $at, %hi(D_80067F74)
    /* 29D5290 8006FCF4 747F22AC */  sw         $v0, %lo(D_80067F74)($at)
  .Llevel_35_8006FCF8:
    /* 29D5294 8006FCF8 94000426 */  addiu      $a0, $s0, 0x94
    /* 29D5298 8006FCFC 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 29D529C 8006FD00 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 29D52A0 8006FD04 21282502 */  addu       $a1, $s1, $a1
    /* 29D52A4 8006FD08 337B000C */  jal        func_8001ECCC
    /* 29D52A8 8006FD0C 21300000 */   addu      $a2, $zero, $zero
    /* 29D52AC 8006FD10 A8000426 */  addiu      $a0, $s0, 0xA8
    /* 29D52B0 8006FD14 0680053C */  lui        $a1, %hi(D_80061858)
    /* 29D52B4 8006FD18 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 29D52B8 8006FD1C 337B000C */  jal        func_8001ECCC
    /* 29D52BC 8006FD20 21300000 */   addu      $a2, $zero, $zero
    /* 29D52C0 8006FD24 BC000426 */  addiu      $a0, $s0, 0xBC
    /* 29D52C4 8006FD28 0680053C */  lui        $a1, %hi(D_80061844)
    /* 29D52C8 8006FD2C 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 29D52CC 8006FD30 337B000C */  jal        func_8001ECCC
    /* 29D52D0 8006FD34 21300000 */   addu      $a2, $zero, $zero
  .Llevel_35_8006FD38:
    /* 29D52D4 8006FD38 1800BF8F */  lw         $ra, 0x18($sp)
    /* 29D52D8 8006FD3C 1400B18F */  lw         $s1, 0x14($sp)
    /* 29D52DC 8006FD40 1000B08F */  lw         $s0, 0x10($sp)
    /* 29D52E0 8006FD44 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 29D52E4 8006FD48 0800E003 */  jr         $ra
    /* 29D52E8 8006FD4C 00000000 */   nop
endlabel func_level_35_8006FB48
