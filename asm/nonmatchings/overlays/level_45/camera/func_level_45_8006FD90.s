.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_45_8006FD90, 0x2C0

glabel func_level_45_8006FD90
    /* 33FA32C 8006FD90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 33FA330 8006FD94 1000B0AF */  sw         $s0, 0x10($sp)
    /* 33FA334 8006FD98 0680103C */  lui        $s0, %hi(D_80067FBC)
    /* 33FA338 8006FD9C BC7F1026 */  addiu      $s0, $s0, %lo(D_80067FBC)
    /* 33FA33C 8006FDA0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 33FA340 8006FDA4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 33FA344 8006FDA8 0000028E */  lw         $v0, 0x0($s0)
    /* 33FA348 8006FDAC 00000000 */  nop
    /* 33FA34C 8006FDB0 02004224 */  addiu      $v0, $v0, 0x2
    /* 33FA350 8006FDB4 83880200 */  sra        $s1, $v0, 2
    /* 33FA354 8006FDB8 0500222A */  slti       $v0, $s1, 0x5
    /* 33FA358 8006FDBC 02004014 */  bnez       $v0, .Llevel_45_8006FDC8
    /* 33FA35C 8006FDC0 00000000 */   nop
    /* 33FA360 8006FDC4 04001124 */  addiu      $s1, $zero, 0x4
  .Llevel_45_8006FDC8:
    /* 33FA364 8006FDC8 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 33FA368 8006FDCC D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 33FA36C 8006FDD0 03000224 */  addiu      $v0, $zero, 0x3
    /* 33FA370 8006FDD4 05006210 */  beq        $v1, $v0, .Llevel_45_8006FDEC
    /* 33FA374 8006FDD8 19000224 */   addiu     $v0, $zero, 0x19
    /* 33FA378 8006FDDC 4D006210 */  beq        $v1, $v0, .Llevel_45_8006FF14
    /* 33FA37C 8006FDE0 00000000 */   nop
    /* 33FA380 8006FDE4 0EC00108 */  j          .Llevel_45_80070038
    /* 33FA384 8006FDE8 00000000 */   nop
  .Llevel_45_8006FDEC:
    /* 33FA388 8006FDEC 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 33FA38C 8006FDF0 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 33FA390 8006FDF4 00000000 */  nop
    /* 33FA394 8006FDF8 2C004014 */  bnez       $v0, .Llevel_45_8006FEAC
    /* 33FA398 8006FDFC 00000000 */   nop
    /* 33FA39C 8006FE00 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 33FA3A0 8006FE04 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 33FA3A4 8006FE08 0680053C */  lui        $a1, %hi(D_800615C4)
    /* 33FA3A8 8006FE0C C415A524 */  addiu      $a1, $a1, %lo(D_800615C4)
    /* 33FA3AC 8006FE10 337B000C */  jal        func_8001ECCC
    /* 33FA3B0 8006FE14 58FF0426 */   addiu     $a0, $s0, -0xA8
    /* 33FA3B4 8006FE18 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 33FA3B8 8006FE1C 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 33FA3BC 8006FE20 0680033C */  lui        $v1, %hi(D_80067F04)
    /* 33FA3C0 8006FE24 047F638C */  lw         $v1, %lo(D_80067F04)($v1)
    /* 33FA3C4 8006FE28 23100200 */  negu       $v0, $v0
    /* 33FA3C8 8006FE2C 23184300 */  subu       $v1, $v0, $v1
    /* 33FA3CC 8006FE30 83180300 */  sra        $v1, $v1, 2
    /* 33FA3D0 8006FE34 0680013C */  lui        $at, %hi(D_80067F18)
    /* 33FA3D4 8006FE38 187F22AC */  sw         $v0, %lo(D_80067F18)($at)
    /* 33FA3D8 8006FE3C C1006228 */  slti       $v0, $v1, 0xC1
    /* 33FA3DC 8006FE40 03004014 */  bnez       $v0, .Llevel_45_8006FE50
    /* 33FA3E0 8006FE44 40FF6228 */   slti      $v0, $v1, -0xC0
    /* 33FA3E4 8006FE48 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 33FA3E8 8006FE4C 40FF6228 */  slti       $v0, $v1, -0xC0
  .Llevel_45_8006FE50:
    /* 33FA3EC 8006FE50 02004010 */  beqz       $v0, .Llevel_45_8006FE5C
    /* 33FA3F0 8006FE54 00000000 */   nop
    /* 33FA3F4 8006FE58 40FF0324 */  addiu      $v1, $zero, -0xC0
  .Llevel_45_8006FE5C:
    /* 33FA3F8 8006FE5C 02006104 */  bgez       $v1, .Llevel_45_8006FE68
    /* 33FA3FC 8006FE60 21106000 */   addu      $v0, $v1, $zero
    /* 33FA400 8006FE64 23100200 */  negu       $v0, $v0
  .Llevel_45_8006FE68:
    /* 33FA404 8006FE68 09004228 */  slti       $v0, $v0, 0x9
    /* 33FA408 8006FE6C 03004014 */  bnez       $v0, .Llevel_45_8006FE7C
    /* 33FA40C 8006FE70 00000000 */   nop
    /* 33FA410 8006FE74 A0BF0108 */  j          .Llevel_45_8006FE80
    /* 33FA414 8006FE78 64FF03AE */   sw        $v1, -0x9C($s0)
  .Llevel_45_8006FE7C:
    /* 33FA418 8006FE7C 64FF00AE */  sw         $zero, -0x9C($s0)
  .Llevel_45_8006FE80:
    /* 33FA41C 8006FE80 0780023C */  lui        $v0, %hi(D_8006A054)
    /* 33FA420 8006FE84 54A0428C */  lw         $v0, %lo(D_8006A054)($v0)
    /* 33FA424 8006FE88 00000000 */  nop
    /* 33FA428 8006FE8C 23100200 */  negu       $v0, $v0
    /* 33FA42C 8006FE90 83100200 */  sra        $v0, $v0, 2
    /* 33FA430 8006FE94 0680013C */  lui        $at, %hi(D_80067F24)
    /* 33FA434 8006FE98 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
    /* 33FA438 8006FE9C 087C000C */  jal        func_8001F020
    /* 33FA43C 8006FEA0 C0000424 */   addiu     $a0, $zero, 0xC0
    /* 33FA440 8006FEA4 2F7C000C */  jal        func_8001F0BC
    /* 33FA444 8006FEA8 00000000 */   nop
  .Llevel_45_8006FEAC:
    /* 33FA448 8006FEAC 0680103C */  lui        $s0, %hi(D_80067EE4)
    /* 33FA44C 8006FEB0 E47E1026 */  addiu      $s0, $s0, %lo(D_80067EE4)
    /* 33FA450 8006FEB4 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 33FA454 8006FEB8 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 33FA458 8006FEBC 6C6F000C */  jal        func_8001BDB0
    /* 33FA45C 8006FEC0 21200002 */   addu      $a0, $s0, $zero
    /* 33FA460 8006FEC4 80000426 */  addiu      $a0, $s0, 0x80
    /* 33FA464 8006FEC8 80101100 */  sll        $v0, $s1, 2
    /* 33FA468 8006FECC 21105100 */  addu       $v0, $v0, $s1
    /* 33FA46C 8006FED0 80880200 */  sll        $s1, $v0, 2
    /* 33FA470 8006FED4 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 33FA474 8006FED8 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 33FA478 8006FEDC 21282502 */  addu       $a1, $s1, $a1
    /* 33FA47C 8006FEE0 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 33FA480 8006FEE4 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 33FA484 8006FEE8 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 33FA488 8006FEEC F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 33FA48C 8006FEF0 337B000C */  jal        func_8001ECCC
    /* 33FA490 8006FEF4 21300000 */   addu      $a2, $zero, $zero
    /* 33FA494 8006FEF8 8000028E */  lw         $v0, 0x80($s0)
    /* 33FA498 8006FEFC 00000000 */  nop
    /* 33FA49C 8006FF00 00014228 */  slti       $v0, $v0, 0x100
    /* 33FA4A0 8006FF04 29004010 */  beqz       $v0, .Llevel_45_8006FFAC
    /* 33FA4A4 8006FF08 00010224 */   addiu     $v0, $zero, 0x100
    /* 33FA4A8 8006FF0C EBBF0108 */  j          .Llevel_45_8006FFAC
    /* 33FA4AC 8006FF10 800002AE */   sw        $v0, 0x80($s0)
  .Llevel_45_8006FF14:
    /* 33FA4B0 8006FF14 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 33FA4B4 8006FF18 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 33FA4B8 8006FF1C 00000000 */  nop
    /* 33FA4BC 8006FF20 0B004014 */  bnez       $v0, .Llevel_45_8006FF50
    /* 33FA4C0 8006FF24 00000000 */   nop
    /* 33FA4C4 8006FF28 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 33FA4C8 8006FF2C F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 33FA4CC 8006FF30 0680053C */  lui        $a1, %hi(D_800616DC)
    /* 33FA4D0 8006FF34 DC16A524 */  addiu      $a1, $a1, %lo(D_800616DC)
    /* 33FA4D4 8006FF38 337B000C */  jal        func_8001ECCC
    /* 33FA4D8 8006FF3C 58FF0426 */   addiu     $a0, $s0, -0xA8
    /* 33FA4DC 8006FF40 087C000C */  jal        func_8001F020
    /* 33FA4E0 8006FF44 C0000424 */   addiu     $a0, $zero, 0xC0
    /* 33FA4E4 8006FF48 2F7C000C */  jal        func_8001F0BC
    /* 33FA4E8 8006FF4C 00000000 */   nop
  .Llevel_45_8006FF50:
    /* 33FA4EC 8006FF50 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 33FA4F0 8006FF54 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 33FA4F4 8006FF58 6C6F000C */  jal        func_8001BDB0
    /* 33FA4F8 8006FF5C 28FF0426 */   addiu     $a0, $s0, -0xD8
    /* 33FA4FC 8006FF60 A8FF0426 */  addiu      $a0, $s0, -0x58
    /* 33FA500 8006FF64 80101100 */  sll        $v0, $s1, 2
    /* 33FA504 8006FF68 21105100 */  addu       $v0, $v0, $s1
    /* 33FA508 8006FF6C 80880200 */  sll        $s1, $v0, 2
    /* 33FA50C 8006FF70 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 33FA510 8006FF74 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 33FA514 8006FF78 21282502 */  addu       $a1, $s1, $a1
    /* 33FA518 8006FF7C 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 33FA51C 8006FF80 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 33FA520 8006FF84 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 33FA524 8006FF88 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 33FA528 8006FF8C 337B000C */  jal        func_8001ECCC
    /* 33FA52C 8006FF90 21300000 */   addu      $a2, $zero, $zero
    /* 33FA530 8006FF94 A8FF028E */  lw         $v0, -0x58($s0)
    /* 33FA534 8006FF98 00000000 */  nop
    /* 33FA538 8006FF9C 00014228 */  slti       $v0, $v0, 0x100
    /* 33FA53C 8006FFA0 02004010 */  beqz       $v0, .Llevel_45_8006FFAC
    /* 33FA540 8006FFA4 00010224 */   addiu     $v0, $zero, 0x100
    /* 33FA544 8006FFA8 A8FF02AE */  sw         $v0, -0x58($s0)
  .Llevel_45_8006FFAC:
    /* 33FA548 8006FFAC 0680023C */  lui        $v0, %hi(D_80067F68)
    /* 33FA54C 8006FFB0 687F428C */  lw         $v0, %lo(D_80067F68)($v0)
    /* 33FA550 8006FFB4 00000000 */  nop
    /* 33FA554 8006FFB8 60004228 */  slti       $v0, $v0, 0x60
    /* 33FA558 8006FFBC 03004010 */  beqz       $v0, .Llevel_45_8006FFCC
    /* 33FA55C 8006FFC0 60000224 */   addiu     $v0, $zero, 0x60
    /* 33FA560 8006FFC4 0680013C */  lui        $at, %hi(D_80067F68)
    /* 33FA564 8006FFC8 687F22AC */  sw         $v0, %lo(D_80067F68)($at)
  .Llevel_45_8006FFCC:
    /* 33FA568 8006FFCC 0680023C */  lui        $v0, %hi(D_80067F74)
    /* 33FA56C 8006FFD0 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* 33FA570 8006FFD4 00000000 */  nop
    /* 33FA574 8006FFD8 40004228 */  slti       $v0, $v0, 0x40
    /* 33FA578 8006FFDC 03004010 */  beqz       $v0, .Llevel_45_8006FFEC
    /* 33FA57C 8006FFE0 40000224 */   addiu     $v0, $zero, 0x40
    /* 33FA580 8006FFE4 0680013C */  lui        $at, %hi(D_80067F74)
    /* 33FA584 8006FFE8 747F22AC */  sw         $v0, %lo(D_80067F74)($at)
  .Llevel_45_8006FFEC:
    /* 33FA588 8006FFEC 0680043C */  lui        $a0, %hi(D_80067F78)
    /* 33FA58C 8006FFF0 787F8424 */  addiu      $a0, $a0, %lo(D_80067F78)
    /* 33FA590 8006FFF4 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 33FA594 8006FFF8 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 33FA598 8006FFFC 21282502 */  addu       $a1, $s1, $a1
    /* 33FA59C 80070000 337B000C */  jal        func_8001ECCC
    /* 33FA5A0 80070004 21300000 */   addu      $a2, $zero, $zero
    /* 33FA5A4 80070008 0680043C */  lui        $a0, %hi(D_80067F8C)
    /* 33FA5A8 8007000C 8C7F8424 */  addiu      $a0, $a0, %lo(D_80067F8C)
    /* 33FA5AC 80070010 0680053C */  lui        $a1, %hi(D_80061858)
    /* 33FA5B0 80070014 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 33FA5B4 80070018 337B000C */  jal        func_8001ECCC
    /* 33FA5B8 8007001C 21300000 */   addu      $a2, $zero, $zero
    /* 33FA5BC 80070020 0680043C */  lui        $a0, %hi(D_80067FA0)
    /* 33FA5C0 80070024 A07F8424 */  addiu      $a0, $a0, %lo(D_80067FA0)
    /* 33FA5C4 80070028 0680053C */  lui        $a1, %hi(D_80061844)
    /* 33FA5C8 8007002C 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 33FA5CC 80070030 337B000C */  jal        func_8001ECCC
    /* 33FA5D0 80070034 21300000 */   addu      $a2, $zero, $zero
  .Llevel_45_80070038:
    /* 33FA5D4 80070038 1800BF8F */  lw         $ra, 0x18($sp)
    /* 33FA5D8 8007003C 1400B18F */  lw         $s1, 0x14($sp)
    /* 33FA5DC 80070040 1000B08F */  lw         $s0, 0x10($sp)
    /* 33FA5E0 80070044 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 33FA5E4 80070048 0800E003 */  jr         $ra
    /* 33FA5E8 8007004C 00000000 */   nop
endlabel func_level_45_8006FD90
