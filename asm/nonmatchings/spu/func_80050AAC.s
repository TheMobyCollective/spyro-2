.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80050AAC, 0x74

glabel func_80050AAC
    /* 412AC 80050AAC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 412B0 80050AB0 01000224 */  addiu      $v0, $zero, 0x1
    /* 412B4 80050AB4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 412B8 80050AB8 21800000 */  addu       $s0, $zero, $zero
    /* 412BC 80050ABC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 412C0 80050AC0 21880000 */  addu       $s1, $zero, $zero
    /* 412C4 80050AC4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 412C8 80050AC8 0680013C */  lui        $at, %hi(D_80066FF8)
    /* 412CC 80050ACC F86F22AC */  sw         $v0, %lo(D_80066FF8)($at)
  .L80050AD0:
    /* 412D0 80050AD0 0780013C */  lui        $at, %hi(D_80069A10)
    /* 412D4 80050AD4 21083100 */  addu       $at, $at, $s1
    /* 412D8 80050AD8 109A2290 */  lbu        $v0, %lo(D_80069A10)($at)
    /* 412DC 80050ADC 00000000 */  nop
    /* 412E0 80050AE0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 412E4 80050AE4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 412E8 80050AE8 03004010 */  beqz       $v0, .L80050AF8
    /* 412EC 80050AEC 00000000 */   nop
    /* 412F0 80050AF0 9042010C */  jal        func_80050A40
    /* 412F4 80050AF4 21200002 */   addu      $a0, $s0, $zero
  .L80050AF8:
    /* 412F8 80050AF8 01001026 */  addiu      $s0, $s0, 0x1
    /* 412FC 80050AFC 1800022A */  slti       $v0, $s0, 0x18
    /* 41300 80050B00 F3FF4014 */  bnez       $v0, .L80050AD0
    /* 41304 80050B04 2C003126 */   addiu     $s1, $s1, 0x2C
    /* 41308 80050B08 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4130C 80050B0C 1400B18F */  lw         $s1, 0x14($sp)
    /* 41310 80050B10 1000B08F */  lw         $s0, 0x10($sp)
    /* 41314 80050B14 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 41318 80050B18 0800E003 */  jr         $ra
    /* 4131C 80050B1C 00000000 */   nop
endlabel func_80050AAC
