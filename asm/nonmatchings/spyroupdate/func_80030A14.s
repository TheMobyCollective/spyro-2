.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80030A14, 0x58

glabel func_80030A14
    /* 21214 80030A14 0780023C */  lui        $v0, %hi(D_8006A004)
    /* 21218 80030A18 04A04290 */  lbu        $v0, %lo(D_8006A004)($v0)
    /* 2121C 80030A1C 0780033C */  lui        $v1, %hi(D_8006A005)
    /* 21220 80030A20 05A06390 */  lbu        $v1, %lo(D_8006A005)($v1)
    /* 21224 80030A24 0780043C */  lui        $a0, %hi(D_8006A006)
    /* 21228 80030A28 06A08490 */  lbu        $a0, %lo(D_8006A006)($a0)
    /* 2122C 80030A2C 0780053C */  lui        $a1, %hi(D_8006A007)
    /* 21230 80030A30 07A0A590 */  lbu        $a1, %lo(D_8006A007)($a1)
    /* 21234 80030A34 0780063C */  lui        $a2, %hi(D_8006A00C)
    /* 21238 80030A38 0CA0C690 */  lbu        $a2, %lo(D_8006A00C)($a2)
    /* 2123C 80030A3C 0780013C */  lui        $at, %hi(D_8006A008)
    /* 21240 80030A40 08A022A0 */  sb         $v0, %lo(D_8006A008)($at)
    /* 21244 80030A44 0780013C */  lui        $at, %hi(D_8006A009)
    /* 21248 80030A48 09A023A0 */  sb         $v1, %lo(D_8006A009)($at)
    /* 2124C 80030A4C 0780013C */  lui        $at, %hi(D_8006A00A)
    /* 21250 80030A50 0AA024A0 */  sb         $a0, %lo(D_8006A00A)($at)
    /* 21254 80030A54 0780013C */  lui        $at, %hi(D_8006A00B)
    /* 21258 80030A58 0BA025A0 */  sb         $a1, %lo(D_8006A00B)($at)
    /* 2125C 80030A5C 0780013C */  lui        $at, %hi(D_8006A00D)
    /* 21260 80030A60 0DA026A0 */  sb         $a2, %lo(D_8006A00D)($at)
    /* 21264 80030A64 0800E003 */  jr         $ra
    /* 21268 80030A68 00000000 */   nop
endlabel func_80030A14
