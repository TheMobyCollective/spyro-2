.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_45_80070AB8, 0x60

glabel func_level_45_80070AB8
    /* 33FB054 80070AB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 33FB058 80070ABC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 33FB05C 80070AC0 AB42010C */  jal        func_80050AAC
    /* 33FB060 80070AC4 00000000 */   nop
    /* 33FB064 80070AC8 0680033C */  lui        $v1, %hi(D_80066F2C)
    /* 33FB068 80070ACC 2C6F638C */  lw         $v1, %lo(D_80066F2C)($v1)
    /* 33FB06C 80070AD0 02000224 */  addiu      $v0, $zero, 0x2
    /* 33FB070 80070AD4 0780013C */  lui        $at, %hi(D_800681C8)
    /* 33FB074 80070AD8 C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* 33FB078 80070ADC 0780013C */  lui        $at, %hi(D_800698EC)
    /* 33FB07C 80070AE0 EC9820AC */  sw         $zero, %lo(D_800698EC)($at)
    /* 33FB080 80070AE4 0780013C */  lui        $at, %hi(D_800698F0)
    /* 33FB084 80070AE8 F09820AC */  sw         $zero, %lo(D_800698F0)($at)
    /* 33FB088 80070AEC 0780013C */  lui        $at, %hi(D_800698F4)
    /* 33FB08C 80070AF0 F49820AC */  sw         $zero, %lo(D_800698F4)($at)
    /* 33FB090 80070AF4 0780013C */  lui        $at, %hi(D_800698F8)
    /* 33FB094 80070AF8 F89820AC */  sw         $zero, %lo(D_800698F8)($at)
    /* 33FB098 80070AFC 0000648C */  lw         $a0, 0x0($v1)
    /* 33FB09C 80070B00 297D000C */  jal        func_8001F4A4
    /* 33FB0A0 80070B04 04000524 */   addiu     $a1, $zero, 0x4
    /* 33FB0A4 80070B08 1000BF8F */  lw         $ra, 0x10($sp)
    /* 33FB0A8 80070B0C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 33FB0AC 80070B10 0800E003 */  jr         $ra
    /* 33FB0B0 80070B14 00000000 */   nop
endlabel func_level_45_80070AB8
