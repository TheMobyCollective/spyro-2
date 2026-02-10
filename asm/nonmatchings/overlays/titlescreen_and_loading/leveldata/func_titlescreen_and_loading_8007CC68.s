.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8007CC68, 0x70

glabel func_titlescreen_and_loading_8007CC68
    /* 32A04 8007CC68 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32A08 8007CC6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 32A0C 8007CC70 0880103C */  lui        $s0, %hi(D_titlescreen_and_loading_8007F09C)
    /* 32A10 8007CC74 9CF01026 */  addiu      $s0, $s0, %lo(D_titlescreen_and_loading_8007F09C)
    /* 32A14 8007CC78 1400BFAF */  sw         $ra, 0x14($sp)
    /* 32A18 8007CC7C 0C0000AE */  sw         $zero, 0xC($s0)
    /* 32A1C 8007CC80 B3F8010C */  jal        func_titlescreen_and_loading_8007E2CC
    /* 32A20 8007CC84 440000AE */   sw        $zero, 0x44($s0)
    /* 32A24 8007CC88 000000AE */  sw         $zero, 0x0($s0)
    /* 32A28 8007CC8C 040000AE */  sw         $zero, 0x4($s0)
    /* 32A2C 8007CC90 080000AE */  sw         $zero, 0x8($s0)
    /* 32A30 8007CC94 540000AE */  sw         $zero, 0x54($s0)
    /* 32A34 8007CC98 5400038E */  lw         $v1, 0x54($s0)
    /* 32A38 8007CC9C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 32A3C 8007CCA0 140002AE */  sw         $v0, 0x14($s0)
    /* 32A40 8007CCA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 32A44 8007CCA8 4C0002AE */  sw         $v0, 0x4C($s0)
    /* 32A48 8007CCAC 480002AE */  sw         $v0, 0x48($s0)
    /* 32A4C 8007CCB0 1FF9010C */  jal        func_titlescreen_and_loading_8007E47C
    /* 32A50 8007CCB4 500003AE */   sw        $v1, 0x50($s0)
    /* 32A54 8007CCB8 0880053C */  lui        $a1, %hi(func_titlescreen_and_loading_8007E118)
    /* 32A58 8007CCBC 18E1A524 */  addiu      $a1, $a1, %lo(func_titlescreen_and_loading_8007E118)
    /* 32A5C 8007CCC0 5A52010C */  jal        func_80054968
    /* 32A60 8007CCC4 07000424 */   addiu     $a0, $zero, 0x7
    /* 32A64 8007CCC8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 32A68 8007CCCC 1000B08F */  lw         $s0, 0x10($sp)
    /* 32A6C 8007CCD0 0800E003 */  jr         $ra
    /* 32A70 8007CCD4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_titlescreen_and_loading_8007CC68
