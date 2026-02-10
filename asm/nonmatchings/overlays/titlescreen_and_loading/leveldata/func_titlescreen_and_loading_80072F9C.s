.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80072F9C, 0x33C

glabel func_titlescreen_and_loading_80072F9C
    /* 28D38 80072F9C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 28D3C 80072FA0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 28D40 80072FA4 0780103C */  lui        $s0, %hi(D_800698F0)
    /* 28D44 80072FA8 F0981026 */  addiu      $s0, $s0, %lo(D_800698F0)
    /* 28D48 80072FAC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 28D4C 80072FB0 0000048E */  lw         $a0, 0x0($s0)
    /* 28D50 80072FB4 00000000 */  nop
    /* 28D54 80072FB8 03008228 */  slti       $v0, $a0, 0x3
    /* 28D58 80072FBC C1004010 */  beqz       $v0, .Ltitlescreen_and_loading_800732C4
    /* 28D5C 80072FC0 00000000 */   nop
    /* 28D60 80072FC4 BF008018 */  blez       $a0, .Ltitlescreen_and_loading_800732C4
    /* 28D64 80072FC8 00000000 */   nop
    /* 28D68 80072FCC FCFF028E */  lw         $v0, -0x4($s0)
    /* 28D6C 80072FD0 00000000 */  nop
    /* 28D70 80072FD4 22004014 */  bnez       $v0, .Ltitlescreen_and_loading_80073060
    /* 28D74 80072FD8 01000224 */   addiu     $v0, $zero, 0x1
    /* 28D78 80072FDC 34008214 */  bne        $a0, $v0, .Ltitlescreen_and_loading_800730B0
    /* 28D7C 80072FE0 00000000 */   nop
    /* 28D80 80072FE4 0680023C */  lui        $v0, %hi(D_8006715C)
    /* 28D84 80072FE8 5C71428C */  lw         $v0, %lo(D_8006715C)($v0)
    /* 28D88 80072FEC 0680033C */  lui        $v1, %hi(D_80066F54)
    /* 28D8C 80072FF0 546F638C */  lw         $v1, %lo(D_80066F54)($v1)
    /* 28D90 80072FF4 0680013C */  lui        $at, %hi(D_800670C8)
    /* 28D94 80072FF8 C87024AC */  sw         $a0, %lo(D_800670C8)($at)
    /* 28D98 80072FFC 0680013C */  lui        $at, %hi(D_80066F90)
    /* 28D9C 80073000 906F22AC */  sw         $v0, %lo(D_80066F90)($at)
    /* 28DA0 80073004 0680013C */  lui        $at, %hi(D_80066FD0)
    /* 28DA4 80073008 D06F23AC */  sw         $v1, %lo(D_80066FD0)($at)
    /* 28DA8 8007300C 9BC2000C */  jal        func_80030A6C
    /* 28DAC 80073010 00000000 */   nop
    /* 28DB0 80073014 00400224 */  addiu      $v0, $zero, 0x4000
    /* 28DB4 80073018 0780013C */  lui        $at, %hi(D_80069FF0)
    /* 28DB8 8007301C F09F22AC */  sw         $v0, %lo(D_80069FF0)($at)
    /* 28DBC 80073020 0780013C */  lui        $at, %hi(D_80069FF4)
    /* 28DC0 80073024 F49F22AC */  sw         $v0, %lo(D_80069FF4)($at)
    /* 28DC4 80073028 0780013C */  lui        $at, %hi(D_80069FF8)
    /* 28DC8 8007302C F89F22AC */  sw         $v0, %lo(D_80069FF8)($at)
    /* 28DCC 80073030 0780013C */  lui        $at, %hi(D_8006A00E)
  alabel D_titlescreen_and_loading_80073034
    /* 28DD0 80073034 0EA020A0 */  sb         $zero, %lo(D_8006A00E)($at)
    /* 28DD4 80073038 76D4000C */  jal        func_800351D8
    /* 28DD8 8007303C 06000424 */   addiu     $a0, $zero, 0x6
    /* 28DDC 80073040 C1B8000C */  jal        func_8002E304
    /* 28DE0 80073044 00000000 */   nop
    /* 28DE4 80073048 0780013C */  lui        $at, %hi(D_80069FFC)
    /* 28DE8 8007304C FC9F20A0 */  sb         $zero, %lo(D_80069FFC)($at)
    /* 28DEC 80073050 0780013C */  lui        $at, %hi(D_80069FFD)
    /* 28DF0 80073054 FD9F20A0 */  sb         $zero, %lo(D_80069FFD)($at)
    /* 28DF4 80073058 0780013C */  lui        $at, %hi(D_80069FFE)
    /* 28DF8 8007305C FE9F20A0 */  sb         $zero, %lo(D_80069FFE)($at)
  .Ltitlescreen_and_loading_80073060:
    /* 28DFC 80073060 0000038E */  lw         $v1, 0x0($s0)
    /* 28E00 80073064 01000224 */  addiu      $v0, $zero, 0x1
    /* 28E04 80073068 11006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_800730B0
    /* 28E08 8007306C 00440324 */   addiu     $v1, $zero, 0x4400
    /* 28E0C 80073070 FCFF028E */  lw         $v0, -0x4($s0)
    /* 28E10 80073074 0680013C */  lui        $at, %hi(D_80067EAC)
    /* 28E14 80073078 AC7E23AC */  sw         $v1, %lo(D_80067EAC)($at)
    /* 28E18 8007307C 0680013C */  lui        $at, %hi(D_80067EB0)
    /* 28E1C 80073080 B07E23AC */  sw         $v1, %lo(D_80067EB0)($at)
    /* 28E20 80073084 D0FF4224 */  addiu      $v0, $v0, -0x30
    /* 28E24 80073088 40180200 */  sll        $v1, $v0, 1
    /* 28E28 8007308C 21186200 */  addu       $v1, $v1, $v0
    /* 28E2C 80073090 C0180300 */  sll        $v1, $v1, 3
    /* 28E30 80073094 21186200 */  addu       $v1, $v1, $v0
    /* 28E34 80073098 C0180300 */  sll        $v1, $v1, 3
    /* 28E38 8007309C 00406324 */  addiu      $v1, $v1, 0x4000
    /* 28E3C 800730A0 0680013C */  lui        $at, %hi(D_80067EB4)
    /* 28E40 800730A4 B47E23AC */  sw         $v1, %lo(D_80067EB4)($at)
    /* 28E44 800730A8 3BCC0108 */  j          .Ltitlescreen_and_loading_800730EC
    /* 28E48 800730AC 00000000 */   nop
  .Ltitlescreen_and_loading_800730B0:
    /* 28E4C 800730B0 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 28E50 800730B4 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* 28E54 800730B8 00440224 */  addiu      $v0, $zero, 0x4400
    /* 28E58 800730BC 0680013C */  lui        $at, %hi(D_80067EAC)
    /* 28E5C 800730C0 AC7E22AC */  sw         $v0, %lo(D_80067EAC)($at)
    /* 28E60 800730C4 003C0224 */  addiu      $v0, $zero, 0x3C00
    /* 28E64 800730C8 0680013C */  lui        $at, %hi(D_80067EB0)
    /* 28E68 800730CC B07E22AC */  sw         $v0, %lo(D_80067EB0)($at)
    /* 28E6C 800730D0 D0FF6324 */  addiu      $v1, $v1, -0x30
    /* 28E70 800730D4 C0100300 */  sll        $v0, $v1, 3
    /* 28E74 800730D8 23104300 */  subu       $v0, $v0, $v1
    /* 28E78 800730DC 40110200 */  sll        $v0, $v0, 5
    /* 28E7C 800730E0 00404224 */  addiu      $v0, $v0, 0x4000
    /* 28E80 800730E4 0680013C */  lui        $at, %hi(D_80067EB4)
    /* 28E84 800730E8 B47E22AC */  sw         $v0, %lo(D_80067EB4)($at)
  .Ltitlescreen_and_loading_800730EC:
    /* 28E88 800730EC 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 28E8C 800730F0 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 28E90 800730F4 0680063C */  lui        $a2, %hi(D_80067EAC)
    /* 28E94 800730F8 AC7EC624 */  addiu      $a2, $a2, %lo(D_80067EAC)
    /* 28E98 800730FC 806F000C */  jal        func_8001BE00
    /* 28E9C 80073100 1000A427 */   addiu     $a0, $sp, 0x10
    /* 28EA0 80073104 1000A427 */  addiu      $a0, $sp, 0x10
    /* 28EA4 80073108 0680013C */  lui        $at, %hi(D_80067EC8)
    /* 28EA8 8007310C C87E20A4 */  sh         $zero, %lo(D_80067EC8)($at)
    /* 28EAC 80073110 886E000C */  jal        func_8001BA20
    /* 28EB0 80073114 21280000 */   addu      $a1, $zero, $zero
    /* 28EB4 80073118 21204000 */  addu       $a0, $v0, $zero
    /* 28EB8 8007311C 1800A58F */  lw         $a1, 0x18($sp)
    /* 28EBC 80073120 2E6D000C */  jal        func_8001B4B8
    /* 28EC0 80073124 01000624 */   addiu     $a2, $zero, 0x1
    /* 28EC4 80073128 1000A48F */  lw         $a0, 0x10($sp)
    /* 28EC8 8007312C 1400A58F */  lw         $a1, 0x14($sp)
    /* 28ECC 80073130 23100200 */  negu       $v0, $v0
    /* 28ED0 80073134 0680013C */  lui        $at, %hi(D_80067ECA)
    /* 28ED4 80073138 CA7E22A4 */  sh         $v0, %lo(D_80067ECA)($at)
    /* 28ED8 8007313C 2E6D000C */  jal        func_8001B4B8
    /* 28EDC 80073140 01000624 */   addiu     $a2, $zero, 0x1
    /* 28EE0 80073144 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 28EE4 80073148 EC986324 */  addiu      $v1, $v1, %lo(D_800698EC)
    /* 28EE8 8007314C 0000658C */  lw         $a1, 0x0($v1)
    /* 28EEC 80073150 0680013C */  lui        $at, %hi(D_80067ECC)
    /* 28EF0 80073154 CC7E22A4 */  sh         $v0, %lo(D_80067ECC)($at)
    /* 28EF4 80073158 0100A424 */  addiu      $a0, $a1, 0x1
    /* 28EF8 8007315C 000064AC */  sw         $a0, 0x0($v1)
    /* 28EFC 80073160 0780033C */  lui        $v1, %hi(D_800698F0)
    /* 28F00 80073164 F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* 28F04 80073168 01000224 */  addiu      $v0, $zero, 0x1
    /* 28F08 8007316C 2D006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80073224
    /* 28F0C 80073170 09008228 */   slti      $v0, $a0, 0x9
    /* 28F10 80073174 03004010 */  beqz       $v0, .Ltitlescreen_and_loading_80073184
    /* 28F14 80073178 08000224 */   addiu     $v0, $zero, 0x8
    /* 28F18 8007317C 64CC0108 */  j          .Ltitlescreen_and_loading_80073190
    /* 28F1C 80073180 23104400 */   subu      $v0, $v0, $a0
  .Ltitlescreen_and_loading_80073184:
    /* 28F20 80073184 59008228 */  slti       $v0, $a0, 0x59
    /* 28F24 80073188 04004014 */  bnez       $v0, .Ltitlescreen_and_loading_8007319C
    /* 28F28 8007318C A9FFA224 */   addiu     $v0, $a1, -0x57
  .Ltitlescreen_and_loading_80073190:
    /* 28F2C 80073190 40110200 */  sll        $v0, $v0, 5
    /* 28F30 80073194 0680013C */  lui        $at, %hi(D_80066F68)
    /* 28F34 80073198 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  .Ltitlescreen_and_loading_8007319C:
    /* 28F38 8007319C 0780043C */  lui        $a0, %hi(D_800698EC)
    /* 28F3C 800731A0 EC988424 */  addiu      $a0, $a0, %lo(D_800698EC)
    /* 28F40 800731A4 0000838C */  lw         $v1, 0x0($a0)
    /* 28F44 800731A8 60000224 */  addiu      $v0, $zero, 0x60
    /* 28F48 800731AC 34006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80073280
    /* 28F4C 800731B0 02000224 */   addiu     $v0, $zero, 0x2
    /* 28F50 800731B4 0680103C */  lui        $s0, %hi(D_80067E04)
    /* 28F54 800731B8 047E1026 */  addiu      $s0, $s0, %lo(D_80067E04)
    /* 28F58 800731BC 0780013C */  lui        $at, %hi(D_800698F0)
    /* 28F5C 800731C0 F09822AC */  sw         $v0, %lo(D_800698F0)($at)
    /* 28F60 800731C4 000080AC */  sw         $zero, 0x0($a0)
    /* 28F64 800731C8 0000038E */  lw         $v1, 0x0($s0)
    /* 28F68 800731CC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 28F6C 800731D0 0680013C */  lui        $at, %hi(D_80066F68)
    /* 28F70 800731D4 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  alabel D_titlescreen_and_loading_800731D8
    /* 28F74 800731D8 29006004 */  bltz       $v1, .Ltitlescreen_and_loading_80073280
    /* 28F78 800731DC 00000000 */   nop
    /* 28F7C 800731E0 2131010C */  jal        func_8004C484
    /* 28F80 800731E4 00000000 */   nop
    /* 28F84 800731E8 0000038E */  lw         $v1, 0x0($s0)
    /* 28F88 800731EC 01000224 */  addiu      $v0, $zero, 0x1
    /* 28F8C 800731F0 0680013C */  lui        $at, %hi(D_800670C8)
    /* 28F90 800731F4 C87022AC */  sw         $v0, %lo(D_800670C8)($at)
    /* 28F94 800731F8 21006004 */  bltz       $v1, .Ltitlescreen_and_loading_80073280
    /* 28F98 800731FC 00000000 */   nop
  .Ltitlescreen_and_loading_80073200:
    /* 28F9C 80073200 7FC2010C */  jal        func_titlescreen_and_loading_800709FC
    /* 28FA0 80073204 00000000 */   nop
    /* 28FA4 80073208 0680023C */  lui        $v0, %hi(D_80067E04)
    /* 28FA8 8007320C 047E428C */  lw         $v0, %lo(D_80067E04)($v0)
    /* 28FAC 80073210 00000000 */  nop
    /* 28FB0 80073214 1A004004 */  bltz       $v0, .Ltitlescreen_and_loading_80073280
    /* 28FB4 80073218 00000000 */   nop
    /* 28FB8 8007321C 80CC0108 */  j          .Ltitlescreen_and_loading_80073200
    /* 28FBC 80073220 00000000 */   nop
  .Ltitlescreen_and_loading_80073224:
    /* 28FC0 80073224 03004010 */  beqz       $v0, .Ltitlescreen_and_loading_80073234
    /* 28FC4 80073228 08000224 */   addiu     $v0, $zero, 0x8
    /* 28FC8 8007322C 90CC0108 */  j          .Ltitlescreen_and_loading_80073240
    /* 28FCC 80073230 23104400 */   subu      $v0, $v0, $a0
  .Ltitlescreen_and_loading_80073234:
    /* 28FD0 80073234 59008228 */  slti       $v0, $a0, 0x59
    /* 28FD4 80073238 04004014 */  bnez       $v0, .Ltitlescreen_and_loading_8007324C
    /* 28FD8 8007323C A9FFA224 */   addiu     $v0, $a1, -0x57
  .Ltitlescreen_and_loading_80073240:
    /* 28FDC 80073240 40110200 */  sll        $v0, $v0, 5
    /* 28FE0 80073244 0680013C */  lui        $at, %hi(D_80066F68)
    /* 28FE4 80073248 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  .Ltitlescreen_and_loading_8007324C:
    /* 28FE8 8007324C 0780043C */  lui        $a0, %hi(D_800698EC)
    /* 28FEC 80073250 EC988424 */  addiu      $a0, $a0, %lo(D_800698EC)
    /* 28FF0 80073254 0000838C */  lw         $v1, 0x0($a0)
    /* 28FF4 80073258 60000224 */  addiu      $v0, $zero, 0x60
    /* 28FF8 8007325C 08006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80073280
    /* 28FFC 80073260 03000224 */   addiu     $v0, $zero, 0x3
    /* 29000 80073264 0780013C */  lui        $at, %hi(D_800698F0)
    /* 29004 80073268 F09822AC */  sw         $v0, %lo(D_800698F0)($at)
    /* 29008 8007326C 2131010C */  jal        func_8004C484
    /* 2900C 80073270 000080AC */   sw        $zero, 0x0($a0)
    /* 29010 80073274 01000224 */  addiu      $v0, $zero, 0x1
    /* 29014 80073278 0680013C */  lui        $at, %hi(D_800670C8)
    /* 29018 8007327C C87022AC */  sw         $v0, %lo(D_800670C8)($at)
  .Ltitlescreen_and_loading_80073280:
    /* 2901C 80073280 C1B8000C */  jal        func_8002E304
    /* 29020 80073284 00000000 */   nop
    /* 29024 80073288 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* 29028 8007328C EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* 2902C 80073290 00000000 */  nop
    /* 29030 80073294 07004228 */  slti       $v0, $v0, 0x7
    /* 29034 80073298 03004010 */  beqz       $v0, .Ltitlescreen_and_loading_800732A8
    /* 29038 8007329C 00000000 */   nop
    /* 2903C 800732A0 9675000C */  jal        func_8001D658
    /* 29040 800732A4 00000000 */   nop
  .Ltitlescreen_and_loading_800732A8:
    /* 29044 800732A8 0680023C */  lui        $v0, %hi(D_80067E04)
    /* 29048 800732AC 047E428C */  lw         $v0, %lo(D_80067E04)($v0)
    /* 2904C 800732B0 00000000 */  nop
    /* 29050 800732B4 03004004 */  bltz       $v0, .Ltitlescreen_and_loading_800732C4
    /* 29054 800732B8 00000000 */   nop
    /* 29058 800732BC 7FC2010C */  jal        func_titlescreen_and_loading_800709FC
    /* 2905C 800732C0 00000000 */   nop
  .Ltitlescreen_and_loading_800732C4:
    /* 29060 800732C4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 29064 800732C8 2000B08F */  lw         $s0, 0x20($sp)
    /* 29068 800732CC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2906C 800732D0 0800E003 */  jr         $ra
    /* 29070 800732D4 00000000 */   nop
endlabel func_titlescreen_and_loading_80072F9C
