.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_10_8006FEE0, 0x34C

glabel func_level_10_8006FEE0
    /* D38C7C 8006FEE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D38C80 8006FEE4 0680043C */  lui        $a0, %hi(D_80067FBC)
    /* D38C84 8006FEE8 BC7F8424 */  addiu      $a0, $a0, %lo(D_80067FBC)
    /* D38C88 8006FEEC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* D38C8C 8006FEF0 1800B2AF */  sw         $s2, 0x18($sp)
    /* D38C90 8006FEF4 1400B1AF */  sw         $s1, 0x14($sp)
    /* D38C94 8006FEF8 1000B0AF */  sw         $s0, 0x10($sp)
    /* D38C98 8006FEFC 0000828C */  lw         $v0, 0x0($a0)
    /* D38C9C 8006FF00 00000000 */  nop
    /* D38CA0 8006FF04 02004224 */  addiu      $v0, $v0, 0x2
    /* D38CA4 8006FF08 83900200 */  sra        $s2, $v0, 2
    /* D38CA8 8006FF0C 0500422A */  slti       $v0, $s2, 0x5
    /* D38CAC 8006FF10 02004014 */  bnez       $v0, .Llevel_10_8006FF1C
    /* D38CB0 8006FF14 00000000 */   nop
    /* D38CB4 8006FF18 04001224 */  addiu      $s2, $zero, 0x4
  .Llevel_10_8006FF1C:
    /* D38CB8 8006FF1C 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* D38CBC 8006FF20 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* D38CC0 8006FF24 04000224 */  addiu      $v0, $zero, 0x4
    /* D38CC4 8006FF28 05006210 */  beq        $v1, $v0, .Llevel_10_8006FF40
    /* D38CC8 8006FF2C 17000224 */   addiu     $v0, $zero, 0x17
    /* D38CCC 8006FF30 71006210 */  beq        $v1, $v0, .Llevel_10_800700F8
    /* D38CD0 8006FF34 00000000 */   nop
    /* D38CD4 8006FF38 84C00108 */  j          .Llevel_10_80070210
    /* D38CD8 8006FF3C 00000000 */   nop
  .Llevel_10_8006FF40:
    /* D38CDC 8006FF40 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* D38CE0 8006FF44 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* D38CE4 8006FF48 00000000 */  nop
    /* D38CE8 8006FF4C 2F004014 */  bnez       $v0, .Llevel_10_8007000C
    /* D38CEC 8006FF50 00000000 */   nop
    /* D38CF0 8006FF54 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* D38CF4 8006FF58 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* D38CF8 8006FF5C 0680053C */  lui        $a1, %hi(D_800615D8)
    /* D38CFC 8006FF60 D815A524 */  addiu      $a1, $a1, %lo(D_800615D8)
    /* D38D00 8006FF64 337B000C */  jal        func_8001ECCC
    /* D38D04 8006FF68 58FF8424 */   addiu     $a0, $a0, -0xA8
    /* D38D08 8006FF6C 0780023C */  lui        $v0, %hi(D_8006A058)
    /* D38D0C 8006FF70 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* D38D10 8006FF74 0680033C */  lui        $v1, %hi(D_80067F04)
    /* D38D14 8006FF78 047F638C */  lw         $v1, %lo(D_80067F04)($v1)
    /* D38D18 8006FF7C 23100200 */  negu       $v0, $v0
    /* D38D1C 8006FF80 23184300 */  subu       $v1, $v0, $v1
    /* D38D20 8006FF84 83180300 */  sra        $v1, $v1, 2
    /* D38D24 8006FF88 0680013C */  lui        $at, %hi(D_80067F18)
    /* D38D28 8006FF8C 187F22AC */  sw         $v0, %lo(D_80067F18)($at)
    /* D38D2C 8006FF90 C1006228 */  slti       $v0, $v1, 0xC1
    /* D38D30 8006FF94 03004014 */  bnez       $v0, .Llevel_10_8006FFA4
    /* D38D34 8006FF98 40FF6228 */   slti      $v0, $v1, -0xC0
    /* D38D38 8006FF9C C0000324 */  addiu      $v1, $zero, 0xC0
    /* D38D3C 8006FFA0 40FF6228 */  slti       $v0, $v1, -0xC0
  .Llevel_10_8006FFA4:
    /* D38D40 8006FFA4 02004010 */  beqz       $v0, .Llevel_10_8006FFB0
    /* D38D44 8006FFA8 00000000 */   nop
    /* D38D48 8006FFAC 40FF0324 */  addiu      $v1, $zero, -0xC0
  .Llevel_10_8006FFB0:
    /* D38D4C 8006FFB0 02006104 */  bgez       $v1, .Llevel_10_8006FFBC
    /* D38D50 8006FFB4 21106000 */   addu      $v0, $v1, $zero
    /* D38D54 8006FFB8 23100200 */  negu       $v0, $v0
  .Llevel_10_8006FFBC:
    /* D38D58 8006FFBC 09004228 */  slti       $v0, $v0, 0x9
    /* D38D5C 8006FFC0 05004014 */  bnez       $v0, .Llevel_10_8006FFD8
    /* D38D60 8006FFC4 00000000 */   nop
    /* D38D64 8006FFC8 0680013C */  lui        $at, %hi(D_80067F20)
    /* D38D68 8006FFCC 207F23AC */  sw         $v1, %lo(D_80067F20)($at)
    /* D38D6C 8006FFD0 F8BF0108 */  j          .Llevel_10_8006FFE0
    /* D38D70 8006FFD4 00000000 */   nop
  .Llevel_10_8006FFD8:
    /* D38D74 8006FFD8 0680013C */  lui        $at, %hi(D_80067F20)
    /* D38D78 8006FFDC 207F20AC */  sw         $zero, %lo(D_80067F20)($at)
  .Llevel_10_8006FFE0:
    /* D38D7C 8006FFE0 0780023C */  lui        $v0, %hi(D_8006A054)
    /* D38D80 8006FFE4 54A0428C */  lw         $v0, %lo(D_8006A054)($v0)
    /* D38D84 8006FFE8 00000000 */  nop
    /* D38D88 8006FFEC 23100200 */  negu       $v0, $v0
    /* D38D8C 8006FFF0 83100200 */  sra        $v0, $v0, 2
    /* D38D90 8006FFF4 0680013C */  lui        $at, %hi(D_80067F24)
    /* D38D94 8006FFF8 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
    /* D38D98 8006FFFC 087C000C */  jal        func_8001F020
    /* D38D9C 80070000 80010424 */   addiu     $a0, $zero, 0x180
    /* D38DA0 80070004 2F7C000C */  jal        func_8001F0BC
    /* D38DA4 80070008 00000000 */   nop
  .Llevel_10_8007000C:
    /* D38DA8 8007000C 0680103C */  lui        $s0, %hi(D_80067EE4)
    /* D38DAC 80070010 E47E1026 */  addiu      $s0, $s0, %lo(D_80067EE4)
    /* D38DB0 80070014 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* D38DB4 80070018 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* D38DB8 8007001C 6C6F000C */  jal        func_8001BDB0
    /* D38DBC 80070020 21200002 */   addu      $a0, $s0, $zero
    /* D38DC0 80070024 80000426 */  addiu      $a0, $s0, 0x80
    /* D38DC4 80070028 80101200 */  sll        $v0, $s2, 2
    /* D38DC8 8007002C 21105200 */  addu       $v0, $v0, $s2
    /* D38DCC 80070030 80880200 */  sll        $s1, $v0, 2
    /* D38DD0 80070034 0680053C */  lui        $a1, %hi(D_8006172C)
    /* D38DD4 80070038 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* D38DD8 8007003C 21282502 */  addu       $a1, $s1, $a1
    /* D38DDC 80070040 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* D38DE0 80070044 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* D38DE4 80070048 0680013C */  lui        $at, %hi(D_80067EF0)
    /* D38DE8 8007004C F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* D38DEC 80070050 337B000C */  jal        func_8001ECCC
    /* D38DF0 80070054 21300000 */   addu      $a2, $zero, $zero
    /* D38DF4 80070058 8000028E */  lw         $v0, 0x80($s0)
    /* D38DF8 8007005C 00000000 */  nop
    /* D38DFC 80070060 80004228 */  slti       $v0, $v0, 0x80
    /* D38E00 80070064 02004010 */  beqz       $v0, .Llevel_10_80070070
    /* D38E04 80070068 80000224 */   addiu     $v0, $zero, 0x80
    /* D38E08 8007006C 800002AE */  sw         $v0, 0x80($s0)
  .Llevel_10_80070070:
    /* D38E0C 80070070 0680023C */  lui        $v0, %hi(D_80067F68)
    /* D38E10 80070074 687F428C */  lw         $v0, %lo(D_80067F68)($v0)
    /* D38E14 80070078 00000000 */  nop
    /* D38E18 8007007C 60004228 */  slti       $v0, $v0, 0x60
    /* D38E1C 80070080 03004010 */  beqz       $v0, .Llevel_10_80070090
    /* D38E20 80070084 60000224 */   addiu     $v0, $zero, 0x60
    /* D38E24 80070088 0680013C */  lui        $at, %hi(D_80067F68)
    /* D38E28 8007008C 687F22AC */  sw         $v0, %lo(D_80067F68)($at)
  .Llevel_10_80070090:
    /* D38E2C 80070090 0680023C */  lui        $v0, %hi(D_80067F74)
    /* D38E30 80070094 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* D38E34 80070098 00000000 */  nop
    /* D38E38 8007009C 40004228 */  slti       $v0, $v0, 0x40
    /* D38E3C 800700A0 03004010 */  beqz       $v0, .Llevel_10_800700B0
    /* D38E40 800700A4 40000224 */   addiu     $v0, $zero, 0x40
    /* D38E44 800700A8 0680013C */  lui        $at, %hi(D_80067F74)
    /* D38E48 800700AC 747F22AC */  sw         $v0, %lo(D_80067F74)($at)
  .Llevel_10_800700B0:
    /* D38E4C 800700B0 94000426 */  addiu      $a0, $s0, 0x94
    /* D38E50 800700B4 0680053C */  lui        $a1, %hi(D_800617B8)
    /* D38E54 800700B8 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* D38E58 800700BC 21282502 */  addu       $a1, $s1, $a1
    /* D38E5C 800700C0 337B000C */  jal        func_8001ECCC
    /* D38E60 800700C4 21300000 */   addu      $a2, $zero, $zero
    /* D38E64 800700C8 A8000426 */  addiu      $a0, $s0, 0xA8
    /* D38E68 800700CC 0680053C */  lui        $a1, %hi(D_80061858)
    /* D38E6C 800700D0 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* D38E70 800700D4 337B000C */  jal        func_8001ECCC
    /* D38E74 800700D8 21300000 */   addu      $a2, $zero, $zero
    /* D38E78 800700DC BC000426 */  addiu      $a0, $s0, 0xBC
    /* D38E7C 800700E0 0680053C */  lui        $a1, %hi(D_80061844)
    /* D38E80 800700E4 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* D38E84 800700E8 337B000C */  jal        func_8001ECCC
    /* D38E88 800700EC 21300000 */   addu      $a2, $zero, $zero
    /* D38E8C 800700F0 84C00108 */  j          .Llevel_10_80070210
    /* D38E90 800700F4 00000000 */   nop
  .Llevel_10_800700F8:
    /* D38E94 800700F8 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* D38E98 800700FC B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* D38E9C 80070100 00000000 */  nop
    /* D38EA0 80070104 10004014 */  bnez       $v0, .Llevel_10_80070148
    /* D38EA4 80070108 00000000 */   nop
    /* D38EA8 8007010C 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* D38EAC 80070110 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* D38EB0 80070114 0680053C */  lui        $a1, %hi(D_80061560)
    /* D38EB4 80070118 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* D38EB8 8007011C 337B000C */  jal        func_8001ECCC
    /* D38EBC 80070120 58FF8424 */   addiu     $a0, $a0, -0xA8
    /* D38EC0 80070124 087C000C */  jal        func_8001F020
    /* D38EC4 80070128 00040424 */   addiu     $a0, $zero, 0x400
    /* D38EC8 8007012C 0680033C */  lui        $v1, %hi(D_80066F90)
    /* D38ECC 80070130 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* D38ED0 80070134 33000224 */  addiu      $v0, $zero, 0x33
    /* D38ED4 80070138 03006214 */  bne        $v1, $v0, .Llevel_10_80070148
    /* D38ED8 8007013C 00060224 */   addiu     $v0, $zero, 0x600
    /* D38EDC 80070140 0680013C */  lui        $at, %hi(D_80067F1C)
    /* D38EE0 80070144 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_10_80070148:
    /* D38EE4 80070148 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* D38EE8 8007014C E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* D38EEC 80070150 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* D38EF0 80070154 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* D38EF4 80070158 6C6F000C */  jal        func_8001BDB0
    /* D38EF8 8007015C 21202002 */   addu      $a0, $s1, $zero
    /* D38EFC 80070160 80002426 */  addiu      $a0, $s1, 0x80
    /* D38F00 80070164 80801200 */  sll        $s0, $s2, 2
    /* D38F04 80070168 21801202 */  addu       $s0, $s0, $s2
    /* D38F08 8007016C 80801000 */  sll        $s0, $s0, 2
    /* D38F0C 80070170 0680053C */  lui        $a1, %hi(D_8006172C)
    /* D38F10 80070174 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* D38F14 80070178 0780023C */  lui        $v0, %hi(D_8006A208)
    /* D38F18 8007017C 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* D38F1C 80070180 21280502 */  addu       $a1, $s0, $a1
    /* D38F20 80070184 46004290 */  lbu        $v0, 0x46($v0)
    /* D38F24 80070188 00000000 */  nop
    /* D38F28 8007018C 00110200 */  sll        $v0, $v0, 4
    /* D38F2C 80070190 0680013C */  lui        $at, %hi(D_80067EF0)
    /* D38F30 80070194 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* D38F34 80070198 337B000C */  jal        func_8001ECCC
    /* D38F38 8007019C 21300000 */   addu      $a2, $zero, $zero
    /* D38F3C 800701A0 94002426 */  addiu      $a0, $s1, 0x94
    /* D38F40 800701A4 0680053C */  lui        $a1, %hi(D_800617B8)
    /* D38F44 800701A8 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* D38F48 800701AC 21280502 */  addu       $a1, $s0, $a1
    /* D38F4C 800701B0 337B000C */  jal        func_8001ECCC
    /* D38F50 800701B4 21300000 */   addu      $a2, $zero, $zero
    /* D38F54 800701B8 A8002426 */  addiu      $a0, $s1, 0xA8
    /* D38F58 800701BC 0680053C */  lui        $a1, %hi(D_80061858)
    /* D38F5C 800701C0 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* D38F60 800701C4 337B000C */  jal        func_8001ECCC
    /* D38F64 800701C8 21300000 */   addu      $a2, $zero, $zero
    /* D38F68 800701CC BC002426 */  addiu      $a0, $s1, 0xBC
    /* D38F6C 800701D0 0680053C */  lui        $a1, %hi(D_80061844)
    /* D38F70 800701D4 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* D38F74 800701D8 337B000C */  jal        func_8001ECCC
    /* D38F78 800701DC 21300000 */   addu      $a2, $zero, $zero
    /* D38F7C 800701E0 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* D38F80 800701E4 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* D38F84 800701E8 00000000 */  nop
    /* D38F88 800701EC 02004230 */  andi       $v0, $v0, 0x2
    /* D38F8C 800701F0 07004014 */  bnez       $v0, .Llevel_10_80070210
    /* D38F90 800701F4 00000000 */   nop
    /* D38F94 800701F8 8000228E */  lw         $v0, 0x80($s1)
    /* D38F98 800701FC 00000000 */  nop
    /* D38F9C 80070200 4C004228 */  slti       $v0, $v0, 0x4C
    /* D38FA0 80070204 02004010 */  beqz       $v0, .Llevel_10_80070210
    /* D38FA4 80070208 4C000224 */   addiu     $v0, $zero, 0x4C
    /* D38FA8 8007020C 800022AE */  sw         $v0, 0x80($s1)
  .Llevel_10_80070210:
    /* D38FAC 80070210 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* D38FB0 80070214 1800B28F */  lw         $s2, 0x18($sp)
    /* D38FB4 80070218 1400B18F */  lw         $s1, 0x14($sp)
    /* D38FB8 8007021C 1000B08F */  lw         $s0, 0x10($sp)
    /* D38FBC 80070220 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D38FC0 80070224 0800E003 */  jr         $ra
    /* D38FC4 80070228 00000000 */   nop
endlabel func_level_10_8006FEE0
