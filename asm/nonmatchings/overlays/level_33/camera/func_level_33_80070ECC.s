.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_33_80070ECC, 0x16C

glabel func_level_33_80070ECC
    /* 2588C68 80070ECC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2588C6C 80070ED0 0E000224 */  addiu      $v0, $zero, 0xE
    /* 2588C70 80070ED4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2588C74 80070ED8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2588C78 80070EDC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2588C7C 80070EE0 1A008210 */  beq        $a0, $v0, .Llevel_33_80070F4C
    /* 2588C80 80070EE4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2588C84 80070EE8 0F008228 */  slti       $v0, $a0, 0xF
    /* 2588C88 80070EEC 05004010 */  beqz       $v0, .Llevel_33_80070F04
    /* 2588C8C 80070EF0 04000224 */   addiu     $v0, $zero, 0x4
    /* 2588C90 80070EF4 06008210 */  beq        $a0, $v0, .Llevel_33_80070F10
    /* 2588C94 80070EF8 00000000 */   nop
    /* 2588C98 80070EFC 07C40108 */  j          .Llevel_33_8007101C
    /* 2588C9C 80070F00 00000000 */   nop
  .Llevel_33_80070F04:
    /* 2588CA0 80070F04 17000224 */  addiu      $v0, $zero, 0x17
    /* 2588CA4 80070F08 44008214 */  bne        $a0, $v0, .Llevel_33_8007101C
    /* 2588CA8 80070F0C 00000000 */   nop
  .Llevel_33_80070F10:
    /* 2588CAC 80070F10 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* 2588CB0 80070F14 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* 2588CB4 80070F18 10002426 */  addiu      $a0, $s1, 0x10
    /* 2588CB8 80070F1C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 2588CBC 80070F20 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 2588CC0 80070F24 01000224 */  addiu      $v0, $zero, 0x1
    /* 2588CC4 80070F28 000020AE */  sw         $zero, 0x0($s1)
    /* 2588CC8 80070F2C 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2588CCC 80070F30 C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* 2588CD0 80070F34 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2588CD4 80070F38 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* 2588CD8 80070F3C 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2588CDC 80070F40 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 2588CE0 80070F44 EEC30108 */  j          .Llevel_33_80070FB8
    /* 2588CE4 80070F48 21284002 */   addu      $a1, $s2, $zero
  .Llevel_33_80070F4C:
    /* 2588CE8 80070F4C 0680023C */  lui        $v0, %hi(D_80067FF0)
    /* 2588CEC 80070F50 F07F428C */  lw         $v0, %lo(D_80067FF0)($v0)
    /* 2588CF0 80070F54 0680013C */  lui        $at, %hi(D_80067ED4)
    /* 2588CF4 80070F58 D47E20AC */  sw         $zero, %lo(D_80067ED4)($at)
    /* 2588CF8 80070F5C 36004384 */  lh         $v1, 0x36($v0)
    /* 2588CFC 80070F60 73010224 */  addiu      $v0, $zero, 0x173
    /* 2588D00 80070F64 03006210 */  beq        $v1, $v0, .Llevel_33_80070F74
    /* 2588D04 80070F68 93020224 */   addiu     $v0, $zero, 0x293
    /* 2588D08 80070F6C 06006214 */  bne        $v1, $v0, .Llevel_33_80070F88
    /* 2588D0C 80070F70 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_33_80070F74:
    /* 2588D10 80070F74 01000224 */  addiu      $v0, $zero, 0x1
    /* 2588D14 80070F78 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2588D18 80070F7C C47F22A0 */  sb         $v0, %lo(D_80067FC4)($at)
    /* 2588D1C 80070F80 E4C30108 */  j          .Llevel_33_80070F90
    /* 2588D20 80070F84 00000000 */   nop
  .Llevel_33_80070F88:
    /* 2588D24 80070F88 0680013C */  lui        $at, %hi(D_80067FC4)
    /* 2588D28 80070F8C C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
  .Llevel_33_80070F90:
    /* 2588D2C 80070F90 0680013C */  lui        $at, %hi(D_80067FC5)
    /* 2588D30 80070F94 C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
    /* 2588D34 80070F98 0680113C */  lui        $s1, %hi(D_80067FC6)
    /* 2588D38 80070F9C C67F3126 */  addiu      $s1, $s1, %lo(D_80067FC6)
    /* 2588D3C 80070FA0 1EFF2426 */  addiu      $a0, $s1, -0xE2
    /* 2588D40 80070FA4 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 2588D44 80070FA8 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 2588D48 80070FAC 21284002 */  addu       $a1, $s2, $zero
    /* 2588D4C 80070FB0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2588D50 80070FB4 000022A2 */  sb         $v0, 0x0($s1)
  .Llevel_33_80070FB8:
    /* 2588D54 80070FB8 0680013C */  lui        $at, %hi(D_80067FC9)
    /* 2588D58 80070FBC C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* 2588D5C 80070FC0 0680013C */  lui        $at, %hi(D_80067EE0)
    /* 2588D60 80070FC4 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* 2588D64 80070FC8 6C6F000C */  jal        func_8001BDB0
    /* 2588D68 80070FCC 00000000 */   nop
    /* 2588D6C 80070FD0 0680103C */  lui        $s0, %hi(D_80067F00)
    /* 2588D70 80070FD4 007F1026 */  addiu      $s0, $s0, %lo(D_80067F00)
    /* 2588D74 80070FD8 21200002 */  addu       $a0, $s0, $zero
    /* 2588D78 80070FDC 0680053C */  lui        $a1, %hi(D_80067EAC)
    /* 2588D7C 80070FE0 AC7EA524 */  addiu      $a1, $a1, %lo(D_80067EAC)
    /* 2588D80 80070FE4 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 2588D84 80070FE8 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 2588D88 80070FEC 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2588D8C 80070FF0 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2588D90 80070FF4 867B000C */  jal        func_8001EE18
    /* 2588D94 80070FF8 21304002 */   addu      $a2, $s2, $zero
    /* 2588D98 80070FFC 21200002 */  addu       $a0, $s0, $zero
    /* 2588D9C 80071000 EA7B000C */  jal        func_8001EFA8
    /* 2588DA0 80071004 21280002 */   addu      $a1, $s0, $zero
    /* 2588DA4 80071008 0680043C */  lui        $a0, %hi(D_80067F28)
    /* 2588DA8 8007100C 287F8424 */  addiu      $a0, $a0, %lo(D_80067F28)
    /* 2588DAC 80071010 21280002 */  addu       $a1, $s0, $zero
    /* 2588DB0 80071014 337B000C */  jal        func_8001ECCC
    /* 2588DB4 80071018 21300000 */   addu      $a2, $zero, $zero
  .Llevel_33_8007101C:
    /* 2588DB8 8007101C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2588DBC 80071020 1800B28F */  lw         $s2, 0x18($sp)
    /* 2588DC0 80071024 1400B18F */  lw         $s1, 0x14($sp)
    /* 2588DC4 80071028 1000B08F */  lw         $s0, 0x10($sp)
    /* 2588DC8 8007102C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2588DCC 80071030 0800E003 */  jr         $ra
    /* 2588DD0 80071034 00000000 */   nop
endlabel func_level_33_80070ECC
