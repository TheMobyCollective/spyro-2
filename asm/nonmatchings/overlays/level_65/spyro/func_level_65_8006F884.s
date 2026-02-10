.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_65_8006F884, 0x1F4

glabel func_level_65_8006F884
    /* 42C2E20 8006F884 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 42C2E24 8006F888 1000B0AF */  sw         $s0, 0x10($sp)
    /* 42C2E28 8006F88C 0780103C */  lui        $s0, %hi(D_800698EC)
    /* 42C2E2C 8006F890 EC981026 */  addiu      $s0, $s0, %lo(D_800698EC)
    /* 42C2E30 8006F894 1800BFAF */  sw         $ra, 0x18($sp)
    /* 42C2E34 8006F898 1400B1AF */  sw         $s1, 0x14($sp)
    /* 42C2E38 8006F89C 0000028E */  lw         $v0, 0x0($s0)
    /* 42C2E3C 8006F8A0 0800058E */  lw         $a1, 0x8($s0)
    /* 42C2E40 8006F8A4 2400038E */  lw         $v1, 0x24($s0)
    /* 42C2E44 8006F8A8 21204500 */  addu       $a0, $v0, $a1
    /* 42C2E48 8006F8AC 2B006014 */  bnez       $v1, .Llevel_65_8006F95C
    /* 42C2E4C 8006F8B0 000004AE */   sw        $a0, 0x0($s0)
    /* 42C2E50 8006F8B4 0C008014 */  bnez       $a0, .Llevel_65_8006F8E8
    /* 42C2E54 8006F8B8 0C000224 */   addiu     $v0, $zero, 0xC
    /* 42C2E58 8006F8BC 01000224 */  addiu      $v0, $zero, 0x1
    /* 42C2E5C 8006F8C0 0780013C */  lui        $at, %hi(D_800698F0)
    /* 42C2E60 8006F8C4 F09822AC */  sw         $v0, %lo(D_800698F0)($at)
    /* 42C2E64 8006F8C8 0780013C */  lui        $at, %hi(D_800698F8)
    /* 42C2E68 8006F8CC F89820AC */  sw         $zero, %lo(D_800698F8)($at)
    /* 42C2E6C 8006F8D0 080002AE */  sw         $v0, 0x8($s0)
    /* 42C2E70 8006F8D4 000000AE */  sw         $zero, 0x0($s0)
    /* 42C2E74 8006F8D8 0780013C */  lui        $at, %hi(D_80069914)
    /* 42C2E78 8006F8DC 149922AC */  sw         $v0, %lo(D_80069914)($at)
    /* 42C2E7C 8006F8E0 98BE0108 */  j          .Llevel_65_8006FA60
    /* 42C2E80 8006F8E4 00000000 */   nop
  .Llevel_65_8006F8E8:
    /* 42C2E84 8006F8E8 03008214 */  bne        $a0, $v0, .Llevel_65_8006F8F8
    /* 42C2E88 8006F8EC 01000224 */   addiu     $v0, $zero, 0x1
    /* 42C2E8C 8006F8F0 4C00A210 */  beq        $a1, $v0, .Llevel_65_8006FA24
    /* 42C2E90 8006F8F4 00000000 */   nop
  .Llevel_65_8006F8F8:
    /* 42C2E94 8006F8F8 0780103C */  lui        $s0, %hi(D_800698EC)
    /* 42C2E98 8006F8FC EC981026 */  addiu      $s0, $s0, %lo(D_800698EC)
    /* 42C2E9C 8006F900 0000028E */  lw         $v0, 0x0($s0)
    /* 42C2EA0 8006F904 00000000 */  nop
    /* 42C2EA4 8006F908 18004228 */  slti       $v0, $v0, 0x18
    /* 42C2EA8 8006F90C 54004014 */  bnez       $v0, .Llevel_65_8006FA60
    /* 42C2EAC 8006F910 00000000 */   nop
    /* 42C2EB0 8006F914 A44D000C */  jal        func_80013690
    /* 42C2EB4 8006F918 00000000 */   nop
    /* 42C2EB8 8006F91C 03004010 */  beqz       $v0, .Llevel_65_8006F92C
    /* 42C2EBC 8006F920 18000224 */   addiu     $v0, $zero, 0x18
    /* 42C2EC0 8006F924 98BE0108 */  j          .Llevel_65_8006FA60
    /* 42C2EC4 8006F928 000002AE */   sw        $v0, 0x0($s0)
  .Llevel_65_8006F92C:
    /* 42C2EC8 8006F92C C650010C */  jal        func_80054318
    /* 42C2ECC 8006F930 00000000 */   nop
    /* 42C2ED0 8006F934 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 42C2ED4 8006F938 0780013C */  lui        $at, %hi(D_80069904)
    /* 42C2ED8 8006F93C 049922AC */  sw         $v0, %lo(D_80069904)($at)
    /* 42C2EDC 8006F940 8737010C */  jal        func_8004DE1C
    /* 42C2EE0 8006F944 1E000424 */   addiu     $a0, $zero, 0x1E
    /* 42C2EE4 8006F948 01000224 */  addiu      $v0, $zero, 0x1
    /* 42C2EE8 8006F94C 0780013C */  lui        $at, %hi(D_80069910)
    /* 42C2EEC 8006F950 109922AC */  sw         $v0, %lo(D_80069910)($at)
    /* 42C2EF0 8006F954 98BE0108 */  j          .Llevel_65_8006FA60
    /* 42C2EF4 8006F958 000000AE */   sw        $zero, 0x0($s0)
  .Llevel_65_8006F95C:
    /* 42C2EF8 8006F95C 01001124 */  addiu      $s1, $zero, 0x1
    /* 42C2EFC 8006F960 24007114 */  bne        $v1, $s1, .Llevel_65_8006F9F4
    /* 42C2F00 8006F964 AA2A023C */   lui       $v0, (0x2AAAAAAB >> 16)
    /* 42C2F04 8006F968 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 42C2F08 8006F96C 18008200 */  mult       $a0, $v0
    /* 42C2F0C 8006F970 C3170400 */  sra        $v0, $a0, 31
    /* 42C2F10 8006F974 10300000 */  mfhi       $a2
    /* 42C2F14 8006F978 43180600 */  sra        $v1, $a2, 1
    /* 42C2F18 8006F97C 23186200 */  subu       $v1, $v1, $v0
    /* 42C2F1C 8006F980 40100300 */  sll        $v0, $v1, 1
    /* 42C2F20 8006F984 21104300 */  addu       $v0, $v0, $v1
    /* 42C2F24 8006F988 80100200 */  sll        $v0, $v0, 2
    /* 42C2F28 8006F98C 34008214 */  bne        $a0, $v0, .Llevel_65_8006FA60
    /* 42C2F2C 8006F990 00000000 */   nop
    /* 42C2F30 8006F994 C650010C */  jal        func_80054318
    /* 42C2F34 8006F998 00000000 */   nop
    /* 42C2F38 8006F99C A44D000C */  jal        func_80013690
    /* 42C2F3C 8006F9A0 00000000 */   nop
    /* 42C2F40 8006F9A4 2E004014 */  bnez       $v0, .Llevel_65_8006FA60
    /* 42C2F44 8006F9A8 00000000 */   nop
    /* 42C2F48 8006F9AC 0800028E */  lw         $v0, 0x8($s0)
    /* 42C2F4C 8006F9B0 00000000 */  nop
    /* 42C2F50 8006F9B4 09005114 */  bne        $v0, $s1, .Llevel_65_8006F9DC
    /* 42C2F54 8006F9B8 00000000 */   nop
    /* 42C2F58 8006F9BC BA37010C */  jal        func_8004DEE8
    /* 42C2F5C 8006F9C0 00000000 */   nop
    /* 42C2F60 8006F9C4 02000224 */  addiu      $v0, $zero, 0x2
    /* 42C2F64 8006F9C8 0780013C */  lui        $at, %hi(D_80069918)
    /* 42C2F68 8006F9CC 189922AC */  sw         $v0, %lo(D_80069918)($at)
    /* 42C2F6C 8006F9D0 240002AE */  sw         $v0, 0x24($s0)
    /* 42C2F70 8006F9D4 98BE0108 */  j          .Llevel_65_8006FA60
    /* 42C2F74 8006F9D8 000000AE */   sw        $zero, 0x0($s0)
  .Llevel_65_8006F9DC:
    /* 42C2F78 8006F9DC 6537010C */  jal        func_8004DD94
    /* 42C2F7C 8006F9E0 00000000 */   nop
    /* 42C2F80 8006F9E4 17000224 */  addiu      $v0, $zero, 0x17
    /* 42C2F84 8006F9E8 240000AE */  sw         $zero, 0x24($s0)
    /* 42C2F88 8006F9EC 96BE0108 */  j          .Llevel_65_8006FA58
    /* 42C2F8C 8006F9F0 000002AE */   sw        $v0, 0x0($s0)
  .Llevel_65_8006F9F4:
    /* 42C2F90 8006F9F4 07008014 */  bnez       $a0, .Llevel_65_8006FA14
    /* 42C2F94 8006F9F8 0C000224 */   addiu     $v0, $zero, 0xC
    /* 42C2F98 8006F9FC C650010C */  jal        func_80054318
    /* 42C2F9C 8006FA00 00000000 */   nop
    /* 42C2FA0 8006FA04 17000224 */  addiu      $v0, $zero, 0x17
    /* 42C2FA4 8006FA08 240011AE */  sw         $s1, 0x24($s0)
    /* 42C2FA8 8006FA0C 98BE0108 */  j          .Llevel_65_8006FA60
    /* 42C2FAC 8006FA10 000002AE */   sw        $v0, 0x0($s0)
  .Llevel_65_8006FA14:
    /* 42C2FB0 8006FA14 07008214 */  bne        $a0, $v0, .Llevel_65_8006FA34
    /* 42C2FB4 8006FA18 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 42C2FB8 8006FA1C 0500A214 */  bne        $a1, $v0, .Llevel_65_8006FA34
    /* 42C2FBC 8006FA20 00000000 */   nop
  .Llevel_65_8006FA24:
    /* 42C2FC0 8006FA24 C650010C */  jal        func_80054318
    /* 42C2FC4 8006FA28 00000000 */   nop
    /* 42C2FC8 8006FA2C 98BE0108 */  j          .Llevel_65_8006FA60
    /* 42C2FCC 8006FA30 00000000 */   nop
  .Llevel_65_8006FA34:
    /* 42C2FD0 8006FA34 0780033C */  lui        $v1, %hi(D_800698EC)
    /* 42C2FD4 8006FA38 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* 42C2FD8 8006FA3C 18000224 */  addiu      $v0, $zero, 0x18
    /* 42C2FDC 8006FA40 07006214 */  bne        $v1, $v0, .Llevel_65_8006FA60
    /* 42C2FE0 8006FA44 09000224 */   addiu     $v0, $zero, 0x9
    /* 42C2FE4 8006FA48 0780013C */  lui        $at, %hi(D_800698F0)
    /* 42C2FE8 8006FA4C F09822AC */  sw         $v0, %lo(D_800698F0)($at)
    /* 42C2FEC 8006FA50 0780013C */  lui        $at, %hi(D_800698F4)
    /* 42C2FF0 8006FA54 F49820AC */  sw         $zero, %lo(D_800698F4)($at)
  .Llevel_65_8006FA58:
    /* 42C2FF4 8006FA58 0780013C */  lui        $at, %hi(D_800698F8)
    /* 42C2FF8 8006FA5C F89820AC */  sw         $zero, %lo(D_800698F8)($at)
  .Llevel_65_8006FA60:
    /* 42C2FFC 8006FA60 1800BF8F */  lw         $ra, 0x18($sp)
    /* 42C3000 8006FA64 1400B18F */  lw         $s1, 0x14($sp)
    /* 42C3004 8006FA68 1000B08F */  lw         $s0, 0x10($sp)
    /* 42C3008 8006FA6C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 42C300C 8006FA70 0800E003 */  jr         $ra
    /* 42C3010 8006FA74 00000000 */   nop
endlabel func_level_65_8006F884
