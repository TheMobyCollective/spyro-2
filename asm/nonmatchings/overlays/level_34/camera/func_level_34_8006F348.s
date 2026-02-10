.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_34_8006F348, 0x244

glabel func_level_34_8006F348
    /* 27AC0E4 8006F348 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 27AC0E8 8006F34C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 27AC0EC 8006F350 0680103C */  lui        $s0, %hi(D_80067FBC)
    /* 27AC0F0 8006F354 BC7F1026 */  addiu      $s0, $s0, %lo(D_80067FBC)
    /* 27AC0F4 8006F358 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 27AC0F8 8006F35C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 27AC0FC 8006F360 1400B1AF */  sw         $s1, 0x14($sp)
    /* 27AC100 8006F364 0000028E */  lw         $v0, 0x0($s0)
    /* 27AC104 8006F368 00000000 */  nop
    /* 27AC108 8006F36C 02004224 */  addiu      $v0, $v0, 0x2
    /* 27AC10C 8006F370 83880200 */  sra        $s1, $v0, 2
    /* 27AC110 8006F374 0500222A */  slti       $v0, $s1, 0x5
    /* 27AC114 8006F378 02004014 */  bnez       $v0, .Llevel_34_8006F384
    /* 27AC118 8006F37C 00000000 */   nop
    /* 27AC11C 8006F380 04001124 */  addiu      $s1, $zero, 0x4
  .Llevel_34_8006F384:
    /* 27AC120 8006F384 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 27AC124 8006F388 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 27AC128 8006F38C 0E000224 */  addiu      $v0, $zero, 0xE
    /* 27AC12C 8006F390 05006210 */  beq        $v1, $v0, .Llevel_34_8006F3A8
    /* 27AC130 8006F394 17000224 */   addiu     $v0, $zero, 0x17
    /* 27AC134 8006F398 2F006210 */  beq        $v1, $v0, .Llevel_34_8006F458
    /* 27AC138 8006F39C 00000000 */   nop
    /* 27AC13C 8006F3A0 5CBD0108 */  j          .Llevel_34_8006F570
    /* 27AC140 8006F3A4 00000000 */   nop
  .Llevel_34_8006F3A8:
    /* 27AC144 8006F3A8 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 27AC148 8006F3AC B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 27AC14C 8006F3B0 00000000 */  nop
    /* 27AC150 8006F3B4 07004014 */  bnez       $v0, .Llevel_34_8006F3D4
    /* 27AC154 8006F3B8 00000000 */   nop
    /* 27AC158 8006F3BC 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 27AC15C 8006F3C0 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 27AC160 8006F3C4 0680053C */  lui        $a1, %hi(D_80061600)
    /* 27AC164 8006F3C8 0016A524 */  addiu      $a1, $a1, %lo(D_80061600)
    /* 27AC168 8006F3CC 337B000C */  jal        func_8001ECCC
    /* 27AC16C 8006F3D0 58FF0426 */   addiu     $a0, $s0, -0xA8
  .Llevel_34_8006F3D4:
    /* 27AC170 8006F3D4 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 27AC174 8006F3D8 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 27AC178 8006F3DC 6C6F000C */  jal        func_8001BDB0
    /* 27AC17C 8006F3E0 28FF0426 */   addiu     $a0, $s0, -0xD8
    /* 27AC180 8006F3E4 A8FF0426 */  addiu      $a0, $s0, -0x58
    /* 27AC184 8006F3E8 0680023C */  lui        $v0, %hi(D_80067FF0)
    /* 27AC188 8006F3EC F07F428C */  lw         $v0, %lo(D_80067FF0)($v0)
    /* 27AC18C 8006F3F0 0680053C */  lui        $a1, %hi(D_80061790)
    /* 27AC190 8006F3F4 9017A524 */  addiu      $a1, $a1, %lo(D_80061790)
    /* 27AC194 8006F3F8 46004290 */  lbu        $v0, 0x46($v0)
    /* 27AC198 8006F3FC 00000000 */  nop
    /* 27AC19C 8006F400 00110200 */  sll        $v0, $v0, 4
    /* 27AC1A0 8006F404 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 27AC1A4 8006F408 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 27AC1A8 8006F40C 337B000C */  jal        func_8001ECCC
    /* 27AC1AC 8006F410 21300000 */   addu      $a2, $zero, $zero
    /* 27AC1B0 8006F414 BCFF0426 */  addiu      $a0, $s0, -0x44
    /* 27AC1B4 8006F418 0680053C */  lui        $a1, %hi(D_8006181C)
    /* 27AC1B8 8006F41C 1C18A524 */  addiu      $a1, $a1, %lo(D_8006181C)
    /* 27AC1BC 8006F420 337B000C */  jal        func_8001ECCC
    /* 27AC1C0 8006F424 21300000 */   addu      $a2, $zero, $zero
    /* 27AC1C4 8006F428 D0FF0426 */  addiu      $a0, $s0, -0x30
    /* 27AC1C8 8006F42C 0680053C */  lui        $a1, %hi(D_80061858)
    /* 27AC1CC 8006F430 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 27AC1D0 8006F434 337B000C */  jal        func_8001ECCC
    /* 27AC1D4 8006F438 21300000 */   addu      $a2, $zero, $zero
    /* 27AC1D8 8006F43C E4FF0426 */  addiu      $a0, $s0, -0x1C
    /* 27AC1DC 8006F440 0680053C */  lui        $a1, %hi(D_80061844)
    /* 27AC1E0 8006F444 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 27AC1E4 8006F448 337B000C */  jal        func_8001ECCC
    /* 27AC1E8 8006F44C 21300000 */   addu      $a2, $zero, $zero
    /* 27AC1EC 8006F450 5CBD0108 */  j          .Llevel_34_8006F570
    /* 27AC1F0 8006F454 00000000 */   nop
  .Llevel_34_8006F458:
    /* 27AC1F4 8006F458 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 27AC1F8 8006F45C B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 27AC1FC 8006F460 00000000 */  nop
    /* 27AC200 8006F464 10004014 */  bnez       $v0, .Llevel_34_8006F4A8
    /* 27AC204 8006F468 00000000 */   nop
    /* 27AC208 8006F46C 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 27AC20C 8006F470 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 27AC210 8006F474 0680053C */  lui        $a1, %hi(D_80061560)
    /* 27AC214 8006F478 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 27AC218 8006F47C 337B000C */  jal        func_8001ECCC
    /* 27AC21C 8006F480 58FF0426 */   addiu     $a0, $s0, -0xA8
    /* 27AC220 8006F484 087C000C */  jal        func_8001F020
    /* 27AC224 8006F488 00040424 */   addiu     $a0, $zero, 0x400
    /* 27AC228 8006F48C 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 27AC22C 8006F490 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 27AC230 8006F494 33000224 */  addiu      $v0, $zero, 0x33
    /* 27AC234 8006F498 03006214 */  bne        $v1, $v0, .Llevel_34_8006F4A8
    /* 27AC238 8006F49C 00060224 */   addiu     $v0, $zero, 0x600
    /* 27AC23C 8006F4A0 0680013C */  lui        $at, %hi(D_80067F1C)
    /* 27AC240 8006F4A4 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_34_8006F4A8:
    /* 27AC244 8006F4A8 0680123C */  lui        $s2, %hi(D_80067EE4)
    /* 27AC248 8006F4AC E47E5226 */  addiu      $s2, $s2, %lo(D_80067EE4)
    /* 27AC24C 8006F4B0 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 27AC250 8006F4B4 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 27AC254 8006F4B8 6C6F000C */  jal        func_8001BDB0
    /* 27AC258 8006F4BC 21204002 */   addu      $a0, $s2, $zero
    /* 27AC25C 8006F4C0 80004426 */  addiu      $a0, $s2, 0x80
    /* 27AC260 8006F4C4 80801100 */  sll        $s0, $s1, 2
    /* 27AC264 8006F4C8 21801102 */  addu       $s0, $s0, $s1
    /* 27AC268 8006F4CC 80801000 */  sll        $s0, $s0, 2
    /* 27AC26C 8006F4D0 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 27AC270 8006F4D4 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 27AC274 8006F4D8 0780023C */  lui        $v0, %hi(D_8006A208)
    /* 27AC278 8006F4DC 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* 27AC27C 8006F4E0 21280502 */  addu       $a1, $s0, $a1
    /* 27AC280 8006F4E4 46004290 */  lbu        $v0, 0x46($v0)
    /* 27AC284 8006F4E8 00000000 */  nop
    /* 27AC288 8006F4EC 00110200 */  sll        $v0, $v0, 4
    /* 27AC28C 8006F4F0 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 27AC290 8006F4F4 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 27AC294 8006F4F8 337B000C */  jal        func_8001ECCC
    /* 27AC298 8006F4FC 21300000 */   addu      $a2, $zero, $zero
    /* 27AC29C 8006F500 94004426 */  addiu      $a0, $s2, 0x94
    /* 27AC2A0 8006F504 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 27AC2A4 8006F508 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 27AC2A8 8006F50C 21280502 */  addu       $a1, $s0, $a1
    /* 27AC2AC 8006F510 337B000C */  jal        func_8001ECCC
    /* 27AC2B0 8006F514 21300000 */   addu      $a2, $zero, $zero
    /* 27AC2B4 8006F518 A8004426 */  addiu      $a0, $s2, 0xA8
    /* 27AC2B8 8006F51C 0680053C */  lui        $a1, %hi(D_80061858)
    /* 27AC2BC 8006F520 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 27AC2C0 8006F524 337B000C */  jal        func_8001ECCC
    /* 27AC2C4 8006F528 21300000 */   addu      $a2, $zero, $zero
    /* 27AC2C8 8006F52C BC004426 */  addiu      $a0, $s2, 0xBC
    /* 27AC2CC 8006F530 0680053C */  lui        $a1, %hi(D_80061844)
    /* 27AC2D0 8006F534 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 27AC2D4 8006F538 337B000C */  jal        func_8001ECCC
    /* 27AC2D8 8006F53C 21300000 */   addu      $a2, $zero, $zero
    /* 27AC2DC 8006F540 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 27AC2E0 8006F544 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 27AC2E4 8006F548 00000000 */  nop
    /* 27AC2E8 8006F54C 02004230 */  andi       $v0, $v0, 0x2
    /* 27AC2EC 8006F550 07004014 */  bnez       $v0, .Llevel_34_8006F570
    /* 27AC2F0 8006F554 00000000 */   nop
    /* 27AC2F4 8006F558 8000428E */  lw         $v0, 0x80($s2)
    /* 27AC2F8 8006F55C 00000000 */  nop
    /* 27AC2FC 8006F560 4C004228 */  slti       $v0, $v0, 0x4C
    /* 27AC300 8006F564 02004010 */  beqz       $v0, .Llevel_34_8006F570
    /* 27AC304 8006F568 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 27AC308 8006F56C 800042AE */  sw         $v0, 0x80($s2)
  .Llevel_34_8006F570:
    /* 27AC30C 8006F570 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 27AC310 8006F574 1800B28F */  lw         $s2, 0x18($sp)
    /* 27AC314 8006F578 1400B18F */  lw         $s1, 0x14($sp)
    /* 27AC318 8006F57C 1000B08F */  lw         $s0, 0x10($sp)
    /* 27AC31C 8006F580 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 27AC320 8006F584 0800E003 */  jr         $ra
    /* 27AC324 8006F588 00000000 */   nop
endlabel func_level_34_8006F348
