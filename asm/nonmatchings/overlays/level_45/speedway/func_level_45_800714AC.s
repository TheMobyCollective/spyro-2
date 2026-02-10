.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_45_800714AC, 0x18C

glabel func_level_45_800714AC
    /* 33FBA48 800714AC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 33FBA4C 800714B0 3800B2AF */  sw         $s2, 0x38($sp)
    /* 33FBA50 800714B4 21908000 */  addu       $s2, $a0, $zero
    /* 33FBA54 800714B8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 33FBA58 800714BC 0680103C */  lui        $s0, %hi(D_80067698)
    /* 33FBA5C 800714C0 98761026 */  addiu      $s0, $s0, %lo(D_80067698)
    /* 33FBA60 800714C4 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 33FBA64 800714C8 3400B1AF */  sw         $s1, 0x34($sp)
    /* 33FBA68 800714CC 0000068E */  lw         $a2, 0x0($s0)
    /* 33FBA6C 800714D0 00000000 */  nop
    /* 33FBA70 800714D4 4500C010 */  beqz       $a2, .Llevel_45_800715EC
    /* 33FBA74 800714D8 2118A000 */   addu      $v1, $a1, $zero
    /* 33FBA78 800714DC 07000224 */  addiu      $v0, $zero, 0x7
    /* 33FBA7C 800714E0 23104300 */  subu       $v0, $v0, $v1
    /* 33FBA80 800714E4 00110200 */  sll        $v0, $v0, 4
    /* 33FBA84 800714E8 2388C200 */  subu       $s1, $a2, $v0
    /* 33FBA88 800714EC 4100222A */  slti       $v0, $s1, 0x41
    /* 33FBA8C 800714F0 02004014 */  bnez       $v0, .Llevel_45_800714FC
    /* 33FBA90 800714F4 00000000 */   nop
    /* 33FBA94 800714F8 40001124 */  addiu      $s1, $zero, 0x40
  .Llevel_45_800714FC:
    /* 33FBA98 800714FC 02002106 */  bgez       $s1, .Llevel_45_80071508
    /* 33FBA9C 80071500 DCFF0426 */   addiu     $a0, $s0, -0x24
    /* 33FBAA0 80071504 21880000 */  addu       $s1, $zero, $zero
  .Llevel_45_80071508:
    /* 33FBAA4 80071508 40280300 */  sll        $a1, $v1, 1
    /* 33FBAA8 8007150C F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 33FBAAC 80071510 F0FF0624 */  addiu      $a2, $zero, -0x10
    /* 33FBAB0 80071514 00110300 */  sll        $v0, $v1, 4
    /* 33FBAB4 80071518 21104300 */  addu       $v0, $v0, $v1
    /* 33FBAB8 8007151C 40100200 */  sll        $v0, $v0, 1
    /* 33FBABC 80071520 1E004224 */  addiu      $v0, $v0, 0x1E
    /* 33FBAC0 80071524 2649010C */  jal        func_80052498
    /* 33FBAC4 80071528 1000A2AF */   sw        $v0, 0x10($sp)
    /* 33FBAC8 8007152C E4FF0426 */  addiu      $a0, $s0, -0x1C
    /* 33FBACC 80071530 EC000624 */  addiu      $a2, $zero, 0xEC
    /* 33FBAD0 80071534 0680033C */  lui        $v1, %hi(D_80067694)
    /* 33FBAD4 80071538 9476638C */  lw         $v1, %lo(D_80067694)($v1)
    /* 33FBAD8 8007153C F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 33FBADC 80071540 1400A2AF */  sw         $v0, 0x14($sp)
    /* 33FBAE0 80071544 1800A0AF */  sw         $zero, 0x18($sp)
    /* 33FBAE4 80071548 40280300 */  sll        $a1, $v1, 1
    /* 33FBAE8 8007154C F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 33FBAEC 80071550 00110300 */  sll        $v0, $v1, 4
    /* 33FBAF0 80071554 21104300 */  addu       $v0, $v0, $v1
    /* 33FBAF4 80071558 40100200 */  sll        $v0, $v0, 1
    /* 33FBAF8 8007155C 1E004224 */  addiu      $v0, $v0, 0x1E
    /* 33FBAFC 80071560 2649010C */  jal        func_80052498
    /* 33FBB00 80071564 2000A2AF */   sw        $v0, 0x20($sp)
    /* 33FBB04 80071568 2000B027 */  addiu      $s0, $sp, 0x20
    /* 33FBB08 8007156C 21200002 */  addu       $a0, $s0, $zero
    /* 33FBB0C 80071570 21280002 */  addu       $a1, $s0, $zero
    /* 33FBB10 80071574 1000A627 */  addiu      $a2, $sp, 0x10
    /* 33FBB14 80071578 EC004224 */  addiu      $v0, $v0, 0xEC
    /* 33FBB18 8007157C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 33FBB1C 80071580 806F000C */  jal        func_8001BE00
    /* 33FBB20 80071584 2800A0AF */   sw        $zero, 0x28($sp)
    /* 33FBB24 80071588 21200002 */  addu       $a0, $s0, $zero
    /* 33FBB28 8007158C 40000524 */  addiu      $a1, $zero, 0x40
    /* 33FBB2C 80071590 316F000C */  jal        func_8001BCC4
    /* 33FBB30 80071594 21302002 */   addu      $a2, $s1, $zero
    /* 33FBB34 80071598 40881100 */  sll        $s1, $s1, 1
    /* 33FBB38 8007159C 8000222A */  slti       $v0, $s1, 0x80
    /* 33FBB3C 800715A0 02004014 */  bnez       $v0, .Llevel_45_800715AC
    /* 33FBB40 800715A4 00000000 */   nop
    /* 33FBB44 800715A8 7F001124 */  addiu      $s1, $zero, 0x7F
  .Llevel_45_800715AC:
    /* 33FBB48 800715AC 40101100 */  sll        $v0, $s1, 1
    /* 33FBB4C 800715B0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 33FBB50 800715B4 21082200 */  addu       $at, $at, $v0
    /* 33FBB54 800715B8 D81B2394 */  lhu        $v1, %lo(D_80061BD8)($at)
    /* 33FBB58 800715BC 2000A28F */  lw         $v0, 0x20($sp)
    /* 33FBB5C 800715C0 1000A48F */  lw         $a0, 0x10($sp)
    /* 33FBB60 800715C4 001C0300 */  sll        $v1, $v1, 16
    /* 33FBB64 800715C8 831D0300 */  sra        $v1, $v1, 22
    /* 33FBB68 800715CC 21104300 */  addu       $v0, $v0, $v1
    /* 33FBB6C 800715D0 21208200 */  addu       $a0, $a0, $v0
    /* 33FBB70 800715D4 2000A2AF */  sw         $v0, 0x20($sp)
    /* 33FBB74 800715D8 000044AE */  sw         $a0, 0x0($s2)
    /* 33FBB78 800715DC 1400A28F */  lw         $v0, 0x14($sp)
    /* 33FBB7C 800715E0 2400A38F */  lw         $v1, 0x24($sp)
    /* 33FBB80 800715E4 86C50108 */  j          .Llevel_45_80071618
    /* 33FBB84 800715E8 21104300 */   addu      $v0, $v0, $v1
  .Llevel_45_800715EC:
    /* 33FBB88 800715EC DCFF0426 */  addiu      $a0, $s0, -0x24
    /* 33FBB8C 800715F0 40280300 */  sll        $a1, $v1, 1
    /* 33FBB90 800715F4 F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 33FBB94 800715F8 24000624 */  addiu      $a2, $zero, 0x24
    /* 33FBB98 800715FC 00110300 */  sll        $v0, $v1, 4
    /* 33FBB9C 80071600 21104300 */  addu       $v0, $v0, $v1
    /* 33FBBA0 80071604 40100200 */  sll        $v0, $v0, 1
    /* 33FBBA4 80071608 1E004224 */  addiu      $v0, $v0, 0x1E
    /* 33FBBA8 8007160C 2649010C */  jal        func_80052498
    /* 33FBBAC 80071610 000042AE */   sw        $v0, 0x0($s2)
    /* 33FBBB0 80071614 F0FF4224 */  addiu      $v0, $v0, -0x10
  .Llevel_45_80071618:
    /* 33FBBB4 80071618 040042AE */  sw         $v0, 0x4($s2)
    /* 33FBBB8 8007161C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 33FBBBC 80071620 3800B28F */  lw         $s2, 0x38($sp)
    /* 33FBBC0 80071624 3400B18F */  lw         $s1, 0x34($sp)
    /* 33FBBC4 80071628 3000B08F */  lw         $s0, 0x30($sp)
    /* 33FBBC8 8007162C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 33FBBCC 80071630 0800E003 */  jr         $ra
    /* 33FBBD0 80071634 00000000 */   nop
endlabel func_level_45_800714AC
