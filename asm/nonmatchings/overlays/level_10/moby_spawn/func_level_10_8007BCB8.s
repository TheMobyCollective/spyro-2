.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_10_8007BCB8, 0xDFC

glabel func_level_10_8007BCB8
    /* D44A54 8007BCB8 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* D44A58 8007BCBC 8400B1AF */  sw         $s1, 0x84($sp)
    /* D44A5C 8007BCC0 21888000 */  addu       $s1, $a0, $zero
    /* D44A60 8007BCC4 9400B5AF */  sw         $s5, 0x94($sp)
    /* D44A64 8007BCC8 21A8A000 */  addu       $s5, $a1, $zero
    /* D44A68 8007BCCC 9800BFAF */  sw         $ra, 0x98($sp)
    /* D44A6C 8007BCD0 9000B4AF */  sw         $s4, 0x90($sp)
    /* D44A70 8007BCD4 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* D44A74 8007BCD8 8800B2AF */  sw         $s2, 0x88($sp)
    /* D44A78 8007BCDC A404010C */  jal        func_80041290
    /* D44A7C 8007BCE0 8000B0AF */   sw        $s0, 0x80($sp)
    /* D44A80 8007BCE4 21984000 */  addu       $s3, $v0, $zero
    /* D44A84 8007BCE8 03006016 */  bnez       $s3, .Llevel_10_8007BCF8
    /* D44A88 8007BCEC 21206002 */   addu      $a0, $s3, $zero
    /* D44A8C 8007BCF0 A3F20108 */  j          .Llevel_10_8007CA8C
    /* D44A90 8007BCF4 21100000 */   addu      $v0, $zero, $zero
  .Llevel_10_8007BCF8:
    /* D44A94 8007BCF8 21280000 */  addu       $a1, $zero, $zero
    /* D44A98 8007BCFC 0000708E */  lw         $s0, 0x0($s3)
    /* D44A9C 8007BD00 F26C000C */  jal        func_8001B3C8
    /* D44AA0 8007BD04 58000624 */   addiu     $a2, $zero, 0x58
    /* D44AA4 8007BD08 21280000 */  addu       $a1, $zero, $zero
    /* D44AA8 8007BD0C 18000624 */  addiu      $a2, $zero, 0x18
    /* D44AAC 8007BD10 21200002 */  addu       $a0, $s0, $zero
    /* D44AB0 8007BD14 F26C000C */  jal        func_8001B3C8
    /* D44AB4 8007BD18 000064AE */   sw        $a0, 0x0($s3)
    /* D44AB8 8007BD1C 1600A012 */  beqz       $s5, .Llevel_10_8007BD78
    /* D44ABC 8007BD20 360071A6 */   sh        $s1, 0x36($s3)
    /* D44AC0 8007BD24 0680043C */  lui        $a0, %hi(D_80066F14)
    /* D44AC4 8007BD28 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* D44AC8 8007BD2C 00000000 */  nop
    /* D44ACC 8007BD30 2320A402 */  subu       $a0, $s5, $a0
    /* D44AD0 8007BD34 40190400 */  sll        $v1, $a0, 5
    /* D44AD4 8007BD38 23186400 */  subu       $v1, $v1, $a0
    /* D44AD8 8007BD3C 40190300 */  sll        $v1, $v1, 5
    /* D44ADC 8007BD40 21186400 */  addu       $v1, $v1, $a0
    /* D44AE0 8007BD44 C0100300 */  sll        $v0, $v1, 3
    /* D44AE4 8007BD48 21186200 */  addu       $v1, $v1, $v0
    /* D44AE8 8007BD4C C0130300 */  sll        $v0, $v1, 15
    /* D44AEC 8007BD50 23104300 */  subu       $v0, $v0, $v1
    /* D44AF0 8007BD54 80100200 */  sll        $v0, $v0, 2
    /* D44AF4 8007BD58 21104400 */  addu       $v0, $v0, $a0
    /* D44AF8 8007BD5C 23100200 */  negu       $v0, $v0
    /* D44AFC 8007BD60 C3180200 */  sra        $v1, $v0, 3
    /* D44B00 8007BD64 0001622C */  sltiu      $v0, $v1, 0x100
    /* D44B04 8007BD68 04004010 */  beqz       $v0, .Llevel_10_8007BD7C
    /* D44B08 8007BD6C FF000224 */   addiu     $v0, $zero, 0xFF
    /* D44B0C 8007BD70 60EF0108 */  j          .Llevel_10_8007BD80
    /* D44B10 8007BD74 3A0063A2 */   sb        $v1, 0x3A($s3)
  .Llevel_10_8007BD78:
    /* D44B14 8007BD78 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_10_8007BD7C:
    /* D44B18 8007BD7C 3A0062A2 */  sb         $v0, 0x3A($s3)
  .Llevel_10_8007BD80:
    /* D44B1C 8007BD80 72DD000C */  jal        func_800375C8
    /* D44B20 8007BD84 21206002 */   addu      $a0, $s3, $zero
    /* D44B24 8007BD88 3401222A */  slti       $v0, $s1, 0x134
    /* D44B28 8007BD8C 26004010 */  beqz       $v0, .Llevel_10_8007BE28
    /* D44B2C 8007BD90 3201222A */   slti      $v0, $s1, 0x132
    /* D44B30 8007BD94 F9004010 */  beqz       $v0, .Llevel_10_8007C17C
    /* D44B34 8007BD98 81000224 */   addiu     $v0, $zero, 0x81
    /* D44B38 8007BD9C C3002212 */  beq        $s1, $v0, .Llevel_10_8007C0AC
    /* D44B3C 8007BDA0 8200222A */   slti      $v0, $s1, 0x82
    /* D44B40 8007BDA4 10004010 */  beqz       $v0, .Llevel_10_8007BDE8
    /* D44B44 8007BDA8 10000224 */   addiu     $v0, $zero, 0x10
    /* D44B48 8007BDAC 49002212 */  beq        $s1, $v0, .Llevel_10_8007BED4
    /* D44B4C 8007BDB0 1100222A */   slti      $v0, $s1, 0x11
    /* D44B50 8007BDB4 05004010 */  beqz       $v0, .Llevel_10_8007BDCC
    /* D44B54 8007BDB8 01000224 */   addiu     $v0, $zero, 0x1
    /* D44B58 8007BDBC 3E002212 */  beq        $s1, $v0, .Llevel_10_8007BEB8
    /* D44B5C 8007BDC0 00000000 */   nop
    /* D44B60 8007BDC4 97F20108 */  j          .Llevel_10_8007CA5C
    /* D44B64 8007BDC8 00000000 */   nop
  .Llevel_10_8007BDCC:
    /* D44B68 8007BDCC 6D000224 */  addiu      $v0, $zero, 0x6D
    /* D44B6C 8007BDD0 73002212 */  beq        $s1, $v0, .Llevel_10_8007BFA0
    /* D44B70 8007BDD4 78000224 */   addiu     $v0, $zero, 0x78
    /* D44B74 8007BDD8 81002212 */  beq        $s1, $v0, .Llevel_10_8007BFE0
    /* D44B78 8007BDDC 00000000 */   nop
    /* D44B7C 8007BDE0 97F20108 */  j          .Llevel_10_8007CA5C
    /* D44B80 8007BDE4 00000000 */   nop
  .Llevel_10_8007BDE8:
    /* D44B84 8007BDE8 DC00222A */  slti       $v0, $s1, 0xDC
    /* D44B88 8007BDEC 09004010 */  beqz       $v0, .Llevel_10_8007BE14
    /* D44B8C 8007BDF0 D700222A */   slti      $v0, $s1, 0xD7
    /* D44B90 8007BDF4 6A004010 */  beqz       $v0, .Llevel_10_8007BFA0
    /* D44B94 8007BDF8 AA000224 */   addiu     $v0, $zero, 0xAA
    /* D44B98 8007BDFC BC002212 */  beq        $s1, $v0, .Llevel_10_8007C0F0
    /* D44B9C 8007BE00 D3000224 */   addiu     $v0, $zero, 0xD3
    /* D44BA0 8007BE04 34002212 */  beq        $s1, $v0, .Llevel_10_8007BED8
    /* D44BA4 8007BE08 10000324 */   addiu     $v1, $zero, 0x10
    /* D44BA8 8007BE0C 97F20108 */  j          .Llevel_10_8007CA5C
    /* D44BAC 8007BE10 00000000 */   nop
  .Llevel_10_8007BE14:
    /* D44BB0 8007BE14 04010224 */  addiu      $v0, $zero, 0x104
    /* D44BB4 8007BE18 C3002212 */  beq        $s1, $v0, .Llevel_10_8007C128
    /* D44BB8 8007BE1C 00000000 */   nop
    /* D44BBC 8007BE20 97F20108 */  j          .Llevel_10_8007CA5C
    /* D44BC0 8007BE24 00000000 */   nop
  .Llevel_10_8007BE28:
    /* D44BC4 8007BE28 E3010224 */  addiu      $v0, $zero, 0x1E3
    /* D44BC8 8007BE2C C1012212 */  beq        $s1, $v0, .Llevel_10_8007C534
    /* D44BCC 8007BE30 E401222A */   slti      $v0, $s1, 0x1E4
    /* D44BD0 8007BE34 10004010 */  beqz       $v0, .Llevel_10_8007BE78
    /* D44BD4 8007BE38 46010224 */   addiu     $v0, $zero, 0x146
    /* D44BD8 8007BE3C 66012212 */  beq        $s1, $v0, .Llevel_10_8007C3D8
    /* D44BDC 8007BE40 4701222A */   slti      $v0, $s1, 0x147
    /* D44BE0 8007BE44 05004010 */  beqz       $v0, .Llevel_10_8007BE5C
    /* D44BE4 8007BE48 36010224 */   addiu     $v0, $zero, 0x136
    /* D44BE8 8007BE4C CC002212 */  beq        $s1, $v0, .Llevel_10_8007C180
    /* D44BEC 8007BE50 0C006426 */   addiu     $a0, $s3, 0xC
    /* D44BF0 8007BE54 97F20108 */  j          .Llevel_10_8007CA5C
    /* D44BF4 8007BE58 00000000 */   nop
  .Llevel_10_8007BE5C:
    /* D44BF8 8007BE5C E1010224 */  addiu      $v0, $zero, 0x1E1
    /* D44BFC 8007BE60 E9022212 */  beq        $s1, $v0, .Llevel_10_8007CA08
    /* D44C00 8007BE64 E2010224 */   addiu     $v0, $zero, 0x1E2
    /* D44C04 8007BE68 9E012212 */  beq        $s1, $v0, .Llevel_10_8007C4E4
    /* D44C08 8007BE6C 0C006426 */   addiu     $a0, $s3, 0xC
    /* D44C0C 8007BE70 97F20108 */  j          .Llevel_10_8007CA5C
    /* D44C10 8007BE74 00000000 */   nop
  .Llevel_10_8007BE78:
    /* D44C14 8007BE78 11020224 */  addiu      $v0, $zero, 0x211
    /* D44C18 8007BE7C CA022212 */  beq        $s1, $v0, .Llevel_10_8007C9A8
    /* D44C1C 8007BE80 1202222A */   slti      $v0, $s1, 0x212
    /* D44C20 8007BE84 05004010 */  beqz       $v0, .Llevel_10_8007BE9C
    /* D44C24 8007BE88 F8010224 */   addiu     $v0, $zero, 0x1F8
    /* D44C28 8007BE8C 5A022212 */  beq        $s1, $v0, .Llevel_10_8007C7F8
    /* D44C2C 8007BE90 00000000 */   nop
    /* D44C30 8007BE94 97F20108 */  j          .Llevel_10_8007CA5C
    /* D44C34 8007BE98 00000000 */   nop
  .Llevel_10_8007BE9C:
    /* D44C38 8007BE9C 1D020224 */  addiu      $v0, $zero, 0x21D
    /* D44C3C 8007BEA0 D9022212 */  beq        $s1, $v0, .Llevel_10_8007CA08
    /* D44C40 8007BEA4 38020224 */   addiu     $v0, $zero, 0x238
    /* D44C44 8007BEA8 B5002212 */  beq        $s1, $v0, .Llevel_10_8007C180
    /* D44C48 8007BEAC 0C006426 */   addiu     $a0, $s3, 0xC
    /* D44C4C 8007BEB0 97F20108 */  j          .Llevel_10_8007CA5C
    /* D44C50 8007BEB4 00000000 */   nop
  .Llevel_10_8007BEB8:
    /* D44C54 8007BEB8 0E05010C */  jal        func_80041438
    /* D44C58 8007BEBC 21206002 */   addu      $a0, $s3, $zero
    /* D44C5C 8007BEC0 18000224 */  addiu      $v0, $zero, 0x18
    /* D44C60 8007BEC4 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* D44C64 8007BEC8 40000224 */  addiu      $v0, $zero, 0x40
    /* D44C68 8007BECC 5CF00108 */  j          .Llevel_10_8007C170
    /* D44C6C 8007BED0 4A0062A2 */   sb        $v0, 0x4A($s3)
  .Llevel_10_8007BED4:
    /* D44C70 8007BED4 10000324 */  addiu      $v1, $zero, 0x10
  .Llevel_10_8007BED8:
    /* D44C74 8007BED8 36006286 */  lh         $v0, 0x36($s3)
    /* D44C78 8007BEDC 0000718E */  lw         $s1, 0x0($s3)
    /* D44C7C 8007BEE0 18004314 */  bne        $v0, $v1, .Llevel_10_8007BF44
    /* D44C80 8007BEE4 00000000 */   nop
    /* D44C84 8007BEE8 0680043C */  lui        $a0, %hi(D_8006712C)
    /* D44C88 8007BEEC 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* D44C8C 8007BEF0 00000000 */  nop
    /* D44C90 8007BEF4 04008228 */  slti       $v0, $a0, 0x4
    /* D44C94 8007BEF8 03004010 */  beqz       $v0, .Llevel_10_8007BF08
    /* D44C98 8007BEFC 0A000324 */   addiu     $v1, $zero, 0xA
    /* D44C9C 8007BF00 C6EF0108 */  j          .Llevel_10_8007BF18
    /* D44CA0 8007BF04 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_10_8007BF08:
    /* D44CA4 8007BF08 07008228 */  slti       $v0, $a0, 0x7
    /* D44CA8 8007BF0C 02004010 */  beqz       $v0, .Llevel_10_8007BF18
    /* D44CAC 8007BF10 00000000 */   nop
    /* D44CB0 8007BF14 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_10_8007BF18:
    /* D44CB4 8007BF18 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* D44CB8 8007BF1C AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* D44CBC 8007BF20 0000828C */  lw         $v0, 0x0($a0)
    /* D44CC0 8007BF24 00000000 */  nop
    /* D44CC4 8007BF28 01004224 */  addiu      $v0, $v0, 0x1
    /* D44CC8 8007BF2C 000082AC */  sw         $v0, 0x0($a0)
    /* D44CCC 8007BF30 2A104300 */  slt        $v0, $v0, $v1
    /* D44CD0 8007BF34 03004014 */  bnez       $v0, .Llevel_10_8007BF44
    /* D44CD4 8007BF38 D3000224 */   addiu     $v0, $zero, 0xD3
    /* D44CD8 8007BF3C 000080AC */  sw         $zero, 0x0($a0)
    /* D44CDC 8007BF40 360062A6 */  sh         $v0, 0x36($s3)
  .Llevel_10_8007BF44:
    /* D44CE0 8007BF44 0E05010C */  jal        func_80041438
    /* D44CE4 8007BF48 21206002 */   addu      $a0, $s3, $zero
    /* D44CE8 8007BF4C 0C007026 */  addiu      $s0, $s3, 0xC
    /* D44CEC 8007BF50 21200002 */  addu       $a0, $s0, $zero
    /* D44CF0 8007BF54 6C6F000C */  jal        func_8001BDB0
    /* D44CF4 8007BF58 0C00A526 */   addiu     $a1, $s5, 0xC
    /* D44CF8 8007BF5C 21202002 */  addu       $a0, $s1, $zero
    /* D44CFC 8007BF60 1400628E */  lw         $v0, 0x14($s3)
    /* D44D00 8007BF64 21280002 */  addu       $a1, $s0, $zero
    /* D44D04 8007BF68 00024224 */  addiu      $v0, $v0, 0x200
    /* D44D08 8007BF6C 6C6F000C */  jal        func_8001BDB0
    /* D44D0C 8007BF70 140062AE */   sw        $v0, 0x14($s3)
    /* D44D10 8007BF74 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* D44D14 8007BF78 1C0062AE */  sw         $v0, 0x1C($s3)
    /* D44D18 8007BF7C 02000224 */  addiu      $v0, $zero, 0x2
    /* D44D1C 8007BF80 470062A2 */  sb         $v0, 0x47($s3)
    /* D44D20 8007BF84 08070224 */  addiu      $v0, $zero, 0x708
    /* D44D24 8007BF88 0E0022A6 */  sh         $v0, 0xE($s1)
    /* D44D28 8007BF8C 4B67010C */  jal        func_80059D2C
    /* D44D2C 8007BF90 110020A2 */   sb        $zero, 0x11($s1)
    /* D44D30 8007BF94 FC004230 */  andi       $v0, $v0, 0xFC
    /* D44D34 8007BF98 A2F20108 */  j          .Llevel_10_8007CA88
    /* D44D38 8007BF9C 120022A2 */   sb        $v0, 0x12($s1)
  .Llevel_10_8007BFA0:
    /* D44D3C 8007BFA0 0C006426 */  addiu      $a0, $s3, 0xC
    /* D44D40 8007BFA4 6C6F000C */  jal        func_8001BDB0
    /* D44D44 8007BFA8 0C00A526 */   addiu     $a1, $s5, 0xC
    /* D44D48 8007BFAC 0E05010C */  jal        func_80041438
    /* D44D4C 8007BFB0 21206002 */   addu      $a0, $s3, $zero
    /* D44D50 8007BFB4 36006386 */  lh         $v1, 0x36($s3)
    /* D44D54 8007BFB8 03000224 */  addiu      $v0, $zero, 0x3
    /* D44D58 8007BFBC 490062A2 */  sb         $v0, 0x49($s3)
    /* D44D5C 8007BFC0 D6000224 */  addiu      $v0, $zero, 0xD6
    /* D44D60 8007BFC4 04006214 */  bne        $v1, $v0, .Llevel_10_8007BFD8
    /* D44D64 8007BFC8 02000224 */   addiu     $v0, $zero, 0x2
    /* D44D68 8007BFCC 01000224 */  addiu      $v0, $zero, 0x1
    /* D44D6C 8007BFD0 A2F20108 */  j          .Llevel_10_8007CA88
    /* D44D70 8007BFD4 540062A2 */   sb        $v0, 0x54($s3)
  .Llevel_10_8007BFD8:
    /* D44D74 8007BFD8 A2F20108 */  j          .Llevel_10_8007CA88
    /* D44D78 8007BFDC 540062A2 */   sb        $v0, 0x54($s3)
  .Llevel_10_8007BFE0:
    /* D44D7C 8007BFE0 0000708E */  lw         $s0, 0x0($s3)
    /* D44D80 8007BFE4 0E05010C */  jal        func_80041438
    /* D44D84 8007BFE8 21206002 */   addu      $a0, $s3, $zero
    /* D44D88 8007BFEC 78000224 */  addiu      $v0, $zero, 0x78
    /* D44D8C 8007BFF0 490060A2 */  sb         $zero, 0x49($s3)
    /* D44D90 8007BFF4 000000A6 */  sh         $zero, 0x0($s0)
    /* D44D94 8007BFF8 080000A6 */  sh         $zero, 0x8($s0)
    /* D44D98 8007BFFC 060000A6 */  sh         $zero, 0x6($s0)
    /* D44D9C 8007C000 040000A6 */  sh         $zero, 0x4($s0)
    /* D44DA0 8007C004 0D0002A2 */  sb         $v0, 0xD($s0)
    /* D44DA4 8007C008 100000AE */  sw         $zero, 0x10($s0)
    /* D44DA8 8007C00C 0600A012 */  beqz       $s5, .Llevel_10_8007C028
    /* D44DAC 8007C010 140000AE */   sw        $zero, 0x14($s0)
    /* D44DB0 8007C014 0C006426 */  addiu      $a0, $s3, 0xC
    /* D44DB4 8007C018 6C6F000C */  jal        func_8001BDB0
    /* D44DB8 8007C01C 0C00A526 */   addiu     $a1, $s5, 0xC
    /* D44DBC 8007C020 29F00108 */  j          .Llevel_10_8007C0A4
    /* D44DC0 8007C024 FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_10_8007C028:
    /* D44DC4 8007C028 0C006426 */  addiu      $a0, $s3, 0xC
    /* D44DC8 8007C02C 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* D44DCC 8007C030 FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* D44DD0 8007C034 0000A390 */  lbu        $v1, 0x0($a1)
    /* D44DD4 8007C038 F2FFA524 */  addiu      $a1, $a1, -0xE
    /* D44DD8 8007C03C 80FF6324 */  addiu      $v1, $v1, -0x80
    /* D44DDC 8007C040 FF006330 */  andi       $v1, $v1, 0xFF
    /* D44DE0 8007C044 40180300 */  sll        $v1, $v1, 1
    /* D44DE4 8007C048 0680013C */  lui        $at, %hi(D_80061C58)
    /* D44DE8 8007C04C 21082300 */  addu       $at, $at, $v1
    /* D44DEC 8007C050 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* D44DF0 8007C054 1000A627 */  addiu      $a2, $sp, 0x10
    /* D44DF4 8007C058 40110700 */  sll        $v0, $a3, 5
    /* D44DF8 8007C05C 23104700 */  subu       $v0, $v0, $a3
    /* D44DFC 8007C060 80100200 */  sll        $v0, $v0, 2
    /* D44E00 8007C064 21104700 */  addu       $v0, $v0, $a3
    /* D44E04 8007C068 43120200 */  sra        $v0, $v0, 9
    /* D44E08 8007C06C 1000A2AF */  sw         $v0, 0x10($sp)
    /* D44E0C 8007C070 0680013C */  lui        $at, %hi(D_80061BD8)
    /* D44E10 8007C074 21082300 */  addu       $at, $at, $v1
    /* D44E14 8007C078 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* D44E18 8007C07C E8030224 */  addiu      $v0, $zero, 0x3E8
    /* D44E1C 8007C080 1800A2AF */  sw         $v0, 0x18($sp)
    /* D44E20 8007C084 40110300 */  sll        $v0, $v1, 5
    /* D44E24 8007C088 23104300 */  subu       $v0, $v0, $v1
    /* D44E28 8007C08C 80100200 */  sll        $v0, $v0, 2
    /* D44E2C 8007C090 21104300 */  addu       $v0, $v0, $v1
    /* D44E30 8007C094 43120200 */  sra        $v0, $v0, 9
    /* D44E34 8007C098 736F000C */  jal        func_8001BDCC
    /* D44E38 8007C09C 1400A2AF */   sw        $v0, 0x14($sp)
    /* D44E3C 8007C0A0 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_10_8007C0A4:
    /* D44E40 8007C0A4 A2F20108 */  j          .Llevel_10_8007CA88
    /* D44E44 8007C0A8 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_10_8007C0AC:
    /* D44E48 8007C0AC 0C006426 */  addiu      $a0, $s3, 0xC
    /* D44E4C 8007C0B0 6C6F000C */  jal        func_8001BDB0
    /* D44E50 8007C0B4 0C00A526 */   addiu     $a1, $s5, 0xC
    /* D44E54 8007C0B8 0E05010C */  jal        func_80041438
    /* D44E58 8007C0BC 21206002 */   addu      $a0, $s3, $zero
    /* D44E5C 8007C0C0 003F023C */  lui        $v0, (0x3F005080 >> 16)
    /* D44E60 8007C0C4 80504234 */  ori        $v0, $v0, (0x3F005080 & 0xFFFF)
    /* D44E64 8007C0C8 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* D44E68 8007C0CC CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* D44E6C 8007C0D0 40000424 */  addiu      $a0, $zero, 0x40
    /* D44E70 8007C0D4 4F0064A2 */  sb         $a0, 0x4F($s3)
    /* D44E74 8007C0D8 540062AE */  sw         $v0, 0x54($s3)
    /* D44E78 8007C0DC 001C0300 */  sll        $v1, $v1, 16
    /* D44E7C 8007C0E0 031D0300 */  sra        $v1, $v1, 20
    /* D44E80 8007C0E4 80FF6324 */  addiu      $v1, $v1, -0x80
    /* D44E84 8007C0E8 A2F20108 */  j          .Llevel_10_8007CA88
    /* D44E88 8007C0EC 460063A2 */   sb        $v1, 0x46($s3)
  .Llevel_10_8007C0F0:
    /* D44E8C 8007C0F0 410060A2 */  sb         $zero, 0x41($s3)
    /* D44E90 8007C0F4 400060A2 */  sb         $zero, 0x40($s3)
    /* D44E94 8007C0F8 3E0060A2 */  sb         $zero, 0x3E($s3)
    /* D44E98 8007C0FC 0400A012 */  beqz       $s5, .Llevel_10_8007C110
    /* D44E9C 8007C100 3F0060A2 */   sb        $zero, 0x3F($s3)
    /* D44EA0 8007C104 0C006426 */  addiu      $a0, $s3, 0xC
    /* D44EA4 8007C108 6C6F000C */  jal        func_8001BDB0
    /* D44EA8 8007C10C 0C00A526 */   addiu     $a1, $s5, 0xC
  .Llevel_10_8007C110:
    /* D44EAC 8007C110 21206002 */  addu       $a0, $s3, $zero
    /* D44EB0 8007C114 18000224 */  addiu      $v0, $zero, 0x18
    /* D44EB4 8007C118 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* D44EB8 8007C11C 28000224 */  addiu      $v0, $zero, 0x28
    /* D44EBC 8007C120 A0F20108 */  j          .Llevel_10_8007CA80
    /* D44EC0 8007C124 4C0062A2 */   sb        $v0, 0x4C($s3)
  .Llevel_10_8007C128:
    /* D44EC4 8007C128 0E05010C */  jal        func_80041438
    /* D44EC8 8007C12C 21206002 */   addu      $a0, $s3, $zero
    /* D44ECC 8007C130 02000224 */  addiu      $v0, $zero, 0x2
    /* D44ED0 8007C134 0E00A012 */  beqz       $s5, .Llevel_10_8007C170
    /* D44ED4 8007C138 540062A2 */   sb        $v0, 0x54($s3)
    /* D44ED8 8007C13C 0C006426 */  addiu      $a0, $s3, 0xC
    /* D44EDC 8007C140 0000628E */  lw         $v0, 0x0($s3)
    /* D44EE0 8007C144 0C00A526 */  addiu      $a1, $s5, 0xC
    /* D44EE4 8007C148 6C6F000C */  jal        func_8001BDB0
    /* D44EE8 8007C14C 000055AC */   sw        $s5, 0x0($v0)
    /* D44EEC 8007C150 0A000224 */  addiu      $v0, $zero, 0xA
    /* D44EF0 8007C154 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* D44EF4 8007C158 1400628E */  lw         $v0, 0x14($s3)
    /* D44EF8 8007C15C 08000324 */  addiu      $v1, $zero, 0x8
    /* D44EFC 8007C160 4C0063A2 */  sb         $v1, 0x4C($s3)
    /* D44F00 8007C164 00044224 */  addiu      $v0, $v0, 0x400
    /* D44F04 8007C168 A2F20108 */  j          .Llevel_10_8007CA88
    /* D44F08 8007C16C 140062AE */   sw        $v0, 0x14($s3)
  .Llevel_10_8007C170:
    /* D44F0C 8007C170 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* D44F10 8007C174 A2F20108 */  j          .Llevel_10_8007CA88
    /* D44F14 8007C178 1C0062AE */   sw        $v0, 0x1C($s3)
  .Llevel_10_8007C17C:
    /* D44F18 8007C17C 0C006426 */  addiu      $a0, $s3, 0xC
  .Llevel_10_8007C180:
    /* D44F1C 8007C180 0C00A526 */  addiu      $a1, $s5, 0xC
    /* D44F20 8007C184 0000748E */  lw         $s4, 0x0($s3)
    /* D44F24 8007C188 20000224 */  addiu      $v0, $zero, 0x20
    /* D44F28 8007C18C 6C6F000C */  jal        func_8001BDB0
    /* D44F2C 8007C190 4C0062A2 */   sb        $v0, 0x4C($s3)
    /* D44F30 8007C194 0E05010C */  jal        func_80041438
    /* D44F34 8007C198 21206002 */   addu      $a0, $s3, $zero
    /* D44F38 8007C19C 4B67010C */  jal        func_80059D2C
    /* D44F3C 8007C1A0 00000000 */   nop
    /* D44F40 8007C1A4 4B67010C */  jal        func_80059D2C
    /* D44F44 8007C1A8 FF0F5230 */   andi      $s2, $v0, 0xFFF
    /* D44F48 8007C1AC FF075130 */  andi       $s1, $v0, 0x7FF
    /* D44F4C 8007C1B0 996D000C */  jal        func_8001B664
    /* D44F50 8007C1B4 21202002 */   addu      $a0, $s1, $zero
    /* D44F54 8007C1B8 21204002 */  addu       $a0, $s2, $zero
    /* D44F58 8007C1BC 996D000C */  jal        func_8001B664
    /* D44F5C 8007C1C0 21804000 */   addu      $s0, $v0, $zero
    /* D44F60 8007C1C4 18000202 */  mult       $s0, $v0
    /* D44F64 8007C1C8 12400000 */  mflo       $t0
    /* D44F68 8007C1CC 4900A292 */  lbu        $v0, 0x49($s5)
    /* D44F6C 8007C1D0 00000000 */  nop
    /* D44F70 8007C1D4 18000201 */  mult       $t0, $v0
    /* D44F74 8007C1D8 21202002 */  addu       $a0, $s1, $zero
    /* D44F78 8007C1DC 12400000 */  mflo       $t0
    /* D44F7C 8007C1E0 03160800 */  sra        $v0, $t0, 24
    /* D44F80 8007C1E4 996D000C */  jal        func_8001B664
    /* D44F84 8007C1E8 000082A6 */   sh        $v0, 0x0($s4)
    /* D44F88 8007C1EC 21204002 */  addu       $a0, $s2, $zero
    /* D44F8C 8007C1F0 876D000C */  jal        func_8001B61C
    /* D44F90 8007C1F4 21804000 */   addu      $s0, $v0, $zero
    /* D44F94 8007C1F8 18000202 */  mult       $s0, $v0
    /* D44F98 8007C1FC 12400000 */  mflo       $t0
    /* D44F9C 8007C200 4900A292 */  lbu        $v0, 0x49($s5)
    /* D44FA0 8007C204 00000000 */  nop
    /* D44FA4 8007C208 18000201 */  mult       $t0, $v0
    /* D44FA8 8007C20C 21202002 */  addu       $a0, $s1, $zero
    /* D44FAC 8007C210 12400000 */  mflo       $t0
    /* D44FB0 8007C214 03160800 */  sra        $v0, $t0, 24
    /* D44FB4 8007C218 876D000C */  jal        func_8001B61C
    /* D44FB8 8007C21C 020082A6 */   sh        $v0, 0x2($s4)
    /* D44FBC 8007C220 4900A392 */  lbu        $v1, 0x49($s5)
    /* D44FC0 8007C224 00000000 */  nop
    /* D44FC4 8007C228 18004300 */  mult       $v0, $v1
    /* D44FC8 8007C22C 12400000 */  mflo       $t0
    /* D44FCC 8007C230 03130800 */  sra        $v0, $t0, 12
    /* D44FD0 8007C234 040082A6 */  sh         $v0, 0x4($s4)
    /* D44FD4 8007C238 1800A28E */  lw         $v0, 0x18($s5)
    /* D44FD8 8007C23C 0200033C */  lui        $v1, (0x20000 >> 16)
    /* D44FDC 8007C240 24104300 */  and        $v0, $v0, $v1
    /* D44FE0 8007C244 14004010 */  beqz       $v0, .Llevel_10_8007C298
    /* D44FE4 8007C248 04000224 */   addiu     $v0, $zero, 0x4
    /* D44FE8 8007C24C 0780033C */  lui        $v1, %hi(D_8006A048)
    /* D44FEC 8007C250 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* D44FF0 8007C254 00000000 */  nop
    /* D44FF4 8007C258 03006210 */  beq        $v1, $v0, .Llevel_10_8007C268
    /* D44FF8 8007C25C 0C000224 */   addiu     $v0, $zero, 0xC
    /* D44FFC 8007C260 0D006214 */  bne        $v1, $v0, .Llevel_10_8007C298
    /* D45000 8007C264 00000000 */   nop
  .Llevel_10_8007C268:
    /* D45004 8007C268 0780023C */  lui        $v0, %hi(D_8006A084)
    /* D45008 8007C26C 84A0428C */  lw         $v0, %lo(D_8006A084)($v0)
    /* D4500C 8007C270 00008396 */  lhu        $v1, 0x0($s4)
    /* D45010 8007C274 83110200 */  sra        $v0, $v0, 6
    /* D45014 8007C278 21186200 */  addu       $v1, $v1, $v0
    /* D45018 8007C27C 000083A6 */  sh         $v1, 0x0($s4)
    /* D4501C 8007C280 0780023C */  lui        $v0, %hi(D_8006A088)
    /* D45020 8007C284 88A0428C */  lw         $v0, %lo(D_8006A088)($v0)
    /* D45024 8007C288 02008396 */  lhu        $v1, 0x2($s4)
    /* D45028 8007C28C 83110200 */  sra        $v0, $v0, 6
    /* D4502C 8007C290 21186200 */  addu       $v1, $v1, $v0
    /* D45030 8007C294 020083A6 */  sh         $v1, 0x2($s4)
  .Llevel_10_8007C298:
    /* D45034 8007C298 5100A492 */  lbu        $a0, 0x51($s5)
    /* D45038 8007C29C 00000000 */  nop
    /* D4503C 8007C2A0 26008010 */  beqz       $a0, .Llevel_10_8007C33C
    /* D45040 8007C2A4 1000033C */   lui       $v1, (0x100000 >> 16)
    /* D45044 8007C2A8 1800A28E */  lw         $v0, 0x18($s5)
    /* D45048 8007C2AC 00000000 */  nop
    /* D4504C 8007C2B0 24104300 */  and        $v0, $v0, $v1
    /* D45050 8007C2B4 21004010 */  beqz       $v0, .Llevel_10_8007C33C
    /* D45054 8007C2B8 40100400 */   sll       $v0, $a0, 1
    /* D45058 8007C2BC 0680013C */  lui        $at, %hi(D_80061C58)
    /* D4505C 8007C2C0 21082200 */  addu       $at, $at, $v0
    /* D45060 8007C2C4 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* D45064 8007C2C8 00000000 */  nop
    /* D45068 8007C2CC 80100300 */  sll        $v0, $v1, 2
    /* D4506C 8007C2D0 21104300 */  addu       $v0, $v0, $v1
    /* D45070 8007C2D4 00190200 */  sll        $v1, $v0, 4
    /* D45074 8007C2D8 23186200 */  subu       $v1, $v1, $v0
    /* D45078 8007C2DC 00008296 */  lhu        $v0, 0x0($s4)
    /* D4507C 8007C2E0 C31A0300 */  sra        $v1, $v1, 11
    /* D45080 8007C2E4 21104300 */  addu       $v0, $v0, $v1
    /* D45084 8007C2E8 000082A6 */  sh         $v0, 0x0($s4)
    /* D45088 8007C2EC 5100A292 */  lbu        $v0, 0x51($s5)
    /* D4508C 8007C2F0 28000424 */  addiu      $a0, $zero, 0x28
    /* D45090 8007C2F4 40100200 */  sll        $v0, $v0, 1
    /* D45094 8007C2F8 0680013C */  lui        $at, %hi(D_80061BD8)
    /* D45098 8007C2FC 21082200 */  addu       $at, $at, $v0
    /* D4509C 8007C300 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* D450A0 8007C304 46000524 */  addiu      $a1, $zero, 0x46
    /* D450A4 8007C308 80100300 */  sll        $v0, $v1, 2
    /* D450A8 8007C30C 21104300 */  addu       $v0, $v0, $v1
    /* D450AC 8007C310 00190200 */  sll        $v1, $v0, 4
    /* D450B0 8007C314 23186200 */  subu       $v1, $v1, $v0
    /* D450B4 8007C318 02008296 */  lhu        $v0, 0x2($s4)
    /* D450B8 8007C31C C31A0300 */  sra        $v1, $v1, 11
    /* D450BC 8007C320 21104300 */  addu       $v0, $v0, $v1
    /* D450C0 8007C324 47E2000C */  jal        func_8003891C
    /* D450C4 8007C328 020082A6 */   sh        $v0, 0x2($s4)
    /* D450C8 8007C32C 04008396 */  lhu        $v1, 0x4($s4)
    /* D450CC 8007C330 00000000 */  nop
    /* D450D0 8007C334 21186200 */  addu       $v1, $v1, $v0
    /* D450D4 8007C338 040083A6 */  sh         $v1, 0x4($s4)
  .Llevel_10_8007C33C:
    /* D450D8 8007C33C 00008286 */  lh         $v0, 0x0($s4)
    /* D450DC 8007C340 0C00638E */  lw         $v1, 0xC($s3)
    /* D450E0 8007C344 80100200 */  sll        $v0, $v0, 2
    /* D450E4 8007C348 21186200 */  addu       $v1, $v1, $v0
    /* D450E8 8007C34C 0C0063AE */  sw         $v1, 0xC($s3)
    /* D450EC 8007C350 02008286 */  lh         $v0, 0x2($s4)
    /* D450F0 8007C354 1000638E */  lw         $v1, 0x10($s3)
    /* D450F4 8007C358 80100200 */  sll        $v0, $v0, 2
    /* D450F8 8007C35C 21186200 */  addu       $v1, $v1, $v0
    /* D450FC 8007C360 100063AE */  sw         $v1, 0x10($s3)
    /* D45100 8007C364 04008286 */  lh         $v0, 0x4($s4)
    /* D45104 8007C368 1400638E */  lw         $v1, 0x14($s3)
    /* D45108 8007C36C 80100200 */  sll        $v0, $v0, 2
    /* D4510C 8007C370 21186200 */  addu       $v1, $v1, $v0
    /* D45110 8007C374 4B67010C */  jal        func_80059D2C
    /* D45114 8007C378 140063AE */   sw        $v1, 0x14($s3)
    /* D45118 8007C37C 4B67010C */  jal        func_80059D2C
    /* D4511C 8007C380 450062A2 */   sb        $v0, 0x45($s3)
    /* D45120 8007C384 4B67010C */  jal        func_80059D2C
    /* D45124 8007C388 460062A2 */   sb        $v0, 0x46($s3)
    /* D45128 8007C38C 1F004230 */  andi       $v0, $v0, 0x1F
    /* D4512C 8007C390 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* D45130 8007C394 4B67010C */  jal        func_80059D2C
    /* D45134 8007C398 060082A6 */   sh        $v0, 0x6($s4)
    /* D45138 8007C39C 1F004230 */  andi       $v0, $v0, 0x1F
    /* D4513C 8007C3A0 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* D45140 8007C3A4 4B67010C */  jal        func_80059D2C
    /* D45144 8007C3A8 080082A6 */   sh        $v0, 0x8($s4)
    /* D45148 8007C3AC 32000424 */  addiu      $a0, $zero, 0x32
    /* D4514C 8007C3B0 1F004230 */  andi       $v0, $v0, 0x1F
    /* D45150 8007C3B4 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* D45154 8007C3B8 0A0082A6 */  sh         $v0, 0xA($s4)
    /* D45158 8007C3BC 1400A28E */  lw         $v0, 0x14($s5)
    /* D4515C 8007C3C0 50000524 */  addiu      $a1, $zero, 0x50
    /* D45160 8007C3C4 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* D45164 8007C3C8 47E2000C */  jal        func_8003891C
    /* D45168 8007C3CC 100082AE */   sw        $v0, 0x10($s4)
    /* D4516C 8007C3D0 A2F20108 */  j          .Llevel_10_8007CA88
    /* D45170 8007C3D4 0C0082AE */   sw        $v0, 0xC($s4)
  .Llevel_10_8007C3D8:
    /* D45174 8007C3D8 0C006426 */  addiu      $a0, $s3, 0xC
    /* D45178 8007C3DC 0000708E */  lw         $s0, 0x0($s3)
    /* D4517C 8007C3E0 6C6F000C */  jal        func_8001BDB0
    /* D45180 8007C3E4 0C00A526 */   addiu     $a1, $s5, 0xC
    /* D45184 8007C3E8 0E05010C */  jal        func_80041438
    /* D45188 8007C3EC 21206002 */   addu      $a0, $s3, $zero
    /* D4518C 8007C3F0 10000224 */  addiu      $v0, $zero, 0x10
    /* D45190 8007C3F4 3B000324 */  addiu      $v1, $zero, 0x3B
    /* D45194 8007C3F8 000002A6 */  sh         $v0, 0x0($s0)
    /* D45198 8007C3FC 80000224 */  addiu      $v0, $zero, 0x80
    /* D4519C 8007C400 570063A2 */  sb         $v1, 0x57($s3)
    /* D451A0 8007C404 540062A2 */  sb         $v0, 0x54($s3)
    /* D451A4 8007C408 550062A2 */  sb         $v0, 0x55($s3)
    /* D451A8 8007C40C 560060A2 */  sb         $zero, 0x56($s3)
    /* D451AC 8007C410 3600A486 */  lh         $a0, 0x36($s5)
    /* D451B0 8007C414 98010224 */  addiu      $v0, $zero, 0x198
    /* D451B4 8007C418 04008210 */  beq        $a0, $v0, .Llevel_10_8007C42C
    /* D451B8 8007C41C 01000224 */   addiu     $v0, $zero, 0x1
    /* D451BC 8007C420 C2020224 */  addiu      $v0, $zero, 0x2C2
    /* D451C0 8007C424 05008214 */  bne        $a0, $v0, .Llevel_10_8007C43C
    /* D451C4 8007C428 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_10_8007C42C:
    /* D451C8 8007C42C 020002A2 */  sb         $v0, 0x2($s0)
    /* D451CC 8007C430 030002A2 */  sb         $v0, 0x3($s0)
    /* D451D0 8007C434 1DF10108 */  j          .Llevel_10_8007C474
    /* D451D4 8007C438 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_10_8007C43C:
    /* D451D8 8007C43C 70020224 */  addiu      $v0, $zero, 0x270
    /* D451DC 8007C440 0A008214 */  bne        $a0, $v0, .Llevel_10_8007C46C
    /* D451E0 8007C444 60000224 */   addiu     $v0, $zero, 0x60
    /* D451E4 8007C448 02000224 */  addiu      $v0, $zero, 0x2
    /* D451E8 8007C44C 020002A2 */  sb         $v0, 0x2($s0)
    /* D451EC 8007C450 E0000224 */  addiu      $v0, $zero, 0xE0
    /* D451F0 8007C454 540062A2 */  sb         $v0, 0x54($s3)
    /* D451F4 8007C458 550062A2 */  sb         $v0, 0x55($s3)
    /* D451F8 8007C45C 560062A2 */  sb         $v0, 0x56($s3)
    /* D451FC 8007C460 60000224 */  addiu      $v0, $zero, 0x60
    /* D45200 8007C464 1CF10108 */  j          .Llevel_10_8007C470
    /* D45204 8007C468 570063A2 */   sb        $v1, 0x57($s3)
  .Llevel_10_8007C46C:
    /* D45208 8007C46C 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_10_8007C470:
    /* D4520C 8007C470 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_10_8007C474:
    /* D45210 8007C474 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* D45214 8007C478 0C006426 */  addiu      $a0, $s3, 0xC
    /* D45218 8007C47C 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* D4521C 8007C480 AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* D45220 8007C484 21280002 */  addu       $a1, $s0, $zero
    /* D45224 8007C488 FE000224 */  addiu      $v0, $zero, 0xFE
    /* D45228 8007C48C DB6F000C */  jal        func_8001BF6C
    /* D4522C 8007C490 470062A2 */   sb        $v0, 0x47($s3)
    /* D45230 8007C494 21204000 */  addu       $a0, $v0, $zero
    /* D45234 8007C498 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* D45238 8007C49C B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* D4523C 8007C4A0 1400658E */  lw         $a1, 0x14($s3)
    /* D45240 8007C4A4 21300000 */  addu       $a2, $zero, $zero
    /* D45244 8007C4A8 2E6D000C */  jal        func_8001B4B8
    /* D45248 8007C4AC 23284500 */   subu      $a1, $v0, $a1
    /* D4524C 8007C4B0 21300000 */  addu       $a2, $zero, $zero
    /* D45250 8007C4B4 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* D45254 8007C4B8 450062A2 */  sb         $v0, 0x45($s3)
    /* D45258 8007C4BC 0000038E */  lw         $v1, 0x0($s0)
    /* D4525C 8007C4C0 0C00648E */  lw         $a0, 0xC($s3)
    /* D45260 8007C4C4 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* D45264 8007C4C8 B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* D45268 8007C4CC 1000658E */  lw         $a1, 0x10($s3)
    /* D4526C 8007C4D0 23206400 */  subu       $a0, $v1, $a0
    /* D45270 8007C4D4 2E6D000C */  jal        func_8001B4B8
    /* D45274 8007C4D8 23284500 */   subu      $a1, $v0, $a1
    /* D45278 8007C4DC A2F20108 */  j          .Llevel_10_8007CA88
    /* D4527C 8007C4E0 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_10_8007C4E4:
    /* D45280 8007C4E4 0000708E */  lw         $s0, 0x0($s3)
    /* D45284 8007C4E8 6C6F000C */  jal        func_8001BDB0
    /* D45288 8007C4EC 0C00A526 */   addiu     $a1, $s5, 0xC
    /* D4528C 8007C4F0 0E05010C */  jal        func_80041438
    /* D45290 8007C4F4 21206002 */   addu      $a0, $s3, $zero
    /* D45294 8007C4F8 10000224 */  addiu      $v0, $zero, 0x10
    /* D45298 8007C4FC 000002AE */  sw         $v0, 0x0($s0)
    /* D4529C 8007C500 3F000224 */  addiu      $v0, $zero, 0x3F
    /* D452A0 8007C504 570062A2 */  sb         $v0, 0x57($s3)
    /* D452A4 8007C508 80000224 */  addiu      $v0, $zero, 0x80
    /* D452A8 8007C50C 540062A2 */  sb         $v0, 0x54($s3)
    /* D452AC 8007C510 40000224 */  addiu      $v0, $zero, 0x40
    /* D452B0 8007C514 550062A2 */  sb         $v0, 0x55($s3)
    /* D452B4 8007C518 4B67010C */  jal        func_80059D2C
    /* D452B8 8007C51C 560060A2 */   sb        $zero, 0x56($s3)
    /* D452BC 8007C520 4B67010C */  jal        func_80059D2C
    /* D452C0 8007C524 450062A2 */   sb        $v0, 0x45($s3)
    /* D452C4 8007C528 460062A2 */  sb         $v0, 0x46($s3)
    /* D452C8 8007C52C 7EF20108 */  j          .Llevel_10_8007C9F8
    /* D452CC 8007C530 46000224 */   addiu     $v0, $zero, 0x46
  .Llevel_10_8007C534:
    /* D452D0 8007C534 0000728E */  lw         $s2, 0x0($s3)
    /* D452D4 8007C538 0E05010C */  jal        func_80041438
    /* D452D8 8007C53C 21206002 */   addu      $a0, $s3, $zero
    /* D452DC 8007C540 40000224 */  addiu      $v0, $zero, 0x40
    /* D452E0 8007C544 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* D452E4 8007C548 9800A016 */  bnez       $s5, .Llevel_10_8007C7AC
    /* D452E8 8007C54C 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* D452EC 8007C550 B8010224 */  addiu      $v0, $zero, 0x1B8
    /* D452F0 8007C554 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* D452F4 8007C558 D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* D452F8 8007C55C 1000A2AF */  sw         $v0, 0x10($sp)
    /* D452FC 8007C560 1400A0AF */  sw         $zero, 0x14($sp)
    /* D45300 8007C564 1800A0AF */  sw         $zero, 0x18($sp)
    /* D45304 8007C568 0000A38C */  lw         $v1, 0x0($a1)
    /* D45308 8007C56C 07000224 */  addiu      $v0, $zero, 0x7
    /* D4530C 8007C570 25006214 */  bne        $v1, $v0, .Llevel_10_8007C608
    /* D45310 8007C574 0C006426 */   addiu     $a0, $s3, 0xC
    /* D45314 8007C578 0C007026 */  addiu      $s0, $s3, 0xC
    /* D45318 8007C57C 21200002 */  addu       $a0, $s0, $zero
    /* D4531C 8007C580 6C6F000C */  jal        func_8001BDB0
    /* D45320 8007C584 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* D45324 8007C588 4000A427 */  addiu      $a0, $sp, 0x40
    /* D45328 8007C58C 2000B127 */  addiu      $s1, $sp, 0x20
    /* D4532C 8007C590 21282002 */  addu       $a1, $s1, $zero
    /* D45330 8007C594 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* D45334 8007C598 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* D45338 8007C59C 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* D4533C 8007C5A0 CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* D45340 8007C5A4 21300000 */  addu       $a2, $zero, $zero
    /* D45344 8007C5A8 4000A0A3 */  sb         $zero, 0x40($sp)
    /* D45348 8007C5AC 02190300 */  srl        $v1, $v1, 4
    /* D4534C 8007C5B0 00140200 */  sll        $v0, $v0, 16
    /* D45350 8007C5B4 03150200 */  sra        $v0, $v0, 20
    /* D45354 8007C5B8 23100200 */  negu       $v0, $v0
    /* D45358 8007C5BC 4100A2A3 */  sb         $v0, 0x41($sp)
    /* D4535C 8007C5C0 B26D000C */  jal        func_8001B6C8
    /* D45360 8007C5C4 4200A3A3 */   sb        $v1, 0x42($sp)
    /* D45364 8007C5C8 21202002 */  addu       $a0, $s1, $zero
    /* D45368 8007C5CC 1000A527 */  addiu      $a1, $sp, 0x10
    /* D4536C 8007C5D0 696E000C */  jal        func_8001B9A4
    /* D45370 8007C5D4 2130A000 */   addu      $a2, $a1, $zero
    /* D45374 8007C5D8 21200002 */  addu       $a0, $s0, $zero
    /* D45378 8007C5DC 21280002 */  addu       $a1, $s0, $zero
    /* D4537C 8007C5E0 736F000C */  jal        func_8001BDCC
    /* D45380 8007C5E4 1000A627 */   addiu     $a2, $sp, 0x10
    /* D45384 8007C5E8 21200002 */  addu       $a0, $s0, $zero
    /* D45388 8007C5EC 21280002 */  addu       $a1, $s0, $zero
    /* D4538C 8007C5F0 736F000C */  jal        func_8001BDCC
    /* D45390 8007C5F4 1000A627 */   addiu     $a2, $sp, 0x10
    /* D45394 8007C5F8 21200002 */  addu       $a0, $s0, $zero
    /* D45398 8007C5FC 21288000 */  addu       $a1, $a0, $zero
    /* D4539C 8007C600 AAF10108 */  j          .Llevel_10_8007C6A8
    /* D453A0 8007C604 1000A627 */   addiu     $a2, $sp, 0x10
  .Llevel_10_8007C608:
    /* D453A4 8007C608 6C6F000C */  jal        func_8001BDB0
    /* D453A8 8007C60C DCFFA524 */   addiu     $a1, $a1, -0x24
    /* D453AC 8007C610 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* D453B0 8007C614 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* D453B4 8007C618 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* D453B8 8007C61C B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* D453BC 8007C620 6800A0A3 */  sb         $zero, 0x68($sp)
    /* D453C0 8007C624 07004014 */  bnez       $v0, .Llevel_10_8007C644
    /* D453C4 8007C628 6900A3A3 */   sb        $v1, 0x69($sp)
    /* D453C8 8007C62C FCFF6224 */  addiu      $v0, $v1, -0x4
    /* D453CC 8007C630 FF004230 */  andi       $v0, $v0, 0xFF
    /* D453D0 8007C634 F900422C */  sltiu      $v0, $v0, 0xF9
    /* D453D4 8007C638 03004014 */  bnez       $v0, .Llevel_10_8007C648
    /* D453D8 8007C63C 6800A427 */   addiu     $a0, $sp, 0x68
    /* D453DC 8007C640 6900A0A3 */  sb         $zero, 0x69($sp)
  .Llevel_10_8007C644:
    /* D453E0 8007C644 6800A427 */  addiu      $a0, $sp, 0x68
  .Llevel_10_8007C648:
    /* D453E4 8007C648 4800B027 */  addiu      $s0, $sp, 0x48
    /* D453E8 8007C64C 21280002 */  addu       $a1, $s0, $zero
    /* D453EC 8007C650 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* D453F0 8007C654 FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* D453F4 8007C658 00002292 */  lbu        $v0, 0x0($s1)
    /* D453F8 8007C65C 21300000 */  addu       $a2, $zero, $zero
    /* D453FC 8007C660 B26D000C */  jal        func_8001B6C8
    /* D45400 8007C664 6A00A2A3 */   sb        $v0, 0x6A($sp)
    /* D45404 8007C668 21200002 */  addu       $a0, $s0, $zero
    /* D45408 8007C66C 1000A527 */  addiu      $a1, $sp, 0x10
    /* D4540C 8007C670 696E000C */  jal        func_8001B9A4
    /* D45410 8007C674 2130A000 */   addu      $a2, $a1, $zero
    /* D45414 8007C678 21200002 */  addu       $a0, $s0, $zero
    /* D45418 8007C67C 0C007026 */  addiu      $s0, $s3, 0xC
    /* D4541C 8007C680 21280002 */  addu       $a1, $s0, $zero
    /* D45420 8007C684 21300002 */  addu       $a2, $s0, $zero
    /* D45424 8007C688 F4010224 */  addiu      $v0, $zero, 0x1F4
    /* D45428 8007C68C 0C0062AE */  sw         $v0, 0xC($s3)
    /* D4542C 8007C690 100060AE */  sw         $zero, 0x10($s3)
    /* D45430 8007C694 696E000C */  jal        func_8001B9A4
    /* D45434 8007C698 140060AE */   sw        $zero, 0x14($s3)
    /* D45438 8007C69C 21200002 */  addu       $a0, $s0, $zero
    /* D4543C 8007C6A0 21288000 */  addu       $a1, $a0, $zero
    /* D45440 8007C6A4 F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_10_8007C6A8:
    /* D45444 8007C6A8 736F000C */  jal        func_8001BDCC
    /* D45448 8007C6AC 00000000 */   nop
    /* D4544C 8007C6B0 1000A427 */  addiu      $a0, $sp, 0x10
    /* D45450 8007C6B4 886E000C */  jal        func_8001BA20
    /* D45454 8007C6B8 21280000 */   addu      $a1, $zero, $zero
    /* D45458 8007C6BC 21204000 */  addu       $a0, $v0, $zero
    /* D4545C 8007C6C0 1800A58F */  lw         $a1, 0x18($sp)
    /* D45460 8007C6C4 2E6D000C */  jal        func_8001B4B8
    /* D45464 8007C6C8 21300000 */   addu      $a2, $zero, $zero
    /* D45468 8007C6CC 450062A2 */  sb         $v0, 0x45($s3)
    /* D4546C 8007C6D0 1000A48F */  lw         $a0, 0x10($sp)
    /* D45470 8007C6D4 1400A58F */  lw         $a1, 0x14($sp)
    /* D45474 8007C6D8 2E6D000C */  jal        func_8001B4B8
    /* D45478 8007C6DC 21300000 */   addu      $a2, $zero, $zero
    /* D4547C 8007C6E0 460062A2 */  sb         $v0, 0x46($s3)
    /* D45480 8007C6E4 1000A28F */  lw         $v0, 0x10($sp)
    /* D45484 8007C6E8 0680033C */  lui        $v1, %hi(D_80066F14)
    /* D45488 8007C6EC 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* D4548C 8007C6F0 0680043C */  lui        $a0, %hi(D_800670BC)
    /* D45490 8007C6F4 BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* D45494 8007C6F8 000042A6 */  sh         $v0, 0x0($s2)
    /* D45498 8007C6FC 1400A28F */  lw         $v0, 0x14($sp)
    /* D4549C 8007C700 00000000 */  nop
    /* D454A0 8007C704 020042A6 */  sh         $v0, 0x2($s2)
    /* D454A4 8007C708 1800A28F */  lw         $v0, 0x18($sp)
    /* D454A8 8007C70C 00000000 */  nop
    /* D454AC 8007C710 040042A6 */  sh         $v0, 0x4($s2)
    /* D454B0 8007C714 2B106400 */  sltu       $v0, $v1, $a0
    /* D454B4 8007C718 0A004010 */  beqz       $v0, .Llevel_10_8007C744
    /* D454B8 8007C71C 44010524 */   addiu     $a1, $zero, 0x144
    /* D454BC 8007C720 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_10_8007C724:
    /* D454C0 8007C724 36006284 */  lh         $v0, 0x36($v1)
    /* D454C4 8007C728 00000000 */  nop
    /* D454C8 8007C72C 05004610 */  beq        $v0, $a2, .Llevel_10_8007C744
    /* D454CC 8007C730 00000000 */   nop
    /* D454D0 8007C734 58006324 */  addiu      $v1, $v1, 0x58
    /* D454D4 8007C738 2B106400 */  sltu       $v0, $v1, $a0
    /* D454D8 8007C73C F9FF4014 */  bnez       $v0, .Llevel_10_8007C724
    /* D454DC 8007C740 00000000 */   nop
  .Llevel_10_8007C744:
    /* D454E0 8007C744 13006010 */  beqz       $v1, .Llevel_10_8007C794
    /* D454E4 8007C748 40100500 */   sll       $v0, $a1, 1
    /* D454E8 8007C74C 0000678C */  lw         $a3, 0x0($v1)
    /* D454EC 8007C750 21104500 */  addu       $v0, $v0, $a1
    /* D454F0 8007C754 0000E38C */  lw         $v1, 0x0($a3)
    /* D454F4 8007C758 40100200 */  sll        $v0, $v0, 1
    /* D454F8 8007C75C 21186500 */  addu       $v1, $v1, $a1
    /* D454FC 8007C760 0000E3AC */  sw         $v1, 0x0($a3)
    /* D45500 8007C764 2A186200 */  slt        $v1, $v1, $v0
    /* D45504 8007C768 02006014 */  bnez       $v1, .Llevel_10_8007C774
    /* D45508 8007C76C 10004426 */   addiu     $a0, $s2, 0x10
    /* D4550C 8007C770 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_10_8007C774:
    /* D45510 8007C774 0400E524 */  addiu      $a1, $a3, 0x4
    /* D45514 8007C778 0000E28C */  lw         $v0, 0x0($a3)
    /* D45518 8007C77C 08000624 */  addiu      $a2, $zero, 0x8
    /* D4551C 8007C780 0C004224 */  addiu      $v0, $v0, 0xC
    /* D45520 8007C784 2110E200 */  addu       $v0, $a3, $v0
    /* D45524 8007C788 080042AE */  sw         $v0, 0x8($s2)
    /* D45528 8007C78C 036D000C */  jal        func_8001B40C
    /* D4552C 8007C790 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_10_8007C794:
    /* D45530 8007C794 21206002 */  addu       $a0, $s3, $zero
    /* D45534 8007C798 21280000 */  addu       $a1, $zero, $zero
    /* D45538 8007C79C 21300000 */  addu       $a2, $zero, $zero
    /* D4553C 8007C7A0 6E000224 */  addiu      $v0, $zero, 0x6E
    /* D45540 8007C7A4 54F20108 */  j          .Llevel_10_8007C950
    /* D45544 8007C7A8 070042A2 */   sb        $v0, 0x7($s2)
  .Llevel_10_8007C7AC:
    /* D45548 8007C7AC 0C006426 */  addiu      $a0, $s3, 0xC
    /* D4554C 8007C7B0 6C6F000C */  jal        func_8001BDB0
    /* D45550 8007C7B4 0C00A526 */   addiu     $a1, $s5, 0xC
    /* D45554 8007C7B8 30000224 */  addiu      $v0, $zero, 0x30
    /* D45558 8007C7BC 070042A2 */  sb         $v0, 0x7($s2)
    /* D4555C 8007C7C0 7F000224 */  addiu      $v0, $zero, 0x7F
    /* D45560 8007C7C4 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* D45564 8007C7C8 07004392 */  lbu        $v1, 0x7($s2)
    /* D45568 8007C7CC 00000000 */  nop
    /* D4556C 8007C7D0 40100300 */  sll        $v0, $v1, 1
    /* D45570 8007C7D4 21104300 */  addu       $v0, $v0, $v1
    /* D45574 8007C7D8 43100200 */  sra        $v0, $v0, 1
    /* D45578 8007C7DC 540062A2 */  sb         $v0, 0x54($s3)
    /* D4557C 8007C7E0 07004392 */  lbu        $v1, 0x7($s2)
    /* D45580 8007C7E4 3F000224 */  addiu      $v0, $zero, 0x3F
    /* D45584 8007C7E8 560060A2 */  sb         $zero, 0x56($s3)
    /* D45588 8007C7EC 570062A2 */  sb         $v0, 0x57($s3)
    /* D4558C 8007C7F0 A2F20108 */  j          .Llevel_10_8007CA88
    /* D45590 8007C7F4 550063A2 */   sb        $v1, 0x55($s3)
  .Llevel_10_8007C7F8:
    /* D45594 8007C7F8 0000728E */  lw         $s2, 0x0($s3)
    /* D45598 8007C7FC 0E05010C */  jal        func_80041438
    /* D4559C 8007C800 21206002 */   addu      $a0, $s3, $zero
    /* D455A0 8007C804 5700A016 */  bnez       $s5, .Llevel_10_8007C964
    /* D455A4 8007C808 0C006426 */   addiu     $a0, $s3, 0xC
    /* D455A8 8007C80C 0C007426 */  addiu      $s4, $s3, 0xC
    /* D455AC 8007C810 A4CA000C */  jal        func_80032A90
    /* D455B0 8007C814 21208002 */   addu      $a0, $s4, $zero
    /* D455B4 8007C818 90010224 */  addiu      $v0, $zero, 0x190
    /* D455B8 8007C81C 0680113C */  lui        $s1, %hi(D_80067ED0)
    /* D455BC 8007C820 D07E3126 */  addiu      $s1, $s1, %lo(D_80067ED0)
    /* D455C0 8007C824 000042AE */  sw         $v0, 0x0($s2)
    /* D455C4 8007C828 040040AE */  sw         $zero, 0x4($s2)
    /* D455C8 8007C82C 080040AE */  sw         $zero, 0x8($s2)
    /* D455CC 8007C830 0000238E */  lw         $v1, 0x0($s1)
    /* D455D0 8007C834 07000224 */  addiu      $v0, $zero, 0x7
    /* D455D4 8007C838 2E006214 */  bne        $v1, $v0, .Llevel_10_8007C8F4
    /* D455D8 8007C83C 21284002 */   addu      $a1, $s2, $zero
    /* D455DC 8007C840 7000B027 */  addiu      $s0, $sp, 0x70
    /* D455E0 8007C844 21200002 */  addu       $a0, $s0, $zero
    /* D455E4 8007C848 6C6F000C */  jal        func_8001BDB0
    /* D455E8 8007C84C 21284002 */   addu      $a1, $s2, $zero
    /* D455EC 8007C850 21208002 */  addu       $a0, $s4, $zero
    /* D455F0 8007C854 6C6F000C */  jal        func_8001BDB0
    /* D455F4 8007C858 DCFF2526 */   addiu     $a1, $s1, -0x24
    /* D455F8 8007C85C 6800A427 */  addiu      $a0, $sp, 0x68
    /* D455FC 8007C860 2000B127 */  addiu      $s1, $sp, 0x20
    /* D45600 8007C864 21282002 */  addu       $a1, $s1, $zero
    /* D45604 8007C868 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* D45608 8007C86C CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* D4560C 8007C870 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* D45610 8007C874 CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* D45614 8007C878 21300000 */  addu       $a2, $zero, $zero
    /* D45618 8007C87C 6800A0A3 */  sb         $zero, 0x68($sp)
    /* D4561C 8007C880 02190300 */  srl        $v1, $v1, 4
    /* D45620 8007C884 00140200 */  sll        $v0, $v0, 16
    /* D45624 8007C888 03150200 */  sra        $v0, $v0, 20
    /* D45628 8007C88C 23100200 */  negu       $v0, $v0
    /* D4562C 8007C890 6900A2A3 */  sb         $v0, 0x69($sp)
    /* D45630 8007C894 B26D000C */  jal        func_8001B6C8
    /* D45634 8007C898 6A00A3A3 */   sb        $v1, 0x6A($sp)
    /* D45638 8007C89C 21202002 */  addu       $a0, $s1, $zero
    /* D4563C 8007C8A0 21280002 */  addu       $a1, $s0, $zero
    /* D45640 8007C8A4 696E000C */  jal        func_8001B9A4
    /* D45644 8007C8A8 21300002 */   addu      $a2, $s0, $zero
    /* D45648 8007C8AC 21208002 */  addu       $a0, $s4, $zero
    /* D4564C 8007C8B0 21288002 */  addu       $a1, $s4, $zero
    /* D45650 8007C8B4 736F000C */  jal        func_8001BDCC
    /* D45654 8007C8B8 21300002 */   addu      $a2, $s0, $zero
    /* D45658 8007C8BC 21208002 */  addu       $a0, $s4, $zero
    /* D4565C 8007C8C0 21288002 */  addu       $a1, $s4, $zero
    /* D45660 8007C8C4 736F000C */  jal        func_8001BDCC
    /* D45664 8007C8C8 21300002 */   addu      $a2, $s0, $zero
    /* D45668 8007C8CC 21208002 */  addu       $a0, $s4, $zero
    /* D4566C 8007C8D0 21288000 */  addu       $a1, $a0, $zero
    /* D45670 8007C8D4 736F000C */  jal        func_8001BDCC
    /* D45674 8007C8D8 21300002 */   addu      $a2, $s0, $zero
    /* D45678 8007C8DC 6900A293 */  lbu        $v0, 0x69($sp)
    /* D4567C 8007C8E0 00000000 */  nop
    /* D45680 8007C8E4 110042A2 */  sb         $v0, 0x11($s2)
    /* D45684 8007C8E8 6A00A293 */  lbu        $v0, 0x6A($sp)
    /* D45688 8007C8EC 4FF20108 */  j          .Llevel_10_8007C93C
    /* D4568C 8007C8F0 120042A2 */   sb        $v0, 0x12($s2)
  .Llevel_10_8007C8F4:
    /* D45690 8007C8F4 0780043C */  lui        $a0, %hi(D_8006A18C)
    /* D45694 8007C8F8 8CA18424 */  addiu      $a0, $a0, %lo(D_8006A18C)
    /* D45698 8007C8FC 696E000C */  jal        func_8001B9A4
    /* D4569C 8007C900 21304002 */   addu      $a2, $s2, $zero
    /* D456A0 8007C904 21204002 */  addu       $a0, $s2, $zero
    /* D456A4 8007C908 886E000C */  jal        func_8001BA20
    /* D456A8 8007C90C 21280000 */   addu      $a1, $zero, $zero
    /* D456AC 8007C910 21204000 */  addu       $a0, $v0, $zero
    /* D456B0 8007C914 0800458E */  lw         $a1, 0x8($s2)
    /* D456B4 8007C918 2E6D000C */  jal        func_8001B4B8
    /* D456B8 8007C91C 21300000 */   addu      $a2, $zero, $zero
    /* D456BC 8007C920 21300000 */  addu       $a2, $zero, $zero
    /* D456C0 8007C924 0000448E */  lw         $a0, 0x0($s2)
    /* D456C4 8007C928 0400458E */  lw         $a1, 0x4($s2)
    /* D456C8 8007C92C 05004224 */  addiu      $v0, $v0, 0x5
    /* D456CC 8007C930 2E6D000C */  jal        func_8001B4B8
    /* D456D0 8007C934 110042A2 */   sb        $v0, 0x11($s2)
    /* D456D4 8007C938 120042A2 */  sb         $v0, 0x12($s2)
  .Llevel_10_8007C93C:
    /* D456D8 8007C93C 21206002 */  addu       $a0, $s3, $zero
    /* D456DC 8007C940 21280000 */  addu       $a1, $zero, $zero
    /* D456E0 8007C944 21300000 */  addu       $a2, $zero, $zero
    /* D456E4 8007C948 B4000224 */  addiu      $v0, $zero, 0xB4
    /* D456E8 8007C94C 0C0042A6 */  sh         $v0, 0xC($s2)
  .Llevel_10_8007C950:
    /* D456EC 8007C950 01000224 */  addiu      $v0, $zero, 0x1
    /* D456F0 8007C954 9241010C */  jal        func_80050648
    /* D456F4 8007C958 4B0062A2 */   sb        $v0, 0x4B($s3)
    /* D456F8 8007C95C A3F20108 */  j          .Llevel_10_8007CA8C
    /* D456FC 8007C960 21106002 */   addu      $v0, $s3, $zero
  .Llevel_10_8007C964:
    /* D45700 8007C964 6C6F000C */  jal        func_8001BDB0
    /* D45704 8007C968 0C00A526 */   addiu     $a1, $s5, 0xC
    /* D45708 8007C96C 30000224 */  addiu      $v0, $zero, 0x30
    /* D4570C 8007C970 0C0042A6 */  sh         $v0, 0xC($s2)
    /* D45710 8007C974 7F000224 */  addiu      $v0, $zero, 0x7F
    /* D45714 8007C978 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* D45718 8007C97C 0C004296 */  lhu        $v0, 0xC($s2)
    /* D4571C 8007C980 00000000 */  nop
    /* D45720 8007C984 540062A2 */  sb         $v0, 0x54($s3)
    /* D45724 8007C988 0C004296 */  lhu        $v0, 0xC($s2)
    /* D45728 8007C98C 00000000 */  nop
    /* D4572C 8007C990 550062A2 */  sb         $v0, 0x55($s3)
    /* D45730 8007C994 0C004396 */  lhu        $v1, 0xC($s2)
    /* D45734 8007C998 3F000224 */  addiu      $v0, $zero, 0x3F
    /* D45738 8007C99C 570062A2 */  sb         $v0, 0x57($s3)
    /* D4573C 8007C9A0 A2F20108 */  j          .Llevel_10_8007CA88
    /* D45740 8007C9A4 560063A2 */   sb        $v1, 0x56($s3)
  .Llevel_10_8007C9A8:
    /* D45744 8007C9A8 0C006426 */  addiu      $a0, $s3, 0xC
    /* D45748 8007C9AC 0000708E */  lw         $s0, 0x0($s3)
    /* D4574C 8007C9B0 6C6F000C */  jal        func_8001BDB0
    /* D45750 8007C9B4 0C00A526 */   addiu     $a1, $s5, 0xC
    /* D45754 8007C9B8 0E05010C */  jal        func_80041438
    /* D45758 8007C9BC 21206002 */   addu      $a0, $s3, $zero
    /* D4575C 8007C9C0 10000224 */  addiu      $v0, $zero, 0x10
    /* D45760 8007C9C4 000002AE */  sw         $v0, 0x0($s0)
    /* D45764 8007C9C8 3F000224 */  addiu      $v0, $zero, 0x3F
    /* D45768 8007C9CC 570062A2 */  sb         $v0, 0x57($s3)
    /* D4576C 8007C9D0 40000224 */  addiu      $v0, $zero, 0x40
    /* D45770 8007C9D4 540062A2 */  sb         $v0, 0x54($s3)
    /* D45774 8007C9D8 80000224 */  addiu      $v0, $zero, 0x80
    /* D45778 8007C9DC 550062A2 */  sb         $v0, 0x55($s3)
    /* D4577C 8007C9E0 4B67010C */  jal        func_80059D2C
    /* D45780 8007C9E4 560062A2 */   sb        $v0, 0x56($s3)
    /* D45784 8007C9E8 4B67010C */  jal        func_80059D2C
    /* D45788 8007C9EC 450062A2 */   sb        $v0, 0x45($s3)
    /* D4578C 8007C9F0 460062A2 */  sb         $v0, 0x46($s3)
    /* D45790 8007C9F4 50000224 */  addiu      $v0, $zero, 0x50
  .Llevel_10_8007C9F8:
    /* D45794 8007C9F8 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* D45798 8007C9FC 04000224 */  addiu      $v0, $zero, 0x4
    /* D4579C 8007CA00 A2F20108 */  j          .Llevel_10_8007CA88
    /* D457A0 8007CA04 470062A2 */   sb        $v0, 0x47($s3)
  .Llevel_10_8007CA08:
    /* D457A4 8007CA08 0C006426 */  addiu      $a0, $s3, 0xC
    /* D457A8 8007CA0C 0000708E */  lw         $s0, 0x0($s3)
    /* D457AC 8007CA10 6C6F000C */  jal        func_8001BDB0
    /* D457B0 8007CA14 0C00A526 */   addiu     $a1, $s5, 0xC
    /* D457B4 8007CA18 0E05010C */  jal        func_80041438
    /* D457B8 8007CA1C 21206002 */   addu      $a0, $s3, $zero
    /* D457BC 8007CA20 18000224 */  addiu      $v0, $zero, 0x18
    /* D457C0 8007CA24 000002AE */  sw         $v0, 0x0($s0)
    /* D457C4 8007CA28 30000224 */  addiu      $v0, $zero, 0x30
    /* D457C8 8007CA2C 570062A2 */  sb         $v0, 0x57($s3)
    /* D457CC 8007CA30 64000224 */  addiu      $v0, $zero, 0x64
    /* D457D0 8007CA34 540060A2 */  sb         $zero, 0x54($s3)
    /* D457D4 8007CA38 550060A2 */  sb         $zero, 0x55($s3)
    /* D457D8 8007CA3C 560060A2 */  sb         $zero, 0x56($s3)
    /* D457DC 8007CA40 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* D457E0 8007CA44 4B67010C */  jal        func_80059D2C
    /* D457E4 8007CA48 470060A2 */   sb        $zero, 0x47($s3)
    /* D457E8 8007CA4C 4B67010C */  jal        func_80059D2C
    /* D457EC 8007CA50 450062A2 */   sb        $v0, 0x45($s3)
    /* D457F0 8007CA54 A2F20108 */  j          .Llevel_10_8007CA88
    /* D457F4 8007CA58 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_10_8007CA5C:
    /* D457F8 8007CA5C 0300A012 */  beqz       $s5, .Llevel_10_8007CA6C
    /* D457FC 8007CA60 0C006426 */   addiu     $a0, $s3, 0xC
    /* D45800 8007CA64 9DF20108 */  j          .Llevel_10_8007CA74
    /* D45804 8007CA68 0C00A526 */   addiu     $a1, $s5, 0xC
  .Llevel_10_8007CA6C:
    /* D45808 8007CA6C 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* D4580C 8007CA70 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_10_8007CA74:
    /* D45810 8007CA74 6C6F000C */  jal        func_8001BDB0
    /* D45814 8007CA78 00000000 */   nop
    /* D45818 8007CA7C 21206002 */  addu       $a0, $s3, $zero
  .Llevel_10_8007CA80:
    /* D4581C 8007CA80 0E05010C */  jal        func_80041438
    /* D45820 8007CA84 00000000 */   nop
  .Llevel_10_8007CA88:
    /* D45824 8007CA88 21106002 */  addu       $v0, $s3, $zero
  .Llevel_10_8007CA8C:
    /* D45828 8007CA8C 9800BF8F */  lw         $ra, 0x98($sp)
    /* D4582C 8007CA90 9400B58F */  lw         $s5, 0x94($sp)
    /* D45830 8007CA94 9000B48F */  lw         $s4, 0x90($sp)
    /* D45834 8007CA98 8C00B38F */  lw         $s3, 0x8C($sp)
    /* D45838 8007CA9C 8800B28F */  lw         $s2, 0x88($sp)
    /* D4583C 8007CAA0 8400B18F */  lw         $s1, 0x84($sp)
    /* D45840 8007CAA4 8000B08F */  lw         $s0, 0x80($sp)
    /* D45844 8007CAA8 A000BD27 */  addiu      $sp, $sp, 0xA0
    /* D45848 8007CAAC 0800E003 */  jr         $ra
    /* D4584C 8007CAB0 00000000 */   nop
endlabel func_level_10_8007BCB8
    /* D45850 8007CAB4 00000000 */  nop
