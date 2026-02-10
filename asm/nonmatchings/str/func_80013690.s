.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80013690, 0x10C

glabel func_80013690
    /* 3E90 80013690 0780023C */  lui        $v0, %hi(D_800682F4)
    /* 3E94 80013694 F482428C */  lw         $v0, %lo(D_800682F4)($v0)
    /* 3E98 80013698 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3E9C 8001369C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3EA0 800136A0 08004010 */  beqz       $v0, .L800136C4
    /* 3EA4 800136A4 1800B0AF */   sw        $s0, 0x18($sp)
    /* 3EA8 800136A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 3EAC 800136AC 0780013C */  lui        $at, %hi(D_80068304)
    /* 3EB0 800136B0 048322AC */  sw         $v0, %lo(D_80068304)($at)
    /* 3EB4 800136B4 2F4B000C */  jal        func_80012CBC
    /* 3EB8 800136B8 00000000 */   nop
    /* 3EBC 800136BC E24D0008 */  j          .L80013788
    /* 3EC0 800136C0 01000224 */   addiu     $v0, $zero, 0x1
  .L800136C4:
    /* 3EC4 800136C4 0780023C */  lui        $v0, %hi(D_800682E8)
    /* 3EC8 800136C8 E8824224 */  addiu      $v0, $v0, %lo(D_800682E8)
    /* 3ECC 800136CC 0000428C */  lw         $v0, 0x0($v0)
    /* 3ED0 800136D0 00000000 */  nop
    /* 3ED4 800136D4 28004010 */  beqz       $v0, .L80013778
    /* 3ED8 800136D8 01000424 */   addiu     $a0, $zero, 0x1
    /* 3EDC 800136DC 0780023C */  lui        $v0, %hi(D_800682EC)
    /* 3EE0 800136E0 EC82428C */  lw         $v0, %lo(D_800682EC)($v0)
    /* 3EE4 800136E4 0780033C */  lui        $v1, %hi(D_800682F0)
    /* 3EE8 800136E8 F082638C */  lw         $v1, %lo(D_800682F0)($v1)
    /* 3EEC 800136EC 00000000 */  nop
    /* 3EF0 800136F0 2A104300 */  slt        $v0, $v0, $v1
    /* 3EF4 800136F4 24004014 */  bnez       $v0, .L80013788
    /* 3EF8 800136F8 01000224 */   addiu     $v0, $zero, 0x1
    /* 3EFC 800136FC 80000224 */  addiu      $v0, $zero, 0x80
    /* 3F00 80013700 AE60010C */  jal        func_800582B8
    /* 3F04 80013704 1000A2A3 */   sb        $v0, 0x10($sp)
    /* 3F08 80013708 0E000424 */  addiu      $a0, $zero, 0xE
    /* 3F0C 8001370C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3F10 80013710 1662010C */  jal        func_80058858
    /* 3F14 80013714 21300000 */   addu      $a2, $zero, $zero
    /* 3F18 80013718 0180043C */  lui        $a0, %hi(func_8001379C)
    /* 3F1C 8001371C 9C378424 */  addiu      $a0, $a0, %lo(func_8001379C)
    /* 3F20 80013720 A960010C */  jal        func_800582A4
    /* 3F24 80013724 02001024 */   addiu     $s0, $zero, 0x2
    /* 3F28 80013728 01000424 */  addiu      $a0, $zero, 0x1
  .L8001372C:
    /* 3F2C 8001372C 0462010C */  jal        func_80058810
    /* 3F30 80013730 21280000 */   addu      $a1, $zero, $zero
    /* 3F34 80013734 FDFF5014 */  bne        $v0, $s0, .L8001372C
    /* 3F38 80013738 01000424 */   addiu     $a0, $zero, 0x1
    /* 3F3C 8001373C 02000424 */  addiu      $a0, $zero, 0x2
    /* 3F40 80013740 0780053C */  lui        $a1, %hi(D_800682E0)
    /* 3F44 80013744 E082A524 */  addiu      $a1, $a1, %lo(D_800682E0)
    /* 3F48 80013748 1662010C */  jal        func_80058858
    /* 3F4C 8001374C 21300000 */   addu      $a2, $zero, $zero
    /* 3F50 80013750 0780043C */  lui        $a0, %hi(D_800682DC)
    /* 3F54 80013754 DC82848C */  lw         $a0, %lo(D_800682DC)($a0)
    /* 3F58 80013758 0780053C */  lui        $a1, %hi(D_800682E4)
    /* 3F5C 8001375C E482A58C */  lw         $a1, %lo(D_800682E4)($a1)
    /* 3F60 80013760 0780013C */  lui        $at, %hi(D_800682EC)
    /* 3F64 80013764 EC8220AC */  sw         $zero, %lo(D_800682EC)($at)
    /* 3F68 80013768 4260010C */  jal        func_80058108
    /* 3F6C 8001376C 80000624 */   addiu     $a2, $zero, 0x80
    /* 3F70 80013770 E24D0008 */  j          .L80013788
    /* 3F74 80013774 01000224 */   addiu     $v0, $zero, 0x1
  .L80013778:
    /* 3F78 80013778 0462010C */  jal        func_80058810
    /* 3F7C 8001377C 21280000 */   addu      $a1, $zero, $zero
    /* 3F80 80013780 02004238 */  xori       $v0, $v0, 0x2
    /* 3F84 80013784 2B100200 */  sltu       $v0, $zero, $v0
  .L80013788:
    /* 3F88 80013788 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3F8C 8001378C 1800B08F */  lw         $s0, 0x18($sp)
    /* 3F90 80013790 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3F94 80013794 0800E003 */  jr         $ra
    /* 3F98 80013798 00000000 */   nop
endlabel func_80013690
