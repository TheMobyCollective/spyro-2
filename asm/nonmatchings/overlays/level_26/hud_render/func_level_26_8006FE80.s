.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_26_8006FE80, 0x21C

glabel func_level_26_8006FE80
    /* 1DB2C1C 8006FE80 0680023C */  lui        $v0, %hi(D_80067674)
    /* 1DB2C20 8006FE84 74764290 */  lbu        $v0, %lo(D_80067674)($v0)
    /* 1DB2C24 8006FE88 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1DB2C28 8006FE8C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 1DB2C2C 8006FE90 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1DB2C30 8006FE94 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1DB2C34 8006FE98 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1DB2C38 8006FE9C 77004010 */  beqz       $v0, .Llevel_26_8007007C
    /* 1DB2C3C 8006FEA0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1DB2C40 8006FEA4 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* 1DB2C44 8006FEA8 0680043C */  lui        $a0, %hi(D_80067008)
    /* 1DB2C48 8006FEAC 0870848C */  lw         $a0, %lo(D_80067008)($a0)
    /* 1DB2C4C 8006FEB0 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 1DB2C50 8006FEB4 18008200 */  mult       $a0, $v0
    /* 1DB2C54 8006FEB8 C3170400 */  sra        $v0, $a0, 31
    /* 1DB2C58 8006FEBC 10400000 */  mfhi       $t0
    /* 1DB2C5C 8006FEC0 43180800 */  sra        $v1, $t0, 1
    /* 1DB2C60 8006FEC4 23186200 */  subu       $v1, $v1, $v0
    /* 1DB2C64 8006FEC8 80100300 */  sll        $v0, $v1, 2
    /* 1DB2C68 8006FECC 21104300 */  addu       $v0, $v0, $v1
    /* 1DB2C6C 8006FED0 11008214 */  bne        $a0, $v0, .Llevel_26_8006FF18
    /* 1DB2C70 8006FED4 00000000 */   nop
    /* 1DB2C74 8006FED8 0680023C */  lui        $v0, %hi(D_800670F4)
    /* 1DB2C78 8006FEDC F4704290 */  lbu        $v0, %lo(D_800670F4)($v0)
    /* 1DB2C7C 8006FEE0 00000000 */  nop
    /* 1DB2C80 8006FEE4 05004010 */  beqz       $v0, .Llevel_26_8006FEFC
    /* 1DB2C84 8006FEE8 00000000 */   nop
    /* 1DB2C88 8006FEEC 0680013C */  lui        $at, %hi(D_800670F4)
    /* 1DB2C8C 8006FEF0 F47020A0 */  sb         $zero, %lo(D_800670F4)($at)
    /* 1DB2C90 8006FEF4 C6BF0108 */  j          .Llevel_26_8006FF18
    /* 1DB2C94 8006FEF8 00000000 */   nop
  .Llevel_26_8006FEFC:
    /* 1DB2C98 8006FEFC 4B67010C */  jal        func_80059D2C
    /* 1DB2C9C 8006FF00 00000000 */   nop
    /* 1DB2CA0 8006FF04 0F004230 */  andi       $v0, $v0, 0xF
    /* 1DB2CA4 8006FF08 03004014 */  bnez       $v0, .Llevel_26_8006FF18
    /* 1DB2CA8 8006FF0C 01000224 */   addiu     $v0, $zero, 0x1
    /* 1DB2CAC 8006FF10 0680013C */  lui        $at, %hi(D_800670F4)
    /* 1DB2CB0 8006FF14 F47022A0 */  sb         $v0, %lo(D_800670F4)($at)
  .Llevel_26_8006FF18:
    /* 1DB2CB4 8006FF18 0680023C */  lui        $v0, %hi(D_800670F4)
    /* 1DB2CB8 8006FF1C F4704290 */  lbu        $v0, %lo(D_800670F4)($v0)
    /* 1DB2CBC 8006FF20 00000000 */  nop
    /* 1DB2CC0 8006FF24 12004010 */  beqz       $v0, .Llevel_26_8006FF70
    /* 1DB2CC4 8006FF28 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 1DB2CC8 8006FF2C 0680043C */  lui        $a0, %hi(D_80067008)
    /* 1DB2CCC 8006FF30 0870848C */  lw         $a0, %lo(D_80067008)($a0)
    /* 1DB2CD0 8006FF34 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 1DB2CD4 8006FF38 18008200 */  mult       $a0, $v0
    /* 1DB2CD8 8006FF3C C3170400 */  sra        $v0, $a0, 31
    /* 1DB2CDC 8006FF40 10400000 */  mfhi       $t0
    /* 1DB2CE0 8006FF44 43180800 */  sra        $v1, $t0, 1
    /* 1DB2CE4 8006FF48 23186200 */  subu       $v1, $v1, $v0
    /* 1DB2CE8 8006FF4C 80100300 */  sll        $v0, $v1, 2
    /* 1DB2CEC 8006FF50 21104300 */  addu       $v0, $v0, $v1
    /* 1DB2CF0 8006FF54 23208200 */  subu       $a0, $a0, $v0
    /* 1DB2CF4 8006FF58 01009224 */  addiu      $s2, $a0, 0x1
    /* 1DB2CF8 8006FF5C 0400422A */  slti       $v0, $s2, 0x4
    /* 1DB2CFC 8006FF60 04004014 */  bnez       $v0, .Llevel_26_8006FF74
    /* 1DB2D00 8006FF64 06000224 */   addiu     $v0, $zero, 0x6
    /* 1DB2D04 8006FF68 DDBF0108 */  j          .Llevel_26_8006FF74
    /* 1DB2D08 8006FF6C 23905200 */   subu      $s2, $v0, $s2
  .Llevel_26_8006FF70:
    /* 1DB2D0C 8006FF70 21900000 */  addu       $s2, $zero, $zero
  .Llevel_26_8006FF74:
    /* 1DB2D10 8006FF74 4134010C */  jal        func_8004D104
    /* 1DB2D14 8006FF78 58000424 */   addiu     $a0, $zero, 0x58
    /* 1DB2D18 8006FF7C 0680113C */  lui        $s1, %hi(D_80067674)
    /* 1DB2D1C 8006FF80 74763126 */  addiu      $s1, $s1, %lo(D_80067674)
    /* 1DB2D20 8006FF84 21202002 */  addu       $a0, $s1, $zero
    /* 1DB2D24 8006FF88 21280000 */  addu       $a1, $zero, $zero
    /* 1DB2D28 8006FF8C 2649010C */  jal        func_80052498
    /* 1DB2D2C 8006FF90 EC000624 */   addiu     $a2, $zero, 0xEC
    /* 1DB2D30 8006FF94 0680103C */  lui        $s0, %hi(D_80063660)
    /* 1DB2D34 8006FF98 60361026 */  addiu      $s0, $s0, %lo(D_80063660)
    /* 1DB2D38 8006FF9C 21200002 */  addu       $a0, $s0, $zero
    /* 1DB2D3C 8006FFA0 26000524 */  addiu      $a1, $zero, 0x26
    /* 1DB2D40 8006FFA4 C6004624 */  addiu      $a2, $v0, 0xC6
    /* 1DB2D44 8006FFA8 3348010C */  jal        func_800520CC
    /* 1DB2D48 8006FFAC 15000724 */   addiu     $a3, $zero, 0x15
    /* 1DB2D4C 8006FFB0 21202002 */  addu       $a0, $s1, $zero
    /* 1DB2D50 8006FFB4 21280000 */  addu       $a1, $zero, $zero
    /* 1DB2D54 8006FFB8 2649010C */  jal        func_80052498
    /* 1DB2D58 8006FFBC EC000624 */   addiu     $a2, $zero, 0xEC
    /* 1DB2D5C 8006FFC0 80201200 */  sll        $a0, $s2, 2
    /* 1DB2D60 8006FFC4 30001026 */  addiu      $s0, $s0, 0x30
    /* 1DB2D64 8006FFC8 21209000 */  addu       $a0, $a0, $s0
    /* 1DB2D68 8006FFCC 26000524 */  addiu      $a1, $zero, 0x26
    /* 1DB2D6C 8006FFD0 C9004624 */  addiu      $a2, $v0, 0xC9
    /* 1DB2D70 8006FFD4 3348010C */  jal        func_800520CC
    /* 1DB2D74 8006FFD8 12000724 */   addiu     $a3, $zero, 0x12
    /* 1DB2D78 8006FFDC 21900000 */  addu       $s2, $zero, $zero
    /* 1DB2D7C 8006FFE0 04003326 */  addiu      $s3, $s1, 0x4
    /* 1DB2D80 8006FFE4 28001124 */  addiu      $s1, $zero, 0x28
  .Llevel_26_8006FFE8:
    /* 1DB2D84 8006FFE8 03004016 */  bnez       $s2, .Llevel_26_8006FFF8
    /* 1DB2D88 8006FFEC 0E001024 */   addiu     $s0, $zero, 0xE
    /* 1DB2D8C 8006FFF0 02C00108 */  j          .Llevel_26_80070008
    /* 1DB2D90 8006FFF4 0D001024 */   addiu     $s0, $zero, 0xD
  .Llevel_26_8006FFF8:
    /* 1DB2D94 8006FFF8 06000224 */  addiu      $v0, $zero, 0x6
    /* 1DB2D98 8006FFFC 02004216 */  bne        $s2, $v0, .Llevel_26_80070008
    /* 1DB2D9C 80070000 00000000 */   nop
    /* 1DB2DA0 80070004 0F001024 */  addiu      $s0, $zero, 0xF
  .Llevel_26_80070008:
    /* 1DB2DA4 80070008 0000628E */  lw         $v0, 0x0($s3)
    /* 1DB2DA8 8007000C 00000000 */  nop
    /* 1DB2DAC 80070010 2A104202 */  slt        $v0, $s2, $v0
    /* 1DB2DB0 80070014 02004014 */  bnez       $v0, .Llevel_26_80070020
    /* 1DB2DB4 80070018 00000000 */   nop
    /* 1DB2DB8 8007001C FCFF1026 */  addiu      $s0, $s0, -0x4
  .Llevel_26_80070020:
    /* 1DB2DBC 80070020 FCFF6426 */  addiu      $a0, $s3, -0x4
    /* 1DB2DC0 80070024 21280000 */  addu       $a1, $zero, $zero
    /* 1DB2DC4 80070028 2649010C */  jal        func_80052498
    /* 1DB2DC8 8007002C EC000624 */   addiu     $a2, $zero, 0xEC
    /* 1DB2DCC 80070030 80181000 */  sll        $v1, $s0, 2
    /* 1DB2DD0 80070034 0680043C */  lui        $a0, %hi(D_800635F8)
    /* 1DB2DD4 80070038 F8358424 */  addiu      $a0, $a0, %lo(D_800635F8)
    /* 1DB2DD8 8007003C 21206400 */  addu       $a0, $v1, $a0
    /* 1DB2DDC 80070040 21282002 */  addu       $a1, $s1, $zero
    /* 1DB2DE0 80070044 EC004624 */  addiu      $a2, $v0, 0xEC
    /* 1DB2DE4 80070048 3348010C */  jal        func_800520CC
    /* 1DB2DE8 8007004C 07000724 */   addiu     $a3, $zero, 0x7
    /* 1DB2DEC 80070050 0000638E */  lw         $v1, 0x0($s3)
    /* 1DB2DF0 80070054 00000000 */  nop
    /* 1DB2DF4 80070058 2A184302 */  slt        $v1, $s2, $v1
    /* 1DB2DF8 8007005C 03006014 */  bnez       $v1, .Llevel_26_8007006C
    /* 1DB2DFC 80070060 21204000 */   addu      $a0, $v0, $zero
    /* 1DB2E00 80070064 60590224 */  addiu      $v0, $zero, 0x5960
    /* 1DB2E04 80070068 0E0082A4 */  sh         $v0, 0xE($a0)
  .Llevel_26_8007006C:
    /* 1DB2E08 8007006C 01005226 */  addiu      $s2, $s2, 0x1
    /* 1DB2E0C 80070070 0700422A */  slti       $v0, $s2, 0x7
    /* 1DB2E10 80070074 DCFF4014 */  bnez       $v0, .Llevel_26_8006FFE8
    /* 1DB2E14 80070078 14003126 */   addiu     $s1, $s1, 0x14
  .Llevel_26_8007007C:
    /* 1DB2E18 8007007C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 1DB2E1C 80070080 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1DB2E20 80070084 1800B28F */  lw         $s2, 0x18($sp)
    /* 1DB2E24 80070088 1400B18F */  lw         $s1, 0x14($sp)
    /* 1DB2E28 8007008C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1DB2E2C 80070090 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1DB2E30 80070094 0800E003 */  jr         $ra
    /* 1DB2E34 80070098 00000000 */   nop
endlabel func_level_26_8006FE80
    /* 1DB2E38 8007009C 00000000 */  nop
