.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004DA6C, 0x64

glabel func_8004DA6C
    /* 3E26C 8004DA6C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3E270 8004DA70 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3E274 8004DA74 21808000 */  addu       $s0, $a0, $zero
    /* 3E278 8004DA78 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3E27C 8004DA7C 2188A000 */  addu       $s1, $a1, $zero
    /* 3E280 8004DA80 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3E284 8004DA84 2190C000 */  addu       $s2, $a2, $zero
    /* 3E288 8004DA88 2400B3AF */  sw         $s3, 0x24($sp)
    /* 3E28C 8004DA8C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3E290 8004DA90 F729010C */  jal        func_8004A7DC
    /* 3E294 8004DA94 2198E000 */   addu      $s3, $a3, $zero
    /* 3E298 8004DA98 21200002 */  addu       $a0, $s0, $zero
    /* 3E29C 8004DA9C 23282202 */  subu       $a1, $s1, $v0
    /* 3E2A0 8004DAA0 21304002 */  addu       $a2, $s2, $zero
    /* 3E2A4 8004DAA4 21386002 */  addu       $a3, $s3, $zero
    /* 3E2A8 8004DAA8 DD28010C */  jal        func_8004A374
    /* 3E2AC 8004DAAC 1000A0AF */   sw        $zero, 0x10($sp)
    /* 3E2B0 8004DAB0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 3E2B4 8004DAB4 2400B38F */  lw         $s3, 0x24($sp)
    /* 3E2B8 8004DAB8 2000B28F */  lw         $s2, 0x20($sp)
    /* 3E2BC 8004DABC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3E2C0 8004DAC0 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E2C4 8004DAC4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3E2C8 8004DAC8 0800E003 */  jr         $ra
    /* 3E2CC 8004DACC 00000000 */   nop
endlabel func_8004DA6C
