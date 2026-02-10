.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D7E8, 0x94

glabel func_8001D7E8
    /* DFE8 8001D7E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* DFEC 8001D7EC 1A80053C */  lui        $a1, (0x801AE800 >> 16)
    /* DFF0 8001D7F0 0780043C */  lui        $a0, %hi(D_800682D8)
    /* DFF4 8001D7F4 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* DFF8 8001D7F8 0680063C */  lui        $a2, %hi(D_800676DC)
    /* DFFC 8001D7FC DC76C68C */  lw         $a2, %lo(D_800676DC)($a2)
    /* E000 8001D800 0680073C */  lui        $a3, %hi(D_800676D8)
    /* E004 8001D804 D876E78C */  lw         $a3, %lo(D_800676D8)($a3)
    /* E008 8001D808 00E8A534 */  ori        $a1, $a1, (0x801AE800 & 0xFFFF)
    /* E00C 8001D80C 1400BFAF */  sw         $ra, 0x14($sp)
    /* E010 8001D810 044E000C */  jal        func_80013810
    /* E014 8001D814 1000B0AF */   sw        $s0, 0x10($sp)
    /* E018 8001D818 1F80043C */  lui        $a0, (0x801FF800 >> 16)
    /* E01C 8001D81C 00F88434 */  ori        $a0, $a0, (0x801FF800 & 0xFFFF)
    /* E020 8001D820 1A80053C */  lui        $a1, (0x801AF000 >> 16)
    /* E024 8001D824 00F0A534 */  ori        $a1, $a1, (0x801AF000 & 0xFFFF)
    /* E028 8001D828 1B80063C */  lui        $a2, %hi(0x801AE800)
    /* E02C 8001D82C 00E8C68C */  lw         $a2, %lo(0x801AE800)($a2)
    /* E030 8001D830 0780103C */  lui        $s0, %hi(D_8006B2AC)
    /* E034 8001D834 ACB21026 */  addiu      $s0, $s0, %lo(D_8006B2AC)
    /* E038 8001D838 23208600 */  subu       $a0, $a0, $a2
    /* E03C 8001D83C 186D000C */  jal        func_8001B460
    /* E040 8001D840 000004AE */   sw        $a0, 0x0($s0)
    /* E044 8001D844 0000048E */  lw         $a0, 0x0($s0)
    /* E048 8001D848 1B80023C */  lui        $v0, %hi(0x801AE804)
    /* E04C 8001D84C 04E8428C */  lw         $v0, %lo(0x801AE804)($v0)
    /* E050 8001D850 00000000 */  nop
    /* E054 8001D854 21208200 */  addu       $a0, $a0, $v0
    /* E058 8001D858 4471000C */  jal        func_8001C510
    /* E05C 8001D85C 00F88424 */   addiu     $a0, $a0, -0x800
    /* E060 8001D860 7547000C */  jal        func_80011DD4
    /* E064 8001D864 00000000 */   nop
    /* E068 8001D868 1400BF8F */  lw         $ra, 0x14($sp)
    /* E06C 8001D86C 1000B08F */  lw         $s0, 0x10($sp)
    /* E070 8001D870 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E074 8001D874 0800E003 */  jr         $ra
    /* E078 8001D878 00000000 */   nop
endlabel func_8001D7E8
