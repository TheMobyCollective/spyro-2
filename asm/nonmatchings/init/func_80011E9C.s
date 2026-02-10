.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80011E9C, 0x94

glabel func_80011E9C
    /* 269C 80011E9C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 26A0 80011EA0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 26A4 80011EA4 2952010C */  jal        func_800548A4
    /* 26A8 80011EA8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 26AC 80011EAC EF46000C */  jal        func_80011BBC
    /* 26B0 80011EB0 00000000 */   nop
    /* 26B4 80011EB4 C746000C */  jal        func_80011B1C
    /* 26B8 80011EB8 00000000 */   nop
    /* 26BC 80011EBC CF46000C */  jal        func_80011B3C
    /* 26C0 80011EC0 00000000 */   nop
    /* 26C4 80011EC4 E14A000C */  jal        func_80012B84
    /* 26C8 80011EC8 00000000 */   nop
    /* 26CC 80011ECC 4947000C */  jal        func_80011D24
    /* 26D0 80011ED0 00000000 */   nop
    /* 26D4 80011ED4 0680103C */  lui        $s0, %hi(D_800676E4)
    /* 26D8 80011ED8 E4761026 */  addiu      $s0, $s0, %lo(D_800676E4)
    /* 26DC 80011EDC 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 26E0 80011EE0 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 26E4 80011EE4 0180053C */  lui        $a1, %hi(D_80011110)
    /* 26E8 80011EE8 1011A58C */  lw         $a1, %lo(D_80011110)($a1)
    /* 26EC 80011EEC 0000068E */  lw         $a2, 0x0($s0)
    /* 26F0 80011EF0 0680073C */  lui        $a3, %hi(D_800676E0)
    /* 26F4 80011EF4 E076E78C */  lw         $a3, %lo(D_800676E0)($a3)
    /* 26F8 80011EF8 044E000C */  jal        func_80013810
    /* 26FC 80011EFC 00000000 */   nop
    /* 2700 80011F00 0000028E */  lw         $v0, 0x0($s0)
    /* 2704 80011F04 0680013C */  lui        $at, %hi(D_800670C4)
    /* 2708 80011F08 C47022AC */  sw         $v0, %lo(D_800670C4)($at)
    /* 270C 80011F0C DDDC010C */  jal        func_titlescreen_and_loading_80077374
    /* 2710 80011F10 01000424 */   addiu     $a0, $zero, 0x1
    /* 2714 80011F14 A96A000C */  jal        func_8001AAA4
    /* 2718 80011F18 00000000 */   nop
    /* 271C 80011F1C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2720 80011F20 1000B08F */  lw         $s0, 0x10($sp)
    /* 2724 80011F24 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2728 80011F28 0800E003 */  jr         $ra
    /* 272C 80011F2C 00000000 */   nop
endlabel func_80011E9C
