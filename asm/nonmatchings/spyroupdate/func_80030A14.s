.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80030A14, 0x58

glabel func_80030A14
    /* 21214 80030A14 0780023C */  lui        $v0, %hi((g_Spyro + 0x14))
    /* 21218 80030A18 04A04290 */  lbu        $v0, %lo((g_Spyro + 0x14))($v0)
    /* 2121C 80030A1C 0780033C */  lui        $v1, %hi((g_Spyro + 0x15))
    /* 21220 80030A20 05A06390 */  lbu        $v1, %lo((g_Spyro + 0x15))($v1)
    /* 21224 80030A24 0780043C */  lui        $a0, %hi((g_Spyro + 0x16))
    /* 21228 80030A28 06A08490 */  lbu        $a0, %lo((g_Spyro + 0x16))($a0)
    /* 2122C 80030A2C 0780053C */  lui        $a1, %hi((g_Spyro + 0x17))
    /* 21230 80030A30 07A0A590 */  lbu        $a1, %lo((g_Spyro + 0x17))($a1)
    /* 21234 80030A34 0780063C */  lui        $a2, %hi((g_Spyro + 0x1C))
    /* 21238 80030A38 0CA0C690 */  lbu        $a2, %lo((g_Spyro + 0x1C))($a2)
    /* 2123C 80030A3C 0780013C */  lui        $at, %hi((g_Spyro + 0x18))
    /* 21240 80030A40 08A022A0 */  sb         $v0, %lo((g_Spyro + 0x18))($at)
    /* 21244 80030A44 0780013C */  lui        $at, %hi((g_Spyro + 0x19))
    /* 21248 80030A48 09A023A0 */  sb         $v1, %lo((g_Spyro + 0x19))($at)
    /* 2124C 80030A4C 0780013C */  lui        $at, %hi((g_Spyro + 0x1A))
    /* 21250 80030A50 0AA024A0 */  sb         $a0, %lo((g_Spyro + 0x1A))($at)
    /* 21254 80030A54 0780013C */  lui        $at, %hi((g_Spyro + 0x1B))
    /* 21258 80030A58 0BA025A0 */  sb         $a1, %lo((g_Spyro + 0x1B))($at)
    /* 2125C 80030A5C 0780013C */  lui        $at, %hi((g_Spyro + 0x1D))
    /* 21260 80030A60 0DA026A0 */  sb         $a2, %lo((g_Spyro + 0x1D))($at)
    /* 21264 80030A64 0800E003 */  jr         $ra
    /* 21268 80030A68 00000000 */   nop
endlabel func_80030A14
