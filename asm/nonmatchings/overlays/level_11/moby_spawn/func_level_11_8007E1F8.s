.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_11_8007E1F8, 0xDE0

glabel func_level_11_8007E1F8
    /* F39794 8007E1F8 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* F39798 8007E1FC 7400B1AF */  sw         $s1, 0x74($sp)
    /* F3979C 8007E200 21888000 */  addu       $s1, $a0, $zero
    /* F397A0 8007E204 8400B5AF */  sw         $s5, 0x84($sp)
    /* F397A4 8007E208 21A8A000 */  addu       $s5, $a1, $zero
    /* F397A8 8007E20C 8800BFAF */  sw         $ra, 0x88($sp)
    /* F397AC 8007E210 8000B4AF */  sw         $s4, 0x80($sp)
    /* F397B0 8007E214 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* F397B4 8007E218 7800B2AF */  sw         $s2, 0x78($sp)
    /* F397B8 8007E21C A404010C */  jal        func_80041290
    /* F397BC 8007E220 7000B0AF */   sw        $s0, 0x70($sp)
    /* F397C0 8007E224 21984000 */  addu       $s3, $v0, $zero
    /* F397C4 8007E228 03006016 */  bnez       $s3, .Llevel_11_8007E238
    /* F397C8 8007E22C 21206002 */   addu      $a0, $s3, $zero
    /* F397CC 8007E230 ECFB0108 */  j          .Llevel_11_8007EFB0
    /* F397D0 8007E234 21100000 */   addu      $v0, $zero, $zero
  .Llevel_11_8007E238:
    /* F397D4 8007E238 21280000 */  addu       $a1, $zero, $zero
    /* F397D8 8007E23C 0000708E */  lw         $s0, 0x0($s3)
    /* F397DC 8007E240 F26C000C */  jal        func_8001B3C8
    /* F397E0 8007E244 58000624 */   addiu     $a2, $zero, 0x58
    /* F397E4 8007E248 21280000 */  addu       $a1, $zero, $zero
    /* F397E8 8007E24C 18000624 */  addiu      $a2, $zero, 0x18
    /* F397EC 8007E250 21200002 */  addu       $a0, $s0, $zero
    /* F397F0 8007E254 F26C000C */  jal        func_8001B3C8
    /* F397F4 8007E258 000064AE */   sw        $a0, 0x0($s3)
    /* F397F8 8007E25C 1600A012 */  beqz       $s5, .Llevel_11_8007E2B8
    /* F397FC 8007E260 360071A6 */   sh        $s1, 0x36($s3)
    /* F39800 8007E264 0680043C */  lui        $a0, %hi(D_80066F14)
    /* F39804 8007E268 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* F39808 8007E26C 00000000 */  nop
    /* F3980C 8007E270 2320A402 */  subu       $a0, $s5, $a0
    /* F39810 8007E274 40190400 */  sll        $v1, $a0, 5
    /* F39814 8007E278 23186400 */  subu       $v1, $v1, $a0
    /* F39818 8007E27C 40190300 */  sll        $v1, $v1, 5
    /* F3981C 8007E280 21186400 */  addu       $v1, $v1, $a0
    /* F39820 8007E284 C0100300 */  sll        $v0, $v1, 3
    /* F39824 8007E288 21186200 */  addu       $v1, $v1, $v0
    /* F39828 8007E28C C0130300 */  sll        $v0, $v1, 15
    /* F3982C 8007E290 23104300 */  subu       $v0, $v0, $v1
    /* F39830 8007E294 80100200 */  sll        $v0, $v0, 2
    /* F39834 8007E298 21104400 */  addu       $v0, $v0, $a0
    /* F39838 8007E29C 23100200 */  negu       $v0, $v0
    /* F3983C 8007E2A0 C3180200 */  sra        $v1, $v0, 3
    /* F39840 8007E2A4 0001622C */  sltiu      $v0, $v1, 0x100
    /* F39844 8007E2A8 04004010 */  beqz       $v0, .Llevel_11_8007E2BC
    /* F39848 8007E2AC FF000224 */   addiu     $v0, $zero, 0xFF
    /* F3984C 8007E2B0 B0F80108 */  j          .Llevel_11_8007E2C0
    /* F39850 8007E2B4 3A0063A2 */   sb        $v1, 0x3A($s3)
  .Llevel_11_8007E2B8:
    /* F39854 8007E2B8 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_11_8007E2BC:
    /* F39858 8007E2BC 3A0062A2 */  sb         $v0, 0x3A($s3)
  .Llevel_11_8007E2C0:
    /* F3985C 8007E2C0 72DD000C */  jal        func_800375C8
    /* F39860 8007E2C4 21206002 */   addu      $a0, $s3, $zero
    /* F39864 8007E2C8 32010224 */  addiu      $v0, $zero, 0x132
    /* F39868 8007E2CC E5002212 */  beq        $s1, $v0, .Llevel_11_8007E664
    /* F3986C 8007E2D0 3301222A */   slti      $v0, $s1, 0x133
    /* F39870 8007E2D4 20004010 */  beqz       $v0, .Llevel_11_8007E358
    /* F39874 8007E2D8 81000224 */   addiu     $v0, $zero, 0x81
    /* F39878 8007E2DC BB002212 */  beq        $s1, $v0, .Llevel_11_8007E5CC
    /* F3987C 8007E2E0 8200222A */   slti      $v0, $s1, 0x82
    /* F39880 8007E2E4 0E004010 */  beqz       $v0, .Llevel_11_8007E320
    /* F39884 8007E2E8 10000224 */   addiu     $v0, $zero, 0x10
    /* F39888 8007E2EC 41002212 */  beq        $s1, $v0, .Llevel_11_8007E3F4
    /* F3988C 8007E2F0 1100222A */   slti      $v0, $s1, 0x11
    /* F39890 8007E2F4 05004010 */  beqz       $v0, .Llevel_11_8007E30C
    /* F39894 8007E2F8 01000224 */   addiu     $v0, $zero, 0x1
    /* F39898 8007E2FC 36002212 */  beq        $s1, $v0, .Llevel_11_8007E3D8
    /* F3989C 8007E300 00000000 */   nop
    /* F398A0 8007E304 E0FB0108 */  j          .Llevel_11_8007EF80
    /* F398A4 8007E308 00000000 */   nop
  .Llevel_11_8007E30C:
    /* F398A8 8007E30C 78000224 */  addiu      $v0, $zero, 0x78
    /* F398AC 8007E310 7B002212 */  beq        $s1, $v0, .Llevel_11_8007E500
    /* F398B0 8007E314 00000000 */   nop
    /* F398B4 8007E318 E0FB0108 */  j          .Llevel_11_8007EF80
    /* F398B8 8007E31C 00000000 */   nop
  .Llevel_11_8007E320:
    /* F398BC 8007E320 DB000224 */  addiu      $v0, $zero, 0xDB
    /* F398C0 8007E324 66002212 */  beq        $s1, $v0, .Llevel_11_8007E4C0
    /* F398C4 8007E328 DC00222A */   slti      $v0, $s1, 0xDC
    /* F398C8 8007E32C 05004010 */  beqz       $v0, .Llevel_11_8007E344
    /* F398CC 8007E330 D3000224 */   addiu     $v0, $zero, 0xD3
    /* F398D0 8007E334 30002212 */  beq        $s1, $v0, .Llevel_11_8007E3F8
    /* F398D4 8007E338 10000324 */   addiu     $v1, $zero, 0x10
    /* F398D8 8007E33C E0FB0108 */  j          .Llevel_11_8007EF80
    /* F398DC 8007E340 00000000 */   nop
  .Llevel_11_8007E344:
    /* F398E0 8007E344 04010224 */  addiu      $v0, $zero, 0x104
    /* F398E4 8007E348 B1002212 */  beq        $s1, $v0, .Llevel_11_8007E610
    /* F398E8 8007E34C 00000000 */   nop
    /* F398EC 8007E350 E0FB0108 */  j          .Llevel_11_8007EF80
    /* F398F0 8007E354 00000000 */   nop
  .Llevel_11_8007E358:
    /* F398F4 8007E358 1D020224 */  addiu      $v0, $zero, 0x21D
    /* F398F8 8007E35C 67022212 */  beq        $s1, $v0, .Llevel_11_8007ECFC
    /* F398FC 8007E360 1E02222A */   slti      $v0, $s1, 0x21E
    /* F39900 8007E364 0E004010 */  beqz       $v0, .Llevel_11_8007E3A0
    /* F39904 8007E368 E2010224 */   addiu     $v0, $zero, 0x1E2
    /* F39908 8007E36C 96012212 */  beq        $s1, $v0, .Llevel_11_8007E9C8
    /* F3990C 8007E370 E301222A */   slti      $v0, $s1, 0x1E3
    /* F39910 8007E374 05004010 */  beqz       $v0, .Llevel_11_8007E38C
    /* F39914 8007E378 46010224 */   addiu     $v0, $zero, 0x146
    /* F39918 8007E37C 50012212 */  beq        $s1, $v0, .Llevel_11_8007E8C0
    /* F3991C 8007E380 0C006426 */   addiu     $a0, $s3, 0xC
    /* F39920 8007E384 E0FB0108 */  j          .Llevel_11_8007EF80
    /* F39924 8007E388 00000000 */   nop
  .Llevel_11_8007E38C:
    /* F39928 8007E38C E3010224 */  addiu      $v0, $zero, 0x1E3
    /* F3992C 8007E390 A5012212 */  beq        $s1, $v0, .Llevel_11_8007EA28
    /* F39930 8007E394 00000000 */   nop
    /* F39934 8007E398 E0FB0108 */  j          .Llevel_11_8007EF80
    /* F39938 8007E39C 00000000 */   nop
  .Llevel_11_8007E3A0:
    /* F3993C 8007E3A0 30020224 */  addiu      $v0, $zero, 0x230
    /* F39940 8007E3A4 9A022212 */  beq        $s1, $v0, .Llevel_11_8007EE10
    /* F39944 8007E3A8 3102222A */   slti      $v0, $s1, 0x231
    /* F39948 8007E3AC 05004010 */  beqz       $v0, .Llevel_11_8007E3C4
    /* F3994C 8007E3B0 2C020224 */   addiu     $v0, $zero, 0x22C
    /* F39950 8007E3B4 66022212 */  beq        $s1, $v0, .Llevel_11_8007ED50
    /* F39954 8007E3B8 0C006426 */   addiu     $a0, $s3, 0xC
    /* F39958 8007E3BC E0FB0108 */  j          .Llevel_11_8007EF80
    /* F3995C 8007E3C0 00000000 */   nop
  .Llevel_11_8007E3C4:
    /* F39960 8007E3C4 31020224 */  addiu      $v0, $zero, 0x231
    /* F39964 8007E3C8 B2022212 */  beq        $s1, $v0, .Llevel_11_8007EE94
    /* F39968 8007E3CC 0C006426 */   addiu     $a0, $s3, 0xC
    /* F3996C 8007E3D0 E0FB0108 */  j          .Llevel_11_8007EF80
    /* F39970 8007E3D4 00000000 */   nop
  .Llevel_11_8007E3D8:
    /* F39974 8007E3D8 0E05010C */  jal        func_80041438
    /* F39978 8007E3DC 21206002 */   addu      $a0, $s3, $zero
    /* F3997C 8007E3E0 18000224 */  addiu      $v0, $zero, 0x18
    /* F39980 8007E3E4 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* F39984 8007E3E8 40000224 */  addiu      $v0, $zero, 0x40
    /* F39988 8007E3EC 96F90108 */  j          .Llevel_11_8007E658
    /* F3998C 8007E3F0 4A0062A2 */   sb        $v0, 0x4A($s3)
  .Llevel_11_8007E3F4:
    /* F39990 8007E3F4 10000324 */  addiu      $v1, $zero, 0x10
  .Llevel_11_8007E3F8:
    /* F39994 8007E3F8 36006286 */  lh         $v0, 0x36($s3)
    /* F39998 8007E3FC 0000718E */  lw         $s1, 0x0($s3)
    /* F3999C 8007E400 18004314 */  bne        $v0, $v1, .Llevel_11_8007E464
    /* F399A0 8007E404 00000000 */   nop
    /* F399A4 8007E408 0680043C */  lui        $a0, %hi(D_8006712C)
    /* F399A8 8007E40C 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* F399AC 8007E410 00000000 */  nop
    /* F399B0 8007E414 04008228 */  slti       $v0, $a0, 0x4
    /* F399B4 8007E418 03004010 */  beqz       $v0, .Llevel_11_8007E428
    /* F399B8 8007E41C 0A000324 */   addiu     $v1, $zero, 0xA
    /* F399BC 8007E420 0EF90108 */  j          .Llevel_11_8007E438
    /* F399C0 8007E424 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_11_8007E428:
    /* F399C4 8007E428 07008228 */  slti       $v0, $a0, 0x7
    /* F399C8 8007E42C 02004010 */  beqz       $v0, .Llevel_11_8007E438
    /* F399CC 8007E430 00000000 */   nop
    /* F399D0 8007E434 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_11_8007E438:
    /* F399D4 8007E438 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* F399D8 8007E43C AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* F399DC 8007E440 0000828C */  lw         $v0, 0x0($a0)
    /* F399E0 8007E444 00000000 */  nop
    /* F399E4 8007E448 01004224 */  addiu      $v0, $v0, 0x1
    /* F399E8 8007E44C 000082AC */  sw         $v0, 0x0($a0)
    /* F399EC 8007E450 2A104300 */  slt        $v0, $v0, $v1
    /* F399F0 8007E454 03004014 */  bnez       $v0, .Llevel_11_8007E464
    /* F399F4 8007E458 D3000224 */   addiu     $v0, $zero, 0xD3
    /* F399F8 8007E45C 000080AC */  sw         $zero, 0x0($a0)
    /* F399FC 8007E460 360062A6 */  sh         $v0, 0x36($s3)
  .Llevel_11_8007E464:
    /* F39A00 8007E464 0E05010C */  jal        func_80041438
    /* F39A04 8007E468 21206002 */   addu      $a0, $s3, $zero
    /* F39A08 8007E46C 0C007026 */  addiu      $s0, $s3, 0xC
    /* F39A0C 8007E470 21200002 */  addu       $a0, $s0, $zero
    /* F39A10 8007E474 6C6F000C */  jal        func_8001BDB0
    /* F39A14 8007E478 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F39A18 8007E47C 21202002 */  addu       $a0, $s1, $zero
    /* F39A1C 8007E480 1400628E */  lw         $v0, 0x14($s3)
    /* F39A20 8007E484 21280002 */  addu       $a1, $s0, $zero
    /* F39A24 8007E488 00024224 */  addiu      $v0, $v0, 0x200
    /* F39A28 8007E48C 6C6F000C */  jal        func_8001BDB0
    /* F39A2C 8007E490 140062AE */   sw        $v0, 0x14($s3)
    /* F39A30 8007E494 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* F39A34 8007E498 1C0062AE */  sw         $v0, 0x1C($s3)
    /* F39A38 8007E49C 02000224 */  addiu      $v0, $zero, 0x2
    /* F39A3C 8007E4A0 470062A2 */  sb         $v0, 0x47($s3)
    /* F39A40 8007E4A4 08070224 */  addiu      $v0, $zero, 0x708
    /* F39A44 8007E4A8 0E0022A6 */  sh         $v0, 0xE($s1)
    /* F39A48 8007E4AC 4B67010C */  jal        func_80059D2C
    /* F39A4C 8007E4B0 110020A2 */   sb        $zero, 0x11($s1)
    /* F39A50 8007E4B4 FC004230 */  andi       $v0, $v0, 0xFC
    /* F39A54 8007E4B8 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F39A58 8007E4BC 120022A2 */   sb        $v0, 0x12($s1)
  .Llevel_11_8007E4C0:
    /* F39A5C 8007E4C0 0C006426 */  addiu      $a0, $s3, 0xC
    /* F39A60 8007E4C4 6C6F000C */  jal        func_8001BDB0
    /* F39A64 8007E4C8 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F39A68 8007E4CC 0E05010C */  jal        func_80041438
    /* F39A6C 8007E4D0 21206002 */   addu      $a0, $s3, $zero
    /* F39A70 8007E4D4 36006386 */  lh         $v1, 0x36($s3)
    /* F39A74 8007E4D8 03000224 */  addiu      $v0, $zero, 0x3
    /* F39A78 8007E4DC 490062A2 */  sb         $v0, 0x49($s3)
    /* F39A7C 8007E4E0 D6000224 */  addiu      $v0, $zero, 0xD6
    /* F39A80 8007E4E4 04006214 */  bne        $v1, $v0, .Llevel_11_8007E4F8
    /* F39A84 8007E4E8 02000224 */   addiu     $v0, $zero, 0x2
    /* F39A88 8007E4EC 01000224 */  addiu      $v0, $zero, 0x1
    /* F39A8C 8007E4F0 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F39A90 8007E4F4 540062A2 */   sb        $v0, 0x54($s3)
  .Llevel_11_8007E4F8:
    /* F39A94 8007E4F8 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F39A98 8007E4FC 540062A2 */   sb        $v0, 0x54($s3)
  .Llevel_11_8007E500:
    /* F39A9C 8007E500 0000708E */  lw         $s0, 0x0($s3)
    /* F39AA0 8007E504 0E05010C */  jal        func_80041438
    /* F39AA4 8007E508 21206002 */   addu      $a0, $s3, $zero
    /* F39AA8 8007E50C 78000224 */  addiu      $v0, $zero, 0x78
    /* F39AAC 8007E510 490060A2 */  sb         $zero, 0x49($s3)
    /* F39AB0 8007E514 000000A6 */  sh         $zero, 0x0($s0)
    /* F39AB4 8007E518 080000A6 */  sh         $zero, 0x8($s0)
    /* F39AB8 8007E51C 060000A6 */  sh         $zero, 0x6($s0)
    /* F39ABC 8007E520 040000A6 */  sh         $zero, 0x4($s0)
    /* F39AC0 8007E524 0D0002A2 */  sb         $v0, 0xD($s0)
    /* F39AC4 8007E528 100000AE */  sw         $zero, 0x10($s0)
    /* F39AC8 8007E52C 0600A012 */  beqz       $s5, .Llevel_11_8007E548
    /* F39ACC 8007E530 140000AE */   sw        $zero, 0x14($s0)
    /* F39AD0 8007E534 0C006426 */  addiu      $a0, $s3, 0xC
    /* F39AD4 8007E538 6C6F000C */  jal        func_8001BDB0
    /* F39AD8 8007E53C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F39ADC 8007E540 71F90108 */  j          .Llevel_11_8007E5C4
    /* F39AE0 8007E544 FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_11_8007E548:
    /* F39AE4 8007E548 0C006426 */  addiu      $a0, $s3, 0xC
    /* F39AE8 8007E54C 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* F39AEC 8007E550 FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* F39AF0 8007E554 0000A390 */  lbu        $v1, 0x0($a1)
    /* F39AF4 8007E558 F2FFA524 */  addiu      $a1, $a1, -0xE
    /* F39AF8 8007E55C 80FF6324 */  addiu      $v1, $v1, -0x80
    /* F39AFC 8007E560 FF006330 */  andi       $v1, $v1, 0xFF
    /* F39B00 8007E564 40180300 */  sll        $v1, $v1, 1
    /* F39B04 8007E568 0680013C */  lui        $at, %hi(D_80061C58)
    /* F39B08 8007E56C 21082300 */  addu       $at, $at, $v1
    /* F39B0C 8007E570 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* F39B10 8007E574 1000A627 */  addiu      $a2, $sp, 0x10
    /* F39B14 8007E578 40110700 */  sll        $v0, $a3, 5
    /* F39B18 8007E57C 23104700 */  subu       $v0, $v0, $a3
    /* F39B1C 8007E580 80100200 */  sll        $v0, $v0, 2
    /* F39B20 8007E584 21104700 */  addu       $v0, $v0, $a3
    /* F39B24 8007E588 43120200 */  sra        $v0, $v0, 9
    /* F39B28 8007E58C 1000A2AF */  sw         $v0, 0x10($sp)
    /* F39B2C 8007E590 0680013C */  lui        $at, %hi(D_80061BD8)
    /* F39B30 8007E594 21082300 */  addu       $at, $at, $v1
    /* F39B34 8007E598 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* F39B38 8007E59C E8030224 */  addiu      $v0, $zero, 0x3E8
    /* F39B3C 8007E5A0 1800A2AF */  sw         $v0, 0x18($sp)
    /* F39B40 8007E5A4 40110300 */  sll        $v0, $v1, 5
    /* F39B44 8007E5A8 23104300 */  subu       $v0, $v0, $v1
    /* F39B48 8007E5AC 80100200 */  sll        $v0, $v0, 2
    /* F39B4C 8007E5B0 21104300 */  addu       $v0, $v0, $v1
    /* F39B50 8007E5B4 43120200 */  sra        $v0, $v0, 9
    /* F39B54 8007E5B8 736F000C */  jal        func_8001BDCC
    /* F39B58 8007E5BC 1400A2AF */   sw        $v0, 0x14($sp)
    /* F39B5C 8007E5C0 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_11_8007E5C4:
    /* F39B60 8007E5C4 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F39B64 8007E5C8 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_11_8007E5CC:
    /* F39B68 8007E5CC 0C006426 */  addiu      $a0, $s3, 0xC
    /* F39B6C 8007E5D0 6C6F000C */  jal        func_8001BDB0
    /* F39B70 8007E5D4 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F39B74 8007E5D8 0E05010C */  jal        func_80041438
    /* F39B78 8007E5DC 21206002 */   addu      $a0, $s3, $zero
    /* F39B7C 8007E5E0 003F023C */  lui        $v0, (0x3F005080 >> 16)
    /* F39B80 8007E5E4 80504234 */  ori        $v0, $v0, (0x3F005080 & 0xFFFF)
    /* F39B84 8007E5E8 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* F39B88 8007E5EC CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* F39B8C 8007E5F0 40000424 */  addiu      $a0, $zero, 0x40
    /* F39B90 8007E5F4 4F0064A2 */  sb         $a0, 0x4F($s3)
    /* F39B94 8007E5F8 540062AE */  sw         $v0, 0x54($s3)
    /* F39B98 8007E5FC 001C0300 */  sll        $v1, $v1, 16
    /* F39B9C 8007E600 031D0300 */  sra        $v1, $v1, 20
    /* F39BA0 8007E604 80FF6324 */  addiu      $v1, $v1, -0x80
    /* F39BA4 8007E608 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F39BA8 8007E60C 460063A2 */   sb        $v1, 0x46($s3)
  .Llevel_11_8007E610:
    /* F39BAC 8007E610 0E05010C */  jal        func_80041438
    /* F39BB0 8007E614 21206002 */   addu      $a0, $s3, $zero
    /* F39BB4 8007E618 02000224 */  addiu      $v0, $zero, 0x2
    /* F39BB8 8007E61C 0E00A012 */  beqz       $s5, .Llevel_11_8007E658
    /* F39BBC 8007E620 540062A2 */   sb        $v0, 0x54($s3)
    /* F39BC0 8007E624 0C006426 */  addiu      $a0, $s3, 0xC
    /* F39BC4 8007E628 0000628E */  lw         $v0, 0x0($s3)
    /* F39BC8 8007E62C 0C00A526 */  addiu      $a1, $s5, 0xC
    /* F39BCC 8007E630 6C6F000C */  jal        func_8001BDB0
    /* F39BD0 8007E634 000055AC */   sw        $s5, 0x0($v0)
    /* F39BD4 8007E638 0A000224 */  addiu      $v0, $zero, 0xA
    /* F39BD8 8007E63C 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* F39BDC 8007E640 1400628E */  lw         $v0, 0x14($s3)
    /* F39BE0 8007E644 08000324 */  addiu      $v1, $zero, 0x8
    /* F39BE4 8007E648 4C0063A2 */  sb         $v1, 0x4C($s3)
    /* F39BE8 8007E64C 00044224 */  addiu      $v0, $v0, 0x400
    /* F39BEC 8007E650 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F39BF0 8007E654 140062AE */   sw        $v0, 0x14($s3)
  .Llevel_11_8007E658:
    /* F39BF4 8007E658 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* F39BF8 8007E65C EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F39BFC 8007E660 1C0062AE */   sw        $v0, 0x1C($s3)
  .Llevel_11_8007E664:
    /* F39C00 8007E664 0C006426 */  addiu      $a0, $s3, 0xC
    /* F39C04 8007E668 0C00A526 */  addiu      $a1, $s5, 0xC
    /* F39C08 8007E66C 0000748E */  lw         $s4, 0x0($s3)
    /* F39C0C 8007E670 20000224 */  addiu      $v0, $zero, 0x20
    /* F39C10 8007E674 6C6F000C */  jal        func_8001BDB0
    /* F39C14 8007E678 4C0062A2 */   sb        $v0, 0x4C($s3)
    /* F39C18 8007E67C 0E05010C */  jal        func_80041438
    /* F39C1C 8007E680 21206002 */   addu      $a0, $s3, $zero
    /* F39C20 8007E684 4B67010C */  jal        func_80059D2C
    /* F39C24 8007E688 00000000 */   nop
    /* F39C28 8007E68C 4B67010C */  jal        func_80059D2C
    /* F39C2C 8007E690 FF0F5230 */   andi      $s2, $v0, 0xFFF
    /* F39C30 8007E694 FF075130 */  andi       $s1, $v0, 0x7FF
    /* F39C34 8007E698 996D000C */  jal        func_8001B664
    /* F39C38 8007E69C 21202002 */   addu      $a0, $s1, $zero
    /* F39C3C 8007E6A0 21204002 */  addu       $a0, $s2, $zero
    /* F39C40 8007E6A4 996D000C */  jal        func_8001B664
    /* F39C44 8007E6A8 21804000 */   addu      $s0, $v0, $zero
    /* F39C48 8007E6AC 18000202 */  mult       $s0, $v0
    /* F39C4C 8007E6B0 12400000 */  mflo       $t0
    /* F39C50 8007E6B4 4900A292 */  lbu        $v0, 0x49($s5)
    /* F39C54 8007E6B8 00000000 */  nop
    /* F39C58 8007E6BC 18000201 */  mult       $t0, $v0
    /* F39C5C 8007E6C0 21202002 */  addu       $a0, $s1, $zero
    /* F39C60 8007E6C4 12400000 */  mflo       $t0
    /* F39C64 8007E6C8 03160800 */  sra        $v0, $t0, 24
    /* F39C68 8007E6CC 996D000C */  jal        func_8001B664
    /* F39C6C 8007E6D0 000082A6 */   sh        $v0, 0x0($s4)
    /* F39C70 8007E6D4 21204002 */  addu       $a0, $s2, $zero
    /* F39C74 8007E6D8 876D000C */  jal        func_8001B61C
    /* F39C78 8007E6DC 21804000 */   addu      $s0, $v0, $zero
    /* F39C7C 8007E6E0 18000202 */  mult       $s0, $v0
    /* F39C80 8007E6E4 12400000 */  mflo       $t0
    /* F39C84 8007E6E8 4900A292 */  lbu        $v0, 0x49($s5)
    /* F39C88 8007E6EC 00000000 */  nop
    /* F39C8C 8007E6F0 18000201 */  mult       $t0, $v0
    /* F39C90 8007E6F4 21202002 */  addu       $a0, $s1, $zero
    /* F39C94 8007E6F8 12400000 */  mflo       $t0
    /* F39C98 8007E6FC 03160800 */  sra        $v0, $t0, 24
    /* F39C9C 8007E700 876D000C */  jal        func_8001B61C
    /* F39CA0 8007E704 020082A6 */   sh        $v0, 0x2($s4)
    /* F39CA4 8007E708 4900A392 */  lbu        $v1, 0x49($s5)
    /* F39CA8 8007E70C 00000000 */  nop
    /* F39CAC 8007E710 18004300 */  mult       $v0, $v1
    /* F39CB0 8007E714 12400000 */  mflo       $t0
    /* F39CB4 8007E718 03130800 */  sra        $v0, $t0, 12
    /* F39CB8 8007E71C 040082A6 */  sh         $v0, 0x4($s4)
    /* F39CBC 8007E720 1800A28E */  lw         $v0, 0x18($s5)
    /* F39CC0 8007E724 0200033C */  lui        $v1, (0x20000 >> 16)
    /* F39CC4 8007E728 24104300 */  and        $v0, $v0, $v1
    /* F39CC8 8007E72C 14004010 */  beqz       $v0, .Llevel_11_8007E780
    /* F39CCC 8007E730 04000224 */   addiu     $v0, $zero, 0x4
    /* F39CD0 8007E734 0780033C */  lui        $v1, %hi(D_8006A048)
    /* F39CD4 8007E738 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* F39CD8 8007E73C 00000000 */  nop
    /* F39CDC 8007E740 03006210 */  beq        $v1, $v0, .Llevel_11_8007E750
    /* F39CE0 8007E744 0C000224 */   addiu     $v0, $zero, 0xC
    /* F39CE4 8007E748 0D006214 */  bne        $v1, $v0, .Llevel_11_8007E780
    /* F39CE8 8007E74C 00000000 */   nop
  .Llevel_11_8007E750:
    /* F39CEC 8007E750 0780023C */  lui        $v0, %hi(D_8006A084)
    /* F39CF0 8007E754 84A0428C */  lw         $v0, %lo(D_8006A084)($v0)
    /* F39CF4 8007E758 00008396 */  lhu        $v1, 0x0($s4)
    /* F39CF8 8007E75C 83110200 */  sra        $v0, $v0, 6
    /* F39CFC 8007E760 21186200 */  addu       $v1, $v1, $v0
    /* F39D00 8007E764 000083A6 */  sh         $v1, 0x0($s4)
    /* F39D04 8007E768 0780023C */  lui        $v0, %hi(D_8006A088)
    /* F39D08 8007E76C 88A0428C */  lw         $v0, %lo(D_8006A088)($v0)
    /* F39D0C 8007E770 02008396 */  lhu        $v1, 0x2($s4)
    /* F39D10 8007E774 83110200 */  sra        $v0, $v0, 6
    /* F39D14 8007E778 21186200 */  addu       $v1, $v1, $v0
    /* F39D18 8007E77C 020083A6 */  sh         $v1, 0x2($s4)
  .Llevel_11_8007E780:
    /* F39D1C 8007E780 5100A492 */  lbu        $a0, 0x51($s5)
    /* F39D20 8007E784 00000000 */  nop
    /* F39D24 8007E788 26008010 */  beqz       $a0, .Llevel_11_8007E824
    /* F39D28 8007E78C 1000033C */   lui       $v1, (0x100000 >> 16)
    /* F39D2C 8007E790 1800A28E */  lw         $v0, 0x18($s5)
    /* F39D30 8007E794 00000000 */  nop
    /* F39D34 8007E798 24104300 */  and        $v0, $v0, $v1
    /* F39D38 8007E79C 21004010 */  beqz       $v0, .Llevel_11_8007E824
    /* F39D3C 8007E7A0 40100400 */   sll       $v0, $a0, 1
    /* F39D40 8007E7A4 0680013C */  lui        $at, %hi(D_80061C58)
    /* F39D44 8007E7A8 21082200 */  addu       $at, $at, $v0
    /* F39D48 8007E7AC 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* F39D4C 8007E7B0 00000000 */  nop
    /* F39D50 8007E7B4 80100300 */  sll        $v0, $v1, 2
    /* F39D54 8007E7B8 21104300 */  addu       $v0, $v0, $v1
    /* F39D58 8007E7BC 00190200 */  sll        $v1, $v0, 4
    /* F39D5C 8007E7C0 23186200 */  subu       $v1, $v1, $v0
    /* F39D60 8007E7C4 00008296 */  lhu        $v0, 0x0($s4)
    /* F39D64 8007E7C8 C31A0300 */  sra        $v1, $v1, 11
    /* F39D68 8007E7CC 21104300 */  addu       $v0, $v0, $v1
    /* F39D6C 8007E7D0 000082A6 */  sh         $v0, 0x0($s4)
    /* F39D70 8007E7D4 5100A292 */  lbu        $v0, 0x51($s5)
    /* F39D74 8007E7D8 28000424 */  addiu      $a0, $zero, 0x28
    /* F39D78 8007E7DC 40100200 */  sll        $v0, $v0, 1
    /* F39D7C 8007E7E0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* F39D80 8007E7E4 21082200 */  addu       $at, $at, $v0
    /* F39D84 8007E7E8 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* F39D88 8007E7EC 46000524 */  addiu      $a1, $zero, 0x46
    /* F39D8C 8007E7F0 80100300 */  sll        $v0, $v1, 2
    /* F39D90 8007E7F4 21104300 */  addu       $v0, $v0, $v1
    /* F39D94 8007E7F8 00190200 */  sll        $v1, $v0, 4
    /* F39D98 8007E7FC 23186200 */  subu       $v1, $v1, $v0
    /* F39D9C 8007E800 02008296 */  lhu        $v0, 0x2($s4)
    /* F39DA0 8007E804 C31A0300 */  sra        $v1, $v1, 11
    /* F39DA4 8007E808 21104300 */  addu       $v0, $v0, $v1
    /* F39DA8 8007E80C 47E2000C */  jal        func_8003891C
    /* F39DAC 8007E810 020082A6 */   sh        $v0, 0x2($s4)
    /* F39DB0 8007E814 04008396 */  lhu        $v1, 0x4($s4)
    /* F39DB4 8007E818 00000000 */  nop
    /* F39DB8 8007E81C 21186200 */  addu       $v1, $v1, $v0
    /* F39DBC 8007E820 040083A6 */  sh         $v1, 0x4($s4)
  .Llevel_11_8007E824:
    /* F39DC0 8007E824 00008286 */  lh         $v0, 0x0($s4)
    /* F39DC4 8007E828 0C00638E */  lw         $v1, 0xC($s3)
    /* F39DC8 8007E82C 80100200 */  sll        $v0, $v0, 2
    /* F39DCC 8007E830 21186200 */  addu       $v1, $v1, $v0
    /* F39DD0 8007E834 0C0063AE */  sw         $v1, 0xC($s3)
    /* F39DD4 8007E838 02008286 */  lh         $v0, 0x2($s4)
    /* F39DD8 8007E83C 1000638E */  lw         $v1, 0x10($s3)
    /* F39DDC 8007E840 80100200 */  sll        $v0, $v0, 2
    /* F39DE0 8007E844 21186200 */  addu       $v1, $v1, $v0
    /* F39DE4 8007E848 100063AE */  sw         $v1, 0x10($s3)
    /* F39DE8 8007E84C 04008286 */  lh         $v0, 0x4($s4)
    /* F39DEC 8007E850 1400638E */  lw         $v1, 0x14($s3)
    /* F39DF0 8007E854 80100200 */  sll        $v0, $v0, 2
    /* F39DF4 8007E858 21186200 */  addu       $v1, $v1, $v0
    /* F39DF8 8007E85C 4B67010C */  jal        func_80059D2C
    /* F39DFC 8007E860 140063AE */   sw        $v1, 0x14($s3)
    /* F39E00 8007E864 4B67010C */  jal        func_80059D2C
    /* F39E04 8007E868 450062A2 */   sb        $v0, 0x45($s3)
    /* F39E08 8007E86C 4B67010C */  jal        func_80059D2C
    /* F39E0C 8007E870 460062A2 */   sb        $v0, 0x46($s3)
    /* F39E10 8007E874 1F004230 */  andi       $v0, $v0, 0x1F
    /* F39E14 8007E878 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* F39E18 8007E87C 4B67010C */  jal        func_80059D2C
    /* F39E1C 8007E880 060082A6 */   sh        $v0, 0x6($s4)
    /* F39E20 8007E884 1F004230 */  andi       $v0, $v0, 0x1F
    /* F39E24 8007E888 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* F39E28 8007E88C 4B67010C */  jal        func_80059D2C
    /* F39E2C 8007E890 080082A6 */   sh        $v0, 0x8($s4)
    /* F39E30 8007E894 32000424 */  addiu      $a0, $zero, 0x32
    /* F39E34 8007E898 1F004230 */  andi       $v0, $v0, 0x1F
    /* F39E38 8007E89C F0FF4224 */  addiu      $v0, $v0, -0x10
    /* F39E3C 8007E8A0 0A0082A6 */  sh         $v0, 0xA($s4)
    /* F39E40 8007E8A4 1400A28E */  lw         $v0, 0x14($s5)
    /* F39E44 8007E8A8 50000524 */  addiu      $a1, $zero, 0x50
    /* F39E48 8007E8AC C0FF4224 */  addiu      $v0, $v0, -0x40
    /* F39E4C 8007E8B0 47E2000C */  jal        func_8003891C
    /* F39E50 8007E8B4 100082AE */   sw        $v0, 0x10($s4)
    /* F39E54 8007E8B8 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F39E58 8007E8BC 0C0082AE */   sw        $v0, 0xC($s4)
  .Llevel_11_8007E8C0:
    /* F39E5C 8007E8C0 0000708E */  lw         $s0, 0x0($s3)
    /* F39E60 8007E8C4 6C6F000C */  jal        func_8001BDB0
    /* F39E64 8007E8C8 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F39E68 8007E8CC 0E05010C */  jal        func_80041438
    /* F39E6C 8007E8D0 21206002 */   addu      $a0, $s3, $zero
    /* F39E70 8007E8D4 10000224 */  addiu      $v0, $zero, 0x10
    /* F39E74 8007E8D8 3B000324 */  addiu      $v1, $zero, 0x3B
    /* F39E78 8007E8DC 000002A6 */  sh         $v0, 0x0($s0)
    /* F39E7C 8007E8E0 80000224 */  addiu      $v0, $zero, 0x80
    /* F39E80 8007E8E4 570063A2 */  sb         $v1, 0x57($s3)
    /* F39E84 8007E8E8 540062A2 */  sb         $v0, 0x54($s3)
    /* F39E88 8007E8EC 550062A2 */  sb         $v0, 0x55($s3)
    /* F39E8C 8007E8F0 560060A2 */  sb         $zero, 0x56($s3)
    /* F39E90 8007E8F4 3600A486 */  lh         $a0, 0x36($s5)
    /* F39E94 8007E8F8 98010224 */  addiu      $v0, $zero, 0x198
    /* F39E98 8007E8FC 04008210 */  beq        $a0, $v0, .Llevel_11_8007E910
    /* F39E9C 8007E900 01000224 */   addiu     $v0, $zero, 0x1
    /* F39EA0 8007E904 C2020224 */  addiu      $v0, $zero, 0x2C2
    /* F39EA4 8007E908 05008214 */  bne        $a0, $v0, .Llevel_11_8007E920
    /* F39EA8 8007E90C 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_11_8007E910:
    /* F39EAC 8007E910 020002A2 */  sb         $v0, 0x2($s0)
    /* F39EB0 8007E914 030002A2 */  sb         $v0, 0x3($s0)
    /* F39EB4 8007E918 56FA0108 */  j          .Llevel_11_8007E958
    /* F39EB8 8007E91C 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_11_8007E920:
    /* F39EBC 8007E920 70020224 */  addiu      $v0, $zero, 0x270
    /* F39EC0 8007E924 0A008214 */  bne        $a0, $v0, .Llevel_11_8007E950
    /* F39EC4 8007E928 60000224 */   addiu     $v0, $zero, 0x60
    /* F39EC8 8007E92C 02000224 */  addiu      $v0, $zero, 0x2
    /* F39ECC 8007E930 020002A2 */  sb         $v0, 0x2($s0)
    /* F39ED0 8007E934 E0000224 */  addiu      $v0, $zero, 0xE0
    /* F39ED4 8007E938 540062A2 */  sb         $v0, 0x54($s3)
    /* F39ED8 8007E93C 550062A2 */  sb         $v0, 0x55($s3)
    /* F39EDC 8007E940 560062A2 */  sb         $v0, 0x56($s3)
    /* F39EE0 8007E944 60000224 */  addiu      $v0, $zero, 0x60
    /* F39EE4 8007E948 55FA0108 */  j          .Llevel_11_8007E954
    /* F39EE8 8007E94C 570063A2 */   sb        $v1, 0x57($s3)
  .Llevel_11_8007E950:
    /* F39EEC 8007E950 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_11_8007E954:
    /* F39EF0 8007E954 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_11_8007E958:
    /* F39EF4 8007E958 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* F39EF8 8007E95C 0C006426 */  addiu      $a0, $s3, 0xC
    /* F39EFC 8007E960 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* F39F00 8007E964 AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* F39F04 8007E968 21280002 */  addu       $a1, $s0, $zero
    /* F39F08 8007E96C FE000224 */  addiu      $v0, $zero, 0xFE
    /* F39F0C 8007E970 DB6F000C */  jal        func_8001BF6C
    /* F39F10 8007E974 470062A2 */   sb        $v0, 0x47($s3)
    /* F39F14 8007E978 21204000 */  addu       $a0, $v0, $zero
    /* F39F18 8007E97C 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* F39F1C 8007E980 B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* F39F20 8007E984 1400658E */  lw         $a1, 0x14($s3)
    /* F39F24 8007E988 21300000 */  addu       $a2, $zero, $zero
    /* F39F28 8007E98C 2E6D000C */  jal        func_8001B4B8
    /* F39F2C 8007E990 23284500 */   subu      $a1, $v0, $a1
    /* F39F30 8007E994 21300000 */  addu       $a2, $zero, $zero
    /* F39F34 8007E998 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* F39F38 8007E99C 450062A2 */  sb         $v0, 0x45($s3)
    /* F39F3C 8007E9A0 0000038E */  lw         $v1, 0x0($s0)
    /* F39F40 8007E9A4 0C00648E */  lw         $a0, 0xC($s3)
    /* F39F44 8007E9A8 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* F39F48 8007E9AC B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* F39F4C 8007E9B0 1000658E */  lw         $a1, 0x10($s3)
    /* F39F50 8007E9B4 23206400 */  subu       $a0, $v1, $a0
    /* F39F54 8007E9B8 2E6D000C */  jal        func_8001B4B8
    /* F39F58 8007E9BC 23284500 */   subu      $a1, $v0, $a1
    /* F39F5C 8007E9C0 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F39F60 8007E9C4 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_11_8007E9C8:
    /* F39F64 8007E9C8 0C006426 */  addiu      $a0, $s3, 0xC
    /* F39F68 8007E9CC 0000708E */  lw         $s0, 0x0($s3)
    /* F39F6C 8007E9D0 6C6F000C */  jal        func_8001BDB0
    /* F39F70 8007E9D4 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F39F74 8007E9D8 0E05010C */  jal        func_80041438
    /* F39F78 8007E9DC 21206002 */   addu      $a0, $s3, $zero
    /* F39F7C 8007E9E0 10000224 */  addiu      $v0, $zero, 0x10
    /* F39F80 8007E9E4 000002AE */  sw         $v0, 0x0($s0)
    /* F39F84 8007E9E8 3F000224 */  addiu      $v0, $zero, 0x3F
    /* F39F88 8007E9EC 570062A2 */  sb         $v0, 0x57($s3)
    /* F39F8C 8007E9F0 80000224 */  addiu      $v0, $zero, 0x80
    /* F39F90 8007E9F4 540062A2 */  sb         $v0, 0x54($s3)
    /* F39F94 8007E9F8 40000224 */  addiu      $v0, $zero, 0x40
    /* F39F98 8007E9FC 550062A2 */  sb         $v0, 0x55($s3)
    /* F39F9C 8007EA00 4B67010C */  jal        func_80059D2C
    /* F39FA0 8007EA04 560060A2 */   sb        $zero, 0x56($s3)
    /* F39FA4 8007EA08 4B67010C */  jal        func_80059D2C
    /* F39FA8 8007EA0C 450062A2 */   sb        $v0, 0x45($s3)
    /* F39FAC 8007EA10 460062A2 */  sb         $v0, 0x46($s3)
    /* F39FB0 8007EA14 46000224 */  addiu      $v0, $zero, 0x46
    /* F39FB4 8007EA18 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* F39FB8 8007EA1C 04000224 */  addiu      $v0, $zero, 0x4
    /* F39FBC 8007EA20 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F39FC0 8007EA24 470062A2 */   sb        $v0, 0x47($s3)
  .Llevel_11_8007EA28:
    /* F39FC4 8007EA28 0000728E */  lw         $s2, 0x0($s3)
    /* F39FC8 8007EA2C 0E05010C */  jal        func_80041438
    /* F39FCC 8007EA30 21206002 */   addu      $a0, $s3, $zero
    /* F39FD0 8007EA34 40000224 */  addiu      $v0, $zero, 0x40
    /* F39FD4 8007EA38 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* F39FD8 8007EA3C 9C00A016 */  bnez       $s5, .Llevel_11_8007ECB0
    /* F39FDC 8007EA40 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* F39FE0 8007EA44 B8010224 */  addiu      $v0, $zero, 0x1B8
    /* F39FE4 8007EA48 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* F39FE8 8007EA4C D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* F39FEC 8007EA50 1000A2AF */  sw         $v0, 0x10($sp)
    /* F39FF0 8007EA54 1400A0AF */  sw         $zero, 0x14($sp)
    /* F39FF4 8007EA58 1800A0AF */  sw         $zero, 0x18($sp)
    /* F39FF8 8007EA5C 0000A38C */  lw         $v1, 0x0($a1)
    /* F39FFC 8007EA60 07000224 */  addiu      $v0, $zero, 0x7
    /* F3A000 8007EA64 25006214 */  bne        $v1, $v0, .Llevel_11_8007EAFC
    /* F3A004 8007EA68 0C006426 */   addiu     $a0, $s3, 0xC
    /* F3A008 8007EA6C 0C007026 */  addiu      $s0, $s3, 0xC
    /* F3A00C 8007EA70 21200002 */  addu       $a0, $s0, $zero
    /* F3A010 8007EA74 6C6F000C */  jal        func_8001BDB0
    /* F3A014 8007EA78 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* F3A018 8007EA7C 4000A427 */  addiu      $a0, $sp, 0x40
    /* F3A01C 8007EA80 2000B127 */  addiu      $s1, $sp, 0x20
    /* F3A020 8007EA84 21282002 */  addu       $a1, $s1, $zero
    /* F3A024 8007EA88 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* F3A028 8007EA8C CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* F3A02C 8007EA90 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* F3A030 8007EA94 CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* F3A034 8007EA98 21300000 */  addu       $a2, $zero, $zero
    /* F3A038 8007EA9C 4000A0A3 */  sb         $zero, 0x40($sp)
    /* F3A03C 8007EAA0 02190300 */  srl        $v1, $v1, 4
    /* F3A040 8007EAA4 00140200 */  sll        $v0, $v0, 16
    /* F3A044 8007EAA8 03150200 */  sra        $v0, $v0, 20
    /* F3A048 8007EAAC 23100200 */  negu       $v0, $v0
    /* F3A04C 8007EAB0 4100A2A3 */  sb         $v0, 0x41($sp)
    /* F3A050 8007EAB4 B26D000C */  jal        func_8001B6C8
    /* F3A054 8007EAB8 4200A3A3 */   sb        $v1, 0x42($sp)
    /* F3A058 8007EABC 21202002 */  addu       $a0, $s1, $zero
    /* F3A05C 8007EAC0 1000A527 */  addiu      $a1, $sp, 0x10
    /* F3A060 8007EAC4 696E000C */  jal        func_8001B9A4
    /* F3A064 8007EAC8 2130A000 */   addu      $a2, $a1, $zero
    /* F3A068 8007EACC 21200002 */  addu       $a0, $s0, $zero
    /* F3A06C 8007EAD0 21280002 */  addu       $a1, $s0, $zero
    /* F3A070 8007EAD4 736F000C */  jal        func_8001BDCC
    /* F3A074 8007EAD8 1000A627 */   addiu     $a2, $sp, 0x10
    /* F3A078 8007EADC 21200002 */  addu       $a0, $s0, $zero
    /* F3A07C 8007EAE0 21280002 */  addu       $a1, $s0, $zero
    /* F3A080 8007EAE4 736F000C */  jal        func_8001BDCC
    /* F3A084 8007EAE8 1000A627 */   addiu     $a2, $sp, 0x10
    /* F3A088 8007EAEC 21200002 */  addu       $a0, $s0, $zero
    /* F3A08C 8007EAF0 21288000 */  addu       $a1, $a0, $zero
    /* F3A090 8007EAF4 E7FA0108 */  j          .Llevel_11_8007EB9C
    /* F3A094 8007EAF8 1000A627 */   addiu     $a2, $sp, 0x10
  .Llevel_11_8007EAFC:
    /* F3A098 8007EAFC 6C6F000C */  jal        func_8001BDB0
    /* F3A09C 8007EB00 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* F3A0A0 8007EB04 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* F3A0A4 8007EB08 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* F3A0A8 8007EB0C 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* F3A0AC 8007EB10 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* F3A0B0 8007EB14 6800A0A3 */  sb         $zero, 0x68($sp)
    /* F3A0B4 8007EB18 07004014 */  bnez       $v0, .Llevel_11_8007EB38
    /* F3A0B8 8007EB1C 6900A3A3 */   sb        $v1, 0x69($sp)
    /* F3A0BC 8007EB20 FCFF6224 */  addiu      $v0, $v1, -0x4
    /* F3A0C0 8007EB24 FF004230 */  andi       $v0, $v0, 0xFF
    /* F3A0C4 8007EB28 F900422C */  sltiu      $v0, $v0, 0xF9
    /* F3A0C8 8007EB2C 03004014 */  bnez       $v0, .Llevel_11_8007EB3C
    /* F3A0CC 8007EB30 6800A427 */   addiu     $a0, $sp, 0x68
    /* F3A0D0 8007EB34 6900A0A3 */  sb         $zero, 0x69($sp)
  .Llevel_11_8007EB38:
    /* F3A0D4 8007EB38 6800A427 */  addiu      $a0, $sp, 0x68
  .Llevel_11_8007EB3C:
    /* F3A0D8 8007EB3C 4800B027 */  addiu      $s0, $sp, 0x48
    /* F3A0DC 8007EB40 21280002 */  addu       $a1, $s0, $zero
    /* F3A0E0 8007EB44 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* F3A0E4 8007EB48 FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* F3A0E8 8007EB4C 00002292 */  lbu        $v0, 0x0($s1)
    /* F3A0EC 8007EB50 21300000 */  addu       $a2, $zero, $zero
    /* F3A0F0 8007EB54 B26D000C */  jal        func_8001B6C8
    /* F3A0F4 8007EB58 6A00A2A3 */   sb        $v0, 0x6A($sp)
    /* F3A0F8 8007EB5C 21200002 */  addu       $a0, $s0, $zero
    /* F3A0FC 8007EB60 1000A527 */  addiu      $a1, $sp, 0x10
    /* F3A100 8007EB64 696E000C */  jal        func_8001B9A4
    /* F3A104 8007EB68 2130A000 */   addu      $a2, $a1, $zero
    /* F3A108 8007EB6C 21200002 */  addu       $a0, $s0, $zero
    /* F3A10C 8007EB70 0C007026 */  addiu      $s0, $s3, 0xC
    /* F3A110 8007EB74 21280002 */  addu       $a1, $s0, $zero
    /* F3A114 8007EB78 21300002 */  addu       $a2, $s0, $zero
    /* F3A118 8007EB7C F4010224 */  addiu      $v0, $zero, 0x1F4
    /* F3A11C 8007EB80 0C0062AE */  sw         $v0, 0xC($s3)
    /* F3A120 8007EB84 100060AE */  sw         $zero, 0x10($s3)
    /* F3A124 8007EB88 696E000C */  jal        func_8001B9A4
    /* F3A128 8007EB8C 140060AE */   sw        $zero, 0x14($s3)
    /* F3A12C 8007EB90 21200002 */  addu       $a0, $s0, $zero
    /* F3A130 8007EB94 21288000 */  addu       $a1, $a0, $zero
    /* F3A134 8007EB98 F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_11_8007EB9C:
    /* F3A138 8007EB9C 736F000C */  jal        func_8001BDCC
    /* F3A13C 8007EBA0 00000000 */   nop
    /* F3A140 8007EBA4 1000A427 */  addiu      $a0, $sp, 0x10
    /* F3A144 8007EBA8 886E000C */  jal        func_8001BA20
    /* F3A148 8007EBAC 21280000 */   addu      $a1, $zero, $zero
    /* F3A14C 8007EBB0 21204000 */  addu       $a0, $v0, $zero
    /* F3A150 8007EBB4 1800A58F */  lw         $a1, 0x18($sp)
    /* F3A154 8007EBB8 2E6D000C */  jal        func_8001B4B8
    /* F3A158 8007EBBC 21300000 */   addu      $a2, $zero, $zero
    /* F3A15C 8007EBC0 450062A2 */  sb         $v0, 0x45($s3)
    /* F3A160 8007EBC4 1000A48F */  lw         $a0, 0x10($sp)
    /* F3A164 8007EBC8 1400A58F */  lw         $a1, 0x14($sp)
    /* F3A168 8007EBCC 2E6D000C */  jal        func_8001B4B8
    /* F3A16C 8007EBD0 21300000 */   addu      $a2, $zero, $zero
    /* F3A170 8007EBD4 460062A2 */  sb         $v0, 0x46($s3)
    /* F3A174 8007EBD8 1000A28F */  lw         $v0, 0x10($sp)
    /* F3A178 8007EBDC 0680033C */  lui        $v1, %hi(D_80066F14)
    /* F3A17C 8007EBE0 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* F3A180 8007EBE4 0680043C */  lui        $a0, %hi(D_800670BC)
    /* F3A184 8007EBE8 BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* F3A188 8007EBEC 000042A6 */  sh         $v0, 0x0($s2)
    /* F3A18C 8007EBF0 1400A28F */  lw         $v0, 0x14($sp)
    /* F3A190 8007EBF4 00000000 */  nop
    /* F3A194 8007EBF8 020042A6 */  sh         $v0, 0x2($s2)
    /* F3A198 8007EBFC 1800A28F */  lw         $v0, 0x18($sp)
    /* F3A19C 8007EC00 00000000 */  nop
    /* F3A1A0 8007EC04 040042A6 */  sh         $v0, 0x4($s2)
    /* F3A1A4 8007EC08 2B106400 */  sltu       $v0, $v1, $a0
    /* F3A1A8 8007EC0C 0A004010 */  beqz       $v0, .Llevel_11_8007EC38
    /* F3A1AC 8007EC10 44010524 */   addiu     $a1, $zero, 0x144
    /* F3A1B0 8007EC14 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_11_8007EC18:
    /* F3A1B4 8007EC18 36006284 */  lh         $v0, 0x36($v1)
    /* F3A1B8 8007EC1C 00000000 */  nop
    /* F3A1BC 8007EC20 05004610 */  beq        $v0, $a2, .Llevel_11_8007EC38
    /* F3A1C0 8007EC24 00000000 */   nop
    /* F3A1C4 8007EC28 58006324 */  addiu      $v1, $v1, 0x58
    /* F3A1C8 8007EC2C 2B106400 */  sltu       $v0, $v1, $a0
    /* F3A1CC 8007EC30 F9FF4014 */  bnez       $v0, .Llevel_11_8007EC18
    /* F3A1D0 8007EC34 00000000 */   nop
  .Llevel_11_8007EC38:
    /* F3A1D4 8007EC38 13006010 */  beqz       $v1, .Llevel_11_8007EC88
    /* F3A1D8 8007EC3C 40100500 */   sll       $v0, $a1, 1
    /* F3A1DC 8007EC40 0000678C */  lw         $a3, 0x0($v1)
    /* F3A1E0 8007EC44 21104500 */  addu       $v0, $v0, $a1
    /* F3A1E4 8007EC48 0000E38C */  lw         $v1, 0x0($a3)
    /* F3A1E8 8007EC4C 40100200 */  sll        $v0, $v0, 1
    /* F3A1EC 8007EC50 21186500 */  addu       $v1, $v1, $a1
    /* F3A1F0 8007EC54 0000E3AC */  sw         $v1, 0x0($a3)
    /* F3A1F4 8007EC58 2A186200 */  slt        $v1, $v1, $v0
    /* F3A1F8 8007EC5C 02006014 */  bnez       $v1, .Llevel_11_8007EC68
    /* F3A1FC 8007EC60 10004426 */   addiu     $a0, $s2, 0x10
    /* F3A200 8007EC64 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_11_8007EC68:
    /* F3A204 8007EC68 0400E524 */  addiu      $a1, $a3, 0x4
    /* F3A208 8007EC6C 0000E28C */  lw         $v0, 0x0($a3)
    /* F3A20C 8007EC70 08000624 */  addiu      $a2, $zero, 0x8
    /* F3A210 8007EC74 0C004224 */  addiu      $v0, $v0, 0xC
    /* F3A214 8007EC78 2110E200 */  addu       $v0, $a3, $v0
    /* F3A218 8007EC7C 080042AE */  sw         $v0, 0x8($s2)
    /* F3A21C 8007EC80 036D000C */  jal        func_8001B40C
    /* F3A220 8007EC84 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_11_8007EC88:
    /* F3A224 8007EC88 21206002 */  addu       $a0, $s3, $zero
    /* F3A228 8007EC8C 21280000 */  addu       $a1, $zero, $zero
    /* F3A22C 8007EC90 21300000 */  addu       $a2, $zero, $zero
    /* F3A230 8007EC94 6E000224 */  addiu      $v0, $zero, 0x6E
    /* F3A234 8007EC98 070042A2 */  sb         $v0, 0x7($s2)
    /* F3A238 8007EC9C 01000224 */  addiu      $v0, $zero, 0x1
    /* F3A23C 8007ECA0 9241010C */  jal        func_80050648
    /* F3A240 8007ECA4 4B0062A2 */   sb        $v0, 0x4B($s3)
    /* F3A244 8007ECA8 ECFB0108 */  j          .Llevel_11_8007EFB0
    /* F3A248 8007ECAC 21106002 */   addu      $v0, $s3, $zero
  .Llevel_11_8007ECB0:
    /* F3A24C 8007ECB0 0C006426 */  addiu      $a0, $s3, 0xC
    /* F3A250 8007ECB4 6C6F000C */  jal        func_8001BDB0
    /* F3A254 8007ECB8 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F3A258 8007ECBC 30000224 */  addiu      $v0, $zero, 0x30
    /* F3A25C 8007ECC0 070042A2 */  sb         $v0, 0x7($s2)
    /* F3A260 8007ECC4 7F000224 */  addiu      $v0, $zero, 0x7F
    /* F3A264 8007ECC8 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* F3A268 8007ECCC 07004392 */  lbu        $v1, 0x7($s2)
    /* F3A26C 8007ECD0 00000000 */  nop
    /* F3A270 8007ECD4 40100300 */  sll        $v0, $v1, 1
    /* F3A274 8007ECD8 21104300 */  addu       $v0, $v0, $v1
    /* F3A278 8007ECDC 43100200 */  sra        $v0, $v0, 1
    /* F3A27C 8007ECE0 540062A2 */  sb         $v0, 0x54($s3)
    /* F3A280 8007ECE4 07004392 */  lbu        $v1, 0x7($s2)
    /* F3A284 8007ECE8 3F000224 */  addiu      $v0, $zero, 0x3F
    /* F3A288 8007ECEC 560060A2 */  sb         $zero, 0x56($s3)
    /* F3A28C 8007ECF0 570062A2 */  sb         $v0, 0x57($s3)
    /* F3A290 8007ECF4 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F3A294 8007ECF8 550063A2 */   sb        $v1, 0x55($s3)
  .Llevel_11_8007ECFC:
    /* F3A298 8007ECFC 0C006426 */  addiu      $a0, $s3, 0xC
    /* F3A29C 8007ED00 0000708E */  lw         $s0, 0x0($s3)
    /* F3A2A0 8007ED04 6C6F000C */  jal        func_8001BDB0
    /* F3A2A4 8007ED08 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F3A2A8 8007ED0C 0E05010C */  jal        func_80041438
    /* F3A2AC 8007ED10 21206002 */   addu      $a0, $s3, $zero
    /* F3A2B0 8007ED14 18000224 */  addiu      $v0, $zero, 0x18
    /* F3A2B4 8007ED18 000002AE */  sw         $v0, 0x0($s0)
    /* F3A2B8 8007ED1C 30000224 */  addiu      $v0, $zero, 0x30
    /* F3A2BC 8007ED20 570062A2 */  sb         $v0, 0x57($s3)
    /* F3A2C0 8007ED24 64000224 */  addiu      $v0, $zero, 0x64
    /* F3A2C4 8007ED28 540060A2 */  sb         $zero, 0x54($s3)
    /* F3A2C8 8007ED2C 550060A2 */  sb         $zero, 0x55($s3)
    /* F3A2CC 8007ED30 560060A2 */  sb         $zero, 0x56($s3)
    /* F3A2D0 8007ED34 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* F3A2D4 8007ED38 4B67010C */  jal        func_80059D2C
    /* F3A2D8 8007ED3C 470060A2 */   sb        $zero, 0x47($s3)
    /* F3A2DC 8007ED40 4B67010C */  jal        func_80059D2C
    /* F3A2E0 8007ED44 450062A2 */   sb        $v0, 0x45($s3)
    /* F3A2E4 8007ED48 EBFB0108 */  j          .Llevel_11_8007EFAC
    /* F3A2E8 8007ED4C 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_11_8007ED50:
    /* F3A2EC 8007ED50 0000B08E */  lw         $s0, 0x0($s5)
    /* F3A2F0 8007ED54 6C6F000C */  jal        func_8001BDB0
    /* F3A2F4 8007ED58 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F3A2F8 8007ED5C 3C00A292 */  lbu        $v0, 0x3C($s5)
    /* F3A2FC 8007ED60 00000000 */  nop
    /* F3A300 8007ED64 04004010 */  beqz       $v0, .Llevel_11_8007ED78
    /* F3A304 8007ED68 00000000 */   nop
    /* F3A308 8007ED6C 1400628E */  lw         $v0, 0x14($s3)
    /* F3A30C 8007ED70 61FB0108 */  j          .Llevel_11_8007ED84
    /* F3A310 8007ED74 10FA4224 */   addiu     $v0, $v0, -0x5F0
  .Llevel_11_8007ED78:
    /* F3A314 8007ED78 1400628E */  lw         $v0, 0x14($s3)
    /* F3A318 8007ED7C 00000000 */  nop
    /* F3A31C 8007ED80 F00B4224 */  addiu      $v0, $v0, 0xBF0
  .Llevel_11_8007ED84:
    /* F3A320 8007ED84 140062AE */  sw         $v0, 0x14($s3)
    /* F3A324 8007ED88 4600A292 */  lbu        $v0, 0x46($s5)
    /* F3A328 8007ED8C 00000000 */  nop
    /* F3A32C 8007ED90 460062A2 */  sb         $v0, 0x46($s3)
    /* F3A330 8007ED94 0000038E */  lw         $v1, 0x0($s0)
    /* F3A334 8007ED98 00000000 */  nop
    /* F3A338 8007ED9C 0600622C */  sltiu      $v0, $v1, 0x6
    /* F3A33C 8007EDA0 13004010 */  beqz       $v0, .Llevel_11_8007EDF0
    /* F3A340 8007EDA4 80100300 */   sll       $v0, $v1, 2
    /* F3A344 8007EDA8 0780013C */  lui        $at, %hi(jtbl_level_11_8006D8B0)
    /* F3A348 8007EDAC 21082200 */  addu       $at, $at, $v0
    /* F3A34C 8007EDB0 B0D8228C */  lw         $v0, %lo(jtbl_level_11_8006D8B0)($at)
    /* F3A350 8007EDB4 00000000 */  nop
    /* F3A354 8007EDB8 08004000 */  jr         $v0
    /* F3A358 8007EDBC 00000000 */   nop
