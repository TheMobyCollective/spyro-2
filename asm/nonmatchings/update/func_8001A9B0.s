.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A9B0, 0xF4

glabel func_8001A9B0
    /* B1B0 8001A9B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B1B4 8001A9B4 0680033C */  lui        $v1, %hi(D_80066EE8)
    /* B1B8 8001A9B8 E86E6384 */  lh         $v1, %lo(D_80066EE8)($v1)
    /* B1BC 8001A9BC 63000224 */  addiu      $v0, $zero, 0x63
    /* B1C0 8001A9C0 06006210 */  beq        $v1, $v0, .L8001A9DC
    /* B1C4 8001A9C4 1000BFAF */   sw        $ra, 0x10($sp)
    /* B1C8 8001A9C8 64000224 */  addiu      $v0, $zero, 0x64
    /* B1CC 8001A9CC 23006210 */  beq        $v1, $v0, .L8001AA5C
    /* B1D0 8001A9D0 00000000 */   nop
    /* B1D4 8001A9D4 A36A0008 */  j          .L8001AA8C
    /* B1D8 8001A9D8 00000000 */   nop
  .L8001A9DC:
    /* B1DC 8001A9DC 0680033C */  lui        $v1, %hi(D_80067048)
    /* B1E0 8001A9E0 48706384 */  lh         $v1, %lo(D_80067048)($v1)
    /* B1E4 8001A9E4 01000224 */  addiu      $v0, $zero, 0x1
    /* B1E8 8001A9E8 0680013C */  lui        $at, %hi(D_80066EEC)
    /* B1EC 8001A9EC EC6E22AC */  sw         $v0, %lo(D_80066EEC)($at)
    /* B1F0 8001A9F0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B1F4 8001A9F4 0E006210 */  beq        $v1, $v0, .L8001AA30
    /* B1F8 8001A9F8 00000000 */   nop
    /* B1FC 8001A9FC 8C64000C */  jal        func_80019230
    /* B200 8001AA00 21200000 */   addu      $a0, $zero, $zero
    /* B204 8001AA04 0680033C */  lui        $v1, %hi(D_80067048)
    /* B208 8001AA08 48706384 */  lh         $v1, %lo(D_80067048)($v1)
    /* B20C 8001AA0C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B210 8001AA10 0680013C */  lui        $at, %hi(D_80067048)
    /* B214 8001AA14 487022A4 */  sh         $v0, %lo(D_80067048)($at)
    /* B218 8001AA18 0680013C */  lui        $at, %hi(D_80066EEC)
    /* B21C 8001AA1C EC6E20AC */  sw         $zero, %lo(D_80066EEC)($at)
    /* B220 8001AA20 0680013C */  lui        $at, %hi(D_80066F90)
    /* B224 8001AA24 906F23AC */  sw         $v1, %lo(D_80066F90)($at)
    /* B228 8001AA28 8E6A0008 */  j          .L8001AA38
    /* B22C 8001AA2C 00000000 */   nop
  .L8001AA30:
    /* B230 8001AA30 8C64000C */  jal        func_80019230
    /* B234 8001AA34 10000424 */   addiu     $a0, $zero, 0x10
  .L8001AA38:
    /* B238 8001AA38 0680023C */  lui        $v0, %hi(D_80066EE8)
    /* B23C 8001AA3C E86E4294 */  lhu        $v0, %lo(D_80066EE8)($v0)
    /* B240 8001AA40 0680013C */  lui        $at, %hi(D_80067128)
    /* B244 8001AA44 287120A4 */  sh         $zero, %lo(D_80067128)($at)
    /* B248 8001AA48 01004224 */  addiu      $v0, $v0, 0x1
    /* B24C 8001AA4C 0680013C */  lui        $at, %hi(D_80066EE8)
    /* B250 8001AA50 E86E22A4 */  sh         $v0, %lo(D_80066EE8)($at)
    /* B254 8001AA54 A56A0008 */  j          .L8001AA94
    /* B258 8001AA58 00000000 */   nop
  .L8001AA5C:
    /* B25C 8001AA5C 0680033C */  lui        $v1, %hi(D_80067018)
    /* B260 8001AA60 1870638C */  lw         $v1, %lo(D_80067018)($v1)
    /* B264 8001AA64 0680023C */  lui        $v0, %hi(D_80067128)
    /* B268 8001AA68 28714294 */  lhu        $v0, %lo(D_80067128)($v0)
    /* B26C 8001AA6C 00000000 */  nop
    /* B270 8001AA70 21104300 */  addu       $v0, $v0, $v1
    /* B274 8001AA74 0680013C */  lui        $at, %hi(D_80067128)
    /* B278 8001AA78 287122A4 */  sh         $v0, %lo(D_80067128)($at)
    /* B27C 8001AA7C 9675000C */  jal        func_8001D658
    /* B280 8001AA80 00000000 */   nop
    /* B284 8001AA84 A56A0008 */  j          .L8001AA94
    /* B288 8001AA88 00000000 */   nop
  .L8001AA8C:
    /* B28C 8001AA8C 5BB6010C */  jal        func_credits_8006D96C
    /* B290 8001AA90 00000000 */   nop
  .L8001AA94:
    /* B294 8001AA94 1000BF8F */  lw         $ra, 0x10($sp)
    /* B298 8001AA98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B29C 8001AA9C 0800E003 */  jr         $ra
    /* B2A0 8001AAA0 00000000 */   nop
endlabel func_8001A9B0
