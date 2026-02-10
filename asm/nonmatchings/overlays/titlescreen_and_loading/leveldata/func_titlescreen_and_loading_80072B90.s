.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80072B90, 0x40C

glabel func_titlescreen_and_loading_80072B90
    /* 2892C 80072B90 0780033C */  lui        $v1, %hi(D_800698F0)
    /* 28930 80072B94 F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* 28934 80072B98 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 28938 80072B9C 4800BFAF */  sw         $ra, 0x48($sp)
    /* 2893C 80072BA0 4400B1AF */  sw         $s1, 0x44($sp)
    /* 28940 80072BA4 03006228 */  slti       $v0, $v1, 0x3
    /* 28944 80072BA8 F6004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072F84
    /* 28948 80072BAC 4000B0AF */   sw        $s0, 0x40($sp)
    /* 2894C 80072BB0 F4006018 */  blez       $v1, .Ltitlescreen_and_loading_80072F84
    /* 28950 80072BB4 01000224 */   addiu     $v0, $zero, 0x1
    /* 28954 80072BB8 07006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072BD8
    /* 28958 80072BBC 02000224 */   addiu     $v0, $zero, 0x2
    /* 2895C 80072BC0 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 28960 80072BC4 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 28964 80072BC8 00000000 */  nop
    /* 28968 80072BCC 10004228 */  slti       $v0, $v0, 0x10
    /* 2896C 80072BD0 09004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072BF8
    /* 28970 80072BD4 02000224 */   addiu     $v0, $zero, 0x2
  .Ltitlescreen_and_loading_80072BD8:
    /* 28974 80072BD8 DB006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072F48
    /* 28978 80072BDC 21280000 */   addu      $a1, $zero, $zero
    /* 2897C 80072BE0 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 28980 80072BE4 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 28984 80072BE8 00000000 */  nop
    /* 28988 80072BEC 58004228 */  slti       $v0, $v0, 0x58
    /* 2898C 80072BF0 39004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072CD8
    /* 28990 80072BF4 00000000 */   nop
  .Ltitlescreen_and_loading_80072BF8:
    /* 28994 80072BF8 0780033C */  lui        $v1, %hi(D_800698F0)
    /* 28998 80072BFC F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* 2899C 80072C00 01000224 */  addiu      $v0, $zero, 0x1
    /* 289A0 80072C04 0E006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072C40
    /* 289A4 80072C08 18001024 */   addiu     $s0, $zero, 0x18
    /* 289A8 80072C0C 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 289AC 80072C10 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* 289B0 80072C14 00000000 */  nop
  alabel D_titlescreen_and_loading_80072C18
    /* 289B4 80072C18 1C006228 */  slti       $v0, $v1, 0x1C
    /* 289B8 80072C1C 06004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072C38
    /* 289BC 80072C20 00000000 */   nop
    /* 289C0 80072C24 0680013C */  lui        $at, %hi(D_80063420)
    /* 289C4 80072C28 21082300 */  addu       $at, $at, $v1
    /* 289C8 80072C2C 20342290 */  lbu        $v0, %lo(D_80063420)($at)
    /* 289CC 80072C30 1ECB0108 */  j          .Ltitlescreen_and_loading_80072C78
    /* 289D0 80072C34 F0FF5024 */   addiu     $s0, $v0, -0x10
  .Ltitlescreen_and_loading_80072C38:
    /* 289D4 80072C38 0780033C */  lui        $v1, %hi(D_800698F0)
    /* 289D8 80072C3C F098638C */  lw         $v1, %lo(D_800698F0)($v1)
  .Ltitlescreen_and_loading_80072C40:
    /* 289DC 80072C40 02000224 */  addiu      $v0, $zero, 0x2
    /* 289E0 80072C44 0C006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072C78
    /* 289E4 80072C48 00000000 */   nop
    /* 289E8 80072C4C 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 289EC 80072C50 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* 289F0 80072C54 00000000 */  nop
    /* 289F4 80072C58 4D006228 */  slti       $v0, $v1, 0x4D
    /* 289F8 80072C5C 06004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072C78
    /* 289FC 80072C60 00000000 */   nop
    /* 28A00 80072C64 0680013C */  lui        $at, %hi(D_800633FC)
    /* 28A04 80072C68 21082300 */  addu       $at, $at, $v1
    /* 28A08 80072C6C FC332290 */  lbu        $v0, %lo(D_800633FC)($at)
    /* 28A0C 80072C70 00000000 */  nop
    /* 28A10 80072C74 F0FF5024 */  addiu      $s0, $v0, -0x10
  .Ltitlescreen_and_loading_80072C78:
    /* 28A14 80072C78 0680023C */  lui        $v0, %hi(D_80067118)
    /* 28A18 80072C7C 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 28A1C 80072C80 00000000 */  nop
    /* 28A20 80072C84 80180200 */  sll        $v1, $v0, 2
    /* 28A24 80072C88 0680013C */  lui        $at, %hi(D_80061B5C)
    /* 28A28 80072C8C 21082300 */  addu       $at, $at, $v1
    /* 28A2C 80072C90 5C1B268C */  lw         $a2, %lo(D_80061B5C)($at)
    /* 28A30 80072C94 0680033C */  lui        $v1, %hi(D_80066F54)
    /* 28A34 80072C98 546F638C */  lw         $v1, %lo(D_80066F54)($v1)
    /* 28A38 80072C9C 40110200 */  sll        $v0, $v0, 5
    /* 28A3C 80072CA0 21104300 */  addu       $v0, $v0, $v1
    /* 28A40 80072CA4 80100200 */  sll        $v0, $v0, 2
    /* 28A44 80072CA8 0680013C */  lui        $at, %hi(D_800649B4)
    /* 28A48 80072CAC 21082200 */  addu       $at, $at, $v0
    /* 28A4C 80072CB0 B449278C */  lw         $a3, %lo(D_800649B4)($at)
    /* 28A50 80072CB4 0780053C */  lui        $a1, %hi(D_titlescreen_and_loading_8006D3B4)
    /* 28A54 80072CB8 B4D3A524 */  addiu      $a1, $a1, %lo(D_titlescreen_and_loading_8006D3B4)
    /* 28A58 80072CBC 2B65010C */  jal        func_800594AC
    /* 28A5C 80072CC0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 28A60 80072CC4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 28A64 80072CC8 0A010524 */  addiu      $a1, $zero, 0x10A
    /* 28A68 80072CCC 21300002 */  addu       $a2, $s0, $zero
    /* 28A6C 80072CD0 6136010C */  jal        func_8004D984
    /* 28A70 80072CD4 01000724 */   addiu     $a3, $zero, 0x1
  .Ltitlescreen_and_loading_80072CD8:
    /* 28A74 80072CD8 0780113C */  lui        $s1, %hi(D_800698F0)
    /* 28A78 80072CDC F098318E */  lw         $s1, %lo(D_800698F0)($s1)
    /* 28A7C 80072CE0 02000224 */  addiu      $v0, $zero, 0x2
    /* 28A80 80072CE4 98002216 */  bne        $s1, $v0, .Ltitlescreen_and_loading_80072F48
    /* 28A84 80072CE8 21280000 */   addu      $a1, $zero, $zero
    /* 28A88 80072CEC 0780043C */  lui        $a0, %hi(D_800698EC)
    /* 28A8C 80072CF0 EC98848C */  lw         $a0, %lo(D_800698EC)($a0)
    /* 28A90 80072CF4 00000000 */  nop
    /* 28A94 80072CF8 FCFF8224 */  addiu      $v0, $a0, -0x4
    /* 28A98 80072CFC 5500422C */  sltiu      $v0, $v0, 0x55
    /* 28A9C 80072D00 91004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072F48
    /* 28AA0 80072D04 10008228 */   slti      $v0, $a0, 0x10
    /* 28AA4 80072D08 06004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072D24
    /* 28AA8 80072D0C CC001024 */   addiu     $s0, $zero, 0xCC
    /* 28AAC 80072D10 0680013C */  lui        $at, %hi(D_8006342C)
    /* 28AB0 80072D14 21082400 */  addu       $at, $at, $a0
    /* 28AB4 80072D18 2C342390 */  lbu        $v1, %lo(D_8006342C)($at)
    /* 28AB8 80072D1C F4000224 */  addiu      $v0, $zero, 0xF4
    /* 28ABC 80072D20 23804300 */  subu       $s0, $v0, $v1
  .Ltitlescreen_and_loading_80072D24:
    /* 28AC0 80072D24 4C008228 */  slti       $v0, $a0, 0x4C
    /* 28AC4 80072D28 06004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072D44
    /* 28AC8 80072D2C F4000224 */   addiu     $v0, $zero, 0xF4
    /* 28ACC 80072D30 0680013C */  lui        $at, %hi(D_800633FC)
    /* 28AD0 80072D34 21082400 */  addu       $at, $at, $a0
    /* 28AD4 80072D38 FC332390 */  lbu        $v1, %lo(D_800633FC)($at)
    /* 28AD8 80072D3C 00000000 */  nop
    /* 28ADC 80072D40 23804300 */  subu       $s0, $v0, $v1
  .Ltitlescreen_and_loading_80072D44:
    /* 28AE0 80072D44 0680033C */  lui        $v1, %hi(D_80067E20)
    /* 28AE4 80072D48 207E6324 */  addiu      $v1, $v1, %lo(D_80067E20)
    /* 28AE8 80072D4C 0000628C */  lw         $v0, 0x0($v1)
    /* 28AEC 80072D50 00000000 */  nop
    /* 28AF0 80072D54 7C004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072F48
    /* 28AF4 80072D58 21280000 */   addu      $a1, $zero, $zero
    /* 28AF8 80072D5C 0680023C */  lui        $v0, %hi(D_80067E28)
    /* 28AFC 80072D60 287E428C */  lw         $v0, %lo(D_80067E28)($v0)
    /* 28B00 80072D64 00000000 */  nop
    /* 28B04 80072D68 57004004 */  bltz       $v0, .Ltitlescreen_and_loading_80072EC8
    /* 28B08 80072D6C 00000000 */   nop
    /* 28B0C 80072D70 0680023C */  lui        $v0, %hi(D_80067E24)
    /* 28B10 80072D74 247E428C */  lw         $v0, %lo(D_80067E24)($v0)
    /* 28B14 80072D78 00000000 */  nop
    /* 28B18 80072D7C 80100200 */  sll        $v0, $v0, 2
    /* 28B1C 80072D80 21106200 */  addu       $v0, $v1, $v0
    /* 28B20 80072D84 3400438C */  lw         $v1, 0x34($v0)
    /* 28B24 80072D88 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 28B28 80072D8C 4E006210 */  beq        $v1, $v0, .Ltitlescreen_and_loading_80072EC8
    /* 28B2C 80072D90 00000000 */   nop
    /* 28B30 80072D94 0680023C */  lui        $v0, %hi(D_80067E1C)
    /* 28B34 80072D98 1C7E428C */  lw         $v0, %lo(D_80067E1C)($v0)
    /* 28B38 80072D9C 00000000 */  nop
    /* 28B3C 80072DA0 17004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072E00
    /* 28B40 80072DA4 00010524 */   addiu     $a1, $zero, 0x100
    /* 28B44 80072DA8 25008228 */  slti       $v0, $a0, 0x25
    /* 28B48 80072DAC 0A004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072DD8
    /* 28B4C 80072DB0 0A010524 */   addiu     $a1, $zero, 0x10A
    /* 28B50 80072DB4 0680023C */  lui        $v0, %hi(D_80067118)
    /* 28B54 80072DB8 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 28B58 80072DBC 21300002 */  addu       $a2, $s0, $zero
    /* 28B5C 80072DC0 80100200 */  sll        $v0, $v0, 2
    /* 28B60 80072DC4 0680013C */  lui        $at, %hi(D_80061B60)
    /* 28B64 80072DC8 21082200 */  addu       $at, $at, $v0
    /* 28B68 80072DCC 601B248C */  lw         $a0, %lo(D_80061B60)($at)
    /* 28B6C 80072DD0 CFCB0108 */  j          .Ltitlescreen_and_loading_80072F3C
    /* 28B70 80072DD4 01000724 */   addiu     $a3, $zero, 0x1
  .Ltitlescreen_and_loading_80072DD8:
    /* 28B74 80072DD8 00010524 */  addiu      $a1, $zero, 0x100
    /* 28B78 80072DDC 0680023C */  lui        $v0, %hi(D_80067118)
    /* 28B7C 80072DE0 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 28B80 80072DE4 21300002 */  addu       $a2, $s0, $zero
    /* 28B84 80072DE8 80100200 */  sll        $v0, $v0, 2
    /* 28B88 80072DEC 0680013C */  lui        $at, %hi(D_80061B64)
    /* 28B8C 80072DF0 21082200 */  addu       $at, $at, $v0
    /* 28B90 80072DF4 641B248C */  lw         $a0, %lo(D_80061B64)($at)
    /* 28B94 80072DF8 CFCB0108 */  j          .Ltitlescreen_and_loading_80072F3C
    /* 28B98 80072DFC 01000724 */   addiu     $a3, $zero, 0x1
  .Ltitlescreen_and_loading_80072E00:
    /* 28B9C 80072E00 0680023C */  lui        $v0, %hi(D_80067118)
    /* 28BA0 80072E04 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 28BA4 80072E08 21300002 */  addu       $a2, $s0, $zero
    /* 28BA8 80072E0C 80100200 */  sll        $v0, $v0, 2
    /* 28BAC 80072E10 0680013C */  lui        $at, %hi(D_80061B68)
    /* 28BB0 80072E14 21082200 */  addu       $at, $at, $v0
    /* 28BB4 80072E18 681B248C */  lw         $a0, %lo(D_80061B68)($at)
    /* 28BB8 80072E1C 6136010C */  jal        func_8004D984
    /* 28BBC 80072E20 0B000724 */   addiu     $a3, $zero, 0xB
    /* 28BC0 80072E24 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 28BC4 80072E28 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 28BC8 80072E2C 00000000 */  nop
    /* 28BCC 80072E30 10004228 */  slti       $v0, $v0, 0x10
    /* 28BD0 80072E34 44004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072F48
    /* 28BD4 80072E38 21280000 */   addu      $a1, $zero, $zero
    /* 28BD8 80072E3C 0680033C */  lui        $v1, %hi(D_80067E1C)
    /* 28BDC 80072E40 1C7E638C */  lw         $v1, %lo(D_80067E1C)($v1)
    /* 28BE0 80072E44 01000224 */  addiu      $v0, $zero, 0x1
    /* 28BE4 80072E48 0A006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80072E74
    /* 28BE8 80072E4C 00010524 */   addiu     $a1, $zero, 0x100
    /* 28BEC 80072E50 0680023C */  lui        $v0, %hi(D_80067118)
    /* 28BF0 80072E54 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 28BF4 80072E58 00000000 */  nop
    /* 28BF8 80072E5C 80100200 */  sll        $v0, $v0, 2
    /* 28BFC 80072E60 0680013C */  lui        $at, %hi(D_80061B6C)
    /* 28C00 80072E64 21082200 */  addu       $at, $at, $v0
    /* 28C04 80072E68 6C1B248C */  lw         $a0, %lo(D_80061B6C)($at)
    /* 28C08 80072E6C CECB0108 */  j          .Ltitlescreen_and_loading_80072F38
    /* 28C0C 80072E70 0C000626 */   addiu     $a2, $s0, 0xC
  .Ltitlescreen_and_loading_80072E74:
    /* 28C10 80072E74 0B007114 */  bne        $v1, $s1, .Ltitlescreen_and_loading_80072EA4
    /* 28C14 80072E78 0C000626 */   addiu     $a2, $s0, 0xC
    /* 28C18 80072E7C 00010524 */  addiu      $a1, $zero, 0x100
    /* 28C1C 80072E80 0680023C */  lui        $v0, %hi(D_80067118)
    /* 28C20 80072E84 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 28C24 80072E88 00000000 */  nop
    /* 28C28 80072E8C 80100200 */  sll        $v0, $v0, 2
    /* 28C2C 80072E90 0680013C */  lui        $at, %hi(D_80061B70)
    /* 28C30 80072E94 21082200 */  addu       $at, $at, $v0
    /* 28C34 80072E98 701B248C */  lw         $a0, %lo(D_80061B70)($at)
    /* 28C38 80072E9C CECB0108 */  j          .Ltitlescreen_and_loading_80072F38
    /* 28C3C 80072EA0 00000000 */   nop
  .Ltitlescreen_and_loading_80072EA4:
    /* 28C40 80072EA4 0680023C */  lui        $v0, %hi(D_80067118)
    /* 28C44 80072EA8 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 28C48 80072EAC 00000000 */  nop
    /* 28C4C 80072EB0 80100200 */  sll        $v0, $v0, 2
    /* 28C50 80072EB4 0680013C */  lui        $at, %hi(D_80061B74)
    /* 28C54 80072EB8 21082200 */  addu       $at, $at, $v0
    /* 28C58 80072EBC 741B248C */  lw         $a0, %lo(D_80061B74)($at)
    /* 28C5C 80072EC0 CECB0108 */  j          .Ltitlescreen_and_loading_80072F38
    /* 28C60 80072EC4 00000000 */   nop
  .Ltitlescreen_and_loading_80072EC8:
    /* 28C64 80072EC8 0680023C */  lui        $v0, %hi(D_80067E20)
    /* 28C68 80072ECC 207E428C */  lw         $v0, %lo(D_80067E20)($v0)
    /* 28C6C 80072ED0 00000000 */  nop
    /* 28C70 80072ED4 1B004010 */  beqz       $v0, .Ltitlescreen_and_loading_80072F44
    /* 28C74 80072ED8 00010524 */   addiu     $a1, $zero, 0x100
    /* 28C78 80072EDC 0680023C */  lui        $v0, %hi(D_80067118)
    /* 28C7C 80072EE0 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 28C80 80072EE4 21300002 */  addu       $a2, $s0, $zero
    /* 28C84 80072EE8 80100200 */  sll        $v0, $v0, 2
    /* 28C88 80072EEC 0680013C */  lui        $at, %hi(D_80061B78)
    /* 28C8C 80072EF0 21082200 */  addu       $at, $at, $v0
    /* 28C90 80072EF4 781B248C */  lw         $a0, %lo(D_80061B78)($at)
    /* 28C94 80072EF8 6136010C */  jal        func_8004D984
    /* 28C98 80072EFC 0B000724 */   addiu     $a3, $zero, 0xB
    /* 28C9C 80072F00 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 28CA0 80072F04 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 28CA4 80072F08 00000000 */  nop
    /* 28CA8 80072F0C 1C004228 */  slti       $v0, $v0, 0x1C
    /* 28CAC 80072F10 0D004014 */  bnez       $v0, .Ltitlescreen_and_loading_80072F48
    /* 28CB0 80072F14 21280000 */   addu      $a1, $zero, $zero
    /* 28CB4 80072F18 00010524 */  addiu      $a1, $zero, 0x100
    /* 28CB8 80072F1C 0680023C */  lui        $v0, %hi(D_80067118)
    /* 28CBC 80072F20 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 28CC0 80072F24 0C000626 */  addiu      $a2, $s0, 0xC
    /* 28CC4 80072F28 80100200 */  sll        $v0, $v0, 2
    /* 28CC8 80072F2C 0680013C */  lui        $at, %hi(D_80061B7C)
    /* 28CCC 80072F30 21082200 */  addu       $at, $at, $v0
    /* 28CD0 80072F34 7C1B248C */  lw         $a0, %lo(D_80061B7C)($at)
  .Ltitlescreen_and_loading_80072F38:
    /* 28CD4 80072F38 0B000724 */  addiu      $a3, $zero, 0xB
  .Ltitlescreen_and_loading_80072F3C:
    /* 28CD8 80072F3C 6136010C */  jal        func_8004D984
    /* 28CDC 80072F40 00000000 */   nop
  .Ltitlescreen_and_loading_80072F44:
    /* 28CE0 80072F44 21280000 */  addu       $a1, $zero, $zero
  .Ltitlescreen_and_loading_80072F48:
    /* 28CE4 80072F48 0680043C */  lui        $a0, %hi(D_80067034)
    /* 28CE8 80072F4C 3470848C */  lw         $a0, %lo(D_80067034)($a0)
    /* 28CEC 80072F50 000C0624 */  addiu      $a2, $zero, 0xC00
    /* 28CF0 80072F54 F96C000C */  jal        func_8001B3E4
    /* 28CF4 80072F58 00D08424 */   addiu     $a0, $a0, -0x3000
    /* 28CF8 80072F5C 6F07010C */  jal        func_80041DBC
    /* 28CFC 80072F60 00000000 */   nop
    /* 28D00 80072F64 0680053C */  lui        $a1, %hi(D_80066F68)
    /* 28D04 80072F68 686FA58C */  lw         $a1, %lo(D_80066F68)($a1)
    /* 28D08 80072F6C 00000000 */  nop
    /* 28D0C 80072F70 0400A010 */  beqz       $a1, .Ltitlescreen_and_loading_80072F84
    /* 28D10 80072F74 02000424 */   addiu     $a0, $zero, 0x2
    /* 28D14 80072F78 2130A000 */  addu       $a2, $a1, $zero
    /* 28D18 80072F7C D235010C */  jal        func_8004D748
    /* 28D1C 80072F80 2138A000 */   addu      $a3, $a1, $zero
  .Ltitlescreen_and_loading_80072F84:
    /* 28D20 80072F84 4800BF8F */  lw         $ra, 0x48($sp)
    /* 28D24 80072F88 4400B18F */  lw         $s1, 0x44($sp)
    /* 28D28 80072F8C 4000B08F */  lw         $s0, 0x40($sp)
    /* 28D2C 80072F90 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 28D30 80072F94 0800E003 */  jr         $ra
    /* 28D34 80072F98 00000000 */   nop
endlabel func_titlescreen_and_loading_80072B90
