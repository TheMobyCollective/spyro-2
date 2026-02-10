.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_26_8006FC84, 0x150

glabel func_level_26_8006FC84
    /* 1DB2A20 8006FC84 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1DB2A24 8006FC88 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 1DB2A28 8006FC8C D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 1DB2A2C 8006FC90 0D000224 */  addiu      $v0, $zero, 0xD
    /* 1DB2A30 8006FC94 06006210 */  beq        $v1, $v0, .Llevel_26_8006FCB0
    /* 1DB2A34 8006FC98 1000BFAF */   sw        $ra, 0x10($sp)
    /* 1DB2A38 8006FC9C 14000224 */  addiu      $v0, $zero, 0x14
    /* 1DB2A3C 8006FCA0 36006210 */  beq        $v1, $v0, .Llevel_26_8006FD7C
    /* 1DB2A40 8006FCA4 00000000 */   nop
    /* 1DB2A44 8006FCA8 71BF0108 */  j          .Llevel_26_8006FDC4
    /* 1DB2A48 8006FCAC 00000000 */   nop
  .Llevel_26_8006FCB0:
    /* 1DB2A4C 8006FCB0 0780023C */  lui        $v0, %hi(D_800683A0)
    /* 1DB2A50 8006FCB4 A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* 1DB2A54 8006FCB8 00000000 */  nop
    /* 1DB2A58 8006FCBC 10004230 */  andi       $v0, $v0, 0x10
    /* 1DB2A5C 8006FCC0 06004010 */  beqz       $v0, .Llevel_26_8006FCDC
    /* 1DB2A60 8006FCC4 00000000 */   nop
    /* 1DB2A64 8006FCC8 0780023C */  lui        $v0, %hi(D_8006A1B1)
    /* 1DB2A68 8006FCCC B1A14290 */  lbu        $v0, %lo(D_8006A1B1)($v0)
    /* 1DB2A6C 8006FCD0 00000000 */  nop
    /* 1DB2A70 8006FCD4 39004014 */  bnez       $v0, .Llevel_26_8006FDBC
    /* 1DB2A74 8006FCD8 07000424 */   addiu     $a0, $zero, 0x7
  .Llevel_26_8006FCDC:
    /* 1DB2A78 8006FCDC 0780023C */  lui        $v0, %hi(D_800683A4)
    /* 1DB2A7C 8006FCE0 A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* 1DB2A80 8006FCE4 00000000 */  nop
    /* 1DB2A84 8006FCE8 0F004230 */  andi       $v0, $v0, 0xF
    /* 1DB2A88 8006FCEC 0E004010 */  beqz       $v0, .Llevel_26_8006FD28
    /* 1DB2A8C 8006FCF0 00000000 */   nop
    /* 1DB2A90 8006FCF4 0780033C */  lui        $v1, %hi(D_800683A0)
    /* 1DB2A94 8006FCF8 A083638C */  lw         $v1, %lo(D_800683A0)($v1)
    /* 1DB2A98 8006FCFC 00000000 */  nop
    /* 1DB2A9C 8006FD00 0A006230 */  andi       $v0, $v1, 0xA
    /* 1DB2AA0 8006FD04 08004010 */  beqz       $v0, .Llevel_26_8006FD28
    /* 1DB2AA4 8006FD08 05006230 */   andi      $v0, $v1, 0x5
    /* 1DB2AA8 8006FD0C 06004010 */  beqz       $v0, .Llevel_26_8006FD28
    /* 1DB2AAC 8006FD10 00000000 */   nop
    /* 1DB2AB0 8006FD14 0780023C */  lui        $v0, %hi(D_8006A230)
    /* 1DB2AB4 8006FD18 30A2428C */  lw         $v0, %lo(D_8006A230)($v0)
    /* 1DB2AB8 8006FD1C 00000000 */  nop
    /* 1DB2ABC 8006FD20 26004010 */  beqz       $v0, .Llevel_26_8006FDBC
    /* 1DB2AC0 8006FD24 08000424 */   addiu     $a0, $zero, 0x8
  .Llevel_26_8006FD28:
    /* 1DB2AC4 8006FD28 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 1DB2AC8 8006FD2C EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 1DB2ACC 8006FD30 00000000 */  nop
    /* 1DB2AD0 8006FD34 0A008014 */  bnez       $a0, .Llevel_26_8006FD60
    /* 1DB2AD4 8006FD38 00000000 */   nop
    /* 1DB2AD8 8006FD3C 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 1DB2ADC 8006FD40 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 1DB2AE0 8006FD44 00000000 */  nop
    /* 1DB2AE4 8006FD48 80100200 */  sll        $v0, $v0, 2
    /* 1DB2AE8 8006FD4C 0680013C */  lui        $at, %hi(D_80061468)
    /* 1DB2AEC 8006FD50 21082200 */  addu       $at, $at, $v0
    /* 1DB2AF0 8006FD54 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 1DB2AF4 8006FD58 6FBF0108 */  j          .Llevel_26_8006FDBC
    /* 1DB2AF8 8006FD5C 00000000 */   nop
  .Llevel_26_8006FD60:
    /* 1DB2AFC 8006FD60 0680023C */  lui        $v0, %hi(D_80067ED0)
    /* 1DB2B00 8006FD64 D07E428C */  lw         $v0, %lo(D_80067ED0)($v0)
    /* 1DB2B04 8006FD68 00000000 */  nop
    /* 1DB2B08 8006FD6C 15008210 */  beq        $a0, $v0, .Llevel_26_8006FDC4
    /* 1DB2B0C 8006FD70 00000000 */   nop
    /* 1DB2B10 8006FD74 6FBF0108 */  j          .Llevel_26_8006FDBC
    /* 1DB2B14 8006FD78 00000000 */   nop
  .Llevel_26_8006FD7C:
    /* 1DB2B18 8006FD7C 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 1DB2B1C 8006FD80 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 1DB2B20 8006FD84 00000000 */  nop
    /* 1DB2B24 8006FD88 0A008014 */  bnez       $a0, .Llevel_26_8006FDB4
    /* 1DB2B28 8006FD8C 00000000 */   nop
    /* 1DB2B2C 8006FD90 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 1DB2B30 8006FD94 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 1DB2B34 8006FD98 00000000 */  nop
    /* 1DB2B38 8006FD9C 80100200 */  sll        $v0, $v0, 2
    /* 1DB2B3C 8006FDA0 0680013C */  lui        $at, %hi(D_80061468)
    /* 1DB2B40 8006FDA4 21082200 */  addu       $at, $at, $v0
    /* 1DB2B44 8006FDA8 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 1DB2B48 8006FDAC 6FBF0108 */  j          .Llevel_26_8006FDBC
    /* 1DB2B4C 8006FDB0 00000000 */   nop
  .Llevel_26_8006FDB4:
    /* 1DB2B50 8006FDB4 03008310 */  beq        $a0, $v1, .Llevel_26_8006FDC4
    /* 1DB2B54 8006FDB8 00000000 */   nop
  .Llevel_26_8006FDBC:
    /* 1DB2B58 8006FDBC B685000C */  jal        func_800216D8
    /* 1DB2B5C 8006FDC0 00000000 */   nop
  .Llevel_26_8006FDC4:
    /* 1DB2B60 8006FDC4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1DB2B64 8006FDC8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1DB2B68 8006FDCC 0800E003 */  jr         $ra
    /* 1DB2B6C 8006FDD0 00000000 */   nop
endlabel func_level_26_8006FC84
    /* 1DB2B70 8006FDD4 00000000 */  nop
