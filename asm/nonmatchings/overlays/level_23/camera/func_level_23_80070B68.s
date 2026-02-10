.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_23_80070B68, 0x4FC

glabel func_level_23_80070B68
    /* 19AE904 80070B68 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 19AE908 80070B6C 0680043C */  lui        $a0, %hi(D_80067FBC)
    /* 19AE90C 80070B70 BC7F8424 */  addiu      $a0, $a0, %lo(D_80067FBC)
    /* 19AE910 80070B74 4400BFAF */  sw         $ra, 0x44($sp)
    /* 19AE914 80070B78 4000B4AF */  sw         $s4, 0x40($sp)
    /* 19AE918 80070B7C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 19AE91C 80070B80 3800B2AF */  sw         $s2, 0x38($sp)
    /* 19AE920 80070B84 3400B1AF */  sw         $s1, 0x34($sp)
    /* 19AE924 80070B88 3000B0AF */  sw         $s0, 0x30($sp)
    /* 19AE928 80070B8C 0000828C */  lw         $v0, 0x0($a0)
    /* 19AE92C 80070B90 00000000 */  nop
    /* 19AE930 80070B94 02004224 */  addiu      $v0, $v0, 0x2
    /* 19AE934 80070B98 83A00200 */  sra        $s4, $v0, 2
    /* 19AE938 80070B9C 0500822A */  slti       $v0, $s4, 0x5
    /* 19AE93C 80070BA0 02004014 */  bnez       $v0, .Llevel_23_80070BAC
    /* 19AE940 80070BA4 00000000 */   nop
    /* 19AE944 80070BA8 04001424 */  addiu      $s4, $zero, 0x4
  .Llevel_23_80070BAC:
    /* 19AE948 80070BAC 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 19AE94C 80070BB0 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 19AE950 80070BB4 04000224 */  addiu      $v0, $zero, 0x4
    /* 19AE954 80070BB8 05006210 */  beq        $v1, $v0, .Llevel_23_80070BD0
    /* 19AE958 80070BBC 13000224 */   addiu     $v0, $zero, 0x13
    /* 19AE95C 80070BC0 71006210 */  beq        $v1, $v0, .Llevel_23_80070D88
    /* 19AE960 80070BC4 01001124 */   addiu     $s1, $zero, 0x1
    /* 19AE964 80070BC8 10C40108 */  j          .Llevel_23_80071040
    /* 19AE968 80070BCC 00000000 */   nop
  .Llevel_23_80070BD0:
    /* 19AE96C 80070BD0 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 19AE970 80070BD4 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 19AE974 80070BD8 00000000 */  nop
    /* 19AE978 80070BDC 2F004014 */  bnez       $v0, .Llevel_23_80070C9C
    /* 19AE97C 80070BE0 00000000 */   nop
    /* 19AE980 80070BE4 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 19AE984 80070BE8 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 19AE988 80070BEC 0680053C */  lui        $a1, %hi(D_800615D8)
    /* 19AE98C 80070BF0 D815A524 */  addiu      $a1, $a1, %lo(D_800615D8)
    /* 19AE990 80070BF4 337B000C */  jal        func_8001ECCC
    /* 19AE994 80070BF8 58FF8424 */   addiu     $a0, $a0, -0xA8
    /* 19AE998 80070BFC 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 19AE99C 80070C00 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 19AE9A0 80070C04 0680033C */  lui        $v1, %hi(D_80067F04)
    /* 19AE9A4 80070C08 047F638C */  lw         $v1, %lo(D_80067F04)($v1)
    /* 19AE9A8 80070C0C 23100200 */  negu       $v0, $v0
    /* 19AE9AC 80070C10 23184300 */  subu       $v1, $v0, $v1
    /* 19AE9B0 80070C14 83180300 */  sra        $v1, $v1, 2
    /* 19AE9B4 80070C18 0680013C */  lui        $at, %hi(D_80067F18)
    /* 19AE9B8 80070C1C 187F22AC */  sw         $v0, %lo(D_80067F18)($at)
    /* 19AE9BC 80070C20 C1006228 */  slti       $v0, $v1, 0xC1
    /* 19AE9C0 80070C24 03004014 */  bnez       $v0, .Llevel_23_80070C34
    /* 19AE9C4 80070C28 40FF6228 */   slti      $v0, $v1, -0xC0
    /* 19AE9C8 80070C2C C0000324 */  addiu      $v1, $zero, 0xC0
    /* 19AE9CC 80070C30 40FF6228 */  slti       $v0, $v1, -0xC0
  .Llevel_23_80070C34:
    /* 19AE9D0 80070C34 02004010 */  beqz       $v0, .Llevel_23_80070C40
    /* 19AE9D4 80070C38 00000000 */   nop
    /* 19AE9D8 80070C3C 40FF0324 */  addiu      $v1, $zero, -0xC0
  .Llevel_23_80070C40:
    /* 19AE9DC 80070C40 02006104 */  bgez       $v1, .Llevel_23_80070C4C
    /* 19AE9E0 80070C44 21106000 */   addu      $v0, $v1, $zero
    /* 19AE9E4 80070C48 23100200 */  negu       $v0, $v0
  .Llevel_23_80070C4C:
    /* 19AE9E8 80070C4C 09004228 */  slti       $v0, $v0, 0x9
    /* 19AE9EC 80070C50 05004014 */  bnez       $v0, .Llevel_23_80070C68
    /* 19AE9F0 80070C54 00000000 */   nop
    /* 19AE9F4 80070C58 0680013C */  lui        $at, %hi(D_80067F20)
    /* 19AE9F8 80070C5C 207F23AC */  sw         $v1, %lo(D_80067F20)($at)
    /* 19AE9FC 80070C60 1CC30108 */  j          .Llevel_23_80070C70
    /* 19AEA00 80070C64 00000000 */   nop
  .Llevel_23_80070C68:
    /* 19AEA04 80070C68 0680013C */  lui        $at, %hi(D_80067F20)
    /* 19AEA08 80070C6C 207F20AC */  sw         $zero, %lo(D_80067F20)($at)
  .Llevel_23_80070C70:
    /* 19AEA0C 80070C70 0780023C */  lui        $v0, %hi(D_8006A054)
    /* 19AEA10 80070C74 54A0428C */  lw         $v0, %lo(D_8006A054)($v0)
    /* 19AEA14 80070C78 00000000 */  nop
    /* 19AEA18 80070C7C 23100200 */  negu       $v0, $v0
    /* 19AEA1C 80070C80 83100200 */  sra        $v0, $v0, 2
    /* 19AEA20 80070C84 0680013C */  lui        $at, %hi(D_80067F24)
    /* 19AEA24 80070C88 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
    /* 19AEA28 80070C8C 087C000C */  jal        func_8001F020
    /* 19AEA2C 80070C90 80010424 */   addiu     $a0, $zero, 0x180
    /* 19AEA30 80070C94 2F7C000C */  jal        func_8001F0BC
    /* 19AEA34 80070C98 00000000 */   nop
  .Llevel_23_80070C9C:
    /* 19AEA38 80070C9C 0680103C */  lui        $s0, %hi(D_80067EE4)
    /* 19AEA3C 80070CA0 E47E1026 */  addiu      $s0, $s0, %lo(D_80067EE4)
    /* 19AEA40 80070CA4 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 19AEA44 80070CA8 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 19AEA48 80070CAC 6C6F000C */  jal        func_8001BDB0
    /* 19AEA4C 80070CB0 21200002 */   addu      $a0, $s0, $zero
    /* 19AEA50 80070CB4 80000426 */  addiu      $a0, $s0, 0x80
    /* 19AEA54 80070CB8 80101400 */  sll        $v0, $s4, 2
    /* 19AEA58 80070CBC 21105400 */  addu       $v0, $v0, $s4
    /* 19AEA5C 80070CC0 80880200 */  sll        $s1, $v0, 2
    /* 19AEA60 80070CC4 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 19AEA64 80070CC8 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 19AEA68 80070CCC 21282502 */  addu       $a1, $s1, $a1
    /* 19AEA6C 80070CD0 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 19AEA70 80070CD4 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 19AEA74 80070CD8 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 19AEA78 80070CDC F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 19AEA7C 80070CE0 337B000C */  jal        func_8001ECCC
    /* 19AEA80 80070CE4 21300000 */   addu      $a2, $zero, $zero
    /* 19AEA84 80070CE8 8000028E */  lw         $v0, 0x80($s0)
    /* 19AEA88 80070CEC 00000000 */  nop
    /* 19AEA8C 80070CF0 80004228 */  slti       $v0, $v0, 0x80
    /* 19AEA90 80070CF4 02004010 */  beqz       $v0, .Llevel_23_80070D00
    /* 19AEA94 80070CF8 80000224 */   addiu     $v0, $zero, 0x80
    /* 19AEA98 80070CFC 800002AE */  sw         $v0, 0x80($s0)
  .Llevel_23_80070D00:
    /* 19AEA9C 80070D00 0680023C */  lui        $v0, %hi(D_80067F68)
    /* 19AEAA0 80070D04 687F428C */  lw         $v0, %lo(D_80067F68)($v0)
    /* 19AEAA4 80070D08 00000000 */  nop
    /* 19AEAA8 80070D0C 60004228 */  slti       $v0, $v0, 0x60
    /* 19AEAAC 80070D10 03004010 */  beqz       $v0, .Llevel_23_80070D20
    /* 19AEAB0 80070D14 60000224 */   addiu     $v0, $zero, 0x60
    /* 19AEAB4 80070D18 0680013C */  lui        $at, %hi(D_80067F68)
    /* 19AEAB8 80070D1C 687F22AC */  sw         $v0, %lo(D_80067F68)($at)
  .Llevel_23_80070D20:
    /* 19AEABC 80070D20 0680023C */  lui        $v0, %hi(D_80067F74)
    /* 19AEAC0 80070D24 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* 19AEAC4 80070D28 00000000 */  nop
    /* 19AEAC8 80070D2C 40004228 */  slti       $v0, $v0, 0x40
    /* 19AEACC 80070D30 03004010 */  beqz       $v0, .Llevel_23_80070D40
    /* 19AEAD0 80070D34 40000224 */   addiu     $v0, $zero, 0x40
    /* 19AEAD4 80070D38 0680013C */  lui        $at, %hi(D_80067F74)
    /* 19AEAD8 80070D3C 747F22AC */  sw         $v0, %lo(D_80067F74)($at)
  .Llevel_23_80070D40:
    /* 19AEADC 80070D40 94000426 */  addiu      $a0, $s0, 0x94
    /* 19AEAE0 80070D44 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 19AEAE4 80070D48 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 19AEAE8 80070D4C 21282502 */  addu       $a1, $s1, $a1
    /* 19AEAEC 80070D50 337B000C */  jal        func_8001ECCC
    /* 19AEAF0 80070D54 21300000 */   addu      $a2, $zero, $zero
    /* 19AEAF4 80070D58 A8000426 */  addiu      $a0, $s0, 0xA8
    /* 19AEAF8 80070D5C 0680053C */  lui        $a1, %hi(D_80061858)
    /* 19AEAFC 80070D60 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 19AEB00 80070D64 337B000C */  jal        func_8001ECCC
    /* 19AEB04 80070D68 21300000 */   addu      $a2, $zero, $zero
    /* 19AEB08 80070D6C BC000426 */  addiu      $a0, $s0, 0xBC
    /* 19AEB0C 80070D70 0680053C */  lui        $a1, %hi(D_80061844)
    /* 19AEB10 80070D74 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 19AEB14 80070D78 337B000C */  jal        func_8001ECCC
    /* 19AEB18 80070D7C 21300000 */   addu      $a2, $zero, $zero
    /* 19AEB1C 80070D80 10C40108 */  j          .Llevel_23_80071040
    /* 19AEB20 80070D84 00000000 */   nop
  .Llevel_23_80070D88:
    /* 19AEB24 80070D88 0680023C */  lui        $v0, %hi(D_80067FF0)
    /* 19AEB28 80070D8C F07F428C */  lw         $v0, %lo(D_80067FF0)($v0)
    /* 19AEB2C 80070D90 00000000 */  nop
    /* 19AEB30 80070D94 0000538C */  lw         $s3, 0x0($v0)
    /* 19AEB34 80070D98 00000000 */  nop
    /* 19AEB38 80070D9C 0000648E */  lw         $a0, 0x0($s3)
    /* 19AEB3C 80070DA0 00000000 */  nop
    /* 19AEB40 80070DA4 00008284 */  lh         $v0, 0x0($a0)
    /* 19AEB44 80070DA8 00000000 */  nop
    /* 19AEB48 80070DAC 2A102202 */  slt        $v0, $s1, $v0
    /* 19AEB4C 80070DB0 0E004010 */  beqz       $v0, .Llevel_23_80070DEC
    /* 19AEB50 80070DB4 00111100 */   sll       $v0, $s1, 4
    /* 19AEB54 80070DB8 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 19AEB58 80070DBC F09FA58C */  lw         $a1, %lo(D_80069FF0)($a1)
  .Llevel_23_80070DC0:
    /* 19AEB5C 80070DC0 21108200 */  addu       $v0, $a0, $v0
    /* 19AEB60 80070DC4 0C00428C */  lw         $v0, 0xC($v0)
    /* 19AEB64 80070DC8 00000000 */  nop
    /* 19AEB68 80070DCC 2A10A200 */  slt        $v0, $a1, $v0
    /* 19AEB6C 80070DD0 06004014 */  bnez       $v0, .Llevel_23_80070DEC
    /* 19AEB70 80070DD4 21188000 */   addu      $v1, $a0, $zero
    /* 19AEB74 80070DD8 00006284 */  lh         $v0, 0x0($v1)
    /* 19AEB78 80070DDC 01003126 */  addiu      $s1, $s1, 0x1
    /* 19AEB7C 80070DE0 2A102202 */  slt        $v0, $s1, $v0
    /* 19AEB80 80070DE4 F6FF4014 */  bnez       $v0, .Llevel_23_80070DC0
    /* 19AEB84 80070DE8 00111100 */   sll       $v0, $s1, 4
  .Llevel_23_80070DEC:
    /* 19AEB88 80070DEC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 19AEB8C 80070DF0 00811100 */  sll        $s0, $s1, 4
    /* 19AEB90 80070DF4 0C000526 */  addiu      $a1, $s0, 0xC
    /* 19AEB94 80070DF8 0000668E */  lw         $a2, 0x0($s3)
    /* 19AEB98 80070DFC FCFF1226 */  addiu      $s2, $s0, -0x4
    /* 19AEB9C 80070E00 2128C500 */  addu       $a1, $a2, $a1
    /* 19AEBA0 80070E04 806F000C */  jal        func_8001BE00
    /* 19AEBA4 80070E08 2130D200 */   addu      $a2, $a2, $s2
    /* 19AEBA8 80070E0C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 19AEBAC 80070E10 FFFF2226 */  addiu      $v0, $s1, -0x1
    /* 19AEBB0 80070E14 00110200 */  sll        $v0, $v0, 4
    /* 19AEBB4 80070E18 0000638E */  lw         $v1, 0x0($s3)
    /* 19AEBB8 80070E1C 0780113C */  lui        $s1, %hi(D_80069FF0)
    /* 19AEBBC 80070E20 F09F3126 */  addiu      $s1, $s1, %lo(D_80069FF0)
    /* 19AEBC0 80070E24 21807000 */  addu       $s0, $v1, $s0
    /* 19AEBC4 80070E28 21186200 */  addu       $v1, $v1, $v0
    /* 19AEBC8 80070E2C 0C00058E */  lw         $a1, 0xC($s0)
    /* 19AEBCC 80070E30 0C00628C */  lw         $v0, 0xC($v1)
    /* 19AEBD0 80070E34 0000268E */  lw         $a2, 0x0($s1)
    /* 19AEBD4 80070E38 2328A200 */  subu       $a1, $a1, $v0
    /* 19AEBD8 80070E3C 316F000C */  jal        func_8001BCC4
    /* 19AEBDC 80070E40 2330C200 */   subu      $a2, $a2, $v0
    /* 19AEBE0 80070E44 1000A427 */  addiu      $a0, $sp, 0x10
    /* 19AEBE4 80070E48 0000668E */  lw         $a2, 0x0($s3)
    /* 19AEBE8 80070E4C 21288000 */  addu       $a1, $a0, $zero
    /* 19AEBEC 80070E50 736F000C */  jal        func_8001BDCC
    /* 19AEBF0 80070E54 2130D200 */   addu      $a2, $a2, $s2
    /* 19AEBF4 80070E58 0680123C */  lui        $s2, %hi(D_80067F14)
    /* 19AEBF8 80070E5C 147F5226 */  addiu      $s2, $s2, %lo(D_80067F14)
    /* 19AEBFC 80070E60 21204002 */  addu       $a0, $s2, $zero
    /* 19AEC00 80070E64 0680063C */  lui        $a2, %hi(D_80067FF0)
    /* 19AEC04 80070E68 F07FC68C */  lw         $a2, %lo(D_80067FF0)($a2)
    /* 19AEC08 80070E6C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 19AEC0C 80070E70 867B000C */  jal        func_8001EE18
    /* 19AEC10 80070E74 0C00C624 */   addiu     $a2, $a2, 0xC
    /* 19AEC14 80070E78 2000B027 */  addiu      $s0, $sp, 0x20
    /* 19AEC18 80070E7C 21200002 */  addu       $a0, $s0, $zero
    /* 19AEC1C 80070E80 6C6F000C */  jal        func_8001BDB0
    /* 19AEC20 80070E84 94002526 */   addiu     $a1, $s1, 0x94
    /* 19AEC24 80070E88 21200002 */  addu       $a0, $s0, $zero
    /* 19AEC28 80070E8C 526F000C */  jal        func_8001BD48
    /* 19AEC2C 80070E90 03000524 */   addiu     $a1, $zero, 0x3
    /* 19AEC30 80070E94 21200002 */  addu       $a0, $s0, $zero
    /* 19AEC34 80070E98 21282002 */  addu       $a1, $s1, $zero
    /* 19AEC38 80070E9C 736F000C */  jal        func_8001BDCC
    /* 19AEC3C 80070EA0 21300002 */   addu      $a2, $s0, $zero
    /* 19AEC40 80070EA4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 19AEC44 80070EA8 21280002 */  addu       $a1, $s0, $zero
    /* 19AEC48 80070EAC 806F000C */  jal        func_8001BE00
    /* 19AEC4C 80070EB0 21308000 */   addu      $a2, $a0, $zero
    /* 19AEC50 80070EB4 1000A48F */  lw         $a0, 0x10($sp)
    /* 19AEC54 80070EB8 1400A58F */  lw         $a1, 0x14($sp)
    /* 19AEC58 80070EBC 2E6D000C */  jal        func_8001B4B8
    /* 19AEC5C 80070EC0 01000624 */   addiu     $a2, $zero, 0x1
    /* 19AEC60 80070EC4 0000438E */  lw         $v1, 0x0($s2)
    /* 19AEC64 80070EC8 00084224 */  addiu      $v0, $v0, 0x800
    /* 19AEC68 80070ECC 23104300 */  subu       $v0, $v0, $v1
    /* 19AEC6C 80070ED0 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 19AEC70 80070ED4 01086228 */  slti       $v0, $v1, 0x801
    /* 19AEC74 80070ED8 0680013C */  lui        $at, %hi(D_80067F24)
    /* 19AEC78 80070EDC 247F23AC */  sw         $v1, %lo(D_80067F24)($at)
    /* 19AEC7C 80070EE0 04004014 */  bnez       $v0, .Llevel_23_80070EF4
    /* 19AEC80 80070EE4 1000A427 */   addiu     $a0, $sp, 0x10
    /* 19AEC84 80070EE8 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 19AEC88 80070EEC 0680013C */  lui        $at, %hi(D_80067F24)
    /* 19AEC8C 80070EF0 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
  .Llevel_23_80070EF4:
    /* 19AEC90 80070EF4 0680033C */  lui        $v1, %hi(D_80067F24)
    /* 19AEC94 80070EF8 247F638C */  lw         $v1, %lo(D_80067F24)($v1)
    /* 19AEC98 80070EFC 00000000 */  nop
    /* 19AEC9C 80070F00 40100300 */  sll        $v0, $v1, 1
    /* 19AECA0 80070F04 21104300 */  addu       $v0, $v0, $v1
    /* 19AECA4 80070F08 83100200 */  sra        $v0, $v0, 2
    /* 19AECA8 80070F0C 0680013C */  lui        $at, %hi(D_80067F24)
    /* 19AECAC 80070F10 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
    /* 19AECB0 80070F14 886E000C */  jal        func_8001BA20
    /* 19AECB4 80070F18 21280000 */   addu      $a1, $zero, $zero
    /* 19AECB8 80070F1C 21204000 */  addu       $a0, $v0, $zero
    /* 19AECBC 80070F20 1800A58F */  lw         $a1, 0x18($sp)
    /* 19AECC0 80070F24 2E6D000C */  jal        func_8001B4B8
    /* 19AECC4 80070F28 01000624 */   addiu     $a2, $zero, 0x1
    /* 19AECC8 80070F2C 0680033C */  lui        $v1, %hi(D_80067F18)
    /* 19AECCC 80070F30 187F638C */  lw         $v1, %lo(D_80067F18)($v1)
    /* 19AECD0 80070F34 00000000 */  nop
    /* 19AECD4 80070F38 23180300 */  negu       $v1, $v1
    /* 19AECD8 80070F3C 23186200 */  subu       $v1, $v1, $v0
    /* 19AECDC 80070F40 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 19AECE0 80070F44 01086228 */  slti       $v0, $v1, 0x801
    /* 19AECE4 80070F48 0680013C */  lui        $at, %hi(D_80067F20)
    /* 19AECE8 80070F4C 207F23AC */  sw         $v1, %lo(D_80067F20)($at)
    /* 19AECEC 80070F50 04004014 */  bnez       $v0, .Llevel_23_80070F64
    /* 19AECF0 80070F54 D0FF4426 */   addiu     $a0, $s2, -0x30
    /* 19AECF4 80070F58 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 19AECF8 80070F5C 0680013C */  lui        $at, %hi(D_80067F20)
    /* 19AECFC 80070F60 207F22AC */  sw         $v0, %lo(D_80067F20)($at)
  .Llevel_23_80070F64:
    /* 19AED00 80070F64 0680053C */  lui        $a1, %hi(D_80067FF0)
    /* 19AED04 80070F68 F07FA58C */  lw         $a1, %lo(D_80067FF0)($a1)
    /* 19AED08 80070F6C 0680033C */  lui        $v1, %hi(D_80067F20)
    /* 19AED0C 80070F70 207F638C */  lw         $v1, %lo(D_80067F20)($v1)
    /* 19AED10 80070F74 00000000 */  nop
    /* 19AED14 80070F78 40100300 */  sll        $v0, $v1, 1
    /* 19AED18 80070F7C 21104300 */  addu       $v0, $v0, $v1
    /* 19AED1C 80070F80 83100200 */  sra        $v0, $v0, 2
    /* 19AED20 80070F84 0680013C */  lui        $at, %hi(D_80067F20)
    /* 19AED24 80070F88 207F22AC */  sw         $v0, %lo(D_80067F20)($at)
    /* 19AED28 80070F8C 6C6F000C */  jal        func_8001BDB0
    /* 19AED2C 80070F90 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 19AED30 80070F94 50004426 */  addiu      $a0, $s2, 0x50
    /* 19AED34 80070F98 80801400 */  sll        $s0, $s4, 2
    /* 19AED38 80070F9C 21801402 */  addu       $s0, $s0, $s4
    /* 19AED3C 80070FA0 80801000 */  sll        $s0, $s0, 2
    /* 19AED40 80070FA4 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 19AED44 80070FA8 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 19AED48 80070FAC 21280502 */  addu       $a1, $s0, $a1
    /* 19AED4C 80070FB0 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 19AED50 80070FB4 F07E20AC */  sw         $zero, %lo(D_80067EF0)($at)
    /* 19AED54 80070FB8 337B000C */  jal        func_8001ECCC
    /* 19AED58 80070FBC 21300000 */   addu      $a2, $zero, $zero
    /* 19AED5C 80070FC0 64004426 */  addiu      $a0, $s2, 0x64
    /* 19AED60 80070FC4 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 19AED64 80070FC8 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 19AED68 80070FCC 21280502 */  addu       $a1, $s0, $a1
    /* 19AED6C 80070FD0 337B000C */  jal        func_8001ECCC
    /* 19AED70 80070FD4 21300000 */   addu      $a2, $zero, $zero
    /* 19AED74 80070FD8 78004426 */  addiu      $a0, $s2, 0x78
    /* 19AED78 80070FDC 0680053C */  lui        $a1, %hi(D_80061858)
    /* 19AED7C 80070FE0 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 19AED80 80070FE4 337B000C */  jal        func_8001ECCC
    /* 19AED84 80070FE8 21300000 */   addu      $a2, $zero, $zero
    /* 19AED88 80070FEC 8C004426 */  addiu      $a0, $s2, 0x8C
    /* 19AED8C 80070FF0 0680053C */  lui        $a1, %hi(D_80061844)
    /* 19AED90 80070FF4 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 19AED94 80070FF8 337B000C */  jal        func_8001ECCC
    /* 19AED98 80070FFC 21300000 */   addu      $a2, $zero, $zero
    /* 19AED9C 80071000 0680023C */  lui        $v0, %hi(D_80067F70)
    /* 19AEDA0 80071004 707F428C */  lw         $v0, %lo(D_80067F70)($v0)
    /* 19AEDA4 80071008 00000000 */  nop
    /* 19AEDA8 8007100C 40004228 */  slti       $v0, $v0, 0x40
    /* 19AEDAC 80071010 03004010 */  beqz       $v0, .Llevel_23_80071020
    /* 19AEDB0 80071014 40000224 */   addiu     $v0, $zero, 0x40
    /* 19AEDB4 80071018 0680013C */  lui        $at, %hi(D_80067F70)
    /* 19AEDB8 8007101C 707F22AC */  sw         $v0, %lo(D_80067F70)($at)
  .Llevel_23_80071020:
    /* 19AEDBC 80071020 0680023C */  lui        $v0, %hi(D_80067F74)
    /* 19AEDC0 80071024 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* 19AEDC4 80071028 00000000 */  nop
    /* 19AEDC8 8007102C 40004228 */  slti       $v0, $v0, 0x40
    /* 19AEDCC 80071030 03004010 */  beqz       $v0, .Llevel_23_80071040
    /* 19AEDD0 80071034 40000224 */   addiu     $v0, $zero, 0x40
    /* 19AEDD4 80071038 0680013C */  lui        $at, %hi(D_80067F74)
    /* 19AEDD8 8007103C 747F22AC */  sw         $v0, %lo(D_80067F74)($at)
  .Llevel_23_80071040:
    /* 19AEDDC 80071040 4400BF8F */  lw         $ra, 0x44($sp)
    /* 19AEDE0 80071044 4000B48F */  lw         $s4, 0x40($sp)
    /* 19AEDE4 80071048 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 19AEDE8 8007104C 3800B28F */  lw         $s2, 0x38($sp)
    /* 19AEDEC 80071050 3400B18F */  lw         $s1, 0x34($sp)
    /* 19AEDF0 80071054 3000B08F */  lw         $s0, 0x30($sp)
    /* 19AEDF4 80071058 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 19AEDF8 8007105C 0800E003 */  jr         $ra
    /* 19AEDFC 80071060 00000000 */   nop
endlabel func_level_23_80070B68
