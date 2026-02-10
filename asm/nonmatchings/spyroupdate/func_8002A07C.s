.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A07C, 0xE8

glabel func_8002A07C
    /* 1A87C 8002A07C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1A880 8002A080 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1A884 8002A084 0780103C */  lui        $s0, %hi(D_8006A06C)
    /* 1A888 8002A088 6CA01026 */  addiu      $s0, $s0, %lo(D_8006A06C)
    /* 1A88C 8002A08C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1A890 8002A090 686F000C */  jal        func_8001BDA0
    /* 1A894 8002A094 21200002 */   addu      $a0, $s0, $zero
    /* 1A898 8002A098 ABC7000C */  jal        func_80031EAC
    /* 1A89C 8002A09C 00000000 */   nop
    /* 1A8A0 8002A0A0 25C3000C */  jal        func_80030C94
    /* 1A8A4 8002A0A4 00000000 */   nop
    /* 1A8A8 8002A0A8 59A8000C */  jal        func_8002A164
    /* 1A8AC 8002A0AC 00000000 */   nop
    /* 1A8B0 8002A0B0 32A9000C */  jal        func_8002A4C8
    /* 1A8B4 8002A0B4 00000000 */   nop
    /* 1A8B8 8002A0B8 4ED7000C */  jal        func_80035D38
    /* 1A8BC 8002A0BC 00000000 */   nop
    /* 1A8C0 8002A0C0 08BF000C */  jal        func_8002FC20
    /* 1A8C4 8002A0C4 00000000 */   nop
    /* 1A8C8 8002A0C8 C1B8000C */  jal        func_8002E304
    /* 1A8CC 8002A0CC 00000000 */   nop
    /* 1A8D0 8002A0D0 23BC000C */  jal        func_8002F08C
    /* 1A8D4 8002A0D4 00000000 */   nop
    /* 1A8D8 8002A0D8 EABD000C */  jal        func_8002F7A8
    /* 1A8DC 8002A0DC 00000000 */   nop
    /* 1A8E0 8002A0E0 93C7000C */  jal        func_80031E4C
    /* 1A8E4 8002A0E4 00000000 */   nop
    /* 1A8E8 8002A0E8 FCC9000C */  jal        func_800327F0
    /* 1A8EC 8002A0EC 00000000 */   nop
    /* 1A8F0 8002A0F0 F9C4000C */  jal        func_800313E4
    /* 1A8F4 8002A0F4 00000000 */   nop
    /* 1A8F8 8002A0F8 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 1A8FC 8002A0FC 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 1A900 8002A100 06000224 */  addiu      $v0, $zero, 0x6
    /* 1A904 8002A104 06006214 */  bne        $v1, $v0, .L8002A120
    /* 1A908 8002A108 3F000424 */   addiu     $a0, $zero, 0x3F
    /* 1A90C 8002A10C 17CC000C */  jal        func_8003305C
    /* 1A910 8002A110 08020526 */   addiu     $a1, $s0, 0x208
    /* 1A914 8002A114 3E000424 */  addiu      $a0, $zero, 0x3E
    /* 1A918 8002A118 17CC000C */  jal        func_8003305C
    /* 1A91C 8002A11C 14020526 */   addiu     $a1, $s0, 0x214
  .L8002A120:
    /* 1A920 8002A120 0780023C */  lui        $v0, %hi(D_800698BE)
    /* 1A924 8002A124 BE984290 */  lbu        $v0, %lo(D_800698BE)($v0)
    /* 1A928 8002A128 00000000 */  nop
    /* 1A92C 8002A12C 08004010 */  beqz       $v0, .L8002A150
    /* 1A930 8002A130 00000000 */   nop
    /* 1A934 8002A134 0780023C */  lui        $v0, %hi(D_8006A001)
    /* 1A938 8002A138 01A04290 */  lbu        $v0, %lo(D_8006A001)($v0)
    /* 1A93C 8002A13C 00000000 */  nop
    /* 1A940 8002A140 03004014 */  bnez       $v0, .L8002A150
    /* 1A944 8002A144 01000224 */   addiu     $v0, $zero, 0x1
    /* 1A948 8002A148 0780013C */  lui        $at, %hi(D_8006A001)
    /* 1A94C 8002A14C 01A022A0 */  sb         $v0, %lo(D_8006A001)($at)
  .L8002A150:
    /* 1A950 8002A150 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1A954 8002A154 1000B08F */  lw         $s0, 0x10($sp)
    /* 1A958 8002A158 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1A95C 8002A15C 0800E003 */  jr         $ra
    /* 1A960 8002A160 00000000 */   nop
endlabel func_8002A07C
