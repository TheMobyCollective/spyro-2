.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8007663C, 0x38

glabel func_titlescreen_and_loading_8007663C
    /* 2C3D8 8007663C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2C3DC 80076640 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C3E0 80076644 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2C3E4 80076648 85D9010C */  jal        func_titlescreen_and_loading_80076614
    /* 2C3E8 8007664C 21808000 */   addu      $s0, $a0, $zero
    /* 2C3EC 80076650 A805038E */  lw         $v1, 0x5A8($s0)
    /* 2C3F0 80076654 00000000 */  nop
    /* 2C3F4 80076658 26104300 */  xor        $v0, $v0, $v1
    /* 2C3F8 8007665C 0100422C */  sltiu      $v0, $v0, 0x1
    /* 2C3FC 80076660 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2C400 80076664 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C404 80076668 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2C408 8007666C 0800E003 */  jr         $ra
    /* 2C40C 80076670 00000000 */   nop
endlabel func_titlescreen_and_loading_8007663C
