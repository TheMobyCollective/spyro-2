.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C484, 0x78

glabel func_8004C484
    /* 3CC84 8004C484 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3CC88 8004C488 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3CC8C 8004C48C F955010C */  jal        func_800557E4
    /* 3CC90 8004C490 21200000 */   addu      $a0, $zero, $zero
    /* 3CC94 8004C494 B763010C */  jal        func_80058EDC
    /* 3CC98 8004C498 21200000 */   addu      $a0, $zero, $zero
    /* 3CC9C 8004C49C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3CCA0 8004C4A0 21280000 */  addu       $a1, $zero, $zero
    /* 3CCA4 8004C4A4 21300000 */  addu       $a2, $zero, $zero
    /* 3CCA8 8004C4A8 21380000 */  addu       $a3, $zero, $zero
    /* 3CCAC 8004C4AC 00020224 */  addiu      $v0, $zero, 0x200
    /* 3CCB0 8004C4B0 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 3CCB4 8004C4B4 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 3CCB8 8004C4B8 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 3CCBC 8004C4BC 1200A0A7 */  sh         $zero, 0x12($sp)
    /* 3CCC0 8004C4C0 5A56010C */  jal        func_80055968
    /* 3CCC4 8004C4C4 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 3CCC8 8004C4C8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3CCCC 8004C4CC 21280000 */  addu       $a1, $zero, $zero
    /* 3CCD0 8004C4D0 21300000 */  addu       $a2, $zero, $zero
    /* 3CCD4 8004C4D4 21380000 */  addu       $a3, $zero, $zero
    /* 3CCD8 8004C4D8 E4000224 */  addiu      $v0, $zero, 0xE4
    /* 3CCDC 8004C4DC 5A56010C */  jal        func_80055968
    /* 3CCE0 8004C4E0 1200A2A7 */   sh        $v0, 0x12($sp)
    /* 3CCE4 8004C4E4 F955010C */  jal        func_800557E4
    /* 3CCE8 8004C4E8 21200000 */   addu      $a0, $zero, $zero
    /* 3CCEC 8004C4EC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3CCF0 8004C4F0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3CCF4 8004C4F4 0800E003 */  jr         $ra
    /* 3CCF8 8004C4F8 00000000 */   nop
endlabel func_8004C484
