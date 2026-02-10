.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_43_80070AB0, 0x1EC

glabel func_level_43_80070AB0
    /* 2FC804C 80070AB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FC8050 80070AB4 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 2FC8054 80070AB8 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 2FC8058 80070ABC 10000224 */  addiu      $v0, $zero, 0x10
    /* 2FC805C 80070AC0 38006210 */  beq        $v1, $v0, .Llevel_43_80070BA4
    /* 2FC8060 80070AC4 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2FC8064 80070AC8 11006228 */  slti       $v0, $v1, 0x11
    /* 2FC8068 80070ACC 05004010 */  beqz       $v0, .Llevel_43_80070AE4
    /* 2FC806C 80070AD0 03000224 */   addiu     $v0, $zero, 0x3
    /* 2FC8070 80070AD4 0A006210 */  beq        $v1, $v0, .Llevel_43_80070B00
    /* 2FC8074 80070AD8 00000000 */   nop
    /* 2FC8078 80070ADC 23C30108 */  j          .Llevel_43_80070C8C
    /* 2FC807C 80070AE0 00000000 */   nop
  .Llevel_43_80070AE4:
    /* 2FC8080 80070AE4 16000224 */  addiu      $v0, $zero, 0x16
    /* 2FC8084 80070AE8 4B006210 */  beq        $v1, $v0, .Llevel_43_80070C18
    /* 2FC8088 80070AEC 17000224 */   addiu     $v0, $zero, 0x17
    /* 2FC808C 80070AF0 52006210 */  beq        $v1, $v0, .Llevel_43_80070C3C
    /* 2FC8090 80070AF4 00000000 */   nop
    /* 2FC8094 80070AF8 23C30108 */  j          .Llevel_43_80070C8C
    /* 2FC8098 80070AFC 00000000 */   nop
  .Llevel_43_80070B00:
    /* 2FC809C 80070B00 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 2FC80A0 80070B04 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 2FC80A4 80070B08 00000000 */  nop
    /* 2FC80A8 80070B0C 5D008014 */  bnez       $a0, .Llevel_43_80070C84
    /* 2FC80AC 80070B10 00000000 */   nop
    /* 2FC80B0 80070B14 0780023C */  lui        $v0, %hi(D_800683A0)
    /* 2FC80B4 80070B18 A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* 2FC80B8 80070B1C 00000000 */  nop
    /* 2FC80BC 80070B20 10004230 */  andi       $v0, $v0, 0x10
    /* 2FC80C0 80070B24 06004010 */  beqz       $v0, .Llevel_43_80070B40
    /* 2FC80C4 80070B28 00000000 */   nop
    /* 2FC80C8 80070B2C 0780023C */  lui        $v0, %hi(D_8006A1B1)
    /* 2FC80CC 80070B30 B1A14290 */  lbu        $v0, %lo(D_8006A1B1)($v0)
    /* 2FC80D0 80070B34 00000000 */  nop
    /* 2FC80D4 80070B38 35004014 */  bnez       $v0, .Llevel_43_80070C10
    /* 2FC80D8 80070B3C 00000000 */   nop
  .Llevel_43_80070B40:
    /* 2FC80DC 80070B40 0780023C */  lui        $v0, %hi(D_800683A4)
    /* 2FC80E0 80070B44 A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* 2FC80E4 80070B48 00000000 */  nop
    /* 2FC80E8 80070B4C 0F004230 */  andi       $v0, $v0, 0xF
    /* 2FC80EC 80070B50 0E004010 */  beqz       $v0, .Llevel_43_80070B8C
    /* 2FC80F0 80070B54 00000000 */   nop
    /* 2FC80F4 80070B58 0780033C */  lui        $v1, %hi(D_800683A0)
    /* 2FC80F8 80070B5C A083638C */  lw         $v1, %lo(D_800683A0)($v1)
    /* 2FC80FC 80070B60 00000000 */  nop
    /* 2FC8100 80070B64 0A006230 */  andi       $v0, $v1, 0xA
    /* 2FC8104 80070B68 08004010 */  beqz       $v0, .Llevel_43_80070B8C
    /* 2FC8108 80070B6C 05006230 */   andi      $v0, $v1, 0x5
    /* 2FC810C 80070B70 06004010 */  beqz       $v0, .Llevel_43_80070B8C
    /* 2FC8110 80070B74 00000000 */   nop
    /* 2FC8114 80070B78 0780023C */  lui        $v0, %hi(D_8006A230)
    /* 2FC8118 80070B7C 30A2428C */  lw         $v0, %lo(D_8006A230)($v0)
    /* 2FC811C 80070B80 00000000 */  nop
    /* 2FC8120 80070B84 3F004010 */  beqz       $v0, .Llevel_43_80070C84
    /* 2FC8124 80070B88 08000424 */   addiu     $a0, $zero, 0x8
  .Llevel_43_80070B8C:
    /* 2FC8128 80070B8C 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2FC812C 80070B90 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2FC8130 80070B94 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 2FC8134 80070B98 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 2FC8138 80070B9C 18C30108 */  j          .Llevel_43_80070C60
    /* 2FC813C 80070BA0 80100200 */   sll       $v0, $v0, 2
  .Llevel_43_80070BA4:
    /* 2FC8140 80070BA4 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 2FC8144 80070BA8 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 2FC8148 80070BAC 00000000 */  nop
    /* 2FC814C 80070BB0 0A008014 */  bnez       $a0, .Llevel_43_80070BDC
    /* 2FC8150 80070BB4 00000000 */   nop
  .Llevel_43_80070BB8:
    /* 2FC8154 80070BB8 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2FC8158 80070BBC 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2FC815C 80070BC0 00000000 */  nop
    /* 2FC8160 80070BC4 80100200 */  sll        $v0, $v0, 2
    /* 2FC8164 80070BC8 0680013C */  lui        $at, %hi(D_80061468)
    /* 2FC8168 80070BCC 21082200 */  addu       $at, $at, $v0
    /* 2FC816C 80070BD0 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 2FC8170 80070BD4 21C30108 */  j          .Llevel_43_80070C84
    /* 2FC8174 80070BD8 00000000 */   nop
  .Llevel_43_80070BDC:
    /* 2FC8178 80070BDC 29008314 */  bne        $a0, $v1, .Llevel_43_80070C84
    /* 2FC817C 80070BE0 00000000 */   nop
    /* 2FC8180 80070BE4 0780023C */  lui        $v0, %hi(D_800683A0)
    /* 2FC8184 80070BE8 A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* 2FC8188 80070BEC 00000000 */  nop
    /* 2FC818C 80070BF0 10004230 */  andi       $v0, $v0, 0x10
    /* 2FC8190 80070BF4 25004010 */  beqz       $v0, .Llevel_43_80070C8C
    /* 2FC8194 80070BF8 00000000 */   nop
    /* 2FC8198 80070BFC 0780023C */  lui        $v0, %hi(D_8006A1B1)
    /* 2FC819C 80070C00 B1A14290 */  lbu        $v0, %lo(D_8006A1B1)($v0)
    /* 2FC81A0 80070C04 00000000 */  nop
    /* 2FC81A4 80070C08 20004010 */  beqz       $v0, .Llevel_43_80070C8C
    /* 2FC81A8 80070C0C 00000000 */   nop
  .Llevel_43_80070C10:
    /* 2FC81AC 80070C10 21C30108 */  j          .Llevel_43_80070C84
    /* 2FC81B0 80070C14 07000424 */   addiu     $a0, $zero, 0x7
  .Llevel_43_80070C18:
    /* 2FC81B4 80070C18 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 2FC81B8 80070C1C EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 2FC81BC 80070C20 00000000 */  nop
    /* 2FC81C0 80070C24 E4FF8010 */  beqz       $a0, .Llevel_43_80070BB8
    /* 2FC81C4 80070C28 00000000 */   nop
    /* 2FC81C8 80070C2C 17008310 */  beq        $a0, $v1, .Llevel_43_80070C8C
    /* 2FC81CC 80070C30 00000000 */   nop
    /* 2FC81D0 80070C34 21C30108 */  j          .Llevel_43_80070C84
    /* 2FC81D4 80070C38 00000000 */   nop
  .Llevel_43_80070C3C:
    /* 2FC81D8 80070C3C 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 2FC81DC 80070C40 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 2FC81E0 80070C44 00000000 */  nop
    /* 2FC81E4 80070C48 0E008014 */  bnez       $a0, .Llevel_43_80070C84
    /* 2FC81E8 80070C4C 00000000 */   nop
    /* 2FC81EC 80070C50 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2FC81F0 80070C54 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2FC81F4 80070C58 00000000 */  nop
    /* 2FC81F8 80070C5C 80100200 */  sll        $v0, $v0, 2
  .Llevel_43_80070C60:
    /* 2FC81FC 80070C60 0680013C */  lui        $at, %hi(D_80061468)
    /* 2FC8200 80070C64 21082200 */  addu       $at, $at, $v0
    /* 2FC8204 80070C68 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 2FC8208 80070C6C 00000000 */  nop
    /* 2FC820C 80070C70 06008310 */  beq        $a0, $v1, .Llevel_43_80070C8C
    /* 2FC8210 80070C74 00000000 */   nop
    /* 2FC8214 80070C78 02008014 */  bnez       $a0, .Llevel_43_80070C84
    /* 2FC8218 80070C7C 00000000 */   nop
    /* 2FC821C 80070C80 06000424 */  addiu      $a0, $zero, 0x6
  .Llevel_43_80070C84:
    /* 2FC8220 80070C84 B685000C */  jal        func_800216D8
    /* 2FC8224 80070C88 00000000 */   nop
  .Llevel_43_80070C8C:
    /* 2FC8228 80070C8C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2FC822C 80070C90 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FC8230 80070C94 0800E003 */  jr         $ra
    /* 2FC8234 80070C98 00000000 */   nop
endlabel func_level_43_80070AB0
    /* 2FC8238 80070C9C 00000000 */  nop
