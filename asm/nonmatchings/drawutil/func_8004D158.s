.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D158, 0x64

glabel func_8004D158
    /* 3D958 8004D158 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3D95C 8004D15C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3D960 8004D160 21808000 */  addu       $s0, $a0, $zero
    /* 3D964 8004D164 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3D968 8004D168 F955010C */  jal        func_800557E4
    /* 3D96C 8004D16C 21200000 */   addu      $a0, $zero, $zero
    /* 3D970 8004D170 0780023C */  lui        $v0, %hi(D_8006B2A4)
    /* 3D974 8004D174 A4B2428C */  lw         $v0, %lo(D_8006B2A4)($v0)
    /* 3D978 8004D178 0680013C */  lui        $at, %hi(D_80067170)
    /* 3D97C 8004D17C 707130AC */  sw         $s0, %lo(D_80067170)($at)
    /* 3D980 8004D180 23105000 */  subu       $v0, $v0, $s0
    /* 3D984 8004D184 23805000 */  subu       $s0, $v0, $s0
    /* 3D988 8004D188 0780013C */  lui        $at, %hi(D_8006B2A0)
    /* 3D98C 8004D18C A0B222AC */  sw         $v0, %lo(D_8006B2A0)($at)
    /* 3D990 8004D190 0780013C */  lui        $at, %hi(D_8006B29C)
    /* 3D994 8004D194 9CB230AC */  sw         $s0, %lo(D_8006B29C)($at)
    /* 3D998 8004D198 0780013C */  lui        $at, %hi(D_80069998)
    /* 3D99C 8004D19C 989930AC */  sw         $s0, %lo(D_80069998)($at)
    /* 3D9A0 8004D1A0 0780013C */  lui        $at, %hi(D_80069A0C)
    /* 3D9A4 8004D1A4 0C9A22AC */  sw         $v0, %lo(D_80069A0C)($at)
    /* 3D9A8 8004D1A8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3D9AC 8004D1AC 1000B08F */  lw         $s0, 0x10($sp)
    /* 3D9B0 8004D1B0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3D9B4 8004D1B4 0800E003 */  jr         $ra
    /* 3D9B8 8004D1B8 00000000 */   nop
endlabel func_8004D158
