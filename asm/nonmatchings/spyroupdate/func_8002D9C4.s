.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002D9C4, 0x144

glabel func_8002D9C4
    /* 1E1C4 8002D9C4 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 1E1C8 8002D9C8 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 1E1CC 8002D9CC 0780113C */  lui        $s1, %hi(D_8006A28C)
    /* 1E1D0 8002D9D0 8CA23126 */  addiu      $s1, $s1, %lo(D_8006A28C)
    /* 1E1D4 8002D9D4 5800BFAF */  sw         $ra, 0x58($sp)
    /* 1E1D8 8002D9D8 5400B3AF */  sw         $s3, 0x54($sp)
    /* 1E1DC 8002D9DC 5000B2AF */  sw         $s2, 0x50($sp)
    /* 1E1E0 8002D9E0 4800B0AF */  sw         $s0, 0x48($sp)
    /* 1E1E4 8002D9E4 0000228E */  lw         $v0, 0x0($s1)
    /* 1E1E8 8002D9E8 00000000 */  nop
    /* 1E1EC 8002D9EC 3D004004 */  bltz       $v0, .L8002DAE4
    /* 1E1F0 8002D9F0 3800B027 */   addiu     $s0, $sp, 0x38
    /* 1E1F4 8002D9F4 686F000C */  jal        func_8001BDA0
    /* 1E1F8 8002D9F8 21200002 */   addu      $a0, $s0, $zero
    /* 1E1FC 8002D9FC 0000248E */  lw         $a0, 0x0($s1)
    /* 1E200 8002DA00 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1E204 8002DA04 21900000 */  addu       $s2, $zero, $zero
    /* 1E208 8002DA08 21980002 */  addu       $s3, $s0, $zero
    /* 1E20C 8002DA0C 04003126 */  addiu      $s1, $s1, 0x4
    /* 1E210 8002DA10 8570000C */  jal        func_8001C214
    /* 1E214 8002DA14 1000B027 */   addiu     $s0, $sp, 0x10
  .L8002DA18:
    /* 1E218 8002DA18 21200002 */  addu       $a0, $s0, $zero
    /* 1E21C 8002DA1C 21280002 */  addu       $a1, $s0, $zero
    /* 1E220 8002DA20 806F000C */  jal        func_8001BE00
    /* 1E224 8002DA24 21302002 */   addu      $a2, $s1, $zero
    /* 1E228 8002DA28 21206002 */  addu       $a0, $s3, $zero
    /* 1E22C 8002DA2C 21286002 */  addu       $a1, $s3, $zero
    /* 1E230 8002DA30 736F000C */  jal        func_8001BDCC
    /* 1E234 8002DA34 21300002 */   addu      $a2, $s0, $zero
    /* 1E238 8002DA38 0C003126 */  addiu      $s1, $s1, 0xC
    /* 1E23C 8002DA3C 01005226 */  addiu      $s2, $s2, 0x1
    /* 1E240 8002DA40 0300422A */  slti       $v0, $s2, 0x3
    /* 1E244 8002DA44 F4FF4014 */  bnez       $v0, .L8002DA18
    /* 1E248 8002DA48 0C001026 */   addiu     $s0, $s0, 0xC
    /* 1E24C 8002DA4C 5555043C */  lui        $a0, (0x55555556 >> 16)
    /* 1E250 8002DA50 3800A28F */  lw         $v0, 0x38($sp)
    /* 1E254 8002DA54 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
    /* 1E258 8002DA58 18004400 */  mult       $v0, $a0
    /* 1E25C 8002DA5C 10500000 */  mfhi       $t2
    /* 1E260 8002DA60 3C00A38F */  lw         $v1, 0x3C($sp)
    /* 1E264 8002DA64 00000000 */  nop
    /* 1E268 8002DA68 18006400 */  mult       $v1, $a0
    /* 1E26C 8002DA6C 10380000 */  mfhi       $a3
    /* 1E270 8002DA70 4000A68F */  lw         $a2, 0x40($sp)
    /* 1E274 8002DA74 00000000 */  nop
    /* 1E278 8002DA78 1800C400 */  mult       $a2, $a0
    /* 1E27C 8002DA7C 06000524 */  addiu      $a1, $zero, 0x6
    /* 1E280 8002DA80 C3170200 */  sra        $v0, $v0, 31
    /* 1E284 8002DA84 23104201 */  subu       $v0, $t2, $v0
    /* 1E288 8002DA88 C31F0300 */  sra        $v1, $v1, 31
    /* 1E28C 8002DA8C 3800A2AF */  sw         $v0, 0x38($sp)
    /* 1E290 8002DA90 21206002 */  addu       $a0, $s3, $zero
    /* 1E294 8002DA94 2318E300 */  subu       $v1, $a3, $v1
    /* 1E298 8002DA98 C3370600 */  sra        $a2, $a2, 31
    /* 1E29C 8002DA9C 3C00A3AF */  sw         $v1, 0x3C($sp)
    /* 1E2A0 8002DAA0 10400000 */  mfhi       $t0
    /* 1E2A4 8002DAA4 23300601 */  subu       $a2, $t0, $a2
    /* 1E2A8 8002DAA8 486F000C */  jal        func_8001BD20
    /* 1E2AC 8002DAAC 4000A6AF */   sw        $a2, 0x40($sp)
    /* 1E2B0 8002DAB0 0780043C */  lui        $a0, %hi(D_8006A06C)
    /* 1E2B4 8002DAB4 6CA08424 */  addiu      $a0, $a0, %lo(D_8006A06C)
    /* 1E2B8 8002DAB8 21288000 */  addu       $a1, $a0, $zero
    /* 1E2BC 8002DABC 736F000C */  jal        func_8001BDCC
    /* 1E2C0 8002DAC0 21306002 */   addu      $a2, $s3, $zero
    /* 1E2C4 8002DAC4 21206002 */  addu       $a0, $s3, $zero
    /* 1E2C8 8002DAC8 886E000C */  jal        func_8001BA20
    /* 1E2CC 8002DACC 01000524 */   addiu     $a1, $zero, 0x1
    /* 1E2D0 8002DAD0 21004228 */  slti       $v0, $v0, 0x21
    /* 1E2D4 8002DAD4 04004014 */  bnez       $v0, .L8002DAE8
    /* 1E2D8 8002DAD8 21100000 */   addu      $v0, $zero, $zero
    /* 1E2DC 8002DADC BAB60008 */  j          .L8002DAE8
    /* 1E2E0 8002DAE0 01000224 */   addiu     $v0, $zero, 0x1
  .L8002DAE4:
    /* 1E2E4 8002DAE4 21100000 */  addu       $v0, $zero, $zero
  .L8002DAE8:
    /* 1E2E8 8002DAE8 5800BF8F */  lw         $ra, 0x58($sp)
    /* 1E2EC 8002DAEC 5400B38F */  lw         $s3, 0x54($sp)
    /* 1E2F0 8002DAF0 5000B28F */  lw         $s2, 0x50($sp)
    /* 1E2F4 8002DAF4 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 1E2F8 8002DAF8 4800B08F */  lw         $s0, 0x48($sp)
    /* 1E2FC 8002DAFC 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 1E300 8002DB00 0800E003 */  jr         $ra
    /* 1E304 8002DB04 00000000 */   nop
endlabel func_8002D9C4
