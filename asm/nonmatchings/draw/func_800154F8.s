.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800154F8, 0x48

glabel func_800154F8
    /* 5CF8 800154F8 0780023C */  lui        $v0, %hi(D_800698F0)
    /* 5CFC 800154FC F098428C */  lw         $v0, %lo(D_800698F0)($v0)
    /* 5D00 80015500 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5D04 80015504 05004014 */  bnez       $v0, .L8001551C
    /* 5D08 80015508 1000BFAF */   sw        $ra, 0x10($sp)
    /* 5D0C 8001550C 6855000C */  jal        func_800155A0
    /* 5D10 80015510 3D000424 */   addiu     $a0, $zero, 0x3D
    /* 5D14 80015514 4C550008 */  j          .L80015530
    /* 5D18 80015518 00000000 */   nop
  .L8001551C:
    /* 5D1C 8001551C 03004228 */  slti       $v0, $v0, 0x3
    /* 5D20 80015520 03004010 */  beqz       $v0, .L80015530
    /* 5D24 80015524 00000000 */   nop
    /* 5D28 80015528 ECCC010C */  jal        func_titlescreen_and_loading_800733B0
    /* 5D2C 8001552C 00000000 */   nop
  .L80015530:
    /* 5D30 80015530 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5D34 80015534 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5D38 80015538 0800E003 */  jr         $ra
    /* 5D3C 8001553C 00000000 */   nop
endlabel func_800154F8
