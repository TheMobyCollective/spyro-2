.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8006DC68, 0xB0

glabel func_level_52_8006DC68
    /* 3B00A04 8006DC68 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3B00A08 8006DC6C 0780033C */  lui        $v1, %hi(D_8006A040)
    /* 3B00A0C 8006DC70 40A0638C */  lw         $v1, %lo(D_8006A040)($v1)
    /* 3B00A10 8006DC74 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 3B00A14 8006DC78 13006210 */  beq        $v1, $v0, .Llevel_52_8006DCC8
    /* 3B00A18 8006DC7C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 3B00A1C 8006DC80 1E006228 */  slti       $v0, $v1, 0x1E
    /* 3B00A20 8006DC84 05004010 */  beqz       $v0, .Llevel_52_8006DC9C
    /* 3B00A24 8006DC88 12000224 */   addiu     $v0, $zero, 0x12
    /* 3B00A28 8006DC8C 16006210 */  beq        $v1, $v0, .Llevel_52_8006DCE8
    /* 3B00A2C 8006DC90 00000000 */   nop
    /* 3B00A30 8006DC94 42B70108 */  j          .Llevel_52_8006DD08
    /* 3B00A34 8006DC98 00000000 */   nop
  .Llevel_52_8006DC9C:
    /* 3B00A38 8006DC9C 37006228 */  slti       $v0, $v1, 0x37
    /* 3B00A3C 8006DCA0 19004010 */  beqz       $v0, .Llevel_52_8006DD08
    /* 3B00A40 8006DCA4 35006228 */   slti      $v0, $v1, 0x35
    /* 3B00A44 8006DCA8 17004014 */  bnez       $v0, .Llevel_52_8006DD08
    /* 3B00A48 8006DCAC 00000000 */   nop
    /* 3B00A4C 8006DCB0 3DB0000C */  jal        func_8002C0F4
    /* 3B00A50 8006DCB4 00000000 */   nop
    /* 3B00A54 8006DCB8 22B3000C */  jal        func_8002CC88
    /* 3B00A58 8006DCBC 00000000 */   nop
    /* 3B00A5C 8006DCC0 40B70108 */  j          .Llevel_52_8006DD00
    /* 3B00A60 8006DCC4 00000000 */   nop
  .Llevel_52_8006DCC8:
    /* 3B00A64 8006DCC8 3DB0000C */  jal        func_8002C0F4
    /* 3B00A68 8006DCCC 00000000 */   nop
    /* 3B00A6C 8006DCD0 22B3000C */  jal        func_8002CC88
    /* 3B00A70 8006DCD4 00000000 */   nop
    /* 3B00A74 8006DCD8 C2B6000C */  jal        func_8002DB08
    /* 3B00A78 8006DCDC 000C0424 */   addiu     $a0, $zero, 0xC00
    /* 3B00A7C 8006DCE0 40B70108 */  j          .Llevel_52_8006DD00
    /* 3B00A80 8006DCE4 00000000 */   nop
  .Llevel_52_8006DCE8:
    /* 3B00A84 8006DCE8 3DB0000C */  jal        func_8002C0F4
    /* 3B00A88 8006DCEC 00000000 */   nop
    /* 3B00A8C 8006DCF0 22B3000C */  jal        func_8002CC88
    /* 3B00A90 8006DCF4 00000000 */   nop
    /* 3B00A94 8006DCF8 81AF000C */  jal        func_8002BE04
    /* 3B00A98 8006DCFC 00000000 */   nop
  .Llevel_52_8006DD00:
    /* 3B00A9C 8006DD00 0780013C */  lui        $at, %hi(D_8006A018)
    /* 3B00AA0 8006DD04 18A020AC */  sw         $zero, %lo(D_8006A018)($at)
  .Llevel_52_8006DD08:
    /* 3B00AA4 8006DD08 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3B00AA8 8006DD0C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3B00AAC 8006DD10 0800E003 */  jr         $ra
    /* 3B00AB0 8006DD14 00000000 */   nop
endlabel func_level_52_8006DC68
