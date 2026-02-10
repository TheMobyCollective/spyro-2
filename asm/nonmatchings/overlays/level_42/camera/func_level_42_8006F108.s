.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_42_8006F108, 0x440

glabel func_level_42_8006F108
    /* 2DD06A4 8006F108 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2DD06A8 8006F10C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 2DD06AC 8006F110 0680113C */  lui        $s1, %hi(D_80067FBC)
    /* 2DD06B0 8006F114 BC7F3126 */  addiu      $s1, $s1, %lo(D_80067FBC)
    /* 2DD06B4 8006F118 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2DD06B8 8006F11C 2800B2AF */  sw         $s2, 0x28($sp)
    /* 2DD06BC 8006F120 2000B0AF */  sw         $s0, 0x20($sp)
    /* 2DD06C0 8006F124 0000228E */  lw         $v0, 0x0($s1)
    /* 2DD06C4 8006F128 00000000 */  nop
    /* 2DD06C8 8006F12C 02004224 */  addiu      $v0, $v0, 0x2
    /* 2DD06CC 8006F130 83900200 */  sra        $s2, $v0, 2
    /* 2DD06D0 8006F134 0500422A */  slti       $v0, $s2, 0x5
    /* 2DD06D4 8006F138 02004014 */  bnez       $v0, .Llevel_42_8006F144
    /* 2DD06D8 8006F13C 00000000 */   nop
    /* 2DD06DC 8006F140 04001224 */  addiu      $s2, $zero, 0x4
  .Llevel_42_8006F144:
    /* 2DD06E0 8006F144 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 2DD06E4 8006F148 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 2DD06E8 8006F14C 15000224 */  addiu      $v0, $zero, 0x15
    /* 2DD06EC 8006F150 71006210 */  beq        $v1, $v0, .Llevel_42_8006F318
    /* 2DD06F0 8006F154 16006228 */   slti      $v0, $v1, 0x16
    /* 2DD06F4 8006F158 05004010 */  beqz       $v0, .Llevel_42_8006F170
    /* 2DD06F8 8006F15C 0D000224 */   addiu     $v0, $zero, 0xD
    /* 2DD06FC 8006F160 08006210 */  beq        $v1, $v0, .Llevel_42_8006F184
    /* 2DD0700 8006F164 28FF2426 */   addiu     $a0, $s1, -0xD8
    /* 2DD0704 8006F168 4BBD0108 */  j          .Llevel_42_8006F52C
    /* 2DD0708 8006F16C 00000000 */   nop
  .Llevel_42_8006F170:
    /* 2DD070C 8006F170 17000224 */  addiu      $v0, $zero, 0x17
    /* 2DD0710 8006F174 A7006210 */  beq        $v1, $v0, .Llevel_42_8006F414
    /* 2DD0714 8006F178 00000000 */   nop
    /* 2DD0718 8006F17C 4BBD0108 */  j          .Llevel_42_8006F52C
    /* 2DD071C 8006F180 00000000 */   nop
  .Llevel_42_8006F184:
    /* 2DD0720 8006F184 0780103C */  lui        $s0, %hi(D_80069FF0)
    /* 2DD0724 8006F188 F09F1026 */  addiu      $s0, $s0, %lo(D_80069FF0)
    /* 2DD0728 8006F18C 6C6F000C */  jal        func_8001BDB0
    /* 2DD072C 8006F190 21280002 */   addu      $a1, $s0, $zero
    /* 2DD0730 8006F194 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2DD0734 8006F198 0680053C */  lui        $a1, %hi(D_80067FF0)
    /* 2DD0738 8006F19C F07FA58C */  lw         $a1, %lo(D_80067FF0)($a1)
    /* 2DD073C 8006F1A0 21300002 */  addu       $a2, $s0, $zero
    /* 2DD0740 8006F1A4 806F000C */  jal        func_8001BE00
    /* 2DD0744 8006F1A8 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 2DD0748 8006F1AC 1000A48F */  lw         $a0, 0x10($sp)
    /* 2DD074C 8006F1B0 1400A58F */  lw         $a1, 0x14($sp)
    /* 2DD0750 8006F1B4 2E6D000C */  jal        func_8001B4B8
    /* 2DD0754 8006F1B8 01000624 */   addiu     $a2, $zero, 0x1
    /* 2DD0758 8006F1BC 0680033C */  lui        $v1, %hi(D_80067FB8)
    /* 2DD075C 8006F1C0 B87F638C */  lw         $v1, %lo(D_80067FB8)($v1)
    /* 2DD0760 8006F1C4 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2DD0764 8006F1C8 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2DD0768 8006F1CC 35006014 */  bnez       $v1, .Llevel_42_8006F2A4
    /* 2DD076C 8006F1D0 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 2DD0770 8006F1D4 0680053C */  lui        $a1, %hi(D_80061628)
    /* 2DD0774 8006F1D8 2816A524 */  addiu      $a1, $a1, %lo(D_80061628)
    /* 2DD0778 8006F1DC 337B000C */  jal        func_8001ECCC
    /* 2DD077C 8006F1E0 21304000 */   addu      $a2, $v0, $zero
    /* 2DD0780 8006F1E4 087C000C */  jal        func_8001F020
    /* 2DD0784 8006F1E8 00040424 */   addiu     $a0, $zero, 0x400
    /* 2DD0788 8006F1EC 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 2DD078C 8006F1F0 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 2DD0790 8006F1F4 42000224 */  addiu      $v0, $zero, 0x42
    /* 2DD0794 8006F1F8 2A006214 */  bne        $v1, $v0, .Llevel_42_8006F2A4
    /* 2DD0798 8006F1FC 00000000 */   nop
    /* 2DD079C 8006F200 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2DD07A0 8006F204 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2DD07A4 8006F208 00000000 */  nop
    /* 2DD07A8 8006F20C 5800428C */  lw         $v0, 0x58($v0)
    /* 2DD07AC 8006F210 00000000 */  nop
    /* 2DD07B0 8006F214 06004390 */  lbu        $v1, 0x6($v0)
    /* 2DD07B4 8006F218 03000224 */  addiu      $v0, $zero, 0x3
    /* 2DD07B8 8006F21C 21006214 */  bne        $v1, $v0, .Llevel_42_8006F2A4
    /* 2DD07BC 8006F220 1000A427 */   addiu     $a0, $sp, 0x10
    /* 2DD07C0 8006F224 886E000C */  jal        func_8001BA20
    /* 2DD07C4 8006F228 21280000 */   addu      $a1, $zero, $zero
    /* 2DD07C8 8006F22C 21284000 */  addu       $a1, $v0, $zero
    /* 2DD07CC 8006F230 0048A228 */  slti       $v0, $a1, 0x4800
    /* 2DD07D0 8006F234 1B004010 */  beqz       $v0, .Llevel_42_8006F2A4
    /* 2DD07D4 8006F238 00F8A524 */   addiu     $a1, $a1, -0x800
    /* 2DD07D8 8006F23C 0200A104 */  bgez       $a1, .Llevel_42_8006F248
    /* 2DD07DC 8006F240 00400224 */   addiu     $v0, $zero, 0x4000
    /* 2DD07E0 8006F244 21280000 */  addu       $a1, $zero, $zero
  .Llevel_42_8006F248:
    /* 2DD07E4 8006F248 23284500 */  subu       $a1, $v0, $a1
    /* 2DD07E8 8006F24C 0680033C */  lui        $v1, %hi(D_8006162C)
    /* 2DD07EC 8006F250 2C16638C */  lw         $v1, %lo(D_8006162C)($v1)
    /* 2DD07F0 8006F254 30000224 */  addiu      $v0, $zero, 0x30
    /* 2DD07F4 8006F258 23104300 */  subu       $v0, $v0, $v1
    /* 2DD07F8 8006F25C 18004500 */  mult       $v0, $a1
    /* 2DD07FC 8006F260 0680043C */  lui        $a0, %hi(D_80061634)
    /* 2DD0800 8006F264 3416848C */  lw         $a0, %lo(D_80061634)($a0)
    /* 2DD0804 8006F268 12400000 */  mflo       $t0
    /* 2DD0808 8006F26C 60FF0224 */  addiu      $v0, $zero, -0xA0
    /* 2DD080C 8006F270 23104400 */  subu       $v0, $v0, $a0
    /* 2DD0810 8006F274 18004500 */  mult       $v0, $a1
    /* 2DD0814 8006F278 83130800 */  sra        $v0, $t0, 14
    /* 2DD0818 8006F27C 21186200 */  addu       $v1, $v1, $v0
    /* 2DD081C 8006F280 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 2DD0820 8006F284 0680013C */  lui        $at, %hi(D_80067F18)
    /* 2DD0824 8006F288 187F23AC */  sw         $v1, %lo(D_80067F18)($at)
    /* 2DD0828 8006F28C 12280000 */  mflo       $a1
    /* 2DD082C 8006F290 83130500 */  sra        $v0, $a1, 14
    /* 2DD0830 8006F294 21208200 */  addu       $a0, $a0, $v0
    /* 2DD0834 8006F298 FF0F8430 */  andi       $a0, $a0, 0xFFF
    /* 2DD0838 8006F29C 0680013C */  lui        $at, %hi(D_80067F20)
    /* 2DD083C 8006F2A0 207F24AC */  sw         $a0, %lo(D_80067F20)($at)
  .Llevel_42_8006F2A4:
    /* 2DD0840 8006F2A4 0680113C */  lui        $s1, %hi(D_80067F64)
    /* 2DD0844 8006F2A8 647F3126 */  addiu      $s1, $s1, %lo(D_80067F64)
    /* 2DD0848 8006F2AC 21202002 */  addu       $a0, $s1, $zero
    /* 2DD084C 8006F2B0 80801200 */  sll        $s0, $s2, 2
    /* 2DD0850 8006F2B4 21801202 */  addu       $s0, $s0, $s2
    /* 2DD0854 8006F2B8 80801000 */  sll        $s0, $s0, 2
    /* 2DD0858 8006F2BC 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 2DD085C 8006F2C0 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 2DD0860 8006F2C4 21280502 */  addu       $a1, $s0, $a1
    /* 2DD0864 8006F2C8 337B000C */  jal        func_8001ECCC
    /* 2DD0868 8006F2CC 21300000 */   addu      $a2, $zero, $zero
    /* 2DD086C 8006F2D0 14002426 */  addiu      $a0, $s1, 0x14
    /* 2DD0870 8006F2D4 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 2DD0874 8006F2D8 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 2DD0878 8006F2DC 21280502 */  addu       $a1, $s0, $a1
    /* 2DD087C 8006F2E0 337B000C */  jal        func_8001ECCC
    /* 2DD0880 8006F2E4 21300000 */   addu      $a2, $zero, $zero
    /* 2DD0884 8006F2E8 28002426 */  addiu      $a0, $s1, 0x28
    /* 2DD0888 8006F2EC 0680053C */  lui        $a1, %hi(D_80061858)
    /* 2DD088C 8006F2F0 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 2DD0890 8006F2F4 337B000C */  jal        func_8001ECCC
    /* 2DD0894 8006F2F8 21300000 */   addu      $a2, $zero, $zero
    /* 2DD0898 8006F2FC 3C002426 */  addiu      $a0, $s1, 0x3C
    /* 2DD089C 8006F300 0680053C */  lui        $a1, %hi(D_80061844)
    /* 2DD08A0 8006F304 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 2DD08A4 8006F308 337B000C */  jal        func_8001ECCC
    /* 2DD08A8 8006F30C 21300000 */   addu      $a2, $zero, $zero
    /* 2DD08AC 8006F310 4BBD0108 */  j          .Llevel_42_8006F52C
    /* 2DD08B0 8006F314 00000000 */   nop
  .Llevel_42_8006F318:
    /* 2DD08B4 8006F318 087C000C */  jal        func_8001F020
    /* 2DD08B8 8006F31C 00040424 */   addiu     $a0, $zero, 0x400
    /* 2DD08BC 8006F320 0680023C */  lui        $v0, %hi(D_80067FD4)
    /* 2DD08C0 8006F324 D47F428C */  lw         $v0, %lo(D_80067FD4)($v0)
    /* 2DD08C4 8006F328 00000000 */  nop
    /* 2DD08C8 8006F32C 05004010 */  beqz       $v0, .Llevel_42_8006F344
    /* 2DD08CC 8006F330 01000224 */   addiu     $v0, $zero, 0x1
    /* 2DD08D0 8006F334 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2DD08D4 8006F338 C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* 2DD08D8 8006F33C D3BC0108 */  j          .Llevel_42_8006F34C
    /* 2DD08DC 8006F340 00000000 */   nop
  .Llevel_42_8006F344:
    /* 2DD08E0 8006F344 0680013C */  lui        $at, %hi(D_80067FC6)
    /* 2DD08E4 8006F348 C67F20A0 */  sb         $zero, %lo(D_80067FC6)($at)
  .Llevel_42_8006F34C:
    /* 2DD08E8 8006F34C 0680043C */  lui        $a0, %hi(D_80067FB8)
    /* 2DD08EC 8006F350 B87F8424 */  addiu      $a0, $a0, %lo(D_80067FB8)
    /* 2DD08F0 8006F354 0000828C */  lw         $v0, 0x0($a0)
    /* 2DD08F4 8006F358 00000000 */  nop
    /* 2DD08F8 8006F35C 09004014 */  bnez       $v0, .Llevel_42_8006F384
    /* 2DD08FC 8006F360 00000000 */   nop
    /* 2DD0900 8006F364 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 2DD0904 8006F368 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 2DD0908 8006F36C 0680053C */  lui        $a1, %hi(D_800616A0)
    /* 2DD090C 8006F370 A016A524 */  addiu      $a1, $a1, %lo(D_800616A0)
    /* 2DD0910 8006F374 337B000C */  jal        func_8001ECCC
    /* 2DD0914 8006F378 5CFF8424 */   addiu     $a0, $a0, -0xA4
    /* 2DD0918 8006F37C E3BC0108 */  j          .Llevel_42_8006F38C
    /* 2DD091C 8006F380 00000000 */   nop
  .Llevel_42_8006F384:
    /* 2DD0920 8006F384 0680013C */  lui        $at, %hi(D_80067FD4)
    /* 2DD0924 8006F388 D47F20AC */  sw         $zero, %lo(D_80067FD4)($at)
  .Llevel_42_8006F38C:
    /* 2DD0928 8006F38C 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 2DD092C 8006F390 E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 2DD0930 8006F394 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 2DD0934 8006F398 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 2DD0938 8006F39C 6C6F000C */  jal        func_8001BDB0
    /* 2DD093C 8006F3A0 21202002 */   addu      $a0, $s1, $zero
    /* 2DD0940 8006F3A4 80002426 */  addiu      $a0, $s1, 0x80
    /* 2DD0944 8006F3A8 80801200 */  sll        $s0, $s2, 2
    /* 2DD0948 8006F3AC 21801202 */  addu       $s0, $s0, $s2
    /* 2DD094C 8006F3B0 80801000 */  sll        $s0, $s0, 2
    /* 2DD0950 8006F3B4 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 2DD0954 8006F3B8 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 2DD0958 8006F3BC 21280502 */  addu       $a1, $s0, $a1
    /* 2DD095C 8006F3C0 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 2DD0960 8006F3C4 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 2DD0964 8006F3C8 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2DD0968 8006F3CC F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2DD096C 8006F3D0 337B000C */  jal        func_8001ECCC
    /* 2DD0970 8006F3D4 21300000 */   addu      $a2, $zero, $zero
    /* 2DD0974 8006F3D8 94002426 */  addiu      $a0, $s1, 0x94
    /* 2DD0978 8006F3DC 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 2DD097C 8006F3E0 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 2DD0980 8006F3E4 21280502 */  addu       $a1, $s0, $a1
    /* 2DD0984 8006F3E8 337B000C */  jal        func_8001ECCC
    /* 2DD0988 8006F3EC 21300000 */   addu      $a2, $zero, $zero
    /* 2DD098C 8006F3F0 BC002426 */  addiu      $a0, $s1, 0xBC
    /* 2DD0990 8006F3F4 0680053C */  lui        $a1, %hi(D_80061844)
    /* 2DD0994 8006F3F8 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 2DD0998 8006F3FC 337B000C */  jal        func_8001ECCC
    /* 2DD099C 8006F400 21300000 */   addu      $a2, $zero, $zero
    /* 2DD09A0 8006F404 0680053C */  lui        $a1, %hi(D_80061858)
    /* 2DD09A4 8006F408 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 2DD09A8 8006F40C 3DBD0108 */  j          .Llevel_42_8006F4F4
    /* 2DD09AC 8006F410 A8002426 */   addiu     $a0, $s1, 0xA8
  .Llevel_42_8006F414:
    /* 2DD09B0 8006F414 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 2DD09B4 8006F418 B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 2DD09B8 8006F41C 00000000 */  nop
    /* 2DD09BC 8006F420 10004014 */  bnez       $v0, .Llevel_42_8006F464
    /* 2DD09C0 8006F424 00000000 */   nop
    /* 2DD09C4 8006F428 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 2DD09C8 8006F42C F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 2DD09CC 8006F430 0680053C */  lui        $a1, %hi(D_80061560)
    /* 2DD09D0 8006F434 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 2DD09D4 8006F438 337B000C */  jal        func_8001ECCC
    /* 2DD09D8 8006F43C 58FF2426 */   addiu     $a0, $s1, -0xA8
    /* 2DD09DC 8006F440 087C000C */  jal        func_8001F020
    /* 2DD09E0 8006F444 00040424 */   addiu     $a0, $zero, 0x400
    /* 2DD09E4 8006F448 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 2DD09E8 8006F44C 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 2DD09EC 8006F450 33000224 */  addiu      $v0, $zero, 0x33
    /* 2DD09F0 8006F454 03006214 */  bne        $v1, $v0, .Llevel_42_8006F464
    /* 2DD09F4 8006F458 00060224 */   addiu     $v0, $zero, 0x600
    /* 2DD09F8 8006F45C 0680013C */  lui        $at, %hi(D_80067F1C)
    /* 2DD09FC 8006F460 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_42_8006F464:
    /* 2DD0A00 8006F464 0680113C */  lui        $s1, %hi(D_80067EE4)
    /* 2DD0A04 8006F468 E47E3126 */  addiu      $s1, $s1, %lo(D_80067EE4)
    /* 2DD0A08 8006F46C 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 2DD0A0C 8006F470 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 2DD0A10 8006F474 6C6F000C */  jal        func_8001BDB0
    /* 2DD0A14 8006F478 21202002 */   addu      $a0, $s1, $zero
    /* 2DD0A18 8006F47C 80002426 */  addiu      $a0, $s1, 0x80
    /* 2DD0A1C 8006F480 80801200 */  sll        $s0, $s2, 2
    /* 2DD0A20 8006F484 21801202 */  addu       $s0, $s0, $s2
    /* 2DD0A24 8006F488 80801000 */  sll        $s0, $s0, 2
    /* 2DD0A28 8006F48C 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 2DD0A2C 8006F490 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 2DD0A30 8006F494 0780023C */  lui        $v0, %hi(D_8006A208)
    /* 2DD0A34 8006F498 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* 2DD0A38 8006F49C 21280502 */  addu       $a1, $s0, $a1
    /* 2DD0A3C 8006F4A0 46004290 */  lbu        $v0, 0x46($v0)
    /* 2DD0A40 8006F4A4 00000000 */  nop
    /* 2DD0A44 8006F4A8 00110200 */  sll        $v0, $v0, 4
    /* 2DD0A48 8006F4AC 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 2DD0A4C 8006F4B0 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 2DD0A50 8006F4B4 337B000C */  jal        func_8001ECCC
    /* 2DD0A54 8006F4B8 21300000 */   addu      $a2, $zero, $zero
    /* 2DD0A58 8006F4BC 94002426 */  addiu      $a0, $s1, 0x94
    /* 2DD0A5C 8006F4C0 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 2DD0A60 8006F4C4 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 2DD0A64 8006F4C8 21280502 */  addu       $a1, $s0, $a1
    /* 2DD0A68 8006F4CC 337B000C */  jal        func_8001ECCC
    /* 2DD0A6C 8006F4D0 21300000 */   addu      $a2, $zero, $zero
    /* 2DD0A70 8006F4D4 A8002426 */  addiu      $a0, $s1, 0xA8
    /* 2DD0A74 8006F4D8 0680053C */  lui        $a1, %hi(D_80061858)
    /* 2DD0A78 8006F4DC 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 2DD0A7C 8006F4E0 337B000C */  jal        func_8001ECCC
    /* 2DD0A80 8006F4E4 21300000 */   addu      $a2, $zero, $zero
    /* 2DD0A84 8006F4E8 BC002426 */  addiu      $a0, $s1, 0xBC
    /* 2DD0A88 8006F4EC 0680053C */  lui        $a1, %hi(D_80061844)
    /* 2DD0A8C 8006F4F0 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
  .Llevel_42_8006F4F4:
    /* 2DD0A90 8006F4F4 337B000C */  jal        func_8001ECCC
    /* 2DD0A94 8006F4F8 21300000 */   addu      $a2, $zero, $zero
    /* 2DD0A98 8006F4FC 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 2DD0A9C 8006F500 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 2DD0AA0 8006F504 00000000 */  nop
    /* 2DD0AA4 8006F508 02004230 */  andi       $v0, $v0, 0x2
    /* 2DD0AA8 8006F50C 07004014 */  bnez       $v0, .Llevel_42_8006F52C
    /* 2DD0AAC 8006F510 00000000 */   nop
    /* 2DD0AB0 8006F514 8000228E */  lw         $v0, 0x80($s1)
    /* 2DD0AB4 8006F518 00000000 */  nop
    /* 2DD0AB8 8006F51C 4C004228 */  slti       $v0, $v0, 0x4C
    /* 2DD0ABC 8006F520 02004010 */  beqz       $v0, .Llevel_42_8006F52C
    /* 2DD0AC0 8006F524 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 2DD0AC4 8006F528 800022AE */  sw         $v0, 0x80($s1)
  .Llevel_42_8006F52C:
    /* 2DD0AC8 8006F52C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2DD0ACC 8006F530 2800B28F */  lw         $s2, 0x28($sp)
    /* 2DD0AD0 8006F534 2400B18F */  lw         $s1, 0x24($sp)
    /* 2DD0AD4 8006F538 2000B08F */  lw         $s0, 0x20($sp)
    /* 2DD0AD8 8006F53C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2DD0ADC 8006F540 0800E003 */  jr         $ra
    /* 2DD0AE0 8006F544 00000000 */   nop
endlabel func_level_42_8006F108
