.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E270, 0x74

glabel func_8001E270
    /* EA70 8001E270 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EA74 8001E274 0680023C */  lui        $v0, %hi(D_80067F04)
    /* EA78 8001E278 047F428C */  lw         $v0, %lo(D_80067F04)($v0)
    /* EA7C 8001E27C 0680033C */  lui        $v1, %hi(D_80067F34)
    /* EA80 8001E280 347F638C */  lw         $v1, %lo(D_80067F34)($v1)
    /* EA84 8001E284 0680043C */  lui        $a0, %hi(D_80067EC8)
    /* EA88 8001E288 C87E8424 */  addiu      $a0, $a0, %lo(D_80067EC8)
    /* EA8C 8001E28C 1000BFAF */  sw         $ra, 0x10($sp)
    /* EA90 8001E290 000080A4 */  sh         $zero, 0x0($a0)
    /* EA94 8001E294 21104300 */  addu       $v0, $v0, $v1
    /* EA98 8001E298 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* EA9C 8001E29C 0680013C */  lui        $at, %hi(D_80067ECA)
    /* EAA0 8001E2A0 CA7E22A4 */  sh         $v0, %lo(D_80067ECA)($at)
    /* EAA4 8001E2A4 3800828C */  lw         $v0, 0x38($a0)
    /* EAA8 8001E2A8 38008424 */  addiu      $a0, $a0, 0x38
    /* EAAC 8001E2AC 0680033C */  lui        $v1, %hi(D_80067F38)
    /* EAB0 8001E2B0 387F638C */  lw         $v1, %lo(D_80067F38)($v1)
    /* EAB4 8001E2B4 00000000 */  nop
    /* EAB8 8001E2B8 00086324 */  addiu      $v1, $v1, 0x800
    /* EABC 8001E2BC 21104300 */  addu       $v0, $v0, $v1
    /* EAC0 8001E2C0 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* EAC4 8001E2C4 0680013C */  lui        $at, %hi(D_80067ECC)
    /* EAC8 8001E2C8 CC7E22A4 */  sh         $v0, %lo(D_80067ECC)($at)
    /* EACC 8001E2CC EA7B000C */  jal        func_8001EFA8
    /* EAD0 8001E2D0 21288000 */   addu      $a1, $a0, $zero
    /* EAD4 8001E2D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* EAD8 8001E2D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* EADC 8001E2DC 0800E003 */  jr         $ra
    /* EAE0 8001E2E0 00000000 */   nop
endlabel func_8001E270
