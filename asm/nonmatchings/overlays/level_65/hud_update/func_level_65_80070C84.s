.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_65_80070C84, 0xAC

glabel func_level_65_80070C84
    /* 42C4220 80070C84 0680023C */  lui        $v0, %hi(D_80066F30)
    /* 42C4224 80070C88 306F428C */  lw         $v0, %lo(D_80066F30)($v0)
    /* 42C4228 80070C8C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 42C422C 80070C90 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 42C4230 80070C94 0400422C */  sltiu      $v0, $v0, 0x4
    /* 42C4234 80070C98 0B004010 */  beqz       $v0, .Llevel_65_80070CC8
    /* 42C4238 80070C9C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 42C423C 80070CA0 0680033C */  lui        $v1, %hi(D_80067675)
    /* 42C4240 80070CA4 75766324 */  addiu      $v1, $v1, %lo(D_80067675)
    /* 42C4244 80070CA8 FFFF6424 */  addiu      $a0, $v1, -0x1
    /* 42C4248 80070CAC 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 42C424C 80070CB0 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 42C4250 80070CB4 03000224 */  addiu      $v0, $zero, 0x3
    /* 42C4254 80070CB8 6746010C */  jal        func_8005199C
    /* 42C4258 80070CBC 000062A0 */   sb        $v0, 0x0($v1)
    /* 42C425C 80070CC0 37C30108 */  j          .Llevel_65_80070CDC
    /* 42C4260 80070CC4 21280000 */   addu      $a1, $zero, $zero
  .Llevel_65_80070CC8:
    /* 42C4264 80070CC8 0680043C */  lui        $a0, %hi(D_80067674)
    /* 42C4268 80070CCC 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 42C426C 80070CD0 4047010C */  jal        func_80051D00
    /* 42C4270 80070CD4 21280000 */   addu      $a1, $zero, $zero
    /* 42C4274 80070CD8 21280000 */  addu       $a1, $zero, $zero
  .Llevel_65_80070CDC:
    /* 42C4278 80070CDC 21200000 */  addu       $a0, $zero, $zero
    /* 42C427C 80070CE0 4C000324 */  addiu      $v1, $zero, 0x4C
  .Llevel_65_80070CE4:
    /* 42C4280 80070CE4 0680013C */  lui        $at, %hi(D_80064672)
    /* 42C4284 80070CE8 21082300 */  addu       $at, $at, $v1
    /* 42C4288 80070CEC 72462284 */  lh         $v0, %lo(D_80064672)($at)
    /* 42C428C 80070CF0 00000000 */  nop
    /* 42C4290 80070CF4 02004010 */  beqz       $v0, .Llevel_65_80070D00
    /* 42C4294 80070CF8 00000000 */   nop
    /* 42C4298 80070CFC 0100A524 */  addiu      $a1, $a1, 0x1
  .Llevel_65_80070D00:
    /* 42C429C 80070D00 01008424 */  addiu      $a0, $a0, 0x1
    /* 42C42A0 80070D04 0A008228 */  slti       $v0, $a0, 0xA
    /* 42C42A4 80070D08 F6FF4014 */  bnez       $v0, .Llevel_65_80070CE4
    /* 42C42A8 80070D0C 04006324 */   addiu     $v1, $v1, 0x4
    /* 42C42AC 80070D10 0680043C */  lui        $a0, %hi(D_8006767C)
    /* 42C42B0 80070D14 7C768424 */  addiu      $a0, $a0, %lo(D_8006767C)
    /* 42C42B4 80070D18 6746010C */  jal        func_8005199C
    /* 42C42B8 80070D1C 00000000 */   nop
    /* 42C42BC 80070D20 1000BF8F */  lw         $ra, 0x10($sp)
    /* 42C42C0 80070D24 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 42C42C4 80070D28 0800E003 */  jr         $ra
    /* 42C42C8 80070D2C 00000000 */   nop
endlabel func_level_65_80070C84