endlabel func_level_11_8007E1F8

glabel .Llevel_11_8007EDC0
    /* F3A35C 8007EDC0 7BFB0108 */  j          .Llevel_11_8007EDEC
    /* F3A360 8007EDC4 01000224 */   addiu     $v0, $zero, 0x1
endlabel .Llevel_11_8007EDC0

glabel .Llevel_11_8007EDC8
    /* F3A364 8007EDC8 7BFB0108 */  j          .Llevel_11_8007EDEC
    /* F3A368 8007EDCC 06000224 */   addiu     $v0, $zero, 0x6
endlabel .Llevel_11_8007EDC8

glabel .Llevel_11_8007EDD0
    /* F3A36C 8007EDD0 7BFB0108 */  j          .Llevel_11_8007EDEC
    /* F3A370 8007EDD4 04000224 */   addiu     $v0, $zero, 0x4
endlabel .Llevel_11_8007EDD0

glabel .Llevel_11_8007EDD8
    /* F3A374 8007EDD8 7BFB0108 */  j          .Llevel_11_8007EDEC
    /* F3A378 8007EDDC 02000224 */   addiu     $v0, $zero, 0x2
endlabel .Llevel_11_8007EDD8

glabel .Llevel_11_8007EDE0
    /* F3A37C 8007EDE0 7BFB0108 */  j          .Llevel_11_8007EDEC
    /* F3A380 8007EDE4 03000224 */   addiu     $v0, $zero, 0x3
