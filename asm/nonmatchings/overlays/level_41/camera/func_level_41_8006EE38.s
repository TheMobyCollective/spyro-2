.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_41_8006EE38, 0x38C

glabel func_level_41_8006EE38
    /* 2BBA3D4 8006EE38 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2BBA3D8 8006EE3C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 2BBA3DC 8006EE40 0680113C */  lui        $s1, %hi(D_80067FBC)
    /* 2BBA3E0 8006EE44 BC7F3126 */  addiu      $s1, $s1, %lo(D_80067FBC)
    /* 2BBA3E4 8006EE48 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2BBA3E8 8006EE4C 2800B2AF */  sw         $s2, 0x28($sp)
    /* 2BBA3EC 8006EE50 2000B0AF */  sw         $s0, 0x20($sp)
    /* 2BBA3F0 8006EE54 0000228E */  lw         $v0, 0x0($s1)
    /* 2BBA3F4 8006EE58 00000000 */  nop
    /* 2BBA3F8 8006EE5C 02004224 */  addiu      $v0, $v0, 0x2
    /* 2BBA3FC 8006EE60 83900200 */  sra        $s2, $v0, 2
    /* 2BBA400 8006EE64 0500422A */  slti       $v0, $s2, 0x5
    /* 2BBA404 8006EE68 02004014 */  bnez       $v0, .Llevel_41_8006EE74
    /* 2BBA408 8006EE6C 00000000 */   nop
    /* 2BBA40C 8006EE70 04001224 */  addiu      $s2, $zero, 0x4
  .Llevel_41_8006EE74:
    /* 2BBA410 8006EE74 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 2BBA414 8006EE78 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 2BBA418 8006EE7C 17000224 */  addiu      $v0, $zero, 0x17
    /* 2BBA41C 8006EE80 4B006210 */  beq        $v1, $v0, .Llevel_41_8006EFB0
    /* 2BBA420 8006EE84 18006228 */   slti      $v0, $v1, 0x18
    /* 2BBA424 8006EE88 05004010 */  beqz       $v0, .Llevel_41_8006EEA0
    /* 2BBA428 8006EE8C 15000224 */   addiu     $v0, $zero, 0x15
    /* 2BBA42C 8006EE90 08006210 */  beq        $v1, $v0, .Llevel_41_8006EEB4
    /* 2BBA430 8006EE94 00000000 */   nop
    /* 2BBA434 8006EE98 6ABC0108 */  j          .Llevel_41_8006F1A8
    /* 2BBA438 8006EE9C 00000000 */   nop
  .Llevel_41_8006EEA0:
    /* 2BBA43C 8006EEA0 18000224 */  addiu      $v0, $zero, 0x18
    /* 2BBA440 8006EEA4 89006210 */  beq        $v1, $v0, .Llevel_41_8006F0CC
    /* 2BBA444 8006EEA8 00000000 */   nop
    /* 2BBA448 8006EEAC 6ABC0108 */  j          .Llevel_41_8006F1A8
    /* 2BBA44C 8006EEB0 00000000 */   nop
  .Llevel_41_8006EEB4:
    /* 2BBA450 8006EEB4 087C000C */  jal        func_8001F020
    /* 2BBA454 8006EEB8 00040424 */   addiu     $a0, $zero, 0x400
    /* 2BBA458 8006EEBC 0680023C */  lui        $v0, %hi(D_80067FD4)
    /* 2BBA45C 8006EEC0 D47F428C */  lw         $v0, %lo(D_80067FD4)($v0)
    /* 2BBA460 8006EEC4 00000000 */  nop
    /* 2BBA464 8006EEC8 05004010 */  beqz       $v0, .Llevel_41_8006EEE0
    /* 2BBA468 8006EECC 01000224 */   addiu     $v0, $zero, 0x1
    /* 2BBA46C 8006EED0 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2BBA470 8006EED4 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 2BBA474 8006EED8 BABB0108 */  j          .Llevel_41_8006EEE8
    /* 2BBA478 8006EEDC 00000000 */   nop
  .Llevel_41_8006EEE0:
    /* 2BBA47C 8006EEE0 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2BBA480 8006EEE4 C67F20A0 */  sb         $zero, %lo(D_80067FC6)($at)
  .Llevel_41_8006EEE8:
    /* 2BBA484 8006EEE8 0680043C */  lui        $a0, %hi(D_80067FB8)
    /* 2BBA488 8006EEEC B87F8424 */  addiu      $a0, $a0, %lo(D_80067FB8)
    /* 2BBA48C 8006EEF0 0000828C */  lw         $v0, 0x0($a0)
    /* 2BBA490 8006EEF4 00000000 */  nop
    /* 2BBA494 8006EEF8 09004014 */  bnez       $v0, .Llevel_41_8006EF20
    /* 2BBA498 8006EEFC 00000000 */   nop
    /* 2BBA49C 8006EF00 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 2BBA4A0 8006EF04 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 2BBA4A4 8006EF08 0680053C */  lui        $a1, %hi(D_800616A0)
    /* 2BBA4A8 8006EF0C A016A524 */  addiu      $a1, $a1, %lo(D_800616A0)
    /* 2BBA4AC 8006EF10 337B000C */  jal        func_8001ECCC
    /* 2BBA4B0 8006EF14 5CFF8424 */   addiu     $a0, $a0, -0xA4
    /* 2BBA4B4 8006EF18 CABB0108 */  j          .Llevel_41_8006EF28
    /* 2BBA4B8 8006EF1C 00000000 */   nop
  .Llevel_41_8006EF20:
    /* 2BBA4BC 8006EF20 0680013C */  lui        $at, %hi(D_80067FD4)
    /* 2BBA4C0 8006EF24 D47F20AC */  sw         $zero, %lo(D_80067FD4)($at)
  .Llevel_41_8006EF28:
    /* 2BBA4C4 8006EF28 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 2BBA4C8 8006EF2C E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 2BBA4CC 8006EF30 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 2BBA4D0 8006EF34 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 2BBA4D4 8006EF38 6C6F000C */  jal        func_8001BDB0
    /* 2BBA4D8 8006EF3C 21202002 */   addu      $a0, $s1, $zero
    /* 2BBA4DC 8006EF40 80002426 */  addiu      $a0, $s1, 0x80
    /* 2BBA4E0 8006EF44 80801200 */  sll        $s0, $s2, 2
    /* 2BBA4E4 8006EF48 21801202 */  addu       $s0, $s0, $s2
    /* 2BBA4E8 8006EF4C 80801000 */  sll        $s0, $s0, 2
    /* 2BBA4EC 8006EF50 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 2BBA4F0 8006EF54 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 2BBA4F4 8006EF58 21280502 */  addu       $a1, $s0, $a1
    /* 2BBA4F8 8006EF5C 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 2BBA4FC 8006EF60 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 2BBA500 8006EF64 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2BBA504 8006EF68 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2BBA508 8006EF6C 337B000C */  jal        func_8001ECCC
    /* 2BBA50C 8006EF70 21300000 */   addu      $a2, $zero, $zero
    /* 2BBA510 8006EF74 94002426 */  addiu      $a0, $s1, 0x94
    /* 2BBA514 8006EF78 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 2BBA518 8006EF7C B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 2BBA51C 8006EF80 21280502 */  addu       $a1, $s0, $a1
    /* 2BBA520 8006EF84 337B000C */  jal        func_8001ECCC
    /* 2BBA524 8006EF88 21300000 */   addu      $a2, $zero, $zero
    /* 2BBA528 8006EF8C BC002426 */  addiu      $a0, $s1, 0xBC
    /* 2BBA52C 8006EF90 0680053C */  lui        $a1, %hi(D_80061844)
    /* 2BBA530 8006EF94 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 2BBA534 8006EF98 337B000C */  jal        func_8001ECCC
    /* 2BBA538 8006EF9C 21300000 */   addu      $a2, $zero, $zero
    /* 2BBA53C 8006EFA0 0680053C */  lui        $a1, %hi(D_80061858)
    /* 2BBA540 8006EFA4 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 2BBA544 8006EFA8 24BC0108 */  j          .Llevel_41_8006F090
    /* 2BBA548 8006EFAC A8002426 */   addiu     $a0, $s1, 0xA8
  .Llevel_41_8006EFB0:
    /* 2BBA54C 8006EFB0 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 2BBA550 8006EFB4 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 2BBA554 8006EFB8 00000000 */  nop
    /* 2BBA558 8006EFBC 10004014 */  bnez       $v0, .Llevel_41_8006F000
    /* 2BBA55C 8006EFC0 00000000 */   nop
    /* 2BBA560 8006EFC4 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 2BBA564 8006EFC8 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 2BBA568 8006EFCC 0680053C */  lui        $a1, %hi(D_80061560)
    /* 2BBA56C 8006EFD0 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 2BBA570 8006EFD4 337B000C */  jal        func_8001ECCC
    /* 2BBA574 8006EFD8 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 2BBA578 8006EFDC 087C000C */  jal        func_8001F020
    /* 2BBA57C 8006EFE0 00040424 */   addiu     $a0, $zero, 0x400
    /* 2BBA580 8006EFE4 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 2BBA584 8006EFE8 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 2BBA588 8006EFEC 33000224 */  addiu      $v0, $zero, 0x33
    /* 2BBA58C 8006EFF0 03006214 */  bne        $v1, $v0, .Llevel_41_8006F000
    /* 2BBA590 8006EFF4 00060224 */   addiu     $v0, $zero, 0x600
    /* 2BBA594 8006EFF8 0680013C */  lui        $at, %hi(D_80067F1C)
    /* 2BBA598 8006EFFC 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_41_8006F000:
    /* 2BBA59C 8006F000 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 2BBA5A0 8006F004 E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 2BBA5A4 8006F008 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 2BBA5A8 8006F00C F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 2BBA5AC 8006F010 6C6F000C */  jal        func_8001BDB0
    /* 2BBA5B0 8006F014 21202002 */   addu      $a0, $s1, $zero
    /* 2BBA5B4 8006F018 80002426 */  addiu      $a0, $s1, 0x80
    /* 2BBA5B8 8006F01C 80801200 */  sll        $s0, $s2, 2
    /* 2BBA5BC 8006F020 21801202 */  addu       $s0, $s0, $s2
    /* 2BBA5C0 8006F024 80801000 */  sll        $s0, $s0, 2
    /* 2BBA5C4 8006F028 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 2BBA5C8 8006F02C 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 2BBA5CC 8006F030 0780023C */  lui        $v0, %hi(D_8006A208)
    /* 2BBA5D0 8006F034 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* 2BBA5D4 8006F038 21280502 */  addu       $a1, $s0, $a1
    /* 2BBA5D8 8006F03C 46004290 */  lbu        $v0, 0x46($v0)
    /* 2BBA5DC 8006F040 00000000 */  nop
    /* 2BBA5E0 8006F044 00110200 */  sll        $v0, $v0, 4
    /* 2BBA5E4 8006F048 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2BBA5E8 8006F04C F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2BBA5EC 8006F050 337B000C */  jal        func_8001ECCC
    /* 2BBA5F0 8006F054 21300000 */   addu      $a2, $zero, $zero
    /* 2BBA5F4 8006F058 94002426 */  addiu      $a0, $s1, 0x94
    /* 2BBA5F8 8006F05C 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 2BBA5FC 8006F060 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 2BBA600 8006F064 21280502 */  addu       $a1, $s0, $a1
    /* 2BBA604 8006F068 337B000C */  jal        func_8001ECCC
    /* 2BBA608 8006F06C 21300000 */   addu      $a2, $zero, $zero
    /* 2BBA60C 8006F070 A8002426 */  addiu      $a0, $s1, 0xA8
    /* 2BBA610 8006F074 0680053C */  lui        $a1, %hi(D_80061858)
    /* 2BBA614 8006F078 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 2BBA618 8006F07C 337B000C */  jal        func_8001ECCC
    /* 2BBA61C 8006F080 21300000 */   addu      $a2, $zero, $zero
    /* 2BBA620 8006F084 BC002426 */  addiu      $a0, $s1, 0xBC
    /* 2BBA624 8006F088 0680053C */  lui        $a1, %hi(D_80061844)
    /* 2BBA628 8006F08C 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
  .Llevel_41_8006F090:
    /* 2BBA62C 8006F090 337B000C */  jal        func_8001ECCC
    /* 2BBA630 8006F094 21300000 */   addu      $a2, $zero, $zero
    /* 2BBA634 8006F098 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 2BBA638 8006F09C DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 2BBA63C 8006F0A0 00000000 */  nop
    /* 2BBA640 8006F0A4 02004230 */  andi       $v0, $v0, 0x2
    /* 2BBA644 8006F0A8 3F004014 */  bnez       $v0, .Llevel_41_8006F1A8
    /* 2BBA648 8006F0AC 00000000 */   nop
    /* 2BBA64C 8006F0B0 8000228E */  lw         $v0, 0x80($s1)
    /* 2BBA650 8006F0B4 00000000 */  nop
    /* 2BBA654 8006F0B8 4C004228 */  slti       $v0, $v0, 0x4C
    /* 2BBA658 8006F0BC 3A004010 */  beqz       $v0, .Llevel_41_8006F1A8
    /* 2BBA65C 8006F0C0 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 2BBA660 8006F0C4 6ABC0108 */  j          .Llevel_41_8006F1A8
    /* 2BBA664 8006F0C8 800022AE */   sw        $v0, 0x80($s1)
  .Llevel_41_8006F0CC:
    /* 2BBA668 8006F0CC 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 2BBA66C 8006F0D0 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 2BBA670 8006F0D4 00000000 */  nop
    /* 2BBA674 8006F0D8 0A004014 */  bnez       $v0, .Llevel_41_8006F104
    /* 2BBA678 8006F0DC 28FF2426 */   addiu     $a0, $s1, -0xD8
    /* 2BBA67C 8006F0E0 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 2BBA680 8006F0E4 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 2BBA684 8006F0E8 0680053C */  lui        $a1, %hi(D_800616C8)
    /* 2BBA688 8006F0EC C816A524 */  addiu      $a1, $a1, %lo(D_800616C8)
    /* 2BBA68C 8006F0F0 337B000C */  jal        func_8001ECCC
    /* 2BBA690 8006F0F4 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 2BBA694 8006F0F8 087C000C */  jal        func_8001F020
    /* 2BBA698 8006F0FC 00040424 */   addiu     $a0, $zero, 0x400
    /* 2BBA69C 8006F100 28FF2426 */  addiu      $a0, $s1, -0xD8
  .Llevel_41_8006F104:
    /* 2BBA6A0 8006F104 0780103C */  lui        $s0, %hi(D_80069FF0)
    /* 2BBA6A4 8006F108 F09F1026 */  addiu      $s0, $s0, %lo(D_80069FF0)
    /* 2BBA6A8 8006F10C 6C6F000C */  jal        func_8001BDB0
    /* 2BBA6AC 8006F110 21280002 */   addu      $a1, $s0, $zero
    /* 2BBA6B0 8006F114 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2BBA6B4 8006F118 0680053C */  lui        $a1, %hi(D_80067FF0)
    /* 2BBA6B8 8006F11C F07FA58C */  lw         $a1, %lo(D_80067FF0)($a1)
    /* 2BBA6BC 8006F120 21300002 */  addu       $a2, $s0, $zero
    /* 2BBA6C0 8006F124 806F000C */  jal        func_8001BE00
    /* 2BBA6C4 8006F128 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 2BBA6C8 8006F12C 1000A48F */  lw         $a0, 0x10($sp)
    /* 2BBA6CC 8006F130 1400A58F */  lw         $a1, 0x14($sp)
    /* 2BBA6D0 8006F134 2E6D000C */  jal        func_8001B4B8
    /* 2BBA6D4 8006F138 01000624 */   addiu     $a2, $zero, 0x1
    /* 2BBA6D8 8006F13C A8FF2426 */  addiu      $a0, $s1, -0x58
    /* 2BBA6DC 8006F140 80801200 */  sll        $s0, $s2, 2
    /* 2BBA6E0 8006F144 21801202 */  addu       $s0, $s0, $s2
    /* 2BBA6E4 8006F148 80801000 */  sll        $s0, $s0, 2
    /* 2BBA6E8 8006F14C 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 2BBA6EC 8006F150 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 2BBA6F0 8006F154 21280502 */  addu       $a1, $s0, $a1
    /* 2BBA6F4 8006F158 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2BBA6F8 8006F15C F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2BBA6FC 8006F160 337B000C */  jal        func_8001ECCC
    /* 2BBA700 8006F164 21300000 */   addu      $a2, $zero, $zero
    /* 2BBA704 8006F168 BCFF2426 */  addiu      $a0, $s1, -0x44
    /* 2BBA708 8006F16C 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 2BBA70C 8006F170 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 2BBA710 8006F174 21280502 */  addu       $a1, $s0, $a1
    /* 2BBA714 8006F178 337B000C */  jal        func_8001ECCC
    /* 2BBA718 8006F17C 21300000 */   addu      $a2, $zero, $zero
    /* 2BBA71C 8006F180 D0FF2426 */  addiu      $a0, $s1, -0x30
    /* 2BBA720 8006F184 0680053C */  lui        $a1, %hi(D_80061858)
    /* 2BBA724 8006F188 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 2BBA728 8006F18C 337B000C */  jal        func_8001ECCC
    /* 2BBA72C 8006F190 21300000 */   addu      $a2, $zero, $zero
    /* 2BBA730 8006F194 E4FF2426 */  addiu      $a0, $s1, -0x1C
    /* 2BBA734 8006F198 0680053C */  lui        $a1, %hi(D_80061844)
    /* 2BBA738 8006F19C 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 2BBA73C 8006F1A0 337B000C */  jal        func_8001ECCC
    /* 2BBA740 8006F1A4 21300000 */   addu      $a2, $zero, $zero
  .Llevel_41_8006F1A8:
    /* 2BBA744 8006F1A8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2BBA748 8006F1AC 2800B28F */  lw         $s2, 0x28($sp)
    /* 2BBA74C 8006F1B0 2400B18F */  lw         $s1, 0x24($sp)
    /* 2BBA750 8006F1B4 2000B08F */  lw         $s0, 0x20($sp)
    /* 2BBA754 8006F1B8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2BBA758 8006F1BC 0800E003 */  jr         $ra
    /* 2BBA75C 8006F1C0 00000000 */   nop
endlabel func_level_41_8006EE38
