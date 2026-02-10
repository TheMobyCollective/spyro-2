.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_42_8006F870, 0x134

glabel func_level_42_8006F870
    /* 2DD0E0C 8006F870 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2DD0E10 8006F874 0680033C */  lui        $v1, %hi(D_80066F30)
    /* 2DD0E14 8006F878 306F638C */  lw         $v1, %lo(D_80066F30)($v1)
    /* 2DD0E18 8006F87C 02000224 */  addiu      $v0, $zero, 0x2
    /* 2DD0E1C 8006F880 22006214 */  bne        $v1, $v0, .Llevel_42_8006F90C
    /* 2DD0E20 8006F884 1800BFAF */   sw        $ra, 0x18($sp)
    /* 2DD0E24 8006F888 4992033C */  lui        $v1, (0x92492493 >> 16)
    /* 2DD0E28 8006F88C 0680023C */  lui        $v0, %hi(D_80067008)
    /* 2DD0E2C 8006F890 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* 2DD0E30 8006F894 93246334 */  ori        $v1, $v1, (0x92492493 & 0xFFFF)
    /* 2DD0E34 8006F898 43200200 */  sra        $a0, $v0, 1
    /* 2DD0E38 8006F89C 18008300 */  mult       $a0, $v1
    /* 2DD0E3C 8006F8A0 C3170200 */  sra        $v0, $v0, 31
    /* 2DD0E40 8006F8A4 10400000 */  mfhi       $t0
    /* 2DD0E44 8006F8A8 21180401 */  addu       $v1, $t0, $a0
    /* 2DD0E48 8006F8AC C3180300 */  sra        $v1, $v1, 3
    /* 2DD0E4C 8006F8B0 23186200 */  subu       $v1, $v1, $v0
    /* 2DD0E50 8006F8B4 C0100300 */  sll        $v0, $v1, 3
    /* 2DD0E54 8006F8B8 23104300 */  subu       $v0, $v0, $v1
    /* 2DD0E58 8006F8BC 40100200 */  sll        $v0, $v0, 1
    /* 2DD0E5C 8006F8C0 23208200 */  subu       $a0, $a0, $v0
    /* 2DD0E60 8006F8C4 0680033C */  lui        $v1, %hi(D_800635F8)
    /* 2DD0E64 8006F8C8 F8356324 */  addiu      $v1, $v1, %lo(D_800635F8)
    /* 2DD0E68 8006F8CC 0680013C */  lui        $at, %hi(D_800634A8)
    /* 2DD0E6C 8006F8D0 21082400 */  addu       $at, $at, $a0
    /* 2DD0E70 8006F8D4 A8342290 */  lbu        $v0, %lo(D_800634A8)($at)
    /* 2DD0E74 8006F8D8 0680043C */  lui        $a0, %hi(D_80067088)
    /* 2DD0E78 8006F8DC 8870848C */  lw         $a0, %lo(D_80067088)($a0)
    /* 2DD0E7C 8006F8E0 80100200 */  sll        $v0, $v0, 2
    /* 2DD0E80 8006F8E4 21284300 */  addu       $a1, $v0, $v1
    /* 2DD0E84 8006F8E8 0A008228 */  slti       $v0, $a0, 0xA
    /* 2DD0E88 8006F8EC 02004010 */  beqz       $v0, .Llevel_42_8006F8F8
    /* 2DD0E8C 8006F8F0 50010624 */   addiu     $a2, $zero, 0x150
    /* 2DD0E90 8006F8F4 68010624 */  addiu      $a2, $zero, 0x168
  .Llevel_42_8006F8F8:
    /* 2DD0E94 8006F8F8 1000A4AF */  sw         $a0, 0x10($sp)
    /* 2DD0E98 8006F8FC 0680043C */  lui        $a0, %hi(D_8006767C)
    /* 2DD0E9C 8006F900 7C768424 */  addiu      $a0, $a0, %lo(D_8006767C)
    /* 2DD0EA0 8006F904 61BE0108 */  j          .Llevel_42_8006F984
    /* 2DD0EA4 8006F908 EC000724 */   addiu     $a3, $zero, 0xEC
  .Llevel_42_8006F90C:
    /* 2DD0EA8 8006F90C 0680043C */  lui        $a0, %hi(D_80067674)
    /* 2DD0EAC 8006F910 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 2DD0EB0 8006F914 00008290 */  lbu        $v0, 0x0($a0)
    /* 2DD0EB4 8006F918 00000000 */  nop
    /* 2DD0EB8 8006F91C 1B004010 */  beqz       $v0, .Llevel_42_8006F98C
    /* 2DD0EBC 8006F920 AA2A033C */   lui       $v1, (0x2AAAAAAB >> 16)
    /* 2DD0EC0 8006F924 0680023C */  lui        $v0, %hi(D_80067008)
    /* 2DD0EC4 8006F928 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* 2DD0EC8 8006F92C ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 2DD0ECC 8006F930 43280200 */  sra        $a1, $v0, 1
    /* 2DD0ED0 8006F934 1800A300 */  mult       $a1, $v1
    /* 2DD0ED4 8006F938 68010624 */  addiu      $a2, $zero, 0x168
    /* 2DD0ED8 8006F93C EC000724 */  addiu      $a3, $zero, 0xEC
    /* 2DD0EDC 8006F940 C3170200 */  sra        $v0, $v0, 31
    /* 2DD0EE0 8006F944 10400000 */  mfhi       $t0
    /* 2DD0EE4 8006F948 43180800 */  sra        $v1, $t0, 1
    /* 2DD0EE8 8006F94C 23186200 */  subu       $v1, $v1, $v0
    /* 2DD0EEC 8006F950 40100300 */  sll        $v0, $v1, 1
    /* 2DD0EF0 8006F954 21104300 */  addu       $v0, $v0, $v1
    /* 2DD0EF4 8006F958 80100200 */  sll        $v0, $v0, 2
    /* 2DD0EF8 8006F95C 2328A200 */  subu       $a1, $a1, $v0
    /* 2DD0EFC 8006F960 03000224 */  addiu      $v0, $zero, 0x3
    /* 2DD0F00 8006F964 0680013C */  lui        $at, %hi(D_8006349C)
    /* 2DD0F04 8006F968 21082500 */  addu       $at, $at, $a1
    /* 2DD0F08 8006F96C 9C342390 */  lbu        $v1, %lo(D_8006349C)($at)
    /* 2DD0F0C 8006F970 0680053C */  lui        $a1, %hi(D_80063618)
    /* 2DD0F10 8006F974 1836A524 */  addiu      $a1, $a1, %lo(D_80063618)
    /* 2DD0F14 8006F978 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2DD0F18 8006F97C 80180300 */  sll        $v1, $v1, 2
    /* 2DD0F1C 8006F980 21286500 */  addu       $a1, $v1, $a1
  .Llevel_42_8006F984:
    /* 2DD0F20 8006F984 A449010C */  jal        func_80052690
    /* 2DD0F24 8006F988 00000000 */   nop
  .Llevel_42_8006F98C:
    /* 2DD0F28 8006F98C 154D010C */  jal        func_80053454
    /* 2DD0F2C 8006F990 00000000 */   nop
    /* 2DD0F30 8006F994 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2DD0F34 8006F998 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2DD0F38 8006F99C 0800E003 */  jr         $ra
    /* 2DD0F3C 8006F9A0 00000000 */   nop
endlabel func_level_42_8006F870
    /* 2DD0F40 8006F9A4 00000000 */  nop
