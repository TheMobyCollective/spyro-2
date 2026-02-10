.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_32_8006FC18, 0x184

glabel func_level_32_8006FC18
    /* 23619B4 8006FC18 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 23619B8 8006FC1C 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 23619BC 8006FC20 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 23619C0 8006FC24 15000224 */  addiu      $v0, $zero, 0x15
    /* 23619C4 8006FC28 36006210 */  beq        $v1, $v0, .Llevel_32_8006FD04
    /* 23619C8 8006FC2C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 23619CC 8006FC30 16006228 */  slti       $v0, $v1, 0x16
    /* 23619D0 8006FC34 05004010 */  beqz       $v0, .Llevel_32_8006FC4C
    /* 23619D4 8006FC38 03000224 */   addiu     $v0, $zero, 0x3
    /* 23619D8 8006FC3C 08006210 */  beq        $v1, $v0, .Llevel_32_8006FC60
    /* 23619DC 8006FC40 00000000 */   nop
    /* 23619E0 8006FC44 63BF0108 */  j          .Llevel_32_8006FD8C
    /* 23619E4 8006FC48 00000000 */   nop
  .Llevel_32_8006FC4C:
    /* 23619E8 8006FC4C 17000224 */  addiu      $v0, $zero, 0x17
    /* 23619EC 8006FC50 3A006210 */  beq        $v1, $v0, .Llevel_32_8006FD3C
    /* 23619F0 8006FC54 00000000 */   nop
    /* 23619F4 8006FC58 63BF0108 */  j          .Llevel_32_8006FD8C
    /* 23619F8 8006FC5C 00000000 */   nop
  .Llevel_32_8006FC60:
    /* 23619FC 8006FC60 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 2361A00 8006FC64 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 2361A04 8006FC68 00000000 */  nop
    /* 2361A08 8006FC6C 45008014 */  bnez       $a0, .Llevel_32_8006FD84
    /* 2361A0C 8006FC70 00000000 */   nop
    /* 2361A10 8006FC74 0780023C */  lui        $v0, %hi(D_800683A0)
    /* 2361A14 8006FC78 A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* 2361A18 8006FC7C 00000000 */  nop
    /* 2361A1C 8006FC80 10004230 */  andi       $v0, $v0, 0x10
    /* 2361A20 8006FC84 06004010 */  beqz       $v0, .Llevel_32_8006FCA0
    /* 2361A24 8006FC88 00000000 */   nop
    /* 2361A28 8006FC8C 0780023C */  lui        $v0, %hi(D_8006A1B1)
    /* 2361A2C 8006FC90 B1A14290 */  lbu        $v0, %lo(D_8006A1B1)($v0)
    /* 2361A30 8006FC94 00000000 */  nop
    /* 2361A34 8006FC98 3A004014 */  bnez       $v0, .Llevel_32_8006FD84
    /* 2361A38 8006FC9C 07000424 */   addiu     $a0, $zero, 0x7
  .Llevel_32_8006FCA0:
    /* 2361A3C 8006FCA0 0780023C */  lui        $v0, %hi(D_800683A4)
    /* 2361A40 8006FCA4 A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* 2361A44 8006FCA8 00000000 */  nop
    /* 2361A48 8006FCAC 0F004230 */  andi       $v0, $v0, 0xF
    /* 2361A4C 8006FCB0 0E004010 */  beqz       $v0, .Llevel_32_8006FCEC
    /* 2361A50 8006FCB4 00000000 */   nop
    /* 2361A54 8006FCB8 0780033C */  lui        $v1, %hi(D_800683A0)
    /* 2361A58 8006FCBC A083638C */  lw         $v1, %lo(D_800683A0)($v1)
    /* 2361A5C 8006FCC0 00000000 */  nop
    /* 2361A60 8006FCC4 0A006230 */  andi       $v0, $v1, 0xA
    /* 2361A64 8006FCC8 08004010 */  beqz       $v0, .Llevel_32_8006FCEC
    /* 2361A68 8006FCCC 05006230 */   andi      $v0, $v1, 0x5
    /* 2361A6C 8006FCD0 06004010 */  beqz       $v0, .Llevel_32_8006FCEC
    /* 2361A70 8006FCD4 00000000 */   nop
    /* 2361A74 8006FCD8 0780023C */  lui        $v0, %hi(D_8006A230)
    /* 2361A78 8006FCDC 30A2428C */  lw         $v0, %lo(D_8006A230)($v0)
    /* 2361A7C 8006FCE0 00000000 */  nop
    /* 2361A80 8006FCE4 27004010 */  beqz       $v0, .Llevel_32_8006FD84
    /* 2361A84 8006FCE8 08000424 */   addiu     $a0, $zero, 0x8
  .Llevel_32_8006FCEC:
    /* 2361A88 8006FCEC 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2361A8C 8006FCF0 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2361A90 8006FCF4 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 2361A94 8006FCF8 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 2361A98 8006FCFC 58BF0108 */  j          .Llevel_32_8006FD60
    /* 2361A9C 8006FD00 80100200 */   sll       $v0, $v0, 2
  .Llevel_32_8006FD04:
    /* 2361AA0 8006FD04 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2361AA4 8006FD08 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2361AA8 8006FD0C 00000000 */  nop
    /* 2361AAC 8006FD10 80100200 */  sll        $v0, $v0, 2
    /* 2361AB0 8006FD14 0680013C */  lui        $at, %hi(D_80061468)
    /* 2361AB4 8006FD18 21082200 */  addu       $at, $at, $v0
    /* 2361AB8 8006FD1C 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 2361ABC 8006FD20 00000000 */  nop
    /* 2361AC0 8006FD24 19008310 */  beq        $a0, $v1, .Llevel_32_8006FD8C
    /* 2361AC4 8006FD28 00000000 */   nop
    /* 2361AC8 8006FD2C 14008010 */  beqz       $a0, .Llevel_32_8006FD80
    /* 2361ACC 8006FD30 00000000 */   nop
    /* 2361AD0 8006FD34 61BF0108 */  j          .Llevel_32_8006FD84
    /* 2361AD4 8006FD38 00000000 */   nop
  .Llevel_32_8006FD3C:
    /* 2361AD8 8006FD3C 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 2361ADC 8006FD40 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 2361AE0 8006FD44 00000000 */  nop
    /* 2361AE4 8006FD48 0E008014 */  bnez       $a0, .Llevel_32_8006FD84
    /* 2361AE8 8006FD4C 00000000 */   nop
    /* 2361AEC 8006FD50 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2361AF0 8006FD54 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2361AF4 8006FD58 00000000 */  nop
    /* 2361AF8 8006FD5C 80100200 */  sll        $v0, $v0, 2
  .Llevel_32_8006FD60:
    /* 2361AFC 8006FD60 0680013C */  lui        $at, %hi(D_80061468)
    /* 2361B00 8006FD64 21082200 */  addu       $at, $at, $v0
    /* 2361B04 8006FD68 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 2361B08 8006FD6C 00000000 */  nop
    /* 2361B0C 8006FD70 06008310 */  beq        $a0, $v1, .Llevel_32_8006FD8C
    /* 2361B10 8006FD74 00000000 */   nop
    /* 2361B14 8006FD78 02008014 */  bnez       $a0, .Llevel_32_8006FD84
    /* 2361B18 8006FD7C 00000000 */   nop
  .Llevel_32_8006FD80:
    /* 2361B1C 8006FD80 06000424 */  addiu      $a0, $zero, 0x6
  .Llevel_32_8006FD84:
    /* 2361B20 8006FD84 B685000C */  jal        func_800216D8
    /* 2361B24 8006FD88 00000000 */   nop
  .Llevel_32_8006FD8C:
    /* 2361B28 8006FD8C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2361B2C 8006FD90 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2361B30 8006FD94 0800E003 */  jr         $ra
    /* 2361B34 8006FD98 00000000 */   nop
endlabel func_level_32_8006FC18
    /* 2361B38 8006FD9C 00000000 */  nop
