.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80079CA8, 0x148

glabel func_titlescreen_and_loading_80079CA8
    /* 2FA44 80079CA8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2FA48 80079CAC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2FA4C 80079CB0 21988000 */  addu       $s3, $a0, $zero
    /* 2FA50 80079CB4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2FA54 80079CB8 21A0A000 */  addu       $s4, $a1, $zero
    /* 2FA58 80079CBC 80181300 */  sll        $v1, $s3, 2
    /* 2FA5C 80079CC0 21107300 */  addu       $v0, $v1, $s3
    /* 2FA60 80079CC4 80100200 */  sll        $v0, $v0, 2
    /* 2FA64 80079CC8 21105300 */  addu       $v0, $v0, $s3
    /* 2FA68 80079CCC 80100200 */  sll        $v0, $v0, 2
    /* 2FA6C 80079CD0 23105300 */  subu       $v0, $v0, $s3
    /* 2FA70 80079CD4 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2FA74 80079CD8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2FA78 80079CDC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FA7C 80079CE0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FA80 80079CE4 0680013C */  lui        $at, %hi(D_80067E48)
    /* 2FA84 80079CE8 21082300 */  addu       $at, $at, $v1
    /* 2FA88 80079CEC 487E308C */  lw         $s0, %lo(D_80067E48)($at)
    /* 2FA8C 80079CF0 00000000 */  nop
    /* 2FA90 80079CF4 0A00032A */  slti       $v1, $s0, 0xA
    /* 2FA94 80079CF8 02006014 */  bnez       $v1, .Ltitlescreen_and_loading_80079D04
    /* 2FA98 80079CFC 9D005224 */   addiu     $s2, $v0, 0x9D
    /* 2FA9C 80079D00 95005224 */  addiu      $s2, $v0, 0x95
  .Ltitlescreen_and_loading_80079D04:
    /* 2FAA0 80079D04 6400022A */  slti       $v0, $s0, 0x64
    /* 2FAA4 80079D08 02004014 */  bnez       $v0, .Ltitlescreen_and_loading_80079D14
    /* 2FAA8 80079D0C 21880000 */   addu      $s1, $zero, $zero
    /* 2FAAC 80079D10 F8FF5226 */  addiu      $s2, $s2, -0x8
  .Ltitlescreen_and_loading_80079D14:
    /* 2FAB0 80079D14 0B006014 */  bnez       $v1, .Ltitlescreen_and_loading_80079D44
    /* 2FAB4 80079D18 21400002 */   addu      $t0, $s0, $zero
    /* 2FAB8 80079D1C 6666043C */  lui        $a0, (0x66666667 >> 16)
    /* 2FABC 80079D20 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
  .Ltitlescreen_and_loading_80079D24:
    /* 2FAC0 80079D24 18000401 */  mult       $t0, $a0
    /* 2FAC4 80079D28 C3170800 */  sra        $v0, $t0, 31
    /* 2FAC8 80079D2C 10480000 */  mfhi       $t1
  alabel D_titlescreen_and_loading_80079D30
    /* 2FACC 80079D30 83180900 */  sra        $v1, $t1, 2
    /* 2FAD0 80079D34 23406200 */  subu       $t0, $v1, $v0
    /* 2FAD4 80079D38 0A000229 */  slti       $v0, $t0, 0xA
    /* 2FAD8 80079D3C F9FF4010 */  beqz       $v0, .Ltitlescreen_and_loading_80079D24
    /* 2FADC 80079D40 01003126 */   addiu     $s1, $s1, 0x1
  .Ltitlescreen_and_loading_80079D44:
    /* 2FAE0 80079D44 01002426 */  addiu      $a0, $s1, 0x1
    /* 2FAE4 80079D48 00210400 */  sll        $a0, $a0, 4
    /* 2FAE8 80079D4C 21204402 */  addu       $a0, $s2, $a0
    /* 2FAEC 80079D50 10000524 */  addiu      $a1, $zero, 0x10
    /* 2FAF0 80079D54 1B000624 */  addiu      $a2, $zero, 0x1B
    /* 2FAF4 80079D58 1EE6010C */  jal        func_titlescreen_and_loading_80079878
    /* 2FAF8 80079D5C 21388002 */   addu      $a3, $s4, $zero
    /* 2FAFC 80079D60 80101300 */  sll        $v0, $s3, 2
    /* 2FB00 80079D64 0680013C */  lui        $at, %hi(D_80067E48)
  alabel D_titlescreen_and_loading_80079D68
    /* 2FB04 80079D68 21082200 */  addu       $at, $at, $v0
    /* 2FB08 80079D6C 487E288C */  lw         $t0, %lo(D_80067E48)($at)
    /* 2FB0C 80079D70 16002006 */  bltz       $s1, .Ltitlescreen_and_loading_80079DCC
    /* 2FB10 80079D74 6666133C */   lui       $s3, (0x66666667 >> 16)
    /* 2FB14 80079D78 67667336 */  ori        $s3, $s3, (0x66666667 & 0xFFFF)
    /* 2FB18 80079D7C 00111100 */  sll        $v0, $s1, 4
    /* 2FB1C 80079D80 21905200 */  addu       $s2, $v0, $s2
  .Ltitlescreen_and_loading_80079D84:
    /* 2FB20 80079D84 18001301 */  mult       $t0, $s3
    /* 2FB24 80079D88 21204002 */  addu       $a0, $s2, $zero
    /* 2FB28 80079D8C 10000524 */  addiu      $a1, $zero, 0x10
    /* 2FB2C 80079D90 21388002 */  addu       $a3, $s4, $zero
    /* 2FB30 80079D94 F0FF5226 */  addiu      $s2, $s2, -0x10
    /* 2FB34 80079D98 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 2FB38 80079D9C C3170800 */  sra        $v0, $t0, 31
    /* 2FB3C 80079DA0 10480000 */  mfhi       $t1
    /* 2FB40 80079DA4 83800900 */  sra        $s0, $t1, 2
    /* 2FB44 80079DA8 23800202 */  subu       $s0, $s0, $v0
    /* 2FB48 80079DAC 80301000 */  sll        $a2, $s0, 2
    /* 2FB4C 80079DB0 2130D000 */  addu       $a2, $a2, $s0
    /* 2FB50 80079DB4 40300600 */  sll        $a2, $a2, 1
    /* 2FB54 80079DB8 23300601 */  subu       $a2, $t0, $a2
    /* 2FB58 80079DBC 1EE6010C */  jal        func_titlescreen_and_loading_80079878
    /* 2FB5C 80079DC0 1100C624 */   addiu     $a2, $a2, 0x11
    /* 2FB60 80079DC4 EFFF2106 */  bgez       $s1, .Ltitlescreen_and_loading_80079D84
    /* 2FB64 80079DC8 21400002 */   addu      $t0, $s0, $zero
  .Ltitlescreen_and_loading_80079DCC:
    /* 2FB68 80079DCC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2FB6C 80079DD0 2000B48F */  lw         $s4, 0x20($sp)
    /* 2FB70 80079DD4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2FB74 80079DD8 1800B28F */  lw         $s2, 0x18($sp)
    /* 2FB78 80079DDC 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FB7C 80079DE0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FB80 80079DE4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2FB84 80079DE8 0800E003 */  jr         $ra
    /* 2FB88 80079DEC 00000000 */   nop
endlabel func_titlescreen_and_loading_80079CA8
