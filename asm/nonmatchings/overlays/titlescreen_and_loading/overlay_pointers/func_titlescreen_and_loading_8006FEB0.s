.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8006FEB0, 0x168

glabel func_titlescreen_and_loading_8006FEB0
    /* 25C4C 8006FEB0 0780023C */  lui        $v0, %hi(D_80068C94)
    /* 25C50 8006FEB4 948C428C */  lw         $v0, %lo(D_80068C94)($v0)
    /* 25C54 8006FEB8 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 25C58 8006FEBC 0000428C */  lw         $v0, 0x0($v0)
    /* 25C5C 8006FEC0 00000000 */  nop
    /* 25C60 8006FEC4 18004018 */  blez       $v0, .Ltitlescreen_and_loading_8006FF28
    /* 25C64 8006FEC8 21380000 */   addu      $a3, $zero, $zero
    /* 25C68 8006FECC 0780093C */  lui        $t1, %hi(D_8006B2AC)
    /* 25C6C 8006FED0 ACB22925 */  addiu      $t1, $t1, %lo(D_8006B2AC)
    /* 25C70 8006FED4 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 25C74 8006FED8 0680063C */  lui        $a2, %hi(D_80066F24)
    /* 25C78 8006FEDC 246FC68C */  lw         $a2, %lo(D_80066F24)($a2)
  .Ltitlescreen_and_loading_8006FEE0:
    /* 25C7C 8006FEE0 00000000 */  nop
    /* 25C80 8006FEE4 0000C38C */  lw         $v1, 0x0($a2)
    /* 25C84 8006FEE8 0000228D */  lw         $v0, 0x0($t1)
    /* 25C88 8006FEEC 00000000 */  nop
  alabel D_titlescreen_and_loading_8006FEF0
    /* 25C8C 8006FEF0 2B106200 */  sltu       $v0, $v1, $v0
    /* 25C90 8006FEF4 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_8006FF04
    /* 25C94 8006FEF8 00000000 */   nop
    /* 25C98 8006FEFC 02006814 */  bne        $v1, $t0, .Ltitlescreen_and_loading_8006FF08
    /* 25C9C 8006FF00 00000000 */   nop
  .Ltitlescreen_and_loading_8006FF04:
    /* 25CA0 8006FF04 0000C0AC */  sw         $zero, 0x0($a2)
  .Ltitlescreen_and_loading_8006FF08:
    /* 25CA4 8006FF08 0780023C */  lui        $v0, %hi(D_80068C94)
    /* 25CA8 8006FF0C 948C428C */  lw         $v0, %lo(D_80068C94)($v0)
    /* 25CAC 8006FF10 00000000 */  nop
  alabel D_titlescreen_and_loading_8006FF14
    /* 25CB0 8006FF14 0000428C */  lw         $v0, 0x0($v0)
  alabel D_titlescreen_and_loading_8006FF18
    /* 25CB4 8006FF18 0100E724 */  addiu      $a3, $a3, 0x1
    /* 25CB8 8006FF1C 2A10E200 */  slt        $v0, $a3, $v0
    /* 25CBC 8006FF20 EFFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_8006FEE0
    /* 25CC0 8006FF24 0400C624 */   addiu     $a2, $a2, 0x4
  .Ltitlescreen_and_loading_8006FF28:
    /* 25CC4 8006FF28 0000828C */  lw         $v0, 0x0($a0)
  alabel D_titlescreen_and_loading_8006FF2C
    /* 25CC8 8006FF2C 00000000 */  nop
  alabel D_titlescreen_and_loading_8006FF30
    /* 25CCC 8006FF30 36004004 */  bltz       $v0, .Ltitlescreen_and_loading_8007000C
    /* 25CD0 8006FF34 04008424 */   addiu     $a0, $a0, 0x4
  alabel D_titlescreen_and_loading_8006FF38
    /* 25CD4 8006FF38 0680093C */  lui        $t1, %hi(D_80066F24)
    /* 25CD8 8006FF3C 246F298D */  lw         $t1, %lo(D_80066F24)($t1)
    /* 25CDC 8006FF40 0680073C */  lui        $a3, %hi(D_80066EDC)
    /* 25CE0 8006FF44 DC6EE78C */  lw         $a3, %lo(D_80066EDC)($a3)
  .Ltitlescreen_and_loading_8006FF48:
    /* 25CE4 8006FF48 0000888C */  lw         $t0, 0x0($a0)
    /* 25CE8 8006FF4C 04008424 */  addiu      $a0, $a0, 0x4
    /* 25CEC 8006FF50 80100200 */  sll        $v0, $v0, 2
    /* 25CF0 8006FF54 21304900 */  addu       $a2, $v0, $t1
  alabel D_titlescreen_and_loading_8006FF58
    /* 25CF4 8006FF58 0000C4AC */  sw         $a0, 0x0($a2)
    /* 25CF8 8006FF5C 00008390 */  lbu        $v1, 0x0($a0)
    /* 25CFC 8006FF60 00000000 */  nop
    /* 25D00 8006FF64 80100300 */  sll        $v0, $v1, 2
    /* 25D04 8006FF68 21104300 */  addu       $v0, $v0, $v1
    /* 25D08 8006FF6C 80100200 */  sll        $v0, $v0, 2
    /* 25D0C 8006FF70 14004224 */  addiu      $v0, $v0, 0x14
    /* 25D10 8006FF74 21108200 */  addu       $v0, $a0, $v0
    /* 25D14 8006FF78 040082AC */  sw         $v0, 0x4($a0)
    /* 25D18 8006FF7C 0000C38C */  lw         $v1, 0x0($a2)
    /* 25D1C 8006FF80 00000000 */  nop
    /* 25D20 8006FF84 08006224 */  addiu      $v0, $v1, 0x8
    /* 25D24 8006FF88 2B104500 */  sltu       $v0, $v0, $a1
    /* 25D28 8006FF8C 08004010 */  beqz       $v0, .Ltitlescreen_and_loading_8006FFB0
    /* 25D2C 8006FF90 0C006224 */   addiu     $v0, $v1, 0xC
    /* 25D30 8006FF94 0800628C */  lw         $v0, 0x8($v1)
  alabel D_titlescreen_and_loading_8006FF98
    /* 25D34 8006FF98 00000000 */  nop
    /* 25D38 8006FF9C 2110E200 */  addu       $v0, $a3, $v0
    /* 25D3C 8006FFA0 080062AC */  sw         $v0, 0x8($v1)
    /* 25D40 8006FFA4 0000C38C */  lw         $v1, 0x0($a2)
  alabel D_titlescreen_and_loading_8006FFA8
    /* 25D44 8006FFA8 00000000 */  nop
    /* 25D48 8006FFAC 0C006224 */  addiu      $v0, $v1, 0xC
  .Ltitlescreen_and_loading_8006FFB0:
    /* 25D4C 8006FFB0 2B104500 */  sltu       $v0, $v0, $a1
    /* 25D50 8006FFB4 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_8006FFCC
    /* 25D54 8006FFB8 00000000 */   nop
    /* 25D58 8006FFBC 0C00628C */  lw         $v0, 0xC($v1)
    /* 25D5C 8006FFC0 00000000 */  nop
    /* 25D60 8006FFC4 2110E200 */  addu       $v0, $a3, $v0
    /* 25D64 8006FFC8 0C0062AC */  sw         $v0, 0xC($v1)
  .Ltitlescreen_and_loading_8006FFCC:
    /* 25D68 8006FFCC 0000C68C */  lw         $a2, 0x0($a2)
    /* 25D6C 8006FFD0 00000000 */  nop
    /* 25D70 8006FFD4 1000C224 */  addiu      $v0, $a2, 0x10
    /* 25D74 8006FFD8 2B104500 */  sltu       $v0, $v0, $a1
    /* 25D78 8006FFDC 06004010 */  beqz       $v0, .Ltitlescreen_and_loading_8006FFF8
    /* 25D7C 8006FFE0 00000000 */   nop
    /* 25D80 8006FFE4 0400C28C */  lw         $v0, 0x4($a2)
    /* 25D84 8006FFE8 1000C38C */  lw         $v1, 0x10($a2)
    /* 25D88 8006FFEC 00000000 */  nop
    /* 25D8C 8006FFF0 21104300 */  addu       $v0, $v0, $v1
    /* 25D90 8006FFF4 1000C2AC */  sw         $v0, 0x10($a2)
  .Ltitlescreen_and_loading_8006FFF8:
    /* 25D94 8006FFF8 21208800 */  addu       $a0, $a0, $t0
    /* 25D98 8006FFFC 0000828C */  lw         $v0, 0x0($a0)
    /* 25D9C 80070000 00000000 */  nop
    /* 25DA0 80070004 D0FF4104 */  bgez       $v0, .Ltitlescreen_and_loading_8006FF48
    /* 25DA4 80070008 04008424 */   addiu     $a0, $a0, 0x4
  .Ltitlescreen_and_loading_8007000C:
    /* 25DA8 8007000C 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 25DAC 80070010 0800E003 */  jr         $ra
    /* 25DB0 80070014 00000000 */   nop
endlabel func_titlescreen_and_loading_8006FEB0
