.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80079804, 0x74

glabel func_titlescreen_and_loading_80079804
    /* 2F5A0 80079804 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F5A4 80079808 202A033C */  lui        $v1, (0x2A202020 >> 16)
    /* 2F5A8 8007980C 20206334 */  ori        $v1, $v1, (0x2A202020 & 0xFFFF)
    /* 2F5AC 80079810 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F5B0 80079814 0680103C */  lui        $s0, %hi(D_80067030)
    /* 2F5B4 80079818 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 2F5B8 8007981C 0005023C */  lui        $v0, (0x5000000 >> 16)
    /* 2F5BC 80079820 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2F5C0 80079824 080004A6 */  sh         $a0, 0x8($s0)
    /* 2F5C4 80079828 100004A6 */  sh         $a0, 0x10($s0)
    /* 2F5C8 8007982C 21200002 */  addu       $a0, $s0, $zero
    /* 2F5CC 80079830 0C0005A6 */  sh         $a1, 0xC($s0)
    /* 2F5D0 80079834 140005A6 */  sh         $a1, 0x14($s0)
    /* 2F5D4 80079838 18000524 */  addiu      $a1, $zero, 0x18
    /* 2F5D8 8007983C 000002AE */  sw         $v0, 0x0($s0)
    /* 2F5DC 80079840 040003AE */  sw         $v1, 0x4($s0)
    /* 2F5E0 80079844 0A0006A6 */  sh         $a2, 0xA($s0)
    /* 2F5E4 80079848 0E0006A6 */  sh         $a2, 0xE($s0)
    /* 2F5E8 8007984C 120007A6 */  sh         $a3, 0x12($s0)
    /* 2F5EC 80079850 D56C000C */  jal        func_8001B354
    /* 2F5F0 80079854 160007A6 */   sh        $a3, 0x16($s0)
    /* 2F5F4 80079858 18001026 */  addiu      $s0, $s0, 0x18
    /* 2F5F8 8007985C 0680013C */  lui        $at, %hi(D_80067030)
  alabel D_titlescreen_and_loading_80079860
    /* 2F5FC 80079860 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 2F600 80079864 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2F604 80079868 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F608 8007986C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2F60C 80079870 0800E003 */  jr         $ra
    /* 2F610 80079874 00000000 */   nop
endlabel func_titlescreen_and_loading_80079804
