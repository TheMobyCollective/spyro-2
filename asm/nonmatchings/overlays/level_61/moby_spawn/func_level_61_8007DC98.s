.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_61_8007DC98, 0xF50

glabel func_level_61_8007DC98
    /* 3EC8A34 8007DC98 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 3EC8A38 8007DC9C 7C00B1AF */  sw         $s1, 0x7C($sp)
    /* 3EC8A3C 8007DCA0 21888000 */  addu       $s1, $a0, $zero
    /* 3EC8A40 8007DCA4 8C00B5AF */  sw         $s5, 0x8C($sp)
    /* 3EC8A44 8007DCA8 21A8A000 */  addu       $s5, $a1, $zero
    /* 3EC8A48 8007DCAC 9800BFAF */  sw         $ra, 0x98($sp)
    /* 3EC8A4C 8007DCB0 9400B7AF */  sw         $s7, 0x94($sp)
    /* 3EC8A50 8007DCB4 9000B6AF */  sw         $s6, 0x90($sp)
    /* 3EC8A54 8007DCB8 8800B4AF */  sw         $s4, 0x88($sp)
    /* 3EC8A58 8007DCBC 8400B3AF */  sw         $s3, 0x84($sp)
    /* 3EC8A5C 8007DCC0 8000B2AF */  sw         $s2, 0x80($sp)
    /* 3EC8A60 8007DCC4 A404010C */  jal        func_80041290
    /* 3EC8A64 8007DCC8 7800B0AF */   sw        $s0, 0x78($sp)
    /* 3EC8A68 8007DCCC 21984000 */  addu       $s3, $v0, $zero
    /* 3EC8A6C 8007DCD0 03006016 */  bnez       $s3, .Llevel_61_8007DCE0
    /* 3EC8A70 8007DCD4 21206002 */   addu      $a0, $s3, $zero
    /* 3EC8A74 8007DCD8 EEFA0108 */  j          .Llevel_61_8007EBB8
    /* 3EC8A78 8007DCDC 21100000 */   addu      $v0, $zero, $zero
  .Llevel_61_8007DCE0:
    /* 3EC8A7C 8007DCE0 21280000 */  addu       $a1, $zero, $zero
    /* 3EC8A80 8007DCE4 0000708E */  lw         $s0, 0x0($s3)
    /* 3EC8A84 8007DCE8 F26C000C */  jal        func_8001B3C8
    /* 3EC8A88 8007DCEC 58000624 */   addiu     $a2, $zero, 0x58
    /* 3EC8A8C 8007DCF0 21280000 */  addu       $a1, $zero, $zero
    /* 3EC8A90 8007DCF4 18000624 */  addiu      $a2, $zero, 0x18
    /* 3EC8A94 8007DCF8 21200002 */  addu       $a0, $s0, $zero
    /* 3EC8A98 8007DCFC F26C000C */  jal        func_8001B3C8
    /* 3EC8A9C 8007DD00 000064AE */   sw        $a0, 0x0($s3)
    /* 3EC8AA0 8007DD04 1600A012 */  beqz       $s5, .Llevel_61_8007DD60
    /* 3EC8AA4 8007DD08 360071A6 */   sh        $s1, 0x36($s3)
    /* 3EC8AA8 8007DD0C 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 3EC8AAC 8007DD10 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 3EC8AB0 8007DD14 00000000 */  nop
    /* 3EC8AB4 8007DD18 2320A402 */  subu       $a0, $s5, $a0
    /* 3EC8AB8 8007DD1C 40190400 */  sll        $v1, $a0, 5
    /* 3EC8ABC 8007DD20 23186400 */  subu       $v1, $v1, $a0
    /* 3EC8AC0 8007DD24 40190300 */  sll        $v1, $v1, 5
    /* 3EC8AC4 8007DD28 21186400 */  addu       $v1, $v1, $a0
    /* 3EC8AC8 8007DD2C C0100300 */  sll        $v0, $v1, 3
    /* 3EC8ACC 8007DD30 21186200 */  addu       $v1, $v1, $v0
    /* 3EC8AD0 8007DD34 C0130300 */  sll        $v0, $v1, 15
    /* 3EC8AD4 8007DD38 23104300 */  subu       $v0, $v0, $v1
    /* 3EC8AD8 8007DD3C 80100200 */  sll        $v0, $v0, 2
    /* 3EC8ADC 8007DD40 21104400 */  addu       $v0, $v0, $a0
    /* 3EC8AE0 8007DD44 23100200 */  negu       $v0, $v0
    /* 3EC8AE4 8007DD48 C3180200 */  sra        $v1, $v0, 3
    /* 3EC8AE8 8007DD4C 0001622C */  sltiu      $v0, $v1, 0x100
    /* 3EC8AEC 8007DD50 04004010 */  beqz       $v0, .Llevel_61_8007DD64
    /* 3EC8AF0 8007DD54 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 3EC8AF4 8007DD58 5AF70108 */  j          .Llevel_61_8007DD68
    /* 3EC8AF8 8007DD5C 3A0063A2 */   sb        $v1, 0x3A($s3)
  .Llevel_61_8007DD60:
    /* 3EC8AFC 8007DD60 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_61_8007DD64:
    /* 3EC8B00 8007DD64 3A0062A2 */  sb         $v0, 0x3A($s3)
  .Llevel_61_8007DD68:
    /* 3EC8B04 8007DD68 72DD000C */  jal        func_800375C8
    /* 3EC8B08 8007DD6C 21206002 */   addu      $a0, $s3, $zero
    /* 3EC8B0C 8007DD70 3501222A */  slti       $v0, $s1, 0x135
    /* 3EC8B10 8007DD74 22004010 */  beqz       $v0, .Llevel_61_8007DE00
    /* 3EC8B14 8007DD78 3201222A */   slti      $v0, $s1, 0x132
    /* 3EC8B18 8007DD7C C8014010 */  beqz       $v0, .Llevel_61_8007E4A0
    /* 3EC8B1C 8007DD80 78000224 */   addiu     $v0, $zero, 0x78
    /* 3EC8B20 8007DD84 6E012212 */  beq        $s1, $v0, .Llevel_61_8007E340
    /* 3EC8B24 8007DD88 7900222A */   slti      $v0, $s1, 0x79
    /* 3EC8B28 8007DD8C 0E004010 */  beqz       $v0, .Llevel_61_8007DDC8
    /* 3EC8B2C 8007DD90 10000224 */   addiu     $v0, $zero, 0x10
    /* 3EC8B30 8007DD94 3E002212 */  beq        $s1, $v0, .Llevel_61_8007DE90
    /* 3EC8B34 8007DD98 1100222A */   slti      $v0, $s1, 0x11
    /* 3EC8B38 8007DD9C 05004010 */  beqz       $v0, .Llevel_61_8007DDB4
    /* 3EC8B3C 8007DDA0 01000224 */   addiu     $v0, $zero, 0x1
    /* 3EC8B40 8007DDA4 33002212 */  beq        $s1, $v0, .Llevel_61_8007DE74
    /* 3EC8B44 8007DDA8 00000000 */   nop
    /* 3EC8B48 8007DDAC E2FA0108 */  j          .Llevel_61_8007EB88
    /* 3EC8B4C 8007DDB0 00000000 */   nop
  .Llevel_61_8007DDB4:
    /* 3EC8B50 8007DDB4 56000224 */  addiu      $v0, $zero, 0x56
    /* 3EC8B54 8007DDB8 5B012212 */  beq        $s1, $v0, .Llevel_61_8007E328
    /* 3EC8B58 8007DDBC 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3EC8B5C 8007DDC0 E2FA0108 */  j          .Llevel_61_8007EB88
    /* 3EC8B60 8007DDC4 00000000 */   nop
  .Llevel_61_8007DDC8:
    /* 3EC8B64 8007DDC8 D3000224 */  addiu      $v0, $zero, 0xD3
    /* 3EC8B68 8007DDCC 30002212 */  beq        $s1, $v0, .Llevel_61_8007DE90
    /* 3EC8B6C 8007DDD0 D400222A */   slti      $v0, $s1, 0xD4
    /* 3EC8B70 8007DDD4 05004010 */  beqz       $v0, .Llevel_61_8007DDEC
    /* 3EC8B74 8007DDD8 81000224 */   addiu     $v0, $zero, 0x81
    /* 3EC8B78 8007DDDC 8B012212 */  beq        $s1, $v0, .Llevel_61_8007E40C
    /* 3EC8B7C 8007DDE0 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3EC8B80 8007DDE4 E2FA0108 */  j          .Llevel_61_8007EB88
    /* 3EC8B84 8007DDE8 00000000 */   nop
  .Llevel_61_8007DDEC:
    /* 3EC8B88 8007DDEC 04010224 */  addiu      $v0, $zero, 0x104
    /* 3EC8B8C 8007DDF0 96012212 */  beq        $s1, $v0, .Llevel_61_8007E44C
    /* 3EC8B90 8007DDF4 00000000 */   nop
    /* 3EC8B94 8007DDF8 E2FA0108 */  j          .Llevel_61_8007EB88
    /* 3EC8B98 8007DDFC 00000000 */   nop
  .Llevel_61_8007DE00:
    /* 3EC8B9C 8007DE00 E3010224 */  addiu      $v0, $zero, 0x1E3
    /* 3EC8BA0 8007DE04 96022212 */  beq        $s1, $v0, .Llevel_61_8007E860
    /* 3EC8BA4 8007DE08 E401222A */   slti      $v0, $s1, 0x1E4
    /* 3EC8BA8 8007DE0C 0E004010 */  beqz       $v0, .Llevel_61_8007DE48
    /* 3EC8BAC 8007DE10 E0010224 */   addiu     $v0, $zero, 0x1E0
    /* 3EC8BB0 8007DE14 51002212 */  beq        $s1, $v0, .Llevel_61_8007DF5C
    /* 3EC8BB4 8007DE18 E101222A */   slti      $v0, $s1, 0x1E1
    /* 3EC8BB8 8007DE1C 05004010 */  beqz       $v0, .Llevel_61_8007DE34
    /* 3EC8BBC 8007DE20 46010224 */   addiu     $v0, $zero, 0x146
    /* 3EC8BC0 8007DE24 35022212 */  beq        $s1, $v0, .Llevel_61_8007E6FC
    /* 3EC8BC4 8007DE28 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3EC8BC8 8007DE2C E2FA0108 */  j          .Llevel_61_8007EB88
    /* 3EC8BCC 8007DE30 00000000 */   nop
  .Llevel_61_8007DE34:
    /* 3EC8BD0 8007DE34 E2010224 */  addiu      $v0, $zero, 0x1E2
    /* 3EC8BD4 8007DE38 72022212 */  beq        $s1, $v0, .Llevel_61_8007E804
    /* 3EC8BD8 8007DE3C 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3EC8BDC 8007DE40 E2FA0108 */  j          .Llevel_61_8007EB88
    /* 3EC8BE0 8007DE44 00000000 */   nop
  .Llevel_61_8007DE48:
    /* 3EC8BE4 8007DE48 1D020224 */  addiu      $v0, $zero, 0x21D
    /* 3EC8BE8 8007DE4C 39032212 */  beq        $s1, $v0, .Llevel_61_8007EB34
    /* 3EC8BEC 8007DE50 1D02222A */   slti      $v0, $s1, 0x21D
    /* 3EC8BF0 8007DE54 4C034014 */  bnez       $v0, .Llevel_61_8007EB88
    /* 3EC8BF4 8007DE58 8602222A */   slti      $v0, $s1, 0x286
    /* 3EC8BF8 8007DE5C 4A034010 */  beqz       $v0, .Llevel_61_8007EB88
    /* 3EC8BFC 8007DE60 8402222A */   slti      $v0, $s1, 0x284
    /* 3EC8C00 8007DE64 48034014 */  bnez       $v0, .Llevel_61_8007EB88
    /* 3EC8C04 8007DE68 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3EC8C08 8007DE6C D8F70108 */  j          .Llevel_61_8007DF60
    /* 3EC8C0C 8007DE70 00000000 */   nop
  .Llevel_61_8007DE74:
    /* 3EC8C10 8007DE74 0E05010C */  jal        func_80041438
    /* 3EC8C14 8007DE78 21206002 */   addu      $a0, $s3, $zero
    /* 3EC8C18 8007DE7C 18000224 */  addiu      $v0, $zero, 0x18
    /* 3EC8C1C 8007DE80 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 3EC8C20 8007DE84 40000224 */  addiu      $v0, $zero, 0x40
    /* 3EC8C24 8007DE88 25F90108 */  j          .Llevel_61_8007E494
    /* 3EC8C28 8007DE8C 4A0062A2 */   sb        $v0, 0x4A($s3)
  .Llevel_61_8007DE90:
    /* 3EC8C2C 8007DE90 10000324 */  addiu      $v1, $zero, 0x10
    /* 3EC8C30 8007DE94 36006286 */  lh         $v0, 0x36($s3)
    /* 3EC8C34 8007DE98 0000718E */  lw         $s1, 0x0($s3)
    /* 3EC8C38 8007DE9C 18004314 */  bne        $v0, $v1, .Llevel_61_8007DF00
    /* 3EC8C3C 8007DEA0 00000000 */   nop
    /* 3EC8C40 8007DEA4 0680043C */  lui        $a0, %hi(D_8006712C)
    /* 3EC8C44 8007DEA8 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* 3EC8C48 8007DEAC 00000000 */  nop
    /* 3EC8C4C 8007DEB0 04008228 */  slti       $v0, $a0, 0x4
    /* 3EC8C50 8007DEB4 03004010 */  beqz       $v0, .Llevel_61_8007DEC4
    /* 3EC8C54 8007DEB8 0A000324 */   addiu     $v1, $zero, 0xA
    /* 3EC8C58 8007DEBC B5F70108 */  j          .Llevel_61_8007DED4
    /* 3EC8C5C 8007DEC0 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_61_8007DEC4:
    /* 3EC8C60 8007DEC4 07008228 */  slti       $v0, $a0, 0x7
    /* 3EC8C64 8007DEC8 02004010 */  beqz       $v0, .Llevel_61_8007DED4
    /* 3EC8C68 8007DECC 00000000 */   nop
    /* 3EC8C6C 8007DED0 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_61_8007DED4:
    /* 3EC8C70 8007DED4 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* 3EC8C74 8007DED8 AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* 3EC8C78 8007DEDC 0000828C */  lw         $v0, 0x0($a0)
    /* 3EC8C7C 8007DEE0 00000000 */  nop
    /* 3EC8C80 8007DEE4 01004224 */  addiu      $v0, $v0, 0x1
    /* 3EC8C84 8007DEE8 000082AC */  sw         $v0, 0x0($a0)
    /* 3EC8C88 8007DEEC 2A104300 */  slt        $v0, $v0, $v1
    /* 3EC8C8C 8007DEF0 03004014 */  bnez       $v0, .Llevel_61_8007DF00
    /* 3EC8C90 8007DEF4 D3000224 */   addiu     $v0, $zero, 0xD3
    /* 3EC8C94 8007DEF8 000080AC */  sw         $zero, 0x0($a0)
    /* 3EC8C98 8007DEFC 360062A6 */  sh         $v0, 0x36($s3)
  .Llevel_61_8007DF00:
    /* 3EC8C9C 8007DF00 0E05010C */  jal        func_80041438
    /* 3EC8CA0 8007DF04 21206002 */   addu      $a0, $s3, $zero
    /* 3EC8CA4 8007DF08 0C007026 */  addiu      $s0, $s3, 0xC
    /* 3EC8CA8 8007DF0C 21200002 */  addu       $a0, $s0, $zero
    /* 3EC8CAC 8007DF10 6C6F000C */  jal        func_8001BDB0
    /* 3EC8CB0 8007DF14 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3EC8CB4 8007DF18 21202002 */  addu       $a0, $s1, $zero
    /* 3EC8CB8 8007DF1C 1400628E */  lw         $v0, 0x14($s3)
    /* 3EC8CBC 8007DF20 21280002 */  addu       $a1, $s0, $zero
    /* 3EC8CC0 8007DF24 00024224 */  addiu      $v0, $v0, 0x200
    /* 3EC8CC4 8007DF28 6C6F000C */  jal        func_8001BDB0
    /* 3EC8CC8 8007DF2C 140062AE */   sw        $v0, 0x14($s3)
    /* 3EC8CCC 8007DF30 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3EC8CD0 8007DF34 1C0062AE */  sw         $v0, 0x1C($s3)
    /* 3EC8CD4 8007DF38 02000224 */  addiu      $v0, $zero, 0x2
    /* 3EC8CD8 8007DF3C 470062A2 */  sb         $v0, 0x47($s3)
    /* 3EC8CDC 8007DF40 08070224 */  addiu      $v0, $zero, 0x708
    /* 3EC8CE0 8007DF44 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 3EC8CE4 8007DF48 4B67010C */  jal        func_80059D2C
    /* 3EC8CE8 8007DF4C 110020A2 */   sb        $zero, 0x11($s1)
    /* 3EC8CEC 8007DF50 FC004230 */  andi       $v0, $v0, 0xFC
    /* 3EC8CF0 8007DF54 EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC8CF4 8007DF58 120022A2 */   sb        $v0, 0x12($s1)
  .Llevel_61_8007DF5C:
    /* 3EC8CF8 8007DF5C 0C006426 */  addiu      $a0, $s3, 0xC
  .Llevel_61_8007DF60:
    /* 3EC8CFC 8007DF60 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 3EC8D00 8007DF64 0000718E */  lw         $s1, 0x0($s3)
    /* 3EC8D04 8007DF68 20000224 */  addiu      $v0, $zero, 0x20
    /* 3EC8D08 8007DF6C 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 3EC8D0C 8007DF70 6C6F000C */  jal        func_8001BDB0
    /* 3EC8D10 8007DF74 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* 3EC8D14 8007DF78 0E05010C */  jal        func_80041438
    /* 3EC8D18 8007DF7C 21206002 */   addu      $a0, $s3, $zero
    /* 3EC8D1C 8007DF80 36006386 */  lh         $v1, 0x36($s3)
    /* 3EC8D20 8007DF84 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* 3EC8D24 8007DF88 07006214 */  bne        $v1, $v0, .Llevel_61_8007DFA8
    /* 3EC8D28 8007DF8C 2C010424 */   addiu     $a0, $zero, 0x12C
    /* 3EC8D2C 8007DF90 4B67010C */  jal        func_80059D2C
    /* 3EC8D30 8007DF94 00000000 */   nop
    /* 3EC8D34 8007DF98 4B67010C */  jal        func_80059D2C
    /* 3EC8D38 8007DF9C FF0F5630 */   andi      $s6, $v0, 0xFFF
    /* 3EC8D3C 8007DFA0 F4F70108 */  j          .Llevel_61_8007DFD0
    /* 3EC8D40 8007DFA4 FF0F5430 */   andi      $s4, $v0, 0xFFF
  .Llevel_61_8007DFA8:
    /* 3EC8D44 8007DFA8 47E2000C */  jal        func_8003891C
    /* 3EC8D48 8007DFAC 34080524 */   addiu     $a1, $zero, 0x834
    /* 3EC8D4C 8007DFB0 21B04000 */  addu       $s6, $v0, $zero
    /* 3EC8D50 8007DFB4 24FA0424 */  addiu      $a0, $zero, -0x5DC
    /* 3EC8D54 8007DFB8 47E2000C */  jal        func_8003891C
    /* 3EC8D58 8007DFBC DC050524 */   addiu     $a1, $zero, 0x5DC
    /* 3EC8D5C 8007DFC0 4600A392 */  lbu        $v1, 0x46($s5)
    /* 3EC8D60 8007DFC4 00000000 */  nop
    /* 3EC8D64 8007DFC8 21186200 */  addu       $v1, $v1, $v0
    /* 3EC8D68 8007DFCC FF0F7430 */  andi       $s4, $v1, 0xFFF
  .Llevel_61_8007DFD0:
    /* 3EC8D6C 8007DFD0 36006386 */  lh         $v1, 0x36($s3)
    /* 3EC8D70 8007DFD4 23010224 */  addiu      $v0, $zero, 0x123
    /* 3EC8D74 8007DFD8 04006214 */  bne        $v1, $v0, .Llevel_61_8007DFEC
    /* 3EC8D78 8007DFDC 78001224 */   addiu     $s2, $zero, 0x78
    /* 3EC8D7C 8007DFE0 B4001224 */  addiu      $s2, $zero, 0xB4
    /* 3EC8D80 8007DFE4 FCF70108 */  j          .Llevel_61_8007DFF0
    /* 3EC8D84 8007DFE8 DC001724 */   addiu     $s7, $zero, 0xDC
  .Llevel_61_8007DFEC:
    /* 3EC8D88 8007DFEC 96001724 */  addiu      $s7, $zero, 0x96
  .Llevel_61_8007DFF0:
    /* 3EC8D8C 8007DFF0 996D000C */  jal        func_8001B664
    /* 3EC8D90 8007DFF4 2120C002 */   addu      $a0, $s6, $zero
    /* 3EC8D94 8007DFF8 21208002 */  addu       $a0, $s4, $zero
    /* 3EC8D98 8007DFFC 996D000C */  jal        func_8001B664
    /* 3EC8D9C 8007E000 21804000 */   addu      $s0, $v0, $zero
    /* 3EC8DA0 8007E004 18005200 */  mult       $v0, $s2
    /* 3EC8DA4 8007E008 12400000 */  mflo       $t0
    /* 3EC8DA8 8007E00C 83811000 */  sra        $s0, $s0, 6
    /* 3EC8DAC 8007E010 00000000 */  nop
    /* 3EC8DB0 8007E014 18000802 */  mult       $s0, $t0
    /* 3EC8DB4 8007E018 2120C002 */  addu       $a0, $s6, $zero
    /* 3EC8DB8 8007E01C 12400000 */  mflo       $t0
    /* 3EC8DBC 8007E020 83140800 */  sra        $v0, $t0, 18
    /* 3EC8DC0 8007E024 996D000C */  jal        func_8001B664
    /* 3EC8DC4 8007E028 000022A6 */   sh        $v0, 0x0($s1)
    /* 3EC8DC8 8007E02C 21208002 */  addu       $a0, $s4, $zero
    /* 3EC8DCC 8007E030 876D000C */  jal        func_8001B61C
    /* 3EC8DD0 8007E034 21804000 */   addu      $s0, $v0, $zero
    /* 3EC8DD4 8007E038 18005200 */  mult       $v0, $s2
    /* 3EC8DD8 8007E03C 12400000 */  mflo       $t0
    /* 3EC8DDC 8007E040 83811000 */  sra        $s0, $s0, 6
    /* 3EC8DE0 8007E044 00000000 */  nop
    /* 3EC8DE4 8007E048 18000802 */  mult       $s0, $t0
    /* 3EC8DE8 8007E04C 2120C002 */  addu       $a0, $s6, $zero
    /* 3EC8DEC 8007E050 12400000 */  mflo       $t0
    /* 3EC8DF0 8007E054 83140800 */  sra        $v0, $t0, 18
    /* 3EC8DF4 8007E058 876D000C */  jal        func_8001B61C
    /* 3EC8DF8 8007E05C 020022A6 */   sh        $v0, 0x2($s1)
    /* 3EC8DFC 8007E060 18005700 */  mult       $v0, $s7
    /* 3EC8E00 8007E064 12400000 */  mflo       $t0
    /* 3EC8E04 8007E068 03130800 */  sra        $v0, $t0, 12
    /* 3EC8E08 8007E06C 040022A6 */  sh         $v0, 0x4($s1)
    /* 3EC8E0C 8007E070 5100A492 */  lbu        $a0, 0x51($s5)
    /* 3EC8E10 8007E074 00000000 */  nop
    /* 3EC8E14 8007E078 26008010 */  beqz       $a0, .Llevel_61_8007E114
    /* 3EC8E18 8007E07C 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 3EC8E1C 8007E080 1800A28E */  lw         $v0, 0x18($s5)
    /* 3EC8E20 8007E084 00000000 */  nop
    /* 3EC8E24 8007E088 24104300 */  and        $v0, $v0, $v1
    /* 3EC8E28 8007E08C 21004010 */  beqz       $v0, .Llevel_61_8007E114
    /* 3EC8E2C 8007E090 40100400 */   sll       $v0, $a0, 1
    /* 3EC8E30 8007E094 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3EC8E34 8007E098 21082200 */  addu       $at, $at, $v0
    /* 3EC8E38 8007E09C 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 3EC8E3C 8007E0A0 00000000 */  nop
    /* 3EC8E40 8007E0A4 80100300 */  sll        $v0, $v1, 2
    /* 3EC8E44 8007E0A8 21104300 */  addu       $v0, $v0, $v1
    /* 3EC8E48 8007E0AC 00190200 */  sll        $v1, $v0, 4
    /* 3EC8E4C 8007E0B0 23186200 */  subu       $v1, $v1, $v0
    /* 3EC8E50 8007E0B4 00002296 */  lhu        $v0, 0x0($s1)
    /* 3EC8E54 8007E0B8 C31A0300 */  sra        $v1, $v1, 11
    /* 3EC8E58 8007E0BC 21104300 */  addu       $v0, $v0, $v1
    /* 3EC8E5C 8007E0C0 000022A6 */  sh         $v0, 0x0($s1)
    /* 3EC8E60 8007E0C4 5100A292 */  lbu        $v0, 0x51($s5)
    /* 3EC8E64 8007E0C8 28000424 */  addiu      $a0, $zero, 0x28
    /* 3EC8E68 8007E0CC 40100200 */  sll        $v0, $v0, 1
    /* 3EC8E6C 8007E0D0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3EC8E70 8007E0D4 21082200 */  addu       $at, $at, $v0
    /* 3EC8E74 8007E0D8 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 3EC8E78 8007E0DC 46000524 */  addiu      $a1, $zero, 0x46
    /* 3EC8E7C 8007E0E0 80100300 */  sll        $v0, $v1, 2
    /* 3EC8E80 8007E0E4 21104300 */  addu       $v0, $v0, $v1
    /* 3EC8E84 8007E0E8 00190200 */  sll        $v1, $v0, 4
    /* 3EC8E88 8007E0EC 23186200 */  subu       $v1, $v1, $v0
    /* 3EC8E8C 8007E0F0 02002296 */  lhu        $v0, 0x2($s1)
    /* 3EC8E90 8007E0F4 C31A0300 */  sra        $v1, $v1, 11
    /* 3EC8E94 8007E0F8 21104300 */  addu       $v0, $v0, $v1
    /* 3EC8E98 8007E0FC 47E2000C */  jal        func_8003891C
    /* 3EC8E9C 8007E100 020022A6 */   sh        $v0, 0x2($s1)
    /* 3EC8EA0 8007E104 04002396 */  lhu        $v1, 0x4($s1)
    /* 3EC8EA4 8007E108 00000000 */  nop
    /* 3EC8EA8 8007E10C 21186200 */  addu       $v1, $v1, $v0
    /* 3EC8EAC 8007E110 040023A6 */  sh         $v1, 0x4($s1)
  .Llevel_61_8007E114:
    /* 3EC8EB0 8007E114 36006386 */  lh         $v1, 0x36($s3)
    /* 3EC8EB4 8007E118 98000224 */  addiu      $v0, $zero, 0x98
    /* 3EC8EB8 8007E11C 41006210 */  beq        $v1, $v0, .Llevel_61_8007E224
    /* 3EC8EBC 8007E120 E0010224 */   addiu     $v0, $zero, 0x1E0
    /* 3EC8EC0 8007E124 3E006210 */  beq        $v1, $v0, .Llevel_61_8007E220
    /* 3EC8EC4 8007E128 0200033C */   lui       $v1, (0x20000 >> 16)
    /* 3EC8EC8 8007E12C 1800A28E */  lw         $v0, 0x18($s5)
    /* 3EC8ECC 8007E130 00000000 */  nop
    /* 3EC8ED0 8007E134 24104300 */  and        $v0, $v0, $v1
    /* 3EC8ED4 8007E138 1B004010 */  beqz       $v0, .Llevel_61_8007E1A8
    /* 3EC8ED8 8007E13C 00000000 */   nop
    /* 3EC8EDC 8007E140 4600A292 */  lbu        $v0, 0x46($s5)
    /* 3EC8EE0 8007E144 00000000 */  nop
    /* 3EC8EE4 8007E148 40100200 */  sll        $v0, $v0, 1
    /* 3EC8EE8 8007E14C 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3EC8EEC 8007E150 21082200 */  addu       $at, $at, $v0
    /* 3EC8EF0 8007E154 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 3EC8EF4 8007E158 00000000 */  nop
    /* 3EC8EF8 8007E15C C0100300 */  sll        $v0, $v1, 3
    /* 3EC8EFC 8007E160 23104300 */  subu       $v0, $v0, $v1
    /* 3EC8F00 8007E164 C0100200 */  sll        $v0, $v0, 3
    /* 3EC8F04 8007E168 23104300 */  subu       $v0, $v0, $v1
    /* 3EC8F08 8007E16C 00002396 */  lhu        $v1, 0x0($s1)
    /* 3EC8F0C 8007E170 83120200 */  sra        $v0, $v0, 10
    /* 3EC8F10 8007E174 21186200 */  addu       $v1, $v1, $v0
    /* 3EC8F14 8007E178 000023A6 */  sh         $v1, 0x0($s1)
    /* 3EC8F18 8007E17C 4600A292 */  lbu        $v0, 0x46($s5)
    /* 3EC8F1C 8007E180 00000000 */  nop
    /* 3EC8F20 8007E184 40100200 */  sll        $v0, $v0, 1
    /* 3EC8F24 8007E188 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3EC8F28 8007E18C 21082200 */  addu       $at, $at, $v0
    /* 3EC8F2C 8007E190 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 3EC8F30 8007E194 00000000 */  nop
    /* 3EC8F34 8007E198 C0100300 */  sll        $v0, $v1, 3
    /* 3EC8F38 8007E19C 23104300 */  subu       $v0, $v0, $v1
    /* 3EC8F3C 8007E1A0 83F80108 */  j          .Llevel_61_8007E20C
    /* 3EC8F40 8007E1A4 C0100200 */   sll       $v0, $v0, 3
  .Llevel_61_8007E1A8:
    /* 3EC8F44 8007E1A8 4600A292 */  lbu        $v0, 0x46($s5)
    /* 3EC8F48 8007E1AC 00000000 */  nop
    /* 3EC8F4C 8007E1B0 40100200 */  sll        $v0, $v0, 1
    /* 3EC8F50 8007E1B4 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3EC8F54 8007E1B8 21082200 */  addu       $at, $at, $v0
    /* 3EC8F58 8007E1BC 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 3EC8F5C 8007E1C0 00000000 */  nop
    /* 3EC8F60 8007E1C4 C0100300 */  sll        $v0, $v1, 3
    /* 3EC8F64 8007E1C8 21104300 */  addu       $v0, $v0, $v1
    /* 3EC8F68 8007E1CC 80100200 */  sll        $v0, $v0, 2
    /* 3EC8F6C 8007E1D0 23104300 */  subu       $v0, $v0, $v1
    /* 3EC8F70 8007E1D4 00002396 */  lhu        $v1, 0x0($s1)
    /* 3EC8F74 8007E1D8 83120200 */  sra        $v0, $v0, 10
    /* 3EC8F78 8007E1DC 21186200 */  addu       $v1, $v1, $v0
    /* 3EC8F7C 8007E1E0 000023A6 */  sh         $v1, 0x0($s1)
    /* 3EC8F80 8007E1E4 4600A292 */  lbu        $v0, 0x46($s5)
    /* 3EC8F84 8007E1E8 00000000 */  nop
    /* 3EC8F88 8007E1EC 40100200 */  sll        $v0, $v0, 1
    /* 3EC8F8C 8007E1F0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3EC8F90 8007E1F4 21082200 */  addu       $at, $at, $v0
    /* 3EC8F94 8007E1F8 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 3EC8F98 8007E1FC 00000000 */  nop
    /* 3EC8F9C 8007E200 C0100300 */  sll        $v0, $v1, 3
    /* 3EC8FA0 8007E204 21104300 */  addu       $v0, $v0, $v1
    /* 3EC8FA4 8007E208 80100200 */  sll        $v0, $v0, 2
  .Llevel_61_8007E20C:
    /* 3EC8FA8 8007E20C 23104300 */  subu       $v0, $v0, $v1
    /* 3EC8FAC 8007E210 02002396 */  lhu        $v1, 0x2($s1)
    /* 3EC8FB0 8007E214 83120200 */  sra        $v0, $v0, 10
    /* 3EC8FB4 8007E218 21186200 */  addu       $v1, $v1, $v0
    /* 3EC8FB8 8007E21C 020023A6 */  sh         $v1, 0x2($s1)
  .Llevel_61_8007E220:
    /* 3EC8FBC 8007E220 36006386 */  lh         $v1, 0x36($s3)
  .Llevel_61_8007E224:
    /* 3EC8FC0 8007E224 3D000224 */  addiu      $v0, $zero, 0x3D
    /* 3EC8FC4 8007E228 21006210 */  beq        $v1, $v0, .Llevel_61_8007E2B0
    /* 3EC8FC8 8007E22C 21206000 */   addu      $a0, $v1, $zero
    /* 3EC8FCC 8007E230 58000224 */  addiu      $v0, $zero, 0x58
    /* 3EC8FD0 8007E234 1E006210 */  beq        $v1, $v0, .Llevel_61_8007E2B0
    /* 3EC8FD4 8007E238 42000224 */   addiu     $v0, $zero, 0x42
    /* 3EC8FD8 8007E23C 1C006210 */  beq        $v1, $v0, .Llevel_61_8007E2B0
    /* 3EC8FDC 8007E240 7CFD8224 */   addiu     $v0, $a0, -0x284
    /* 3EC8FE0 8007E244 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 3EC8FE4 8007E248 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3EC8FE8 8007E24C 18004014 */  bnez       $v0, .Llevel_61_8007E2B0
    /* 3EC8FEC 8007E250 00000000 */   nop
    /* 3EC8FF0 8007E254 4B67010C */  jal        func_80059D2C
    /* 3EC8FF4 8007E258 00000000 */   nop
    /* 3EC8FF8 8007E25C 4B67010C */  jal        func_80059D2C
    /* 3EC8FFC 8007E260 440062A2 */   sb        $v0, 0x44($s3)
    /* 3EC9000 8007E264 4B67010C */  jal        func_80059D2C
    /* 3EC9004 8007E268 450062A2 */   sb        $v0, 0x45($s3)
    /* 3EC9008 8007E26C 460062A2 */  sb         $v0, 0x46($s3)
    /* 3EC900C 8007E270 00002286 */  lh         $v0, 0x0($s1)
    /* 3EC9010 8007E274 0C00638E */  lw         $v1, 0xC($s3)
    /* 3EC9014 8007E278 40100200 */  sll        $v0, $v0, 1
    /* 3EC9018 8007E27C 21186200 */  addu       $v1, $v1, $v0
    /* 3EC901C 8007E280 0C0063AE */  sw         $v1, 0xC($s3)
    /* 3EC9020 8007E284 02002286 */  lh         $v0, 0x2($s1)
    /* 3EC9024 8007E288 1000638E */  lw         $v1, 0x10($s3)
    /* 3EC9028 8007E28C 40100200 */  sll        $v0, $v0, 1
    /* 3EC902C 8007E290 21186200 */  addu       $v1, $v1, $v0
    /* 3EC9030 8007E294 100063AE */  sw         $v1, 0x10($s3)
    /* 3EC9034 8007E298 04002286 */  lh         $v0, 0x4($s1)
    /* 3EC9038 8007E29C 1400638E */  lw         $v1, 0x14($s3)
    /* 3EC903C 8007E2A0 40100200 */  sll        $v0, $v0, 1
    /* 3EC9040 8007E2A4 21186200 */  addu       $v1, $v1, $v0
    /* 3EC9044 8007E2A8 B5F80108 */  j          .Llevel_61_8007E2D4
    /* 3EC9048 8007E2AC 140063AE */   sw        $v1, 0x14($s3)
  .Llevel_61_8007E2B0:
    /* 3EC904C 8007E2B0 4400A292 */  lbu        $v0, 0x44($s5)
    /* 3EC9050 8007E2B4 00000000 */  nop
    /* 3EC9054 8007E2B8 440062A2 */  sb         $v0, 0x44($s3)
    /* 3EC9058 8007E2BC 4500A292 */  lbu        $v0, 0x45($s5)
    /* 3EC905C 8007E2C0 00000000 */  nop
    /* 3EC9060 8007E2C4 450062A2 */  sb         $v0, 0x45($s3)
    /* 3EC9064 8007E2C8 4600A292 */  lbu        $v0, 0x46($s5)
    /* 3EC9068 8007E2CC 00000000 */  nop
    /* 3EC906C 8007E2D0 460062A2 */  sb         $v0, 0x46($s3)
  .Llevel_61_8007E2D4:
    /* 3EC9070 8007E2D4 4B67010C */  jal        func_80059D2C
    /* 3EC9074 8007E2D8 00000000 */   nop
    /* 3EC9078 8007E2DC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3EC907C 8007E2E0 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3EC9080 8007E2E4 4B67010C */  jal        func_80059D2C
    /* 3EC9084 8007E2E8 060022A6 */   sh        $v0, 0x6($s1)
    /* 3EC9088 8007E2EC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3EC908C 8007E2F0 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3EC9090 8007E2F4 4B67010C */  jal        func_80059D2C
    /* 3EC9094 8007E2F8 080022A6 */   sh        $v0, 0x8($s1)
    /* 3EC9098 8007E2FC 5A000424 */  addiu      $a0, $zero, 0x5A
    /* 3EC909C 8007E300 96000524 */  addiu      $a1, $zero, 0x96
    /* 3EC90A0 8007E304 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3EC90A4 8007E308 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3EC90A8 8007E30C 47E2000C */  jal        func_8003891C
    /* 3EC90AC 8007E310 0A0022A6 */   sh        $v0, 0xA($s1)
    /* 3EC90B0 8007E314 0C0022A6 */  sh         $v0, 0xC($s1)
    /* 3EC90B4 8007E318 01000224 */  addiu      $v0, $zero, 0x1
    /* 3EC90B8 8007E31C 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 3EC90BC 8007E320 EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC90C0 8007E324 120020A6 */   sh        $zero, 0x12($s1)
  .Llevel_61_8007E328:
    /* 3EC90C4 8007E328 6C6F000C */  jal        func_8001BDB0
    /* 3EC90C8 8007E32C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3EC90CC 8007E330 4600A292 */  lbu        $v0, 0x46($s5)
    /* 3EC90D0 8007E334 21206002 */  addu       $a0, $s3, $zero
    /* 3EC90D4 8007E338 EBFA0108 */  j          .Llevel_61_8007EBAC
    /* 3EC90D8 8007E33C 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_61_8007E340:
    /* 3EC90DC 8007E340 0000708E */  lw         $s0, 0x0($s3)
    /* 3EC90E0 8007E344 0E05010C */  jal        func_80041438
    /* 3EC90E4 8007E348 21206002 */   addu      $a0, $s3, $zero
    /* 3EC90E8 8007E34C 78000224 */  addiu      $v0, $zero, 0x78
    /* 3EC90EC 8007E350 490060A2 */  sb         $zero, 0x49($s3)
    /* 3EC90F0 8007E354 000000A6 */  sh         $zero, 0x0($s0)
    /* 3EC90F4 8007E358 080000A6 */  sh         $zero, 0x8($s0)
    /* 3EC90F8 8007E35C 060000A6 */  sh         $zero, 0x6($s0)
    /* 3EC90FC 8007E360 040000A6 */  sh         $zero, 0x4($s0)
    /* 3EC9100 8007E364 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 3EC9104 8007E368 100000AE */  sw         $zero, 0x10($s0)
    /* 3EC9108 8007E36C 0600A012 */  beqz       $s5, .Llevel_61_8007E388
    /* 3EC910C 8007E370 140000AE */   sw        $zero, 0x14($s0)
    /* 3EC9110 8007E374 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3EC9114 8007E378 6C6F000C */  jal        func_8001BDB0
    /* 3EC9118 8007E37C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3EC911C 8007E380 01F90108 */  j          .Llevel_61_8007E404
    /* 3EC9120 8007E384 FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_61_8007E388:
    /* 3EC9124 8007E388 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3EC9128 8007E38C 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* 3EC912C 8007E390 FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* 3EC9130 8007E394 0000A390 */  lbu        $v1, 0x0($a1)
    /* 3EC9134 8007E398 F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 3EC9138 8007E39C 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 3EC913C 8007E3A0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3EC9140 8007E3A4 40180300 */  sll        $v1, $v1, 1
    /* 3EC9144 8007E3A8 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3EC9148 8007E3AC 21082300 */  addu       $at, $at, $v1
    /* 3EC914C 8007E3B0 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* 3EC9150 8007E3B4 1000A627 */  addiu      $a2, $sp, 0x10
    /* 3EC9154 8007E3B8 40110700 */  sll        $v0, $a3, 5
    /* 3EC9158 8007E3BC 23104700 */  subu       $v0, $v0, $a3
    /* 3EC915C 8007E3C0 80100200 */  sll        $v0, $v0, 2
    /* 3EC9160 8007E3C4 21104700 */  addu       $v0, $v0, $a3
    /* 3EC9164 8007E3C8 43120200 */  sra        $v0, $v0, 9
    /* 3EC9168 8007E3CC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3EC916C 8007E3D0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3EC9170 8007E3D4 21082300 */  addu       $at, $at, $v1
    /* 3EC9174 8007E3D8 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 3EC9178 8007E3DC E8030224 */  addiu      $v0, $zero, 0x3E8
    /* 3EC917C 8007E3E0 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3EC9180 8007E3E4 40110300 */  sll        $v0, $v1, 5
    /* 3EC9184 8007E3E8 23104300 */  subu       $v0, $v0, $v1
    /* 3EC9188 8007E3EC 80100200 */  sll        $v0, $v0, 2
    /* 3EC918C 8007E3F0 21104300 */  addu       $v0, $v0, $v1
    /* 3EC9190 8007E3F4 43120200 */  sra        $v0, $v0, 9
    /* 3EC9194 8007E3F8 736F000C */  jal        func_8001BDCC
    /* 3EC9198 8007E3FC 1400A2AF */   sw        $v0, 0x14($sp)
    /* 3EC919C 8007E400 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_61_8007E404:
    /* 3EC91A0 8007E404 EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC91A4 8007E408 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_61_8007E40C:
    /* 3EC91A8 8007E40C 6C6F000C */  jal        func_8001BDB0
    /* 3EC91AC 8007E410 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3EC91B0 8007E414 0E05010C */  jal        func_80041438
    /* 3EC91B4 8007E418 21206002 */   addu      $a0, $s3, $zero
    /* 3EC91B8 8007E41C 003F023C */  lui        $v0, (0x3F005080 >> 16)
    /* 3EC91BC 8007E420 80504234 */  ori        $v0, $v0, (0x3F005080 & 0xFFFF)
    /* 3EC91C0 8007E424 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 3EC91C4 8007E428 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 3EC91C8 8007E42C 40000424 */  addiu      $a0, $zero, 0x40
    /* 3EC91CC 8007E430 4F0064A2 */  sb         $a0, 0x4F($s3)
    /* 3EC91D0 8007E434 540062AE */  sw         $v0, 0x54($s3)
    /* 3EC91D4 8007E438 001C0300 */  sll        $v1, $v1, 16
    /* 3EC91D8 8007E43C 031D0300 */  sra        $v1, $v1, 20
    /* 3EC91DC 8007E440 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 3EC91E0 8007E444 EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC91E4 8007E448 460063A2 */   sb        $v1, 0x46($s3)
  .Llevel_61_8007E44C:
    /* 3EC91E8 8007E44C 0E05010C */  jal        func_80041438
    /* 3EC91EC 8007E450 21206002 */   addu      $a0, $s3, $zero
    /* 3EC91F0 8007E454 02000224 */  addiu      $v0, $zero, 0x2
    /* 3EC91F4 8007E458 0E00A012 */  beqz       $s5, .Llevel_61_8007E494
    /* 3EC91F8 8007E45C 540062A2 */   sb        $v0, 0x54($s3)
    /* 3EC91FC 8007E460 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3EC9200 8007E464 0000628E */  lw         $v0, 0x0($s3)
    /* 3EC9204 8007E468 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 3EC9208 8007E46C 6C6F000C */  jal        func_8001BDB0
    /* 3EC920C 8007E470 000055AC */   sw        $s5, 0x0($v0)
    /* 3EC9210 8007E474 0A000224 */  addiu      $v0, $zero, 0xA
    /* 3EC9214 8007E478 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 3EC9218 8007E47C 1400628E */  lw         $v0, 0x14($s3)
    /* 3EC921C 8007E480 08000324 */  addiu      $v1, $zero, 0x8
    /* 3EC9220 8007E484 4C0063A2 */  sb         $v1, 0x4C($s3)
    /* 3EC9224 8007E488 00044224 */  addiu      $v0, $v0, 0x400
    /* 3EC9228 8007E48C EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC922C 8007E490 140062AE */   sw        $v0, 0x14($s3)
  .Llevel_61_8007E494:
    /* 3EC9230 8007E494 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3EC9234 8007E498 EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC9238 8007E49C 1C0062AE */   sw        $v0, 0x1C($s3)
  .Llevel_61_8007E4A0:
    /* 3EC923C 8007E4A0 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3EC9240 8007E4A4 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 3EC9244 8007E4A8 0000748E */  lw         $s4, 0x0($s3)
    /* 3EC9248 8007E4AC 20000224 */  addiu      $v0, $zero, 0x20
    /* 3EC924C 8007E4B0 6C6F000C */  jal        func_8001BDB0
    /* 3EC9250 8007E4B4 4C0062A2 */   sb        $v0, 0x4C($s3)
    /* 3EC9254 8007E4B8 0E05010C */  jal        func_80041438
    /* 3EC9258 8007E4BC 21206002 */   addu      $a0, $s3, $zero
    /* 3EC925C 8007E4C0 4B67010C */  jal        func_80059D2C
    /* 3EC9260 8007E4C4 00000000 */   nop
    /* 3EC9264 8007E4C8 4B67010C */  jal        func_80059D2C
    /* 3EC9268 8007E4CC FF0F5230 */   andi      $s2, $v0, 0xFFF
    /* 3EC926C 8007E4D0 FF075130 */  andi       $s1, $v0, 0x7FF
    /* 3EC9270 8007E4D4 996D000C */  jal        func_8001B664
    /* 3EC9274 8007E4D8 21202002 */   addu      $a0, $s1, $zero
    /* 3EC9278 8007E4DC 21204002 */  addu       $a0, $s2, $zero
    /* 3EC927C 8007E4E0 996D000C */  jal        func_8001B664
    /* 3EC9280 8007E4E4 21804000 */   addu      $s0, $v0, $zero
    /* 3EC9284 8007E4E8 18000202 */  mult       $s0, $v0
    /* 3EC9288 8007E4EC 12400000 */  mflo       $t0
    /* 3EC928C 8007E4F0 4900A292 */  lbu        $v0, 0x49($s5)
    /* 3EC9290 8007E4F4 00000000 */  nop
    /* 3EC9294 8007E4F8 18000201 */  mult       $t0, $v0
    /* 3EC9298 8007E4FC 21202002 */  addu       $a0, $s1, $zero
    /* 3EC929C 8007E500 12400000 */  mflo       $t0
    /* 3EC92A0 8007E504 03160800 */  sra        $v0, $t0, 24
    /* 3EC92A4 8007E508 996D000C */  jal        func_8001B664
    /* 3EC92A8 8007E50C 000082A6 */   sh        $v0, 0x0($s4)
    /* 3EC92AC 8007E510 21204002 */  addu       $a0, $s2, $zero
    /* 3EC92B0 8007E514 876D000C */  jal        func_8001B61C
    /* 3EC92B4 8007E518 21804000 */   addu      $s0, $v0, $zero
    /* 3EC92B8 8007E51C 18000202 */  mult       $s0, $v0
    /* 3EC92BC 8007E520 12400000 */  mflo       $t0
    /* 3EC92C0 8007E524 4900A292 */  lbu        $v0, 0x49($s5)
    /* 3EC92C4 8007E528 00000000 */  nop
    /* 3EC92C8 8007E52C 18000201 */  mult       $t0, $v0
    /* 3EC92CC 8007E530 21202002 */  addu       $a0, $s1, $zero
    /* 3EC92D0 8007E534 12400000 */  mflo       $t0
    /* 3EC92D4 8007E538 03160800 */  sra        $v0, $t0, 24
    /* 3EC92D8 8007E53C 876D000C */  jal        func_8001B61C
    /* 3EC92DC 8007E540 020082A6 */   sh        $v0, 0x2($s4)
    /* 3EC92E0 8007E544 4900A392 */  lbu        $v1, 0x49($s5)
    /* 3EC92E4 8007E548 00000000 */  nop
    /* 3EC92E8 8007E54C 18004300 */  mult       $v0, $v1
    /* 3EC92EC 8007E550 12400000 */  mflo       $t0
    /* 3EC92F0 8007E554 03130800 */  sra        $v0, $t0, 12
    /* 3EC92F4 8007E558 040082A6 */  sh         $v0, 0x4($s4)
    /* 3EC92F8 8007E55C 1800A28E */  lw         $v0, 0x18($s5)
    /* 3EC92FC 8007E560 0200033C */  lui        $v1, (0x20000 >> 16)
    /* 3EC9300 8007E564 24104300 */  and        $v0, $v0, $v1
    /* 3EC9304 8007E568 14004010 */  beqz       $v0, .Llevel_61_8007E5BC
    /* 3EC9308 8007E56C 04000224 */   addiu     $v0, $zero, 0x4
    /* 3EC930C 8007E570 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 3EC9310 8007E574 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 3EC9314 8007E578 00000000 */  nop
    /* 3EC9318 8007E57C 03006210 */  beq        $v1, $v0, .Llevel_61_8007E58C
    /* 3EC931C 8007E580 0C000224 */   addiu     $v0, $zero, 0xC
    /* 3EC9320 8007E584 0D006214 */  bne        $v1, $v0, .Llevel_61_8007E5BC
    /* 3EC9324 8007E588 00000000 */   nop
  .Llevel_61_8007E58C:
    /* 3EC9328 8007E58C 0780023C */  lui        $v0, %hi(D_8006A084)
    /* 3EC932C 8007E590 84A0428C */  lw         $v0, %lo(D_8006A084)($v0)
    /* 3EC9330 8007E594 00008396 */  lhu        $v1, 0x0($s4)
    /* 3EC9334 8007E598 83110200 */  sra        $v0, $v0, 6
    /* 3EC9338 8007E59C 21186200 */  addu       $v1, $v1, $v0
    /* 3EC933C 8007E5A0 000083A6 */  sh         $v1, 0x0($s4)
    /* 3EC9340 8007E5A4 0780023C */  lui        $v0, %hi(D_8006A088)
    /* 3EC9344 8007E5A8 88A0428C */  lw         $v0, %lo(D_8006A088)($v0)
    /* 3EC9348 8007E5AC 02008396 */  lhu        $v1, 0x2($s4)
    /* 3EC934C 8007E5B0 83110200 */  sra        $v0, $v0, 6
    /* 3EC9350 8007E5B4 21186200 */  addu       $v1, $v1, $v0
    /* 3EC9354 8007E5B8 020083A6 */  sh         $v1, 0x2($s4)
  .Llevel_61_8007E5BC:
    /* 3EC9358 8007E5BC 5100A492 */  lbu        $a0, 0x51($s5)
    /* 3EC935C 8007E5C0 00000000 */  nop
    /* 3EC9360 8007E5C4 26008010 */  beqz       $a0, .Llevel_61_8007E660
    /* 3EC9364 8007E5C8 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 3EC9368 8007E5CC 1800A28E */  lw         $v0, 0x18($s5)
    /* 3EC936C 8007E5D0 00000000 */  nop
    /* 3EC9370 8007E5D4 24104300 */  and        $v0, $v0, $v1
    /* 3EC9374 8007E5D8 21004010 */  beqz       $v0, .Llevel_61_8007E660
    /* 3EC9378 8007E5DC 40100400 */   sll       $v0, $a0, 1
    /* 3EC937C 8007E5E0 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3EC9380 8007E5E4 21082200 */  addu       $at, $at, $v0
    /* 3EC9384 8007E5E8 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 3EC9388 8007E5EC 00000000 */  nop
    /* 3EC938C 8007E5F0 80100300 */  sll        $v0, $v1, 2
    /* 3EC9390 8007E5F4 21104300 */  addu       $v0, $v0, $v1
    /* 3EC9394 8007E5F8 00190200 */  sll        $v1, $v0, 4
    /* 3EC9398 8007E5FC 23186200 */  subu       $v1, $v1, $v0
    /* 3EC939C 8007E600 00008296 */  lhu        $v0, 0x0($s4)
    /* 3EC93A0 8007E604 C31A0300 */  sra        $v1, $v1, 11
    /* 3EC93A4 8007E608 21104300 */  addu       $v0, $v0, $v1
    /* 3EC93A8 8007E60C 000082A6 */  sh         $v0, 0x0($s4)
    /* 3EC93AC 8007E610 5100A292 */  lbu        $v0, 0x51($s5)
    /* 3EC93B0 8007E614 28000424 */  addiu      $a0, $zero, 0x28
    /* 3EC93B4 8007E618 40100200 */  sll        $v0, $v0, 1
    /* 3EC93B8 8007E61C 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3EC93BC 8007E620 21082200 */  addu       $at, $at, $v0
    /* 3EC93C0 8007E624 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 3EC93C4 8007E628 46000524 */  addiu      $a1, $zero, 0x46
    /* 3EC93C8 8007E62C 80100300 */  sll        $v0, $v1, 2
    /* 3EC93CC 8007E630 21104300 */  addu       $v0, $v0, $v1
    /* 3EC93D0 8007E634 00190200 */  sll        $v1, $v0, 4
    /* 3EC93D4 8007E638 23186200 */  subu       $v1, $v1, $v0
    /* 3EC93D8 8007E63C 02008296 */  lhu        $v0, 0x2($s4)
    /* 3EC93DC 8007E640 C31A0300 */  sra        $v1, $v1, 11
    /* 3EC93E0 8007E644 21104300 */  addu       $v0, $v0, $v1
    /* 3EC93E4 8007E648 47E2000C */  jal        func_8003891C
    /* 3EC93E8 8007E64C 020082A6 */   sh        $v0, 0x2($s4)
    /* 3EC93EC 8007E650 04008396 */  lhu        $v1, 0x4($s4)
    /* 3EC93F0 8007E654 00000000 */  nop
    /* 3EC93F4 8007E658 21186200 */  addu       $v1, $v1, $v0
    /* 3EC93F8 8007E65C 040083A6 */  sh         $v1, 0x4($s4)
  .Llevel_61_8007E660:
    /* 3EC93FC 8007E660 00008286 */  lh         $v0, 0x0($s4)
    /* 3EC9400 8007E664 0C00638E */  lw         $v1, 0xC($s3)
    /* 3EC9404 8007E668 80100200 */  sll        $v0, $v0, 2
    /* 3EC9408 8007E66C 21186200 */  addu       $v1, $v1, $v0
    /* 3EC940C 8007E670 0C0063AE */  sw         $v1, 0xC($s3)
    /* 3EC9410 8007E674 02008286 */  lh         $v0, 0x2($s4)
    /* 3EC9414 8007E678 1000638E */  lw         $v1, 0x10($s3)
    /* 3EC9418 8007E67C 80100200 */  sll        $v0, $v0, 2
    /* 3EC941C 8007E680 21186200 */  addu       $v1, $v1, $v0
    /* 3EC9420 8007E684 100063AE */  sw         $v1, 0x10($s3)
    /* 3EC9424 8007E688 04008286 */  lh         $v0, 0x4($s4)
    /* 3EC9428 8007E68C 1400638E */  lw         $v1, 0x14($s3)
    /* 3EC942C 8007E690 80100200 */  sll        $v0, $v0, 2
    /* 3EC9430 8007E694 21186200 */  addu       $v1, $v1, $v0
    /* 3EC9434 8007E698 4B67010C */  jal        func_80059D2C
    /* 3EC9438 8007E69C 140063AE */   sw        $v1, 0x14($s3)
    /* 3EC943C 8007E6A0 4B67010C */  jal        func_80059D2C
    /* 3EC9440 8007E6A4 450062A2 */   sb        $v0, 0x45($s3)
    /* 3EC9444 8007E6A8 4B67010C */  jal        func_80059D2C
    /* 3EC9448 8007E6AC 460062A2 */   sb        $v0, 0x46($s3)
    /* 3EC944C 8007E6B0 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3EC9450 8007E6B4 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3EC9454 8007E6B8 4B67010C */  jal        func_80059D2C
    /* 3EC9458 8007E6BC 060082A6 */   sh        $v0, 0x6($s4)
    /* 3EC945C 8007E6C0 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3EC9460 8007E6C4 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3EC9464 8007E6C8 4B67010C */  jal        func_80059D2C
    /* 3EC9468 8007E6CC 080082A6 */   sh        $v0, 0x8($s4)
    /* 3EC946C 8007E6D0 32000424 */  addiu      $a0, $zero, 0x32
    /* 3EC9470 8007E6D4 1F004230 */  andi       $v0, $v0, 0x1F
    /* 3EC9474 8007E6D8 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 3EC9478 8007E6DC 0A0082A6 */  sh         $v0, 0xA($s4)
    /* 3EC947C 8007E6E0 1400A28E */  lw         $v0, 0x14($s5)
    /* 3EC9480 8007E6E4 50000524 */  addiu      $a1, $zero, 0x50
    /* 3EC9484 8007E6E8 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 3EC9488 8007E6EC 47E2000C */  jal        func_8003891C
    /* 3EC948C 8007E6F0 100082AE */   sw        $v0, 0x10($s4)
    /* 3EC9490 8007E6F4 EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC9494 8007E6F8 0C0082AE */   sw        $v0, 0xC($s4)
  .Llevel_61_8007E6FC:
    /* 3EC9498 8007E6FC 0000708E */  lw         $s0, 0x0($s3)
    /* 3EC949C 8007E700 6C6F000C */  jal        func_8001BDB0
    /* 3EC94A0 8007E704 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3EC94A4 8007E708 0E05010C */  jal        func_80041438
    /* 3EC94A8 8007E70C 21206002 */   addu      $a0, $s3, $zero
    /* 3EC94AC 8007E710 10000224 */  addiu      $v0, $zero, 0x10
    /* 3EC94B0 8007E714 3B000324 */  addiu      $v1, $zero, 0x3B
    /* 3EC94B4 8007E718 000002A6 */  sh         $v0, 0x0($s0)
    /* 3EC94B8 8007E71C 80000224 */  addiu      $v0, $zero, 0x80
    /* 3EC94BC 8007E720 570063A2 */  sb         $v1, 0x57($s3)
    /* 3EC94C0 8007E724 540062A2 */  sb         $v0, 0x54($s3)
    /* 3EC94C4 8007E728 550062A2 */  sb         $v0, 0x55($s3)
    /* 3EC94C8 8007E72C 560060A2 */  sb         $zero, 0x56($s3)
    /* 3EC94CC 8007E730 3600A486 */  lh         $a0, 0x36($s5)
    /* 3EC94D0 8007E734 98010224 */  addiu      $v0, $zero, 0x198
    /* 3EC94D4 8007E738 04008210 */  beq        $a0, $v0, .Llevel_61_8007E74C
    /* 3EC94D8 8007E73C 01000224 */   addiu     $v0, $zero, 0x1
    /* 3EC94DC 8007E740 C2020224 */  addiu      $v0, $zero, 0x2C2
    /* 3EC94E0 8007E744 05008214 */  bne        $a0, $v0, .Llevel_61_8007E75C
    /* 3EC94E4 8007E748 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_61_8007E74C:
    /* 3EC94E8 8007E74C 020002A2 */  sb         $v0, 0x2($s0)
    /* 3EC94EC 8007E750 030002A2 */  sb         $v0, 0x3($s0)
    /* 3EC94F0 8007E754 E5F90108 */  j          .Llevel_61_8007E794
    /* 3EC94F4 8007E758 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_61_8007E75C:
    /* 3EC94F8 8007E75C 70020224 */  addiu      $v0, $zero, 0x270
    /* 3EC94FC 8007E760 0A008214 */  bne        $a0, $v0, .Llevel_61_8007E78C
    /* 3EC9500 8007E764 60000224 */   addiu     $v0, $zero, 0x60
    /* 3EC9504 8007E768 02000224 */  addiu      $v0, $zero, 0x2
    /* 3EC9508 8007E76C 020002A2 */  sb         $v0, 0x2($s0)
    /* 3EC950C 8007E770 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 3EC9510 8007E774 540062A2 */  sb         $v0, 0x54($s3)
    /* 3EC9514 8007E778 550062A2 */  sb         $v0, 0x55($s3)
    /* 3EC9518 8007E77C 560062A2 */  sb         $v0, 0x56($s3)
    /* 3EC951C 8007E780 60000224 */  addiu      $v0, $zero, 0x60
    /* 3EC9520 8007E784 E4F90108 */  j          .Llevel_61_8007E790
    /* 3EC9524 8007E788 570063A2 */   sb        $v1, 0x57($s3)
  .Llevel_61_8007E78C:
    /* 3EC9528 8007E78C 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_61_8007E790:
    /* 3EC952C 8007E790 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_61_8007E794:
    /* 3EC9530 8007E794 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 3EC9534 8007E798 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3EC9538 8007E79C 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* 3EC953C 8007E7A0 AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* 3EC9540 8007E7A4 21280002 */  addu       $a1, $s0, $zero
    /* 3EC9544 8007E7A8 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 3EC9548 8007E7AC DB6F000C */  jal        func_8001BF6C
    /* 3EC954C 8007E7B0 470062A2 */   sb        $v0, 0x47($s3)
    /* 3EC9550 8007E7B4 21204000 */  addu       $a0, $v0, $zero
    /* 3EC9554 8007E7B8 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* 3EC9558 8007E7BC B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* 3EC955C 8007E7C0 1400658E */  lw         $a1, 0x14($s3)
    /* 3EC9560 8007E7C4 21300000 */  addu       $a2, $zero, $zero
    /* 3EC9564 8007E7C8 2E6D000C */  jal        func_8001B4B8
    /* 3EC9568 8007E7CC 23284500 */   subu      $a1, $v0, $a1
    /* 3EC956C 8007E7D0 21300000 */  addu       $a2, $zero, $zero
    /* 3EC9570 8007E7D4 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 3EC9574 8007E7D8 450062A2 */  sb         $v0, 0x45($s3)
    /* 3EC9578 8007E7DC 0000038E */  lw         $v1, 0x0($s0)
    /* 3EC957C 8007E7E0 0C00648E */  lw         $a0, 0xC($s3)
    /* 3EC9580 8007E7E4 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* 3EC9584 8007E7E8 B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* 3EC9588 8007E7EC 1000658E */  lw         $a1, 0x10($s3)
    /* 3EC958C 8007E7F0 23206400 */  subu       $a0, $v1, $a0
    /* 3EC9590 8007E7F4 2E6D000C */  jal        func_8001B4B8
    /* 3EC9594 8007E7F8 23284500 */   subu      $a1, $v0, $a1
    /* 3EC9598 8007E7FC EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC959C 8007E800 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_61_8007E804:
    /* 3EC95A0 8007E804 0000708E */  lw         $s0, 0x0($s3)
    /* 3EC95A4 8007E808 6C6F000C */  jal        func_8001BDB0
    /* 3EC95A8 8007E80C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3EC95AC 8007E810 0E05010C */  jal        func_80041438
    /* 3EC95B0 8007E814 21206002 */   addu      $a0, $s3, $zero
    /* 3EC95B4 8007E818 10000224 */  addiu      $v0, $zero, 0x10
    /* 3EC95B8 8007E81C 000002AE */  sw         $v0, 0x0($s0)
    /* 3EC95BC 8007E820 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 3EC95C0 8007E824 570062A2 */  sb         $v0, 0x57($s3)
    /* 3EC95C4 8007E828 80000224 */  addiu      $v0, $zero, 0x80
    /* 3EC95C8 8007E82C 540062A2 */  sb         $v0, 0x54($s3)
    /* 3EC95CC 8007E830 40000224 */  addiu      $v0, $zero, 0x40
    /* 3EC95D0 8007E834 550062A2 */  sb         $v0, 0x55($s3)
    /* 3EC95D4 8007E838 4B67010C */  jal        func_80059D2C
    /* 3EC95D8 8007E83C 560060A2 */   sb        $zero, 0x56($s3)
    /* 3EC95DC 8007E840 4B67010C */  jal        func_80059D2C
    /* 3EC95E0 8007E844 450062A2 */   sb        $v0, 0x45($s3)
    /* 3EC95E4 8007E848 460062A2 */  sb         $v0, 0x46($s3)
    /* 3EC95E8 8007E84C 46000224 */  addiu      $v0, $zero, 0x46
    /* 3EC95EC 8007E850 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 3EC95F0 8007E854 04000224 */  addiu      $v0, $zero, 0x4
    /* 3EC95F4 8007E858 EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC95F8 8007E85C 470062A2 */   sb        $v0, 0x47($s3)
  .Llevel_61_8007E860:
    /* 3EC95FC 8007E860 0000728E */  lw         $s2, 0x0($s3)
    /* 3EC9600 8007E864 0E05010C */  jal        func_80041438
    /* 3EC9604 8007E868 21206002 */   addu      $a0, $s3, $zero
    /* 3EC9608 8007E86C 40000224 */  addiu      $v0, $zero, 0x40
    /* 3EC960C 8007E870 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 3EC9610 8007E874 9C00A016 */  bnez       $s5, .Llevel_61_8007EAE8
    /* 3EC9614 8007E878 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* 3EC9618 8007E87C B8010224 */  addiu      $v0, $zero, 0x1B8
    /* 3EC961C 8007E880 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* 3EC9620 8007E884 D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* 3EC9624 8007E888 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3EC9628 8007E88C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3EC962C 8007E890 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3EC9630 8007E894 0000A38C */  lw         $v1, 0x0($a1)
    /* 3EC9634 8007E898 07000224 */  addiu      $v0, $zero, 0x7
    /* 3EC9638 8007E89C 25006214 */  bne        $v1, $v0, .Llevel_61_8007E934
    /* 3EC963C 8007E8A0 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3EC9640 8007E8A4 0C007026 */  addiu      $s0, $s3, 0xC
    /* 3EC9644 8007E8A8 21200002 */  addu       $a0, $s0, $zero
    /* 3EC9648 8007E8AC 6C6F000C */  jal        func_8001BDB0
    /* 3EC964C 8007E8B0 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 3EC9650 8007E8B4 4000A427 */  addiu      $a0, $sp, 0x40
    /* 3EC9654 8007E8B8 2000B127 */  addiu      $s1, $sp, 0x20
    /* 3EC9658 8007E8BC 21282002 */  addu       $a1, $s1, $zero
    /* 3EC965C 8007E8C0 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 3EC9660 8007E8C4 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 3EC9664 8007E8C8 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* 3EC9668 8007E8CC CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* 3EC966C 8007E8D0 21300000 */  addu       $a2, $zero, $zero
    /* 3EC9670 8007E8D4 4000A0A3 */  sb         $zero, 0x40($sp)
    /* 3EC9674 8007E8D8 02190300 */  srl        $v1, $v1, 4
    /* 3EC9678 8007E8DC 00140200 */  sll        $v0, $v0, 16
    /* 3EC967C 8007E8E0 03150200 */  sra        $v0, $v0, 20
    /* 3EC9680 8007E8E4 23100200 */  negu       $v0, $v0
    /* 3EC9684 8007E8E8 4100A2A3 */  sb         $v0, 0x41($sp)
    /* 3EC9688 8007E8EC B26D000C */  jal        func_8001B6C8
    /* 3EC968C 8007E8F0 4200A3A3 */   sb        $v1, 0x42($sp)
    /* 3EC9690 8007E8F4 21202002 */  addu       $a0, $s1, $zero
    /* 3EC9694 8007E8F8 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3EC9698 8007E8FC 696E000C */  jal        func_8001B9A4
    /* 3EC969C 8007E900 2130A000 */   addu      $a2, $a1, $zero
    /* 3EC96A0 8007E904 21200002 */  addu       $a0, $s0, $zero
    /* 3EC96A4 8007E908 21280002 */  addu       $a1, $s0, $zero
    /* 3EC96A8 8007E90C 736F000C */  jal        func_8001BDCC
    /* 3EC96AC 8007E910 1000A627 */   addiu     $a2, $sp, 0x10
    /* 3EC96B0 8007E914 21200002 */  addu       $a0, $s0, $zero
    /* 3EC96B4 8007E918 21280002 */  addu       $a1, $s0, $zero
    /* 3EC96B8 8007E91C 736F000C */  jal        func_8001BDCC
    /* 3EC96BC 8007E920 1000A627 */   addiu     $a2, $sp, 0x10
    /* 3EC96C0 8007E924 21200002 */  addu       $a0, $s0, $zero
    /* 3EC96C4 8007E928 21288000 */  addu       $a1, $a0, $zero
    /* 3EC96C8 8007E92C 75FA0108 */  j          .Llevel_61_8007E9D4
    /* 3EC96CC 8007E930 1000A627 */   addiu     $a2, $sp, 0x10
  .Llevel_61_8007E934:
    /* 3EC96D0 8007E934 6C6F000C */  jal        func_8001BDB0
    /* 3EC96D4 8007E938 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 3EC96D8 8007E93C 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 3EC96DC 8007E940 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 3EC96E0 8007E944 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 3EC96E4 8007E948 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 3EC96E8 8007E94C 6800A0A3 */  sb         $zero, 0x68($sp)
    /* 3EC96EC 8007E950 07004014 */  bnez       $v0, .Llevel_61_8007E970
    /* 3EC96F0 8007E954 6900A3A3 */   sb        $v1, 0x69($sp)
    /* 3EC96F4 8007E958 FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 3EC96F8 8007E95C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3EC96FC 8007E960 F900422C */  sltiu      $v0, $v0, 0xF9
    /* 3EC9700 8007E964 03004014 */  bnez       $v0, .Llevel_61_8007E974
    /* 3EC9704 8007E968 6800A427 */   addiu     $a0, $sp, 0x68
    /* 3EC9708 8007E96C 6900A0A3 */  sb         $zero, 0x69($sp)
  .Llevel_61_8007E970:
    /* 3EC970C 8007E970 6800A427 */  addiu      $a0, $sp, 0x68
  .Llevel_61_8007E974:
    /* 3EC9710 8007E974 4800B027 */  addiu      $s0, $sp, 0x48
    /* 3EC9714 8007E978 21280002 */  addu       $a1, $s0, $zero
    /* 3EC9718 8007E97C 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* 3EC971C 8007E980 FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* 3EC9720 8007E984 00002292 */  lbu        $v0, 0x0($s1)
    /* 3EC9724 8007E988 21300000 */  addu       $a2, $zero, $zero
    /* 3EC9728 8007E98C B26D000C */  jal        func_8001B6C8
    /* 3EC972C 8007E990 6A00A2A3 */   sb        $v0, 0x6A($sp)
    /* 3EC9730 8007E994 21200002 */  addu       $a0, $s0, $zero
    /* 3EC9734 8007E998 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3EC9738 8007E99C 696E000C */  jal        func_8001B9A4
    /* 3EC973C 8007E9A0 2130A000 */   addu      $a2, $a1, $zero
    /* 3EC9740 8007E9A4 21200002 */  addu       $a0, $s0, $zero
    /* 3EC9744 8007E9A8 0C007026 */  addiu      $s0, $s3, 0xC
    /* 3EC9748 8007E9AC 21280002 */  addu       $a1, $s0, $zero
    /* 3EC974C 8007E9B0 21300002 */  addu       $a2, $s0, $zero
    /* 3EC9750 8007E9B4 F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 3EC9754 8007E9B8 0C0062AE */  sw         $v0, 0xC($s3)
    /* 3EC9758 8007E9BC 100060AE */  sw         $zero, 0x10($s3)
    /* 3EC975C 8007E9C0 696E000C */  jal        func_8001B9A4
    /* 3EC9760 8007E9C4 140060AE */   sw        $zero, 0x14($s3)
    /* 3EC9764 8007E9C8 21200002 */  addu       $a0, $s0, $zero
    /* 3EC9768 8007E9CC 21288000 */  addu       $a1, $a0, $zero
    /* 3EC976C 8007E9D0 F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_61_8007E9D4:
    /* 3EC9770 8007E9D4 736F000C */  jal        func_8001BDCC
    /* 3EC9774 8007E9D8 00000000 */   nop
    /* 3EC9778 8007E9DC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3EC977C 8007E9E0 886E000C */  jal        func_8001BA20
    /* 3EC9780 8007E9E4 21280000 */   addu      $a1, $zero, $zero
    /* 3EC9784 8007E9E8 21204000 */  addu       $a0, $v0, $zero
    /* 3EC9788 8007E9EC 1800A58F */  lw         $a1, 0x18($sp)
    /* 3EC978C 8007E9F0 2E6D000C */  jal        func_8001B4B8
    /* 3EC9790 8007E9F4 21300000 */   addu      $a2, $zero, $zero
    /* 3EC9794 8007E9F8 450062A2 */  sb         $v0, 0x45($s3)
    /* 3EC9798 8007E9FC 1000A48F */  lw         $a0, 0x10($sp)
    /* 3EC979C 8007EA00 1400A58F */  lw         $a1, 0x14($sp)
    /* 3EC97A0 8007EA04 2E6D000C */  jal        func_8001B4B8
    /* 3EC97A4 8007EA08 21300000 */   addu      $a2, $zero, $zero
    /* 3EC97A8 8007EA0C 460062A2 */  sb         $v0, 0x46($s3)
    /* 3EC97AC 8007EA10 1000A28F */  lw         $v0, 0x10($sp)
    /* 3EC97B0 8007EA14 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 3EC97B4 8007EA18 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 3EC97B8 8007EA1C 0680043C */  lui        $a0, %hi(D_800670BC)
    /* 3EC97BC 8007EA20 BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* 3EC97C0 8007EA24 000042A6 */  sh         $v0, 0x0($s2)
    /* 3EC97C4 8007EA28 1400A28F */  lw         $v0, 0x14($sp)
    /* 3EC97C8 8007EA2C 00000000 */  nop
    /* 3EC97CC 8007EA30 020042A6 */  sh         $v0, 0x2($s2)
    /* 3EC97D0 8007EA34 1800A28F */  lw         $v0, 0x18($sp)
    /* 3EC97D4 8007EA38 00000000 */  nop
    /* 3EC97D8 8007EA3C 040042A6 */  sh         $v0, 0x4($s2)
    /* 3EC97DC 8007EA40 2B106400 */  sltu       $v0, $v1, $a0
    /* 3EC97E0 8007EA44 0A004010 */  beqz       $v0, .Llevel_61_8007EA70
    /* 3EC97E4 8007EA48 44010524 */   addiu     $a1, $zero, 0x144
    /* 3EC97E8 8007EA4C 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_61_8007EA50:
    /* 3EC97EC 8007EA50 36006284 */  lh         $v0, 0x36($v1)
    /* 3EC97F0 8007EA54 00000000 */  nop
    /* 3EC97F4 8007EA58 05004610 */  beq        $v0, $a2, .Llevel_61_8007EA70
    /* 3EC97F8 8007EA5C 00000000 */   nop
    /* 3EC97FC 8007EA60 58006324 */  addiu      $v1, $v1, 0x58
    /* 3EC9800 8007EA64 2B106400 */  sltu       $v0, $v1, $a0
    /* 3EC9804 8007EA68 F9FF4014 */  bnez       $v0, .Llevel_61_8007EA50
    /* 3EC9808 8007EA6C 00000000 */   nop
  .Llevel_61_8007EA70:
    /* 3EC980C 8007EA70 13006010 */  beqz       $v1, .Llevel_61_8007EAC0
    /* 3EC9810 8007EA74 40100500 */   sll       $v0, $a1, 1
    /* 3EC9814 8007EA78 0000678C */  lw         $a3, 0x0($v1)
    /* 3EC9818 8007EA7C 21104500 */  addu       $v0, $v0, $a1
    /* 3EC981C 8007EA80 0000E38C */  lw         $v1, 0x0($a3)
    /* 3EC9820 8007EA84 40100200 */  sll        $v0, $v0, 1
    /* 3EC9824 8007EA88 21186500 */  addu       $v1, $v1, $a1
    /* 3EC9828 8007EA8C 0000E3AC */  sw         $v1, 0x0($a3)
    /* 3EC982C 8007EA90 2A186200 */  slt        $v1, $v1, $v0
    /* 3EC9830 8007EA94 02006014 */  bnez       $v1, .Llevel_61_8007EAA0
    /* 3EC9834 8007EA98 10004426 */   addiu     $a0, $s2, 0x10
    /* 3EC9838 8007EA9C 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_61_8007EAA0:
    /* 3EC983C 8007EAA0 0400E524 */  addiu      $a1, $a3, 0x4
    /* 3EC9840 8007EAA4 0000E28C */  lw         $v0, 0x0($a3)
    /* 3EC9844 8007EAA8 08000624 */  addiu      $a2, $zero, 0x8
    /* 3EC9848 8007EAAC 0C004224 */  addiu      $v0, $v0, 0xC
    /* 3EC984C 8007EAB0 2110E200 */  addu       $v0, $a3, $v0
    /* 3EC9850 8007EAB4 080042AE */  sw         $v0, 0x8($s2)
    /* 3EC9854 8007EAB8 036D000C */  jal        func_8001B40C
    /* 3EC9858 8007EABC 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_61_8007EAC0:
    /* 3EC985C 8007EAC0 21206002 */  addu       $a0, $s3, $zero
    /* 3EC9860 8007EAC4 21280000 */  addu       $a1, $zero, $zero
    /* 3EC9864 8007EAC8 21300000 */  addu       $a2, $zero, $zero
    /* 3EC9868 8007EACC 6E000224 */  addiu      $v0, $zero, 0x6E
    /* 3EC986C 8007EAD0 070042A2 */  sb         $v0, 0x7($s2)
    /* 3EC9870 8007EAD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 3EC9874 8007EAD8 9241010C */  jal        func_80050648
    /* 3EC9878 8007EADC 4B0062A2 */   sb        $v0, 0x4B($s3)
    /* 3EC987C 8007EAE0 EEFA0108 */  j          .Llevel_61_8007EBB8
    /* 3EC9880 8007EAE4 21106002 */   addu      $v0, $s3, $zero
  .Llevel_61_8007EAE8:
    /* 3EC9884 8007EAE8 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3EC9888 8007EAEC 6C6F000C */  jal        func_8001BDB0
    /* 3EC988C 8007EAF0 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3EC9890 8007EAF4 30000224 */  addiu      $v0, $zero, 0x30
    /* 3EC9894 8007EAF8 070042A2 */  sb         $v0, 0x7($s2)
    /* 3EC9898 8007EAFC 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 3EC989C 8007EB00 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 3EC98A0 8007EB04 07004392 */  lbu        $v1, 0x7($s2)
    /* 3EC98A4 8007EB08 00000000 */  nop
    /* 3EC98A8 8007EB0C 40100300 */  sll        $v0, $v1, 1
    /* 3EC98AC 8007EB10 21104300 */  addu       $v0, $v0, $v1
    /* 3EC98B0 8007EB14 43100200 */  sra        $v0, $v0, 1
    /* 3EC98B4 8007EB18 540062A2 */  sb         $v0, 0x54($s3)
    /* 3EC98B8 8007EB1C 07004392 */  lbu        $v1, 0x7($s2)
    /* 3EC98BC 8007EB20 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 3EC98C0 8007EB24 560060A2 */  sb         $zero, 0x56($s3)
    /* 3EC98C4 8007EB28 570062A2 */  sb         $v0, 0x57($s3)
    /* 3EC98C8 8007EB2C EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC98CC 8007EB30 550063A2 */   sb        $v1, 0x55($s3)
  .Llevel_61_8007EB34:
    /* 3EC98D0 8007EB34 0C006426 */  addiu      $a0, $s3, 0xC
    /* 3EC98D4 8007EB38 0000708E */  lw         $s0, 0x0($s3)
    /* 3EC98D8 8007EB3C 6C6F000C */  jal        func_8001BDB0
    /* 3EC98DC 8007EB40 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 3EC98E0 8007EB44 0E05010C */  jal        func_80041438
    /* 3EC98E4 8007EB48 21206002 */   addu      $a0, $s3, $zero
    /* 3EC98E8 8007EB4C 18000224 */  addiu      $v0, $zero, 0x18
    /* 3EC98EC 8007EB50 000002AE */  sw         $v0, 0x0($s0)
    /* 3EC98F0 8007EB54 30000224 */  addiu      $v0, $zero, 0x30
    /* 3EC98F4 8007EB58 570062A2 */  sb         $v0, 0x57($s3)
    /* 3EC98F8 8007EB5C 64000224 */  addiu      $v0, $zero, 0x64
    /* 3EC98FC 8007EB60 540060A2 */  sb         $zero, 0x54($s3)
    /* 3EC9900 8007EB64 550060A2 */  sb         $zero, 0x55($s3)
    /* 3EC9904 8007EB68 560060A2 */  sb         $zero, 0x56($s3)
    /* 3EC9908 8007EB6C 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 3EC990C 8007EB70 4B67010C */  jal        func_80059D2C
    /* 3EC9910 8007EB74 470060A2 */   sb        $zero, 0x47($s3)
    /* 3EC9914 8007EB78 4B67010C */  jal        func_80059D2C
    /* 3EC9918 8007EB7C 450062A2 */   sb        $v0, 0x45($s3)
    /* 3EC991C 8007EB80 EDFA0108 */  j          .Llevel_61_8007EBB4
    /* 3EC9920 8007EB84 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_61_8007EB88:
    /* 3EC9924 8007EB88 0300A012 */  beqz       $s5, .Llevel_61_8007EB98
    /* 3EC9928 8007EB8C 0C006426 */   addiu     $a0, $s3, 0xC
    /* 3EC992C 8007EB90 E8FA0108 */  j          .Llevel_61_8007EBA0
    /* 3EC9930 8007EB94 0C00A526 */   addiu     $a1, $s5, 0xC
  .Llevel_61_8007EB98:
    /* 3EC9934 8007EB98 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 3EC9938 8007EB9C F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_61_8007EBA0:
    /* 3EC993C 8007EBA0 6C6F000C */  jal        func_8001BDB0
    /* 3EC9940 8007EBA4 00000000 */   nop
    /* 3EC9944 8007EBA8 21206002 */  addu       $a0, $s3, $zero
  .Llevel_61_8007EBAC:
    /* 3EC9948 8007EBAC 0E05010C */  jal        func_80041438
    /* 3EC994C 8007EBB0 00000000 */   nop
  .Llevel_61_8007EBB4:
    /* 3EC9950 8007EBB4 21106002 */  addu       $v0, $s3, $zero
  .Llevel_61_8007EBB8:
    /* 3EC9954 8007EBB8 9800BF8F */  lw         $ra, 0x98($sp)
    /* 3EC9958 8007EBBC 9400B78F */  lw         $s7, 0x94($sp)
    /* 3EC995C 8007EBC0 9000B68F */  lw         $s6, 0x90($sp)
    /* 3EC9960 8007EBC4 8C00B58F */  lw         $s5, 0x8C($sp)
    /* 3EC9964 8007EBC8 8800B48F */  lw         $s4, 0x88($sp)
    /* 3EC9968 8007EBCC 8400B38F */  lw         $s3, 0x84($sp)
    /* 3EC996C 8007EBD0 8000B28F */  lw         $s2, 0x80($sp)
    /* 3EC9970 8007EBD4 7C00B18F */  lw         $s1, 0x7C($sp)
    /* 3EC9974 8007EBD8 7800B08F */  lw         $s0, 0x78($sp)
    /* 3EC9978 8007EBDC A000BD27 */  addiu      $sp, $sp, 0xA0
    /* 3EC997C 8007EBE0 0800E003 */  jr         $ra
    /* 3EC9980 8007EBE4 00000000 */   nop
endlabel func_level_61_8007DC98
