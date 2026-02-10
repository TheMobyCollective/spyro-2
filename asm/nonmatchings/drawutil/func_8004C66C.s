.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C66C, 0xA98

glabel func_8004C66C
    /* 3CE6C 8004C66C 0680023C */  lui        $v0, %hi(D_80066FA8)
    /* 3CE70 8004C670 A86F428C */  lw         $v0, %lo(D_80066FA8)($v0)
    /* 3CE74 8004C674 88FEBD27 */  addiu      $sp, $sp, -0x178
    /* 3CE78 8004C678 7401BFAF */  sw         $ra, 0x174($sp)
    /* 3CE7C 8004C67C 7001BEAF */  sw         $fp, 0x170($sp)
    /* 3CE80 8004C680 6C01B7AF */  sw         $s7, 0x16C($sp)
    /* 3CE84 8004C684 6801B6AF */  sw         $s6, 0x168($sp)
    /* 3CE88 8004C688 6401B5AF */  sw         $s5, 0x164($sp)
    /* 3CE8C 8004C68C 6001B4AF */  sw         $s4, 0x160($sp)
    /* 3CE90 8004C690 5C01B3AF */  sw         $s3, 0x15C($sp)
    /* 3CE94 8004C694 5801B2AF */  sw         $s2, 0x158($sp)
    /* 3CE98 8004C698 5401B1AF */  sw         $s1, 0x154($sp)
    /* 3CE9C 8004C69C 5001B0AF */  sw         $s0, 0x150($sp)
    /* 3CEA0 8004C6A0 8B024018 */  blez       $v0, .L8004D0D0
    /* 3CEA4 8004C6A4 E800A0AF */   sw        $zero, 0xE8($sp)
    /* 3CEA8 8004C6A8 5800A927 */  addiu      $t1, $sp, 0x58
    /* 3CEAC 8004C6AC 1801A9AF */  sw         $t1, 0x118($sp)
    /* 3CEB0 8004C6B0 1000A927 */  addiu      $t1, $sp, 0x10
    /* 3CEB4 8004C6B4 2801A9AF */  sw         $t1, 0x128($sp)
    /* 3CEB8 8004C6B8 4001A0AF */  sw         $zero, 0x140($sp)
  .L8004C6BC:
    /* 3CEBC 8004C6BC 0680023C */  lui        $v0, %hi(D_80066F00)
    /* 3CEC0 8004C6C0 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* 3CEC4 8004C6C4 4001A98F */  lw         $t1, 0x140($sp)
    /* 3CEC8 8004C6C8 00000000 */  nop
    /* 3CECC 8004C6CC 21282201 */  addu       $a1, $t1, $v0
    /* 3CED0 8004C6D0 4000A290 */  lbu        $v0, 0x40($a1)
    /* 3CED4 8004C6D4 00000000 */  nop
    /* 3CED8 8004C6D8 73024010 */  beqz       $v0, .L8004D0A8
    /* 3CEDC 8004C6DC 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3CEE0 8004C6E0 0680063C */  lui        $a2, %hi(D_80067EAC)
    /* 3CEE4 8004C6E4 AC7EC624 */  addiu      $a2, $a2, %lo(D_80067EAC)
    /* 3CEE8 8004C6E8 806F000C */  jal        func_8001BE00
    /* 3CEEC 8004C6EC 1800A524 */   addiu     $a1, $a1, 0x18
    /* 3CEF0 8004C6F0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3CEF4 8004C6F4 1800A28F */  lw         $v0, 0x18($sp)
    /* 3CEF8 8004C6F8 02000524 */  addiu      $a1, $zero, 0x2
    /* 3CEFC 8004C6FC C0FA4224 */  addiu      $v0, $v0, -0x540
    /* 3CF00 8004C700 526F000C */  jal        func_8001BD48
    /* 3CF04 8004C704 1800A2AF */   sw        $v0, 0x18($sp)
    /* 3CF08 8004C708 0680043C */  lui        $a0, %hi(D_80067E98)
    /* 3CF0C 8004C70C 987E8424 */  addiu      $a0, $a0, %lo(D_80067E98)
    /* 3CF10 8004C710 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3CF14 8004C714 696E000C */  jal        func_8001B9A4
    /* 3CF18 8004C718 2130A000 */   addu      $a2, $a1, $zero
    /* 3CF1C 8004C71C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3CF20 8004C720 486F000C */  jal        func_8001BD20
    /* 3CF24 8004C724 02000524 */   addiu     $a1, $zero, 0x2
    /* 3CF28 8004C728 1000A48F */  lw         $a0, 0x10($sp)
    /* 3CF2C 8004C72C 00000000 */  nop
    /* 3CF30 8004C730 01F88228 */  slti       $v0, $a0, -0x7FF
    /* 3CF34 8004C734 5B024014 */  bnez       $v0, .L8004D0A4
    /* 3CF38 8004C738 00000000 */   nop
    /* 3CF3C 8004C73C 0680023C */  lui        $v0, %hi(D_80066F00)
    /* 3CF40 8004C740 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* 3CF44 8004C744 4001A98F */  lw         $t1, 0x140($sp)
    /* 3CF48 8004C748 00000000 */  nop
    /* 3CF4C 8004C74C 21282201 */  addu       $a1, $t1, $v0
    /* 3CF50 8004C750 4000A290 */  lbu        $v0, 0x40($a1)
    /* 3CF54 8004C754 00000000 */  nop
    /* 3CF58 8004C758 80120200 */  sll        $v0, $v0, 10
    /* 3CF5C 8004C75C 2A108200 */  slt        $v0, $a0, $v0
    /* 3CF60 8004C760 51024010 */  beqz       $v0, .L8004D0A8
    /* 3CF64 8004C764 00000000 */   nop
    /* 3CF68 8004C768 1400A38F */  lw         $v1, 0x14($sp)
    /* 3CF6C 8004C76C 00000000 */  nop
    /* 3CF70 8004C770 00F66224 */  addiu      $v0, $v1, -0xA00
    /* 3CF74 8004C774 2A104400 */  slt        $v0, $v0, $a0
    /* 3CF78 8004C778 4B024010 */  beqz       $v0, .L8004D0A8
    /* 3CF7C 8004C77C 00086224 */   addiu     $v0, $v1, 0x800
    /* 3CF80 8004C780 23100200 */  negu       $v0, $v0
    /* 3CF84 8004C784 2A104400 */  slt        $v0, $v0, $a0
    /* 3CF88 8004C788 47024010 */  beqz       $v0, .L8004D0A8
    /* 3CF8C 8004C78C 00000000 */   nop
    /* 3CF90 8004C790 02008104 */  bgez       $a0, .L8004C79C
    /* 3CF94 8004C794 00000000 */   nop
    /* 3CF98 8004C798 1000A0AF */  sw         $zero, 0x10($sp)
  .L8004C79C:
    /* 3CF9C 8004C79C 1000A38F */  lw         $v1, 0x10($sp)
    /* 3CFA0 8004C7A0 01000624 */  addiu      $a2, $zero, 0x1
    /* 3CFA4 8004C7A4 C3110300 */  sra        $v0, $v1, 7
    /* 3CFA8 8004C7A8 00406328 */  slti       $v1, $v1, 0x4000
    /* 3CFAC 8004C7AC 01006338 */  xori       $v1, $v1, 0x1
    /* 3CFB0 8004C7B0 23180300 */  negu       $v1, $v1
    /* 3CFB4 8004C7B4 0780013C */  lui        $at, %hi(D_80068C04)
    /* 3CFB8 8004C7B8 048C22AC */  sw         $v0, %lo(D_80068C04)($at)
    /* 3CFBC 8004C7BC 3000A78C */  lw         $a3, 0x30($a1)
    /* 3CFC0 8004C7C0 0000A48C */  lw         $a0, 0x0($a1)
    /* 3CFC4 8004C7C4 3400A28C */  lw         $v0, 0x34($a1)
    /* 3CFC8 8004C7C8 0400A58C */  lw         $a1, 0x4($a1)
    /* 3CFCC 8004C7CC 03006330 */  andi       $v1, $v1, 0x3
    /* 3CFD0 8004C7D0 F000A3AF */  sw         $v1, 0xF0($sp)
    /* 3CFD4 8004C7D4 2320E400 */  subu       $a0, $a3, $a0
    /* 3CFD8 8004C7D8 2E6D000C */  jal        func_8001B4B8
    /* 3CFDC 8004C7DC 23284500 */   subu      $a1, $v0, $a1
    /* 3CFE0 8004C7E0 01000624 */  addiu      $a2, $zero, 0x1
    /* 3CFE4 8004C7E4 21804000 */  addu       $s0, $v0, $zero
    /* 3CFE8 8004C7E8 0680033C */  lui        $v1, %hi(D_80066F00)
    /* 3CFEC 8004C7EC 006F638C */  lw         $v1, %lo(D_80066F00)($v1)
    /* 3CFF0 8004C7F0 4001A98F */  lw         $t1, 0x140($sp)
    /* 3CFF4 8004C7F4 0680083C */  lui        $t0, %hi(D_80067EAC)
    /* 3CFF8 8004C7F8 AC7E088D */  lw         $t0, %lo(D_80067EAC)($t0)
    /* 3CFFC 8004C7FC 0680073C */  lui        $a3, %hi(D_80067EB0)
    /* 3D000 8004C800 B07EE78C */  lw         $a3, %lo(D_80067EB0)($a3)
    /* 3D004 8004C804 21182301 */  addu       $v1, $t1, $v1
    /* 3D008 8004C808 1800648C */  lw         $a0, 0x18($v1)
    /* 3D00C 8004C80C 1C00658C */  lw         $a1, 0x1C($v1)
    /* 3D010 8004C810 23200401 */  subu       $a0, $t0, $a0
    /* 3D014 8004C814 2E6D000C */  jal        func_8001B4B8
    /* 3D018 8004C818 2328E500 */   subu      $a1, $a3, $a1
    /* 3D01C 8004C81C 00841000 */  sll        $s0, $s0, 16
    /* 3D020 8004C820 038C1000 */  sra        $s1, $s0, 16
    /* 3D024 8004C824 21202002 */  addu       $a0, $s1, $zero
    /* 3D028 8004C828 00140200 */  sll        $v0, $v0, 16
    /* 3D02C 8004C82C C06F000C */  jal        func_8001BF00
    /* 3D030 8004C830 032C0200 */   sra       $a1, $v0, 16
    /* 3D034 8004C834 0001A2AF */  sw         $v0, 0x100($sp)
    /* 3D038 8004C838 40004224 */  addiu      $v0, $v0, 0x40
    /* 3D03C 8004C83C 8100422C */  sltiu      $v0, $v0, 0x81
    /* 3D040 8004C840 18024014 */  bnez       $v0, .L8004D0A4
    /* 3D044 8004C844 00000000 */   nop
    /* 3D048 8004C848 0001A98F */  lw         $t1, 0x100($sp)
    /* 3D04C 8004C84C 00000000 */  nop
    /* 3D050 8004C850 BF072225 */  addiu      $v0, $t1, 0x7BF
    /* 3D054 8004C854 7F0F422C */  sltiu      $v0, $v0, 0xF7F
    /* 3D058 8004C858 12024010 */  beqz       $v0, .L8004D0A4
    /* 3D05C 8004C85C 00000000 */   nop
    /* 3D060 8004C860 0A002105 */  bgez       $t1, .L8004C88C
    /* 3D064 8004C864 00000000 */   nop
    /* 3D068 8004C868 0680023C */  lui        $v0, %hi(D_80066F00)
    /* 3D06C 8004C86C 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* 3D070 8004C870 4001A98F */  lw         $t1, 0x140($sp)
    /* 3D074 8004C874 00000000 */  nop
    /* 3D078 8004C878 21102201 */  addu       $v0, $t1, $v0
    /* 3D07C 8004C87C 41004290 */  lbu        $v0, 0x41($v0)
    /* 3D080 8004C880 00000000 */  nop
    /* 3D084 8004C884 0A024010 */  beqz       $v0, .L8004D0B0
    /* 3D088 8004C888 44002925 */   addiu     $t1, $t1, 0x44
  .L8004C88C:
    /* 3D08C 8004C88C 0680043C */  lui        $a0, %hi(D_80066F00)
    /* 3D090 8004C890 006F848C */  lw         $a0, %lo(D_80066F00)($a0)
    /* 3D094 8004C894 4001A98F */  lw         $t1, 0x140($sp)
    /* 3D098 8004C898 0680023C */  lui        $v0, %hi(D_80067EAC)
    /* 3D09C 8004C89C AC7E428C */  lw         $v0, %lo(D_80067EAC)($v0)
    /* 3D0A0 8004C8A0 21202401 */  addu       $a0, $t1, $a0
    /* 3D0A4 8004C8A4 1800838C */  lw         $v1, 0x18($a0)
    /* 3D0A8 8004C8A8 00000000 */  nop
    /* 3D0AC 8004C8AC 23104300 */  subu       $v0, $v0, $v1
    /* 3D0B0 8004C8B0 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3D0B4 8004C8B4 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* 3D0B8 8004C8B8 B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* 3D0BC 8004C8BC 1C00838C */  lw         $v1, 0x1C($a0)
    /* 3D0C0 8004C8C0 0001A48F */  lw         $a0, 0x100($sp)
    /* 3D0C4 8004C8C4 23104300 */  subu       $v0, $v0, $v1
    /* 3D0C8 8004C8C8 876D000C */  jal        func_8001B61C
    /* 3D0CC 8004C8CC 2400A2AF */   sw        $v0, 0x24($sp)
    /* 3D0D0 8004C8D0 2000A427 */  addiu      $a0, $sp, 0x20
    /* 3D0D4 8004C8D4 21280000 */  addu       $a1, $zero, $zero
    /* 3D0D8 8004C8D8 886E000C */  jal        func_8001BA20
    /* 3D0DC 8004C8DC 21804000 */   addu      $s0, $v0, $zero
    /* 3D0E0 8004C8E0 18000202 */  mult       $s0, $v0
    /* 3D0E4 8004C8E4 12480000 */  mflo       $t1
    /* 3D0E8 8004C8E8 03130900 */  sra        $v0, $t1, 12
    /* 3D0EC 8004C8EC 02004104 */  bgez       $v0, .L8004C8F8
    /* 3D0F0 8004C8F0 00000000 */   nop
    /* 3D0F4 8004C8F4 23100200 */  negu       $v0, $v0
  .L8004C8F8:
    /* 3D0F8 8004C8F8 A0004228 */  slti       $v0, $v0, 0xA0
    /* 3D0FC 8004C8FC E9014014 */  bnez       $v0, .L8004D0A4
    /* 3D100 8004C900 00000000 */   nop
    /* 3D104 8004C904 876D000C */  jal        func_8001B61C
    /* 3D108 8004C908 21202002 */   addu      $a0, $s1, $zero
    /* 3D10C 8004C90C 21202002 */  addu       $a0, $s1, $zero
    /* 3D110 8004C910 996D000C */  jal        func_8001B664
    /* 3D114 8004C914 3000A2AF */   sw        $v0, 0x30($sp)
    /* 3D118 8004C918 0680043C */  lui        $a0, %hi(D_80067E98)
    /* 3D11C 8004C91C 987E8424 */  addiu      $a0, $a0, %lo(D_80067E98)
    /* 3D120 8004C920 3000A527 */  addiu      $a1, $sp, 0x30
    /* 3D124 8004C924 2130A000 */  addu       $a2, $a1, $zero
    /* 3D128 8004C928 23100200 */  negu       $v0, $v0
    /* 3D12C 8004C92C 3400A2AF */  sw         $v0, 0x34($sp)
    /* 3D130 8004C930 696E000C */  jal        func_8001B9A4
    /* 3D134 8004C934 3800A0AF */   sw        $zero, 0x38($sp)
    /* 3D138 8004C938 0001A98F */  lw         $t1, 0x100($sp)
    /* 3D13C 8004C93C 00000000 */  nop
    /* 3D140 8004C940 06002105 */  bgez       $t1, .L8004C95C
    /* 3D144 8004C944 00000000 */   nop
    /* 3D148 8004C948 3000A28F */  lw         $v0, 0x30($sp)
    /* 3D14C 8004C94C 00000000 */  nop
    /* 3D150 8004C950 23100200 */  negu       $v0, $v0
    /* 3D154 8004C954 5A320108 */  j          .L8004C968
    /* 3D158 8004C958 0801A2AF */   sw        $v0, 0x108($sp)
  .L8004C95C:
    /* 3D15C 8004C95C 3000A98F */  lw         $t1, 0x30($sp)
    /* 3D160 8004C960 00000000 */  nop
    /* 3D164 8004C964 0801A9AF */  sw         $t1, 0x108($sp)
  .L8004C968:
    /* 3D168 8004C968 0801A98F */  lw         $t1, 0x108($sp)
    /* 3D16C 8004C96C 00000000 */  nop
    /* 3D170 8004C970 01082229 */  slti       $v0, $t1, 0x801
    /* 3D174 8004C974 CB014010 */  beqz       $v0, .L8004D0A4
    /* 3D178 8004C978 01000924 */   addiu     $t1, $zero, 0x1
    /* 3D17C 8004C97C 1000A28F */  lw         $v0, 0x10($sp)
    /* 3D180 8004C980 00000000 */  nop
    /* 3D184 8004C984 00504228 */  slti       $v0, $v0, 0x5000
    /* 3D188 8004C988 05004010 */  beqz       $v0, .L8004C9A0
    /* 3D18C 8004C98C F800A9AF */   sw        $t1, 0xF8($sp)
  .L8004C990:
    /* 3D190 8004C990 F800A98F */  lw         $t1, 0xF8($sp)
    /* 3D194 8004C994 00000000 */  nop
    /* 3D198 8004C998 C2012005 */  bltz       $t1, .L8004D0A4
    /* 3D19C 8004C99C 00000000 */   nop
  .L8004C9A0:
    /* 3D1A0 8004C9A0 00041524 */  addiu      $s5, $zero, 0x400
  .L8004C9A4:
    /* 3D1A4 8004C9A4 00FC1624 */  addiu      $s6, $zero, -0x400
    /* 3D1A8 8004C9A8 00041724 */  addiu      $s7, $zero, 0x400
    /* 3D1AC 8004C9AC 00FC1E24 */  addiu      $fp, $zero, -0x400
    /* 3D1B0 8004C9B0 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 3D1B4 8004C9B4 21A00000 */  addu       $s4, $zero, $zero
    /* 3D1B8 8004C9B8 2000B327 */  addiu      $s3, $sp, 0x20
    /* 3D1BC 8004C9BC 1001A9AF */  sw         $t1, 0x110($sp)
    /* 3D1C0 8004C9C0 4001A98F */  lw         $t1, 0x140($sp)
    /* 3D1C4 8004C9C4 1801B08F */  lw         $s0, 0x118($sp)
    /* 3D1C8 8004C9C8 21900000 */  addu       $s2, $zero, $zero
    /* 3D1CC 8004C9CC 2001A9AF */  sw         $t1, 0x120($sp)
  .L8004C9D0:
    /* 3D1D0 8004C9D0 F800A98F */  lw         $t1, 0xF8($sp)
    /* 3D1D4 8004C9D4 00000000 */  nop
    /* 3D1D8 8004C9D8 08002011 */  beqz       $t1, .L8004C9FC
    /* 3D1DC 8004C9DC 21200002 */   addu      $a0, $s0, $zero
    /* 3D1E0 8004C9E0 0680053C */  lui        $a1, %hi(D_80066F00)
    /* 3D1E4 8004C9E4 006FA58C */  lw         $a1, %lo(D_80066F00)($a1)
    /* 3D1E8 8004C9E8 2001A98F */  lw         $t1, 0x120($sp)
    /* 3D1EC 8004C9EC F000A68F */  lw         $a2, 0xF0($sp)
    /* 3D1F0 8004C9F0 2128A900 */  addu       $a1, $a1, $t1
    /* 3D1F4 8004C9F4 AA320108 */  j          .L8004CAA8
    /* 3D1F8 8004C9F8 2128B200 */   addu      $a1, $a1, $s2
  .L8004C9FC:
    /* 3D1FC 8004C9FC 0680063C */  lui        $a2, %hi(D_80066F00)
    /* 3D200 8004CA00 006FC68C */  lw         $a2, %lo(D_80066F00)($a2)
    /* 3D204 8004CA04 2001A98F */  lw         $t1, 0x120($sp)
    /* 3D208 8004CA08 2000A427 */  addiu      $a0, $sp, 0x20
    /* 3D20C 8004CA0C 2130C900 */  addu       $a2, $a2, $t1
    /* 3D210 8004CA10 2128D200 */  addu       $a1, $a2, $s2
    /* 3D214 8004CA14 806F000C */  jal        func_8001BE00
    /* 3D218 8004CA18 1800C624 */   addiu     $a2, $a2, 0x18
    /* 3D21C 8004CA1C 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* 3D220 8004CA20 0680043C */  lui        $a0, %hi(D_80066F90)
    /* 3D224 8004CA24 906F848C */  lw         $a0, %lo(D_80066F90)($a0)
    /* 3D228 8004CA28 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 3D22C 8004CA2C 18008200 */  mult       $a0, $v0
    /* 3D230 8004CA30 C3170400 */  sra        $v0, $a0, 31
    /* 3D234 8004CA34 10480000 */  mfhi       $t1
    /* 3D238 8004CA38 83180900 */  sra        $v1, $t1, 2
    /* 3D23C 8004CA3C 23186200 */  subu       $v1, $v1, $v0
    /* 3D240 8004CA40 80100300 */  sll        $v0, $v1, 2
    /* 3D244 8004CA44 21104300 */  addu       $v0, $v0, $v1
    /* 3D248 8004CA48 40100200 */  sll        $v0, $v0, 1
    /* 3D24C 8004CA4C 04008214 */  bne        $a0, $v0, .L8004CA60
    /* 3D250 8004CA50 00000000 */   nop
    /* 3D254 8004CA54 2800A28F */  lw         $v0, 0x28($sp)
    /* 3D258 8004CA58 9B320108 */  j          .L8004CA6C
    /* 3D25C 8004CA5C 40054224 */   addiu     $v0, $v0, 0x540
  .L8004CA60:
    /* 3D260 8004CA60 2800A28F */  lw         $v0, 0x28($sp)
    /* 3D264 8004CA64 00000000 */  nop
    /* 3D268 8004CA68 20034224 */  addiu      $v0, $v0, 0x320
  .L8004CA6C:
    /* 3D26C 8004CA6C 2800A2AF */  sw         $v0, 0x28($sp)
    /* 3D270 8004CA70 21206002 */  addu       $a0, $s3, $zero
    /* 3D274 8004CA74 526F000C */  jal        func_8001BD48
    /* 3D278 8004CA78 06000524 */   addiu     $a1, $zero, 0x6
    /* 3D27C 8004CA7C 21206002 */  addu       $a0, $s3, $zero
    /* 3D280 8004CA80 0680063C */  lui        $a2, %hi(D_80066F00)
    /* 3D284 8004CA84 006FC68C */  lw         $a2, %lo(D_80066F00)($a2)
    /* 3D288 8004CA88 2001A98F */  lw         $t1, 0x120($sp)
    /* 3D28C 8004CA8C 21286002 */  addu       $a1, $s3, $zero
    /* 3D290 8004CA90 2130C900 */  addu       $a2, $a2, $t1
    /* 3D294 8004CA94 736F000C */  jal        func_8001BDCC
    /* 3D298 8004CA98 2130D200 */   addu      $a2, $a2, $s2
    /* 3D29C 8004CA9C 21200002 */  addu       $a0, $s0, $zero
    /* 3D2A0 8004CAA0 F000A68F */  lw         $a2, 0xF0($sp)
    /* 3D2A4 8004CAA4 21286002 */  addu       $a1, $s3, $zero
  .L8004CAA8:
    /* 3D2A8 8004CAA8 1070000C */  jal        func_8001C040
    /* 3D2AC 8004CAAC 00000000 */   nop
    /* 3D2B0 8004CAB0 2801A98F */  lw         $t1, 0x128($sp)
    /* 3D2B4 8004CAB4 80101400 */  sll        $v0, $s4, 2
    /* 3D2B8 8004CAB8 21884900 */  addu       $s1, $v0, $t1
    /* 3D2BC 8004CABC 0400028E */  lw         $v0, 0x4($s0)
    /* 3D2C0 8004CAC0 00000396 */  lhu        $v1, 0x0($s0)
    /* 3D2C4 8004CAC4 00140200 */  sll        $v0, $v0, 16
    /* 3D2C8 8004CAC8 21186200 */  addu       $v1, $v1, $v0
    /* 3D2CC 8004CACC 880023AE */  sw         $v1, 0x88($s1)
    /* 3D2D0 8004CAD0 0000048E */  lw         $a0, 0x0($s0)
    /* 3D2D4 8004CAD4 00000000 */  nop
    /* 3D2D8 8004CAD8 2A109500 */  slt        $v0, $a0, $s5
    /* 3D2DC 8004CADC 02004010 */  beqz       $v0, .L8004CAE8
    /* 3D2E0 8004CAE0 2A10C402 */   slt       $v0, $s6, $a0
    /* 3D2E4 8004CAE4 21A88000 */  addu       $s5, $a0, $zero
  .L8004CAE8:
    /* 3D2E8 8004CAE8 02004010 */  beqz       $v0, .L8004CAF4
    /* 3D2EC 8004CAEC 00000000 */   nop
    /* 3D2F0 8004CAF0 21B08000 */  addu       $s6, $a0, $zero
  .L8004CAF4:
    /* 3D2F4 8004CAF4 0400058E */  lw         $a1, 0x4($s0)
    /* 3D2F8 8004CAF8 00000000 */  nop
    /* 3D2FC 8004CAFC 2A10B700 */  slt        $v0, $a1, $s7
    /* 3D300 8004CB00 02004010 */  beqz       $v0, .L8004CB0C
    /* 3D304 8004CB04 2A10C503 */   slt       $v0, $fp, $a1
    /* 3D308 8004CB08 21B8A000 */  addu       $s7, $a1, $zero
  .L8004CB0C:
    /* 3D30C 8004CB0C 02004010 */  beqz       $v0, .L8004CB18
    /* 3D310 8004CB10 00000000 */   nop
    /* 3D314 8004CB14 21F0A000 */  addu       $fp, $a1, $zero
  .L8004CB18:
    /* 3D318 8004CB18 0800068E */  lw         $a2, 0x8($s0)
    /* 3D31C 8004CB1C 0C001026 */  addiu      $s0, $s0, 0xC
    /* 3D320 8004CB20 3D70000C */  jal        func_8001C0F4
    /* 3D324 8004CB24 0C005226 */   addiu     $s2, $s2, 0xC
    /* 3D328 8004CB28 1001A98F */  lw         $t1, 0x110($sp)
    /* 3D32C 8004CB2C 01009426 */  addiu      $s4, $s4, 0x1
    /* 3D330 8004CB30 24482201 */  and        $t1, $t1, $v0
    /* 3D334 8004CB34 1001A9AF */  sw         $t1, 0x110($sp)
    /* 3D338 8004CB38 A00022AE */  sw         $v0, 0xA0($s1)
    /* 3D33C 8004CB3C 0500822A */  slti       $v0, $s4, 0x5
    /* 3D340 8004CB40 A3FF4014 */  bnez       $v0, .L8004C9D0
    /* 3D344 8004CB44 00000000 */   nop
    /* 3D348 8004CB48 4E012015 */  bnez       $t1, .L8004D084
    /* 3D34C 8004CB4C 00000000 */   nop
    /* 3D350 8004CB50 0200A106 */  bgez       $s5, .L8004CB5C
    /* 3D354 8004CB54 0102C22A */   slti      $v0, $s6, 0x201
    /* 3D358 8004CB58 21A80000 */  addu       $s5, $zero, $zero
  .L8004CB5C:
    /* 3D35C 8004CB5C 02004014 */  bnez       $v0, .L8004CB68
    /* 3D360 8004CB60 0C00E22A */   slti      $v0, $s7, 0xC
    /* 3D364 8004CB64 00021624 */  addiu      $s6, $zero, 0x200
  .L8004CB68:
    /* 3D368 8004CB68 02004010 */  beqz       $v0, .L8004CB74
    /* 3D36C 8004CB6C E500C22B */   slti      $v0, $fp, 0xE5
    /* 3D370 8004CB70 0C001724 */  addiu      $s7, $zero, 0xC
  .L8004CB74:
    /* 3D374 8004CB74 02004014 */  bnez       $v0, .L8004CB80
    /* 3D378 8004CB78 21400000 */   addu      $t0, $zero, $zero
    /* 3D37C 8004CB7C E4001E24 */  addiu      $fp, $zero, 0xE4
  .L8004CB80:
    /* 3D380 8004CB80 21880000 */  addu       $s1, $zero, $zero
    /* 3D384 8004CB84 6666073C */  lui        $a3, (0x66666667 >> 16)
    /* 3D388 8004CB88 0680023C */  lui        $v0, %hi(D_80066F00)
    /* 3D38C 8004CB8C 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* 3D390 8004CB90 4001A98F */  lw         $t1, 0x140($sp)
    /* 3D394 8004CB94 0680033C */  lui        $v1, %hi(D_8006700C)
    /* 3D398 8004CB98 0C70638C */  lw         $v1, %lo(D_8006700C)($v1)
    /* 3D39C 8004CB9C 6766E734 */  ori        $a3, $a3, (0x66666667 & 0xFFFF)
    /* 3D3A0 8004CBA0 0780013C */  lui        $at, %hi(D_80068BF8)
    /* 3D3A4 8004CBA4 F88B35AC */  sw         $s5, %lo(D_80068BF8)($at)
    /* 3D3A8 8004CBA8 0780013C */  lui        $at, %hi(D_80068BFC)
    /* 3D3AC 8004CBAC FC8B36AC */  sw         $s6, %lo(D_80068BFC)($at)
    /* 3D3B0 8004CBB0 0780013C */  lui        $at, %hi(D_80068BF0)
    /* 3D3B4 8004CBB4 F08B37AC */  sw         $s7, %lo(D_80068BF0)($at)
    /* 3D3B8 8004CBB8 0780013C */  lui        $at, %hi(D_80068BF4)
    /* 3D3BC 8004CBBC F48B3EAC */  sw         $fp, %lo(D_80068BF4)($at)
    /* 3D3C0 8004CBC0 21102201 */  addu       $v0, $t1, $v0
    /* 3D3C4 8004CBC4 3C00428C */  lw         $v0, 0x3C($v0)
    /* 3D3C8 8004CBC8 E800A98F */  lw         $t1, 0xE8($sp)
    /* 3D3CC 8004CBCC 80180300 */  sll        $v1, $v1, 2
    /* 3D3D0 8004CBD0 0780013C */  lui        $at, %hi(D_80068C00)
    /* 3D3D4 8004CBD4 008C22AC */  sw         $v0, %lo(D_80068C00)($at)
    /* 3D3D8 8004CBD8 80110900 */  sll        $v0, $t1, 6
    /* 3D3DC 8004CBDC 21186200 */  addu       $v1, $v1, $v0
    /* 3D3E0 8004CBE0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3D3E4 8004CBE4 0680023C */  lui        $v0, %hi(D_80061C58)
    /* 3D3E8 8004CBE8 581C4224 */  addiu      $v0, $v0, %lo(D_80061C58)
    /* 3D3EC 8004CBEC 40180300 */  sll        $v1, $v1, 1
    /* 3D3F0 8004CBF0 21186200 */  addu       $v1, $v1, $v0
    /* 3D3F4 8004CBF4 00006294 */  lhu        $v0, 0x0($v1)
    /* 3D3F8 8004CBF8 2801A68F */  lw         $a2, 0x128($sp)
    /* 3D3FC 8004CBFC 00140200 */  sll        $v0, $v0, 16
    /* 3D400 8004CC00 03150200 */  sra        $v0, $v0, 20
    /* 3D404 8004CC04 000E4224 */  addiu      $v0, $v0, 0xE00
    /* 3D408 8004CC08 0780013C */  lui        $at, %hi(D_80068C08)
    /* 3D40C 8004CC0C 088C22A4 */  sh         $v0, %lo(D_80068C08)($at)
    /* 3D410 8004CC10 00006294 */  lhu        $v0, 0x0($v1)
    /* 3D414 8004CC14 000C0324 */  addiu      $v1, $zero, 0xC00
    /* 3D418 8004CC18 0780013C */  lui        $at, %hi(D_80068C0C)
    /* 3D41C 8004CC1C 0C8C23A4 */  sh         $v1, %lo(D_80068C0C)($at)
    /* 3D420 8004CC20 00140200 */  sll        $v0, $v0, 16
    /* 3D424 8004CC24 03150200 */  sra        $v0, $v0, 20
    /* 3D428 8004CC28 000E4224 */  addiu      $v0, $v0, 0xE00
    /* 3D42C 8004CC2C 0780013C */  lui        $at, %hi(D_80068C0A)
    /* 3D430 8004CC30 0A8C22A4 */  sh         $v0, %lo(D_80068C0A)($at)
  .L8004CC34:
    /* 3D434 8004CC34 01002526 */  addiu      $a1, $s1, 0x1
    /* 3D438 8004CC38 1800A700 */  mult       $a1, $a3
    /* 3D43C 8004CC3C 80201100 */  sll        $a0, $s1, 2
    /* 3D440 8004CC40 2801A98F */  lw         $t1, 0x128($sp)
    /* 3D444 8004CC44 C3170500 */  sra        $v0, $a1, 31
    /* 3D448 8004CC48 21208900 */  addu       $a0, $a0, $t1
    /* 3D44C 8004CC4C 10480000 */  mfhi       $t1
    /* 3D450 8004CC50 43180900 */  sra        $v1, $t1, 1
    /* 3D454 8004CC54 23186200 */  subu       $v1, $v1, $v0
    /* 3D458 8004CC58 80100300 */  sll        $v0, $v1, 2
    /* 3D45C 8004CC5C 21104300 */  addu       $v0, $v0, $v1
    /* 3D460 8004CC60 2310A200 */  subu       $v0, $a1, $v0
    /* 3D464 8004CC64 80100200 */  sll        $v0, $v0, 2
    /* 3D468 8004CC68 2801A98F */  lw         $t1, 0x128($sp)
    /* 3D46C 8004CC6C A000838C */  lw         $v1, 0xA0($a0)
    /* 3D470 8004CC70 21104900 */  addu       $v0, $v0, $t1
    /* 3D474 8004CC74 A000428C */  lw         $v0, 0xA0($v0)
    /* 3D478 8004CC78 00000000 */  nop
    /* 3D47C 8004CC7C 24186200 */  and        $v1, $v1, $v0
    /* 3D480 8004CC80 04006014 */  bnez       $v1, .L8004CC94
    /* 3D484 8004CC84 0500A228 */   slti      $v0, $a1, 0x5
    /* 3D488 8004CC88 3000D1AC */  sw         $s1, 0x30($a2)
    /* 3D48C 8004CC8C 0400C624 */  addiu      $a2, $a2, 0x4
    /* 3D490 8004CC90 01000825 */  addiu      $t0, $t0, 0x1
  .L8004CC94:
    /* 3D494 8004CC94 E7FF4014 */  bnez       $v0, .L8004CC34
    /* 3D498 8004CC98 2188A000 */   addu      $s1, $a1, $zero
    /* 3D49C 8004CC9C 12000015 */  bnez       $t0, .L8004CCE8
    /* 3D4A0 8004CCA0 00000000 */   nop
    /* 3D4A4 8004CCA4 0801A98F */  lw         $t1, 0x108($sp)
    /* 3D4A8 8004CCA8 00000000 */  nop
    /* 3D4AC 8004CCAC F5002105 */  bgez       $t1, .L8004D084
    /* 3D4B0 8004CCB0 00000000 */   nop
    /* 3D4B4 8004CCB4 B000A28F */  lw         $v0, 0xB0($sp)
    /* 3D4B8 8004CCB8 B400A38F */  lw         $v1, 0xB4($sp)
    /* 3D4BC 8004CCBC B800A48F */  lw         $a0, 0xB8($sp)
    /* 3D4C0 8004CCC0 25104300 */  or         $v0, $v0, $v1
    /* 3D4C4 8004CCC4 25104400 */  or         $v0, $v0, $a0
    /* 3D4C8 8004CCC8 BC00A38F */  lw         $v1, 0xBC($sp)
    /* 3D4CC 8004CCCC C000A48F */  lw         $a0, 0xC0($sp)
    /* 3D4D0 8004CCD0 25104300 */  or         $v0, $v0, $v1
    /* 3D4D4 8004CCD4 25104400 */  or         $v0, $v0, $a0
    /* 3D4D8 8004CCD8 0F004230 */  andi       $v0, $v0, 0xF
    /* 3D4DC 8004CCDC 0F000324 */  addiu      $v1, $zero, 0xF
    /* 3D4E0 8004CCE0 E8004314 */  bne        $v0, $v1, .L8004D084
    /* 3D4E4 8004CCE4 00000000 */   nop
  .L8004CCE8:
    /* 3D4E8 8004CCE8 0780013C */  lui        $at, %hi(D_80068C10)
    /* 3D4EC 8004CCEC 108C28AC */  sw         $t0, %lo(D_80068C10)($at)
    /* 3D4F0 8004CCF0 CF000019 */  blez       $t0, .L8004D030
    /* 3D4F4 8004CCF4 21880000 */   addu      $s1, $zero, $zero
    /* 3D4F8 8004CCF8 0780143C */  lui        $s4, %hi(D_80068C14)
    /* 3D4FC 8004CCFC 148C9426 */  addiu      $s4, $s4, %lo(D_80068C14)
    /* 3D500 8004CD00 C800B727 */  addiu      $s7, $sp, 0xC8
    /* 3D504 8004CD04 D800B627 */  addiu      $s6, $sp, 0xD8
    /* 3D508 8004CD08 21980000 */  addu       $s3, $zero, $zero
    /* 3D50C 8004CD0C 21900000 */  addu       $s2, $zero, $zero
  .L8004CD10:
    /* 3D510 8004CD10 6666033C */  lui        $v1, (0x66666667 >> 16)
    /* 3D514 8004CD14 2801A98F */  lw         $t1, 0x128($sp)
    /* 3D518 8004CD18 80101100 */  sll        $v0, $s1, 2
    /* 3D51C 8004CD1C 21104900 */  addu       $v0, $v0, $t1
    /* 3D520 8004CD20 3000478C */  lw         $a3, 0x30($v0)
    /* 3D524 8004CD24 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 3D528 8004CD28 0100E424 */  addiu      $a0, $a3, 0x1
    /* 3D52C 8004CD2C 18008300 */  mult       $a0, $v1
    /* 3D530 8004CD30 C3170400 */  sra        $v0, $a0, 31
    /* 3D534 8004CD34 10480000 */  mfhi       $t1
    /* 3D538 8004CD38 43180900 */  sra        $v1, $t1, 1
    /* 3D53C 8004CD3C 23806200 */  subu       $s0, $v1, $v0
    /* 3D540 8004CD40 80101000 */  sll        $v0, $s0, 2
    /* 3D544 8004CD44 21105000 */  addu       $v0, $v0, $s0
    /* 3D548 8004CD48 0001A98F */  lw         $t1, 0x100($sp)
    /* 3D54C 8004CD4C 00000000 */  nop
    /* 3D550 8004CD50 05002105 */  bgez       $t1, .L8004CD68
    /* 3D554 8004CD54 23808200 */   subu      $s0, $a0, $v0
    /* 3D558 8004CD58 01004226 */  addiu      $v0, $s2, 0x1
    /* 3D55C 8004CD5C 80100200 */  sll        $v0, $v0, 2
    /* 3D560 8004CD60 5B330108 */  j          .L8004CD6C
    /* 3D564 8004CD64 21185400 */   addu      $v1, $v0, $s4
  .L8004CD68:
    /* 3D568 8004CD68 21187402 */  addu       $v1, $s3, $s4
  .L8004CD6C:
    /* 3D56C 8004CD6C 2801A98F */  lw         $t1, 0x128($sp)
    /* 3D570 8004CD70 80100700 */  sll        $v0, $a3, 2
    /* 3D574 8004CD74 21104900 */  addu       $v0, $v0, $t1
    /* 3D578 8004CD78 8800428C */  lw         $v0, 0x88($v0)
    /* 3D57C 8004CD7C 00000000 */  nop
    /* 3D580 8004CD80 000062AC */  sw         $v0, 0x0($v1)
    /* 3D584 8004CD84 0001A98F */  lw         $t1, 0x100($sp)
    /* 3D588 8004CD88 00000000 */  nop
    /* 3D58C 8004CD8C 04002019 */  blez       $t1, .L8004CDA0
    /* 3D590 8004CD90 01004226 */   addiu     $v0, $s2, 0x1
    /* 3D594 8004CD94 80100200 */  sll        $v0, $v0, 2
    /* 3D598 8004CD98 69330108 */  j          .L8004CDA4
    /* 3D59C 8004CD9C 21185400 */   addu      $v1, $v0, $s4
  .L8004CDA0:
    /* 3D5A0 8004CDA0 21187402 */  addu       $v1, $s3, $s4
  .L8004CDA4:
    /* 3D5A4 8004CDA4 2801A98F */  lw         $t1, 0x128($sp)
    /* 3D5A8 8004CDA8 80101000 */  sll        $v0, $s0, 2
    /* 3D5AC 8004CDAC 21204900 */  addu       $a0, $v0, $t1
    /* 3D5B0 8004CDB0 8800828C */  lw         $v0, 0x88($a0)
    /* 3D5B4 8004CDB4 00000000 */  nop
    /* 3D5B8 8004CDB8 000062AC */  sw         $v0, 0x0($v1)
    /* 3D5BC 8004CDBC 80100700 */  sll        $v0, $a3, 2
    /* 3D5C0 8004CDC0 21A84900 */  addu       $s5, $v0, $t1
    /* 3D5C4 8004CDC4 A000A28E */  lw         $v0, 0xA0($s5)
    /* 3D5C8 8004CDC8 00000000 */  nop
    /* 3D5CC 8004CDCC 10004230 */  andi       $v0, $v0, 0x10
    /* 3D5D0 8004CDD0 06004014 */  bnez       $v0, .L8004CDEC
    /* 3D5D4 8004CDD4 00000000 */   nop
    /* 3D5D8 8004CDD8 A000828C */  lw         $v0, 0xA0($a0)
    /* 3D5DC 8004CDDC 00000000 */  nop
    /* 3D5E0 8004CDE0 10004230 */  andi       $v0, $v0, 0x10
    /* 3D5E4 8004CDE4 8D004010 */  beqz       $v0, .L8004D01C
    /* 3D5E8 8004CDE8 00000000 */   nop
  .L8004CDEC:
    /* 3D5EC 8004CDEC 2120E002 */  addu       $a0, $s7, $zero
    /* 3D5F0 8004CDF0 0680063C */  lui        $a2, %hi(D_80067EAC)
    /* 3D5F4 8004CDF4 AC7EC624 */  addiu      $a2, $a2, %lo(D_80067EAC)
    /* 3D5F8 8004CDF8 40280700 */  sll        $a1, $a3, 1
    /* 3D5FC 8004CDFC 2128A700 */  addu       $a1, $a1, $a3
    /* 3D600 8004CE00 0680023C */  lui        $v0, %hi(D_80066F00)
    /* 3D604 8004CE04 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* 3D608 8004CE08 4001A98F */  lw         $t1, 0x140($sp)
    /* 3D60C 8004CE0C 80280500 */  sll        $a1, $a1, 2
    /* 3D610 8004CE10 4801A8AF */  sw         $t0, 0x148($sp)
    /* 3D614 8004CE14 21104900 */  addu       $v0, $v0, $t1
    /* 3D618 8004CE18 806F000C */  jal        func_8001BE00
    /* 3D61C 8004CE1C 21284500 */   addu      $a1, $v0, $a1
    /* 3D620 8004CE20 2120C002 */  addu       $a0, $s6, $zero
    /* 3D624 8004CE24 0680063C */  lui        $a2, %hi(D_80067EAC)
    /* 3D628 8004CE28 AC7EC624 */  addiu      $a2, $a2, %lo(D_80067EAC)
    /* 3D62C 8004CE2C 40281000 */  sll        $a1, $s0, 1
    /* 3D630 8004CE30 2128B000 */  addu       $a1, $a1, $s0
    /* 3D634 8004CE34 0680023C */  lui        $v0, %hi(D_80066F00)
    /* 3D638 8004CE38 006F428C */  lw         $v0, %lo(D_80066F00)($v0)
    /* 3D63C 8004CE3C 4001A98F */  lw         $t1, 0x140($sp)
    /* 3D640 8004CE40 80280500 */  sll        $a1, $a1, 2
    /* 3D644 8004CE44 21104900 */  addu       $v0, $v0, $t1
    /* 3D648 8004CE48 806F000C */  jal        func_8001BE00
    /* 3D64C 8004CE4C 21284500 */   addu      $a1, $v0, $a1
    /* 3D650 8004CE50 0680043C */  lui        $a0, %hi(D_80067E98)
    /* 3D654 8004CE54 987E8424 */  addiu      $a0, $a0, %lo(D_80067E98)
    /* 3D658 8004CE58 2128E002 */  addu       $a1, $s7, $zero
    /* 3D65C 8004CE5C 696E000C */  jal        func_8001B9A4
    /* 3D660 8004CE60 2130E002 */   addu      $a2, $s7, $zero
    /* 3D664 8004CE64 0680043C */  lui        $a0, %hi(D_80067E98)
    /* 3D668 8004CE68 987E8424 */  addiu      $a0, $a0, %lo(D_80067E98)
    /* 3D66C 8004CE6C 2128C002 */  addu       $a1, $s6, $zero
    /* 3D670 8004CE70 696E000C */  jal        func_8001B9A4
    /* 3D674 8004CE74 2130C002 */   addu      $a2, $s6, $zero
    /* 3D678 8004CE78 C800A38F */  lw         $v1, 0xC8($sp)
    /* 3D67C 8004CE7C DC00A28F */  lw         $v0, 0xDC($sp)
    /* 3D680 8004CE80 CC00A78F */  lw         $a3, 0xCC($sp)
    /* 3D684 8004CE84 00FF6524 */  addiu      $a1, $v1, -0x100
    /* 3D688 8004CE88 23104700 */  subu       $v0, $v0, $a3
    /* 3D68C 8004CE8C 18004500 */  mult       $v0, $a1
    /* 3D690 8004CE90 D800A28F */  lw         $v0, 0xD8($sp)
    /* 3D694 8004CE94 12200000 */  mflo       $a0
    /* 3D698 8004CE98 23186200 */  subu       $v1, $v1, $v0
    /* 3D69C 8004CE9C 00000000 */  nop
    /* 3D6A0 8004CEA0 1A008300 */  div        $zero, $a0, $v1
    /* 3D6A4 8004CEA4 02006014 */  bnez       $v1, .L8004CEB0
    /* 3D6A8 8004CEA8 00000000 */   nop
    /* 3D6AC 8004CEAC 0D000700 */  break      7
  .L8004CEB0:
    /* 3D6B0 8004CEB0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D6B4 8004CEB4 04006114 */  bne        $v1, $at, .L8004CEC8
    /* 3D6B8 8004CEB8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D6BC 8004CEBC 02008114 */  bne        $a0, $at, .L8004CEC8
    /* 3D6C0 8004CEC0 00000000 */   nop
    /* 3D6C4 8004CEC4 0D000600 */  break      6
  .L8004CEC8:
    /* 3D6C8 8004CEC8 12300000 */  mflo       $a2
    /* 3D6CC 8004CECC E000A28F */  lw         $v0, 0xE0($sp)
    /* 3D6D0 8004CED0 D000A48F */  lw         $a0, 0xD0($sp)
    /* 3D6D4 8004CED4 00000000 */  nop
    /* 3D6D8 8004CED8 23104400 */  subu       $v0, $v0, $a0
    /* 3D6DC 8004CEDC 18004500 */  mult       $v0, $a1
    /* 3D6E0 8004CEE0 12100000 */  mflo       $v0
    /* 3D6E4 8004CEE4 00000000 */  nop
    /* 3D6E8 8004CEE8 00000000 */  nop
    /* 3D6EC 8004CEEC 1A004300 */  div        $zero, $v0, $v1
    /* 3D6F0 8004CEF0 02006014 */  bnez       $v1, .L8004CEFC
    /* 3D6F4 8004CEF4 00000000 */   nop
    /* 3D6F8 8004CEF8 0D000700 */  break      7
  .L8004CEFC:
    /* 3D6FC 8004CEFC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D700 8004CF00 04006114 */  bne        $v1, $at, .L8004CF14
    /* 3D704 8004CF04 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D708 8004CF08 02004114 */  bne        $v0, $at, .L8004CF14
    /* 3D70C 8004CF0C 00000000 */   nop
    /* 3D710 8004CF10 0D000600 */  break      6
  .L8004CF14:
    /* 3D714 8004CF14 12180000 */  mflo       $v1
    /* 3D718 8004CF18 4801A88F */  lw         $t0, 0x148($sp)
    /* 3D71C 8004CF1C 2138E600 */  addu       $a3, $a3, $a2
    /* 3D720 8004CF20 80100700 */  sll        $v0, $a3, 2
    /* 3D724 8004CF24 21104700 */  addu       $v0, $v0, $a3
    /* 3D728 8004CF28 21208300 */  addu       $a0, $a0, $v1
    /* 3D72C 8004CF2C 00190200 */  sll        $v1, $v0, 4
    /* 3D730 8004CF30 21104300 */  addu       $v0, $v0, $v1
    /* 3D734 8004CF34 80100200 */  sll        $v0, $v0, 2
    /* 3D738 8004CF38 21104700 */  addu       $v0, $v0, $a3
    /* 3D73C 8004CF3C 02004104 */  bgez       $v0, .L8004CF48
    /* 3D740 8004CF40 00000000 */   nop
    /* 3D744 8004CF44 FF004224 */  addiu      $v0, $v0, 0xFF
  .L8004CF48:
    /* 3D748 8004CF48 03120200 */  sra        $v0, $v0, 8
    /* 3D74C 8004CF4C 00010324 */  addiu      $v1, $zero, 0x100
    /* 3D750 8004CF50 23386200 */  subu       $a3, $v1, $v0
    /* 3D754 8004CF54 0004E228 */  slti       $v0, $a3, 0x400
    /* 3D758 8004CF58 03004014 */  bnez       $v0, .L8004CF68
    /* 3D75C 8004CF5C 00FCE228 */   slti      $v0, $a3, -0x400
    /* 3D760 8004CF60 FF030724 */  addiu      $a3, $zero, 0x3FF
    /* 3D764 8004CF64 00FCE228 */  slti       $v0, $a3, -0x400
  .L8004CF68:
    /* 3D768 8004CF68 02004010 */  beqz       $v0, .L8004CF74
    /* 3D76C 8004CF6C C0100400 */   sll       $v0, $a0, 3
    /* 3D770 8004CF70 00FC0724 */  addiu      $a3, $zero, -0x400
  .L8004CF74:
    /* 3D774 8004CF74 21104400 */  addu       $v0, $v0, $a0
    /* 3D778 8004CF78 C0100200 */  sll        $v0, $v0, 3
    /* 3D77C 8004CF7C 23104400 */  subu       $v0, $v0, $a0
    /* 3D780 8004CF80 80180200 */  sll        $v1, $v0, 2
    /* 3D784 8004CF84 23106200 */  subu       $v0, $v1, $v0
    /* 3D788 8004CF88 02004104 */  bgez       $v0, .L8004CF94
    /* 3D78C 8004CF8C 00000000 */   nop
    /* 3D790 8004CF90 FF004224 */  addiu      $v0, $v0, 0xFF
  .L8004CF94:
    /* 3D794 8004CF94 03120200 */  sra        $v0, $v0, 8
    /* 3D798 8004CF98 78000324 */  addiu      $v1, $zero, 0x78
    /* 3D79C 8004CF9C 23206200 */  subu       $a0, $v1, $v0
    /* 3D7A0 8004CFA0 00048228 */  slti       $v0, $a0, 0x400
    /* 3D7A4 8004CFA4 03004014 */  bnez       $v0, .L8004CFB4
    /* 3D7A8 8004CFA8 00FC8228 */   slti      $v0, $a0, -0x400
    /* 3D7AC 8004CFAC FF030424 */  addiu      $a0, $zero, 0x3FF
    /* 3D7B0 8004CFB0 00FC8228 */  slti       $v0, $a0, -0x400
  .L8004CFB4:
    /* 3D7B4 8004CFB4 02004010 */  beqz       $v0, .L8004CFC0
    /* 3D7B8 8004CFB8 00000000 */   nop
    /* 3D7BC 8004CFBC 00FC0424 */  addiu      $a0, $zero, -0x400
  .L8004CFC0:
    /* 3D7C0 8004CFC0 A000A28E */  lw         $v0, 0xA0($s5)
    /* 3D7C4 8004CFC4 00000000 */  nop
    /* 3D7C8 8004CFC8 10004230 */  andi       $v0, $v0, 0x10
    /* 3D7CC 8004CFCC 07004010 */  beqz       $v0, .L8004CFEC
    /* 3D7D0 8004CFD0 00000000 */   nop
    /* 3D7D4 8004CFD4 0001A98F */  lw         $t1, 0x100($sp)
    /* 3D7D8 8004CFD8 00000000 */  nop
    /* 3D7DC 8004CFDC 07002005 */  bltz       $t1, .L8004CFFC
    /* 3D7E0 8004CFE0 01004226 */   addiu     $v0, $s2, 0x1
    /* 3D7E4 8004CFE4 03340108 */  j          .L8004D00C
    /* 3D7E8 8004CFE8 21287402 */   addu      $a1, $s3, $s4
  .L8004CFEC:
    /* 3D7EC 8004CFEC 0001A98F */  lw         $t1, 0x100($sp)
    /* 3D7F0 8004CFF0 00000000 */  nop
    /* 3D7F4 8004CFF4 04002019 */  blez       $t1, .L8004D008
    /* 3D7F8 8004CFF8 01004226 */   addiu     $v0, $s2, 0x1
  .L8004CFFC:
    /* 3D7FC 8004CFFC 80100200 */  sll        $v0, $v0, 2
    /* 3D800 8004D000 03340108 */  j          .L8004D00C
    /* 3D804 8004D004 21285400 */   addu      $a1, $v0, $s4
  .L8004D008:
    /* 3D808 8004D008 21287402 */  addu       $a1, $s3, $s4
  .L8004D00C:
    /* 3D80C 8004D00C 001C0400 */  sll        $v1, $a0, 16
    /* 3D810 8004D010 FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* 3D814 8004D014 21186200 */  addu       $v1, $v1, $v0
    /* 3D818 8004D018 0000A3AC */  sw         $v1, 0x0($a1)
  .L8004D01C:
    /* 3D81C 8004D01C 08007326 */  addiu      $s3, $s3, 0x8
    /* 3D820 8004D020 01003126 */  addiu      $s1, $s1, 0x1
    /* 3D824 8004D024 2A102802 */  slt        $v0, $s1, $t0
    /* 3D828 8004D028 39FF4014 */  bnez       $v0, .L8004CD10
    /* 3D82C 8004D02C 02005226 */   addiu     $s2, $s2, 0x2
  .L8004D030:
    /* 3D830 8004D030 1000A38F */  lw         $v1, 0x10($sp)
    /* 3D834 8004D034 00000000 */  nop
    /* 3D838 8004D038 00506228 */  slti       $v0, $v1, 0x5000
    /* 3D83C 8004D03C 06004014 */  bnez       $v0, .L8004D058
    /* 3D840 8004D040 00406228 */   slti      $v0, $v1, 0x4000
    /* 3D844 8004D044 FF0F0224 */  addiu      $v0, $zero, 0xFFF
    /* 3D848 8004D048 0780013C */  lui        $at, %hi(D_80068C0E)
    /* 3D84C 8004D04C 0E8C22A4 */  sh         $v0, %lo(D_80068C0E)($at)
    /* 3D850 8004D050 1E340108 */  j          .L8004D078
    /* 3D854 8004D054 00000000 */   nop
  .L8004D058:
    /* 3D858 8004D058 05004014 */  bnez       $v0, .L8004D070
    /* 3D85C 8004D05C 00C06224 */   addiu     $v0, $v1, -0x4000
    /* 3D860 8004D060 0780013C */  lui        $at, %hi(D_80068C0E)
    /* 3D864 8004D064 0E8C22A4 */  sh         $v0, %lo(D_80068C0E)($at)
    /* 3D868 8004D068 1E340108 */  j          .L8004D078
    /* 3D86C 8004D06C 00000000 */   nop
  .L8004D070:
    /* 3D870 8004D070 0780013C */  lui        $at, %hi(D_80068C0E)
    /* 3D874 8004D074 0E8C20A4 */  sh         $zero, %lo(D_80068C0E)($at)
  .L8004D078:
    /* 3D878 8004D078 F800A48F */  lw         $a0, 0xF8($sp)
    /* 3D87C 8004D07C B4A5000C */  jal        func_800296D0
    /* 3D880 8004D080 00000000 */   nop
  .L8004D084:
    /* 3D884 8004D084 F800A98F */  lw         $t1, 0xF8($sp)
    /* 3D888 8004D088 1000A28F */  lw         $v0, 0x10($sp)
    /* 3D88C 8004D08C FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 3D890 8004D090 00504228 */  slti       $v0, $v0, 0x5000
    /* 3D894 8004D094 3EFE4014 */  bnez       $v0, .L8004C990
    /* 3D898 8004D098 F800A9AF */   sw        $t1, 0xF8($sp)
    /* 3D89C 8004D09C 41FE201D */  bgtz       $t1, .L8004C9A4
    /* 3D8A0 8004D0A0 00041524 */   addiu     $s5, $zero, 0x400
  .L8004D0A4:
    /* 3D8A4 8004D0A4 4001A98F */  lw         $t1, 0x140($sp)
  .L8004D0A8:
    /* 3D8A8 8004D0A8 00000000 */  nop
    /* 3D8AC 8004D0AC 44002925 */  addiu      $t1, $t1, 0x44
  .L8004D0B0:
    /* 3D8B0 8004D0B0 4001A9AF */  sw         $t1, 0x140($sp)
    /* 3D8B4 8004D0B4 E800A98F */  lw         $t1, 0xE8($sp)
    /* 3D8B8 8004D0B8 0680023C */  lui        $v0, %hi(D_80066FA8)
    /* 3D8BC 8004D0BC A86F428C */  lw         $v0, %lo(D_80066FA8)($v0)
    /* 3D8C0 8004D0C0 01002925 */  addiu      $t1, $t1, 0x1
    /* 3D8C4 8004D0C4 2A102201 */  slt        $v0, $t1, $v0
    /* 3D8C8 8004D0C8 7CFD4014 */  bnez       $v0, .L8004C6BC
    /* 3D8CC 8004D0CC E800A9AF */   sw        $t1, 0xE8($sp)
  .L8004D0D0:
    /* 3D8D0 8004D0D0 7401BF8F */  lw         $ra, 0x174($sp)
    /* 3D8D4 8004D0D4 7001BE8F */  lw         $fp, 0x170($sp)
    /* 3D8D8 8004D0D8 6C01B78F */  lw         $s7, 0x16C($sp)
    /* 3D8DC 8004D0DC 6801B68F */  lw         $s6, 0x168($sp)
    /* 3D8E0 8004D0E0 6401B58F */  lw         $s5, 0x164($sp)
    /* 3D8E4 8004D0E4 6001B48F */  lw         $s4, 0x160($sp)
    /* 3D8E8 8004D0E8 5C01B38F */  lw         $s3, 0x15C($sp)
    /* 3D8EC 8004D0EC 5801B28F */  lw         $s2, 0x158($sp)
    /* 3D8F0 8004D0F0 5401B18F */  lw         $s1, 0x154($sp)
    /* 3D8F4 8004D0F4 5001B08F */  lw         $s0, 0x150($sp)
    /* 3D8F8 8004D0F8 7801BD27 */  addiu      $sp, $sp, 0x178
    /* 3D8FC 8004D0FC 0800E003 */  jr         $ra
    /* 3D900 8004D100 00000000 */   nop
endlabel func_8004C66C
