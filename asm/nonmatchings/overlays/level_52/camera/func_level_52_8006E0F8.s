.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8006E0F8, 0x42C

glabel func_level_52_8006E0F8
    /* 3B00E94 8006E0F8 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 3B00E98 8006E0FC 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3B00E9C 8006E100 0680113C */  lui        $s1, %hi(D_80067FBC)
    /* 3B00EA0 8006E104 BC7F3126 */  addiu      $s1, $s1, %lo(D_80067FBC)
    /* 3B00EA4 8006E108 4000BFAF */  sw         $ra, 0x40($sp)
    /* 3B00EA8 8006E10C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3B00EAC 8006E110 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3B00EB0 8006E114 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B00EB4 8006E118 0000228E */  lw         $v0, 0x0($s1)
    /* 3B00EB8 8006E11C 00000000 */  nop
    /* 3B00EBC 8006E120 02004224 */  addiu      $v0, $v0, 0x2
    /* 3B00EC0 8006E124 83900200 */  sra        $s2, $v0, 2
    /* 3B00EC4 8006E128 0500422A */  slti       $v0, $s2, 0x5
    /* 3B00EC8 8006E12C 02004014 */  bnez       $v0, .Llevel_52_8006E138
    /* 3B00ECC 8006E130 00000000 */   nop
    /* 3B00ED0 8006E134 04001224 */  addiu      $s2, $zero, 0x4
  .Llevel_52_8006E138:
    /* 3B00ED4 8006E138 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 3B00ED8 8006E13C D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 3B00EDC 8006E140 0D000224 */  addiu      $v0, $zero, 0xD
    /* 3B00EE0 8006E144 42006210 */  beq        $v1, $v0, .Llevel_52_8006E250
    /* 3B00EE4 8006E148 0E006228 */   slti      $v0, $v1, 0xE
    /* 3B00EE8 8006E14C 05004010 */  beqz       $v0, .Llevel_52_8006E164
    /* 3B00EEC 8006E150 0C000224 */   addiu     $v0, $zero, 0xC
    /* 3B00EF0 8006E154 08006210 */  beq        $v1, $v0, .Llevel_52_8006E178
    /* 3B00EF4 8006E158 00000000 */   nop
    /* 3B00EF8 8006E15C 41B90108 */  j          .Llevel_52_8006E504
    /* 3B00EFC 8006E160 00000000 */   nop
  .Llevel_52_8006E164:
    /* 3B00F00 8006E164 17000224 */  addiu      $v0, $zero, 0x17
    /* 3B00F04 8006E168 A0006210 */  beq        $v1, $v0, .Llevel_52_8006E3EC
    /* 3B00F08 8006E16C 00000000 */   nop
    /* 3B00F0C 8006E170 41B90108 */  j          .Llevel_52_8006E504
    /* 3B00F10 8006E174 00000000 */   nop
  .Llevel_52_8006E178:
    /* 3B00F14 8006E178 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 3B00F18 8006E17C B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 3B00F1C 8006E180 00000000 */  nop
    /* 3B00F20 8006E184 09004014 */  bnez       $v0, .Llevel_52_8006E1AC
    /* 3B00F24 8006E188 00000000 */   nop
    /* 3B00F28 8006E18C 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 3B00F2C 8006E190 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 3B00F30 8006E194 0680053C */  lui        $a1, %hi(D_80061560)
    /* 3B00F34 8006E198 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 3B00F38 8006E19C 337B000C */  jal        func_8001ECCC
    /* 3B00F3C 8006E1A0 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 3B00F40 8006E1A4 087C000C */  jal        func_8001F020
    /* 3B00F44 8006E1A8 00040424 */   addiu     $a0, $zero, 0x400
  .Llevel_52_8006E1AC:
    /* 3B00F48 8006E1AC 28FF2426 */  addiu      $a0, $s1, -0xD8
    /* 3B00F4C 8006E1B0 0780103C */  lui        $s0, %hi(D_80069FF0)
    /* 3B00F50 8006E1B4 F09F1026 */  addiu      $s0, $s0, %lo(D_80069FF0)
    /* 3B00F54 8006E1B8 6C6F000C */  jal        func_8001BDB0
    /* 3B00F58 8006E1BC 21280002 */   addu      $a1, $s0, $zero
    /* 3B00F5C 8006E1C0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B00F60 8006E1C4 0680053C */  lui        $a1, %hi(D_80067FF0)
    /* 3B00F64 8006E1C8 F07FA58C */  lw         $a1, %lo(D_80067FF0)($a1)
    /* 3B00F68 8006E1CC 21300002 */  addu       $a2, $s0, $zero
    /* 3B00F6C 8006E1D0 806F000C */  jal        func_8001BE00
    /* 3B00F70 8006E1D4 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 3B00F74 8006E1D8 1000A48F */  lw         $a0, 0x10($sp)
    /* 3B00F78 8006E1DC 1400A58F */  lw         $a1, 0x14($sp)
    /* 3B00F7C 8006E1E0 2E6D000C */  jal        func_8001B4B8
    /* 3B00F80 8006E1E4 01000624 */   addiu     $a2, $zero, 0x1
    /* 3B00F84 8006E1E8 A8FF2426 */  addiu      $a0, $s1, -0x58
    /* 3B00F88 8006E1EC 80801200 */  sll        $s0, $s2, 2
    /* 3B00F8C 8006E1F0 21801202 */  addu       $s0, $s0, $s2
    /* 3B00F90 8006E1F4 80801000 */  sll        $s0, $s0, 2
    /* 3B00F94 8006E1F8 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 3B00F98 8006E1FC 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 3B00F9C 8006E200 21280502 */  addu       $a1, $s0, $a1
    /* 3B00FA0 8006E204 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 3B00FA4 8006E208 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 3B00FA8 8006E20C 337B000C */  jal        func_8001ECCC
    /* 3B00FAC 8006E210 21300000 */   addu      $a2, $zero, $zero
    /* 3B00FB0 8006E214 BCFF2426 */  addiu      $a0, $s1, -0x44
    /* 3B00FB4 8006E218 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 3B00FB8 8006E21C B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 3B00FBC 8006E220 21280502 */  addu       $a1, $s0, $a1
    /* 3B00FC0 8006E224 337B000C */  jal        func_8001ECCC
    /* 3B00FC4 8006E228 21300000 */   addu      $a2, $zero, $zero
    /* 3B00FC8 8006E22C E4FF2426 */  addiu      $a0, $s1, -0x1C
    /* 3B00FCC 8006E230 0680053C */  lui        $a1, %hi(D_80061844)
    /* 3B00FD0 8006E234 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 3B00FD4 8006E238 337B000C */  jal        func_8001ECCC
    /* 3B00FD8 8006E23C 21300000 */   addu      $a2, $zero, $zero
    /* 3B00FDC 8006E240 0680053C */  lui        $a1, %hi(D_80061858)
    /* 3B00FE0 8006E244 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 3B00FE4 8006E248 F7B80108 */  j          .Llevel_52_8006E3DC
    /* 3B00FE8 8006E24C D0FF2426 */   addiu     $a0, $s1, -0x30
  .Llevel_52_8006E250:
    /* 3B00FEC 8006E250 28FF2426 */  addiu      $a0, $s1, -0xD8
    /* 3B00FF0 8006E254 0780103C */  lui        $s0, %hi(D_80069FF0)
    /* 3B00FF4 8006E258 F09F1026 */  addiu      $s0, $s0, %lo(D_80069FF0)
    /* 3B00FF8 8006E25C 6C6F000C */  jal        func_8001BDB0
    /* 3B00FFC 8006E260 21280002 */   addu      $a1, $s0, $zero
    /* 3B01000 8006E264 2000B327 */  addiu      $s3, $sp, 0x20
    /* 3B01004 8006E268 21206002 */  addu       $a0, $s3, $zero
    /* 3B01008 8006E26C 0680053C */  lui        $a1, %hi(D_80067FF0)
    /* 3B0100C 8006E270 F07FA58C */  lw         $a1, %lo(D_80067FF0)($a1)
    /* 3B01010 8006E274 21300002 */  addu       $a2, $s0, $zero
    /* 3B01014 8006E278 806F000C */  jal        func_8001BE00
    /* 3B01018 8006E27C 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 3B0101C 8006E280 2000A48F */  lw         $a0, 0x20($sp)
    /* 3B01020 8006E284 2400A58F */  lw         $a1, 0x24($sp)
    /* 3B01024 8006E288 2E6D000C */  jal        func_8001B4B8
    /* 3B01028 8006E28C 01000624 */   addiu     $a2, $zero, 0x1
    /* 3B0102C 8006E290 0680033C */  lui        $v1, %hi(D_80067FB8)
    /* 3B01030 8006E294 B87F638C */  lw         $v1, %lo(D_80067FB8)($v1)
    /* 3B01034 8006E298 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 3B01038 8006E29C F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 3B0103C 8006E2A0 35006014 */  bnez       $v1, .Llevel_52_8006E378
    /* 3B01040 8006E2A4 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 3B01044 8006E2A8 0680053C */  lui        $a1, %hi(D_80061628)
    /* 3B01048 8006E2AC 2816A524 */  addiu      $a1, $a1, %lo(D_80061628)
    /* 3B0104C 8006E2B0 337B000C */  jal        func_8001ECCC
    /* 3B01050 8006E2B4 21304000 */   addu      $a2, $v0, $zero
    /* 3B01054 8006E2B8 087C000C */  jal        func_8001F020
    /* 3B01058 8006E2BC 00040424 */   addiu     $a0, $zero, 0x400
    /* 3B0105C 8006E2C0 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 3B01060 8006E2C4 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 3B01064 8006E2C8 42000224 */  addiu      $v0, $zero, 0x42
    /* 3B01068 8006E2CC 2A006214 */  bne        $v1, $v0, .Llevel_52_8006E378
    /* 3B0106C 8006E2D0 00000000 */   nop
    /* 3B01070 8006E2D4 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 3B01074 8006E2D8 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 3B01078 8006E2DC 00000000 */  nop
    /* 3B0107C 8006E2E0 5800428C */  lw         $v0, 0x58($v0)
    /* 3B01080 8006E2E4 00000000 */  nop
    /* 3B01084 8006E2E8 06004390 */  lbu        $v1, 0x6($v0)
    /* 3B01088 8006E2EC 03000224 */  addiu      $v0, $zero, 0x3
    /* 3B0108C 8006E2F0 21006214 */  bne        $v1, $v0, .Llevel_52_8006E378
    /* 3B01090 8006E2F4 21206002 */   addu      $a0, $s3, $zero
    /* 3B01094 8006E2F8 886E000C */  jal        func_8001BA20
    /* 3B01098 8006E2FC 21280000 */   addu      $a1, $zero, $zero
    /* 3B0109C 8006E300 21284000 */  addu       $a1, $v0, $zero
    /* 3B010A0 8006E304 0048A228 */  slti       $v0, $a1, 0x4800
    /* 3B010A4 8006E308 1B004010 */  beqz       $v0, .Llevel_52_8006E378
    /* 3B010A8 8006E30C 00F8A524 */   addiu     $a1, $a1, -0x800
    /* 3B010AC 8006E310 0200A104 */  bgez       $a1, .Llevel_52_8006E31C
    /* 3B010B0 8006E314 00400224 */   addiu     $v0, $zero, 0x4000
    /* 3B010B4 8006E318 21280000 */  addu       $a1, $zero, $zero
  .Llevel_52_8006E31C:
    /* 3B010B8 8006E31C 23284500 */  subu       $a1, $v0, $a1
    /* 3B010BC 8006E320 0680033C */  lui        $v1, %hi(D_8006162C)
    /* 3B010C0 8006E324 2C16638C */  lw         $v1, %lo(D_8006162C)($v1)
    /* 3B010C4 8006E328 30000224 */  addiu      $v0, $zero, 0x30
    /* 3B010C8 8006E32C 23104300 */  subu       $v0, $v0, $v1
    /* 3B010CC 8006E330 18004500 */  mult       $v0, $a1
    /* 3B010D0 8006E334 0680043C */  lui        $a0, %hi(D_80061634)
    /* 3B010D4 8006E338 3416848C */  lw         $a0, %lo(D_80061634)($a0)
    /* 3B010D8 8006E33C 12400000 */  mflo       $t0
    /* 3B010DC 8006E340 60FF0224 */  addiu      $v0, $zero, -0xA0
    /* 3B010E0 8006E344 23104400 */  subu       $v0, $v0, $a0
    /* 3B010E4 8006E348 18004500 */  mult       $v0, $a1
    /* 3B010E8 8006E34C 83130800 */  sra        $v0, $t0, 14
    /* 3B010EC 8006E350 21186200 */  addu       $v1, $v1, $v0
    /* 3B010F0 8006E354 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 3B010F4 8006E358 0680013C */  lui        $at, %hi(D_80067F18)
    /* 3B010F8 8006E35C 187F23AC */  sw         $v1, %lo(D_80067F18)($at)
    /* 3B010FC 8006E360 12280000 */  mflo       $a1
    /* 3B01100 8006E364 83130500 */  sra        $v0, $a1, 14
    /* 3B01104 8006E368 21208200 */  addu       $a0, $a0, $v0
    /* 3B01108 8006E36C FF0F8430 */  andi       $a0, $a0, 0xFFF
    /* 3B0110C 8006E370 0680013C */  lui        $at, %hi(D_80067F20)
    /* 3B01110 8006E374 207F24AC */  sw         $a0, %lo(D_80067F20)($at)
  .Llevel_52_8006E378:
    /* 3B01114 8006E378 0680113C */  lui        $s1, %hi(D_80067F64)
    /* 3B01118 8006E37C 647F3126 */  addiu      $s1, $s1, %lo(D_80067F64)
    /* 3B0111C 8006E380 21202002 */  addu       $a0, $s1, $zero
    /* 3B01120 8006E384 80801200 */  sll        $s0, $s2, 2
    /* 3B01124 8006E388 21801202 */  addu       $s0, $s0, $s2
    /* 3B01128 8006E38C 80801000 */  sll        $s0, $s0, 2
    /* 3B0112C 8006E390 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 3B01130 8006E394 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 3B01134 8006E398 21280502 */  addu       $a1, $s0, $a1
    /* 3B01138 8006E39C 337B000C */  jal        func_8001ECCC
    /* 3B0113C 8006E3A0 21300000 */   addu      $a2, $zero, $zero
    /* 3B01140 8006E3A4 14002426 */  addiu      $a0, $s1, 0x14
    /* 3B01144 8006E3A8 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 3B01148 8006E3AC B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 3B0114C 8006E3B0 21280502 */  addu       $a1, $s0, $a1
    /* 3B01150 8006E3B4 337B000C */  jal        func_8001ECCC
    /* 3B01154 8006E3B8 21300000 */   addu      $a2, $zero, $zero
    /* 3B01158 8006E3BC 28002426 */  addiu      $a0, $s1, 0x28
    /* 3B0115C 8006E3C0 0680053C */  lui        $a1, %hi(D_80061858)
    /* 3B01160 8006E3C4 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 3B01164 8006E3C8 337B000C */  jal        func_8001ECCC
    /* 3B01168 8006E3CC 21300000 */   addu      $a2, $zero, $zero
    /* 3B0116C 8006E3D0 3C002426 */  addiu      $a0, $s1, 0x3C
    /* 3B01170 8006E3D4 0680053C */  lui        $a1, %hi(D_80061844)
    /* 3B01174 8006E3D8 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
  .Llevel_52_8006E3DC:
    /* 3B01178 8006E3DC 337B000C */  jal        func_8001ECCC
    /* 3B0117C 8006E3E0 21300000 */   addu      $a2, $zero, $zero
    /* 3B01180 8006E3E4 41B90108 */  j          .Llevel_52_8006E504
    /* 3B01184 8006E3E8 00000000 */   nop
  .Llevel_52_8006E3EC:
    /* 3B01188 8006E3EC 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 3B0118C 8006E3F0 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 3B01190 8006E3F4 00000000 */  nop
    /* 3B01194 8006E3F8 10004014 */  bnez       $v0, .Llevel_52_8006E43C
    /* 3B01198 8006E3FC 00000000 */   nop
    /* 3B0119C 8006E400 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 3B011A0 8006E404 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 3B011A4 8006E408 0680053C */  lui        $a1, %hi(D_80061560)
    /* 3B011A8 8006E40C 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 3B011AC 8006E410 337B000C */  jal        func_8001ECCC
    /* 3B011B0 8006E414 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 3B011B4 8006E418 087C000C */  jal        func_8001F020
    /* 3B011B8 8006E41C 00040424 */   addiu     $a0, $zero, 0x400
    /* 3B011BC 8006E420 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 3B011C0 8006E424 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 3B011C4 8006E428 33000224 */  addiu      $v0, $zero, 0x33
    /* 3B011C8 8006E42C 03006214 */  bne        $v1, $v0, .Llevel_52_8006E43C
    /* 3B011CC 8006E430 00060224 */   addiu     $v0, $zero, 0x600
    /* 3B011D0 8006E434 0680013C */  lui        $at, %hi(D_80067F1C)
    /* 3B011D4 8006E438 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_52_8006E43C:
    /* 3B011D8 8006E43C 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 3B011DC 8006E440 E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 3B011E0 8006E444 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 3B011E4 8006E448 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 3B011E8 8006E44C 6C6F000C */  jal        func_8001BDB0
    /* 3B011EC 8006E450 21202002 */   addu      $a0, $s1, $zero
    /* 3B011F0 8006E454 80002426 */  addiu      $a0, $s1, 0x80
    /* 3B011F4 8006E458 80801200 */  sll        $s0, $s2, 2
    /* 3B011F8 8006E45C 21801202 */  addu       $s0, $s0, $s2
    /* 3B011FC 8006E460 80801000 */  sll        $s0, $s0, 2
    /* 3B01200 8006E464 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 3B01204 8006E468 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 3B01208 8006E46C 0780023C */  lui        $v0, %hi(D_8006A208)
    /* 3B0120C 8006E470 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* 3B01210 8006E474 21280502 */  addu       $a1, $s0, $a1
    /* 3B01214 8006E478 46004290 */  lbu        $v0, 0x46($v0)
    /* 3B01218 8006E47C 00000000 */  nop
    /* 3B0121C 8006E480 00110200 */  sll        $v0, $v0, 4
    /* 3B01220 8006E484 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 3B01224 8006E488 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 3B01228 8006E48C 337B000C */  jal        func_8001ECCC
    /* 3B0122C 8006E490 21300000 */   addu      $a2, $zero, $zero
    /* 3B01230 8006E494 94002426 */  addiu      $a0, $s1, 0x94
    /* 3B01234 8006E498 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 3B01238 8006E49C B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 3B0123C 8006E4A0 21280502 */  addu       $a1, $s0, $a1
    /* 3B01240 8006E4A4 337B000C */  jal        func_8001ECCC
    /* 3B01244 8006E4A8 21300000 */   addu      $a2, $zero, $zero
    /* 3B01248 8006E4AC A8002426 */  addiu      $a0, $s1, 0xA8
    /* 3B0124C 8006E4B0 0680053C */  lui        $a1, %hi(D_80061858)
    /* 3B01250 8006E4B4 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 3B01254 8006E4B8 337B000C */  jal        func_8001ECCC
    /* 3B01258 8006E4BC 21300000 */   addu      $a2, $zero, $zero
    /* 3B0125C 8006E4C0 BC002426 */  addiu      $a0, $s1, 0xBC
    /* 3B01260 8006E4C4 0680053C */  lui        $a1, %hi(D_80061844)
    /* 3B01264 8006E4C8 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 3B01268 8006E4CC 337B000C */  jal        func_8001ECCC
    /* 3B0126C 8006E4D0 21300000 */   addu      $a2, $zero, $zero
    /* 3B01270 8006E4D4 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 3B01274 8006E4D8 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 3B01278 8006E4DC 00000000 */  nop
    /* 3B0127C 8006E4E0 02004230 */  andi       $v0, $v0, 0x2
    /* 3B01280 8006E4E4 07004014 */  bnez       $v0, .Llevel_52_8006E504
    /* 3B01284 8006E4E8 00000000 */   nop
    /* 3B01288 8006E4EC 8000228E */  lw         $v0, 0x80($s1)
    /* 3B0128C 8006E4F0 00000000 */  nop
    /* 3B01290 8006E4F4 4C004228 */  slti       $v0, $v0, 0x4C
    /* 3B01294 8006E4F8 02004010 */  beqz       $v0, .Llevel_52_8006E504
    /* 3B01298 8006E4FC 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 3B0129C 8006E500 800022AE */  sw         $v0, 0x80($s1)
  .Llevel_52_8006E504:
    /* 3B012A0 8006E504 4000BF8F */  lw         $ra, 0x40($sp)
    /* 3B012A4 8006E508 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 3B012A8 8006E50C 3800B28F */  lw         $s2, 0x38($sp)
    /* 3B012AC 8006E510 3400B18F */  lw         $s1, 0x34($sp)
    /* 3B012B0 8006E514 3000B08F */  lw         $s0, 0x30($sp)
    /* 3B012B4 8006E518 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 3B012B8 8006E51C 0800E003 */  jr         $ra
    /* 3B012BC 8006E520 00000000 */   nop
endlabel func_level_52_8006E0F8
