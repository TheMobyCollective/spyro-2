.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D8A4, 0x2B4

glabel func_8001D8A4
    /* E0A4 8001D8A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* E0A8 8001D8A8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* E0AC 8001D8AC 967E000C */  jal        func_8001FA58
    /* E0B0 8001D8B0 1800B0AF */   sw        $s0, 0x18($sp)
    /* E0B4 8001D8B4 0680053C */  lui        $a1, %hi(D_80067FC9)
    /* E0B8 8001D8B8 C97FA524 */  addiu      $a1, $a1, %lo(D_80067FC9)
    /* E0BC 8001D8BC 0000A290 */  lbu        $v0, 0x0($a1)
    /* E0C0 8001D8C0 00000000 */  nop
    /* E0C4 8001D8C4 11004010 */  beqz       $v0, .L8001D90C
    /* E0C8 8001D8C8 E3FEA424 */   addiu     $a0, $a1, -0x11D
    /* E0CC 8001D8CC 6C6F000C */  jal        func_8001BDB0
    /* E0D0 8001D8D0 9B00A524 */   addiu     $a1, $a1, 0x9B
    /* E0D4 8001D8D4 0780023C */  lui        $v0, %hi(D_80068070)
    /* E0D8 8001D8D8 70804294 */  lhu        $v0, %lo(D_80068070)($v0)
    /* E0DC 8001D8DC 0780033C */  lui        $v1, %hi(D_80068072)
    /* E0E0 8001D8E0 72806394 */  lhu        $v1, %lo(D_80068072)($v1)
    /* E0E4 8001D8E4 0780043C */  lui        $a0, %hi(D_80068074)
    /* E0E8 8001D8E8 74808494 */  lhu        $a0, %lo(D_80068074)($a0)
    /* E0EC 8001D8EC 0680013C */  lui        $at, %hi(D_80067EC8)
    /* E0F0 8001D8F0 C87E22A4 */  sh         $v0, %lo(D_80067EC8)($at)
    /* E0F4 8001D8F4 0680013C */  lui        $at, %hi(D_80067ECA)
    /* E0F8 8001D8F8 CA7E23A4 */  sh         $v1, %lo(D_80067ECA)($at)
    /* E0FC 8001D8FC 0680013C */  lui        $at, %hi(D_80067ECC)
    /* E100 8001D900 CC7E24A4 */  sh         $a0, %lo(D_80067ECC)($at)
    /* E104 8001D904 54760008 */  j          .L8001D950
    /* E108 8001D908 00000000 */   nop
  .L8001D90C:
    /* E10C 8001D90C 0680023C */  lui        $v0, %hi(D_80067018)
    /* E110 8001D910 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* E114 8001D914 00000000 */  nop
    /* E118 8001D918 09004018 */  blez       $v0, .L8001D940
    /* E11C 8001D91C 21800000 */   addu      $s0, $zero, $zero
  .L8001D920:
    /* E120 8001D920 5685000C */  jal        func_80021558
    /* E124 8001D924 01001026 */   addiu     $s0, $s0, 0x1
    /* E128 8001D928 0680023C */  lui        $v0, %hi(D_80067018)
    /* E12C 8001D92C 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* E130 8001D930 00000000 */  nop
    /* E134 8001D934 2A100202 */  slt        $v0, $s0, $v0
    /* E138 8001D938 F9FF4014 */  bnez       $v0, .L8001D920
    /* E13C 8001D93C 00000000 */   nop
  .L8001D940:
    /* E140 8001D940 8178000C */  jal        func_8001E204
    /* E144 8001D944 00000000 */   nop
    /* E148 8001D948 9C78000C */  jal        func_8001E270
    /* E14C 8001D94C 00000000 */   nop
  .L8001D950:
    /* E150 8001D950 0680023C */  lui        $v0, %hi(D_80067F50)
    /* E154 8001D954 507F428C */  lw         $v0, %lo(D_80067F50)($v0)
    /* E158 8001D958 0680033C */  lui        $v1, %hi(D_80067F54)
    /* E15C 8001D95C 547F638C */  lw         $v1, %lo(D_80067F54)($v1)
    /* E160 8001D960 0680043C */  lui        $a0, %hi(D_80067F58)
    /* E164 8001D964 587F848C */  lw         $a0, %lo(D_80067F58)($a0)
    /* E168 8001D968 02004104 */  bgez       $v0, .L8001D974
    /* E16C 8001D96C 00000000 */   nop
    /* E170 8001D970 23100200 */  negu       $v0, $v0
  .L8001D974:
    /* E174 8001D974 02006104 */  bgez       $v1, .L8001D980
    /* E178 8001D978 00000000 */   nop
    /* E17C 8001D97C 23180300 */  negu       $v1, $v1
  .L8001D980:
    /* E180 8001D980 21104300 */  addu       $v0, $v0, $v1
    /* E184 8001D984 02008104 */  bgez       $a0, .L8001D990
    /* E188 8001D988 00000000 */   nop
    /* E18C 8001D98C 23200400 */  negu       $a0, $a0
  .L8001D990:
    /* E190 8001D990 21104400 */  addu       $v0, $v0, $a0
    /* E194 8001D994 0680033C */  lui        $v1, %hi(D_80067F5C)
    /* E198 8001D998 5C7F638C */  lw         $v1, %lo(D_80067F5C)($v1)
    /* E19C 8001D99C 0680043C */  lui        $a0, %hi(D_80067F60)
    /* E1A0 8001D9A0 607F848C */  lw         $a0, %lo(D_80067F60)($a0)
    /* E1A4 8001D9A4 02006104 */  bgez       $v1, .L8001D9B0
    /* E1A8 8001D9A8 00000000 */   nop
    /* E1AC 8001D9AC 23180300 */  negu       $v1, $v1
  .L8001D9B0:
    /* E1B0 8001D9B0 21104300 */  addu       $v0, $v0, $v1
    /* E1B4 8001D9B4 02008104 */  bgez       $a0, .L8001D9C0
    /* E1B8 8001D9B8 00000000 */   nop
    /* E1BC 8001D9BC 23200400 */  negu       $a0, $a0
  .L8001D9C0:
    /* E1C0 8001D9C0 0780033C */  lui        $v1, %hi(D_8006805C)
    /* E1C4 8001D9C4 5C80638C */  lw         $v1, %lo(D_8006805C)($v1)
    /* E1C8 8001D9C8 21104400 */  addu       $v0, $v0, $a0
    /* E1CC 8001D9CC 0680013C */  lui        $at, %hi(D_80067FB4)
    /* E1D0 8001D9D0 B47F22AC */  sw         $v0, %lo(D_80067FB4)($at)
    /* E1D4 8001D9D4 36006010 */  beqz       $v1, .L8001DAB0
    /* E1D8 8001D9D8 00000000 */   nop
    /* E1DC 8001D9DC 0780023C */  lui        $v0, %hi(D_80068060)
    /* E1E0 8001D9E0 6080428C */  lw         $v0, %lo(D_80068060)($v0)
    /* E1E4 8001D9E4 00000000 */  nop
    /* E1E8 8001D9E8 2A104300 */  slt        $v0, $v0, $v1
    /* E1EC 8001D9EC 03004010 */  beqz       $v0, .L8001D9FC
    /* E1F0 8001D9F0 00000000 */   nop
    /* E1F4 8001D9F4 0780013C */  lui        $at, %hi(D_80068060)
    /* E1F8 8001D9F8 608023AC */  sw         $v1, %lo(D_80068060)($at)
  .L8001D9FC:
    /* E1FC 8001D9FC 0680023C */  lui        $v0, %hi(D_80067018)
    /* E200 8001DA00 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* E204 8001DA04 00000000 */  nop
    /* E208 8001DA08 23106200 */  subu       $v0, $v1, $v0
    /* E20C 8001DA0C 0780013C */  lui        $at, %hi(D_8006805C)
    /* E210 8001DA10 5C8022AC */  sw         $v0, %lo(D_8006805C)($at)
    /* E214 8001DA14 03004104 */  bgez       $v0, .L8001DA24
    /* E218 8001DA18 00000000 */   nop
    /* E21C 8001DA1C 0780013C */  lui        $at, %hi(D_8006805C)
    /* E220 8001DA20 5C8020AC */  sw         $zero, %lo(D_8006805C)($at)
  .L8001DA24:
    /* E224 8001DA24 0780033C */  lui        $v1, %hi(D_80068058)
    /* E228 8001DA28 5880638C */  lw         $v1, %lo(D_80068058)($v1)
    /* E22C 8001DA2C 0780023C */  lui        $v0, %hi(D_8006805C)
    /* E230 8001DA30 5C80428C */  lw         $v0, %lo(D_8006805C)($v0)
    /* E234 8001DA34 00000000 */  nop
    /* E238 8001DA38 18006200 */  mult       $v1, $v0
    /* E23C 8001DA3C 0680023C */  lui        $v0, %hi(D_80067008)
    /* E240 8001DA40 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* E244 8001DA44 12180000 */  mflo       $v1
    /* E248 8001DA48 02004230 */  andi       $v0, $v0, 0x2
    /* E24C 8001DA4C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* E250 8001DA50 18006200 */  mult       $v1, $v0
    /* E254 8001DA54 12180000 */  mflo       $v1
    /* E258 8001DA58 0780023C */  lui        $v0, %hi(D_80068060)
    /* E25C 8001DA5C 6080428C */  lw         $v0, %lo(D_80068060)($v0)
    /* E260 8001DA60 00000000 */  nop
    /* E264 8001DA64 1A006200 */  div        $zero, $v1, $v0
    /* E268 8001DA68 02004014 */  bnez       $v0, .L8001DA74
    /* E26C 8001DA6C 00000000 */   nop
    /* E270 8001DA70 0D000700 */  break      7
  .L8001DA74:
    /* E274 8001DA74 FFFF0124 */  addiu      $at, $zero, -0x1
    /* E278 8001DA78 04004114 */  bne        $v0, $at, .L8001DA8C
    /* E27C 8001DA7C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* E280 8001DA80 02006114 */  bne        $v1, $at, .L8001DA8C
    /* E284 8001DA84 00000000 */   nop
    /* E288 8001DA88 0D000600 */  break      6
  .L8001DA8C:
    /* E28C 8001DA8C 12100000 */  mflo       $v0
    /* E290 8001DA90 0680033C */  lui        $v1, %hi(D_80067EB4)
    /* E294 8001DA94 B47E638C */  lw         $v1, %lo(D_80067EB4)($v1)
    /* E298 8001DA98 83110200 */  sra        $v0, $v0, 6
    /* E29C 8001DA9C 21186200 */  addu       $v1, $v1, $v0
    /* E2A0 8001DAA0 0680013C */  lui        $at, %hi(D_80067EB4)
    /* E2A4 8001DAA4 B47E23AC */  sw         $v1, %lo(D_80067EB4)($at)
    /* E2A8 8001DAA8 AE760008 */  j          .L8001DAB8
    /* E2AC 8001DAAC 00000000 */   nop
  .L8001DAB0:
    /* E2B0 8001DAB0 0780013C */  lui        $at, %hi(D_80068060)
    /* E2B4 8001DAB4 608020AC */  sw         $zero, %lo(D_80068060)($at)
  .L8001DAB8:
    /* E2B8 8001DAB8 0680023C */  lui        $v0, %hi(D_80067EE0)
    /* E2BC 8001DABC E07E4290 */  lbu        $v0, %lo(D_80067EE0)($v0)
    /* E2C0 8001DAC0 00000000 */  nop
    /* E2C4 8001DAC4 1F004010 */  beqz       $v0, .L8001DB44
    /* E2C8 8001DAC8 00000000 */   nop
    /* E2CC 8001DACC 0680023C */  lui        $v0, %hi(D_80067F00)
    /* E2D0 8001DAD0 007F428C */  lw         $v0, %lo(D_80067F00)($v0)
    /* E2D4 8001DAD4 0780033C */  lui        $v1, %hi(D_8006A05C)
    /* E2D8 8001DAD8 5CA0638C */  lw         $v1, %lo(D_8006A05C)($v1)
    /* E2DC 8001DADC 00000000 */  nop
    /* E2E0 8001DAE0 23104300 */  subu       $v0, $v0, $v1
    /* E2E4 8001DAE4 00F84224 */  addiu      $v0, $v0, -0x800
    /* E2E8 8001DAE8 FF0F5030 */  andi       $s0, $v0, 0xFFF
    /* E2EC 8001DAEC 0108022A */  slti       $v0, $s0, 0x801
    /* E2F0 8001DAF0 02004014 */  bnez       $v0, .L8001DAFC
    /* E2F4 8001DAF4 00000000 */   nop
    /* E2F8 8001DAF8 00F01026 */  addiu      $s0, $s0, -0x1000
  .L8001DAFC:
    /* E2FC 8001DAFC 02000106 */  bgez       $s0, .L8001DB08
    /* E300 8001DB00 21100002 */   addu      $v0, $s0, $zero
    /* E304 8001DB04 23100200 */  negu       $v0, $v0
  .L8001DB08:
    /* E308 8001DB08 40004228 */  slti       $v0, $v0, 0x40
    /* E30C 8001DB0C 0B004014 */  bnez       $v0, .L8001DB3C
    /* E310 8001DB10 00000000 */   nop
    /* E314 8001DB14 0680023C */  lui        $v0, %hi(D_80067FD4)
    /* E318 8001DB18 D47F428C */  lw         $v0, %lo(D_80067FD4)($v0)
    /* E31C 8001DB1C 00000000 */  nop
    /* E320 8001DB20 06004014 */  bnez       $v0, .L8001DB3C
    /* E324 8001DB24 00000000 */   nop
    /* E328 8001DB28 0680023C */  lui        $v0, %hi(D_80067FC8)
    /* E32C 8001DB2C C87F4290 */  lbu        $v0, %lo(D_80067FC8)($v0)
    /* E330 8001DB30 00000000 */  nop
    /* E334 8001DB34 03004010 */  beqz       $v0, .L8001DB44
    /* E338 8001DB38 00000000 */   nop
  .L8001DB3C:
    /* E33C 8001DB3C 0680013C */  lui        $at, %hi(D_80067EE0)
    /* E340 8001DB40 E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
  .L8001DB44:
    /* E344 8001DB44 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* E348 8001DB48 1800B08F */  lw         $s0, 0x18($sp)
    /* E34C 8001DB4C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* E350 8001DB50 0800E003 */  jr         $ra
    /* E354 8001DB54 00000000 */   nop
endlabel func_8001D8A4
