.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011ADC, 0x40

glabel func_80011ADC
    /* 22DC 80011ADC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 22E0 80011AE0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 22E4 80011AE4 0D52010C */  jal        func_80054834
    /* 22E8 80011AE8 00000000 */   nop
    /* 22EC 80011AEC A747000C */  jal        func_80011E9C
    /* 22F0 80011AF0 00000000 */   nop
  .L80011AF4:
    /* 22F4 80011AF4 506C000C */  jal        func_8001B140
    /* 22F8 80011AF8 00000000 */   nop
    /* 22FC 80011AFC BF55000C */  jal        func_800156FC
    /* 2300 80011B00 00000000 */   nop
    /* 2304 80011B04 BD460008 */  j          .L80011AF4
    /* 2308 80011B08 00000000 */   nop
    /* 230C 80011B0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2310 80011B10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2314 80011B14 0800E003 */  jr         $ra
    /* 2318 80011B18 00000000 */   nop
endlabel func_80011ADC