endlabel .Llevel_11_8007EDE0

glabel .Llevel_11_8007EDE8
    /* F3A384 8007EDE8 05000224 */  addiu      $v0, $zero, 0x5
  .Llevel_11_8007EDEC:
    /* F3A388 8007EDEC 540062A2 */  sb         $v0, 0x54($s3)
  .Llevel_11_8007EDF0:
    /* F3A38C 8007EDF0 21206002 */  addu       $a0, $s3, $zero
    /* F3A390 8007EDF4 02000224 */  addiu      $v0, $zero, 0x2
    /* F3A394 8007EDF8 470062A2 */  sb         $v0, 0x47($s3)
    /* F3A398 8007EDFC 20000224 */  addiu      $v0, $zero, 0x20
    /* F3A39C 8007EE00 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* F3A3A0 8007EE04 3F000224 */  addiu      $v0, $zero, 0x3F
    /* F3A3A4 8007EE08 E9FB0108 */  j          .Llevel_11_8007EFA4
    /* F3A3A8 8007EE0C 4E0062A2 */   sb        $v0, 0x4E($s3)
  .Llevel_11_8007EE10:
    /* F3A3AC 8007EE10 0C006426 */  addiu      $a0, $s3, 0xC
    /* F3A3B0 8007EE14 0000B08E */  lw         $s0, 0x0($s5)
    /* F3A3B4 8007EE18 6C6F000C */  jal        func_8001BDB0
    /* F3A3B8 8007EE1C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F3A3BC 8007EE20 30000324 */  addiu      $v1, $zero, 0x30
    /* F3A3C0 8007EE24 FC000224 */  addiu      $v0, $zero, 0xFC
    /* F3A3C4 8007EE28 570063A2 */  sb         $v1, 0x57($s3)
    /* F3A3C8 8007EE2C 540060A2 */  sb         $zero, 0x54($s3)
    /* F3A3CC 8007EE30 550060A2 */  sb         $zero, 0x55($s3)
    /* F3A3D0 8007EE34 560060A2 */  sb         $zero, 0x56($s3)
    /* F3A3D4 8007EE38 470062A2 */  sb         $v0, 0x47($s3)
    /* F3A3D8 8007EE3C 440063A2 */  sb         $v1, 0x44($s3)
    /* F3A3DC 8007EE40 2800028E */  lw         $v0, 0x28($s0)
    /* F3A3E0 8007EE44 00000000 */  nop
    /* F3A3E4 8007EE48 05004010 */  beqz       $v0, .Llevel_11_8007EE60
    /* F3A3E8 8007EE4C E0000224 */   addiu     $v0, $zero, 0xE0
    /* F3A3EC 8007EE50 450062A2 */  sb         $v0, 0x45($s3)
    /* F3A3F0 8007EE54 40000224 */  addiu      $v0, $zero, 0x40
    /* F3A3F4 8007EE58 9AFB0108 */  j          .Llevel_11_8007EE68
    /* F3A3F8 8007EE5C 4F0062A2 */   sb        $v0, 0x4F($s3)
  .Llevel_11_8007EE60:
    /* F3A3FC 8007EE60 20000224 */  addiu      $v0, $zero, 0x20
    /* F3A400 8007EE64 450062A2 */  sb         $v0, 0x45($s3)
  .Llevel_11_8007EE68:
    /* F3A404 8007EE68 4B67010C */  jal        func_80059D2C
    /* F3A408 8007EE6C 00000000 */   nop
    /* F3A40C 8007EE70 21206002 */  addu       $a0, $s3, $zero
    /* F3A410 8007EE74 460062A2 */  sb         $v0, 0x46($s3)
    /* F3A414 8007EE78 20000224 */  addiu      $v0, $zero, 0x20
    /* F3A418 8007EE7C 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* F3A41C 8007EE80 40000224 */  addiu      $v0, $zero, 0x40
    /* F3A420 8007EE84 4E0062A2 */  sb         $v0, 0x4E($s3)
    /* F3A424 8007EE88 FF000224 */  addiu      $v0, $zero, 0xFF
    /* F3A428 8007EE8C E9FB0108 */  j          .Llevel_11_8007EFA4
    /* F3A42C 8007EE90 4A0062A2 */   sb        $v0, 0x4A($s3)
  .Llevel_11_8007EE94:
    /* F3A430 8007EE94 0000718E */  lw         $s1, 0x0($s3)
    /* F3A434 8007EE98 0000B08E */  lw         $s0, 0x0($s5)
    /* F3A438 8007EE9C 6C6F000C */  jal        func_8001BDB0
    /* F3A43C 8007EEA0 0C00A526 */   addiu     $a1, $s5, 0xC
    /* F3A440 8007EEA4 3F000224 */  addiu      $v0, $zero, 0x3F
    /* F3A444 8007EEA8 570062A2 */  sb         $v0, 0x57($s3)
    /* F3A448 8007EEAC 80000224 */  addiu      $v0, $zero, 0x80
    /* F3A44C 8007EEB0 540062A2 */  sb         $v0, 0x54($s3)
    /* F3A450 8007EEB4 550062A2 */  sb         $v0, 0x55($s3)
    /* F3A454 8007EEB8 560062A2 */  sb         $v0, 0x56($s3)
    /* F3A458 8007EEBC 470060A2 */  sb         $zero, 0x47($s3)
    /* F3A45C 8007EEC0 440060A2 */  sb         $zero, 0x44($s3)
    /* F3A460 8007EEC4 2800028E */  lw         $v0, 0x28($s0)
    /* F3A464 8007EEC8 00000000 */  nop
    /* F3A468 8007EECC 07004010 */  beqz       $v0, .Llevel_11_8007EEEC
    /* F3A46C 8007EED0 00000000 */   nop
    /* F3A470 8007EED4 4B67010C */  jal        func_80059D2C
    /* F3A474 8007EED8 00000000 */   nop
    /* F3A478 8007EEDC 07004230 */  andi       $v0, $v0, 0x7
    /* F3A47C 8007EEE0 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* F3A480 8007EEE4 C1FB0108 */  j          .Llevel_11_8007EF04
    /* F3A484 8007EEE8 450062A2 */   sb        $v0, 0x45($s3)
  .Llevel_11_8007EEEC:
    /* F3A488 8007EEEC 4B67010C */  jal        func_80059D2C
    /* F3A48C 8007EEF0 00000000 */   nop
    /* F3A490 8007EEF4 07004230 */  andi       $v0, $v0, 0x7
    /* F3A494 8007EEF8 40000324 */  addiu      $v1, $zero, 0x40
    /* F3A498 8007EEFC 23186200 */  subu       $v1, $v1, $v0
    /* F3A49C 8007EF00 450063A2 */  sb         $v1, 0x45($s3)
  .Llevel_11_8007EF04:
    /* F3A4A0 8007EF04 4B67010C */  jal        func_80059D2C
    /* F3A4A4 8007EF08 00000000 */   nop
    /* F3A4A8 8007EF0C 21206002 */  addu       $a0, $s3, $zero
    /* F3A4AC 8007EF10 460062A2 */  sb         $v0, 0x46($s3)
    /* F3A4B0 8007EF14 20000224 */  addiu      $v0, $zero, 0x20
    /* F3A4B4 8007EF18 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* F3A4B8 8007EF1C 40000224 */  addiu      $v0, $zero, 0x40
    /* F3A4BC 8007EF20 4E0062A2 */  sb         $v0, 0x4E($s3)
    /* F3A4C0 8007EF24 FF000224 */  addiu      $v0, $zero, 0xFF
    /* F3A4C4 8007EF28 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* F3A4C8 8007EF2C 0E05010C */  jal        func_80041438
    /* F3A4CC 8007EF30 480060A2 */   sb        $zero, 0x48($s3)
    /* F3A4D0 8007EF34 0C006426 */  addiu      $a0, $s3, 0xC
    /* F3A4D4 8007EF38 EEFF0524 */  addiu      $a1, $zero, -0x12
    /* F3A4D8 8007EF3C 06000624 */  addiu      $a2, $zero, 0x6
    /* F3A4DC 8007EF40 8000073C */  lui        $a3, (0x808080 >> 16)
    /* F3A4E0 8007EF44 8080E734 */  ori        $a3, $a3, (0x808080 & 0xFFFF)
    /* F3A4E4 8007EF48 3C000224 */  addiu      $v0, $zero, 0x3C
    /* F3A4E8 8007EF4C BF40010C */  jal        func_800502FC
    /* F3A4EC 8007EF50 000022AE */   sw        $v0, 0x0($s1)
    /* F3A4F0 8007EF54 20006426 */  addiu      $a0, $s3, 0x20
    /* F3A4F4 8007EF58 08002526 */  addiu      $a1, $s1, 0x8
    /* F3A4F8 8007EF5C 2130A000 */  addu       $a2, $a1, $zero
    /* F3A4FC 8007EF60 040022AE */  sw         $v0, 0x4($s1)
    /* F3A500 8007EF64 40010224 */  addiu      $v0, $zero, 0x140
    /* F3A504 8007EF68 080022AE */  sw         $v0, 0x8($s1)
    /* F3A508 8007EF6C 0C0020AE */  sw         $zero, 0xC($s1)
    /* F3A50C 8007EF70 696E000C */  jal        func_8001B9A4
    /* F3A510 8007EF74 100020AE */   sw        $zero, 0x10($s1)
    /* F3A514 8007EF78 ECFB0108 */  j          .Llevel_11_8007EFB0
    /* F3A518 8007EF7C 21106002 */   addu      $v0, $s3, $zero
  .Llevel_11_8007EF80:
    /* F3A51C 8007EF80 0300A012 */  beqz       $s5, .Llevel_11_8007EF90
    /* F3A520 8007EF84 0C006426 */   addiu     $a0, $s3, 0xC
    /* F3A524 8007EF88 E6FB0108 */  j          .Llevel_11_8007EF98
    /* F3A528 8007EF8C 0C00A526 */   addiu     $a1, $s5, 0xC
  .Llevel_11_8007EF90:
    /* F3A52C 8007EF90 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* F3A530 8007EF94 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_11_8007EF98:
    /* F3A534 8007EF98 6C6F000C */  jal        func_8001BDB0
    /* F3A538 8007EF9C 00000000 */   nop
    /* F3A53C 8007EFA0 21206002 */  addu       $a0, $s3, $zero
  .Llevel_11_8007EFA4:
    /* F3A540 8007EFA4 0E05010C */  jal        func_80041438
    /* F3A544 8007EFA8 00000000 */   nop
  .Llevel_11_8007EFAC:
    /* F3A548 8007EFAC 21106002 */  addu       $v0, $s3, $zero
  .Llevel_11_8007EFB0:
    /* F3A54C 8007EFB0 8800BF8F */  lw         $ra, 0x88($sp)
    /* F3A550 8007EFB4 8400B58F */  lw         $s5, 0x84($sp)
    /* F3A554 8007EFB8 8000B48F */  lw         $s4, 0x80($sp)
    /* F3A558 8007EFBC 7C00B38F */  lw         $s3, 0x7C($sp)
    /* F3A55C 8007EFC0 7800B28F */  lw         $s2, 0x78($sp)
    /* F3A560 8007EFC4 7400B18F */  lw         $s1, 0x74($sp)
    /* F3A564 8007EFC8 7000B08F */  lw         $s0, 0x70($sp)
    /* F3A568 8007EFCC 9000BD27 */  addiu      $sp, $sp, 0x90
    /* F3A56C 8007EFD0 0800E003 */  jr         $ra
    /* F3A570 8007EFD4 00000000 */   nop
endlabel .Llevel_11_8007EDE8
