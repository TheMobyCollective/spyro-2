.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_52_8006D78C, 0x4DC

glabel func_level_52_8006D78C
    /* 3B00528 8006D78C 80200880 */  lb         $t0, 0x2080($zero)
    /* 3B0052C 8006D790 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3B00530 8006D794 00210400 */  sll        $a0, $a0, 4
    /* 3B00534 8006D798 0780023C */  lui        $v0, %hi(D_800683B0)
    /* 3B00538 8006D79C B0834224 */  addiu      $v0, $v0, %lo(D_800683B0)
    /* 3B0053C 8006D7A0 21208200 */  addu       $a0, $a0, $v0
    /* 3B00540 8006D7A4 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3B00544 8006D7A8 0780123C */  lui        $s2, %hi(D_8006A04C)
    /* 3B00548 8006D7AC 4CA05226 */  addiu      $s2, $s2, %lo(D_8006A04C)
    /* 3B0054C 8006D7B0 0780033C */  lui        $v1, %hi(D_8006A040)
    /* 3B00550 8006D7B4 40A0638C */  lw         $v1, %lo(D_8006A040)($v1)
    /* 3B00554 8006D7B8 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 3B00558 8006D7BC 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 3B0055C 8006D7C0 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3B00560 8006D7C4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B00564 8006D7C8 0680013C */  lui        $at, %hi(D_80066F38)
    /* 3B00568 8006D7CC 386F24AC */  sw         $a0, %lo(D_80066F38)($at)
    /* 3B0056C 8006D7D0 E3006210 */  beq        $v1, $v0, .Llevel_52_8006DB60
    /* 3B00570 8006D7D4 1E006228 */   slti      $v0, $v1, 0x1E
    /* 3B00574 8006D7D8 05004010 */  beqz       $v0, .Llevel_52_8006D7F0
    /* 3B00578 8006D7DC 12000224 */   addiu     $v0, $zero, 0x12
    /* 3B0057C 8006D7E0 1A006210 */  beq        $v1, $v0, .Llevel_52_8006D84C
    /* 3B00580 8006D7E4 00000000 */   nop
    /* 3B00584 8006D7E8 13B70108 */  j          .Llevel_52_8006DC4C
    /* 3B00588 8006D7EC 00000000 */   nop
  .Llevel_52_8006D7F0:
    /* 3B0058C 8006D7F0 37006228 */  slti       $v0, $v1, 0x37
    /* 3B00590 8006D7F4 15014010 */  beqz       $v0, .Llevel_52_8006DC4C
    /* 3B00594 8006D7F8 35006228 */   slti      $v0, $v1, 0x35
    /* 3B00598 8006D7FC 13014014 */  bnez       $v0, .Llevel_52_8006DC4C
    /* 3B0059C 8006D800 00000000 */   nop
    /* 3B005A0 8006D804 686F000C */  jal        func_8001BDA0
    /* 3B005A4 8006D808 2C004426 */   addiu     $a0, $s2, 0x2C
    /* 3B005A8 8006D80C 686F000C */  jal        func_8001BDA0
    /* 3B005AC 8006D810 38004426 */   addiu     $a0, $s2, 0x38
    /* 3B005B0 8006D814 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 3B005B4 8006D818 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 3B005B8 8006D81C 07000224 */  addiu      $v0, $zero, 0x7
    /* 3B005BC 8006D820 0A016210 */  beq        $v1, $v0, .Llevel_52_8006DC4C
    /* 3B005C0 8006D824 00000000 */   nop
    /* 3B005C4 8006D828 DBAC000C */  jal        func_8002B36C
    /* 3B005C8 8006D82C 00120424 */   addiu     $a0, $zero, 0x1200
    /* 3B005CC 8006D830 1AAF000C */  jal        func_8002BC68
    /* 3B005D0 8006D834 00000000 */   nop
    /* 3B005D4 8006D838 5A000424 */  addiu      $a0, $zero, 0x5A
    /* 3B005D8 8006D83C C9AE000C */  jal        func_8002BB24
    /* 3B005DC 8006D840 10000524 */   addiu     $a1, $zero, 0x10
    /* 3B005E0 8006D844 13B70108 */  j          .Llevel_52_8006DC4C
    /* 3B005E4 8006D848 00000000 */   nop
  .Llevel_52_8006D84C:
    /* 3B005E8 8006D84C 0780033C */  lui        $v1, %hi(D_80069FF8)
    /* 3B005EC 8006D850 F89F638C */  lw         $v1, %lo(D_80069FF8)($v1)
    /* 3B005F0 8006D854 0780023C */  lui        $v0, %hi(D_8006A13C)
    /* 3B005F4 8006D858 3CA1428C */  lw         $v0, %lo(D_8006A13C)($v0)
    /* 3B005F8 8006D85C 00000000 */  nop
    /* 3B005FC 8006D860 23206200 */  subu       $a0, $v1, $v0
    /* 3B00600 8006D864 00048228 */  slti       $v0, $a0, 0x400
    /* 3B00604 8006D868 28004010 */  beqz       $v0, .Llevel_52_8006D90C
    /* 3B00608 8006D86C 00000000 */   nop
    /* 3B0060C 8006D870 0780023C */  lui        $v0, %hi(D_8006A08C)
    /* 3B00610 8006D874 8CA0428C */  lw         $v0, %lo(D_8006A08C)($v0)
    /* 3B00614 8006D878 00000000 */  nop
    /* 3B00618 8006D87C 80004224 */  addiu      $v0, $v0, 0x80
    /* 3B0061C 8006D880 0780013C */  lui        $at, %hi(D_8006A08C)
    /* 3B00620 8006D884 8CA022AC */  sw         $v0, %lo(D_8006A08C)($at)
    /* 3B00624 8006D888 C1124228 */  slti       $v0, $v0, 0x12C1
    /* 3B00628 8006D88C 04004014 */  bnez       $v0, .Llevel_52_8006D8A0
    /* 3B0062C 8006D890 18008400 */   mult      $a0, $a0
    /* 3B00630 8006D894 C0120224 */  addiu      $v0, $zero, 0x12C0
    /* 3B00634 8006D898 0780013C */  lui        $at, %hi(D_8006A08C)
    /* 3B00638 8006D89C 8CA022AC */  sw         $v0, %lo(D_8006A08C)($at)
  .Llevel_52_8006D8A0:
    /* 3B0063C 8006D8A0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B00640 8006D8A4 0780053C */  lui        $a1, %hi(D_8006A208)
    /* 3B00644 8006D8A8 08A2A58C */  lw         $a1, %lo(D_8006A208)($a1)
    /* 3B00648 8006D8AC 0780033C */  lui        $v1, %hi(D_8006A140)
    /* 3B0064C 8006D8B0 40A1638C */  lw         $v1, %lo(D_8006A140)($v1)
    /* 3B00650 8006D8B4 12480000 */  mflo       $t1
    /* 3B00654 8006D8B8 C3120900 */  sra        $v0, $t1, 11
    /* 3B00658 8006D8BC 21804300 */  addu       $s0, $v0, $v1
    /* 3B0065C 8006D8C0 0780013C */  lui        $at, %hi(D_8006A05C)
    /* 3B00660 8006D8C4 5CA030AC */  sw         $s0, %lo(D_8006A05C)($at)
    /* 3B00664 8006D8C8 6C6F000C */  jal        func_8001BDB0
    /* 3B00668 8006D8CC 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 3B0066C 8006D8D0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B00670 8006D8D4 21288000 */  addu       $a1, $a0, $zero
    /* 3B00674 8006D8D8 806F000C */  jal        func_8001BE00
    /* 3B00678 8006D8DC A4FF4626 */   addiu     $a2, $s2, -0x5C
    /* 3B0067C 8006D8E0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B00680 8006D8E4 21280000 */  addu       $a1, $zero, $zero
    /* 3B00684 8006D8E8 886E000C */  jal        func_8001BA20
    /* 3B00688 8006D8EC 1800A0AF */   sw        $zero, 0x18($sp)
    /* 3B0068C 8006D8F0 21404000 */  addu       $t0, $v0, $zero
    /* 3B00690 8006D8F4 01040229 */  slti       $v0, $t0, 0x401
    /* 3B00694 8006D8F8 91004014 */  bnez       $v0, .Llevel_52_8006DB40
    /* 3B00698 8006D8FC 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3B0069C 8006D900 21280001 */  addu       $a1, $t0, $zero
    /* 3B006A0 8006D904 CEB60108 */  j          .Llevel_52_8006DB38
    /* 3B006A4 8006D908 00040624 */   addiu     $a2, $zero, 0x400
  .Llevel_52_8006D90C:
    /* 3B006A8 8006D90C 0780053C */  lui        $a1, %hi(D_8006A144)
    /* 3B006AC 8006D910 44A1A58C */  lw         $a1, %lo(D_8006A144)($a1)
    /* 3B006B0 8006D914 00000000 */  nop
    /* 3B006B4 8006D918 23106500 */  subu       $v0, $v1, $a1
    /* 3B006B8 8006D91C 00FC4228 */  slti       $v0, $v0, -0x400
    /* 3B006BC 8006D920 49004010 */  beqz       $v0, .Llevel_52_8006DA48
    /* 3B006C0 8006D924 2340A300 */   subu      $t0, $a1, $v1
    /* 3B006C4 8006D928 0780023C */  lui        $v0, %hi(D_8006A044)
    /* 3B006C8 8006D92C 44A0428C */  lw         $v0, %lo(D_8006A044)($v0)
    /* 3B006CC 8006D930 00000000 */  nop
    /* 3B006D0 8006D934 08004014 */  bnez       $v0, .Llevel_52_8006D958
    /* 3B006D4 8006D938 01000324 */   addiu     $v1, $zero, 0x1
    /* 3B006D8 8006D93C 0780023C */  lui        $v0, %hi(D_8006A140)
    /* 3B006DC 8006D940 40A1428C */  lw         $v0, %lo(D_8006A140)($v0)
    /* 3B006E0 8006D944 0780013C */  lui        $at, %hi(D_8006A044)
    /* 3B006E4 8006D948 44A023AC */  sw         $v1, %lo(D_8006A044)($at)
    /* 3B006E8 8006D94C 00024224 */  addiu      $v0, $v0, 0x200
    /* 3B006EC 8006D950 0780013C */  lui        $at, %hi(D_8006A140)
    /* 3B006F0 8006D954 40A122AC */  sw         $v0, %lo(D_8006A140)($at)
  .Llevel_52_8006D958:
    /* 3B006F4 8006D958 0780023C */  lui        $v0, %hi(D_8006A08C)
    /* 3B006F8 8006D95C 8CA0428C */  lw         $v0, %lo(D_8006A08C)($v0)
    /* 3B006FC 8006D960 00000000 */  nop
    /* 3B00700 8006D964 80004224 */  addiu      $v0, $v0, 0x80
    /* 3B00704 8006D968 0780013C */  lui        $at, %hi(D_8006A08C)
    /* 3B00708 8006D96C 8CA022AC */  sw         $v0, %lo(D_8006A08C)($at)
    /* 3B0070C 8006D970 C1124228 */  slti       $v0, $v0, 0x12C1
    /* 3B00710 8006D974 03004014 */  bnez       $v0, .Llevel_52_8006D984
    /* 3B00714 8006D978 C0120224 */   addiu     $v0, $zero, 0x12C0
    /* 3B00718 8006D97C 0780013C */  lui        $at, %hi(D_8006A08C)
    /* 3B0071C 8006D980 8CA022AC */  sw         $v0, %lo(D_8006A08C)($at)
  .Llevel_52_8006D984:
    /* 3B00720 8006D984 0780023C */  lui        $v0, %hi(D_8006A148)
    /* 3B00724 8006D988 48A1428C */  lw         $v0, %lo(D_8006A148)($v0)
    /* 3B00728 8006D98C 00FC8824 */  addiu      $t0, $a0, -0x400
    /* 3B0072C 8006D990 18004800 */  mult       $v0, $t0
    /* 3B00730 8006D994 12180000 */  mflo       $v1
    /* 3B00734 8006D998 0780023C */  lui        $v0, %hi(D_8006A14C)
    /* 3B00738 8006D99C 4CA1428C */  lw         $v0, %lo(D_8006A14C)($v0)
    /* 3B0073C 8006D9A0 00000000 */  nop
    /* 3B00740 8006D9A4 1A006200 */  div        $zero, $v1, $v0
    /* 3B00744 8006D9A8 02004014 */  bnez       $v0, .Llevel_52_8006D9B4
    /* 3B00748 8006D9AC 00000000 */   nop
    /* 3B0074C 8006D9B0 0D000700 */  break      7
  .Llevel_52_8006D9B4:
    /* 3B00750 8006D9B4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3B00754 8006D9B8 04004114 */  bne        $v0, $at, .Llevel_52_8006D9CC
    /* 3B00758 8006D9BC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3B0075C 8006D9C0 02006114 */  bne        $v1, $at, .Llevel_52_8006D9CC
    /* 3B00760 8006D9C4 00000000 */   nop
    /* 3B00764 8006D9C8 0D000600 */  break      6
  .Llevel_52_8006D9CC:
    /* 3B00768 8006D9CC 12100000 */  mflo       $v0
    /* 3B0076C 8006D9D0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B00770 8006D9D4 0780053C */  lui        $a1, %hi(D_8006A208)
    /* 3B00774 8006D9D8 08A2A58C */  lw         $a1, %lo(D_8006A208)($a1)
    /* 3B00778 8006D9DC 0780033C */  lui        $v1, %hi(D_8006A140)
    /* 3B0077C 8006D9E0 40A1638C */  lw         $v1, %lo(D_8006A140)($v1)
    /* 3B00780 8006D9E4 00000000 */  nop
    /* 3B00784 8006D9E8 21806200 */  addu       $s0, $v1, $v0
    /* 3B00788 8006D9EC 80120800 */  sll        $v0, $t0, 10
    /* 3B0078C 8006D9F0 83120200 */  sra        $v0, $v0, 10
    /* 3B00790 8006D9F4 21100202 */  addu       $v0, $s0, $v0
    /* 3B00794 8006D9F8 FF0F5030 */  andi       $s0, $v0, 0xFFF
    /* 3B00798 8006D9FC 0780013C */  lui        $at, %hi(D_8006A05C)
    /* 3B0079C 8006DA00 5CA030AC */  sw         $s0, %lo(D_8006A05C)($at)
    /* 3B007A0 8006DA04 6C6F000C */  jal        func_8001BDB0
    /* 3B007A4 8006DA08 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 3B007A8 8006DA0C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B007AC 8006DA10 21288000 */  addu       $a1, $a0, $zero
    /* 3B007B0 8006DA14 806F000C */  jal        func_8001BE00
    /* 3B007B4 8006DA18 A4FF4626 */   addiu     $a2, $s2, -0x5C
    /* 3B007B8 8006DA1C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B007BC 8006DA20 21280000 */  addu       $a1, $zero, $zero
    /* 3B007C0 8006DA24 886E000C */  jal        func_8001BA20
    /* 3B007C4 8006DA28 1800A0AF */   sw        $zero, 0x18($sp)
    /* 3B007C8 8006DA2C 21404000 */  addu       $t0, $v0, $zero
    /* 3B007CC 8006DA30 01040229 */  slti       $v0, $t0, 0x401
    /* 3B007D0 8006DA34 42004014 */  bnez       $v0, .Llevel_52_8006DB40
    /* 3B007D4 8006DA38 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3B007D8 8006DA3C 21280001 */  addu       $a1, $t0, $zero
    /* 3B007DC 8006DA40 CEB60108 */  j          .Llevel_52_8006DB38
    /* 3B007E0 8006DA44 00040624 */   addiu     $a2, $zero, 0x400
  .Llevel_52_8006DA48:
    /* 3B007E4 8006DA48 80180800 */  sll        $v1, $t0, 2
    /* 3B007E8 8006DA4C 21186800 */  addu       $v1, $v1, $t0
    /* 3B007EC 8006DA50 00110300 */  sll        $v0, $v1, 4
    /* 3B007F0 8006DA54 23104300 */  subu       $v0, $v0, $v1
    /* 3B007F4 8006DA58 80110200 */  sll        $v0, $v0, 6
    /* 3B007F8 8006DA5C 0780063C */  lui        $a2, %hi(D_8006A208)
    /* 3B007FC 8006DA60 08A2C68C */  lw         $a2, %lo(D_8006A208)($a2)
    /* 3B00800 8006DA64 83120200 */  sra        $v0, $v0, 10
    /* 3B00804 8006DA68 0780013C */  lui        $at, %hi(D_8006A08C)
    /* 3B00808 8006DA6C 8CA022AC */  sw         $v0, %lo(D_8006A08C)($at)
    /* 3B0080C 8006DA70 4600C790 */  lbu        $a3, 0x46($a2)
    /* 3B00810 8006DA74 0780033C */  lui        $v1, %hi(D_8006A150)
    /* 3B00814 8006DA78 50A1638C */  lw         $v1, %lo(D_8006A150)($v1)
    /* 3B00818 8006DA7C 40100700 */  sll        $v0, $a3, 1
    /* 3B0081C 8006DA80 0680013C */  lui        $at, %hi(D_80061C58)
    /* 3B00820 8006DA84 21082200 */  addu       $at, $at, $v0
    /* 3B00824 8006DA88 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 3B00828 8006DA8C 00046324 */  addiu      $v1, $v1, 0x400
    /* 3B0082C 8006DA90 18006200 */  mult       $v1, $v0
    /* 3B00830 8006DA94 12500000 */  mflo       $t2
    /* 3B00834 8006DA98 00000000 */  nop
    /* 3B00838 8006DA9C 00000000 */  nop
    /* 3B0083C 8006DAA0 18000801 */  mult       $t0, $t0
    /* 3B00840 8006DAA4 03130A00 */  sra        $v0, $t2, 12
    /* 3B00844 8006DAA8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3B00848 8006DAAC 4600C290 */  lbu        $v0, 0x46($a2)
    /* 3B0084C 8006DAB0 00000000 */  nop
    /* 3B00850 8006DAB4 40100200 */  sll        $v0, $v0, 1
    /* 3B00854 8006DAB8 12400000 */  mflo       $t0
    /* 3B00858 8006DABC 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 3B0085C 8006DAC0 21082200 */  addu       $at, $at, $v0
    /* 3B00860 8006DAC4 D81B2284 */  lh         $v0, %lo(D_80061BD8)($at)
    /* 3B00864 8006DAC8 00000000 */  nop
    /* 3B00868 8006DACC 18006200 */  mult       $v1, $v0
    /* 3B0086C 8006DAD0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B00870 8006DAD4 21288000 */  addu       $a1, $a0, $zero
    /* 3B00874 8006DAD8 00390700 */  sll        $a3, $a3, 4
    /* 3B00878 8006DADC 0C00C624 */  addiu      $a2, $a2, 0xC
    /* 3B0087C 8006DAE0 C3120800 */  sra        $v0, $t0, 11
    /* 3B00880 8006DAE4 2380E200 */  subu       $s0, $a3, $v0
    /* 3B00884 8006DAE8 12180000 */  mflo       $v1
    /* 3B00888 8006DAEC 03130300 */  sra        $v0, $v1, 12
    /* 3B0088C 8006DAF0 736F000C */  jal        func_8001BDCC
    /* 3B00890 8006DAF4 1400A2AF */   sw        $v0, 0x14($sp)
    /* 3B00894 8006DAF8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B00898 8006DAFC 21288000 */  addu       $a1, $a0, $zero
    /* 3B0089C 8006DB00 0780013C */  lui        $at, %hi(D_8006A05C)
    /* 3B008A0 8006DB04 5CA030AC */  sw         $s0, %lo(D_8006A05C)($at)
    /* 3B008A4 8006DB08 806F000C */  jal        func_8001BE00
    /* 3B008A8 8006DB0C A4FF4626 */   addiu     $a2, $s2, -0x5C
    /* 3B008AC 8006DB10 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3B008B0 8006DB14 21280000 */  addu       $a1, $zero, $zero
    /* 3B008B4 8006DB18 886E000C */  jal        func_8001BA20
    /* 3B008B8 8006DB1C 1800A0AF */   sw        $zero, 0x18($sp)
    /* 3B008BC 8006DB20 21404000 */  addu       $t0, $v0, $zero
    /* 3B008C0 8006DB24 01080229 */  slti       $v0, $t0, 0x801
    /* 3B008C4 8006DB28 05004014 */  bnez       $v0, .Llevel_52_8006DB40
    /* 3B008C8 8006DB2C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3B008CC 8006DB30 21280001 */  addu       $a1, $t0, $zero
    /* 3B008D0 8006DB34 00080624 */  addiu      $a2, $zero, 0x800
  .Llevel_52_8006DB38:
    /* 3B008D4 8006DB38 316F000C */  jal        func_8001BCC4
    /* 3B008D8 8006DB3C 00000000 */   nop
  .Llevel_52_8006DB40:
    /* 3B008DC 8006DB40 1000A28F */  lw         $v0, 0x10($sp)
    /* 3B008E0 8006DB44 1400A38F */  lw         $v1, 0x14($sp)
    /* 3B008E4 8006DB48 0780013C */  lui        $at, %hi(D_8006A084)
    /* 3B008E8 8006DB4C 84A022AC */  sw         $v0, %lo(D_8006A084)($at)
    /* 3B008EC 8006DB50 0780013C */  lui        $at, %hi(D_8006A088)
    /* 3B008F0 8006DB54 88A023AC */  sw         $v1, %lo(D_8006A088)($at)
    /* 3B008F4 8006DB58 13B70108 */  j          .Llevel_52_8006DC4C
    /* 3B008F8 8006DB5C 00000000 */   nop
  .Llevel_52_8006DB60:
    /* 3B008FC 8006DB60 2000B027 */  addiu      $s0, $sp, 0x20
    /* 3B00900 8006DB64 686F000C */  jal        func_8001BDA0
    /* 3B00904 8006DB68 21200002 */   addu      $a0, $s0, $zero
    /* 3B00908 8006DB6C 21200002 */  addu       $a0, $s0, $zero
    /* 3B0090C 8006DB70 21280002 */  addu       $a1, $s0, $zero
    /* 3B00910 8006DB74 38005126 */  addiu      $s1, $s2, 0x38
    /* 3B00914 8006DB78 806F000C */  jal        func_8001BE00
    /* 3B00918 8006DB7C 21302002 */   addu      $a2, $s1, $zero
    /* 3B0091C 8006DB80 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 3B00920 8006DB84 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 3B00924 8006DB88 00000000 */  nop
    /* 3B00928 8006DB8C 11004010 */  beqz       $v0, .Llevel_52_8006DBD4
    /* 3B0092C 8006DB90 21200002 */   addu      $a0, $s0, $zero
    /* 3B00930 8006DB94 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B00934 8006DB98 886E000C */  jal        func_8001BA20
    /* 3B00938 8006DB9C 21280000 */   addu      $a1, $zero, $zero
    /* 3B0093C 8006DBA0 21284000 */  addu       $a1, $v0, $zero
    /* 3B00940 8006DBA4 4100A228 */  slti       $v0, $a1, 0x41
    /* 3B00944 8006DBA8 05004014 */  bnez       $v0, .Llevel_52_8006DBC0
    /* 3B00948 8006DBAC 40FF0224 */   addiu     $v0, $zero, -0xC0
    /* 3B0094C 8006DBB0 21200002 */  addu       $a0, $s0, $zero
    /* 3B00950 8006DBB4 316F000C */  jal        func_8001BCC4
    /* 3B00954 8006DBB8 40000624 */   addiu     $a2, $zero, 0x40
    /* 3B00958 8006DBBC 40FF0224 */  addiu      $v0, $zero, -0xC0
  .Llevel_52_8006DBC0:
    /* 3B0095C 8006DBC0 2800A2AF */  sw         $v0, 0x28($sp)
    /* 3B00960 8006DBC4 2C004426 */  addiu      $a0, $s2, 0x2C
    /* 3B00964 8006DBC8 21282002 */  addu       $a1, $s1, $zero
    /* 3B00968 8006DBCC 05B70108 */  j          .Llevel_52_8006DC14
    /* 3B0096C 8006DBD0 21300002 */   addu      $a2, $s0, $zero
  .Llevel_52_8006DBD4:
    /* 3B00970 8006DBD4 886E000C */  jal        func_8001BA20
    /* 3B00974 8006DBD8 01000524 */   addiu     $a1, $zero, 0x1
    /* 3B00978 8006DBDC 21284000 */  addu       $a1, $v0, $zero
    /* 3B0097C 8006DBE0 0101A228 */  slti       $v0, $a1, 0x101
    /* 3B00980 8006DBE4 05004014 */  bnez       $v0, .Llevel_52_8006DBFC
    /* 3B00984 8006DBE8 21202002 */   addu      $a0, $s1, $zero
    /* 3B00988 8006DBEC 21200002 */  addu       $a0, $s0, $zero
    /* 3B0098C 8006DBF0 316F000C */  jal        func_8001BCC4
    /* 3B00990 8006DBF4 00010624 */   addiu     $a2, $zero, 0x100
    /* 3B00994 8006DBF8 21202002 */  addu       $a0, $s1, $zero
  .Llevel_52_8006DBFC:
    /* 3B00998 8006DBFC 21282002 */  addu       $a1, $s1, $zero
    /* 3B0099C 8006DC00 736F000C */  jal        func_8001BDCC
    /* 3B009A0 8006DC04 21300002 */   addu      $a2, $s0, $zero
    /* 3B009A4 8006DC08 2C004426 */  addiu      $a0, $s2, 0x2C
    /* 3B009A8 8006DC0C 21282002 */  addu       $a1, $s1, $zero
    /* 3B009AC 8006DC10 94004626 */  addiu      $a2, $s2, 0x94
  .Llevel_52_8006DC14:
    /* 3B009B0 8006DC14 736F000C */  jal        func_8001BDCC
    /* 3B009B4 8006DC18 00000000 */   nop
    /* 3B009B8 8006DC1C 0780043C */  lui        $a0, %hi(D_8006A084)
    /* 3B009BC 8006DC20 84A08424 */  addiu      $a0, $a0, %lo(D_8006A084)
    /* 3B009C0 8006DC24 6C6F000C */  jal        func_8001BDB0
    /* 3B009C4 8006DC28 21288000 */   addu      $a1, $a0, $zero
    /* 3B009C8 8006DC2C 0780023C */  lui        $v0, %hi(D_8006A08C)
    /* 3B009CC 8006DC30 8CA0428C */  lw         $v0, %lo(D_8006A08C)($v0)
    /* 3B009D0 8006DC34 00000000 */  nop
    /* 3B009D4 8006DC38 00DD4228 */  slti       $v0, $v0, -0x2300
    /* 3B009D8 8006DC3C 03004010 */  beqz       $v0, .Llevel_52_8006DC4C
    /* 3B009DC 8006DC40 00DD0224 */   addiu     $v0, $zero, -0x2300
    /* 3B009E0 8006DC44 0780013C */  lui        $at, %hi(D_8006A08C)
    /* 3B009E4 8006DC48 8CA022AC */  sw         $v0, %lo(D_8006A08C)($at)
  .Llevel_52_8006DC4C:
    /* 3B009E8 8006DC4C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 3B009EC 8006DC50 3800B28F */  lw         $s2, 0x38($sp)
    /* 3B009F0 8006DC54 3400B18F */  lw         $s1, 0x34($sp)
    /* 3B009F4 8006DC58 3000B08F */  lw         $s0, 0x30($sp)
    /* 3B009F8 8006DC5C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3B009FC 8006DC60 0800E003 */  jr         $ra
    /* 3B00A00 8006DC64 00000000 */   nop
endlabel func_level_52_8006D78C
