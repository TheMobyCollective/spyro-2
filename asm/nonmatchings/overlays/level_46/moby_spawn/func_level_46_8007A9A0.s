.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_46_8007A9A0, 0x1188

glabel func_level_46_8007A9A0
    /* 358E73C 8007A9A0 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 358E740 8007A9A4 8000B2AF */  sw         $s2, 0x80($sp)
    /* 358E744 8007A9A8 21908000 */  addu       $s2, $a0, $zero
    /* 358E748 8007A9AC 7C00B1AF */  sw         $s1, 0x7C($sp)
    /* 358E74C 8007A9B0 2188A000 */  addu       $s1, $a1, $zero
    /* 358E750 8007A9B4 9800BFAF */  sw         $ra, 0x98($sp)
    /* 358E754 8007A9B8 9400B7AF */  sw         $s7, 0x94($sp)
    /* 358E758 8007A9BC 9000B6AF */  sw         $s6, 0x90($sp)
    /* 358E75C 8007A9C0 8C00B5AF */  sw         $s5, 0x8C($sp)
    /* 358E760 8007A9C4 8800B4AF */  sw         $s4, 0x88($sp)
    /* 358E764 8007A9C8 8400B3AF */  sw         $s3, 0x84($sp)
    /* 358E768 8007A9CC A404010C */  jal        func_80041290
    /* 358E76C 8007A9D0 7800B0AF */   sw        $s0, 0x78($sp)
    /* 358E770 8007A9D4 21A84000 */  addu       $s5, $v0, $zero
    /* 358E774 8007A9D8 0300A016 */  bnez       $s5, .Llevel_46_8007A9E8
    /* 358E778 8007A9DC 2120A002 */   addu      $a0, $s5, $zero
    /* 358E77C 8007A9E0 BEEE0108 */  j          .Llevel_46_8007BAF8
    /* 358E780 8007A9E4 21100000 */   addu      $v0, $zero, $zero
  .Llevel_46_8007A9E8:
    /* 358E784 8007A9E8 21280000 */  addu       $a1, $zero, $zero
    /* 358E788 8007A9EC 0000B08E */  lw         $s0, 0x0($s5)
    /* 358E78C 8007A9F0 F26C000C */  jal        func_8001B3C8
    /* 358E790 8007A9F4 58000624 */   addiu     $a2, $zero, 0x58
    /* 358E794 8007A9F8 21280000 */  addu       $a1, $zero, $zero
    /* 358E798 8007A9FC 18000624 */  addiu      $a2, $zero, 0x18
    /* 358E79C 8007AA00 21200002 */  addu       $a0, $s0, $zero
    /* 358E7A0 8007AA04 F26C000C */  jal        func_8001B3C8
    /* 358E7A4 8007AA08 0000A4AE */   sw        $a0, 0x0($s5)
    /* 358E7A8 8007AA0C 16002012 */  beqz       $s1, .Llevel_46_8007AA68
    /* 358E7AC 8007AA10 3600B2A6 */   sh        $s2, 0x36($s5)
    /* 358E7B0 8007AA14 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 358E7B4 8007AA18 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 358E7B8 8007AA1C 00000000 */  nop
    /* 358E7BC 8007AA20 23202402 */  subu       $a0, $s1, $a0
    /* 358E7C0 8007AA24 40190400 */  sll        $v1, $a0, 5
    /* 358E7C4 8007AA28 23186400 */  subu       $v1, $v1, $a0
    /* 358E7C8 8007AA2C 40190300 */  sll        $v1, $v1, 5
    /* 358E7CC 8007AA30 21186400 */  addu       $v1, $v1, $a0
    /* 358E7D0 8007AA34 C0100300 */  sll        $v0, $v1, 3
    /* 358E7D4 8007AA38 21186200 */  addu       $v1, $v1, $v0
    /* 358E7D8 8007AA3C C0130300 */  sll        $v0, $v1, 15
    /* 358E7DC 8007AA40 23104300 */  subu       $v0, $v0, $v1
    /* 358E7E0 8007AA44 80100200 */  sll        $v0, $v0, 2
    /* 358E7E4 8007AA48 21104400 */  addu       $v0, $v0, $a0
    /* 358E7E8 8007AA4C 23100200 */  negu       $v0, $v0
    /* 358E7EC 8007AA50 C3180200 */  sra        $v1, $v0, 3
    /* 358E7F0 8007AA54 0001622C */  sltiu      $v0, $v1, 0x100
    /* 358E7F4 8007AA58 04004010 */  beqz       $v0, .Llevel_46_8007AA6C
    /* 358E7F8 8007AA5C FF000224 */   addiu     $v0, $zero, 0xFF
    /* 358E7FC 8007AA60 9CEA0108 */  j          .Llevel_46_8007AA70
    /* 358E800 8007AA64 3A00A3A2 */   sb        $v1, 0x3A($s5)
  .Llevel_46_8007AA68:
    /* 358E804 8007AA68 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_46_8007AA6C:
    /* 358E808 8007AA6C 3A00A2A2 */  sb         $v0, 0x3A($s5)
  .Llevel_46_8007AA70:
    /* 358E80C 8007AA70 72DD000C */  jal        func_800375C8
    /* 358E810 8007AA74 2120A002 */   addu      $a0, $s5, $zero
    /* 358E814 8007AA78 AE010224 */  addiu      $v0, $zero, 0x1AE
    /* 358E818 8007AA7C 66024212 */  beq        $s2, $v0, .Llevel_46_8007B418
    /* 358E81C 8007AA80 AF01422A */   slti      $v0, $s2, 0x1AF
    /* 358E820 8007AA84 20004010 */  beqz       $v0, .Llevel_46_8007AB08
    /* 358E824 8007AA88 D3000224 */   addiu     $v0, $zero, 0xD3
    /* 358E828 8007AA8C 3A004212 */  beq        $s2, $v0, .Llevel_46_8007AB78
    /* 358E82C 8007AA90 D400422A */   slti      $v0, $s2, 0xD4
    /* 358E830 8007AA94 0E004010 */  beqz       $v0, .Llevel_46_8007AAD0
    /* 358E834 8007AA98 29000224 */   addiu     $v0, $zero, 0x29
    /* 358E838 8007AA9C 69004212 */  beq        $s2, $v0, .Llevel_46_8007AC44
    /* 358E83C 8007AAA0 2A00422A */   slti      $v0, $s2, 0x2A
    /* 358E840 8007AAA4 05004010 */  beqz       $v0, .Llevel_46_8007AABC
    /* 358E844 8007AAA8 10000224 */   addiu     $v0, $zero, 0x10
    /* 358E848 8007AAAC 33004212 */  beq        $s2, $v0, .Llevel_46_8007AB7C
    /* 358E84C 8007AAB0 10000324 */   addiu     $v1, $zero, 0x10
    /* 358E850 8007AAB4 B2EE0108 */  j          .Llevel_46_8007BAC8
    /* 358E854 8007AAB8 00000000 */   nop
  .Llevel_46_8007AABC:
    /* 358E858 8007AABC 78000224 */  addiu      $v0, $zero, 0x78
    /* 358E85C 8007AAC0 C5014212 */  beq        $s2, $v0, .Llevel_46_8007B1D8
    /* 358E860 8007AAC4 00000000 */   nop
    /* 358E864 8007AAC8 B2EE0108 */  j          .Llevel_46_8007BAC8
    /* 358E868 8007AACC 00000000 */   nop
  .Llevel_46_8007AAD0:
    /* 358E86C 8007AAD0 46010224 */  addiu      $v0, $zero, 0x146
    /* 358E870 8007AAD4 08024212 */  beq        $s2, $v0, .Llevel_46_8007B2F8
    /* 358E874 8007AAD8 4701422A */   slti      $v0, $s2, 0x147
    /* 358E878 8007AADC 05004010 */  beqz       $v0, .Llevel_46_8007AAF4
    /* 358E87C 8007AAE0 04010224 */   addiu     $v0, $zero, 0x104
    /* 358E880 8007AAE4 EF014212 */  beq        $s2, $v0, .Llevel_46_8007B2A4
    /* 358E884 8007AAE8 00000000 */   nop
    /* 358E888 8007AAEC B2EE0108 */  j          .Llevel_46_8007BAC8
    /* 358E88C 8007AAF0 00000000 */   nop
  .Llevel_46_8007AAF4:
    /* 358E890 8007AAF4 97010224 */  addiu      $v0, $zero, 0x197
    /* 358E894 8007AAF8 42024212 */  beq        $s2, $v0, .Llevel_46_8007B404
    /* 358E898 8007AAFC 0C00A426 */   addiu     $a0, $s5, 0xC
    /* 358E89C 8007AB00 B2EE0108 */  j          .Llevel_46_8007BAC8
    /* 358E8A0 8007AB04 00000000 */   nop
  .Llevel_46_8007AB08:
    /* 358E8A4 8007AB08 E1010224 */  addiu      $v0, $zero, 0x1E1
    /* 358E8A8 8007AB0C D9034212 */  beq        $s2, $v0, .Llevel_46_8007BA74
    /* 358E8AC 8007AB10 E201422A */   slti      $v0, $s2, 0x1E2
    /* 358E8B0 8007AB14 0E004010 */  beqz       $v0, .Llevel_46_8007AB50
    /* 358E8B4 8007AB18 C0010224 */   addiu     $v0, $zero, 0x1C0
    /* 358E8B8 8007AB1C A1024212 */  beq        $s2, $v0, .Llevel_46_8007B5A4
    /* 358E8BC 8007AB20 C101422A */   slti      $v0, $s2, 0x1C1
    /* 358E8C0 8007AB24 05004010 */  beqz       $v0, .Llevel_46_8007AB3C
    /* 358E8C4 8007AB28 BF010224 */   addiu     $v0, $zero, 0x1BF
    /* 358E8C8 8007AB2C 8B024212 */  beq        $s2, $v0, .Llevel_46_8007B55C
    /* 358E8CC 8007AB30 0C00A426 */   addiu     $a0, $s5, 0xC
    /* 358E8D0 8007AB34 B2EE0108 */  j          .Llevel_46_8007BAC8
    /* 358E8D4 8007AB38 00000000 */   nop
  .Llevel_46_8007AB3C:
    /* 358E8D8 8007AB3C E0010224 */  addiu      $v0, $zero, 0x1E0
    /* 358E8DC 8007AB40 B3004212 */  beq        $s2, $v0, .Llevel_46_8007AE10
    /* 358E8E0 8007AB44 0C00A426 */   addiu     $a0, $s5, 0xC
    /* 358E8E4 8007AB48 B2EE0108 */  j          .Llevel_46_8007BAC8
    /* 358E8E8 8007AB4C 00000000 */   nop
  .Llevel_46_8007AB50:
    /* 358E8EC 8007AB50 E3010224 */  addiu      $v0, $zero, 0x1E3
    /* 358E8F0 8007AB54 12034212 */  beq        $s2, $v0, .Llevel_46_8007B7A0
    /* 358E8F4 8007AB58 E301422A */   slti      $v0, $s2, 0x1E3
    /* 358E8F8 8007AB5C F9024014 */  bnez       $v0, .Llevel_46_8007B744
    /* 358E8FC 8007AB60 0C00A426 */   addiu     $a0, $s5, 0xC
    /* 358E900 8007AB64 1D020224 */  addiu      $v0, $zero, 0x21D
    /* 358E904 8007AB68 C3034212 */  beq        $s2, $v0, .Llevel_46_8007BA78
    /* 358E908 8007AB6C 00000000 */   nop
    /* 358E90C 8007AB70 B2EE0108 */  j          .Llevel_46_8007BAC8
    /* 358E910 8007AB74 00000000 */   nop
  .Llevel_46_8007AB78:
    /* 358E914 8007AB78 10000324 */  addiu      $v1, $zero, 0x10
  .Llevel_46_8007AB7C:
    /* 358E918 8007AB7C 3600A286 */  lh         $v0, 0x36($s5)
    /* 358E91C 8007AB80 0000B28E */  lw         $s2, 0x0($s5)
    /* 358E920 8007AB84 18004314 */  bne        $v0, $v1, .Llevel_46_8007ABE8
    /* 358E924 8007AB88 00000000 */   nop
    /* 358E928 8007AB8C 0680043C */  lui        $a0, %hi(D_8006712C)
    /* 358E92C 8007AB90 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* 358E930 8007AB94 00000000 */  nop
    /* 358E934 8007AB98 04008228 */  slti       $v0, $a0, 0x4
    /* 358E938 8007AB9C 03004010 */  beqz       $v0, .Llevel_46_8007ABAC
    /* 358E93C 8007ABA0 0A000324 */   addiu     $v1, $zero, 0xA
    /* 358E940 8007ABA4 EFEA0108 */  j          .Llevel_46_8007ABBC
    /* 358E944 8007ABA8 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_46_8007ABAC:
    /* 358E948 8007ABAC 07008228 */  slti       $v0, $a0, 0x7
    /* 358E94C 8007ABB0 02004010 */  beqz       $v0, .Llevel_46_8007ABBC
    /* 358E950 8007ABB4 00000000 */   nop
    /* 358E954 8007ABB8 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_46_8007ABBC:
    /* 358E958 8007ABBC 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* 358E95C 8007ABC0 AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* 358E960 8007ABC4 0000828C */  lw         $v0, 0x0($a0)
    /* 358E964 8007ABC8 00000000 */  nop
    /* 358E968 8007ABCC 01004224 */  addiu      $v0, $v0, 0x1
    /* 358E96C 8007ABD0 000082AC */  sw         $v0, 0x0($a0)
    /* 358E970 8007ABD4 2A104300 */  slt        $v0, $v0, $v1
    /* 358E974 8007ABD8 03004014 */  bnez       $v0, .Llevel_46_8007ABE8
    /* 358E978 8007ABDC D3000224 */   addiu     $v0, $zero, 0xD3
    /* 358E97C 8007ABE0 000080AC */  sw         $zero, 0x0($a0)
    /* 358E980 8007ABE4 3600A2A6 */  sh         $v0, 0x36($s5)
  .Llevel_46_8007ABE8:
    /* 358E984 8007ABE8 0E05010C */  jal        func_80041438
    /* 358E988 8007ABEC 2120A002 */   addu      $a0, $s5, $zero
    /* 358E98C 8007ABF0 0C00B026 */  addiu      $s0, $s5, 0xC
    /* 358E990 8007ABF4 21200002 */  addu       $a0, $s0, $zero
    /* 358E994 8007ABF8 6C6F000C */  jal        func_8001BDB0
    /* 358E998 8007ABFC 0C002526 */   addiu     $a1, $s1, 0xC
    /* 358E99C 8007AC00 21204002 */  addu       $a0, $s2, $zero
    /* 358E9A0 8007AC04 1400A28E */  lw         $v0, 0x14($s5)
    /* 358E9A4 8007AC08 21280002 */  addu       $a1, $s0, $zero
    /* 358E9A8 8007AC0C 00024224 */  addiu      $v0, $v0, 0x200
    /* 358E9AC 8007AC10 6C6F000C */  jal        func_8001BDB0
    /* 358E9B0 8007AC14 1400A2AE */   sw        $v0, 0x14($s5)
    /* 358E9B4 8007AC18 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 358E9B8 8007AC1C 1C00A2AE */  sw         $v0, 0x1C($s5)
    /* 358E9BC 8007AC20 02000224 */  addiu      $v0, $zero, 0x2
    /* 358E9C0 8007AC24 4700A2A2 */  sb         $v0, 0x47($s5)
    /* 358E9C4 8007AC28 08070224 */  addiu      $v0, $zero, 0x708
    /* 358E9C8 8007AC2C 0E0042A6 */  sh         $v0, 0xE($s2)
    /* 358E9CC 8007AC30 4B67010C */  jal        func_80059D2C
    /* 358E9D0 8007AC34 110040A2 */   sb        $zero, 0x11($s2)
    /* 358E9D4 8007AC38 FC004230 */  andi       $v0, $v0, 0xFC
    /* 358E9D8 8007AC3C BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358E9DC 8007AC40 120042A2 */   sb        $v0, 0x12($s2)
  .Llevel_46_8007AC44:
    /* 358E9E0 8007AC44 0C00A426 */  addiu      $a0, $s5, 0xC
    /* 358E9E4 8007AC48 0C002526 */  addiu      $a1, $s1, 0xC
    /* 358E9E8 8007AC4C 0000B28E */  lw         $s2, 0x0($s5)
    /* 358E9EC 8007AC50 20000224 */  addiu      $v0, $zero, 0x20
    /* 358E9F0 8007AC54 4C00A2A2 */  sb         $v0, 0x4C($s5)
    /* 358E9F4 8007AC58 6C6F000C */  jal        func_8001BDB0
    /* 358E9F8 8007AC5C 4E00A2A2 */   sb        $v0, 0x4E($s5)
    /* 358E9FC 8007AC60 0E05010C */  jal        func_80041438
    /* 358EA00 8007AC64 2120A002 */   addu      $a0, $s5, $zero
    /* 358EA04 8007AC68 36002386 */  lh         $v1, 0x36($s1)
    /* 358EA08 8007AC6C 97010224 */  addiu      $v0, $zero, 0x197
    /* 358EA0C 8007AC70 10006214 */  bne        $v1, $v0, .Llevel_46_8007ACB4
    /* 358EA10 8007AC74 21200000 */   addu      $a0, $zero, $zero
    /* 358EA14 8007AC78 64000424 */  addiu      $a0, $zero, 0x64
    /* 358EA18 8007AC7C 47E2000C */  jal        func_8003891C
    /* 358EA1C 8007AC80 FF030524 */   addiu     $a1, $zero, 0x3FF
    /* 358EA20 8007AC84 4B67010C */  jal        func_80059D2C
    /* 358EA24 8007AC88 21B04000 */   addu      $s6, $v0, $zero
    /* 358EA28 8007AC8C FF0F5430 */  andi       $s4, $v0, 0xFFF
    /* 358EA2C 8007AC90 78000424 */  addiu      $a0, $zero, 0x78
    /* 358EA30 8007AC94 47E2000C */  jal        func_8003891C
    /* 358EA34 8007AC98 AA000524 */   addiu     $a1, $zero, 0xAA
    /* 358EA38 8007AC9C 21984000 */  addu       $s3, $v0, $zero
    /* 358EA3C 8007ACA0 96000424 */  addiu      $a0, $zero, 0x96
    /* 358EA40 8007ACA4 47E2000C */  jal        func_8003891C
    /* 358EA44 8007ACA8 BE000524 */   addiu     $a1, $zero, 0xBE
    /* 358EA48 8007ACAC 34EB0108 */  j          .Llevel_46_8007ACD0
    /* 358EA4C 8007ACB0 21B84000 */   addu      $s7, $v0, $zero
  .Llevel_46_8007ACB4:
    /* 358EA50 8007ACB4 47E2000C */  jal        func_8003891C
    /* 358EA54 8007ACB8 FF030524 */   addiu     $a1, $zero, 0x3FF
    /* 358EA58 8007ACBC 4B67010C */  jal        func_80059D2C
    /* 358EA5C 8007ACC0 21B04000 */   addu      $s6, $v0, $zero
    /* 358EA60 8007ACC4 FF0F5430 */  andi       $s4, $v0, 0xFFF
    /* 358EA64 8007ACC8 64001324 */  addiu      $s3, $zero, 0x64
    /* 358EA68 8007ACCC 64001724 */  addiu      $s7, $zero, 0x64
  .Llevel_46_8007ACD0:
    /* 358EA6C 8007ACD0 996D000C */  jal        func_8001B664
    /* 358EA70 8007ACD4 2120C002 */   addu      $a0, $s6, $zero
    /* 358EA74 8007ACD8 21208002 */  addu       $a0, $s4, $zero
    /* 358EA78 8007ACDC 996D000C */  jal        func_8001B664
    /* 358EA7C 8007ACE0 21804000 */   addu      $s0, $v0, $zero
    /* 358EA80 8007ACE4 18005300 */  mult       $v0, $s3
    /* 358EA84 8007ACE8 12400000 */  mflo       $t0
    /* 358EA88 8007ACEC 83811000 */  sra        $s0, $s0, 6
    /* 358EA8C 8007ACF0 00000000 */  nop
    /* 358EA90 8007ACF4 18000802 */  mult       $s0, $t0
    /* 358EA94 8007ACF8 2120C002 */  addu       $a0, $s6, $zero
    /* 358EA98 8007ACFC 12400000 */  mflo       $t0
    /* 358EA9C 8007AD00 83140800 */  sra        $v0, $t0, 18
    /* 358EAA0 8007AD04 996D000C */  jal        func_8001B664
    /* 358EAA4 8007AD08 000042A6 */   sh        $v0, 0x0($s2)
    /* 358EAA8 8007AD0C 21208002 */  addu       $a0, $s4, $zero
    /* 358EAAC 8007AD10 876D000C */  jal        func_8001B61C
    /* 358EAB0 8007AD14 21804000 */   addu      $s0, $v0, $zero
    /* 358EAB4 8007AD18 18005300 */  mult       $v0, $s3
    /* 358EAB8 8007AD1C 12400000 */  mflo       $t0
    /* 358EABC 8007AD20 83811000 */  sra        $s0, $s0, 6
    /* 358EAC0 8007AD24 00000000 */  nop
    /* 358EAC4 8007AD28 18000802 */  mult       $s0, $t0
    /* 358EAC8 8007AD2C 2120C002 */  addu       $a0, $s6, $zero
    /* 358EACC 8007AD30 12400000 */  mflo       $t0
    /* 358EAD0 8007AD34 83140800 */  sra        $v0, $t0, 18
    /* 358EAD4 8007AD38 876D000C */  jal        func_8001B61C
    /* 358EAD8 8007AD3C 020042A6 */   sh        $v0, 0x2($s2)
    /* 358EADC 8007AD40 18005700 */  mult       $v0, $s7
    /* 358EAE0 8007AD44 12400000 */  mflo       $t0
    /* 358EAE4 8007AD48 03130800 */  sra        $v0, $t0, 12
    /* 358EAE8 8007AD4C 4B67010C */  jal        func_80059D2C
    /* 358EAEC 8007AD50 040042A6 */   sh        $v0, 0x4($s2)
    /* 358EAF0 8007AD54 4B67010C */  jal        func_80059D2C
    /* 358EAF4 8007AD58 4400A2A2 */   sb        $v0, 0x44($s5)
    /* 358EAF8 8007AD5C 4B67010C */  jal        func_80059D2C
    /* 358EAFC 8007AD60 4500A2A2 */   sb        $v0, 0x45($s5)
    /* 358EB00 8007AD64 4600A2A2 */  sb         $v0, 0x46($s5)
    /* 358EB04 8007AD68 00004286 */  lh         $v0, 0x0($s2)
    /* 358EB08 8007AD6C 0C00A38E */  lw         $v1, 0xC($s5)
    /* 358EB0C 8007AD70 40100200 */  sll        $v0, $v0, 1
    /* 358EB10 8007AD74 21186200 */  addu       $v1, $v1, $v0
    /* 358EB14 8007AD78 0C00A3AE */  sw         $v1, 0xC($s5)
    /* 358EB18 8007AD7C 02004286 */  lh         $v0, 0x2($s2)
    /* 358EB1C 8007AD80 1000A38E */  lw         $v1, 0x10($s5)
    /* 358EB20 8007AD84 40100200 */  sll        $v0, $v0, 1
    /* 358EB24 8007AD88 21186200 */  addu       $v1, $v1, $v0
    /* 358EB28 8007AD8C 1000A3AE */  sw         $v1, 0x10($s5)
    /* 358EB2C 8007AD90 04004286 */  lh         $v0, 0x4($s2)
    /* 358EB30 8007AD94 1400A38E */  lw         $v1, 0x14($s5)
    /* 358EB34 8007AD98 40100200 */  sll        $v0, $v0, 1
    /* 358EB38 8007AD9C 21186200 */  addu       $v1, $v1, $v0
    /* 358EB3C 8007ADA0 4B67010C */  jal        func_80059D2C
    /* 358EB40 8007ADA4 1400A3AE */   sw        $v1, 0x14($s5)
    /* 358EB44 8007ADA8 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358EB48 8007ADAC F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358EB4C 8007ADB0 4B67010C */  jal        func_80059D2C
    /* 358EB50 8007ADB4 060042A6 */   sh        $v0, 0x6($s2)
    /* 358EB54 8007ADB8 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358EB58 8007ADBC F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358EB5C 8007ADC0 4B67010C */  jal        func_80059D2C
    /* 358EB60 8007ADC4 080042A6 */   sh        $v0, 0x8($s2)
    /* 358EB64 8007ADC8 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358EB68 8007ADCC F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358EB6C 8007ADD0 0A0042A6 */  sh         $v0, 0xA($s2)
    /* 358EB70 8007ADD4 36002386 */  lh         $v1, 0x36($s1)
    /* 358EB74 8007ADD8 97010224 */  addiu      $v0, $zero, 0x197
    /* 358EB78 8007ADDC 04006214 */  bne        $v1, $v0, .Llevel_46_8007ADF0
    /* 358EB7C 8007ADE0 5A000424 */   addiu     $a0, $zero, 0x5A
    /* 358EB80 8007ADE4 3C000424 */  addiu      $a0, $zero, 0x3C
    /* 358EB84 8007ADE8 7DEB0108 */  j          .Llevel_46_8007ADF4
    /* 358EB88 8007ADEC 64000524 */   addiu     $a1, $zero, 0x64
  .Llevel_46_8007ADF0:
    /* 358EB8C 8007ADF0 96000524 */  addiu      $a1, $zero, 0x96
  .Llevel_46_8007ADF4:
    /* 358EB90 8007ADF4 47E2000C */  jal        func_8003891C
    /* 358EB94 8007ADF8 00000000 */   nop
    /* 358EB98 8007ADFC 0C0042A6 */  sh         $v0, 0xC($s2)
    /* 358EB9C 8007AE00 01000224 */  addiu      $v0, $zero, 0x1
    /* 358EBA0 8007AE04 0E0042A6 */  sh         $v0, 0xE($s2)
    /* 358EBA4 8007AE08 BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358EBA8 8007AE0C 120040A6 */   sh        $zero, 0x12($s2)
  .Llevel_46_8007AE10:
    /* 358EBAC 8007AE10 0C002526 */  addiu      $a1, $s1, 0xC
    /* 358EBB0 8007AE14 0000B38E */  lw         $s3, 0x0($s5)
    /* 358EBB4 8007AE18 20000224 */  addiu      $v0, $zero, 0x20
    /* 358EBB8 8007AE1C 4C00A2A2 */  sb         $v0, 0x4C($s5)
    /* 358EBBC 8007AE20 6C6F000C */  jal        func_8001BDB0
    /* 358EBC0 8007AE24 4E00A2A2 */   sb        $v0, 0x4E($s5)
    /* 358EBC4 8007AE28 0E05010C */  jal        func_80041438
    /* 358EBC8 8007AE2C 2120A002 */   addu      $a0, $s5, $zero
    /* 358EBCC 8007AE30 3600A286 */  lh         $v0, 0x36($s5)
    /* 358EBD0 8007AE34 00000000 */  nop
    /* 358EBD4 8007AE38 07005214 */  bne        $v0, $s2, .Llevel_46_8007AE58
    /* 358EBD8 8007AE3C 2C010424 */   addiu     $a0, $zero, 0x12C
    /* 358EBDC 8007AE40 4B67010C */  jal        func_80059D2C
    /* 358EBE0 8007AE44 00000000 */   nop
    /* 358EBE4 8007AE48 4B67010C */  jal        func_80059D2C
    /* 358EBE8 8007AE4C FF0F5630 */   andi      $s6, $v0, 0xFFF
    /* 358EBEC 8007AE50 A0EB0108 */  j          .Llevel_46_8007AE80
    /* 358EBF0 8007AE54 FF0F5430 */   andi      $s4, $v0, 0xFFF
  .Llevel_46_8007AE58:
    /* 358EBF4 8007AE58 47E2000C */  jal        func_8003891C
    /* 358EBF8 8007AE5C 34080524 */   addiu     $a1, $zero, 0x834
    /* 358EBFC 8007AE60 21B04000 */  addu       $s6, $v0, $zero
    /* 358EC00 8007AE64 24FA0424 */  addiu      $a0, $zero, -0x5DC
    /* 358EC04 8007AE68 47E2000C */  jal        func_8003891C
    /* 358EC08 8007AE6C DC050524 */   addiu     $a1, $zero, 0x5DC
    /* 358EC0C 8007AE70 46002392 */  lbu        $v1, 0x46($s1)
    /* 358EC10 8007AE74 00000000 */  nop
    /* 358EC14 8007AE78 21186200 */  addu       $v1, $v1, $v0
    /* 358EC18 8007AE7C FF0F7430 */  andi       $s4, $v1, 0xFFF
  .Llevel_46_8007AE80:
    /* 358EC1C 8007AE80 3600A386 */  lh         $v1, 0x36($s5)
    /* 358EC20 8007AE84 23010224 */  addiu      $v0, $zero, 0x123
    /* 358EC24 8007AE88 04006214 */  bne        $v1, $v0, .Llevel_46_8007AE9C
    /* 358EC28 8007AE8C 78001224 */   addiu     $s2, $zero, 0x78
    /* 358EC2C 8007AE90 B4001224 */  addiu      $s2, $zero, 0xB4
    /* 358EC30 8007AE94 A8EB0108 */  j          .Llevel_46_8007AEA0
    /* 358EC34 8007AE98 DC001724 */   addiu     $s7, $zero, 0xDC
  .Llevel_46_8007AE9C:
    /* 358EC38 8007AE9C 96001724 */  addiu      $s7, $zero, 0x96
  .Llevel_46_8007AEA0:
    /* 358EC3C 8007AEA0 996D000C */  jal        func_8001B664
    /* 358EC40 8007AEA4 2120C002 */   addu      $a0, $s6, $zero
    /* 358EC44 8007AEA8 21208002 */  addu       $a0, $s4, $zero
    /* 358EC48 8007AEAC 996D000C */  jal        func_8001B664
    /* 358EC4C 8007AEB0 21804000 */   addu      $s0, $v0, $zero
    /* 358EC50 8007AEB4 18005200 */  mult       $v0, $s2
    /* 358EC54 8007AEB8 12400000 */  mflo       $t0
    /* 358EC58 8007AEBC 83811000 */  sra        $s0, $s0, 6
    /* 358EC5C 8007AEC0 00000000 */  nop
    /* 358EC60 8007AEC4 18000802 */  mult       $s0, $t0
    /* 358EC64 8007AEC8 2120C002 */  addu       $a0, $s6, $zero
    /* 358EC68 8007AECC 12400000 */  mflo       $t0
    /* 358EC6C 8007AED0 83140800 */  sra        $v0, $t0, 18
    /* 358EC70 8007AED4 996D000C */  jal        func_8001B664
    /* 358EC74 8007AED8 000062A6 */   sh        $v0, 0x0($s3)
    /* 358EC78 8007AEDC 21208002 */  addu       $a0, $s4, $zero
    /* 358EC7C 8007AEE0 876D000C */  jal        func_8001B61C
    /* 358EC80 8007AEE4 21804000 */   addu      $s0, $v0, $zero
    /* 358EC84 8007AEE8 18005200 */  mult       $v0, $s2
    /* 358EC88 8007AEEC 12400000 */  mflo       $t0
    /* 358EC8C 8007AEF0 83811000 */  sra        $s0, $s0, 6
    /* 358EC90 8007AEF4 00000000 */  nop
    /* 358EC94 8007AEF8 18000802 */  mult       $s0, $t0
    /* 358EC98 8007AEFC 2120C002 */  addu       $a0, $s6, $zero
    /* 358EC9C 8007AF00 12400000 */  mflo       $t0
    /* 358ECA0 8007AF04 83140800 */  sra        $v0, $t0, 18
    /* 358ECA4 8007AF08 876D000C */  jal        func_8001B61C
    /* 358ECA8 8007AF0C 020062A6 */   sh        $v0, 0x2($s3)
    /* 358ECAC 8007AF10 18005700 */  mult       $v0, $s7
    /* 358ECB0 8007AF14 12400000 */  mflo       $t0
    /* 358ECB4 8007AF18 03130800 */  sra        $v0, $t0, 12
    /* 358ECB8 8007AF1C 040062A6 */  sh         $v0, 0x4($s3)
    /* 358ECBC 8007AF20 51002492 */  lbu        $a0, 0x51($s1)
    /* 358ECC0 8007AF24 00000000 */  nop
    /* 358ECC4 8007AF28 26008010 */  beqz       $a0, .Llevel_46_8007AFC4
    /* 358ECC8 8007AF2C 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 358ECCC 8007AF30 1800228E */  lw         $v0, 0x18($s1)
    /* 358ECD0 8007AF34 00000000 */  nop
    /* 358ECD4 8007AF38 24104300 */  and        $v0, $v0, $v1
    /* 358ECD8 8007AF3C 21004010 */  beqz       $v0, .Llevel_46_8007AFC4
    /* 358ECDC 8007AF40 40100400 */   sll       $v0, $a0, 1
    /* 358ECE0 8007AF44 0680013C */  lui        $at, %hi(D_80061C58)
    /* 358ECE4 8007AF48 21082200 */  addu       $at, $at, $v0
    /* 358ECE8 8007AF4C 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 358ECEC 8007AF50 00000000 */  nop
    /* 358ECF0 8007AF54 80100300 */  sll        $v0, $v1, 2
    /* 358ECF4 8007AF58 21104300 */  addu       $v0, $v0, $v1
    /* 358ECF8 8007AF5C 00190200 */  sll        $v1, $v0, 4
    /* 358ECFC 8007AF60 23186200 */  subu       $v1, $v1, $v0
    /* 358ED00 8007AF64 00006296 */  lhu        $v0, 0x0($s3)
    /* 358ED04 8007AF68 C31A0300 */  sra        $v1, $v1, 11
    /* 358ED08 8007AF6C 21104300 */  addu       $v0, $v0, $v1
    /* 358ED0C 8007AF70 000062A6 */  sh         $v0, 0x0($s3)
    /* 358ED10 8007AF74 51002292 */  lbu        $v0, 0x51($s1)
    /* 358ED14 8007AF78 28000424 */  addiu      $a0, $zero, 0x28
    /* 358ED18 8007AF7C 40100200 */  sll        $v0, $v0, 1
    /* 358ED1C 8007AF80 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 358ED20 8007AF84 21082200 */  addu       $at, $at, $v0
    /* 358ED24 8007AF88 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 358ED28 8007AF8C 46000524 */  addiu      $a1, $zero, 0x46
    /* 358ED2C 8007AF90 80100300 */  sll        $v0, $v1, 2
    /* 358ED30 8007AF94 21104300 */  addu       $v0, $v0, $v1
    /* 358ED34 8007AF98 00190200 */  sll        $v1, $v0, 4
    /* 358ED38 8007AF9C 23186200 */  subu       $v1, $v1, $v0
    /* 358ED3C 8007AFA0 02006296 */  lhu        $v0, 0x2($s3)
    /* 358ED40 8007AFA4 C31A0300 */  sra        $v1, $v1, 11
    /* 358ED44 8007AFA8 21104300 */  addu       $v0, $v0, $v1
    /* 358ED48 8007AFAC 47E2000C */  jal        func_8003891C
    /* 358ED4C 8007AFB0 020062A6 */   sh        $v0, 0x2($s3)
    /* 358ED50 8007AFB4 04006396 */  lhu        $v1, 0x4($s3)
    /* 358ED54 8007AFB8 00000000 */  nop
    /* 358ED58 8007AFBC 21186200 */  addu       $v1, $v1, $v0
    /* 358ED5C 8007AFC0 040063A6 */  sh         $v1, 0x4($s3)
  .Llevel_46_8007AFC4:
    /* 358ED60 8007AFC4 3600A386 */  lh         $v1, 0x36($s5)
    /* 358ED64 8007AFC8 98000224 */  addiu      $v0, $zero, 0x98
    /* 358ED68 8007AFCC 41006210 */  beq        $v1, $v0, .Llevel_46_8007B0D4
    /* 358ED6C 8007AFD0 E0010224 */   addiu     $v0, $zero, 0x1E0
    /* 358ED70 8007AFD4 3E006210 */  beq        $v1, $v0, .Llevel_46_8007B0D0
    /* 358ED74 8007AFD8 0200033C */   lui       $v1, (0x20000 >> 16)
    /* 358ED78 8007AFDC 1800228E */  lw         $v0, 0x18($s1)
    /* 358ED7C 8007AFE0 00000000 */  nop
    /* 358ED80 8007AFE4 24104300 */  and        $v0, $v0, $v1
    /* 358ED84 8007AFE8 1B004010 */  beqz       $v0, .Llevel_46_8007B058
    /* 358ED88 8007AFEC 00000000 */   nop
    /* 358ED8C 8007AFF0 46002292 */  lbu        $v0, 0x46($s1)
    /* 358ED90 8007AFF4 00000000 */  nop
    /* 358ED94 8007AFF8 40100200 */  sll        $v0, $v0, 1
    /* 358ED98 8007AFFC 0680013C */  lui        $at, %hi(D_80061C58)
    /* 358ED9C 8007B000 21082200 */  addu       $at, $at, $v0
    /* 358EDA0 8007B004 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 358EDA4 8007B008 00000000 */  nop
    /* 358EDA8 8007B00C C0100300 */  sll        $v0, $v1, 3
    /* 358EDAC 8007B010 23104300 */  subu       $v0, $v0, $v1
    /* 358EDB0 8007B014 C0100200 */  sll        $v0, $v0, 3
    /* 358EDB4 8007B018 23104300 */  subu       $v0, $v0, $v1
    /* 358EDB8 8007B01C 00006396 */  lhu        $v1, 0x0($s3)
    /* 358EDBC 8007B020 83120200 */  sra        $v0, $v0, 10
    /* 358EDC0 8007B024 21186200 */  addu       $v1, $v1, $v0
    /* 358EDC4 8007B028 000063A6 */  sh         $v1, 0x0($s3)
    /* 358EDC8 8007B02C 46002292 */  lbu        $v0, 0x46($s1)
    /* 358EDCC 8007B030 00000000 */  nop
    /* 358EDD0 8007B034 40100200 */  sll        $v0, $v0, 1
    /* 358EDD4 8007B038 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 358EDD8 8007B03C 21082200 */  addu       $at, $at, $v0
    /* 358EDDC 8007B040 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 358EDE0 8007B044 00000000 */  nop
    /* 358EDE4 8007B048 C0100300 */  sll        $v0, $v1, 3
    /* 358EDE8 8007B04C 23104300 */  subu       $v0, $v0, $v1
    /* 358EDEC 8007B050 2FEC0108 */  j          .Llevel_46_8007B0BC
    /* 358EDF0 8007B054 C0100200 */   sll       $v0, $v0, 3
  .Llevel_46_8007B058:
    /* 358EDF4 8007B058 46002292 */  lbu        $v0, 0x46($s1)
    /* 358EDF8 8007B05C 00000000 */  nop
    /* 358EDFC 8007B060 40100200 */  sll        $v0, $v0, 1
    /* 358EE00 8007B064 0680013C */  lui        $at, %hi(D_80061C58)
    /* 358EE04 8007B068 21082200 */  addu       $at, $at, $v0
    /* 358EE08 8007B06C 581C2384 */  lh         $v1, %lo(D_80061C58)($at)
    /* 358EE0C 8007B070 00000000 */  nop
    /* 358EE10 8007B074 C0100300 */  sll        $v0, $v1, 3
    /* 358EE14 8007B078 21104300 */  addu       $v0, $v0, $v1
    /* 358EE18 8007B07C 80100200 */  sll        $v0, $v0, 2
    /* 358EE1C 8007B080 23104300 */  subu       $v0, $v0, $v1
    /* 358EE20 8007B084 00006396 */  lhu        $v1, 0x0($s3)
    /* 358EE24 8007B088 83120200 */  sra        $v0, $v0, 10
    /* 358EE28 8007B08C 21186200 */  addu       $v1, $v1, $v0
    /* 358EE2C 8007B090 000063A6 */  sh         $v1, 0x0($s3)
    /* 358EE30 8007B094 46002292 */  lbu        $v0, 0x46($s1)
    /* 358EE34 8007B098 00000000 */  nop
    /* 358EE38 8007B09C 40100200 */  sll        $v0, $v0, 1
    /* 358EE3C 8007B0A0 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 358EE40 8007B0A4 21082200 */  addu       $at, $at, $v0
    /* 358EE44 8007B0A8 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 358EE48 8007B0AC 00000000 */  nop
    /* 358EE4C 8007B0B0 C0100300 */  sll        $v0, $v1, 3
    /* 358EE50 8007B0B4 21104300 */  addu       $v0, $v0, $v1
    /* 358EE54 8007B0B8 80100200 */  sll        $v0, $v0, 2
  .Llevel_46_8007B0BC:
    /* 358EE58 8007B0BC 23104300 */  subu       $v0, $v0, $v1
    /* 358EE5C 8007B0C0 02006396 */  lhu        $v1, 0x2($s3)
    /* 358EE60 8007B0C4 83120200 */  sra        $v0, $v0, 10
    /* 358EE64 8007B0C8 21186200 */  addu       $v1, $v1, $v0
    /* 358EE68 8007B0CC 020063A6 */  sh         $v1, 0x2($s3)
  .Llevel_46_8007B0D0:
    /* 358EE6C 8007B0D0 3600A386 */  lh         $v1, 0x36($s5)
  .Llevel_46_8007B0D4:
    /* 358EE70 8007B0D4 3D000224 */  addiu      $v0, $zero, 0x3D
    /* 358EE74 8007B0D8 21006210 */  beq        $v1, $v0, .Llevel_46_8007B160
    /* 358EE78 8007B0DC 21206000 */   addu      $a0, $v1, $zero
    /* 358EE7C 8007B0E0 58000224 */  addiu      $v0, $zero, 0x58
    /* 358EE80 8007B0E4 1E006210 */  beq        $v1, $v0, .Llevel_46_8007B160
    /* 358EE84 8007B0E8 42000224 */   addiu     $v0, $zero, 0x42
    /* 358EE88 8007B0EC 1C006210 */  beq        $v1, $v0, .Llevel_46_8007B160
    /* 358EE8C 8007B0F0 7CFD8224 */   addiu     $v0, $a0, -0x284
    /* 358EE90 8007B0F4 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 358EE94 8007B0F8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 358EE98 8007B0FC 18004014 */  bnez       $v0, .Llevel_46_8007B160
    /* 358EE9C 8007B100 00000000 */   nop
    /* 358EEA0 8007B104 4B67010C */  jal        func_80059D2C
    /* 358EEA4 8007B108 00000000 */   nop
    /* 358EEA8 8007B10C 4B67010C */  jal        func_80059D2C
    /* 358EEAC 8007B110 4400A2A2 */   sb        $v0, 0x44($s5)
    /* 358EEB0 8007B114 4B67010C */  jal        func_80059D2C
    /* 358EEB4 8007B118 4500A2A2 */   sb        $v0, 0x45($s5)
    /* 358EEB8 8007B11C 4600A2A2 */  sb         $v0, 0x46($s5)
    /* 358EEBC 8007B120 00006286 */  lh         $v0, 0x0($s3)
    /* 358EEC0 8007B124 0C00A38E */  lw         $v1, 0xC($s5)
    /* 358EEC4 8007B128 40100200 */  sll        $v0, $v0, 1
    /* 358EEC8 8007B12C 21186200 */  addu       $v1, $v1, $v0
    /* 358EECC 8007B130 0C00A3AE */  sw         $v1, 0xC($s5)
    /* 358EED0 8007B134 02006286 */  lh         $v0, 0x2($s3)
    /* 358EED4 8007B138 1000A38E */  lw         $v1, 0x10($s5)
    /* 358EED8 8007B13C 40100200 */  sll        $v0, $v0, 1
    /* 358EEDC 8007B140 21186200 */  addu       $v1, $v1, $v0
    /* 358EEE0 8007B144 1000A3AE */  sw         $v1, 0x10($s5)
    /* 358EEE4 8007B148 04006286 */  lh         $v0, 0x4($s3)
    /* 358EEE8 8007B14C 1400A38E */  lw         $v1, 0x14($s5)
    /* 358EEEC 8007B150 40100200 */  sll        $v0, $v0, 1
    /* 358EEF0 8007B154 21186200 */  addu       $v1, $v1, $v0
    /* 358EEF4 8007B158 61EC0108 */  j          .Llevel_46_8007B184
    /* 358EEF8 8007B15C 1400A3AE */   sw        $v1, 0x14($s5)
  .Llevel_46_8007B160:
    /* 358EEFC 8007B160 44002292 */  lbu        $v0, 0x44($s1)
    /* 358EF00 8007B164 00000000 */  nop
    /* 358EF04 8007B168 4400A2A2 */  sb         $v0, 0x44($s5)
    /* 358EF08 8007B16C 45002292 */  lbu        $v0, 0x45($s1)
    /* 358EF0C 8007B170 00000000 */  nop
    /* 358EF10 8007B174 4500A2A2 */  sb         $v0, 0x45($s5)
    /* 358EF14 8007B178 46002292 */  lbu        $v0, 0x46($s1)
    /* 358EF18 8007B17C 00000000 */  nop
    /* 358EF1C 8007B180 4600A2A2 */  sb         $v0, 0x46($s5)
  .Llevel_46_8007B184:
    /* 358EF20 8007B184 4B67010C */  jal        func_80059D2C
    /* 358EF24 8007B188 00000000 */   nop
    /* 358EF28 8007B18C 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358EF2C 8007B190 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358EF30 8007B194 4B67010C */  jal        func_80059D2C
    /* 358EF34 8007B198 060062A6 */   sh        $v0, 0x6($s3)
    /* 358EF38 8007B19C 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358EF3C 8007B1A0 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358EF40 8007B1A4 4B67010C */  jal        func_80059D2C
    /* 358EF44 8007B1A8 080062A6 */   sh        $v0, 0x8($s3)
    /* 358EF48 8007B1AC 5A000424 */  addiu      $a0, $zero, 0x5A
    /* 358EF4C 8007B1B0 96000524 */  addiu      $a1, $zero, 0x96
    /* 358EF50 8007B1B4 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358EF54 8007B1B8 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358EF58 8007B1BC 47E2000C */  jal        func_8003891C
    /* 358EF5C 8007B1C0 0A0062A6 */   sh        $v0, 0xA($s3)
    /* 358EF60 8007B1C4 0C0062A6 */  sh         $v0, 0xC($s3)
    /* 358EF64 8007B1C8 01000224 */  addiu      $v0, $zero, 0x1
    /* 358EF68 8007B1CC 0E0062A6 */  sh         $v0, 0xE($s3)
    /* 358EF6C 8007B1D0 BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358EF70 8007B1D4 120060A6 */   sh        $zero, 0x12($s3)
  .Llevel_46_8007B1D8:
    /* 358EF74 8007B1D8 0000B08E */  lw         $s0, 0x0($s5)
    /* 358EF78 8007B1DC 0E05010C */  jal        func_80041438
    /* 358EF7C 8007B1E0 2120A002 */   addu      $a0, $s5, $zero
    /* 358EF80 8007B1E4 78000224 */  addiu      $v0, $zero, 0x78
    /* 358EF84 8007B1E8 4900A0A2 */  sb         $zero, 0x49($s5)
    /* 358EF88 8007B1EC 000000A6 */  sh         $zero, 0x0($s0)
    /* 358EF8C 8007B1F0 080000A6 */  sh         $zero, 0x8($s0)
    /* 358EF90 8007B1F4 060000A6 */  sh         $zero, 0x6($s0)
    /* 358EF94 8007B1F8 040000A6 */  sh         $zero, 0x4($s0)
    /* 358EF98 8007B1FC 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 358EF9C 8007B200 100000AE */  sw         $zero, 0x10($s0)
    /* 358EFA0 8007B204 06002012 */  beqz       $s1, .Llevel_46_8007B220
    /* 358EFA4 8007B208 140000AE */   sw        $zero, 0x14($s0)
    /* 358EFA8 8007B20C 0C00A426 */  addiu      $a0, $s5, 0xC
    /* 358EFAC 8007B210 6C6F000C */  jal        func_8001BDB0
    /* 358EFB0 8007B214 0C002526 */   addiu     $a1, $s1, 0xC
    /* 358EFB4 8007B218 A7EC0108 */  j          .Llevel_46_8007B29C
    /* 358EFB8 8007B21C FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_46_8007B220:
    /* 358EFBC 8007B220 0C00A426 */  addiu      $a0, $s5, 0xC
    /* 358EFC0 8007B224 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* 358EFC4 8007B228 FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* 358EFC8 8007B22C 0000A390 */  lbu        $v1, 0x0($a1)
    /* 358EFCC 8007B230 F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 358EFD0 8007B234 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 358EFD4 8007B238 FF006330 */  andi       $v1, $v1, 0xFF
    /* 358EFD8 8007B23C 40180300 */  sll        $v1, $v1, 1
    /* 358EFDC 8007B240 0680013C */  lui        $at, %hi(D_80061C58)
    /* 358EFE0 8007B244 21082300 */  addu       $at, $at, $v1
    /* 358EFE4 8007B248 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* 358EFE8 8007B24C 1000A627 */  addiu      $a2, $sp, 0x10
    /* 358EFEC 8007B250 40110700 */  sll        $v0, $a3, 5
    /* 358EFF0 8007B254 23104700 */  subu       $v0, $v0, $a3
    /* 358EFF4 8007B258 80100200 */  sll        $v0, $v0, 2
    /* 358EFF8 8007B25C 21104700 */  addu       $v0, $v0, $a3
    /* 358EFFC 8007B260 43120200 */  sra        $v0, $v0, 9
    /* 358F000 8007B264 1000A2AF */  sw         $v0, 0x10($sp)
    /* 358F004 8007B268 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 358F008 8007B26C 21082300 */  addu       $at, $at, $v1
    /* 358F00C 8007B270 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 358F010 8007B274 E8030224 */  addiu      $v0, $zero, 0x3E8
    /* 358F014 8007B278 1800A2AF */  sw         $v0, 0x18($sp)
    /* 358F018 8007B27C 40110300 */  sll        $v0, $v1, 5
    /* 358F01C 8007B280 23104300 */  subu       $v0, $v0, $v1
    /* 358F020 8007B284 80100200 */  sll        $v0, $v0, 2
    /* 358F024 8007B288 21104300 */  addu       $v0, $v0, $v1
    /* 358F028 8007B28C 43120200 */  sra        $v0, $v0, 9
    /* 358F02C 8007B290 736F000C */  jal        func_8001BDCC
    /* 358F030 8007B294 1400A2AF */   sw        $v0, 0x14($sp)
    /* 358F034 8007B298 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_46_8007B29C:
    /* 358F038 8007B29C BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358F03C 8007B2A0 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_46_8007B2A4:
    /* 358F040 8007B2A4 0E05010C */  jal        func_80041438
    /* 358F044 8007B2A8 2120A002 */   addu      $a0, $s5, $zero
    /* 358F048 8007B2AC 02000224 */  addiu      $v0, $zero, 0x2
    /* 358F04C 8007B2B0 0E002012 */  beqz       $s1, .Llevel_46_8007B2EC
    /* 358F050 8007B2B4 5400A2A2 */   sb        $v0, 0x54($s5)
    /* 358F054 8007B2B8 0C00A426 */  addiu      $a0, $s5, 0xC
    /* 358F058 8007B2BC 0000A28E */  lw         $v0, 0x0($s5)
    /* 358F05C 8007B2C0 0C002526 */  addiu      $a1, $s1, 0xC
    /* 358F060 8007B2C4 6C6F000C */  jal        func_8001BDB0
    /* 358F064 8007B2C8 000051AC */   sw        $s1, 0x0($v0)
    /* 358F068 8007B2CC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 358F06C 8007B2D0 4A00A2A2 */  sb         $v0, 0x4A($s5)
    /* 358F070 8007B2D4 1400A28E */  lw         $v0, 0x14($s5)
    /* 358F074 8007B2D8 08000324 */  addiu      $v1, $zero, 0x8
    /* 358F078 8007B2DC 4C00A3A2 */  sb         $v1, 0x4C($s5)
    /* 358F07C 8007B2E0 00044224 */  addiu      $v0, $v0, 0x400
    /* 358F080 8007B2E4 BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358F084 8007B2E8 1400A2AE */   sw        $v0, 0x14($s5)
  .Llevel_46_8007B2EC:
    /* 358F088 8007B2EC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 358F08C 8007B2F0 BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358F090 8007B2F4 1C00A2AE */   sw        $v0, 0x1C($s5)
  .Llevel_46_8007B2F8:
    /* 358F094 8007B2F8 0C00A426 */  addiu      $a0, $s5, 0xC
    /* 358F098 8007B2FC 0000B08E */  lw         $s0, 0x0($s5)
    /* 358F09C 8007B300 6C6F000C */  jal        func_8001BDB0
    /* 358F0A0 8007B304 0C002526 */   addiu     $a1, $s1, 0xC
    /* 358F0A4 8007B308 0E05010C */  jal        func_80041438
    /* 358F0A8 8007B30C 2120A002 */   addu      $a0, $s5, $zero
    /* 358F0AC 8007B310 10000224 */  addiu      $v0, $zero, 0x10
    /* 358F0B0 8007B314 3B000324 */  addiu      $v1, $zero, 0x3B
    /* 358F0B4 8007B318 000002A6 */  sh         $v0, 0x0($s0)
    /* 358F0B8 8007B31C 80000224 */  addiu      $v0, $zero, 0x80
    /* 358F0BC 8007B320 5700A3A2 */  sb         $v1, 0x57($s5)
    /* 358F0C0 8007B324 5400A2A2 */  sb         $v0, 0x54($s5)
    /* 358F0C4 8007B328 5500A2A2 */  sb         $v0, 0x55($s5)
    /* 358F0C8 8007B32C 5600A0A2 */  sb         $zero, 0x56($s5)
    /* 358F0CC 8007B330 36002486 */  lh         $a0, 0x36($s1)
    /* 358F0D0 8007B334 98010224 */  addiu      $v0, $zero, 0x198
    /* 358F0D4 8007B338 04008210 */  beq        $a0, $v0, .Llevel_46_8007B34C
    /* 358F0D8 8007B33C 01000224 */   addiu     $v0, $zero, 0x1
    /* 358F0DC 8007B340 C2020224 */  addiu      $v0, $zero, 0x2C2
    /* 358F0E0 8007B344 05008214 */  bne        $a0, $v0, .Llevel_46_8007B35C
    /* 358F0E4 8007B348 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_46_8007B34C:
    /* 358F0E8 8007B34C 020002A2 */  sb         $v0, 0x2($s0)
    /* 358F0EC 8007B350 030002A2 */  sb         $v0, 0x3($s0)
    /* 358F0F0 8007B354 E5EC0108 */  j          .Llevel_46_8007B394
    /* 358F0F4 8007B358 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_46_8007B35C:
    /* 358F0F8 8007B35C 70020224 */  addiu      $v0, $zero, 0x270
    /* 358F0FC 8007B360 0A008214 */  bne        $a0, $v0, .Llevel_46_8007B38C
    /* 358F100 8007B364 60000224 */   addiu     $v0, $zero, 0x60
    /* 358F104 8007B368 02000224 */  addiu      $v0, $zero, 0x2
    /* 358F108 8007B36C 020002A2 */  sb         $v0, 0x2($s0)
    /* 358F10C 8007B370 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 358F110 8007B374 5400A2A2 */  sb         $v0, 0x54($s5)
    /* 358F114 8007B378 5500A2A2 */  sb         $v0, 0x55($s5)
    /* 358F118 8007B37C 5600A2A2 */  sb         $v0, 0x56($s5)
    /* 358F11C 8007B380 60000224 */  addiu      $v0, $zero, 0x60
    /* 358F120 8007B384 E4EC0108 */  j          .Llevel_46_8007B390
    /* 358F124 8007B388 5700A3A2 */   sb        $v1, 0x57($s5)
  .Llevel_46_8007B38C:
    /* 358F128 8007B38C 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_46_8007B390:
    /* 358F12C 8007B390 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_46_8007B394:
    /* 358F130 8007B394 4F00A2A2 */  sb         $v0, 0x4F($s5)
    /* 358F134 8007B398 0C00A426 */  addiu      $a0, $s5, 0xC
    /* 358F138 8007B39C 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* 358F13C 8007B3A0 AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* 358F140 8007B3A4 21280002 */  addu       $a1, $s0, $zero
    /* 358F144 8007B3A8 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 358F148 8007B3AC DB6F000C */  jal        func_8001BF6C
    /* 358F14C 8007B3B0 4700A2A2 */   sb        $v0, 0x47($s5)
    /* 358F150 8007B3B4 21204000 */  addu       $a0, $v0, $zero
    /* 358F154 8007B3B8 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* 358F158 8007B3BC B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* 358F15C 8007B3C0 1400A58E */  lw         $a1, 0x14($s5)
    /* 358F160 8007B3C4 21300000 */  addu       $a2, $zero, $zero
    /* 358F164 8007B3C8 2E6D000C */  jal        func_8001B4B8
    /* 358F168 8007B3CC 23284500 */   subu      $a1, $v0, $a1
    /* 358F16C 8007B3D0 21300000 */  addu       $a2, $zero, $zero
    /* 358F170 8007B3D4 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 358F174 8007B3D8 4500A2A2 */  sb         $v0, 0x45($s5)
    /* 358F178 8007B3DC 0000038E */  lw         $v1, 0x0($s0)
    /* 358F17C 8007B3E0 0C00A48E */  lw         $a0, 0xC($s5)
    /* 358F180 8007B3E4 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* 358F184 8007B3E8 B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* 358F188 8007B3EC 1000A58E */  lw         $a1, 0x10($s5)
    /* 358F18C 8007B3F0 23206400 */  subu       $a0, $v1, $a0
    /* 358F190 8007B3F4 2E6D000C */  jal        func_8001B4B8
    /* 358F194 8007B3F8 23284500 */   subu      $a1, $v0, $a1
    /* 358F198 8007B3FC BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358F19C 8007B400 4600A2A2 */   sb        $v0, 0x46($s5)
  .Llevel_46_8007B404:
    /* 358F1A0 8007B404 0C002526 */  addiu      $a1, $s1, 0xC
    /* 358F1A4 8007B408 0000A38E */  lw         $v1, 0x0($s5)
    /* 358F1A8 8007B40C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 358F1AC 8007B410 B9EE0108 */  j          .Llevel_46_8007BAE4
    /* 358F1B0 8007B414 140062AC */   sw        $v0, 0x14($v1)
  .Llevel_46_8007B418:
    /* 358F1B4 8007B418 0C00A426 */  addiu      $a0, $s5, 0xC
    /* 358F1B8 8007B41C 0C002526 */  addiu      $a1, $s1, 0xC
    /* 358F1BC 8007B420 0000B18E */  lw         $s1, 0x0($s5)
    /* 358F1C0 8007B424 40000224 */  addiu      $v0, $zero, 0x40
    /* 358F1C4 8007B428 4C00A2A2 */  sb         $v0, 0x4C($s5)
    /* 358F1C8 8007B42C 6C6F000C */  jal        func_8001BDB0
    /* 358F1CC 8007B430 4E00A2A2 */   sb        $v0, 0x4E($s5)
    /* 358F1D0 8007B434 0E05010C */  jal        func_80041438
    /* 358F1D4 8007B438 2120A002 */   addu      $a0, $s5, $zero
    /* 358F1D8 8007B43C 4B67010C */  jal        func_80059D2C
    /* 358F1DC 8007B440 2C011324 */   addiu     $s3, $zero, 0x12C
    /* 358F1E0 8007B444 2C010424 */  addiu      $a0, $zero, 0x12C
    /* 358F1E4 8007B448 DC050524 */  addiu      $a1, $zero, 0x5DC
    /* 358F1E8 8007B44C 47E2000C */  jal        func_8003891C
    /* 358F1EC 8007B450 FF0F5430 */   andi      $s4, $v0, 0xFFF
    /* 358F1F0 8007B454 21904000 */  addu       $s2, $v0, $zero
    /* 358F1F4 8007B458 996D000C */  jal        func_8001B664
    /* 358F1F8 8007B45C 21204002 */   addu      $a0, $s2, $zero
    /* 358F1FC 8007B460 21208002 */  addu       $a0, $s4, $zero
    /* 358F200 8007B464 996D000C */  jal        func_8001B664
    /* 358F204 8007B468 21804000 */   addu      $s0, $v0, $zero
    /* 358F208 8007B46C 18005300 */  mult       $v0, $s3
    /* 358F20C 8007B470 12400000 */  mflo       $t0
    /* 358F210 8007B474 83811000 */  sra        $s0, $s0, 6
    /* 358F214 8007B478 00000000 */  nop
    /* 358F218 8007B47C 18000802 */  mult       $s0, $t0
    /* 358F21C 8007B480 21204002 */  addu       $a0, $s2, $zero
    /* 358F220 8007B484 12400000 */  mflo       $t0
    /* 358F224 8007B488 83140800 */  sra        $v0, $t0, 18
    /* 358F228 8007B48C 996D000C */  jal        func_8001B664
    /* 358F22C 8007B490 000022A6 */   sh        $v0, 0x0($s1)
    /* 358F230 8007B494 21208002 */  addu       $a0, $s4, $zero
    /* 358F234 8007B498 876D000C */  jal        func_8001B61C
    /* 358F238 8007B49C 21804000 */   addu      $s0, $v0, $zero
    /* 358F23C 8007B4A0 18005300 */  mult       $v0, $s3
    /* 358F240 8007B4A4 12400000 */  mflo       $t0
    /* 358F244 8007B4A8 83811000 */  sra        $s0, $s0, 6
    /* 358F248 8007B4AC 00000000 */  nop
    /* 358F24C 8007B4B0 18000802 */  mult       $s0, $t0
    /* 358F250 8007B4B4 21204002 */  addu       $a0, $s2, $zero
    /* 358F254 8007B4B8 12400000 */  mflo       $t0
    /* 358F258 8007B4BC 83140800 */  sra        $v0, $t0, 18
    /* 358F25C 8007B4C0 876D000C */  jal        func_8001B61C
    /* 358F260 8007B4C4 020022A6 */   sh        $v0, 0x2($s1)
    /* 358F264 8007B4C8 C8000324 */  addiu      $v1, $zero, 0xC8
    /* 358F268 8007B4CC 18004300 */  mult       $v0, $v1
    /* 358F26C 8007B4D0 12400000 */  mflo       $t0
    /* 358F270 8007B4D4 03130800 */  sra        $v0, $t0, 12
    /* 358F274 8007B4D8 040022A6 */  sh         $v0, 0x4($s1)
    /* 358F278 8007B4DC 00002286 */  lh         $v0, 0x0($s1)
    /* 358F27C 8007B4E0 0C00A38E */  lw         $v1, 0xC($s5)
    /* 358F280 8007B4E4 40100200 */  sll        $v0, $v0, 1
    /* 358F284 8007B4E8 21186200 */  addu       $v1, $v1, $v0
    /* 358F288 8007B4EC 0C00A3AE */  sw         $v1, 0xC($s5)
    /* 358F28C 8007B4F0 02002286 */  lh         $v0, 0x2($s1)
    /* 358F290 8007B4F4 1000A38E */  lw         $v1, 0x10($s5)
    /* 358F294 8007B4F8 40100200 */  sll        $v0, $v0, 1
    /* 358F298 8007B4FC 21186200 */  addu       $v1, $v1, $v0
    /* 358F29C 8007B500 1000A3AE */  sw         $v1, 0x10($s5)
    /* 358F2A0 8007B504 04002286 */  lh         $v0, 0x4($s1)
    /* 358F2A4 8007B508 1400A38E */  lw         $v1, 0x14($s5)
    /* 358F2A8 8007B50C 40100200 */  sll        $v0, $v0, 1
    /* 358F2AC 8007B510 21186200 */  addu       $v1, $v1, $v0
    /* 358F2B0 8007B514 4B67010C */  jal        func_80059D2C
    /* 358F2B4 8007B518 1400A3AE */   sw        $v1, 0x14($s5)
    /* 358F2B8 8007B51C 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358F2BC 8007B520 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358F2C0 8007B524 4B67010C */  jal        func_80059D2C
    /* 358F2C4 8007B528 060022A6 */   sh        $v0, 0x6($s1)
    /* 358F2C8 8007B52C 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358F2CC 8007B530 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358F2D0 8007B534 4B67010C */  jal        func_80059D2C
    /* 358F2D4 8007B538 080022A6 */   sh        $v0, 0x8($s1)
    /* 358F2D8 8007B53C 50000424 */  addiu      $a0, $zero, 0x50
    /* 358F2DC 8007B540 78000524 */  addiu      $a1, $zero, 0x78
    /* 358F2E0 8007B544 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358F2E4 8007B548 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358F2E8 8007B54C 47E2000C */  jal        func_8003891C
    /* 358F2EC 8007B550 0A0022A6 */   sh        $v0, 0xA($s1)
    /* 358F2F0 8007B554 BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358F2F4 8007B558 0C0022AE */   sw        $v0, 0xC($s1)
  .Llevel_46_8007B55C:
    /* 358F2F8 8007B55C 0C003126 */  addiu      $s1, $s1, 0xC
    /* 358F2FC 8007B560 0000B08E */  lw         $s0, 0x0($s5)
    /* 358F300 8007B564 6C6F000C */  jal        func_8001BDB0
    /* 358F304 8007B568 21282002 */   addu      $a1, $s1, $zero
    /* 358F308 8007B56C 0E05010C */  jal        func_80041438
    /* 358F30C 8007B570 2120A002 */   addu      $a0, $s5, $zero
    /* 358F310 8007B574 21282002 */  addu       $a1, $s1, $zero
    /* 358F314 8007B578 6C6F000C */  jal        func_8001BDB0
    /* 358F318 8007B57C 21200002 */   addu      $a0, $s0, $zero
    /* 358F31C 8007B580 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 358F320 8007B584 0C0002A6 */  sh         $v0, 0xC($s0)
    /* 358F324 8007B588 46000224 */  addiu      $v0, $zero, 0x46
    /* 358F328 8007B58C 100002A2 */  sb         $v0, 0x10($s0)
    /* 358F32C 8007B590 03000224 */  addiu      $v0, $zero, 0x3
    /* 358F330 8007B594 110002A2 */  sb         $v0, 0x11($s0)
    /* 358F334 8007B598 30000224 */  addiu      $v0, $zero, 0x30
    /* 358F338 8007B59C BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358F33C 8007B5A0 120002A2 */   sb        $v0, 0x12($s0)
  .Llevel_46_8007B5A4:
    /* 358F340 8007B5A4 0C00A426 */  addiu      $a0, $s5, 0xC
    /* 358F344 8007B5A8 0000B38E */  lw         $s3, 0x0($s5)
    /* 358F348 8007B5AC 6C6F000C */  jal        func_8001BDB0
    /* 358F34C 8007B5B0 0C002526 */   addiu     $a1, $s1, 0xC
    /* 358F350 8007B5B4 0E05010C */  jal        func_80041438
    /* 358F354 8007B5B8 2120A002 */   addu      $a0, $s5, $zero
    /* 358F358 8007B5BC 4B67010C */  jal        func_80059D2C
    /* 358F35C 8007B5C0 00000000 */   nop
    /* 358F360 8007B5C4 2C010424 */  addiu      $a0, $zero, 0x12C
    /* 358F364 8007B5C8 00080524 */  addiu      $a1, $zero, 0x800
    /* 358F368 8007B5CC 47E2000C */  jal        func_8003891C
    /* 358F36C 8007B5D0 FF0F5230 */   andi      $s2, $v0, 0xFFF
    /* 358F370 8007B5D4 21884000 */  addu       $s1, $v0, $zero
    /* 358F374 8007B5D8 996D000C */  jal        func_8001B664
    /* 358F378 8007B5DC 21202002 */   addu      $a0, $s1, $zero
    /* 358F37C 8007B5E0 21204002 */  addu       $a0, $s2, $zero
    /* 358F380 8007B5E4 996D000C */  jal        func_8001B664
    /* 358F384 8007B5E8 21804000 */   addu      $s0, $v0, $zero
    /* 358F388 8007B5EC 43811000 */  sra        $s0, $s0, 5
    /* 358F38C 8007B5F0 03130200 */  sra        $v0, $v0, 12
    /* 358F390 8007B5F4 18000202 */  mult       $s0, $v0
    /* 358F394 8007B5F8 21202002 */  addu       $a0, $s1, $zero
    /* 358F398 8007B5FC 12400000 */  mflo       $t0
    /* 358F39C 8007B600 996D000C */  jal        func_8001B664
    /* 358F3A0 8007B604 000068A6 */   sh        $t0, 0x0($s3)
    /* 358F3A4 8007B608 21204002 */  addu       $a0, $s2, $zero
    /* 358F3A8 8007B60C 876D000C */  jal        func_8001B61C
    /* 358F3AC 8007B610 21804000 */   addu      $s0, $v0, $zero
    /* 358F3B0 8007B614 43811000 */  sra        $s0, $s0, 5
    /* 358F3B4 8007B618 03130200 */  sra        $v0, $v0, 12
    /* 358F3B8 8007B61C 18000202 */  mult       $s0, $v0
    /* 358F3BC 8007B620 21202002 */  addu       $a0, $s1, $zero
    /* 358F3C0 8007B624 12400000 */  mflo       $t0
    /* 358F3C4 8007B628 876D000C */  jal        func_8001B61C
    /* 358F3C8 8007B62C 020068A6 */   sh        $t0, 0x2($s3)
    /* 358F3CC 8007B630 43110200 */  sra        $v0, $v0, 5
    /* 358F3D0 8007B634 040062A6 */  sh         $v0, 0x4($s3)
    /* 358F3D4 8007B638 00140200 */  sll        $v0, $v0, 16
    /* 358F3D8 8007B63C 03140200 */  sra        $v0, $v0, 16
    /* 358F3DC 8007B640 20004228 */  slti       $v0, $v0, 0x20
    /* 358F3E0 8007B644 02004010 */  beqz       $v0, .Llevel_46_8007B650
    /* 358F3E4 8007B648 20000224 */   addiu     $v0, $zero, 0x20
    /* 358F3E8 8007B64C 040062A6 */  sh         $v0, 0x4($s3)
  .Llevel_46_8007B650:
    /* 358F3EC 8007B650 04006296 */  lhu        $v0, 0x4($s3)
    /* 358F3F0 8007B654 00000000 */  nop
    /* 358F3F4 8007B658 20004224 */  addiu      $v0, $v0, 0x20
    /* 358F3F8 8007B65C 4B67010C */  jal        func_80059D2C
    /* 358F3FC 8007B660 040062A6 */   sh        $v0, 0x4($s3)
    /* 358F400 8007B664 4B67010C */  jal        func_80059D2C
    /* 358F404 8007B668 4600A2A2 */   sb        $v0, 0x46($s5)
    /* 358F408 8007B66C FF004230 */  andi       $v0, $v0, 0xFF
    /* 358F40C 8007B670 81004228 */  slti       $v0, $v0, 0x81
    /* 358F410 8007B674 0D004014 */  bnez       $v0, .Llevel_46_8007B6AC
    /* 358F414 8007B678 00000000 */   nop
    /* 358F418 8007B67C 4B67010C */  jal        func_80059D2C
    /* 358F41C 8007B680 00000000 */   nop
    /* 358F420 8007B684 1C004230 */  andi       $v0, $v0, 0x1C
    /* 358F424 8007B688 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358F428 8007B68C 4500A2A2 */  sb         $v0, 0x45($s5)
    /* 358F42C 8007B690 04006286 */  lh         $v0, 0x4($s3)
    /* 358F430 8007B694 01000324 */  addiu      $v1, $zero, 0x1
    /* 358F434 8007B698 21004228 */  slti       $v0, $v0, 0x21
    /* 358F438 8007B69C 03004014 */  bnez       $v0, .Llevel_46_8007B6AC
    /* 358F43C 8007B6A0 100063AE */   sw        $v1, 0x10($s3)
    /* 358F440 8007B6A4 20000224 */  addiu      $v0, $zero, 0x20
    /* 358F444 8007B6A8 040062A6 */  sh         $v0, 0x4($s3)
  .Llevel_46_8007B6AC:
    /* 358F448 8007B6AC 00006286 */  lh         $v0, 0x0($s3)
    /* 358F44C 8007B6B0 0C00A38E */  lw         $v1, 0xC($s5)
    /* 358F450 8007B6B4 80100200 */  sll        $v0, $v0, 2
    /* 358F454 8007B6B8 21186200 */  addu       $v1, $v1, $v0
    /* 358F458 8007B6BC 0C00A3AE */  sw         $v1, 0xC($s5)
    /* 358F45C 8007B6C0 02006286 */  lh         $v0, 0x2($s3)
    /* 358F460 8007B6C4 1000A38E */  lw         $v1, 0x10($s5)
    /* 358F464 8007B6C8 80100200 */  sll        $v0, $v0, 2
    /* 358F468 8007B6CC 21186200 */  addu       $v1, $v1, $v0
    /* 358F46C 8007B6D0 1000A3AE */  sw         $v1, 0x10($s5)
    /* 358F470 8007B6D4 04006286 */  lh         $v0, 0x4($s3)
    /* 358F474 8007B6D8 1400A38E */  lw         $v1, 0x14($s5)
    /* 358F478 8007B6DC 80100200 */  sll        $v0, $v0, 2
    /* 358F47C 8007B6E0 21186200 */  addu       $v1, $v1, $v0
    /* 358F480 8007B6E4 4B67010C */  jal        func_80059D2C
    /* 358F484 8007B6E8 1400A3AE */   sw        $v1, 0x14($s5)
    /* 358F488 8007B6EC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358F48C 8007B6F0 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358F490 8007B6F4 4B67010C */  jal        func_80059D2C
    /* 358F494 8007B6F8 060062A6 */   sh        $v0, 0x6($s3)
    /* 358F498 8007B6FC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358F49C 8007B700 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358F4A0 8007B704 4B67010C */  jal        func_80059D2C
    /* 358F4A4 8007B708 080062A6 */   sh        $v0, 0x8($s3)
    /* 358F4A8 8007B70C 21200000 */  addu       $a0, $zero, $zero
    /* 358F4AC 8007B710 14000524 */  addiu      $a1, $zero, 0x14
    /* 358F4B0 8007B714 1F004230 */  andi       $v0, $v0, 0x1F
    /* 358F4B4 8007B718 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 358F4B8 8007B71C 47E2000C */  jal        func_8003891C
    /* 358F4BC 8007B720 0A0062A6 */   sh        $v0, 0xA($s3)
    /* 358F4C0 8007B724 32000324 */  addiu      $v1, $zero, 0x32
    /* 358F4C4 8007B728 23186200 */  subu       $v1, $v1, $v0
    /* 358F4C8 8007B72C 08000224 */  addiu      $v0, $zero, 0x8
    /* 358F4CC 8007B730 0D0062A2 */  sb         $v0, 0xD($s3)
    /* 358F4D0 8007B734 04000224 */  addiu      $v0, $zero, 0x4
    /* 358F4D4 8007B738 0C0063A2 */  sb         $v1, 0xC($s3)
    /* 358F4D8 8007B73C BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358F4DC 8007B740 0E0062A6 */   sh        $v0, 0xE($s3)
  .Llevel_46_8007B744:
    /* 358F4E0 8007B744 0000B08E */  lw         $s0, 0x0($s5)
    /* 358F4E4 8007B748 6C6F000C */  jal        func_8001BDB0
    /* 358F4E8 8007B74C 0C002526 */   addiu     $a1, $s1, 0xC
    /* 358F4EC 8007B750 0E05010C */  jal        func_80041438
    /* 358F4F0 8007B754 2120A002 */   addu      $a0, $s5, $zero
    /* 358F4F4 8007B758 10000224 */  addiu      $v0, $zero, 0x10
    /* 358F4F8 8007B75C 000002AE */  sw         $v0, 0x0($s0)
    /* 358F4FC 8007B760 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 358F500 8007B764 5700A2A2 */  sb         $v0, 0x57($s5)
    /* 358F504 8007B768 80000224 */  addiu      $v0, $zero, 0x80
    /* 358F508 8007B76C 5400A2A2 */  sb         $v0, 0x54($s5)
    /* 358F50C 8007B770 40000224 */  addiu      $v0, $zero, 0x40
    /* 358F510 8007B774 5500A2A2 */  sb         $v0, 0x55($s5)
    /* 358F514 8007B778 4B67010C */  jal        func_80059D2C
    /* 358F518 8007B77C 5600A0A2 */   sb        $zero, 0x56($s5)
    /* 358F51C 8007B780 4B67010C */  jal        func_80059D2C
    /* 358F520 8007B784 4500A2A2 */   sb        $v0, 0x45($s5)
    /* 358F524 8007B788 4600A2A2 */  sb         $v0, 0x46($s5)
    /* 358F528 8007B78C 46000224 */  addiu      $v0, $zero, 0x46
    /* 358F52C 8007B790 4F00A2A2 */  sb         $v0, 0x4F($s5)
    /* 358F530 8007B794 04000224 */  addiu      $v0, $zero, 0x4
    /* 358F534 8007B798 BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358F538 8007B79C 4700A2A2 */   sb        $v0, 0x47($s5)
  .Llevel_46_8007B7A0:
    /* 358F53C 8007B7A0 0000B28E */  lw         $s2, 0x0($s5)
    /* 358F540 8007B7A4 0E05010C */  jal        func_80041438
    /* 358F544 8007B7A8 2120A002 */   addu      $a0, $s5, $zero
    /* 358F548 8007B7AC 40000224 */  addiu      $v0, $zero, 0x40
    /* 358F54C 8007B7B0 4C00A2A2 */  sb         $v0, 0x4C($s5)
    /* 358F550 8007B7B4 9C002016 */  bnez       $s1, .Llevel_46_8007BA28
    /* 358F554 8007B7B8 4E00A2A2 */   sb        $v0, 0x4E($s5)
    /* 358F558 8007B7BC B8010224 */  addiu      $v0, $zero, 0x1B8
    /* 358F55C 8007B7C0 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* 358F560 8007B7C4 D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* 358F564 8007B7C8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 358F568 8007B7CC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 358F56C 8007B7D0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 358F570 8007B7D4 0000A38C */  lw         $v1, 0x0($a1)
    /* 358F574 8007B7D8 07000224 */  addiu      $v0, $zero, 0x7
    /* 358F578 8007B7DC 25006214 */  bne        $v1, $v0, .Llevel_46_8007B874
    /* 358F57C 8007B7E0 0C00A426 */   addiu     $a0, $s5, 0xC
    /* 358F580 8007B7E4 0C00B026 */  addiu      $s0, $s5, 0xC
    /* 358F584 8007B7E8 21200002 */  addu       $a0, $s0, $zero
    /* 358F588 8007B7EC 6C6F000C */  jal        func_8001BDB0
    /* 358F58C 8007B7F0 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 358F590 8007B7F4 4000A427 */  addiu      $a0, $sp, 0x40
    /* 358F594 8007B7F8 2000B127 */  addiu      $s1, $sp, 0x20
    /* 358F598 8007B7FC 21282002 */  addu       $a1, $s1, $zero
    /* 358F59C 8007B800 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 358F5A0 8007B804 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 358F5A4 8007B808 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* 358F5A8 8007B80C CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* 358F5AC 8007B810 21300000 */  addu       $a2, $zero, $zero
    /* 358F5B0 8007B814 4000A0A3 */  sb         $zero, 0x40($sp)
    /* 358F5B4 8007B818 02190300 */  srl        $v1, $v1, 4
    /* 358F5B8 8007B81C 00140200 */  sll        $v0, $v0, 16
    /* 358F5BC 8007B820 03150200 */  sra        $v0, $v0, 20
    /* 358F5C0 8007B824 23100200 */  negu       $v0, $v0
    /* 358F5C4 8007B828 4100A2A3 */  sb         $v0, 0x41($sp)
    /* 358F5C8 8007B82C B26D000C */  jal        func_8001B6C8
    /* 358F5CC 8007B830 4200A3A3 */   sb        $v1, 0x42($sp)
    /* 358F5D0 8007B834 21202002 */  addu       $a0, $s1, $zero
    /* 358F5D4 8007B838 1000A527 */  addiu      $a1, $sp, 0x10
    /* 358F5D8 8007B83C 696E000C */  jal        func_8001B9A4
    /* 358F5DC 8007B840 2130A000 */   addu      $a2, $a1, $zero
    /* 358F5E0 8007B844 21200002 */  addu       $a0, $s0, $zero
    /* 358F5E4 8007B848 21280002 */  addu       $a1, $s0, $zero
    /* 358F5E8 8007B84C 736F000C */  jal        func_8001BDCC
    /* 358F5EC 8007B850 1000A627 */   addiu     $a2, $sp, 0x10
    /* 358F5F0 8007B854 21200002 */  addu       $a0, $s0, $zero
    /* 358F5F4 8007B858 21280002 */  addu       $a1, $s0, $zero
    /* 358F5F8 8007B85C 736F000C */  jal        func_8001BDCC
    /* 358F5FC 8007B860 1000A627 */   addiu     $a2, $sp, 0x10
    /* 358F600 8007B864 21200002 */  addu       $a0, $s0, $zero
    /* 358F604 8007B868 21288000 */  addu       $a1, $a0, $zero
    /* 358F608 8007B86C 45EE0108 */  j          .Llevel_46_8007B914
    /* 358F60C 8007B870 1000A627 */   addiu     $a2, $sp, 0x10
  .Llevel_46_8007B874:
    /* 358F610 8007B874 6C6F000C */  jal        func_8001BDB0
    /* 358F614 8007B878 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 358F618 8007B87C 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 358F61C 8007B880 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 358F620 8007B884 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 358F624 8007B888 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 358F628 8007B88C 6800A0A3 */  sb         $zero, 0x68($sp)
    /* 358F62C 8007B890 07004014 */  bnez       $v0, .Llevel_46_8007B8B0
    /* 358F630 8007B894 6900A3A3 */   sb        $v1, 0x69($sp)
    /* 358F634 8007B898 FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 358F638 8007B89C FF004230 */  andi       $v0, $v0, 0xFF
    /* 358F63C 8007B8A0 F900422C */  sltiu      $v0, $v0, 0xF9
    /* 358F640 8007B8A4 03004014 */  bnez       $v0, .Llevel_46_8007B8B4
    /* 358F644 8007B8A8 6800A427 */   addiu     $a0, $sp, 0x68
    /* 358F648 8007B8AC 6900A0A3 */  sb         $zero, 0x69($sp)
  .Llevel_46_8007B8B0:
    /* 358F64C 8007B8B0 6800A427 */  addiu      $a0, $sp, 0x68
  .Llevel_46_8007B8B4:
    /* 358F650 8007B8B4 4800B027 */  addiu      $s0, $sp, 0x48
    /* 358F654 8007B8B8 21280002 */  addu       $a1, $s0, $zero
    /* 358F658 8007B8BC 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* 358F65C 8007B8C0 FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* 358F660 8007B8C4 00002292 */  lbu        $v0, 0x0($s1)
    /* 358F664 8007B8C8 21300000 */  addu       $a2, $zero, $zero
    /* 358F668 8007B8CC B26D000C */  jal        func_8001B6C8
    /* 358F66C 8007B8D0 6A00A2A3 */   sb        $v0, 0x6A($sp)
    /* 358F670 8007B8D4 21200002 */  addu       $a0, $s0, $zero
    /* 358F674 8007B8D8 1000A527 */  addiu      $a1, $sp, 0x10
    /* 358F678 8007B8DC 696E000C */  jal        func_8001B9A4
    /* 358F67C 8007B8E0 2130A000 */   addu      $a2, $a1, $zero
    /* 358F680 8007B8E4 21200002 */  addu       $a0, $s0, $zero
    /* 358F684 8007B8E8 0C00B026 */  addiu      $s0, $s5, 0xC
    /* 358F688 8007B8EC 21280002 */  addu       $a1, $s0, $zero
    /* 358F68C 8007B8F0 21300002 */  addu       $a2, $s0, $zero
    /* 358F690 8007B8F4 F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 358F694 8007B8F8 0C00A2AE */  sw         $v0, 0xC($s5)
    /* 358F698 8007B8FC 1000A0AE */  sw         $zero, 0x10($s5)
    /* 358F69C 8007B900 696E000C */  jal        func_8001B9A4
    /* 358F6A0 8007B904 1400A0AE */   sw        $zero, 0x14($s5)
    /* 358F6A4 8007B908 21200002 */  addu       $a0, $s0, $zero
    /* 358F6A8 8007B90C 21288000 */  addu       $a1, $a0, $zero
    /* 358F6AC 8007B910 F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_46_8007B914:
    /* 358F6B0 8007B914 736F000C */  jal        func_8001BDCC
    /* 358F6B4 8007B918 00000000 */   nop
    /* 358F6B8 8007B91C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 358F6BC 8007B920 886E000C */  jal        func_8001BA20
    /* 358F6C0 8007B924 21280000 */   addu      $a1, $zero, $zero
    /* 358F6C4 8007B928 21204000 */  addu       $a0, $v0, $zero
    /* 358F6C8 8007B92C 1800A58F */  lw         $a1, 0x18($sp)
    /* 358F6CC 8007B930 2E6D000C */  jal        func_8001B4B8
    /* 358F6D0 8007B934 21300000 */   addu      $a2, $zero, $zero
    /* 358F6D4 8007B938 4500A2A2 */  sb         $v0, 0x45($s5)
    /* 358F6D8 8007B93C 1000A48F */  lw         $a0, 0x10($sp)
    /* 358F6DC 8007B940 1400A58F */  lw         $a1, 0x14($sp)
    /* 358F6E0 8007B944 2E6D000C */  jal        func_8001B4B8
    /* 358F6E4 8007B948 21300000 */   addu      $a2, $zero, $zero
    /* 358F6E8 8007B94C 4600A2A2 */  sb         $v0, 0x46($s5)
    /* 358F6EC 8007B950 1000A28F */  lw         $v0, 0x10($sp)
    /* 358F6F0 8007B954 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 358F6F4 8007B958 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 358F6F8 8007B95C 0680043C */  lui        $a0, %hi(D_800670BC)
    /* 358F6FC 8007B960 BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* 358F700 8007B964 000042A6 */  sh         $v0, 0x0($s2)
    /* 358F704 8007B968 1400A28F */  lw         $v0, 0x14($sp)
    /* 358F708 8007B96C 00000000 */  nop
    /* 358F70C 8007B970 020042A6 */  sh         $v0, 0x2($s2)
    /* 358F710 8007B974 1800A28F */  lw         $v0, 0x18($sp)
    /* 358F714 8007B978 00000000 */  nop
    /* 358F718 8007B97C 040042A6 */  sh         $v0, 0x4($s2)
    /* 358F71C 8007B980 2B106400 */  sltu       $v0, $v1, $a0
    /* 358F720 8007B984 0A004010 */  beqz       $v0, .Llevel_46_8007B9B0
    /* 358F724 8007B988 44010524 */   addiu     $a1, $zero, 0x144
    /* 358F728 8007B98C 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_46_8007B990:
    /* 358F72C 8007B990 36006284 */  lh         $v0, 0x36($v1)
    /* 358F730 8007B994 00000000 */  nop
    /* 358F734 8007B998 05004610 */  beq        $v0, $a2, .Llevel_46_8007B9B0
    /* 358F738 8007B99C 00000000 */   nop
    /* 358F73C 8007B9A0 58006324 */  addiu      $v1, $v1, 0x58
    /* 358F740 8007B9A4 2B106400 */  sltu       $v0, $v1, $a0
    /* 358F744 8007B9A8 F9FF4014 */  bnez       $v0, .Llevel_46_8007B990
    /* 358F748 8007B9AC 00000000 */   nop
  .Llevel_46_8007B9B0:
    /* 358F74C 8007B9B0 13006010 */  beqz       $v1, .Llevel_46_8007BA00
    /* 358F750 8007B9B4 40100500 */   sll       $v0, $a1, 1
    /* 358F754 8007B9B8 0000678C */  lw         $a3, 0x0($v1)
    /* 358F758 8007B9BC 21104500 */  addu       $v0, $v0, $a1
    /* 358F75C 8007B9C0 0000E38C */  lw         $v1, 0x0($a3)
    /* 358F760 8007B9C4 40100200 */  sll        $v0, $v0, 1
    /* 358F764 8007B9C8 21186500 */  addu       $v1, $v1, $a1
    /* 358F768 8007B9CC 0000E3AC */  sw         $v1, 0x0($a3)
    /* 358F76C 8007B9D0 2A186200 */  slt        $v1, $v1, $v0
    /* 358F770 8007B9D4 02006014 */  bnez       $v1, .Llevel_46_8007B9E0
    /* 358F774 8007B9D8 10004426 */   addiu     $a0, $s2, 0x10
    /* 358F778 8007B9DC 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_46_8007B9E0:
    /* 358F77C 8007B9E0 0400E524 */  addiu      $a1, $a3, 0x4
    /* 358F780 8007B9E4 0000E28C */  lw         $v0, 0x0($a3)
    /* 358F784 8007B9E8 08000624 */  addiu      $a2, $zero, 0x8
    /* 358F788 8007B9EC 0C004224 */  addiu      $v0, $v0, 0xC
    /* 358F78C 8007B9F0 2110E200 */  addu       $v0, $a3, $v0
    /* 358F790 8007B9F4 080042AE */  sw         $v0, 0x8($s2)
    /* 358F794 8007B9F8 036D000C */  jal        func_8001B40C
    /* 358F798 8007B9FC 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_46_8007BA00:
    /* 358F79C 8007BA00 2120A002 */  addu       $a0, $s5, $zero
    /* 358F7A0 8007BA04 21280000 */  addu       $a1, $zero, $zero
    /* 358F7A4 8007BA08 21300000 */  addu       $a2, $zero, $zero
    /* 358F7A8 8007BA0C 6E000224 */  addiu      $v0, $zero, 0x6E
    /* 358F7AC 8007BA10 070042A2 */  sb         $v0, 0x7($s2)
    /* 358F7B0 8007BA14 01000224 */  addiu      $v0, $zero, 0x1
    /* 358F7B4 8007BA18 9241010C */  jal        func_80050648
    /* 358F7B8 8007BA1C 4B00A2A2 */   sb        $v0, 0x4B($s5)
    /* 358F7BC 8007BA20 BEEE0108 */  j          .Llevel_46_8007BAF8
    /* 358F7C0 8007BA24 2110A002 */   addu      $v0, $s5, $zero
  .Llevel_46_8007BA28:
    /* 358F7C4 8007BA28 0C00A426 */  addiu      $a0, $s5, 0xC
    /* 358F7C8 8007BA2C 6C6F000C */  jal        func_8001BDB0
    /* 358F7CC 8007BA30 0C002526 */   addiu     $a1, $s1, 0xC
    /* 358F7D0 8007BA34 30000224 */  addiu      $v0, $zero, 0x30
    /* 358F7D4 8007BA38 070042A2 */  sb         $v0, 0x7($s2)
    /* 358F7D8 8007BA3C 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 358F7DC 8007BA40 4F00A2A2 */  sb         $v0, 0x4F($s5)
    /* 358F7E0 8007BA44 07004392 */  lbu        $v1, 0x7($s2)
    /* 358F7E4 8007BA48 00000000 */  nop
    /* 358F7E8 8007BA4C 40100300 */  sll        $v0, $v1, 1
    /* 358F7EC 8007BA50 21104300 */  addu       $v0, $v0, $v1
    /* 358F7F0 8007BA54 43100200 */  sra        $v0, $v0, 1
    /* 358F7F4 8007BA58 5400A2A2 */  sb         $v0, 0x54($s5)
    /* 358F7F8 8007BA5C 07004392 */  lbu        $v1, 0x7($s2)
    /* 358F7FC 8007BA60 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 358F800 8007BA64 5600A0A2 */  sb         $zero, 0x56($s5)
    /* 358F804 8007BA68 5700A2A2 */  sb         $v0, 0x57($s5)
    /* 358F808 8007BA6C BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358F80C 8007BA70 5500A3A2 */   sb        $v1, 0x55($s5)
  .Llevel_46_8007BA74:
    /* 358F810 8007BA74 0C00A426 */  addiu      $a0, $s5, 0xC
  .Llevel_46_8007BA78:
    /* 358F814 8007BA78 0000B08E */  lw         $s0, 0x0($s5)
    /* 358F818 8007BA7C 6C6F000C */  jal        func_8001BDB0
    /* 358F81C 8007BA80 0C002526 */   addiu     $a1, $s1, 0xC
    /* 358F820 8007BA84 0E05010C */  jal        func_80041438
    /* 358F824 8007BA88 2120A002 */   addu      $a0, $s5, $zero
    /* 358F828 8007BA8C 18000224 */  addiu      $v0, $zero, 0x18
    /* 358F82C 8007BA90 000002AE */  sw         $v0, 0x0($s0)
    /* 358F830 8007BA94 30000224 */  addiu      $v0, $zero, 0x30
    /* 358F834 8007BA98 5700A2A2 */  sb         $v0, 0x57($s5)
    /* 358F838 8007BA9C 64000224 */  addiu      $v0, $zero, 0x64
    /* 358F83C 8007BAA0 5400A0A2 */  sb         $zero, 0x54($s5)
    /* 358F840 8007BAA4 5500A0A2 */  sb         $zero, 0x55($s5)
    /* 358F844 8007BAA8 5600A0A2 */  sb         $zero, 0x56($s5)
    /* 358F848 8007BAAC 4F00A2A2 */  sb         $v0, 0x4F($s5)
    /* 358F84C 8007BAB0 4B67010C */  jal        func_80059D2C
    /* 358F850 8007BAB4 4700A0A2 */   sb        $zero, 0x47($s5)
    /* 358F854 8007BAB8 4B67010C */  jal        func_80059D2C
    /* 358F858 8007BABC 4500A2A2 */   sb        $v0, 0x45($s5)
    /* 358F85C 8007BAC0 BDEE0108 */  j          .Llevel_46_8007BAF4
    /* 358F860 8007BAC4 4600A2A2 */   sb        $v0, 0x46($s5)
  .Llevel_46_8007BAC8:
    /* 358F864 8007BAC8 03002012 */  beqz       $s1, .Llevel_46_8007BAD8
    /* 358F868 8007BACC 0C002526 */   addiu     $a1, $s1, 0xC
    /* 358F86C 8007BAD0 B9EE0108 */  j          .Llevel_46_8007BAE4
    /* 358F870 8007BAD4 0C00A426 */   addiu     $a0, $s5, 0xC
  .Llevel_46_8007BAD8:
    /* 358F874 8007BAD8 0C00A426 */  addiu      $a0, $s5, 0xC
    /* 358F878 8007BADC 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 358F87C 8007BAE0 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_46_8007BAE4:
    /* 358F880 8007BAE4 6C6F000C */  jal        func_8001BDB0
    /* 358F884 8007BAE8 00000000 */   nop
    /* 358F888 8007BAEC 0E05010C */  jal        func_80041438
    /* 358F88C 8007BAF0 2120A002 */   addu      $a0, $s5, $zero
  .Llevel_46_8007BAF4:
    /* 358F890 8007BAF4 2110A002 */  addu       $v0, $s5, $zero
  .Llevel_46_8007BAF8:
    /* 358F894 8007BAF8 9800BF8F */  lw         $ra, 0x98($sp)
    /* 358F898 8007BAFC 9400B78F */  lw         $s7, 0x94($sp)
    /* 358F89C 8007BB00 9000B68F */  lw         $s6, 0x90($sp)
    /* 358F8A0 8007BB04 8C00B58F */  lw         $s5, 0x8C($sp)
    /* 358F8A4 8007BB08 8800B48F */  lw         $s4, 0x88($sp)
    /* 358F8A8 8007BB0C 8400B38F */  lw         $s3, 0x84($sp)
    /* 358F8AC 8007BB10 8000B28F */  lw         $s2, 0x80($sp)
    /* 358F8B0 8007BB14 7C00B18F */  lw         $s1, 0x7C($sp)
    /* 358F8B4 8007BB18 7800B08F */  lw         $s0, 0x78($sp)
    /* 358F8B8 8007BB1C A000BD27 */  addiu      $sp, $sp, 0xA0
    /* 358F8BC 8007BB20 0800E003 */  jr         $ra
    /* 358F8C0 8007BB24 00000000 */   nop
endlabel func_level_46_8007A9A0
