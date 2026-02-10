.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_credits_8006D298, 0xD0

glabel func_credits_8006D298
    /* 2ED834 8006D298 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2ED838 8006D29C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2ED83C 8006D2A0 2188A000 */  addu       $s1, $a1, $zero
    /* 2ED840 8006D2A4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2ED844 8006D2A8 2190C000 */  addu       $s2, $a2, $zero
    /* 2ED848 8006D2AC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2ED84C 8006D2B0 2198E000 */  addu       $s3, $a3, $zero
    /* 2ED850 8006D2B4 01000524 */  addiu      $a1, $zero, 0x1
    /* 2ED854 8006D2B8 40390400 */  sll        $a3, $a0, 5
    /* 2ED858 8006D2BC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2ED85C 8006D2C0 0680103C */  lui        $s0, %hi(D_80067030)
    /* 2ED860 8006D2C4 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 2ED864 8006D2C8 21300000 */  addu       $a2, $zero, $zero
    /* 2ED868 8006D2CC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 2ED86C 8006D2D0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 2ED870 8006D2D4 0768010C */  jal        func_8005A01C
    /* 2ED874 8006D2D8 21200002 */   addu      $a0, $s0, $zero
    /* 2ED878 8006D2DC 21200002 */  addu       $a0, $s0, $zero
    /* 2ED87C 8006D2E0 D56C000C */  jal        func_8001B354
    /* 2ED880 8006D2E4 08000524 */   addiu     $a1, $zero, 0x8
    /* 2ED884 8006D2E8 0C000426 */  addiu      $a0, $s0, 0xC
    /* 2ED888 8006D2EC 08000524 */  addiu      $a1, $zero, 0x8
    /* 2ED88C 8006D2F0 0005023C */  lui        $v0, (0x5000000 >> 16)
    /* 2ED890 8006D2F4 0C0002AE */  sw         $v0, 0xC($s0)
    /* 2ED894 8006D2F8 2A000224 */  addiu      $v0, $zero, 0x2A
    /* 2ED898 8006D2FC 130002A2 */  sb         $v0, 0x13($s0)
    /* 2ED89C 8006D300 0C000224 */  addiu      $v0, $zero, 0xC
    /* 2ED8A0 8006D304 00020324 */  addiu      $v1, $zero, 0x200
    /* 2ED8A4 8006D308 160002A6 */  sh         $v0, 0x16($s0)
    /* 2ED8A8 8006D30C 1A0002A6 */  sh         $v0, 0x1A($s0)
    /* 2ED8AC 8006D310 E4000224 */  addiu      $v0, $zero, 0xE4
    /* 2ED8B0 8006D314 140000A6 */  sh         $zero, 0x14($s0)
    /* 2ED8B4 8006D318 180003A6 */  sh         $v1, 0x18($s0)
    /* 2ED8B8 8006D31C 1C0000A6 */  sh         $zero, 0x1C($s0)
    /* 2ED8BC 8006D320 1E0002A6 */  sh         $v0, 0x1E($s0)
    /* 2ED8C0 8006D324 200003A6 */  sh         $v1, 0x20($s0)
    /* 2ED8C4 8006D328 220002A6 */  sh         $v0, 0x22($s0)
    /* 2ED8C8 8006D32C 100011A2 */  sb         $s1, 0x10($s0)
    /* 2ED8CC 8006D330 110012A2 */  sb         $s2, 0x11($s0)
    /* 2ED8D0 8006D334 D56C000C */  jal        func_8001B354
    /* 2ED8D4 8006D338 120013A2 */   sb        $s3, 0x12($s0)
    /* 2ED8D8 8006D33C 24001026 */  addiu      $s0, $s0, 0x24
    /* 2ED8DC 8006D340 0680013C */  lui        $at, %hi(D_80067030)
    /* 2ED8E0 8006D344 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 2ED8E4 8006D348 2800BF8F */  lw         $ra, 0x28($sp)
    /* 2ED8E8 8006D34C 2400B38F */  lw         $s3, 0x24($sp)
    /* 2ED8EC 8006D350 2000B28F */  lw         $s2, 0x20($sp)
    /* 2ED8F0 8006D354 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2ED8F4 8006D358 1800B08F */  lw         $s0, 0x18($sp)
    /* 2ED8F8 8006D35C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2ED8FC 8006D360 0800E003 */  jr         $ra
    /* 2ED900 8006D364 00000000 */   nop
endlabel func_credits_8006D298
