.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_41_8007E998, 0x1034

glabel func_level_41_8007E998
    /* 2BC9F34 8007E998 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 2BC9F38 8007E99C 7C00B1AF */  sw         $s1, 0x7C($sp)
    /* 2BC9F3C 8007E9A0 21888000 */  addu       $s1, $a0, $zero
    /* 2BC9F40 8007E9A4 8C00B5AF */  sw         $s5, 0x8C($sp)
    /* 2BC9F44 8007E9A8 21A8A000 */  addu       $s5, $a1, $zero
    /* 2BC9F48 8007E9AC 9800BFAF */  sw         $ra, 0x98($sp)
    /* 2BC9F4C 8007E9B0 9400B7AF */  sw         $s7, 0x94($sp)
    /* 2BC9F50 8007E9B4 9000B6AF */  sw         $s6, 0x90($sp)
    /* 2BC9F54 8007E9B8 8800B4AF */  sw         $s4, 0x88($sp)
    /* 2BC9F58 8007E9BC 8400B3AF */  sw         $s3, 0x84($sp)
    /* 2BC9F5C 8007E9C0 8000B2AF */  sw         $s2, 0x80($sp)
    /* 2BC9F60 8007E9C4 A404010C */  jal        func_80041290
    /* 2BC9F64 8007E9C8 7800B0AF */   sw        $s0, 0x78($sp)
    /* 2BC9F68 8007E9CC 21984000 */  addu       $s3, $v0, $zero
    /* 2BC9F6C 8007E9D0 03006016 */  bnez       $s3, .Llevel_41_8007E9E0
    /* 2BC9F70 8007E9D4 21206002 */   addu      $a0, $s3, $zero
    /* 2BC9F74 8007E9D8 67FE0108 */  j          .Llevel_41_8007F99C
    /* 2BC9F78 8007E9DC 21100000 */   addu      $v0, $zero, $zero
  .Llevel_41_8007E9E0:
    /* 2BC9F7C 8007E9E0 21280000 */  addu       $a1, $zero, $zero
    /* 2BC9F80 8007E9E4 0000708E */  lw         $s0, 0x0($s3)
    /* 2BC9F84 8007E9E8 F26C000C */  jal        func_8001B3C8
    /* 2BC9F88 8007E9EC 58000624 */   addiu     $a2, $zero, 0x58
    /* 2BC9F8C 8007E9F0 21280000 */  addu       $a1, $zero, $zero
    /* 2BC9F90 8007E9F4 18000624 */  addiu      $a2, $zero, 0x18
    /* 2BC9F94 8007E9F8 21200002 */  addu       $a0, $s0, $zero
    /* 2BC9F98 8007E9FC F26C000C */  jal        func_8001B3C8
    /* 2BC9F9C 8007EA00 000064AE */   sw        $a0, 0x0($s3)
    /* 2BC9FA0 8007EA04 1600A012 */  beqz       $s5, .Llevel_41_8007EA60
    /* 2BC9FA4 8007EA08 360071A6 */   sh        $s1, 0x36($s3)
    /* 2BC9FA8 8007EA0C 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 2BC9FAC 8007EA10 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 2BC9FB0 8007EA14 00000000 */  nop
    /* 2BC9FB4 8007EA18 2320A402 */  subu       $a0, $s5, $a0
    /* 2BC9FB8 8007EA1C 40190400 */  sll        $v1, $a0, 5
    /* 2BC9FBC 8007EA20 23186400 */  subu       $v1, $v1, $a0
    /* 2BC9FC0 8007EA24 40190300 */  sll        $v1, $v1, 5
    /* 2BC9FC4 8007EA28 21186400 */  addu       $v1, $v1, $a0
    /* 2BC9FC8 8007EA2C C0100300 */  sll        $v0, $v1, 3
    /* 2BC9FCC 8007EA30 21186200 */  addu       $v1, $v1, $v0
    /* 2BC9FD0 8007EA34 C0130300 */  sll        $v0, $v1, 15
    /* 2BC9FD4 8007EA38 23104300 */  subu       $v0, $v0, $v1
    /* 2BC9FD8 8007EA3C 80100200 */  sll        $v0, $v0, 2
    /* 2BC9FDC 8007EA40 21104400 */  addu       $v0, $v0, $a0
    /* 2BC9FE0 8007EA44 23100200 */  negu       $v0, $v0
    /* 2BC9FE4 8007EA48 C3180200 */  sra        $v1, $v0, 3
    /* 2BC9FE8 8007EA4C 0001622C */  sltiu      $v0, $v1, 0x100
    /* 2BC9FEC 8007EA50 04004010 */  beqz       $v0, .Llevel_41_8007EA64
    /* 2BC9FF0 8007EA54 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 2BC9FF4 8007EA58 9AFA0108 */  j          .Llevel_41_8007EA68
    /* 2BC9FF8 8007EA5C 3A0063A2 */   sb        $v1, 0x3A($s3)
  .Llevel_41_8007EA60:
    /* 2BC9FFC 8007EA60 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_41_8007EA64:
    /* 2BCA000 8007EA64 3A0062A2 */  sb         $v0, 0x3A($s3)
  .Llevel_41_8007EA68:
    /* 2BCA004 8007EA68 72DD000C */  jal        func_800375C8
    /* 2BCA008 8007EA6C 21206002 */   addu      $a0, $s3, $zero
    /* 2BCA00C 8007EA70 04010224 */  addiu      $v0, $zero, 0x104
    /* 2BCA010 8007EA74 BE012212 */  beq        $s1, $v0, .Llevel_41_8007F170
    /* 2BCA014 8007EA78 0501222A */   slti      $v0, $s1, 0x105
    /* 2BCA018 8007EA7C 20004010 */  beqz       $v0, .Llevel_41_8007EB00
    /* 2BCA01C 8007EA80 78000224 */   addiu     $v0, $zero, 0x78
    /* 2BCA020 8007EA84 77012212 */  beq        $s1, $v0, .Llevel_41_8007F064
    /* 2BCA024 8007EA88 7900222A */   slti      $v0, $s1, 0x79
    /* 2BCA028 8007EA8C 0E004010 */  beqz       $v0, .Llevel_41_8007EAC8
    /* 2BCA02C 8007EA90 10000224 */   addiu     $v0, $zero, 0x10
    /* 2BCA030 8007EA94 3F002212 */  beq        $s1, $v0, .Llevel_41_8007EB94
    /* 2BCA034 8007EA98 1100222A */   slti      $v0, $s1, 0x11
    /* 2BCA038 8007EA9C 05004010 */  beqz       $v0, .Llevel_41_8007EAB4
    /* 2BCA03C 8007EAA0 01000224 */   addiu     $v0, $zero, 0x1
    /* 2BCA040 8007EAA4 34002212 */  beq        $s1, $v0, .Llevel_41_8007EB78
    /* 2BCA044 8007EAA8 00000000 */   nop
    /* 2BCA048 8007EAAC 5BFE0108 */  j          .Llevel_41_8007F96C
    /* 2BCA04C 8007EAB0 00000000 */   nop
  .Llevel_41_8007EAB4:
    /* 2BCA050 8007EAB4 6F000224 */  addiu      $v0, $zero, 0x6F
    /* 2BCA054 8007EAB8 69002212 */  beq        $s1, $v0, .Llevel_41_8007EC60
    /* 2BCA058 8007EABC 0C006426 */   addiu     $a0, $s3, 0xC
    /* 2BCA05C 8007EAC0 5BFE0108 */  j          .Llevel_41_8007F96C
    /* 2BCA060 8007EAC4 00000000 */   nop
  .Llevel_41_8007EAC8:
    /* 2BCA064 8007EAC8 D3000224 */  addiu      $v0, $zero, 0xD3
    /* 2BCA068 8007EACC 31002212 */  beq        $s1, $v0, .Llevel_41_8007EB94
    /* 2BCA06C 8007EAD0 D400222A */   slti      $v0, $s1, 0xD4
    /* 2BCA070 8007EAD4 05004010 */  beqz       $v0, .Llevel_41_8007EAEC
    /* 2BCA074 8007EAD8 81000224 */   addiu     $v0, $zero, 0x81
    /* 2BCA078 8007EADC 94012212 */  beq        $s1, $v0, .Llevel_41_8007F130
    /* 2BCA07C 8007EAE0 0C006426 */   addiu     $a0, $s3, 0xC
    /* 2BCA080 8007EAE4 5BFE0108 */  j          .Llevel_41_8007F96C
    /* 2BCA084 8007EAE8 00000000 */   nop
  .Llevel_41_8007EAEC:
    /* 2BCA088 8007EAEC FC000224 */  addiu      $v0, $zero, 0xFC
    /* 2BCA08C 8007EAF0 4D012212 */  beq        $s1, $v0, .Llevel_41_8007F028
    /* 2BCA090 8007EAF4 0C006426 */   addiu     $a0, $s3, 0xC
    /* 2BCA094 8007EAF8 5BFE0108 */  j          .Llevel_41_8007F96C
    /* 2BCA098 8007EAFC 00000000 */   nop
  .Llevel_41_8007EB00:
    /* 2BCA09C 8007EB00 C5010224 */  addiu      $v0, $zero, 0x1C5
    /* 2BCA0A0 8007EB04 87022212 */  beq        $s1, $v0, .Llevel_41_8007F524
    /* 2BCA0A4 8007EB08 C601222A */   slti      $v0, $s1, 0x1C6
    /* 2BCA0A8 8007EB0C 0A004010 */  beqz       $v0, .Llevel_41_8007EB38
    /* 2BCA0AC 8007EB10 3201222A */   slti      $v0, $s1, 0x132
    /* 2BCA0B0 8007EB14 95034014 */  bnez       $v0, .Llevel_41_8007F96C
    /* 2BCA0B4 8007EB18 3601222A */   slti      $v0, $s1, 0x136
    /* 2BCA0B8 8007EB1C A9014014 */  bnez       $v0, .Llevel_41_8007F1C4
    /* 2BCA0BC 8007EB20 0C006426 */   addiu     $a0, $s3, 0xC
    /* 2BCA0C0 8007EB24 46010224 */  addiu      $v0, $zero, 0x146
    /* 2BCA0C4 8007EB28 3C022212 */  beq        $s1, $v0, .Llevel_41_8007F41C
    /* 2BCA0C8 8007EB2C 00000000 */   nop
    /* 2BCA0CC 8007EB30 5BFE0108 */  j          .Llevel_41_8007F96C
    /* 2BCA0D0 8007EB34 00000000 */   nop
  .Llevel_41_8007EB38:
    /* 2BCA0D4 8007EB38 E3010224 */  addiu      $v0, $zero, 0x1E3
    /* 2BCA0D8 8007EB3C C1022212 */  beq        $s1, $v0, .Llevel_41_8007F644
    /* 2BCA0DC 8007EB40 E401222A */   slti      $v0, $s1, 0x1E4
    /* 2BCA0E0 8007EB44 05004010 */  beqz       $v0, .Llevel_41_8007EB5C
    /* 2BCA0E4 8007EB48 E2010224 */   addiu     $v0, $zero, 0x1E2
    /* 2BCA0E8 8007EB4C A6022212 */  beq        $s1, $v0, .Llevel_41_8007F5E8
    /* 2BCA0EC 8007EB50 0C006426 */   addiu     $a0, $s3, 0xC
    /* 2BCA0F0 8007EB54 5BFE0108 */  j          .Llevel_41_8007F96C
    /* 2BCA0F4 8007EB58 00000000 */   nop
  .Llevel_41_8007EB5C:
    /* 2BCA0F8 8007EB5C 1D020224 */  addiu      $v0, $zero, 0x21D
    /* 2BCA0FC 8007EB60 6D032212 */  beq        $s1, $v0, .Llevel_41_8007F918
    /* 2BCA100 8007EB64 38020224 */   addiu     $v0, $zero, 0x238
    /* 2BCA104 8007EB68 96012212 */  beq        $s1, $v0, .Llevel_41_8007F1C4
    /* 2BCA108 8007EB6C 0C006426 */   addiu     $a0, $s3, 0xC
    /* 2BCA10C 8007EB70 5BFE0108 */  j          .Llevel_41_8007F96C
    /* 2BCA110 8007EB74 00000000 */   nop
  .Llevel_41_8007EB78:
    /* 2BCA114 8007EB78 0E05010C */  jal        func_80041438
    /* 2BCA118 8007EB7C 21206002 */   addu      $a0, $s3, $zero
    /* 2BCA11C 8007EB80 18000224 */  addiu      $v0, $zero, 0x18
    /* 2BCA120 8007EB84 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 2BCA124 8007EB88 40000224 */  addiu      $v0, $zero, 0x40
    /* 2BCA128 8007EB8C 6EFC0108 */  j          .Llevel_41_8007F1B8
    /* 2BCA12C 8007EB90 4A0062A2 */   sb        $v0, 0x4A($s3)
  .Llevel_41_8007EB94:
    /* 2BCA130 8007EB94 10000324 */  addiu      $v1, $zero, 0x10
    /* 2BCA134 8007EB98 36006286 */  lh         $v0, 0x36($s3)
    /* 2BCA138 8007EB9C 0000718E */  lw         $s1, 0x0($s3)
    /* 2BCA13C 8007EBA0 18004314 */  bne        $v0, $v1, .Llevel_41_8007EC04
    /* 2BCA140 8007EBA4 00000000 */   nop
    /* 2BCA144 8007EBA8 0680043C */  lui        $a0, %hi(D_8006712C)
    /* 2BCA148 8007EBAC 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* 2BCA14C 8007EBB0 00000000 */  nop
    /* 2BCA150 8007EBB4 04008228 */  slti       $v0, $a0, 0x4
    /* 2BCA154 8007EBB8 03004010 */  beqz       $v0, .Llevel_41_8007EBC8
    /* 2BCA158 8007EBBC 0A000324 */   addiu     $v1, $zero, 0xA
    /* 2BCA15C 8007EBC0 F6FA0108 */  j          .Llevel_41_8007EBD8
    /* 2BCA160 8007EBC4 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_41_8007EBC8:
    /* 2BCA164 8007EBC8 07008228 */  slti       $v0, $a0, 0x7
    /* 2BCA168 8007EBCC 02004010 */  beqz       $v0, .Llevel_41_8007EBD8
    /* 2BCA16C 8007EBD0 00000000 */   nop
    /* 2BCA170 8007EBD4 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_41_8007EBD8:
    /* 2BCA174 8007EBD8 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* 2BCA178 8007EBDC AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* 2BCA17C 8007EBE0 0000828C */  lw         $v0, 0x0($a0)
    /* 2BCA180 8007EBE4 00000000 */  nop
    /* 2BCA184 8007EBE8 01004224 */  addiu      $v0, $v0, 0x1
    /* 2BCA188 8007EBEC 000082AC */  sw         $v0, 0x0($a0)
    /* 2BCA18C 8007EBF0 2A104300 */  slt        $v0, $v0, $v1
    /* 2BCA190 8007EBF4 03004014 */  bnez       $v0, .Llevel_41_8007EC04
    /* 2BCA194 8007EBF8 D3000224 */   addiu     $v0, $zero, 0xD3
    /* 2BCA198 8007EBFC 000080AC */  sw         $zero, 0x0($a0)
    /* 2BCA19C 8007EC00 360062A6 */  sh         $v0, 0x36($s3)
  .Llevel_41_8007EC04:
    /* 2BCA1A0 8007EC04 0E05010C */  jal        func_80041438
    /* 2BCA1A4 8007EC08 21206002 */   addu      $a0, $s3, $zero
    /* 2BCA1A8 8007EC0C 0C007026 */  addiu      $s0, $s3, 0xC
    /* 2BCA1AC 8007EC10 21200002 */  addu       $a0, $s0, $zero
    /* 2BCA1B0 8007EC14 6C6F000C */  jal        func_8001BDB0
    /* 2BCA1B4 8007EC18 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 2BCA1B8 8007EC1C 21202002 */  addu       $a0, $s1, $zero
    /* 2BCA1BC 8007EC20 1400628E */  lw         $v0, 0x14($s3)
    /* 2BCA1C0 8007EC24 21280002 */  addu       $a1, $s0, $zero
    /* 2BCA1C4 8007EC28 00024224 */  addiu      $v0, $v0, 0x200
    /* 2BCA1C8 8007EC2C 6C6F000C */  jal        func_8001BDB0
    /* 2BCA1CC 8007EC30 140062AE */   sw        $v0, 0x14($s3)
    /* 2BCA1D0 8007EC34 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2BCA1D4 8007EC38 1C0062AE */  sw         $v0, 0x1C($s3)
    /* 2BCA1D8 8007EC3C 02000224 */  addiu      $v0, $zero, 0x2
    /* 2BCA1DC 8007EC40 470062A2 */  sb         $v0, 0x47($s3)
    /* 2BCA1E0 8007EC44 08070224 */  addiu      $v0, $zero, 0x708
    /* 2BCA1E4 8007EC48 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 2BCA1E8 8007EC4C 4B67010C */  jal        func_80059D2C
    /* 2BCA1EC 8007EC50 110020A2 */   sb        $zero, 0x11($s1)
    /* 2BCA1F0 8007EC54 FC004230 */  andi       $v0, $v0, 0xFC
    /* 2BCA1F4 8007EC58 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCA1F8 8007EC5C 120022A2 */   sb        $v0, 0x12($s1)
  .Llevel_41_8007EC60:
    /* 2BCA1FC 8007EC60 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 2BCA200 8007EC64 0000718E */  lw         $s1, 0x0($s3)
    /* 2BCA204 8007EC68 20000224 */  addiu      $v0, $zero, 0x20
    /* 2BCA208 8007EC6C 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 2BCA20C 8007EC70 6C6F000C */  jal        func_8001BDB0
    /* 2BCA210 8007EC74 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* 2BCA214 8007EC78 0E05010C */  jal        func_80041438
    /* 2BCA218 8007EC7C 21206002 */   addu      $a0, $s3, $zero
    /* 2BCA21C 8007EC80 36006386 */  lh         $v1, 0x36($s3)
    /* 2BCA220 8007EC84 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* 2BCA224 8007EC88 07006214 */  bne        $v1, $v0, .Llevel_41_8007ECA8
    /* 2BCA228 8007EC8C 2C010424 */   addiu     $a0, $zero, 0x12C
    /* 2BCA22C 8007EC90 4B67010C */  jal        func_80059D2C
    /* 2BCA230 8007EC94 00000000 */   nop
    /* 2BCA234 8007EC98 4B67010C */  jal        func_80059D2C
    /* 2BCA238 8007EC9C FF0F5630 */   andi      $s6, $v0, 0xFFF
    /* 2BCA23C 8007ECA0 34FB0108 */  j          .Llevel_41_8007ECD0
    /* 2BCA240 8007ECA4 FF0F5430 */   andi      $s4, $v0, 0xFFF
  .Llevel_41_8007ECA8:
    /* 2BCA244 8007ECA8 47E2000C */  jal        func_8003891C
    /* 2BCA248 8007ECAC 34080524 */   addiu     $a1, $zero, 0x834
    /* 2BCA24C 8007ECB0 21B04000 */  addu       $s6, $v0, $zero
    /* 2BCA250 8007ECB4 24FA0424 */  addiu      $a0, $zero, -0x5DC
    /* 2BCA254 8007ECB8 47E2000C */  jal        func_8003891C
    /* 2BCA258 8007ECBC DC050524 */   addiu     $a1, $zero, 0x5DC
    /* 2BCA25C 8007ECC0 4600A392 */  lbu        $v1, 0x46($s5)
    /* 2BCA260 8007ECC4 00000000 */  nop
    /* 2BCA264 8007ECC8 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA268 8007ECCC FF0F7430 */  andi       $s4, $v1, 0xFFF
  .Llevel_41_8007ECD0:
    /* 2BCA26C 8007ECD0 36006386 */  lh         $v1, 0x36($s3)
    /* 2BCA270 8007ECD4 23010224 */  addiu      $v0, $zero, 0x123
    /* 2BCA274 8007ECD8 04006214 */  bne        $v1, $v0, .Llevel_41_8007ECEC
    /* 2BCA278 8007ECDC 78001224 */   addiu     $s2, $zero, 0x78
    /* 2BCA27C 8007ECE0 B4001224 */  addiu      $s2, $zero, 0xB4
    /* 2BCA280 8007ECE4 3CFB0108 */  j          .Llevel_41_8007ECF0
    /* 2BCA284 8007ECE8 DC001724 */   addiu     $s7, $zero, 0xDC
  .Llevel_41_8007ECEC:
    /* 2BCA288 8007ECEC 96001724 */  addiu      $s7, $zero, 0x96
  .Llevel_41_8007ECF0:
    /* 2BCA28C 8007ECF0 996D000C */  jal        func_8001B664
    /* 2BCA290 8007ECF4 2120C002 */   addu      $a0, $s6, $zero
    /* 2BCA294 8007ECF8 21208002 */  addu       $a0, $s4, $zero
    /* 2BCA298 8007ECFC 996D000C */  jal        func_8001B664
    /* 2BCA29C 8007ED00 21804000 */   addu      $s0, $v0, $zero
    /* 2BCA2A0 8007ED04 18005200 */  mult       $v0, $s2
    /* 2BCA2A4 8007ED08 12400000 */  mflo       $t0
    /* 2BCA2A8 8007ED0C 83811000 */  sra        $s0, $s0, 6
    /* 2BCA2AC 8007ED10 00000000 */  nop
    /* 2BCA2B0 8007ED14 18000802 */  mult       $s0, $t0
    /* 2BCA2B4 8007ED18 2120C002 */  addu       $a0, $s6, $zero
    /* 2BCA2B8 8007ED1C 12400000 */  mflo       $t0
    /* 2BCA2BC 8007ED20 83140800 */  sra        $v0, $t0, 18
    /* 2BCA2C0 8007ED24 996D000C */  jal        func_8001B664
    /* 2BCA2C4 8007ED28 000022A6 */   sh        $v0, 0x0($s1)
    /* 2BCA2C8 8007ED2C 21208002 */  addu       $a0, $s4, $zero
    /* 2BCA2CC 8007ED30 876D000C */  jal        func_8001B61C
    /* 2BCA2D0 8007ED34 21804000 */   addu      $s0, $v0, $zero
    /* 2BCA2D4 8007ED38 18005200 */  mult       $v0, $s2
    /* 2BCA2D8 8007ED3C 12400000 */  mflo       $t0
    /* 2BCA2DC 8007ED40 83811000 */  sra        $s0, $s0, 6
    /* 2BCA2E0 8007ED44 00000000 */  nop
    /* 2BCA2E4 8007ED48 18000802 */  mult       $s0, $t0
    /* 2BCA2E8 8007ED4C 2120C002 */  addu       $a0, $s6, $zero
    /* 2BCA2EC 8007ED50 12400000 */  mflo       $t0
    /* 2BCA2F0 8007ED54 83140800 */  sra        $v0, $t0, 18
    /* 2BCA2F4 8007ED58 876D000C */  jal        func_8001B61C
    /* 2BCA2F8 8007ED5C 020022A6 */   sh        $v0, 0x2($s1)
    /* 2BCA2FC 8007ED60 18005700 */  mult       $v0, $s7
    /* 2BCA300 8007ED64 12400000 */  mflo       $t0
    /* 2BCA304 8007ED68 03130800 */  sra        $v0, $t0, 12
    /* 2BCA308 8007ED6C 040022A6 */  sh         $v0, 0x4($s1)
    /* 2BCA30C 8007ED70 5100A492 */  lbu        $a0, 0x51($s5)
    /* 2BCA310 8007ED74 00000000 */  nop
    /* 2BCA314 8007ED78 26008010 */  beqz       $a0, .Llevel_41_8007EE14
    /* 2BCA318 8007ED7C 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 2BCA31C 8007ED80 1800A28E */  lw         $v0, 0x18($s5)
    /* 2BCA320 8007ED84 00000000 */  nop
    /* 2BCA324 8007ED88 24104300 */  and        $v0, $v0, $v1
    /* 2BCA328 8007ED8C 21004010 */  beqz       $v0, .Llevel_41_8007EE14
    /* 2BCA32C 8007ED90 40100400 */   sll       $v0, $a0, 1
    /* 2BCA330 8007ED94 0680013C */  lui        $at, %hi(D_80061C58)
    /* 2BCA334 8007ED98 21082200 */  addu       $at, $at, $v0
    /* 2BCA338 8007ED9C 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 2BCA33C 8007EDA0 00000000 */  nop
    /* 2BCA340 8007EDA4 80100300 */  sll        $v0, $v1, 2
    /* 2BCA344 8007EDA8 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA348 8007EDAC 00190200 */  sll        $v1, $v0, 4
    /* 2BCA34C 8007EDB0 23186200 */  subu       $v1, $v1, $v0
    /* 2BCA350 8007EDB4 00002296 */  lhu        $v0, 0x0($s1)
    /* 2BCA354 8007EDB8 C31A0300 */  sra        $v1, $v1, 11
    /* 2BCA358 8007EDBC 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA35C 8007EDC0 000022A6 */  sh         $v0, 0x0($s1)
    /* 2BCA360 8007EDC4 5100A292 */  lbu        $v0, 0x51($s5)
    /* 2BCA364 8007EDC8 28000424 */  addiu      $a0, $zero, 0x28
    /* 2BCA368 8007EDCC 40100200 */  sll        $v0, $v0, 1
    /* 2BCA36C 8007EDD0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 2BCA370 8007EDD4 21082200 */  addu       $at, $at, $v0
    /* 2BCA374 8007EDD8 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 2BCA378 8007EDDC 46000524 */  addiu      $a1, $zero, 0x46
    /* 2BCA37C 8007EDE0 80100300 */  sll        $v0, $v1, 2
    /* 2BCA380 8007EDE4 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA384 8007EDE8 00190200 */  sll        $v1, $v0, 4
    /* 2BCA388 8007EDEC 23186200 */  subu       $v1, $v1, $v0
    /* 2BCA38C 8007EDF0 02002296 */  lhu        $v0, 0x2($s1)
    /* 2BCA390 8007EDF4 C31A0300 */  sra        $v1, $v1, 11
    /* 2BCA394 8007EDF8 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA398 8007EDFC 47E2000C */  jal        func_8003891C
    /* 2BCA39C 8007EE00 020022A6 */   sh        $v0, 0x2($s1)
    /* 2BCA3A0 8007EE04 04002396 */  lhu        $v1, 0x4($s1)
    /* 2BCA3A4 8007EE08 00000000 */  nop
    /* 2BCA3A8 8007EE0C 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA3AC 8007EE10 040023A6 */  sh         $v1, 0x4($s1)
  .Llevel_41_8007EE14:
    /* 2BCA3B0 8007EE14 36006386 */  lh         $v1, 0x36($s3)
    /* 2BCA3B4 8007EE18 98000224 */  addiu      $v0, $zero, 0x98
    /* 2BCA3B8 8007EE1C 41006210 */  beq        $v1, $v0, .Llevel_41_8007EF24
    /* 2BCA3BC 8007EE20 E0010224 */   addiu     $v0, $zero, 0x1E0
    /* 2BCA3C0 8007EE24 3E006210 */  beq        $v1, $v0, .Llevel_41_8007EF20
    /* 2BCA3C4 8007EE28 0200033C */   lui       $v1, (0x20000 >> 16)
    /* 2BCA3C8 8007EE2C 1800A28E */  lw         $v0, 0x18($s5)
    /* 2BCA3CC 8007EE30 00000000 */  nop
    /* 2BCA3D0 8007EE34 24104300 */  and        $v0, $v0, $v1
    /* 2BCA3D4 8007EE38 1B004010 */  beqz       $v0, .Llevel_41_8007EEA8
    /* 2BCA3D8 8007EE3C 00000000 */   nop
    /* 2BCA3DC 8007EE40 4600A292 */  lbu        $v0, 0x46($s5)
    /* 2BCA3E0 8007EE44 00000000 */  nop
    /* 2BCA3E4 8007EE48 40100200 */  sll        $v0, $v0, 1
    /* 2BCA3E8 8007EE4C 0680013C */  lui        $at, %hi(D_80061C58)
    /* 2BCA3EC 8007EE50 21082200 */  addu       $at, $at, $v0
    /* 2BCA3F0 8007EE54 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 2BCA3F4 8007EE58 00000000 */  nop
    /* 2BCA3F8 8007EE5C C0100300 */  sll        $v0, $v1, 3
    /* 2BCA3FC 8007EE60 23104300 */  subu       $v0, $v0, $v1
    /* 2BCA400 8007EE64 C0100200 */  sll        $v0, $v0, 3
    /* 2BCA404 8007EE68 23104300 */  subu       $v0, $v0, $v1
    /* 2BCA408 8007EE6C 00002396 */  lhu        $v1, 0x0($s1)
    /* 2BCA40C 8007EE70 83120200 */  sra        $v0, $v0, 10
    /* 2BCA410 8007EE74 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA414 8007EE78 000023A6 */  sh         $v1, 0x0($s1)
    /* 2BCA418 8007EE7C 4600A292 */  lbu        $v0, 0x46($s5)
    /* 2BCA41C 8007EE80 00000000 */  nop
    /* 2BCA420 8007EE84 40100200 */  sll        $v0, $v0, 1
    /* 2BCA424 8007EE88 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 2BCA428 8007EE8C 21082200 */  addu       $at, $at, $v0
    /* 2BCA42C 8007EE90 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 2BCA430 8007EE94 00000000 */  nop
    /* 2BCA434 8007EE98 C0100300 */  sll        $v0, $v1, 3
    /* 2BCA438 8007EE9C 23104300 */  subu       $v0, $v0, $v1
    /* 2BCA43C 8007EEA0 C3FB0108 */  j          .Llevel_41_8007EF0C
    /* 2BCA440 8007EEA4 C0100200 */   sll       $v0, $v0, 3
  .Llevel_41_8007EEA8:
    /* 2BCA444 8007EEA8 4600A292 */  lbu        $v0, 0x46($s5)
    /* 2BCA448 8007EEAC 00000000 */  nop
    /* 2BCA44C 8007EEB0 40100200 */  sll        $v0, $v0, 1
    /* 2BCA450 8007EEB4 0680013C */  lui        $at, %hi(D_80061C58)
    /* 2BCA454 8007EEB8 21082200 */  addu       $at, $at, $v0
    /* 2BCA458 8007EEBC 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 2BCA45C 8007EEC0 00000000 */  nop
    /* 2BCA460 8007EEC4 C0100300 */  sll        $v0, $v1, 3
    /* 2BCA464 8007EEC8 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA468 8007EECC 80100200 */  sll        $v0, $v0, 2
    /* 2BCA46C 8007EED0 23104300 */  subu       $v0, $v0, $v1
    /* 2BCA470 8007EED4 00002396 */  lhu        $v1, 0x0($s1)
    /* 2BCA474 8007EED8 83120200 */  sra        $v0, $v0, 10
    /* 2BCA478 8007EEDC 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA47C 8007EEE0 000023A6 */  sh         $v1, 0x0($s1)
    /* 2BCA480 8007EEE4 4600A292 */  lbu        $v0, 0x46($s5)
    /* 2BCA484 8007EEE8 00000000 */  nop
    /* 2BCA488 8007EEEC 40100200 */  sll        $v0, $v0, 1
    /* 2BCA48C 8007EEF0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 2BCA490 8007EEF4 21082200 */  addu       $at, $at, $v0
    /* 2BCA494 8007EEF8 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 2BCA498 8007EEFC 00000000 */  nop
    /* 2BCA49C 8007EF00 C0100300 */  sll        $v0, $v1, 3
    /* 2BCA4A0 8007EF04 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA4A4 8007EF08 80100200 */  sll        $v0, $v0, 2
  .Llevel_41_8007EF0C:
    /* 2BCA4A8 8007EF0C 23104300 */  subu       $v0, $v0, $v1
    /* 2BCA4AC 8007EF10 02002396 */  lhu        $v1, 0x2($s1)
    /* 2BCA4B0 8007EF14 83120200 */  sra        $v0, $v0, 10
    /* 2BCA4B4 8007EF18 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA4B8 8007EF1C 020023A6 */  sh         $v1, 0x2($s1)
  .Llevel_41_8007EF20:
    /* 2BCA4BC 8007EF20 36006386 */  lh         $v1, 0x36($s3)
  .Llevel_41_8007EF24:
    /* 2BCA4C0 8007EF24 3D000224 */  addiu      $v0, $zero, 0x3D
    /* 2BCA4C4 8007EF28 21006210 */  beq        $v1, $v0, .Llevel_41_8007EFB0
    /* 2BCA4C8 8007EF2C 21206000 */   addu      $a0, $v1, $zero
    /* 2BCA4CC 8007EF30 58000224 */  addiu      $v0, $zero, 0x58
    /* 2BCA4D0 8007EF34 1E006210 */  beq        $v1, $v0, .Llevel_41_8007EFB0
    /* 2BCA4D4 8007EF38 42000224 */   addiu     $v0, $zero, 0x42
    /* 2BCA4D8 8007EF3C 1C006210 */  beq        $v1, $v0, .Llevel_41_8007EFB0
    /* 2BCA4DC 8007EF40 7CFD8224 */   addiu     $v0, $a0, -0x284
    /* 2BCA4E0 8007EF44 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 2BCA4E4 8007EF48 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2BCA4E8 8007EF4C 18004014 */  bnez       $v0, .Llevel_41_8007EFB0
    /* 2BCA4EC 8007EF50 00000000 */   nop
    /* 2BCA4F0 8007EF54 4B67010C */  jal        func_80059D2C
    /* 2BCA4F4 8007EF58 00000000 */   nop
    /* 2BCA4F8 8007EF5C 4B67010C */  jal        func_80059D2C
    /* 2BCA4FC 8007EF60 440062A2 */   sb        $v0, 0x44($s3)
    /* 2BCA500 8007EF64 4B67010C */  jal        func_80059D2C
    /* 2BCA504 8007EF68 450062A2 */   sb        $v0, 0x45($s3)
    /* 2BCA508 8007EF6C 460062A2 */  sb         $v0, 0x46($s3)
    /* 2BCA50C 8007EF70 00002286 */  lh         $v0, 0x0($s1)
    /* 2BCA510 8007EF74 0C00638E */  lw         $v1, 0xC($s3)
    /* 2BCA514 8007EF78 40100200 */  sll        $v0, $v0, 1
    /* 2BCA518 8007EF7C 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA51C 8007EF80 0C0063AE */  sw         $v1, 0xC($s3)
    /* 2BCA520 8007EF84 02002286 */  lh         $v0, 0x2($s1)
    /* 2BCA524 8007EF88 1000638E */  lw         $v1, 0x10($s3)
    /* 2BCA528 8007EF8C 40100200 */  sll        $v0, $v0, 1
    /* 2BCA52C 8007EF90 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA530 8007EF94 100063AE */  sw         $v1, 0x10($s3)
    /* 2BCA534 8007EF98 04002286 */  lh         $v0, 0x4($s1)
    /* 2BCA538 8007EF9C 1400638E */  lw         $v1, 0x14($s3)
    /* 2BCA53C 8007EFA0 40100200 */  sll        $v0, $v0, 1
    /* 2BCA540 8007EFA4 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA544 8007EFA8 F5FB0108 */  j          .Llevel_41_8007EFD4
    /* 2BCA548 8007EFAC 140063AE */   sw        $v1, 0x14($s3)
  .Llevel_41_8007EFB0:
    /* 2BCA54C 8007EFB0 4400A292 */  lbu        $v0, 0x44($s5)
    /* 2BCA550 8007EFB4 00000000 */  nop
    /* 2BCA554 8007EFB8 440062A2 */  sb         $v0, 0x44($s3)
    /* 2BCA558 8007EFBC 4500A292 */  lbu        $v0, 0x45($s5)
    /* 2BCA55C 8007EFC0 00000000 */  nop
    /* 2BCA560 8007EFC4 450062A2 */  sb         $v0, 0x45($s3)
    /* 2BCA564 8007EFC8 4600A292 */  lbu        $v0, 0x46($s5)
    /* 2BCA568 8007EFCC 00000000 */  nop
    /* 2BCA56C 8007EFD0 460062A2 */  sb         $v0, 0x46($s3)
  .Llevel_41_8007EFD4:
    /* 2BCA570 8007EFD4 4B67010C */  jal        func_80059D2C
    /* 2BCA574 8007EFD8 00000000 */   nop
    /* 2BCA578 8007EFDC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 2BCA57C 8007EFE0 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 2BCA580 8007EFE4 4B67010C */  jal        func_80059D2C
    /* 2BCA584 8007EFE8 060022A6 */   sh        $v0, 0x6($s1)
    /* 2BCA588 8007EFEC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 2BCA58C 8007EFF0 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 2BCA590 8007EFF4 4B67010C */  jal        func_80059D2C
    /* 2BCA594 8007EFF8 080022A6 */   sh        $v0, 0x8($s1)
    /* 2BCA598 8007EFFC 5A000424 */  addiu      $a0, $zero, 0x5A
    /* 2BCA59C 8007F000 96000524 */  addiu      $a1, $zero, 0x96
    /* 2BCA5A0 8007F004 1F004230 */  andi       $v0, $v0, 0x1F
    /* 2BCA5A4 8007F008 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 2BCA5A8 8007F00C 47E2000C */  jal        func_8003891C
    /* 2BCA5AC 8007F010 0A0022A6 */   sh        $v0, 0xA($s1)
    /* 2BCA5B0 8007F014 0C0022A6 */  sh         $v0, 0xC($s1)
    /* 2BCA5B4 8007F018 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BCA5B8 8007F01C 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 2BCA5BC 8007F020 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCA5C0 8007F024 120020A6 */   sh        $zero, 0x12($s1)
  .Llevel_41_8007F028:
    /* 2BCA5C4 8007F028 6C6F000C */  jal        func_8001BDB0
    /* 2BCA5C8 8007F02C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 2BCA5CC 8007F030 0E05010C */  jal        func_80041438
    /* 2BCA5D0 8007F034 21206002 */   addu      $a0, $s3, $zero
    /* 2BCA5D4 8007F038 36006386 */  lh         $v1, 0x36($s3)
    /* 2BCA5D8 8007F03C 03000224 */  addiu      $v0, $zero, 0x3
    /* 2BCA5DC 8007F040 490062A2 */  sb         $v0, 0x49($s3)
    /* 2BCA5E0 8007F044 D6000224 */  addiu      $v0, $zero, 0xD6
    /* 2BCA5E4 8007F048 04006214 */  bne        $v1, $v0, .Llevel_41_8007F05C
    /* 2BCA5E8 8007F04C 02000224 */   addiu     $v0, $zero, 0x2
    /* 2BCA5EC 8007F050 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BCA5F0 8007F054 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCA5F4 8007F058 540062A2 */   sb        $v0, 0x54($s3)
  .Llevel_41_8007F05C:
    /* 2BCA5F8 8007F05C 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCA5FC 8007F060 540062A2 */   sb        $v0, 0x54($s3)
  .Llevel_41_8007F064:
    /* 2BCA600 8007F064 0000708E */  lw         $s0, 0x0($s3)
    /* 2BCA604 8007F068 0E05010C */  jal        func_80041438
    /* 2BCA608 8007F06C 21206002 */   addu      $a0, $s3, $zero
    /* 2BCA60C 8007F070 78000224 */  addiu      $v0, $zero, 0x78
    /* 2BCA610 8007F074 490060A2 */  sb         $zero, 0x49($s3)
    /* 2BCA614 8007F078 000000A6 */  sh         $zero, 0x0($s0)
    /* 2BCA618 8007F07C 080000A6 */  sh         $zero, 0x8($s0)
    /* 2BCA61C 8007F080 060000A6 */  sh         $zero, 0x6($s0)
    /* 2BCA620 8007F084 040000A6 */  sh         $zero, 0x4($s0)
    /* 2BCA624 8007F088 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 2BCA628 8007F08C 100000AE */  sw         $zero, 0x10($s0)
    /* 2BCA62C 8007F090 0600A012 */  beqz       $s5, .Llevel_41_8007F0AC
    /* 2BCA630 8007F094 140000AE */   sw        $zero, 0x14($s0)
    /* 2BCA634 8007F098 0C006426 */  addiu      $a0, $s3, 0xC
    /* 2BCA638 8007F09C 6C6F000C */  jal        func_8001BDB0
    /* 2BCA63C 8007F0A0 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 2BCA640 8007F0A4 4AFC0108 */  j          .Llevel_41_8007F128
    /* 2BCA644 8007F0A8 FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_41_8007F0AC:
    /* 2BCA648 8007F0AC 0C006426 */  addiu      $a0, $s3, 0xC
    /* 2BCA64C 8007F0B0 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* 2BCA650 8007F0B4 FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* 2BCA654 8007F0B8 0000A390 */  lbu        $v1, 0x0($a1)
    /* 2BCA658 8007F0BC F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 2BCA65C 8007F0C0 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 2BCA660 8007F0C4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 2BCA664 8007F0C8 40180300 */  sll        $v1, $v1, 1
    /* 2BCA668 8007F0CC 0680013C */  lui        $at, %hi(D_80061C58)
    /* 2BCA66C 8007F0D0 21082300 */  addu       $at, $at, $v1
    /* 2BCA670 8007F0D4 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* 2BCA674 8007F0D8 1000A627 */  addiu      $a2, $sp, 0x10
    /* 2BCA678 8007F0DC 40110700 */  sll        $v0, $a3, 5
    /* 2BCA67C 8007F0E0 23104700 */  subu       $v0, $v0, $a3
    /* 2BCA680 8007F0E4 80100200 */  sll        $v0, $v0, 2
    /* 2BCA684 8007F0E8 21104700 */  addu       $v0, $v0, $a3
    /* 2BCA688 8007F0EC 43120200 */  sra        $v0, $v0, 9
    /* 2BCA68C 8007F0F0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2BCA690 8007F0F4 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 2BCA694 8007F0F8 21082300 */  addu       $at, $at, $v1
    /* 2BCA698 8007F0FC D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 2BCA69C 8007F100 E8030224 */  addiu      $v0, $zero, 0x3E8
    /* 2BCA6A0 8007F104 1800A2AF */  sw         $v0, 0x18($sp)
    /* 2BCA6A4 8007F108 40110300 */  sll        $v0, $v1, 5
    /* 2BCA6A8 8007F10C 23104300 */  subu       $v0, $v0, $v1
    /* 2BCA6AC 8007F110 80100200 */  sll        $v0, $v0, 2
    /* 2BCA6B0 8007F114 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA6B4 8007F118 43120200 */  sra        $v0, $v0, 9
    /* 2BCA6B8 8007F11C 736F000C */  jal        func_8001BDCC
    /* 2BCA6BC 8007F120 1400A2AF */   sw        $v0, 0x14($sp)
    /* 2BCA6C0 8007F124 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_41_8007F128:
    /* 2BCA6C4 8007F128 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCA6C8 8007F12C 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_41_8007F130:
    /* 2BCA6CC 8007F130 6C6F000C */  jal        func_8001BDB0
    /* 2BCA6D0 8007F134 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 2BCA6D4 8007F138 0E05010C */  jal        func_80041438
    /* 2BCA6D8 8007F13C 21206002 */   addu      $a0, $s3, $zero
    /* 2BCA6DC 8007F140 003F023C */  lui        $v0, (0x3F005080 >> 16)
    /* 2BCA6E0 8007F144 80504234 */  ori        $v0, $v0, (0x3F005080 & 0xFFFF)
    /* 2BCA6E4 8007F148 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 2BCA6E8 8007F14C CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 2BCA6EC 8007F150 40000424 */  addiu      $a0, $zero, 0x40
    /* 2BCA6F0 8007F154 4F0064A2 */  sb         $a0, 0x4F($s3)
    /* 2BCA6F4 8007F158 540062AE */  sw         $v0, 0x54($s3)
    /* 2BCA6F8 8007F15C 001C0300 */  sll        $v1, $v1, 16
    /* 2BCA6FC 8007F160 031D0300 */  sra        $v1, $v1, 20
    /* 2BCA700 8007F164 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 2BCA704 8007F168 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCA708 8007F16C 460063A2 */   sb        $v1, 0x46($s3)
  .Llevel_41_8007F170:
    /* 2BCA70C 8007F170 0E05010C */  jal        func_80041438
    /* 2BCA710 8007F174 21206002 */   addu      $a0, $s3, $zero
    /* 2BCA714 8007F178 02000224 */  addiu      $v0, $zero, 0x2
    /* 2BCA718 8007F17C 0E00A012 */  beqz       $s5, .Llevel_41_8007F1B8
    /* 2BCA71C 8007F180 540062A2 */   sb        $v0, 0x54($s3)
    /* 2BCA720 8007F184 0C006426 */  addiu      $a0, $s3, 0xC
    /* 2BCA724 8007F188 0000628E */  lw         $v0, 0x0($s3)
    /* 2BCA728 8007F18C 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 2BCA72C 8007F190 6C6F000C */  jal        func_8001BDB0
    /* 2BCA730 8007F194 000055AC */   sw        $s5, 0x0($v0)
    /* 2BCA734 8007F198 0A000224 */  addiu      $v0, $zero, 0xA
    /* 2BCA738 8007F19C 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 2BCA73C 8007F1A0 1400628E */  lw         $v0, 0x14($s3)
    /* 2BCA740 8007F1A4 08000324 */  addiu      $v1, $zero, 0x8
    /* 2BCA744 8007F1A8 4C0063A2 */  sb         $v1, 0x4C($s3)
    /* 2BCA748 8007F1AC 00044224 */  addiu      $v0, $v0, 0x400
    /* 2BCA74C 8007F1B0 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCA750 8007F1B4 140062AE */   sw        $v0, 0x14($s3)
  .Llevel_41_8007F1B8:
    /* 2BCA754 8007F1B8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2BCA758 8007F1BC 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCA75C 8007F1C0 1C0062AE */   sw        $v0, 0x1C($s3)
  .Llevel_41_8007F1C4:
    /* 2BCA760 8007F1C4 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 2BCA764 8007F1C8 0000748E */  lw         $s4, 0x0($s3)
    /* 2BCA768 8007F1CC 20000224 */  addiu      $v0, $zero, 0x20
    /* 2BCA76C 8007F1D0 6C6F000C */  jal        func_8001BDB0
    /* 2BCA770 8007F1D4 4C0062A2 */   sb        $v0, 0x4C($s3)
    /* 2BCA774 8007F1D8 0E05010C */  jal        func_80041438
    /* 2BCA778 8007F1DC 21206002 */   addu      $a0, $s3, $zero
    /* 2BCA77C 8007F1E0 4B67010C */  jal        func_80059D2C
    /* 2BCA780 8007F1E4 00000000 */   nop
    /* 2BCA784 8007F1E8 4B67010C */  jal        func_80059D2C
    /* 2BCA788 8007F1EC FF0F5230 */   andi      $s2, $v0, 0xFFF
    /* 2BCA78C 8007F1F0 FF075130 */  andi       $s1, $v0, 0x7FF
    /* 2BCA790 8007F1F4 996D000C */  jal        func_8001B664
    /* 2BCA794 8007F1F8 21202002 */   addu      $a0, $s1, $zero
    /* 2BCA798 8007F1FC 21204002 */  addu       $a0, $s2, $zero
    /* 2BCA79C 8007F200 996D000C */  jal        func_8001B664
    /* 2BCA7A0 8007F204 21804000 */   addu      $s0, $v0, $zero
    /* 2BCA7A4 8007F208 18000202 */  mult       $s0, $v0
    /* 2BCA7A8 8007F20C 12400000 */  mflo       $t0
    /* 2BCA7AC 8007F210 4900A292 */  lbu        $v0, 0x49($s5)
    /* 2BCA7B0 8007F214 00000000 */  nop
    /* 2BCA7B4 8007F218 18000201 */  mult       $t0, $v0
    /* 2BCA7B8 8007F21C 21202002 */  addu       $a0, $s1, $zero
    /* 2BCA7BC 8007F220 12400000 */  mflo       $t0
    /* 2BCA7C0 8007F224 03160800 */  sra        $v0, $t0, 24
    /* 2BCA7C4 8007F228 996D000C */  jal        func_8001B664
    /* 2BCA7C8 8007F22C 000082A6 */   sh        $v0, 0x0($s4)
    /* 2BCA7CC 8007F230 21204002 */  addu       $a0, $s2, $zero
    /* 2BCA7D0 8007F234 876D000C */  jal        func_8001B61C
    /* 2BCA7D4 8007F238 21804000 */   addu      $s0, $v0, $zero
    /* 2BCA7D8 8007F23C 18000202 */  mult       $s0, $v0
    /* 2BCA7DC 8007F240 12400000 */  mflo       $t0
    /* 2BCA7E0 8007F244 4900A292 */  lbu        $v0, 0x49($s5)
    /* 2BCA7E4 8007F248 00000000 */  nop
    /* 2BCA7E8 8007F24C 18000201 */  mult       $t0, $v0
    /* 2BCA7EC 8007F250 21202002 */  addu       $a0, $s1, $zero
    /* 2BCA7F0 8007F254 12400000 */  mflo       $t0
    /* 2BCA7F4 8007F258 03160800 */  sra        $v0, $t0, 24
    /* 2BCA7F8 8007F25C 876D000C */  jal        func_8001B61C
    /* 2BCA7FC 8007F260 020082A6 */   sh        $v0, 0x2($s4)
    /* 2BCA800 8007F264 4900A392 */  lbu        $v1, 0x49($s5)
    /* 2BCA804 8007F268 00000000 */  nop
    /* 2BCA808 8007F26C 18004300 */  mult       $v0, $v1
    /* 2BCA80C 8007F270 12400000 */  mflo       $t0
    /* 2BCA810 8007F274 03130800 */  sra        $v0, $t0, 12
    /* 2BCA814 8007F278 040082A6 */  sh         $v0, 0x4($s4)
    /* 2BCA818 8007F27C 1800A28E */  lw         $v0, 0x18($s5)
    /* 2BCA81C 8007F280 0200033C */  lui        $v1, (0x20000 >> 16)
    /* 2BCA820 8007F284 24104300 */  and        $v0, $v0, $v1
    /* 2BCA824 8007F288 14004010 */  beqz       $v0, .Llevel_41_8007F2DC
    /* 2BCA828 8007F28C 04000224 */   addiu     $v0, $zero, 0x4
    /* 2BCA82C 8007F290 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 2BCA830 8007F294 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 2BCA834 8007F298 00000000 */  nop
    /* 2BCA838 8007F29C 03006210 */  beq        $v1, $v0, .Llevel_41_8007F2AC
    /* 2BCA83C 8007F2A0 0C000224 */   addiu     $v0, $zero, 0xC
    /* 2BCA840 8007F2A4 0D006214 */  bne        $v1, $v0, .Llevel_41_8007F2DC
    /* 2BCA844 8007F2A8 00000000 */   nop
  .Llevel_41_8007F2AC:
    /* 2BCA848 8007F2AC 0780023C */  lui        $v0, %hi(D_8006A084)
    /* 2BCA84C 8007F2B0 84A0428C */  lw         $v0, %lo(D_8006A084)($v0)
    /* 2BCA850 8007F2B4 00008396 */  lhu        $v1, 0x0($s4)
    /* 2BCA854 8007F2B8 83110200 */  sra        $v0, $v0, 6
    /* 2BCA858 8007F2BC 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA85C 8007F2C0 000083A6 */  sh         $v1, 0x0($s4)
    /* 2BCA860 8007F2C4 0780023C */  lui        $v0, %hi(D_8006A088)
    /* 2BCA864 8007F2C8 88A0428C */  lw         $v0, %lo(D_8006A088)($v0)
    /* 2BCA868 8007F2CC 02008396 */  lhu        $v1, 0x2($s4)
    /* 2BCA86C 8007F2D0 83110200 */  sra        $v0, $v0, 6
    /* 2BCA870 8007F2D4 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA874 8007F2D8 020083A6 */  sh         $v1, 0x2($s4)
  .Llevel_41_8007F2DC:
    /* 2BCA878 8007F2DC 5100A492 */  lbu        $a0, 0x51($s5)
    /* 2BCA87C 8007F2E0 00000000 */  nop
    /* 2BCA880 8007F2E4 26008010 */  beqz       $a0, .Llevel_41_8007F380
    /* 2BCA884 8007F2E8 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 2BCA888 8007F2EC 1800A28E */  lw         $v0, 0x18($s5)
    /* 2BCA88C 8007F2F0 00000000 */  nop
    /* 2BCA890 8007F2F4 24104300 */  and        $v0, $v0, $v1
    /* 2BCA894 8007F2F8 21004010 */  beqz       $v0, .Llevel_41_8007F380
    /* 2BCA898 8007F2FC 40100400 */   sll       $v0, $a0, 1
    /* 2BCA89C 8007F300 0680013C */  lui        $at, %hi(D_80061C58)
    /* 2BCA8A0 8007F304 21082200 */  addu       $at, $at, $v0
    /* 2BCA8A4 8007F308 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 2BCA8A8 8007F30C 00000000 */  nop
    /* 2BCA8AC 8007F310 80100300 */  sll        $v0, $v1, 2
    /* 2BCA8B0 8007F314 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA8B4 8007F318 00190200 */  sll        $v1, $v0, 4
    /* 2BCA8B8 8007F31C 23186200 */  subu       $v1, $v1, $v0
    /* 2BCA8BC 8007F320 00008296 */  lhu        $v0, 0x0($s4)
    /* 2BCA8C0 8007F324 C31A0300 */  sra        $v1, $v1, 11
    /* 2BCA8C4 8007F328 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA8C8 8007F32C 000082A6 */  sh         $v0, 0x0($s4)
    /* 2BCA8CC 8007F330 5100A292 */  lbu        $v0, 0x51($s5)
    /* 2BCA8D0 8007F334 28000424 */  addiu      $a0, $zero, 0x28
    /* 2BCA8D4 8007F338 40100200 */  sll        $v0, $v0, 1
    /* 2BCA8D8 8007F33C 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 2BCA8DC 8007F340 21082200 */  addu       $at, $at, $v0
    /* 2BCA8E0 8007F344 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 2BCA8E4 8007F348 46000524 */  addiu      $a1, $zero, 0x46
    /* 2BCA8E8 8007F34C 80100300 */  sll        $v0, $v1, 2
    /* 2BCA8EC 8007F350 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA8F0 8007F354 00190200 */  sll        $v1, $v0, 4
    /* 2BCA8F4 8007F358 23186200 */  subu       $v1, $v1, $v0
    /* 2BCA8F8 8007F35C 02008296 */  lhu        $v0, 0x2($s4)
    /* 2BCA8FC 8007F360 C31A0300 */  sra        $v1, $v1, 11
    /* 2BCA900 8007F364 21104300 */  addu       $v0, $v0, $v1
    /* 2BCA904 8007F368 47E2000C */  jal        func_8003891C
    /* 2BCA908 8007F36C 020082A6 */   sh        $v0, 0x2($s4)
    /* 2BCA90C 8007F370 04008396 */  lhu        $v1, 0x4($s4)
    /* 2BCA910 8007F374 00000000 */  nop
    /* 2BCA914 8007F378 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA918 8007F37C 040083A6 */  sh         $v1, 0x4($s4)
  .Llevel_41_8007F380:
    /* 2BCA91C 8007F380 00008286 */  lh         $v0, 0x0($s4)
    /* 2BCA920 8007F384 0C00638E */  lw         $v1, 0xC($s3)
    /* 2BCA924 8007F388 80100200 */  sll        $v0, $v0, 2
    /* 2BCA928 8007F38C 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA92C 8007F390 0C0063AE */  sw         $v1, 0xC($s3)
    /* 2BCA930 8007F394 02008286 */  lh         $v0, 0x2($s4)
    /* 2BCA934 8007F398 1000638E */  lw         $v1, 0x10($s3)
    /* 2BCA938 8007F39C 80100200 */  sll        $v0, $v0, 2
    /* 2BCA93C 8007F3A0 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA940 8007F3A4 100063AE */  sw         $v1, 0x10($s3)
    /* 2BCA944 8007F3A8 04008286 */  lh         $v0, 0x4($s4)
    /* 2BCA948 8007F3AC 1400638E */  lw         $v1, 0x14($s3)
    /* 2BCA94C 8007F3B0 80100200 */  sll        $v0, $v0, 2
    /* 2BCA950 8007F3B4 21186200 */  addu       $v1, $v1, $v0
    /* 2BCA954 8007F3B8 4B67010C */  jal        func_80059D2C
    /* 2BCA958 8007F3BC 140063AE */   sw        $v1, 0x14($s3)
    /* 2BCA95C 8007F3C0 4B67010C */  jal        func_80059D2C
    /* 2BCA960 8007F3C4 450062A2 */   sb        $v0, 0x45($s3)
    /* 2BCA964 8007F3C8 4B67010C */  jal        func_80059D2C
    /* 2BCA968 8007F3CC 460062A2 */   sb        $v0, 0x46($s3)
    /* 2BCA96C 8007F3D0 1F004230 */  andi       $v0, $v0, 0x1F
    /* 2BCA970 8007F3D4 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 2BCA974 8007F3D8 4B67010C */  jal        func_80059D2C
    /* 2BCA978 8007F3DC 060082A6 */   sh        $v0, 0x6($s4)
    /* 2BCA97C 8007F3E0 1F004230 */  andi       $v0, $v0, 0x1F
    /* 2BCA980 8007F3E4 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 2BCA984 8007F3E8 4B67010C */  jal        func_80059D2C
    /* 2BCA988 8007F3EC 080082A6 */   sh        $v0, 0x8($s4)
    /* 2BCA98C 8007F3F0 32000424 */  addiu      $a0, $zero, 0x32
    /* 2BCA990 8007F3F4 1F004230 */  andi       $v0, $v0, 0x1F
    /* 2BCA994 8007F3F8 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 2BCA998 8007F3FC 0A0082A6 */  sh         $v0, 0xA($s4)
    /* 2BCA99C 8007F400 1400A28E */  lw         $v0, 0x14($s5)
    /* 2BCA9A0 8007F404 50000524 */  addiu      $a1, $zero, 0x50
    /* 2BCA9A4 8007F408 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 2BCA9A8 8007F40C 47E2000C */  jal        func_8003891C
    /* 2BCA9AC 8007F410 100082AE */   sw        $v0, 0x10($s4)
    /* 2BCA9B0 8007F414 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCA9B4 8007F418 0C0082AE */   sw        $v0, 0xC($s4)
  .Llevel_41_8007F41C:
    /* 2BCA9B8 8007F41C 0000708E */  lw         $s0, 0x0($s3)
    /* 2BCA9BC 8007F420 6C6F000C */  jal        func_8001BDB0
    /* 2BCA9C0 8007F424 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 2BCA9C4 8007F428 0E05010C */  jal        func_80041438
    /* 2BCA9C8 8007F42C 21206002 */   addu      $a0, $s3, $zero
    /* 2BCA9CC 8007F430 10000224 */  addiu      $v0, $zero, 0x10
    /* 2BCA9D0 8007F434 3B000324 */  addiu      $v1, $zero, 0x3B
    /* 2BCA9D4 8007F438 000002A6 */  sh         $v0, 0x0($s0)
    /* 2BCA9D8 8007F43C 80000224 */  addiu      $v0, $zero, 0x80
    /* 2BCA9DC 8007F440 570063A2 */  sb         $v1, 0x57($s3)
    /* 2BCA9E0 8007F444 540062A2 */  sb         $v0, 0x54($s3)
    /* 2BCA9E4 8007F448 550062A2 */  sb         $v0, 0x55($s3)
    /* 2BCA9E8 8007F44C 560060A2 */  sb         $zero, 0x56($s3)
    /* 2BCA9EC 8007F450 3600A486 */  lh         $a0, 0x36($s5)
    /* 2BCA9F0 8007F454 98010224 */  addiu      $v0, $zero, 0x198
    /* 2BCA9F4 8007F458 04008210 */  beq        $a0, $v0, .Llevel_41_8007F46C
    /* 2BCA9F8 8007F45C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2BCA9FC 8007F460 C2020224 */  addiu      $v0, $zero, 0x2C2
    /* 2BCAA00 8007F464 05008214 */  bne        $a0, $v0, .Llevel_41_8007F47C
    /* 2BCAA04 8007F468 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_41_8007F46C:
    /* 2BCAA08 8007F46C 020002A2 */  sb         $v0, 0x2($s0)
    /* 2BCAA0C 8007F470 030002A2 */  sb         $v0, 0x3($s0)
    /* 2BCAA10 8007F474 2DFD0108 */  j          .Llevel_41_8007F4B4
    /* 2BCAA14 8007F478 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_41_8007F47C:
    /* 2BCAA18 8007F47C 70020224 */  addiu      $v0, $zero, 0x270
    /* 2BCAA1C 8007F480 0A008214 */  bne        $a0, $v0, .Llevel_41_8007F4AC
    /* 2BCAA20 8007F484 60000224 */   addiu     $v0, $zero, 0x60
    /* 2BCAA24 8007F488 02000224 */  addiu      $v0, $zero, 0x2
    /* 2BCAA28 8007F48C 020002A2 */  sb         $v0, 0x2($s0)
    /* 2BCAA2C 8007F490 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 2BCAA30 8007F494 540062A2 */  sb         $v0, 0x54($s3)
    /* 2BCAA34 8007F498 550062A2 */  sb         $v0, 0x55($s3)
    /* 2BCAA38 8007F49C 560062A2 */  sb         $v0, 0x56($s3)
    /* 2BCAA3C 8007F4A0 60000224 */  addiu      $v0, $zero, 0x60
    /* 2BCAA40 8007F4A4 2CFD0108 */  j          .Llevel_41_8007F4B0
    /* 2BCAA44 8007F4A8 570063A2 */   sb        $v1, 0x57($s3)
  .Llevel_41_8007F4AC:
    /* 2BCAA48 8007F4AC 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_41_8007F4B0:
    /* 2BCAA4C 8007F4B0 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_41_8007F4B4:
    /* 2BCAA50 8007F4B4 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 2BCAA54 8007F4B8 0C006426 */  addiu      $a0, $s3, 0xC
    /* 2BCAA58 8007F4BC 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* 2BCAA5C 8007F4C0 AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* 2BCAA60 8007F4C4 21280002 */  addu       $a1, $s0, $zero
    /* 2BCAA64 8007F4C8 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 2BCAA68 8007F4CC DB6F000C */  jal        func_8001BF6C
    /* 2BCAA6C 8007F4D0 470062A2 */   sb        $v0, 0x47($s3)
    /* 2BCAA70 8007F4D4 21204000 */  addu       $a0, $v0, $zero
    /* 2BCAA74 8007F4D8 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* 2BCAA78 8007F4DC B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* 2BCAA7C 8007F4E0 1400658E */  lw         $a1, 0x14($s3)
    /* 2BCAA80 8007F4E4 21300000 */  addu       $a2, $zero, $zero
    /* 2BCAA84 8007F4E8 2E6D000C */  jal        func_8001B4B8
    /* 2BCAA88 8007F4EC 23284500 */   subu      $a1, $v0, $a1
    /* 2BCAA8C 8007F4F0 21300000 */  addu       $a2, $zero, $zero
    /* 2BCAA90 8007F4F4 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 2BCAA94 8007F4F8 450062A2 */  sb         $v0, 0x45($s3)
    /* 2BCAA98 8007F4FC 0000038E */  lw         $v1, 0x0($s0)
    /* 2BCAA9C 8007F500 0C00648E */  lw         $a0, 0xC($s3)
    /* 2BCAAA0 8007F504 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* 2BCAAA4 8007F508 B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* 2BCAAA8 8007F50C 1000658E */  lw         $a1, 0x10($s3)
    /* 2BCAAAC 8007F510 23206400 */  subu       $a0, $v1, $a0
    /* 2BCAAB0 8007F514 2E6D000C */  jal        func_8001B4B8
    /* 2BCAAB4 8007F518 23284500 */   subu      $a1, $v0, $a1
    /* 2BCAAB8 8007F51C 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCAABC 8007F520 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_41_8007F524:
    /* 2BCAAC0 8007F524 2120A002 */  addu       $a0, $s5, $zero
    /* 2BCAAC4 8007F528 0000748E */  lw         $s4, 0x0($s3)
    /* 2BCAAC8 8007F52C 4E05010C */  jal        func_80041538
    /* 2BCAACC 8007F530 04000524 */   addiu     $a1, $zero, 0x4
    /* 2BCAAD0 8007F534 2120A002 */  addu       $a0, $s5, $zero
    /* 2BCAAD4 8007F538 21280000 */  addu       $a1, $zero, $zero
    /* 2BCAAD8 8007F53C 0C007026 */  addiu      $s0, $s3, 0xC
    /* 2BCAADC 8007F540 CC05010C */  jal        func_80041730
    /* 2BCAAE0 8007F544 21300002 */   addu      $a2, $s0, $zero
    /* 2BCAAE4 8007F548 0E05010C */  jal        func_80041438
    /* 2BCAAE8 8007F54C 21206002 */   addu      $a0, $s3, $zero
    /* 2BCAAEC 8007F550 21200002 */  addu       $a0, $s0, $zero
    /* 2BCAAF0 8007F554 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 2BCAAF4 8007F558 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 2BCAAF8 8007F55C DB6F000C */  jal        func_8001BF6C
    /* 2BCAAFC 8007F560 21284002 */   addu      $a1, $s2, $zero
    /* 2BCAB00 8007F564 00064228 */  slti       $v0, $v0, 0x600
    /* 2BCAB04 8007F568 17004010 */  beqz       $v0, .Llevel_41_8007F5C8
    /* 2BCAB08 8007F56C 0C00B126 */   addiu     $s1, $s5, 0xC
    /* 2BCAB0C 8007F570 21202002 */  addu       $a0, $s1, $zero
    /* 2BCAB10 8007F574 DB6F000C */  jal        func_8001BF6C
    /* 2BCAB14 8007F578 21284002 */   addu      $a1, $s2, $zero
    /* 2BCAB18 8007F57C 00064228 */  slti       $v0, $v0, 0x600
    /* 2BCAB1C 8007F580 11004010 */  beqz       $v0, .Llevel_41_8007F5C8
    /* 2BCAB20 8007F584 21200002 */   addu      $a0, $s0, $zero
    /* 2BCAB24 8007F588 6C6F000C */  jal        func_8001BDB0
    /* 2BCAB28 8007F58C 21282002 */   addu      $a1, $s1, $zero
    /* 2BCAB2C 8007F590 21300000 */  addu       $a2, $zero, $zero
    /* 2BCAB30 8007F594 0000438E */  lw         $v1, 0x0($s2)
    /* 2BCAB34 8007F598 0C00648E */  lw         $a0, 0xC($s3)
    /* 2BCAB38 8007F59C 0780023C */  lui        $v0, %hi(D_80069FF4)
    /* 2BCAB3C 8007F5A0 F49F428C */  lw         $v0, %lo(D_80069FF4)($v0)
    /* 2BCAB40 8007F5A4 1000658E */  lw         $a1, 0x10($s3)
    /* 2BCAB44 8007F5A8 23206400 */  subu       $a0, $v1, $a0
    /* 2BCAB48 8007F5AC 2E6D000C */  jal        func_8001B4B8
    /* 2BCAB4C 8007F5B0 23284500 */   subu      $a1, $v0, $a1
    /* 2BCAB50 8007F5B4 1400638E */  lw         $v1, 0x14($s3)
    /* 2BCAB54 8007F5B8 460062A2 */  sb         $v0, 0x46($s3)
    /* 2BCAB58 8007F5BC 90016324 */  addiu      $v1, $v1, 0x190
    /* 2BCAB5C 8007F5C0 77FD0108 */  j          .Llevel_41_8007F5DC
    /* 2BCAB60 8007F5C4 140063AE */   sw        $v1, 0x14($s3)
  .Llevel_41_8007F5C8:
    /* 2BCAB64 8007F5C8 1400628E */  lw         $v0, 0x14($s3)
    /* 2BCAB68 8007F5CC 4600A392 */  lbu        $v1, 0x46($s5)
    /* 2BCAB6C 8007F5D0 24FF4224 */  addiu      $v0, $v0, -0xDC
    /* 2BCAB70 8007F5D4 460063A2 */  sb         $v1, 0x46($s3)
    /* 2BCAB74 8007F5D8 140062AE */  sw         $v0, 0x14($s3)
  .Llevel_41_8007F5DC:
    /* 2BCAB78 8007F5DC 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 2BCAB7C 8007F5E0 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCAB80 8007F5E4 000082AE */   sw        $v0, 0x0($s4)
  .Llevel_41_8007F5E8:
    /* 2BCAB84 8007F5E8 0000708E */  lw         $s0, 0x0($s3)
    /* 2BCAB88 8007F5EC 6C6F000C */  jal        func_8001BDB0
    /* 2BCAB8C 8007F5F0 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 2BCAB90 8007F5F4 0E05010C */  jal        func_80041438
    /* 2BCAB94 8007F5F8 21206002 */   addu      $a0, $s3, $zero
    /* 2BCAB98 8007F5FC 10000224 */  addiu      $v0, $zero, 0x10
    /* 2BCAB9C 8007F600 000002AE */  sw         $v0, 0x0($s0)
    /* 2BCABA0 8007F604 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 2BCABA4 8007F608 570062A2 */  sb         $v0, 0x57($s3)
    /* 2BCABA8 8007F60C 80000224 */  addiu      $v0, $zero, 0x80
    /* 2BCABAC 8007F610 540062A2 */  sb         $v0, 0x54($s3)
    /* 2BCABB0 8007F614 40000224 */  addiu      $v0, $zero, 0x40
    /* 2BCABB4 8007F618 550062A2 */  sb         $v0, 0x55($s3)
    /* 2BCABB8 8007F61C 4B67010C */  jal        func_80059D2C
    /* 2BCABBC 8007F620 560060A2 */   sb        $zero, 0x56($s3)
    /* 2BCABC0 8007F624 4B67010C */  jal        func_80059D2C
    /* 2BCABC4 8007F628 450062A2 */   sb        $v0, 0x45($s3)
    /* 2BCABC8 8007F62C 460062A2 */  sb         $v0, 0x46($s3)
    /* 2BCABCC 8007F630 46000224 */  addiu      $v0, $zero, 0x46
    /* 2BCABD0 8007F634 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 2BCABD4 8007F638 04000224 */  addiu      $v0, $zero, 0x4
    /* 2BCABD8 8007F63C 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCABDC 8007F640 470062A2 */   sb        $v0, 0x47($s3)
  .Llevel_41_8007F644:
    /* 2BCABE0 8007F644 0000728E */  lw         $s2, 0x0($s3)
    /* 2BCABE4 8007F648 0E05010C */  jal        func_80041438
    /* 2BCABE8 8007F64C 21206002 */   addu      $a0, $s3, $zero
    /* 2BCABEC 8007F650 40000224 */  addiu      $v0, $zero, 0x40
    /* 2BCABF0 8007F654 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 2BCABF4 8007F658 9C00A016 */  bnez       $s5, .Llevel_41_8007F8CC
    /* 2BCABF8 8007F65C 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* 2BCABFC 8007F660 B8010224 */  addiu      $v0, $zero, 0x1B8
    /* 2BCAC00 8007F664 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* 2BCAC04 8007F668 D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* 2BCAC08 8007F66C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2BCAC0C 8007F670 1400A0AF */  sw         $zero, 0x14($sp)
    /* 2BCAC10 8007F674 1800A0AF */  sw         $zero, 0x18($sp)
    /* 2BCAC14 8007F678 0000A38C */  lw         $v1, 0x0($a1)
    /* 2BCAC18 8007F67C 07000224 */  addiu      $v0, $zero, 0x7
    /* 2BCAC1C 8007F680 25006214 */  bne        $v1, $v0, .Llevel_41_8007F718
    /* 2BCAC20 8007F684 0C006426 */   addiu     $a0, $s3, 0xC
    /* 2BCAC24 8007F688 0C007026 */  addiu      $s0, $s3, 0xC
    /* 2BCAC28 8007F68C 21200002 */  addu       $a0, $s0, $zero
    /* 2BCAC2C 8007F690 6C6F000C */  jal        func_8001BDB0
    /* 2BCAC30 8007F694 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 2BCAC34 8007F698 4000A427 */  addiu      $a0, $sp, 0x40
    /* 2BCAC38 8007F69C 2000B127 */  addiu      $s1, $sp, 0x20
    /* 2BCAC3C 8007F6A0 21282002 */  addu       $a1, $s1, $zero
    /* 2BCAC40 8007F6A4 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 2BCAC44 8007F6A8 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 2BCAC48 8007F6AC 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* 2BCAC4C 8007F6B0 CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* 2BCAC50 8007F6B4 21300000 */  addu       $a2, $zero, $zero
    /* 2BCAC54 8007F6B8 4000A0A3 */  sb         $zero, 0x40($sp)
    /* 2BCAC58 8007F6BC 02190300 */  srl        $v1, $v1, 4
    /* 2BCAC5C 8007F6C0 00140200 */  sll        $v0, $v0, 16
    /* 2BCAC60 8007F6C4 03150200 */  sra        $v0, $v0, 20
    /* 2BCAC64 8007F6C8 23100200 */  negu       $v0, $v0
    /* 2BCAC68 8007F6CC 4100A2A3 */  sb         $v0, 0x41($sp)
    /* 2BCAC6C 8007F6D0 B26D000C */  jal        func_8001B6C8
    /* 2BCAC70 8007F6D4 4200A3A3 */   sb        $v1, 0x42($sp)
    /* 2BCAC74 8007F6D8 21202002 */  addu       $a0, $s1, $zero
    /* 2BCAC78 8007F6DC 1000A527 */  addiu      $a1, $sp, 0x10
    /* 2BCAC7C 8007F6E0 696E000C */  jal        func_8001B9A4
    /* 2BCAC80 8007F6E4 2130A000 */   addu      $a2, $a1, $zero
    /* 2BCAC84 8007F6E8 21200002 */  addu       $a0, $s0, $zero
    /* 2BCAC88 8007F6EC 21280002 */  addu       $a1, $s0, $zero
    /* 2BCAC8C 8007F6F0 736F000C */  jal        func_8001BDCC
    /* 2BCAC90 8007F6F4 1000A627 */   addiu     $a2, $sp, 0x10
    /* 2BCAC94 8007F6F8 21200002 */  addu       $a0, $s0, $zero
    /* 2BCAC98 8007F6FC 21280002 */  addu       $a1, $s0, $zero
    /* 2BCAC9C 8007F700 736F000C */  jal        func_8001BDCC
    /* 2BCACA0 8007F704 1000A627 */   addiu     $a2, $sp, 0x10
    /* 2BCACA4 8007F708 21200002 */  addu       $a0, $s0, $zero
    /* 2BCACA8 8007F70C 21288000 */  addu       $a1, $a0, $zero
    /* 2BCACAC 8007F710 EEFD0108 */  j          .Llevel_41_8007F7B8
    /* 2BCACB0 8007F714 1000A627 */   addiu     $a2, $sp, 0x10
  .Llevel_41_8007F718:
    /* 2BCACB4 8007F718 6C6F000C */  jal        func_8001BDB0
    /* 2BCACB8 8007F71C DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 2BCACBC 8007F720 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 2BCACC0 8007F724 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 2BCACC4 8007F728 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 2BCACC8 8007F72C B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 2BCACCC 8007F730 6800A0A3 */  sb         $zero, 0x68($sp)
    /* 2BCACD0 8007F734 07004014 */  bnez       $v0, .Llevel_41_8007F754
    /* 2BCACD4 8007F738 6900A3A3 */   sb        $v1, 0x69($sp)
    /* 2BCACD8 8007F73C FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 2BCACDC 8007F740 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2BCACE0 8007F744 F900422C */  sltiu      $v0, $v0, 0xF9
    /* 2BCACE4 8007F748 03004014 */  bnez       $v0, .Llevel_41_8007F758
    /* 2BCACE8 8007F74C 6800A427 */   addiu     $a0, $sp, 0x68
    /* 2BCACEC 8007F750 6900A0A3 */  sb         $zero, 0x69($sp)
  .Llevel_41_8007F754:
    /* 2BCACF0 8007F754 6800A427 */  addiu      $a0, $sp, 0x68
  .Llevel_41_8007F758:
    /* 2BCACF4 8007F758 4800B027 */  addiu      $s0, $sp, 0x48
    /* 2BCACF8 8007F75C 21280002 */  addu       $a1, $s0, $zero
    /* 2BCACFC 8007F760 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* 2BCAD00 8007F764 FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* 2BCAD04 8007F768 00002292 */  lbu        $v0, 0x0($s1)
    /* 2BCAD08 8007F76C 21300000 */  addu       $a2, $zero, $zero
    /* 2BCAD0C 8007F770 B26D000C */  jal        func_8001B6C8
    /* 2BCAD10 8007F774 6A00A2A3 */   sb        $v0, 0x6A($sp)
    /* 2BCAD14 8007F778 21200002 */  addu       $a0, $s0, $zero
    /* 2BCAD18 8007F77C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 2BCAD1C 8007F780 696E000C */  jal        func_8001B9A4
    /* 2BCAD20 8007F784 2130A000 */   addu      $a2, $a1, $zero
    /* 2BCAD24 8007F788 21200002 */  addu       $a0, $s0, $zero
    /* 2BCAD28 8007F78C 0C007026 */  addiu      $s0, $s3, 0xC
    /* 2BCAD2C 8007F790 21280002 */  addu       $a1, $s0, $zero
    /* 2BCAD30 8007F794 21300002 */  addu       $a2, $s0, $zero
    /* 2BCAD34 8007F798 F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 2BCAD38 8007F79C 0C0062AE */  sw         $v0, 0xC($s3)
    /* 2BCAD3C 8007F7A0 100060AE */  sw         $zero, 0x10($s3)
    /* 2BCAD40 8007F7A4 696E000C */  jal        func_8001B9A4
    /* 2BCAD44 8007F7A8 140060AE */   sw        $zero, 0x14($s3)
    /* 2BCAD48 8007F7AC 21200002 */  addu       $a0, $s0, $zero
    /* 2BCAD4C 8007F7B0 21288000 */  addu       $a1, $a0, $zero
    /* 2BCAD50 8007F7B4 F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_41_8007F7B8:
    /* 2BCAD54 8007F7B8 736F000C */  jal        func_8001BDCC
    /* 2BCAD58 8007F7BC 00000000 */   nop
    /* 2BCAD5C 8007F7C0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2BCAD60 8007F7C4 886E000C */  jal        func_8001BA20
    /* 2BCAD64 8007F7C8 21280000 */   addu      $a1, $zero, $zero
    /* 2BCAD68 8007F7CC 21204000 */  addu       $a0, $v0, $zero
    /* 2BCAD6C 8007F7D0 1800A58F */  lw         $a1, 0x18($sp)
    /* 2BCAD70 8007F7D4 2E6D000C */  jal        func_8001B4B8
    /* 2BCAD74 8007F7D8 21300000 */   addu      $a2, $zero, $zero
    /* 2BCAD78 8007F7DC 450062A2 */  sb         $v0, 0x45($s3)
    /* 2BCAD7C 8007F7E0 1000A48F */  lw         $a0, 0x10($sp)
    /* 2BCAD80 8007F7E4 1400A58F */  lw         $a1, 0x14($sp)
    /* 2BCAD84 8007F7E8 2E6D000C */  jal        func_8001B4B8
    /* 2BCAD88 8007F7EC 21300000 */   addu      $a2, $zero, $zero
    /* 2BCAD8C 8007F7F0 460062A2 */  sb         $v0, 0x46($s3)
    /* 2BCAD90 8007F7F4 1000A28F */  lw         $v0, 0x10($sp)
    /* 2BCAD94 8007F7F8 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 2BCAD98 8007F7FC 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 2BCAD9C 8007F800 0680043C */  lui        $a0, %hi(D_800670BC)
    /* 2BCADA0 8007F804 BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* 2BCADA4 8007F808 000042A6 */  sh         $v0, 0x0($s2)
    /* 2BCADA8 8007F80C 1400A28F */  lw         $v0, 0x14($sp)
    /* 2BCADAC 8007F810 00000000 */  nop
    /* 2BCADB0 8007F814 020042A6 */  sh         $v0, 0x2($s2)
    /* 2BCADB4 8007F818 1800A28F */  lw         $v0, 0x18($sp)
    /* 2BCADB8 8007F81C 00000000 */  nop
    /* 2BCADBC 8007F820 040042A6 */  sh         $v0, 0x4($s2)
    /* 2BCADC0 8007F824 2B106400 */  sltu       $v0, $v1, $a0
    /* 2BCADC4 8007F828 0A004010 */  beqz       $v0, .Llevel_41_8007F854
    /* 2BCADC8 8007F82C 44010524 */   addiu     $a1, $zero, 0x144
    /* 2BCADCC 8007F830 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_41_8007F834:
    /* 2BCADD0 8007F834 36006284 */  lh         $v0, 0x36($v1)
    /* 2BCADD4 8007F838 00000000 */  nop
    /* 2BCADD8 8007F83C 05004610 */  beq        $v0, $a2, .Llevel_41_8007F854
    /* 2BCADDC 8007F840 00000000 */   nop
    /* 2BCADE0 8007F844 58006324 */  addiu      $v1, $v1, 0x58
    /* 2BCADE4 8007F848 2B106400 */  sltu       $v0, $v1, $a0
    /* 2BCADE8 8007F84C F9FF4014 */  bnez       $v0, .Llevel_41_8007F834
    /* 2BCADEC 8007F850 00000000 */   nop
  .Llevel_41_8007F854:
    /* 2BCADF0 8007F854 13006010 */  beqz       $v1, .Llevel_41_8007F8A4
    /* 2BCADF4 8007F858 40100500 */   sll       $v0, $a1, 1
    /* 2BCADF8 8007F85C 0000678C */  lw         $a3, 0x0($v1)
    /* 2BCADFC 8007F860 21104500 */  addu       $v0, $v0, $a1
    /* 2BCAE00 8007F864 0000E38C */  lw         $v1, 0x0($a3)
    /* 2BCAE04 8007F868 40100200 */  sll        $v0, $v0, 1
    /* 2BCAE08 8007F86C 21186500 */  addu       $v1, $v1, $a1
    /* 2BCAE0C 8007F870 0000E3AC */  sw         $v1, 0x0($a3)
    /* 2BCAE10 8007F874 2A186200 */  slt        $v1, $v1, $v0
    /* 2BCAE14 8007F878 02006014 */  bnez       $v1, .Llevel_41_8007F884
    /* 2BCAE18 8007F87C 10004426 */   addiu     $a0, $s2, 0x10
    /* 2BCAE1C 8007F880 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_41_8007F884:
    /* 2BCAE20 8007F884 0400E524 */  addiu      $a1, $a3, 0x4
    /* 2BCAE24 8007F888 0000E28C */  lw         $v0, 0x0($a3)
    /* 2BCAE28 8007F88C 08000624 */  addiu      $a2, $zero, 0x8
    /* 2BCAE2C 8007F890 0C004224 */  addiu      $v0, $v0, 0xC
    /* 2BCAE30 8007F894 2110E200 */  addu       $v0, $a3, $v0
    /* 2BCAE34 8007F898 080042AE */  sw         $v0, 0x8($s2)
    /* 2BCAE38 8007F89C 036D000C */  jal        func_8001B40C
    /* 2BCAE3C 8007F8A0 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_41_8007F8A4:
    /* 2BCAE40 8007F8A4 21206002 */  addu       $a0, $s3, $zero
    /* 2BCAE44 8007F8A8 21280000 */  addu       $a1, $zero, $zero
    /* 2BCAE48 8007F8AC 21300000 */  addu       $a2, $zero, $zero
    /* 2BCAE4C 8007F8B0 6E000224 */  addiu      $v0, $zero, 0x6E
    /* 2BCAE50 8007F8B4 070042A2 */  sb         $v0, 0x7($s2)
    /* 2BCAE54 8007F8B8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BCAE58 8007F8BC 9241010C */  jal        func_80050648
    /* 2BCAE5C 8007F8C0 4B0062A2 */   sb        $v0, 0x4B($s3)
    /* 2BCAE60 8007F8C4 67FE0108 */  j          .Llevel_41_8007F99C
    /* 2BCAE64 8007F8C8 21106002 */   addu      $v0, $s3, $zero
  .Llevel_41_8007F8CC:
    /* 2BCAE68 8007F8CC 0C006426 */  addiu      $a0, $s3, 0xC
    /* 2BCAE6C 8007F8D0 6C6F000C */  jal        func_8001BDB0
    /* 2BCAE70 8007F8D4 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 2BCAE74 8007F8D8 30000224 */  addiu      $v0, $zero, 0x30
    /* 2BCAE78 8007F8DC 070042A2 */  sb         $v0, 0x7($s2)
    /* 2BCAE7C 8007F8E0 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 2BCAE80 8007F8E4 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 2BCAE84 8007F8E8 07004392 */  lbu        $v1, 0x7($s2)
    /* 2BCAE88 8007F8EC 00000000 */  nop
    /* 2BCAE8C 8007F8F0 40100300 */  sll        $v0, $v1, 1
    /* 2BCAE90 8007F8F4 21104300 */  addu       $v0, $v0, $v1
    /* 2BCAE94 8007F8F8 43100200 */  sra        $v0, $v0, 1
    /* 2BCAE98 8007F8FC 540062A2 */  sb         $v0, 0x54($s3)
    /* 2BCAE9C 8007F900 07004392 */  lbu        $v1, 0x7($s2)
    /* 2BCAEA0 8007F904 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 2BCAEA4 8007F908 560060A2 */  sb         $zero, 0x56($s3)
    /* 2BCAEA8 8007F90C 570062A2 */  sb         $v0, 0x57($s3)
    /* 2BCAEAC 8007F910 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCAEB0 8007F914 550063A2 */   sb        $v1, 0x55($s3)
  .Llevel_41_8007F918:
    /* 2BCAEB4 8007F918 0C006426 */  addiu      $a0, $s3, 0xC
    /* 2BCAEB8 8007F91C 0000708E */  lw         $s0, 0x0($s3)
    /* 2BCAEBC 8007F920 6C6F000C */  jal        func_8001BDB0
    /* 2BCAEC0 8007F924 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 2BCAEC4 8007F928 0E05010C */  jal        func_80041438
    /* 2BCAEC8 8007F92C 21206002 */   addu      $a0, $s3, $zero
    /* 2BCAECC 8007F930 18000224 */  addiu      $v0, $zero, 0x18
    /* 2BCAED0 8007F934 000002AE */  sw         $v0, 0x0($s0)
    /* 2BCAED4 8007F938 30000224 */  addiu      $v0, $zero, 0x30
    /* 2BCAED8 8007F93C 570062A2 */  sb         $v0, 0x57($s3)
    /* 2BCAEDC 8007F940 64000224 */  addiu      $v0, $zero, 0x64
    /* 2BCAEE0 8007F944 540060A2 */  sb         $zero, 0x54($s3)
    /* 2BCAEE4 8007F948 550060A2 */  sb         $zero, 0x55($s3)
    /* 2BCAEE8 8007F94C 560060A2 */  sb         $zero, 0x56($s3)
    /* 2BCAEEC 8007F950 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 2BCAEF0 8007F954 4B67010C */  jal        func_80059D2C
    /* 2BCAEF4 8007F958 470060A2 */   sb        $zero, 0x47($s3)
    /* 2BCAEF8 8007F95C 4B67010C */  jal        func_80059D2C
    /* 2BCAEFC 8007F960 450062A2 */   sb        $v0, 0x45($s3)
    /* 2BCAF00 8007F964 66FE0108 */  j          .Llevel_41_8007F998
    /* 2BCAF04 8007F968 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_41_8007F96C:
    /* 2BCAF08 8007F96C 0300A012 */  beqz       $s5, .Llevel_41_8007F97C
    /* 2BCAF0C 8007F970 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 2BCAF10 8007F974 62FE0108 */  j          .Llevel_41_8007F988
    /* 2BCAF14 8007F978 0C006426 */   addiu     $a0, $s3, 0xC
  .Llevel_41_8007F97C:
    /* 2BCAF18 8007F97C 0C006426 */  addiu      $a0, $s3, 0xC
    /* 2BCAF1C 8007F980 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 2BCAF20 8007F984 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_41_8007F988:
    /* 2BCAF24 8007F988 6C6F000C */  jal        func_8001BDB0
    /* 2BCAF28 8007F98C 00000000 */   nop
    /* 2BCAF2C 8007F990 0E05010C */  jal        func_80041438
    /* 2BCAF30 8007F994 21206002 */   addu      $a0, $s3, $zero
  .Llevel_41_8007F998:
    /* 2BCAF34 8007F998 21106002 */  addu       $v0, $s3, $zero
  .Llevel_41_8007F99C:
    /* 2BCAF38 8007F99C 9800BF8F */  lw         $ra, 0x98($sp)
    /* 2BCAF3C 8007F9A0 9400B78F */  lw         $s7, 0x94($sp)
    /* 2BCAF40 8007F9A4 9000B68F */  lw         $s6, 0x90($sp)
    /* 2BCAF44 8007F9A8 8C00B58F */  lw         $s5, 0x8C($sp)
    /* 2BCAF48 8007F9AC 8800B48F */  lw         $s4, 0x88($sp)
    /* 2BCAF4C 8007F9B0 8400B38F */  lw         $s3, 0x84($sp)
    /* 2BCAF50 8007F9B4 8000B28F */  lw         $s2, 0x80($sp)
    /* 2BCAF54 8007F9B8 7C00B18F */  lw         $s1, 0x7C($sp)
    /* 2BCAF58 8007F9BC 7800B08F */  lw         $s0, 0x78($sp)
    /* 2BCAF5C 8007F9C0 A000BD27 */  addiu      $sp, $sp, 0xA0
    /* 2BCAF60 8007F9C4 0800E003 */  jr         $ra
    /* 2BCAF64 8007F9C8 00000000 */   nop
endlabel func_level_41_8007E998
    /* 2BCAF68 8007F9CC 00000000 */  nop
