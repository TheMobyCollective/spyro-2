.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F1E4, 0x18

glabel func_8001F1E4
    /* F9E4 8001F1E4 0680013C */  lui        $at, %hi((g_Camera + 0x168))
    /* F9E8 8001F1E8 EC7F25AC */  sw         $a1, %lo((g_Camera + 0x168))($at)
    /* F9EC 8001F1EC 0680013C */  lui        $at, %hi((g_Camera + 0x16C))
    /* F9F0 8001F1F0 F07F24AC */  sw         $a0, %lo((g_Camera + 0x16C))($at)
    /* F9F4 8001F1F4 0800E003 */  jr         $ra
    /* F9F8 8001F1F8 00000000 */   nop
endlabel func_8001F1E4
