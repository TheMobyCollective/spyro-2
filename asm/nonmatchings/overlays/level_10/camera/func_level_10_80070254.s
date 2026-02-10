.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_10_80070254, 0xD0

glabel func_level_10_80070254
    /* D38FF0 80070254 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D38FF4 80070258 04000224 */  addiu      $v0, $zero, 0x4
    /* D38FF8 8007025C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* D38FFC 80070260 1800B2AF */  sw         $s2, 0x18($sp)
    /* D39000 80070264 1400B1AF */  sw         $s1, 0x14($sp)
    /* D39004 80070268 04008210 */  beq        $a0, $v0, .Llevel_10_8007027C
    /* D39008 8007026C 1000B0AF */   sw        $s0, 0x10($sp)
    /* D3900C 80070270 17000224 */  addiu      $v0, $zero, 0x17
    /* D39010 80070274 24008214 */  bne        $a0, $v0, .Llevel_10_80070308
    /* D39014 80070278 00000000 */   nop
  .Llevel_10_8007027C:
    /* D39018 8007027C 0680113C */  lui        $s1, %hi(D_80067ED4)
    /* D3901C 80070280 D47E3126 */  addiu      $s1, $s1, %lo(D_80067ED4)
    /* D39020 80070284 10002426 */  addiu      $a0, $s1, 0x10
    /* D39024 80070288 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* D39028 8007028C F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* D3902C 80070290 01000224 */  addiu      $v0, $zero, 0x1
    /* D39030 80070294 000020AE */  sw         $zero, 0x0($s1)
    /* D39034 80070298 0680013C */  lui        $at, %hi(D_80067FC4)
    /* D39038 8007029C C47F20A0 */  sb         $zero, %lo(D_80067FC4)($at)
    /* D3903C 800702A0 0680013C */  lui        $at, %hi(D_80067FC5)
    /* D39040 800702A4 C57F20A0 */  sb         $zero, %lo(D_80067FC5)($at)
    /* D39044 800702A8 0680013C */  lui        $at, %hi(D_80067FC6)
    /* D39048 800702AC C67F22A0 */  sb         $v0, %lo(D_80067FC6)($at)
    /* D3904C 800702B0 0680013C */  lui        $at, %hi(D_80067FC9)
    /* D39050 800702B4 C97F20A0 */  sb         $zero, %lo(D_80067FC9)($at)
    /* D39054 800702B8 0680013C */  lui        $at, %hi(D_80067EE0)
    /* D39058 800702BC E07E20A0 */  sb         $zero, %lo(D_80067EE0)($at)
    /* D3905C 800702C0 6C6F000C */  jal        func_8001BDB0
    /* D39060 800702C4 21284002 */   addu      $a1, $s2, $zero
    /* D39064 800702C8 2C003026 */  addiu      $s0, $s1, 0x2C
    /* D39068 800702CC 21200002 */  addu       $a0, $s0, $zero
    /* D3906C 800702D0 D8FF2526 */  addiu      $a1, $s1, -0x28
    /* D39070 800702D4 0780023C */  lui        $v0, %hi(D_8006A05C)
    /* D39074 800702D8 5CA0428C */  lw         $v0, %lo(D_8006A05C)($v0)
    /* D39078 800702DC 0680013C */  lui        $at, %hi(D_80067EF0)
    /* D3907C 800702E0 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* D39080 800702E4 867B000C */  jal        func_8001EE18
    /* D39084 800702E8 21304002 */   addu      $a2, $s2, $zero
    /* D39088 800702EC 21200002 */  addu       $a0, $s0, $zero
    /* D3908C 800702F0 EA7B000C */  jal        func_8001EFA8
    /* D39090 800702F4 21280002 */   addu      $a1, $s0, $zero
    /* D39094 800702F8 54002426 */  addiu      $a0, $s1, 0x54
    /* D39098 800702FC 21280002 */  addu       $a1, $s0, $zero
    /* D3909C 80070300 337B000C */  jal        func_8001ECCC
    /* D390A0 80070304 21300000 */   addu      $a2, $zero, $zero
  .Llevel_10_80070308:
    /* D390A4 80070308 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* D390A8 8007030C 1800B28F */  lw         $s2, 0x18($sp)
    /* D390AC 80070310 1400B18F */  lw         $s1, 0x14($sp)
    /* D390B0 80070314 1000B08F */  lw         $s0, 0x10($sp)
    /* D390B4 80070318 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D390B8 8007031C 0800E003 */  jr         $ra
    /* D390BC 80070320 00000000 */   nop
endlabel func_level_10_80070254
