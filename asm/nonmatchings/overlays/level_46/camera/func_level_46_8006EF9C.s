.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_46_8006EF9C, 0x150

glabel func_level_46_8006EF9C
    /* 3582D38 8006EF9C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3582D3C 8006EFA0 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 3582D40 8006EFA4 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 3582D44 8006EFA8 0D000224 */  addiu      $v0, $zero, 0xD
    /* 3582D48 8006EFAC 06006210 */  beq        $v1, $v0, .Llevel_46_8006EFC8
    /* 3582D4C 8006EFB0 1000BFAF */   sw        $ra, 0x10($sp)
    /* 3582D50 8006EFB4 14000224 */  addiu      $v0, $zero, 0x14
    /* 3582D54 8006EFB8 36006210 */  beq        $v1, $v0, .Llevel_46_8006F094
    /* 3582D58 8006EFBC 00000000 */   nop
    /* 3582D5C 8006EFC0 37BC0108 */  j          .Llevel_46_8006F0DC
    /* 3582D60 8006EFC4 00000000 */   nop
  .Llevel_46_8006EFC8:
    /* 3582D64 8006EFC8 0780023C */  lui        $v0, %hi(D_800683A0)
    /* 3582D68 8006EFCC A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* 3582D6C 8006EFD0 00000000 */  nop
    /* 3582D70 8006EFD4 10004230 */  andi       $v0, $v0, 0x10
    /* 3582D74 8006EFD8 06004010 */  beqz       $v0, .Llevel_46_8006EFF4
    /* 3582D78 8006EFDC 00000000 */   nop
    /* 3582D7C 8006EFE0 0780023C */  lui        $v0, %hi(D_8006A1B1)
    /* 3582D80 8006EFE4 B1A14290 */  lbu        $v0, %lo(D_8006A1B1)($v0)
    /* 3582D84 8006EFE8 00000000 */  nop
    /* 3582D88 8006EFEC 39004014 */  bnez       $v0, .Llevel_46_8006F0D4
    /* 3582D8C 8006EFF0 07000424 */   addiu     $a0, $zero, 0x7
  .Llevel_46_8006EFF4:
    /* 3582D90 8006EFF4 0780023C */  lui        $v0, %hi(D_800683A4)
    /* 3582D94 8006EFF8 A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* 3582D98 8006EFFC 00000000 */  nop
    /* 3582D9C 8006F000 0F004230 */  andi       $v0, $v0, 0xF
    /* 3582DA0 8006F004 0E004010 */  beqz       $v0, .Llevel_46_8006F040
    /* 3582DA4 8006F008 00000000 */   nop
    /* 3582DA8 8006F00C 0780033C */  lui        $v1, %hi(D_800683A0)
    /* 3582DAC 8006F010 A083638C */  lw         $v1, %lo(D_800683A0)($v1)
    /* 3582DB0 8006F014 00000000 */  nop
    /* 3582DB4 8006F018 0A006230 */  andi       $v0, $v1, 0xA
    /* 3582DB8 8006F01C 08004010 */  beqz       $v0, .Llevel_46_8006F040
    /* 3582DBC 8006F020 05006230 */   andi      $v0, $v1, 0x5
    /* 3582DC0 8006F024 06004010 */  beqz       $v0, .Llevel_46_8006F040
    /* 3582DC4 8006F028 00000000 */   nop
    /* 3582DC8 8006F02C 0780023C */  lui        $v0, %hi(D_8006A230)
    /* 3582DCC 8006F030 30A2428C */  lw         $v0, %lo(D_8006A230)($v0)
    /* 3582DD0 8006F034 00000000 */  nop
    /* 3582DD4 8006F038 26004010 */  beqz       $v0, .Llevel_46_8006F0D4
    /* 3582DD8 8006F03C 08000424 */   addiu     $a0, $zero, 0x8
  .Llevel_46_8006F040:
    /* 3582DDC 8006F040 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 3582DE0 8006F044 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 3582DE4 8006F048 00000000 */  nop
    /* 3582DE8 8006F04C 0A008014 */  bnez       $a0, .Llevel_46_8006F078
    /* 3582DEC 8006F050 00000000 */   nop
    /* 3582DF0 8006F054 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 3582DF4 8006F058 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 3582DF8 8006F05C 00000000 */  nop
    /* 3582DFC 8006F060 80100200 */  sll        $v0, $v0, 2
    /* 3582E00 8006F064 0680013C */  lui        $at, %hi(D_80061468)
    /* 3582E04 8006F068 21082200 */  addu       $at, $at, $v0
    /* 3582E08 8006F06C 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 3582E0C 8006F070 35BC0108 */  j          .Llevel_46_8006F0D4
    /* 3582E10 8006F074 00000000 */   nop
  .Llevel_46_8006F078:
    /* 3582E14 8006F078 0680023C */  lui        $v0, %hi(D_80067ED0)
    /* 3582E18 8006F07C D07E428C */  lw         $v0, %lo(D_80067ED0)($v0)
    /* 3582E1C 8006F080 00000000 */  nop
    /* 3582E20 8006F084 15008210 */  beq        $a0, $v0, .Llevel_46_8006F0DC
    /* 3582E24 8006F088 00000000 */   nop
    /* 3582E28 8006F08C 35BC0108 */  j          .Llevel_46_8006F0D4
    /* 3582E2C 8006F090 00000000 */   nop
  .Llevel_46_8006F094:
    /* 3582E30 8006F094 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 3582E34 8006F098 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 3582E38 8006F09C 00000000 */  nop
    /* 3582E3C 8006F0A0 0A008014 */  bnez       $a0, .Llevel_46_8006F0CC
    /* 3582E40 8006F0A4 00000000 */   nop
    /* 3582E44 8006F0A8 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 3582E48 8006F0AC 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 3582E4C 8006F0B0 00000000 */  nop
    /* 3582E50 8006F0B4 80100200 */  sll        $v0, $v0, 2
    /* 3582E54 8006F0B8 0680013C */  lui        $at, %hi(D_80061468)
    /* 3582E58 8006F0BC 21082200 */  addu       $at, $at, $v0
    /* 3582E5C 8006F0C0 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 3582E60 8006F0C4 35BC0108 */  j          .Llevel_46_8006F0D4
    /* 3582E64 8006F0C8 00000000 */   nop
  .Llevel_46_8006F0CC:
    /* 3582E68 8006F0CC 03008310 */  beq        $a0, $v1, .Llevel_46_8006F0DC
    /* 3582E6C 8006F0D0 00000000 */   nop
  .Llevel_46_8006F0D4:
    /* 3582E70 8006F0D4 B685000C */  jal        func_800216D8
    /* 3582E74 8006F0D8 00000000 */   nop
  .Llevel_46_8006F0DC:
    /* 3582E78 8006F0DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3582E7C 8006F0E0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3582E80 8006F0E4 0800E003 */  jr         $ra
    /* 3582E84 8006F0E8 00000000 */   nop
endlabel func_level_46_8006EF9C
    /* 3582E88 8006F0EC 00000000 */  nop
