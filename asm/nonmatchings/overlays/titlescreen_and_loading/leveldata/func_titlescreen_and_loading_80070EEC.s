.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80070EEC, 0xCE8

glabel func_titlescreen_and_loading_80070EEC
    /* 26C88 80070EEC 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 26C8C 80070EF0 0780043C */  lui        $a0, %hi(D_800698F0)
    /* 26C90 80070EF4 F0988424 */  addiu      $a0, $a0, %lo(D_800698F0)
    /* 26C94 80070EF8 6000BFAF */  sw         $ra, 0x60($sp)
    /* 26C98 80070EFC 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 26C9C 80070F00 5800B4AF */  sw         $s4, 0x58($sp)
    /* 26CA0 80070F04 5400B3AF */  sw         $s3, 0x54($sp)
    /* 26CA4 80070F08 5000B2AF */  sw         $s2, 0x50($sp)
    /* 26CA8 80070F0C 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 26CAC 80070F10 4800B0AF */  sw         $s0, 0x48($sp)
    /* 26CB0 80070F14 0000838C */  lw         $v1, 0x0($a0)
    /* 26CB4 80070F18 01000224 */  addiu      $v0, $zero, 0x1
    /* 26CB8 80070F1C 11006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80070F64
    /* 26CBC 80070F20 00000000 */   nop
    /* 26CC0 80070F24 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 26CC4 80070F28 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 26CC8 80070F2C 00000000 */  nop
    /* 26CCC 80070F30 10004228 */  slti       $v0, $v0, 0x10
    /* 26CD0 80070F34 1D034010 */  beqz       $v0, .Ltitlescreen_and_loading_80071BAC
    /* 26CD4 80070F38 00000000 */   nop
    /* 26CD8 80070F3C 9B31010C */  jal        func_8004C66C
    /* 26CDC 80070F40 00000000 */   nop
    /* 26CE0 80070F44 21280000 */  addu       $a1, $zero, $zero
    /* 26CE4 80070F48 0680043C */  lui        $a0, %hi(D_80067034)
    /* 26CE8 80070F4C 3470848C */  lw         $a0, %lo(D_80067034)($a0)
    /* 26CEC 80070F50 000C0624 */  addiu      $a2, $zero, 0xC00
    /* 26CF0 80070F54 F96C000C */  jal        func_8001B3E4
    /* 26CF4 80070F58 00D08424 */   addiu     $a0, $a0, -0x3000
    /* 26CF8 80070F5C E1C60108 */  j          .Ltitlescreen_and_loading_80071B84
    /* 26CFC 80070F60 00000000 */   nop
  .Ltitlescreen_and_loading_80070F64:
    /* 26D00 80070F64 11036018 */  blez       $v1, .Ltitlescreen_and_loading_80071BAC
    /* 26D04 80070F68 04006228 */   slti      $v0, $v1, 0x4
    /* 26D08 80070F6C 0F034010 */  beqz       $v0, .Ltitlescreen_and_loading_80071BAC
    /* 26D0C 80070F70 0300023C */   lui       $v0, (0x36000 >> 16)
    /* 26D10 80070F74 0780033C */  lui        $v1, %hi(D_8006B29C)
    /* 26D14 80070F78 9CB2638C */  lw         $v1, %lo(D_8006B29C)($v1)
    /* 26D18 80070F7C 00604234 */  ori        $v0, $v0, (0x36000 & 0xFFFF)
    /* 26D1C 80070F80 21106200 */  addu       $v0, $v1, $v0
    /* 26D20 80070F84 0680013C */  lui        $at, %hi(D_80066F14)
    /* 26D24 80070F88 146F22AC */  sw         $v0, %lo(D_80066F14)($at)
    /* 26D28 80070F8C 0680013C */  lui        $at, %hi(D_80066FC8)
    /* 26D2C 80070F90 C86F22AC */  sw         $v0, %lo(D_80066FC8)($at)
    /* 26D30 80070F94 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 26D34 80070F98 0300013C */  lui        $at, (0x36048 >> 16)
    /* 26D38 80070F9C 21086100 */  addu       $at, $v1, $at
    /* 26D3C 80070FA0 486022A0 */  sb         $v0, (0x36048 & 0xFFFF)($at)
  alabel D_titlescreen_and_loading_80070FA4
    /* 26D40 80070FA4 0000838C */  lw         $v1, 0x0($a0)
    /* 26D44 80070FA8 02000224 */  addiu      $v0, $zero, 0x2
    /* 26D48 80070FAC C6016214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_800716C8
    /* 26D4C 80070FB0 00000000 */   nop
    /* 26D50 80070FB4 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 26D54 80070FB8 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 26D58 80070FBC 00000000 */  nop
    /* 26D5C 80070FC0 DFFF4224 */  addiu      $v0, $v0, -0x21
    /* 26D60 80070FC4 4800422C */  sltiu      $v0, $v0, 0x48
    /* 26D64 80070FC8 91004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071210
    /* 26D68 80070FCC 00000000 */   nop
    /* 26D6C 80070FD0 21900000 */  addu       $s2, $zero, $zero
    /* 26D70 80070FD4 6666133C */  lui        $s3, (0x66666667 >> 16)
    /* 26D74 80070FD8 67667336 */  ori        $s3, $s3, (0x66666667 & 0xFFFF)
    /* 26D78 80070FDC 0680153C */  lui        $s5, %hi(D_80061BD8)
    /* 26D7C 80070FE0 D81BB526 */  addiu      $s5, $s5, %lo(D_80061BD8)
    /* 26D80 80070FE4 FF001424 */  addiu      $s4, $zero, 0xFF
    /* 26D84 80070FE8 0780113C */  lui        $s1, %hi(D_80068218)
    /* 26D88 80070FEC 18823126 */  addiu      $s1, $s1, %lo(D_80068218)
endlabel func_titlescreen_and_loading_80070EEC

