.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002D0F8, 0x230

glabel func_8002D0F8
    /* 1D8F8 8002D0F8 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 1D8FC 8002D0FC 6800B0AF */  sw         $s0, 0x68($sp)
    /* 1D900 8002D100 0780103C */  lui        $s0, %hi(D_8006A0F6)
    /* 1D904 8002D104 F6A01026 */  addiu      $s0, $s0, %lo(D_8006A0F6)
    /* 1D908 8002D108 7800BFAF */  sw         $ra, 0x78($sp)
    /* 1D90C 8002D10C 7400B3AF */  sw         $s3, 0x74($sp)
    /* 1D910 8002D110 7000B2AF */  sw         $s2, 0x70($sp)
    /* 1D914 8002D114 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 1D918 8002D118 00000292 */  lbu        $v0, 0x0($s0)
    /* 1D91C 8002D11C 00000000 */  nop
    /* 1D920 8002D120 14004010 */  beqz       $v0, .L8002D174
    /* 1D924 8002D124 DAFF0426 */   addiu     $a0, $s0, -0x26
    /* 1D928 8002D128 21280000 */  addu       $a1, $zero, $zero
    /* 1D92C 8002D12C 886E000C */  jal        func_8001BA20
    /* 1D930 8002D130 4000A0A3 */   sb        $zero, 0x40($sp)
    /* 1D934 8002D134 21204000 */  addu       $a0, $v0, $zero
    /* 1D938 8002D138 0780053C */  lui        $a1, %hi(D_8006A0D8)
    /* 1D93C 8002D13C D8A0A58C */  lw         $a1, %lo(D_8006A0D8)($a1)
    /* 1D940 8002D140 2E6D000C */  jal        func_8001B4B8
    /* 1D944 8002D144 21300000 */   addu      $a2, $zero, $zero
    /* 1D948 8002D148 21300000 */  addu       $a2, $zero, $zero
    /* 1D94C 8002D14C 23100200 */  negu       $v0, $v0
    /* 1D950 8002D150 4100A2A3 */  sb         $v0, 0x41($sp)
    /* 1D954 8002D154 DAFF048E */  lw         $a0, -0x26($s0)
    /* 1D958 8002D158 0780053C */  lui        $a1, %hi(D_8006A0D4)
    /* 1D95C 8002D15C D4A0A58C */  lw         $a1, %lo(D_8006A0D4)($a1)
    /* 1D960 8002D160 23200400 */  negu       $a0, $a0
    /* 1D964 8002D164 2E6D000C */  jal        func_8001B4B8
    /* 1D968 8002D168 23280500 */   negu      $a1, $a1
    /* 1D96C 8002D16C 69B40008 */  j          .L8002D1A4
    /* 1D970 8002D170 4200A2A3 */   sb        $v0, 0x42($sp)
  .L8002D174:
    /* 1D974 8002D174 0780023C */  lui        $v0, %hi(D_8006A054)
    /* 1D978 8002D178 54A0428C */  lw         $v0, %lo(D_8006A054)($v0)
    /* 1D97C 8002D17C 0780033C */  lui        $v1, %hi(D_8006A05C)
    /* 1D980 8002D180 5CA0638C */  lw         $v1, %lo(D_8006A05C)($v1)
    /* 1D984 8002D184 03110200 */  sra        $v0, $v0, 4
    /* 1D988 8002D188 4000A2A3 */  sb         $v0, 0x40($sp)
    /* 1D98C 8002D18C 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 1D990 8002D190 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 1D994 8002D194 03190300 */  sra        $v1, $v1, 4
    /* 1D998 8002D198 4200A3A3 */  sb         $v1, 0x42($sp)
    /* 1D99C 8002D19C 03110200 */  sra        $v0, $v0, 4
    /* 1D9A0 8002D1A0 4100A2A3 */  sb         $v0, 0x41($sp)
  .L8002D1A4:
    /* 1D9A4 8002D1A4 4000A427 */  addiu      $a0, $sp, 0x40
    /* 1D9A8 8002D1A8 4800B127 */  addiu      $s1, $sp, 0x48
    /* 1D9AC 8002D1AC 21282002 */  addu       $a1, $s1, $zero
    /* 1D9B0 8002D1B0 B26D000C */  jal        func_8001B6C8
    /* 1D9B4 8002D1B4 21300000 */   addu      $a2, $zero, $zero
    /* 1D9B8 8002D1B8 2000B027 */  addiu      $s0, $sp, 0x20
    /* 1D9BC 8002D1BC 21200002 */  addu       $a0, $s0, $zero
    /* 1D9C0 8002D1C0 0780123C */  lui        $s2, %hi(D_8006A260)
    /* 1D9C4 8002D1C4 60A25226 */  addiu      $s2, $s2, %lo(D_8006A260)
    /* 1D9C8 8002D1C8 3000B327 */  addiu      $s3, $sp, 0x30
    /* 1D9CC 8002D1CC 0000428E */  lw         $v0, 0x0($s2)
    /* 1D9D0 8002D1D0 21286002 */  addu       $a1, $s3, $zero
    /* 1D9D4 8002D1D4 3400A0AF */  sw         $zero, 0x34($sp)
    /* 1D9D8 8002D1D8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1D9DC 8002D1DC 6C6F000C */  jal        func_8001BDB0
    /* 1D9E0 8002D1E0 3000A2AF */   sw        $v0, 0x30($sp)
    /* 1D9E4 8002D1E4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1D9E8 8002D1E8 2000A28F */  lw         $v0, 0x20($sp)
    /* 1D9EC 8002D1EC 21286002 */  addu       $a1, $s3, $zero
    /* 1D9F0 8002D1F0 A0004224 */  addiu      $v0, $v0, 0xA0
    /* 1D9F4 8002D1F4 6C6F000C */  jal        func_8001BDB0
    /* 1D9F8 8002D1F8 2000A2AF */   sw        $v0, 0x20($sp)
    /* 1D9FC 8002D1FC 21202002 */  addu       $a0, $s1, $zero
    /* 1DA00 8002D200 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1DA04 8002D204 1000A28F */  lw         $v0, 0x10($sp)
    /* 1DA08 8002D208 2130A000 */  addu       $a2, $a1, $zero
    /* 1DA0C 8002D20C 80FF4224 */  addiu      $v0, $v0, -0x80
    /* 1DA10 8002D210 696E000C */  jal        func_8001B9A4
    /* 1DA14 8002D214 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1DA18 8002D218 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1DA1C 8002D21C 90FD5226 */  addiu      $s2, $s2, -0x270
    /* 1DA20 8002D220 21284002 */  addu       $a1, $s2, $zero
    /* 1DA24 8002D224 736F000C */  jal        func_8001BDCC
    /* 1DA28 8002D228 21308000 */   addu      $a2, $a0, $zero
    /* 1DA2C 8002D22C 21200000 */  addu       $a0, $zero, $zero
    /* 1DA30 8002D230 21280002 */  addu       $a1, $s0, $zero
    /* 1DA34 8002D234 696E000C */  jal        func_8001B9A4
    /* 1DA38 8002D238 21300002 */   addu      $a2, $s0, $zero
    /* 1DA3C 8002D23C 21200002 */  addu       $a0, $s0, $zero
    /* 1DA40 8002D240 21284002 */  addu       $a1, $s2, $zero
    /* 1DA44 8002D244 736F000C */  jal        func_8001BDCC
    /* 1DA48 8002D248 21300002 */   addu      $a2, $s0, $zero
    /* 1DA4C 8002D24C 21200000 */  addu       $a0, $zero, $zero
    /* 1DA50 8002D250 21286002 */  addu       $a1, $s3, $zero
    /* 1DA54 8002D254 696E000C */  jal        func_8001B9A4
    /* 1DA58 8002D258 21306002 */   addu      $a2, $s3, $zero
    /* 1DA5C 8002D25C 21206002 */  addu       $a0, $s3, $zero
    /* 1DA60 8002D260 21284002 */  addu       $a1, $s2, $zero
    /* 1DA64 8002D264 736F000C */  jal        func_8001BDCC
    /* 1DA68 8002D268 21306002 */   addu      $a2, $s3, $zero
    /* 1DA6C 8002D26C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1DA70 8002D270 A5F3000C */  jal        func_8003CE94
    /* 1DA74 8002D274 21280002 */   addu      $a1, $s0, $zero
    /* 1DA78 8002D278 23004010 */  beqz       $v0, .L8002D308
    /* 1DA7C 8002D27C 21206002 */   addu      $a0, $s3, $zero
    /* 1DA80 8002D280 0780053C */  lui        $a1, %hi(D_8006AB70)
    /* 1DA84 8002D284 70ABA524 */  addiu      $a1, $a1, %lo(D_8006AB70)
    /* 1DA88 8002D288 806F000C */  jal        func_8001BE00
    /* 1DA8C 8002D28C 21306002 */   addu      $a2, $s3, $zero
    /* 1DA90 8002D290 3000A28F */  lw         $v0, 0x30($sp)
    /* 1DA94 8002D294 00000000 */  nop
    /* 1DA98 8002D298 02004104 */  bgez       $v0, .L8002D2A4
    /* 1DA9C 8002D29C 00000000 */   nop
    /* 1DAA0 8002D2A0 23100200 */  negu       $v0, $v0
  .L8002D2A4:
    /* 1DAA4 8002D2A4 08004228 */  slti       $v0, $v0, 0x8
    /* 1DAA8 8002D2A8 02004010 */  beqz       $v0, .L8002D2B4
    /* 1DAAC 8002D2AC 00000000 */   nop
    /* 1DAB0 8002D2B0 3000A0AF */  sw         $zero, 0x30($sp)
  .L8002D2B4:
    /* 1DAB4 8002D2B4 3400A28F */  lw         $v0, 0x34($sp)
    /* 1DAB8 8002D2B8 00000000 */  nop
    /* 1DABC 8002D2BC 02004104 */  bgez       $v0, .L8002D2C8
    /* 1DAC0 8002D2C0 00000000 */   nop
    /* 1DAC4 8002D2C4 23100200 */  negu       $v0, $v0
  .L8002D2C8:
    /* 1DAC8 8002D2C8 08004228 */  slti       $v0, $v0, 0x8
    /* 1DACC 8002D2CC 02004010 */  beqz       $v0, .L8002D2D8
    /* 1DAD0 8002D2D0 00000000 */   nop
    /* 1DAD4 8002D2D4 3400A0AF */  sw         $zero, 0x34($sp)
  .L8002D2D8:
    /* 1DAD8 8002D2D8 3800A28F */  lw         $v0, 0x38($sp)
    /* 1DADC 8002D2DC 00000000 */  nop
    /* 1DAE0 8002D2E0 02004104 */  bgez       $v0, .L8002D2EC
    /* 1DAE4 8002D2E4 00000000 */   nop
    /* 1DAE8 8002D2E8 23100200 */  negu       $v0, $v0
  .L8002D2EC:
    /* 1DAEC 8002D2EC 08004228 */  slti       $v0, $v0, 0x8
    /* 1DAF0 8002D2F0 02004010 */  beqz       $v0, .L8002D2FC
    /* 1DAF4 8002D2F4 21204002 */   addu      $a0, $s2, $zero
    /* 1DAF8 8002D2F8 3800A0AF */  sw         $zero, 0x38($sp)
  .L8002D2FC:
    /* 1DAFC 8002D2FC 21288000 */  addu       $a1, $a0, $zero
    /* 1DB00 8002D300 736F000C */  jal        func_8001BDCC
    /* 1DB04 8002D304 21306002 */   addu      $a2, $s3, $zero
  .L8002D308:
    /* 1DB08 8002D308 7800BF8F */  lw         $ra, 0x78($sp)
    /* 1DB0C 8002D30C 7400B38F */  lw         $s3, 0x74($sp)
    /* 1DB10 8002D310 7000B28F */  lw         $s2, 0x70($sp)
    /* 1DB14 8002D314 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 1DB18 8002D318 6800B08F */  lw         $s0, 0x68($sp)
    /* 1DB1C 8002D31C 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 1DB20 8002D320 0800E003 */  jr         $ra
    /* 1DB24 8002D324 00000000 */   nop
endlabel func_8002D0F8
