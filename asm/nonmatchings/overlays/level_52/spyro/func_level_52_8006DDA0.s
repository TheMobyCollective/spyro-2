.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8006DDA0, 0x218

glabel func_level_52_8006DDA0
    /* 3B00B3C 8006DDA0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3B00B40 8006DDA4 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 3B00B44 8006DDA8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3B00B48 8006DDAC 47008210 */  beq        $a0, $v0, .Llevel_52_8006DECC
    /* 3B00B4C 8006DDB0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3B00B50 8006DDB4 1E008228 */  slti       $v0, $a0, 0x1E
    /* 3B00B54 8006DDB8 05004010 */  beqz       $v0, .Llevel_52_8006DDD0
    /* 3B00B58 8006DDBC 12000224 */   addiu     $v0, $zero, 0x12
    /* 3B00B5C 8006DDC0 0A008210 */  beq        $a0, $v0, .Llevel_52_8006DDEC
    /* 3B00B60 8006DDC4 00000000 */   nop
    /* 3B00B64 8006DDC8 E9B70108 */  j          .Llevel_52_8006DFA4
    /* 3B00B68 8006DDCC 00000000 */   nop
  .Llevel_52_8006DDD0:
    /* 3B00B6C 8006DDD0 35000224 */  addiu      $v0, $zero, 0x35
    /* 3B00B70 8006DDD4 6A008210 */  beq        $a0, $v0, .Llevel_52_8006DF80
    /* 3B00B74 8006DDD8 36000224 */   addiu     $v0, $zero, 0x36
    /* 3B00B78 8006DDDC 68008210 */  beq        $a0, $v0, .Llevel_52_8006DF80
    /* 3B00B7C 8006DDE0 00000000 */   nop
    /* 3B00B80 8006DDE4 E9B70108 */  j          .Llevel_52_8006DFA4
    /* 3B00B84 8006DDE8 00000000 */   nop
  .Llevel_52_8006DDEC:
    /* 3B00B88 8006DDEC 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 3B00B8C 8006DDF0 48A06324 */  addiu      $v1, $v1, %lo(D_8006A048)
    /* 3B00B90 8006DDF4 0780023C */  lui        $v0, %hi(D_8006A208)
    /* 3B00B94 8006DDF8 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* 3B00B98 8006DDFC 00000000 */  nop
    /* 3B00B9C 8006DE00 0000508C */  lw         $s0, 0x0($v0)
    /* 3B00BA0 8006DE04 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3B00BA4 8006DE08 000062AC */  sw         $v0, 0x0($v1)
    /* 3B00BA8 8006DE0C 0780013C */  lui        $at, %hi(D_8006A044)
    /* 3B00BAC 8006DE10 44A020AC */  sw         $zero, %lo(D_8006A044)($at)
    /* 3B00BB0 8006DE14 0780013C */  lui        $at, %hi(D_8006A1AC)
    /* 3B00BB4 8006DE18 ACA120A0 */  sb         $zero, %lo(D_8006A1AC)($at)
    /* 3B00BB8 8006DE1C 686F000C */  jal        func_8001BDA0
    /* 3B00BBC 8006DE20 3C006424 */   addiu     $a0, $v1, 0x3C
    /* 3B00BC0 8006DE24 0780053C */  lui        $a1, %hi(D_8006A208)
    /* 3B00BC4 8006DE28 08A2A58C */  lw         $a1, %lo(D_8006A208)($a1)
    /* 3B00BC8 8006DE2C 0780063C */  lui        $a2, %hi(D_8006A05C)
    /* 3B00BCC 8006DE30 5CA0C68C */  lw         $a2, %lo(D_8006A05C)($a2)
    /* 3B00BD0 8006DE34 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* 3B00BD4 8006DE38 F89F428C */  lw         $v0, %lo(D_80069FF8)($v0)
    /* 3B00BD8 8006DE3C 1400A38C */  lw         $v1, 0x14($a1)
    /* 3B00BDC 8006DE40 0000048E */  lw         $a0, 0x0($s0)
    /* 3B00BE0 8006DE44 0780013C */  lui        $at, %hi(D_8006A140)
    /* 3B00BE4 8006DE48 40A126AC */  sw         $a2, %lo(D_8006A140)($at)
    /* 3B00BE8 8006DE4C 0780013C */  lui        $at, %hi(D_8006A13C)
    /* 3B00BEC 8006DE50 3CA122AC */  sw         $v0, %lo(D_8006A13C)($at)
    /* 3B00BF0 8006DE54 21186400 */  addu       $v1, $v1, $a0
    /* 3B00BF4 8006DE58 0780013C */  lui        $at, %hi(D_8006A144)
    /* 3B00BF8 8006DE5C 44A123AC */  sw         $v1, %lo(D_8006A144)($at)
    /* 3B00BFC 8006DE60 23186200 */  subu       $v1, $v1, $v0
    /* 3B00C00 8006DE64 00F86324 */  addiu      $v1, $v1, -0x800
    /* 3B00C04 8006DE68 0780013C */  lui        $at, %hi(D_8006A14C)
    /* 3B00C08 8006DE6C 4CA123AC */  sw         $v1, %lo(D_8006A14C)($at)
    /* 3B00C0C 8006DE70 801A0300 */  sll        $v1, $v1, 10
    /* 3B00C10 8006DE74 831A0300 */  sra        $v1, $v1, 10
    /* 3B00C14 8006DE78 00046324 */  addiu      $v1, $v1, 0x400
    /* 3B00C18 8006DE7C 0780013C */  lui        $at, %hi(D_8006A148)
    /* 3B00C1C 8006DE80 48A123AC */  sw         $v1, %lo(D_8006A148)($at)
    /* 3B00C20 8006DE84 4600A290 */  lbu        $v0, 0x46($a1)
    /* 3B00C24 8006DE88 00000000 */  nop
    /* 3B00C28 8006DE8C 00110200 */  sll        $v0, $v0, 4
    /* 3B00C2C 8006DE90 23104600 */  subu       $v0, $v0, $a2
    /* 3B00C30 8006DE94 23104300 */  subu       $v0, $v0, $v1
    /* 3B00C34 8006DE98 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 3B00C38 8006DE9C 01086228 */  slti       $v0, $v1, 0x801
    /* 3B00C3C 8006DEA0 0780013C */  lui        $at, %hi(D_8006A148)
    /* 3B00C40 8006DEA4 48A123AC */  sw         $v1, %lo(D_8006A148)($at)
    /* 3B00C44 8006DEA8 03004014 */  bnez       $v0, .Llevel_52_8006DEB8
    /* 3B00C48 8006DEAC 00F06224 */   addiu     $v0, $v1, -0x1000
    /* 3B00C4C 8006DEB0 0780013C */  lui        $at, %hi(D_8006A148)
    /* 3B00C50 8006DEB4 48A122AC */  sw         $v0, %lo(D_8006A148)($at)
  .Llevel_52_8006DEB8:
    /* 3B00C54 8006DEB8 0400028E */  lw         $v0, 0x4($s0)
    /* 3B00C58 8006DEBC 0780013C */  lui        $at, %hi(D_8006A150)
    /* 3B00C5C 8006DEC0 50A122AC */  sw         $v0, %lo(D_8006A150)($at)
    /* 3B00C60 8006DEC4 E9B70108 */  j          .Llevel_52_8006DFA4
    /* 3B00C64 8006DEC8 00000000 */   nop
  .Llevel_52_8006DECC:
    /* 3B00C68 8006DECC 0780043C */  lui        $a0, %hi(D_8006A048)
    /* 3B00C6C 8006DED0 48A0848C */  lw         $a0, %lo(D_8006A048)($a0)
    /* 3B00C70 8006DED4 0780033C */  lui        $v1, %hi(D_8006A20C)
    /* 3B00C74 8006DED8 0CA2638C */  lw         $v1, %lo(D_8006A20C)($v1)
    /* 3B00C78 8006DEDC 07000224 */  addiu      $v0, $zero, 0x7
    /* 3B00C7C 8006DEE0 0780013C */  lui        $at, %hi(D_8006A048)
    /* 3B00C80 8006DEE4 48A022AC */  sw         $v0, %lo(D_8006A048)($at)
    /* 3B00C84 8006DEE8 0780023C */  lui        $v0, %hi(D_8006A210)
    /* 3B00C88 8006DEEC 10A2428C */  lw         $v0, %lo(D_8006A210)($v0)
    /* 3B00C8C 8006DEF0 0780013C */  lui        $at, %hi(D_8006A044)
    /* 3B00C90 8006DEF4 44A020AC */  sw         $zero, %lo(D_8006A044)($at)
    /* 3B00C94 8006DEF8 80190300 */  sll        $v1, $v1, 6
    /* 3B00C98 8006DEFC 0780013C */  lui        $at, %hi(D_8006A084)
    /* 3B00C9C 8006DF00 84A023AC */  sw         $v1, %lo(D_8006A084)($at)
    /* 3B00CA0 8006DF04 0780033C */  lui        $v1, %hi(D_8006A214)
    /* 3B00CA4 8006DF08 14A2638C */  lw         $v1, %lo(D_8006A214)($v1)
    /* 3B00CA8 8006DF0C 80110200 */  sll        $v0, $v0, 6
    /* 3B00CAC 8006DF10 0780013C */  lui        $at, %hi(D_8006A13C)
    /* 3B00CB0 8006DF14 3CA124AC */  sw         $a0, %lo(D_8006A13C)($at)
    /* 3B00CB4 8006DF18 0780013C */  lui        $at, %hi(D_8006A088)
    /* 3B00CB8 8006DF1C 88A022AC */  sw         $v0, %lo(D_8006A088)($at)
    /* 3B00CBC 8006DF20 03006014 */  bnez       $v1, .Llevel_52_8006DF30
    /* 3B00CC0 8006DF24 80110300 */   sll       $v0, $v1, 6
    /* 3B00CC4 8006DF28 0780023C */  lui        $v0, %hi(D_8006A098)
    /* 3B00CC8 8006DF2C 98A0428C */  lw         $v0, %lo(D_8006A098)($v0)
  .Llevel_52_8006DF30:
    /* 3B00CCC 8006DF30 0780013C */  lui        $at, %hi(D_8006A08C)
    /* 3B00CD0 8006DF34 8CA022AC */  sw         $v0, %lo(D_8006A08C)($at)
    /* 3B00CD4 8006DF38 C2B6000C */  jal        func_8002DB08
    /* 3B00CD8 8006DF3C 000C0424 */   addiu     $a0, $zero, 0xC00
    /* 3B00CDC 8006DF40 0680033C */  lui        $v1, %hi(D_800670FC)
    /* 3B00CE0 8006DF44 FC70638C */  lw         $v1, %lo(D_800670FC)($v1)
    /* 3B00CE4 8006DF48 01000224 */  addiu      $v0, $zero, 0x1
    /* 3B00CE8 8006DF4C 0780013C */  lui        $at, %hi(D_8006A1AC)
    /* 3B00CEC 8006DF50 ACA122A0 */  sb         $v0, %lo(D_8006A1AC)($at)
    /* 3B00CF0 8006DF54 0F000224 */  addiu      $v0, $zero, 0xF
    /* 3B00CF4 8006DF58 0780013C */  lui        $at, %hi(D_8006838C)
    /* 3B00CF8 8006DF5C 8C8322AC */  sw         $v0, %lo(D_8006838C)($at)
    /* 3B00CFC 8006DF60 10006010 */  beqz       $v1, .Llevel_52_8006DFA4
    /* 3B00D00 8006DF64 05000424 */   addiu     $a0, $zero, 0x5
    /* 3B00D04 8006DF68 0A000524 */  addiu      $a1, $zero, 0xA
    /* 3B00D08 8006DF6C 21300000 */  addu       $a2, $zero, $zero
    /* 3B00D0C 8006DF70 09F86000 */  jalr       $v1
    /* 3B00D10 8006DF74 21380000 */   addu      $a3, $zero, $zero
    /* 3B00D14 8006DF78 E9B70108 */  j          .Llevel_52_8006DFA4
    /* 3B00D18 8006DF7C 00000000 */   nop
  .Llevel_52_8006DF80:
    /* 3B00D1C 8006DF80 0780013C */  lui        $at, %hi(D_8006A048)
    /* 3B00D20 8006DF84 48A020AC */  sw         $zero, %lo(D_8006A048)($at)
    /* 3B00D24 8006DF88 0780013C */  lui        $at, %hi(D_8006A044)
    /* 3B00D28 8006DF8C 44A020AC */  sw         $zero, %lo(D_8006A044)($at)
    /* 3B00D2C 8006DF90 AFB8000C */  jal        func_8002E2BC
    /* 3B00D30 8006DF94 00000000 */   nop
    /* 3B00D34 8006DF98 01000224 */  addiu      $v0, $zero, 0x1
    /* 3B00D38 8006DF9C 0780013C */  lui        $at, %hi(D_8006A1AC)
    /* 3B00D3C 8006DFA0 ACA122A0 */  sb         $v0, %lo(D_8006A1AC)($at)
  .Llevel_52_8006DFA4:
    /* 3B00D40 8006DFA4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3B00D44 8006DFA8 1000B08F */  lw         $s0, 0x10($sp)
    /* 3B00D48 8006DFAC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3B00D4C 8006DFB0 0800E003 */  jr         $ra
    /* 3B00D50 8006DFB4 00000000 */   nop
endlabel func_level_52_8006DDA0
