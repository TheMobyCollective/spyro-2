.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800539A8, 0x7C

glabel func_800539A8
    /* 441A8 800539A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 441AC 800539AC 0680033C */  lui        $v1, %hi(D_800676BC)
    /* 441B0 800539B0 BC766324 */  addiu      $v1, $v1, %lo(D_800676BC)
    /* 441B4 800539B4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 441B8 800539B8 0000628C */  lw         $v0, 0x0($v1)
    /* 441BC 800539BC 00000000 */  nop
    /* 441C0 800539C0 14004010 */  beqz       $v0, .L80053A14
    /* 441C4 800539C4 96004228 */   slti      $v0, $v0, 0x96
    /* 441C8 800539C8 12004010 */  beqz       $v0, .L80053A14
    /* 441CC 800539CC 96000224 */   addiu     $v0, $zero, 0x96
    /* 441D0 800539D0 0680043C */  lui        $a0, %hi(D_800676CC)
    /* 441D4 800539D4 CC76848C */  lw         $a0, %lo(D_800676CC)($a0)
    /* 441D8 800539D8 00000000 */  nop
    /* 441DC 800539DC 03008010 */  beqz       $a0, .L800539EC
    /* 441E0 800539E0 000062AC */   sw        $v0, 0x0($v1)
    /* 441E4 800539E4 CB04010C */  jal        func_8004132C
    /* 441E8 800539E8 00000000 */   nop
  .L800539EC:
    /* 441EC 800539EC 0680043C */  lui        $a0, %hi(D_800676D0)
    /* 441F0 800539F0 D076848C */  lw         $a0, %lo(D_800676D0)($a0)
    /* 441F4 800539F4 0680013C */  lui        $at, %hi(D_800676CC)
    /* 441F8 800539F8 CC7620AC */  sw         $zero, %lo(D_800676CC)($at)
    /* 441FC 800539FC 03008010 */  beqz       $a0, .L80053A0C
    /* 44200 80053A00 00000000 */   nop
    /* 44204 80053A04 CB04010C */  jal        func_8004132C
    /* 44208 80053A08 00000000 */   nop
  .L80053A0C:
    /* 4420C 80053A0C 0680013C */  lui        $at, %hi(D_800676D0)
    /* 44210 80053A10 D07620AC */  sw         $zero, %lo(D_800676D0)($at)
  .L80053A14:
    /* 44214 80053A14 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44218 80053A18 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4421C 80053A1C 0800E003 */  jr         $ra
    /* 44220 80053A20 00000000 */   nop
endlabel func_800539A8
