.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80031E4C, 0x60

glabel func_80031E4C
    /* 2264C 80031E4C 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 22650 80031E50 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 22654 80031E54 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 22658 80031E58 0780013C */  lui        $at, %hi(D_8006A264)
    /* 2265C 80031E5C 64A222AC */  sw         $v0, %lo(D_8006A264)($at)
    /* 22660 80031E60 07000224 */  addiu      $v0, $zero, 0x7
    /* 22664 80031E64 0780013C */  lui        $at, %hi(D_8006A014)
    /* 22668 80031E68 14A020AC */  sw         $zero, %lo(D_8006A014)($at)
    /* 2266C 80031E6C 0D006210 */  beq        $v1, $v0, .L80031EA4
    /* 22670 80031E70 00000000 */   nop
    /* 22674 80031E74 0780023C */  lui        $v0, %hi(D_8006A24C)
    /* 22678 80031E78 4CA2428C */  lw         $v0, %lo(D_8006A24C)($v0)
    /* 2267C 80031E7C 0680033C */  lui        $v1, %hi(D_80067018)
    /* 22680 80031E80 1870638C */  lw         $v1, %lo(D_80067018)($v1)
    /* 22684 80031E84 00000000 */  nop
    /* 22688 80031E88 23104300 */  subu       $v0, $v0, $v1
    /* 2268C 80031E8C 0780013C */  lui        $at, %hi(D_8006A24C)
    /* 22690 80031E90 4CA222AC */  sw         $v0, %lo(D_8006A24C)($at)
    /* 22694 80031E94 03004104 */  bgez       $v0, .L80031EA4
    /* 22698 80031E98 00000000 */   nop
    /* 2269C 80031E9C 0780013C */  lui        $at, %hi(D_8006A24C)
    /* 226A0 80031EA0 4CA220AC */  sw         $zero, %lo(D_8006A24C)($at)
  .L80031EA4:
    /* 226A4 80031EA4 0800E003 */  jr         $ra
    /* 226A8 80031EA8 00000000 */   nop
endlabel func_80031E4C
