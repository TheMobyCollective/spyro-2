.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_55_80071A6C, 0x18C

glabel func_level_55_80071A6C
    /* 3D22008 80071A6C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3D2200C 80071A70 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3D22010 80071A74 21908000 */  addu       $s2, $a0, $zero
    /* 3D22014 80071A78 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3D22018 80071A7C 0680103C */  lui        $s0, %hi(D_80067698)
    /* 3D2201C 80071A80 98761026 */  addiu      $s0, $s0, %lo(D_80067698)
    /* 3D22020 80071A84 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 3D22024 80071A88 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3D22028 80071A8C 0000068E */  lw         $a2, 0x0($s0)
    /* 3D2202C 80071A90 00000000 */  nop
    /* 3D22030 80071A94 4500C010 */  beqz       $a2, .Llevel_55_80071BAC
    /* 3D22034 80071A98 2118A000 */   addu      $v1, $a1, $zero
    /* 3D22038 80071A9C 07000224 */  addiu      $v0, $zero, 0x7
    /* 3D2203C 80071AA0 23104300 */  subu       $v0, $v0, $v1
    /* 3D22040 80071AA4 00110200 */  sll        $v0, $v0, 4
    /* 3D22044 80071AA8 2388C200 */  subu       $s1, $a2, $v0
    /* 3D22048 80071AAC 4100222A */  slti       $v0, $s1, 0x41
    /* 3D2204C 80071AB0 02004014 */  bnez       $v0, .Llevel_55_80071ABC
    /* 3D22050 80071AB4 00000000 */   nop
    /* 3D22054 80071AB8 40001124 */  addiu      $s1, $zero, 0x40
  .Llevel_55_80071ABC:
    /* 3D22058 80071ABC 02002106 */  bgez       $s1, .Llevel_55_80071AC8
    /* 3D2205C 80071AC0 DCFF0426 */   addiu     $a0, $s0, -0x24
    /* 3D22060 80071AC4 21880000 */  addu       $s1, $zero, $zero
  .Llevel_55_80071AC8:
    /* 3D22064 80071AC8 40280300 */  sll        $a1, $v1, 1
    /* 3D22068 80071ACC F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 3D2206C 80071AD0 F0FF0624 */  addiu      $a2, $zero, -0x10
    /* 3D22070 80071AD4 00110300 */  sll        $v0, $v1, 4
    /* 3D22074 80071AD8 21104300 */  addu       $v0, $v0, $v1
    /* 3D22078 80071ADC 40100200 */  sll        $v0, $v0, 1
    /* 3D2207C 80071AE0 1E004224 */  addiu      $v0, $v0, 0x1E
    /* 3D22080 80071AE4 2649010C */  jal        func_80052498
    /* 3D22084 80071AE8 1000A2AF */   sw        $v0, 0x10($sp)
    /* 3D22088 80071AEC E4FF0426 */  addiu      $a0, $s0, -0x1C
    /* 3D2208C 80071AF0 EC000624 */  addiu      $a2, $zero, 0xEC
    /* 3D22090 80071AF4 0680033C */  lui        $v1, %hi(D_80067694)
    /* 3D22094 80071AF8 9476638C */  lw         $v1, %lo(D_80067694)($v1)
    /* 3D22098 80071AFC F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3D2209C 80071B00 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3D220A0 80071B04 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3D220A4 80071B08 40280300 */  sll        $a1, $v1, 1
    /* 3D220A8 80071B0C F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 3D220AC 80071B10 00110300 */  sll        $v0, $v1, 4
    /* 3D220B0 80071B14 21104300 */  addu       $v0, $v0, $v1
    /* 3D220B4 80071B18 40100200 */  sll        $v0, $v0, 1
    /* 3D220B8 80071B1C 1E004224 */  addiu      $v0, $v0, 0x1E
    /* 3D220BC 80071B20 2649010C */  jal        func_80052498
    /* 3D220C0 80071B24 2000A2AF */   sw        $v0, 0x20($sp)
    /* 3D220C4 80071B28 2000B027 */  addiu      $s0, $sp, 0x20
    /* 3D220C8 80071B2C 21200002 */  addu       $a0, $s0, $zero
    /* 3D220CC 80071B30 21280002 */  addu       $a1, $s0, $zero
    /* 3D220D0 80071B34 1000A627 */  addiu      $a2, $sp, 0x10
    /* 3D220D4 80071B38 EC004224 */  addiu      $v0, $v0, 0xEC
    /* 3D220D8 80071B3C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 3D220DC 80071B40 806F000C */  jal        func_8001BE00
    /* 3D220E0 80071B44 2800A0AF */   sw        $zero, 0x28($sp)
    /* 3D220E4 80071B48 21200002 */  addu       $a0, $s0, $zero
    /* 3D220E8 80071B4C 40000524 */  addiu      $a1, $zero, 0x40
    /* 3D220EC 80071B50 316F000C */  jal        func_8001BCC4
    /* 3D220F0 80071B54 21302002 */   addu      $a2, $s1, $zero
    /* 3D220F4 80071B58 40881100 */  sll        $s1, $s1, 1
    /* 3D220F8 80071B5C 8000222A */  slti       $v0, $s1, 0x80
    /* 3D220FC 80071B60 02004014 */  bnez       $v0, .Llevel_55_80071B6C
    /* 3D22100 80071B64 00000000 */   nop
    /* 3D22104 80071B68 7F001124 */  addiu      $s1, $zero, 0x7F
  .Llevel_55_80071B6C:
    /* 3D22108 80071B6C 40101100 */  sll        $v0, $s1, 1
    /* 3D2210C 80071B70 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3D22110 80071B74 21082200 */  addu       $at, $at, $v0
    /* 3D22114 80071B78 D81B2394 */  lhu        $v1, %lo(D_80061BD8)($at)
    /* 3D22118 80071B7C 2000A28F */  lw         $v0, 0x20($sp)
    /* 3D2211C 80071B80 1000A48F */  lw         $a0, 0x10($sp)
    /* 3D22120 80071B84 001C0300 */  sll        $v1, $v1, 16
    /* 3D22124 80071B88 831D0300 */  sra        $v1, $v1, 22
    /* 3D22128 80071B8C 21104300 */  addu       $v0, $v0, $v1
    /* 3D2212C 80071B90 21208200 */  addu       $a0, $a0, $v0
    /* 3D22130 80071B94 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3D22134 80071B98 000044AE */  sw         $a0, 0x0($s2)
    /* 3D22138 80071B9C 1400A28F */  lw         $v0, 0x14($sp)
    /* 3D2213C 80071BA0 2400A38F */  lw         $v1, 0x24($sp)
    /* 3D22140 80071BA4 F6C60108 */  j          .Llevel_55_80071BD8
    /* 3D22144 80071BA8 21104300 */   addu      $v0, $v0, $v1
  .Llevel_55_80071BAC:
    /* 3D22148 80071BAC DCFF0426 */  addiu      $a0, $s0, -0x24
    /* 3D2214C 80071BB0 40280300 */  sll        $a1, $v1, 1
    /* 3D22150 80071BB4 F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 3D22154 80071BB8 24000624 */  addiu      $a2, $zero, 0x24
    /* 3D22158 80071BBC 00110300 */  sll        $v0, $v1, 4
    /* 3D2215C 80071BC0 21104300 */  addu       $v0, $v0, $v1
    /* 3D22160 80071BC4 40100200 */  sll        $v0, $v0, 1
    /* 3D22164 80071BC8 1E004224 */  addiu      $v0, $v0, 0x1E
    /* 3D22168 80071BCC 2649010C */  jal        func_80052498
    /* 3D2216C 80071BD0 000042AE */   sw        $v0, 0x0($s2)
    /* 3D22170 80071BD4 F0FF4224 */  addiu      $v0, $v0, -0x10
  .Llevel_55_80071BD8:
    /* 3D22174 80071BD8 040042AE */  sw         $v0, 0x4($s2)
    /* 3D22178 80071BDC 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 3D2217C 80071BE0 3800B28F */  lw         $s2, 0x38($sp)
    /* 3D22180 80071BE4 3400B18F */  lw         $s1, 0x34($sp)
    /* 3D22184 80071BE8 3000B08F */  lw         $s0, 0x30($sp)
    /* 3D22188 80071BEC 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3D2218C 80071BF0 0800E003 */  jr         $ra
    /* 3D22190 80071BF4 00000000 */   nop
endlabel func_level_55_80071A6C
