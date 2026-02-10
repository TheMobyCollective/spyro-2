.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80077BC8, 0x124

glabel func_titlescreen_and_loading_80077BC8
    /* 2D964 80077BC8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2D968 80077BCC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2D96C 80077BD0 21908000 */  addu       $s2, $a0, $zero
    /* 2D970 80077BD4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2D974 80077BD8 2198A000 */  addu       $s3, $a1, $zero
    /* 2D978 80077BDC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2D97C 80077BE0 21A0C000 */  addu       $s4, $a2, $zero
    /* 2D980 80077BE4 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2D984 80077BE8 21A8E000 */  addu       $s5, $a3, $zero
    /* 2D988 80077BEC 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 2D98C 80077BF0 0004173C */  lui        $s7, (0x4000000 >> 16)
    /* 2D990 80077BF4 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2D994 80077BF8 50001624 */  addiu      $s6, $zero, 0x50
    /* 2D998 80077BFC 80000324 */  addiu      $v1, $zero, 0x80
    /* 2D99C 80077C00 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2D9A0 80077C04 0680103C */  lui        $s0, %hi(D_80067030)
    /* 2D9A4 80077C08 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 2D9A8 80077C0C 4C000224 */  addiu      $v0, $zero, 0x4C
    /* 2D9AC 80077C10 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2D9B0 80077C14 59001124 */  addiu      $s1, $zero, 0x59
    /* 2D9B4 80077C18 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2D9B8 80077C1C 21200002 */  addu       $a0, $s0, $zero
    /* 2D9BC 80077C20 000017AE */  sw         $s7, 0x0($s0)
    /* 2D9C0 80077C24 070016A2 */  sb         $s6, 0x7($s0)
    /* 2D9C4 80077C28 080012A6 */  sh         $s2, 0x8($s0)
    /* 2D9C8 80077C2C 0A0013A6 */  sh         $s3, 0xA($s0)
    /* 2D9CC 80077C30 100014A6 */  sh         $s4, 0x10($s0)
    /* 2D9D0 80077C34 120015A6 */  sh         $s5, 0x12($s0)
    /* 2D9D4 80077C38 040003A2 */  sb         $v1, 0x4($s0)
    /* 2D9D8 80077C3C 050002A2 */  sb         $v0, 0x5($s0)
    /* 2D9DC 80077C40 060011A2 */  sb         $s1, 0x6($s0)
    /* 2D9E0 80077C44 0C0003A2 */  sb         $v1, 0xC($s0)
    /* 2D9E4 80077C48 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 2D9E8 80077C4C E46C000C */  jal        func_8001B390
    /* 2D9EC 80077C50 0E0011A2 */   sb        $s1, 0xE($s0)
    /* 2D9F0 80077C54 14001026 */  addiu      $s0, $s0, 0x14
    /* 2D9F4 80077C58 21200002 */  addu       $a0, $s0, $zero
    /* 2D9F8 80077C5C 01005226 */  addiu      $s2, $s2, 0x1
    /* 2D9FC 80077C60 01007326 */  addiu      $s3, $s3, 0x1
    /* 2DA00 80077C64 01009426 */  addiu      $s4, $s4, 0x1
    /* 2DA04 80077C68 0100B526 */  addiu      $s5, $s5, 0x1
    /* 2DA08 80077C6C 35000324 */  addiu      $v1, $zero, 0x35
    /* 2DA0C 80077C70 44000224 */  addiu      $v0, $zero, 0x44
    /* 2DA10 80077C74 0680013C */  lui        $at, %hi(D_80067030)
    /* 2DA14 80077C78 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 2DA18 80077C7C 000017AE */  sw         $s7, 0x0($s0)
    /* 2DA1C 80077C80 070016A2 */  sb         $s6, 0x7($s0)
    /* 2DA20 80077C84 080012A6 */  sh         $s2, 0x8($s0)
    /* 2DA24 80077C88 0A0013A6 */  sh         $s3, 0xA($s0)
    /* 2DA28 80077C8C 100014A6 */  sh         $s4, 0x10($s0)
    /* 2DA2C 80077C90 120015A6 */  sh         $s5, 0x12($s0)
    /* 2DA30 80077C94 040011A2 */  sb         $s1, 0x4($s0)
    /* 2DA34 80077C98 050003A2 */  sb         $v1, 0x5($s0)
    /* 2DA38 80077C9C 060002A2 */  sb         $v0, 0x6($s0)
    /* 2DA3C 80077CA0 0C0011A2 */  sb         $s1, 0xC($s0)
    /* 2DA40 80077CA4 0D0003A2 */  sb         $v1, 0xD($s0)
    /* 2DA44 80077CA8 E46C000C */  jal        func_8001B390
    /* 2DA48 80077CAC 0E0002A2 */   sb        $v0, 0xE($s0)
    /* 2DA4C 80077CB0 14001026 */  addiu      $s0, $s0, 0x14
    /* 2DA50 80077CB4 0680013C */  lui        $at, %hi(D_80067030)
    /* 2DA54 80077CB8 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 2DA58 80077CBC 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2DA5C 80077CC0 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 2DA60 80077CC4 2800B68F */  lw         $s6, 0x28($sp)
    /* 2DA64 80077CC8 2400B58F */  lw         $s5, 0x24($sp)
    /* 2DA68 80077CCC 2000B48F */  lw         $s4, 0x20($sp)
    /* 2DA6C 80077CD0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2DA70 80077CD4 1800B28F */  lw         $s2, 0x18($sp)
    /* 2DA74 80077CD8 1400B18F */  lw         $s1, 0x14($sp)
    /* 2DA78 80077CDC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2DA7C 80077CE0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2DA80 80077CE4 0800E003 */  jr         $ra
    /* 2DA84 80077CE8 00000000 */   nop
endlabel func_titlescreen_and_loading_80077BC8
