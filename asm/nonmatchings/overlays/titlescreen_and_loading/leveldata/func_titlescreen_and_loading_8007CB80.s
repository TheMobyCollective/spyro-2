.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8007CB80, 0x50

glabel func_titlescreen_and_loading_8007CB80
    /* 3291C 8007CB80 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32920 8007CB84 1000BFAF */  sw         $ra, 0x10($sp)
    /* 32924 8007CB88 D355010C */  jal        func_8005574C
    /* 32928 8007CB8C 21200000 */   addu      $a0, $zero, $zero
    /* 3292C 8007CB90 AE60010C */  jal        func_800582B8
    /* 32930 8007CB94 00000000 */   nop
    /* 32934 8007CB98 A960010C */  jal        func_800582A4
    /* 32938 8007CB9C 21200000 */   addu      $a0, $zero, $zero
    /* 3293C 8007CBA0 4D52010C */  jal        func_80054934
    /* 32940 8007CBA4 21200000 */   addu      $a0, $zero, $zero
    /* 32944 8007CBA8 0A61010C */  jal        func_80058428
    /* 32948 8007CBAC 00000000 */   nop
    /* 3294C 8007CBB0 5F55010C */  jal        func_8005557C
    /* 32950 8007CBB4 03000424 */   addiu     $a0, $zero, 0x3
    /* 32954 8007CBB8 6652010C */  jal        func_80054998
    /* 32958 8007CBBC 00000000 */   nop
    /* 3295C 8007CBC0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32960 8007CBC4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32964 8007CBC8 0800E003 */  jr         $ra
    /* 32968 8007CBCC 00000000 */   nop
endlabel func_titlescreen_and_loading_8007CB80
