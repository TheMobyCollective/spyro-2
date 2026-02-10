.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002F08C, 0x71C

glabel func_8002F08C
    /* 1F88C 8002F08C 0780023C */  lui        $v0, %hi(D_8006AAB4)
    /* 1F890 8002F090 B4AA4290 */  lbu        $v0, %lo(D_8006AAB4)($v0)
    /* 1F894 8002F094 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 1F898 8002F098 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 1F89C 8002F09C 7800BEAF */  sw         $fp, 0x78($sp)
    /* 1F8A0 8002F0A0 7400B7AF */  sw         $s7, 0x74($sp)
    /* 1F8A4 8002F0A4 7000B6AF */  sw         $s6, 0x70($sp)
    /* 1F8A8 8002F0A8 6C00B5AF */  sw         $s5, 0x6C($sp)
    /* 1F8AC 8002F0AC 6800B4AF */  sw         $s4, 0x68($sp)
    /* 1F8B0 8002F0B0 6400B3AF */  sw         $s3, 0x64($sp)
    /* 1F8B4 8002F0B4 6000B2AF */  sw         $s2, 0x60($sp)
    /* 1F8B8 8002F0B8 5C00B1AF */  sw         $s1, 0x5C($sp)
    /* 1F8BC 8002F0BC 5800B0AF */  sw         $s0, 0x58($sp)
    /* 1F8C0 8002F0C0 AC014010 */  beqz       $v0, .L8002F774
    /* 1F8C4 8002F0C4 4800A0AF */   sw        $zero, 0x48($sp)
    /* 1F8C8 8002F0C8 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 1F8CC 8002F0CC B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 1F8D0 8002F0D0 00000000 */  nop
    /* 1F8D4 8002F0D4 0D004014 */  bnez       $v0, .L8002F10C
    /* 1F8D8 8002F0D8 00000000 */   nop
    /* 1F8DC 8002F0DC 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 1F8E0 8002F0E0 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 1F8E4 8002F0E4 00000000 */  nop
    /* 1F8E8 8002F0E8 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1F8EC 8002F0EC 07004014 */  bnez       $v0, .L8002F10C
    /* 1F8F0 8002F0F0 00010224 */   addiu     $v0, $zero, 0x100
    /* 1F8F4 8002F0F4 23104300 */  subu       $v0, $v0, $v1
    /* 1F8F8 8002F0F8 C0100200 */  sll        $v0, $v0, 3
    /* 1F8FC 8002F0FC 0780013C */  lui        $at, %hi(D_8006A178)
    /* 1F900 8002F100 78A122AC */  sw         $v0, %lo(D_8006A178)($at)
    /* 1F904 8002F104 45BC0008 */  j          .L8002F114
    /* 1F908 8002F108 00000000 */   nop
  .L8002F10C:
    /* 1F90C 8002F10C 0780013C */  lui        $at, %hi(D_8006A178)
    /* 1F910 8002F110 78A120AC */  sw         $zero, %lo(D_8006A178)($at)
  .L8002F114:
    /* 1F914 8002F114 0680043C */  lui        $a0, %hi(D_80067018)
    /* 1F918 8002F118 1870848C */  lw         $a0, %lo(D_80067018)($a0)
    /* 1F91C 8002F11C 00000000 */  nop
    /* 1F920 8002F120 30008018 */  blez       $a0, .L8002F1E4
    /* 1F924 8002F124 21380000 */   addu      $a3, $zero, $zero
    /* 1F928 8002F128 0780053C */  lui        $a1, %hi(D_8006AAB5)
    /* 1F92C 8002F12C B5AAA524 */  addiu      $a1, $a1, %lo(D_8006AAB5)
    /* 1F930 8002F130 0680063C */  lui        $a2, %hi(D_80063130)
    /* 1F934 8002F134 3031C624 */  addiu      $a2, $a2, %lo(D_80063130)
    /* 1F938 8002F138 20000824 */  addiu      $t0, $zero, 0x20
  .L8002F13C:
    /* 1F93C 8002F13C 0000A390 */  lbu        $v1, 0x0($a1)
    /* 1F940 8002F140 00000000 */  nop
    /* 1F944 8002F144 0800622C */  sltiu      $v0, $v1, 0x8
    /* 1F948 8002F148 1D004010 */  beqz       $v0, .L8002F1C0
    /* 1F94C 8002F14C 00000000 */   nop
    /* 1F950 8002F150 0200A290 */  lbu        $v0, 0x2($a1)
    /* 1F954 8002F154 00000000 */  nop
    /* 1F958 8002F158 C0100200 */  sll        $v0, $v0, 3
    /* 1F95C 8002F15C 21104600 */  addu       $v0, $v0, $a2
    /* 1F960 8002F160 21104300 */  addu       $v0, $v0, $v1
    /* 1F964 8002F164 00004390 */  lbu        $v1, 0x0($v0)
    /* 1F968 8002F168 23108700 */  subu       $v0, $a0, $a3
    /* 1F96C 8002F16C 0780013C */  lui        $at, %hi(D_8006AA3C)
    /* 1F970 8002F170 21082300 */  addu       $at, $at, $v1
    /* 1F974 8002F174 3CAA22A0 */  sb         $v0, %lo(D_8006AA3C)($at)
    /* 1F978 8002F178 0200A290 */  lbu        $v0, 0x2($a1)
    /* 1F97C 8002F17C 0000A390 */  lbu        $v1, 0x0($a1)
    /* 1F980 8002F180 C0100200 */  sll        $v0, $v0, 3
    /* 1F984 8002F184 21104600 */  addu       $v0, $v0, $a2
    /* 1F988 8002F188 21104300 */  addu       $v0, $v0, $v1
    /* 1F98C 8002F18C 00004290 */  lbu        $v0, 0x0($v0)
    /* 1F990 8002F190 0780013C */  lui        $at, %hi(D_8006AA44)
    /* 1F994 8002F194 21082200 */  addu       $at, $at, $v0
    /* 1F998 8002F198 44AA28A0 */  sb         $t0, %lo(D_8006AA44)($at)
    /* 1F99C 8002F19C 0200A290 */  lbu        $v0, 0x2($a1)
    /* 1F9A0 8002F1A0 0000A390 */  lbu        $v1, 0x0($a1)
    /* 1F9A4 8002F1A4 C0100200 */  sll        $v0, $v0, 3
    /* 1F9A8 8002F1A8 21104600 */  addu       $v0, $v0, $a2
    /* 1F9AC 8002F1AC 21104300 */  addu       $v0, $v0, $v1
    /* 1F9B0 8002F1B0 00004290 */  lbu        $v0, 0x0($v0)
    /* 1F9B4 8002F1B4 0780013C */  lui        $at, %hi(D_8006AA4C)
    /* 1F9B8 8002F1B8 21082200 */  addu       $at, $at, $v0
    /* 1F9BC 8002F1BC 4CAA20A0 */  sb         $zero, %lo(D_8006AA4C)($at)
  .L8002F1C0:
    /* 1F9C0 8002F1C0 0100E724 */  addiu      $a3, $a3, 0x1
    /* 1F9C4 8002F1C4 0000A290 */  lbu        $v0, 0x0($a1)
    /* 1F9C8 8002F1C8 0680043C */  lui        $a0, %hi(D_80067018)
    /* 1F9CC 8002F1CC 1870848C */  lw         $a0, %lo(D_80067018)($a0)
    /* 1F9D0 8002F1D0 01004224 */  addiu      $v0, $v0, 0x1
    /* 1F9D4 8002F1D4 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 1F9D8 8002F1D8 2A10E400 */  slt        $v0, $a3, $a0
    /* 1F9DC 8002F1DC D7FF4014 */  bnez       $v0, .L8002F13C
    /* 1F9E0 8002F1E0 00000000 */   nop
  .L8002F1E4:
    /* 1F9E4 8002F1E4 0780113C */  lui        $s1, %hi(D_8006AAB6)
    /* 1F9E8 8002F1E8 B6AA3126 */  addiu      $s1, $s1, %lo(D_8006AAB6)
    /* 1F9EC 8002F1EC 00002292 */  lbu        $v0, 0x0($s1)
    /* 1F9F0 8002F1F0 00000000 */  nop
    /* 1F9F4 8002F1F4 5E004010 */  beqz       $v0, .L8002F370
    /* 1F9F8 8002F1F8 66FF2426 */   addiu     $a0, $s1, -0x9A
    /* 1F9FC 8002F1FC A4CA000C */  jal        func_80032A90
    /* 1FA00 8002F200 1800A427 */   addiu     $a0, $sp, 0x18
    /* 1FA04 8002F204 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1FA08 8002F208 A0000524 */  addiu      $a1, $zero, 0xA0
    /* 1FA0C 8002F20C 21300000 */  addu       $a2, $zero, $zero
    /* 1FA10 8002F210 21380000 */  addu       $a3, $zero, $zero
    /* 1FA14 8002F214 0100093C */  lui        $t1, (0x10000 >> 16)
    /* 1FA18 8002F218 1000A9AF */  sw         $t1, 0x10($sp)
    /* 1FA1C 8002F21C 5701010C */  jal        func_8004055C
    /* 1FA20 8002F220 1400A0AF */   sw        $zero, 0x14($sp)
    /* 1FA24 8002F224 02002426 */  addiu      $a0, $s1, 0x2
    /* 1FA28 8002F228 0780103C */  lui        $s0, %hi(D_80069FFC)
    /* 1FA2C 8002F22C FC9F1026 */  addiu      $s0, $s0, %lo(D_80069FFC)
    /* 1FA30 8002F230 90010526 */  addiu      $a1, $s0, 0x190
    /* 1FA34 8002F234 00000292 */  lbu        $v0, 0x0($s0)
    /* 1FA38 8002F238 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 1FA3C 8002F23C FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 1FA40 8002F240 0780073C */  lui        $a3, %hi(D_80069FFE)
    /* 1FA44 8002F244 FE9FE790 */  lbu        $a3, %lo(D_80069FFE)($a3)
    /* 1FA48 8002F248 0780013C */  lui        $at, %hi(D_8006AA28)
    /* 1FA4C 8002F24C 28AA22A0 */  sb         $v0, %lo(D_8006AA28)($at)
    /* 1FA50 8002F250 0780013C */  lui        $at, %hi(D_8006AA29)
    /* 1FA54 8002F254 29AA23A0 */  sb         $v1, %lo(D_8006AA29)($at)
    /* 1FA58 8002F258 0780013C */  lui        $at, %hi(D_8006AA2A)
    /* 1FA5C 8002F25C 2AAA27A0 */  sb         $a3, %lo(D_8006AA2A)($at)
    /* 1FA60 8002F260 036D000C */  jal        func_8001B40C
    /* 1FA64 8002F264 14000624 */   addiu     $a2, $zero, 0x14
    /* 1FA68 8002F268 24000426 */  addiu      $a0, $s0, 0x24
    /* 1FA6C 8002F26C 1800A527 */  addiu      $a1, $sp, 0x18
    /* 1FA70 8002F270 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 1FA74 8002F274 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 1FA78 8002F278 0680023C */  lui        $v0, %hi(D_80066F24)
    /* 1FA7C 8002F27C 246F428C */  lw         $v0, %lo(D_80066F24)($v0)
    /* 1FA80 8002F280 0780063C */  lui        $a2, %hi(D_8006A006)
    /* 1FA84 8002F284 06A0C690 */  lbu        $a2, %lo(D_8006A006)($a2)
    /* 1FA88 8002F288 80180300 */  sll        $v1, $v1, 2
    /* 1FA8C 8002F28C 21186200 */  addu       $v1, $v1, $v0
    /* 1FA90 8002F290 80100600 */  sll        $v0, $a2, 2
    /* 1FA94 8002F294 21104600 */  addu       $v0, $v0, $a2
    /* 1FA98 8002F298 0000638C */  lw         $v1, 0x0($v1)
    /* 1FA9C 8002F29C 80100200 */  sll        $v0, $v0, 2
    /* 1FAA0 8002F2A0 21186200 */  addu       $v1, $v1, $v0
    /* 1FAA4 8002F2A4 1C00678C */  lw         $a3, 0x1C($v1)
    /* 1FAA8 8002F2A8 2130A000 */  addu       $a2, $a1, $zero
    /* 1FAAC 8002F2AC 43150700 */  sra        $v0, $a3, 21
    /* 1FAB0 8002F2B0 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1FAB4 8002F2B4 C0120700 */  sll        $v0, $a3, 11
    /* 1FAB8 8002F2B8 43150200 */  sra        $v0, $v0, 21
    /* 1FABC 8002F2BC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1FAC0 8002F2C0 80150700 */  sll        $v0, $a3, 22
    /* 1FAC4 8002F2C4 43150200 */  sra        $v0, $v0, 21
    /* 1FAC8 8002F2C8 696E000C */  jal        func_8001B9A4
    /* 1FACC 8002F2CC 2000A2AF */   sw        $v0, 0x20($sp)
    /* 1FAD0 8002F2D0 66FF2426 */  addiu      $a0, $s1, -0x9A
    /* 1FAD4 8002F2D4 1800A527 */  addiu      $a1, $sp, 0x18
    /* 1FAD8 8002F2D8 736F000C */  jal        func_8001BDCC
    /* 1FADC 8002F2DC F4FF0626 */   addiu     $a2, $s0, -0xC
    /* 1FAE0 8002F2E0 0780033C */  lui        $v1, %hi(D_8006AAB5)
    /* 1FAE4 8002F2E4 B5AA6390 */  lbu        $v1, %lo(D_8006AAB5)($v1)
    /* 1FAE8 8002F2E8 00000000 */  nop
    /* 1FAEC 8002F2EC 0E00622C */  sltiu      $v0, $v1, 0xE
    /* 1FAF0 8002F2F0 09004010 */  beqz       $v0, .L8002F318
    /* 1FAF4 8002F2F4 1800A427 */   addiu     $a0, $sp, 0x18
    /* 1FAF8 8002F2F8 42100300 */  srl        $v0, $v1, 1
    /* 1FAFC 8002F2FC 40280200 */  sll        $a1, $v0, 1
    /* 1FB00 8002F300 2128A200 */  addu       $a1, $a1, $v0
    /* 1FB04 8002F304 80280500 */  sll        $a1, $a1, 2
    /* 1FB08 8002F308 0680023C */  lui        $v0, %hi(D_80062A70)
    /* 1FB0C 8002F30C 702A4224 */  addiu      $v0, $v0, %lo(D_80062A70)
    /* 1FB10 8002F310 C8BC0008 */  j          .L8002F320
    /* 1FB14 8002F314 2128A200 */   addu      $a1, $a1, $v0
  .L8002F318:
    /* 1FB18 8002F318 0680053C */  lui        $a1, %hi(D_80062AC4)
    /* 1FB1C 8002F31C C42AA524 */  addiu      $a1, $a1, %lo(D_80062AC4)
  .L8002F320:
    /* 1FB20 8002F320 6C6F000C */  jal        func_8001BDB0
    /* 1FB24 8002F324 21A00000 */   addu      $s4, $zero, $zero
    /* 1FB28 8002F328 0780113C */  lui        $s1, %hi(D_8006A18C)
    /* 1FB2C 8002F32C 8CA13126 */  addiu      $s1, $s1, %lo(D_8006A18C)
    /* 1FB30 8002F330 21202002 */  addu       $a0, $s1, $zero
    /* 1FB34 8002F334 1800A527 */  addiu      $a1, $sp, 0x18
    /* 1FB38 8002F338 696E000C */  jal        func_8001B9A4
    /* 1FB3C 8002F33C 2130A000 */   addu      $a2, $a1, $zero
    /* 1FB40 8002F340 0780103C */  lui        $s0, %hi(D_8006AA1C)
    /* 1FB44 8002F344 1CAA1026 */  addiu      $s0, $s0, %lo(D_8006AA1C)
    /* 1FB48 8002F348 21200002 */  addu       $a0, $s0, $zero
    /* 1FB4C 8002F34C 21280002 */  addu       $a1, $s0, $zero
    /* 1FB50 8002F350 736F000C */  jal        func_8001BDCC
    /* 1FB54 8002F354 1800A627 */   addiu     $a2, $sp, 0x18
    /* 1FB58 8002F358 24010426 */  addiu      $a0, $s0, 0x124
    /* 1FB5C 8002F35C 21280002 */  addu       $a1, $s0, $zero
    /* 1FB60 8002F360 806F000C */  jal        func_8001BE00
    /* 1FB64 8002F364 64FE2626 */   addiu     $a2, $s1, -0x19C
    /* 1FB68 8002F368 E2BC0008 */  j          .L8002F388
    /* 1FB6C 8002F36C 2800B127 */   addiu     $s1, $sp, 0x28
  .L8002F370:
    /* 1FB70 8002F370 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1FB74 8002F374 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 1FB78 8002F378 736F000C */  jal        func_8001BDCC
    /* 1FB7C 8002F37C 8A002626 */   addiu     $a2, $s1, 0x8A
    /* 1FB80 8002F380 21A00000 */  addu       $s4, $zero, $zero
    /* 1FB84 8002F384 2800B127 */  addiu      $s1, $sp, 0x28
  .L8002F388:
    /* 1FB88 8002F388 3800B227 */  addiu      $s2, $sp, 0x38
    /* 1FB8C 8002F38C 21F00000 */  addu       $fp, $zero, $zero
    /* 1FB90 8002F390 0780173C */  lui        $s7, %hi(D_8006AAB8)
    /* 1FB94 8002F394 B8AAF726 */  addiu      $s7, $s7, %lo(D_8006AAB8)
    /* 1FB98 8002F398 84FFF326 */  addiu      $s3, $s7, -0x7C
    /* 1FB9C 8002F39C 94FFF526 */  addiu      $s5, $s7, -0x6C
    /* 1FBA0 8002F3A0 0780163C */  lui        $s6, %hi(D_8006AAE0)
    /* 1FBA4 8002F3A4 E0AAD626 */  addiu      $s6, $s6, %lo(D_8006AAE0)
  .L8002F3A8:
    /* 1FBA8 8002F3A8 00006292 */  lbu        $v0, 0x0($s3)
    /* 1FBAC 8002F3AC 00000000 */  nop
    /* 1FBB0 8002F3B0 DF004010 */  beqz       $v0, .L8002F730
    /* 1FBB4 8002F3B4 0400822A */   slti      $v0, $s4, 0x4
    /* 1FBB8 8002F3B8 03004010 */  beqz       $v0, .L8002F3C8
    /* 1FBBC 8002F3BC 16000624 */   addiu     $a2, $zero, 0x16
    /* 1FBC0 8002F3C0 F4BC0008 */  j          .L8002F3D0
    /* 1FBC4 8002F3C4 1E000424 */   addiu     $a0, $zero, 0x1E
  .L8002F3C8:
    /* 1FBC8 8002F3C8 1C000624 */  addiu      $a2, $zero, 0x1C
    /* 1FBCC 8002F3CC 24000424 */  addiu      $a0, $zero, 0x24
  .L8002F3D0:
    /* 1FBD0 8002F3D0 0000A292 */  lbu        $v0, 0x0($s5)
    /* 1FBD4 8002F3D4 00000000 */  nop
    /* 1FBD8 8002F3D8 07004010 */  beqz       $v0, .L8002F3F8
    /* 1FBDC 8002F3DC 00000000 */   nop
    /* 1FBE0 8002F3E0 0680033C */  lui        $v1, %hi(D_80067018)
    /* 1FBE4 8002F3E4 1870638C */  lw         $v1, %lo(D_80067018)($v1)
    /* 1FBE8 8002F3E8 00006292 */  lbu        $v0, 0x0($s3)
    /* 1FBEC 8002F3EC 00000000 */  nop
    /* 1FBF0 8002F3F0 21104300 */  addu       $v0, $v0, $v1
    /* 1FBF4 8002F3F4 000062A2 */  sb         $v0, 0x0($s3)
  .L8002F3F8:
    /* 1FBF8 8002F3F8 00006292 */  lbu        $v0, 0x0($s3)
    /* 1FBFC 8002F3FC 00000000 */  nop
    /* 1FC00 8002F400 2A104400 */  slt        $v0, $v0, $a0
    /* 1FC04 8002F404 03004014 */  bnez       $v0, .L8002F414
    /* 1FC08 8002F408 02000224 */   addiu     $v0, $zero, 0x2
    /* 1FC0C 8002F40C D0BD0008 */  j          .L8002F740
    /* 1FC10 8002F410 000060A2 */   sb        $zero, 0x0($s3)
  .L8002F414:
    /* 1FC14 8002F414 0000A392 */  lbu        $v1, 0x0($s5)
    /* 1FC18 8002F418 00000000 */  nop
    /* 1FC1C 8002F41C C8006210 */  beq        $v1, $v0, .L8002F740
    /* 1FC20 8002F420 0400822A */   slti      $v0, $s4, 0x4
    /* 1FC24 8002F424 05004010 */  beqz       $v0, .L8002F43C
    /* 1FC28 8002F428 18008602 */   mult      $s4, $a2
    /* 1FC2C 8002F42C 0680023C */  lui        $v0, %hi(D_80062AD0)
    /* 1FC30 8002F430 D02A4224 */  addiu      $v0, $v0, %lo(D_80062AD0)
    /* 1FC34 8002F434 13BD0008 */  j          .L8002F44C
    /* 1FC38 8002F438 00000000 */   nop
  .L8002F43C:
    /* 1FC3C 8002F43C FCFF8226 */  addiu      $v0, $s4, -0x4
    /* 1FC40 8002F440 18004600 */  mult       $v0, $a2
    /* 1FC44 8002F444 0680023C */  lui        $v0, %hi(D_80062D90)
    /* 1FC48 8002F448 902D4224 */  addiu      $v0, $v0, %lo(D_80062D90)
  .L8002F44C:
    /* 1FC4C 8002F44C 12480000 */  mflo       $t1
    /* 1FC50 8002F450 C0180900 */  sll        $v1, $t1, 3
    /* 1FC54 8002F454 21186200 */  addu       $v1, $v1, $v0
    /* 1FC58 8002F458 00006592 */  lbu        $a1, 0x0($s3)
    /* 1FC5C 8002F45C FFFFC224 */  addiu      $v0, $a2, -0x1
    /* 1FC60 8002F460 2A10A200 */  slt        $v0, $a1, $v0
    /* 1FC64 8002F464 7A004010 */  beqz       $v0, .L8002F650
    /* 1FC68 8002F468 21202002 */   addu      $a0, $s1, $zero
    /* 1FC6C 8002F46C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1FC70 8002F470 C0280500 */  sll        $a1, $a1, 3
    /* 1FC74 8002F474 6370000C */  jal        func_8001C18C
    /* 1FC78 8002F478 21286500 */   addu      $a1, $v1, $a1
    /* 1FC7C 8002F47C 2120E002 */  addu       $a0, $s7, $zero
    /* 1FC80 8002F480 21282002 */  addu       $a1, $s1, $zero
    /* 1FC84 8002F484 696E000C */  jal        func_8001B9A4
    /* 1FC88 8002F488 21302002 */   addu      $a2, $s1, $zero
    /* 1FC8C 8002F48C 21202002 */  addu       $a0, $s1, $zero
    /* 1FC90 8002F490 21282002 */  addu       $a1, $s1, $zero
    /* 1FC94 8002F494 736F000C */  jal        func_8001BDCC
    /* 1FC98 8002F498 64FFE626 */   addiu     $a2, $s7, -0x9C
    /* 1FC9C 8002F49C 0000A292 */  lbu        $v0, 0x0($s5)
    /* 1FCA0 8002F4A0 00000000 */  nop
    /* 1FCA4 8002F4A4 08004014 */  bnez       $v0, .L8002F4C8
    /* 1FCA8 8002F4A8 3800A427 */   addiu     $a0, $sp, 0x38
    /* 1FCAC 8002F4AC 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1FCB0 8002F4B0 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 1FCB4 8002F4B4 6C6F000C */  jal        func_8001BDB0
    /* 1FCB8 8002F4B8 3800A427 */   addiu     $a0, $sp, 0x38
    /* 1FCBC 8002F4BC 01000224 */  addiu      $v0, $zero, 0x1
    /* 1FCC0 8002F4C0 34BD0008 */  j          .L8002F4D0
    /* 1FCC4 8002F4C4 0000A2A2 */   sb        $v0, 0x0($s5)
  .L8002F4C8:
    /* 1FCC8 8002F4C8 6C6F000C */  jal        func_8001BDB0
    /* 1FCCC 8002F4CC 2128C002 */   addu      $a1, $s6, $zero
  .L8002F4D0:
    /* 1FCD0 8002F4D0 2120C002 */  addu       $a0, $s6, $zero
    /* 1FCD4 8002F4D4 6C6F000C */  jal        func_8001BDB0
    /* 1FCD8 8002F4D8 21282002 */   addu      $a1, $s1, $zero
    /* 1FCDC 8002F4DC 21202002 */  addu       $a0, $s1, $zero
    /* 1FCE0 8002F4E0 A0000524 */  addiu      $a1, $zero, 0xA0
    /* 1FCE4 8002F4E4 21300000 */  addu       $a2, $zero, $zero
    /* 1FCE8 8002F4E8 21380000 */  addu       $a3, $zero, $zero
    /* 1FCEC 8002F4EC 0100093C */  lui        $t1, (0x10000 >> 16)
    /* 1FCF0 8002F4F0 1000A9AF */  sw         $t1, 0x10($sp)
    /* 1FCF4 8002F4F4 5701010C */  jal        func_8004055C
    /* 1FCF8 8002F4F8 1400A0AF */   sw        $zero, 0x14($sp)
    /* 1FCFC 8002F4FC 09004014 */  bnez       $v0, .L8002F524
    /* 1FD00 8002F500 02000224 */   addiu     $v0, $zero, 0x2
    /* 1FD04 8002F504 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1FD08 8002F508 3800A427 */  addiu      $a0, $sp, 0x38
    /* 1FD0C 8002F50C 21282002 */  addu       $a1, $s1, $zero
    /* 1FD10 8002F510 21300000 */  addu       $a2, $zero, $zero
    /* 1FD14 8002F514 8EF3000C */  jal        func_8003CE38
    /* 1FD18 8002F518 0100073C */   lui       $a3, (0x10000 >> 16)
    /* 1FD1C 8002F51C 88004010 */  beqz       $v0, .L8002F740
    /* 1FD20 8002F520 02000224 */   addiu     $v0, $zero, 0x2
  .L8002F524:
    /* 1FD24 8002F524 0000A2A2 */  sb         $v0, 0x0($s5)
    /* 1FD28 8002F528 00006292 */  lbu        $v0, 0x0($s3)
    /* 1FD2C 8002F52C 0780013C */  lui        $at, %hi(D_8006AA44)
    /* 1FD30 8002F530 21083400 */  addu       $at, $at, $s4
    /* 1FD34 8002F534 44AA22A0 */  sb         $v0, %lo(D_8006AA44)($at)
    /* 1FD38 8002F538 0680023C */  lui        $v0, %hi(D_800670FC)
    /* 1FD3C 8002F53C FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* 1FD40 8002F540 00000000 */  nop
    /* 1FD44 8002F544 2D004010 */  beqz       $v0, .L8002F5FC
    /* 1FD48 8002F548 F0FF0224 */   addiu     $v0, $zero, -0x10
    /* 1FD4C 8002F54C 4B67010C */  jal        func_80059D2C
    /* 1FD50 8002F550 3800A2AF */   sw        $v0, 0x38($sp)
    /* 1FD54 8002F554 0780093C */  lui        $t1, %hi(D_8006AAE0)
    /* 1FD58 8002F558 E0AA2925 */  addiu      $t1, $t1, %lo(D_8006AAE0)
    /* 1FD5C 8002F55C D8FF2425 */  addiu      $a0, $t1, -0x28
    /* 1FD60 8002F560 21284002 */  addu       $a1, $s2, $zero
    /* 1FD64 8002F564 21304002 */  addu       $a2, $s2, $zero
    /* 1FD68 8002F568 1F004230 */  andi       $v0, $v0, 0x1F
    /* 1FD6C 8002F56C F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 1FD70 8002F570 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 1FD74 8002F574 696E000C */  jal        func_8001B9A4
    /* 1FD78 8002F578 4000A0AF */   sw        $zero, 0x40($sp)
    /* 1FD7C 8002F57C 01000424 */  addiu      $a0, $zero, 0x1
    /* 1FD80 8002F580 01000524 */  addiu      $a1, $zero, 0x1
    /* 1FD84 8002F584 21302002 */  addu       $a2, $s1, $zero
    /* 1FD88 8002F588 0680023C */  lui        $v0, %hi(D_800670FC)
    /* 1FD8C 8002F58C FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* 1FD90 8002F590 21384002 */  addu       $a3, $s2, $zero
    /* 1FD94 8002F594 09F84000 */  jalr       $v0
    /* 1FD98 8002F598 4000A0AF */   sw        $zero, 0x40($sp)
    /* 1FD9C 8002F59C 04000424 */  addiu      $a0, $zero, 0x4
    /* 1FDA0 8002F5A0 4E000524 */  addiu      $a1, $zero, 0x4E
    /* 1FDA4 8002F5A4 21302002 */  addu       $a2, $s1, $zero
    /* 1FDA8 8002F5A8 0680023C */  lui        $v0, %hi(D_800670FC)
    /* 1FDAC 8002F5AC FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* 1FDB0 8002F5B0 00000000 */  nop
    /* 1FDB4 8002F5B4 09F84000 */  jalr       $v0
    /* 1FDB8 8002F5B8 21380000 */   addu      $a3, $zero, $zero
    /* 1FDBC 8002F5BC 21200000 */  addu       $a0, $zero, $zero
    /* 1FDC0 8002F5C0 21284002 */  addu       $a1, $s2, $zero
    /* 1FDC4 8002F5C4 21304002 */  addu       $a2, $s2, $zero
    /* 1FDC8 8002F5C8 30000224 */  addiu      $v0, $zero, 0x30
    /* 1FDCC 8002F5CC 3800A2AF */  sw         $v0, 0x38($sp)
    /* 1FDD0 8002F5D0 3C00A0AF */  sw         $zero, 0x3C($sp)
    /* 1FDD4 8002F5D4 696E000C */  jal        func_8001B9A4
    /* 1FDD8 8002F5D8 4000A0AF */   sw        $zero, 0x40($sp)
    /* 1FDDC 8002F5DC 05000424 */  addiu      $a0, $zero, 0x5
    /* 1FDE0 8002F5E0 4F000524 */  addiu      $a1, $zero, 0x4F
    /* 1FDE4 8002F5E4 21302002 */  addu       $a2, $s1, $zero
    /* 1FDE8 8002F5E8 0680023C */  lui        $v0, %hi(D_800670FC)
    /* 1FDEC 8002F5EC FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* 1FDF0 8002F5F0 00000000 */  nop
    /* 1FDF4 8002F5F4 09F84000 */  jalr       $v0
    /* 1FDF8 8002F5F8 21384002 */   addu      $a3, $s2, $zero
  .L8002F5FC:
    /* 1FDFC 8002F5FC 0780103C */  lui        $s0, %hi(D_8006AB94)
    /* 1FE00 8002F600 94AB1026 */  addiu      $s0, $s0, %lo(D_8006AB94)
    /* 1FE04 8002F604 0000048E */  lw         $a0, 0x0($s0)
    /* 1FE08 8002F608 1EAC000C */  jal        func_8002B078
    /* 1FE0C 8002F60C 00000000 */   nop
    /* 1FE10 8002F610 03000324 */  addiu      $v1, $zero, 0x3
    /* 1FE14 8002F614 4A004314 */  bne        $v0, $v1, .L8002F740
    /* 1FE18 8002F618 00000000 */   nop
    /* 1FE1C 8002F61C 0000028E */  lw         $v0, 0x0($s0)
    /* 1FE20 8002F620 0680033C */  lui        $v1, %hi(D_800673E8)
    /* 1FE24 8002F624 E873638C */  lw         $v1, %lo(D_800673E8)($v1)
    /* 1FE28 8002F628 3F004230 */  andi       $v0, $v0, 0x3F
    /* 1FE2C 8002F62C 80100200 */  sll        $v0, $v0, 2
    /* 1FE30 8002F630 21104300 */  addu       $v0, $v0, $v1
    /* 1FE34 8002F634 0000438C */  lw         $v1, 0x0($v0)
    /* 1FE38 8002F638 00000000 */  nop
    /* 1FE3C 8002F63C 0400628C */  lw         $v0, 0x4($v1)
    /* 1FE40 8002F640 0100093C */  lui        $t1, (0x10000 >> 16)
    /* 1FE44 8002F644 25104900 */  or         $v0, $v0, $t1
    /* 1FE48 8002F648 D0BD0008 */  j          .L8002F740
    /* 1FE4C 8002F64C 040062AC */   sw        $v0, 0x4($v1)
  .L8002F650:
    /* 1FE50 8002F650 0680023C */  lui        $v0, %hi(D_80067018)
    /* 1FE54 8002F654 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* 1FE58 8002F658 00000000 */  nop
    /* 1FE5C 8002F65C 2110A200 */  addu       $v0, $a1, $v0
    /* 1FE60 8002F660 2A10C200 */  slt        $v0, $a2, $v0
    /* 1FE64 8002F664 36004010 */  beqz       $v0, .L8002F740
    /* 1FE68 8002F668 2A10C500 */   slt       $v0, $a2, $a1
    /* 1FE6C 8002F66C 34004014 */  bnez       $v0, .L8002F740
    /* 1FE70 8002F670 21202002 */   addu      $a0, $s1, $zero
    /* 1FE74 8002F674 FEFFC524 */  addiu      $a1, $a2, -0x2
    /* 1FE78 8002F678 C0280500 */  sll        $a1, $a1, 3
    /* 1FE7C 8002F67C 6370000C */  jal        func_8001C18C
    /* 1FE80 8002F680 21286500 */   addu      $a1, $v1, $a1
    /* 1FE84 8002F684 2120E002 */  addu       $a0, $s7, $zero
    /* 1FE88 8002F688 21282002 */  addu       $a1, $s1, $zero
    /* 1FE8C 8002F68C 696E000C */  jal        func_8001B9A4
    /* 1FE90 8002F690 21302002 */   addu      $a2, $s1, $zero
    /* 1FE94 8002F694 21202002 */  addu       $a0, $s1, $zero
    /* 1FE98 8002F698 21282002 */  addu       $a1, $s1, $zero
    /* 1FE9C 8002F69C 736F000C */  jal        func_8001BDCC
    /* 1FEA0 8002F6A0 64FFE626 */   addiu     $a2, $s7, -0x9C
    /* 1FEA4 8002F6A4 686F000C */  jal        func_8001BDA0
    /* 1FEA8 8002F6A8 21204002 */   addu      $a0, $s2, $zero
    /* 1FEAC 8002F6AC 0680023C */  lui        $v0, %hi(D_800670FC)
    /* 1FEB0 8002F6B0 FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* 1FEB4 8002F6B4 00000000 */  nop
    /* 1FEB8 8002F6B8 21004010 */  beqz       $v0, .L8002F740
    /* 1FEBC 8002F6BC 01000424 */   addiu     $a0, $zero, 0x1
    /* 1FEC0 8002F6C0 21280000 */  addu       $a1, $zero, $zero
    /* 1FEC4 8002F6C4 21302002 */  addu       $a2, $s1, $zero
    /* 1FEC8 8002F6C8 09F84000 */  jalr       $v0
    /* 1FECC 8002F6CC 21384002 */   addu      $a3, $s2, $zero
    /* 1FED0 8002F6D0 04000424 */  addiu      $a0, $zero, 0x4
    /* 1FED4 8002F6D4 4E000524 */  addiu      $a1, $zero, 0x4E
    /* 1FED8 8002F6D8 21302002 */  addu       $a2, $s1, $zero
    /* 1FEDC 8002F6DC 0680023C */  lui        $v0, %hi(D_800670FC)
    /* 1FEE0 8002F6E0 FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* 1FEE4 8002F6E4 00000000 */  nop
    /* 1FEE8 8002F6E8 09F84000 */  jalr       $v0
    /* 1FEEC 8002F6EC 21380000 */   addu      $a3, $zero, $zero
    /* 1FEF0 8002F6F0 21200000 */  addu       $a0, $zero, $zero
    /* 1FEF4 8002F6F4 0680053C */  lui        $a1, %hi(D_80063140)
    /* 1FEF8 8002F6F8 4031A524 */  addiu      $a1, $a1, %lo(D_80063140)
    /* 1FEFC 8002F6FC 2128C503 */  addu       $a1, $fp, $a1
    /* 1FF00 8002F700 696E000C */  jal        func_8001B9A4
    /* 1FF04 8002F704 21304002 */   addu      $a2, $s2, $zero
    /* 1FF08 8002F708 05000424 */  addiu      $a0, $zero, 0x5
    /* 1FF0C 8002F70C 4F000524 */  addiu      $a1, $zero, 0x4F
    /* 1FF10 8002F710 21302002 */  addu       $a2, $s1, $zero
    /* 1FF14 8002F714 0680023C */  lui        $v0, %hi(D_800670FC)
    /* 1FF18 8002F718 FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* 1FF1C 8002F71C 00000000 */  nop
    /* 1FF20 8002F720 09F84000 */  jalr       $v0
    /* 1FF24 8002F724 21384002 */   addu      $a3, $s2, $zero
    /* 1FF28 8002F728 D1BD0008 */  j          .L8002F744
    /* 1FF2C 8002F72C 0C00DE27 */   addiu     $fp, $fp, 0xC
  .L8002F730:
    /* 1FF30 8002F730 4800A98F */  lw         $t1, 0x48($sp)
    /* 1FF34 8002F734 00000000 */  nop
    /* 1FF38 8002F738 01002925 */  addiu      $t1, $t1, 0x1
    /* 1FF3C 8002F73C 4800A9AF */  sw         $t1, 0x48($sp)
  .L8002F740:
    /* 1FF40 8002F740 0C00DE27 */  addiu      $fp, $fp, 0xC
  .L8002F744:
    /* 1FF44 8002F744 01007326 */  addiu      $s3, $s3, 0x1
    /* 1FF48 8002F748 0100B526 */  addiu      $s5, $s5, 0x1
    /* 1FF4C 8002F74C 01009426 */  addiu      $s4, $s4, 0x1
    /* 1FF50 8002F750 0800822A */  slti       $v0, $s4, 0x8
    /* 1FF54 8002F754 14FF4014 */  bnez       $v0, .L8002F3A8
    /* 1FF58 8002F758 0C00D626 */   addiu     $s6, $s6, 0xC
    /* 1FF5C 8002F75C 4800A98F */  lw         $t1, 0x48($sp)
    /* 1FF60 8002F760 08000224 */  addiu      $v0, $zero, 0x8
    /* 1FF64 8002F764 03002215 */  bne        $t1, $v0, .L8002F774
    /* 1FF68 8002F768 00000000 */   nop
    /* 1FF6C 8002F76C 0780013C */  lui        $at, %hi(D_8006AAB4)
    /* 1FF70 8002F770 B4AA20A0 */  sb         $zero, %lo(D_8006AAB4)($at)
  .L8002F774:
    /* 1FF74 8002F774 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* 1FF78 8002F778 7800BE8F */  lw         $fp, 0x78($sp)
    /* 1FF7C 8002F77C 7400B78F */  lw         $s7, 0x74($sp)
    /* 1FF80 8002F780 7000B68F */  lw         $s6, 0x70($sp)
    /* 1FF84 8002F784 6C00B58F */  lw         $s5, 0x6C($sp)
    /* 1FF88 8002F788 6800B48F */  lw         $s4, 0x68($sp)
    /* 1FF8C 8002F78C 6400B38F */  lw         $s3, 0x64($sp)
    /* 1FF90 8002F790 6000B28F */  lw         $s2, 0x60($sp)
    /* 1FF94 8002F794 5C00B18F */  lw         $s1, 0x5C($sp)
    /* 1FF98 8002F798 5800B08F */  lw         $s0, 0x58($sp)
    /* 1FF9C 8002F79C 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 1FFA0 8002F7A0 0800E003 */  jr         $ra
    /* 1FFA4 8002F7A4 00000000 */   nop
endlabel func_8002F08C