glabel .Ltitlescreen_and_loading_80070FF0
    /* 26D8C 80070FF0 0680023C */  lui        $v0, %hi(D_80067110)
    /* 26D90 80070FF4 1071428C */  lw         $v0, %lo(D_80067110)($v0)
    /* 26D94 80070FF8 C0801200 */  sll        $s0, $s2, 3
    /* 26D98 80070FFC 21100202 */  addu       $v0, $s0, $v0
    /* 26D9C 80071000 04004290 */  lbu        $v0, 0x4($v0)
    /* 26DA0 80071004 00000000 */  nop
    /* 26DA4 80071008 7D004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071200
    /* 26DA8 8007100C 21280000 */   addu      $a1, $zero, $zero
    /* 26DAC 80071010 0680043C */  lui        $a0, %hi(D_80066FC8)
    /* 26DB0 80071014 C86F848C */  lw         $a0, %lo(D_80066FC8)($a0)
    /* 26DB4 80071018 F26C000C */  jal        func_8001B3C8
    /* 26DB8 8007101C 58000624 */   addiu     $a2, $zero, 0x58
    /* 26DBC 80071020 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 26DC0 80071024 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 26DC4 80071028 01000224 */  addiu      $v0, $zero, 0x1
    /* 26DC8 8007102C 360062A4 */  sh         $v0, 0x36($v1)
    /* 26DCC 80071030 00002292 */  lbu        $v0, 0x0($s1)
    /* 26DD0 80071034 00000000 */  nop
  alabel D_titlescreen_and_loading_80071038
    /* 26DD4 80071038 3C0062A0 */  sb         $v0, 0x3C($v1)
    /* 26DD8 8007103C 0680053C */  lui        $a1, %hi(D_80067110)
    /* 26DDC 80071040 1071A58C */  lw         $a1, %lo(D_80067110)($a1)
    /* 26DE0 80071044 00000000 */  nop
    /* 26DE4 80071048 21280502 */  addu       $a1, $s0, $a1
    /* 26DE8 8007104C 0000A68C */  lw         $a2, 0x0($a1)
    /* 26DEC 80071050 00000000 */  nop
    /* 26DF0 80071054 C0210600 */  sll        $a0, $a2, 7
    /* 26DF4 80071058 18009300 */  mult       $a0, $s3
    /* 26DF8 8007105C 0500A290 */  lbu        $v0, 0x5($a1)
    /* 26DFC 80071060 00000000 */  nop
  alabel D_titlescreen_and_loading_80071064
    /* 26E00 80071064 40100200 */  sll        $v0, $v0, 1
    /* 26E04 80071068 0680013C */  lui        $at, %hi(D_80061C58)
    /* 26E08 8007106C 21082200 */  addu       $at, $at, $v0
    /* 26E0C 80071070 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 26E10 80071074 C3270400 */  sra        $a0, $a0, 31
  alabel D_titlescreen_and_loading_80071078
    /* 26E14 80071078 40100300 */  sll        $v0, $v1, 1
    /* 26E18 8007107C 21104300 */  addu       $v0, $v0, $v1
  alabel D_titlescreen_and_loading_80071080
    /* 26E1C 80071080 00190200 */  sll        $v1, $v0, 4
    /* 26E20 80071084 23186200 */  subu       $v1, $v1, $v0
  alabel D_titlescreen_and_loading_80071088
    /* 26E24 80071088 10400000 */  mfhi       $t0
  alabel D_titlescreen_and_loading_8007108C
    /* 26E28 8007108C 03110800 */  sra        $v0, $t0, 4
    /* 26E2C 80071090 23104400 */  subu       $v0, $v0, $a0
    /* 26E30 80071094 40100200 */  sll        $v0, $v0, 1
    /* 26E34 80071098 21105500 */  addu       $v0, $v0, $s5
    /* 26E38 8007109C 00004284 */  lh         $v0, 0x0($v0)
    /* 26E3C 800710A0 831A0300 */  sra        $v1, $v1, 10
    /* 26E40 800710A4 18006200 */  mult       $v1, $v0
    /* 26E44 800710A8 0680073C */  lui        $a3, %hi(D_80066FC8)
    /* 26E48 800710AC C86FE78C */  lw         $a3, %lo(D_80066FC8)($a3)
    /* 26E4C 800710B0 80300600 */  sll        $a2, $a2, 2
    /* 26E50 800710B4 12400000 */  mflo       $t0
    /* 26E54 800710B8 03130800 */  sra        $v0, $t0, 12
    /* 26E58 800710BC 54014224 */  addiu      $v0, $v0, 0x154
    /* 26E5C 800710C0 23104600 */  subu       $v0, $v0, $a2
    /* 26E60 800710C4 0C00E2AC */  sw         $v0, 0xC($a3)
    /* 26E64 800710C8 0000A28C */  lw         $v0, 0x0($a1)
    /* 26E68 800710CC 00000000 */  nop
    /* 26E6C 800710D0 40180200 */  sll        $v1, $v0, 1
    /* 26E70 800710D4 21186200 */  addu       $v1, $v1, $v0
  alabel D_titlescreen_and_loading_800710D8
    /* 26E74 800710D8 00110300 */  sll        $v0, $v1, 4
    /* 26E78 800710DC 23104300 */  subu       $v0, $v0, $v1
    /* 26E7C 800710E0 80100200 */  sll        $v0, $v0, 2
    /* 26E80 800710E4 18005300 */  mult       $v0, $s3
    /* 26E84 800710E8 C3170200 */  sra        $v0, $v0, 31
    /* 26E88 800710EC 10400000 */  mfhi       $t0
    /* 26E8C 800710F0 03190800 */  sra        $v1, $t0, 4
    /* 26E90 800710F4 23186200 */  subu       $v1, $v1, $v0
    /* 26E94 800710F8 26006324 */  addiu      $v1, $v1, 0x26
    /* 26E98 800710FC 1000E3AC */  sw         $v1, 0x10($a3)
    /* 26E9C 80071100 0000A38C */  lw         $v1, 0x0($a1)
    /* 26EA0 80071104 00000000 */  nop
    /* 26EA4 80071108 C0190300 */  sll        $v1, $v1, 7
    /* 26EA8 8007110C 18007300 */  mult       $v1, $s3
    /* 26EAC 80071110 0500A290 */  lbu        $v0, 0x5($a1)
    /* 26EB0 80071114 00000000 */  nop
    /* 26EB4 80071118 40100200 */  sll        $v0, $v0, 1
    /* 26EB8 8007111C 21105500 */  addu       $v0, $v0, $s5
    /* 26EBC 80071120 00004494 */  lhu        $a0, 0x0($v0)
  alabel D_titlescreen_and_loading_80071124
    /* 26EC0 80071124 C31F0300 */  sra        $v1, $v1, 31
  alabel D_titlescreen_and_loading_80071128
    /* 26EC4 80071128 00240400 */  sll        $a0, $a0, 16
    /* 26EC8 8007112C 10400000 */  mfhi       $t0
    /* 26ECC 80071130 03110800 */  sra        $v0, $t0, 4
    /* 26ED0 80071134 23104300 */  subu       $v0, $v0, $v1
    /* 26ED4 80071138 40100200 */  sll        $v0, $v0, 1
    /* 26ED8 8007113C 21105500 */  addu       $v0, $v0, $s5
    /* 26EDC 80071140 00004284 */  lh         $v0, 0x0($v0)
    /* 26EE0 80071144 C3240400 */  sra        $a0, $a0, 19
    /* 26EE4 80071148 18008200 */  mult       $a0, $v0
    /* 26EE8 8007114C 4400E0A0 */  sb         $zero, 0x44($a3)
    /* 26EEC 80071150 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 26EF0 80071154 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 26EF4 80071158 12400000 */  mflo       $t0
    /* 26EF8 8007115C 03130800 */  sra        $v0, $t0, 12
    /* 26EFC 80071160 800C4224 */  addiu      $v0, $v0, 0xC80
    /* 26F00 80071164 1400E2AC */  sw         $v0, 0x14($a3)
    /* 26F04 80071168 08000224 */  addiu      $v0, $zero, 0x8
    /* 26F08 8007116C 450062A0 */  sb         $v0, 0x45($v1)
    /* 26F0C 80071170 0680023C */  lui        $v0, %hi(D_80067110)
    /* 26F10 80071174 1071428C */  lw         $v0, %lo(D_80067110)($v0)
    /* 26F14 80071178 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 26F18 8007117C C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 26F1C 80071180 21100202 */  addu       $v0, $s0, $v0
    /* 26F20 80071184 06004290 */  lbu        $v0, 0x6($v0)
    /* 26F24 80071188 00000000 */  nop
    /* 26F28 8007118C 460062A0 */  sb         $v0, 0x46($v1)
    /* 26F2C 80071190 0680033C */  lui        $v1, %hi(D_80066FC8)
  alabel D_titlescreen_and_loading_80071194
    /* 26F30 80071194 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 26F34 80071198 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 26F38 8007119C 470062A0 */  sb         $v0, 0x47($v1)
    /* 26F3C 800711A0 00002292 */  lbu        $v0, 0x0($s1)
    /* 26F40 800711A4 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 26F44 800711A8 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 26F48 800711AC 01004224 */  addiu      $v0, $v0, 0x1
    /* 26F4C 800711B0 540062A0 */  sb         $v0, 0x54($v1)
    /* 26F50 800711B4 0680023C */  lui        $v0, %hi(D_80066FC8)
    /* 26F54 800711B8 C86F428C */  lw         $v0, %lo(D_80066FC8)($v0)
    /* 26F58 800711BC 00000000 */  nop
    /* 26F5C 800711C0 4C0054A0 */  sb         $s4, 0x4C($v0)
  alabel D_titlescreen_and_loading_800711C4
    /* 26F60 800711C4 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 26F64 800711C8 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
  alabel D_titlescreen_and_loading_800711CC
    /* 26F68 800711CC 40000224 */  addiu      $v0, $zero, 0x40
  alabel D_titlescreen_and_loading_800711D0
    /* 26F6C 800711D0 4E0062A0 */  sb         $v0, 0x4E($v1)
    /* 26F70 800711D4 0680023C */  lui        $v0, %hi(D_80066FC8)
    /* 26F74 800711D8 C86F428C */  lw         $v0, %lo(D_80066FC8)($v0)
    /* 26F78 800711DC 00000000 */  nop
    /* 26F7C 800711E0 4C0054A0 */  sb         $s4, 0x4C($v0)
    /* 26F80 800711E4 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 26F84 800711E8 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 26F88 800711EC 00000000 */  nop
    /* 26F8C 800711F0 58006224 */  addiu      $v0, $v1, 0x58
    /* 26F90 800711F4 0680013C */  lui        $at, %hi(D_80066FC8)
    /* 26F94 800711F8 C86F22AC */  sw         $v0, %lo(D_80066FC8)($at)
    /* 26F98 800711FC A00074A0 */  sb         $s4, 0xA0($v1)
  .Ltitlescreen_and_loading_80071200:
    /* 26F9C 80071200 01005226 */  addiu      $s2, $s2, 0x1
    /* 26FA0 80071204 1800422A */  slti       $v0, $s2, 0x18
    /* 26FA4 80071208 79FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80070FF0
    /* 26FA8 8007120C 01003126 */   addiu     $s1, $s1, 0x1
  .Ltitlescreen_and_loading_80071210:
    /* 26FAC 80071210 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 26FB0 80071214 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* 26FB4 80071218 00000000 */  nop
    /* 26FB8 8007121C FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 26FBC 80071220 5D00422C */  sltiu      $v0, $v0, 0x5D
    /* 26FC0 80071224 8E004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071460
    /* 26FC4 80071228 10006228 */   slti      $v0, $v1, 0x10
    /* 26FC8 8007122C 08004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071250
    /* 26FCC 80071230 18001124 */   addiu     $s1, $zero, 0x18
    /* 26FD0 80071234 0780023C */  lui        $v0, %hi(D_800698EC)
  alabel D_titlescreen_and_loading_80071238
    /* 26FD4 80071238 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 26FD8 8007123C 0680013C */  lui        $at, %hi(D_8006342C)
    /* 26FDC 80071240 21082200 */  addu       $at, $at, $v0
    /* 26FE0 80071244 2C342290 */  lbu        $v0, %lo(D_8006342C)($at)
    /* 26FE4 80071248 9EC40108 */  j          .Ltitlescreen_and_loading_80071278
    /* 26FE8 8007124C F0FF5124 */   addiu     $s1, $v0, -0x10
  .Ltitlescreen_and_loading_80071250:
    /* 26FEC 80071250 54006228 */  slti       $v0, $v1, 0x54
    /* 26FF0 80071254 08004014 */  bnez       $v0, .Ltitlescreen_and_loading_80071278
  alabel D_titlescreen_and_loading_80071258
    /* 26FF4 80071258 00000000 */   nop
    /* 26FF8 8007125C 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 26FFC 80071260 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 27000 80071264 0680013C */  lui        $at, %hi(D_800633F4)
    /* 27004 80071268 21082200 */  addu       $at, $at, $v0
    /* 27008 8007126C F4332290 */  lbu        $v0, %lo(D_800633F4)($at)
    /* 2700C 80071270 00000000 */  nop
    /* 27010 80071274 F0FF5124 */  addiu      $s1, $v0, -0x10
  .Ltitlescreen_and_loading_80071278:
    /* 27014 80071278 0780053C */  lui        $a1, %hi(D_800698EC)
    /* 27018 8007127C EC98A58C */  lw         $a1, %lo(D_800698EC)($a1)
    /* 2701C 80071280 00000000 */  nop
    /* 27020 80071284 2000A228 */  slti       $v0, $a1, 0x20
  alabel D_titlescreen_and_loading_80071288
    /* 27024 80071288 0C004010 */  beqz       $v0, .Ltitlescreen_and_loading_800712BC
    /* 27028 8007128C 00000000 */   nop
    /* 2702C 80071290 0680023C */  lui        $v0, %hi(D_80066FD0)
    /* 27030 80071294 D06F428C */  lw         $v0, %lo(D_80066FD0)($v0)
    /* 27034 80071298 00000000 */  nop
    /* 27038 8007129C 80100200 */  sll        $v0, $v0, 2
    /* 2703C 800712A0 0780013C */  lui        $at, %hi(D_8006AC04)
    /* 27040 800712A4 21082200 */  addu       $at, $at, $v0
    /* 27044 800712A8 04AC238C */  lw         $v1, %lo(D_8006AC04)($at)
    /* 27048 800712AC 0680023C */  lui        $v0, %hi(D_800670D0)
  alabel D_titlescreen_and_loading_800712B0
    /* 2704C 800712B0 D070428C */  lw         $v0, %lo(D_800670D0)($v0)
    /* 27050 800712B4 DCC40108 */  j          .Ltitlescreen_and_loading_80071370
    /* 27054 800712B8 23806200 */   subu      $s0, $v1, $v0
  .Ltitlescreen_and_loading_800712BC:
    /* 27058 800712BC 0680033C */  lui        $v1, %hi(D_800670B0)
    /* 2705C 800712C0 B070638C */  lw         $v1, %lo(D_800670B0)($v1)
    /* 27060 800712C4 00000000 */  nop
    /* 27064 800712C8 10006228 */  slti       $v0, $v1, 0x10
    /* 27068 800712CC 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_800712D8
    /* 2706C 800712D0 01006424 */   addiu     $a0, $v1, 0x1
    /* 27070 800712D4 21208300 */  addu       $a0, $a0, $v1
  .Ltitlescreen_and_loading_800712D8:
    /* 27074 800712D8 21008228 */  slti       $v0, $a0, 0x21
  alabel D_titlescreen_and_loading_800712DC
    /* 27078 800712DC 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_800712EC
    /* 2707C 800712E0 20008224 */   addiu     $v0, $a0, 0x20
    /* 27080 800712E4 20000424 */  addiu      $a0, $zero, 0x20
    /* 27084 800712E8 20008224 */  addiu      $v0, $a0, 0x20
  .Ltitlescreen_and_loading_800712EC:
    /* 27088 800712EC 23284500 */  subu       $a1, $v0, $a1
    /* 2708C 800712F0 0300A104 */  bgez       $a1, .Ltitlescreen_and_loading_80071300
    /* 27090 800712F4 2A108500 */   slt       $v0, $a0, $a1
    /* 27094 800712F8 21280000 */  addu       $a1, $zero, $zero
    /* 27098 800712FC 2A108500 */  slt        $v0, $a0, $a1
  .Ltitlescreen_and_loading_80071300:
    /* 2709C 80071300 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_8007130C
    /* 270A0 80071304 00000000 */   nop
    /* 270A4 80071308 21288000 */  addu       $a1, $a0, $zero
  .Ltitlescreen_and_loading_8007130C:
    /* 270A8 8007130C 0680023C */  lui        $v0, %hi(D_80066FD0)
    /* 270AC 80071310 D06F428C */  lw         $v0, %lo(D_80066FD0)($v0)
    /* 270B0 80071314 0680033C */  lui        $v1, %hi(D_800670D0)
  alabel D_titlescreen_and_loading_80071318
    /* 270B4 80071318 D070638C */  lw         $v1, %lo(D_800670D0)($v1)
    /* 270B8 8007131C 80100200 */  sll        $v0, $v0, 2
    /* 270BC 80071320 0780013C */  lui        $at, %hi(D_8006AC04)
    /* 270C0 80071324 21082200 */  addu       $at, $at, $v0
    /* 270C4 80071328 04AC228C */  lw         $v0, %lo(D_8006AC04)($at)
    /* 270C8 8007132C 00000000 */  nop
    /* 270CC 80071330 23104300 */  subu       $v0, $v0, $v1
    /* 270D0 80071334 18004500 */  mult       $v0, $a1
    /* 270D4 80071338 12100000 */  mflo       $v0
    /* 270D8 8007133C 00000000 */  nop
    /* 270DC 80071340 00000000 */  nop
    /* 270E0 80071344 1A004400 */  div        $zero, $v0, $a0
    /* 270E4 80071348 02008014 */  bnez       $a0, .Ltitlescreen_and_loading_80071354
  alabel D_titlescreen_and_loading_8007134C
    /* 270E8 8007134C 00000000 */   nop
  alabel D_titlescreen_and_loading_80071350
    /* 270EC 80071350 0D000700 */  break      7
  .Ltitlescreen_and_loading_80071354:
    /* 270F0 80071354 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 270F4 80071358 04008114 */  bne        $a0, $at, .Ltitlescreen_and_loading_8007136C
    /* 270F8 8007135C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 270FC 80071360 02004114 */  bne        $v0, $at, .Ltitlescreen_and_loading_8007136C
    /* 27100 80071364 00000000 */   nop
    /* 27104 80071368 0D000600 */  break      6
  .Ltitlescreen_and_loading_8007136C:
    /* 27108 8007136C 12800000 */  mflo       $s0
  .Ltitlescreen_and_loading_80071370:
    /* 2710C 80071370 2C010524 */  addiu      $a1, $zero, 0x12C
    /* 27110 80071374 0680023C */  lui        $v0, %hi(D_80067118)
    /* 27114 80071378 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 27118 8007137C 21302002 */  addu       $a2, $s1, $zero
    /* 2711C 80071380 80100200 */  sll        $v0, $v0, 2
    /* 27120 80071384 0680013C */  lui        $at, %hi(D_80061B4C)
    /* 27124 80071388 21082200 */  addu       $at, $at, $v0
    /* 27128 8007138C 4C1B248C */  lw         $a0, %lo(D_80061B4C)($at)
    /* 2712C 80071390 9B36010C */  jal        func_8004DA6C
    /* 27130 80071394 01000724 */   addiu     $a3, $zero, 0x1
    /* 27134 80071398 21200002 */  addu       $a0, $s0, $zero
    /* 27138 8007139C 7C010524 */  addiu      $a1, $zero, 0x17C
  alabel D_titlescreen_and_loading_800713A0
    /* 2713C 800713A0 21302002 */  addu       $a2, $s1, $zero
    /* 27140 800713A4 B436010C */  jal        func_8004DAD0
    /* 27144 800713A8 01000724 */   addiu     $a3, $zero, 0x1
    /* 27148 800713AC 21280000 */  addu       $a1, $zero, $zero
    /* 2714C 800713B0 0680043C */  lui        $a0, %hi(D_80066FC8)
    /* 27150 800713B4 C86F848C */  lw         $a0, %lo(D_80066FC8)($a0)
    /* 27154 800713B8 F26C000C */  jal        func_8001B3C8
    /* 27158 800713BC 58000624 */   addiu     $a2, $zero, 0x58
    /* 2715C 800713C0 0680033C */  lui        $v1, %hi(D_80066FC8)
  alabel D_titlescreen_and_loading_800713C4
    /* 27160 800713C4 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 27164 800713C8 54010224 */  addiu      $v0, $zero, 0x154
    /* 27168 800713CC 0C0062AC */  sw         $v0, 0xC($v1)
    /* 2716C 800713D0 0E002226 */  addiu      $v0, $s1, 0xE
    /* 27170 800713D4 100062AC */  sw         $v0, 0x10($v1)
    /* 27174 800713D8 000C0224 */  addiu      $v0, $zero, 0xC00
    /* 27178 800713DC 140062AC */  sw         $v0, 0x14($v1)
    /* 2717C 800713E0 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 27180 800713E4 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 27184 800713E8 00000000 */  nop
  alabel D_titlescreen_and_loading_800713EC
    /* 27188 800713EC 80100200 */  sll        $v0, $v0, 2
    /* 2718C 800713F0 460062A0 */  sb         $v0, 0x46($v1)
    /* 27190 800713F4 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 27194 800713F8 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 27198 800713FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2719C 80071400 360062A4 */  sh         $v0, 0x36($v1)
    /* 271A0 80071404 3F000224 */  addiu      $v0, $zero, 0x3F
  alabel D_titlescreen_and_loading_80071408
    /* 271A4 80071408 470062A0 */  sb         $v0, 0x47($v1)
    /* 271A8 8007140C 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 271AC 80071410 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 271B0 80071414 02000224 */  addiu      $v0, $zero, 0x2
    /* 271B4 80071418 540062A0 */  sb         $v0, 0x54($v1)
    /* 271B8 8007141C 0680023C */  lui        $v0, %hi(D_80066FC8)
    /* 271BC 80071420 C86F428C */  lw         $v0, %lo(D_80066FC8)($v0)
    /* 271C0 80071424 FF000424 */  addiu      $a0, $zero, 0xFF
    /* 271C4 80071428 4C0044A0 */  sb         $a0, 0x4C($v0)
    /* 271C8 8007142C 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 271CC 80071430 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 271D0 80071434 40000224 */  addiu      $v0, $zero, 0x40
    /* 271D4 80071438 4E0062A0 */  sb         $v0, 0x4E($v1)
    /* 271D8 8007143C 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 271DC 80071440 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 271E0 80071444 00000000 */  nop
    /* 271E4 80071448 58006224 */  addiu      $v0, $v1, 0x58
    /* 271E8 8007144C 0680013C */  lui        $at, %hi(D_80066FC8)
    /* 271EC 80071450 C86F22AC */  sw         $v0, %lo(D_80066FC8)($at)
    /* 271F0 80071454 A00064A0 */  sb         $a0, 0xA0($v1)
    /* 271F4 80071458 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 271F8 8007145C EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
  .Ltitlescreen_and_loading_80071460:
    /* 271FC 80071460 00000000 */  nop
    /* 27200 80071464 D8FF6224 */  addiu      $v0, $v1, -0x28
    /* 27204 80071468 6100422C */  sltiu      $v0, $v0, 0x61
    /* 27208 8007146C B5014010 */  beqz       $v0, .Ltitlescreen_and_loading_80071B44
    /* 2720C 80071470 34006228 */   slti      $v0, $v1, 0x34
    /* 27210 80071474 08004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071498
    /* 27214 80071478 CC001124 */   addiu     $s1, $zero, 0xCC
    /* 27218 8007147C 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 2721C 80071480 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 27220 80071484 0680013C */  lui        $at, %hi(D_80063408)
    /* 27224 80071488 21082200 */  addu       $at, $at, $v0
    /* 27228 8007148C 08342390 */  lbu        $v1, %lo(D_80063408)($at)
    /* 2722C 80071490 2FC50108 */  j          .Ltitlescreen_and_loading_800714BC
    /* 27230 80071494 F4000224 */   addiu     $v0, $zero, 0xF4
  .Ltitlescreen_and_loading_80071498:
    /* 27234 80071498 7C006228 */  slti       $v0, $v1, 0x7C
    /* 27238 8007149C 08004014 */  bnez       $v0, .Ltitlescreen_and_loading_800714C0
    /* 2723C 800714A0 00000000 */   nop
    /* 27240 800714A4 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 27244 800714A8 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
  alabel D_titlescreen_and_loading_800714AC
    /* 27248 800714AC 0680013C */  lui        $at, %hi(D_800633CC)
    /* 2724C 800714B0 21082200 */  addu       $at, $at, $v0
    /* 27250 800714B4 CC332390 */  lbu        $v1, %lo(D_800633CC)($at)
    /* 27254 800714B8 F4000224 */  addiu      $v0, $zero, 0xF4
  .Ltitlescreen_and_loading_800714BC:
    /* 27258 800714BC 23884300 */  subu       $s1, $v0, $v1
  .Ltitlescreen_and_loading_800714C0:
    /* 2725C 800714C0 0780053C */  lui        $a1, %hi(D_800698EC)
    /* 27260 800714C4 EC98A58C */  lw         $a1, %lo(D_800698EC)($a1)
    /* 27264 800714C8 00000000 */  nop
    /* 27268 800714CC 4800A228 */  slti       $v0, $a1, 0x48
    /* 2726C 800714D0 0E004010 */  beqz       $v0, .Ltitlescreen_and_loading_8007150C
    /* 27270 800714D4 00000000 */   nop
    /* 27274 800714D8 0680023C */  lui        $v0, %hi(D_80066FD0)
    /* 27278 800714DC D06F428C */  lw         $v0, %lo(D_80066FD0)($v0)
    /* 2727C 800714E0 0680033C */  lui        $v1, %hi(D_800670D0)
    /* 27280 800714E4 D070638C */  lw         $v1, %lo(D_800670D0)($v1)
    /* 27284 800714E8 80100200 */  sll        $v0, $v0, 2
    /* 27288 800714EC 0780013C */  lui        $at, %hi(D_8006AC04)
    /* 2728C 800714F0 21082200 */  addu       $at, $at, $v0
    /* 27290 800714F4 04AC228C */  lw         $v0, %lo(D_8006AC04)($at)
    /* 27294 800714F8 0680043C */  lui        $a0, %hi(D_800670CC)
    /* 27298 800714FC CC70848C */  lw         $a0, %lo(D_800670CC)($a0)
    /* 2729C 80071500 23104300 */  subu       $v0, $v0, $v1
    /* 272A0 80071504 74C50108 */  j          .Ltitlescreen_and_loading_800715D0
    /* 272A4 80071508 23808200 */   subu      $s0, $a0, $v0
  .Ltitlescreen_and_loading_8007150C:
    /* 272A8 8007150C 0680033C */  lui        $v1, %hi(D_800670B0)
    /* 272AC 80071510 B070638C */  lw         $v1, %lo(D_800670B0)($v1)
    /* 272B0 80071514 00000000 */  nop
    /* 272B4 80071518 10006228 */  slti       $v0, $v1, 0x10
    /* 272B8 8007151C 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071528
    /* 272BC 80071520 01006424 */   addiu     $a0, $v1, 0x1
    /* 272C0 80071524 21208300 */  addu       $a0, $a0, $v1
  .Ltitlescreen_and_loading_80071528:
    /* 272C4 80071528 21008228 */  slti       $v0, $a0, 0x21
    /* 272C8 8007152C 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_8007153C
    /* 272CC 80071530 48008224 */   addiu     $v0, $a0, 0x48
    /* 272D0 80071534 20000424 */  addiu      $a0, $zero, 0x20
    /* 272D4 80071538 48008224 */  addiu      $v0, $a0, 0x48
  .Ltitlescreen_and_loading_8007153C:
    /* 272D8 8007153C 23284500 */  subu       $a1, $v0, $a1
    /* 272DC 80071540 0300A104 */  bgez       $a1, .Ltitlescreen_and_loading_80071550
    /* 272E0 80071544 2A108500 */   slt       $v0, $a0, $a1
    /* 272E4 80071548 21280000 */  addu       $a1, $zero, $zero
    /* 272E8 8007154C 2A108500 */  slt        $v0, $a0, $a1
  .Ltitlescreen_and_loading_80071550:
    /* 272EC 80071550 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_8007155C
    /* 272F0 80071554 00000000 */   nop
    /* 272F4 80071558 21288000 */  addu       $a1, $a0, $zero
  .Ltitlescreen_and_loading_8007155C:
    /* 272F8 8007155C 0680023C */  lui        $v0, %hi(D_80066FD0)
    /* 272FC 80071560 D06F428C */  lw         $v0, %lo(D_80066FD0)($v0)
    /* 27300 80071564 0680033C */  lui        $v1, %hi(D_800670D0)
    /* 27304 80071568 D070638C */  lw         $v1, %lo(D_800670D0)($v1)
    /* 27308 8007156C 80100200 */  sll        $v0, $v0, 2
    /* 2730C 80071570 0780013C */  lui        $at, %hi(D_8006AC04)
    /* 27310 80071574 21082200 */  addu       $at, $at, $v0
    /* 27314 80071578 04AC228C */  lw         $v0, %lo(D_8006AC04)($at)
    /* 27318 8007157C 00000000 */  nop
    /* 2731C 80071580 23104300 */  subu       $v0, $v0, $v1
    /* 27320 80071584 18004500 */  mult       $v0, $a1
    /* 27324 80071588 12100000 */  mflo       $v0
    /* 27328 8007158C 00000000 */  nop
    /* 2732C 80071590 00000000 */  nop
    /* 27330 80071594 1A004400 */  div        $zero, $v0, $a0
    /* 27334 80071598 02008014 */  bnez       $a0, .Ltitlescreen_and_loading_800715A4
    /* 27338 8007159C 00000000 */   nop
    /* 2733C 800715A0 0D000700 */  break      7
  .Ltitlescreen_and_loading_800715A4:
    /* 27340 800715A4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 27344 800715A8 04008114 */  bne        $a0, $at, .Ltitlescreen_and_loading_800715BC
    /* 27348 800715AC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2734C 800715B0 02004114 */  bne        $v0, $at, .Ltitlescreen_and_loading_800715BC
    /* 27350 800715B4 00000000 */   nop
    /* 27354 800715B8 0D000600 */  break      6
  .Ltitlescreen_and_loading_800715BC:
    /* 27358 800715BC 12180000 */  mflo       $v1
    /* 2735C 800715C0 0680023C */  lui        $v0, %hi(D_800670CC)
    /* 27360 800715C4 CC70428C */  lw         $v0, %lo(D_800670CC)($v0)
    /* 27364 800715C8 00000000 */  nop
    /* 27368 800715CC 23804300 */  subu       $s0, $v0, $v1
  .Ltitlescreen_and_loading_800715D0:
    /* 2736C 800715D0 02000106 */  bgez       $s0, .Ltitlescreen_and_loading_800715DC
    /* 27370 800715D4 DC000524 */   addiu     $a1, $zero, 0xDC
    /* 27374 800715D8 21800000 */  addu       $s0, $zero, $zero
  .Ltitlescreen_and_loading_800715DC:
    /* 27378 800715DC 0680023C */  lui        $v0, %hi(D_80067118)
    /* 2737C 800715E0 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 27380 800715E4 21302002 */  addu       $a2, $s1, $zero
    /* 27384 800715E8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 27388 800715EC 80100200 */  sll        $v0, $v0, 2
  alabel D_titlescreen_and_loading_800715F0
    /* 2738C 800715F0 0680013C */  lui        $at, %hi(D_80061B50)
    /* 27390 800715F4 21082200 */  addu       $at, $at, $v0
    /* 27394 800715F8 501B248C */  lw         $a0, %lo(D_80061B50)($at)
    /* 27398 800715FC DD28010C */  jal        func_8004A374
    /* 2739C 80071600 01000724 */   addiu     $a3, $zero, 0x1
    /* 273A0 80071604 21200002 */  addu       $a0, $s0, $zero
    /* 273A4 80071608 74FF0524 */  addiu      $a1, $zero, -0x8C
    /* 273A8 8007160C 21302002 */  addu       $a2, $s1, $zero
    /* 273AC 80071610 B436010C */  jal        func_8004DAD0
    /* 273B0 80071614 01000724 */   addiu     $a3, $zero, 0x1
    /* 273B4 80071618 21280000 */  addu       $a1, $zero, $zero
    /* 273B8 8007161C 0680043C */  lui        $a0, %hi(D_80066FC8)
    /* 273BC 80071620 C86F848C */  lw         $a0, %lo(D_80066FC8)($a0)
    /* 273C0 80071624 F26C000C */  jal        func_8001B3C8
    /* 273C4 80071628 58000624 */   addiu     $a2, $zero, 0x58
    /* 273C8 8007162C 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 273CC 80071630 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 273D0 80071634 B4000224 */  addiu      $v0, $zero, 0xB4
  alabel D_titlescreen_and_loading_80071638
    /* 273D4 80071638 0C0062AC */  sw         $v0, 0xC($v1)
    /* 273D8 8007163C 0E002226 */  addiu      $v0, $s1, 0xE
    /* 273DC 80071640 100062AC */  sw         $v0, 0x10($v1)
    /* 273E0 80071644 000C0224 */  addiu      $v0, $zero, 0xC00
    /* 273E4 80071648 140062AC */  sw         $v0, 0x14($v1)
    /* 273E8 8007164C 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 273EC 80071650 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 273F0 80071654 00000000 */  nop
    /* 273F4 80071658 80100200 */  sll        $v0, $v0, 2
    /* 273F8 8007165C 460062A0 */  sb         $v0, 0x46($v1)
    /* 273FC 80071660 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 27400 80071664 C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 27404 80071668 01000224 */  addiu      $v0, $zero, 0x1
    /* 27408 8007166C 360062A4 */  sh         $v0, 0x36($v1)
    /* 2740C 80071670 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 27410 80071674 470062A0 */  sb         $v0, 0x47($v1)
    /* 27414 80071678 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 27418 8007167C C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 2741C 80071680 02000224 */  addiu      $v0, $zero, 0x2
    /* 27420 80071684 540062A0 */  sb         $v0, 0x54($v1)
    /* 27424 80071688 0680023C */  lui        $v0, %hi(D_80066FC8)
    /* 27428 8007168C C86F428C */  lw         $v0, %lo(D_80066FC8)($v0)
    /* 2742C 80071690 FF000424 */  addiu      $a0, $zero, 0xFF
    /* 27430 80071694 4C0044A0 */  sb         $a0, 0x4C($v0)
    /* 27434 80071698 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 27438 8007169C C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 2743C 800716A0 40000224 */  addiu      $v0, $zero, 0x40
    /* 27440 800716A4 4E0062A0 */  sb         $v0, 0x4E($v1)
    /* 27444 800716A8 0680033C */  lui        $v1, %hi(D_80066FC8)
    /* 27448 800716AC C86F638C */  lw         $v1, %lo(D_80066FC8)($v1)
    /* 2744C 800716B0 00000000 */  nop
    /* 27450 800716B4 58006224 */  addiu      $v0, $v1, 0x58
    /* 27454 800716B8 0680013C */  lui        $at, %hi(D_80066FC8)
    /* 27458 800716BC C86F22AC */  sw         $v0, %lo(D_80066FC8)($at)
    /* 2745C 800716C0 D1C60108 */  j          .Ltitlescreen_and_loading_80071B44
    /* 27460 800716C4 A00064A0 */   sb        $a0, 0xA0($v1)
  .Ltitlescreen_and_loading_800716C8:
    /* 27464 800716C8 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 27468 800716CC 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 2746C 800716D0 0780013C */  lui        $at, %hi(D_8006B084)
    /* 27470 800716D4 21082200 */  addu       $at, $at, $v0
    /* 27474 800716D8 84B02290 */  lbu        $v0, %lo(D_8006B084)($at)
    /* 27478 800716DC 00000000 */  nop
    /* 2747C 800716E0 3B004010 */  beqz       $v0, .Ltitlescreen_and_loading_800717D0
    /* 27480 800716E4 00000000 */   nop
    /* 27484 800716E8 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* 27488 800716EC E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* 2748C 800716F0 00000000 */  nop
    /* 27490 800716F4 36004014 */  bnez       $v0, .Ltitlescreen_and_loading_800717D0
    /* 27494 800716F8 0B000224 */   addiu     $v0, $zero, 0xB
    /* 27498 800716FC 0680043C */  lui        $a0, %hi(D_80066F90)
    /* 2749C 80071700 906F848C */  lw         $a0, %lo(D_80066F90)($a0)
    /* 274A0 80071704 00000000 */  nop
    /* 274A4 80071708 31008210 */  beq        $a0, $v0, .Ltitlescreen_and_loading_800717D0
    /* 274A8 8007170C 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 274AC 80071710 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 274B0 80071714 18008200 */  mult       $a0, $v0
    /* 274B4 80071718 C3170400 */  sra        $v0, $a0, 31
    /* 274B8 8007171C 10400000 */  mfhi       $t0
    /* 274BC 80071720 83180800 */  sra        $v1, $t0, 2
    /* 274C0 80071724 23186200 */  subu       $v1, $v1, $v0
    /* 274C4 80071728 80100300 */  sll        $v0, $v1, 2
    /* 274C8 8007172C 21104300 */  addu       $v0, $v0, $v1
    /* 274CC 80071730 40100200 */  sll        $v0, $v0, 1
    /* 274D0 80071734 FBFF8324 */  addiu      $v1, $a0, -0x5
    /* 274D4 80071738 25004310 */  beq        $v0, $v1, .Ltitlescreen_and_loading_800717D0
    /* 274D8 8007173C 00000000 */   nop
    /* 274DC 80071740 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 274E0 80071744 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* 274E4 80071748 00000000 */  nop
    /* 274E8 8007174C ECFF6224 */  addiu      $v0, $v1, -0x14
    /* 274EC 80071750 5D00422C */  sltiu      $v0, $v0, 0x5D
    /* 274F0 80071754 63004010 */  beqz       $v0, .Ltitlescreen_and_loading_800718E4
    /* 274F4 80071758 20006228 */   slti      $v0, $v1, 0x20
    /* 274F8 8007175C 06004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071778
    /* 274FC 80071760 18000624 */   addiu     $a2, $zero, 0x18
    /* 27500 80071764 0680013C */  lui        $at, %hi(D_8006341C)
    /* 27504 80071768 21082300 */  addu       $at, $at, $v1
    /* 27508 8007176C 1C342290 */  lbu        $v0, %lo(D_8006341C)($at)
    /* 2750C 80071770 EBC50108 */  j          .Ltitlescreen_and_loading_800717AC
    /* 27510 80071774 F0FF4624 */   addiu     $a2, $v0, -0x10
  .Ltitlescreen_and_loading_80071778:
    /* 27514 80071778 64006228 */  slti       $v0, $v1, 0x64
    /* 27518 8007177C 0B004014 */  bnez       $v0, .Ltitlescreen_and_loading_800717AC
    /* 2751C 80071780 00000000 */   nop
    /* 27520 80071784 0780023C */  lui        $v0, %hi(D_8006B2F8)
    /* 27524 80071788 F8B2428C */  lw         $v0, %lo(D_8006B2F8)($v0)
    /* 27528 8007178C 00000000 */  nop
    /* 2752C 80071790 06004014 */  bnez       $v0, .Ltitlescreen_and_loading_800717AC
    /* 27530 80071794 00000000 */   nop
    /* 27534 80071798 0680013C */  lui        $at, %hi(D_800633E4)
    /* 27538 8007179C 21082300 */  addu       $at, $at, $v1
    /* 2753C 800717A0 E4332290 */  lbu        $v0, %lo(D_800633E4)($at)
    /* 27540 800717A4 00000000 */  nop
    /* 27544 800717A8 F0FF4624 */  addiu      $a2, $v0, -0x10
  .Ltitlescreen_and_loading_800717AC:
    /* 27548 800717AC 0680023C */  lui        $v0, %hi(D_80067118)
    /* 2754C 800717B0 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 27550 800717B4 00000000 */  nop
  alabel D_titlescreen_and_loading_800717B8
    /* 27554 800717B8 80100200 */  sll        $v0, $v0, 2
    /* 27558 800717BC 0680013C */  lui        $at, %hi(D_80061B54)
    /* 2755C 800717C0 21082200 */  addu       $at, $at, $v0
    /* 27560 800717C4 541B248C */  lw         $a0, %lo(D_80061B54)($at)
    /* 27564 800717C8 37C60108 */  j          .Ltitlescreen_and_loading_800718DC
    /* 27568 800717CC 00010524 */   addiu     $a1, $zero, 0x100
  .Ltitlescreen_and_loading_800717D0:
    /* 2756C 800717D0 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 27570 800717D4 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* 27574 800717D8 00000000 */  nop
    /* 27578 800717DC ECFF6224 */  addiu      $v0, $v1, -0x14
    /* 2757C 800717E0 5D00422C */  sltiu      $v0, $v0, 0x5D
    /* 27580 800717E4 3F004010 */  beqz       $v0, .Ltitlescreen_and_loading_800718E4
    /* 27584 800717E8 20006228 */   slti      $v0, $v1, 0x20
    /* 27588 800717EC 08004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071810
    /* 2758C 800717F0 18001024 */   addiu     $s0, $zero, 0x18
    /* 27590 800717F4 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 27594 800717F8 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 27598 800717FC 0680013C */  lui        $at, %hi(D_8006341C)
    /* 2759C 80071800 21082200 */  addu       $at, $at, $v0
    /* 275A0 80071804 1C342290 */  lbu        $v0, %lo(D_8006341C)($at)
    /* 275A4 80071808 13C60108 */  j          .Ltitlescreen_and_loading_8007184C
    /* 275A8 8007180C F0FF5024 */   addiu     $s0, $v0, -0x10
  .Ltitlescreen_and_loading_80071810:
    /* 275AC 80071810 64006228 */  slti       $v0, $v1, 0x64
    /* 275B0 80071814 0D004014 */  bnez       $v0, .Ltitlescreen_and_loading_8007184C
    /* 275B4 80071818 00000000 */   nop
    /* 275B8 8007181C 0780023C */  lui        $v0, %hi(D_8006B2F8)
    /* 275BC 80071820 F8B2428C */  lw         $v0, %lo(D_8006B2F8)($v0)
    /* 275C0 80071824 00000000 */  nop
    /* 275C4 80071828 08004014 */  bnez       $v0, .Ltitlescreen_and_loading_8007184C
    /* 275C8 8007182C 00000000 */   nop
    /* 275CC 80071830 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 275D0 80071834 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
  alabel D_titlescreen_and_loading_80071838
    /* 275D4 80071838 0680013C */  lui        $at, %hi(D_800633E4)
    /* 275D8 8007183C 21082200 */  addu       $at, $at, $v0
    /* 275DC 80071840 E4332290 */  lbu        $v0, %lo(D_800633E4)($at)
    /* 275E0 80071844 00000000 */  nop
    /* 275E4 80071848 F0FF5024 */  addiu      $s0, $v0, -0x10
  .Ltitlescreen_and_loading_8007184C:
    /* 275E8 8007184C 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* 275EC 80071850 E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* 275F0 80071854 00000000 */  nop
    /* 275F4 80071858 0A004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071884
    /* 275F8 8007185C 1800A427 */   addiu     $a0, $sp, 0x18
    /* 275FC 80071860 0680023C */  lui        $v0, %hi(D_80067118)
    /* 27600 80071864 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 27604 80071868 00000000 */  nop
    /* 27608 8007186C 80180200 */  sll        $v1, $v0, 2
    /* 2760C 80071870 0680013C */  lui        $at, %hi(D_80061B58)
    /* 27610 80071874 21082300 */  addu       $at, $at, $v1
    /* 27614 80071878 581B268C */  lw         $a2, %lo(D_80061B58)($at)
    /* 27618 8007187C 28C60108 */  j          .Ltitlescreen_and_loading_800718A0
    /* 2761C 80071880 00000000 */   nop
  .Ltitlescreen_and_loading_80071884:
    /* 27620 80071884 0680023C */  lui        $v0, %hi(D_80067118)
    /* 27624 80071888 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 27628 8007188C 00000000 */  nop
    /* 2762C 80071890 80180200 */  sll        $v1, $v0, 2
    /* 27630 80071894 0680013C */  lui        $at, %hi(D_80061B5C)
    /* 27634 80071898 21082300 */  addu       $at, $at, $v1
    /* 27638 8007189C 5C1B268C */  lw         $a2, %lo(D_80061B5C)($at)
  .Ltitlescreen_and_loading_800718A0:
    /* 2763C 800718A0 0680033C */  lui        $v1, %hi(D_80066F54)
    /* 27640 800718A4 546F638C */  lw         $v1, %lo(D_80066F54)($v1)
    /* 27644 800718A8 40110200 */  sll        $v0, $v0, 5
    /* 27648 800718AC 21104300 */  addu       $v0, $v0, $v1
    /* 2764C 800718B0 80100200 */  sll        $v0, $v0, 2
    /* 27650 800718B4 0680013C */  lui        $at, %hi(D_800649B4)
    /* 27654 800718B8 21082200 */  addu       $at, $at, $v0
    /* 27658 800718BC B449278C */  lw         $a3, %lo(D_800649B4)($at)
    /* 2765C 800718C0 0780053C */  lui        $a1, %hi(D_titlescreen_and_loading_8006D3B4)
    /* 27660 800718C4 B4D3A524 */  addiu      $a1, $a1, %lo(D_titlescreen_and_loading_8006D3B4)
    /* 27664 800718C8 2B65010C */  jal        func_800594AC
    /* 27668 800718CC 00000000 */   nop
    /* 2766C 800718D0 1800A427 */  addiu      $a0, $sp, 0x18
    /* 27670 800718D4 0A010524 */  addiu      $a1, $zero, 0x10A
    /* 27674 800718D8 21300002 */  addu       $a2, $s0, $zero
  .Ltitlescreen_and_loading_800718DC:
    /* 27678 800718DC 6136010C */  jal        func_8004D984
    /* 2767C 800718E0 01000724 */   addiu     $a3, $zero, 0x1
  .Ltitlescreen_and_loading_800718E4:
    /* 27680 800718E4 0780113C */  lui        $s1, %hi(D_800698EC)
    /* 27684 800718E8 EC983126 */  addiu      $s1, $s1, %lo(D_800698EC)
    /* 27688 800718EC 0000248E */  lw         $a0, 0x0($s1)
    /* 2768C 800718F0 00000000 */  nop
    /* 27690 800718F4 FCFF8224 */  addiu      $v0, $a0, -0x4
    /* 27694 800718F8 6D00422C */  sltiu      $v0, $v0, 0x6D
    /* 27698 800718FC 91004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071B44
    /* 2769C 80071900 10008228 */   slti      $v0, $a0, 0x10
    /* 276A0 80071904 08004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071928
    /* 276A4 80071908 CC001024 */   addiu     $s0, $zero, 0xCC
    /* 276A8 8007190C 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 276AC 80071910 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 276B0 80071914 0680013C */  lui        $at, %hi(D_8006342C)
    /* 276B4 80071918 21082200 */  addu       $at, $at, $v0
    /* 276B8 8007191C 2C342390 */  lbu        $v1, %lo(D_8006342C)($at)
    /* 276BC 80071920 F4000224 */  addiu      $v0, $zero, 0xF4
    /* 276C0 80071924 23804300 */  subu       $s0, $v0, $v1
  .Ltitlescreen_and_loading_80071928:
    /* 276C4 80071928 64008228 */  slti       $v0, $a0, 0x64
    /* 276C8 8007192C 08004014 */  bnez       $v0, .Ltitlescreen_and_loading_80071950
    /* 276CC 80071930 00000000 */   nop
    /* 276D0 80071934 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 276D4 80071938 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 276D8 8007193C 0680013C */  lui        $at, %hi(D_800633E4)
    /* 276DC 80071940 21082200 */  addu       $at, $at, $v0
    /* 276E0 80071944 E4332390 */  lbu        $v1, %lo(D_800633E4)($at)
    /* 276E4 80071948 F4000224 */  addiu      $v0, $zero, 0xF4
    /* 276E8 8007194C 23804300 */  subu       $s0, $v0, $v1
  .Ltitlescreen_and_loading_80071950:
    /* 276EC 80071950 0680033C */  lui        $v1, %hi(D_80067E20)
    /* 276F0 80071954 207E6324 */  addiu      $v1, $v1, %lo(D_80067E20)
    /* 276F4 80071958 0000628C */  lw         $v0, 0x0($v1)
    /* 276F8 8007195C 00000000 */  nop
    /* 276FC 80071960 78004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071B44
    /* 27700 80071964 00000000 */   nop
    /* 27704 80071968 0680023C */  lui        $v0, %hi(D_80067E28)
    /* 27708 8007196C 287E428C */  lw         $v0, %lo(D_80067E28)($v0)
    /* 2770C 80071970 00000000 */  nop
    /* 27710 80071974 55004004 */  bltz       $v0, .Ltitlescreen_and_loading_80071ACC
    /* 27714 80071978 00000000 */   nop
    /* 27718 8007197C 0680023C */  lui        $v0, %hi(D_80067E24)
    /* 2771C 80071980 247E428C */  lw         $v0, %lo(D_80067E24)($v0)
    /* 27720 80071984 00000000 */  nop
    /* 27724 80071988 80100200 */  sll        $v0, $v0, 2
    /* 27728 8007198C 21106200 */  addu       $v0, $v1, $v0
    /* 2772C 80071990 3400438C */  lw         $v1, 0x34($v0)
    /* 27730 80071994 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 27734 80071998 4C006210 */  beq        $v1, $v0, .Ltitlescreen_and_loading_80071ACC
    /* 27738 8007199C 00000000 */   nop
    /* 2773C 800719A0 0680023C */  lui        $v0, %hi(D_80067E1C)
    /* 27740 800719A4 1C7E428C */  lw         $v0, %lo(D_80067E1C)($v0)
    /* 27744 800719A8 00000000 */  nop
    /* 27748 800719AC 16004014 */  bnez       $v0, .Ltitlescreen_and_loading_80071A08
    /* 2774C 800719B0 00010524 */   addiu     $a1, $zero, 0x100
    /* 27750 800719B4 29008228 */  slti       $v0, $a0, 0x29
    /* 27754 800719B8 0A004010 */  beqz       $v0, .Ltitlescreen_and_loading_800719E4
    /* 27758 800719BC 21300002 */   addu      $a2, $s0, $zero
    /* 2775C 800719C0 0680023C */  lui        $v0, %hi(D_80067118)
    /* 27760 800719C4 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 27764 800719C8 00000000 */  nop
    /* 27768 800719CC 80100200 */  sll        $v0, $v0, 2
    /* 2776C 800719D0 0680013C */  lui        $at, %hi(D_80061B60)
    /* 27770 800719D4 21082200 */  addu       $at, $at, $v0
    /* 27774 800719D8 601B248C */  lw         $a0, %lo(D_80061B60)($at)
    /* 27778 800719DC CFC60108 */  j          .Ltitlescreen_and_loading_80071B3C
    /* 2777C 800719E0 01000724 */   addiu     $a3, $zero, 0x1
  .Ltitlescreen_and_loading_800719E4:
    /* 27780 800719E4 0680023C */  lui        $v0, %hi(D_80067118)
    /* 27784 800719E8 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 27788 800719EC 00000000 */  nop
    /* 2778C 800719F0 80100200 */  sll        $v0, $v0, 2
    /* 27790 800719F4 0680013C */  lui        $at, %hi(D_80061B64)
    /* 27794 800719F8 21082200 */  addu       $at, $at, $v0
    /* 27798 800719FC 641B248C */  lw         $a0, %lo(D_80061B64)($at)
    /* 2779C 80071A00 CFC60108 */  j          .Ltitlescreen_and_loading_80071B3C
    /* 277A0 80071A04 01000724 */   addiu     $a3, $zero, 0x1
  .Ltitlescreen_and_loading_80071A08:
    /* 277A4 80071A08 0680023C */  lui        $v0, %hi(D_80067118)
    /* 277A8 80071A0C 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 277AC 80071A10 21300002 */  addu       $a2, $s0, $zero
    /* 277B0 80071A14 80100200 */  sll        $v0, $v0, 2
    /* 277B4 80071A18 0680013C */  lui        $at, %hi(D_80061B68)
    /* 277B8 80071A1C 21082200 */  addu       $at, $at, $v0
    /* 277BC 80071A20 681B248C */  lw         $a0, %lo(D_80061B68)($at)
    /* 277C0 80071A24 7B36010C */  jal        func_8004D9EC
    /* 277C4 80071A28 0B000724 */   addiu     $a3, $zero, 0xB
    /* 277C8 80071A2C 0000228E */  lw         $v0, 0x0($s1)
    /* 277CC 80071A30 00000000 */  nop
    /* 277D0 80071A34 10004228 */  slti       $v0, $v0, 0x10
    /* 277D4 80071A38 42004014 */  bnez       $v0, .Ltitlescreen_and_loading_80071B44
    /* 277D8 80071A3C 01000224 */   addiu     $v0, $zero, 0x1
    /* 277DC 80071A40 0680033C */  lui        $v1, %hi(D_80067E1C)
    /* 277E0 80071A44 1C7E638C */  lw         $v1, %lo(D_80067E1C)($v1)
    /* 277E4 80071A48 00000000 */  nop
    /* 277E8 80071A4C 0B006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80071A7C
    /* 277EC 80071A50 02000224 */   addiu     $v0, $zero, 0x2
    /* 277F0 80071A54 00010524 */  addiu      $a1, $zero, 0x100
    /* 277F4 80071A58 0680023C */  lui        $v0, %hi(D_80067118)
    /* 277F8 80071A5C 1871428C */  lw         $v0, %lo(D_80067118)($v0)
  alabel D_titlescreen_and_loading_80071A60
    /* 277FC 80071A60 00000000 */  nop
    /* 27800 80071A64 80100200 */  sll        $v0, $v0, 2
    /* 27804 80071A68 0680013C */  lui        $at, %hi(D_80061B6C)
  alabel D_titlescreen_and_loading_80071A6C
    /* 27808 80071A6C 21082200 */  addu       $at, $at, $v0
    /* 2780C 80071A70 6C1B248C */  lw         $a0, %lo(D_80061B6C)($at)
    /* 27810 80071A74 CEC60108 */  j          .Ltitlescreen_and_loading_80071B38
    /* 27814 80071A78 0D000626 */   addiu     $a2, $s0, 0xD
  .Ltitlescreen_and_loading_80071A7C:
    /* 27818 80071A7C 0A006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80071AA8
    /* 2781C 80071A80 00010524 */   addiu     $a1, $zero, 0x100
    /* 27820 80071A84 0680023C */  lui        $v0, %hi(D_80067118)
    /* 27824 80071A88 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 27828 80071A8C 00000000 */  nop
    /* 2782C 80071A90 80100200 */  sll        $v0, $v0, 2
    /* 27830 80071A94 0680013C */  lui        $at, %hi(D_80061B70)
    /* 27834 80071A98 21082200 */  addu       $at, $at, $v0
    /* 27838 80071A9C 701B248C */  lw         $a0, %lo(D_80061B70)($at)
    /* 2783C 80071AA0 CEC60108 */  j          .Ltitlescreen_and_loading_80071B38
    /* 27840 80071AA4 0D000626 */   addiu     $a2, $s0, 0xD
  .Ltitlescreen_and_loading_80071AA8:
    /* 27844 80071AA8 0680023C */  lui        $v0, %hi(D_80067118)
    /* 27848 80071AAC 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 2784C 80071AB0 00000000 */  nop
    /* 27850 80071AB4 80100200 */  sll        $v0, $v0, 2
    /* 27854 80071AB8 0680013C */  lui        $at, %hi(D_80061B74)
    /* 27858 80071ABC 21082200 */  addu       $at, $at, $v0
    /* 2785C 80071AC0 741B248C */  lw         $a0, %lo(D_80061B74)($at)
    /* 27860 80071AC4 CEC60108 */  j          .Ltitlescreen_and_loading_80071B38
    /* 27864 80071AC8 0D000626 */   addiu     $a2, $s0, 0xD
  .Ltitlescreen_and_loading_80071ACC:
    /* 27868 80071ACC 0680023C */  lui        $v0, %hi(D_80067E20)
    /* 2786C 80071AD0 207E428C */  lw         $v0, %lo(D_80067E20)($v0)
    /* 27870 80071AD4 00000000 */  nop
    /* 27874 80071AD8 1A004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071B44
    /* 27878 80071ADC 00010524 */   addiu     $a1, $zero, 0x100
    /* 2787C 80071AE0 0680023C */  lui        $v0, %hi(D_80067118)
    /* 27880 80071AE4 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 27884 80071AE8 21300002 */  addu       $a2, $s0, $zero
    /* 27888 80071AEC 80100200 */  sll        $v0, $v0, 2
    /* 2788C 80071AF0 0680013C */  lui        $at, %hi(D_80061B78)
    /* 27890 80071AF4 21082200 */  addu       $at, $at, $v0
    /* 27894 80071AF8 781B248C */  lw         $a0, %lo(D_80061B78)($at)
    /* 27898 80071AFC 7B36010C */  jal        func_8004D9EC
    /* 2789C 80071B00 0B000724 */   addiu     $a3, $zero, 0xB
    /* 278A0 80071B04 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 278A4 80071B08 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 278A8 80071B0C 00000000 */  nop
    /* 278AC 80071B10 1C004228 */  slti       $v0, $v0, 0x1C
    /* 278B0 80071B14 0B004014 */  bnez       $v0, .Ltitlescreen_and_loading_80071B44
    /* 278B4 80071B18 00010524 */   addiu     $a1, $zero, 0x100
    /* 278B8 80071B1C 0680023C */  lui        $v0, %hi(D_80067118)
    /* 278BC 80071B20 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 278C0 80071B24 0D000626 */  addiu      $a2, $s0, 0xD
    /* 278C4 80071B28 80100200 */  sll        $v0, $v0, 2
    /* 278C8 80071B2C 0680013C */  lui        $at, %hi(D_80061B7C)
    /* 278CC 80071B30 21082200 */  addu       $at, $at, $v0
    /* 278D0 80071B34 7C1B248C */  lw         $a0, %lo(D_80061B7C)($at)
  .Ltitlescreen_and_loading_80071B38:
    /* 278D4 80071B38 0B000724 */  addiu      $a3, $zero, 0xB
  .Ltitlescreen_and_loading_80071B3C:
    /* 278D8 80071B3C 7B36010C */  jal        func_8004D9EC
    /* 278DC 80071B40 00000000 */   nop
  .Ltitlescreen_and_loading_80071B44:
    /* 278E0 80071B44 0680103C */  lui        $s0, %hi(D_800673E4)
    /* 278E4 80071B48 E4731026 */  addiu      $s0, $s0, %lo(D_800673E4)
    /* 278E8 80071B4C 0000118E */  lw         $s1, 0x0($s0)
    /* 278EC 80071B50 5CA4000C */  jal        func_80029170
    /* 278F0 80071B54 000000AE */   sw        $zero, 0x0($s0)
    /* 278F4 80071B58 21280000 */  addu       $a1, $zero, $zero
    /* 278F8 80071B5C 0680043C */  lui        $a0, %hi(D_80067034)
    /* 278FC 80071B60 3470848C */  lw         $a0, %lo(D_80067034)($a0)
    /* 27900 80071B64 000C0624 */  addiu      $a2, $zero, 0xC00
    /* 27904 80071B68 00D08424 */  addiu      $a0, $a0, -0x3000
    /* 27908 80071B6C F96C000C */  jal        func_8001B3E4
    /* 2790C 80071B70 000011AE */   sw        $s1, 0x0($s0)
    /* 27910 80071B74 160E010C */  jal        func_80043858
    /* 27914 80071B78 00000000 */   nop
    /* 27918 80071B7C F61B010C */  jal        func_80046FD8
    /* 2791C 80071B80 00000000 */   nop
  .Ltitlescreen_and_loading_80071B84:
    /* 27920 80071B84 6F07010C */  jal        func_80041DBC
    /* 27924 80071B88 00000000 */   nop
    /* 27928 80071B8C 0680053C */  lui        $a1, %hi(D_80066F68)
    /* 2792C 80071B90 686FA58C */  lw         $a1, %lo(D_80066F68)($a1)
    /* 27930 80071B94 00000000 */  nop
    /* 27934 80071B98 0400A010 */  beqz       $a1, .Ltitlescreen_and_loading_80071BAC
    /* 27938 80071B9C 02000424 */   addiu     $a0, $zero, 0x2
    /* 2793C 80071BA0 2130A000 */  addu       $a2, $a1, $zero
    /* 27940 80071BA4 D235010C */  jal        func_8004D748
    /* 27944 80071BA8 2138A000 */   addu      $a3, $a1, $zero
  .Ltitlescreen_and_loading_80071BAC:
    /* 27948 80071BAC 6000BF8F */  lw         $ra, 0x60($sp)
    /* 2794C 80071BB0 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 27950 80071BB4 5800B48F */  lw         $s4, 0x58($sp)
    /* 27954 80071BB8 5400B38F */  lw         $s3, 0x54($sp)
    /* 27958 80071BBC 5000B28F */  lw         $s2, 0x50($sp)
    /* 2795C 80071BC0 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 27960 80071BC4 4800B08F */  lw         $s0, 0x48($sp)
    /* 27964 80071BC8 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 27968 80071BCC 0800E003 */  jr         $ra
    /* 2796C 80071BD0 00000000 */   nop
endlabel .Ltitlescreen_and_loading_80070FF0
