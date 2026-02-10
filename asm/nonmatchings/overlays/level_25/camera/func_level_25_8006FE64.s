.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_25_8006FE64, 0xF4

glabel func_level_25_8006FE64
    /* 1BC8400 8006FE64 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1BC8404 8006FE68 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 1BC8408 8006FE6C D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 1BC840C 8006FE70 03000224 */  addiu      $v0, $zero, 0x3
    /* 1BC8410 8006FE74 34006214 */  bne        $v1, $v0, .Llevel_25_8006FF48
    /* 1BC8414 8006FE78 1000BFAF */   sw        $ra, 0x10($sp)
    /* 1BC8418 8006FE7C 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 1BC841C 8006FE80 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 1BC8420 8006FE84 00000000 */  nop
    /* 1BC8424 8006FE88 2D008014 */  bnez       $a0, .Llevel_25_8006FF40
    /* 1BC8428 8006FE8C 00000000 */   nop
    /* 1BC842C 8006FE90 0780023C */  lui        $v0, %hi(D_800683A0)
    /* 1BC8430 8006FE94 A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* 1BC8434 8006FE98 00000000 */  nop
    /* 1BC8438 8006FE9C 10004230 */  andi       $v0, $v0, 0x10
    /* 1BC843C 8006FEA0 06004010 */  beqz       $v0, .Llevel_25_8006FEBC
    /* 1BC8440 8006FEA4 00000000 */   nop
    /* 1BC8444 8006FEA8 0780023C */  lui        $v0, %hi(D_8006A1B1)
    /* 1BC8448 8006FEAC B1A14290 */  lbu        $v0, %lo(D_8006A1B1)($v0)
    /* 1BC844C 8006FEB0 00000000 */  nop
    /* 1BC8450 8006FEB4 22004014 */  bnez       $v0, .Llevel_25_8006FF40
    /* 1BC8454 8006FEB8 07000424 */   addiu     $a0, $zero, 0x7
  .Llevel_25_8006FEBC:
    /* 1BC8458 8006FEBC 0780023C */  lui        $v0, %hi(D_800683A4)
    /* 1BC845C 8006FEC0 A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* 1BC8460 8006FEC4 00000000 */  nop
    /* 1BC8464 8006FEC8 0F004230 */  andi       $v0, $v0, 0xF
    /* 1BC8468 8006FECC 0E004010 */  beqz       $v0, .Llevel_25_8006FF08
    /* 1BC846C 8006FED0 00000000 */   nop
    /* 1BC8470 8006FED4 0780033C */  lui        $v1, %hi(D_800683A0)
    /* 1BC8474 8006FED8 A083638C */  lw         $v1, %lo(D_800683A0)($v1)
    /* 1BC8478 8006FEDC 00000000 */  nop
    /* 1BC847C 8006FEE0 0A006230 */  andi       $v0, $v1, 0xA
    /* 1BC8480 8006FEE4 08004010 */  beqz       $v0, .Llevel_25_8006FF08
    /* 1BC8484 8006FEE8 05006230 */   andi      $v0, $v1, 0x5
    /* 1BC8488 8006FEEC 06004010 */  beqz       $v0, .Llevel_25_8006FF08
    /* 1BC848C 8006FEF0 00000000 */   nop
    /* 1BC8490 8006FEF4 0780023C */  lui        $v0, %hi(D_8006A230)
    /* 1BC8494 8006FEF8 30A2428C */  lw         $v0, %lo(D_8006A230)($v0)
    /* 1BC8498 8006FEFC 00000000 */  nop
    /* 1BC849C 8006FF00 0F004010 */  beqz       $v0, .Llevel_25_8006FF40
    /* 1BC84A0 8006FF04 08000424 */   addiu     $a0, $zero, 0x8
  .Llevel_25_8006FF08:
    /* 1BC84A4 8006FF08 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 1BC84A8 8006FF0C 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 1BC84AC 8006FF10 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 1BC84B0 8006FF14 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 1BC84B4 8006FF18 80100200 */  sll        $v0, $v0, 2
    /* 1BC84B8 8006FF1C 0680013C */  lui        $at, %hi(D_80061468)
    /* 1BC84BC 8006FF20 21082200 */  addu       $at, $at, $v0
    /* 1BC84C0 8006FF24 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 1BC84C4 8006FF28 00000000 */  nop
    /* 1BC84C8 8006FF2C 06006410 */  beq        $v1, $a0, .Llevel_25_8006FF48
    /* 1BC84CC 8006FF30 00000000 */   nop
    /* 1BC84D0 8006FF34 02008014 */  bnez       $a0, .Llevel_25_8006FF40
    /* 1BC84D4 8006FF38 00000000 */   nop
    /* 1BC84D8 8006FF3C 06000424 */  addiu      $a0, $zero, 0x6
  .Llevel_25_8006FF40:
    /* 1BC84DC 8006FF40 B685000C */  jal        func_800216D8
    /* 1BC84E0 8006FF44 00000000 */   nop
  .Llevel_25_8006FF48:
    /* 1BC84E4 8006FF48 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1BC84E8 8006FF4C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1BC84EC 8006FF50 0800E003 */  jr         $ra
    /* 1BC84F0 8006FF54 00000000 */   nop
endlabel func_level_25_8006FE64
