.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C1AC, 0x68

glabel func_8004C1AC
    /* 3C9AC 8004C1AC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3C9B0 8004C1B0 21288000 */  addu       $a1, $a0, $zero
    /* 3C9B4 8004C1B4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3C9B8 8004C1B8 0000A28C */  lw         $v0, 0x0($a1)
    /* 3C9BC 8004C1BC 00000000 */  nop
    /* 3C9C0 8004C1C0 07004010 */  beqz       $v0, .L8004C1E0
    /* 3C9C4 8004C1C4 00000000 */   nop
    /* 3C9C8 8004C1C8 0680043C */  lui        $a0, %hi(D_8006718C)
    /* 3C9CC 8004C1CC 8C718424 */  addiu      $a0, $a0, %lo(D_8006718C)
    /* 3C9D0 8004C1D0 036D000C */  jal        func_8001B40C
    /* 3C9D4 8004C1D4 48020624 */   addiu     $a2, $zero, 0x248
    /* 3C9D8 8004C1D8 7D300108 */  j          .L8004C1F4
    /* 3C9DC 8004C1DC 00000000 */   nop
  .L8004C1E0:
    /* 3C9E0 8004C1E0 0680043C */  lui        $a0, %hi(D_8006718C)
    /* 3C9E4 8004C1E4 8C718424 */  addiu      $a0, $a0, %lo(D_8006718C)
    /* 3C9E8 8004C1E8 21280000 */  addu       $a1, $zero, $zero
    /* 3C9EC 8004C1EC F26C000C */  jal        func_8001B3C8
    /* 3C9F0 8004C1F0 48020624 */   addiu     $a2, $zero, 0x248
  .L8004C1F4:
    /* 3C9F4 8004C1F4 595C000C */  jal        func_80017164
    /* 3C9F8 8004C1F8 00000000 */   nop
    /* 3C9FC 8004C1FC 0680013C */  lui        $at, %hi(D_80067EC4)
    /* 3CA00 8004C200 C47E20AC */  sw         $zero, %lo(D_80067EC4)($at)
    /* 3CA04 8004C204 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3CA08 8004C208 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3CA0C 8004C20C 0800E003 */  jr         $ra
    /* 3CA10 8004C210 00000000 */   nop
endlabel func_8004C1AC
