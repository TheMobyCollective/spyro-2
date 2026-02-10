.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D984, 0x68

glabel func_8004D984
    /* 3E184 8004D984 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3E188 8004D988 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3E18C 8004D98C 21808000 */  addu       $s0, $a0, $zero
    /* 3E190 8004D990 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3E194 8004D994 2188A000 */  addu       $s1, $a1, $zero
    /* 3E198 8004D998 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3E19C 8004D99C 2190C000 */  addu       $s2, $a2, $zero
    /* 3E1A0 8004D9A0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 3E1A4 8004D9A4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3E1A8 8004D9A8 F729010C */  jal        func_8004A7DC
    /* 3E1AC 8004D9AC 2198E000 */   addu      $s3, $a3, $zero
    /* 3E1B0 8004D9B0 21200002 */  addu       $a0, $s0, $zero
    /* 3E1B4 8004D9B4 43100200 */  sra        $v0, $v0, 1
    /* 3E1B8 8004D9B8 23282202 */  subu       $a1, $s1, $v0
    /* 3E1BC 8004D9BC 21304002 */  addu       $a2, $s2, $zero
    /* 3E1C0 8004D9C0 21386002 */  addu       $a3, $s3, $zero
    /* 3E1C4 8004D9C4 DD28010C */  jal        func_8004A374
    /* 3E1C8 8004D9C8 1000A0AF */   sw        $zero, 0x10($sp)
    /* 3E1CC 8004D9CC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 3E1D0 8004D9D0 2400B38F */  lw         $s3, 0x24($sp)
    /* 3E1D4 8004D9D4 2000B28F */  lw         $s2, 0x20($sp)
    /* 3E1D8 8004D9D8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3E1DC 8004D9DC 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E1E0 8004D9E0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3E1E4 8004D9E4 0800E003 */  jr         $ra
    /* 3E1E8 8004D9E8 00000000 */   nop
endlabel func_8004D984
