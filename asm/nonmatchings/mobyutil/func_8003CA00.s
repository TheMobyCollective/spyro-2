.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003CA00, 0xFC

glabel func_8003CA00
    /* 2D200 8003CA00 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 2D204 8003CA04 5800B4AF */  sw         $s4, 0x58($sp)
    /* 2D208 8003CA08 21A08000 */  addu       $s4, $a0, $zero
    /* 2D20C 8003CA0C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 2D210 8003CA10 21900000 */  addu       $s2, $zero, $zero
    /* 2D214 8003CA14 5400B3AF */  sw         $s3, 0x54($sp)
    /* 2D218 8003CA18 2800B327 */  addiu      $s3, $sp, 0x28
    /* 2D21C 8003CA1C 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 2D220 8003CA20 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 2D224 8003CA24 4800B0AF */  sw         $s0, 0x48($sp)
    /* 2D228 8003CA28 81000424 */  addiu      $a0, $zero, 0x81
  .L8003CA2C:
    /* 2D22C 8003CA2C 0680023C */  lui        $v0, %hi(D_800670B4)
    /* 2D230 8003CA30 B470428C */  lw         $v0, %lo(D_800670B4)($v0)
    /* 2D234 8003CA34 00000000 */  nop
    /* 2D238 8003CA38 09F84000 */  jalr       $v0
    /* 2D23C 8003CA3C 21288002 */   addu      $a1, $s4, $zero
    /* 2D240 8003CA40 21804000 */  addu       $s0, $v0, $zero
    /* 2D244 8003CA44 20000012 */  beqz       $s0, .L8003CAC8
    /* 2D248 8003CA48 03000524 */   addiu     $a1, $zero, 0x3
    /* 2D24C 8003CA4C 0C000426 */  addiu      $a0, $s0, 0xC
    /* 2D250 8003CA50 06000624 */  addiu      $a2, $zero, 0x6
    /* 2D254 8003CA54 4000073C */  lui        $a3, (0x40E0E0 >> 16)
    /* 2D258 8003CA58 0000118E */  lw         $s1, 0x0($s0)
    /* 2D25C 8003CA5C BF40010C */  jal        func_800502FC
    /* 2D260 8003CA60 E0E0E734 */   ori       $a3, $a3, (0x40E0E0 & 0xFFFF)
    /* 2D264 8003CA64 16004010 */  beqz       $v0, .L8003CAC0
    /* 2D268 8003CA68 040022AE */   sw        $v0, 0x4($s1)
    /* 2D26C 8003CA6C 10000224 */  addiu      $v0, $zero, 0x10
    /* 2D270 8003CA70 000022AE */  sw         $v0, 0x0($s1)
    /* 2D274 8003CA74 4B67010C */  jal        func_80059D2C
    /* 2D278 8003CA78 2000A0A3 */   sb        $zero, 0x20($sp)
    /* 2D27C 8003CA7C 4B67010C */  jal        func_80059D2C
    /* 2D280 8003CA80 2100A2A3 */   sb        $v0, 0x21($sp)
    /* 2D284 8003CA84 2000A427 */  addiu      $a0, $sp, 0x20
    /* 2D288 8003CA88 21286002 */  addu       $a1, $s3, $zero
    /* 2D28C 8003CA8C 21300000 */  addu       $a2, $zero, $zero
    /* 2D290 8003CA90 B26D000C */  jal        func_8001B6C8
    /* 2D294 8003CA94 2200A2A3 */   sb        $v0, 0x22($sp)
    /* 2D298 8003CA98 21206002 */  addu       $a0, $s3, $zero
    /* 2D29C 8003CA9C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 2D2A0 8003CAA0 08002626 */  addiu      $a2, $s1, 0x8
    /* 2D2A4 8003CAA4 32000224 */  addiu      $v0, $zero, 0x32
    /* 2D2A8 8003CAA8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2D2AC 8003CAAC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 2D2B0 8003CAB0 696E000C */  jal        func_8001B9A4
    /* 2D2B4 8003CAB4 1800A0AF */   sw        $zero, 0x18($sp)
    /* 2D2B8 8003CAB8 B3F20008 */  j          .L8003CACC
    /* 2D2BC 8003CABC 01005226 */   addiu     $s2, $s2, 0x1
  .L8003CAC0:
    /* 2D2C0 8003CAC0 CB04010C */  jal        func_8004132C
    /* 2D2C4 8003CAC4 21200002 */   addu      $a0, $s0, $zero
  .L8003CAC8:
    /* 2D2C8 8003CAC8 01005226 */  addiu      $s2, $s2, 0x1
  .L8003CACC:
    /* 2D2CC 8003CACC 0400422A */  slti       $v0, $s2, 0x4
    /* 2D2D0 8003CAD0 D6FF4014 */  bnez       $v0, .L8003CA2C
    /* 2D2D4 8003CAD4 81000424 */   addiu     $a0, $zero, 0x81
    /* 2D2D8 8003CAD8 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 2D2DC 8003CADC 5800B48F */  lw         $s4, 0x58($sp)
    /* 2D2E0 8003CAE0 5400B38F */  lw         $s3, 0x54($sp)
    /* 2D2E4 8003CAE4 5000B28F */  lw         $s2, 0x50($sp)
    /* 2D2E8 8003CAE8 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 2D2EC 8003CAEC 4800B08F */  lw         $s0, 0x48($sp)
    /* 2D2F0 8003CAF0 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 2D2F4 8003CAF4 0800E003 */  jr         $ra
    /* 2D2F8 8003CAF8 00000000 */   nop
endlabel func_8003CA00
