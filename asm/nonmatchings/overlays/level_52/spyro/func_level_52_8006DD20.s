.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8006DD20, 0x80

glabel func_level_52_8006DD20
    /* 3B00ABC 8006DD20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3B00AC0 8006DD24 00210400 */  sll        $a0, $a0, 4
    /* 3B00AC4 8006DD28 0780023C */  lui        $v0, %hi(D_800683B0)
    /* 3B00AC8 8006DD2C B0834224 */  addiu      $v0, $v0, %lo(D_800683B0)
    /* 3B00ACC 8006DD30 21208200 */  addu       $a0, $a0, $v0
    /* 3B00AD0 8006DD34 0780033C */  lui        $v1, %hi(D_8006A040)
    /* 3B00AD4 8006DD38 40A0638C */  lw         $v1, %lo(D_8006A040)($v1)
    /* 3B00AD8 8006DD3C 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 3B00ADC 8006DD40 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3B00AE0 8006DD44 0680013C */  lui        $at, %hi(D_80066F38)
    /* 3B00AE4 8006DD48 386F24AC */  sw         $a0, %lo(D_80066F38)($at)
    /* 3B00AE8 8006DD4C 0C006210 */  beq        $v1, $v0, .Llevel_52_8006DD80
    /* 3B00AEC 8006DD50 1E006228 */   slti      $v0, $v1, 0x1E
    /* 3B00AF0 8006DD54 05004010 */  beqz       $v0, .Llevel_52_8006DD6C
    /* 3B00AF4 8006DD58 12000224 */   addiu     $v0, $zero, 0x12
    /* 3B00AF8 8006DD5C 0A006210 */  beq        $v1, $v0, .Llevel_52_8006DD88
    /* 3B00AFC 8006DD60 21200000 */   addu      $a0, $zero, $zero
    /* 3B00B00 8006DD64 64B70108 */  j          .Llevel_52_8006DD90
    /* 3B00B04 8006DD68 00000000 */   nop
  .Llevel_52_8006DD6C:
    /* 3B00B08 8006DD6C 37006228 */  slti       $v0, $v1, 0x37
    /* 3B00B0C 8006DD70 07004010 */  beqz       $v0, .Llevel_52_8006DD90
    /* 3B00B10 8006DD74 35006228 */   slti      $v0, $v1, 0x35
    /* 3B00B14 8006DD78 05004014 */  bnez       $v0, .Llevel_52_8006DD90
    /* 3B00B18 8006DD7C 00000000 */   nop
  .Llevel_52_8006DD80:
    /* 3B00B1C 8006DD80 0780043C */  lui        $a0, %hi(D_8006A0C4)
    /* 3B00B20 8006DD84 C4A08424 */  addiu      $a0, $a0, %lo(D_8006A0C4)
  .Llevel_52_8006DD88:
    /* 3B00B24 8006DD88 E3B6000C */  jal        func_8002DB8C
    /* 3B00B28 8006DD8C 00000000 */   nop
  .Llevel_52_8006DD90:
    /* 3B00B2C 8006DD90 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3B00B30 8006DD94 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3B00B34 8006DD98 0800E003 */  jr         $ra
    /* 3B00B38 8006DD9C 00000000 */   nop
endlabel func_level_52_8006DD20
