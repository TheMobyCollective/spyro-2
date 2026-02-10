.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80052FE4, 0x68

glabel func_80052FE4
    /* 437E4 80052FE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 437E8 80052FE8 0680023C */  lui        $v0, %hi(D_800670B4)
    /* 437EC 80052FEC B470428C */  lw         $v0, %lo(D_800670B4)($v0)
    /* 437F0 80052FF0 0680053C */  lui        $a1, %hi(D_80066F78)
    /* 437F4 80052FF4 786FA58C */  lw         $a1, %lo(D_80066F78)($a1)
    /* 437F8 80052FF8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 437FC 80052FFC 09F84000 */  jalr       $v0
    /* 43800 80053000 71000424 */   addiu     $a0, $zero, 0x71
    /* 43804 80053004 F0000324 */  addiu      $v1, $zero, 0xF0
    /* 43808 80053008 0C0043AC */  sw         $v1, 0xC($v0)
    /* 4380C 8005300C EE000324 */  addiu      $v1, $zero, 0xEE
    /* 43810 80053010 100043AC */  sw         $v1, 0x10($v0)
    /* 43814 80053014 80080324 */  addiu      $v1, $zero, 0x880
    /* 43818 80053018 140043AC */  sw         $v1, 0x14($v0)
    /* 4381C 8005301C 0C000324 */  addiu      $v1, $zero, 0xC
    /* 43820 80053020 20000424 */  addiu      $a0, $zero, 0x20
    /* 43824 80053024 450043A0 */  sb         $v1, 0x45($v0)
    /* 43828 80053028 02000324 */  addiu      $v1, $zero, 0x2
    /* 4382C 8005302C 540043A0 */  sb         $v1, 0x54($v0)
    /* 43830 80053030 80000324 */  addiu      $v1, $zero, 0x80
    /* 43834 80053034 460044A0 */  sb         $a0, 0x46($v0)
    /* 43838 80053038 4C0043A0 */  sb         $v1, 0x4C($v0)
    /* 4383C 8005303C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 43840 80053040 470044A0 */  sb         $a0, 0x47($v0)
    /* 43844 80053044 0800E003 */  jr         $ra
    /* 43848 80053048 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80052FE4
