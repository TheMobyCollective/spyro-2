.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D1BC, 0x11C

glabel func_8004D1BC
    /* 3D9BC 8004D1BC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3D9C0 8004D1C0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3D9C4 8004D1C4 21888000 */  addu       $s1, $a0, $zero
    /* 3D9C8 8004D1C8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3D9CC 8004D1CC 2190A000 */  addu       $s2, $a1, $zero
    /* 3D9D0 8004D1D0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3D9D4 8004D1D4 2198C000 */  addu       $s3, $a2, $zero
    /* 3D9D8 8004D1D8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3D9DC 8004D1DC 21A0E000 */  addu       $s4, $a3, $zero
    /* 3D9E0 8004D1E0 2800B6AF */  sw         $s6, 0x28($sp)
    /* 3D9E4 8004D1E4 0004163C */  lui        $s6, (0x4000000 >> 16)
    /* 3D9E8 8004D1E8 2400B5AF */  sw         $s5, 0x24($sp)
    /* 3D9EC 8004D1EC 50001524 */  addiu      $s5, $zero, 0x50
    /* 3D9F0 8004D1F0 B4000524 */  addiu      $a1, $zero, 0xB4
    /* 3D9F4 8004D1F4 9A000324 */  addiu      $v1, $zero, 0x9A
    /* 3D9F8 8004D1F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3D9FC 8004D1FC 0680103C */  lui        $s0, %hi(D_80067030)
    /* 3DA00 8004D200 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 3DA04 8004D204 11000224 */  addiu      $v0, $zero, 0x11
    /* 3DA08 8004D208 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 3DA0C 8004D20C 21200002 */  addu       $a0, $s0, $zero
    /* 3DA10 8004D210 000016AE */  sw         $s6, 0x0($s0)
    /* 3DA14 8004D214 070015A2 */  sb         $s5, 0x7($s0)
    /* 3DA18 8004D218 080011A6 */  sh         $s1, 0x8($s0)
    /* 3DA1C 8004D21C 0A0012A6 */  sh         $s2, 0xA($s0)
    /* 3DA20 8004D220 100013A6 */  sh         $s3, 0x10($s0)
    /* 3DA24 8004D224 120014A6 */  sh         $s4, 0x12($s0)
    /* 3DA28 8004D228 040005A2 */  sb         $a1, 0x4($s0)
    /* 3DA2C 8004D22C 050003A2 */  sb         $v1, 0x5($s0)
    /* 3DA30 8004D230 060002A2 */  sb         $v0, 0x6($s0)
    /* 3DA34 8004D234 0C0005A2 */  sb         $a1, 0xC($s0)
    /* 3DA38 8004D238 0D0003A2 */  sb         $v1, 0xD($s0)
    /* 3DA3C 8004D23C E46C000C */  jal        func_8001B390
    /* 3DA40 8004D240 0E0002A2 */   sb        $v0, 0xE($s0)
    /* 3DA44 8004D244 14001026 */  addiu      $s0, $s0, 0x14
    /* 3DA48 8004D248 21200002 */  addu       $a0, $s0, $zero
    /* 3DA4C 8004D24C 01003126 */  addiu      $s1, $s1, 0x1
    /* 3DA50 8004D250 01005226 */  addiu      $s2, $s2, 0x1
    /* 3DA54 8004D254 01007326 */  addiu      $s3, $s3, 0x1
    /* 3DA58 8004D258 01009426 */  addiu      $s4, $s4, 0x1
    /* 3DA5C 8004D25C 80000324 */  addiu      $v1, $zero, 0x80
    /* 3DA60 8004D260 52000224 */  addiu      $v0, $zero, 0x52
    /* 3DA64 8004D264 0680013C */  lui        $at, %hi(D_80067030)
    /* 3DA68 8004D268 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 3DA6C 8004D26C 000016AE */  sw         $s6, 0x0($s0)
    /* 3DA70 8004D270 070015A2 */  sb         $s5, 0x7($s0)
    /* 3DA74 8004D274 080011A6 */  sh         $s1, 0x8($s0)
    /* 3DA78 8004D278 0A0012A6 */  sh         $s2, 0xA($s0)
    /* 3DA7C 8004D27C 100013A6 */  sh         $s3, 0x10($s0)
    /* 3DA80 8004D280 120014A6 */  sh         $s4, 0x12($s0)
    /* 3DA84 8004D284 040003A2 */  sb         $v1, 0x4($s0)
    /* 3DA88 8004D288 050002A2 */  sb         $v0, 0x5($s0)
    /* 3DA8C 8004D28C 060000A2 */  sb         $zero, 0x6($s0)
    /* 3DA90 8004D290 0C0003A2 */  sb         $v1, 0xC($s0)
    /* 3DA94 8004D294 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 3DA98 8004D298 E46C000C */  jal        func_8001B390
    /* 3DA9C 8004D29C 0E0000A2 */   sb        $zero, 0xE($s0)
    /* 3DAA0 8004D2A0 14001026 */  addiu      $s0, $s0, 0x14
    /* 3DAA4 8004D2A4 0680013C */  lui        $at, %hi(D_80067030)
    /* 3DAA8 8004D2A8 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 3DAAC 8004D2AC 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 3DAB0 8004D2B0 2800B68F */  lw         $s6, 0x28($sp)
    /* 3DAB4 8004D2B4 2400B58F */  lw         $s5, 0x24($sp)
    /* 3DAB8 8004D2B8 2000B48F */  lw         $s4, 0x20($sp)
    /* 3DABC 8004D2BC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3DAC0 8004D2C0 1800B28F */  lw         $s2, 0x18($sp)
    /* 3DAC4 8004D2C4 1400B18F */  lw         $s1, 0x14($sp)
    /* 3DAC8 8004D2C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 3DACC 8004D2CC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3DAD0 8004D2D0 0800E003 */  jr         $ra
    /* 3DAD4 8004D2D4 00000000 */   nop
endlabel func_8004D1BC
