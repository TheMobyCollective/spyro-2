.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_800771FC, 0x4C

glabel func_titlescreen_and_loading_800771FC
    /* 2CF98 800771FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2CF9C 80077200 05000224 */  addiu      $v0, $zero, 0x5
    /* 2CFA0 80077204 0680013C */  lui        $at, %hi(D_80067E14)
    /* 2CFA4 80077208 147E24AC */  sw         $a0, %lo(D_80067E14)($at)
    /* 2CFA8 8007720C 21200000 */  addu       $a0, $zero, $zero
    /* 2CFAC 80077210 08000524 */  addiu      $a1, $zero, 0x8
    /* 2CFB0 80077214 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2CFB4 80077218 0680013C */  lui        $at, %hi(D_80067E04)
    /* 2CFB8 8007721C 047E20AC */  sw         $zero, %lo(D_80067E04)($at)
    /* 2CFBC 80077220 0680013C */  lui        $at, %hi(D_80067E0C)
    /* 2CFC0 80077224 0C7E22AC */  sw         $v0, %lo(D_80067E0C)($at)
    /* 2CFC4 80077228 0680013C */  lui        $at, %hi(D_80067E00)
    /* 2CFC8 8007722C 007E20AC */  sw         $zero, %lo(D_80067E00)($at)
    /* 2CFCC 80077230 AB41010C */  jal        func_800506AC
    /* 2CFD0 80077234 01000624 */   addiu     $a2, $zero, 0x1
    /* 2CFD4 80077238 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2CFD8 8007723C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2CFDC 80077240 0800E003 */  jr         $ra
    /* 2CFE0 80077244 00000000 */   nop
endlabel func_titlescreen_and_loading_800771FC
