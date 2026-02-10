.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002DB8C, 0x344

glabel func_8002DB8C
    /* 1E38C 8002DB8C 0780023C */  lui        $v0, %hi(D_8006A0DC)
    /* 1E390 8002DB90 DCA0428C */  lw         $v0, %lo(D_8006A0DC)($v0)
    /* 1E394 8002DB94 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1E398 8002DB98 3800B2AF */  sw         $s2, 0x38($sp)
    /* 1E39C 8002DB9C 21908000 */  addu       $s2, $a0, $zero
    /* 1E3A0 8002DBA0 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 1E3A4 8002DBA4 3400B1AF */  sw         $s1, 0x34($sp)
    /* 1E3A8 8002DBA8 17004228 */  slti       $v0, $v0, 0x17
    /* 1E3AC 8002DBAC 07004014 */  bnez       $v0, .L8002DBCC
    /* 1E3B0 8002DBB0 3000B0AF */   sw        $s0, 0x30($sp)
    /* 1E3B4 8002DBB4 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 1E3B8 8002DBB8 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 1E3BC 8002DBBC 11000224 */  addiu      $v0, $zero, 0x11
    /* 1E3C0 8002DBC0 02006210 */  beq        $v1, $v0, .L8002DBCC
    /* 1E3C4 8002DBC4 00000000 */   nop
    /* 1E3C8 8002DBC8 21900000 */  addu       $s2, $zero, $zero
  .L8002DBCC:
    /* 1E3CC 8002DBCC 3C004012 */  beqz       $s2, .L8002DCC0
    /* 1E3D0 8002DBD0 00000000 */   nop
    /* 1E3D4 8002DBD4 0780103C */  lui        $s0, %hi(D_8006A05C)
    /* 1E3D8 8002DBD8 5CA01026 */  addiu      $s0, $s0, %lo(D_8006A05C)
    /* 1E3DC 8002DBDC 0000048E */  lw         $a0, 0x0($s0)
    /* 1E3E0 8002DBE0 996D000C */  jal        func_8001B664
    /* 1E3E4 8002DBE4 00000000 */   nop
    /* 1E3E8 8002DBE8 0000048E */  lw         $a0, 0x0($s0)
    /* 1E3EC 8002DBEC 876D000C */  jal        func_8001B61C
    /* 1E3F0 8002DBF0 21884000 */   addu      $s1, $v0, $zero
    /* 1E3F4 8002DBF4 0000438E */  lw         $v1, 0x0($s2)
    /* 1E3F8 8002DBF8 00000000 */  nop
    /* 1E3FC 8002DBFC 18007100 */  mult       $v1, $s1
    /* 1E400 8002DC00 12280000 */  mflo       $a1
    /* 1E404 8002DC04 0400438E */  lw         $v1, 0x4($s2)
    /* 1E408 8002DC08 00000000 */  nop
    /* 1E40C 8002DC0C 18006200 */  mult       $v1, $v0
    /* 1E410 8002DC10 0000048E */  lw         $a0, 0x0($s0)
    /* 1E414 8002DC14 12180000 */  mflo       $v1
    /* 1E418 8002DC18 2110A300 */  addu       $v0, $a1, $v1
    /* 1E41C 8002DC1C 03130200 */  sra        $v0, $v0, 12
    /* 1E420 8002DC20 996D000C */  jal        func_8001B664
    /* 1E424 8002DC24 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1E428 8002DC28 0000048E */  lw         $a0, 0x0($s0)
    /* 1E42C 8002DC2C 876D000C */  jal        func_8001B61C
    /* 1E430 8002DC30 21804000 */   addu      $s0, $v0, $zero
    /* 1E434 8002DC34 0400438E */  lw         $v1, 0x4($s2)
    /* 1E438 8002DC38 00000000 */  nop
    /* 1E43C 8002DC3C 18007000 */  mult       $v1, $s0
    /* 1E440 8002DC40 12200000 */  mflo       $a0
    /* 1E444 8002DC44 0000438E */  lw         $v1, 0x0($s2)
    /* 1E448 8002DC48 00000000 */  nop
    /* 1E44C 8002DC4C 18006200 */  mult       $v1, $v0
    /* 1E450 8002DC50 12380000 */  mflo       $a3
    /* 1E454 8002DC54 1000A28F */  lw         $v0, 0x10($sp)
    /* 1E458 8002DC58 00000000 */  nop
    /* 1E45C 8002DC5C 18004200 */  mult       $v0, $v0
    /* 1E460 8002DC60 23108700 */  subu       $v0, $a0, $a3
    /* 1E464 8002DC64 03130200 */  sra        $v0, $v0, 12
    /* 1E468 8002DC68 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1E46C 8002DC6C 12180000 */  mflo       $v1
    /* 1E470 8002DC70 0800428E */  lw         $v0, 0x8($s2)
    /* 1E474 8002DC74 00000000 */  nop
    /* 1E478 8002DC78 18004200 */  mult       $v0, $v0
    /* 1E47C 8002DC7C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1E480 8002DC80 12380000 */  mflo       $a3
    /* 1E484 8002DC84 F06F000C */  jal        func_8001BFC0
    /* 1E488 8002DC88 21206700 */   addu      $a0, $v1, $a3
    /* 1E48C 8002DC8C 21204000 */  addu       $a0, $v0, $zero
    /* 1E490 8002DC90 1400A58F */  lw         $a1, 0x14($sp)
    /* 1E494 8002DC94 2E6D000C */  jal        func_8001B4B8
    /* 1E498 8002DC98 01000624 */   addiu     $a2, $zero, 0x1
    /* 1E49C 8002DC9C 01000624 */  addiu      $a2, $zero, 0x1
    /* 1E4A0 8002DCA0 1800A48F */  lw         $a0, 0x18($sp)
    /* 1E4A4 8002DCA4 1000A58F */  lw         $a1, 0x10($sp)
    /* 1E4A8 8002DCA8 23100200 */  negu       $v0, $v0
    /* 1E4AC 8002DCAC 2E6D000C */  jal        func_8001B4B8
    /* 1E4B0 8002DCB0 2000A2AF */   sw        $v0, 0x20($sp)
    /* 1E4B4 8002DCB4 23100200 */  negu       $v0, $v0
    /* 1E4B8 8002DCB8 32B70008 */  j          .L8002DCC8
    /* 1E4BC 8002DCBC 2400A2AF */   sw        $v0, 0x24($sp)
  .L8002DCC0:
    /* 1E4C0 8002DCC0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 1E4C4 8002DCC4 2400A0AF */  sw         $zero, 0x24($sp)
  .L8002DCC8:
    /* 1E4C8 8002DCC8 0780113C */  lui        $s1, %hi(D_8006A054)
    /* 1E4CC 8002DCCC 54A03126 */  addiu      $s1, $s1, %lo(D_8006A054)
    /* 1E4D0 8002DCD0 2000A28F */  lw         $v0, 0x20($sp)
    /* 1E4D4 8002DCD4 0000268E */  lw         $a2, 0x0($s1)
    /* 1E4D8 8002DCD8 00000000 */  nop
    /* 1E4DC 8002DCDC 23104600 */  subu       $v0, $v0, $a2
    /* 1E4E0 8002DCE0 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1E4E4 8002DCE4 01086228 */  slti       $v0, $v1, 0x801
    /* 1E4E8 8002DCE8 03004014 */  bnez       $v0, .L8002DCF8
    /* 1E4EC 8002DCEC 2000A3AF */   sw        $v1, 0x20($sp)
    /* 1E4F0 8002DCF0 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E4F4 8002DCF4 2000A2AF */  sw         $v0, 0x20($sp)
  .L8002DCF8:
    /* 1E4F8 8002DCF8 2400A28F */  lw         $v0, 0x24($sp)
    /* 1E4FC 8002DCFC 0400278E */  lw         $a3, 0x4($s1)
    /* 1E500 8002DD00 00000000 */  nop
    /* 1E504 8002DD04 23104700 */  subu       $v0, $v0, $a3
    /* 1E508 8002DD08 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1E50C 8002DD0C 01086228 */  slti       $v0, $v1, 0x801
    /* 1E510 8002DD10 03004014 */  bnez       $v0, .L8002DD20
    /* 1E514 8002DD14 2400A3AF */   sw        $v1, 0x24($sp)
    /* 1E518 8002DD18 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E51C 8002DD1C 2400A2AF */  sw         $v0, 0x24($sp)
  .L8002DD20:
    /* 1E520 8002DD20 2000A38F */  lw         $v1, 0x20($sp)
    /* 1E524 8002DD24 0780053C */  lui        $a1, %hi(D_8006A060)
    /* 1E528 8002DD28 60A0A58C */  lw         $a1, %lo(D_8006A060)($a1)
    /* 1E52C 8002DD2C 2400A48F */  lw         $a0, 0x24($sp)
    /* 1E530 8002DD30 80180300 */  sll        $v1, $v1, 2
    /* 1E534 8002DD34 03190300 */  sra        $v1, $v1, 4
    /* 1E538 8002DD38 00110500 */  sll        $v0, $a1, 4
    /* 1E53C 8002DD3C 83110200 */  sra        $v0, $v0, 6
    /* 1E540 8002DD40 23186200 */  subu       $v1, $v1, $v0
    /* 1E544 8002DD44 2128A300 */  addu       $a1, $a1, $v1
    /* 1E548 8002DD48 80200400 */  sll        $a0, $a0, 2
    /* 1E54C 8002DD4C 0780033C */  lui        $v1, %hi(D_8006A064)
    /* 1E550 8002DD50 64A0638C */  lw         $v1, %lo(D_8006A064)($v1)
    /* 1E554 8002DD54 03210400 */  sra        $a0, $a0, 4
    /* 1E558 8002DD58 0780013C */  lui        $at, %hi(D_8006A060)
    /* 1E55C 8002DD5C 60A025AC */  sw         $a1, %lo(D_8006A060)($at)
    /* 1E560 8002DD60 00110300 */  sll        $v0, $v1, 4
    /* 1E564 8002DD64 83110200 */  sra        $v0, $v0, 6
    /* 1E568 8002DD68 23208200 */  subu       $a0, $a0, $v0
    /* 1E56C 8002DD6C 21186400 */  addu       $v1, $v1, $a0
    /* 1E570 8002DD70 83200500 */  sra        $a0, $a1, 2
    /* 1E574 8002DD74 0780013C */  lui        $at, %hi(D_8006A064)
    /* 1E578 8002DD78 64A023AC */  sw         $v1, %lo(D_8006A064)($at)
    /* 1E57C 8002DD7C 83180300 */  sra        $v1, $v1, 2
    /* 1E580 8002DD80 2110C400 */  addu       $v0, $a2, $a0
    /* 1E584 8002DD84 FF0F4630 */  andi       $a2, $v0, 0xFFF
    /* 1E588 8002DD88 0108C228 */  slti       $v0, $a2, 0x801
    /* 1E58C 8002DD8C 2000A4AF */  sw         $a0, 0x20($sp)
    /* 1E590 8002DD90 2400A3AF */  sw         $v1, 0x24($sp)
    /* 1E594 8002DD94 03004014 */  bnez       $v0, .L8002DDA4
    /* 1E598 8002DD98 000026AE */   sw        $a2, 0x0($s1)
    /* 1E59C 8002DD9C 00F0C224 */  addiu      $v0, $a2, -0x1000
    /* 1E5A0 8002DDA0 000022AE */  sw         $v0, 0x0($s1)
  .L8002DDA4:
    /* 1E5A4 8002DDA4 2110E300 */  addu       $v0, $a3, $v1
    /* 1E5A8 8002DDA8 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1E5AC 8002DDAC 01086228 */  slti       $v0, $v1, 0x801
    /* 1E5B0 8002DDB0 03004014 */  bnez       $v0, .L8002DDC0
    /* 1E5B4 8002DDB4 040023AE */   sw        $v1, 0x4($s1)
    /* 1E5B8 8002DDB8 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E5BC 8002DDBC 040022AE */  sw         $v0, 0x4($s1)
  .L8002DDC0:
    /* 1E5C0 8002DDC0 3C004012 */  beqz       $s2, .L8002DEB4
    /* 1E5C4 8002DDC4 00000000 */   nop
    /* 1E5C8 8002DDC8 0780023C */  lui        $v0, %hi(D_80069FFC)
    /* 1E5CC 8002DDCC FC9F4290 */  lbu        $v0, %lo(D_80069FFC)($v0)
    /* 1E5D0 8002DDD0 00000000 */  nop
    /* 1E5D4 8002DDD4 E0FF4224 */  addiu      $v0, $v0, -0x20
    /* 1E5D8 8002DDD8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1E5DC 8002DDDC C100422C */  sltiu      $v0, $v0, 0xC1
    /* 1E5E0 8002DDE0 34004014 */  bnez       $v0, .L8002DEB4
    /* 1E5E4 8002DDE4 00000000 */   nop
    /* 1E5E8 8002DDE8 0780023C */  lui        $v0, %hi(D_80069FFD)
    /* 1E5EC 8002DDEC FD9F4290 */  lbu        $v0, %lo(D_80069FFD)($v0)
    /* 1E5F0 8002DDF0 00000000 */  nop
    /* 1E5F4 8002DDF4 E0FF4224 */  addiu      $v0, $v0, -0x20
    /* 1E5F8 8002DDF8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1E5FC 8002DDFC C100422C */  sltiu      $v0, $v0, 0xC1
    /* 1E600 8002DE00 2C004014 */  bnez       $v0, .L8002DEB4
    /* 1E604 8002DE04 00000000 */   nop
    /* 1E608 8002DE08 876D000C */  jal        func_8001B61C
    /* 1E60C 8002DE0C 00000000 */   nop
    /* 1E610 8002DE10 0780033C */  lui        $v1, %hi(D_8006A260)
    /* 1E614 8002DE14 60A2638C */  lw         $v1, %lo(D_8006A260)($v1)
    /* 1E618 8002DE18 23100200 */  negu       $v0, $v0
    /* 1E61C 8002DE1C 10006324 */  addiu      $v1, $v1, 0x10
    /* 1E620 8002DE20 18004300 */  mult       $v0, $v1
    /* 1E624 8002DE24 2400A48F */  lw         $a0, 0x24($sp)
    /* 1E628 8002DE28 12400000 */  mflo       $t0
    /* 1E62C 8002DE2C 03130800 */  sra        $v0, $t0, 12
    /* 1E630 8002DE30 876D000C */  jal        func_8001B61C
    /* 1E634 8002DE34 1400A2AF */   sw        $v0, 0x14($sp)
    /* 1E638 8002DE38 0780033C */  lui        $v1, %hi(D_8006A260)
    /* 1E63C 8002DE3C 60A2638C */  lw         $v1, %lo(D_8006A260)($v1)
    /* 1E640 8002DE40 23100200 */  negu       $v0, $v0
    /* 1E644 8002DE44 10006324 */  addiu      $v1, $v1, 0x10
    /* 1E648 8002DE48 18004300 */  mult       $v0, $v1
    /* 1E64C 8002DE4C 2400A48F */  lw         $a0, 0x24($sp)
    /* 1E650 8002DE50 12400000 */  mflo       $t0
    /* 1E654 8002DE54 03130800 */  sra        $v0, $t0, 12
    /* 1E658 8002DE58 996D000C */  jal        func_8001B664
    /* 1E65C 8002DE5C 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1E660 8002DE60 2000A48F */  lw         $a0, 0x20($sp)
    /* 1E664 8002DE64 996D000C */  jal        func_8001B664
    /* 1E668 8002DE68 21804000 */   addu      $s0, $v0, $zero
    /* 1E66C 8002DE6C 00200424 */  addiu      $a0, $zero, 0x2000
    /* 1E670 8002DE70 23209000 */  subu       $a0, $a0, $s0
    /* 1E674 8002DE74 0780033C */  lui        $v1, %hi(D_8006A260)
    /* 1E678 8002DE78 60A2638C */  lw         $v1, %lo(D_8006A260)($v1)
    /* 1E67C 8002DE7C 23208200 */  subu       $a0, $a0, $v0
    /* 1E680 8002DE80 10006324 */  addiu      $v1, $v1, 0x10
    /* 1E684 8002DE84 18008300 */  mult       $a0, $v1
    /* 1E688 8002DE88 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1E68C 8002DE8C 2130A000 */  addu       $a2, $a1, $zero
    /* 1E690 8002DE90 CCFF2426 */  addiu      $a0, $s1, -0x34
    /* 1E694 8002DE94 12400000 */  mflo       $t0
    /* 1E698 8002DE98 03130800 */  sra        $v0, $t0, 12
    /* 1E69C 8002DE9C 696E000C */  jal        func_8001B9A4
    /* 1E6A0 8002DEA0 1800A2AF */   sw        $v0, 0x18($sp)
    /* 1E6A4 8002DEA4 9CFF2426 */  addiu      $a0, $s1, -0x64
    /* 1E6A8 8002DEA8 21288000 */  addu       $a1, $a0, $zero
    /* 1E6AC 8002DEAC 736F000C */  jal        func_8001BDCC
    /* 1E6B0 8002DEB0 1000A627 */   addiu     $a2, $sp, 0x10
  .L8002DEB4:
    /* 1E6B4 8002DEB4 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 1E6B8 8002DEB8 3800B28F */  lw         $s2, 0x38($sp)
    /* 1E6BC 8002DEBC 3400B18F */  lw         $s1, 0x34($sp)
    /* 1E6C0 8002DEC0 3000B08F */  lw         $s0, 0x30($sp)
    /* 1E6C4 8002DEC4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1E6C8 8002DEC8 0800E003 */  jr         $ra
    /* 1E6CC 8002DECC 00000000 */   nop
endlabel func_8002DB8C
