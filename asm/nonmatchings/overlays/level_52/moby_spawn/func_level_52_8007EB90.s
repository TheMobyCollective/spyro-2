.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8007EB90, 0x10EC

glabel func_level_52_8007EB90
    /* 3B1192C 8007EB90 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 3B11930 8007EB94 8400B1AF */  sw         $s1, 0x84($sp)
    /* 3B11934 8007EB98 21888000 */  addu       $s1, $a0, $zero
    /* 3B11938 8007EB9C 9000B4AF */  sw         $s4, 0x90($sp)
    /* 3B1193C 8007EBA0 21A0A000 */  addu       $s4, $a1, $zero
    /* 3B11940 8007EBA4 9C00BFAF */  sw         $ra, 0x9C($sp)
    /* 3B11944 8007EBA8 9800B6AF */  sw         $s6, 0x98($sp)
    /* 3B11948 8007EBAC 9400B5AF */  sw         $s5, 0x94($sp)
    /* 3B1194C 8007EBB0 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* 3B11950 8007EBB4 8800B2AF */  sw         $s2, 0x88($sp)
    /* 3B11954 8007EBB8 A404010C */  jal        func_80041290
    /* 3B11958 8007EBBC 8000B0AF */   sw        $s0, 0x80($sp)
    /* 3B1195C 8007EBC0 21B04000 */  addu       $s6, $v0, $zero
    /* 3B11960 8007EBC4 0300C016 */  bnez       $s6, .Llevel_52_8007EBD4
    /* 3B11964 8007EBC8 2120C002 */   addu      $a0, $s6, $zero
    /* 3B11968 8007EBCC 14FF0108 */  j          .Llevel_52_8007FC50
    /* 3B1196C 8007EBD0 21100000 */   addu      $v0, $zero, $zero
  .Llevel_52_8007EBD4:
    /* 3B11970 8007EBD4 21280000 */  addu       $a1, $zero, $zero
    /* 3B11974 8007EBD8 0000D08E */  lw         $s0, 0x0($s6)
    /* 3B11978 8007EBDC F26C000C */  jal        func_8001B3C8
    /* 3B1197C 8007EBE0 58000624 */   addiu     $a2, $zero, 0x58
    /* 3B11980 8007EBE4 21280000 */  addu       $a1, $zero, $zero
    /* 3B11984 8007EBE8 18000624 */  addiu      $a2, $zero, 0x18
    /* 3B11988 8007EBEC 21200002 */  addu       $a0, $s0, $zero
    /* 3B1198C 8007EBF0 F26C000C */  jal        func_8001B3C8
    /* 3B11990 8007EBF4 0000C4AE */   sw        $a0, 0x0($s6)
    /* 3B11994 8007EBF8 16008012 */  beqz       $s4, .Llevel_52_8007EC54
    /* 3B11998 8007EBFC 3600D1A6 */   sh        $s1, 0x36($s6)
    /* 3B1199C 8007EC00 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 3B119A0 8007EC04 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 3B119A4 8007EC08 00000000 */  nop
    /* 3B119A8 8007EC0C 23208402 */  subu       $a0, $s4, $a0
    /* 3B119AC 8007EC10 40190400 */  sll        $v1, $a0, 5
    /* 3B119B0 8007EC14 23186400 */  subu       $v1, $v1, $a0
    /* 3B119B4 8007EC18 40190300 */  sll        $v1, $v1, 5
    /* 3B119B8 8007EC1C 21186400 */  addu       $v1, $v1, $a0
    /* 3B119BC 8007EC20 C0100300 */  sll        $v0, $v1, 3
    /* 3B119C0 8007EC24 21186200 */  addu       $v1, $v1, $v0
    /* 3B119C4 8007EC28 C0130300 */  sll        $v0, $v1, 15
    /* 3B119C8 8007EC2C 23104300 */  subu       $v0, $v0, $v1
    /* 3B119CC 8007EC30 80100200 */  sll        $v0, $v0, 2
    /* 3B119D0 8007EC34 21104400 */  addu       $v0, $v0, $a0
    /* 3B119D4 8007EC38 23100200 */  negu       $v0, $v0
    /* 3B119D8 8007EC3C C3180200 */  sra        $v1, $v0, 3
    /* 3B119DC 8007EC40 0001622C */  sltiu      $v0, $v1, 0x100
    /* 3B119E0 8007EC44 04004010 */  beqz       $v0, .Llevel_52_8007EC58
    /* 3B119E4 8007EC48 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 3B119E8 8007EC4C 17FB0108 */  j          .Llevel_52_8007EC5C
    /* 3B119EC 8007EC50 3A00C3A2 */   sb        $v1, 0x3A($s6)
  .Llevel_52_8007EC54:
    /* 3B119F0 8007EC54 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_52_8007EC58:
    /* 3B119F4 8007EC58 3A00C2A2 */  sb         $v0, 0x3A($s6)
  .Llevel_52_8007EC5C:
    /* 3B119F8 8007EC5C 72DD000C */  jal        func_800375C8
    /* 3B119FC 8007EC60 2120C002 */   addu      $a0, $s6, $zero
    /* 3B11A00 8007EC64 3501222A */  slti       $v0, $s1, 0x135
    /* 3B11A04 8007EC68 24004010 */  beqz       $v0, .Llevel_52_8007ECFC
    /* 3B11A08 8007EC6C 3201222A */   slti      $v0, $s1, 0x132
    /* 3B11A0C 8007EC70 6B014010 */  beqz       $v0, .Llevel_52_8007F220
    /* 3B11A10 8007EC74 7E000224 */   addiu     $v0, $zero, 0x7E
    /* 3B11A14 8007EC78 AD002212 */  beq        $s1, $v0, .Llevel_52_8007EF30
    /* 3B11A18 8007EC7C 7F00222A */   slti      $v0, $s1, 0x7F
    /* 3B11A1C 8007EC80 0E004010 */  beqz       $v0, .Llevel_52_8007ECBC
    /* 3B11A20 8007EC84 10000224 */   addiu     $v0, $zero, 0x10
    /* 3B11A24 8007EC88 43002212 */  beq        $s1, $v0, .Llevel_52_8007ED98
    /* 3B11A28 8007EC8C 1100222A */   slti      $v0, $s1, 0x11
    /* 3B11A2C 8007EC90 05004010 */  beqz       $v0, .Llevel_52_8007ECA8
    /* 3B11A30 8007EC94 01000224 */   addiu     $v0, $zero, 0x1
    /* 3B11A34 8007EC98 38002212 */  beq        $s1, $v0, .Llevel_52_8007ED7C
    /* 3B11A38 8007EC9C 00000000 */   nop
    /* 3B11A3C 8007ECA0 08FF0108 */  j          .Llevel_52_8007FC20
    /* 3B11A40 8007ECA4 00000000 */   nop
  .Llevel_52_8007ECA8:
    /* 3B11A44 8007ECA8 78000224 */  addiu      $v0, $zero, 0x78
    /* 3B11A48 8007ECAC 6D002212 */  beq        $s1, $v0, .Llevel_52_8007EE64
    /* 3B11A4C 8007ECB0 00000000 */   nop
    /* 3B11A50 8007ECB4 08FF0108 */  j          .Llevel_52_8007FC20
    /* 3B11A54 8007ECB8 00000000 */   nop
  .Llevel_52_8007ECBC:
    /* 3B11A58 8007ECBC D3000224 */  addiu      $v0, $zero, 0xD3
    /* 3B11A5C 8007ECC0 35002212 */  beq        $s1, $v0, .Llevel_52_8007ED98
    /* 3B11A60 8007ECC4 D400222A */   slti      $v0, $s1, 0xD4
    /* 3B11A64 8007ECC8 05004010 */  beqz       $v0, .Llevel_52_8007ECE0
    /* 3B11A68 8007ECCC 81000224 */   addiu     $v0, $zero, 0x81
    /* 3B11A6C 8007ECD0 CF002212 */  beq        $s1, $v0, .Llevel_52_8007F010
    /* 3B11A70 8007ECD4 0C00C426 */   addiu     $a0, $s6, 0xC
    /* 3B11A74 8007ECD8 08FF0108 */  j          .Llevel_52_8007FC20
    /* 3B11A78 8007ECDC 00000000 */   nop
  .Llevel_52_8007ECE0:
    /* 3B11A7C 8007ECE0 04010224 */  addiu      $v0, $zero, 0x104
    /* 3B11A80 8007ECE4 DA002212 */  beq        $s1, $v0, .Llevel_52_8007F050
    /* 3B11A84 8007ECE8 0A010224 */   addiu     $v0, $zero, 0x10A
    /* 3B11A88 8007ECEC ED002212 */  beq        $s1, $v0, .Llevel_52_8007F0A4
    /* 3B11A8C 8007ECF0 0C00C426 */   addiu     $a0, $s6, 0xC
    /* 3B11A90 8007ECF4 08FF0108 */  j          .Llevel_52_8007FC20
    /* 3B11A94 8007ECF8 00000000 */   nop
  .Llevel_52_8007ECFC:
    /* 3B11A98 8007ECFC 1D020224 */  addiu      $v0, $zero, 0x21D
    /* 3B11A9C 8007ED00 E9022212 */  beq        $s1, $v0, .Llevel_52_8007F8A8
    /* 3B11AA0 8007ED04 1E02222A */   slti      $v0, $s1, 0x21E
    /* 3B11AA4 8007ED08 0E004010 */  beqz       $v0, .Llevel_52_8007ED44
    /* 3B11AA8 8007ED0C E2010224 */   addiu     $v0, $zero, 0x1E2
    /* 3B11AAC 8007ED10 1C022212 */  beq        $s1, $v0, .Llevel_52_8007F584
    /* 3B11AB0 8007ED14 E301222A */   slti      $v0, $s1, 0x1E3
    /* 3B11AB4 8007ED18 05004010 */  beqz       $v0, .Llevel_52_8007ED30
    /* 3B11AB8 8007ED1C 46010224 */   addiu     $v0, $zero, 0x146
    /* 3B11ABC 8007ED20 D6012212 */  beq        $s1, $v0, .Llevel_52_8007F47C
    /* 3B11AC0 8007ED24 0C00C426 */   addiu     $a0, $s6, 0xC
    /* 3B11AC4 8007ED28 08FF0108 */  j          .Llevel_52_8007FC20
    /* 3B11AC8 8007ED2C 00000000 */   nop
  .Llevel_52_8007ED30:
    /* 3B11ACC 8007ED30 E3010224 */  addiu      $v0, $zero, 0x1E3
    /* 3B11AD0 8007ED34 2B022212 */  beq        $s1, $v0, .Llevel_52_8007F5E4
    /* 3B11AD4 8007ED38 00000000 */   nop
    /* 3B11AD8 8007ED3C 08FF0108 */  j          .Llevel_52_8007FC20
    /* 3B11ADC 8007ED40 00000000 */   nop
  .Llevel_52_8007ED44:
    /* 3B11AE0 8007ED44 55020224 */  addiu      $v0, $zero, 0x255
    /* 3B11AE4 8007ED48 EC022212 */  beq        $s1, $v0, .Llevel_52_8007F8FC
    /* 3B11AE8 8007ED4C 5602222A */   slti      $v0, $s1, 0x256
    /* 3B11AEC 8007ED50 05004010 */  beqz       $v0, .Llevel_52_8007ED68
    /* 3B11AF0 8007ED54 38020224 */   addiu     $v0, $zero, 0x238
    /* 3B11AF4 8007ED58 32012212 */  beq        $s1, $v0, .Llevel_52_8007F224
    /* 3B11AF8 8007ED5C 0C00C426 */   addiu     $a0, $s6, 0xC
    /* 3B11AFC 8007ED60 08FF0108 */  j          .Llevel_52_8007FC20
    /* 3B11B00 8007ED64 00000000 */   nop
  .Llevel_52_8007ED68:
    /* 3B11B04 8007ED68 70020224 */  addiu      $v0, $zero, 0x270
    /* 3B11B08 8007ED6C 3F032212 */  beq        $s1, $v0, .Llevel_52_8007FA6C
    /* 3B11B0C 8007ED70 00000000 */   nop
    /* 3B11B10 8007ED74 08FF0108 */  j          .Llevel_52_8007FC20
    /* 3B11B14 8007ED78 00000000 */   nop
  .Llevel_52_8007ED7C:
    /* 3B11B18 8007ED7C 0E05010C */  jal        func_80041438
    /* 3B11B1C 8007ED80 2120C002 */   addu      $a0, $s6, $zero
    /* 3B11B20 8007ED84 18000224 */  addiu      $v0, $zero, 0x18
    /* 3B11B24 8007ED88 4C00C2A2 */  sb         $v0, 0x4C($s6)
    /* 3B11B28 8007ED8C 40000224 */  addiu      $v0, $zero, 0x40
    /* 3B11B2C 8007ED90 26FC0108 */  j          .Llevel_52_8007F098
    /* 3B11B30 8007ED94 4A00C2A2 */   sb        $v0, 0x4A($s6)
  .Llevel_52_8007ED98:
    /* 3B11B34 8007ED98 10000324 */  addiu      $v1, $zero, 0x10
    /* 3B11B38 8007ED9C 3600C286 */  lh         $v0, 0x36($s6)
    /* 3B11B3C 8007EDA0 0000D18E */  lw         $s1, 0x0($s6)
    /* 3B11B40 8007EDA4 18004314 */  bne        $v0, $v1, .Llevel_52_8007EE08
    /* 3B11B44 8007EDA8 00000000 */   nop
    /* 3B11B48 8007EDAC 0680043C */  lui        $a0, %hi(D_8006712C)
    /* 3B11B4C 8007EDB0 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* 3B11B50 8007EDB4 00000000 */  nop
    /* 3B11B54 8007EDB8 04008228 */  slti       $v0, $a0, 0x4
    /* 3B11B58 8007EDBC 03004010 */  beqz       $v0, .Llevel_52_8007EDCC
    /* 3B11B5C 8007EDC0 0A000324 */   addiu     $v1, $zero, 0xA
    /* 3B11B60 8007EDC4 77FB0108 */  j          .Llevel_52_8007EDDC
    /* 3B11B64 8007EDC8 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_52_8007EDCC:
    /* 3B11B68 8007EDCC 07008228 */  slti       $v0, $a0, 0x7
    /* 3B11B6C 8007EDD0 02004010 */  beqz       $v0, .Llevel_52_8007EDDC
    /* 3B11B70 8007EDD4 00000000 */   nop
    /* 3B11B74 8007EDD8 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_52_8007EDDC:
    /* 3B11B78 8007EDDC 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* 3B11B7C 8007EDE0 AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* 3B11B80 8007EDE4 0000828C */  lw         $v0, 0x0($a0)
    /* 3B11B84 8007EDE8 00000000 */  nop
    /* 3B11B88 8007EDEC 01004224 */  addiu      $v0, $v0, 0x1
    /* 3B11B8C 8007EDF0 000082AC */  sw         $v0, 0x0($a0)
    /* 3B11B90 8007EDF4 2A104300 */  slt        $v0, $v0, $v1
    /* 3B11B94 8007EDF8 03004014 */  bnez       $v0, .Llevel_52_8007EE08
    /* 3B11B98 8007EDFC D3000224 */   addiu     $v0, $zero, 0xD3
    /* 3B11B9C 8007EE00 000080AC */  sw         $zero, 0x0($a0)
    /* 3B11BA0 8007EE04 3600C2A6 */  sh         $v0, 0x36($s6)
  .Llevel_52_8007EE08:
    /* 3B11BA4 8007EE08 0E05010C */  jal        func_80041438
    /* 3B11BA8 8007EE0C 2120C002 */   addu      $a0, $s6, $zero
    /* 3B11BAC 8007EE10 0C00D026 */  addiu      $s0, $s6, 0xC
    /* 3B11BB0 8007EE14 21200002 */  addu       $a0, $s0, $zero
    /* 3B11BB4 8007EE18 6C6F000C */  jal        func_8001BDB0
    /* 3B11BB8 8007EE1C 0C008526 */   addiu     $a1, $s4, 0xC
    /* 3B11BBC 8007EE20 21202002 */  addu       $a0, $s1, $zero
    /* 3B11BC0 8007EE24 1400C28E */  lw         $v0, 0x14($s6)
    /* 3B11BC4 8007EE28 21280002 */  addu       $a1, $s0, $zero
    /* 3B11BC8 8007EE2C 00024224 */  addiu      $v0, $v0, 0x200
    /* 3B11BCC 8007EE30 6C6F000C */  jal        func_8001BDB0
    /* 3B11BD0 8007EE34 1400C2AE */   sw        $v0, 0x14($s6)
    /* 3B11BD4 8007EE38 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3B11BD8 8007EE3C 1C00C2AE */  sw         $v0, 0x1C($s6)
    /* 3B11BDC 8007EE40 02000224 */  addiu      $v0, $zero, 0x2
    /* 3B11BE0 8007EE44 4700C2A2 */  sb         $v0, 0x47($s6)
    /* 3B11BE4 8007EE48 08070224 */  addiu      $v0, $zero, 0x708
    /* 3B11BE8 8007EE4C 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 3B11BEC 8007EE50 4B67010C */  jal        func_80059D2C
    /* 3B11BF0 8007EE54 110020A2 */   sb        $zero, 0x11($s1)
    /* 3B11BF4 8007EE58 FC004230 */  andi       $v0, $v0, 0xFC
    /* 3B11BF8 8007EE5C 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B11BFC 8007EE60 120022A2 */   sb        $v0, 0x12($s1)
  .Llevel_52_8007EE64:
    /* 3B11C00 8007EE64 0000D08E */  lw         $s0, 0x0($s6)
    /* 3B11C04 8007EE68 0E05010C */  jal        func_80041438
    /* 3B11C08 8007EE6C 2120C002 */   addu      $a0, $s6, $zero
    /* 3B11C0C 8007EE70 78000224 */  addiu      $v0, $zero, 0x78
    /* 3B11C10 8007EE74 4900C0A2 */  sb         $zero, 0x49($s6)
    /* 3B11C14 8007EE78 000000A6 */  sh         $zero, 0x0($s0)
    /* 3B11C18 8007EE7C 080000A6 */  sh         $zero, 0x8($s0)
    /* 3B11C1C 8007EE80 060000A6 */  sh         $zero, 0x6($s0)
    /* 3B11C20 8007EE84 040000A6 */  sh         $zero, 0x4($s0)
    /* 3B11C24 8007EE88 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 3B11C28 8007EE8C 100000AE */  sw         $zero, 0x10($s0)
    /* 3B11C2C 8007EE90 06008012 */  beqz       $s4, .Llevel_52_8007EEAC
    /* 3B11C30 8007EE94 140000AE */   sw        $zero, 0x14($s0)
    /* 3B11C34 8007EE98 0C00C426 */  addiu      $a0, $s6, 0xC
    /* 3B11C38 8007EE9C 6C6F000C */  jal        func_8001BDB0
    /* 3B11C3C 8007EEA0 0C008526 */   addiu     $a1, $s4, 0xC
    /* 3B11C40 8007EEA4 CAFB0108 */  j          .Llevel_52_8007EF28
    /* 3B11C44 8007EEA8 FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_52_8007EEAC:
    /* 3B11C48 8007EEAC 0C00C426 */  addiu      $a0, $s6, 0xC
    /* 3B11C4C 8007EEB0 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* 3B11C50 8007EEB4 FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* 3B11C54 8007EEB8 0000A390 */  lbu        $v1, 0x0($a1)
    /* 3B11C58 8007EEBC F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 3B11C5C 8007EEC0 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 3B11C60 8007EEC4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3B11C64 8007EEC8 40180300 */  sll        $v1, $v1, 1
    /* 3B11C68 8007EECC 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3B11C6C 8007EED0 21082300 */  addu       $at, $at, $v1
    /* 3B11C70 8007EED4 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* 3B11C74 8007EED8 1000A627 */  addiu      $a2, $sp, 0x10
    /* 3B11C78 8007EEDC 40110700 */  sll        $v0, $a3, 5
    /* 3B11C7C 8007EEE0 23104700 */  subu       $v0, $v0, $a3
    /* 3B11C80 8007EEE4 80100200 */  sll        $v0, $v0, 2
    /* 3B11C84 8007EEE8 21104700 */  addu       $v0, $v0, $a3
    /* 3B11C88 8007EEEC 43120200 */  sra        $v0, $v0, 9
    /* 3B11C8C 8007EEF0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3B11C90 8007EEF4 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3B11C94 8007EEF8 21082300 */  addu       $at, $at, $v1
    /* 3B11C98 8007EEFC D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 3B11C9C 8007EF00 E8030224 */  addiu      $v0, $zero, 0x3E8
    /* 3B11CA0 8007EF04 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3B11CA4 8007EF08 40110300 */  sll        $v0, $v1, 5
    /* 3B11CA8 8007EF0C 23104300 */  subu       $v0, $v0, $v1
    /* 3B11CAC 8007EF10 80100200 */  sll        $v0, $v0, 2
    /* 3B11CB0 8007EF14 21104300 */  addu       $v0, $v0, $v1
    /* 3B11CB4 8007EF18 43120200 */  sra        $v0, $v0, 9
    /* 3B11CB8 8007EF1C 736F000C */  jal        func_8001BDCC
    /* 3B11CBC 8007EF20 1400A2AF */   sw        $v0, 0x14($sp)
    /* 3B11CC0 8007EF24 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_52_8007EF28:
    /* 3B11CC4 8007EF28 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B11CC8 8007EF2C 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_52_8007EF30:
    /* 3B11CCC 8007EF30 0000D18E */  lw         $s1, 0x0($s6)
    /* 3B11CD0 8007EF34 4B67010C */  jal        func_80059D2C
    /* 3B11CD4 8007EF38 0C00D226 */   addiu     $s2, $s6, 0xC
    /* 3B11CD8 8007EF3C 21204002 */  addu       $a0, $s2, $zero
    /* 3B11CDC 8007EF40 0C008526 */  addiu      $a1, $s4, 0xC
    /* 3B11CE0 8007EF44 6C6F000C */  jal        func_8001BDB0
    /* 3B11CE4 8007EF48 21804000 */   addu      $s0, $v0, $zero
    /* 3B11CE8 8007EF4C 0680023C */  lui        $v0, %hi(D_80067ECC)
    /* 3B11CEC 8007EF50 CC7E4294 */  lhu        $v0, %lo(D_80067ECC)($v0)
    /* 3B11CF0 8007EF54 2120C002 */  addu       $a0, $s6, $zero
    /* 3B11CF4 8007EF58 00140200 */  sll        $v0, $v0, 16
    /* 3B11CF8 8007EF5C 03150200 */  sra        $v0, $v0, 20
    /* 3B11CFC 8007EF60 80FF4224 */  addiu      $v0, $v0, -0x80
    /* 3B11D00 8007EF64 0E05010C */  jal        func_80041438
    /* 3B11D04 8007EF68 4600C2A2 */   sb        $v0, 0x46($s6)
    /* 3B11D08 8007EF6C 28000424 */  addiu      $a0, $zero, 0x28
    /* 3B11D0C 8007EF70 3C000524 */  addiu      $a1, $zero, 0x3C
    /* 3B11D10 8007EF74 40000224 */  addiu      $v0, $zero, 0x40
    /* 3B11D14 8007EF78 47E2000C */  jal        func_8003891C
    /* 3B11D18 8007EF7C 4F00C2A2 */   sb        $v0, 0x4F($s6)
    /* 3B11D1C 8007EF80 21204002 */  addu       $a0, $s2, $zero
    /* 3B11D20 8007EF84 03000524 */  addiu      $a1, $zero, 0x3
    /* 3B11D24 8007EF88 06000624 */  addiu      $a2, $zero, 0x6
    /* 3B11D28 8007EF8C 4000073C */  lui        $a3, (0x40E0E0 >> 16)
    /* 3B11D2C 8007EF90 E0E0E734 */  ori        $a3, $a3, (0x40E0E0 & 0xFFFF)
    /* 3B11D30 8007EF94 BF40010C */  jal        func_800502FC
    /* 3B11D34 8007EF98 000022AE */   sw        $v0, 0x0($s1)
    /* 3B11D38 8007EF9C 003F033C */  lui        $v1, (0x3F005080 >> 16)
    /* 3B11D3C 8007EFA0 80506334 */  ori        $v1, $v1, (0x3F005080 & 0xFFFF)
    /* 3B11D40 8007EFA4 FF001032 */  andi       $s0, $s0, 0xFF
    /* 3B11D44 8007EFA8 40801000 */  sll        $s0, $s0, 1
    /* 3B11D48 8007EFAC 040022AE */  sw         $v0, 0x4($s1)
    /* 3B11D4C 8007EFB0 5400C3AE */  sw         $v1, 0x54($s6)
    /* 3B11D50 8007EFB4 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3B11D54 8007EFB8 21083000 */  addu       $at, $at, $s0
    /* 3B11D58 8007EFBC 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 3B11D5C 8007EFC0 21200000 */  addu       $a0, $zero, $zero
    /* 3B11D60 8007EFC4 C0100300 */  sll        $v0, $v1, 3
    /* 3B11D64 8007EFC8 21104300 */  addu       $v0, $v0, $v1
    /* 3B11D68 8007EFCC 80100200 */  sll        $v0, $v0, 2
    /* 3B11D6C 8007EFD0 23104300 */  subu       $v0, $v0, $v1
    /* 3B11D70 8007EFD4 83120200 */  sra        $v0, $v0, 10
    /* 3B11D74 8007EFD8 080022AE */  sw         $v0, 0x8($s1)
    /* 3B11D78 8007EFDC 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3B11D7C 8007EFE0 21083000 */  addu       $at, $at, $s0
    /* 3B11D80 8007EFE4 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 3B11D84 8007EFE8 46000524 */  addiu      $a1, $zero, 0x46
    /* 3B11D88 8007EFEC C0100300 */  sll        $v0, $v1, 3
    /* 3B11D8C 8007EFF0 21104300 */  addu       $v0, $v0, $v1
    /* 3B11D90 8007EFF4 80100200 */  sll        $v0, $v0, 2
    /* 3B11D94 8007EFF8 23104300 */  subu       $v0, $v0, $v1
    /* 3B11D98 8007EFFC 83120200 */  sra        $v0, $v0, 10
    /* 3B11D9C 8007F000 63E2000C */  jal        func_8003898C
    /* 3B11DA0 8007F004 0C0022AE */   sw        $v0, 0xC($s1)
    /* 3B11DA4 8007F008 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B11DA8 8007F00C 100022AE */   sw        $v0, 0x10($s1)
  .Llevel_52_8007F010:
    /* 3B11DAC 8007F010 6C6F000C */  jal        func_8001BDB0
    /* 3B11DB0 8007F014 0C008526 */   addiu     $a1, $s4, 0xC
    /* 3B11DB4 8007F018 0E05010C */  jal        func_80041438
    /* 3B11DB8 8007F01C 2120C002 */   addu      $a0, $s6, $zero
    /* 3B11DBC 8007F020 003F023C */  lui        $v0, (0x3F005080 >> 16)
    /* 3B11DC0 8007F024 80504234 */  ori        $v0, $v0, (0x3F005080 & 0xFFFF)
    /* 3B11DC4 8007F028 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 3B11DC8 8007F02C CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 3B11DCC 8007F030 40000424 */  addiu      $a0, $zero, 0x40
    /* 3B11DD0 8007F034 4F00C4A2 */  sb         $a0, 0x4F($s6)
    /* 3B11DD4 8007F038 5400C2AE */  sw         $v0, 0x54($s6)
    /* 3B11DD8 8007F03C 001C0300 */  sll        $v1, $v1, 16
    /* 3B11DDC 8007F040 031D0300 */  sra        $v1, $v1, 20
    /* 3B11DE0 8007F044 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 3B11DE4 8007F048 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B11DE8 8007F04C 4600C3A2 */   sb        $v1, 0x46($s6)
  .Llevel_52_8007F050:
    /* 3B11DEC 8007F050 0E05010C */  jal        func_80041438
    /* 3B11DF0 8007F054 2120C002 */   addu      $a0, $s6, $zero
    /* 3B11DF4 8007F058 02000224 */  addiu      $v0, $zero, 0x2
    /* 3B11DF8 8007F05C 0E008012 */  beqz       $s4, .Llevel_52_8007F098
    /* 3B11DFC 8007F060 5400C2A2 */   sb        $v0, 0x54($s6)
    /* 3B11E00 8007F064 0C00C426 */  addiu      $a0, $s6, 0xC
    /* 3B11E04 8007F068 0000C28E */  lw         $v0, 0x0($s6)
    /* 3B11E08 8007F06C 0C008526 */  addiu      $a1, $s4, 0xC
    /* 3B11E0C 8007F070 6C6F000C */  jal        func_8001BDB0
    /* 3B11E10 8007F074 000054AC */   sw        $s4, 0x0($v0)
    /* 3B11E14 8007F078 0A000224 */  addiu      $v0, $zero, 0xA
    /* 3B11E18 8007F07C 4A00C2A2 */  sb         $v0, 0x4A($s6)
    /* 3B11E1C 8007F080 1400C28E */  lw         $v0, 0x14($s6)
    /* 3B11E20 8007F084 08000324 */  addiu      $v1, $zero, 0x8
    /* 3B11E24 8007F088 4C00C3A2 */  sb         $v1, 0x4C($s6)
    /* 3B11E28 8007F08C 00044224 */  addiu      $v0, $v0, 0x400
    /* 3B11E2C 8007F090 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B11E30 8007F094 1400C2AE */   sw        $v0, 0x14($s6)
  .Llevel_52_8007F098:
    /* 3B11E34 8007F098 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3B11E38 8007F09C 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B11E3C 8007F0A0 1C00C2AE */   sw        $v0, 0x1C($s6)
  .Llevel_52_8007F0A4:
    /* 3B11E40 8007F0A4 0C008526 */  addiu      $a1, $s4, 0xC
    /* 3B11E44 8007F0A8 0000D18E */  lw         $s1, 0x0($s6)
    /* 3B11E48 8007F0AC 20000224 */  addiu      $v0, $zero, 0x20
    /* 3B11E4C 8007F0B0 4C00C2A2 */  sb         $v0, 0x4C($s6)
    /* 3B11E50 8007F0B4 6C6F000C */  jal        func_8001BDB0
    /* 3B11E54 8007F0B8 4E00C2A2 */   sb        $v0, 0x4E($s6)
    /* 3B11E58 8007F0BC 0E05010C */  jal        func_80041438
    /* 3B11E5C 8007F0C0 2120C002 */   addu      $a0, $s6, $zero
    /* 3B11E60 8007F0C4 2C010424 */  addiu      $a0, $zero, 0x12C
    /* 3B11E64 8007F0C8 47E2000C */  jal        func_8003891C
    /* 3B11E68 8007F0CC 00040524 */   addiu     $a1, $zero, 0x400
    /* 3B11E6C 8007F0D0 4B67010C */  jal        func_80059D2C
    /* 3B11E70 8007F0D4 21904000 */   addu      $s2, $v0, $zero
    /* 3B11E74 8007F0D8 5A000424 */  addiu      $a0, $zero, 0x5A
    /* 3B11E78 8007F0DC 78000524 */  addiu      $a1, $zero, 0x78
    /* 3B11E7C 8007F0E0 47E2000C */  jal        func_8003891C
    /* 3B11E80 8007F0E4 FF0F5430 */   andi      $s4, $v0, 0xFFF
    /* 3B11E84 8007F0E8 78000424 */  addiu      $a0, $zero, 0x78
    /* 3B11E88 8007F0EC AA000524 */  addiu      $a1, $zero, 0xAA
    /* 3B11E8C 8007F0F0 47E2000C */  jal        func_8003891C
    /* 3B11E90 8007F0F4 21984000 */   addu      $s3, $v0, $zero
    /* 3B11E94 8007F0F8 21204002 */  addu       $a0, $s2, $zero
    /* 3B11E98 8007F0FC 996D000C */  jal        func_8001B664
    /* 3B11E9C 8007F100 21A84000 */   addu      $s5, $v0, $zero
    /* 3B11EA0 8007F104 21208002 */  addu       $a0, $s4, $zero
    /* 3B11EA4 8007F108 996D000C */  jal        func_8001B664
    /* 3B11EA8 8007F10C 21804000 */   addu      $s0, $v0, $zero
    /* 3B11EAC 8007F110 18005300 */  mult       $v0, $s3
    /* 3B11EB0 8007F114 12400000 */  mflo       $t0
    /* 3B11EB4 8007F118 83811000 */  sra        $s0, $s0, 6
    /* 3B11EB8 8007F11C 00000000 */  nop
    /* 3B11EBC 8007F120 18000802 */  mult       $s0, $t0
    /* 3B11EC0 8007F124 21204002 */  addu       $a0, $s2, $zero
    /* 3B11EC4 8007F128 12400000 */  mflo       $t0
    /* 3B11EC8 8007F12C 83140800 */  sra        $v0, $t0, 18
    /* 3B11ECC 8007F130 996D000C */  jal        func_8001B664
    /* 3B11ED0 8007F134 000022A6 */   sh        $v0, 0x0($s1)
    /* 3B11ED4 8007F138 21208002 */  addu       $a0, $s4, $zero
    /* 3B11ED8 8007F13C 876D000C */  jal        func_8001B61C
    /* 3B11EDC 8007F140 21804000 */   addu      $s0, $v0, $zero
    /* 3B11EE0 8007F144 18005300 */  mult       $v0, $s3
    /* 3B11EE4 8007F148 12400000 */  mflo       $t0
    /* 3B11EE8 8007F14C 83811000 */  sra        $s0, $s0, 6
    /* 3B11EEC 8007F150 00000000 */  nop
    /* 3B11EF0 8007F154 18000802 */  mult       $s0, $t0
    /* 3B11EF4 8007F158 21204002 */  addu       $a0, $s2, $zero
    /* 3B11EF8 8007F15C 12400000 */  mflo       $t0
    /* 3B11EFC 8007F160 83140800 */  sra        $v0, $t0, 18
    /* 3B11F00 8007F164 876D000C */  jal        func_8001B61C
    /* 3B11F04 8007F168 020022A6 */   sh        $v0, 0x2($s1)
    /* 3B11F08 8007F16C 18005500 */  mult       $v0, $s5
    /* 3B11F0C 8007F170 12400000 */  mflo       $t0
    /* 3B11F10 8007F174 03130800 */  sra        $v0, $t0, 12
    /* 3B11F14 8007F178 4B67010C */  jal        func_80059D2C
    /* 3B11F18 8007F17C 040022A6 */   sh        $v0, 0x4($s1)
    /* 3B11F1C 8007F180 4B67010C */  jal        func_80059D2C
    /* 3B11F20 8007F184 4400C2A2 */   sb        $v0, 0x44($s6)
    /* 3B11F24 8007F188 4B67010C */  jal        func_80059D2C
    /* 3B11F28 8007F18C 4500C2A2 */   sb        $v0, 0x45($s6)
    /* 3B11F2C 8007F190 4600C2A2 */  sb         $v0, 0x46($s6)
    /* 3B11F30 8007F194 00002286 */  lh         $v0, 0x0($s1)
    /* 3B11F34 8007F198 0C00C38E */  lw         $v1, 0xC($s6)
    /* 3B11F38 8007F19C 40100200 */  sll        $v0, $v0, 1
    /* 3B11F3C 8007F1A0 21186200 */  addu       $v1, $v1, $v0
    /* 3B11F40 8007F1A4 0C00C3AE */  sw         $v1, 0xC($s6)
    /* 3B11F44 8007F1A8 02002286 */  lh         $v0, 0x2($s1)
    /* 3B11F48 8007F1AC 1000C38E */  lw         $v1, 0x10($s6)
    /* 3B11F4C 8007F1B0 40100200 */  sll        $v0, $v0, 1
    /* 3B11F50 8007F1B4 21186200 */  addu       $v1, $v1, $v0
    /* 3B11F54 8007F1B8 1000C3AE */  sw         $v1, 0x10($s6)
    /* 3B11F58 8007F1BC 04002286 */  lh         $v0, 0x4($s1)
    /* 3B11F5C 8007F1C0 1400C38E */  lw         $v1, 0x14($s6)
    /* 3B11F60 8007F1C4 40100200 */  sll        $v0, $v0, 1
    /* 3B11F64 8007F1C8 21186200 */  addu       $v1, $v1, $v0
    /* 3B11F68 8007F1CC 4B67010C */  jal        func_80059D2C
    /* 3B11F6C 8007F1D0 1400C3AE */   sw        $v1, 0x14($s6)
    /* 3B11F70 8007F1D4 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3B11F74 8007F1D8 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3B11F78 8007F1DC 4B67010C */  jal        func_80059D2C
    /* 3B11F7C 8007F1E0 060022A6 */   sh        $v0, 0x6($s1)
    /* 3B11F80 8007F1E4 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3B11F84 8007F1E8 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3B11F88 8007F1EC 4B67010C */  jal        func_80059D2C
    /* 3B11F8C 8007F1F0 080022A6 */   sh        $v0, 0x8($s1)
    /* 3B11F90 8007F1F4 5A000424 */  addiu      $a0, $zero, 0x5A
    /* 3B11F94 8007F1F8 96000524 */  addiu      $a1, $zero, 0x96
    /* 3B11F98 8007F1FC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3B11F9C 8007F200 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3B11FA0 8007F204 47E2000C */  jal        func_8003891C
    /* 3B11FA4 8007F208 0A0022A6 */   sh        $v0, 0xA($s1)
    /* 3B11FA8 8007F20C 0C0022A6 */  sh         $v0, 0xC($s1)
    /* 3B11FAC 8007F210 01000224 */  addiu      $v0, $zero, 0x1
    /* 3B11FB0 8007F214 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 3B11FB4 8007F218 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B11FB8 8007F21C 120020A6 */   sh        $zero, 0x12($s1)
  .Llevel_52_8007F220:
    /* 3B11FBC 8007F220 0C00C426 */  addiu      $a0, $s6, 0xC
  .Llevel_52_8007F224:
    /* 3B11FC0 8007F224 0C008526 */  addiu      $a1, $s4, 0xC
    /* 3B11FC4 8007F228 0000D38E */  lw         $s3, 0x0($s6)
    /* 3B11FC8 8007F22C 20000224 */  addiu      $v0, $zero, 0x20
    /* 3B11FCC 8007F230 6C6F000C */  jal        func_8001BDB0
    /* 3B11FD0 8007F234 4C00C2A2 */   sb        $v0, 0x4C($s6)
    /* 3B11FD4 8007F238 0E05010C */  jal        func_80041438
    /* 3B11FD8 8007F23C 2120C002 */   addu      $a0, $s6, $zero
    /* 3B11FDC 8007F240 4B67010C */  jal        func_80059D2C
    /* 3B11FE0 8007F244 00000000 */   nop
    /* 3B11FE4 8007F248 4B67010C */  jal        func_80059D2C
    /* 3B11FE8 8007F24C FF0F5230 */   andi      $s2, $v0, 0xFFF
    /* 3B11FEC 8007F250 FF075130 */  andi       $s1, $v0, 0x7FF
    /* 3B11FF0 8007F254 996D000C */  jal        func_8001B664
    /* 3B11FF4 8007F258 21202002 */   addu      $a0, $s1, $zero
    /* 3B11FF8 8007F25C 21204002 */  addu       $a0, $s2, $zero
    /* 3B11FFC 8007F260 996D000C */  jal        func_8001B664
    /* 3B12000 8007F264 21804000 */   addu      $s0, $v0, $zero
    /* 3B12004 8007F268 18000202 */  mult       $s0, $v0
    /* 3B12008 8007F26C 12400000 */  mflo       $t0
    /* 3B1200C 8007F270 49008292 */  lbu        $v0, 0x49($s4)
    /* 3B12010 8007F274 00000000 */  nop
    /* 3B12014 8007F278 18000201 */  mult       $t0, $v0
    /* 3B12018 8007F27C 21202002 */  addu       $a0, $s1, $zero
    /* 3B1201C 8007F280 12400000 */  mflo       $t0
    /* 3B12020 8007F284 03160800 */  sra        $v0, $t0, 24
    /* 3B12024 8007F288 996D000C */  jal        func_8001B664
    /* 3B12028 8007F28C 000062A6 */   sh        $v0, 0x0($s3)
    /* 3B1202C 8007F290 21204002 */  addu       $a0, $s2, $zero
    /* 3B12030 8007F294 876D000C */  jal        func_8001B61C
    /* 3B12034 8007F298 21804000 */   addu      $s0, $v0, $zero
    /* 3B12038 8007F29C 18000202 */  mult       $s0, $v0
    /* 3B1203C 8007F2A0 12400000 */  mflo       $t0
    /* 3B12040 8007F2A4 49008292 */  lbu        $v0, 0x49($s4)
    /* 3B12044 8007F2A8 00000000 */  nop
    /* 3B12048 8007F2AC 18000201 */  mult       $t0, $v0
    /* 3B1204C 8007F2B0 21202002 */  addu       $a0, $s1, $zero
    /* 3B12050 8007F2B4 12400000 */  mflo       $t0
    /* 3B12054 8007F2B8 03160800 */  sra        $v0, $t0, 24
    /* 3B12058 8007F2BC 876D000C */  jal        func_8001B61C
    /* 3B1205C 8007F2C0 020062A6 */   sh        $v0, 0x2($s3)
    /* 3B12060 8007F2C4 49008392 */  lbu        $v1, 0x49($s4)
    /* 3B12064 8007F2C8 00000000 */  nop
    /* 3B12068 8007F2CC 18004300 */  mult       $v0, $v1
    /* 3B1206C 8007F2D0 12400000 */  mflo       $t0
    /* 3B12070 8007F2D4 03130800 */  sra        $v0, $t0, 12
    /* 3B12074 8007F2D8 040062A6 */  sh         $v0, 0x4($s3)
    /* 3B12078 8007F2DC 1800828E */  lw         $v0, 0x18($s4)
    /* 3B1207C 8007F2E0 0200033C */  lui        $v1, (0x20000 >> 16)
    /* 3B12080 8007F2E4 24104300 */  and        $v0, $v0, $v1
    /* 3B12084 8007F2E8 14004010 */  beqz       $v0, .Llevel_52_8007F33C
    /* 3B12088 8007F2EC 04000224 */   addiu     $v0, $zero, 0x4
    /* 3B1208C 8007F2F0 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 3B12090 8007F2F4 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 3B12094 8007F2F8 00000000 */  nop
    /* 3B12098 8007F2FC 03006210 */  beq        $v1, $v0, .Llevel_52_8007F30C
    /* 3B1209C 8007F300 0C000224 */   addiu     $v0, $zero, 0xC
    /* 3B120A0 8007F304 0D006214 */  bne        $v1, $v0, .Llevel_52_8007F33C
    /* 3B120A4 8007F308 00000000 */   nop
  .Llevel_52_8007F30C:
    /* 3B120A8 8007F30C 0780023C */  lui        $v0, %hi(D_8006A084)
    /* 3B120AC 8007F310 84A0428C */  lw         $v0, %lo(D_8006A084)($v0)
    /* 3B120B0 8007F314 00006396 */  lhu        $v1, 0x0($s3)
    /* 3B120B4 8007F318 83110200 */  sra        $v0, $v0, 6
    /* 3B120B8 8007F31C 21186200 */  addu       $v1, $v1, $v0
    /* 3B120BC 8007F320 000063A6 */  sh         $v1, 0x0($s3)
    /* 3B120C0 8007F324 0780023C */  lui        $v0, %hi(D_8006A088)
    /* 3B120C4 8007F328 88A0428C */  lw         $v0, %lo(D_8006A088)($v0)
    /* 3B120C8 8007F32C 02006396 */  lhu        $v1, 0x2($s3)
    /* 3B120CC 8007F330 83110200 */  sra        $v0, $v0, 6
    /* 3B120D0 8007F334 21186200 */  addu       $v1, $v1, $v0
    /* 3B120D4 8007F338 020063A6 */  sh         $v1, 0x2($s3)
  .Llevel_52_8007F33C:
    /* 3B120D8 8007F33C 51008492 */  lbu        $a0, 0x51($s4)
    /* 3B120DC 8007F340 00000000 */  nop
    /* 3B120E0 8007F344 26008010 */  beqz       $a0, .Llevel_52_8007F3E0
    /* 3B120E4 8007F348 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 3B120E8 8007F34C 1800828E */  lw         $v0, 0x18($s4)
    /* 3B120EC 8007F350 00000000 */  nop
    /* 3B120F0 8007F354 24104300 */  and        $v0, $v0, $v1
    /* 3B120F4 8007F358 21004010 */  beqz       $v0, .Llevel_52_8007F3E0
    /* 3B120F8 8007F35C 40100400 */   sll       $v0, $a0, 1
    /* 3B120FC 8007F360 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3B12100 8007F364 21082200 */  addu       $at, $at, $v0
    /* 3B12104 8007F368 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 3B12108 8007F36C 00000000 */  nop
    /* 3B1210C 8007F370 80100300 */  sll        $v0, $v1, 2
    /* 3B12110 8007F374 21104300 */  addu       $v0, $v0, $v1
    /* 3B12114 8007F378 00190200 */  sll        $v1, $v0, 4
    /* 3B12118 8007F37C 23186200 */  subu       $v1, $v1, $v0
    /* 3B1211C 8007F380 00006296 */  lhu        $v0, 0x0($s3)
    /* 3B12120 8007F384 C31A0300 */  sra        $v1, $v1, 11
    /* 3B12124 8007F388 21104300 */  addu       $v0, $v0, $v1
    /* 3B12128 8007F38C 000062A6 */  sh         $v0, 0x0($s3)
    /* 3B1212C 8007F390 51008292 */  lbu        $v0, 0x51($s4)
    /* 3B12130 8007F394 28000424 */  addiu      $a0, $zero, 0x28
    /* 3B12134 8007F398 40100200 */  sll        $v0, $v0, 1
    /* 3B12138 8007F39C 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3B1213C 8007F3A0 21082200 */  addu       $at, $at, $v0
    /* 3B12140 8007F3A4 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 3B12144 8007F3A8 46000524 */  addiu      $a1, $zero, 0x46
    /* 3B12148 8007F3AC 80100300 */  sll        $v0, $v1, 2
    /* 3B1214C 8007F3B0 21104300 */  addu       $v0, $v0, $v1
    /* 3B12150 8007F3B4 00190200 */  sll        $v1, $v0, 4
    /* 3B12154 8007F3B8 23186200 */  subu       $v1, $v1, $v0
    /* 3B12158 8007F3BC 02006296 */  lhu        $v0, 0x2($s3)
    /* 3B1215C 8007F3C0 C31A0300 */  sra        $v1, $v1, 11
    /* 3B12160 8007F3C4 21104300 */  addu       $v0, $v0, $v1
    /* 3B12164 8007F3C8 47E2000C */  jal        func_8003891C
    /* 3B12168 8007F3CC 020062A6 */   sh        $v0, 0x2($s3)
    /* 3B1216C 8007F3D0 04006396 */  lhu        $v1, 0x4($s3)
    /* 3B12170 8007F3D4 00000000 */  nop
    /* 3B12174 8007F3D8 21186200 */  addu       $v1, $v1, $v0
    /* 3B12178 8007F3DC 040063A6 */  sh         $v1, 0x4($s3)
  .Llevel_52_8007F3E0:
    /* 3B1217C 8007F3E0 00006286 */  lh         $v0, 0x0($s3)
    /* 3B12180 8007F3E4 0C00C38E */  lw         $v1, 0xC($s6)
    /* 3B12184 8007F3E8 80100200 */  sll        $v0, $v0, 2
    /* 3B12188 8007F3EC 21186200 */  addu       $v1, $v1, $v0
    /* 3B1218C 8007F3F0 0C00C3AE */  sw         $v1, 0xC($s6)
    /* 3B12190 8007F3F4 02006286 */  lh         $v0, 0x2($s3)
    /* 3B12194 8007F3F8 1000C38E */  lw         $v1, 0x10($s6)
    /* 3B12198 8007F3FC 80100200 */  sll        $v0, $v0, 2
    /* 3B1219C 8007F400 21186200 */  addu       $v1, $v1, $v0
    /* 3B121A0 8007F404 1000C3AE */  sw         $v1, 0x10($s6)
    /* 3B121A4 8007F408 04006286 */  lh         $v0, 0x4($s3)
    /* 3B121A8 8007F40C 1400C38E */  lw         $v1, 0x14($s6)
    /* 3B121AC 8007F410 80100200 */  sll        $v0, $v0, 2
    /* 3B121B0 8007F414 21186200 */  addu       $v1, $v1, $v0
    /* 3B121B4 8007F418 4B67010C */  jal        func_80059D2C
    /* 3B121B8 8007F41C 1400C3AE */   sw        $v1, 0x14($s6)
    /* 3B121BC 8007F420 4B67010C */  jal        func_80059D2C
    /* 3B121C0 8007F424 4500C2A2 */   sb        $v0, 0x45($s6)
    /* 3B121C4 8007F428 4B67010C */  jal        func_80059D2C
    /* 3B121C8 8007F42C 4600C2A2 */   sb        $v0, 0x46($s6)
    /* 3B121CC 8007F430 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3B121D0 8007F434 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3B121D4 8007F438 4B67010C */  jal        func_80059D2C
    /* 3B121D8 8007F43C 060062A6 */   sh        $v0, 0x6($s3)
    /* 3B121DC 8007F440 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3B121E0 8007F444 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3B121E4 8007F448 4B67010C */  jal        func_80059D2C
    /* 3B121E8 8007F44C 080062A6 */   sh        $v0, 0x8($s3)
    /* 3B121EC 8007F450 32000424 */  addiu      $a0, $zero, 0x32
    /* 3B121F0 8007F454 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3B121F4 8007F458 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3B121F8 8007F45C 0A0062A6 */  sh         $v0, 0xA($s3)
    /* 3B121FC 8007F460 1400828E */  lw         $v0, 0x14($s4)
    /* 3B12200 8007F464 50000524 */  addiu      $a1, $zero, 0x50
    /* 3B12204 8007F468 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 3B12208 8007F46C 47E2000C */  jal        func_8003891C
    /* 3B1220C 8007F470 100062AE */   sw        $v0, 0x10($s3)
    /* 3B12210 8007F474 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B12214 8007F478 0C0062AE */   sw        $v0, 0xC($s3)
  .Llevel_52_8007F47C:
    /* 3B12218 8007F47C 0000D08E */  lw         $s0, 0x0($s6)
    /* 3B1221C 8007F480 6C6F000C */  jal        func_8001BDB0
    /* 3B12220 8007F484 0C008526 */   addiu     $a1, $s4, 0xC
    /* 3B12224 8007F488 0E05010C */  jal        func_80041438
    /* 3B12228 8007F48C 2120C002 */   addu      $a0, $s6, $zero
    /* 3B1222C 8007F490 10000224 */  addiu      $v0, $zero, 0x10
    /* 3B12230 8007F494 3B000324 */  addiu      $v1, $zero, 0x3B
    /* 3B12234 8007F498 000002A6 */  sh         $v0, 0x0($s0)
    /* 3B12238 8007F49C 80000224 */  addiu      $v0, $zero, 0x80
    /* 3B1223C 8007F4A0 5700C3A2 */  sb         $v1, 0x57($s6)
    /* 3B12240 8007F4A4 5400C2A2 */  sb         $v0, 0x54($s6)
    /* 3B12244 8007F4A8 5500C2A2 */  sb         $v0, 0x55($s6)
    /* 3B12248 8007F4AC 5600C0A2 */  sb         $zero, 0x56($s6)
    /* 3B1224C 8007F4B0 36008486 */  lh         $a0, 0x36($s4)
    /* 3B12250 8007F4B4 98010224 */  addiu      $v0, $zero, 0x198
    /* 3B12254 8007F4B8 04008210 */  beq        $a0, $v0, .Llevel_52_8007F4CC
    /* 3B12258 8007F4BC 01000224 */   addiu     $v0, $zero, 0x1
    /* 3B1225C 8007F4C0 C2020224 */  addiu      $v0, $zero, 0x2C2
    /* 3B12260 8007F4C4 05008214 */  bne        $a0, $v0, .Llevel_52_8007F4DC
    /* 3B12264 8007F4C8 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_52_8007F4CC:
    /* 3B12268 8007F4CC 020002A2 */  sb         $v0, 0x2($s0)
    /* 3B1226C 8007F4D0 030002A2 */  sb         $v0, 0x3($s0)
    /* 3B12270 8007F4D4 45FD0108 */  j          .Llevel_52_8007F514
    /* 3B12274 8007F4D8 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_52_8007F4DC:
    /* 3B12278 8007F4DC 70020224 */  addiu      $v0, $zero, 0x270
    /* 3B1227C 8007F4E0 0A008214 */  bne        $a0, $v0, .Llevel_52_8007F50C
    /* 3B12280 8007F4E4 60000224 */   addiu     $v0, $zero, 0x60
    /* 3B12284 8007F4E8 02000224 */  addiu      $v0, $zero, 0x2
    /* 3B12288 8007F4EC 020002A2 */  sb         $v0, 0x2($s0)
    /* 3B1228C 8007F4F0 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 3B12290 8007F4F4 5400C2A2 */  sb         $v0, 0x54($s6)
    /* 3B12294 8007F4F8 5500C2A2 */  sb         $v0, 0x55($s6)
    /* 3B12298 8007F4FC 5600C2A2 */  sb         $v0, 0x56($s6)
    /* 3B1229C 8007F500 60000224 */  addiu      $v0, $zero, 0x60
    /* 3B122A0 8007F504 44FD0108 */  j          .Llevel_52_8007F510
    /* 3B122A4 8007F508 5700C3A2 */   sb        $v1, 0x57($s6)
  .Llevel_52_8007F50C:
    /* 3B122A8 8007F50C 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_52_8007F510:
    /* 3B122AC 8007F510 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_52_8007F514:
    /* 3B122B0 8007F514 4F00C2A2 */  sb         $v0, 0x4F($s6)
    /* 3B122B4 8007F518 0C00C426 */  addiu      $a0, $s6, 0xC
    /* 3B122B8 8007F51C 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* 3B122BC 8007F520 AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* 3B122C0 8007F524 21280002 */  addu       $a1, $s0, $zero
    /* 3B122C4 8007F528 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 3B122C8 8007F52C DB6F000C */  jal        func_8001BF6C
    /* 3B122CC 8007F530 4700C2A2 */   sb        $v0, 0x47($s6)
    /* 3B122D0 8007F534 21204000 */  addu       $a0, $v0, $zero
    /* 3B122D4 8007F538 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* 3B122D8 8007F53C B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* 3B122DC 8007F540 1400C58E */  lw         $a1, 0x14($s6)
    /* 3B122E0 8007F544 21300000 */  addu       $a2, $zero, $zero
    /* 3B122E4 8007F548 2E6D000C */  jal        func_8001B4B8
    /* 3B122E8 8007F54C 23284500 */   subu      $a1, $v0, $a1
    /* 3B122EC 8007F550 21300000 */  addu       $a2, $zero, $zero
    /* 3B122F0 8007F554 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 3B122F4 8007F558 4500C2A2 */  sb         $v0, 0x45($s6)
    /* 3B122F8 8007F55C 0000038E */  lw         $v1, 0x0($s0)
    /* 3B122FC 8007F560 0C00C48E */  lw         $a0, 0xC($s6)
    /* 3B12300 8007F564 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* 3B12304 8007F568 B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* 3B12308 8007F56C 1000C58E */  lw         $a1, 0x10($s6)
    /* 3B1230C 8007F570 23206400 */  subu       $a0, $v1, $a0
    /* 3B12310 8007F574 2E6D000C */  jal        func_8001B4B8
    /* 3B12314 8007F578 23284500 */   subu      $a1, $v0, $a1
    /* 3B12318 8007F57C 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B1231C 8007F580 4600C2A2 */   sb        $v0, 0x46($s6)
  .Llevel_52_8007F584:
    /* 3B12320 8007F584 0C00C426 */  addiu      $a0, $s6, 0xC
    /* 3B12324 8007F588 0000D08E */  lw         $s0, 0x0($s6)
    /* 3B12328 8007F58C 6C6F000C */  jal        func_8001BDB0
    /* 3B1232C 8007F590 0C008526 */   addiu     $a1, $s4, 0xC
    /* 3B12330 8007F594 0E05010C */  jal        func_80041438
    /* 3B12334 8007F598 2120C002 */   addu      $a0, $s6, $zero
    /* 3B12338 8007F59C 10000224 */  addiu      $v0, $zero, 0x10
    /* 3B1233C 8007F5A0 000002AE */  sw         $v0, 0x0($s0)
    /* 3B12340 8007F5A4 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 3B12344 8007F5A8 5700C2A2 */  sb         $v0, 0x57($s6)
    /* 3B12348 8007F5AC 80000224 */  addiu      $v0, $zero, 0x80
    /* 3B1234C 8007F5B0 5400C2A2 */  sb         $v0, 0x54($s6)
    /* 3B12350 8007F5B4 40000224 */  addiu      $v0, $zero, 0x40
    /* 3B12354 8007F5B8 5500C2A2 */  sb         $v0, 0x55($s6)
    /* 3B12358 8007F5BC 4B67010C */  jal        func_80059D2C
    /* 3B1235C 8007F5C0 5600C0A2 */   sb        $zero, 0x56($s6)
    /* 3B12360 8007F5C4 4B67010C */  jal        func_80059D2C
    /* 3B12364 8007F5C8 4500C2A2 */   sb        $v0, 0x45($s6)
    /* 3B12368 8007F5CC 4600C2A2 */  sb         $v0, 0x46($s6)
    /* 3B1236C 8007F5D0 46000224 */  addiu      $v0, $zero, 0x46
    /* 3B12370 8007F5D4 4F00C2A2 */  sb         $v0, 0x4F($s6)
    /* 3B12374 8007F5D8 04000224 */  addiu      $v0, $zero, 0x4
    /* 3B12378 8007F5DC 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B1237C 8007F5E0 4700C2A2 */   sb        $v0, 0x47($s6)
  .Llevel_52_8007F5E4:
    /* 3B12380 8007F5E4 0000D28E */  lw         $s2, 0x0($s6)
    /* 3B12384 8007F5E8 0E05010C */  jal        func_80041438
    /* 3B12388 8007F5EC 2120C002 */   addu      $a0, $s6, $zero
    /* 3B1238C 8007F5F0 40000224 */  addiu      $v0, $zero, 0x40
    /* 3B12390 8007F5F4 4C00C2A2 */  sb         $v0, 0x4C($s6)
    /* 3B12394 8007F5F8 98008016 */  bnez       $s4, .Llevel_52_8007F85C
    /* 3B12398 8007F5FC 4E00C2A2 */   sb        $v0, 0x4E($s6)
    /* 3B1239C 8007F600 B8010224 */  addiu      $v0, $zero, 0x1B8
    /* 3B123A0 8007F604 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* 3B123A4 8007F608 D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* 3B123A8 8007F60C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3B123AC 8007F610 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3B123B0 8007F614 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B123B4 8007F618 0000A38C */  lw         $v1, 0x0($a1)
    /* 3B123B8 8007F61C 07000224 */  addiu      $v0, $zero, 0x7
    /* 3B123BC 8007F620 25006214 */  bne        $v1, $v0, .Llevel_52_8007F6B8
    /* 3B123C0 8007F624 0C00C426 */   addiu     $a0, $s6, 0xC
    /* 3B123C4 8007F628 0C00D026 */  addiu      $s0, $s6, 0xC
    /* 3B123C8 8007F62C 21200002 */  addu       $a0, $s0, $zero
    /* 3B123CC 8007F630 6C6F000C */  jal        func_8001BDB0
    /* 3B123D0 8007F634 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 3B123D4 8007F638 4000A427 */  addiu      $a0, $sp, 0x40
    /* 3B123D8 8007F63C 2000B127 */  addiu      $s1, $sp, 0x20
    /* 3B123DC 8007F640 21282002 */  addu       $a1, $s1, $zero
    /* 3B123E0 8007F644 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 3B123E4 8007F648 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 3B123E8 8007F64C 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* 3B123EC 8007F650 CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* 3B123F0 8007F654 21300000 */  addu       $a2, $zero, $zero
    /* 3B123F4 8007F658 4000A0A3 */  sb         $zero, 0x40($sp)
    /* 3B123F8 8007F65C 02190300 */  srl        $v1, $v1, 4
    /* 3B123FC 8007F660 00140200 */  sll        $v0, $v0, 16
    /* 3B12400 8007F664 03150200 */  sra        $v0, $v0, 20
    /* 3B12404 8007F668 23100200 */  negu       $v0, $v0
    /* 3B12408 8007F66C 4100A2A3 */  sb         $v0, 0x41($sp)
    /* 3B1240C 8007F670 B26D000C */  jal        func_8001B6C8
    /* 3B12410 8007F674 4200A3A3 */   sb        $v1, 0x42($sp)
    /* 3B12414 8007F678 21202002 */  addu       $a0, $s1, $zero
    /* 3B12418 8007F67C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3B1241C 8007F680 696E000C */  jal        func_8001B9A4
    /* 3B12420 8007F684 2130A000 */   addu      $a2, $a1, $zero
    /* 3B12424 8007F688 21200002 */  addu       $a0, $s0, $zero
    /* 3B12428 8007F68C 21280002 */  addu       $a1, $s0, $zero
    /* 3B1242C 8007F690 736F000C */  jal        func_8001BDCC
    /* 3B12430 8007F694 1000A627 */   addiu     $a2, $sp, 0x10
    /* 3B12434 8007F698 21200002 */  addu       $a0, $s0, $zero
    /* 3B12438 8007F69C 21280002 */  addu       $a1, $s0, $zero
    /* 3B1243C 8007F6A0 736F000C */  jal        func_8001BDCC
    /* 3B12440 8007F6A4 1000A627 */   addiu     $a2, $sp, 0x10
    /* 3B12444 8007F6A8 21200002 */  addu       $a0, $s0, $zero
    /* 3B12448 8007F6AC 21288000 */  addu       $a1, $a0, $zero
    /* 3B1244C 8007F6B0 D6FD0108 */  j          .Llevel_52_8007F758
    /* 3B12450 8007F6B4 1000A627 */   addiu     $a2, $sp, 0x10
  .Llevel_52_8007F6B8:
    /* 3B12454 8007F6B8 6C6F000C */  jal        func_8001BDB0
    /* 3B12458 8007F6BC DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 3B1245C 8007F6C0 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 3B12460 8007F6C4 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 3B12464 8007F6C8 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 3B12468 8007F6CC B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 3B1246C 8007F6D0 6800A0A3 */  sb         $zero, 0x68($sp)
    /* 3B12470 8007F6D4 07004014 */  bnez       $v0, .Llevel_52_8007F6F4
    /* 3B12474 8007F6D8 6900A3A3 */   sb        $v1, 0x69($sp)
    /* 3B12478 8007F6DC FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 3B1247C 8007F6E0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3B12480 8007F6E4 F900422C */  sltiu      $v0, $v0, 0xF9
    /* 3B12484 8007F6E8 03004014 */  bnez       $v0, .Llevel_52_8007F6F8
    /* 3B12488 8007F6EC 6800A427 */   addiu     $a0, $sp, 0x68
    /* 3B1248C 8007F6F0 6900A0A3 */  sb         $zero, 0x69($sp)
  .Llevel_52_8007F6F4:
    /* 3B12490 8007F6F4 6800A427 */  addiu      $a0, $sp, 0x68
  .Llevel_52_8007F6F8:
    /* 3B12494 8007F6F8 4800B027 */  addiu      $s0, $sp, 0x48
    /* 3B12498 8007F6FC 21280002 */  addu       $a1, $s0, $zero
    /* 3B1249C 8007F700 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* 3B124A0 8007F704 FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* 3B124A4 8007F708 00002292 */  lbu        $v0, 0x0($s1)
    /* 3B124A8 8007F70C 21300000 */  addu       $a2, $zero, $zero
    /* 3B124AC 8007F710 B26D000C */  jal        func_8001B6C8
    /* 3B124B0 8007F714 6A00A2A3 */   sb        $v0, 0x6A($sp)
    /* 3B124B4 8007F718 21200002 */  addu       $a0, $s0, $zero
    /* 3B124B8 8007F71C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3B124BC 8007F720 696E000C */  jal        func_8001B9A4
    /* 3B124C0 8007F724 2130A000 */   addu      $a2, $a1, $zero
    /* 3B124C4 8007F728 21200002 */  addu       $a0, $s0, $zero
    /* 3B124C8 8007F72C 0C00D026 */  addiu      $s0, $s6, 0xC
    /* 3B124CC 8007F730 21280002 */  addu       $a1, $s0, $zero
    /* 3B124D0 8007F734 21300002 */  addu       $a2, $s0, $zero
    /* 3B124D4 8007F738 F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 3B124D8 8007F73C 0C00C2AE */  sw         $v0, 0xC($s6)
    /* 3B124DC 8007F740 1000C0AE */  sw         $zero, 0x10($s6)
    /* 3B124E0 8007F744 696E000C */  jal        func_8001B9A4
    /* 3B124E4 8007F748 1400C0AE */   sw        $zero, 0x14($s6)
    /* 3B124E8 8007F74C 21200002 */  addu       $a0, $s0, $zero
    /* 3B124EC 8007F750 21288000 */  addu       $a1, $a0, $zero
    /* 3B124F0 8007F754 F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_52_8007F758:
    /* 3B124F4 8007F758 736F000C */  jal        func_8001BDCC
    /* 3B124F8 8007F75C 00000000 */   nop
    /* 3B124FC 8007F760 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B12500 8007F764 886E000C */  jal        func_8001BA20
    /* 3B12504 8007F768 21280000 */   addu      $a1, $zero, $zero
    /* 3B12508 8007F76C 21204000 */  addu       $a0, $v0, $zero
    /* 3B1250C 8007F770 1800A58F */  lw         $a1, 0x18($sp)
    /* 3B12510 8007F774 2E6D000C */  jal        func_8001B4B8
    /* 3B12514 8007F778 21300000 */   addu      $a2, $zero, $zero
    /* 3B12518 8007F77C 4500C2A2 */  sb         $v0, 0x45($s6)
    /* 3B1251C 8007F780 1000A48F */  lw         $a0, 0x10($sp)
    /* 3B12520 8007F784 1400A58F */  lw         $a1, 0x14($sp)
    /* 3B12524 8007F788 2E6D000C */  jal        func_8001B4B8
    /* 3B12528 8007F78C 21300000 */   addu      $a2, $zero, $zero
    /* 3B1252C 8007F790 4600C2A2 */  sb         $v0, 0x46($s6)
    /* 3B12530 8007F794 1000A28F */  lw         $v0, 0x10($sp)
    /* 3B12534 8007F798 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 3B12538 8007F79C 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 3B1253C 8007F7A0 0680043C */  lui        $a0, %hi(D_800670BC)
    /* 3B12540 8007F7A4 BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* 3B12544 8007F7A8 000042A6 */  sh         $v0, 0x0($s2)
    /* 3B12548 8007F7AC 1400A28F */  lw         $v0, 0x14($sp)
    /* 3B1254C 8007F7B0 00000000 */  nop
    /* 3B12550 8007F7B4 020042A6 */  sh         $v0, 0x2($s2)
    /* 3B12554 8007F7B8 1800A28F */  lw         $v0, 0x18($sp)
    /* 3B12558 8007F7BC 00000000 */  nop
    /* 3B1255C 8007F7C0 040042A6 */  sh         $v0, 0x4($s2)
    /* 3B12560 8007F7C4 2B106400 */  sltu       $v0, $v1, $a0
    /* 3B12564 8007F7C8 0A004010 */  beqz       $v0, .Llevel_52_8007F7F4
    /* 3B12568 8007F7CC 44010524 */   addiu     $a1, $zero, 0x144
    /* 3B1256C 8007F7D0 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_52_8007F7D4:
    /* 3B12570 8007F7D4 36006284 */  lh         $v0, 0x36($v1)
    /* 3B12574 8007F7D8 00000000 */  nop
    /* 3B12578 8007F7DC 05004610 */  beq        $v0, $a2, .Llevel_52_8007F7F4
    /* 3B1257C 8007F7E0 00000000 */   nop
    /* 3B12580 8007F7E4 58006324 */  addiu      $v1, $v1, 0x58
    /* 3B12584 8007F7E8 2B106400 */  sltu       $v0, $v1, $a0
    /* 3B12588 8007F7EC F9FF4014 */  bnez       $v0, .Llevel_52_8007F7D4
    /* 3B1258C 8007F7F0 00000000 */   nop
  .Llevel_52_8007F7F4:
    /* 3B12590 8007F7F4 13006010 */  beqz       $v1, .Llevel_52_8007F844
    /* 3B12594 8007F7F8 40100500 */   sll       $v0, $a1, 1
    /* 3B12598 8007F7FC 0000678C */  lw         $a3, 0x0($v1)
    /* 3B1259C 8007F800 21104500 */  addu       $v0, $v0, $a1
    /* 3B125A0 8007F804 0000E38C */  lw         $v1, 0x0($a3)
    /* 3B125A4 8007F808 40100200 */  sll        $v0, $v0, 1
    /* 3B125A8 8007F80C 21186500 */  addu       $v1, $v1, $a1
    /* 3B125AC 8007F810 0000E3AC */  sw         $v1, 0x0($a3)
    /* 3B125B0 8007F814 2A186200 */  slt        $v1, $v1, $v0
    /* 3B125B4 8007F818 02006014 */  bnez       $v1, .Llevel_52_8007F824
    /* 3B125B8 8007F81C 10004426 */   addiu     $a0, $s2, 0x10
    /* 3B125BC 8007F820 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_52_8007F824:
    /* 3B125C0 8007F824 0400E524 */  addiu      $a1, $a3, 0x4
    /* 3B125C4 8007F828 0000E28C */  lw         $v0, 0x0($a3)
    /* 3B125C8 8007F82C 08000624 */  addiu      $a2, $zero, 0x8
    /* 3B125CC 8007F830 0C004224 */  addiu      $v0, $v0, 0xC
    /* 3B125D0 8007F834 2110E200 */  addu       $v0, $a3, $v0
    /* 3B125D4 8007F838 080042AE */  sw         $v0, 0x8($s2)
    /* 3B125D8 8007F83C 036D000C */  jal        func_8001B40C
    /* 3B125DC 8007F840 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_52_8007F844:
    /* 3B125E0 8007F844 2120C002 */  addu       $a0, $s6, $zero
    /* 3B125E4 8007F848 21280000 */  addu       $a1, $zero, $zero
    /* 3B125E8 8007F84C 21300000 */  addu       $a2, $zero, $zero
    /* 3B125EC 8007F850 6E000224 */  addiu      $v0, $zero, 0x6E
    /* 3B125F0 8007F854 F2FE0108 */  j          .Llevel_52_8007FBC8
    /* 3B125F4 8007F858 070042A2 */   sb        $v0, 0x7($s2)
  .Llevel_52_8007F85C:
    /* 3B125F8 8007F85C 0C00C426 */  addiu      $a0, $s6, 0xC
    /* 3B125FC 8007F860 6C6F000C */  jal        func_8001BDB0
    /* 3B12600 8007F864 0C008526 */   addiu     $a1, $s4, 0xC
    /* 3B12604 8007F868 30000224 */  addiu      $v0, $zero, 0x30
    /* 3B12608 8007F86C 070042A2 */  sb         $v0, 0x7($s2)
    /* 3B1260C 8007F870 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 3B12610 8007F874 4F00C2A2 */  sb         $v0, 0x4F($s6)
    /* 3B12614 8007F878 07004392 */  lbu        $v1, 0x7($s2)
    /* 3B12618 8007F87C 00000000 */  nop
    /* 3B1261C 8007F880 40100300 */  sll        $v0, $v1, 1
    /* 3B12620 8007F884 21104300 */  addu       $v0, $v0, $v1
    /* 3B12624 8007F888 43100200 */  sra        $v0, $v0, 1
    /* 3B12628 8007F88C 5400C2A2 */  sb         $v0, 0x54($s6)
    /* 3B1262C 8007F890 07004392 */  lbu        $v1, 0x7($s2)
    /* 3B12630 8007F894 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 3B12634 8007F898 5600C0A2 */  sb         $zero, 0x56($s6)
    /* 3B12638 8007F89C 5700C2A2 */  sb         $v0, 0x57($s6)
    /* 3B1263C 8007F8A0 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B12640 8007F8A4 5500C3A2 */   sb        $v1, 0x55($s6)
  .Llevel_52_8007F8A8:
    /* 3B12644 8007F8A8 0C00C426 */  addiu      $a0, $s6, 0xC
    /* 3B12648 8007F8AC 0000D08E */  lw         $s0, 0x0($s6)
    /* 3B1264C 8007F8B0 6C6F000C */  jal        func_8001BDB0
    /* 3B12650 8007F8B4 0C008526 */   addiu     $a1, $s4, 0xC
    /* 3B12654 8007F8B8 0E05010C */  jal        func_80041438
    /* 3B12658 8007F8BC 2120C002 */   addu      $a0, $s6, $zero
    /* 3B1265C 8007F8C0 18000224 */  addiu      $v0, $zero, 0x18
    /* 3B12660 8007F8C4 000002AE */  sw         $v0, 0x0($s0)
    /* 3B12664 8007F8C8 30000224 */  addiu      $v0, $zero, 0x30
    /* 3B12668 8007F8CC 5700C2A2 */  sb         $v0, 0x57($s6)
    /* 3B1266C 8007F8D0 64000224 */  addiu      $v0, $zero, 0x64
    /* 3B12670 8007F8D4 5400C0A2 */  sb         $zero, 0x54($s6)
    /* 3B12674 8007F8D8 5500C0A2 */  sb         $zero, 0x55($s6)
    /* 3B12678 8007F8DC 5600C0A2 */  sb         $zero, 0x56($s6)
    /* 3B1267C 8007F8E0 4F00C2A2 */  sb         $v0, 0x4F($s6)
    /* 3B12680 8007F8E4 4B67010C */  jal        func_80059D2C
    /* 3B12684 8007F8E8 4700C0A2 */   sb        $zero, 0x47($s6)
    /* 3B12688 8007F8EC 4B67010C */  jal        func_80059D2C
    /* 3B1268C 8007F8F0 4500C2A2 */   sb        $v0, 0x45($s6)
    /* 3B12690 8007F8F4 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B12694 8007F8F8 4600C2A2 */   sb        $v0, 0x46($s6)
  .Llevel_52_8007F8FC:
    /* 3B12698 8007F8FC 0C00C426 */  addiu      $a0, $s6, 0xC
    /* 3B1269C 8007F900 0C008526 */  addiu      $a1, $s4, 0xC
    /* 3B126A0 8007F904 0000D28E */  lw         $s2, 0x0($s6)
    /* 3B126A4 8007F908 20000224 */  addiu      $v0, $zero, 0x20
    /* 3B126A8 8007F90C 4C00C2A2 */  sb         $v0, 0x4C($s6)
    /* 3B126AC 8007F910 6C6F000C */  jal        func_8001BDB0
    /* 3B126B0 8007F914 4E00C2A2 */   sb        $v0, 0x4E($s6)
    /* 3B126B4 8007F918 0E05010C */  jal        func_80041438
    /* 3B126B8 8007F91C 2120C002 */   addu      $a0, $s6, $zero
    /* 3B126BC 8007F920 21200000 */  addu       $a0, $zero, $zero
    /* 3B126C0 8007F924 47E2000C */  jal        func_8003891C
    /* 3B126C4 8007F928 FF030524 */   addiu     $a1, $zero, 0x3FF
    /* 3B126C8 8007F92C 21200000 */  addu       $a0, $zero, $zero
    /* 3B126CC 8007F930 18000524 */  addiu      $a1, $zero, 0x18
    /* 3B126D0 8007F934 63E2000C */  jal        func_8003898C
    /* 3B126D4 8007F938 21984000 */   addu      $s3, $v0, $zero
    /* 3B126D8 8007F93C 4600D192 */  lbu        $s1, 0x46($s6)
    /* 3B126DC 8007F940 21206002 */  addu       $a0, $s3, $zero
    /* 3B126E0 8007F944 21882202 */  addu       $s1, $s1, $v0
    /* 3B126E4 8007F948 FF003132 */  andi       $s1, $s1, 0xFF
    /* 3B126E8 8007F94C 996D000C */  jal        func_8001B664
    /* 3B126EC 8007F950 00891100 */   sll       $s1, $s1, 4
    /* 3B126F0 8007F954 21202002 */  addu       $a0, $s1, $zero
    /* 3B126F4 8007F958 996D000C */  jal        func_8001B664
    /* 3B126F8 8007F95C 21804000 */   addu      $s0, $v0, $zero
    /* 3B126FC 8007F960 F0001424 */  addiu      $s4, $zero, 0xF0
    /* 3B12700 8007F964 18005400 */  mult       $v0, $s4
    /* 3B12704 8007F968 12400000 */  mflo       $t0
    /* 3B12708 8007F96C 83811000 */  sra        $s0, $s0, 6
    /* 3B1270C 8007F970 00000000 */  nop
    /* 3B12710 8007F974 18000802 */  mult       $s0, $t0
    /* 3B12714 8007F978 21206002 */  addu       $a0, $s3, $zero
    /* 3B12718 8007F97C 12400000 */  mflo       $t0
    /* 3B1271C 8007F980 83140800 */  sra        $v0, $t0, 18
    /* 3B12720 8007F984 996D000C */  jal        func_8001B664
    /* 3B12724 8007F988 000042A6 */   sh        $v0, 0x0($s2)
    /* 3B12728 8007F98C 21202002 */  addu       $a0, $s1, $zero
    /* 3B1272C 8007F990 876D000C */  jal        func_8001B61C
    /* 3B12730 8007F994 21804000 */   addu      $s0, $v0, $zero
    /* 3B12734 8007F998 18005400 */  mult       $v0, $s4
    /* 3B12738 8007F99C 12400000 */  mflo       $t0
    /* 3B1273C 8007F9A0 83811000 */  sra        $s0, $s0, 6
    /* 3B12740 8007F9A4 00000000 */  nop
    /* 3B12744 8007F9A8 18000802 */  mult       $s0, $t0
    /* 3B12748 8007F9AC 21206002 */  addu       $a0, $s3, $zero
    /* 3B1274C 8007F9B0 12400000 */  mflo       $t0
    /* 3B12750 8007F9B4 83140800 */  sra        $v0, $t0, 18
    /* 3B12754 8007F9B8 876D000C */  jal        func_8001B61C
    /* 3B12758 8007F9BC 020042A6 */   sh        $v0, 0x2($s2)
    /* 3B1275C 8007F9C0 64000324 */  addiu      $v1, $zero, 0x64
    /* 3B12760 8007F9C4 18004300 */  mult       $v0, $v1
    /* 3B12764 8007F9C8 12400000 */  mflo       $t0
    /* 3B12768 8007F9CC 03130800 */  sra        $v0, $t0, 12
    /* 3B1276C 8007F9D0 040042A6 */  sh         $v0, 0x4($s2)
    /* 3B12770 8007F9D4 4400C0A2 */  sb         $zero, 0x44($s6)
    /* 3B12774 8007F9D8 4500C0A2 */  sb         $zero, 0x45($s6)
    /* 3B12778 8007F9DC 4600C0A2 */  sb         $zero, 0x46($s6)
    /* 3B1277C 8007F9E0 00004286 */  lh         $v0, 0x0($s2)
    /* 3B12780 8007F9E4 0C00C38E */  lw         $v1, 0xC($s6)
    /* 3B12784 8007F9E8 40100200 */  sll        $v0, $v0, 1
    /* 3B12788 8007F9EC 21186200 */  addu       $v1, $v1, $v0
    /* 3B1278C 8007F9F0 0C00C3AE */  sw         $v1, 0xC($s6)
    /* 3B12790 8007F9F4 02004286 */  lh         $v0, 0x2($s2)
    /* 3B12794 8007F9F8 1000C38E */  lw         $v1, 0x10($s6)
    /* 3B12798 8007F9FC 40100200 */  sll        $v0, $v0, 1
    /* 3B1279C 8007FA00 21186200 */  addu       $v1, $v1, $v0
    /* 3B127A0 8007FA04 1000C3AE */  sw         $v1, 0x10($s6)
    /* 3B127A4 8007FA08 04004286 */  lh         $v0, 0x4($s2)
    /* 3B127A8 8007FA0C 1400C38E */  lw         $v1, 0x14($s6)
    /* 3B127AC 8007FA10 40100200 */  sll        $v0, $v0, 1
    /* 3B127B0 8007FA14 21186200 */  addu       $v1, $v1, $v0
    /* 3B127B4 8007FA18 4B67010C */  jal        func_80059D2C
    /* 3B127B8 8007FA1C 1400C3AE */   sw        $v1, 0x14($s6)
    /* 3B127BC 8007FA20 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3B127C0 8007FA24 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3B127C4 8007FA28 4B67010C */  jal        func_80059D2C
    /* 3B127C8 8007FA2C 060042A6 */   sh        $v0, 0x6($s2)
    /* 3B127CC 8007FA30 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3B127D0 8007FA34 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3B127D4 8007FA38 4B67010C */  jal        func_80059D2C
    /* 3B127D8 8007FA3C 080042A6 */   sh        $v0, 0x8($s2)
    /* 3B127DC 8007FA40 5A000424 */  addiu      $a0, $zero, 0x5A
    /* 3B127E0 8007FA44 82000524 */  addiu      $a1, $zero, 0x82
    /* 3B127E4 8007FA48 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3B127E8 8007FA4C F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3B127EC 8007FA50 47E2000C */  jal        func_8003891C
    /* 3B127F0 8007FA54 0A0042A6 */   sh        $v0, 0xA($s2)
    /* 3B127F4 8007FA58 0C0042A6 */  sh         $v0, 0xC($s2)
    /* 3B127F8 8007FA5C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3B127FC 8007FA60 0E0042A6 */  sh         $v0, 0xE($s2)
    /* 3B12800 8007FA64 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B12804 8007FA68 120040A6 */   sh        $zero, 0x12($s2)
  .Llevel_52_8007FA6C:
    /* 3B12808 8007FA6C 0000D28E */  lw         $s2, 0x0($s6)
    /* 3B1280C 8007FA70 0E05010C */  jal        func_80041438
    /* 3B12810 8007FA74 2120C002 */   addu      $a0, $s6, $zero
    /* 3B12814 8007FA78 58008016 */  bnez       $s4, .Llevel_52_8007FBDC
    /* 3B12818 8007FA7C 0C00C426 */   addiu     $a0, $s6, 0xC
    /* 3B1281C 8007FA80 0C00D326 */  addiu      $s3, $s6, 0xC
    /* 3B12820 8007FA84 21206002 */  addu       $a0, $s3, $zero
    /* 3B12824 8007FA88 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 3B12828 8007FA8C A4CA000C */  jal        func_80032A90
    /* 3B1282C 8007FA90 4F00C2A2 */   sb        $v0, 0x4F($s6)
    /* 3B12830 8007FA94 90010224 */  addiu      $v0, $zero, 0x190
    /* 3B12834 8007FA98 0680113C */  lui        $s1, %hi(D_80067ED0)
    /* 3B12838 8007FA9C D07E3126 */  addiu      $s1, $s1, %lo(D_80067ED0)
    /* 3B1283C 8007FAA0 000042AE */  sw         $v0, 0x0($s2)
    /* 3B12840 8007FAA4 040040AE */  sw         $zero, 0x4($s2)
    /* 3B12844 8007FAA8 080040AE */  sw         $zero, 0x8($s2)
    /* 3B12848 8007FAAC 0000238E */  lw         $v1, 0x0($s1)
    /* 3B1284C 8007FAB0 07000224 */  addiu      $v0, $zero, 0x7
    /* 3B12850 8007FAB4 2E006214 */  bne        $v1, $v0, .Llevel_52_8007FB70
    /* 3B12854 8007FAB8 21284002 */   addu      $a1, $s2, $zero
    /* 3B12858 8007FABC 7000B027 */  addiu      $s0, $sp, 0x70
    /* 3B1285C 8007FAC0 21200002 */  addu       $a0, $s0, $zero
    /* 3B12860 8007FAC4 6C6F000C */  jal        func_8001BDB0
    /* 3B12864 8007FAC8 21284002 */   addu      $a1, $s2, $zero
    /* 3B12868 8007FACC 21206002 */  addu       $a0, $s3, $zero
    /* 3B1286C 8007FAD0 6C6F000C */  jal        func_8001BDB0
    /* 3B12870 8007FAD4 DCFF2526 */   addiu     $a1, $s1, -0x24
    /* 3B12874 8007FAD8 6800A427 */  addiu      $a0, $sp, 0x68
    /* 3B12878 8007FADC 2000B127 */  addiu      $s1, $sp, 0x20
    /* 3B1287C 8007FAE0 21282002 */  addu       $a1, $s1, $zero
    /* 3B12880 8007FAE4 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 3B12884 8007FAE8 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 3B12888 8007FAEC 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* 3B1288C 8007FAF0 CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* 3B12890 8007FAF4 21300000 */  addu       $a2, $zero, $zero
    /* 3B12894 8007FAF8 6800A0A3 */  sb         $zero, 0x68($sp)
    /* 3B12898 8007FAFC 02190300 */  srl        $v1, $v1, 4
    /* 3B1289C 8007FB00 00140200 */  sll        $v0, $v0, 16
    /* 3B128A0 8007FB04 03150200 */  sra        $v0, $v0, 20
    /* 3B128A4 8007FB08 23100200 */  negu       $v0, $v0
    /* 3B128A8 8007FB0C 6900A2A3 */  sb         $v0, 0x69($sp)
    /* 3B128AC 8007FB10 B26D000C */  jal        func_8001B6C8
    /* 3B128B0 8007FB14 6A00A3A3 */   sb        $v1, 0x6A($sp)
    /* 3B128B4 8007FB18 21202002 */  addu       $a0, $s1, $zero
    /* 3B128B8 8007FB1C 21280002 */  addu       $a1, $s0, $zero
    /* 3B128BC 8007FB20 696E000C */  jal        func_8001B9A4
    /* 3B128C0 8007FB24 21300002 */   addu      $a2, $s0, $zero
    /* 3B128C4 8007FB28 21206002 */  addu       $a0, $s3, $zero
    /* 3B128C8 8007FB2C 21286002 */  addu       $a1, $s3, $zero
    /* 3B128CC 8007FB30 736F000C */  jal        func_8001BDCC
    /* 3B128D0 8007FB34 21300002 */   addu      $a2, $s0, $zero
    /* 3B128D4 8007FB38 21206002 */  addu       $a0, $s3, $zero
    /* 3B128D8 8007FB3C 21286002 */  addu       $a1, $s3, $zero
    /* 3B128DC 8007FB40 736F000C */  jal        func_8001BDCC
    /* 3B128E0 8007FB44 21300002 */   addu      $a2, $s0, $zero
    /* 3B128E4 8007FB48 21206002 */  addu       $a0, $s3, $zero
    /* 3B128E8 8007FB4C 21288000 */  addu       $a1, $a0, $zero
    /* 3B128EC 8007FB50 736F000C */  jal        func_8001BDCC
    /* 3B128F0 8007FB54 21300002 */   addu      $a2, $s0, $zero
    /* 3B128F4 8007FB58 6900A293 */  lbu        $v0, 0x69($sp)
    /* 3B128F8 8007FB5C 00000000 */  nop
    /* 3B128FC 8007FB60 110042A2 */  sb         $v0, 0x11($s2)
    /* 3B12900 8007FB64 6A00A293 */  lbu        $v0, 0x6A($sp)
    /* 3B12904 8007FB68 EDFE0108 */  j          .Llevel_52_8007FBB4
    /* 3B12908 8007FB6C 120042A2 */   sb        $v0, 0x12($s2)
  .Llevel_52_8007FB70:
    /* 3B1290C 8007FB70 0780043C */  lui        $a0, %hi(D_8006A18C)
    /* 3B12910 8007FB74 8CA18424 */  addiu      $a0, $a0, %lo(D_8006A18C)
    /* 3B12914 8007FB78 696E000C */  jal        func_8001B9A4
    /* 3B12918 8007FB7C 21304002 */   addu      $a2, $s2, $zero
    /* 3B1291C 8007FB80 21204002 */  addu       $a0, $s2, $zero
    /* 3B12920 8007FB84 886E000C */  jal        func_8001BA20
    /* 3B12924 8007FB88 21280000 */   addu      $a1, $zero, $zero
    /* 3B12928 8007FB8C 21204000 */  addu       $a0, $v0, $zero
    /* 3B1292C 8007FB90 0800458E */  lw         $a1, 0x8($s2)
    /* 3B12930 8007FB94 2E6D000C */  jal        func_8001B4B8
    /* 3B12934 8007FB98 21300000 */   addu      $a2, $zero, $zero
    /* 3B12938 8007FB9C 0000448E */  lw         $a0, 0x0($s2)
    /* 3B1293C 8007FBA0 0400458E */  lw         $a1, 0x4($s2)
    /* 3B12940 8007FBA4 21300000 */  addu       $a2, $zero, $zero
    /* 3B12944 8007FBA8 2E6D000C */  jal        func_8001B4B8
    /* 3B12948 8007FBAC 110042A2 */   sb        $v0, 0x11($s2)
    /* 3B1294C 8007FBB0 120042A2 */  sb         $v0, 0x12($s2)
  .Llevel_52_8007FBB4:
    /* 3B12950 8007FBB4 2120C002 */  addu       $a0, $s6, $zero
    /* 3B12954 8007FBB8 21280000 */  addu       $a1, $zero, $zero
    /* 3B12958 8007FBBC 21300000 */  addu       $a2, $zero, $zero
    /* 3B1295C 8007FBC0 B4000224 */  addiu      $v0, $zero, 0xB4
    /* 3B12960 8007FBC4 0C0042A6 */  sh         $v0, 0xC($s2)
  .Llevel_52_8007FBC8:
    /* 3B12964 8007FBC8 01000224 */  addiu      $v0, $zero, 0x1
    /* 3B12968 8007FBCC 9241010C */  jal        func_80050648
    /* 3B1296C 8007FBD0 4B00C2A2 */   sb        $v0, 0x4B($s6)
    /* 3B12970 8007FBD4 14FF0108 */  j          .Llevel_52_8007FC50
    /* 3B12974 8007FBD8 2110C002 */   addu      $v0, $s6, $zero
  .Llevel_52_8007FBDC:
    /* 3B12978 8007FBDC 6C6F000C */  jal        func_8001BDB0
    /* 3B1297C 8007FBE0 0C008526 */   addiu     $a1, $s4, 0xC
    /* 3B12980 8007FBE4 30000224 */  addiu      $v0, $zero, 0x30
    /* 3B12984 8007FBE8 0C0042A6 */  sh         $v0, 0xC($s2)
    /* 3B12988 8007FBEC 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 3B1298C 8007FBF0 4F00C2A2 */  sb         $v0, 0x4F($s6)
    /* 3B12990 8007FBF4 0C004296 */  lhu        $v0, 0xC($s2)
    /* 3B12994 8007FBF8 00000000 */  nop
    /* 3B12998 8007FBFC 5400C2A2 */  sb         $v0, 0x54($s6)
    /* 3B1299C 8007FC00 0C004296 */  lhu        $v0, 0xC($s2)
    /* 3B129A0 8007FC04 00000000 */  nop
    /* 3B129A4 8007FC08 5500C2A2 */  sb         $v0, 0x55($s6)
    /* 3B129A8 8007FC0C 0C004396 */  lhu        $v1, 0xC($s2)
    /* 3B129AC 8007FC10 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 3B129B0 8007FC14 5700C2A2 */  sb         $v0, 0x57($s6)
    /* 3B129B4 8007FC18 13FF0108 */  j          .Llevel_52_8007FC4C
    /* 3B129B8 8007FC1C 5600C3A2 */   sb        $v1, 0x56($s6)
  .Llevel_52_8007FC20:
    /* 3B129BC 8007FC20 03008012 */  beqz       $s4, .Llevel_52_8007FC30
    /* 3B129C0 8007FC24 0C008526 */   addiu     $a1, $s4, 0xC
    /* 3B129C4 8007FC28 0FFF0108 */  j          .Llevel_52_8007FC3C
    /* 3B129C8 8007FC2C 0C00C426 */   addiu     $a0, $s6, 0xC
  .Llevel_52_8007FC30:
    /* 3B129CC 8007FC30 0C00C426 */  addiu      $a0, $s6, 0xC
    /* 3B129D0 8007FC34 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 3B129D4 8007FC38 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_52_8007FC3C:
    /* 3B129D8 8007FC3C 6C6F000C */  jal        func_8001BDB0
    /* 3B129DC 8007FC40 00000000 */   nop
    /* 3B129E0 8007FC44 0E05010C */  jal        func_80041438
    /* 3B129E4 8007FC48 2120C002 */   addu      $a0, $s6, $zero
  .Llevel_52_8007FC4C:
    /* 3B129E8 8007FC4C 2110C002 */  addu       $v0, $s6, $zero
  .Llevel_52_8007FC50:
    /* 3B129EC 8007FC50 9C00BF8F */  lw         $ra, 0x9C($sp)
    /* 3B129F0 8007FC54 9800B68F */  lw         $s6, 0x98($sp)
    /* 3B129F4 8007FC58 9400B58F */  lw         $s5, 0x94($sp)
    /* 3B129F8 8007FC5C 9000B48F */  lw         $s4, 0x90($sp)
    /* 3B129FC 8007FC60 8C00B38F */  lw         $s3, 0x8C($sp)
    /* 3B12A00 8007FC64 8800B28F */  lw         $s2, 0x88($sp)
    /* 3B12A04 8007FC68 8400B18F */  lw         $s1, 0x84($sp)
    /* 3B12A08 8007FC6C 8000B08F */  lw         $s0, 0x80($sp)
    /* 3B12A0C 8007FC70 A000BD27 */  addiu      $sp, $sp, 0xA0
    /* 3B12A10 8007FC74 0800E003 */  jr         $ra
    /* 3B12A14 8007FC78 00000000 */   nop
endlabel func_level_52_8007EB90
    /* 3B12A18 8007FC7C 00000000 */  nop
