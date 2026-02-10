.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003986C, 0x44

glabel func_8003986C
    /* 2A06C 8003986C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2A070 80039870 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2A074 80039874 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2A078 80039878 7BE0000C */  jal        func_800381EC
    /* 2A07C 8003987C 21808000 */   addu      $s0, $a0, $zero
    /* 2A080 80039880 38000386 */  lh         $v1, 0x38($s0)
    /* 2A084 80039884 21200002 */  addu       $a0, $s0, $zero
    /* 2A088 80039888 21104300 */  addu       $v0, $v0, $v1
    /* 2A08C 8003988C A306010C */  jal        func_80041A8C
    /* 2A090 80039890 140002AE */   sw        $v0, 0x14($s0)
    /* 2A094 80039894 AE06010C */  jal        func_80041AB8
    /* 2A098 80039898 21200002 */   addu      $a0, $s0, $zero
    /* 2A09C 8003989C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2A0A0 800398A0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2A0A4 800398A4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2A0A8 800398A8 0800E003 */  jr         $ra
    /* 2A0AC 800398AC 00000000 */   nop
endlabel func_8003986C
