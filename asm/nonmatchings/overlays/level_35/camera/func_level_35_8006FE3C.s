.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_35_8006FE3C, 0xF4

glabel func_level_35_8006FE3C
    /* 29D53D8 8006FE3C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 29D53DC 8006FE40 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 29D53E0 8006FE44 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 29D53E4 8006FE48 03000224 */  addiu      $v0, $zero, 0x3
    /* 29D53E8 8006FE4C 34006214 */  bne        $v1, $v0, .Llevel_35_8006FF20
    /* 29D53EC 8006FE50 1000BFAF */   sw        $ra, 0x10($sp)
    /* 29D53F0 8006FE54 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 29D53F4 8006FE58 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 29D53F8 8006FE5C 00000000 */  nop
    /* 29D53FC 8006FE60 2D008014 */  bnez       $a0, .Llevel_35_8006FF18
    /* 29D5400 8006FE64 00000000 */   nop
    /* 29D5404 8006FE68 0780023C */  lui        $v0, %hi(D_800683A0)
    /* 29D5408 8006FE6C A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* 29D540C 8006FE70 00000000 */  nop
    /* 29D5410 8006FE74 10004230 */  andi       $v0, $v0, 0x10
    /* 29D5414 8006FE78 06004010 */  beqz       $v0, .Llevel_35_8006FE94
    /* 29D5418 8006FE7C 00000000 */   nop
    /* 29D541C 8006FE80 0780023C */  lui        $v0, %hi(D_8006A1B1)
    /* 29D5420 8006FE84 B1A14290 */  lbu        $v0, %lo(D_8006A1B1)($v0)
    /* 29D5424 8006FE88 00000000 */  nop
    /* 29D5428 8006FE8C 22004014 */  bnez       $v0, .Llevel_35_8006FF18
    /* 29D542C 8006FE90 07000424 */   addiu     $a0, $zero, 0x7
  .Llevel_35_8006FE94:
    /* 29D5430 8006FE94 0780023C */  lui        $v0, %hi(D_800683A4)
    /* 29D5434 8006FE98 A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* 29D5438 8006FE9C 00000000 */  nop
    /* 29D543C 8006FEA0 0F004230 */  andi       $v0, $v0, 0xF
    /* 29D5440 8006FEA4 0E004010 */  beqz       $v0, .Llevel_35_8006FEE0
    /* 29D5444 8006FEA8 00000000 */   nop
    /* 29D5448 8006FEAC 0780033C */  lui        $v1, %hi(D_800683A0)
    /* 29D544C 8006FEB0 A083638C */  lw         $v1, %lo(D_800683A0)($v1)
    /* 29D5450 8006FEB4 00000000 */  nop
    /* 29D5454 8006FEB8 0A006230 */  andi       $v0, $v1, 0xA
    /* 29D5458 8006FEBC 08004010 */  beqz       $v0, .Llevel_35_8006FEE0
    /* 29D545C 8006FEC0 05006230 */   andi      $v0, $v1, 0x5
    /* 29D5460 8006FEC4 06004010 */  beqz       $v0, .Llevel_35_8006FEE0
    /* 29D5464 8006FEC8 00000000 */   nop
    /* 29D5468 8006FECC 0780023C */  lui        $v0, %hi(D_8006A230)
    /* 29D546C 8006FED0 30A2428C */  lw         $v0, %lo(D_8006A230)($v0)
    /* 29D5470 8006FED4 00000000 */  nop
    /* 29D5474 8006FED8 0F004010 */  beqz       $v0, .Llevel_35_8006FF18
    /* 29D5478 8006FEDC 08000424 */   addiu     $a0, $zero, 0x8
  .Llevel_35_8006FEE0:
    /* 29D547C 8006FEE0 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 29D5480 8006FEE4 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 29D5484 8006FEE8 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 29D5488 8006FEEC D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 29D548C 8006FEF0 80100200 */  sll        $v0, $v0, 2
    /* 29D5490 8006FEF4 0680013C */  lui        $at, %hi(D_80061468)
    /* 29D5494 8006FEF8 21082200 */  addu       $at, $at, $v0
    /* 29D5498 8006FEFC 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 29D549C 8006FF00 00000000 */  nop
    /* 29D54A0 8006FF04 06006410 */  beq        $v1, $a0, .Llevel_35_8006FF20
    /* 29D54A4 8006FF08 00000000 */   nop
    /* 29D54A8 8006FF0C 02008014 */  bnez       $a0, .Llevel_35_8006FF18
    /* 29D54AC 8006FF10 00000000 */   nop
    /* 29D54B0 8006FF14 06000424 */  addiu      $a0, $zero, 0x6
  .Llevel_35_8006FF18:
    /* 29D54B4 8006FF18 B685000C */  jal        func_800216D8
    /* 29D54B8 8006FF1C 00000000 */   nop
  .Llevel_35_8006FF20:
    /* 29D54BC 8006FF20 1000BF8F */  lw         $ra, 0x10($sp)
    /* 29D54C0 8006FF24 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 29D54C4 8006FF28 0800E003 */  jr         $ra
    /* 29D54C8 8006FF2C 00000000 */   nop
endlabel func_level_35_8006FE3C
