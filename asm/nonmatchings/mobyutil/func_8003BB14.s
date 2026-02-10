.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003BB14, 0x33C

glabel func_8003BB14
    /* 2C314 8003BB14 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 2C318 8003BB18 3800BEAF */  sw         $fp, 0x38($sp)
    /* 2C31C 8003BB1C 5000BE8F */  lw         $fp, 0x50($sp)
    /* 2C320 8003BB20 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2C324 8003BB24 21A08000 */  addu       $s4, $a0, $zero
    /* 2C328 8003BB28 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2C32C 8003BB2C 2188A000 */  addu       $s1, $a1, $zero
    /* 2C330 8003BB30 3400B7AF */  sw         $s7, 0x34($sp)
    /* 2C334 8003BB34 21B8C000 */  addu       $s7, $a2, $zero
    /* 2C338 8003BB38 3000B6AF */  sw         $s6, 0x30($sp)
    /* 2C33C 8003BB3C 21B0E000 */  addu       $s6, $a3, $zero
    /* 2C340 8003BB40 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2C344 8003BB44 21980000 */  addu       $s3, $zero, $zero
    /* 2C348 8003BB48 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 2C34C 8003BB4C 21A80000 */  addu       $s5, $zero, $zero
    /* 2C350 8003BB50 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 2C354 8003BB54 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2C358 8003BB58 0100C233 */  andi       $v0, $fp, 0x1
    /* 2C35C 8003BB5C 06004010 */  beqz       $v0, .L8003BB78
    /* 2C360 8003BB60 1800B0AF */   sw        $s0, 0x18($sp)
    /* 2C364 8003BB64 0800228E */  lw         $v0, 0x8($s1)
    /* 2C368 8003BB68 00000000 */  nop
    /* 2C36C 8003BB6C 2C014224 */  addiu      $v0, $v0, 0x12C
    /* 2C370 8003BB70 21105700 */  addu       $v0, $v0, $s7
    /* 2C374 8003BB74 080022AE */  sw         $v0, 0x8($s1)
  .L8003BB78:
    /* 2C378 8003BB78 21900000 */  addu       $s2, $zero, $zero
  .L8003BB7C:
    /* 2C37C 8003BB7C 0900C012 */  beqz       $s6, .L8003BBA4
    /* 2C380 8003BB80 21202002 */   addu      $a0, $s1, $zero
    /* 2C384 8003BB84 2128C002 */  addu       $a1, $s6, $zero
    /* 2C388 8003BB88 21300000 */  addu       $a2, $zero, $zero
    /* 2C38C 8003BB8C 21380000 */  addu       $a3, $zero, $zero
    /* 2C390 8003BB90 1000A0AF */  sw         $zero, 0x10($sp)
    /* 2C394 8003BB94 5701010C */  jal        func_8004055C
    /* 2C398 8003BB98 1400B4AF */   sw        $s4, 0x14($sp)
    /* 2C39C 8003BB9C EAEE0008 */  j          .L8003BBA8
    /* 2C3A0 8003BBA0 21804000 */   addu      $s0, $v0, $zero
  .L8003BBA4:
    /* 2C3A4 8003BBA4 21800000 */  addu       $s0, $zero, $zero
  .L8003BBA8:
    /* 2C3A8 8003BBA8 08000012 */  beqz       $s0, .L8003BBCC
    /* 2C3AC 8003BBAC 0200C233 */   andi      $v0, $fp, 0x2
    /* 2C3B0 8003BBB0 01007336 */  ori        $s3, $s3, 0x1
    /* 2C3B4 8003BBB4 26004010 */  beqz       $v0, .L8003BC50
    /* 2C3B8 8003BBB8 21A80002 */   addu      $s5, $s0, $zero
    /* 2C3BC 8003BBBC 0780053C */  lui        $a1, %hi(D_8006AB7C)
    /* 2C3C0 8003BBC0 7CABA524 */  addiu      $a1, $a1, %lo(D_8006AB7C)
    /* 2C3C4 8003BBC4 6C6F000C */  jal        func_8001BDB0
    /* 2C3C8 8003BBC8 21202002 */   addu      $a0, $s1, $zero
  .L8003BBCC:
    /* 2C3CC 8003BBCC 0500E012 */  beqz       $s7, .L8003BBE4
    /* 2C3D0 8003BBD0 21202002 */   addu      $a0, $s1, $zero
    /* 2C3D4 8003BBD4 30F7000C */  jal        func_8003DCC0
    /* 2C3D8 8003BBD8 2128E002 */   addu      $a1, $s7, $zero
    /* 2C3DC 8003BBDC 0D004014 */  bnez       $v0, .L8003BC14
    /* 2C3E0 8003BBE0 2000C233 */   andi      $v0, $fp, 0x20
  .L8003BBE4:
    /* 2C3E4 8003BBE4 11000016 */  bnez       $s0, .L8003BC2C
    /* 2C3E8 8003BBE8 0004C233 */   andi      $v0, $fp, 0x400
    /* 2C3EC 8003BBEC 14004014 */  bnez       $v0, .L8003BC40
    /* 2C3F0 8003BBF0 0600422A */   slti      $v0, $s2, 0x6
    /* 2C3F4 8003BBF4 0C008426 */  addiu      $a0, $s4, 0xC
    /* 2C3F8 8003BBF8 A5F3000C */  jal        func_8003CE94
    /* 2C3FC 8003BBFC 21282002 */   addu      $a1, $s1, $zero
    /* 2C400 8003BC00 0F004010 */  beqz       $v0, .L8003BC40
    /* 2C404 8003BC04 0600422A */   slti      $v0, $s2, 0x6
    /* 2C408 8003BC08 06001224 */  addiu      $s2, $zero, 0x6
    /* 2C40C 8003BC0C 0FEF0008 */  j          .L8003BC3C
    /* 2C410 8003BC10 02007336 */   ori       $s3, $s3, 0x2
  .L8003BC14:
    /* 2C414 8003BC14 0E004010 */  beqz       $v0, .L8003BC50
    /* 2C418 8003BC18 02007336 */   ori       $s3, $s3, 0x2
    /* 2C41C 8003BC1C 0780053C */  lui        $a1, %hi(D_8006AB7C)
    /* 2C420 8003BC20 7CABA524 */  addiu      $a1, $a1, %lo(D_8006AB7C)
    /* 2C424 8003BC24 6C6F000C */  jal        func_8001BDB0
    /* 2C428 8003BC28 21202002 */   addu      $a0, $s1, $zero
  .L8003BC2C:
    /* 2C42C 8003BC2C 01005226 */  addiu      $s2, $s2, 0x1
    /* 2C430 8003BC30 0600422A */  slti       $v0, $s2, 0x6
    /* 2C434 8003BC34 D1FF4014 */  bnez       $v0, .L8003BB7C
    /* 2C438 8003BC38 00000000 */   nop
  .L8003BC3C:
    /* 2C43C 8003BC3C 0600422A */  slti       $v0, $s2, 0x6
  .L8003BC40:
    /* 2C440 8003BC40 05004014 */  bnez       $v0, .L8003BC58
    /* 2C444 8003BC44 0100C233 */   andi      $v0, $fp, 0x1
    /* 2C448 8003BC48 83EF0008 */  j          .L8003BE0C
    /* 2C44C 8003BC4C 00000000 */   nop
  .L8003BC50:
    /* 2C450 8003BC50 0FEF0008 */  j          .L8003BC3C
    /* 2C454 8003BC54 06001224 */   addiu     $s2, $zero, 0x6
  .L8003BC58:
    /* 2C458 8003BC58 06004010 */  beqz       $v0, .L8003BC74
    /* 2C45C 8003BC5C 21202002 */   addu      $a0, $s1, $zero
    /* 2C460 8003BC60 0800228E */  lw         $v0, 0x8($s1)
    /* 2C464 8003BC64 00000000 */  nop
    /* 2C468 8003BC68 D4FE4224 */  addiu      $v0, $v0, -0x12C
    /* 2C46C 8003BC6C 23105700 */  subu       $v0, $v0, $s7
    /* 2C470 8003BC70 080022AE */  sw         $v0, 0x8($s1)
  .L8003BC74:
    /* 2C474 8003BC74 0800228E */  lw         $v0, 0x8($s1)
    /* 2C478 8003BC78 00200524 */  addiu      $a1, $zero, 0x2000
    /* 2C47C 8003BC7C 00044224 */  addiu      $v0, $v0, 0x400
    /* 2C480 8003BC80 A1FB000C */  jal        func_8003EE84
    /* 2C484 8003BC84 080022AE */   sw        $v0, 0x8($s1)
    /* 2C488 8003BC88 21804000 */  addu       $s0, $v0, $zero
    /* 2C48C 8003BC8C 0010C233 */  andi       $v0, $fp, 0x1000
    /* 2C490 8003BC90 06004010 */  beqz       $v0, .L8003BCAC
    /* 2C494 8003BC94 1000C233 */   andi      $v0, $fp, 0x10
    /* 2C498 8003BC98 0800228E */  lw         $v0, 0x8($s1)
    /* 2C49C 8003BC9C 00000000 */  nop
    /* 2C4A0 8003BCA0 00FC4224 */  addiu      $v0, $v0, -0x400
    /* 2C4A4 8003BCA4 080022AE */  sw         $v0, 0x8($s1)
    /* 2C4A8 8003BCA8 1000C233 */  andi       $v0, $fp, 0x10
  .L8003BCAC:
    /* 2C4AC 8003BCAC 11004010 */  beqz       $v0, .L8003BCF4
    /* 2C4B0 8003BCB0 0002C233 */   andi      $v0, $fp, 0x200
    /* 2C4B4 8003BCB4 38008286 */  lh         $v0, 0x38($s4)
    /* 2C4B8 8003BCB8 1400848E */  lw         $a0, 0x14($s4)
    /* 2C4BC 8003BCBC 21180202 */  addu       $v1, $s0, $v0
    /* 2C4C0 8003BCC0 23106400 */  subu       $v0, $v1, $a0
    /* 2C4C4 8003BCC4 05004004 */  bltz       $v0, .L8003BCDC
    /* 2C4C8 8003BCC8 91014228 */   slti      $v0, $v0, 0x191
    /* 2C4CC 8003BCCC 07004010 */  beqz       $v0, .L8003BCEC
    /* 2C4D0 8003BCD0 0002C233 */   andi      $v0, $fp, 0x200
    /* 2C4D4 8003BCD4 3DEF0008 */  j          .L8003BCF4
    /* 2C4D8 8003BCD8 00000000 */   nop
  .L8003BCDC:
    /* 2C4DC 8003BCDC 23108300 */  subu       $v0, $a0, $v1
    /* 2C4E0 8003BCE0 91014228 */  slti       $v0, $v0, 0x191
    /* 2C4E4 8003BCE4 03004014 */  bnez       $v0, .L8003BCF4
    /* 2C4E8 8003BCE8 0002C233 */   andi      $v0, $fp, 0x200
  .L8003BCEC:
    /* 2C4EC 8003BCEC 83EF0008 */  j          .L8003BE0C
    /* 2C4F0 8003BCF0 02007336 */   ori       $s3, $s3, 0x2
  .L8003BCF4:
    /* 2C4F4 8003BCF4 0A004010 */  beqz       $v0, .L8003BD20
    /* 2C4F8 8003BCF8 4000C233 */   andi      $v0, $fp, 0x40
    /* 2C4FC 8003BCFC 38008286 */  lh         $v0, 0x38($s4)
    /* 2C500 8003BD00 1400838E */  lw         $v1, 0x14($s4)
    /* 2C504 8003BD04 21100202 */  addu       $v0, $s0, $v0
    /* 2C508 8003BD08 23104300 */  subu       $v0, $v0, $v1
    /* 2C50C 8003BD0C C9004228 */  slti       $v0, $v0, 0xC9
    /* 2C510 8003BD10 03004014 */  bnez       $v0, .L8003BD20
    /* 2C514 8003BD14 4000C233 */   andi      $v0, $fp, 0x40
    /* 2C518 8003BD18 83EF0008 */  j          .L8003BE0C
    /* 2C51C 8003BD1C 02007336 */   ori       $s3, $s3, 0x2
  .L8003BD20:
    /* 2C520 8003BD20 17004010 */  beqz       $v0, .L8003BD80
    /* 2C524 8003BD24 00000000 */   nop
    /* 2C528 8003BD28 0780043C */  lui        $a0, %hi(D_8006AB88)
    /* 2C52C 8003BD2C 88AB8424 */  addiu      $a0, $a0, %lo(D_8006AB88)
    /* 2C530 8003BD30 886E000C */  jal        func_8001BA20
    /* 2C534 8003BD34 21280000 */   addu      $a1, $zero, $zero
    /* 2C538 8003BD38 21204000 */  addu       $a0, $v0, $zero
    /* 2C53C 8003BD3C 0780053C */  lui        $a1, %hi(D_8006AB90)
    /* 2C540 8003BD40 90ABA58C */  lw         $a1, %lo(D_8006AB90)($a1)
    /* 2C544 8003BD44 2E6D000C */  jal        func_8001B4B8
    /* 2C548 8003BD48 21300000 */   addu      $a2, $zero, $zero
    /* 2C54C 8003BD4C 21184000 */  addu       $v1, $v0, $zero
    /* 2C550 8003BD50 81006228 */  slti       $v0, $v1, 0x81
    /* 2C554 8003BD54 02004014 */  bnez       $v0, .L8003BD60
    /* 2C558 8003BD58 00000000 */   nop
    /* 2C55C 8003BD5C 00FF6324 */  addiu      $v1, $v1, -0x100
  .L8003BD60:
    /* 2C560 8003BD60 02006104 */  bgez       $v1, .L8003BD6C
    /* 2C564 8003BD64 21106000 */   addu      $v0, $v1, $zero
    /* 2C568 8003BD68 23100200 */  negu       $v0, $v0
  .L8003BD6C:
    /* 2C56C 8003BD6C 17004228 */  slti       $v0, $v0, 0x17
    /* 2C570 8003BD70 03004010 */  beqz       $v0, .L8003BD80
    /* 2C574 8003BD74 00000000 */   nop
    /* 2C578 8003BD78 83EF0008 */  j          .L8003BE0C
    /* 2C57C 8003BD7C 02007336 */   ori       $s3, $s3, 0x2
  .L8003BD80:
    /* 2C580 8003BD80 0000228E */  lw         $v0, 0x0($s1)
    /* 2C584 8003BD84 00000000 */  nop
    /* 2C588 8003BD88 0C0082AE */  sw         $v0, 0xC($s4)
    /* 2C58C 8003BD8C 0400228E */  lw         $v0, 0x4($s1)
    /* 2C590 8003BD90 00000000 */  nop
    /* 2C594 8003BD94 100082AE */  sw         $v0, 0x10($s4)
    /* 2C598 8003BD98 0400C233 */  andi       $v0, $fp, 0x4
    /* 2C59C 8003BD9C 0F004010 */  beqz       $v0, .L8003BDDC
    /* 2C5A0 8003BDA0 0010C233 */   andi      $v0, $fp, 0x1000
    /* 2C5A4 8003BDA4 38008286 */  lh         $v0, 0x38($s4)
    /* 2C5A8 8003BDA8 1400838E */  lw         $v1, 0x14($s4)
    /* 2C5AC 8003BDAC 21100202 */  addu       $v0, $s0, $v0
    /* 2C5B0 8003BDB0 23804300 */  subu       $s0, $v0, $v1
    /* 2C5B4 8003BDB4 06FF022A */  slti       $v0, $s0, -0xFA
    /* 2C5B8 8003BDB8 03004010 */  beqz       $v0, .L8003BDC8
    /* 2C5BC 8003BDBC FB00022A */   slti      $v0, $s0, 0xFB
    /* 2C5C0 8003BDC0 06FF1024 */  addiu      $s0, $zero, -0xFA
    /* 2C5C4 8003BDC4 FB00022A */  slti       $v0, $s0, 0xFB
  .L8003BDC8:
    /* 2C5C8 8003BDC8 07004014 */  bnez       $v0, .L8003BDE8
    /* 2C5CC 8003BDCC 21107000 */   addu      $v0, $v1, $s0
    /* 2C5D0 8003BDD0 FA001024 */  addiu      $s0, $zero, 0xFA
    /* 2C5D4 8003BDD4 7AEF0008 */  j          .L8003BDE8
    /* 2C5D8 8003BDD8 21107000 */   addu      $v0, $v1, $s0
  .L8003BDDC:
    /* 2C5DC 8003BDDC 04004010 */  beqz       $v0, .L8003BDF0
    /* 2C5E0 8003BDE0 00000000 */   nop
    /* 2C5E4 8003BDE4 0800228E */  lw         $v0, 0x8($s1)
  .L8003BDE8:
    /* 2C5E8 8003BDE8 00000000 */  nop
    /* 2C5EC 8003BDEC 140082AE */  sw         $v0, 0x14($s4)
  .L8003BDF0:
    /* 2C5F0 8003BDF0 A306010C */  jal        func_80041A8C
    /* 2C5F4 8003BDF4 21208002 */   addu      $a0, $s4, $zero
    /* 2C5F8 8003BDF8 AE06010C */  jal        func_80041AB8
    /* 2C5FC 8003BDFC 21208002 */   addu      $a0, $s4, $zero
    /* 2C600 8003BE00 21208002 */  addu       $a0, $s4, $zero
    /* 2C604 8003BE04 4E05010C */  jal        func_80041538
    /* 2C608 8003BE08 02000524 */   addiu     $a1, $zero, 0x2
  .L8003BE0C:
    /* 2C60C 8003BE0C 0300A012 */  beqz       $s5, .L8003BE1C
    /* 2C610 8003BE10 21106002 */   addu      $v0, $s3, $zero
    /* 2C614 8003BE14 0780013C */  lui        $at, %hi(D_8006ABA0)
    /* 2C618 8003BE18 A0AB35AC */  sw         $s5, %lo(D_8006ABA0)($at)
  .L8003BE1C:
    /* 2C61C 8003BE1C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 2C620 8003BE20 3800BE8F */  lw         $fp, 0x38($sp)
    /* 2C624 8003BE24 3400B78F */  lw         $s7, 0x34($sp)
    /* 2C628 8003BE28 3000B68F */  lw         $s6, 0x30($sp)
    /* 2C62C 8003BE2C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2C630 8003BE30 2800B48F */  lw         $s4, 0x28($sp)
    /* 2C634 8003BE34 2400B38F */  lw         $s3, 0x24($sp)
    /* 2C638 8003BE38 2000B28F */  lw         $s2, 0x20($sp)
    /* 2C63C 8003BE3C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2C640 8003BE40 1800B08F */  lw         $s0, 0x18($sp)
    /* 2C644 8003BE44 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 2C648 8003BE48 0800E003 */  jr         $ra
    /* 2C64C 8003BE4C 00000000 */   nop
endlabel func_8003BB14
