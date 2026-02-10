.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F4A4, 0x80

glabel func_8001F4A4
    /* FCA4 8001F4A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* FCA8 8001F4A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* FCAC 8001F4AC 2188A000 */  addu       $s1, $a1, $zero
    /* FCB0 8001F4B0 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* FCB4 8001F4B4 D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* FCB8 8001F4B8 1800BFAF */  sw         $ra, 0x18($sp)
    /* FCBC 8001F4BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* FCC0 8001F4C0 0000A28C */  lw         $v0, 0x0($a1)
    /* FCC4 8001F4C4 00000000 */  nop
    /* FCC8 8001F4C8 F7FF4224 */  addiu      $v0, $v0, -0x9
    /* FCCC 8001F4CC 0200422C */  sltiu      $v0, $v0, 0x2
    /* FCD0 8001F4D0 05004014 */  bnez       $v0, .L8001F4E8
    /* FCD4 8001F4D4 21808000 */   addu      $s0, $a0, $zero
    /* FCD8 8001F4D8 4401A424 */  addiu      $a0, $a1, 0x144
    /* FCDC 8001F4DC 3000A524 */  addiu      $a1, $a1, 0x30
    /* FCE0 8001F4E0 337B000C */  jal        func_8001ECCC
    /* FCE4 8001F4E4 21300000 */   addu      $a2, $zero, $zero
  .L8001F4E8:
    /* FCE8 8001F4E8 0A000224 */  addiu      $v0, $zero, 0xA
    /* FCEC 8001F4EC 0680013C */  lui        $at, %hi(D_80067FEC)
    /* FCF0 8001F4F0 EC7F22AC */  sw         $v0, %lo(D_80067FEC)($at)
    /* FCF4 8001F4F4 0780013C */  lui        $at, %hi(D_80068028)
    /* FCF8 8001F4F8 288030AC */  sw         $s0, %lo(D_80068028)($at)
    /* FCFC 8001F4FC 0780013C */  lui        $at, %hi(D_8006802C)
    /* FD00 8001F500 2C8020AC */  sw         $zero, %lo(D_8006802C)($at)
    /* FD04 8001F504 0780013C */  lui        $at, %hi(D_80068038)
    /* FD08 8001F508 388031AC */  sw         $s1, %lo(D_80068038)($at)
    /* FD0C 8001F50C 1800BF8F */  lw         $ra, 0x18($sp)
    /* FD10 8001F510 1400B18F */  lw         $s1, 0x14($sp)
    /* FD14 8001F514 1000B08F */  lw         $s0, 0x10($sp)
    /* FD18 8001F518 2000BD27 */  addiu      $sp, $sp, 0x20
    /* FD1C 8001F51C 0800E003 */  jr         $ra
    /* FD20 8001F520 00000000 */   nop
endlabel func_8001F4A4
