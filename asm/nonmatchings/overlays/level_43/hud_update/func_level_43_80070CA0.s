.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_43_80070CA0, 0x110

glabel func_level_43_80070CA0
    /* 2FC823C 80070CA0 0680023C */  lui        $v0, %hi(D_80066F30)
    /* 2FC8240 80070CA4 306F428C */  lw         $v0, %lo(D_80066F30)($v0)
    /* 2FC8244 80070CA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FC8248 80070CAC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2FC824C 80070CB0 12004010 */  beqz       $v0, .Llevel_43_80070CFC
    /* 2FC8250 80070CB4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2FC8254 80070CB8 0680043C */  lui        $a0, %hi(D_80067684)
    /* 2FC8258 80070CBC 84768424 */  addiu      $a0, $a0, %lo(D_80067684)
    /* 2FC825C 80070CC0 00008290 */  lbu        $v0, 0x0($a0)
    /* 2FC8260 80070CC4 00000000 */  nop
    /* 2FC8264 80070CC8 05004010 */  beqz       $v0, .Llevel_43_80070CE0
    /* 2FC8268 80070CCC 0C000524 */   addiu     $a1, $zero, 0xC
    /* 2FC826C 80070CD0 0680023C */  lui        $v0, %hi(D_80067088)
    /* 2FC8270 80070CD4 8870428C */  lw         $v0, %lo(D_80067088)($v0)
    /* 2FC8274 80070CD8 4047010C */  jal        func_80051D00
    /* 2FC8278 80070CDC 2328A200 */   subu      $a1, $a1, $v0
  .Llevel_43_80070CE0:
    /* 2FC827C 80070CE0 03000224 */  addiu      $v0, $zero, 0x3
    /* 2FC8280 80070CE4 0680013C */  lui        $at, %hi(D_80067675)
    /* 2FC8284 80070CE8 757622A0 */  sb         $v0, %lo(D_80067675)($at)
    /* 2FC8288 80070CEC 0680013C */  lui        $at, %hi(D_8006767D)
    /* 2FC828C 80070CF0 7D7622A0 */  sb         $v0, %lo(D_8006767D)($at)
    /* 2FC8290 80070CF4 47C30108 */  j          .Llevel_43_80070D1C
    /* 2FC8294 80070CF8 00000000 */   nop
  .Llevel_43_80070CFC:
    /* 2FC8298 80070CFC 0680103C */  lui        $s0, %hi(D_80067674)
    /* 2FC829C 80070D00 74761026 */  addiu      $s0, $s0, %lo(D_80067674)
    /* 2FC82A0 80070D04 21200002 */  addu       $a0, $s0, $zero
    /* 2FC82A4 80070D08 4047010C */  jal        func_80051D00
    /* 2FC82A8 80070D0C 21280000 */   addu      $a1, $zero, $zero
    /* 2FC82AC 80070D10 08000426 */  addiu      $a0, $s0, 0x8
    /* 2FC82B0 80070D14 4047010C */  jal        func_80051D00
    /* 2FC82B4 80070D18 21280000 */   addu      $a1, $zero, $zero
  .Llevel_43_80070D1C:
    /* 2FC82B8 80070D1C 0680103C */  lui        $s0, %hi(D_80067674)
    /* 2FC82BC 80070D20 74761026 */  addiu      $s0, $s0, %lo(D_80067674)
    /* 2FC82C0 80070D24 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 2FC82C4 80070D28 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 2FC82C8 80070D2C 6746010C */  jal        func_8005199C
    /* 2FC82CC 80070D30 21200002 */   addu      $a0, $s0, $zero
    /* 2FC82D0 80070D34 0680053C */  lui        $a1, %hi(D_80067084)
    /* 2FC82D4 80070D38 8470A58C */  lw         $a1, %lo(D_80067084)($a1)
    /* 2FC82D8 80070D3C 6746010C */  jal        func_8005199C
    /* 2FC82DC 80070D40 08000426 */   addiu     $a0, $s0, 0x8
    /* 2FC82E0 80070D44 0780023C */  lui        $v0, %hi(D_8006ABF8)
    /* 2FC82E4 80070D48 F8AB4290 */  lbu        $v0, %lo(D_8006ABF8)($v0)
    /* 2FC82E8 80070D4C 00000000 */  nop
    /* 2FC82EC 80070D50 0E004010 */  beqz       $v0, .Llevel_43_80070D8C
    /* 2FC82F0 80070D54 00000000 */   nop
    /* 2FC82F4 80070D58 0680023C */  lui        $v0, %hi(D_80067148)
    /* 2FC82F8 80070D5C 48714290 */  lbu        $v0, %lo(D_80067148)($v0)
    /* 2FC82FC 80070D60 00000000 */  nop
    /* 2FC8300 80070D64 04004230 */  andi       $v0, $v0, 0x4
    /* 2FC8304 80070D68 08004014 */  bnez       $v0, .Llevel_43_80070D8C
    /* 2FC8308 80070D6C 10000426 */   addiu     $a0, $s0, 0x10
    /* 2FC830C 80070D70 0680023C */  lui        $v0, %hi(D_80067088)
    /* 2FC8310 80070D74 8870428C */  lw         $v0, %lo(D_80067088)($v0)
    /* 2FC8314 80070D78 0C000524 */  addiu      $a1, $zero, 0xC
    /* 2FC8318 80070D7C 6746010C */  jal        func_8005199C
    /* 2FC831C 80070D80 2328A200 */   subu      $a1, $a1, $v0
    /* 2FC8320 80070D84 67C30108 */  j          .Llevel_43_80070D9C
    /* 2FC8324 80070D88 00000000 */   nop
  .Llevel_43_80070D8C:
    /* 2FC8328 80070D8C 0680043C */  lui        $a0, %hi(D_80067684)
    /* 2FC832C 80070D90 84768424 */  addiu      $a0, $a0, %lo(D_80067684)
    /* 2FC8330 80070D94 4047010C */  jal        func_80051D00
    /* 2FC8334 80070D98 21280000 */   addu      $a1, $zero, $zero
  .Llevel_43_80070D9C:
    /* 2FC8338 80070D9C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2FC833C 80070DA0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FC8340 80070DA4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FC8344 80070DA8 0800E003 */  jr         $ra
    /* 2FC8348 80070DAC 00000000 */   nop
endlabel func_level_43_80070CA0
