.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B9A0, 0x184

glabel func_8002B9A0
    /* 1C1A0 8002B9A0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1C1A4 8002B9A4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1C1A8 8002B9A8 21888000 */  addu       $s1, $a0, $zero
    /* 1C1AC 8002B9AC 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1C1B0 8002B9B0 0780123C */  lui        $s2, %hi(D_8006A054)
    /* 1C1B4 8002B9B4 54A05226 */  addiu      $s2, $s2, %lo(D_8006A054)
    /* 1C1B8 8002B9B8 3400BFAF */  sw         $ra, 0x34($sp)
    /* 1C1BC 8002B9BC 3000B4AF */  sw         $s4, 0x30($sp)
    /* 1C1C0 8002B9C0 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1C1C4 8002B9C4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1C1C8 8002B9C8 0000448E */  lw         $a0, 0x0($s2)
    /* 1C1CC 8002B9CC 996D000C */  jal        func_8001B664
    /* 1C1D0 8002B9D0 00000000 */   nop
    /* 1C1D4 8002B9D4 0000448E */  lw         $a0, 0x0($s2)
    /* 1C1D8 8002B9D8 876D000C */  jal        func_8001B61C
    /* 1C1DC 8002B9DC 21984000 */   addu      $s3, $v0, $zero
    /* 1C1E0 8002B9E0 0400448E */  lw         $a0, 0x4($s2)
    /* 1C1E4 8002B9E4 21A04000 */  addu       $s4, $v0, $zero
    /* 1C1E8 8002B9E8 23200400 */  negu       $a0, $a0
    /* 1C1EC 8002B9EC 996D000C */  jal        func_8001B664
    /* 1C1F0 8002B9F0 FF0F8430 */   andi      $a0, $a0, 0xFFF
    /* 1C1F4 8002B9F4 21804000 */  addu       $s0, $v0, $zero
    /* 1C1F8 8002B9F8 02000016 */  bnez       $s0, .L8002BA04
    /* 1C1FC 8002B9FC 00000000 */   nop
    /* 1C200 8002BA00 01001024 */  addiu      $s0, $zero, 0x1
  .L8002BA04:
    /* 1C204 8002BA04 0400448E */  lw         $a0, 0x4($s2)
    /* 1C208 8002BA08 00000000 */  nop
    /* 1C20C 8002BA0C 23200400 */  negu       $a0, $a0
    /* 1C210 8002BA10 876D000C */  jal        func_8001B61C
    /* 1C214 8002BA14 FF0F8430 */   andi      $a0, $a0, 0xFFF
    /* 1C218 8002BA18 18002202 */  mult       $s1, $v0
    /* 1C21C 8002BA1C 12100000 */  mflo       $v0
    /* 1C220 8002BA20 00000000 */  nop
    /* 1C224 8002BA24 00000000 */  nop
    /* 1C228 8002BA28 1A005000 */  div        $zero, $v0, $s0
    /* 1C22C 8002BA2C 02000016 */  bnez       $s0, .L8002BA38
    /* 1C230 8002BA30 00000000 */   nop
    /* 1C234 8002BA34 0D000700 */  break      7
  .L8002BA38:
    /* 1C238 8002BA38 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1C23C 8002BA3C 04000116 */  bne        $s0, $at, .L8002BA50
    /* 1C240 8002BA40 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1C244 8002BA44 02004114 */  bne        $v0, $at, .L8002BA50
    /* 1C248 8002BA48 00000000 */   nop
    /* 1C24C 8002BA4C 0D000600 */  break      6
  .L8002BA50:
    /* 1C250 8002BA50 12100000 */  mflo       $v0
    /* 1C254 8002BA54 00000000 */  nop
    /* 1C258 8002BA58 00000000 */  nop
    /* 1C25C 8002BA5C 18003302 */  mult       $s1, $s3
    /* 1C260 8002BA60 12180000 */  mflo       $v1
    /* 1C264 8002BA64 00000000 */  nop
    /* 1C268 8002BA68 00000000 */  nop
    /* 1C26C 8002BA6C 1A007000 */  div        $zero, $v1, $s0
    /* 1C270 8002BA70 02000016 */  bnez       $s0, .L8002BA7C
    /* 1C274 8002BA74 00000000 */   nop
    /* 1C278 8002BA78 0D000700 */  break      7
  .L8002BA7C:
    /* 1C27C 8002BA7C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1C280 8002BA80 04000116 */  bne        $s0, $at, .L8002BA94
    /* 1C284 8002BA84 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1C288 8002BA88 02006114 */  bne        $v1, $at, .L8002BA94
    /* 1C28C 8002BA8C 00000000 */   nop
    /* 1C290 8002BA90 0D000600 */  break      6
  .L8002BA94:
    /* 1C294 8002BA94 12200000 */  mflo       $a0
    /* 1C298 8002BA98 00000000 */  nop
    /* 1C29C 8002BA9C 00000000 */  nop
    /* 1C2A0 8002BAA0 18003402 */  mult       $s1, $s4
    /* 1C2A4 8002BAA4 12380000 */  mflo       $a3
    /* 1C2A8 8002BAA8 0400438E */  lw         $v1, 0x4($s2)
    /* 1C2AC 8002BAAC 00000000 */  nop
    /* 1C2B0 8002BAB0 18005300 */  mult       $v0, $s3
    /* 1C2B4 8002BAB4 03130700 */  sra        $v0, $a3, 12
    /* 1C2B8 8002BAB8 21186200 */  addu       $v1, $v1, $v0
    /* 1C2BC 8002BABC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1C2C0 8002BAC0 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 1C2C4 8002BAC4 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 1C2C8 8002BAC8 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 1C2CC 8002BACC 040043AE */  sw         $v1, 0x4($s2)
    /* 1C2D0 8002BAD0 21104400 */  addu       $v0, $v0, $a0
    /* 1C2D4 8002BAD4 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 1C2D8 8002BAD8 1800A4AF */  sw         $a0, 0x18($sp)
    /* 1C2DC 8002BADC 0780013C */  lui        $at, %hi(D_8006A05C)
    /* 1C2E0 8002BAE0 5CA022AC */  sw         $v0, %lo(D_8006A05C)($at)
    /* 1C2E4 8002BAE4 0000428E */  lw         $v0, 0x0($s2)
    /* 1C2E8 8002BAE8 12280000 */  mflo       $a1
    /* 1C2EC 8002BAEC 031B0500 */  sra        $v1, $a1, 12
    /* 1C2F0 8002BAF0 1000A3AF */  sw         $v1, 0x10($sp)
    /* 1C2F4 8002BAF4 21104300 */  addu       $v0, $v0, $v1
    /* 1C2F8 8002BAF8 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 1C2FC 8002BAFC 000042AE */  sw         $v0, 0x0($s2)
    /* 1C300 8002BB00 3400BF8F */  lw         $ra, 0x34($sp)
    /* 1C304 8002BB04 3000B48F */  lw         $s4, 0x30($sp)
    /* 1C308 8002BB08 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 1C30C 8002BB0C 2800B28F */  lw         $s2, 0x28($sp)
    /* 1C310 8002BB10 2400B18F */  lw         $s1, 0x24($sp)
    /* 1C314 8002BB14 2000B08F */  lw         $s0, 0x20($sp)
    /* 1C318 8002BB18 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 1C31C 8002BB1C 0800E003 */  jr         $ra
    /* 1C320 8002BB20 00000000 */   nop
endlabel func_8002B9A0
