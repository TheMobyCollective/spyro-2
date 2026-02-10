.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_34_80080B20, 0x19E4

glabel func_level_34_80080B20
    /* 27BD8BC 80080B20 B0FEBD27 */  addiu      $sp, $sp, -0x150
    /* 27BD8C0 80080B24 2C01B1AF */  sw         $s1, 0x12C($sp)
    /* 27BD8C4 80080B28 21888000 */  addu       $s1, $a0, $zero
    /* 27BD8C8 80080B2C 3C01B5AF */  sw         $s5, 0x13C($sp)
    /* 27BD8CC 80080B30 21A8A000 */  addu       $s5, $a1, $zero
    /* 27BD8D0 80080B34 4801BFAF */  sw         $ra, 0x148($sp)
    /* 27BD8D4 80080B38 4401B7AF */  sw         $s7, 0x144($sp)
    /* 27BD8D8 80080B3C 4001B6AF */  sw         $s6, 0x140($sp)
    /* 27BD8DC 80080B40 3801B4AF */  sw         $s4, 0x138($sp)
    /* 27BD8E0 80080B44 3401B3AF */  sw         $s3, 0x134($sp)
    /* 27BD8E4 80080B48 3001B2AF */  sw         $s2, 0x130($sp)
    /* 27BD8E8 80080B4C A404010C */  jal        func_80041290
    /* 27BD8EC 80080B50 2801B0AF */   sw        $s0, 0x128($sp)
    /* 27BD8F0 80080B54 21984000 */  addu       $s3, $v0, $zero
    /* 27BD8F4 80080B58 03006016 */  bnez       $s3, .Llevel_34_80080B68
    /* 27BD8F8 80080B5C 21206002 */   addu      $a0, $s3, $zero
    /* 27BD8FC 80080B60 35090208 */  j          .Llevel_34_800824D4
    /* 27BD900 80080B64 21100000 */   addu      $v0, $zero, $zero
  .Llevel_34_80080B68:
    /* 27BD904 80080B68 21280000 */  addu       $a1, $zero, $zero
    /* 27BD908 80080B6C 0000708E */  lw         $s0, 0x0($s3)
    /* 27BD90C 80080B70 F26C000C */  jal        func_8001B3C8
    /* 27BD910 80080B74 58000624 */   addiu     $a2, $zero, 0x58
    /* 27BD914 80080B78 21280000 */  addu       $a1, $zero, $zero
    /* 27BD918 80080B7C 18000624 */  addiu      $a2, $zero, 0x18
    /* 27BD91C 80080B80 21200002 */  addu       $a0, $s0, $zero
    /* 27BD920 80080B84 F26C000C */  jal        func_8001B3C8
    /* 27BD924 80080B88 000064AE */   sw        $a0, 0x0($s3)
    /* 27BD928 80080B8C 1600A012 */  beqz       $s5, .Llevel_34_80080BE8
    /* 27BD92C 80080B90 360071A6 */   sh        $s1, 0x36($s3)
    /* 27BD930 80080B94 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 27BD934 80080B98 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 27BD938 80080B9C 00000000 */  nop
    /* 27BD93C 80080BA0 2320A402 */  subu       $a0, $s5, $a0
    /* 27BD940 80080BA4 40190400 */  sll        $v1, $a0, 5
    /* 27BD944 80080BA8 23186400 */  subu       $v1, $v1, $a0
    /* 27BD948 80080BAC 40190300 */  sll        $v1, $v1, 5
    /* 27BD94C 80080BB0 21186400 */  addu       $v1, $v1, $a0
    /* 27BD950 80080BB4 C0100300 */  sll        $v0, $v1, 3
    /* 27BD954 80080BB8 21186200 */  addu       $v1, $v1, $v0
    /* 27BD958 80080BBC C0130300 */  sll        $v0, $v1, 15
    /* 27BD95C 80080BC0 23104300 */  subu       $v0, $v0, $v1
    /* 27BD960 80080BC4 80100200 */  sll        $v0, $v0, 2
    /* 27BD964 80080BC8 21104400 */  addu       $v0, $v0, $a0
    /* 27BD968 80080BCC 23100200 */  negu       $v0, $v0
    /* 27BD96C 80080BD0 C3180200 */  sra        $v1, $v0, 3
    /* 27BD970 80080BD4 0001622C */  sltiu      $v0, $v1, 0x100
    /* 27BD974 80080BD8 04004010 */  beqz       $v0, .Llevel_34_80080BEC
    /* 27BD978 80080BDC FF000224 */   addiu     $v0, $zero, 0xFF
    /* 27BD97C 80080BE0 FC020208 */  j          .Llevel_34_80080BF0
    /* 27BD980 80080BE4 3A0063A2 */   sb        $v1, 0x3A($s3)
  .Llevel_34_80080BE8:
    /* 27BD984 80080BE8 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_34_80080BEC:
    /* 27BD988 80080BEC 3A0062A2 */  sb         $v0, 0x3A($s3)
  .Llevel_34_80080BF0:
    /* 27BD98C 80080BF0 72DD000C */  jal        func_800375C8
    /* 27BD990 80080BF4 21206002 */   addu      $a0, $s3, $zero
    /* 27BD994 80080BF8 27010224 */  addiu      $v0, $zero, 0x127
    /* 27BD998 80080BFC 8E032212 */  beq        $s1, $v0, .Llevel_34_80081A38
    /* 27BD99C 80080C00 2801222A */   slti      $v0, $s1, 0x128
    /* 27BD9A0 80080C04 2F004010 */  beqz       $v0, .Llevel_34_80080CC4
    /* 27BD9A4 80080C08 C2000224 */   addiu     $v0, $zero, 0xC2
    /* 27BD9A8 80080C0C 88022212 */  beq        $s1, $v0, .Llevel_34_80081630
    /* 27BD9AC 80080C10 C300222A */   slti      $v0, $s1, 0xC3
    /* 27BD9B0 80080C14 12004010 */  beqz       $v0, .Llevel_34_80080C60
    /* 27BD9B4 80080C18 78000224 */   addiu     $v0, $zero, 0x78
    /* 27BD9B8 80080C1C 92012212 */  beq        $s1, $v0, .Llevel_34_80081268
    /* 27BD9BC 80080C20 7900222A */   slti      $v0, $s1, 0x79
    /* 27BD9C0 80080C24 07004010 */  beqz       $v0, .Llevel_34_80080C44
    /* 27BD9C4 80080C28 01000224 */   addiu     $v0, $zero, 0x1
    /* 27BD9C8 80080C2C 51002212 */  beq        $s1, $v0, .Llevel_34_80080D74
    /* 27BD9CC 80080C30 10000224 */   addiu     $v0, $zero, 0x10
    /* 27BD9D0 80080C34 57002212 */  beq        $s1, $v0, .Llevel_34_80080D94
    /* 27BD9D4 80080C38 10000324 */   addiu     $v1, $zero, 0x10
    /* 27BD9D8 80080C3C 29090208 */  j          .Llevel_34_800824A4
    /* 27BD9DC 80080C40 00000000 */   nop
  .Llevel_34_80080C44:
    /* 27BD9E0 80080C44 81000224 */  addiu      $v0, $zero, 0x81
    /* 27BD9E4 80080C48 BA012212 */  beq        $s1, $v0, .Llevel_34_80081334
    /* 27BD9E8 80080C4C C1000224 */   addiu     $v0, $zero, 0xC1
    /* 27BD9EC 80080C50 C9012212 */  beq        $s1, $v0, .Llevel_34_80081378
    /* 27BD9F0 80080C54 C0000324 */   addiu     $v1, $zero, 0xC0
    /* 27BD9F4 80080C58 29090208 */  j          .Llevel_34_800824A4
    /* 27BD9F8 80080C5C 00000000 */   nop
  .Llevel_34_80080C60:
    /* 27BD9FC 80080C60 FC000224 */  addiu      $v0, $zero, 0xFC
    /* 27BDA00 80080C64 70012212 */  beq        $s1, $v0, .Llevel_34_80081228
    /* 27BDA04 80080C68 FD00222A */   slti      $v0, $s1, 0xFD
    /* 27BDA08 80080C6C 07004010 */  beqz       $v0, .Llevel_34_80080C8C
    /* 27BDA0C 80080C70 D3000224 */   addiu     $v0, $zero, 0xD3
    /* 27BDA10 80080C74 46002212 */  beq        $s1, $v0, .Llevel_34_80080D90
    /* 27BDA14 80080C78 D6000224 */   addiu     $v0, $zero, 0xD6
    /* 27BDA18 80080C7C 6B012212 */  beq        $s1, $v0, .Llevel_34_8008122C
    /* 27BDA1C 80080C80 0C006426 */   addiu     $a0, $s3, 0xC
    /* 27BDA20 80080C84 29090208 */  j          .Llevel_34_800824A4
    /* 27BDA24 80080C88 00000000 */   nop
  .Llevel_34_80080C8C:
    /* 27BDA28 80080C8C 04010224 */  addiu      $v0, $zero, 0x104
    /* 27BDA2C 80080C90 57032212 */  beq        $s1, $v0, .Llevel_34_800819F0
    /* 27BDA30 80080C94 0501222A */   slti      $v0, $s1, 0x105
    /* 27BDA34 80080C98 05004010 */  beqz       $v0, .Llevel_34_80080CB0
    /* 27BDA38 80080C9C 03010224 */   addiu     $v0, $zero, 0x103
    /* 27BDA3C 80080CA0 F6022212 */  beq        $s1, $v0, .Llevel_34_8008187C
    /* 27BDA40 80080CA4 0C006426 */   addiu     $a0, $s3, 0xC
    /* 27BDA44 80080CA8 29090208 */  j          .Llevel_34_800824A4
    /* 27BDA48 80080CAC 00000000 */   nop
  .Llevel_34_80080CB0:
    /* 27BDA4C 80080CB0 12010224 */  addiu      $v0, $zero, 0x112
    /* 27BDA50 80080CB4 E1032212 */  beq        $s1, $v0, .Llevel_34_80081C3C
    /* 27BDA54 80080CB8 0C006426 */   addiu     $a0, $s3, 0xC
    /* 27BDA58 80080CBC 29090208 */  j          .Llevel_34_800824A4
    /* 27BDA5C 80080CC0 00000000 */   nop
  .Llevel_34_80080CC4:
    /* 27BDA60 80080CC4 D9010224 */  addiu      $v0, $zero, 0x1D9
    /* 27BDA64 80080CC8 64002212 */  beq        $s1, $v0, .Llevel_34_80080E5C
    /* 27BDA68 80080CCC DA01222A */   slti      $v0, $s1, 0x1DA
    /* 27BDA6C 80080CD0 12004010 */  beqz       $v0, .Llevel_34_80080D1C
    /* 27BDA70 80080CD4 3501222A */   slti      $v0, $s1, 0x135
    /* 27BDA74 80080CD8 09004010 */  beqz       $v0, .Llevel_34_80080D00
    /* 27BDA78 80080CDC 3201222A */   slti      $v0, $s1, 0x132
    /* 27BDA7C 80080CE0 D5034010 */  beqz       $v0, .Llevel_34_80081C38
    /* 27BDA80 80080CE4 2B010224 */   addiu     $v0, $zero, 0x12B
    /* 27BDA84 80080CE8 6C032212 */  beq        $s1, $v0, .Llevel_34_80081A9C
    /* 27BDA88 80080CEC 2F010224 */   addiu     $v0, $zero, 0x12F
    /* 27BDA8C 80080CF0 7C032212 */  beq        $s1, $v0, .Llevel_34_80081AE4
    /* 27BDA90 80080CF4 0C006426 */   addiu     $a0, $s3, 0xC
    /* 27BDA94 80080CF8 29090208 */  j          .Llevel_34_800824A4
    /* 27BDA98 80080CFC 00000000 */   nop
  .Llevel_34_80080D00:
    /* 27BDA9C 80080D00 46010224 */  addiu      $v0, $zero, 0x146
    /* 27BDAA0 80080D04 63042212 */  beq        $s1, $v0, .Llevel_34_80081E94
    /* 27BDAA4 80080D08 4D010224 */   addiu     $v0, $zero, 0x14D
    /* 27BDAA8 80080D0C A4042212 */  beq        $s1, $v0, .Llevel_34_80081FA0
    /* 27BDAAC 80080D10 2120A002 */   addu      $a0, $s5, $zero
    /* 27BDAB0 80080D14 29090208 */  j          .Llevel_34_800824A4
    /* 27BDAB4 80080D18 00000000 */   nop
  .Llevel_34_80080D1C:
    /* 27BDAB8 80080D1C 1D020224 */  addiu      $v0, $zero, 0x21D
    /* 27BDABC 80080D20 CB052212 */  beq        $s1, $v0, .Llevel_34_80082450
    /* 27BDAC0 80080D24 1E02222A */   slti      $v0, $s1, 0x21E
    /* 27BDAC4 80080D28 07004010 */  beqz       $v0, .Llevel_34_80080D48
    /* 27BDAC8 80080D2C E2010224 */   addiu     $v0, $zero, 0x1E2
    /* 27BDACC 80080D30 F9042212 */  beq        $s1, $v0, .Llevel_34_80082118
    /* 27BDAD0 80080D34 E3010224 */   addiu     $v0, $zero, 0x1E3
    /* 27BDAD4 80080D38 0F052212 */  beq        $s1, $v0, .Llevel_34_80082178
    /* 27BDAD8 80080D3C 00000000 */   nop
    /* 27BDADC 80080D40 29090208 */  j          .Llevel_34_800824A4
    /* 27BDAE0 80080D44 00000000 */   nop
  .Llevel_34_80080D48:
    /* 27BDAE4 80080D48 38020224 */  addiu      $v0, $zero, 0x238
    /* 27BDAE8 80080D4C BA032212 */  beq        $s1, $v0, .Llevel_34_80081C38
    /* 27BDAEC 80080D50 3802222A */   slti      $v0, $s1, 0x238
    /* 27BDAF0 80080D54 D3054014 */  bnez       $v0, .Llevel_34_800824A4
    /* 27BDAF4 80080D58 7802222A */   slti      $v0, $s1, 0x278
    /* 27BDAF8 80080D5C D1054010 */  beqz       $v0, .Llevel_34_800824A4
    /* 27BDAFC 80080D60 7602222A */   slti      $v0, $s1, 0x276
    /* 27BDB00 80080D64 CF054014 */  bnez       $v0, .Llevel_34_800824A4
    /* 27BDB04 80080D68 0C006426 */   addiu     $a0, $s3, 0xC
    /* 27BDB08 80080D6C 0F070208 */  j          .Llevel_34_80081C3C
    /* 27BDB0C 80080D70 00000000 */   nop
  .Llevel_34_80080D74:
    /* 27BDB10 80080D74 0E05010C */  jal        func_80041438
    /* 27BDB14 80080D78 21206002 */   addu      $a0, $s3, $zero
    /* 27BDB18 80080D7C 18000224 */  addiu      $v0, $zero, 0x18
    /* 27BDB1C 80080D80 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 27BDB20 80080D84 40000224 */  addiu      $v0, $zero, 0x40
    /* 27BDB24 80080D88 B6060208 */  j          .Llevel_34_80081AD8
    /* 27BDB28 80080D8C 4A0062A2 */   sb        $v0, 0x4A($s3)
  .Llevel_34_80080D90:
    /* 27BDB2C 80080D90 10000324 */  addiu      $v1, $zero, 0x10
  .Llevel_34_80080D94:
    /* 27BDB30 80080D94 36006286 */  lh         $v0, 0x36($s3)
    /* 27BDB34 80080D98 0000718E */  lw         $s1, 0x0($s3)
    /* 27BDB38 80080D9C 18004314 */  bne        $v0, $v1, .Llevel_34_80080E00
    /* 27BDB3C 80080DA0 00000000 */   nop
    /* 27BDB40 80080DA4 0680043C */  lui        $a0, %hi(D_8006712C)
    /* 27BDB44 80080DA8 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* 27BDB48 80080DAC 00000000 */  nop
    /* 27BDB4C 80080DB0 04008228 */  slti       $v0, $a0, 0x4
    /* 27BDB50 80080DB4 03004010 */  beqz       $v0, .Llevel_34_80080DC4
    /* 27BDB54 80080DB8 0A000324 */   addiu     $v1, $zero, 0xA
    /* 27BDB58 80080DBC 75030208 */  j          .Llevel_34_80080DD4
    /* 27BDB5C 80080DC0 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_34_80080DC4:
    /* 27BDB60 80080DC4 07008228 */  slti       $v0, $a0, 0x7
    /* 27BDB64 80080DC8 02004010 */  beqz       $v0, .Llevel_34_80080DD4
    /* 27BDB68 80080DCC 00000000 */   nop
    /* 27BDB6C 80080DD0 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_34_80080DD4:
    /* 27BDB70 80080DD4 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* 27BDB74 80080DD8 AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* 27BDB78 80080DDC 0000828C */  lw         $v0, 0x0($a0)
    /* 27BDB7C 80080DE0 00000000 */  nop
    /* 27BDB80 80080DE4 01004224 */  addiu      $v0, $v0, 0x1
    /* 27BDB84 80080DE8 000082AC */  sw         $v0, 0x0($a0)
    /* 27BDB88 80080DEC 2A104300 */  slt        $v0, $v0, $v1
    /* 27BDB8C 80080DF0 03004014 */  bnez       $v0, .Llevel_34_80080E00
    /* 27BDB90 80080DF4 D3000224 */   addiu     $v0, $zero, 0xD3
    /* 27BDB94 80080DF8 000080AC */  sw         $zero, 0x0($a0)
    /* 27BDB98 80080DFC 360062A6 */  sh         $v0, 0x36($s3)
  .Llevel_34_80080E00:
    /* 27BDB9C 80080E00 0E05010C */  jal        func_80041438
    /* 27BDBA0 80080E04 21206002 */   addu      $a0, $s3, $zero
    /* 27BDBA4 80080E08 0C007026 */  addiu      $s0, $s3, 0xC
    /* 27BDBA8 80080E0C 21200002 */  addu       $a0, $s0, $zero
    /* 27BDBAC 80080E10 6C6F000C */  jal        func_8001BDB0
    /* 27BDBB0 80080E14 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BDBB4 80080E18 21202002 */  addu       $a0, $s1, $zero
    /* 27BDBB8 80080E1C 1400628E */  lw         $v0, 0x14($s3)
    /* 27BDBBC 80080E20 21280002 */  addu       $a1, $s0, $zero
    /* 27BDBC0 80080E24 00024224 */  addiu      $v0, $v0, 0x200
    /* 27BDBC4 80080E28 6C6F000C */  jal        func_8001BDB0
    /* 27BDBC8 80080E2C 140062AE */   sw        $v0, 0x14($s3)
    /* 27BDBCC 80080E30 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 27BDBD0 80080E34 1C0062AE */  sw         $v0, 0x1C($s3)
    /* 27BDBD4 80080E38 02000224 */  addiu      $v0, $zero, 0x2
    /* 27BDBD8 80080E3C 470062A2 */  sb         $v0, 0x47($s3)
    /* 27BDBDC 80080E40 08070224 */  addiu      $v0, $zero, 0x708
    /* 27BDBE0 80080E44 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 27BDBE4 80080E48 4B67010C */  jal        func_80059D2C
    /* 27BDBE8 80080E4C 110020A2 */   sb        $zero, 0x11($s1)
    /* 27BDBEC 80080E50 FC004230 */  andi       $v0, $v0, 0xFC
    /* 27BDBF0 80080E54 34090208 */  j          .Llevel_34_800824D0
    /* 27BDBF4 80080E58 120022A2 */   sb        $v0, 0x12($s1)
  .Llevel_34_80080E5C:
    /* 27BDBF8 80080E5C 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BDBFC 80080E60 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 27BDC00 80080E64 0000718E */  lw         $s1, 0x0($s3)
    /* 27BDC04 80080E68 20000224 */  addiu      $v0, $zero, 0x20
    /* 27BDC08 80080E6C 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 27BDC0C 80080E70 6C6F000C */  jal        func_8001BDB0
    /* 27BDC10 80080E74 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* 27BDC14 80080E78 0E05010C */  jal        func_80041438
    /* 27BDC18 80080E7C 21206002 */   addu      $a0, $s3, $zero
    /* 27BDC1C 80080E80 36006386 */  lh         $v1, 0x36($s3)
    /* 27BDC20 80080E84 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* 27BDC24 80080E88 07006214 */  bne        $v1, $v0, .Llevel_34_80080EA8
    /* 27BDC28 80080E8C 2C010424 */   addiu     $a0, $zero, 0x12C
    /* 27BDC2C 80080E90 4B67010C */  jal        func_80059D2C
    /* 27BDC30 80080E94 00000000 */   nop
    /* 27BDC34 80080E98 4B67010C */  jal        func_80059D2C
    /* 27BDC38 80080E9C FF0F5630 */   andi      $s6, $v0, 0xFFF
    /* 27BDC3C 80080EA0 B4030208 */  j          .Llevel_34_80080ED0
    /* 27BDC40 80080EA4 FF0F5430 */   andi      $s4, $v0, 0xFFF
  .Llevel_34_80080EA8:
    /* 27BDC44 80080EA8 47E2000C */  jal        func_8003891C
    /* 27BDC48 80080EAC 34080524 */   addiu     $a1, $zero, 0x834
    /* 27BDC4C 80080EB0 21B04000 */  addu       $s6, $v0, $zero
    /* 27BDC50 80080EB4 24FA0424 */  addiu      $a0, $zero, -0x5DC
    /* 27BDC54 80080EB8 47E2000C */  jal        func_8003891C
    /* 27BDC58 80080EBC DC050524 */   addiu     $a1, $zero, 0x5DC
    /* 27BDC5C 80080EC0 4600A392 */  lbu        $v1, 0x46($s5)
    /* 27BDC60 80080EC4 00000000 */  nop
    /* 27BDC64 80080EC8 21186200 */  addu       $v1, $v1, $v0
    /* 27BDC68 80080ECC FF0F7430 */  andi       $s4, $v1, 0xFFF
  .Llevel_34_80080ED0:
    /* 27BDC6C 80080ED0 36006386 */  lh         $v1, 0x36($s3)
    /* 27BDC70 80080ED4 23010224 */  addiu      $v0, $zero, 0x123
    /* 27BDC74 80080ED8 04006214 */  bne        $v1, $v0, .Llevel_34_80080EEC
    /* 27BDC78 80080EDC 78001224 */   addiu     $s2, $zero, 0x78
    /* 27BDC7C 80080EE0 B4001224 */  addiu      $s2, $zero, 0xB4
    /* 27BDC80 80080EE4 BC030208 */  j          .Llevel_34_80080EF0
    /* 27BDC84 80080EE8 DC001724 */   addiu     $s7, $zero, 0xDC
  .Llevel_34_80080EEC:
    /* 27BDC88 80080EEC 96001724 */  addiu      $s7, $zero, 0x96
  .Llevel_34_80080EF0:
    /* 27BDC8C 80080EF0 996D000C */  jal        func_8001B664
    /* 27BDC90 80080EF4 2120C002 */   addu      $a0, $s6, $zero
    /* 27BDC94 80080EF8 21208002 */  addu       $a0, $s4, $zero
    /* 27BDC98 80080EFC 996D000C */  jal        func_8001B664
    /* 27BDC9C 80080F00 21804000 */   addu      $s0, $v0, $zero
    /* 27BDCA0 80080F04 18005200 */  mult       $v0, $s2
    /* 27BDCA4 80080F08 12400000 */  mflo       $t0
    /* 27BDCA8 80080F0C 83811000 */  sra        $s0, $s0, 6
    /* 27BDCAC 80080F10 00000000 */  nop
    /* 27BDCB0 80080F14 18000802 */  mult       $s0, $t0
    /* 27BDCB4 80080F18 2120C002 */  addu       $a0, $s6, $zero
    /* 27BDCB8 80080F1C 12400000 */  mflo       $t0
    /* 27BDCBC 80080F20 83140800 */  sra        $v0, $t0, 18
    /* 27BDCC0 80080F24 996D000C */  jal        func_8001B664
    /* 27BDCC4 80080F28 000022A6 */   sh        $v0, 0x0($s1)
    /* 27BDCC8 80080F2C 21208002 */  addu       $a0, $s4, $zero
    /* 27BDCCC 80080F30 876D000C */  jal        func_8001B61C
    /* 27BDCD0 80080F34 21804000 */   addu      $s0, $v0, $zero
    /* 27BDCD4 80080F38 18005200 */  mult       $v0, $s2
    /* 27BDCD8 80080F3C 12400000 */  mflo       $t0
    /* 27BDCDC 80080F40 83811000 */  sra        $s0, $s0, 6
    /* 27BDCE0 80080F44 00000000 */  nop
    /* 27BDCE4 80080F48 18000802 */  mult       $s0, $t0
    /* 27BDCE8 80080F4C 2120C002 */  addu       $a0, $s6, $zero
    /* 27BDCEC 80080F50 12400000 */  mflo       $t0
    /* 27BDCF0 80080F54 83140800 */  sra        $v0, $t0, 18
    /* 27BDCF4 80080F58 876D000C */  jal        func_8001B61C
    /* 27BDCF8 80080F5C 020022A6 */   sh        $v0, 0x2($s1)
    /* 27BDCFC 80080F60 18005700 */  mult       $v0, $s7
    /* 27BDD00 80080F64 12400000 */  mflo       $t0
    /* 27BDD04 80080F68 03130800 */  sra        $v0, $t0, 12
    /* 27BDD08 80080F6C 040022A6 */  sh         $v0, 0x4($s1)
    /* 27BDD0C 80080F70 5100A492 */  lbu        $a0, 0x51($s5)
    /* 27BDD10 80080F74 00000000 */  nop
    /* 27BDD14 80080F78 26008010 */  beqz       $a0, .Llevel_34_80081014
    /* 27BDD18 80080F7C 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 27BDD1C 80080F80 1800A28E */  lw         $v0, 0x18($s5)
    /* 27BDD20 80080F84 00000000 */  nop
    /* 27BDD24 80080F88 24104300 */  and        $v0, $v0, $v1
    /* 27BDD28 80080F8C 21004010 */  beqz       $v0, .Llevel_34_80081014
    /* 27BDD2C 80080F90 40100400 */   sll       $v0, $a0, 1
    /* 27BDD30 80080F94 0680013C */  lui        $at, %hi(D_80061C58)
    /* 27BDD34 80080F98 21082200 */  addu       $at, $at, $v0
    /* 27BDD38 80080F9C 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 27BDD3C 80080FA0 00000000 */  nop
    /* 27BDD40 80080FA4 80100300 */  sll        $v0, $v1, 2
    /* 27BDD44 80080FA8 21104300 */  addu       $v0, $v0, $v1
    /* 27BDD48 80080FAC 00190200 */  sll        $v1, $v0, 4
    /* 27BDD4C 80080FB0 23186200 */  subu       $v1, $v1, $v0
    /* 27BDD50 80080FB4 00002296 */  lhu        $v0, 0x0($s1)
    /* 27BDD54 80080FB8 C31A0300 */  sra        $v1, $v1, 11
    /* 27BDD58 80080FBC 21104300 */  addu       $v0, $v0, $v1
    /* 27BDD5C 80080FC0 000022A6 */  sh         $v0, 0x0($s1)
    /* 27BDD60 80080FC4 5100A292 */  lbu        $v0, 0x51($s5)
    /* 27BDD64 80080FC8 28000424 */  addiu      $a0, $zero, 0x28
    /* 27BDD68 80080FCC 40100200 */  sll        $v0, $v0, 1
    /* 27BDD6C 80080FD0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BDD70 80080FD4 21082200 */  addu       $at, $at, $v0
    /* 27BDD74 80080FD8 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 27BDD78 80080FDC 46000524 */  addiu      $a1, $zero, 0x46
    /* 27BDD7C 80080FE0 80100300 */  sll        $v0, $v1, 2
    /* 27BDD80 80080FE4 21104300 */  addu       $v0, $v0, $v1
    /* 27BDD84 80080FE8 00190200 */  sll        $v1, $v0, 4
    /* 27BDD88 80080FEC 23186200 */  subu       $v1, $v1, $v0
    /* 27BDD8C 80080FF0 02002296 */  lhu        $v0, 0x2($s1)
    /* 27BDD90 80080FF4 C31A0300 */  sra        $v1, $v1, 11
    /* 27BDD94 80080FF8 21104300 */  addu       $v0, $v0, $v1
    /* 27BDD98 80080FFC 47E2000C */  jal        func_8003891C
    /* 27BDD9C 80081000 020022A6 */   sh        $v0, 0x2($s1)
    /* 27BDDA0 80081004 04002396 */  lhu        $v1, 0x4($s1)
    /* 27BDDA4 80081008 00000000 */  nop
    /* 27BDDA8 8008100C 21186200 */  addu       $v1, $v1, $v0
    /* 27BDDAC 80081010 040023A6 */  sh         $v1, 0x4($s1)
  .Llevel_34_80081014:
    /* 27BDDB0 80081014 36006386 */  lh         $v1, 0x36($s3)
    /* 27BDDB4 80081018 98000224 */  addiu      $v0, $zero, 0x98
    /* 27BDDB8 8008101C 41006210 */  beq        $v1, $v0, .Llevel_34_80081124
    /* 27BDDBC 80081020 E0010224 */   addiu     $v0, $zero, 0x1E0
    /* 27BDDC0 80081024 3E006210 */  beq        $v1, $v0, .Llevel_34_80081120
    /* 27BDDC4 80081028 0200033C */   lui       $v1, (0x20000 >> 16)
    /* 27BDDC8 8008102C 1800A28E */  lw         $v0, 0x18($s5)
    /* 27BDDCC 80081030 00000000 */  nop
    /* 27BDDD0 80081034 24104300 */  and        $v0, $v0, $v1
    /* 27BDDD4 80081038 1B004010 */  beqz       $v0, .Llevel_34_800810A8
    /* 27BDDD8 8008103C 00000000 */   nop
    /* 27BDDDC 80081040 4600A292 */  lbu        $v0, 0x46($s5)
    /* 27BDDE0 80081044 00000000 */  nop
    /* 27BDDE4 80081048 40100200 */  sll        $v0, $v0, 1
    /* 27BDDE8 8008104C 0680013C */  lui        $at, %hi(D_80061C58)
    /* 27BDDEC 80081050 21082200 */  addu       $at, $at, $v0
    /* 27BDDF0 80081054 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 27BDDF4 80081058 00000000 */  nop
    /* 27BDDF8 8008105C C0100300 */  sll        $v0, $v1, 3
    /* 27BDDFC 80081060 23104300 */  subu       $v0, $v0, $v1
    /* 27BDE00 80081064 C0100200 */  sll        $v0, $v0, 3
    /* 27BDE04 80081068 23104300 */  subu       $v0, $v0, $v1
    /* 27BDE08 8008106C 00002396 */  lhu        $v1, 0x0($s1)
    /* 27BDE0C 80081070 83120200 */  sra        $v0, $v0, 10
    /* 27BDE10 80081074 21186200 */  addu       $v1, $v1, $v0
    /* 27BDE14 80081078 000023A6 */  sh         $v1, 0x0($s1)
    /* 27BDE18 8008107C 4600A292 */  lbu        $v0, 0x46($s5)
    /* 27BDE1C 80081080 00000000 */  nop
    /* 27BDE20 80081084 40100200 */  sll        $v0, $v0, 1
    /* 27BDE24 80081088 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BDE28 8008108C 21082200 */  addu       $at, $at, $v0
    /* 27BDE2C 80081090 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 27BDE30 80081094 00000000 */  nop
    /* 27BDE34 80081098 C0100300 */  sll        $v0, $v1, 3
    /* 27BDE38 8008109C 23104300 */  subu       $v0, $v0, $v1
    /* 27BDE3C 800810A0 43040208 */  j          .Llevel_34_8008110C
    /* 27BDE40 800810A4 C0100200 */   sll       $v0, $v0, 3
  .Llevel_34_800810A8:
    /* 27BDE44 800810A8 4600A292 */  lbu        $v0, 0x46($s5)
    /* 27BDE48 800810AC 00000000 */  nop
    /* 27BDE4C 800810B0 40100200 */  sll        $v0, $v0, 1
    /* 27BDE50 800810B4 0680013C */  lui        $at, %hi(D_80061C58)
    /* 27BDE54 800810B8 21082200 */  addu       $at, $at, $v0
    /* 27BDE58 800810BC 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 27BDE5C 800810C0 00000000 */  nop
    /* 27BDE60 800810C4 C0100300 */  sll        $v0, $v1, 3
    /* 27BDE64 800810C8 21104300 */  addu       $v0, $v0, $v1
    /* 27BDE68 800810CC 80100200 */  sll        $v0, $v0, 2
    /* 27BDE6C 800810D0 23104300 */  subu       $v0, $v0, $v1
    /* 27BDE70 800810D4 00002396 */  lhu        $v1, 0x0($s1)
    /* 27BDE74 800810D8 83120200 */  sra        $v0, $v0, 10
    /* 27BDE78 800810DC 21186200 */  addu       $v1, $v1, $v0
    /* 27BDE7C 800810E0 000023A6 */  sh         $v1, 0x0($s1)
    /* 27BDE80 800810E4 4600A292 */  lbu        $v0, 0x46($s5)
    /* 27BDE84 800810E8 00000000 */  nop
    /* 27BDE88 800810EC 40100200 */  sll        $v0, $v0, 1
    /* 27BDE8C 800810F0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BDE90 800810F4 21082200 */  addu       $at, $at, $v0
    /* 27BDE94 800810F8 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 27BDE98 800810FC 00000000 */  nop
    /* 27BDE9C 80081100 C0100300 */  sll        $v0, $v1, 3
    /* 27BDEA0 80081104 21104300 */  addu       $v0, $v0, $v1
    /* 27BDEA4 80081108 80100200 */  sll        $v0, $v0, 2
  .Llevel_34_8008110C:
    /* 27BDEA8 8008110C 23104300 */  subu       $v0, $v0, $v1
    /* 27BDEAC 80081110 02002396 */  lhu        $v1, 0x2($s1)
    /* 27BDEB0 80081114 83120200 */  sra        $v0, $v0, 10
    /* 27BDEB4 80081118 21186200 */  addu       $v1, $v1, $v0
    /* 27BDEB8 8008111C 020023A6 */  sh         $v1, 0x2($s1)
  .Llevel_34_80081120:
    /* 27BDEBC 80081120 36006386 */  lh         $v1, 0x36($s3)
  .Llevel_34_80081124:
    /* 27BDEC0 80081124 3D000224 */  addiu      $v0, $zero, 0x3D
    /* 27BDEC4 80081128 21006210 */  beq        $v1, $v0, .Llevel_34_800811B0
    /* 27BDEC8 8008112C 21206000 */   addu      $a0, $v1, $zero
    /* 27BDECC 80081130 58000224 */  addiu      $v0, $zero, 0x58
    /* 27BDED0 80081134 1E006210 */  beq        $v1, $v0, .Llevel_34_800811B0
    /* 27BDED4 80081138 42000224 */   addiu     $v0, $zero, 0x42
    /* 27BDED8 8008113C 1C006210 */  beq        $v1, $v0, .Llevel_34_800811B0
    /* 27BDEDC 80081140 7CFD8224 */   addiu     $v0, $a0, -0x284
    /* 27BDEE0 80081144 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 27BDEE4 80081148 0200422C */  sltiu      $v0, $v0, 0x2
    /* 27BDEE8 8008114C 18004014 */  bnez       $v0, .Llevel_34_800811B0
    /* 27BDEEC 80081150 00000000 */   nop
    /* 27BDEF0 80081154 4B67010C */  jal        func_80059D2C
    /* 27BDEF4 80081158 00000000 */   nop
    /* 27BDEF8 8008115C 4B67010C */  jal        func_80059D2C
    /* 27BDEFC 80081160 440062A2 */   sb        $v0, 0x44($s3)
    /* 27BDF00 80081164 4B67010C */  jal        func_80059D2C
    /* 27BDF04 80081168 450062A2 */   sb        $v0, 0x45($s3)
    /* 27BDF08 8008116C 460062A2 */  sb         $v0, 0x46($s3)
    /* 27BDF0C 80081170 00002286 */  lh         $v0, 0x0($s1)
    /* 27BDF10 80081174 0C00638E */  lw         $v1, 0xC($s3)
    /* 27BDF14 80081178 40100200 */  sll        $v0, $v0, 1
    /* 27BDF18 8008117C 21186200 */  addu       $v1, $v1, $v0
    /* 27BDF1C 80081180 0C0063AE */  sw         $v1, 0xC($s3)
    /* 27BDF20 80081184 02002286 */  lh         $v0, 0x2($s1)
    /* 27BDF24 80081188 1000638E */  lw         $v1, 0x10($s3)
    /* 27BDF28 8008118C 40100200 */  sll        $v0, $v0, 1
    /* 27BDF2C 80081190 21186200 */  addu       $v1, $v1, $v0
    /* 27BDF30 80081194 100063AE */  sw         $v1, 0x10($s3)
    /* 27BDF34 80081198 04002286 */  lh         $v0, 0x4($s1)
    /* 27BDF38 8008119C 1400638E */  lw         $v1, 0x14($s3)
    /* 27BDF3C 800811A0 40100200 */  sll        $v0, $v0, 1
    /* 27BDF40 800811A4 21186200 */  addu       $v1, $v1, $v0
    /* 27BDF44 800811A8 75040208 */  j          .Llevel_34_800811D4
    /* 27BDF48 800811AC 140063AE */   sw        $v1, 0x14($s3)
  .Llevel_34_800811B0:
    /* 27BDF4C 800811B0 4400A292 */  lbu        $v0, 0x44($s5)
    /* 27BDF50 800811B4 00000000 */  nop
    /* 27BDF54 800811B8 440062A2 */  sb         $v0, 0x44($s3)
    /* 27BDF58 800811BC 4500A292 */  lbu        $v0, 0x45($s5)
    /* 27BDF5C 800811C0 00000000 */  nop
    /* 27BDF60 800811C4 450062A2 */  sb         $v0, 0x45($s3)
    /* 27BDF64 800811C8 4600A292 */  lbu        $v0, 0x46($s5)
    /* 27BDF68 800811CC 00000000 */  nop
    /* 27BDF6C 800811D0 460062A2 */  sb         $v0, 0x46($s3)
  .Llevel_34_800811D4:
    /* 27BDF70 800811D4 4B67010C */  jal        func_80059D2C
    /* 27BDF74 800811D8 00000000 */   nop
    /* 27BDF78 800811DC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 27BDF7C 800811E0 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 27BDF80 800811E4 4B67010C */  jal        func_80059D2C
    /* 27BDF84 800811E8 060022A6 */   sh        $v0, 0x6($s1)
    /* 27BDF88 800811EC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 27BDF8C 800811F0 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 27BDF90 800811F4 4B67010C */  jal        func_80059D2C
    /* 27BDF94 800811F8 080022A6 */   sh        $v0, 0x8($s1)
    /* 27BDF98 800811FC 5A000424 */  addiu      $a0, $zero, 0x5A
    /* 27BDF9C 80081200 96000524 */  addiu      $a1, $zero, 0x96
    /* 27BDFA0 80081204 1F004230 */  andi       $v0, $v0, 0x1F
    /* 27BDFA4 80081208 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 27BDFA8 8008120C 47E2000C */  jal        func_8003891C
    /* 27BDFAC 80081210 0A0022A6 */   sh        $v0, 0xA($s1)
    /* 27BDFB0 80081214 0C0022A6 */  sh         $v0, 0xC($s1)
    /* 27BDFB4 80081218 01000224 */  addiu      $v0, $zero, 0x1
    /* 27BDFB8 8008121C 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 27BDFBC 80081220 34090208 */  j          .Llevel_34_800824D0
    /* 27BDFC0 80081224 120020A6 */   sh        $zero, 0x12($s1)
  .Llevel_34_80081228:
    /* 27BDFC4 80081228 0C006426 */  addiu      $a0, $s3, 0xC
  .Llevel_34_8008122C:
    /* 27BDFC8 8008122C 6C6F000C */  jal        func_8001BDB0
    /* 27BDFCC 80081230 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BDFD0 80081234 0E05010C */  jal        func_80041438
    /* 27BDFD4 80081238 21206002 */   addu      $a0, $s3, $zero
    /* 27BDFD8 8008123C 36006386 */  lh         $v1, 0x36($s3)
    /* 27BDFDC 80081240 03000224 */  addiu      $v0, $zero, 0x3
    /* 27BDFE0 80081244 490062A2 */  sb         $v0, 0x49($s3)
    /* 27BDFE4 80081248 D6000224 */  addiu      $v0, $zero, 0xD6
    /* 27BDFE8 8008124C 04006214 */  bne        $v1, $v0, .Llevel_34_80081260
    /* 27BDFEC 80081250 02000224 */   addiu     $v0, $zero, 0x2
    /* 27BDFF0 80081254 01000224 */  addiu      $v0, $zero, 0x1
    /* 27BDFF4 80081258 34090208 */  j          .Llevel_34_800824D0
    /* 27BDFF8 8008125C 540062A2 */   sb        $v0, 0x54($s3)
  .Llevel_34_80081260:
    /* 27BDFFC 80081260 34090208 */  j          .Llevel_34_800824D0
    /* 27BE000 80081264 540062A2 */   sb        $v0, 0x54($s3)
  .Llevel_34_80081268:
    /* 27BE004 80081268 0000708E */  lw         $s0, 0x0($s3)
    /* 27BE008 8008126C 0E05010C */  jal        func_80041438
    /* 27BE00C 80081270 21206002 */   addu      $a0, $s3, $zero
    /* 27BE010 80081274 78000224 */  addiu      $v0, $zero, 0x78
    /* 27BE014 80081278 490060A2 */  sb         $zero, 0x49($s3)
    /* 27BE018 8008127C 000000A6 */  sh         $zero, 0x0($s0)
    /* 27BE01C 80081280 080000A6 */  sh         $zero, 0x8($s0)
    /* 27BE020 80081284 060000A6 */  sh         $zero, 0x6($s0)
    /* 27BE024 80081288 040000A6 */  sh         $zero, 0x4($s0)
    /* 27BE028 8008128C 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 27BE02C 80081290 100000AE */  sw         $zero, 0x10($s0)
    /* 27BE030 80081294 0600A012 */  beqz       $s5, .Llevel_34_800812B0
    /* 27BE034 80081298 140000AE */   sw        $zero, 0x14($s0)
    /* 27BE038 8008129C 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BE03C 800812A0 6C6F000C */  jal        func_8001BDB0
    /* 27BE040 800812A4 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BE044 800812A8 CB040208 */  j          .Llevel_34_8008132C
    /* 27BE048 800812AC FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_34_800812B0:
    /* 27BE04C 800812B0 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BE050 800812B4 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* 27BE054 800812B8 FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* 27BE058 800812BC 0000A390 */  lbu        $v1, 0x0($a1)
    /* 27BE05C 800812C0 F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 27BE060 800812C4 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 27BE064 800812C8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 27BE068 800812CC 40180300 */  sll        $v1, $v1, 1
    /* 27BE06C 800812D0 0680013C */  lui        $at, %hi(D_80061C58)
    /* 27BE070 800812D4 21082300 */  addu       $at, $at, $v1
    /* 27BE074 800812D8 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* 27BE078 800812DC 1800A627 */  addiu      $a2, $sp, 0x18
    /* 27BE07C 800812E0 40110700 */  sll        $v0, $a3, 5
    /* 27BE080 800812E4 23104700 */  subu       $v0, $v0, $a3
    /* 27BE084 800812E8 80100200 */  sll        $v0, $v0, 2
    /* 27BE088 800812EC 21104700 */  addu       $v0, $v0, $a3
    /* 27BE08C 800812F0 43120200 */  sra        $v0, $v0, 9
    /* 27BE090 800812F4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 27BE094 800812F8 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BE098 800812FC 21082300 */  addu       $at, $at, $v1
    /* 27BE09C 80081300 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 27BE0A0 80081304 E8030224 */  addiu      $v0, $zero, 0x3E8
    /* 27BE0A4 80081308 2000A2AF */  sw         $v0, 0x20($sp)
    /* 27BE0A8 8008130C 40110300 */  sll        $v0, $v1, 5
    /* 27BE0AC 80081310 23104300 */  subu       $v0, $v0, $v1
    /* 27BE0B0 80081314 80100200 */  sll        $v0, $v0, 2
    /* 27BE0B4 80081318 21104300 */  addu       $v0, $v0, $v1
    /* 27BE0B8 8008131C 43120200 */  sra        $v0, $v0, 9
    /* 27BE0BC 80081320 736F000C */  jal        func_8001BDCC
    /* 27BE0C0 80081324 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 27BE0C4 80081328 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_34_8008132C:
    /* 27BE0C8 8008132C 34090208 */  j          .Llevel_34_800824D0
    /* 27BE0CC 80081330 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_34_80081334:
    /* 27BE0D0 80081334 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BE0D4 80081338 6C6F000C */  jal        func_8001BDB0
    /* 27BE0D8 8008133C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BE0DC 80081340 0E05010C */  jal        func_80041438
    /* 27BE0E0 80081344 21206002 */   addu      $a0, $s3, $zero
    /* 27BE0E4 80081348 003F023C */  lui        $v0, (0x3F005080 >> 16)
    /* 27BE0E8 8008134C 80504234 */  ori        $v0, $v0, (0x3F005080 & 0xFFFF)
    /* 27BE0EC 80081350 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 27BE0F0 80081354 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 27BE0F4 80081358 40000424 */  addiu      $a0, $zero, 0x40
    /* 27BE0F8 8008135C 4F0064A2 */  sb         $a0, 0x4F($s3)
    /* 27BE0FC 80081360 540062AE */  sw         $v0, 0x54($s3)
    /* 27BE100 80081364 001C0300 */  sll        $v1, $v1, 16
    /* 27BE104 80081368 031D0300 */  sra        $v1, $v1, 20
    /* 27BE108 8008136C 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 27BE10C 80081370 34090208 */  j          .Llevel_34_800824D0
    /* 27BE110 80081374 460063A2 */   sb        $v1, 0x46($s3)
  .Llevel_34_80081378:
    /* 27BE114 80081378 0000718E */  lw         $s1, 0x0($s3)
    /* 27BE118 8008137C 3600A286 */  lh         $v0, 0x36($s5)
    /* 27BE11C 80081380 0000B48E */  lw         $s4, 0x0($s5)
    /* 27BE120 80081384 7D004314 */  bne        $v0, $v1, .Llevel_34_8008157C
    /* 27BE124 80081388 0C006426 */   addiu     $a0, $s3, 0xC
    /* 27BE128 8008138C 2120A002 */  addu       $a0, $s5, $zero
    /* 27BE12C 80081390 21280000 */  addu       $a1, $zero, $zero
    /* 27BE130 80081394 0C007226 */  addiu      $s2, $s3, 0xC
    /* 27BE134 80081398 CC05010C */  jal        func_80041730
    /* 27BE138 8008139C 21304002 */   addu      $a2, $s2, $zero
    /* 27BE13C 800813A0 2120A002 */  addu       $a0, $s5, $zero
    /* 27BE140 800813A4 01000524 */  addiu      $a1, $zero, 0x1
    /* 27BE144 800813A8 CC05010C */  jal        func_80041730
    /* 27BE148 800813AC 1800A627 */   addiu     $a2, $sp, 0x18
    /* 27BE14C 800813B0 1800A427 */  addiu      $a0, $sp, 0x18
    /* 27BE150 800813B4 21284002 */  addu       $a1, $s2, $zero
    /* 27BE154 800813B8 806F000C */  jal        func_8001BE00
    /* 27BE158 800813BC 21308000 */   addu      $a2, $a0, $zero
    /* 27BE15C 800813C0 1800A48F */  lw         $a0, 0x18($sp)
    /* 27BE160 800813C4 1C00A58F */  lw         $a1, 0x1C($sp)
    /* 27BE164 800813C8 2E6D000C */  jal        func_8001B4B8
    /* 27BE168 800813CC 21300000 */   addu      $a2, $zero, $zero
    /* 27BE16C 800813D0 1800A427 */  addiu      $a0, $sp, 0x18
    /* 27BE170 800813D4 21280000 */  addu       $a1, $zero, $zero
    /* 27BE174 800813D8 886E000C */  jal        func_8001BA20
    /* 27BE178 800813DC 460062A2 */   sb        $v0, 0x46($s3)
    /* 27BE17C 800813E0 21204000 */  addu       $a0, $v0, $zero
    /* 27BE180 800813E4 2000A58F */  lw         $a1, 0x20($sp)
    /* 27BE184 800813E8 2E6D000C */  jal        func_8001B4B8
    /* 27BE188 800813EC 21300000 */   addu      $a2, $zero, $zero
    /* 27BE18C 800813F0 450062A2 */  sb         $v0, 0x45($s3)
    /* 27BE190 800813F4 4800A492 */  lbu        $a0, 0x48($s5)
    /* 27BE194 800813F8 63000224 */  addiu      $v0, $zero, 0x63
    /* 27BE198 800813FC FF008330 */  andi       $v1, $a0, 0xFF
    /* 27BE19C 80081400 06006214 */  bne        $v1, $v0, .Llevel_34_8008141C
    /* 27BE1A0 80081404 FCFF8224 */   addiu     $v0, $a0, -0x4
    /* 27BE1A4 80081408 63000224 */  addiu      $v0, $zero, 0x63
    /* 27BE1A8 8008140C 000020A6 */  sh         $zero, 0x0($s1)
    /* 27BE1AC 80081410 020020A6 */  sh         $zero, 0x2($s1)
    /* 27BE1B0 80081414 7F050208 */  j          .Llevel_34_800815FC
    /* 27BE1B4 80081418 040020A6 */   sh        $zero, 0x4($s1)
  .Llevel_34_8008141C:
    /* 27BE1B8 8008141C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 27BE1BC 80081420 04004010 */  beqz       $v0, .Llevel_34_80081434
    /* 27BE1C0 80081424 2800B027 */   addiu     $s0, $sp, 0x28
    /* 27BE1C4 80081428 46006292 */  lbu        $v0, 0x46($s3)
    /* 27BE1C8 8008142C 6B050208 */  j          .Llevel_34_800815AC
    /* 27BE1CC 80081430 40100200 */   sll       $v0, $v0, 1
  .Llevel_34_80081434:
    /* 27BE1D0 80081434 3000858E */  lw         $a1, 0x30($s4)
    /* 27BE1D4 80081438 21200002 */  addu       $a0, $s0, $zero
    /* 27BE1D8 8008143C 6C6F000C */  jal        func_8001BDB0
    /* 27BE1DC 80081440 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 27BE1E0 80081444 1800A427 */  addiu      $a0, $sp, 0x18
    /* 27BE1E4 80081448 21280002 */  addu       $a1, $s0, $zero
    /* 27BE1E8 8008144C 3000A28F */  lw         $v0, 0x30($sp)
    /* 27BE1EC 80081450 21304002 */  addu       $a2, $s2, $zero
    /* 27BE1F0 80081454 00044224 */  addiu      $v0, $v0, 0x400
    /* 27BE1F4 80081458 806F000C */  jal        func_8001BE00
    /* 27BE1F8 8008145C 3000A2AF */   sw        $v0, 0x30($sp)
    /* 27BE1FC 80081460 21204002 */  addu       $a0, $s2, $zero
    /* 27BE200 80081464 21280002 */  addu       $a1, $s0, $zero
    /* 27BE204 80081468 80010624 */  addiu      $a2, $zero, 0x180
    /* 27BE208 8008146C F7FF0724 */  addiu      $a3, $zero, -0x9
    /* 27BE20C 80081470 3800A227 */  addiu      $v0, $sp, 0x38
    /* 27BE210 80081474 9BE3000C */  jal        func_80038E6C
    /* 27BE214 80081478 1000A2AF */   sw        $v0, 0x10($sp)
    /* 27BE218 8008147C 3800A38F */  lw         $v1, 0x38($sp)
    /* 27BE21C 80081480 00000000 */  nop
    /* 27BE220 80081484 0300601C */  bgtz       $v1, .Llevel_34_80081494
    /* 27BE224 80081488 2000A2AF */   sw        $v0, 0x20($sp)
    /* 27BE228 8008148C 01000224 */  addiu      $v0, $zero, 0x1
    /* 27BE22C 80081490 3800A2AF */  sw         $v0, 0x38($sp)
  .Llevel_34_80081494:
    /* 27BE230 80081494 3800A28F */  lw         $v0, 0x38($sp)
    /* 27BE234 80081498 00000000 */  nop
    /* 27BE238 8008149C 060022A6 */  sh         $v0, 0x6($s1)
    /* 27BE23C 800814A0 00140200 */  sll        $v0, $v0, 16
    /* 27BE240 800814A4 1800A38F */  lw         $v1, 0x18($sp)
    /* 27BE244 800814A8 03140200 */  sra        $v0, $v0, 16
    /* 27BE248 800814AC 1A006200 */  div        $zero, $v1, $v0
    /* 27BE24C 800814B0 02004014 */  bnez       $v0, .Llevel_34_800814BC
    /* 27BE250 800814B4 00000000 */   nop
    /* 27BE254 800814B8 0D000700 */  break      7
  .Llevel_34_800814BC:
    /* 27BE258 800814BC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 27BE25C 800814C0 04004114 */  bne        $v0, $at, .Llevel_34_800814D4
    /* 27BE260 800814C4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 27BE264 800814C8 02006114 */  bne        $v1, $at, .Llevel_34_800814D4
    /* 27BE268 800814CC 00000000 */   nop
    /* 27BE26C 800814D0 0D000600 */  break      6
  .Llevel_34_800814D4:
    /* 27BE270 800814D4 12180000 */  mflo       $v1
    /* 27BE274 800814D8 00000000 */  nop
    /* 27BE278 800814DC 000023A6 */  sh         $v1, 0x0($s1)
    /* 27BE27C 800814E0 06002386 */  lh         $v1, 0x6($s1)
    /* 27BE280 800814E4 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 27BE284 800814E8 00000000 */  nop
    /* 27BE288 800814EC 1A004300 */  div        $zero, $v0, $v1
    /* 27BE28C 800814F0 02006014 */  bnez       $v1, .Llevel_34_800814FC
    /* 27BE290 800814F4 00000000 */   nop
    /* 27BE294 800814F8 0D000700 */  break      7
  .Llevel_34_800814FC:
    /* 27BE298 800814FC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 27BE29C 80081500 04006114 */  bne        $v1, $at, .Llevel_34_80081514
    /* 27BE2A0 80081504 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 27BE2A4 80081508 02004114 */  bne        $v0, $at, .Llevel_34_80081514
    /* 27BE2A8 8008150C 00000000 */   nop
    /* 27BE2AC 80081510 0D000600 */  break      6
  .Llevel_34_80081514:
    /* 27BE2B0 80081514 12100000 */  mflo       $v0
    /* 27BE2B4 80081518 00000000 */  nop
    /* 27BE2B8 8008151C 020022A6 */  sh         $v0, 0x2($s1)
    /* 27BE2BC 80081520 2000A28F */  lw         $v0, 0x20($sp)
    /* 27BE2C0 80081524 080020A6 */  sh         $zero, 0x8($s1)
    /* 27BE2C4 80081528 040022A6 */  sh         $v0, 0x4($s1)
    /* 27BE2C8 8008152C 3000848E */  lw         $a0, 0x30($s4)
    /* 27BE2CC 80081530 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 27BE2D0 80081534 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 27BE2D4 80081538 00000000 */  nop
    /* 27BE2D8 8008153C 23208200 */  subu       $a0, $a0, $v0
    /* 27BE2DC 80081540 40190400 */  sll        $v1, $a0, 5
    /* 27BE2E0 80081544 23186400 */  subu       $v1, $v1, $a0
    /* 27BE2E4 80081548 40190300 */  sll        $v1, $v1, 5
    /* 27BE2E8 8008154C 21186400 */  addu       $v1, $v1, $a0
    /* 27BE2EC 80081550 C0100300 */  sll        $v0, $v1, 3
    /* 27BE2F0 80081554 21186200 */  addu       $v1, $v1, $v0
    /* 27BE2F4 80081558 C0130300 */  sll        $v0, $v1, 15
    /* 27BE2F8 8008155C 23104300 */  subu       $v0, $v0, $v1
    /* 27BE2FC 80081560 80100200 */  sll        $v0, $v0, 2
    /* 27BE300 80081564 21104400 */  addu       $v0, $v0, $a0
    /* 27BE304 80081568 23100200 */  negu       $v0, $v0
    /* 27BE308 8008156C C3100200 */  sra        $v0, $v0, 3
    /* 27BE30C 80081570 0A0022A6 */  sh         $v0, 0xA($s1)
    /* 27BE310 80081574 82050208 */  j          .Llevel_34_80081608
    /* 27BE314 80081578 480060A2 */   sb        $zero, 0x48($s3)
  .Llevel_34_8008157C:
    /* 27BE318 8008157C 6C6F000C */  jal        func_8001BDB0
    /* 27BE31C 80081580 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BE320 80081584 1400628E */  lw         $v0, 0x14($s3)
    /* 27BE324 80081588 00000000 */  nop
    /* 27BE328 8008158C 00044224 */  addiu      $v0, $v0, 0x400
    /* 27BE32C 80081590 140062AE */  sw         $v0, 0x14($s3)
    /* 27BE330 80081594 4600A292 */  lbu        $v0, 0x46($s5)
    /* 27BE334 80081598 00000000 */  nop
    /* 27BE338 8008159C 460062A2 */  sb         $v0, 0x46($s3)
    /* 27BE33C 800815A0 46006292 */  lbu        $v0, 0x46($s3)
    /* 27BE340 800815A4 450060A2 */  sb         $zero, 0x45($s3)
    /* 27BE344 800815A8 40100200 */  sll        $v0, $v0, 1
  .Llevel_34_800815AC:
    /* 27BE348 800815AC 0680013C */  lui        $at, %hi(D_80061C58)
    /* 27BE34C 800815B0 21082200 */  addu       $at, $at, $v0
    /* 27BE350 800815B4 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 27BE354 800815B8 00000000 */  nop
    /* 27BE358 800815BC 03190300 */  sra        $v1, $v1, 4
    /* 27BE35C 800815C0 1800A3AF */  sw         $v1, 0x18($sp)
    /* 27BE360 800815C4 46006292 */  lbu        $v0, 0x46($s3)
    /* 27BE364 800815C8 00000000 */  nop
    /* 27BE368 800815CC 40100200 */  sll        $v0, $v0, 1
    /* 27BE36C 800815D0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BE370 800815D4 21082200 */  addu       $at, $at, $v0
    /* 27BE374 800815D8 D81B2284 */  lh         $v0, %lo(D_80061BD8)($at)
    /* 27BE378 800815DC 00000000 */  nop
    /* 27BE37C 800815E0 03110200 */  sra        $v0, $v0, 4
    /* 27BE380 800815E4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 27BE384 800815E8 000023A6 */  sh         $v1, 0x0($s1)
    /* 27BE388 800815EC 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 27BE38C 800815F0 040020A6 */  sh         $zero, 0x4($s1)
    /* 27BE390 800815F4 020022A6 */  sh         $v0, 0x2($s1)
    /* 27BE394 800815F8 01000224 */  addiu      $v0, $zero, 0x1
  .Llevel_34_800815FC:
    /* 27BE398 800815FC 480062A2 */  sb         $v0, 0x48($s3)
    /* 27BE39C 80081600 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 27BE3A0 80081604 0A0022A6 */  sh         $v0, 0xA($s1)
  .Llevel_34_80081608:
    /* 27BE3A4 80081608 21206002 */  addu       $a0, $s3, $zero
    /* 27BE3A8 8008160C 4C00A392 */  lbu        $v1, 0x4C($s5)
    /* 27BE3AC 80081610 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 27BE3B0 80081614 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 27BE3B4 80081618 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 27BE3B8 8008161C 1C0062AE */  sw         $v0, 0x1C($s3)
    /* 27BE3BC 80081620 20000224 */  addiu      $v0, $zero, 0x20
    /* 27BE3C0 80081624 4E0062A2 */  sb         $v0, 0x4E($s3)
    /* 27BE3C4 80081628 32090208 */  j          .Llevel_34_800824C8
    /* 27BE3C8 8008162C 4C0063A2 */   sb        $v1, 0x4C($s3)
  .Llevel_34_80081630:
    /* 27BE3CC 80081630 2000A426 */  addiu      $a0, $s5, 0x20
    /* 27BE3D0 80081634 4000B027 */  addiu      $s0, $sp, 0x40
    /* 27BE3D4 80081638 21280002 */  addu       $a1, $s0, $zero
    /* 27BE3D8 8008163C 0000748E */  lw         $s4, 0x0($s3)
    /* 27BE3DC 80081640 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 27BE3E0 80081644 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 27BE3E4 80081648 40000224 */  addiu      $v0, $zero, 0x40
    /* 27BE3E8 8008164C 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 27BE3EC 80081650 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 27BE3F0 80081654 1C0062AE */  sw         $v0, 0x1C($s3)
    /* 27BE3F4 80081658 08070224 */  addiu      $v0, $zero, 0x708
    /* 27BE3F8 8008165C 4000A2AF */  sw         $v0, 0x40($sp)
    /* 27BE3FC 80081660 4400A0AF */  sw         $zero, 0x44($sp)
    /* 27BE400 80081664 4000A292 */  lbu        $v0, 0x40($s5)
    /* 27BE404 80081668 21300002 */  addu       $a2, $s0, $zero
    /* 27BE408 8008166C 40110200 */  sll        $v0, $v0, 5
    /* 27BE40C 80081670 00024224 */  addiu      $v0, $v0, 0x200
    /* 27BE410 80081674 696E000C */  jal        func_8001B9A4
    /* 27BE414 80081678 4800A2AF */   sw        $v0, 0x48($sp)
    /* 27BE418 8008167C 0C007126 */  addiu      $s1, $s3, 0xC
    /* 27BE41C 80081680 21202002 */  addu       $a0, $s1, $zero
    /* 27BE420 80081684 21280002 */  addu       $a1, $s0, $zero
    /* 27BE424 80081688 736F000C */  jal        func_8001BDCC
    /* 27BE428 8008168C 0C00A626 */   addiu     $a2, $s5, 0xC
    /* 27BE42C 80081690 4600A292 */  lbu        $v0, 0x46($s5)
    /* 27BE430 80081694 00000000 */  nop
    /* 27BE434 80081698 460062A2 */  sb         $v0, 0x46($s3)
    /* 27BE438 8008169C F8FF0224 */  addiu      $v0, $zero, -0x8
    /* 27BE43C 800816A0 0C0082AE */  sw         $v0, 0xC($s4)
    /* 27BE440 800816A4 4000A392 */  lbu        $v1, 0x40($s5)
    /* 27BE444 800816A8 46006292 */  lbu        $v0, 0x46($s3)
    /* 27BE448 800816AC 00190300 */  sll        $v1, $v1, 4
    /* 27BE44C 800816B0 40100200 */  sll        $v0, $v0, 1
    /* 27BE450 800816B4 0680013C */  lui        $at, %hi(D_80061C58)
    /* 27BE454 800816B8 21082200 */  addu       $at, $at, $v0
    /* 27BE458 800816BC 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 27BE45C 800816C0 C0006624 */  addiu      $a2, $v1, 0xC0
    /* 27BE460 800816C4 18004600 */  mult       $v0, $a2
    /* 27BE464 800816C8 12400000 */  mflo       $t0
    /* 27BE468 800816CC 03130800 */  sra        $v0, $t0, 12
    /* 27BE46C 800816D0 000082AE */  sw         $v0, 0x0($s4)
    /* 27BE470 800816D4 46006292 */  lbu        $v0, 0x46($s3)
    /* 27BE474 800816D8 00000000 */  nop
    /* 27BE478 800816DC 40100200 */  sll        $v0, $v0, 1
    /* 27BE47C 800816E0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BE480 800816E4 21082200 */  addu       $at, $at, $v0
    /* 27BE484 800816E8 D81B2284 */  lh         $v0, %lo(D_80061BD8)($at)
    /* 27BE488 800816EC 00000000 */  nop
    /* 27BE48C 800816F0 18004600 */  mult       $v0, $a2
    /* 27BE490 800816F4 12400000 */  mflo       $t0
    /* 27BE494 800816F8 03130800 */  sra        $v0, $t0, 12
    /* 27BE498 800816FC 040082AE */  sw         $v0, 0x4($s4)
    /* 27BE49C 80081700 4900A392 */  lbu        $v1, 0x49($s5)
    /* 27BE4A0 80081704 03000224 */  addiu      $v0, $zero, 0x3
    /* 27BE4A4 80081708 1F006214 */  bne        $v1, $v0, .Llevel_34_80081788
    /* 27BE4A8 8008170C 01000224 */   addiu     $v0, $zero, 0x1
    /* 27BE4AC 80081710 0000A28E */  lw         $v0, 0x0($s5)
    /* 27BE4B0 80081714 00000000 */  nop
    /* 27BE4B4 80081718 1000438C */  lw         $v1, 0x10($v0)
    /* 27BE4B8 8008171C 00000000 */  nop
    /* 27BE4BC 80081720 40100300 */  sll        $v0, $v1, 1
    /* 27BE4C0 80081724 21104300 */  addu       $v0, $v0, $v1
    /* 27BE4C4 80081728 80100200 */  sll        $v0, $v0, 2
    /* 27BE4C8 8008172C 23104300 */  subu       $v0, $v0, $v1
    /* 27BE4CC 80081730 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 27BE4D0 80081734 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 27BE4D4 80081738 C0100200 */  sll        $v0, $v0, 3
    /* 27BE4D8 8008173C 21104300 */  addu       $v0, $v0, $v1
    /* 27BE4DC 80081740 0000428C */  lw         $v0, 0x0($v0)
    /* 27BE4E0 80081744 21202002 */  addu       $a0, $s1, $zero
    /* 27BE4E4 80081748 120080A2 */  sb         $zero, 0x12($s4)
    /* 27BE4E8 8008174C 0680053C */  lui        $a1, %hi(D_80066F14)
    /* 27BE4EC 80081750 146FA58C */  lw         $a1, %lo(D_80066F14)($a1)
    /* 27BE4F0 80081754 3000438C */  lw         $v1, 0x30($v0)
    /* 27BE4F4 80081758 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 27BE4F8 8008175C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 27BE4FC 80081760 40100300 */  sll        $v0, $v1, 1
    /* 27BE500 80081764 21104300 */  addu       $v0, $v0, $v1
    /* 27BE504 80081768 80100200 */  sll        $v0, $v0, 2
    /* 27BE508 8008176C 23104300 */  subu       $v0, $v0, $v1
    /* 27BE50C 80081770 C0100200 */  sll        $v0, $v0, 3
    /* 27BE510 80081774 2128A200 */  addu       $a1, $a1, $v0
    /* 27BE514 80081778 9BE3000C */  jal        func_80038E6C
    /* 27BE518 8008177C 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 27BE51C 80081780 E8050208 */  j          .Llevel_34_800817A0
    /* 27BE520 80081784 080082AE */   sw        $v0, 0x8($s4)
  .Llevel_34_80081788:
    /* 27BE524 80081788 120082A2 */  sb         $v0, 0x12($s4)
    /* 27BE528 8008178C 4000A292 */  lbu        $v0, 0x40($s5)
    /* 27BE52C 80081790 00000000 */  nop
    /* 27BE530 80081794 C0100200 */  sll        $v0, $v0, 3
    /* 27BE534 80081798 94004224 */  addiu      $v0, $v0, 0x94
    /* 27BE538 8008179C 080082AE */  sw         $v0, 0x8($s4)
  .Llevel_34_800817A0:
    /* 27BE53C 800817A0 4B67010C */  jal        func_80059D2C
    /* 27BE540 800817A4 130080A2 */   sb        $zero, 0x13($s4)
    /* 27BE544 800817A8 21900000 */  addu       $s2, $zero, $zero
    /* 27BE548 800817AC 7000B527 */  addiu      $s5, $sp, 0x70
    /* 27BE54C 800817B0 9000A2A3 */  sb         $v0, 0x90($sp)
    /* 27BE550 800817B4 45006292 */  lbu        $v0, 0x45($s3)
    /* 27BE554 800817B8 5000B127 */  addiu      $s1, $sp, 0x50
    /* 27BE558 800817BC 9100A2A3 */  sb         $v0, 0x91($sp)
    /* 27BE55C 800817C0 46006292 */  lbu        $v0, 0x46($s3)
    /* 27BE560 800817C4 6000B027 */  addiu      $s0, $sp, 0x60
    /* 27BE564 800817C8 9200A2A3 */  sb         $v0, 0x92($sp)
    /* 27BE568 800817CC 9000A427 */  addiu      $a0, $sp, 0x90
  .Llevel_34_800817D0:
    /* 27BE56C 800817D0 2128A002 */  addu       $a1, $s5, $zero
    /* 27BE570 800817D4 21300000 */  addu       $a2, $zero, $zero
    /* 27BE574 800817D8 9000A293 */  lbu        $v0, 0x90($sp)
    /* 27BE578 800817DC 01005226 */  addiu      $s2, $s2, 0x1
    /* 27BE57C 800817E0 20004224 */  addiu      $v0, $v0, 0x20
    /* 27BE580 800817E4 B26D000C */  jal        func_8001B6C8
    /* 27BE584 800817E8 9000A2A3 */   sb        $v0, 0x90($sp)
    /* 27BE588 800817EC 4B67010C */  jal        func_80059D2C
    /* 27BE58C 800817F0 5000A0AF */   sw        $zero, 0x50($sp)
    /* 27BE590 800817F4 2120A002 */  addu       $a0, $s5, $zero
    /* 27BE594 800817F8 21282002 */  addu       $a1, $s1, $zero
    /* 27BE598 800817FC 21302002 */  addu       $a2, $s1, $zero
    /* 27BE59C 80081800 0F004230 */  andi       $v0, $v0, 0xF
    /* 27BE5A0 80081804 20004224 */  addiu      $v0, $v0, 0x20
    /* 27BE5A4 80081808 5400A2AF */  sw         $v0, 0x54($sp)
    /* 27BE5A8 8008180C 696E000C */  jal        func_8001B9A4
    /* 27BE5AC 80081810 5800A0AF */   sw        $zero, 0x58($sp)
    /* 27BE5B0 80081814 21200002 */  addu       $a0, $s0, $zero
    /* 27BE5B4 80081818 6C6F000C */  jal        func_8001BDB0
    /* 27BE5B8 8008181C 21282002 */   addu      $a1, $s1, $zero
    /* 27BE5BC 80081820 21200002 */  addu       $a0, $s0, $zero
    /* 27BE5C0 80081824 486F000C */  jal        func_8001BD20
    /* 27BE5C4 80081828 02000524 */   addiu     $a1, $zero, 0x2
    /* 27BE5C8 8008182C 21200002 */  addu       $a0, $s0, $zero
    /* 27BE5CC 80081830 21280002 */  addu       $a1, $s0, $zero
    /* 27BE5D0 80081834 736F000C */  jal        func_8001BDCC
    /* 27BE5D4 80081838 0C006626 */   addiu     $a2, $s3, 0xC
    /* 27BE5D8 8008183C 01000424 */  addiu      $a0, $zero, 0x1
    /* 27BE5DC 80081840 0D000524 */  addiu      $a1, $zero, 0xD
    /* 27BE5E0 80081844 21300002 */  addu       $a2, $s0, $zero
    /* 27BE5E4 80081848 0680023C */  lui        $v0, %hi(D_800670FC)
    /* 27BE5E8 8008184C FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* 27BE5EC 80081850 00000000 */  nop
    /* 27BE5F0 80081854 09F84000 */  jalr       $v0
    /* 27BE5F4 80081858 21382002 */   addu      $a3, $s1, $zero
    /* 27BE5F8 8008185C 0800422A */  slti       $v0, $s2, 0x8
    /* 27BE5FC 80081860 DBFF4014 */  bnez       $v0, .Llevel_34_800817D0
    /* 27BE600 80081864 9000A427 */   addiu     $a0, $sp, 0x90
    /* 27BE604 80081868 0E05010C */  jal        func_80041438
    /* 27BE608 8008186C 21206002 */   addu      $a0, $s3, $zero
    /* 27BE60C 80081870 0A000224 */  addiu      $v0, $zero, 0xA
    /* 27BE610 80081874 34090208 */  j          .Llevel_34_800824D0
    /* 27BE614 80081878 100082A6 */   sh        $v0, 0x10($s4)
  .Llevel_34_8008187C:
    /* 27BE618 8008187C 0000718E */  lw         $s1, 0x0($s3)
    /* 27BE61C 80081880 6C6F000C */  jal        func_8001BDB0
    /* 27BE620 80081884 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BE624 80081888 4600A292 */  lbu        $v0, 0x46($s5)
    /* 27BE628 8008188C 21206002 */  addu       $a0, $s3, $zero
    /* 27BE62C 80081890 0E05010C */  jal        func_80041438
    /* 27BE630 80081894 460062A2 */   sb        $v0, 0x46($s3)
    /* 27BE634 80081898 21300000 */  addu       $a2, $zero, $zero
    /* 27BE638 8008189C 0780103C */  lui        $s0, %hi(D_80069FF0)
    /* 27BE63C 800818A0 F09F1026 */  addiu      $s0, $s0, %lo(D_80069FF0)
    /* 27BE640 800818A4 0C00638E */  lw         $v1, 0xC($s3)
    /* 27BE644 800818A8 0000048E */  lw         $a0, 0x0($s0)
    /* 27BE648 800818AC 1000628E */  lw         $v0, 0x10($s3)
    /* 27BE64C 800818B0 0780053C */  lui        $a1, %hi(D_80069FF4)
    /* 27BE650 800818B4 F49FA58C */  lw         $a1, %lo(D_80069FF4)($a1)
    /* 27BE654 800818B8 23206400 */  subu       $a0, $v1, $a0
    /* 27BE658 800818BC 2E6D000C */  jal        func_8001B4B8
    /* 27BE65C 800818C0 23284500 */   subu      $a1, $v0, $a1
    /* 27BE660 800818C4 40100200 */  sll        $v0, $v0, 1
    /* 27BE664 800818C8 0680013C */  lui        $at, %hi(D_80061C58)
    /* 27BE668 800818CC 21082200 */  addu       $at, $at, $v0
    /* 27BE66C 800818D0 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 27BE670 800818D4 21300000 */  addu       $a2, $zero, $zero
    /* 27BE674 800818D8 80180200 */  sll        $v1, $v0, 2
    /* 27BE678 800818DC 21186200 */  addu       $v1, $v1, $v0
    /* 27BE67C 800818E0 00110300 */  sll        $v0, $v1, 4
    /* 27BE680 800818E4 23104300 */  subu       $v0, $v0, $v1
    /* 27BE684 800818E8 C3120200 */  sra        $v0, $v0, 11
    /* 27BE688 800818EC 000022AE */  sw         $v0, 0x0($s1)
    /* 27BE68C 800818F0 0C00638E */  lw         $v1, 0xC($s3)
    /* 27BE690 800818F4 0000048E */  lw         $a0, 0x0($s0)
    /* 27BE694 800818F8 1000628E */  lw         $v0, 0x10($s3)
    /* 27BE698 800818FC 0780053C */  lui        $a1, %hi(D_80069FF4)
    /* 27BE69C 80081900 F49FA58C */  lw         $a1, %lo(D_80069FF4)($a1)
    /* 27BE6A0 80081904 23206400 */  subu       $a0, $v1, $a0
    /* 27BE6A4 80081908 2E6D000C */  jal        func_8001B4B8
    /* 27BE6A8 8008190C 23284500 */   subu      $a1, $v0, $a1
    /* 27BE6AC 80081910 40100200 */  sll        $v0, $v0, 1
    /* 27BE6B0 80081914 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BE6B4 80081918 21082200 */  addu       $at, $at, $v0
    /* 27BE6B8 8008191C D81B2284 */  lh         $v0, %lo(D_80061BD8)($at)
    /* 27BE6BC 80081920 00000000 */  nop
    /* 27BE6C0 80081924 80180200 */  sll        $v1, $v0, 2
    /* 27BE6C4 80081928 21186200 */  addu       $v1, $v1, $v0
    /* 27BE6C8 8008192C 00110300 */  sll        $v0, $v1, 4
    /* 27BE6CC 80081930 23104300 */  subu       $v0, $v0, $v1
    /* 27BE6D0 80081934 C3120200 */  sra        $v0, $v0, 11
    /* 27BE6D4 80081938 040022AE */  sw         $v0, 0x4($s1)
    /* 27BE6D8 8008193C 5100A292 */  lbu        $v0, 0x51($s5)
    /* 27BE6DC 80081940 00000000 */  nop
    /* 27BE6E0 80081944 12004010 */  beqz       $v0, .Llevel_34_80081990
    /* 27BE6E4 80081948 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 27BE6E8 8008194C 1800A28E */  lw         $v0, 0x18($s5)
    /* 27BE6EC 80081950 00000000 */  nop
    /* 27BE6F0 80081954 24104300 */  and        $v0, $v0, $v1
    /* 27BE6F4 80081958 0D004010 */  beqz       $v0, .Llevel_34_80081990
    /* 27BE6F8 8008195C 1E000424 */   addiu     $a0, $zero, 0x1E
    /* 27BE6FC 80081960 63E2000C */  jal        func_8003898C
    /* 27BE700 80081964 64000524 */   addiu     $a1, $zero, 0x64
    /* 27BE704 80081968 1E000424 */  addiu      $a0, $zero, 0x1E
    /* 27BE708 8008196C 0000238E */  lw         $v1, 0x0($s1)
    /* 27BE70C 80081970 64000524 */  addiu      $a1, $zero, 0x64
    /* 27BE710 80081974 21186200 */  addu       $v1, $v1, $v0
    /* 27BE714 80081978 63E2000C */  jal        func_8003898C
    /* 27BE718 8008197C 000023AE */   sw        $v1, 0x0($s1)
    /* 27BE71C 80081980 96000424 */  addiu      $a0, $zero, 0x96
    /* 27BE720 80081984 0400238E */  lw         $v1, 0x4($s1)
    /* 27BE724 80081988 70060208 */  j          .Llevel_34_800819C0
    /* 27BE728 8008198C C8000524 */   addiu     $a1, $zero, 0xC8
  .Llevel_34_80081990:
    /* 27BE72C 80081990 21200000 */  addu       $a0, $zero, $zero
    /* 27BE730 80081994 63E2000C */  jal        func_8003898C
    /* 27BE734 80081998 32000524 */   addiu     $a1, $zero, 0x32
    /* 27BE738 8008199C 21200000 */  addu       $a0, $zero, $zero
    /* 27BE73C 800819A0 0000238E */  lw         $v1, 0x0($s1)
    /* 27BE740 800819A4 32000524 */  addiu      $a1, $zero, 0x32
    /* 27BE744 800819A8 21186200 */  addu       $v1, $v1, $v0
    /* 27BE748 800819AC 63E2000C */  jal        func_8003898C
    /* 27BE74C 800819B0 000023AE */   sw        $v1, 0x0($s1)
    /* 27BE750 800819B4 64000424 */  addiu      $a0, $zero, 0x64
    /* 27BE754 800819B8 0400238E */  lw         $v1, 0x4($s1)
    /* 27BE758 800819BC 96000524 */  addiu      $a1, $zero, 0x96
  .Llevel_34_800819C0:
    /* 27BE75C 800819C0 21186200 */  addu       $v1, $v1, $v0
    /* 27BE760 800819C4 47E2000C */  jal        func_8003891C
    /* 27BE764 800819C8 040023AE */   sw        $v1, 0x4($s1)
    /* 27BE768 800819CC 080022AE */  sw         $v0, 0x8($s1)
    /* 27BE76C 800819D0 3C000424 */  addiu      $a0, $zero, 0x3C
    /* 27BE770 800819D4 47E2000C */  jal        func_8003891C
    /* 27BE774 800819D8 50000524 */   addiu     $a1, $zero, 0x50
    /* 27BE778 800819DC 0C0022AE */  sw         $v0, 0xC($s1)
    /* 27BE77C 800819E0 02000224 */  addiu      $v0, $zero, 0x2
    /* 27BE780 800819E4 480062A2 */  sb         $v0, 0x48($s3)
    /* 27BE784 800819E8 34090208 */  j          .Llevel_34_800824D0
    /* 27BE788 800819EC 080060AE */   sw        $zero, 0x8($s3)
  .Llevel_34_800819F0:
    /* 27BE78C 800819F0 0E05010C */  jal        func_80041438
    /* 27BE790 800819F4 21206002 */   addu      $a0, $s3, $zero
    /* 27BE794 800819F8 02000224 */  addiu      $v0, $zero, 0x2
    /* 27BE798 800819FC 3600A012 */  beqz       $s5, .Llevel_34_80081AD8
    /* 27BE79C 80081A00 540062A2 */   sb        $v0, 0x54($s3)
    /* 27BE7A0 80081A04 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BE7A4 80081A08 0000628E */  lw         $v0, 0x0($s3)
    /* 27BE7A8 80081A0C 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 27BE7AC 80081A10 6C6F000C */  jal        func_8001BDB0
    /* 27BE7B0 80081A14 000055AC */   sw        $s5, 0x0($v0)
    /* 27BE7B4 80081A18 0A000224 */  addiu      $v0, $zero, 0xA
    /* 27BE7B8 80081A1C 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 27BE7BC 80081A20 1400628E */  lw         $v0, 0x14($s3)
    /* 27BE7C0 80081A24 08000324 */  addiu      $v1, $zero, 0x8
    /* 27BE7C4 80081A28 4C0063A2 */  sb         $v1, 0x4C($s3)
    /* 27BE7C8 80081A2C 00044224 */  addiu      $v0, $v0, 0x400
    /* 27BE7CC 80081A30 34090208 */  j          .Llevel_34_800824D0
    /* 27BE7D0 80081A34 140062AE */   sw        $v0, 0x14($s3)
  .Llevel_34_80081A38:
    /* 27BE7D4 80081A38 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BE7D8 80081A3C 0000708E */  lw         $s0, 0x0($s3)
    /* 27BE7DC 80081A40 6C6F000C */  jal        func_8001BDB0
    /* 27BE7E0 80081A44 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BE7E4 80081A48 21200000 */  addu       $a0, $zero, $zero
    /* 27BE7E8 80081A4C 47E2000C */  jal        func_8003891C
    /* 27BE7EC 80081A50 FF000524 */   addiu     $a1, $zero, 0xFF
    /* 27BE7F0 80081A54 21206002 */  addu       $a0, $s3, $zero
    /* 27BE7F4 80081A58 0E05010C */  jal        func_80041438
    /* 27BE7F8 80081A5C 460062A2 */   sb        $v0, 0x46($s3)
    /* 27BE7FC 80081A60 78000424 */  addiu      $a0, $zero, 0x78
    /* 27BE800 80081A64 47E2000C */  jal        func_8003891C
    /* 27BE804 80081A68 B4000524 */   addiu     $a1, $zero, 0xB4
    /* 27BE808 80081A6C 000002AE */  sw         $v0, 0x0($s0)
    /* 27BE80C 80081A70 C0100200 */  sll        $v0, $v0, 3
    /* 27BE810 80081A74 F8014230 */  andi       $v0, $v0, 0x1F8
    /* 27BE814 80081A78 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BE818 80081A7C 21082200 */  addu       $at, $at, $v0
    /* 27BE81C 80081A80 D81B2294 */  lhu        $v0, %lo(D_80061BD8)($at)
    /* 27BE820 80081A84 00000000 */  nop
    /* 27BE824 80081A88 00140200 */  sll        $v0, $v0, 16
    /* 27BE828 80081A8C C3150200 */  sra        $v0, $v0, 23
    /* 27BE82C 80081A90 40004224 */  addiu      $v0, $v0, 0x40
    /* 27BE830 80081A94 34090208 */  j          .Llevel_34_800824D0
    /* 27BE834 80081A98 450062A2 */   sb        $v0, 0x45($s3)
  .Llevel_34_80081A9C:
    /* 27BE838 80081A9C 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BE83C 80081AA0 0000708E */  lw         $s0, 0x0($s3)
    /* 27BE840 80081AA4 6C6F000C */  jal        func_8001BDB0
    /* 27BE844 80081AA8 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BE848 80081AAC 0E05010C */  jal        func_80041438
    /* 27BE84C 80081AB0 21206002 */   addu      $a0, $s3, $zero
    /* 27BE850 80081AB4 21200002 */  addu       $a0, $s0, $zero
    /* 27BE854 80081AB8 686F000C */  jal        func_8001BDA0
    /* 27BE858 80081ABC 100000AE */   sw        $zero, 0x10($s0)
    /* 27BE85C 80081AC0 80000224 */  addiu      $v0, $zero, 0x80
    /* 27BE860 80081AC4 080002AE */  sw         $v0, 0x8($s0)
    /* 27BE864 80081AC8 F8FF0224 */  addiu      $v0, $zero, -0x8
    /* 27BE868 80081ACC 0C0002AE */  sw         $v0, 0xC($s0)
    /* 27BE86C 80081AD0 04000224 */  addiu      $v0, $zero, 0x4
    /* 27BE870 80081AD4 480062A2 */  sb         $v0, 0x48($s3)
  .Llevel_34_80081AD8:
    /* 27BE874 80081AD8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 27BE878 80081ADC 34090208 */  j          .Llevel_34_800824D0
    /* 27BE87C 80081AE0 1C0062AE */   sw        $v0, 0x1C($s3)
  .Llevel_34_80081AE4:
    /* 27BE880 80081AE4 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 27BE884 80081AE8 0000B08E */  lw         $s0, 0x0($s5)
    /* 27BE888 80081AEC 0000718E */  lw         $s1, 0x0($s3)
    /* 27BE88C 80081AF0 20000224 */  addiu      $v0, $zero, 0x20
    /* 27BE890 80081AF4 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 27BE894 80081AF8 03000224 */  addiu      $v0, $zero, 0x3
    /* 27BE898 80081AFC 6C6F000C */  jal        func_8001BDB0
    /* 27BE89C 80081B00 490062A2 */   sb        $v0, 0x49($s3)
    /* 27BE8A0 80081B04 0E05010C */  jal        func_80041438
    /* 27BE8A4 80081B08 21206002 */   addu      $a0, $s3, $zero
    /* 27BE8A8 80081B0C 4B67010C */  jal        func_80059D2C
    /* 27BE8AC 80081B10 00000000 */   nop
    /* 27BE8B0 80081B14 01004230 */  andi       $v0, $v0, 0x1
    /* 27BE8B4 80081B18 03004010 */  beqz       $v0, .Llevel_34_80081B28
    /* 27BE8B8 80081B1C 01000224 */   addiu     $v0, $zero, 0x1
    /* 27BE8BC 80081B20 3C0062A2 */  sb         $v0, 0x3C($s3)
    /* 27BE8C0 80081B24 3D0062A2 */  sb         $v0, 0x3D($s3)
  .Llevel_34_80081B28:
    /* 27BE8C4 80081B28 0000038E */  lw         $v1, 0x0($s0)
    /* 27BE8C8 80081B2C 01000224 */  addiu      $v0, $zero, 0x1
    /* 27BE8CC 80081B30 0A006214 */  bne        $v1, $v0, .Llevel_34_80081B5C
    /* 27BE8D0 80081B34 64000424 */   addiu     $a0, $zero, 0x64
    /* 27BE8D4 80081B38 47E2000C */  jal        func_8003891C
    /* 27BE8D8 80081B3C 96000524 */   addiu     $a1, $zero, 0x96
    /* 27BE8DC 80081B40 21200000 */  addu       $a0, $zero, $zero
    /* 27BE8E0 80081B44 F4010524 */  addiu      $a1, $zero, 0x1F4
    /* 27BE8E4 80081B48 63E2000C */  jal        func_8003898C
    /* 27BE8E8 80081B4C 9800A2AF */   sw        $v0, 0x98($sp)
    /* 27BE8EC 80081B50 2C010424 */  addiu      $a0, $zero, 0x12C
    /* 27BE8F0 80081B54 DF060208 */  j          .Llevel_34_80081B7C
    /* 27BE8F4 80081B58 08070524 */   addiu     $a1, $zero, 0x708
  .Llevel_34_80081B5C:
    /* 27BE8F8 80081B5C 47E2000C */  jal        func_8003891C
    /* 27BE8FC 80081B60 C8000524 */   addiu     $a1, $zero, 0xC8
    /* 27BE900 80081B64 00FC0424 */  addiu      $a0, $zero, -0x400
    /* 27BE904 80081B68 00040524 */  addiu      $a1, $zero, 0x400
    /* 27BE908 80081B6C 47E2000C */  jal        func_8003891C
    /* 27BE90C 80081B70 9800A2AF */   sw        $v0, 0x98($sp)
    /* 27BE910 80081B74 F4010424 */  addiu      $a0, $zero, 0x1F4
    /* 27BE914 80081B78 F00A0524 */  addiu      $a1, $zero, 0xAF0
  .Llevel_34_80081B7C:
    /* 27BE918 80081B7C 47E2000C */  jal        func_8003891C
    /* 27BE91C 80081B80 9C00A2AF */   sw        $v0, 0x9C($sp)
    /* 27BE920 80081B84 A000A2AF */  sw         $v0, 0xA0($sp)
    /* 27BE924 80081B88 2000A426 */  addiu      $a0, $s5, 0x20
    /* 27BE928 80081B8C 9800B027 */  addiu      $s0, $sp, 0x98
    /* 27BE92C 80081B90 21280002 */  addu       $a1, $s0, $zero
    /* 27BE930 80081B94 696E000C */  jal        func_8001B9A4
    /* 27BE934 80081B98 21300002 */   addu      $a2, $s0, $zero
    /* 27BE938 80081B9C 9800A28F */  lw         $v0, 0x98($sp)
    /* 27BE93C 80081BA0 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 27BE940 80081BA4 83100200 */  sra        $v0, $v0, 2
    /* 27BE944 80081BA8 000022A6 */  sh         $v0, 0x0($s1)
    /* 27BE948 80081BAC 9C00A28F */  lw         $v0, 0x9C($sp)
    /* 27BE94C 80081BB0 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 27BE950 80081BB4 18004300 */  mult       $v0, $v1
    /* 27BE954 80081BB8 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BE958 80081BBC 21288000 */  addu       $a1, $a0, $zero
    /* 27BE95C 80081BC0 C3170200 */  sra        $v0, $v0, 31
    /* 27BE960 80081BC4 10400000 */  mfhi       $t0
    /* 27BE964 80081BC8 23100201 */  subu       $v0, $t0, $v0
    /* 27BE968 80081BCC 020022A6 */  sh         $v0, 0x2($s1)
    /* 27BE96C 80081BD0 A000A28F */  lw         $v0, 0xA0($sp)
    /* 27BE970 80081BD4 21300002 */  addu       $a2, $s0, $zero
    /* 27BE974 80081BD8 C3100200 */  sra        $v0, $v0, 3
    /* 27BE978 80081BDC 736F000C */  jal        func_8001BDCC
    /* 27BE97C 80081BE0 040022A6 */   sh        $v0, 0x4($s1)
    /* 27BE980 80081BE4 4B67010C */  jal        func_80059D2C
    /* 27BE984 80081BE8 00000000 */   nop
    /* 27BE988 80081BEC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 27BE98C 80081BF0 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 27BE990 80081BF4 4B67010C */  jal        func_80059D2C
    /* 27BE994 80081BF8 060022A6 */   sh        $v0, 0x6($s1)
    /* 27BE998 80081BFC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 27BE99C 80081C00 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 27BE9A0 80081C04 4B67010C */  jal        func_80059D2C
    /* 27BE9A4 80081C08 080022A6 */   sh        $v0, 0x8($s1)
    /* 27BE9A8 80081C0C 28000424 */  addiu      $a0, $zero, 0x28
    /* 27BE9AC 80081C10 1F004230 */  andi       $v0, $v0, 0x1F
    /* 27BE9B0 80081C14 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 27BE9B4 80081C18 0A0022A6 */  sh         $v0, 0xA($s1)
    /* 27BE9B8 80081C1C 1400A28E */  lw         $v0, 0x14($s5)
    /* 27BE9BC 80081C20 50000524 */  addiu      $a1, $zero, 0x50
    /* 27BE9C0 80081C24 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 27BE9C4 80081C28 47E2000C */  jal        func_8003891C
    /* 27BE9C8 80081C2C 100022AE */   sw        $v0, 0x10($s1)
    /* 27BE9CC 80081C30 34090208 */  j          .Llevel_34_800824D0
    /* 27BE9D0 80081C34 0C0022AE */   sw        $v0, 0xC($s1)
  .Llevel_34_80081C38:
    /* 27BE9D4 80081C38 0C006426 */  addiu      $a0, $s3, 0xC
  .Llevel_34_80081C3C:
    /* 27BE9D8 80081C3C 0C00A526 */  addiu      $a1, $s5, 0xC
    /* 27BE9DC 80081C40 0000748E */  lw         $s4, 0x0($s3)
    /* 27BE9E0 80081C44 20000224 */  addiu      $v0, $zero, 0x20
    /* 27BE9E4 80081C48 6C6F000C */  jal        func_8001BDB0
    /* 27BE9E8 80081C4C 4C0062A2 */   sb        $v0, 0x4C($s3)
    /* 27BE9EC 80081C50 0E05010C */  jal        func_80041438
    /* 27BE9F0 80081C54 21206002 */   addu      $a0, $s3, $zero
    /* 27BE9F4 80081C58 4B67010C */  jal        func_80059D2C
    /* 27BE9F8 80081C5C 00000000 */   nop
    /* 27BE9FC 80081C60 4B67010C */  jal        func_80059D2C
    /* 27BEA00 80081C64 FF0F5230 */   andi      $s2, $v0, 0xFFF
    /* 27BEA04 80081C68 FF075130 */  andi       $s1, $v0, 0x7FF
    /* 27BEA08 80081C6C 996D000C */  jal        func_8001B664
    /* 27BEA0C 80081C70 21202002 */   addu      $a0, $s1, $zero
    /* 27BEA10 80081C74 21204002 */  addu       $a0, $s2, $zero
    /* 27BEA14 80081C78 996D000C */  jal        func_8001B664
    /* 27BEA18 80081C7C 21804000 */   addu      $s0, $v0, $zero
    /* 27BEA1C 80081C80 18000202 */  mult       $s0, $v0
    /* 27BEA20 80081C84 12400000 */  mflo       $t0
    /* 27BEA24 80081C88 4900A292 */  lbu        $v0, 0x49($s5)
    /* 27BEA28 80081C8C 00000000 */  nop
    /* 27BEA2C 80081C90 18000201 */  mult       $t0, $v0
    /* 27BEA30 80081C94 21202002 */  addu       $a0, $s1, $zero
    /* 27BEA34 80081C98 12400000 */  mflo       $t0
    /* 27BEA38 80081C9C 03160800 */  sra        $v0, $t0, 24
    /* 27BEA3C 80081CA0 996D000C */  jal        func_8001B664
    /* 27BEA40 80081CA4 000082A6 */   sh        $v0, 0x0($s4)
    /* 27BEA44 80081CA8 21204002 */  addu       $a0, $s2, $zero
    /* 27BEA48 80081CAC 876D000C */  jal        func_8001B61C
    /* 27BEA4C 80081CB0 21804000 */   addu      $s0, $v0, $zero
    /* 27BEA50 80081CB4 18000202 */  mult       $s0, $v0
    /* 27BEA54 80081CB8 12400000 */  mflo       $t0
    /* 27BEA58 80081CBC 4900A292 */  lbu        $v0, 0x49($s5)
    /* 27BEA5C 80081CC0 00000000 */  nop
    /* 27BEA60 80081CC4 18000201 */  mult       $t0, $v0
    /* 27BEA64 80081CC8 21202002 */  addu       $a0, $s1, $zero
    /* 27BEA68 80081CCC 12400000 */  mflo       $t0
    /* 27BEA6C 80081CD0 03160800 */  sra        $v0, $t0, 24
    /* 27BEA70 80081CD4 876D000C */  jal        func_8001B61C
    /* 27BEA74 80081CD8 020082A6 */   sh        $v0, 0x2($s4)
    /* 27BEA78 80081CDC 4900A392 */  lbu        $v1, 0x49($s5)
    /* 27BEA7C 80081CE0 00000000 */  nop
    /* 27BEA80 80081CE4 18004300 */  mult       $v0, $v1
    /* 27BEA84 80081CE8 12400000 */  mflo       $t0
    /* 27BEA88 80081CEC 03130800 */  sra        $v0, $t0, 12
    /* 27BEA8C 80081CF0 040082A6 */  sh         $v0, 0x4($s4)
    /* 27BEA90 80081CF4 1800A28E */  lw         $v0, 0x18($s5)
    /* 27BEA94 80081CF8 0200033C */  lui        $v1, (0x20000 >> 16)
    /* 27BEA98 80081CFC 24104300 */  and        $v0, $v0, $v1
    /* 27BEA9C 80081D00 14004010 */  beqz       $v0, .Llevel_34_80081D54
    /* 27BEAA0 80081D04 04000224 */   addiu     $v0, $zero, 0x4
    /* 27BEAA4 80081D08 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 27BEAA8 80081D0C 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 27BEAAC 80081D10 00000000 */  nop
    /* 27BEAB0 80081D14 03006210 */  beq        $v1, $v0, .Llevel_34_80081D24
    /* 27BEAB4 80081D18 0C000224 */   addiu     $v0, $zero, 0xC
    /* 27BEAB8 80081D1C 0D006214 */  bne        $v1, $v0, .Llevel_34_80081D54
    /* 27BEABC 80081D20 00000000 */   nop
  .Llevel_34_80081D24:
    /* 27BEAC0 80081D24 0780023C */  lui        $v0, %hi(D_8006A084)
    /* 27BEAC4 80081D28 84A0428C */  lw         $v0, %lo(D_8006A084)($v0)
    /* 27BEAC8 80081D2C 00008396 */  lhu        $v1, 0x0($s4)
    /* 27BEACC 80081D30 83110200 */  sra        $v0, $v0, 6
    /* 27BEAD0 80081D34 21186200 */  addu       $v1, $v1, $v0
    /* 27BEAD4 80081D38 000083A6 */  sh         $v1, 0x0($s4)
    /* 27BEAD8 80081D3C 0780023C */  lui        $v0, %hi(D_8006A088)
    /* 27BEADC 80081D40 88A0428C */  lw         $v0, %lo(D_8006A088)($v0)
    /* 27BEAE0 80081D44 02008396 */  lhu        $v1, 0x2($s4)
    /* 27BEAE4 80081D48 83110200 */  sra        $v0, $v0, 6
    /* 27BEAE8 80081D4C 21186200 */  addu       $v1, $v1, $v0
    /* 27BEAEC 80081D50 020083A6 */  sh         $v1, 0x2($s4)
  .Llevel_34_80081D54:
    /* 27BEAF0 80081D54 5100A492 */  lbu        $a0, 0x51($s5)
    /* 27BEAF4 80081D58 00000000 */  nop
    /* 27BEAF8 80081D5C 26008010 */  beqz       $a0, .Llevel_34_80081DF8
    /* 27BEAFC 80081D60 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 27BEB00 80081D64 1800A28E */  lw         $v0, 0x18($s5)
    /* 27BEB04 80081D68 00000000 */  nop
    /* 27BEB08 80081D6C 24104300 */  and        $v0, $v0, $v1
    /* 27BEB0C 80081D70 21004010 */  beqz       $v0, .Llevel_34_80081DF8
    /* 27BEB10 80081D74 40100400 */   sll       $v0, $a0, 1
    /* 27BEB14 80081D78 0680013C */  lui        $at, %hi(D_80061C58)
    /* 27BEB18 80081D7C 21082200 */  addu       $at, $at, $v0
    /* 27BEB1C 80081D80 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 27BEB20 80081D84 00000000 */  nop
    /* 27BEB24 80081D88 80100300 */  sll        $v0, $v1, 2
    /* 27BEB28 80081D8C 21104300 */  addu       $v0, $v0, $v1
    /* 27BEB2C 80081D90 00190200 */  sll        $v1, $v0, 4
    /* 27BEB30 80081D94 23186200 */  subu       $v1, $v1, $v0
    /* 27BEB34 80081D98 00008296 */  lhu        $v0, 0x0($s4)
    /* 27BEB38 80081D9C C31A0300 */  sra        $v1, $v1, 11
    /* 27BEB3C 80081DA0 21104300 */  addu       $v0, $v0, $v1
    /* 27BEB40 80081DA4 000082A6 */  sh         $v0, 0x0($s4)
    /* 27BEB44 80081DA8 5100A292 */  lbu        $v0, 0x51($s5)
    /* 27BEB48 80081DAC 28000424 */  addiu      $a0, $zero, 0x28
    /* 27BEB4C 80081DB0 40100200 */  sll        $v0, $v0, 1
    /* 27BEB50 80081DB4 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BEB54 80081DB8 21082200 */  addu       $at, $at, $v0
    /* 27BEB58 80081DBC D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 27BEB5C 80081DC0 46000524 */  addiu      $a1, $zero, 0x46
    /* 27BEB60 80081DC4 80100300 */  sll        $v0, $v1, 2
    /* 27BEB64 80081DC8 21104300 */  addu       $v0, $v0, $v1
    /* 27BEB68 80081DCC 00190200 */  sll        $v1, $v0, 4
    /* 27BEB6C 80081DD0 23186200 */  subu       $v1, $v1, $v0
    /* 27BEB70 80081DD4 02008296 */  lhu        $v0, 0x2($s4)
    /* 27BEB74 80081DD8 C31A0300 */  sra        $v1, $v1, 11
    /* 27BEB78 80081DDC 21104300 */  addu       $v0, $v0, $v1
    /* 27BEB7C 80081DE0 47E2000C */  jal        func_8003891C
    /* 27BEB80 80081DE4 020082A6 */   sh        $v0, 0x2($s4)
    /* 27BEB84 80081DE8 04008396 */  lhu        $v1, 0x4($s4)
    /* 27BEB88 80081DEC 00000000 */  nop
    /* 27BEB8C 80081DF0 21186200 */  addu       $v1, $v1, $v0
    /* 27BEB90 80081DF4 040083A6 */  sh         $v1, 0x4($s4)
  .Llevel_34_80081DF8:
    /* 27BEB94 80081DF8 00008286 */  lh         $v0, 0x0($s4)
    /* 27BEB98 80081DFC 0C00638E */  lw         $v1, 0xC($s3)
    /* 27BEB9C 80081E00 80100200 */  sll        $v0, $v0, 2
    /* 27BEBA0 80081E04 21186200 */  addu       $v1, $v1, $v0
    /* 27BEBA4 80081E08 0C0063AE */  sw         $v1, 0xC($s3)
    /* 27BEBA8 80081E0C 02008286 */  lh         $v0, 0x2($s4)
    /* 27BEBAC 80081E10 1000638E */  lw         $v1, 0x10($s3)
    /* 27BEBB0 80081E14 80100200 */  sll        $v0, $v0, 2
    /* 27BEBB4 80081E18 21186200 */  addu       $v1, $v1, $v0
    /* 27BEBB8 80081E1C 100063AE */  sw         $v1, 0x10($s3)
    /* 27BEBBC 80081E20 04008286 */  lh         $v0, 0x4($s4)
    /* 27BEBC0 80081E24 1400638E */  lw         $v1, 0x14($s3)
    /* 27BEBC4 80081E28 80100200 */  sll        $v0, $v0, 2
    /* 27BEBC8 80081E2C 21186200 */  addu       $v1, $v1, $v0
    /* 27BEBCC 80081E30 4B67010C */  jal        func_80059D2C
    /* 27BEBD0 80081E34 140063AE */   sw        $v1, 0x14($s3)
    /* 27BEBD4 80081E38 4B67010C */  jal        func_80059D2C
    /* 27BEBD8 80081E3C 450062A2 */   sb        $v0, 0x45($s3)
    /* 27BEBDC 80081E40 4B67010C */  jal        func_80059D2C
    /* 27BEBE0 80081E44 460062A2 */   sb        $v0, 0x46($s3)
    /* 27BEBE4 80081E48 1F004230 */  andi       $v0, $v0, 0x1F
    /* 27BEBE8 80081E4C F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 27BEBEC 80081E50 4B67010C */  jal        func_80059D2C
    /* 27BEBF0 80081E54 060082A6 */   sh        $v0, 0x6($s4)
    /* 27BEBF4 80081E58 1F004230 */  andi       $v0, $v0, 0x1F
    /* 27BEBF8 80081E5C F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 27BEBFC 80081E60 4B67010C */  jal        func_80059D2C
    /* 27BEC00 80081E64 080082A6 */   sh        $v0, 0x8($s4)
    /* 27BEC04 80081E68 32000424 */  addiu      $a0, $zero, 0x32
    /* 27BEC08 80081E6C 1F004230 */  andi       $v0, $v0, 0x1F
    /* 27BEC0C 80081E70 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 27BEC10 80081E74 0A0082A6 */  sh         $v0, 0xA($s4)
    /* 27BEC14 80081E78 1400A28E */  lw         $v0, 0x14($s5)
    /* 27BEC18 80081E7C 50000524 */  addiu      $a1, $zero, 0x50
    /* 27BEC1C 80081E80 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 27BEC20 80081E84 47E2000C */  jal        func_8003891C
    /* 27BEC24 80081E88 100082AE */   sw        $v0, 0x10($s4)
    /* 27BEC28 80081E8C 34090208 */  j          .Llevel_34_800824D0
    /* 27BEC2C 80081E90 0C0082AE */   sw        $v0, 0xC($s4)
  .Llevel_34_80081E94:
    /* 27BEC30 80081E94 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BEC34 80081E98 0000708E */  lw         $s0, 0x0($s3)
    /* 27BEC38 80081E9C 6C6F000C */  jal        func_8001BDB0
    /* 27BEC3C 80081EA0 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BEC40 80081EA4 0E05010C */  jal        func_80041438
    /* 27BEC44 80081EA8 21206002 */   addu      $a0, $s3, $zero
    /* 27BEC48 80081EAC 10000224 */  addiu      $v0, $zero, 0x10
    /* 27BEC4C 80081EB0 3B000324 */  addiu      $v1, $zero, 0x3B
    /* 27BEC50 80081EB4 000002A6 */  sh         $v0, 0x0($s0)
    /* 27BEC54 80081EB8 80000224 */  addiu      $v0, $zero, 0x80
    /* 27BEC58 80081EBC 570063A2 */  sb         $v1, 0x57($s3)
    /* 27BEC5C 80081EC0 540062A2 */  sb         $v0, 0x54($s3)
    /* 27BEC60 80081EC4 550062A2 */  sb         $v0, 0x55($s3)
    /* 27BEC64 80081EC8 560060A2 */  sb         $zero, 0x56($s3)
    /* 27BEC68 80081ECC 3600A486 */  lh         $a0, 0x36($s5)
    /* 27BEC6C 80081ED0 98010224 */  addiu      $v0, $zero, 0x198
    /* 27BEC70 80081ED4 04008210 */  beq        $a0, $v0, .Llevel_34_80081EE8
    /* 27BEC74 80081ED8 01000224 */   addiu     $v0, $zero, 0x1
    /* 27BEC78 80081EDC C2020224 */  addiu      $v0, $zero, 0x2C2
    /* 27BEC7C 80081EE0 05008214 */  bne        $a0, $v0, .Llevel_34_80081EF8
    /* 27BEC80 80081EE4 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_34_80081EE8:
    /* 27BEC84 80081EE8 020002A2 */  sb         $v0, 0x2($s0)
    /* 27BEC88 80081EEC 030002A2 */  sb         $v0, 0x3($s0)
    /* 27BEC8C 80081EF0 CC070208 */  j          .Llevel_34_80081F30
    /* 27BEC90 80081EF4 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_34_80081EF8:
    /* 27BEC94 80081EF8 70020224 */  addiu      $v0, $zero, 0x270
    /* 27BEC98 80081EFC 0A008214 */  bne        $a0, $v0, .Llevel_34_80081F28
    /* 27BEC9C 80081F00 60000224 */   addiu     $v0, $zero, 0x60
    /* 27BECA0 80081F04 02000224 */  addiu      $v0, $zero, 0x2
    /* 27BECA4 80081F08 020002A2 */  sb         $v0, 0x2($s0)
    /* 27BECA8 80081F0C E0000224 */  addiu      $v0, $zero, 0xE0
    /* 27BECAC 80081F10 540062A2 */  sb         $v0, 0x54($s3)
    /* 27BECB0 80081F14 550062A2 */  sb         $v0, 0x55($s3)
    /* 27BECB4 80081F18 560062A2 */  sb         $v0, 0x56($s3)
    /* 27BECB8 80081F1C 60000224 */  addiu      $v0, $zero, 0x60
    /* 27BECBC 80081F20 CB070208 */  j          .Llevel_34_80081F2C
    /* 27BECC0 80081F24 570063A2 */   sb        $v1, 0x57($s3)
  .Llevel_34_80081F28:
    /* 27BECC4 80081F28 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_34_80081F2C:
    /* 27BECC8 80081F2C 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_34_80081F30:
    /* 27BECCC 80081F30 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 27BECD0 80081F34 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BECD4 80081F38 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* 27BECD8 80081F3C AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* 27BECDC 80081F40 21280002 */  addu       $a1, $s0, $zero
    /* 27BECE0 80081F44 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 27BECE4 80081F48 DB6F000C */  jal        func_8001BF6C
    /* 27BECE8 80081F4C 470062A2 */   sb        $v0, 0x47($s3)
    /* 27BECEC 80081F50 21204000 */  addu       $a0, $v0, $zero
    /* 27BECF0 80081F54 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* 27BECF4 80081F58 B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* 27BECF8 80081F5C 1400658E */  lw         $a1, 0x14($s3)
    /* 27BECFC 80081F60 21300000 */  addu       $a2, $zero, $zero
    /* 27BED00 80081F64 2E6D000C */  jal        func_8001B4B8
    /* 27BED04 80081F68 23284500 */   subu      $a1, $v0, $a1
    /* 27BED08 80081F6C 21300000 */  addu       $a2, $zero, $zero
    /* 27BED0C 80081F70 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 27BED10 80081F74 450062A2 */  sb         $v0, 0x45($s3)
    /* 27BED14 80081F78 0000038E */  lw         $v1, 0x0($s0)
    /* 27BED18 80081F7C 0C00648E */  lw         $a0, 0xC($s3)
    /* 27BED1C 80081F80 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* 27BED20 80081F84 B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* 27BED24 80081F88 1000658E */  lw         $a1, 0x10($s3)
    /* 27BED28 80081F8C 23206400 */  subu       $a0, $v1, $a0
    /* 27BED2C 80081F90 2E6D000C */  jal        func_8001B4B8
    /* 27BED30 80081F94 23284500 */   subu      $a1, $v0, $a1
    /* 27BED34 80081F98 34090208 */  j          .Llevel_34_800824D0
    /* 27BED38 80081F9C 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_34_80081FA0:
    /* 27BED3C 80081FA0 21280000 */  addu       $a1, $zero, $zero
    /* 27BED40 80081FA4 A800B127 */  addiu      $s1, $sp, 0xA8
    /* 27BED44 80081FA8 21302002 */  addu       $a2, $s1, $zero
    /* 27BED48 80081FAC 0000B48E */  lw         $s4, 0x0($s5)
    /* 27BED4C 80081FB0 0000728E */  lw         $s2, 0x0($s3)
    /* 27BED50 80081FB4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 27BED54 80081FB8 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 27BED58 80081FBC 20000224 */  addiu      $v0, $zero, 0x20
    /* 27BED5C 80081FC0 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 27BED60 80081FC4 10000224 */  addiu      $v0, $zero, 0x10
    /* 27BED64 80081FC8 CC05010C */  jal        func_80041730
    /* 27BED68 80081FCC 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* 27BED6C 80081FD0 2120A002 */  addu       $a0, $s5, $zero
    /* 27BED70 80081FD4 01000524 */  addiu      $a1, $zero, 0x1
    /* 27BED74 80081FD8 B800B027 */  addiu      $s0, $sp, 0xB8
    /* 27BED78 80081FDC CC05010C */  jal        func_80041730
    /* 27BED7C 80081FE0 21300002 */   addu      $a2, $s0, $zero
    /* 27BED80 80081FE4 21202002 */  addu       $a0, $s1, $zero
    /* 27BED84 80081FE8 21282002 */  addu       $a1, $s1, $zero
    /* 27BED88 80081FEC 736F000C */  jal        func_8001BDCC
    /* 27BED8C 80081FF0 21300002 */   addu      $a2, $s0, $zero
    /* 27BED90 80081FF4 21202002 */  addu       $a0, $s1, $zero
    /* 27BED94 80081FF8 526F000C */  jal        func_8001BD48
    /* 27BED98 80081FFC 01000524 */   addiu     $a1, $zero, 0x1
    /* 27BED9C 80082000 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BEDA0 80082004 6C6F000C */  jal        func_8001BDB0
    /* 27BEDA4 80082008 21282002 */   addu      $a1, $s1, $zero
    /* 27BEDA8 8008200C 4600A292 */  lbu        $v0, 0x46($s5)
    /* 27BEDAC 80082010 00000000 */  nop
    /* 27BEDB0 80082014 460062A2 */  sb         $v0, 0x46($s3)
    /* 27BEDB4 80082018 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 27BEDB8 8008201C 100042AE */  sw         $v0, 0x10($s2)
    /* 27BEDBC 80082020 0000828E */  lw         $v0, 0x0($s4)
    /* 27BEDC0 80082024 00000000 */  nop
    /* 27BEDC4 80082028 1D004010 */  beqz       $v0, .Llevel_34_800820A0
    /* 27BEDC8 8008202C 80FF0324 */   addiu     $v1, $zero, -0x80
    /* 27BEDCC 80082030 46006292 */  lbu        $v0, 0x46($s3)
    /* 27BEDD0 80082034 00000000 */  nop
    /* 27BEDD4 80082038 40100200 */  sll        $v0, $v0, 1
    /* 27BEDD8 8008203C 0680013C */  lui        $at, %hi(D_80061C58)
    /* 27BEDDC 80082040 21082200 */  addu       $at, $at, $v0
    /* 27BEDE0 80082044 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 27BEDE4 80082048 00000000 */  nop
    /* 27BEDE8 8008204C 43110200 */  sra        $v0, $v0, 5
    /* 27BEDEC 80082050 000042AE */  sw         $v0, 0x0($s2)
    /* 27BEDF0 80082054 46006292 */  lbu        $v0, 0x46($s3)
    /* 27BEDF4 80082058 00000000 */  nop
    /* 27BEDF8 8008205C 40100200 */  sll        $v0, $v0, 1
    /* 27BEDFC 80082060 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BEE00 80082064 21082200 */  addu       $at, $at, $v0
    /* 27BEE04 80082068 D81B2284 */  lh         $v0, %lo(D_80061BD8)($at)
    /* 27BEE08 8008206C 080043AE */  sw         $v1, 0x8($s2)
    /* 27BEE0C 80082070 43110200 */  sra        $v0, $v0, 5
    /* 27BEE10 80082074 040042AE */  sw         $v0, 0x4($s2)
    /* 27BEE14 80082078 0000828E */  lw         $v0, 0x0($s4)
    /* 27BEE18 8008207C 00000000 */  nop
    /* 27BEE1C 80082080 480062A2 */  sb         $v0, 0x48($s3)
    /* 27BEE20 80082084 0000838E */  lw         $v1, 0x0($s4)
    /* 27BEE24 80082088 02000224 */  addiu      $v0, $zero, 0x2
    /* 27BEE28 8008208C 18006214 */  bne        $v1, $v0, .Llevel_34_800820F0
    /* 27BEE2C 80082090 21206002 */   addu      $a0, $s3, $zero
    /* 27BEE30 80082094 0800828E */  lw         $v0, 0x8($s4)
    /* 27BEE34 80082098 3C080208 */  j          .Llevel_34_800820F0
    /* 27BEE38 8008209C 100042AE */   sw        $v0, 0x10($s2)
  .Llevel_34_800820A0:
    /* 27BEE3C 800820A0 46006292 */  lbu        $v0, 0x46($s3)
    /* 27BEE40 800820A4 00000000 */  nop
    /* 27BEE44 800820A8 40100200 */  sll        $v0, $v0, 1
    /* 27BEE48 800820AC 0680013C */  lui        $at, %hi(D_80061C58)
    /* 27BEE4C 800820B0 21082200 */  addu       $at, $at, $v0
    /* 27BEE50 800820B4 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 27BEE54 800820B8 00000000 */  nop
    /* 27BEE58 800820BC 03110200 */  sra        $v0, $v0, 4
    /* 27BEE5C 800820C0 000042AE */  sw         $v0, 0x0($s2)
    /* 27BEE60 800820C4 46006292 */  lbu        $v0, 0x46($s3)
    /* 27BEE64 800820C8 00000000 */  nop
    /* 27BEE68 800820CC 40100200 */  sll        $v0, $v0, 1
    /* 27BEE6C 800820D0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 27BEE70 800820D4 21082200 */  addu       $at, $at, $v0
    /* 27BEE74 800820D8 D81B2284 */  lh         $v0, %lo(D_80061BD8)($at)
    /* 27BEE78 800820DC C0FF0324 */  addiu      $v1, $zero, -0x40
    /* 27BEE7C 800820E0 080043AE */  sw         $v1, 0x8($s2)
    /* 27BEE80 800820E4 03110200 */  sra        $v0, $v0, 4
    /* 27BEE84 800820E8 040042AE */  sw         $v0, 0x4($s2)
    /* 27BEE88 800820EC 21206002 */  addu       $a0, $s3, $zero
  .Llevel_34_800820F0:
    /* 27BEE8C 800820F0 F8FF0224 */  addiu      $v0, $zero, -0x8
    /* 27BEE90 800820F4 0C0042AE */  sw         $v0, 0xC($s2)
    /* 27BEE94 800820F8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 27BEE98 800820FC 0E05010C */  jal        func_80041438
    /* 27BEE9C 80082100 140042AE */   sw        $v0, 0x14($s2)
    /* 27BEEA0 80082104 53006292 */  lbu        $v0, 0x53($s3)
    /* 27BEEA4 80082108 00000000 */  nop
    /* 27BEEA8 8008210C 80004234 */  ori        $v0, $v0, 0x80
    /* 27BEEAC 80082110 34090208 */  j          .Llevel_34_800824D0
    /* 27BEEB0 80082114 530062A2 */   sb        $v0, 0x53($s3)
  .Llevel_34_80082118:
    /* 27BEEB4 80082118 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BEEB8 8008211C 0000708E */  lw         $s0, 0x0($s3)
    /* 27BEEBC 80082120 6C6F000C */  jal        func_8001BDB0
    /* 27BEEC0 80082124 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BEEC4 80082128 0E05010C */  jal        func_80041438
    /* 27BEEC8 8008212C 21206002 */   addu      $a0, $s3, $zero
    /* 27BEECC 80082130 10000224 */  addiu      $v0, $zero, 0x10
    /* 27BEED0 80082134 000002AE */  sw         $v0, 0x0($s0)
    /* 27BEED4 80082138 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 27BEED8 8008213C 570062A2 */  sb         $v0, 0x57($s3)
    /* 27BEEDC 80082140 80000224 */  addiu      $v0, $zero, 0x80
    /* 27BEEE0 80082144 540062A2 */  sb         $v0, 0x54($s3)
    /* 27BEEE4 80082148 40000224 */  addiu      $v0, $zero, 0x40
    /* 27BEEE8 8008214C 550062A2 */  sb         $v0, 0x55($s3)
    /* 27BEEEC 80082150 4B67010C */  jal        func_80059D2C
    /* 27BEEF0 80082154 560060A2 */   sb        $zero, 0x56($s3)
    /* 27BEEF4 80082158 4B67010C */  jal        func_80059D2C
    /* 27BEEF8 8008215C 450062A2 */   sb        $v0, 0x45($s3)
    /* 27BEEFC 80082160 460062A2 */  sb         $v0, 0x46($s3)
    /* 27BEF00 80082164 46000224 */  addiu      $v0, $zero, 0x46
    /* 27BEF04 80082168 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 27BEF08 8008216C 04000224 */  addiu      $v0, $zero, 0x4
    /* 27BEF0C 80082170 34090208 */  j          .Llevel_34_800824D0
    /* 27BEF10 80082174 470062A2 */   sb        $v0, 0x47($s3)
  .Llevel_34_80082178:
    /* 27BEF14 80082178 0000728E */  lw         $s2, 0x0($s3)
    /* 27BEF18 8008217C 0E05010C */  jal        func_80041438
    /* 27BEF1C 80082180 21206002 */   addu      $a0, $s3, $zero
    /* 27BEF20 80082184 40000224 */  addiu      $v0, $zero, 0x40
    /* 27BEF24 80082188 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 27BEF28 8008218C 9D00A016 */  bnez       $s5, .Llevel_34_80082404
    /* 27BEF2C 80082190 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* 27BEF30 80082194 B8010224 */  addiu      $v0, $zero, 0x1B8
    /* 27BEF34 80082198 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* 27BEF38 8008219C D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* 27BEF3C 800821A0 C800A2AF */  sw         $v0, 0xC8($sp)
    /* 27BEF40 800821A4 CC00A0AF */  sw         $zero, 0xCC($sp)
    /* 27BEF44 800821A8 D000A0AF */  sw         $zero, 0xD0($sp)
    /* 27BEF48 800821AC 0000A38C */  lw         $v1, 0x0($a1)
    /* 27BEF4C 800821B0 07000224 */  addiu      $v0, $zero, 0x7
    /* 27BEF50 800821B4 26006214 */  bne        $v1, $v0, .Llevel_34_80082250
    /* 27BEF54 800821B8 0C006426 */   addiu     $a0, $s3, 0xC
    /* 27BEF58 800821BC 0C007126 */  addiu      $s1, $s3, 0xC
    /* 27BEF5C 800821C0 21202002 */  addu       $a0, $s1, $zero
    /* 27BEF60 800821C4 6C6F000C */  jal        func_8001BDB0
    /* 27BEF64 800821C8 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 27BEF68 800821CC 9000A427 */  addiu      $a0, $sp, 0x90
    /* 27BEF6C 800821D0 D800B027 */  addiu      $s0, $sp, 0xD8
    /* 27BEF70 800821D4 21280002 */  addu       $a1, $s0, $zero
    /* 27BEF74 800821D8 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 27BEF78 800821DC CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 27BEF7C 800821E0 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* 27BEF80 800821E4 CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* 27BEF84 800821E8 21300000 */  addu       $a2, $zero, $zero
    /* 27BEF88 800821EC 9000A0A3 */  sb         $zero, 0x90($sp)
    /* 27BEF8C 800821F0 02190300 */  srl        $v1, $v1, 4
    /* 27BEF90 800821F4 00140200 */  sll        $v0, $v0, 16
    /* 27BEF94 800821F8 03150200 */  sra        $v0, $v0, 20
    /* 27BEF98 800821FC 23100200 */  negu       $v0, $v0
    /* 27BEF9C 80082200 9100A2A3 */  sb         $v0, 0x91($sp)
    /* 27BEFA0 80082204 B26D000C */  jal        func_8001B6C8
    /* 27BEFA4 80082208 9200A3A3 */   sb        $v1, 0x92($sp)
    /* 27BEFA8 8008220C 21200002 */  addu       $a0, $s0, $zero
    /* 27BEFAC 80082210 C800B027 */  addiu      $s0, $sp, 0xC8
    /* 27BEFB0 80082214 21280002 */  addu       $a1, $s0, $zero
    /* 27BEFB4 80082218 696E000C */  jal        func_8001B9A4
    /* 27BEFB8 8008221C 21300002 */   addu      $a2, $s0, $zero
    /* 27BEFBC 80082220 21202002 */  addu       $a0, $s1, $zero
    /* 27BEFC0 80082224 21282002 */  addu       $a1, $s1, $zero
    /* 27BEFC4 80082228 736F000C */  jal        func_8001BDCC
    /* 27BEFC8 8008222C 21300002 */   addu      $a2, $s0, $zero
    /* 27BEFCC 80082230 21202002 */  addu       $a0, $s1, $zero
    /* 27BEFD0 80082234 21282002 */  addu       $a1, $s1, $zero
    /* 27BEFD4 80082238 736F000C */  jal        func_8001BDCC
    /* 27BEFD8 8008223C 21300002 */   addu      $a2, $s0, $zero
    /* 27BEFDC 80082240 21202002 */  addu       $a0, $s1, $zero
    /* 27BEFE0 80082244 21288000 */  addu       $a1, $a0, $zero
    /* 27BEFE4 80082248 BC080208 */  j          .Llevel_34_800822F0
    /* 27BEFE8 8008224C 21300002 */   addu      $a2, $s0, $zero
  .Llevel_34_80082250:
    /* 27BEFEC 80082250 6C6F000C */  jal        func_8001BDB0
    /* 27BEFF0 80082254 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 27BEFF4 80082258 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 27BEFF8 8008225C FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 27BEFFC 80082260 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 27BF000 80082264 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 27BF004 80082268 1801A0A3 */  sb         $zero, 0x118($sp)
    /* 27BF008 8008226C 07004014 */  bnez       $v0, .Llevel_34_8008228C
    /* 27BF00C 80082270 1901A3A3 */   sb        $v1, 0x119($sp)
    /* 27BF010 80082274 FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 27BF014 80082278 FF004230 */  andi       $v0, $v0, 0xFF
    /* 27BF018 8008227C F900422C */  sltiu      $v0, $v0, 0xF9
    /* 27BF01C 80082280 03004014 */  bnez       $v0, .Llevel_34_80082290
    /* 27BF020 80082284 1801A427 */   addiu     $a0, $sp, 0x118
    /* 27BF024 80082288 1901A0A3 */  sb         $zero, 0x119($sp)
  .Llevel_34_8008228C:
    /* 27BF028 8008228C 1801A427 */  addiu      $a0, $sp, 0x118
  .Llevel_34_80082290:
    /* 27BF02C 80082290 F800B027 */  addiu      $s0, $sp, 0xF8
    /* 27BF030 80082294 21280002 */  addu       $a1, $s0, $zero
    /* 27BF034 80082298 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* 27BF038 8008229C FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* 27BF03C 800822A0 00002292 */  lbu        $v0, 0x0($s1)
    /* 27BF040 800822A4 21300000 */  addu       $a2, $zero, $zero
    /* 27BF044 800822A8 B26D000C */  jal        func_8001B6C8
    /* 27BF048 800822AC 1A01A2A3 */   sb        $v0, 0x11A($sp)
    /* 27BF04C 800822B0 21200002 */  addu       $a0, $s0, $zero
    /* 27BF050 800822B4 C800A527 */  addiu      $a1, $sp, 0xC8
    /* 27BF054 800822B8 696E000C */  jal        func_8001B9A4
    /* 27BF058 800822BC 2130A000 */   addu      $a2, $a1, $zero
    /* 27BF05C 800822C0 21200002 */  addu       $a0, $s0, $zero
    /* 27BF060 800822C4 0C007026 */  addiu      $s0, $s3, 0xC
    /* 27BF064 800822C8 21280002 */  addu       $a1, $s0, $zero
    /* 27BF068 800822CC 21300002 */  addu       $a2, $s0, $zero
    /* 27BF06C 800822D0 F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 27BF070 800822D4 0C0062AE */  sw         $v0, 0xC($s3)
    /* 27BF074 800822D8 100060AE */  sw         $zero, 0x10($s3)
    /* 27BF078 800822DC 696E000C */  jal        func_8001B9A4
    /* 27BF07C 800822E0 140060AE */   sw        $zero, 0x14($s3)
    /* 27BF080 800822E4 21200002 */  addu       $a0, $s0, $zero
    /* 27BF084 800822E8 21288000 */  addu       $a1, $a0, $zero
    /* 27BF088 800822EC F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_34_800822F0:
    /* 27BF08C 800822F0 736F000C */  jal        func_8001BDCC
    /* 27BF090 800822F4 00000000 */   nop
    /* 27BF094 800822F8 C800A427 */  addiu      $a0, $sp, 0xC8
    /* 27BF098 800822FC 886E000C */  jal        func_8001BA20
    /* 27BF09C 80082300 21280000 */   addu      $a1, $zero, $zero
    /* 27BF0A0 80082304 21204000 */  addu       $a0, $v0, $zero
    /* 27BF0A4 80082308 D000A58F */  lw         $a1, 0xD0($sp)
    /* 27BF0A8 8008230C 2E6D000C */  jal        func_8001B4B8
    /* 27BF0AC 80082310 21300000 */   addu      $a2, $zero, $zero
    /* 27BF0B0 80082314 450062A2 */  sb         $v0, 0x45($s3)
    /* 27BF0B4 80082318 C800A48F */  lw         $a0, 0xC8($sp)
    /* 27BF0B8 8008231C CC00A58F */  lw         $a1, 0xCC($sp)
    /* 27BF0BC 80082320 2E6D000C */  jal        func_8001B4B8
    /* 27BF0C0 80082324 21300000 */   addu      $a2, $zero, $zero
    /* 27BF0C4 80082328 460062A2 */  sb         $v0, 0x46($s3)
    /* 27BF0C8 8008232C C800A28F */  lw         $v0, 0xC8($sp)
    /* 27BF0CC 80082330 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 27BF0D0 80082334 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 27BF0D4 80082338 0680043C */  lui        $a0, %hi(D_800670BC)
    /* 27BF0D8 8008233C BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* 27BF0DC 80082340 000042A6 */  sh         $v0, 0x0($s2)
    /* 27BF0E0 80082344 CC00A28F */  lw         $v0, 0xCC($sp)
    /* 27BF0E4 80082348 00000000 */  nop
    /* 27BF0E8 8008234C 020042A6 */  sh         $v0, 0x2($s2)
    /* 27BF0EC 80082350 D000A28F */  lw         $v0, 0xD0($sp)
    /* 27BF0F0 80082354 00000000 */  nop
    /* 27BF0F4 80082358 040042A6 */  sh         $v0, 0x4($s2)
    /* 27BF0F8 8008235C 2B106400 */  sltu       $v0, $v1, $a0
    /* 27BF0FC 80082360 0A004010 */  beqz       $v0, .Llevel_34_8008238C
    /* 27BF100 80082364 44010524 */   addiu     $a1, $zero, 0x144
    /* 27BF104 80082368 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_34_8008236C:
    /* 27BF108 8008236C 36006284 */  lh         $v0, 0x36($v1)
    /* 27BF10C 80082370 00000000 */  nop
    /* 27BF110 80082374 05004610 */  beq        $v0, $a2, .Llevel_34_8008238C
    /* 27BF114 80082378 00000000 */   nop
    /* 27BF118 8008237C 58006324 */  addiu      $v1, $v1, 0x58
    /* 27BF11C 80082380 2B106400 */  sltu       $v0, $v1, $a0
    /* 27BF120 80082384 F9FF4014 */  bnez       $v0, .Llevel_34_8008236C
    /* 27BF124 80082388 00000000 */   nop
  .Llevel_34_8008238C:
    /* 27BF128 8008238C 13006010 */  beqz       $v1, .Llevel_34_800823DC
    /* 27BF12C 80082390 40100500 */   sll       $v0, $a1, 1
    /* 27BF130 80082394 0000678C */  lw         $a3, 0x0($v1)
    /* 27BF134 80082398 21104500 */  addu       $v0, $v0, $a1
    /* 27BF138 8008239C 0000E38C */  lw         $v1, 0x0($a3)
    /* 27BF13C 800823A0 40100200 */  sll        $v0, $v0, 1
    /* 27BF140 800823A4 21186500 */  addu       $v1, $v1, $a1
    /* 27BF144 800823A8 0000E3AC */  sw         $v1, 0x0($a3)
    /* 27BF148 800823AC 2A186200 */  slt        $v1, $v1, $v0
    /* 27BF14C 800823B0 02006014 */  bnez       $v1, .Llevel_34_800823BC
    /* 27BF150 800823B4 10004426 */   addiu     $a0, $s2, 0x10
    /* 27BF154 800823B8 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_34_800823BC:
    /* 27BF158 800823BC 0400E524 */  addiu      $a1, $a3, 0x4
    /* 27BF15C 800823C0 0000E28C */  lw         $v0, 0x0($a3)
    /* 27BF160 800823C4 08000624 */  addiu      $a2, $zero, 0x8
    /* 27BF164 800823C8 0C004224 */  addiu      $v0, $v0, 0xC
    /* 27BF168 800823CC 2110E200 */  addu       $v0, $a3, $v0
    /* 27BF16C 800823D0 080042AE */  sw         $v0, 0x8($s2)
    /* 27BF170 800823D4 036D000C */  jal        func_8001B40C
    /* 27BF174 800823D8 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_34_800823DC:
    /* 27BF178 800823DC 21206002 */  addu       $a0, $s3, $zero
    /* 27BF17C 800823E0 21280000 */  addu       $a1, $zero, $zero
    /* 27BF180 800823E4 21300000 */  addu       $a2, $zero, $zero
    /* 27BF184 800823E8 6E000224 */  addiu      $v0, $zero, 0x6E
    /* 27BF188 800823EC 070042A2 */  sb         $v0, 0x7($s2)
    /* 27BF18C 800823F0 01000224 */  addiu      $v0, $zero, 0x1
    /* 27BF190 800823F4 9241010C */  jal        func_80050648
    /* 27BF194 800823F8 4B0062A2 */   sb        $v0, 0x4B($s3)
    /* 27BF198 800823FC 35090208 */  j          .Llevel_34_800824D4
    /* 27BF19C 80082400 21106002 */   addu      $v0, $s3, $zero
  .Llevel_34_80082404:
    /* 27BF1A0 80082404 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BF1A4 80082408 6C6F000C */  jal        func_8001BDB0
    /* 27BF1A8 8008240C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BF1AC 80082410 30000224 */  addiu      $v0, $zero, 0x30
    /* 27BF1B0 80082414 070042A2 */  sb         $v0, 0x7($s2)
    /* 27BF1B4 80082418 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 27BF1B8 8008241C 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 27BF1BC 80082420 07004392 */  lbu        $v1, 0x7($s2)
    /* 27BF1C0 80082424 00000000 */  nop
    /* 27BF1C4 80082428 40100300 */  sll        $v0, $v1, 1
    /* 27BF1C8 8008242C 21104300 */  addu       $v0, $v0, $v1
    /* 27BF1CC 80082430 43100200 */  sra        $v0, $v0, 1
    /* 27BF1D0 80082434 540062A2 */  sb         $v0, 0x54($s3)
    /* 27BF1D4 80082438 07004392 */  lbu        $v1, 0x7($s2)
    /* 27BF1D8 8008243C 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 27BF1DC 80082440 560060A2 */  sb         $zero, 0x56($s3)
    /* 27BF1E0 80082444 570062A2 */  sb         $v0, 0x57($s3)
    /* 27BF1E4 80082448 34090208 */  j          .Llevel_34_800824D0
    /* 27BF1E8 8008244C 550063A2 */   sb        $v1, 0x55($s3)
  .Llevel_34_80082450:
    /* 27BF1EC 80082450 0C006426 */  addiu      $a0, $s3, 0xC
    /* 27BF1F0 80082454 0000708E */  lw         $s0, 0x0($s3)
    /* 27BF1F4 80082458 6C6F000C */  jal        func_8001BDB0
    /* 27BF1F8 8008245C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* 27BF1FC 80082460 0E05010C */  jal        func_80041438
    /* 27BF200 80082464 21206002 */   addu      $a0, $s3, $zero
    /* 27BF204 80082468 18000224 */  addiu      $v0, $zero, 0x18
    /* 27BF208 8008246C 000002AE */  sw         $v0, 0x0($s0)
    /* 27BF20C 80082470 30000224 */  addiu      $v0, $zero, 0x30
    /* 27BF210 80082474 570062A2 */  sb         $v0, 0x57($s3)
    /* 27BF214 80082478 64000224 */  addiu      $v0, $zero, 0x64
    /* 27BF218 8008247C 540060A2 */  sb         $zero, 0x54($s3)
    /* 27BF21C 80082480 550060A2 */  sb         $zero, 0x55($s3)
    /* 27BF220 80082484 560060A2 */  sb         $zero, 0x56($s3)
    /* 27BF224 80082488 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 27BF228 8008248C 4B67010C */  jal        func_80059D2C
    /* 27BF22C 80082490 470060A2 */   sb        $zero, 0x47($s3)
    /* 27BF230 80082494 4B67010C */  jal        func_80059D2C
    /* 27BF234 80082498 450062A2 */   sb        $v0, 0x45($s3)
    /* 27BF238 8008249C 34090208 */  j          .Llevel_34_800824D0
    /* 27BF23C 800824A0 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_34_800824A4:
    /* 27BF240 800824A4 0300A012 */  beqz       $s5, .Llevel_34_800824B4
    /* 27BF244 800824A8 0C006426 */   addiu     $a0, $s3, 0xC
    /* 27BF248 800824AC 2F090208 */  j          .Llevel_34_800824BC
    /* 27BF24C 800824B0 0C00A526 */   addiu     $a1, $s5, 0xC
  .Llevel_34_800824B4:
    /* 27BF250 800824B4 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 27BF254 800824B8 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_34_800824BC:
    /* 27BF258 800824BC 6C6F000C */  jal        func_8001BDB0
    /* 27BF25C 800824C0 00000000 */   nop
    /* 27BF260 800824C4 21206002 */  addu       $a0, $s3, $zero
  .Llevel_34_800824C8:
    /* 27BF264 800824C8 0E05010C */  jal        func_80041438
    /* 27BF268 800824CC 00000000 */   nop
  .Llevel_34_800824D0:
    /* 27BF26C 800824D0 21106002 */  addu       $v0, $s3, $zero
  .Llevel_34_800824D4:
    /* 27BF270 800824D4 4801BF8F */  lw         $ra, 0x148($sp)
    /* 27BF274 800824D8 4401B78F */  lw         $s7, 0x144($sp)
    /* 27BF278 800824DC 4001B68F */  lw         $s6, 0x140($sp)
    /* 27BF27C 800824E0 3C01B58F */  lw         $s5, 0x13C($sp)
    /* 27BF280 800824E4 3801B48F */  lw         $s4, 0x138($sp)
    /* 27BF284 800824E8 3401B38F */  lw         $s3, 0x134($sp)
    /* 27BF288 800824EC 3001B28F */  lw         $s2, 0x130($sp)
    /* 27BF28C 800824F0 2C01B18F */  lw         $s1, 0x12C($sp)
    /* 27BF290 800824F4 2801B08F */  lw         $s0, 0x128($sp)
    /* 27BF294 800824F8 5001BD27 */  addiu      $sp, $sp, 0x150
    /* 27BF298 800824FC 0800E003 */  jr         $ra
    /* 27BF29C 80082500 00000000 */   nop
endlabel func_level_34_80080B20
    /* 27BF2A0 80082504 00000000 */  nop
