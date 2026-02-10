.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800171BC, 0x70

glabel func_800171BC
    /* 79BC 800171BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 79C0 800171C0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 79C4 800171C4 595C000C */  jal        func_80017164
    /* 79C8 800171C8 00000000 */   nop
    /* 79CC 800171CC 0680043C */  lui        $a0, %hi(D_80067414)
    /* 79D0 800171D0 14748424 */  addiu      $a0, $a0, %lo(D_80067414)
    /* 79D4 800171D4 21280000 */  addu       $a1, $zero, $zero
    /* 79D8 800171D8 01000324 */  addiu      $v1, $zero, 0x1
    /* 79DC 800171DC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 79E0 800171E0 0780013C */  lui        $at, %hi(D_800698F0)
    /* 79E4 800171E4 F09823AC */  sw         $v1, %lo(D_800698F0)($at)
    /* 79E8 800171E8 0780013C */  lui        $at, %hi(D_800698EC)
    /* 79EC 800171EC EC9823AC */  sw         $v1, %lo(D_800698EC)($at)
    /* 79F0 800171F0 0680013C */  lui        $at, %hi(D_80066F68)
    /* 79F4 800171F4 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
    /* 79F8 800171F8 0680013C */  lui        $at, %hi(D_800670C8)
    /* 79FC 800171FC C87023AC */  sw         $v1, %lo(D_800670C8)($at)
    /* 7A00 80017200 F26C000C */  jal        func_8001B3C8
    /* 7A04 80017204 48020624 */   addiu     $a2, $zero, 0x248
    /* 7A08 80017208 0680043C */  lui        $a0, %hi(D_8006718C)
    /* 7A0C 8001720C 8C718424 */  addiu      $a0, $a0, %lo(D_8006718C)
    /* 7A10 80017210 21280000 */  addu       $a1, $zero, $zero
    /* 7A14 80017214 F26C000C */  jal        func_8001B3C8
    /* 7A18 80017218 48020624 */   addiu     $a2, $zero, 0x248
    /* 7A1C 8001721C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 7A20 80017220 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7A24 80017224 0800E003 */  jr         $ra
    /* 7A28 80017228 00000000 */   nop
endlabel func_800171BC
