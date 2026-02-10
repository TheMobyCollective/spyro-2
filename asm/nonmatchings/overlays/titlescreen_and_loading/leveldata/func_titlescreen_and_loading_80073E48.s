.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80073E48, 0x358

glabel func_titlescreen_and_loading_80073E48
    /* 29BE4 80073E48 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 29BE8 80073E4C 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 29BEC 80073E50 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 29BF0 80073E54 0B000224 */  addiu      $v0, $zero, 0xB
    /* 29BF4 80073E58 2800BFAF */  sw         $ra, 0x28($sp)
    /* 29BF8 80073E5C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 29BFC 80073E60 2000B0AF */  sw         $s0, 0x20($sp)
    /* 29C00 80073E64 0780013C */  lui        $at, %hi(D_80068C40)
    /* 29C04 80073E68 408C24AC */  sw         $a0, %lo(D_80068C40)($at)
    /* 29C08 80073E6C 03006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80073E7C
    /* 29C0C 80073E70 00000000 */   nop
    /* 29C10 80073E74 C4008010 */  beqz       $a0, .Ltitlescreen_and_loading_80074188
    /* 29C14 80073E78 21100000 */   addu      $v0, $zero, $zero
  .Ltitlescreen_and_loading_80073E7C:
    /* 29C18 80073E7C 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 29C1C 80073E80 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 29C20 80073E84 0780053C */  lui        $a1, %hi(D_80068C3C)
    /* 29C24 80073E88 3C8CA524 */  addiu      $a1, $a1, %lo(D_80068C3C)
    /* 29C28 80073E8C 0680013C */  lui        $at, %hi(D_80064914)
    /* 29C2C 80073E90 21082200 */  addu       $at, $at, $v0
    /* 29C30 80073E94 14492290 */  lbu        $v0, %lo(D_80064914)($at)
    /* 29C34 80073E98 01001124 */  addiu      $s1, $zero, 0x1
    /* 29C38 80073E9C 03009114 */  bne        $a0, $s1, .Ltitlescreen_and_loading_80073EAC
    /* 29C3C 80073EA0 0000A2AC */   sw        $v0, 0x0($a1)
    /* 29C40 80073EA4 01004224 */  addiu      $v0, $v0, 0x1
    /* 29C44 80073EA8 0000A2AC */  sw         $v0, 0x0($a1)
  .Ltitlescreen_and_loading_80073EAC:
    /* 29C48 80073EAC 0680023C */  lui        $v0, %hi(D_80066F90)
    /* 29C4C 80073EB0 906F428C */  lw         $v0, %lo(D_80066F90)($v0)
    /* 29C50 80073EB4 00000000 */  nop
    /* 29C54 80073EB8 46004228 */  slti       $v0, $v0, 0x46
    /* 29C58 80073EBC 07004014 */  bnez       $v0, .Ltitlescreen_and_loading_80073EDC
    /* 29C5C 80073EC0 00000000 */   nop
    /* 29C60 80073EC4 0000A28C */  lw         $v0, 0x0($a1)
    /* 29C64 80073EC8 0680033C */  lui        $v1, %hi(D_80067118)
    /* 29C68 80073ECC 1871638C */  lw         $v1, %lo(D_80067118)($v1)
    /* 29C6C 80073ED0 00000000 */  nop
    /* 29C70 80073ED4 21104300 */  addu       $v0, $v0, $v1
    /* 29C74 80073ED8 0000A2AC */  sw         $v0, 0x0($a1)
  .Ltitlescreen_and_loading_80073EDC:
    /* 29C78 80073EDC 0000A28C */  lw         $v0, 0x0($a1)
    /* 29C7C 80073EE0 00000000 */  nop
    /* 29C80 80073EE4 C0180200 */  sll        $v1, $v0, 3
    /* 29C84 80073EE8 0680013C */  lui        $at, %hi(D_800679DC)
    /* 29C88 80073EEC 21082300 */  addu       $at, $at, $v1
    /* 29C8C 80073EF0 DC79228C */  lw         $v0, %lo(D_800679DC)($at)
    /* 29C90 80073EF4 00000000 */  nop
    /* 29C94 80073EF8 03004014 */  bnez       $v0, .Ltitlescreen_and_loading_80073F08
    /* 29C98 80073EFC 00080624 */   addiu     $a2, $zero, 0x800
    /* 29C9C 80073F00 62D00108 */  j          .Ltitlescreen_and_loading_80074188
    /* 29CA0 80073F04 21100000 */   addu      $v0, $zero, $zero
  .Ltitlescreen_and_loading_80073F08:
    /* 29CA4 80073F08 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 29CA8 80073F0C D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 29CAC 80073F10 0780103C */  lui        $s0, %hi(D_8006B290)
    /* 29CB0 80073F14 90B2108E */  lw         $s0, %lo(D_8006B290)($s0)
    /* 29CB4 80073F18 0680013C */  lui        $at, %hi(D_800679D8)
    /* 29CB8 80073F1C 21082300 */  addu       $at, $at, $v1
    /* 29CBC 80073F20 D879278C */  lw         $a3, %lo(D_800679D8)($at)
    /* 29CC0 80073F24 044E000C */  jal        func_80013810
    /* 29CC4 80073F28 21280002 */   addu      $a1, $s0, $zero
    /* 29CC8 80073F2C 0100043C */  lui        $a0, (0x1C000 >> 16)
    /* 29CCC 80073F30 06000224 */  addiu      $v0, $zero, 0x6
    /* 29CD0 80073F34 0780013C */  lui        $at, %hi(D_800681C8)
    /* 29CD4 80073F38 C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* 29CD8 80073F3C 0680013C */  lui        $at, %hi(D_800670C8)
    /* 29CDC 80073F40 C87031AC */  sw         $s1, %lo(D_800670C8)($at)
    /* 29CE0 80073F44 5634010C */  jal        func_8004D158
    /* 29CE4 80073F48 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
    /* 29CE8 80073F4C 21200002 */  addu       $a0, $s0, $zero
    /* 29CEC 80073F50 78CE010C */  jal        func_titlescreen_and_loading_800739E0
    /* 29CF0 80073F54 01000524 */   addiu     $a1, $zero, 0x1
    /* 29CF4 80073F58 21280000 */  addu       $a1, $zero, $zero
    /* 29CF8 80073F5C 0780043C */  lui        $a0, %hi(D_80068C70)
    /* 29CFC 80073F60 708C848C */  lw         $a0, %lo(D_80068C70)($a0)
    /* 29D00 80073F64 0780013C */  lui        $at, %hi(D_80068C44)
    /* 29D04 80073F68 448C20AC */  sw         $zero, %lo(D_80068C44)($at)
    /* 29D08 80073F6C 0780013C */  lui        $at, %hi(D_80068C48)
    /* 29D0C 80073F70 488C20AC */  sw         $zero, %lo(D_80068C48)($at)
    /* 29D10 80073F74 19CF010C */  jal        func_titlescreen_and_loading_80073C64
    /* 29D14 80073F78 01000624 */   addiu     $a2, $zero, 0x1
    /* 29D18 80073F7C 0780023C */  lui        $v0, %hi(D_800681C0)
    /* 29D1C 80073F80 C0814290 */  lbu        $v0, %lo(D_800681C0)($v0)
    /* 29D20 80073F84 0780033C */  lui        $v1, %hi(D_800681C1)
    /* 29D24 80073F88 C1816390 */  lbu        $v1, %lo(D_800681C1)($v1)
    /* 29D28 80073F8C 0780043C */  lui        $a0, %hi(D_800681C2)
    /* 29D2C 80073F90 C2818490 */  lbu        $a0, %lo(D_800681C2)($a0)
    /* 29D30 80073F94 0780053C */  lui        $a1, %hi(D_80068C40)
    /* 29D34 80073F98 408CA58C */  lw         $a1, %lo(D_80068C40)($a1)
    /* 29D38 80073F9C 0780013C */  lui        $at, %hi(D_80069941)
    /* 29D3C 80073FA0 419922A0 */  sb         $v0, %lo(D_80069941)($at)
    /* 29D40 80073FA4 0780013C */  lui        $at, %hi(D_80069942)
    /* 29D44 80073FA8 429923A0 */  sb         $v1, %lo(D_80069942)($at)
    /* 29D48 80073FAC 0780013C */  lui        $at, %hi(D_80069943)
    /* 29D4C 80073FB0 439924A0 */  sb         $a0, %lo(D_80069943)($at)
    /* 29D50 80073FB4 0780013C */  lui        $at, %hi(D_800699B5)
    /* 29D54 80073FB8 B59922A0 */  sb         $v0, %lo(D_800699B5)($at)
    /* 29D58 80073FBC 0780013C */  lui        $at, %hi(D_800699B6)
    /* 29D5C 80073FC0 B69923A0 */  sb         $v1, %lo(D_800699B6)($at)
    /* 29D60 80073FC4 0780013C */  lui        $at, %hi(D_800699B7)
    /* 29D64 80073FC8 B79924A0 */  sb         $a0, %lo(D_800699B7)($at)
    /* 29D68 80073FCC 0500B114 */  bne        $a1, $s1, .Ltitlescreen_and_loading_80073FE4
    /* 29D6C 80073FD0 00000000 */   nop
    /* 29D70 80073FD4 0680023C */  lui        $v0, %hi(D_80066F00)
    /* 29D74 80073FD8 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* 29D78 80073FDC 00000000 */  nop
    /* 29D7C 80073FE0 400040A0 */  sb         $zero, 0x40($v0)
  .Ltitlescreen_and_loading_80073FE4:
    /* 29D80 80073FE4 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 29D84 80073FE8 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 29D88 80073FEC 00000000 */  nop
    /* 29D8C 80073FF0 46006228 */  slti       $v0, $v1, 0x46
    /* 29D90 80073FF4 10004014 */  bnez       $v0, .Ltitlescreen_and_loading_80074038
    /* 29D94 80073FF8 0B000224 */   addiu     $v0, $zero, 0xB
    /* 29D98 80073FFC 0780043C */  lui        $a0, %hi(D_8006B29C)
    /* 29D9C 80074000 9CB2848C */  lw         $a0, %lo(D_8006B29C)($a0)
    /* 29DA0 80074004 A371000C */  jal        func_8001C68C
    /* 29DA4 80074008 FCDF8424 */   addiu     $a0, $a0, -0x2004
    /* 29DA8 8007400C 21280000 */  addu       $a1, $zero, $zero
    /* 29DAC 80074010 0680043C */  lui        $a0, %hi(D_80066F18)
    /* 29DB0 80074014 186F848C */  lw         $a0, %lo(D_80066F18)($a0)
    /* 29DB4 80074018 00000000 */  nop
    /* 29DB8 8007401C 00F08424 */  addiu      $a0, $a0, -0x1000
    /* 29DBC 80074020 0680013C */  lui        $at, %hi(D_80067174)
    /* 29DC0 80074024 747124AC */  sw         $a0, %lo(D_80067174)($at)
    /* 29DC4 80074028 F26C000C */  jal        func_8001B3C8
    /* 29DC8 8007402C 00100624 */   addiu     $a2, $zero, 0x1000
    /* 29DCC 80074030 4AD00108 */  j          .Ltitlescreen_and_loading_80074128
    /* 29DD0 80074034 00000000 */   nop
  .Ltitlescreen_and_loading_80074038:
    /* 29DD4 80074038 0F006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80074078
    /* 29DD8 8007403C 00000000 */   nop
    /* 29DDC 80074040 0780023C */  lui        $v0, %hi(D_80068C40)
    /* 29DE0 80074044 408C428C */  lw         $v0, %lo(D_80068C40)($v0)
    /* 29DE4 80074048 00000000 */  nop
    /* 29DE8 8007404C 0A005114 */  bne        $v0, $s1, .Ltitlescreen_and_loading_80074078
    /* 29DEC 80074050 01000424 */   addiu     $a0, $zero, 0x1
    /* 29DF0 80074054 FC000524 */  addiu      $a1, $zero, 0xFC
    /* 29DF4 80074058 978D000C */  jal        func_8002365C
    /* 29DF8 8007405C 21300000 */   addu      $a2, $zero, $zero
    /* 29DFC 80074060 01000424 */  addiu      $a0, $zero, 0x1
    /* 29E00 80074064 3A000524 */  addiu      $a1, $zero, 0x3A
    /* 29E04 80074068 C48D000C */  jal        func_80023710
    /* 29E08 8007406C 21300000 */   addu      $a2, $zero, $zero
    /* 29E0C 80074070 4AD00108 */  j          .Ltitlescreen_and_loading_80074128
    /* 29E10 80074074 00000000 */   nop
  .Ltitlescreen_and_loading_80074078:
    /* 29E14 80074078 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 29E18 8007407C 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 29E1C 80074080 21000224 */  addiu      $v0, $zero, 0x21
    /* 29E20 80074084 15006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_800740DC
    /* 29E24 80074088 3D000224 */   addiu     $v0, $zero, 0x3D
    /* 29E28 8007408C 0780033C */  lui        $v1, %hi(D_80068C40)
    /* 29E2C 80074090 408C638C */  lw         $v1, %lo(D_80068C40)($v1)
    /* 29E30 80074094 01000224 */  addiu      $v0, $zero, 0x1
    /* 29E34 80074098 0E006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_800740D4
    /* 29E38 8007409C 3D000224 */   addiu     $v0, $zero, 0x3D
    /* 29E3C 800740A0 01000424 */  addiu      $a0, $zero, 0x1
    /* 29E40 800740A4 1000A527 */  addiu      $a1, $sp, 0x10
    /* 29E44 800740A8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 29E48 800740AC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 29E4C 800740B0 C4F0000C */  jal        func_8003C310
    /* 29E50 800740B4 1800A0AF */   sw        $zero, 0x18($sp)
    /* 29E54 800740B8 1800A28F */  lw         $v0, 0x18($sp)
    /* 29E58 800740BC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 29E5C 800740C0 03110200 */  sra        $v0, $v0, 4
    /* 29E60 800740C4 882F010C */  jal        func_8004BE20
    /* 29E64 800740C8 1800A2AF */   sw        $v0, 0x18($sp)
    /* 29E68 800740CC 4AD00108 */  j          .Ltitlescreen_and_loading_80074128
    /* 29E6C 800740D0 00000000 */   nop
  .Ltitlescreen_and_loading_800740D4:
    /* 29E70 800740D4 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 29E74 800740D8 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
  .Ltitlescreen_and_loading_800740DC:
    /* 29E78 800740DC 00000000 */  nop
    /* 29E7C 800740E0 11006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80074128
    /* 29E80 800740E4 01000224 */   addiu     $v0, $zero, 0x1
    /* 29E84 800740E8 0780033C */  lui        $v1, %hi(D_80068C40)
    /* 29E88 800740EC 408C638C */  lw         $v1, %lo(D_80068C40)($v1)
    /* 29E8C 800740F0 00000000 */  nop
    /* 29E90 800740F4 0C006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80074128
    /* 29E94 800740F8 02000424 */   addiu     $a0, $zero, 0x2
    /* 29E98 800740FC FC000524 */  addiu      $a1, $zero, 0xFC
    /* 29E9C 80074100 978D000C */  jal        func_8002365C
    /* 29EA0 80074104 21300000 */   addu      $a2, $zero, $zero
    /* 29EA4 80074108 0A000424 */  addiu      $a0, $zero, 0xA
    /* 29EA8 8007410C FC000524 */  addiu      $a1, $zero, 0xFC
    /* 29EAC 80074110 978D000C */  jal        func_8002365C
    /* 29EB0 80074114 21300000 */   addu      $a2, $zero, $zero
    /* 29EB4 80074118 0B000424 */  addiu      $a0, $zero, 0xB
    /* 29EB8 8007411C FC000524 */  addiu      $a1, $zero, 0xFC
    /* 29EBC 80074120 978D000C */  jal        func_8002365C
    /* 29EC0 80074124 21300000 */   addu      $a2, $zero, $zero
  .Ltitlescreen_and_loading_80074128:
    /* 29EC4 80074128 0780043C */  lui        $a0, %hi(D_80068C80)
    /* 29EC8 8007412C 808C8424 */  addiu      $a0, $a0, %lo(D_80068C80)
    /* 29ECC 80074130 0680053C */  lui        $a1, %hi(D_80067068)
    /* 29ED0 80074134 6870A58C */  lw         $a1, %lo(D_80067068)($a1)
    /* 29ED4 80074138 036D000C */  jal        func_8001B40C
    /* 29ED8 8007413C 14000624 */   addiu     $a2, $zero, 0x14
    /* 29EDC 80074140 01000224 */  addiu      $v0, $zero, 0x1
    /* 29EE0 80074144 0680043C */  lui        $a0, %hi(D_80067068)
    /* 29EE4 80074148 6870848C */  lw         $a0, %lo(D_80067068)($a0)
    /* 29EE8 8007414C 10100324 */  addiu      $v1, $zero, 0x1010
    /* 29EEC 80074150 000083AC */  sw         $v1, 0x0($a0)
    /* 29EF0 80074154 FF2F0324 */  addiu      $v1, $zero, 0x2FFF
    /* 29EF4 80074158 060083A4 */  sh         $v1, 0x6($a0)
    /* 29EF8 8007415C F8070324 */  addiu      $v1, $zero, 0x7F8
    /* 29EFC 80074160 0C0083A4 */  sh         $v1, 0xC($a0)
    /* 29F00 80074164 0E0083A4 */  sh         $v1, 0xE($a0)
    /* 29F04 80074168 01000324 */  addiu      $v1, $zero, 0x1
    /* 29F08 8007416C 100083A0 */  sb         $v1, 0x10($a0)
    /* 29F0C 80074170 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 29F10 80074174 0780013C */  lui        $at, %hi(D_80068C7C)
    /* 29F14 80074178 7C8C23AC */  sw         $v1, %lo(D_80068C7C)($at)
    /* 29F18 8007417C 01000324 */  addiu      $v1, $zero, 0x1
    /* 29F1C 80074180 0780013C */  lui        $at, %hi(D_8006A250)
    /* 29F20 80074184 50A223AC */  sw         $v1, %lo(D_8006A250)($at)
  .Ltitlescreen_and_loading_80074188:
    /* 29F24 80074188 2800BF8F */  lw         $ra, 0x28($sp)
    /* 29F28 8007418C 2400B18F */  lw         $s1, 0x24($sp)
    /* 29F2C 80074190 2000B08F */  lw         $s0, 0x20($sp)
    /* 29F30 80074194 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 29F34 80074198 0800E003 */  jr         $ra
    /* 29F38 8007419C 00000000 */   nop
endlabel func_titlescreen_and_loading_80073E48
