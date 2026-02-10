.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002C0F4, 0xB94

glabel func_8002C0F4
    /* 1C8F4 8002C0F4 68FFBD27 */  addiu      $sp, $sp, -0x98
    /* 1C8F8 8002C0F8 7800B2AF */  sw         $s2, 0x78($sp)
    /* 1C8FC 8002C0FC 0780123C */  lui        $s2, %hi(D_8006A0B4)
    /* 1C900 8002C100 B4A05226 */  addiu      $s2, $s2, %lo(D_8006A0B4)
    /* 1C904 8002C104 1C004426 */  addiu      $a0, $s2, 0x1C
    /* 1C908 8002C108 9400BFAF */  sw         $ra, 0x94($sp)
    /* 1C90C 8002C10C 9000BEAF */  sw         $fp, 0x90($sp)
    /* 1C910 8002C110 8C00B7AF */  sw         $s7, 0x8C($sp)
    /* 1C914 8002C114 8800B6AF */  sw         $s6, 0x88($sp)
    /* 1C918 8002C118 8400B5AF */  sw         $s5, 0x84($sp)
    /* 1C91C 8002C11C 8000B4AF */  sw         $s4, 0x80($sp)
    /* 1C920 8002C120 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 1C924 8002C124 7400B1AF */  sw         $s1, 0x74($sp)
    /* 1C928 8002C128 7000B0AF */  sw         $s0, 0x70($sp)
    /* 1C92C 8002C12C 0000438E */  lw         $v1, 0x0($s2)
    /* 1C930 8002C130 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1C934 8002C134 0780013C */  lui        $at, %hi(D_8006A100)
    /* 1C938 8002C138 00A122AC */  sw         $v0, %lo(D_8006A100)($at)
    /* 1C93C 8002C13C 0780013C */  lui        $at, %hi(D_8006A104)
    /* 1C940 8002C140 04A122AC */  sw         $v0, %lo(D_8006A104)($at)
    /* 1C944 8002C144 0780013C */  lui        $at, %hi(D_8006A108)
    /* 1C948 8002C148 08A122AC */  sw         $v0, %lo(D_8006A108)($at)
    /* 1C94C 8002C14C 0780013C */  lui        $at, %hi(D_8006A0F6)
    /* 1C950 8002C150 F6A020A0 */  sb         $zero, %lo(D_8006A0F6)($at)
    /* 1C954 8002C154 0780013C */  lui        $at, %hi(D_8006A130)
    /* 1C958 8002C158 30A120AC */  sw         $zero, %lo(D_8006A130)($at)
    /* 1C95C 8002C15C 01006324 */  addiu      $v1, $v1, 0x1
    /* 1C960 8002C160 686F000C */  jal        func_8001BDA0
    /* 1C964 8002C164 000043AE */   sw        $v1, 0x0($s2)
    /* 1C968 8002C168 686F000C */  jal        func_8001BDA0
    /* 1C96C 8002C16C 04004426 */   addiu     $a0, $s2, 0x4
    /* 1C970 8002C170 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* 1C974 8002C174 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* 1C978 8002C178 0780033C */  lui        $v1, %hi(D_8006A12C)
    /* 1C97C 8002C17C 2CA1638C */  lw         $v1, %lo(D_8006A12C)($v1)
    /* 1C980 8002C180 00000000 */  nop
    /* 1C984 8002C184 23104300 */  subu       $v0, $v0, $v1
    /* 1C988 8002C188 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1C98C 8002C18C 01086228 */  slti       $v0, $v1, 0x801
    /* 1C990 8002C190 02004014 */  bnez       $v0, .L8002C19C
    /* 1C994 8002C194 00000000 */   nop
    /* 1C998 8002C198 00F06324 */  addiu      $v1, $v1, -0x1000
  .L8002C19C:
    /* 1C99C 8002C19C 02006104 */  bgez       $v1, .L8002C1A8
    /* 1C9A0 8002C1A0 21106000 */   addu      $v0, $v1, $zero
    /* 1C9A4 8002C1A4 23100200 */  negu       $v0, $v0
  .L8002C1A8:
    /* 1C9A8 8002C1A8 41004228 */  slti       $v0, $v0, 0x41
    /* 1C9AC 8002C1AC 03004014 */  bnez       $v0, .L8002C1BC
    /* 1C9B0 8002C1B0 21F00000 */   addu      $fp, $zero, $zero
    /* 1C9B4 8002C1B4 0780013C */  lui        $at, %hi(D_8006A0F9)
    /* 1C9B8 8002C1B8 F9A020A0 */  sb         $zero, %lo(D_8006A0F9)($at)
  .L8002C1BC:
    /* 1C9BC 8002C1BC 21B80000 */  addu       $s7, $zero, $zero
    /* 1C9C0 8002C1C0 4800A427 */  addiu      $a0, $sp, 0x48
    /* 1C9C4 8002C1C4 3CFF5126 */  addiu      $s1, $s2, -0xC4
    /* 1C9C8 8002C1C8 6C6F000C */  jal        func_8001BDB0
    /* 1C9CC 8002C1CC 21282002 */   addu      $a1, $s1, $zero
    /* 1C9D0 8002C1D0 B8FF5026 */  addiu      $s0, $s2, -0x48
    /* 1C9D4 8002C1D4 21200002 */  addu       $a0, $s0, $zero
    /* 1C9D8 8002C1D8 526F000C */  jal        func_8001BD48
    /* 1C9DC 8002C1DC 06000524 */   addiu     $a1, $zero, 0x6
    /* 1C9E0 8002C1E0 0780023C */  lui        $v0, %hi(D_8006A0F5)
    /* 1C9E4 8002C1E4 F5A04290 */  lbu        $v0, %lo(D_8006A0F5)($v0)
    /* 1C9E8 8002C1E8 00000000 */  nop
    /* 1C9EC 8002C1EC 07004010 */  beqz       $v0, .L8002C20C
    /* 1C9F0 8002C1F0 21980000 */   addu      $s3, $zero, $zero
    /* 1C9F4 8002C1F4 21202002 */  addu       $a0, $s1, $zero
    /* 1C9F8 8002C1F8 21282002 */  addu       $a1, $s1, $zero
    /* 1C9FC 8002C1FC 736F000C */  jal        func_8001BDCC
    /* 1CA00 8002C200 21300002 */   addu      $a2, $s0, $zero
    /* 1CA04 8002C204 B8B20008 */  j          .L8002CAE0
    /* 1CA08 8002C208 00000000 */   nop
  .L8002C20C:
    /* 1CA0C 8002C20C 21200002 */  addu       $a0, $s0, $zero
    /* 1CA10 8002C210 886E000C */  jal        func_8001BA20
    /* 1CA14 8002C214 01000524 */   addiu     $a1, $zero, 0x1
    /* 1CA18 8002C218 0780033C */  lui        $v1, %hi(D_8006A260)
    /* 1CA1C 8002C21C 60A2638C */  lw         $v1, %lo(D_8006A260)($v1)
    /* 1CA20 8002C220 00000000 */  nop
    /* 1CA24 8002C224 F0FF6324 */  addiu      $v1, $v1, -0x10
    /* 1CA28 8002C228 1A004300 */  div        $zero, $v0, $v1
    /* 1CA2C 8002C22C 02006014 */  bnez       $v1, .L8002C238
    /* 1CA30 8002C230 00000000 */   nop
    /* 1CA34 8002C234 0D000700 */  break      7
  .L8002C238:
    /* 1CA38 8002C238 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1CA3C 8002C23C 04006114 */  bne        $v1, $at, .L8002C250
    /* 1CA40 8002C240 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1CA44 8002C244 02004114 */  bne        $v0, $at, .L8002C250
    /* 1CA48 8002C248 00000000 */   nop
    /* 1CA4C 8002C24C 0D000600 */  break      6
  .L8002C250:
    /* 1CA50 8002C250 12100000 */  mflo       $v0
    /* 1CA54 8002C254 00000000 */  nop
    /* 1CA58 8002C258 01005624 */  addiu      $s6, $v0, 0x1
    /* 1CA5C 8002C25C 0200C22A */  slti       $v0, $s6, 0x2
    /* 1CA60 8002C260 30004014 */  bnez       $v0, .L8002C324
    /* 1CA64 8002C264 2A10F602 */   slt       $v0, $s7, $s6
    /* 1CA68 8002C268 B8FF448E */  lw         $a0, -0x48($s2)
    /* 1CA6C 8002C26C 00000000 */  nop
    /* 1CA70 8002C270 1A009600 */  div        $zero, $a0, $s6
    /* 1CA74 8002C274 0200C016 */  bnez       $s6, .L8002C280
    /* 1CA78 8002C278 00000000 */   nop
    /* 1CA7C 8002C27C 0D000700 */  break      7
  .L8002C280:
    /* 1CA80 8002C280 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1CA84 8002C284 0400C116 */  bne        $s6, $at, .L8002C298
    /* 1CA88 8002C288 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1CA8C 8002C28C 02008114 */  bne        $a0, $at, .L8002C298
    /* 1CA90 8002C290 00000000 */   nop
    /* 1CA94 8002C294 0D000600 */  break      6
  .L8002C298:
    /* 1CA98 8002C298 12200000 */  mflo       $a0
    /* 1CA9C 8002C29C 0780033C */  lui        $v1, %hi(D_8006A070)
    /* 1CAA0 8002C2A0 70A0638C */  lw         $v1, %lo(D_8006A070)($v1)
    /* 1CAA4 8002C2A4 00000000 */  nop
    /* 1CAA8 8002C2A8 1A007600 */  div        $zero, $v1, $s6
    /* 1CAAC 8002C2AC 0200C016 */  bnez       $s6, .L8002C2B8
    /* 1CAB0 8002C2B0 00000000 */   nop
    /* 1CAB4 8002C2B4 0D000700 */  break      7
  .L8002C2B8:
    /* 1CAB8 8002C2B8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1CABC 8002C2BC 0400C116 */  bne        $s6, $at, .L8002C2D0
    /* 1CAC0 8002C2C0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1CAC4 8002C2C4 02006114 */  bne        $v1, $at, .L8002C2D0
    /* 1CAC8 8002C2C8 00000000 */   nop
    /* 1CACC 8002C2CC 0D000600 */  break      6
  .L8002C2D0:
    /* 1CAD0 8002C2D0 12180000 */  mflo       $v1
    /* 1CAD4 8002C2D4 0780023C */  lui        $v0, %hi(D_8006A074)
    /* 1CAD8 8002C2D8 74A0428C */  lw         $v0, %lo(D_8006A074)($v0)
    /* 1CADC 8002C2DC 00000000 */  nop
    /* 1CAE0 8002C2E0 1A005600 */  div        $zero, $v0, $s6
    /* 1CAE4 8002C2E4 0200C016 */  bnez       $s6, .L8002C2F0
    /* 1CAE8 8002C2E8 00000000 */   nop
    /* 1CAEC 8002C2EC 0D000700 */  break      7
  .L8002C2F0:
    /* 1CAF0 8002C2F0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1CAF4 8002C2F4 0400C116 */  bne        $s6, $at, .L8002C308
    /* 1CAF8 8002C2F8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1CAFC 8002C2FC 02004114 */  bne        $v0, $at, .L8002C308
    /* 1CB00 8002C300 00000000 */   nop
    /* 1CB04 8002C304 0D000600 */  break      6
  .L8002C308:
    /* 1CB08 8002C308 12100000 */  mflo       $v0
    /* 1CB0C 8002C30C B8FF44AE */  sw         $a0, -0x48($s2)
    /* 1CB10 8002C310 0780013C */  lui        $at, %hi(D_8006A070)
    /* 1CB14 8002C314 70A023AC */  sw         $v1, %lo(D_8006A070)($at)
    /* 1CB18 8002C318 0780013C */  lui        $at, %hi(D_8006A074)
    /* 1CB1C 8002C31C 74A022AC */  sw         $v0, %lo(D_8006A074)($at)
    /* 1CB20 8002C320 2A10F602 */  slt        $v0, $s7, $s6
  .L8002C324:
    /* 1CB24 8002C324 CF014010 */  beqz       $v0, .L8002CA64
    /* 1CB28 8002C328 6800A0AF */   sw        $zero, 0x68($sp)
    /* 1CB2C 8002C32C 3800B427 */  addiu      $s4, $sp, 0x38
    /* 1CB30 8002C330 0780153C */  lui        $s5, %hi(D_8006AB88)
    /* 1CB34 8002C334 88ABB526 */  addiu      $s5, $s5, %lo(D_8006AB88)
    /* 1CB38 8002C338 4C005226 */  addiu      $s2, $s2, 0x4C
  .L8002C33C:
    /* 1CB3C 8002C33C 21202002 */  addu       $a0, $s1, $zero
    /* 1CB40 8002C340 21282002 */  addu       $a1, $s1, $zero
    /* 1CB44 8002C344 736F000C */  jal        func_8001BDCC
    /* 1CB48 8002C348 7C002626 */   addiu     $a2, $s1, 0x7C
    /* 1CB4C 8002C34C 21980000 */  addu       $s3, $zero, $zero
    /* 1CB50 8002C350 3800A427 */  addiu      $a0, $sp, 0x38
  .L8002C354:
    /* 1CB54 8002C354 6C6F000C */  jal        func_8001BDB0
    /* 1CB58 8002C358 21282002 */   addu      $a1, $s1, $zero
    /* 1CB5C 8002C35C 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 1CB60 8002C360 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 1CB64 8002C364 07000224 */  addiu      $v0, $zero, 0x7
    /* 1CB68 8002C368 42006210 */  beq        $v1, $v0, .L8002C474
    /* 1CB6C 8002C36C 08006228 */   slti      $v0, $v1, 0x8
    /* 1CB70 8002C370 05004010 */  beqz       $v0, .L8002C388
    /* 1CB74 8002C374 04000224 */   addiu     $v0, $zero, 0x4
    /* 1CB78 8002C378 08006210 */  beq        $v1, $v0, .L8002C39C
    /* 1CB7C 8002C37C 21202002 */   addu      $a0, $s1, $zero
    /* 1CB80 8002C380 3BB10008 */  j          .L8002C4EC
    /* 1CB84 8002C384 21300000 */   addu      $a2, $zero, $zero
  .L8002C388:
    /* 1CB88 8002C388 09000224 */  addiu      $v0, $zero, 0x9
    /* 1CB8C 8002C38C 25006210 */  beq        $v1, $v0, .L8002C424
    /* 1CB90 8002C390 0C000224 */   addiu     $v0, $zero, 0xC
    /* 1CB94 8002C394 54006214 */  bne        $v1, $v0, .L8002C4E8
    /* 1CB98 8002C398 21202002 */   addu      $a0, $s1, $zero
  .L8002C39C:
    /* 1CB9C 8002C39C 01000624 */  addiu      $a2, $zero, 0x1
    /* 1CBA0 8002C3A0 0780053C */  lui        $a1, %hi(D_8006A260)
    /* 1CBA4 8002C3A4 60A2A58C */  lw         $a1, %lo(D_8006A260)($a1)
    /* 1CBA8 8002C3A8 3801228E */  lw         $v0, 0x138($s1)
    /* 1CBAC 8002C3AC 24002726 */  addiu      $a3, $s1, 0x24
    /* 1CBB0 8002C3B0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1CBB4 8002C3B4 5701010C */  jal        func_8004055C
    /* 1CBB8 8002C3B8 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1CBBC 8002C3BC 21804000 */  addu       $s0, $v0, $zero
    /* 1CBC0 8002C3C0 52000012 */  beqz       $s0, .L8002C50C
    /* 1CBC4 8002C3C4 00000000 */   nop
    /* 1CBC8 8002C3C8 2400228E */  lw         $v0, 0x24($s1)
    /* 1CBCC 8002C3CC 00000000 */  nop
    /* 1CBD0 8002C3D0 06004230 */  andi       $v0, $v0, 0x6
    /* 1CBD4 8002C3D4 0A004010 */  beqz       $v0, .L8002C400
    /* 1CBD8 8002C3D8 21202002 */   addu      $a0, $s1, $zero
    /* 1CBDC 8002C3DC 02000624 */  addiu      $a2, $zero, 0x2
    /* 1CBE0 8002C3E0 0780053C */  lui        $a1, %hi(D_8006A260)
    /* 1CBE4 8002C3E4 60A2A58C */  lw         $a1, %lo(D_8006A260)($a1)
    /* 1CBE8 8002C3E8 21380000 */  addu       $a3, $zero, $zero
    /* 1CBEC 8002C3EC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1CBF0 8002C3F0 5701010C */  jal        func_8004055C
    /* 1CBF4 8002C3F4 1400A0AF */   sw        $zero, 0x14($sp)
    /* 1CBF8 8002C3F8 02B10008 */  j          .L8002C408
    /* 1CBFC 8002C3FC 78000224 */   addiu     $v0, $zero, 0x78
  .L8002C400:
    /* 1CC00 8002C400 21800000 */  addu       $s0, $zero, $zero
    /* 1CC04 8002C404 78000224 */  addiu      $v0, $zero, 0x78
  .L8002C408:
    /* 1CC08 8002C408 0780013C */  lui        $at, %hi(D_80068398)
    /* 1CC0C 8002C40C 988322AC */  sw         $v0, %lo(D_80068398)($at)
    /* 1CC10 8002C410 0F000224 */  addiu      $v0, $zero, 0xF
    /* 1CC14 8002C414 0780013C */  lui        $at, %hi(D_80068394)
    /* 1CC18 8002C418 948322AC */  sw         $v0, %lo(D_80068394)($at)
    /* 1CC1C 8002C41C 43B10008 */  j          .L8002C50C
    /* 1CC20 8002C420 00000000 */   nop
  .L8002C424:
    /* 1CC24 8002C424 21202002 */  addu       $a0, $s1, $zero
    /* 1CC28 8002C428 01000624 */  addiu      $a2, $zero, 0x1
    /* 1CC2C 8002C42C 0780053C */  lui        $a1, %hi(D_8006A260)
    /* 1CC30 8002C430 60A2A58C */  lw         $a1, %lo(D_8006A260)($a1)
    /* 1CC34 8002C434 0780023C */  lui        $v0, %hi(D_8006A128)
    /* 1CC38 8002C438 28A1428C */  lw         $v0, %lo(D_8006A128)($v0)
    /* 1CC3C 8002C43C 24002726 */  addiu      $a3, $s1, 0x24
    /* 1CC40 8002C440 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1CC44 8002C444 5701010C */  jal        func_8004055C
    /* 1CC48 8002C448 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1CC4C 8002C44C 21804000 */  addu       $s0, $v0, $zero
    /* 1CC50 8002C450 23000012 */  beqz       $s0, .L8002C4E0
    /* 1CC54 8002C454 00000000 */   nop
    /* 1CC58 8002C458 2400228E */  lw         $v0, 0x24($s1)
    /* 1CC5C 8002C45C 00000000 */  nop
    /* 1CC60 8002C460 00404230 */  andi       $v0, $v0, 0x4000
    /* 1CC64 8002C464 15004014 */  bnez       $v0, .L8002C4BC
    /* 1CC68 8002C468 21202002 */   addu      $a0, $s1, $zero
    /* 1CC6C 8002C46C 43B10008 */  j          .L8002C50C
    /* 1CC70 8002C470 21800000 */   addu      $s0, $zero, $zero
  .L8002C474:
    /* 1CC74 8002C474 21202002 */  addu       $a0, $s1, $zero
    /* 1CC78 8002C478 01000624 */  addiu      $a2, $zero, 0x1
    /* 1CC7C 8002C47C 0780053C */  lui        $a1, %hi(D_8006A260)
    /* 1CC80 8002C480 60A2A58C */  lw         $a1, %lo(D_8006A260)($a1)
    /* 1CC84 8002C484 0780023C */  lui        $v0, %hi(D_8006A128)
    /* 1CC88 8002C488 28A1428C */  lw         $v0, %lo(D_8006A128)($v0)
    /* 1CC8C 8002C48C 24002726 */  addiu      $a3, $s1, 0x24
    /* 1CC90 8002C490 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1CC94 8002C494 5701010C */  jal        func_8004055C
    /* 1CC98 8002C498 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1CC9C 8002C49C 21804000 */  addu       $s0, $v0, $zero
    /* 1CCA0 8002C4A0 0F000012 */  beqz       $s0, .L8002C4E0
    /* 1CCA4 8002C4A4 1A000224 */   addiu     $v0, $zero, 0x1A
    /* 1CCA8 8002C4A8 0780033C */  lui        $v1, %hi(D_8006A040)
    /* 1CCAC 8002C4AC 40A0638C */  lw         $v1, %lo(D_8006A040)($v1)
    /* 1CCB0 8002C4B0 00000000 */  nop
    /* 1CCB4 8002C4B4 0A006210 */  beq        $v1, $v0, .L8002C4E0
    /* 1CCB8 8002C4B8 21202002 */   addu      $a0, $s1, $zero
  .L8002C4BC:
    /* 1CCBC 8002C4BC 02000624 */  addiu      $a2, $zero, 0x2
    /* 1CCC0 8002C4C0 0780053C */  lui        $a1, %hi(D_8006A260)
    /* 1CCC4 8002C4C4 60A2A58C */  lw         $a1, %lo(D_8006A260)($a1)
    /* 1CCC8 8002C4C8 21380000 */  addu       $a3, $zero, $zero
    /* 1CCCC 8002C4CC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1CCD0 8002C4D0 5701010C */  jal        func_8004055C
    /* 1CCD4 8002C4D4 1400A0AF */   sw        $zero, 0x14($sp)
    /* 1CCD8 8002C4D8 43B10008 */  j          .L8002C50C
    /* 1CCDC 8002C4DC 00000000 */   nop
  .L8002C4E0:
    /* 1CCE0 8002C4E0 43B10008 */  j          .L8002C50C
    /* 1CCE4 8002C4E4 21800000 */   addu      $s0, $zero, $zero
  .L8002C4E8:
    /* 1CCE8 8002C4E8 21300000 */  addu       $a2, $zero, $zero
  .L8002C4EC:
    /* 1CCEC 8002C4EC 0780053C */  lui        $a1, %hi(D_8006A260)
    /* 1CCF0 8002C4F0 60A2A58C */  lw         $a1, %lo(D_8006A260)($a1)
    /* 1CCF4 8002C4F4 3801228E */  lw         $v0, 0x138($s1)
    /* 1CCF8 8002C4F8 24002726 */  addiu      $a3, $s1, 0x24
    /* 1CCFC 8002C4FC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1CD00 8002C500 5701010C */  jal        func_8004055C
    /* 1CD04 8002C504 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1CD08 8002C508 21804000 */  addu       $s0, $v0, $zero
  .L8002C50C:
    /* 1CD0C 8002C50C 0780023C */  lui        $v0, %hi(D_8006A014)
    /* 1CD10 8002C510 14A0428C */  lw         $v0, %lo(D_8006A014)($v0)
    /* 1CD14 8002C514 00000000 */  nop
    /* 1CD18 8002C518 16004010 */  beqz       $v0, .L8002C574
    /* 1CD1C 8002C51C 00000000 */   nop
    /* 1CD20 8002C520 0780023C */  lui        $v0, %hi(D_8006A264)
    /* 1CD24 8002C524 64A2428C */  lw         $v0, %lo(D_8006A264)($v0)
    /* 1CD28 8002C528 00000000 */  nop
    /* 1CD2C 8002C52C 11004104 */  bgez       $v0, .L8002C574
    /* 1CD30 8002C530 00000000 */   nop
    /* 1CD34 8002C534 0780063C */  lui        $a2, %hi(D_8006ABA0)
    /* 1CD38 8002C538 A0ABC68C */  lw         $a2, %lo(D_8006ABA0)($a2)
    /* 1CD3C 8002C53C 00000000 */  nop
    /* 1CD40 8002C540 0C00C010 */  beqz       $a2, .L8002C574
    /* 1CD44 8002C544 1800A427 */   addiu     $a0, $sp, 0x18
    /* 1CD48 8002C548 0780083C */  lui        $t0, %hi(D_8006A014)
    /* 1CD4C 8002C54C 14A00825 */  addiu      $t0, $t0, %lo(D_8006A014)
    /* 1CD50 8002C550 DCFF0525 */  addiu      $a1, $t0, -0x24
    /* 1CD54 8002C554 806F000C */  jal        func_8001BE00
    /* 1CD58 8002C558 0C00C624 */   addiu     $a2, $a2, 0xC
    /* 1CD5C 8002C55C 1800A48F */  lw         $a0, 0x18($sp)
    /* 1CD60 8002C560 1C00A58F */  lw         $a1, 0x1C($sp)
    /* 1CD64 8002C564 2E6D000C */  jal        func_8001B4B8
    /* 1CD68 8002C568 21300000 */   addu      $a2, $zero, $zero
    /* 1CD6C 8002C56C 0780013C */  lui        $at, %hi(D_8006A264)
    /* 1CD70 8002C570 64A222AC */  sw         $v0, %lo(D_8006A264)($at)
  .L8002C574:
    /* 1CD74 8002C574 1A000012 */  beqz       $s0, .L8002C5E0
    /* 1CD78 8002C578 21202002 */   addu      $a0, $s1, $zero
    /* 1CD7C 8002C57C 0780013C */  lui        $at, %hi(D_8006A130)
    /* 1CD80 8002C580 30A130AC */  sw         $s0, %lo(D_8006A130)($at)
    /* 1CD84 8002C584 0780053C */  lui        $a1, %hi(D_8006AB7C)
    /* 1CD88 8002C588 7CABA524 */  addiu      $a1, $a1, %lo(D_8006AB7C)
    /* 1CD8C 8002C58C 6C6F000C */  jal        func_8001BDB0
    /* 1CD90 8002C590 21202002 */   addu      $a0, $s1, $zero
    /* 1CD94 8002C594 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1CD98 8002C598 21282002 */  addu       $a1, $s1, $zero
    /* 1CD9C 8002C59C 806F000C */  jal        func_8001BE00
    /* 1CDA0 8002C5A0 21308002 */   addu      $a2, $s4, $zero
    /* 1CDA4 8002C5A4 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1CDA8 8002C5A8 886E000C */  jal        func_8001BA20
    /* 1CDAC 8002C5AC 01000524 */   addiu     $a1, $zero, 0x1
    /* 1CDB0 8002C5B0 21284000 */  addu       $a1, $v0, $zero
    /* 1CDB4 8002C5B4 4101A228 */  slti       $v0, $a1, 0x141
    /* 1CDB8 8002C5B8 09004014 */  bnez       $v0, .L8002C5E0
    /* 1CDBC 8002C5BC 21202002 */   addu      $a0, $s1, $zero
    /* 1CDC0 8002C5C0 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1CDC4 8002C5C4 316F000C */  jal        func_8001BCC4
    /* 1CDC8 8002C5C8 40010624 */   addiu     $a2, $zero, 0x140
    /* 1CDCC 8002C5CC 21202002 */  addu       $a0, $s1, $zero
    /* 1CDD0 8002C5D0 21288002 */  addu       $a1, $s4, $zero
    /* 1CDD4 8002C5D4 736F000C */  jal        func_8001BDCC
    /* 1CDD8 8002C5D8 1800A627 */   addiu     $a2, $sp, 0x18
    /* 1CDDC 8002C5DC 21202002 */  addu       $a0, $s1, $zero
  .L8002C5E0:
    /* 1CDE0 8002C5E0 21300000 */  addu       $a2, $zero, $zero
    /* 1CDE4 8002C5E4 0780053C */  lui        $a1, %hi(D_8006A260)
    /* 1CDE8 8002C5E8 60A2A58C */  lw         $a1, %lo(D_8006A260)($a1)
    /* 1CDEC 8002C5EC 3801228E */  lw         $v0, 0x138($s1)
    /* 1CDF0 8002C5F0 24002726 */  addiu      $a3, $s1, 0x24
    /* 1CDF4 8002C5F4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1CDF8 8002C5F8 19F7000C */  jal        func_8003DC64
    /* 1CDFC 8002C5FC 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1CE00 8002C600 05004014 */  bnez       $v0, .L8002C618
    /* 1CE04 8002C604 C8002426 */   addiu     $a0, $s1, 0xC8
    /* 1CE08 8002C608 82000012 */  beqz       $s0, .L8002C814
    /* 1CE0C 8002C60C 0600622A */   slti      $v0, $s3, 0x6
    /* 1CE10 8002C610 01B20008 */  j          .L8002C804
    /* 1CE14 8002C614 01007326 */   addiu     $s3, $s3, 0x1
  .L8002C618:
    /* 1CE18 8002C618 6C6F000C */  jal        func_8001BDB0
    /* 1CE1C 8002C61C 2128A002 */   addu      $a1, $s5, $zero
    /* 1CE20 8002C620 0780023C */  lui        $v0, %hi(D_8006A048)
    /* 1CE24 8002C624 48A0428C */  lw         $v0, %lo(D_8006A048)($v0)
    /* 1CE28 8002C628 00000000 */  nop
    /* 1CE2C 8002C62C FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 1CE30 8002C630 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1CE34 8002C634 27004010 */  beqz       $v0, .L8002C6D4
    /* 1CE38 8002C638 1800A427 */   addiu     $a0, $sp, 0x18
    /* 1CE3C 8002C63C E8FFA526 */  addiu      $a1, $s5, -0x18
    /* 1CE40 8002C640 806F000C */  jal        func_8001BE00
    /* 1CE44 8002C644 21302002 */   addu      $a2, $s1, $zero
    /* 1CE48 8002C648 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1CE4C 8002C64C CF6E000C */  jal        func_8001BB3C
    /* 1CE50 8002C650 00010524 */   addiu     $a1, $zero, 0x100
    /* 1CE54 8002C654 2000A28F */  lw         $v0, 0x20($sp)
    /* 1CE58 8002C658 00000000 */  nop
    /* 1CE5C 8002C65C 38FF4228 */  slti       $v0, $v0, -0xC8
    /* 1CE60 8002C660 1C004014 */  bnez       $v0, .L8002C6D4
    /* 1CE64 8002C664 2800B027 */   addiu     $s0, $sp, 0x28
    /* 1CE68 8002C668 21200002 */  addu       $a0, $s0, $zero
    /* 1CE6C 8002C66C 6C6F000C */  jal        func_8001BDB0
    /* 1CE70 8002C670 7C002526 */   addiu     $a1, $s1, 0x7C
    /* 1CE74 8002C674 21200002 */  addu       $a0, $s0, $zero
    /* 1CE78 8002C678 CF6E000C */  jal        func_8001BB3C
    /* 1CE7C 8002C67C 00010524 */   addiu     $a1, $zero, 0x100
    /* 1CE80 8002C680 1800A38F */  lw         $v1, 0x18($sp)
    /* 1CE84 8002C684 2800A28F */  lw         $v0, 0x28($sp)
    /* 1CE88 8002C688 00000000 */  nop
    /* 1CE8C 8002C68C 18006200 */  mult       $v1, $v0
    /* 1CE90 8002C690 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 1CE94 8002C694 12280000 */  mflo       $a1
    /* 1CE98 8002C698 2C00A28F */  lw         $v0, 0x2C($sp)
    /* 1CE9C 8002C69C 00000000 */  nop
    /* 1CEA0 8002C6A0 18006200 */  mult       $v1, $v0
    /* 1CEA4 8002C6A4 2000A38F */  lw         $v1, 0x20($sp)
    /* 1CEA8 8002C6A8 12200000 */  mflo       $a0
    /* 1CEAC 8002C6AC 3000A28F */  lw         $v0, 0x30($sp)
    /* 1CEB0 8002C6B0 00000000 */  nop
    /* 1CEB4 8002C6B4 18006200 */  mult       $v1, $v0
    /* 1CEB8 8002C6B8 2110A400 */  addu       $v0, $a1, $a0
    /* 1CEBC 8002C6BC 12180000 */  mflo       $v1
    /* 1CEC0 8002C6C0 21104300 */  addu       $v0, $v0, $v1
    /* 1CEC4 8002C6C4 032A0200 */  sra        $a1, $v0, 8
    /* 1CEC8 8002C6C8 E100A228 */  slti       $v0, $a1, 0xE1
    /* 1CECC 8002C6CC 03004014 */  bnez       $v0, .L8002C6DC
    /* 1CED0 8002C6D0 00000000 */   nop
  .L8002C6D4:
    /* 1CED4 8002C6D4 0780013C */  lui        $at, %hi(D_8006A0B4)
    /* 1CED8 8002C6D8 B4A020AC */  sw         $zero, %lo(D_8006A0B4)($at)
  .L8002C6DC:
    /* 1CEDC 8002C6DC 0000428E */  lw         $v0, 0x0($s2)
    /* 1CEE0 8002C6E0 3F000324 */  addiu      $v1, $zero, 0x3F
    /* 1CEE4 8002C6E4 3F004230 */  andi       $v0, $v0, 0x3F
    /* 1CEE8 8002C6E8 09004314 */  bne        $v0, $v1, .L8002C710
    /* 1CEEC 8002C6EC 2120A002 */   addu      $a0, $s5, $zero
    /* 1CEF0 8002C6F0 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1CEF4 8002C6F4 0780053C */  lui        $a1, %hi(D_8006AB94)
    /* 1CEF8 8002C6F8 94ABA524 */  addiu      $a1, $a1, %lo(D_8006AB94)
    /* 1CEFC 8002C6FC 0000A28C */  lw         $v0, 0x0($a1)
    /* 1CF00 8002C700 F4FFA524 */  addiu      $a1, $a1, -0xC
    /* 1CF04 8002C704 6C6F000C */  jal        func_8001BDB0
    /* 1CF08 8002C708 000042AE */   sw        $v0, 0x0($s2)
    /* 1CF0C 8002C70C 2120A002 */  addu       $a0, $s5, $zero
  .L8002C710:
    /* 1CF10 8002C710 886E000C */  jal        func_8001BA20
    /* 1CF14 8002C714 21280000 */   addu      $a1, $zero, $zero
    /* 1CF18 8002C718 21204000 */  addu       $a0, $v0, $zero
    /* 1CF1C 8002C71C 0780053C */  lui        $a1, %hi(D_8006AB90)
    /* 1CF20 8002C720 90ABA58C */  lw         $a1, %lo(D_8006AB90)($a1)
    /* 1CF24 8002C724 2E6D000C */  jal        func_8001B4B8
    /* 1CF28 8002C728 01000624 */   addiu     $a2, $zero, 0x1
    /* 1CF2C 8002C72C FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1CF30 8002C730 01086228 */  slti       $v0, $v1, 0x801
    /* 1CF34 8002C734 02004014 */  bnez       $v0, .L8002C740
    /* 1CF38 8002C738 00000000 */   nop
    /* 1CF3C 8002C73C 00F86324 */  addiu      $v1, $v1, -0x800
  .L8002C740:
    /* 1CF40 8002C740 02006104 */  bgez       $v1, .L8002C74C
    /* 1CF44 8002C744 21106000 */   addu      $v0, $v1, $zero
    /* 1CF48 8002C748 23100200 */  negu       $v0, $v0
  .L8002C74C:
    /* 1CF4C 8002C74C 00024228 */  slti       $v0, $v0, 0x200
    /* 1CF50 8002C750 16004010 */  beqz       $v0, .L8002C7AC
    /* 1CF54 8002C754 00000000 */   nop
    /* 1CF58 8002C758 0000A48E */  lw         $a0, 0x0($s5)
    /* 1CF5C 8002C75C 0780053C */  lui        $a1, %hi(D_8006AB8C)
    /* 1CF60 8002C760 8CABA58C */  lw         $a1, %lo(D_8006AB8C)($a1)
    /* 1CF64 8002C764 2E6D000C */  jal        func_8001B4B8
    /* 1CF68 8002C768 01000624 */   addiu     $a2, $zero, 0x1
    /* 1CF6C 8002C76C 5CFF438E */  lw         $v1, -0xA4($s2)
    /* 1CF70 8002C770 00000000 */  nop
    /* 1CF74 8002C774 00F86324 */  addiu      $v1, $v1, -0x800
    /* 1CF78 8002C778 23104300 */  subu       $v0, $v0, $v1
    /* 1CF7C 8002C77C FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1CF80 8002C780 01086228 */  slti       $v0, $v1, 0x801
    /* 1CF84 8002C784 03004014 */  bnez       $v0, .L8002C794
    /* 1CF88 8002C788 2A107E00 */   slt       $v0, $v1, $fp
    /* 1CF8C 8002C78C 00F06324 */  addiu      $v1, $v1, -0x1000
    /* 1CF90 8002C790 2A107E00 */  slt        $v0, $v1, $fp
  .L8002C794:
    /* 1CF94 8002C794 02004010 */  beqz       $v0, .L8002C7A0
    /* 1CF98 8002C798 2A10E302 */   slt       $v0, $s7, $v1
    /* 1CF9C 8002C79C 21F06000 */  addu       $fp, $v1, $zero
  .L8002C7A0:
    /* 1CFA0 8002C7A0 02004010 */  beqz       $v0, .L8002C7AC
    /* 1CFA4 8002C7A4 00000000 */   nop
    /* 1CFA8 8002C7A8 21B86000 */  addu       $s7, $v1, $zero
  .L8002C7AC:
    /* 1CFAC 8002C7AC 0780053C */  lui        $a1, %hi(D_8006AB7C)
    /* 1CFB0 8002C7B0 7CABA524 */  addiu      $a1, $a1, %lo(D_8006AB7C)
    /* 1CFB4 8002C7B4 6C6F000C */  jal        func_8001BDB0
    /* 1CFB8 8002C7B8 21202002 */   addu      $a0, $s1, $zero
    /* 1CFBC 8002C7BC 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1CFC0 8002C7C0 21282002 */  addu       $a1, $s1, $zero
    /* 1CFC4 8002C7C4 806F000C */  jal        func_8001BE00
    /* 1CFC8 8002C7C8 21308002 */   addu      $a2, $s4, $zero
    /* 1CFCC 8002C7CC 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1CFD0 8002C7D0 886E000C */  jal        func_8001BA20
    /* 1CFD4 8002C7D4 01000524 */   addiu     $a1, $zero, 0x1
    /* 1CFD8 8002C7D8 21284000 */  addu       $a1, $v0, $zero
    /* 1CFDC 8002C7DC 4101A228 */  slti       $v0, $a1, 0x141
    /* 1CFE0 8002C7E0 07004014 */  bnez       $v0, .L8002C800
    /* 1CFE4 8002C7E4 1800A427 */   addiu     $a0, $sp, 0x18
    /* 1CFE8 8002C7E8 316F000C */  jal        func_8001BCC4
    /* 1CFEC 8002C7EC 40010624 */   addiu     $a2, $zero, 0x140
    /* 1CFF0 8002C7F0 21202002 */  addu       $a0, $s1, $zero
    /* 1CFF4 8002C7F4 21288002 */  addu       $a1, $s4, $zero
    /* 1CFF8 8002C7F8 736F000C */  jal        func_8001BDCC
    /* 1CFFC 8002C7FC 1800A627 */   addiu     $a2, $sp, 0x18
  .L8002C800:
    /* 1D000 8002C800 01007326 */  addiu      $s3, $s3, 0x1
  .L8002C804:
    /* 1D004 8002C804 0600622A */  slti       $v0, $s3, 0x6
    /* 1D008 8002C808 D2FE4014 */  bnez       $v0, .L8002C354
    /* 1D00C 8002C80C 3800A427 */   addiu     $a0, $sp, 0x38
    /* 1D010 8002C810 0600622A */  slti       $v0, $s3, 0x6
  .L8002C814:
    /* 1D014 8002C814 8D004014 */  bnez       $v0, .L8002CA4C
    /* 1D018 8002C818 00000000 */   nop
    /* 1D01C 8002C81C 0780023C */  lui        $v0, %hi(D_8006A130)
    /* 1D020 8002C820 30A1428C */  lw         $v0, %lo(D_8006A130)($v0)
    /* 1D024 8002C824 00000000 */  nop
    /* 1D028 8002C828 88004010 */  beqz       $v0, .L8002CA4C
    /* 1D02C 8002C82C 3800A427 */   addiu     $a0, $sp, 0x38
    /* 1D030 8002C830 21980000 */  addu       $s3, $zero, $zero
  .L8002C834:
    /* 1D034 8002C834 6C6F000C */  jal        func_8001BDB0
    /* 1D038 8002C838 21282002 */   addu      $a1, $s1, $zero
    /* 1D03C 8002C83C 0780053C */  lui        $a1, %hi(D_8006A260)
    /* 1D040 8002C840 60A2A58C */  lw         $a1, %lo(D_8006A260)($a1)
    /* 1D044 8002C844 30F7000C */  jal        func_8003DCC0
    /* 1D048 8002C848 21202002 */   addu      $a0, $s1, $zero
    /* 1D04C 8002C84C 7F004010 */  beqz       $v0, .L8002CA4C
    /* 1D050 8002C850 C8002426 */   addiu     $a0, $s1, 0xC8
    /* 1D054 8002C854 6C6F000C */  jal        func_8001BDB0
    /* 1D058 8002C858 2128A002 */   addu      $a1, $s5, $zero
    /* 1D05C 8002C85C 0780023C */  lui        $v0, %hi(D_8006A048)
    /* 1D060 8002C860 48A0428C */  lw         $v0, %lo(D_8006A048)($v0)
    /* 1D064 8002C864 00000000 */  nop
    /* 1D068 8002C868 FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 1D06C 8002C86C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1D070 8002C870 27004010 */  beqz       $v0, .L8002C910
    /* 1D074 8002C874 1800A427 */   addiu     $a0, $sp, 0x18
    /* 1D078 8002C878 E8FFA526 */  addiu      $a1, $s5, -0x18
    /* 1D07C 8002C87C 806F000C */  jal        func_8001BE00
    /* 1D080 8002C880 21302002 */   addu      $a2, $s1, $zero
    /* 1D084 8002C884 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1D088 8002C888 CF6E000C */  jal        func_8001BB3C
    /* 1D08C 8002C88C 00010524 */   addiu     $a1, $zero, 0x100
    /* 1D090 8002C890 2000A28F */  lw         $v0, 0x20($sp)
    /* 1D094 8002C894 00000000 */  nop
    /* 1D098 8002C898 38FF4228 */  slti       $v0, $v0, -0xC8
    /* 1D09C 8002C89C 1C004014 */  bnez       $v0, .L8002C910
    /* 1D0A0 8002C8A0 2800B027 */   addiu     $s0, $sp, 0x28
    /* 1D0A4 8002C8A4 21200002 */  addu       $a0, $s0, $zero
    /* 1D0A8 8002C8A8 6C6F000C */  jal        func_8001BDB0
    /* 1D0AC 8002C8AC 7C002526 */   addiu     $a1, $s1, 0x7C
    /* 1D0B0 8002C8B0 21200002 */  addu       $a0, $s0, $zero
    /* 1D0B4 8002C8B4 CF6E000C */  jal        func_8001BB3C
    /* 1D0B8 8002C8B8 00010524 */   addiu     $a1, $zero, 0x100
    /* 1D0BC 8002C8BC 1800A38F */  lw         $v1, 0x18($sp)
    /* 1D0C0 8002C8C0 2800A28F */  lw         $v0, 0x28($sp)
    /* 1D0C4 8002C8C4 00000000 */  nop
    /* 1D0C8 8002C8C8 18006200 */  mult       $v1, $v0
    /* 1D0CC 8002C8CC 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 1D0D0 8002C8D0 12280000 */  mflo       $a1
    /* 1D0D4 8002C8D4 2C00A28F */  lw         $v0, 0x2C($sp)
    /* 1D0D8 8002C8D8 00000000 */  nop
    /* 1D0DC 8002C8DC 18006200 */  mult       $v1, $v0
    /* 1D0E0 8002C8E0 2000A38F */  lw         $v1, 0x20($sp)
    /* 1D0E4 8002C8E4 12200000 */  mflo       $a0
    /* 1D0E8 8002C8E8 3000A28F */  lw         $v0, 0x30($sp)
    /* 1D0EC 8002C8EC 00000000 */  nop
    /* 1D0F0 8002C8F0 18006200 */  mult       $v1, $v0
    /* 1D0F4 8002C8F4 2110A400 */  addu       $v0, $a1, $a0
    /* 1D0F8 8002C8F8 12180000 */  mflo       $v1
    /* 1D0FC 8002C8FC 21104300 */  addu       $v0, $v0, $v1
    /* 1D100 8002C900 032A0200 */  sra        $a1, $v0, 8
    /* 1D104 8002C904 E100A228 */  slti       $v0, $a1, 0xE1
    /* 1D108 8002C908 03004014 */  bnez       $v0, .L8002C918
    /* 1D10C 8002C90C 00000000 */   nop
  .L8002C910:
    /* 1D110 8002C910 0780013C */  lui        $at, %hi(D_8006A0B4)
    /* 1D114 8002C914 B4A020AC */  sw         $zero, %lo(D_8006A0B4)($at)
  .L8002C918:
    /* 1D118 8002C918 0000428E */  lw         $v0, 0x0($s2)
    /* 1D11C 8002C91C 3F000324 */  addiu      $v1, $zero, 0x3F
    /* 1D120 8002C920 3F004230 */  andi       $v0, $v0, 0x3F
    /* 1D124 8002C924 09004314 */  bne        $v0, $v1, .L8002C94C
    /* 1D128 8002C928 2120A002 */   addu      $a0, $s5, $zero
    /* 1D12C 8002C92C 0C004426 */  addiu      $a0, $s2, 0xC
    /* 1D130 8002C930 0780053C */  lui        $a1, %hi(D_8006AB94)
    /* 1D134 8002C934 94ABA524 */  addiu      $a1, $a1, %lo(D_8006AB94)
    /* 1D138 8002C938 0000A28C */  lw         $v0, 0x0($a1)
    /* 1D13C 8002C93C F4FFA524 */  addiu      $a1, $a1, -0xC
    /* 1D140 8002C940 6C6F000C */  jal        func_8001BDB0
    /* 1D144 8002C944 000042AE */   sw        $v0, 0x0($s2)
    /* 1D148 8002C948 2120A002 */  addu       $a0, $s5, $zero
  .L8002C94C:
    /* 1D14C 8002C94C 886E000C */  jal        func_8001BA20
    /* 1D150 8002C950 21280000 */   addu      $a1, $zero, $zero
    /* 1D154 8002C954 21204000 */  addu       $a0, $v0, $zero
    /* 1D158 8002C958 0780053C */  lui        $a1, %hi(D_8006AB90)
    /* 1D15C 8002C95C 90ABA58C */  lw         $a1, %lo(D_8006AB90)($a1)
    /* 1D160 8002C960 2E6D000C */  jal        func_8001B4B8
    /* 1D164 8002C964 01000624 */   addiu     $a2, $zero, 0x1
    /* 1D168 8002C968 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1D16C 8002C96C 01086228 */  slti       $v0, $v1, 0x801
    /* 1D170 8002C970 02004014 */  bnez       $v0, .L8002C97C
    /* 1D174 8002C974 00000000 */   nop
    /* 1D178 8002C978 00F86324 */  addiu      $v1, $v1, -0x800
  .L8002C97C:
    /* 1D17C 8002C97C 02006104 */  bgez       $v1, .L8002C988
    /* 1D180 8002C980 21106000 */   addu      $v0, $v1, $zero
    /* 1D184 8002C984 23100200 */  negu       $v0, $v0
  .L8002C988:
    /* 1D188 8002C988 00024228 */  slti       $v0, $v0, 0x200
    /* 1D18C 8002C98C 16004010 */  beqz       $v0, .L8002C9E8
    /* 1D190 8002C990 00000000 */   nop
    /* 1D194 8002C994 0000A48E */  lw         $a0, 0x0($s5)
    /* 1D198 8002C998 0780053C */  lui        $a1, %hi(D_8006AB8C)
    /* 1D19C 8002C99C 8CABA58C */  lw         $a1, %lo(D_8006AB8C)($a1)
    /* 1D1A0 8002C9A0 2E6D000C */  jal        func_8001B4B8
    /* 1D1A4 8002C9A4 01000624 */   addiu     $a2, $zero, 0x1
    /* 1D1A8 8002C9A8 5CFF438E */  lw         $v1, -0xA4($s2)
    /* 1D1AC 8002C9AC 00000000 */  nop
    /* 1D1B0 8002C9B0 00F86324 */  addiu      $v1, $v1, -0x800
    /* 1D1B4 8002C9B4 23104300 */  subu       $v0, $v0, $v1
    /* 1D1B8 8002C9B8 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1D1BC 8002C9BC 01086228 */  slti       $v0, $v1, 0x801
    /* 1D1C0 8002C9C0 03004014 */  bnez       $v0, .L8002C9D0
    /* 1D1C4 8002C9C4 2A107E00 */   slt       $v0, $v1, $fp
    /* 1D1C8 8002C9C8 00F06324 */  addiu      $v1, $v1, -0x1000
    /* 1D1CC 8002C9CC 2A107E00 */  slt        $v0, $v1, $fp
  .L8002C9D0:
    /* 1D1D0 8002C9D0 02004010 */  beqz       $v0, .L8002C9DC
    /* 1D1D4 8002C9D4 2A10E302 */   slt       $v0, $s7, $v1
    /* 1D1D8 8002C9D8 21F06000 */  addu       $fp, $v1, $zero
  .L8002C9DC:
    /* 1D1DC 8002C9DC 02004010 */  beqz       $v0, .L8002C9E8
    /* 1D1E0 8002C9E0 00000000 */   nop
    /* 1D1E4 8002C9E4 21B86000 */  addu       $s7, $v1, $zero
  .L8002C9E8:
    /* 1D1E8 8002C9E8 0780053C */  lui        $a1, %hi(D_8006AB7C)
    /* 1D1EC 8002C9EC 7CABA524 */  addiu      $a1, $a1, %lo(D_8006AB7C)
    /* 1D1F0 8002C9F0 6C6F000C */  jal        func_8001BDB0
    /* 1D1F4 8002C9F4 21202002 */   addu      $a0, $s1, $zero
    /* 1D1F8 8002C9F8 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1D1FC 8002C9FC 21282002 */  addu       $a1, $s1, $zero
    /* 1D200 8002CA00 806F000C */  jal        func_8001BE00
    /* 1D204 8002CA04 21308002 */   addu      $a2, $s4, $zero
    /* 1D208 8002CA08 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1D20C 8002CA0C 886E000C */  jal        func_8001BA20
    /* 1D210 8002CA10 01000524 */   addiu     $a1, $zero, 0x1
    /* 1D214 8002CA14 21284000 */  addu       $a1, $v0, $zero
    /* 1D218 8002CA18 4101A228 */  slti       $v0, $a1, 0x141
    /* 1D21C 8002CA1C 07004014 */  bnez       $v0, .L8002CA3C
    /* 1D220 8002CA20 1800A427 */   addiu     $a0, $sp, 0x18
    /* 1D224 8002CA24 316F000C */  jal        func_8001BCC4
    /* 1D228 8002CA28 40010624 */   addiu     $a2, $zero, 0x140
    /* 1D22C 8002CA2C 21202002 */  addu       $a0, $s1, $zero
    /* 1D230 8002CA30 21288002 */  addu       $a1, $s4, $zero
    /* 1D234 8002CA34 736F000C */  jal        func_8001BDCC
    /* 1D238 8002CA38 1800A627 */   addiu     $a2, $sp, 0x18
  .L8002CA3C:
    /* 1D23C 8002CA3C 01007326 */  addiu      $s3, $s3, 0x1
    /* 1D240 8002CA40 0600622A */  slti       $v0, $s3, 0x6
    /* 1D244 8002CA44 7BFF4014 */  bnez       $v0, .L8002C834
    /* 1D248 8002CA48 3800A427 */   addiu     $a0, $sp, 0x38
  .L8002CA4C:
    /* 1D24C 8002CA4C 6800A88F */  lw         $t0, 0x68($sp)
    /* 1D250 8002CA50 00000000 */  nop
    /* 1D254 8002CA54 01000825 */  addiu      $t0, $t0, 0x1
    /* 1D258 8002CA58 2A101601 */  slt        $v0, $t0, $s6
    /* 1D25C 8002CA5C 37FE4014 */  bnez       $v0, .L8002C33C
    /* 1D260 8002CA60 6800A8AF */   sw        $t0, 0x68($sp)
  .L8002CA64:
    /* 1D264 8002CA64 5800B027 */  addiu      $s0, $sp, 0x58
    /* 1D268 8002CA68 21200002 */  addu       $a0, $s0, $zero
    /* 1D26C 8002CA6C 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 1D270 8002CA70 F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 1D274 8002CA74 21284002 */  addu       $a1, $s2, $zero
    /* 1D278 8002CA78 4800B127 */  addiu      $s1, $sp, 0x48
    /* 1D27C 8002CA7C 806F000C */  jal        func_8001BE00
    /* 1D280 8002CA80 21302002 */   addu      $a2, $s1, $zero
    /* 1D284 8002CA84 21200002 */  addu       $a0, $s0, $zero
    /* 1D288 8002CA88 00100524 */  addiu      $a1, $zero, 0x1000
    /* 1D28C 8002CA8C 316F000C */  jal        func_8001BCC4
    /* 1D290 8002CA90 00110624 */   addiu     $a2, $zero, 0x1100
    /* 1D294 8002CA94 21200002 */  addu       $a0, $s0, $zero
    /* 1D298 8002CA98 21280002 */  addu       $a1, $s0, $zero
    /* 1D29C 8002CA9C 736F000C */  jal        func_8001BDCC
    /* 1D2A0 8002CAA0 21302002 */   addu      $a2, $s1, $zero
    /* 1D2A4 8002CAA4 21202002 */  addu       $a0, $s1, $zero
    /* 1D2A8 8002CAA8 A5F3000C */  jal        func_8003CE94
    /* 1D2AC 8002CAAC 21280002 */   addu      $a1, $s0, $zero
    /* 1D2B0 8002CAB0 09004010 */  beqz       $v0, .L8002CAD8
    /* 1D2B4 8002CAB4 0600622A */   slti      $v0, $s3, 0x6
    /* 1D2B8 8002CAB8 0780023C */  lui        $v0, %hi(D_8006ABA4)
    /* 1D2BC 8002CABC A4AB428C */  lw         $v0, %lo(D_8006ABA4)($v0)
    /* 1D2C0 8002CAC0 00000000 */  nop
    /* 1D2C4 8002CAC4 04004014 */  bnez       $v0, .L8002CAD8
    /* 1D2C8 8002CAC8 0600622A */   slti      $v0, $s3, 0x6
    /* 1D2CC 8002CACC 21204002 */  addu       $a0, $s2, $zero
    /* 1D2D0 8002CAD0 BCB20008 */  j          .L8002CAF0
    /* 1D2D4 8002CAD4 2C018524 */   addiu     $a1, $a0, 0x12C
  .L8002CAD8:
    /* 1D2D8 8002CAD8 07004010 */  beqz       $v0, .L8002CAF8
    /* 1D2DC 8002CADC 00000000 */   nop
  .L8002CAE0:
    /* 1D2E0 8002CAE0 0780043C */  lui        $a0, %hi(D_8006A11C)
    /* 1D2E4 8002CAE4 1CA18424 */  addiu      $a0, $a0, %lo(D_8006A11C)
    /* 1D2E8 8002CAE8 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 1D2EC 8002CAEC F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .L8002CAF0:
    /* 1D2F0 8002CAF0 6C6F000C */  jal        func_8001BDB0
    /* 1D2F4 8002CAF4 00000000 */   nop
  .L8002CAF8:
    /* 1D2F8 8002CAF8 0780103C */  lui        $s0, %hi(D_8006A090)
    /* 1D2FC 8002CAFC 90A01026 */  addiu      $s0, $s0, %lo(D_8006A090)
    /* 1D300 8002CB00 21200002 */  addu       $a0, $s0, $zero
    /* 1D304 8002CB04 60FF0526 */  addiu      $a1, $s0, -0xA0
    /* 1D308 8002CB08 806F000C */  jal        func_8001BE00
    /* 1D30C 8002CB0C 4800A627 */   addiu     $a2, $sp, 0x48
    /* 1D310 8002CB10 21200002 */  addu       $a0, $s0, $zero
    /* 1D314 8002CB14 486F000C */  jal        func_8001BD20
    /* 1D318 8002CB18 06000524 */   addiu     $a1, $zero, 0x6
    /* 1D31C 8002CB1C 0780023C */  lui        $v0, %hi(D_8006A1FC)
    /* 1D320 8002CB20 FCA1428C */  lw         $v0, %lo(D_8006A1FC)($v0)
    /* 1D324 8002CB24 00000000 */  nop
    /* 1D328 8002CB28 08004230 */  andi       $v0, $v0, 0x8
    /* 1D32C 8002CB2C 0A004010 */  beqz       $v0, .L8002CB58
    /* 1D330 8002CB30 1800A427 */   addiu     $a0, $sp, 0x18
    /* 1D334 8002CB34 6C6F000C */  jal        func_8001BDB0
    /* 1D338 8002CB38 7C010526 */   addiu     $a1, $s0, 0x17C
    /* 1D33C 8002CB3C 1800A427 */  addiu      $a0, $sp, 0x18
    /* 1D340 8002CB40 486F000C */  jal        func_8001BD20
    /* 1D344 8002CB44 06000524 */   addiu     $a1, $zero, 0x6
    /* 1D348 8002CB48 21200002 */  addu       $a0, $s0, $zero
    /* 1D34C 8002CB4C 21280002 */  addu       $a1, $s0, $zero
    /* 1D350 8002CB50 806F000C */  jal        func_8001BE00
    /* 1D354 8002CB54 1800A627 */   addiu     $a2, $sp, 0x18
  .L8002CB58:
    /* 1D358 8002CB58 0000078E */  lw         $a3, 0x0($s0)
    /* 1D35C 8002CB5C 0680023C */  lui        $v0, %hi(D_80067018)
    /* 1D360 8002CB60 1870428C */  lw         $v0, %lo(D_80067018)($v0)
    /* 1D364 8002CB64 00000000 */  nop
    /* 1D368 8002CB68 1A00E200 */  div        $zero, $a3, $v0
    /* 1D36C 8002CB6C 02004014 */  bnez       $v0, .L8002CB78
    /* 1D370 8002CB70 00000000 */   nop
    /* 1D374 8002CB74 0D000700 */  break      7
  .L8002CB78:
    /* 1D378 8002CB78 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1D37C 8002CB7C 04004114 */  bne        $v0, $at, .L8002CB90
    /* 1D380 8002CB80 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1D384 8002CB84 0200E114 */  bne        $a3, $at, .L8002CB90
    /* 1D388 8002CB88 00000000 */   nop
    /* 1D38C 8002CB8C 0D000600 */  break      6
  .L8002CB90:
    /* 1D390 8002CB90 12380000 */  mflo       $a3
    /* 1D394 8002CB94 0780063C */  lui        $a2, %hi(D_8006A094)
    /* 1D398 8002CB98 94A0C68C */  lw         $a2, %lo(D_8006A094)($a2)
    /* 1D39C 8002CB9C 00000000 */  nop
    /* 1D3A0 8002CBA0 1A00C200 */  div        $zero, $a2, $v0
    /* 1D3A4 8002CBA4 02004014 */  bnez       $v0, .L8002CBB0
    /* 1D3A8 8002CBA8 00000000 */   nop
    /* 1D3AC 8002CBAC 0D000700 */  break      7
  .L8002CBB0:
    /* 1D3B0 8002CBB0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1D3B4 8002CBB4 04004114 */  bne        $v0, $at, .L8002CBC8
    /* 1D3B8 8002CBB8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1D3BC 8002CBBC 0200C114 */  bne        $a2, $at, .L8002CBC8
    /* 1D3C0 8002CBC0 00000000 */   nop
    /* 1D3C4 8002CBC4 0D000600 */  break      6
  .L8002CBC8:
    /* 1D3C8 8002CBC8 12300000 */  mflo       $a2
    /* 1D3CC 8002CBCC 0780033C */  lui        $v1, %hi(D_8006A098)
    /* 1D3D0 8002CBD0 98A0638C */  lw         $v1, %lo(D_8006A098)($v1)
    /* 1D3D4 8002CBD4 00000000 */  nop
    /* 1D3D8 8002CBD8 1A006200 */  div        $zero, $v1, $v0
    /* 1D3DC 8002CBDC 02004014 */  bnez       $v0, .L8002CBE8
    /* 1D3E0 8002CBE0 00000000 */   nop
    /* 1D3E4 8002CBE4 0D000700 */  break      7
  .L8002CBE8:
    /* 1D3E8 8002CBE8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1D3EC 8002CBEC 04004114 */  bne        $v0, $at, .L8002CC00
    /* 1D3F0 8002CBF0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1D3F4 8002CBF4 02006114 */  bne        $v1, $at, .L8002CC00
    /* 1D3F8 8002CBF8 00000000 */   nop
    /* 1D3FC 8002CBFC 0D000600 */  break      6
  .L8002CC00:
    /* 1D400 8002CC00 12180000 */  mflo       $v1
    /* 1D404 8002CC04 21200002 */  addu       $a0, $s0, $zero
    /* 1D408 8002CC08 000087AC */  sw         $a3, 0x0($a0)
    /* 1D40C 8002CC0C 0780013C */  lui        $at, %hi(D_8006A094)
    /* 1D410 8002CC10 94A026AC */  sw         $a2, %lo(D_8006A094)($at)
    /* 1D414 8002CC14 0780013C */  lui        $at, %hi(D_8006A098)
    /* 1D418 8002CC18 98A023AC */  sw         $v1, %lo(D_8006A098)($at)
    /* 1D41C 8002CC1C 886E000C */  jal        func_8001BA20
    /* 1D420 8002CC20 21280000 */   addu      $a1, $zero, $zero
    /* 1D424 8002CC24 0780013C */  lui        $at, %hi(D_8006A0AC)
    /* 1D428 8002CC28 ACA022AC */  sw         $v0, %lo(D_8006A0AC)($at)
    /* 1D42C 8002CC2C 0900C013 */  beqz       $fp, .L8002CC54
    /* 1D430 8002CC30 00000000 */   nop
    /* 1D434 8002CC34 0700E012 */  beqz       $s7, .L8002CC54
    /* 1D438 8002CC38 01000224 */   addiu     $v0, $zero, 0x1
    /* 1D43C 8002CC3C 0780033C */  lui        $v1, %hi(D_8006A05C)
    /* 1D440 8002CC40 5CA0638C */  lw         $v1, %lo(D_8006A05C)($v1)
    /* 1D444 8002CC44 0780013C */  lui        $at, %hi(D_8006A0F9)
    /* 1D448 8002CC48 F9A022A0 */  sb         $v0, %lo(D_8006A0F9)($at)
    /* 1D44C 8002CC4C 0780013C */  lui        $at, %hi(D_8006A12C)
    /* 1D450 8002CC50 2CA123AC */  sw         $v1, %lo(D_8006A12C)($at)
  .L8002CC54:
    /* 1D454 8002CC54 9400BF8F */  lw         $ra, 0x94($sp)
    /* 1D458 8002CC58 9000BE8F */  lw         $fp, 0x90($sp)
    /* 1D45C 8002CC5C 8C00B78F */  lw         $s7, 0x8C($sp)
    /* 1D460 8002CC60 8800B68F */  lw         $s6, 0x88($sp)
    /* 1D464 8002CC64 8400B58F */  lw         $s5, 0x84($sp)
    /* 1D468 8002CC68 8000B48F */  lw         $s4, 0x80($sp)
    /* 1D46C 8002CC6C 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 1D470 8002CC70 7800B28F */  lw         $s2, 0x78($sp)
    /* 1D474 8002CC74 7400B18F */  lw         $s1, 0x74($sp)
    /* 1D478 8002CC78 7000B08F */  lw         $s0, 0x70($sp)
    /* 1D47C 8002CC7C 9800BD27 */  addiu      $sp, $sp, 0x98
    /* 1D480 8002CC80 0800E003 */  jr         $ra
    /* 1D484 8002CC84 00000000 */   nop
endlabel func_8002C0F4
