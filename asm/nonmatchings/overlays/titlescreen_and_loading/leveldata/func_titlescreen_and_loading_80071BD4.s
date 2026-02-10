.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80071BD4, 0xFBC

glabel func_titlescreen_and_loading_80071BD4
    /* 27970 80071BD4 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 27974 80071BD8 5000B0AF */  sw         $s0, 0x50($sp)
    /* 27978 80071BDC 0780103C */  lui        $s0, %hi(D_800698F0)
    /* 2797C 80071BE0 F098108E */  lw         $s0, %lo(D_800698F0)($s0)
    /* 27980 80071BE4 01000224 */  addiu      $v0, $zero, 0x1
    /* 27984 80071BE8 6400BFAF */  sw         $ra, 0x64($sp)
    /* 27988 80071BEC 6000B4AF */  sw         $s4, 0x60($sp)
    /* 2798C 80071BF0 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* 27990 80071BF4 5800B2AF */  sw         $s2, 0x58($sp)
  alabel D_titlescreen_and_loading_80071BF8
    /* 27994 80071BF8 07000212 */  beq        $s0, $v0, .Ltitlescreen_and_loading_80071C18
    /* 27998 80071BFC 5400B1AF */   sw        $s1, 0x54($sp)
    /* 2799C 80071C00 DA03001A */  blez       $s0, .Ltitlescreen_and_loading_80072B6C
    /* 279A0 80071C04 0400022A */   slti      $v0, $s0, 0x4
    /* 279A4 80071C08 D8034010 */  beqz       $v0, .Ltitlescreen_and_loading_80072B6C
    /* 279A8 80071C0C 00000000 */   nop
    /* 279AC 80071C10 F7C70108 */  j          .Ltitlescreen_and_loading_80071FDC
    /* 279B0 80071C14 00000000 */   nop
  .Ltitlescreen_and_loading_80071C18:
    /* 279B4 80071C18 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* 279B8 80071C1C EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* 279BC 80071C20 00000000 */  nop
    /* 279C0 80071C24 02004228 */  slti       $v0, $v0, 0x2
    /* 279C4 80071C28 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071C40
    /* 279C8 80071C2C 00000000 */   nop
    /* 279CC 80071C30 9675000C */  jal        func_8001D658
    /* 279D0 80071C34 00000000 */   nop
    /* 279D4 80071C38 33C70108 */  j          .Ltitlescreen_and_loading_80071CCC
    /* 279D8 80071C3C 00000000 */   nop
  .Ltitlescreen_and_loading_80071C40:
    /* 279DC 80071C40 0780113C */  lui        $s1, %hi(D_8006B2FC)
    /* 279E0 80071C44 FCB23126 */  addiu      $s1, $s1, %lo(D_8006B2FC)
    /* 279E4 80071C48 0000228E */  lw         $v0, 0x0($s1)
    /* 279E8 80071C4C 00000000 */  nop
    /* 279EC 80071C50 1E004014 */  bnez       $v0, .Ltitlescreen_and_loading_80071CCC
    /* 279F0 80071C54 00000000 */   nop
    /* 279F4 80071C58 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* 279F8 80071C5C E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* 279FC 80071C60 0680053C */  lui        $a1, %hi(D_8006715C)
    /* 27A00 80071C64 5C71A58C */  lw         $a1, %lo(D_8006715C)($a1)
    /* 27A04 80071C68 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_80071C78
    /* 27A08 80071C6C 0200033C */   lui       $v1, (0x2C000 >> 16)
    /* 27A0C 80071C70 0680053C */  lui        $a1, %hi(D_80066F90)
    /* 27A10 80071C74 906FA58C */  lw         $a1, %lo(D_80066F90)($a1)
  .Ltitlescreen_and_loading_80071C78:
    /* 27A14 80071C78 00C06334 */  ori        $v1, $v1, (0x2C000 & 0xFFFF)
    /* 27A18 80071C7C 00A00634 */  ori        $a2, $zero, 0xA000
    /* 27A1C 80071C80 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 27A20 80071C84 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 27A24 80071C88 0680013C */  lui        $at, %hi(D_80064940)
    /* 27A28 80071C8C 21082500 */  addu       $at, $at, $a1
    /* 27A2C 80071C90 40492290 */  lbu        $v0, %lo(D_80064940)($at)
    /* 27A30 80071C94 0780053C */  lui        $a1, %hi(D_8006B29C)
    /* 27A34 80071C98 9CB2A58C */  lw         $a1, %lo(D_8006B29C)($a1)
    /* 27A38 80071C9C 0680013C */  lui        $at, %hi(D_8006328C)
    /* 27A3C 80071CA0 21082200 */  addu       $at, $at, $v0
    /* 27A40 80071CA4 8C322290 */  lbu        $v0, %lo(D_8006328C)($at)
    /* 27A44 80071CA8 2128A300 */  addu       $a1, $a1, $v1
    /* 27A48 80071CAC 80380200 */  sll        $a3, $v0, 2
    /* 27A4C 80071CB0 2138E200 */  addu       $a3, $a3, $v0
    /* 27A50 80071CB4 0680023C */  lui        $v0, %hi(D_80067700)
    /* 27A54 80071CB8 0077428C */  lw         $v0, %lo(D_80067700)($v0)
    /* 27A58 80071CBC 403B0700 */  sll        $a3, $a3, 13
    /* 27A5C 80071CC0 464E000C */  jal        func_80013918
    /* 27A60 80071CC4 21384700 */   addu      $a3, $v0, $a3
    /* 27A64 80071CC8 000030AE */  sw         $s0, 0x0($s1)
  .Ltitlescreen_and_loading_80071CCC:
    /* 27A68 80071CCC 0780113C */  lui        $s1, %hi(D_800698EC)
    /* 27A6C 80071CD0 EC983126 */  addiu      $s1, $s1, %lo(D_800698EC)
    /* 27A70 80071CD4 0000228E */  lw         $v0, 0x0($s1)
    /* 27A74 80071CD8 0780033C */  lui        $v1, %hi(D_800698F8)
    /* 27A78 80071CDC F898638C */  lw         $v1, %lo(D_800698F8)($v1)
    /* 27A7C 80071CE0 01004424 */  addiu      $a0, $v0, 0x1
    /* 27A80 80071CE4 22006014 */  bnez       $v1, .Ltitlescreen_and_loading_80071D70
    /* 27A84 80071CE8 000024AE */   sw        $a0, 0x0($s1)
    /* 27A88 80071CEC 10008228 */  slti       $v0, $a0, 0x10
    /* 27A8C 80071CF0 1D004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071D68
    /* 27A90 80071CF4 10000224 */   addiu     $v0, $zero, 0x10
    /* 27A94 80071CF8 0780103C */  lui        $s0, %hi(D_8006B2B8)
    /* 27A98 80071CFC B8B21026 */  addiu      $s0, $s0, %lo(D_8006B2B8)
    /* 27A9C 80071D00 E5C6000C */  jal        func_80031B94
    /* 27AA0 80071D04 21200002 */   addu      $a0, $s0, $zero
    /* 27AA4 80071D08 00044228 */  slti       $v0, $v0, 0x400
    /* 27AA8 80071D0C 0D004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071D44
    /* 27AAC 80071D10 00000000 */   nop
    /* 27AB0 80071D14 0000028E */  lw         $v0, 0x0($s0)
    /* 27AB4 80071D18 0780043C */  lui        $a0, %hi(D_8006B2C4)
    /* 27AB8 80071D1C C4B2848C */  lw         $a0, %lo(D_8006B2C4)($a0)
    /* 27ABC 80071D20 0780033C */  lui        $v1, %hi(D_8006B2BC)
    /* 27AC0 80071D24 BCB2638C */  lw         $v1, %lo(D_8006B2BC)($v1)
    /* 27AC4 80071D28 0780053C */  lui        $a1, %hi(D_8006B2C8)
    /* 27AC8 80071D2C C8B2A58C */  lw         $a1, %lo(D_8006B2C8)($a1)
    /* 27ACC 80071D30 21104400 */  addu       $v0, $v0, $a0
    /* 27AD0 80071D34 21186500 */  addu       $v1, $v1, $a1
    /* 27AD4 80071D38 000002AE */  sw         $v0, 0x0($s0)
    /* 27AD8 80071D3C 0780013C */  lui        $at, %hi(D_8006B2BC)
    /* 27ADC 80071D40 BCB223AC */  sw         $v1, %lo(D_8006B2BC)($at)
  .Ltitlescreen_and_loading_80071D44:
    /* 27AE0 80071D44 C1B8000C */  jal        func_8002E304
    /* 27AE4 80071D48 00000000 */   nop
    /* 27AE8 80071D4C 0000228E */  lw         $v0, 0x0($s1)
    /* 27AEC 80071D50 00000000 */  nop
    /* 27AF0 80071D54 00110200 */  sll        $v0, $v0, 4
    /* 27AF4 80071D58 0680013C */  lui        $at, %hi(D_80066F68)
    /* 27AF8 80071D5C 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
    /* 27AFC 80071D60 DBCA0108 */  j          .Ltitlescreen_and_loading_80072B6C
    /* 27B00 80071D64 00000000 */   nop
  .Ltitlescreen_and_loading_80071D68:
    /* 27B04 80071D68 0B008210 */  beq        $a0, $v0, .Ltitlescreen_and_loading_80071D98
    /* 27B08 80071D6C 00000000 */   nop
  .Ltitlescreen_and_loading_80071D70:
    /* 27B0C 80071D70 0780033C */  lui        $v1, %hi(D_800698F8)
    /* 27B10 80071D74 F898638C */  lw         $v1, %lo(D_800698F8)($v1)
    /* 27B14 80071D78 01000224 */  addiu      $v0, $zero, 0x1
    /* 27B18 80071D7C 24006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80071E10
    /* 27B1C 80071D80 00000000 */   nop
    /* 27B20 80071D84 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 27B24 80071D88 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 27B28 80071D8C 00000000 */  nop
    /* 27B2C 80071D90 1F004314 */  bne        $v0, $v1, .Ltitlescreen_and_loading_80071E10
    /* 27B30 80071D94 00000000 */   nop
  .Ltitlescreen_and_loading_80071D98:
    /* 27B34 80071D98 0680033C */  lui        $v1, %hi(D_80066F54)
    /* 27B38 80071D9C 546F638C */  lw         $v1, %lo(D_80066F54)($v1)
    /* 27B3C 80071DA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 27B40 80071DA4 0A006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80071DD0
    /* 27B44 80071DA8 00000000 */   nop
    /* 27B48 80071DAC 0780023C */  lui        $v0, %hi(D_8006B084)
    /* 27B4C 80071DB0 84B04290 */  lbu        $v0, %lo(D_8006B084)($v0)
    /* 27B50 80071DB4 00000000 */  nop
    /* 27B54 80071DB8 05004014 */  bnez       $v0, .Ltitlescreen_and_loading_80071DD0
    /* 27B58 80071DBC 00000000 */   nop
    /* 27B5C 80071DC0 8C64000C */  jal        func_80019230
    /* 27B60 80071DC4 04000424 */   addiu     $a0, $zero, 0x4
    /* 27B64 80071DC8 DBCA0108 */  j          .Ltitlescreen_and_loading_80072B6C
    /* 27B68 80071DCC 00000000 */   nop
  .Ltitlescreen_and_loading_80071DD0:
    /* 27B6C 80071DD0 2131010C */  jal        func_8004C484
    /* 27B70 80071DD4 00000000 */   nop
    /* 27B74 80071DD8 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* 27B78 80071DDC E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* 27B7C 80071DE0 00000000 */  nop
    /* 27B80 80071DE4 0A004014 */  bnez       $v0, .Ltitlescreen_and_loading_80071E10
    /* 27B84 80071DE8 00000000 */   nop
    /* 27B88 80071DEC 0680023C */  lui        $v0, %hi(D_80066FF4)
    /* 27B8C 80071DF0 F46F4290 */  lbu        $v0, %lo(D_80066FF4)($v0)
    /* 27B90 80071DF4 00000000 */  nop
    /* 27B94 80071DF8 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_80071E10
    /* 27B98 80071DFC 00000000 */   nop
    /* 27B9C 80071E00 92CF010C */  jal        func_titlescreen_and_loading_80073E48
    /* 27BA0 80071E04 01000424 */   addiu     $a0, $zero, 0x1
    /* 27BA4 80071E08 58034014 */  bnez       $v0, .Ltitlescreen_and_loading_80072B6C
    /* 27BA8 80071E0C 00000000 */   nop
  .Ltitlescreen_and_loading_80071E10:
    /* 27BAC 80071E10 0780023C */  lui        $v0, %hi(D_8006B2FC)
    /* 27BB0 80071E14 FCB2428C */  lw         $v0, %lo(D_8006B2FC)($v0)
    /* 27BB4 80071E18 0780013C */  lui        $at, %hi(D_80069941)
    /* 27BB8 80071E1C 419920A0 */  sb         $zero, %lo(D_80069941)($at)
    /* 27BBC 80071E20 0780013C */  lui        $at, %hi(D_80069942)
    /* 27BC0 80071E24 429920A0 */  sb         $zero, %lo(D_80069942)($at)
    /* 27BC4 80071E28 0780013C */  lui        $at, %hi(D_80069943)
    /* 27BC8 80071E2C 439920A0 */  sb         $zero, %lo(D_80069943)($at)
    /* 27BCC 80071E30 0780013C */  lui        $at, %hi(D_800699B5)
    /* 27BD0 80071E34 B59920A0 */  sb         $zero, %lo(D_800699B5)($at)
    /* 27BD4 80071E38 0780013C */  lui        $at, %hi(D_800699B6)
    /* 27BD8 80071E3C B69920A0 */  sb         $zero, %lo(D_800699B6)($at)
    /* 27BDC 80071E40 0780013C */  lui        $at, %hi(D_800699B7)
    /* 27BE0 80071E44 B79920A0 */  sb         $zero, %lo(D_800699B7)($at)
    /* 27BE4 80071E48 48034010 */  beqz       $v0, .Ltitlescreen_and_loading_80072B6C
    /* 27BE8 80071E4C 00000000 */   nop
    /* 27BEC 80071E50 A44D000C */  jal        func_80013690
    /* 27BF0 80071E54 00000000 */   nop
    /* 27BF4 80071E58 44034014 */  bnez       $v0, .Ltitlescreen_and_loading_80072B6C
    /* 27BF8 80071E5C 0200113C */   lui       $s1, (0x2C000 >> 16)
    /* 27BFC 80071E60 00C03136 */  ori        $s1, $s1, (0x2C000 & 0xFFFF)
    /* 27C00 80071E64 0780123C */  lui        $s2, %hi(D_8006B29C)
    /* 27C04 80071E68 9CB25226 */  addiu      $s2, $s2, %lo(D_8006B29C)
    /* 27C08 80071E6C 0000508E */  lw         $s0, 0x0($s2)
    /* 27C0C 80071E70 01000524 */  addiu      $a1, $zero, 0x1
    /* 27C10 80071E74 21981102 */  addu       $s3, $s0, $s1
    /* 27C14 80071E78 0000648E */  lw         $a0, 0x0($s3)
    /* 27C18 80071E7C 8080063C */  lui        $a2, (0x80800000 >> 16)
    /* 27C1C 80071E80 21209100 */  addu       $a0, $a0, $s1
    /* 27C20 80071E84 21200402 */  addu       $a0, $s0, $a0
    /* 27C24 80071E88 06C0010C */  jal        func_titlescreen_and_loading_80070018
    /* 27C28 80071E8C 14008424 */   addiu     $a0, $a0, 0x14
    /* 27C2C 80071E90 37010524 */  addiu      $a1, $zero, 0x137
    /* 27C30 80071E94 8080063C */  lui        $a2, (0x80800000 >> 16)
    /* 27C34 80071E98 0300013C */  lui        $at, (0x30000 >> 16)
    /* 27C38 80071E9C 21080102 */  addu       $at, $s0, $at
    /* 27C3C 80071EA0 04C0228C */  lw         $v0, -0x3FFC($at)
    /* 27C40 80071EA4 0000448E */  lw         $a0, 0x0($s2)
    /* 27C44 80071EA8 21105100 */  addu       $v0, $v0, $s1
    /* 27C48 80071EAC 21208200 */  addu       $a0, $a0, $v0
    /* 27C4C 80071EB0 06C0010C */  jal        func_titlescreen_and_loading_80070018
    /* 27C50 80071EB4 14008424 */   addiu     $a0, $a0, 0x14
    /* 27C54 80071EB8 0300013C */  lui        $at, (0x30000 >> 16)
    /* 27C58 80071EBC 21080102 */  addu       $at, $s0, $at
    /* 27C5C 80071EC0 08C0228C */  lw         $v0, -0x3FF8($at)
    /* 27C60 80071EC4 0780053C */  lui        $a1, %hi(D_800681C0)
    /* 27C64 80071EC8 C081A524 */  addiu      $a1, $a1, %lo(D_800681C0)
    /* 27C68 80071ECC 21986202 */  addu       $s3, $s3, $v0
    /* 27C6C 80071ED0 00006292 */  lbu        $v0, 0x0($s3)
    /* 27C70 80071ED4 00000000 */  nop
    /* 27C74 80071ED8 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 27C78 80071EDC 01006292 */  lbu        $v0, 0x1($s3)
    /* 27C7C 80071EE0 21206002 */  addu       $a0, $s3, $zero
    /* 27C80 80071EE4 0780013C */  lui        $at, %hi(D_800681C1)
    /* 27C84 80071EE8 C18122A0 */  sb         $v0, %lo(D_800681C1)($at)
    /* 27C88 80071EEC 02006292 */  lbu        $v0, 0x2($s3)
    /* 27C8C 80071EF0 04007326 */  addiu      $s3, $s3, 0x4
    /* 27C90 80071EF4 0780013C */  lui        $at, %hi(D_800681C2)
    /* 27C94 80071EF8 C28122A0 */  sb         $v0, %lo(D_800681C2)($at)
    /* 27C98 80071EFC 0000628E */  lw         $v0, 0x0($s3)
    /* 27C9C 80071F00 04007326 */  addiu      $s3, $s3, 0x4
    /* 27CA0 80071F04 0780013C */  lui        $at, %hi(D_800681BC)
    /* 27CA4 80071F08 BC8133AC */  sw         $s3, %lo(D_800681BC)($at)
    /* 27CA8 80071F0C 0780013C */  lui        $at, %hi(D_800681B8)
    /* 27CAC 80071F10 B88122AC */  sw         $v0, %lo(D_800681B8)($at)
    /* 27CB0 80071F14 0B004018 */  blez       $v0, .Ltitlescreen_and_loading_80071F44
    /* 27CB4 80071F18 21180000 */   addu      $v1, $zero, $zero
    /* 27CB8 80071F1C F8FFA524 */  addiu      $a1, $a1, -0x8
  .Ltitlescreen_and_loading_80071F20:
    /* 27CBC 80071F20 0000628E */  lw         $v0, 0x0($s3)
    /* 27CC0 80071F24 01006324 */  addiu      $v1, $v1, 0x1
    /* 27CC4 80071F28 21108200 */  addu       $v0, $a0, $v0
    /* 27CC8 80071F2C 000062AE */  sw         $v0, 0x0($s3)
    /* 27CCC 80071F30 0000A28C */  lw         $v0, 0x0($a1)
    /* 27CD0 80071F34 00000000 */  nop
    /* 27CD4 80071F38 2A106200 */  slt        $v0, $v1, $v0
    /* 27CD8 80071F3C F8FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80071F20
    /* 27CDC 80071F40 04007326 */   addiu     $s3, $s3, 0x4
  .Ltitlescreen_and_loading_80071F44:
    /* 27CE0 80071F44 0780033C */  lui        $v1, %hi(D_800681C0)
    /* 27CE4 80071F48 C0816390 */  lbu        $v1, %lo(D_800681C0)($v1)
    /* 27CE8 80071F4C 0780043C */  lui        $a0, %hi(D_800681C1)
    /* 27CEC 80071F50 C1818490 */  lbu        $a0, %lo(D_800681C1)($a0)
    /* 27CF0 80071F54 0780053C */  lui        $a1, %hi(D_800681C2)
    /* 27CF4 80071F58 C281A590 */  lbu        $a1, %lo(D_800681C2)($a1)
    /* 27CF8 80071F5C 0680063C */  lui        $a2, %hi(D_8006715C)
    /* 27CFC 80071F60 5C71C68C */  lw         $a2, %lo(D_8006715C)($a2)
    /* 27D00 80071F64 0680073C */  lui        $a3, %hi(D_80066F54)
    /* 27D04 80071F68 546FE78C */  lw         $a3, %lo(D_80066F54)($a3)
    /* 27D08 80071F6C 02000224 */  addiu      $v0, $zero, 0x2
    /* 27D0C 80071F70 0780013C */  lui        $at, %hi(D_800698F0)
    /* 27D10 80071F74 F09822AC */  sw         $v0, %lo(D_800698F0)($at)
    /* 27D14 80071F78 01000224 */  addiu      $v0, $zero, 0x1
    /* 27D18 80071F7C 0680013C */  lui        $at, %hi(D_80067EC4)
    /* 27D1C 80071F80 C47E20AC */  sw         $zero, %lo(D_80067EC4)($at)
    /* 27D20 80071F84 0780013C */  lui        $at, %hi(D_800698EC)
    /* 27D24 80071F88 EC9820AC */  sw         $zero, %lo(D_800698EC)($at)
    /* 27D28 80071F8C 0680013C */  lui        $at, %hi(D_800670C8)
    /* 27D2C 80071F90 C87022AC */  sw         $v0, %lo(D_800670C8)($at)
    /* 27D30 80071F94 0780013C */  lui        $at, %hi(D_80069941)
    /* 27D34 80071F98 419923A0 */  sb         $v1, %lo(D_80069941)($at)
    /* 27D38 80071F9C 0780013C */  lui        $at, %hi(D_80069942)
    /* 27D3C 80071FA0 429924A0 */  sb         $a0, %lo(D_80069942)($at)
    /* 27D40 80071FA4 0780013C */  lui        $at, %hi(D_80069943)
    /* 27D44 80071FA8 439925A0 */  sb         $a1, %lo(D_80069943)($at)
    /* 27D48 80071FAC 0780013C */  lui        $at, %hi(D_800699B5)
    /* 27D4C 80071FB0 B59923A0 */  sb         $v1, %lo(D_800699B5)($at)
    /* 27D50 80071FB4 0780013C */  lui        $at, %hi(D_800699B6)
    /* 27D54 80071FB8 B69924A0 */  sb         $a0, %lo(D_800699B6)($at)
    /* 27D58 80071FBC 0780013C */  lui        $at, %hi(D_800699B7)
    /* 27D5C 80071FC0 B79925A0 */  sb         $a1, %lo(D_800699B7)($at)
    /* 27D60 80071FC4 0680013C */  lui        $at, %hi(D_80066F90)
    /* 27D64 80071FC8 906F26AC */  sw         $a2, %lo(D_80066F90)($at)
    /* 27D68 80071FCC 0680013C */  lui        $at, %hi(D_80066FD0)
    /* 27D6C 80071FD0 D06F27AC */  sw         $a3, %lo(D_80066FD0)($at)
    /* 27D70 80071FD4 DBCA0108 */  j          .Ltitlescreen_and_loading_80072B6C
    /* 27D74 80071FD8 00000000 */   nop
  .Ltitlescreen_and_loading_80071FDC:
    /* 27D78 80071FDC 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 27D7C 80071FE0 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 27D80 80071FE4 00000000 */  nop
    /* 27D84 80071FE8 28004014 */  bnez       $v0, .Ltitlescreen_and_loading_8007208C
    /* 27D88 80071FEC 02000224 */   addiu     $v0, $zero, 0x2
    /* 27D8C 80071FF0 0780033C */  lui        $v1, %hi(D_800698F0)
    /* 27D90 80071FF4 F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* 27D94 80071FF8 00000000 */  nop
    /* 27D98 80071FFC 18006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072060
    /* 27D9C 80072000 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 27DA0 80072004 0780013C */  lui        $at, %hi(D_80069894)
    /* 27DA4 80072008 949822AC */  sw         $v0, %lo(D_80069894)($at)
    /* 27DA8 8007200C 9BC2000C */  jal        func_80030A6C
    /* 27DAC 80072010 00000000 */   nop
    /* 27DB0 80072014 00200224 */  addiu      $v0, $zero, 0x2000
    /* 27DB4 80072018 0780013C */  lui        $at, %hi(D_80069FF0)
    /* 27DB8 8007201C F09F22AC */  sw         $v0, %lo(D_80069FF0)($at)
    /* 27DBC 80072020 0780013C */  lui        $at, %hi(D_80069FF4)
    /* 27DC0 80072024 F49F22AC */  sw         $v0, %lo(D_80069FF4)($at)
    /* 27DC4 80072028 0780013C */  lui        $at, %hi(D_80069FF8)
    /* 27DC8 8007202C F89F22AC */  sw         $v0, %lo(D_80069FF8)($at)
    /* 27DCC 80072030 0780013C */  lui        $at, %hi(D_8006A00E)
    /* 27DD0 80072034 0EA020A0 */  sb         $zero, %lo(D_8006A00E)($at)
    /* 27DD4 80072038 76D4000C */  jal        func_800351D8
    /* 27DD8 8007203C 10000424 */   addiu     $a0, $zero, 0x10
    /* 27DDC 80072040 C1B8000C */  jal        func_8002E304
    /* 27DE0 80072044 00000000 */   nop
    /* 27DE4 80072048 0780013C */  lui        $at, %hi(D_80069FFC)
    /* 27DE8 8007204C FC9F20A0 */  sb         $zero, %lo(D_80069FFC)($at)
    /* 27DEC 80072050 0780013C */  lui        $at, %hi(D_80069FFD)
    /* 27DF0 80072054 FD9F20A0 */  sb         $zero, %lo(D_80069FFD)($at)
    /* 27DF4 80072058 0780013C */  lui        $at, %hi(D_80069FFE)
    /* 27DF8 8007205C FE9F20A0 */  sb         $zero, %lo(D_80069FFE)($at)
  .Ltitlescreen_and_loading_80072060:
    /* 27DFC 80072060 4B67010C */  jal        func_80059D2C
    /* 27E00 80072064 00000000 */   nop
    /* 27E04 80072068 01004430 */  andi       $a0, $v0, 0x1
    /* 27E08 8007206C 0780033C */  lui        $v1, %hi(D_800698F0)
    /* 27E0C 80072070 F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* 27E10 80072074 03000224 */  addiu      $v0, $zero, 0x3
    /* 27E14 80072078 02006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072084
    /* 27E18 8007207C 00000000 */   nop
    /* 27E1C 80072080 02008424 */  addiu      $a0, $a0, 0x2
  .Ltitlescreen_and_loading_80072084:
    /* 27E20 80072084 0780013C */  lui        $at, %hi(D_8006B2F4)
    /* 27E24 80072088 F4B224AC */  sw         $a0, %lo(D_8006B2F4)($at)
  .Ltitlescreen_and_loading_8007208C:
    /* 27E28 8007208C 0780033C */  lui        $v1, %hi(D_800698F0)
    /* 27E2C 80072090 F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* 27E30 80072094 02000224 */  addiu      $v0, $zero, 0x2
    /* 27E34 80072098 AF006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072358
    /* 27E38 8007209C 00000000 */   nop
    /* 27E3C 800720A0 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 27E40 800720A4 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* 27E44 800720A8 00000000 */  nop
    /* 27E48 800720AC E0FF6224 */  addiu      $v0, $v1, -0x20
    /* 27E4C 800720B0 4900422C */  sltiu      $v0, $v0, 0x49
    /* 27E50 800720B4 A8004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072358
    /* 27E54 800720B8 20000224 */   addiu     $v0, $zero, 0x20
    /* 27E58 800720BC 0F006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_800720FC
    /* 27E5C 800720C0 00000000 */   nop
    /* 27E60 800720C4 0780023C */  lui        $v0, %hi(D_800687F0)
    /* 27E64 800720C8 F0874224 */  addiu      $v0, $v0, %lo(D_800687F0)
    /* 27E68 800720CC 0680013C */  lui        $at, %hi(D_80067110)
    /* 27E6C 800720D0 107122AC */  sw         $v0, %lo(D_80067110)($at)
    /* 27E70 800720D4 21800000 */  addu       $s0, $zero, $zero
    /* 27E74 800720D8 C0101000 */  sll        $v0, $s0, 3
  .Ltitlescreen_and_loading_800720DC:
    /* 27E78 800720DC 0680033C */  lui        $v1, %hi(D_80067110)
    /* 27E7C 800720E0 1071638C */  lw         $v1, %lo(D_80067110)($v1)
    /* 27E80 800720E4 01001026 */  addiu      $s0, $s0, 0x1
    /* 27E84 800720E8 21104300 */  addu       $v0, $v0, $v1
    /* 27E88 800720EC 040040A0 */  sb         $zero, 0x4($v0)
    /* 27E8C 800720F0 2000022A */  slti       $v0, $s0, 0x20
    /* 27E90 800720F4 F9FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_800720DC
    /* 27E94 800720F8 C0101000 */   sll       $v0, $s0, 3
  .Ltitlescreen_and_loading_800720FC:
    /* 27E98 800720FC 0680023C */  lui        $v0, %hi(D_800670B0)
    /* 27E9C 80072100 B070428C */  lw         $v0, %lo(D_800670B0)($v0)
    /* 27EA0 80072104 00000000 */  nop
    /* 27EA4 80072108 10004228 */  slti       $v0, $v0, 0x10
    /* 27EA8 8007210C 02004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072118
    /* 27EAC 80072110 03001224 */   addiu     $s2, $zero, 0x3
    /* 27EB0 80072114 01001224 */  addiu      $s2, $zero, 0x1
  .Ltitlescreen_and_loading_80072118:
    /* 27EB4 80072118 21800000 */  addu       $s0, $zero, $zero
    /* 27EB8 8007211C 01001424 */  addiu      $s4, $zero, 0x1
    /* 27EBC 80072120 21880000 */  addu       $s1, $zero, $zero
    /* 27EC0 80072124 20001324 */  addiu      $s3, $zero, 0x20
  .Ltitlescreen_and_loading_80072128:
    /* 27EC4 80072128 0680023C */  lui        $v0, %hi(D_800670B0)
    /* 27EC8 8007212C B070428C */  lw         $v0, %lo(D_800670B0)($v0)
    /* 27ECC 80072130 00000000 */  nop
    /* 27ED0 80072134 2A100202 */  slt        $v0, $s0, $v0
    /* 27ED4 80072138 82004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072344
    /* 27ED8 8007213C 00000000 */   nop
    /* 27EDC 80072140 0780043C */  lui        $a0, %hi(D_800698EC)
    /* 27EE0 80072144 EC98848C */  lw         $a0, %lo(D_800698EC)($a0)
    /* 27EE4 80072148 00000000 */  nop
    /* 27EE8 8007214C 2A109300 */  slt        $v0, $a0, $s3
    /* 27EEC 80072150 7C004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072344
    /* 27EF0 80072154 00000000 */   nop
    /* 27EF4 80072158 0680023C */  lui        $v0, %hi(D_80067110)
    /* 27EF8 8007215C 1071428C */  lw         $v0, %lo(D_80067110)($v0)
    /* 27EFC 80072160 00000000 */  nop
    /* 27F00 80072164 21182202 */  addu       $v1, $s1, $v0
    /* 27F04 80072168 04006290 */  lbu        $v0, 0x4($v1)
    /* 27F08 8007216C 00000000 */  nop
    /* 27F0C 80072170 4D004014 */  bnez       $v0, .Ltitlescreen_and_loading_800722A8
    /* 27F10 80072174 40008228 */   slti      $v0, $a0, 0x40
    /* 27F14 80072178 43004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072288
    /* 27F18 8007217C 00000000 */   nop
    /* 27F1C 80072180 0B005416 */  bne        $s2, $s4, .Ltitlescreen_and_loading_800721B0
    /* 27F20 80072184 040074A0 */   sb        $s4, 0x4($v1)
    /* 27F24 80072188 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* 27F28 8007218C 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 27F2C 80072190 18000202 */  mult       $s0, $v0
    /* 27F30 80072194 C31F1000 */  sra        $v1, $s0, 31
    /* 27F34 80072198 10400000 */  mfhi       $t0
    /* 27F38 8007219C 23180301 */  subu       $v1, $t0, $v1
    /* 27F3C 800721A0 40100300 */  sll        $v0, $v1, 1
    /* 27F40 800721A4 21104300 */  addu       $v0, $v0, $v1
    /* 27F44 800721A8 08000216 */  bne        $s0, $v0, .Ltitlescreen_and_loading_800721CC
    /* 27F48 800721AC 00000000 */   nop
  .Ltitlescreen_and_loading_800721B0:
    /* 27F4C 800721B0 01000424 */  addiu      $a0, $zero, 0x1
    /* 27F50 800721B4 21280000 */  addu       $a1, $zero, $zero
    /* 27F54 800721B8 C841010C */  jal        func_80050720
    /* 27F58 800721BC 21300000 */   addu      $a2, $zero, $zero
    /* 27F5C 800721C0 21204000 */  addu       $a0, $v0, $zero
    /* 27F60 800721C4 3D43010C */  jal        func_80050CF4
    /* 27F64 800721C8 00080524 */   addiu     $a1, $zero, 0x800
  .Ltitlescreen_and_loading_800721CC:
    /* 27F68 800721CC 0680023C */  lui        $v0, %hi(D_80067110)
    /* 27F6C 800721D0 1071428C */  lw         $v0, %lo(D_80067110)($v0)
    /* 27F70 800721D4 00000000 */  nop
    /* 27F74 800721D8 21102202 */  addu       $v0, $s1, $v0
    /* 27F78 800721DC 07000016 */  bnez       $s0, .Ltitlescreen_and_loading_800721FC
    /* 27F7C 800721E0 000040AC */   sw        $zero, 0x0($v0)
    /* 27F80 800721E4 4B67010C */  jal        func_80059D2C
    /* 27F84 800721E8 00000000 */   nop
    /* 27F88 800721EC 0680033C */  lui        $v1, %hi(D_80067110)
    /* 27F8C 800721F0 1071638C */  lw         $v1, %lo(D_80067110)($v1)
    /* 27F90 800721F4 94C80108 */  j          .Ltitlescreen_and_loading_80072250
    /* 27F94 800721F8 050062A0 */   sb        $v0, 0x5($v1)
  .Ltitlescreen_and_loading_800721FC:
    /* 27F98 800721FC 4B67010C */  jal        func_80059D2C
    /* 27F9C 80072200 00000000 */   nop
    /* 27FA0 80072204 6666033C */  lui        $v1, (0x66666667 >> 16)
    /* 27FA4 80072208 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 27FA8 8007220C 18004300 */  mult       $v0, $v1
    /* 27FAC 80072210 0680063C */  lui        $a2, %hi(D_80067110)
    /* 27FB0 80072214 1071C68C */  lw         $a2, %lo(D_80067110)($a2)
    /* 27FB4 80072218 00000000 */  nop
    /* 27FB8 8007221C 21302602 */  addu       $a2, $s1, $a2
    /* 27FBC 80072220 FDFFC590 */  lbu        $a1, -0x3($a2)
    /* 27FC0 80072224 C31F0200 */  sra        $v1, $v0, 31
    /* 27FC4 80072228 3000A524 */  addiu      $a1, $a1, 0x30
    /* 27FC8 8007222C 10400000 */  mfhi       $t0
    /* 27FCC 80072230 83210800 */  sra        $a0, $t0, 6
    /* 27FD0 80072234 23208300 */  subu       $a0, $a0, $v1
    /* 27FD4 80072238 80180400 */  sll        $v1, $a0, 2
    /* 27FD8 8007223C 21186400 */  addu       $v1, $v1, $a0
    /* 27FDC 80072240 40190300 */  sll        $v1, $v1, 5
    /* 27FE0 80072244 23104300 */  subu       $v0, $v0, $v1
    /* 27FE4 80072248 2128A200 */  addu       $a1, $a1, $v0
    /* 27FE8 8007224C 0500C5A0 */  sb         $a1, 0x5($a2)
  .Ltitlescreen_and_loading_80072250:
    /* 27FEC 80072250 4B67010C */  jal        func_80059D2C
    /* 27FF0 80072254 00000000 */   nop
    /* 27FF4 80072258 0680033C */  lui        $v1, %hi(D_80067110)
    /* 27FF8 8007225C 1071638C */  lw         $v1, %lo(D_80067110)($v1)
    /* 27FFC 80072260 00000000 */  nop
    /* 28000 80072264 21182302 */  addu       $v1, $s1, $v1
    /* 28004 80072268 4B67010C */  jal        func_80059D2C
    /* 28008 8007226C 060062A0 */   sb        $v0, 0x6($v1)
    /* 2800C 80072270 0F004230 */  andi       $v0, $v0, 0xF
    /* 28010 80072274 0680033C */  lui        $v1, %hi(D_80067110)
    /* 28014 80072278 1071638C */  lw         $v1, %lo(D_80067110)($v1)
    /* 28018 8007227C F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 2801C 80072280 21182302 */  addu       $v1, $s1, $v1
    /* 28020 80072284 070062A0 */  sb         $v0, 0x7($v1)
  .Ltitlescreen_and_loading_80072288:
    /* 28024 80072288 0680023C */  lui        $v0, %hi(D_80067110)
    /* 28028 8007228C 1071428C */  lw         $v0, %lo(D_80067110)($v0)
    /* 2802C 80072290 00000000 */  nop
    /* 28030 80072294 21102202 */  addu       $v0, $s1, $v0
    /* 28034 80072298 04004290 */  lbu        $v0, 0x4($v0)
    /* 28038 8007229C 00000000 */  nop
    /* 2803C 800722A0 28004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072344
    /* 28040 800722A4 00000000 */   nop
  .Ltitlescreen_and_loading_800722A8:
    /* 28044 800722A8 0680043C */  lui        $a0, %hi(D_80067110)
    /* 28048 800722AC 1071848C */  lw         $a0, %lo(D_80067110)($a0)
    /* 2804C 800722B0 00000000 */  nop
    /* 28050 800722B4 21202402 */  addu       $a0, $s1, $a0
    /* 28054 800722B8 06008290 */  lbu        $v0, 0x6($a0)
    /* 28058 800722BC 07008390 */  lbu        $v1, 0x7($a0)
    /* 2805C 800722C0 00000000 */  nop
    /* 28060 800722C4 21104300 */  addu       $v0, $v0, $v1
    /* 28064 800722C8 060082A0 */  sb         $v0, 0x6($a0)
    /* 28068 800722CC 0000828C */  lw         $v0, 0x0($a0)
    /* 2806C 800722D0 0680033C */  lui        $v1, %hi(D_80067110)
    /* 28070 800722D4 1071638C */  lw         $v1, %lo(D_80067110)($v1)
    /* 28074 800722D8 01004224 */  addiu      $v0, $v0, 0x1
    /* 28078 800722DC 21182302 */  addu       $v1, $s1, $v1
    /* 2807C 800722E0 000082AC */  sw         $v0, 0x0($a0)
    /* 28080 800722E4 0000628C */  lw         $v0, 0x0($v1)
    /* 28084 800722E8 00000000 */  nop
    /* 28088 800722EC 28004228 */  slti       $v0, $v0, 0x28
    /* 2808C 800722F0 14004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072344
    /* 28090 800722F4 00000000 */   nop
    /* 28094 800722F8 0B005416 */  bne        $s2, $s4, .Ltitlescreen_and_loading_80072328
    /* 28098 800722FC 040060A0 */   sb        $zero, 0x4($v1)
    /* 2809C 80072300 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* 280A0 80072304 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 280A4 80072308 18000202 */  mult       $s0, $v0
    /* 280A8 8007230C C31F1000 */  sra        $v1, $s0, 31
    /* 280AC 80072310 10400000 */  mfhi       $t0
    /* 280B0 80072314 23180301 */  subu       $v1, $t0, $v1
    /* 280B4 80072318 40100300 */  sll        $v0, $v1, 1
    /* 280B8 8007231C 21104300 */  addu       $v0, $v0, $v1
    /* 280BC 80072320 08000216 */  bne        $s0, $v0, .Ltitlescreen_and_loading_80072344
    /* 280C0 80072324 00000000 */   nop
  .Ltitlescreen_and_loading_80072328:
    /* 280C4 80072328 21200000 */  addu       $a0, $zero, $zero
    /* 280C8 8007232C 21280000 */  addu       $a1, $zero, $zero
    /* 280CC 80072330 C841010C */  jal        func_80050720
    /* 280D0 80072334 21300000 */   addu      $a2, $zero, $zero
    /* 280D4 80072338 21204000 */  addu       $a0, $v0, $zero
    /* 280D8 8007233C 3D43010C */  jal        func_80050CF4
    /* 280DC 80072340 00080524 */   addiu     $a1, $zero, 0x800
  .Ltitlescreen_and_loading_80072344:
    /* 280E0 80072344 08003126 */  addiu      $s1, $s1, 0x8
    /* 280E4 80072348 01001026 */  addiu      $s0, $s0, 0x1
    /* 280E8 8007234C 1800022A */  slti       $v0, $s0, 0x18
    /* 280EC 80072350 75FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80072128
    /* 280F0 80072354 21987202 */   addu      $s3, $s3, $s2
  .Ltitlescreen_and_loading_80072358:
    /* 280F4 80072358 0780033C */  lui        $v1, %hi(D_8006B2F4)
    /* 280F8 8007235C F4B2638C */  lw         $v1, %lo(D_8006B2F4)($v1)
    /* 280FC 80072360 00000000 */  nop
    /* 28100 80072364 2F006014 */  bnez       $v1, .Ltitlescreen_and_loading_80072424
    /* 28104 80072368 01000224 */   addiu     $v0, $zero, 0x1
    /* 28108 8007236C 0EEA043C */  lui        $a0, (0xEA0EA0EB >> 16)
    /* 2810C 80072370 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 28110 80072374 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* 28114 80072378 EBA08434 */  ori        $a0, $a0, (0xEA0EA0EB & 0xFFFF)
    /* 28118 8007237C C0100300 */  sll        $v0, $v1, 3
    /* 2811C 80072380 23104300 */  subu       $v0, $v0, $v1
    /* 28120 80072384 00120200 */  sll        $v0, $v0, 8
    /* 28124 80072388 18004400 */  mult       $v0, $a0
    /* 28128 8007238C 80FF1024 */  addiu      $s0, $zero, -0x80
    /* 2812C 80072390 10400000 */  mfhi       $t0
    /* 28130 80072394 21180201 */  addu       $v1, $t0, $v0
    /* 28134 80072398 C3190300 */  sra        $v1, $v1, 7
    /* 28138 8007239C C3170200 */  sra        $v0, $v0, 31
    /* 2813C 800723A0 23186200 */  subu       $v1, $v1, $v0
    /* 28140 800723A4 23800302 */  subu       $s0, $s0, $v1
    /* 28144 800723A8 996D000C */  jal        func_8001B664
    /* 28148 800723AC 21200002 */   addu      $a0, $s0, $zero
    /* 2814C 800723B0 80180200 */  sll        $v1, $v0, 2
    /* 28150 800723B4 21186200 */  addu       $v1, $v1, $v0
    /* 28154 800723B8 401A0300 */  sll        $v1, $v1, 9
    /* 28158 800723BC 031B0300 */  sra        $v1, $v1, 12
    /* 2815C 800723C0 00206324 */  addiu      $v1, $v1, 0x2000
    /* 28160 800723C4 0680013C */  lui        $at, %hi(D_80067EAC)
    /* 28164 800723C8 AC7E23AC */  sw         $v1, %lo(D_80067EAC)($at)
    /* 28168 800723CC 876D000C */  jal        func_8001B61C
    /* 2816C 800723D0 21200002 */   addu      $a0, $s0, $zero
    /* 28170 800723D4 80180200 */  sll        $v1, $v0, 2
    /* 28174 800723D8 21186200 */  addu       $v1, $v1, $v0
    /* 28178 800723DC 401A0300 */  sll        $v1, $v1, 9
    /* 2817C 800723E0 031B0300 */  sra        $v1, $v1, 12
    /* 28180 800723E4 00206324 */  addiu      $v1, $v1, 0x2000
    /* 28184 800723E8 001E0224 */  addiu      $v0, $zero, 0x1E00
    /* 28188 800723EC 0680013C */  lui        $at, %hi(D_80067EB4)
    /* 2818C 800723F0 B47E22AC */  sw         $v0, %lo(D_80067EB4)($at)
    /* 28190 800723F4 800F0224 */  addiu      $v0, $zero, 0xF80
    /* 28194 800723F8 00081026 */  addiu      $s0, $s0, 0x800
    /* 28198 800723FC 0680013C */  lui        $at, %hi(D_80067EB0)
    /* 2819C 80072400 B07E23AC */  sw         $v1, %lo(D_80067EB0)($at)
    /* 281A0 80072404 0680013C */  lui        $at, %hi(D_80067EC8)
    /* 281A4 80072408 C87E20A4 */  sh         $zero, %lo(D_80067EC8)($at)
    /* 281A8 8007240C 0680013C */  lui        $at, %hi(D_80067ECA)
    /* 281AC 80072410 CA7E22A4 */  sh         $v0, %lo(D_80067ECA)($at)
    /* 281B0 80072414 0680013C */  lui        $at, %hi(D_80067ECC)
    /* 281B4 80072418 CC7E30A4 */  sh         $s0, %lo(D_80067ECC)($at)
    /* 281B8 8007241C C1C90108 */  j          .Ltitlescreen_and_loading_80072704
    /* 281BC 80072420 00000000 */   nop
  .Ltitlescreen_and_loading_80072424:
    /* 281C0 80072424 4F006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072564
    /* 281C4 80072428 02000224 */   addiu     $v0, $zero, 0x2
    /* 281C8 8007242C 0EEA033C */  lui        $v1, (0xEA0EA0EB >> 16)
    /* 281CC 80072430 0780113C */  lui        $s1, %hi(D_800698EC)
    /* 281D0 80072434 EC983126 */  addiu      $s1, $s1, %lo(D_800698EC)
    /* 281D4 80072438 0000228E */  lw         $v0, 0x0($s1)
    /* 281D8 8007243C EBA06334 */  ori        $v1, $v1, (0xEA0EA0EB & 0xFFFF)
    /* 281DC 80072440 80120200 */  sll        $v0, $v0, 10
    /* 281E0 80072444 18004300 */  mult       $v0, $v1
    /* 281E4 80072448 10400000 */  mfhi       $t0
    /* 281E8 8007244C 21800201 */  addu       $s0, $t0, $v0
    /* 281EC 80072450 C3811000 */  sra        $s0, $s0, 7
    /* 281F0 80072454 C3170200 */  sra        $v0, $v0, 31
    /* 281F4 80072458 23800202 */  subu       $s0, $s0, $v0
    /* 281F8 8007245C 00FE1026 */  addiu      $s0, $s0, -0x200
    /* 281FC 80072460 FF0F1032 */  andi       $s0, $s0, 0xFFF
    /* 28200 80072464 996D000C */  jal        func_8001B664
    /* 28204 80072468 21200002 */   addu      $a0, $s0, $zero
    /* 28208 8007246C 40180200 */  sll        $v1, $v0, 1
    /* 2820C 80072470 21186200 */  addu       $v1, $v1, $v0
    /* 28210 80072474 401A0300 */  sll        $v1, $v1, 9
    /* 28214 80072478 031B0300 */  sra        $v1, $v1, 12
    /* 28218 8007247C 00206324 */  addiu      $v1, $v1, 0x2000
    /* 2821C 80072480 0680013C */  lui        $at, %hi(D_80067EAC)
    /* 28220 80072484 AC7E23AC */  sw         $v1, %lo(D_80067EAC)($at)
    /* 28224 80072488 876D000C */  jal        func_8001B61C
    /* 28228 8007248C 21200002 */   addu      $a0, $s0, $zero
    /* 2822C 80072490 40180200 */  sll        $v1, $v0, 1
    /* 28230 80072494 21186200 */  addu       $v1, $v1, $v0
    /* 28234 80072498 401A0300 */  sll        $v1, $v1, 9
    /* 28238 8007249C 031B0300 */  sra        $v1, $v1, 12
    /* 2823C 800724A0 00206324 */  addiu      $v1, $v1, 0x2000
    /* 28240 800724A4 801E0224 */  addiu      $v0, $zero, 0x1E80
    /* 28244 800724A8 0680013C */  lui        $at, %hi(D_80067EB4)
    /* 28248 800724AC B47E22AC */  sw         $v0, %lo(D_80067EB4)($at)
    /* 2824C 800724B0 800F0224 */  addiu      $v0, $zero, 0xF80
    /* 28250 800724B4 0680013C */  lui        $at, %hi(D_80067EB0)
    /* 28254 800724B8 B07E23AC */  sw         $v1, %lo(D_80067EB0)($at)
    /* 28258 800724BC 0680013C */  lui        $at, %hi(D_80067EC8)
    /* 2825C 800724C0 C87E20A4 */  sh         $zero, %lo(D_80067EC8)($at)
    /* 28260 800724C4 0680013C */  lui        $at, %hi(D_80067ECA)
    /* 28264 800724C8 CA7E22A4 */  sh         $v0, %lo(D_80067ECA)($at)
    /* 28268 800724CC 0000238E */  lw         $v1, 0x0($s1)
    /* 2826C 800724D0 00081026 */  addiu      $s0, $s0, 0x800
    /* 28270 800724D4 0680013C */  lui        $at, %hi(D_80067ECC)
    /* 28274 800724D8 CC7E30A4 */  sh         $s0, %lo(D_80067ECC)($at)
    /* 28278 800724DC DFFF6224 */  addiu      $v0, $v1, -0x21
    /* 2827C 800724E0 1000422C */  sltiu      $v0, $v0, 0x10
    /* 28280 800724E4 0A004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072510
    /* 28284 800724E8 20000224 */   addiu     $v0, $zero, 0x20
    /* 28288 800724EC 23104300 */  subu       $v0, $v0, $v1
    /* 2828C 800724F0 40100200 */  sll        $v0, $v0, 1
    /* 28290 800724F4 0780013C */  lui        $at, %hi(D_8006A001)
    /* 28294 800724F8 01A022A0 */  sb         $v0, %lo(D_8006A001)($at)
    /* 28298 800724FC E0FF6224 */  addiu      $v0, $v1, -0x20
    /* 2829C 80072500 0780013C */  lui        $at, %hi(D_8006A002)
    /* 282A0 80072504 02A022A0 */  sb         $v0, %lo(D_8006A002)($at)
    /* 282A4 80072508 C1C90108 */  j          .Ltitlescreen_and_loading_80072704
    /* 282A8 8007250C 00000000 */   nop
  .Ltitlescreen_and_loading_80072510:
    /* 282AC 80072510 C7FF6224 */  addiu      $v0, $v1, -0x39
    /* 282B0 80072514 1000422C */  sltiu      $v0, $v0, 0x10
    /* 282B4 80072518 07004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072538
    /* 282B8 8007251C 40000224 */   addiu     $v0, $zero, 0x40
    /* 282BC 80072520 23104300 */  subu       $v0, $v0, $v1
    /* 282C0 80072524 40100200 */  sll        $v0, $v0, 1
    /* 282C4 80072528 0780013C */  lui        $at, %hi(D_8006A002)
    /* 282C8 8007252C 02A022A0 */  sb         $v0, %lo(D_8006A002)($at)
    /* 282CC 80072530 C1C90108 */  j          .Ltitlescreen_and_loading_80072704
    /* 282D0 80072534 00000000 */   nop
  .Ltitlescreen_and_loading_80072538:
    /* 282D4 80072538 A7FF6224 */  addiu      $v0, $v1, -0x59
    /* 282D8 8007253C 1000422C */  sltiu      $v0, $v0, 0x10
    /* 282DC 80072540 70004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072704
    /* 282E0 80072544 98FF6324 */   addiu     $v1, $v1, -0x68
    /* 282E4 80072548 40100300 */  sll        $v0, $v1, 1
    /* 282E8 8007254C 0780013C */  lui        $at, %hi(D_8006A001)
    /* 282EC 80072550 01A022A0 */  sb         $v0, %lo(D_8006A001)($at)
    /* 282F0 80072554 0780013C */  lui        $at, %hi(D_8006A002)
    /* 282F4 80072558 02A023A0 */  sb         $v1, %lo(D_8006A002)($at)
    /* 282F8 8007255C C1C90108 */  j          .Ltitlescreen_and_loading_80072704
    /* 282FC 80072560 00000000 */   nop
  .Ltitlescreen_and_loading_80072564:
    /* 28300 80072564 21006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_800725EC
    /* 28304 80072568 03000224 */   addiu     $v0, $zero, 0x3
    /* 28308 8007256C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2830C 80072570 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 28310 80072574 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 28314 80072578 0680063C */  lui        $a2, %hi(D_80067EAC)
    /* 28318 8007257C AC7EC624 */  addiu      $a2, $a2, %lo(D_80067EAC)
    /* 2831C 80072580 0780073C */  lui        $a3, %hi(D_800698EC)
    /* 28320 80072584 EC98E78C */  lw         $a3, %lo(D_800698EC)($a3)
    /* 28324 80072588 701E0224 */  addiu      $v0, $zero, 0x1E70
    /* 28328 8007258C 0680013C */  lui        $at, %hi(D_80067EB0)
    /* 2832C 80072590 B07E22AC */  sw         $v0, %lo(D_80067EB0)($at)
    /* 28330 80072594 0680013C */  lui        $at, %hi(D_80067EB4)
    /* 28334 80072598 B47E22AC */  sw         $v0, %lo(D_80067EB4)($at)
    /* 28338 8007259C 003E0224 */  addiu      $v0, $zero, 0x3E00
    /* 2833C 800725A0 80180700 */  sll        $v1, $a3, 2
    /* 28340 800725A4 21186700 */  addu       $v1, $v1, $a3
    /* 28344 800725A8 40190300 */  sll        $v1, $v1, 5
    /* 28348 800725AC 23104300 */  subu       $v0, $v0, $v1
    /* 2834C 800725B0 806F000C */  jal        func_8001BE00
    /* 28350 800725B4 0000C2AC */   sw        $v0, 0x0($a2)
    /* 28354 800725B8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 28358 800725BC 0680013C */  lui        $at, %hi(D_80067EC8)
    /* 2835C 800725C0 C87E20A4 */  sh         $zero, %lo(D_80067EC8)($at)
    /* 28360 800725C4 886E000C */  jal        func_8001BA20
    /* 28364 800725C8 21280000 */   addu      $a1, $zero, $zero
    /* 28368 800725CC 21204000 */  addu       $a0, $v0, $zero
    /* 2836C 800725D0 1800A58F */  lw         $a1, 0x18($sp)
    /* 28370 800725D4 2E6D000C */  jal        func_8001B4B8
    /* 28374 800725D8 01000624 */   addiu     $a2, $zero, 0x1
    /* 28378 800725DC 1000A48F */  lw         $a0, 0x10($sp)
    /* 2837C 800725E0 1400A58F */  lw         $a1, 0x14($sp)
    /* 28380 800725E4 BAC90108 */  j          .Ltitlescreen_and_loading_800726E8
    /* 28384 800725E8 01000624 */   addiu     $a2, $zero, 0x1
  .Ltitlescreen_and_loading_800725EC:
    /* 28388 800725EC 45006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072704
    /* 2838C 800725F0 8888033C */   lui       $v1, (0x88888889 >> 16)
    /* 28390 800725F4 0780123C */  lui        $s2, %hi(D_800698EC)
    /* 28394 800725F8 EC985226 */  addiu      $s2, $s2, %lo(D_800698EC)
    /* 28398 800725FC 0000458E */  lw         $a1, 0x0($s2)
    /* 2839C 80072600 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
    /* 283A0 80072604 80100500 */  sll        $v0, $a1, 2
    /* 283A4 80072608 21104500 */  addu       $v0, $v0, $a1
    /* 283A8 8007260C C0110200 */  sll        $v0, $v0, 7
    /* 283AC 80072610 18004300 */  mult       $v0, $v1
    /* 283B0 80072614 00FF1124 */  addiu      $s1, $zero, -0x100
    /* 283B4 80072618 C0800500 */  sll        $s0, $a1, 3
    /* 283B8 8007261C 23800502 */  subu       $s0, $s0, $a1
    /* 283BC 80072620 80801000 */  sll        $s0, $s0, 2
    /* 283C0 80072624 00061026 */  addiu      $s0, $s0, 0x600
    /* 283C4 80072628 10400000 */  mfhi       $t0
    /* 283C8 8007262C 21180201 */  addu       $v1, $t0, $v0
    /* 283CC 80072630 83190300 */  sra        $v1, $v1, 6
    /* 283D0 80072634 C3170200 */  sra        $v0, $v0, 31
    /* 283D4 80072638 23186200 */  subu       $v1, $v1, $v0
    /* 283D8 8007263C 23882302 */  subu       $s1, $s1, $v1
    /* 283DC 80072640 FF0F3132 */  andi       $s1, $s1, 0xFFF
    /* 283E0 80072644 996D000C */  jal        func_8001B664
    /* 283E4 80072648 21202002 */   addu      $a0, $s1, $zero
    /* 283E8 8007264C 18005000 */  mult       $v0, $s0
    /* 283EC 80072650 21202002 */  addu       $a0, $s1, $zero
    /* 283F0 80072654 0680113C */  lui        $s1, %hi(D_80067EAC)
    /* 283F4 80072658 AC7E3126 */  addiu      $s1, $s1, %lo(D_80067EAC)
    /* 283F8 8007265C 12400000 */  mflo       $t0
    /* 283FC 80072660 03130800 */  sra        $v0, $t0, 12
    /* 28400 80072664 00204224 */  addiu      $v0, $v0, 0x2000
    /* 28404 80072668 876D000C */  jal        func_8001B61C
    /* 28408 8007266C 000022AE */   sw        $v0, 0x0($s1)
    /* 2840C 80072670 18005000 */  mult       $v0, $s0
    /* 28410 80072674 2000B027 */  addiu      $s0, $sp, 0x20
    /* 28414 80072678 21200002 */  addu       $a0, $s0, $zero
    /* 28418 8007267C 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 2841C 80072680 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 28420 80072684 0000438E */  lw         $v1, 0x0($s2)
    /* 28424 80072688 001F0224 */  addiu      $v0, $zero, 0x1F00
    /* 28428 8007268C 80180300 */  sll        $v1, $v1, 2
    /* 2842C 80072690 23104300 */  subu       $v0, $v0, $v1
    /* 28430 80072694 0680013C */  lui        $at, %hi(D_80067EB4)
    /* 28434 80072698 B47E22AC */  sw         $v0, %lo(D_80067EB4)($at)
    /* 28438 8007269C 12400000 */  mflo       $t0
    /* 2843C 800726A0 03130800 */  sra        $v0, $t0, 12
    /* 28440 800726A4 00204224 */  addiu      $v0, $v0, 0x2000
    /* 28444 800726A8 0680013C */  lui        $at, %hi(D_80067EB0)
    /* 28448 800726AC B07E22AC */  sw         $v0, %lo(D_80067EB0)($at)
    /* 2844C 800726B0 806F000C */  jal        func_8001BE00
    /* 28450 800726B4 21302002 */   addu      $a2, $s1, $zero
    /* 28454 800726B8 21200002 */  addu       $a0, $s0, $zero
    /* 28458 800726BC 0680013C */  lui        $at, %hi(D_80067EC8)
    /* 2845C 800726C0 C87E20A4 */  sh         $zero, %lo(D_80067EC8)($at)
    /* 28460 800726C4 886E000C */  jal        func_8001BA20
    /* 28464 800726C8 21280000 */   addu      $a1, $zero, $zero
    /* 28468 800726CC 21204000 */  addu       $a0, $v0, $zero
    /* 2846C 800726D0 2800A58F */  lw         $a1, 0x28($sp)
    /* 28470 800726D4 2E6D000C */  jal        func_8001B4B8
    /* 28474 800726D8 01000624 */   addiu     $a2, $zero, 0x1
    /* 28478 800726DC 01000624 */  addiu      $a2, $zero, 0x1
    /* 2847C 800726E0 2000A48F */  lw         $a0, 0x20($sp)
    /* 28480 800726E4 2400A58F */  lw         $a1, 0x24($sp)
  .Ltitlescreen_and_loading_800726E8:
    /* 28484 800726E8 23100200 */  negu       $v0, $v0
  alabel D_titlescreen_and_loading_800726EC
    /* 28488 800726EC 0680013C */  lui        $at, %hi(D_80067ECA)
    /* 2848C 800726F0 CA7E22A4 */  sh         $v0, %lo(D_80067ECA)($at)
    /* 28490 800726F4 2E6D000C */  jal        func_8001B4B8
    /* 28494 800726F8 00000000 */   nop
    /* 28498 800726FC 0680013C */  lui        $at, %hi(D_80067ECC)
    /* 2849C 80072700 CC7E22A4 */  sh         $v0, %lo(D_80067ECC)($at)
  .Ltitlescreen_and_loading_80072704:
    /* 284A0 80072704 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 284A4 80072708 EC984224 */  addiu      $v0, $v0, %lo(D_800698EC)
    /* 284A8 8007270C 0000468C */  lw         $a2, 0x0($v0)
    /* 284AC 80072710 00000000 */  nop
    /* 284B0 80072714 0100C524 */  addiu      $a1, $a2, 0x1
    /* 284B4 80072718 000045AC */  sw         $a1, 0x0($v0)
    /* 284B8 8007271C 0780033C */  lui        $v1, %hi(D_800698F0)
    /* 284BC 80072720 F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* 284C0 80072724 02000224 */  addiu      $v0, $zero, 0x2
    /* 284C4 80072728 2D006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_800727E0
    /* 284C8 8007272C 0900A228 */   slti      $v0, $a1, 0x9
    /* 284CC 80072730 03004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072740
    /* 284D0 80072734 08000224 */   addiu     $v0, $zero, 0x8
    /* 284D4 80072738 D3C90108 */  j          .Ltitlescreen_and_loading_8007274C
    /* 284D8 8007273C 23104500 */   subu      $v0, $v0, $a1
  .Ltitlescreen_and_loading_80072740:
    /* 284DC 80072740 8500A228 */  slti       $v0, $a1, 0x85
    /* 284E0 80072744 04004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072758
    /* 284E4 80072748 7DFFC224 */   addiu     $v0, $a2, -0x83
  .Ltitlescreen_and_loading_8007274C:
    /* 284E8 8007274C 40110200 */  sll        $v0, $v0, 5
    /* 284EC 80072750 0680013C */  lui        $at, %hi(D_80066F68)
    /* 284F0 80072754 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  .Ltitlescreen_and_loading_80072758:
    /* 284F4 80072758 0780043C */  lui        $a0, %hi(D_800698EC)
    /* 284F8 8007275C EC988424 */  addiu      $a0, $a0, %lo(D_800698EC)
    /* 284FC 80072760 0000838C */  lw         $v1, 0x0($a0)
    /* 28500 80072764 8C000224 */  addiu      $v0, $zero, 0x8C
    /* 28504 80072768 EF006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072B28
    /* 28508 8007276C 03000224 */   addiu     $v0, $zero, 0x3
    /* 2850C 80072770 0680103C */  lui        $s0, %hi(D_80067E04)
    /* 28510 80072774 047E1026 */  addiu      $s0, $s0, %lo(D_80067E04)
    /* 28514 80072778 0780013C */  lui        $at, %hi(D_800698F0)
    /* 28518 8007277C F09822AC */  sw         $v0, %lo(D_800698F0)($at)
    /* 2851C 80072780 000080AC */  sw         $zero, 0x0($a0)
    /* 28520 80072784 0000038E */  lw         $v1, 0x0($s0)
    /* 28524 80072788 FF000224 */  addiu      $v0, $zero, 0xFF
  alabel D_titlescreen_and_loading_8007278C
    /* 28528 8007278C 0680013C */  lui        $at, %hi(D_80066F68)
    /* 2852C 80072790 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
    /* 28530 80072794 E4006004 */  bltz       $v1, .Ltitlescreen_and_loading_80072B28
    /* 28534 80072798 00000000 */   nop
    /* 28538 8007279C 2131010C */  jal        func_8004C484
    /* 2853C 800727A0 00000000 */   nop
    /* 28540 800727A4 0000038E */  lw         $v1, 0x0($s0)
    /* 28544 800727A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 28548 800727AC 0680013C */  lui        $at, %hi(D_800670C8)
    /* 2854C 800727B0 C87022AC */  sw         $v0, %lo(D_800670C8)($at)
    /* 28550 800727B4 DC006004 */  bltz       $v1, .Ltitlescreen_and_loading_80072B28
    /* 28554 800727B8 00000000 */   nop
  .Ltitlescreen_and_loading_800727BC:
    /* 28558 800727BC 7FC2010C */  jal        func_titlescreen_and_loading_800709FC
    /* 2855C 800727C0 00000000 */   nop
    /* 28560 800727C4 0680023C */  lui        $v0, %hi(D_80067E04)
    /* 28564 800727C8 047E428C */  lw         $v0, %lo(D_80067E04)($v0)
    /* 28568 800727CC 00000000 */  nop
    /* 2856C 800727D0 D5004004 */  bltz       $v0, .Ltitlescreen_and_loading_80072B28
    /* 28570 800727D4 00000000 */   nop
    /* 28574 800727D8 EFC90108 */  j          .Ltitlescreen_and_loading_800727BC
    /* 28578 800727DC 00000000 */   nop
  .Ltitlescreen_and_loading_800727E0:
    /* 2857C 800727E0 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 28580 800727E4 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 28584 800727E8 0780013C */  lui        $at, %hi(D_8006B084)
    /* 28588 800727EC 21082200 */  addu       $at, $at, $v0
    /* 2858C 800727F0 84B02290 */  lbu        $v0, %lo(D_8006B084)($at)
    /* 28590 800727F4 00000000 */  nop
    /* 28594 800727F8 27004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072898
    /* 28598 800727FC 00000000 */   nop
    /* 2859C 80072800 0780073C */  lui        $a3, %hi(D_8006B2F8)
    /* 285A0 80072804 F8B2E724 */  addiu      $a3, $a3, %lo(D_8006B2F8)
    /* 285A4 80072808 0000E28C */  lw         $v0, 0x0($a3)
    /* 285A8 8007280C 00000000 */  nop
    /* 285AC 80072810 21004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072898
    /* 285B0 80072814 00000000 */   nop
    /* 285B4 80072818 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* 285B8 8007281C E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* 285BC 80072820 00000000 */  nop
    /* 285C0 80072824 1C004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072898
    /* 285C4 80072828 0B000224 */   addiu     $v0, $zero, 0xB
    /* 285C8 8007282C 0680043C */  lui        $a0, %hi(D_80066F90)
    /* 285CC 80072830 906F848C */  lw         $a0, %lo(D_80066F90)($a0)
    /* 285D0 80072834 00000000 */  nop
    /* 285D4 80072838 17008210 */  beq        $a0, $v0, .Ltitlescreen_and_loading_80072898
    /* 285D8 8007283C 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 285DC 80072840 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 285E0 80072844 18008200 */  mult       $a0, $v0
    /* 285E4 80072848 C3170400 */  sra        $v0, $a0, 31
    /* 285E8 8007284C 10400000 */  mfhi       $t0
    /* 285EC 80072850 83180800 */  sra        $v1, $t0, 2
    /* 285F0 80072854 23186200 */  subu       $v1, $v1, $v0
    /* 285F4 80072858 80100300 */  sll        $v0, $v1, 2
    /* 285F8 8007285C 21104300 */  addu       $v0, $v0, $v1
    /* 285FC 80072860 40100200 */  sll        $v0, $v0, 1
    /* 28600 80072864 FBFF8324 */  addiu      $v1, $a0, -0x5
    /* 28604 80072868 0B004310 */  beq        $v0, $v1, .Ltitlescreen_and_loading_80072898
    /* 28608 8007286C EDFFC224 */   addiu     $v0, $a2, -0x13
    /* 2860C 80072870 5C00422C */  sltiu      $v0, $v0, 0x5C
    /* 28610 80072874 08004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072898
    /* 28614 80072878 00000000 */   nop
    /* 28618 8007287C 0780023C */  lui        $v0, %hi(D_800683A4)
    /* 2861C 80072880 A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* 28620 80072884 00000000 */  nop
    /* 28624 80072888 10004230 */  andi       $v0, $v0, 0x10
    /* 28628 8007288C 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072898
  alabel D_titlescreen_and_loading_80072890
    /* 2862C 80072890 00000000 */   nop
    /* 28630 80072894 0000E5AC */  sw         $a1, 0x0($a3)
  .Ltitlescreen_and_loading_80072898:
    /* 28634 80072898 0780043C */  lui        $a0, %hi(D_800698EC)
    /* 28638 8007289C EC98848C */  lw         $a0, %lo(D_800698EC)($a0)
    /* 2863C 800728A0 00000000 */  nop
    /* 28640 800728A4 09008228 */  slti       $v0, $a0, 0x9
    /* 28644 800728A8 03004010 */  beqz       $v0, .Ltitlescreen_and_loading_800728B8
    /* 28648 800728AC 08000224 */   addiu     $v0, $zero, 0x8
    /* 2864C 800728B0 3FCA0108 */  j          .Ltitlescreen_and_loading_800728FC
    /* 28650 800728B4 23104400 */   subu      $v0, $v0, $a0
  .Ltitlescreen_and_loading_800728B8:
    /* 28654 800728B8 0780033C */  lui        $v1, %hi(D_8006B2F8)
    /* 28658 800728BC F8B2638C */  lw         $v1, %lo(D_8006B2F8)($v1)
    /* 2865C 800728C0 00000000 */  nop
    /* 28660 800728C4 07006010 */  beqz       $v1, .Ltitlescreen_and_loading_800728E4
    /* 28664 800728C8 2A108300 */   slt       $v0, $a0, $v1
    /* 28668 800728CC 05004014 */  bnez       $v0, .Ltitlescreen_and_loading_800728E4
    /* 2866C 800728D0 23108300 */   subu      $v0, $a0, $v1
    /* 28670 800728D4 40CA0108 */  j          .Ltitlescreen_and_loading_80072900
    /* 28674 800728D8 40110200 */   sll       $v0, $v0, 5
  .Ltitlescreen_and_loading_800728DC:
    /* 28678 800728DC 86CA0108 */  j          .Ltitlescreen_and_loading_80072A18
    /* 2867C 800728E0 21906000 */   addu      $s2, $v1, $zero
  .Ltitlescreen_and_loading_800728E4:
    /* 28680 800728E4 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 28684 800728E8 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* 28688 800728EC 00000000 */  nop
    /* 2868C 800728F0 70006228 */  slti       $v0, $v1, 0x70
    /* 28690 800728F4 04004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072908
    /* 28694 800728F8 90FF6224 */   addiu     $v0, $v1, -0x70
  .Ltitlescreen_and_loading_800728FC:
    /* 28698 800728FC 40110200 */  sll        $v0, $v0, 5
  .Ltitlescreen_and_loading_80072900:
    /* 2869C 80072900 0680013C */  lui        $at, %hi(D_80066F68)
    /* 286A0 80072904 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  .Ltitlescreen_and_loading_80072908:
    /* 286A4 80072908 0680023C */  lui        $v0, %hi(D_80066F68)
    /* 286A8 8007290C 686F428C */  lw         $v0, %lo(D_80066F68)($v0)
    /* 286AC 80072910 00000000 */  nop
    /* 286B0 80072914 00014228 */  slti       $v0, $v0, 0x100
    /* 286B4 80072918 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072928
    /* 286B8 8007291C FF000224 */   addiu     $v0, $zero, 0xFF
    /* 286BC 80072920 0680013C */  lui        $at, %hi(D_80066F68)
    /* 286C0 80072924 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  .Ltitlescreen_and_loading_80072928:
    /* 286C4 80072928 0780103C */  lui        $s0, %hi(D_800698EC)
    /* 286C8 8007292C EC981026 */  addiu      $s0, $s0, %lo(D_800698EC)
  alabel D_titlescreen_and_loading_80072930
    /* 286CC 80072930 0000038E */  lw         $v1, 0x0($s0)
    /* 286D0 80072934 78000224 */  addiu      $v0, $zero, 0x78
    /* 286D4 80072938 08006210 */  beq        $v1, $v0, .Ltitlescreen_and_loading_8007295C
    /* 286D8 8007293C 00000000 */   nop
    /* 286DC 80072940 0780023C */  lui        $v0, %hi(D_8006B2F8)
    /* 286E0 80072944 F8B2428C */  lw         $v0, %lo(D_8006B2F8)($v0)
    /* 286E4 80072948 00000000 */  nop
    /* 286E8 8007294C 76004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072B28
    /* 286EC 80072950 08004224 */   addiu     $v0, $v0, 0x8
    /* 286F0 80072954 74006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072B28
    /* 286F4 80072958 00000000 */   nop
  .Ltitlescreen_and_loading_8007295C:
    /* 286F8 8007295C 2131010C */  jal        func_8004C484
    /* 286FC 80072960 00000000 */   nop
    /* 28700 80072964 04000224 */  addiu      $v0, $zero, 0x4
    /* 28704 80072968 0780013C */  lui        $at, %hi(D_800698F0)
    /* 28708 8007296C F09822AC */  sw         $v0, %lo(D_800698F0)($at)
    /* 2870C 80072970 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* 28710 80072974 EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* 28714 80072978 01000324 */  addiu      $v1, $zero, 0x1
    /* 28718 8007297C 000000AE */  sw         $zero, 0x0($s0)
    /* 2871C 80072980 0680013C */  lui        $at, %hi(D_800670C8)
    /* 28720 80072984 C87023AC */  sw         $v1, %lo(D_800670C8)($at)
    /* 28724 80072988 07004228 */  slti       $v0, $v0, 0x7
    /* 28728 8007298C 09004010 */  beqz       $v0, .Ltitlescreen_and_loading_800729B4
    /* 2872C 80072990 00000000 */   nop
  .Ltitlescreen_and_loading_80072994:
    /* 28730 80072994 9675000C */  jal        func_8001D658
    /* 28734 80072998 00000000 */   nop
    /* 28738 8007299C 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* 2873C 800729A0 EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* 28740 800729A4 00000000 */  nop
    /* 28744 800729A8 07004228 */  slti       $v0, $v0, 0x7
    /* 28748 800729AC F9FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80072994
    /* 2874C 800729B0 00000000 */   nop
  .Ltitlescreen_and_loading_800729B4:
    /* 28750 800729B4 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* 28754 800729B8 E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* 28758 800729BC 00000000 */  nop
    /* 2875C 800729C0 40004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072AC4
    /* 28760 800729C4 21200000 */   addu      $a0, $zero, $zero
    /* 28764 800729C8 0680023C */  lui        $v0, %hi(D_80066FA8)
    /* 28768 800729CC A86F428C */  lw         $v0, %lo(D_80066FA8)($v0)
    /* 2876C 800729D0 00000000 */  nop
    /* 28770 800729D4 10004018 */  blez       $v0, .Ltitlescreen_and_loading_80072A18
    /* 28774 800729D8 21900000 */   addu      $s2, $zero, $zero
    /* 28778 800729DC 21304000 */  addu       $a2, $v0, $zero
    /* 2877C 800729E0 0680023C */  lui        $v0, %hi(D_80066FD0)
    /* 28780 800729E4 D06F428C */  lw         $v0, %lo(D_80066FD0)($v0)
    /* 28784 800729E8 0680033C */  lui        $v1, %hi(D_80066F00)
    /* 28788 800729EC 006F638C */  lw         $v1, %lo(D_80066F00)($v1)
    /* 2878C 800729F0 0680013C */  lui        $at, %hi(D_80064994)
    /* 28790 800729F4 21082200 */  addu       $at, $at, $v0
    /* 28794 800729F8 94492590 */  lbu        $a1, %lo(D_80064994)($at)
  .Ltitlescreen_and_loading_800729FC:
    /* 28798 800729FC 42006290 */  lbu        $v0, 0x42($v1)
    /* 2879C 80072A00 00000000 */  nop
    /* 287A0 80072A04 B5FF4510 */  beq        $v0, $a1, .Ltitlescreen_and_loading_800728DC
    /* 287A4 80072A08 01008424 */   addiu     $a0, $a0, 0x1
    /* 287A8 80072A0C 2A108600 */  slt        $v0, $a0, $a2
    /* 287AC 80072A10 FAFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_800729FC
    /* 287B0 80072A14 44006324 */   addiu     $v1, $v1, 0x44
  .Ltitlescreen_and_loading_80072A18:
    /* 287B4 80072A18 01000624 */  addiu      $a2, $zero, 0x1
    /* 287B8 80072A1C 3000438E */  lw         $v1, 0x30($s2)
    /* 287BC 80072A20 0000448E */  lw         $a0, 0x0($s2)
    /* 287C0 80072A24 3400428E */  lw         $v0, 0x34($s2)
    /* 287C4 80072A28 0400458E */  lw         $a1, 0x4($s2)
    /* 287C8 80072A2C 23206400 */  subu       $a0, $v1, $a0
    /* 287CC 80072A30 2E6D000C */  jal        func_8001B4B8
    /* 287D0 80072A34 23284500 */   subu      $a1, $v0, $a1
    /* 287D4 80072A38 00045024 */  addiu      $s0, $v0, 0x400
    /* 287D8 80072A3C FF0F1032 */  andi       $s0, $s0, 0xFFF
    /* 287DC 80072A40 996D000C */  jal        func_8001B664
    /* 287E0 80072A44 21200002 */   addu      $a0, $s0, $zero
    /* 287E4 80072A48 21200002 */  addu       $a0, $s0, $zero
    /* 287E8 80072A4C 43100200 */  sra        $v0, $v0, 1
    /* 287EC 80072A50 876D000C */  jal        func_8001B61C
    /* 287F0 80072A54 3000A2AF */   sw        $v0, 0x30($sp)
    /* 287F4 80072A58 0780113C */  lui        $s1, %hi(D_8006B2B8)
    /* 287F8 80072A5C B8B23126 */  addiu      $s1, $s1, %lo(D_8006B2B8)
    /* 287FC 80072A60 21202002 */  addu       $a0, $s1, $zero
    /* 28800 80072A64 18004526 */  addiu      $a1, $s2, 0x18
    /* 28804 80072A68 3000A627 */  addiu      $a2, $sp, 0x30
    /* 28808 80072A6C 43100200 */  sra        $v0, $v0, 1
    /* 2880C 80072A70 3400A2AF */  sw         $v0, 0x34($sp)
  alabel D_titlescreen_and_loading_80072A74
    /* 28810 80072A74 80FB0224 */  addiu      $v0, $zero, -0x480
    /* 28814 80072A78 736F000C */  jal        func_8001BDCC
    /* 28818 80072A7C 3800A2AF */   sw        $v0, 0x38($sp)
    /* 2881C 80072A80 00081026 */  addiu      $s0, $s0, 0x800
    /* 28820 80072A84 FF0F1032 */  andi       $s0, $s0, 0xFFF
    /* 28824 80072A88 0680023C */  lui        $v0, %hi(D_80066FD0)
    /* 28828 80072A8C D06F428C */  lw         $v0, %lo(D_80066FD0)($v0)
    /* 2882C 80072A90 0C002426 */  addiu      $a0, $s1, 0xC
    /* 28830 80072A94 0780013C */  lui        $at, %hi(D_8006B2D0)
    /* 28834 80072A98 D0B230A4 */  sh         $s0, %lo(D_8006B2D0)($at)
    /* 28838 80072A9C 0680013C */  lui        $at, %hi(D_80064A34)
    /* 2883C 80072AA0 21082200 */  addu       $at, $at, $v0
    /* 28840 80072AA4 344A2590 */  lbu        $a1, %lo(D_80064A34)($at)
    /* 28844 80072AA8 0680023C */  lui        $v0, %hi(D_80064A54)
    /* 28848 80072AAC 544A4224 */  addiu      $v0, $v0, %lo(D_80064A54)
    /* 2884C 80072AB0 C0280500 */  sll        $a1, $a1, 3
    /* 28850 80072AB4 5970000C */  jal        func_8001C164
    /* 28854 80072AB8 2128A200 */   addu      $a1, $a1, $v0
    /* 28858 80072ABC CACA0108 */  j          .Ltitlescreen_and_loading_80072B28
    /* 2885C 80072AC0 00000000 */   nop
  .Ltitlescreen_and_loading_80072AC4:
    /* 28860 80072AC4 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 28864 80072AC8 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 28868 80072ACC 0780013C */  lui        $at, %hi(D_8006B084)
    /* 2886C 80072AD0 21082200 */  addu       $at, $at, $v0
    /* 28870 80072AD4 84B02290 */  lbu        $v0, %lo(D_8006B084)($at)
    /* 28874 80072AD8 00000000 */  nop
    /* 28878 80072ADC 06004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072AF8
    /* 2887C 80072AE0 00000000 */   nop
    /* 28880 80072AE4 0780023C */  lui        $v0, %hi(D_8006B2F8)
    /* 28884 80072AE8 F8B2428C */  lw         $v0, %lo(D_8006B2F8)($v0)
    /* 28888 80072AEC 00000000 */  nop
    /* 2888C 80072AF0 0D004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072B28
    /* 28890 80072AF4 00000000 */   nop
  .Ltitlescreen_and_loading_80072AF8:
    /* 28894 80072AF8 7B71000C */  jal        func_8001C5EC
    /* 28898 80072AFC 00000000 */   nop
    /* 2889C 80072B00 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 288A0 80072B04 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 288A4 80072B08 0680013C */  lui        $at, %hi(D_80064914)
    /* 288A8 80072B0C 21082200 */  addu       $at, $at, $v0
    /* 288AC 80072B10 14492390 */  lbu        $v1, %lo(D_80064914)($at)
    /* 288B0 80072B14 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 288B4 80072B18 03006210 */  beq        $v1, $v0, .Ltitlescreen_and_loading_80072B28
    /* 288B8 80072B1C 00000000 */   nop
    /* 288BC 80072B20 92CF010C */  jal        func_titlescreen_and_loading_80073E48
    /* 288C0 80072B24 21200000 */   addu      $a0, $zero, $zero
  .Ltitlescreen_and_loading_80072B28:
    /* 288C4 80072B28 C1B8000C */  jal        func_8002E304
    /* 288C8 80072B2C 00000000 */   nop
    /* 288CC 80072B30 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* 288D0 80072B34 EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* 288D4 80072B38 00000000 */  nop
    /* 288D8 80072B3C 07004228 */  slti       $v0, $v0, 0x7
    /* 288DC 80072B40 03004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072B50
    /* 288E0 80072B44 00000000 */   nop
    /* 288E4 80072B48 9675000C */  jal        func_8001D658
    /* 288E8 80072B4C 00000000 */   nop
  .Ltitlescreen_and_loading_80072B50:
    /* 288EC 80072B50 0680023C */  lui        $v0, %hi(D_80067E04)
    /* 288F0 80072B54 047E428C */  lw         $v0, %lo(D_80067E04)($v0)
    /* 288F4 80072B58 00000000 */  nop
    /* 288F8 80072B5C 03004004 */  bltz       $v0, .Ltitlescreen_and_loading_80072B6C
    /* 288FC 80072B60 00000000 */   nop
    /* 28900 80072B64 7FC2010C */  jal        func_titlescreen_and_loading_800709FC
    /* 28904 80072B68 00000000 */   nop
  .Ltitlescreen_and_loading_80072B6C:
    /* 28908 80072B6C 6400BF8F */  lw         $ra, 0x64($sp)
    /* 2890C 80072B70 6000B48F */  lw         $s4, 0x60($sp)
    /* 28910 80072B74 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 28914 80072B78 5800B28F */  lw         $s2, 0x58($sp)
    /* 28918 80072B7C 5400B18F */  lw         $s1, 0x54($sp)
    /* 2891C 80072B80 5000B08F */  lw         $s0, 0x50($sp)
    /* 28920 80072B84 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 28924 80072B88 0800E003 */  jr         $ra
    /* 28928 80072B8C 00000000 */   nop
endlabel func_titlescreen_and_loading_80071BD4
