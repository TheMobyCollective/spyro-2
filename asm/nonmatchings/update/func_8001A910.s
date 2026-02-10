.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A910, 0xA0

glabel func_8001A910
    /* B110 8001A910 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B114 8001A914 0780043C */  lui        $a0, %hi(D_800682D8)
    /* B118 8001A918 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* B11C 8001A91C 0180053C */  lui        $a1, %hi(D_80011110)
    /* B120 8001A920 1011A58C */  lw         $a1, %lo(D_80011110)($a1)
    /* B124 8001A924 0680063C */  lui        $a2, %hi(D_80067714)
    /* B128 8001A928 1477C68C */  lw         $a2, %lo(D_80067714)($a2)
    /* B12C 8001A92C 0680073C */  lui        $a3, %hi(D_80067710)
    /* B130 8001A930 1077E78C */  lw         $a3, %lo(D_80067710)($a3)
    /* B134 8001A934 0A000224 */  addiu      $v0, $zero, 0xA
    /* B138 8001A938 0780013C */  lui        $at, %hi(D_800681C8)
    /* B13C 8001A93C C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* B140 8001A940 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B144 8001A944 1000BFAF */  sw         $ra, 0x10($sp)
    /* B148 8001A948 0680013C */  lui        $at, %hi(D_800670EC)
    /* B14C 8001A94C EC7020A4 */  sh         $zero, %lo(D_800670EC)($at)
    /* B150 8001A950 0680013C */  lui        $at, %hi(D_800670E8)
    /* B154 8001A954 E87020A4 */  sh         $zero, %lo(D_800670E8)($at)
    /* B158 8001A958 0680013C */  lui        $at, %hi(D_80066F0C)
    /* B15C 8001A95C 0C6F20A4 */  sh         $zero, %lo(D_80066F0C)($at)
    /* B160 8001A960 0680013C */  lui        $at, %hi(D_80066EE8)
    /* B164 8001A964 E86E22A4 */  sh         $v0, %lo(D_80066EE8)($at)
    /* B168 8001A968 0680013C */  lui        $at, %hi(D_80067080)
    /* B16C 8001A96C 807020AC */  sw         $zero, %lo(D_80067080)($at)
    /* B170 8001A970 0680013C */  lui        $at, %hi(D_80067184)
    /* B174 8001A974 847120AC */  sw         $zero, %lo(D_80067184)($at)
    /* B178 8001A978 0680013C */  lui        $at, %hi(D_80067128)
    /* B17C 8001A97C 287120A4 */  sh         $zero, %lo(D_80067128)($at)
    /* B180 8001A980 0680013C */  lui        $at, %hi(D_8006707C)
    /* B184 8001A984 7C7020A4 */  sh         $zero, %lo(D_8006707C)($at)
    /* B188 8001A988 0680013C */  lui        $at, %hi(D_80066F34)
    /* B18C 8001A98C 346F20AC */  sw         $zero, %lo(D_80066F34)($at)
    /* B190 8001A990 044E000C */  jal        func_80013810
    /* B194 8001A994 00000000 */   nop
    /* B198 8001A998 AB42010C */  jal        func_80050AAC
    /* B19C 8001A99C 00000000 */   nop
    /* B1A0 8001A9A0 1000BF8F */  lw         $ra, 0x10($sp)
    /* B1A4 8001A9A4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B1A8 8001A9A8 0800E003 */  jr         $ra
    /* B1AC 8001A9AC 00000000 */   nop
endlabel func_8001A910
