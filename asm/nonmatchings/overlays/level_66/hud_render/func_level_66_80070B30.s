.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_66_80070B30, 0x724

glabel func_level_66_80070B30
    /* 44BB8CC 80070B30 0680023C */  lui        $v0, %hi(D_80067674)
    /* 44BB8D0 80070B34 74764290 */  lbu        $v0, %lo(D_80067674)($v0)
    /* 44BB8D4 80070B38 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 44BB8D8 80070B3C 3800BFAF */  sw         $ra, 0x38($sp)
    /* 44BB8DC 80070B40 3400B7AF */  sw         $s7, 0x34($sp)
    /* 44BB8E0 80070B44 3000B6AF */  sw         $s6, 0x30($sp)
    /* 44BB8E4 80070B48 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 44BB8E8 80070B4C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 44BB8EC 80070B50 2400B3AF */  sw         $s3, 0x24($sp)
    /* 44BB8F0 80070B54 2000B2AF */  sw         $s2, 0x20($sp)
    /* 44BB8F4 80070B58 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 44BB8F8 80070B5C B1014010 */  beqz       $v0, .Llevel_66_80071224
    /* 44BB8FC 80070B60 1800B0AF */   sw        $s0, 0x18($sp)
    /* 44BB900 80070B64 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 44BB904 80070B68 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 44BB908 80070B6C 00000000 */  nop
    /* 44BB90C 80070B70 B000568C */  lw         $s6, 0xB0($v0)
    /* 44BB910 80070B74 00000000 */  nop
    /* 44BB914 80070B78 8400C38E */  lw         $v1, 0x84($s6)
    /* 44BB918 80070B7C 01000224 */  addiu      $v0, $zero, 0x1
    /* 44BB91C 80070B80 0E006210 */  beq        $v1, $v0, .Llevel_66_80070BBC
    /* 44BB920 80070B84 02006228 */   slti      $v0, $v1, 0x2
    /* 44BB924 80070B88 05004010 */  beqz       $v0, .Llevel_66_80070BA0
    /* 44BB928 80070B8C 00000000 */   nop
    /* 44BB92C 80070B90 08006010 */  beqz       $v1, .Llevel_66_80070BB4
    /* 44BB930 80070B94 00000000 */   nop
    /* 44BB934 80070B98 F2C20108 */  j          .Llevel_66_80070BC8
    /* 44BB938 80070B9C 00000000 */   nop
  .Llevel_66_80070BA0:
    /* 44BB93C 80070BA0 02000224 */  addiu      $v0, $zero, 0x2
    /* 44BB940 80070BA4 07006210 */  beq        $v1, $v0, .Llevel_66_80070BC4
    /* 44BB944 80070BA8 00000000 */   nop
    /* 44BB948 80070BAC F2C20108 */  j          .Llevel_66_80070BC8
    /* 44BB94C 80070BB0 00000000 */   nop
  .Llevel_66_80070BB4:
    /* 44BB950 80070BB4 F2C20108 */  j          .Llevel_66_80070BC8
    /* 44BB954 80070BB8 A0001724 */   addiu     $s7, $zero, 0xA0
  .Llevel_66_80070BBC:
    /* 44BB958 80070BBC F2C20108 */  j          .Llevel_66_80070BC8
    /* 44BB95C 80070BC0 00A01734 */   ori       $s7, $zero, 0xA000
  .Llevel_66_80070BC4:
    /* 44BB960 80070BC4 A000173C */  lui        $s7, (0xA00000 >> 16)
  .Llevel_66_80070BC8:
    /* 44BB964 80070BC8 8000C38E */  lw         $v1, 0x80($s6)
    /* 44BB968 80070BCC 01000224 */  addiu      $v0, $zero, 0x1
    /* 44BB96C 80070BD0 0E006210 */  beq        $v1, $v0, .Llevel_66_80070C0C
    /* 44BB970 80070BD4 02006228 */   slti      $v0, $v1, 0x2
    /* 44BB974 80070BD8 05004010 */  beqz       $v0, .Llevel_66_80070BF0
    /* 44BB978 80070BDC 00000000 */   nop
    /* 44BB97C 80070BE0 08006010 */  beqz       $v1, .Llevel_66_80070C04
    /* 44BB980 80070BE4 00000000 */   nop
    /* 44BB984 80070BE8 06C30108 */  j          .Llevel_66_80070C18
    /* 44BB988 80070BEC 00000000 */   nop
  .Llevel_66_80070BF0:
    /* 44BB98C 80070BF0 02000224 */  addiu      $v0, $zero, 0x2
    /* 44BB990 80070BF4 07006210 */  beq        $v1, $v0, .Llevel_66_80070C14
    /* 44BB994 80070BF8 00000000 */   nop
    /* 44BB998 80070BFC 06C30108 */  j          .Llevel_66_80070C18
    /* 44BB99C 80070C00 00000000 */   nop
  .Llevel_66_80070C04:
    /* 44BB9A0 80070C04 06C30108 */  j          .Llevel_66_80070C18
    /* 44BB9A4 80070C08 A0001524 */   addiu     $s5, $zero, 0xA0
  .Llevel_66_80070C0C:
    /* 44BB9A8 80070C0C 06C30108 */  j          .Llevel_66_80070C18
    /* 44BB9AC 80070C10 00A01534 */   ori       $s5, $zero, 0xA000
  .Llevel_66_80070C14:
    /* 44BB9B0 80070C14 A000153C */  lui        $s5, (0xA00000 >> 16)
  .Llevel_66_80070C18:
    /* 44BB9B4 80070C18 0680043C */  lui        $a0, %hi(D_80067674)
    /* 44BB9B8 80070C1C 74768490 */  lbu        $a0, %lo(D_80067674)($a0)
    /* 44BB9BC 80070C20 01000524 */  addiu      $a1, $zero, 0x1
    /* 44BB9C0 80070C24 03008510 */  beq        $a0, $a1, .Llevel_66_80070C34
    /* 44BB9C4 80070C28 04000224 */   addiu     $v0, $zero, 0x4
    /* 44BB9C8 80070C2C 15008214 */  bne        $a0, $v0, .Llevel_66_80070C84
    /* 44BB9CC 80070C30 28001124 */   addiu     $s1, $zero, 0x28
  .Llevel_66_80070C34:
    /* 44BB9D0 80070C34 0680033C */  lui        $v1, %hi(D_80067676)
    /* 44BB9D4 80070C38 76766384 */  lh         $v1, %lo(D_80067676)($v1)
    /* 44BB9D8 80070C3C 00000000 */  nop
    /* 44BB9DC 80070C40 03006104 */  bgez       $v1, .Llevel_66_80070C50
    /* 44BB9E0 80070C44 30006228 */   slti      $v0, $v1, 0x30
    /* 44BB9E4 80070C48 21180000 */  addu       $v1, $zero, $zero
    /* 44BB9E8 80070C4C 30006228 */  slti       $v0, $v1, 0x30
  .Llevel_66_80070C50:
    /* 44BB9EC 80070C50 02004014 */  bnez       $v0, .Llevel_66_80070C5C
    /* 44BB9F0 80070C54 00000000 */   nop
    /* 44BB9F4 80070C58 2F000324 */  addiu      $v1, $zero, 0x2F
  .Llevel_66_80070C5C:
    /* 44BB9F8 80070C5C 06008514 */  bne        $a0, $a1, .Llevel_66_80070C78
    /* 44BB9FC 80070C60 43100300 */   sra       $v0, $v1, 1
    /* 44BBA00 80070C64 0680013C */  lui        $at, %hi(D_80063430)
    /* 44BBA04 80070C68 21082200 */  addu       $at, $at, $v0
    /* 44BBA08 80070C6C 30343190 */  lbu        $s1, %lo(D_80063430)($at)
    /* 44BBA0C 80070C70 21C30108 */  j          .Llevel_66_80070C84
    /* 44BBA10 80070C74 00000000 */   nop
  .Llevel_66_80070C78:
    /* 44BBA14 80070C78 0680013C */  lui        $at, %hi(D_80063448)
    /* 44BBA18 80070C7C 21082200 */  addu       $at, $at, $v0
    /* 44BBA1C 80070C80 48343190 */  lbu        $s1, %lo(D_80063448)($at)
  .Llevel_66_80070C84:
    /* 44BBA20 80070C84 4134010C */  jal        func_8004D104
    /* 44BBA24 80070C88 18000424 */   addiu     $a0, $zero, 0x18
    /* 44BBA28 80070C8C 21202002 */  addu       $a0, $s1, $zero
    /* 44BBA2C 80070C90 0C002526 */  addiu      $a1, $s1, 0xC
    /* 44BBA30 80070C94 48000624 */  addiu      $a2, $zero, 0x48
    /* 44BBA34 80070C98 B634010C */  jal        func_8004D2D8
    /* 44BBA38 80070C9C A4000724 */   addiu     $a3, $zero, 0xA4
    /* 44BBA3C 80070CA0 2028023C */  lui        $v0, (0x2820C0C0 >> 16)
    /* 44BBA40 80070CA4 0680103C */  lui        $s0, %hi(D_80067030)
    /* 44BBA44 80070CA8 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 44BBA48 80070CAC C0C04234 */  ori        $v0, $v0, (0x2820C0C0 & 0xFFFF)
    /* 44BBA4C 80070CB0 040002AE */  sw         $v0, 0x4($s0)
    /* 44BBA50 80070CB4 0680023C */  lui        $v0, %hi(D_80066FEC)
    /* 44BBA54 80070CB8 EC6F428C */  lw         $v0, %lo(D_80066FEC)($v0)
    /* 44BBA58 80070CBC 00000000 */  nop
    /* 44BBA5C 80070CC0 40180200 */  sll        $v1, $v0, 1
    /* 44BBA60 80070CC4 21186200 */  addu       $v1, $v1, $v0
    /* 44BBA64 80070CC8 80180300 */  sll        $v1, $v1, 2
    /* 44BBA68 80070CCC 23186200 */  subu       $v1, $v1, $v0
    /* 44BBA6C 80070CD0 0680023C */  lui        $v0, %hi(D_800670A4)
    /* 44BBA70 80070CD4 A470428C */  lw         $v0, %lo(D_800670A4)($v0)
    /* 44BBA74 80070CD8 C0180300 */  sll        $v1, $v1, 3
    /* 44BBA78 80070CDC 1A006200 */  div        $zero, $v1, $v0
    /* 44BBA7C 80070CE0 02004014 */  bnez       $v0, .Llevel_66_80070CEC
    /* 44BBA80 80070CE4 00000000 */   nop
    /* 44BBA84 80070CE8 0D000700 */  break      7
  .Llevel_66_80070CEC:
    /* 44BBA88 80070CEC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 44BBA8C 80070CF0 04004114 */  bne        $v0, $at, .Llevel_66_80070D04
    /* 44BBA90 80070CF4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 44BBA94 80070CF8 02006114 */  bne        $v1, $at, .Llevel_66_80070D04
    /* 44BBA98 80070CFC 00000000 */   nop
    /* 44BBA9C 80070D00 0D000600 */  break      6
  .Llevel_66_80070D04:
    /* 44BBAA0 80070D04 12180000 */  mflo       $v1
    /* 44BBAA4 80070D08 02002526 */  addiu      $a1, $s1, 0x2
    /* 44BBAA8 80070D0C 21200002 */  addu       $a0, $s0, $zero
    /* 44BBAAC 80070D10 080005A6 */  sh         $a1, 0x8($s0)
    /* 44BBAB0 80070D14 100005A6 */  sh         $a1, 0x10($s0)
    /* 44BBAB4 80070D18 0005023C */  lui        $v0, (0x5000000 >> 16)
    /* 44BBAB8 80070D1C 000002AE */  sw         $v0, 0x0($s0)
    /* 44BBABC 80070D20 0A002226 */  addiu      $v0, $s1, 0xA
    /* 44BBAC0 80070D24 0C0002A6 */  sh         $v0, 0xC($s0)
    /* 44BBAC4 80070D28 140002A6 */  sh         $v0, 0x14($s0)
    /* 44BBAC8 80070D2C A2000224 */  addiu      $v0, $zero, 0xA2
    /* 44BBACC 80070D30 120002A6 */  sh         $v0, 0x12($s0)
    /* 44BBAD0 80070D34 160002A6 */  sh         $v0, 0x16($s0)
    /* 44BBAD4 80070D38 A2000224 */  addiu      $v0, $zero, 0xA2
    /* 44BBAD8 80070D3C 23104300 */  subu       $v0, $v0, $v1
    /* 44BBADC 80070D40 0A0002A6 */  sh         $v0, 0xA($s0)
    /* 44BBAE0 80070D44 E46C000C */  jal        func_8001B390
    /* 44BBAE4 80070D48 0E0002A6 */   sh        $v0, 0xE($s0)
    /* 44BBAE8 80070D4C 18001026 */  addiu      $s0, $s0, 0x18
    /* 44BBAEC 80070D50 0680013C */  lui        $at, %hi(D_80067030)
    /* 44BBAF0 80070D54 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 44BBAF4 80070D58 0600C292 */  lbu        $v0, 0x6($s6)
    /* 44BBAF8 80070D5C 00000000 */  nop
    /* 44BBAFC 80070D60 0400422C */  sltiu      $v0, $v0, 0x4
    /* 44BBB00 80070D64 88004010 */  beqz       $v0, .Llevel_66_80070F88
    /* 44BBB04 80070D68 00000000 */   nop
    /* 44BBB08 80070D6C 0680103C */  lui        $s0, %hi(D_80067690)
    /* 44BBB0C 80070D70 90761026 */  addiu      $s0, $s0, %lo(D_80067690)
    /* 44BBB10 80070D74 0000028E */  lw         $v0, 0x0($s0)
    /* 44BBB14 80070D78 01001124 */  addiu      $s1, $zero, 0x1
    /* 44BBB18 80070D7C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 44BBB1C 80070D80 0600401C */  bgtz       $v0, .Llevel_66_80070D9C
    /* 44BBB20 80070D84 000002AE */   sw        $v0, 0x0($s0)
    /* 44BBB24 80070D88 4B67010C */  jal        func_80059D2C
    /* 44BBB28 80070D8C 00000000 */   nop
    /* 44BBB2C 80070D90 3F004230 */  andi       $v0, $v0, 0x3F
    /* 44BBB30 80070D94 24004224 */  addiu      $v0, $v0, 0x24
    /* 44BBB34 80070D98 000002AE */  sw         $v0, 0x0($s0)
  .Llevel_66_80070D9C:
    /* 44BBB38 80070D9C 0000038E */  lw         $v1, 0x0($s0)
    /* 44BBB3C 80070DA0 00000000 */  nop
    /* 44BBB40 80070DA4 06006228 */  slti       $v0, $v1, 0x6
    /* 44BBB44 80070DA8 05004010 */  beqz       $v0, .Llevel_66_80070DC0
    /* 44BBB48 80070DAC 04006228 */   slti      $v0, $v1, 0x4
    /* 44BBB4C 80070DB0 03004014 */  bnez       $v0, .Llevel_66_80070DC0
    /* 44BBB50 80070DB4 21886000 */   addu      $s1, $v1, $zero
    /* 44BBB54 80070DB8 07000224 */  addiu      $v0, $zero, 0x7
    /* 44BBB58 80070DBC 23884300 */  subu       $s1, $v0, $v1
  .Llevel_66_80070DC0:
    /* 44BBB5C 80070DC0 0680123C */  lui        $s2, %hi(D_80067674)
    /* 44BBB60 80070DC4 74765226 */  addiu      $s2, $s2, %lo(D_80067674)
    /* 44BBB64 80070DC8 21204002 */  addu       $a0, $s2, $zero
    /* 44BBB68 80070DCC 21280000 */  addu       $a1, $zero, $zero
    /* 44BBB6C 80070DD0 2649010C */  jal        func_80052498
    /* 44BBB70 80070DD4 EC000624 */   addiu     $a2, $zero, 0xEC
    /* 44BBB74 80070DD8 0680103C */  lui        $s0, %hi(D_80063598)
    /* 44BBB78 80070DDC 98351026 */  addiu      $s0, $s0, %lo(D_80063598)
    /* 44BBB7C 80070DE0 21200002 */  addu       $a0, $s0, $zero
    /* 44BBB80 80070DE4 AE010524 */  addiu      $a1, $zero, 0x1AE
    /* 44BBB84 80070DE8 CF004624 */  addiu      $a2, $v0, 0xCF
    /* 44BBB88 80070DEC 3348010C */  jal        func_800520CC
    /* 44BBB8C 80070DF0 09000724 */   addiu     $a3, $zero, 0x9
    /* 44BBB90 80070DF4 21204002 */  addu       $a0, $s2, $zero
    /* 44BBB94 80070DF8 21280000 */  addu       $a1, $zero, $zero
    /* 44BBB98 80070DFC 2649010C */  jal        func_80052498
    /* 44BBB9C 80070E00 EC000624 */   addiu     $a2, $zero, 0xEC
    /* 44BBBA0 80070E04 80201100 */  sll        $a0, $s1, 2
    /* 44BBBA4 80070E08 04001026 */  addiu      $s0, $s0, 0x4
    /* 44BBBA8 80070E0C 21209000 */  addu       $a0, $a0, $s0
    /* 44BBBAC 80070E10 0A000724 */  addiu      $a3, $zero, 0xA
    /* 44BBBB0 80070E14 0680013C */  lui        $at, %hi(D_800634E8)
    /* 44BBBB4 80070E18 21083100 */  addu       $at, $at, $s1
    /* 44BBBB8 80070E1C E8342590 */  lbu        $a1, %lo(D_800634E8)($at)
    /* 44BBBBC 80070E20 0680013C */  lui        $at, %hi(D_800634F4)
    /* 44BBBC0 80070E24 21083100 */  addu       $at, $at, $s1
    /* 44BBBC4 80070E28 F4342690 */  lbu        $a2, %lo(D_800634F4)($at)
    /* 44BBBC8 80070E2C AE01A524 */  addiu      $a1, $a1, 0x1AE
    /* 44BBBCC 80070E30 CF00C624 */  addiu      $a2, $a2, 0xCF
    /* 44BBBD0 80070E34 3348010C */  jal        func_800520CC
    /* 44BBBD4 80070E38 21304600 */   addu      $a2, $v0, $a2
    /* 44BBBD8 80070E3C 0600C292 */  lbu        $v0, 0x6($s6)
    /* 44BBBDC 80070E40 00000000 */  nop
    /* 44BBBE0 80070E44 0400422C */  sltiu      $v0, $v0, 0x4
    /* 44BBBE4 80070E48 4F004010 */  beqz       $v0, .Llevel_66_80070F88
    /* 44BBBE8 80070E4C 00000000 */   nop
    /* 44BBBEC 80070E50 21800000 */  addu       $s0, $zero, $zero
    /* 44BBBF0 80070E54 21984002 */  addu       $s3, $s2, $zero
    /* 44BBBF4 80070E58 0680123C */  lui        $s2, %hi(D_8006368C)
    /* 44BBBF8 80070E5C 8C365226 */  addiu      $s2, $s2, %lo(D_8006368C)
    /* 44BBBFC 80070E60 0680143C */  lui        $s4, %hi(D_80061C58)
    /* 44BBC00 80070E64 581C9426 */  addiu      $s4, $s4, %lo(D_80061C58)
    /* 44BBC04 80070E68 64011124 */  addiu      $s1, $zero, 0x164
  .Llevel_66_80070E6C:
    /* 44BBC08 80070E6C 21206002 */  addu       $a0, $s3, $zero
    /* 44BBC0C 80070E70 21280000 */  addu       $a1, $zero, $zero
    /* 44BBC10 80070E74 2649010C */  jal        func_80052498
    /* 44BBC14 80070E78 EC000624 */   addiu     $a2, $zero, 0xEC
    /* 44BBC18 80070E7C 21204002 */  addu       $a0, $s2, $zero
    /* 44BBC1C 80070E80 21282002 */  addu       $a1, $s1, $zero
    /* 44BBC20 80070E84 EC004624 */  addiu      $a2, $v0, 0xEC
    /* 44BBC24 80070E88 3348010C */  jal        func_800520CC
    /* 44BBC28 80070E8C 13000724 */   addiu     $a3, $zero, 0x13
    /* 44BBC2C 80070E90 21206002 */  addu       $a0, $s3, $zero
    /* 44BBC30 80070E94 21280000 */  addu       $a1, $zero, $zero
    /* 44BBC34 80070E98 2649010C */  jal        func_80052498
    /* 44BBC38 80070E9C EC000624 */   addiu     $a2, $zero, 0xEC
    /* 44BBC3C 80070EA0 FCFF4426 */  addiu      $a0, $s2, -0x4
    /* 44BBC40 80070EA4 21282002 */  addu       $a1, $s1, $zero
    /* 44BBC44 80070EA8 EC004624 */  addiu      $a2, $v0, 0xEC
    /* 44BBC48 80070EAC 3348010C */  jal        func_800520CC
    /* 44BBC4C 80070EB0 13000724 */   addiu     $a3, $zero, 0x13
    /* 44BBC50 80070EB4 0680033C */  lui        $v1, %hi(D_80067084)
    /* 44BBC54 80070EB8 8470638C */  lw         $v1, %lo(D_80067084)($v1)
    /* 44BBC58 80070EBC 21384000 */  addu       $a3, $v0, $zero
    /* 44BBC5C 80070EC0 2A100302 */  slt        $v0, $s0, $v1
    /* 44BBC60 80070EC4 29004010 */  beqz       $v0, .Llevel_66_80070F6C
    /* 44BBC64 80070EC8 03006228 */   slti      $v0, $v1, 0x3
    /* 44BBC68 80070ECC 23004014 */  bnez       $v0, .Llevel_66_80070F5C
    /* 44BBC6C 80070ED0 1000B5AF */   sw        $s5, 0x10($sp)
    /* 44BBC70 80070ED4 1000A527 */  addiu      $a1, $sp, 0x10
    /* 44BBC74 80070ED8 1300A627 */  addiu      $a2, $sp, 0x13
  .Llevel_66_80070EDC:
    /* 44BBC78 80070EDC 0000A490 */  lbu        $a0, 0x0($a1)
    /* 44BBC7C 80070EE0 00000000 */  nop
    /* 44BBC80 80070EE4 12008010 */  beqz       $a0, .Llevel_66_80070F30
    /* 44BBC84 80070EE8 00018228 */   slti      $v0, $a0, 0x100
    /* 44BBC88 80070EEC 0680033C */  lui        $v1, %hi(D_80067008)
    /* 44BBC8C 80070EF0 0870638C */  lw         $v1, %lo(D_80067008)($v1)
    /* 44BBC90 80070EF4 00000000 */  nop
    /* 44BBC94 80070EF8 C0100300 */  sll        $v0, $v1, 3
    /* 44BBC98 80070EFC 21104300 */  addu       $v0, $v0, $v1
    /* 44BBC9C 80070F00 80100200 */  sll        $v0, $v0, 2
    /* 44BBCA0 80070F04 FC014230 */  andi       $v0, $v0, 0x1FC
    /* 44BBCA4 80070F08 21105400 */  addu       $v0, $v0, $s4
    /* 44BBCA8 80070F0C 00004284 */  lh         $v0, 0x0($v0)
    /* 44BBCAC 80070F10 00000000 */  nop
    /* 44BBCB0 80070F14 40180200 */  sll        $v1, $v0, 1
    /* 44BBCB4 80070F18 21186200 */  addu       $v1, $v1, $v0
    /* 44BBCB8 80070F1C 00110300 */  sll        $v0, $v1, 4
    /* 44BBCBC 80070F20 23104300 */  subu       $v0, $v0, $v1
    /* 44BBCC0 80070F24 C3120200 */  sra        $v0, $v0, 11
    /* 44BBCC4 80070F28 21208200 */  addu       $a0, $a0, $v0
    /* 44BBCC8 80070F2C 00018228 */  slti       $v0, $a0, 0x100
  .Llevel_66_80070F30:
    /* 44BBCCC 80070F30 02004014 */  bnez       $v0, .Llevel_66_80070F3C
    /* 44BBCD0 80070F34 00000000 */   nop
    /* 44BBCD4 80070F38 FF000424 */  addiu      $a0, $zero, 0xFF
  .Llevel_66_80070F3C:
    /* 44BBCD8 80070F3C 02008104 */  bgez       $a0, .Llevel_66_80070F48
    /* 44BBCDC 80070F40 00000000 */   nop
    /* 44BBCE0 80070F44 21200000 */  addu       $a0, $zero, $zero
  .Llevel_66_80070F48:
    /* 44BBCE4 80070F48 0000A4A0 */  sb         $a0, 0x0($a1)
    /* 44BBCE8 80070F4C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 44BBCEC 80070F50 2A10A600 */  slt        $v0, $a1, $a2
    /* 44BBCF0 80070F54 E1FF4014 */  bnez       $v0, .Llevel_66_80070EDC
    /* 44BBCF4 80070F58 00000000 */   nop
  .Llevel_66_80070F5C:
    /* 44BBCF8 80070F5C 1000A28F */  lw         $v0, 0x10($sp)
    /* 44BBCFC 80070F60 0064033C */  lui        $v1, (0x64000000 >> 16)
    /* 44BBD00 80070F64 DDC30108 */  j          .Llevel_66_80070F74
    /* 44BBD04 80070F68 25104300 */   or        $v0, $v0, $v1
  .Llevel_66_80070F6C:
    /* 44BBD08 80070F6C 3064023C */  lui        $v0, (0x64303030 >> 16)
    /* 44BBD0C 80070F70 30304234 */  ori        $v0, $v0, (0x64303030 & 0xFFFF)
  .Llevel_66_80070F74:
    /* 44BBD10 80070F74 0400E2AC */  sw         $v0, 0x4($a3)
    /* 44BBD14 80070F78 01001026 */  addiu      $s0, $s0, 0x1
    /* 44BBD18 80070F7C 0300022A */  slti       $v0, $s0, 0x3
    /* 44BBD1C 80070F80 BAFF4014 */  bnez       $v0, .Llevel_66_80070E6C
    /* 44BBD20 80070F84 28003126 */   addiu     $s1, $s1, 0x28
  .Llevel_66_80070F88:
    /* 44BBD24 80070F88 0680023C */  lui        $v0, %hi(D_80067088)
    /* 44BBD28 80070F8C 8870428C */  lw         $v0, %lo(D_80067088)($v0)
    /* 44BBD2C 80070F90 00000000 */  nop
    /* 44BBD30 80070F94 03004228 */  slti       $v0, $v0, 0x3
    /* 44BBD34 80070F98 0F004014 */  bnez       $v0, .Llevel_66_80070FD8
    /* 44BBD38 80070F9C 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 44BBD3C 80070FA0 0680043C */  lui        $a0, %hi(D_80067674)
    /* 44BBD40 80070FA4 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 44BBD44 80070FA8 21280000 */  addu       $a1, $zero, $zero
    /* 44BBD48 80070FAC 2649010C */  jal        func_80052498
    /* 44BBD4C 80070FB0 EC000624 */   addiu     $a2, $zero, 0xEC
    /* 44BBD50 80070FB4 0680043C */  lui        $a0, %hi(D_800636A0)
    /* 44BBD54 80070FB8 A0368424 */  addiu      $a0, $a0, %lo(D_800636A0)
    /* 44BBD58 80070FBC 20000524 */  addiu      $a1, $zero, 0x20
    /* 44BBD5C 80070FC0 CE004624 */  addiu      $a2, $v0, 0xCE
    /* 44BBD60 80070FC4 3348010C */  jal        func_800520CC
    /* 44BBD64 80070FC8 12000724 */   addiu     $a3, $zero, 0x12
    /* 44BBD68 80070FCC 205C0324 */  addiu      $v1, $zero, 0x5C20
    /* 44BBD6C 80070FD0 36C40108 */  j          .Llevel_66_800710D8
    /* 44BBD70 80070FD4 0E0043A4 */   sh        $v1, 0xE($v0)
  .Llevel_66_80070FD8:
    /* 44BBD74 80070FD8 0680043C */  lui        $a0, %hi(D_80067008)
    /* 44BBD78 80070FDC 0870848C */  lw         $a0, %lo(D_80067008)($a0)
    /* 44BBD7C 80070FE0 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 44BBD80 80070FE4 18008200 */  mult       $a0, $v0
    /* 44BBD84 80070FE8 C3170400 */  sra        $v0, $a0, 31
    /* 44BBD88 80070FEC 10400000 */  mfhi       $t0
    /* 44BBD8C 80070FF0 43180800 */  sra        $v1, $t0, 1
    /* 44BBD90 80070FF4 23186200 */  subu       $v1, $v1, $v0
    /* 44BBD94 80070FF8 80100300 */  sll        $v0, $v1, 2
    /* 44BBD98 80070FFC 21104300 */  addu       $v0, $v0, $v1
    /* 44BBD9C 80071000 11008214 */  bne        $a0, $v0, .Llevel_66_80071048
    /* 44BBDA0 80071004 00000000 */   nop
    /* 44BBDA4 80071008 0680023C */  lui        $v0, %hi(D_800670F4)
    /* 44BBDA8 8007100C F4704290 */  lbu        $v0, %lo(D_800670F4)($v0)
    /* 44BBDAC 80071010 00000000 */  nop
    /* 44BBDB0 80071014 05004010 */  beqz       $v0, .Llevel_66_8007102C
    /* 44BBDB4 80071018 00000000 */   nop
    /* 44BBDB8 8007101C 0680013C */  lui        $at, %hi(D_800670F4)
    /* 44BBDBC 80071020 F47020A0 */  sb         $zero, %lo(D_800670F4)($at)
    /* 44BBDC0 80071024 12C40108 */  j          .Llevel_66_80071048
    /* 44BBDC4 80071028 00000000 */   nop
  .Llevel_66_8007102C:
    /* 44BBDC8 8007102C 4B67010C */  jal        func_80059D2C
    /* 44BBDCC 80071030 00000000 */   nop
    /* 44BBDD0 80071034 0F004230 */  andi       $v0, $v0, 0xF
    /* 44BBDD4 80071038 03004014 */  bnez       $v0, .Llevel_66_80071048
    /* 44BBDD8 8007103C 01000224 */   addiu     $v0, $zero, 0x1
    /* 44BBDDC 80071040 0680013C */  lui        $at, %hi(D_800670F4)
    /* 44BBDE0 80071044 F47022A0 */  sb         $v0, %lo(D_800670F4)($at)
  .Llevel_66_80071048:
    /* 44BBDE4 80071048 0680023C */  lui        $v0, %hi(D_800670F4)
    /* 44BBDE8 8007104C F4704290 */  lbu        $v0, %lo(D_800670F4)($v0)
    /* 44BBDEC 80071050 00000000 */  nop
    /* 44BBDF0 80071054 12004010 */  beqz       $v0, .Llevel_66_800710A0
    /* 44BBDF4 80071058 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 44BBDF8 8007105C 0680043C */  lui        $a0, %hi(D_80067008)
    /* 44BBDFC 80071060 0870848C */  lw         $a0, %lo(D_80067008)($a0)
    /* 44BBE00 80071064 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 44BBE04 80071068 18008200 */  mult       $a0, $v0
    /* 44BBE08 8007106C C3170400 */  sra        $v0, $a0, 31
    /* 44BBE0C 80071070 10400000 */  mfhi       $t0
    /* 44BBE10 80071074 43180800 */  sra        $v1, $t0, 1
    /* 44BBE14 80071078 23186200 */  subu       $v1, $v1, $v0
    /* 44BBE18 8007107C 80100300 */  sll        $v0, $v1, 2
    /* 44BBE1C 80071080 21104300 */  addu       $v0, $v0, $v1
    /* 44BBE20 80071084 23208200 */  subu       $a0, $a0, $v0
    /* 44BBE24 80071088 01009024 */  addiu      $s0, $a0, 0x1
    /* 44BBE28 8007108C 0400022A */  slti       $v0, $s0, 0x4
    /* 44BBE2C 80071090 04004014 */  bnez       $v0, .Llevel_66_800710A4
    /* 44BBE30 80071094 06000224 */   addiu     $v0, $zero, 0x6
    /* 44BBE34 80071098 29C40108 */  j          .Llevel_66_800710A4
    /* 44BBE38 8007109C 23805000 */   subu      $s0, $v0, $s0
  .Llevel_66_800710A0:
    /* 44BBE3C 800710A0 21800000 */  addu       $s0, $zero, $zero
  .Llevel_66_800710A4:
    /* 44BBE40 800710A4 0680043C */  lui        $a0, %hi(D_80067674)
    /* 44BBE44 800710A8 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 44BBE48 800710AC 21280000 */  addu       $a1, $zero, $zero
    /* 44BBE4C 800710B0 2649010C */  jal        func_80052498
    /* 44BBE50 800710B4 EC000624 */   addiu     $a2, $zero, 0xEC
    /* 44BBE54 800710B8 80181000 */  sll        $v1, $s0, 2
    /* 44BBE58 800710BC 0680043C */  lui        $a0, %hi(D_80063690)
    /* 44BBE5C 800710C0 90368424 */  addiu      $a0, $a0, %lo(D_80063690)
    /* 44BBE60 800710C4 21206400 */  addu       $a0, $v1, $a0
    /* 44BBE64 800710C8 20000524 */  addiu      $a1, $zero, 0x20
    /* 44BBE68 800710CC CE004624 */  addiu      $a2, $v0, 0xCE
    /* 44BBE6C 800710D0 3348010C */  jal        func_800520CC
    /* 44BBE70 800710D4 12000724 */   addiu     $a3, $zero, 0x12
  .Llevel_66_800710D8:
    /* 44BBE74 800710D8 0600C292 */  lbu        $v0, 0x6($s6)
    /* 44BBE78 800710DC 00000000 */  nop
    /* 44BBE7C 800710E0 0400422C */  sltiu      $v0, $v0, 0x4
    /* 44BBE80 800710E4 4F004010 */  beqz       $v0, .Llevel_66_80071224
    /* 44BBE84 800710E8 21800000 */   addu      $s0, $zero, $zero
    /* 44BBE88 800710EC 0680133C */  lui        $s3, %hi(D_80067674)
    /* 44BBE8C 800710F0 74767326 */  addiu      $s3, $s3, %lo(D_80067674)
    /* 44BBE90 800710F4 0680123C */  lui        $s2, %hi(D_8006368C)
    /* 44BBE94 800710F8 8C365226 */  addiu      $s2, $s2, %lo(D_8006368C)
    /* 44BBE98 800710FC 0680143C */  lui        $s4, %hi(D_80061C58)
    /* 44BBE9C 80071100 581C9426 */  addiu      $s4, $s4, %lo(D_80061C58)
    /* 44BBEA0 80071104 28001124 */  addiu      $s1, $zero, 0x28
  .Llevel_66_80071108:
    /* 44BBEA4 80071108 21206002 */  addu       $a0, $s3, $zero
    /* 44BBEA8 8007110C 21280000 */  addu       $a1, $zero, $zero
    /* 44BBEAC 80071110 2649010C */  jal        func_80052498
    /* 44BBEB0 80071114 EC000624 */   addiu     $a2, $zero, 0xEC
    /* 44BBEB4 80071118 21204002 */  addu       $a0, $s2, $zero
    /* 44BBEB8 8007111C 21282002 */  addu       $a1, $s1, $zero
    /* 44BBEBC 80071120 EC004624 */  addiu      $a2, $v0, 0xEC
    /* 44BBEC0 80071124 3348010C */  jal        func_800520CC
    /* 44BBEC4 80071128 13000724 */   addiu     $a3, $zero, 0x13
    /* 44BBEC8 8007112C 21206002 */  addu       $a0, $s3, $zero
    /* 44BBECC 80071130 21280000 */  addu       $a1, $zero, $zero
    /* 44BBED0 80071134 2649010C */  jal        func_80052498
    /* 44BBED4 80071138 EC000624 */   addiu     $a2, $zero, 0xEC
    /* 44BBED8 8007113C FCFF4426 */  addiu      $a0, $s2, -0x4
    /* 44BBEDC 80071140 21282002 */  addu       $a1, $s1, $zero
    /* 44BBEE0 80071144 EC004624 */  addiu      $a2, $v0, 0xEC
    /* 44BBEE4 80071148 3348010C */  jal        func_800520CC
    /* 44BBEE8 8007114C 13000724 */   addiu     $a3, $zero, 0x13
    /* 44BBEEC 80071150 0680033C */  lui        $v1, %hi(D_80067088)
    /* 44BBEF0 80071154 8870638C */  lw         $v1, %lo(D_80067088)($v1)
    /* 44BBEF4 80071158 21384000 */  addu       $a3, $v0, $zero
    /* 44BBEF8 8007115C 2A100302 */  slt        $v0, $s0, $v1
    /* 44BBEFC 80071160 29004010 */  beqz       $v0, .Llevel_66_80071208
    /* 44BBF00 80071164 03006228 */   slti      $v0, $v1, 0x3
    /* 44BBF04 80071168 23004014 */  bnez       $v0, .Llevel_66_800711F8
    /* 44BBF08 8007116C 1400B7AF */   sw        $s7, 0x14($sp)
    /* 44BBF0C 80071170 1400A527 */  addiu      $a1, $sp, 0x14
    /* 44BBF10 80071174 1700A627 */  addiu      $a2, $sp, 0x17
  .Llevel_66_80071178:
    /* 44BBF14 80071178 0000A490 */  lbu        $a0, 0x0($a1)
    /* 44BBF18 8007117C 00000000 */  nop
    /* 44BBF1C 80071180 12008010 */  beqz       $a0, .Llevel_66_800711CC
    /* 44BBF20 80071184 00018228 */   slti      $v0, $a0, 0x100
    /* 44BBF24 80071188 0680033C */  lui        $v1, %hi(D_80067008)
    /* 44BBF28 8007118C 0870638C */  lw         $v1, %lo(D_80067008)($v1)
    /* 44BBF2C 80071190 00000000 */  nop
    /* 44BBF30 80071194 C0100300 */  sll        $v0, $v1, 3
    /* 44BBF34 80071198 21104300 */  addu       $v0, $v0, $v1
    /* 44BBF38 8007119C 80100200 */  sll        $v0, $v0, 2
    /* 44BBF3C 800711A0 FC014230 */  andi       $v0, $v0, 0x1FC
    /* 44BBF40 800711A4 21105400 */  addu       $v0, $v0, $s4
    /* 44BBF44 800711A8 00004284 */  lh         $v0, 0x0($v0)
    /* 44BBF48 800711AC 00000000 */  nop
    /* 44BBF4C 800711B0 40180200 */  sll        $v1, $v0, 1
    /* 44BBF50 800711B4 21186200 */  addu       $v1, $v1, $v0
    /* 44BBF54 800711B8 00110300 */  sll        $v0, $v1, 4
    /* 44BBF58 800711BC 23104300 */  subu       $v0, $v0, $v1
    /* 44BBF5C 800711C0 C3120200 */  sra        $v0, $v0, 11
    /* 44BBF60 800711C4 21208200 */  addu       $a0, $a0, $v0
    /* 44BBF64 800711C8 00018228 */  slti       $v0, $a0, 0x100
  .Llevel_66_800711CC:
    /* 44BBF68 800711CC 02004014 */  bnez       $v0, .Llevel_66_800711D8
    /* 44BBF6C 800711D0 00000000 */   nop
    /* 44BBF70 800711D4 FF000424 */  addiu      $a0, $zero, 0xFF
  .Llevel_66_800711D8:
    /* 44BBF74 800711D8 02008104 */  bgez       $a0, .Llevel_66_800711E4
    /* 44BBF78 800711DC 00000000 */   nop
    /* 44BBF7C 800711E0 21200000 */  addu       $a0, $zero, $zero
  .Llevel_66_800711E4:
    /* 44BBF80 800711E4 0000A4A0 */  sb         $a0, 0x0($a1)
    /* 44BBF84 800711E8 0100A524 */  addiu      $a1, $a1, 0x1
    /* 44BBF88 800711EC 2A10A600 */  slt        $v0, $a1, $a2
    /* 44BBF8C 800711F0 E1FF4014 */  bnez       $v0, .Llevel_66_80071178
    /* 44BBF90 800711F4 00000000 */   nop
  .Llevel_66_800711F8:
    /* 44BBF94 800711F8 1400A28F */  lw         $v0, 0x14($sp)
    /* 44BBF98 800711FC 0064033C */  lui        $v1, (0x64000000 >> 16)
    /* 44BBF9C 80071200 84C40108 */  j          .Llevel_66_80071210
    /* 44BBFA0 80071204 25104300 */   or        $v0, $v0, $v1
  .Llevel_66_80071208:
    /* 44BBFA4 80071208 3064023C */  lui        $v0, (0x64303030 >> 16)
    /* 44BBFA8 8007120C 30304234 */  ori        $v0, $v0, (0x64303030 & 0xFFFF)
  .Llevel_66_80071210:
    /* 44BBFAC 80071210 0400E2AC */  sw         $v0, 0x4($a3)
    /* 44BBFB0 80071214 01001026 */  addiu      $s0, $s0, 0x1
    /* 44BBFB4 80071218 0300022A */  slti       $v0, $s0, 0x3
    /* 44BBFB8 8007121C BAFF4014 */  bnez       $v0, .Llevel_66_80071108
    /* 44BBFBC 80071220 28003126 */   addiu     $s1, $s1, 0x28
  .Llevel_66_80071224:
    /* 44BBFC0 80071224 3800BF8F */  lw         $ra, 0x38($sp)
    /* 44BBFC4 80071228 3400B78F */  lw         $s7, 0x34($sp)
    /* 44BBFC8 8007122C 3000B68F */  lw         $s6, 0x30($sp)
    /* 44BBFCC 80071230 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 44BBFD0 80071234 2800B48F */  lw         $s4, 0x28($sp)
    /* 44BBFD4 80071238 2400B38F */  lw         $s3, 0x24($sp)
    /* 44BBFD8 8007123C 2000B28F */  lw         $s2, 0x20($sp)
    /* 44BBFDC 80071240 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 44BBFE0 80071244 1800B08F */  lw         $s0, 0x18($sp)
    /* 44BBFE4 80071248 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 44BBFE8 8007124C 0800E003 */  jr         $ra
    /* 44BBFEC 80071250 00000000 */   nop
endlabel func_level_66_80070B30
    /* 44BBFF0 80071254 00000000 */  nop
