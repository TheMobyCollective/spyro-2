.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004DBD8, 0x150

glabel func_8004DBD8
    /* 3E3D8 8004DBD8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3E3DC 8004DBDC 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 3E3E0 8004DBE0 2198A000 */  addu       $s3, $a1, $zero
    /* 3E3E4 8004DBE4 3400B5AF */  sw         $s5, 0x34($sp)
    /* 3E3E8 8004DBE8 21A8C000 */  addu       $s5, $a2, $zero
    /* 3E3EC 8004DBEC 3800B6AF */  sw         $s6, 0x38($sp)
    /* 3E3F0 8004DBF0 21B0E000 */  addu       $s6, $a3, $zero
    /* 3E3F4 8004DBF4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 3E3F8 8004DBF8 01001224 */  addiu      $s2, $zero, 0x1
    /* 3E3FC 8004DBFC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3E400 8004DC00 21888000 */  addu       $s1, $a0, $zero
    /* 3E404 8004DC04 0A00222A */  slti       $v0, $s1, 0xA
    /* 3E408 8004DC08 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 3E40C 8004DC0C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 3E410 8004DC10 0B004014 */  bnez       $v0, .L8004DC40
    /* 3E414 8004DC14 2000B0AF */   sw        $s0, 0x20($sp)
    /* 3E418 8004DC18 6666053C */  lui        $a1, (0x66666667 >> 16)
    /* 3E41C 8004DC1C 6766A534 */  ori        $a1, $a1, (0x66666667 & 0xFFFF)
  .L8004DC20:
    /* 3E420 8004DC20 18002502 */  mult       $s1, $a1
    /* 3E424 8004DC24 C3171100 */  sra        $v0, $s1, 31
    /* 3E428 8004DC28 10400000 */  mfhi       $t0
    /* 3E42C 8004DC2C 83180800 */  sra        $v1, $t0, 2
    /* 3E430 8004DC30 23886200 */  subu       $s1, $v1, $v0
    /* 3E434 8004DC34 0A00222A */  slti       $v0, $s1, 0xA
    /* 3E438 8004DC38 F9FF4010 */  beqz       $v0, .L8004DC20
    /* 3E43C 8004DC3C 01005226 */   addiu     $s2, $s2, 0x1
  .L8004DC40:
    /* 3E440 8004DC40 2E00401A */  blez       $s2, .L8004DCFC
    /* 3E444 8004DC44 21888000 */   addu      $s1, $a0, $zero
    /* 3E448 8004DC48 6666143C */  lui        $s4, (0x66666667 >> 16)
    /* 3E44C 8004DC4C 67669436 */  ori        $s4, $s4, (0x66666667 & 0xFFFF)
  .L8004DC50:
    /* 3E450 8004DC50 18003402 */  mult       $s1, $s4
    /* 3E454 8004DC54 1800A427 */  addiu      $a0, $sp, 0x18
    /* 3E458 8004DC58 0680053C */  lui        $a1, %hi(D_80066EC4)
    /* 3E45C 8004DC5C C46EA524 */  addiu      $a1, $a1, %lo(D_80066EC4)
    /* 3E460 8004DC60 C3171100 */  sra        $v0, $s1, 31
    /* 3E464 8004DC64 10400000 */  mfhi       $t0
    /* 3E468 8004DC68 83180800 */  sra        $v1, $t0, 2
    /* 3E46C 8004DC6C 23186200 */  subu       $v1, $v1, $v0
    /* 3E470 8004DC70 80800300 */  sll        $s0, $v1, 2
    /* 3E474 8004DC74 21800302 */  addu       $s0, $s0, $v1
    /* 3E478 8004DC78 40801000 */  sll        $s0, $s0, 1
    /* 3E47C 8004DC7C 23803002 */  subu       $s0, $s1, $s0
    /* 3E480 8004DC80 2B65010C */  jal        func_800594AC
    /* 3E484 8004DC84 21300002 */   addu      $a2, $s0, $zero
    /* 3E488 8004DC88 0680013C */  lui        $at, %hi(D_8006380C)
    /* 3E48C 8004DC8C 21083000 */  addu       $at, $at, $s0
    /* 3E490 8004DC90 0C382290 */  lbu        $v0, %lo(D_8006380C)($at)
    /* 3E494 8004DC94 0780033C */  lui        $v1, %hi(D_80069924)
    /* 3E498 8004DC98 2499638C */  lw         $v1, %lo(D_80069924)($v1)
    /* 3E49C 8004DC9C 00000000 */  nop
    /* 3E4A0 8004DCA0 09006010 */  beqz       $v1, .L8004DCC8
    /* 3E4A4 8004DCA4 23986202 */   subu      $s3, $s3, $v0
    /* 3E4A8 8004DCA8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E4AC 8004DCAC 1800A427 */  addiu      $a0, $sp, 0x18
    /* 3E4B0 8004DCB0 21286002 */  addu       $a1, $s3, $zero
    /* 3E4B4 8004DCB4 2130A002 */  addu       $a2, $s5, $zero
    /* 3E4B8 8004DCB8 6729010C */  jal        func_8004A59C
    /* 3E4BC 8004DCBC 2138C002 */   addu      $a3, $s6, $zero
    /* 3E4C0 8004DCC0 39370108 */  j          .L8004DCE4
    /* 3E4C4 8004DCC4 18003402 */   mult      $s1, $s4
  .L8004DCC8:
    /* 3E4C8 8004DCC8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E4CC 8004DCCC 1800A427 */  addiu      $a0, $sp, 0x18
    /* 3E4D0 8004DCD0 21286002 */  addu       $a1, $s3, $zero
    /* 3E4D4 8004DCD4 2130A002 */  addu       $a2, $s5, $zero
    /* 3E4D8 8004DCD8 DD28010C */  jal        func_8004A374
    /* 3E4DC 8004DCDC 2138C002 */   addu      $a3, $s6, $zero
    /* 3E4E0 8004DCE0 18003402 */  mult       $s1, $s4
  .L8004DCE4:
    /* 3E4E4 8004DCE4 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* 3E4E8 8004DCE8 C3171100 */  sra        $v0, $s1, 31
    /* 3E4EC 8004DCEC 10400000 */  mfhi       $t0
    /* 3E4F0 8004DCF0 83180800 */  sra        $v1, $t0, 2
    /* 3E4F4 8004DCF4 D6FF401E */  bgtz       $s2, .L8004DC50
    /* 3E4F8 8004DCF8 23886200 */   subu      $s1, $v1, $v0
  .L8004DCFC:
    /* 3E4FC 8004DCFC 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 3E500 8004DD00 3800B68F */  lw         $s6, 0x38($sp)
    /* 3E504 8004DD04 3400B58F */  lw         $s5, 0x34($sp)
    /* 3E508 8004DD08 3000B48F */  lw         $s4, 0x30($sp)
    /* 3E50C 8004DD0C 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 3E510 8004DD10 2800B28F */  lw         $s2, 0x28($sp)
    /* 3E514 8004DD14 2400B18F */  lw         $s1, 0x24($sp)
    /* 3E518 8004DD18 2000B08F */  lw         $s0, 0x20($sp)
    /* 3E51C 8004DD1C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3E520 8004DD20 0800E003 */  jr         $ra
    /* 3E524 8004DD24 00000000 */   nop
endlabel func_8004DBD8
