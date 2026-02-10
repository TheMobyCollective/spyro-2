.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80077068, 0x128

glabel func_titlescreen_and_loading_80077068
    /* 2CE04 80077068 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2CE08 8007706C 0680053C */  lui        $a1, %hi(D_80067E30)
    /* 2CE0C 80077070 307EA524 */  addiu      $a1, $a1, %lo(D_80067E30)
    /* 2CE10 80077074 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2CE14 80077078 0000A38C */  lw         $v1, 0x0($a1)
    /* 2CE18 8007707C 02000224 */  addiu      $v0, $zero, 0x2
    /* 2CE1C 80077080 0F006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_800770C0
    /* 2CE20 80077084 21200000 */   addu      $a0, $zero, $zero
    /* 2CE24 80077088 0680023C */  lui        $v0, %hi(D_80067E38)
    /* 2CE28 8007708C 387E428C */  lw         $v0, %lo(D_80067E38)($v0)
    /* 2CE2C 80077090 01000524 */  addiu      $a1, $zero, 0x1
    /* 2CE30 80077094 29004510 */  beq        $v0, $a1, .Ltitlescreen_and_loading_8007713C
    /* 2CE34 80077098 03000324 */   addiu     $v1, $zero, 0x3
    /* 2CE38 8007709C 27004310 */  beq        $v0, $v1, .Ltitlescreen_and_loading_8007713C
    /* 2CE3C 800770A0 00000000 */   nop
    /* 2CE40 800770A4 0680023C */  lui        $v0, %hi(D_80067E3C)
    /* 2CE44 800770A8 3C7E428C */  lw         $v0, %lo(D_80067E3C)($v0)
    /* 2CE48 800770AC 00000000 */  nop
    /* 2CE4C 800770B0 22004510 */  beq        $v0, $a1, .Ltitlescreen_and_loading_8007713C
    /* 2CE50 800770B4 00000000 */   nop
    /* 2CE54 800770B8 4DDC0108 */  j          .Ltitlescreen_and_loading_80077134
    /* 2CE58 800770BC 00000000 */   nop
  .Ltitlescreen_and_loading_800770C0:
    /* 2CE5C 800770C0 10006004 */  bltz       $v1, .Ltitlescreen_and_loading_80077104
    /* 2CE60 800770C4 0800A524 */   addiu     $a1, $a1, 0x8
    /* 2CE64 800770C8 0680023C */  lui        $v0, %hi(D_80067E30)
    /* 2CE68 800770CC 307E428C */  lw         $v0, %lo(D_80067E30)($v0)
    /* 2CE6C 800770D0 00000000 */  nop
    /* 2CE70 800770D4 80100200 */  sll        $v0, $v0, 2
    /* 2CE74 800770D8 21104500 */  addu       $v0, $v0, $a1
    /* 2CE78 800770DC 0000428C */  lw         $v0, 0x0($v0)
    /* 2CE7C 800770E0 00000000 */  nop
    /* 2CE80 800770E4 15004014 */  bnez       $v0, .Ltitlescreen_and_loading_8007713C
    /* 2CE84 800770E8 01000224 */   addiu     $v0, $zero, 0x1
    /* 2CE88 800770EC 23104300 */  subu       $v0, $v0, $v1
    /* 2CE8C 800770F0 80100200 */  sll        $v0, $v0, 2
    /* 2CE90 800770F4 21104500 */  addu       $v0, $v0, $a1
    /* 2CE94 800770F8 0000438C */  lw         $v1, 0x0($v0)
    /* 2CE98 800770FC 4DDC0108 */  j          .Ltitlescreen_and_loading_80077134
    /* 2CE9C 80077100 03000224 */   addiu     $v0, $zero, 0x3
  .Ltitlescreen_and_loading_80077104:
    /* 2CEA0 80077104 0680023C */  lui        $v0, %hi(D_80067E38)
    /* 2CEA4 80077108 387E428C */  lw         $v0, %lo(D_80067E38)($v0)
    /* 2CEA8 8007710C 00000000 */  nop
    /* 2CEAC 80077110 0A004010 */  beqz       $v0, .Ltitlescreen_and_loading_8007713C
    /* 2CEB0 80077114 03000324 */   addiu     $v1, $zero, 0x3
    /* 2CEB4 80077118 08004310 */  beq        $v0, $v1, .Ltitlescreen_and_loading_8007713C
    /* 2CEB8 8007711C 00000000 */   nop
    /* 2CEBC 80077120 0680023C */  lui        $v0, %hi(D_80067E3C)
    /* 2CEC0 80077124 3C7E428C */  lw         $v0, %lo(D_80067E3C)($v0)
    /* 2CEC4 80077128 00000000 */  nop
    /* 2CEC8 8007712C 03004010 */  beqz       $v0, .Ltitlescreen_and_loading_8007713C
    /* 2CECC 80077130 00000000 */   nop
  .Ltitlescreen_and_loading_80077134:
    /* 2CED0 80077134 02004314 */  bne        $v0, $v1, .Ltitlescreen_and_loading_80077140
    /* 2CED4 80077138 00000000 */   nop
  .Ltitlescreen_and_loading_8007713C:
    /* 2CED8 8007713C 01000424 */  addiu      $a0, $zero, 0x1
  .Ltitlescreen_and_loading_80077140:
    /* 2CEDC 80077140 03008014 */  bnez       $a0, .Ltitlescreen_and_loading_80077150
    /* 2CEE0 80077144 01000224 */   addiu     $v0, $zero, 0x1
    /* 2CEE4 80077148 60DC0108 */  j          .Ltitlescreen_and_loading_80077180
    /* 2CEE8 8007714C 21100000 */   addu      $v0, $zero, $zero
  .Ltitlescreen_and_loading_80077150:
    /* 2CEEC 80077150 0680063C */  lui        $a2, %hi(D_80067E04)
    /* 2CEF0 80077154 047EC624 */  addiu      $a2, $a2, %lo(D_80067E04)
    /* 2CEF4 80077158 21200000 */  addu       $a0, $zero, $zero
    /* 2CEF8 8007715C 6400C524 */  addiu      $a1, $a2, 0x64
    /* 2CEFC 80077160 0000C2AC */  sw         $v0, 0x0($a2)
    /* 2CF00 80077164 0680013C */  lui        $at, %hi(D_80067E0C)
    /* 2CF04 80077168 0C7E20AC */  sw         $zero, %lo(D_80067E0C)($at)
    /* 2CF08 8007716C 0680013C */  lui        $at, %hi(D_80067E08)
    /* 2CF0C 80077170 087E20AC */  sw         $zero, %lo(D_80067E08)($at)
    /* 2CF10 80077174 0FF7010C */  jal        func_titlescreen_and_loading_8007DC3C
    /* 2CF14 80077178 6800C624 */   addiu     $a2, $a2, 0x68
    /* 2CF18 8007717C 01000224 */  addiu      $v0, $zero, 0x1
  .Ltitlescreen_and_loading_80077180:
    /* 2CF1C 80077180 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2CF20 80077184 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2CF24 80077188 0800E003 */  jr         $ra
    /* 2CF28 8007718C 00000000 */   nop
endlabel func_titlescreen_and_loading_80077068
