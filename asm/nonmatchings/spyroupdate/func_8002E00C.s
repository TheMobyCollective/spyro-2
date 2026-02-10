.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002E00C, 0x2B0

glabel func_8002E00C
    /* 1E80C 8002E00C 0780023C */  lui        $v0, %hi(D_8006A0F6)
    /* 1E810 8002E010 F6A04290 */  lbu        $v0, %lo(D_8006A0F6)($v0)
    /* 1E814 8002E014 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 1E818 8002E018 6800B0AF */  sw         $s0, 0x68($sp)
    /* 1E81C 8002E01C 21808000 */  addu       $s0, $a0, $zero
    /* 1E820 8002E020 7800BFAF */  sw         $ra, 0x78($sp)
    /* 1E824 8002E024 7400B3AF */  sw         $s3, 0x74($sp)
    /* 1E828 8002E028 7000B2AF */  sw         $s2, 0x70($sp)
    /* 1E82C 8002E02C 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 1E830 8002E030 10004010 */  beqz       $v0, .L8002E074
    /* 1E834 8002E034 1000A0AF */   sw        $zero, 0x10($sp)
    /* 1E838 8002E038 886E000C */  jal        func_8001BA20
    /* 1E83C 8002E03C 21280000 */   addu      $a1, $zero, $zero
    /* 1E840 8002E040 21284000 */  addu       $a1, $v0, $zero
    /* 1E844 8002E044 0800048E */  lw         $a0, 0x8($s0)
    /* 1E848 8002E048 2E6D000C */  jal        func_8001B4B8
    /* 1E84C 8002E04C 01000624 */   addiu     $a2, $zero, 0x1
    /* 1E850 8002E050 01000624 */  addiu      $a2, $zero, 0x1
    /* 1E854 8002E054 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1E858 8002E058 0000048E */  lw         $a0, 0x0($s0)
    /* 1E85C 8002E05C 0400058E */  lw         $a1, 0x4($s0)
    /* 1E860 8002E060 23200400 */  negu       $a0, $a0
    /* 1E864 8002E064 2E6D000C */  jal        func_8001B4B8
    /* 1E868 8002E068 23280500 */   negu      $a1, $a1
    /* 1E86C 8002E06C 24B80008 */  j          .L8002E090
    /* 1E870 8002E070 1800A2AF */   sw        $v0, 0x18($sp)
  .L8002E074:
    /* 1E874 8002E074 0780023C */  lui        $v0, %hi(D_8006A058)
    /* 1E878 8002E078 58A0428C */  lw         $v0, %lo(D_8006A058)($v0)
    /* 1E87C 8002E07C 0780033C */  lui        $v1, %hi(D_8006A05C)
    /* 1E880 8002E080 5CA0638C */  lw         $v1, %lo(D_8006A05C)($v1)
    /* 1E884 8002E084 00044224 */  addiu      $v0, $v0, 0x400
    /* 1E888 8002E088 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1E88C 8002E08C 1800A3AF */  sw         $v1, 0x18($sp)
  .L8002E090:
    /* 1E890 8002E090 0780133C */  lui        $s3, %hi(D_8006A054)
    /* 1E894 8002E094 54A07326 */  addiu      $s3, $s3, %lo(D_8006A054)
    /* 1E898 8002E098 1000A28F */  lw         $v0, 0x10($sp)
    /* 1E89C 8002E09C 0000698E */  lw         $t1, 0x0($s3)
    /* 1E8A0 8002E0A0 00000000 */  nop
    /* 1E8A4 8002E0A4 23104900 */  subu       $v0, $v0, $t1
    /* 1E8A8 8002E0A8 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1E8AC 8002E0AC 01086228 */  slti       $v0, $v1, 0x801
    /* 1E8B0 8002E0B0 03004014 */  bnez       $v0, .L8002E0C0
    /* 1E8B4 8002E0B4 1000A3AF */   sw        $v1, 0x10($sp)
    /* 1E8B8 8002E0B8 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E8BC 8002E0BC 1000A2AF */  sw         $v0, 0x10($sp)
  .L8002E0C0:
    /* 1E8C0 8002E0C0 0400688E */  lw         $t0, 0x4($s3)
    /* 1E8C4 8002E0C4 1400A28F */  lw         $v0, 0x14($sp)
    /* 1E8C8 8002E0C8 00040325 */  addiu      $v1, $t0, 0x400
    /* 1E8CC 8002E0CC 23104300 */  subu       $v0, $v0, $v1
    /* 1E8D0 8002E0D0 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1E8D4 8002E0D4 01086228 */  slti       $v0, $v1, 0x801
    /* 1E8D8 8002E0D8 03004014 */  bnez       $v0, .L8002E0E8
    /* 1E8DC 8002E0DC 1400A3AF */   sw        $v1, 0x14($sp)
    /* 1E8E0 8002E0E0 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E8E4 8002E0E4 1400A2AF */  sw         $v0, 0x14($sp)
  .L8002E0E8:
    /* 1E8E8 8002E0E8 1800A28F */  lw         $v0, 0x18($sp)
    /* 1E8EC 8002E0EC 0800678E */  lw         $a3, 0x8($s3)
    /* 1E8F0 8002E0F0 00000000 */  nop
    /* 1E8F4 8002E0F4 23104700 */  subu       $v0, $v0, $a3
    /* 1E8F8 8002E0F8 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1E8FC 8002E0FC 01086228 */  slti       $v0, $v1, 0x801
    /* 1E900 8002E100 03004014 */  bnez       $v0, .L8002E110
    /* 1E904 8002E104 1800A3AF */   sw        $v1, 0x18($sp)
    /* 1E908 8002E108 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E90C 8002E10C 1800A2AF */  sw         $v0, 0x18($sp)
  .L8002E110:
    /* 1E910 8002E110 1000A38F */  lw         $v1, 0x10($sp)
    /* 1E914 8002E114 0780053C */  lui        $a1, %hi(D_8006A060)
    /* 1E918 8002E118 60A0A58C */  lw         $a1, %lo(D_8006A060)($a1)
    /* 1E91C 8002E11C 1400A48F */  lw         $a0, 0x14($sp)
    /* 1E920 8002E120 0780063C */  lui        $a2, %hi(D_8006A064)
    /* 1E924 8002E124 64A0C68C */  lw         $a2, %lo(D_8006A064)($a2)
    /* 1E928 8002E128 80180300 */  sll        $v1, $v1, 2
    /* 1E92C 8002E12C 03190300 */  sra        $v1, $v1, 4
    /* 1E930 8002E130 00110500 */  sll        $v0, $a1, 4
    /* 1E934 8002E134 83110200 */  sra        $v0, $v0, 6
    /* 1E938 8002E138 23186200 */  subu       $v1, $v1, $v0
    /* 1E93C 8002E13C 2128A300 */  addu       $a1, $a1, $v1
    /* 1E940 8002E140 80200400 */  sll        $a0, $a0, 2
    /* 1E944 8002E144 03210400 */  sra        $a0, $a0, 4
    /* 1E948 8002E148 00110600 */  sll        $v0, $a2, 4
    /* 1E94C 8002E14C 83110200 */  sra        $v0, $v0, 6
    /* 1E950 8002E150 23208200 */  subu       $a0, $a0, $v0
    /* 1E954 8002E154 2130C400 */  addu       $a2, $a2, $a0
    /* 1E958 8002E158 0780013C */  lui        $at, %hi(D_8006A060)
    /* 1E95C 8002E15C 60A025AC */  sw         $a1, %lo(D_8006A060)($at)
    /* 1E960 8002E160 83280500 */  sra        $a1, $a1, 2
    /* 1E964 8002E164 0780013C */  lui        $at, %hi(D_8006A064)
    /* 1E968 8002E168 64A026AC */  sw         $a2, %lo(D_8006A064)($at)
    /* 1E96C 8002E16C 83300600 */  sra        $a2, $a2, 2
    /* 1E970 8002E170 1000A5AF */  sw         $a1, 0x10($sp)
    /* 1E974 8002E174 21282501 */  addu       $a1, $t1, $a1
    /* 1E978 8002E178 1800A38F */  lw         $v1, 0x18($sp)
    /* 1E97C 8002E17C 0780043C */  lui        $a0, %hi(D_8006A068)
    /* 1E980 8002E180 68A0848C */  lw         $a0, %lo(D_8006A068)($a0)
    /* 1E984 8002E184 FF0FA530 */  andi       $a1, $a1, 0xFFF
    /* 1E988 8002E188 1400A6AF */  sw         $a2, 0x14($sp)
    /* 1E98C 8002E18C 80180300 */  sll        $v1, $v1, 2
    /* 1E990 8002E190 03190300 */  sra        $v1, $v1, 4
    /* 1E994 8002E194 00110400 */  sll        $v0, $a0, 4
    /* 1E998 8002E198 83110200 */  sra        $v0, $v0, 6
    /* 1E99C 8002E19C 23186200 */  subu       $v1, $v1, $v0
    /* 1E9A0 8002E1A0 21208300 */  addu       $a0, $a0, $v1
    /* 1E9A4 8002E1A4 0780013C */  lui        $at, %hi(D_8006A068)
    /* 1E9A8 8002E1A8 68A024AC */  sw         $a0, %lo(D_8006A068)($at)
    /* 1E9AC 8002E1AC 83200400 */  sra        $a0, $a0, 2
    /* 1E9B0 8002E1B0 0108A228 */  slti       $v0, $a1, 0x801
    /* 1E9B4 8002E1B4 1800A4AF */  sw         $a0, 0x18($sp)
    /* 1E9B8 8002E1B8 03004014 */  bnez       $v0, .L8002E1C8
    /* 1E9BC 8002E1BC 000065AE */   sw        $a1, 0x0($s3)
    /* 1E9C0 8002E1C0 00F0A224 */  addiu      $v0, $a1, -0x1000
    /* 1E9C4 8002E1C4 000062AE */  sw         $v0, 0x0($s3)
  .L8002E1C8:
    /* 1E9C8 8002E1C8 21100601 */  addu       $v0, $t0, $a2
    /* 1E9CC 8002E1CC FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1E9D0 8002E1D0 01086228 */  slti       $v0, $v1, 0x801
    /* 1E9D4 8002E1D4 03004014 */  bnez       $v0, .L8002E1E4
    /* 1E9D8 8002E1D8 040063AE */   sw        $v1, 0x4($s3)
    /* 1E9DC 8002E1DC 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E9E0 8002E1E0 040062AE */  sw         $v0, 0x4($s3)
  .L8002E1E4:
    /* 1E9E4 8002E1E4 2110E400 */  addu       $v0, $a3, $a0
    /* 1E9E8 8002E1E8 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1E9EC 8002E1EC 01086228 */  slti       $v0, $v1, 0x801
    /* 1E9F0 8002E1F0 03004014 */  bnez       $v0, .L8002E200
    /* 1E9F4 8002E1F4 080063AE */   sw        $v1, 0x8($s3)
    /* 1E9F8 8002E1F8 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E9FC 8002E1FC 080062AE */  sw         $v0, 0x8($s3)
  .L8002E200:
    /* 1EA00 8002E200 3000B027 */  addiu      $s0, $sp, 0x30
    /* 1EA04 8002E204 21200002 */  addu       $a0, $s0, $zero
    /* 1EA08 8002E208 2000B127 */  addiu      $s1, $sp, 0x20
    /* 1EA0C 8002E20C 21282002 */  addu       $a1, $s1, $zero
    /* 1EA10 8002E210 64010224 */  addiu      $v0, $zero, 0x164
    /* 1EA14 8002E214 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1EA18 8002E218 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1EA1C 8002E21C 6C6F000C */  jal        func_8001BDB0
    /* 1EA20 8002E220 2400A0AF */   sw        $zero, 0x24($sp)
    /* 1EA24 8002E224 CCFF6426 */  addiu      $a0, $s3, -0x34
    /* 1EA28 8002E228 21282002 */  addu       $a1, $s1, $zero
    /* 1EA2C 8002E22C 696E000C */  jal        func_8001B9A4
    /* 1EA30 8002E230 21302002 */   addu      $a2, $s1, $zero
    /* 1EA34 8002E234 4000A427 */  addiu      $a0, $sp, 0x40
    /* 1EA38 8002E238 4800B227 */  addiu      $s2, $sp, 0x48
    /* 1EA3C 8002E23C 21284002 */  addu       $a1, $s2, $zero
    /* 1EA40 8002E240 0000628E */  lw         $v0, 0x0($s3)
    /* 1EA44 8002E244 21300000 */  addu       $a2, $zero, $zero
    /* 1EA48 8002E248 03110200 */  sra        $v0, $v0, 4
    /* 1EA4C 8002E24C 4000A2A3 */  sb         $v0, 0x40($sp)
    /* 1EA50 8002E250 0400628E */  lw         $v0, 0x4($s3)
    /* 1EA54 8002E254 0800638E */  lw         $v1, 0x8($s3)
    /* 1EA58 8002E258 03110200 */  sra        $v0, $v0, 4
    /* 1EA5C 8002E25C 03190300 */  sra        $v1, $v1, 4
    /* 1EA60 8002E260 4100A2A3 */  sb         $v0, 0x41($sp)
    /* 1EA64 8002E264 B26D000C */  jal        func_8001B6C8
    /* 1EA68 8002E268 4200A3A3 */   sb        $v1, 0x42($sp)
    /* 1EA6C 8002E26C 21204002 */  addu       $a0, $s2, $zero
    /* 1EA70 8002E270 21280002 */  addu       $a1, $s0, $zero
    /* 1EA74 8002E274 696E000C */  jal        func_8001B9A4
    /* 1EA78 8002E278 21300002 */   addu      $a2, $s0, $zero
    /* 1EA7C 8002E27C 21200002 */  addu       $a0, $s0, $zero
    /* 1EA80 8002E280 21280002 */  addu       $a1, $s0, $zero
    /* 1EA84 8002E284 806F000C */  jal        func_8001BE00
    /* 1EA88 8002E288 21302002 */   addu      $a2, $s1, $zero
    /* 1EA8C 8002E28C 9CFF6426 */  addiu      $a0, $s3, -0x64
    /* 1EA90 8002E290 21288000 */  addu       $a1, $a0, $zero
    /* 1EA94 8002E294 806F000C */  jal        func_8001BE00
    /* 1EA98 8002E298 21300002 */   addu      $a2, $s0, $zero
    /* 1EA9C 8002E29C 7800BF8F */  lw         $ra, 0x78($sp)
    /* 1EAA0 8002E2A0 7400B38F */  lw         $s3, 0x74($sp)
    /* 1EAA4 8002E2A4 7000B28F */  lw         $s2, 0x70($sp)
    /* 1EAA8 8002E2A8 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 1EAAC 8002E2AC 6800B08F */  lw         $s0, 0x68($sp)
    /* 1EAB0 8002E2B0 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 1EAB4 8002E2B4 0800E003 */  jr         $ra
    /* 1EAB8 8002E2B8 00000000 */   nop
endlabel func_8002E00C
