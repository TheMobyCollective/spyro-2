.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_44_800702D8, 0x34

glabel func_level_44_800702D8
    /* 31D7874 800702D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 31D7878 800702DC 06000524 */  addiu      $a1, $zero, 0x6
    /* 31D787C 800702E0 0680023C */  lui        $v0, %hi(D_80066FEC)
    /* 31D7880 800702E4 EC6F428C */  lw         $v0, %lo(D_80066FEC)($v0)
    /* 31D7884 800702E8 0680043C */  lui        $a0, %hi(D_80067674)
    /* 31D7888 800702EC 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 31D788C 800702F0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 31D7890 800702F4 6746010C */  jal        func_8005199C
    /* 31D7894 800702F8 2328A200 */   subu      $a1, $a1, $v0
    /* 31D7898 800702FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 31D789C 80070300 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 31D78A0 80070304 0800E003 */  jr         $ra
    /* 31D78A4 80070308 00000000 */   nop
endlabel func_level_44_800702D8
