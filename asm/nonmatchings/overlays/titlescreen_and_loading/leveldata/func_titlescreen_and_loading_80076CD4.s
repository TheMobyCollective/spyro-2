.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80076CD4, 0x19C

glabel func_titlescreen_and_loading_80076CD4
    /* 2CA70 80076CD4 21680000 */  addu       $t5, $zero, $zero
    /* 2CA74 80076CD8 06800C3C */  lui        $t4, %hi(D_80067E48)
    /* 2CA78 80076CDC 487E8C25 */  addiu      $t4, $t4, %lo(D_80067E48)
    /* 2CA7C 80076CE0 21588000 */  addu       $t3, $a0, $zero
  .Ltitlescreen_and_loading_80076CE4:
    /* 2CA80 80076CE4 21280000 */  addu       $a1, $zero, $zero
    /* 2CA84 80076CE8 21380000 */  addu       $a3, $zero, $zero
    /* 2CA88 80076CEC 21300000 */  addu       $a2, $zero, $zero
    /* 2CA8C 80076CF0 21486001 */  addu       $t1, $t3, $zero
    /* 2CA90 80076CF4 21506001 */  addu       $t2, $t3, $zero
  .Ltitlescreen_and_loading_80076CF8:
    /* 2CA94 80076CF8 21200000 */  addu       $a0, $zero, $zero
    /* 2CA98 80076CFC 70002891 */  lbu        $t0, 0x70($t1)
    /* 2CA9C 80076D00 68014285 */  lh         $v0, 0x168($t2)
    /* 2CAA0 80076D04 0680013C */  lui        $at, %hi(D_800647F4)
    /* 2CAA4 80076D08 21082600 */  addu       $at, $at, $a2
    /* 2CAA8 80076D0C F4472390 */  lbu        $v1, %lo(D_800647F4)($at)
    /* 2CAAC 80076D10 2128A200 */  addu       $a1, $a1, $v0
    /* 2CAB0 80076D14 40100300 */  sll        $v0, $v1, 1
    /* 2CAB4 80076D18 21104300 */  addu       $v0, $v0, $v1
    /* 2CAB8 80076D1C C0100200 */  sll        $v0, $v0, 3
    /* 2CABC 80076D20 21104300 */  addu       $v0, $v0, $v1
    /* 2CAC0 80076D24 80100200 */  sll        $v0, $v0, 2
    /* 2CAC4 80076D28 2138E200 */  addu       $a3, $a3, $v0
    /* 2CAC8 80076D2C 07108800 */  srav       $v0, $t0, $a0
  .Ltitlescreen_and_loading_80076D30:
    /* 2CACC 80076D30 01004230 */  andi       $v0, $v0, 0x1
    /* 2CAD0 80076D34 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_80076D40
    /* 2CAD4 80076D38 00000000 */   nop
    /* 2CAD8 80076D3C C800A524 */  addiu      $a1, $a1, 0xC8
  .Ltitlescreen_and_loading_80076D40:
    /* 2CADC 80076D40 01008424 */  addiu      $a0, $a0, 0x1
    /* 2CAE0 80076D44 04008228 */  slti       $v0, $a0, 0x4
    /* 2CAE4 80076D48 F9FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80076D30
    /* 2CAE8 80076D4C 07108800 */   srav      $v0, $t0, $a0
    /* 2CAEC 80076D50 0680013C */  lui        $at, %hi(D_80064994)
    /* 2CAF0 80076D54 21082600 */  addu       $at, $at, $a2
    /* 2CAF4 80076D58 94492490 */  lbu        $a0, %lo(D_80064994)($at)
    /* 2CAF8 80076D5C CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 2CAFC 80076D60 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 2CB00 80076D64 19008200 */  multu      $a0, $v0
    /* 2CB04 80076D68 0680013C */  lui        $at, %hi(D_80064834)
    /* 2CB08 80076D6C 21082600 */  addu       $at, $at, $a2
    /* 2CB0C 80076D70 34482390 */  lbu        $v1, %lo(D_80064834)($at)
    /* 2CB10 80076D74 00000000 */  nop
    /* 2CB14 80076D78 40100300 */  sll        $v0, $v1, 1
    /* 2CB18 80076D7C 21104300 */  addu       $v0, $v0, $v1
    /* 2CB1C 80076D80 C0100200 */  sll        $v0, $v0, 3
    /* 2CB20 80076D84 21104300 */  addu       $v0, $v0, $v1
    /* 2CB24 80076D88 C0100200 */  sll        $v0, $v0, 3
    /* 2CB28 80076D8C 2138E200 */  addu       $a3, $a3, $v0
    /* 2CB2C 80076D90 10700000 */  mfhi       $t6
    /* 2CB30 80076D94 C2180E00 */  srl        $v1, $t6, 3
    /* 2CB34 80076D98 80100300 */  sll        $v0, $v1, 2
    /* 2CB38 80076D9C 21104300 */  addu       $v0, $v0, $v1
    /* 2CB3C 80076DA0 40100200 */  sll        $v0, $v0, 1
    /* 2CB40 80076DA4 23208200 */  subu       $a0, $a0, $v0
    /* 2CB44 80076DA8 FF008430 */  andi       $a0, $a0, 0xFF
    /* 2CB48 80076DAC FFFF8224 */  addiu      $v0, $a0, -0x1
    /* 2CB4C 80076DB0 0400422C */  sltiu      $v0, $v0, 0x4
    /* 2CB50 80076DB4 03004010 */  beqz       $v0, .Ltitlescreen_and_loading_80076DC4
    /* 2CB54 80076DB8 1500C228 */   slti      $v0, $a2, 0x15
    /* 2CB58 80076DBC 04004014 */  bnez       $v0, .Ltitlescreen_and_loading_80076DD0
    /* 2CB5C 80076DC0 00000000 */   nop
  .Ltitlescreen_and_loading_80076DC4:
    /* 2CB60 80076DC4 06000224 */  addiu      $v0, $zero, 0x6
    /* 2CB64 80076DC8 07008214 */  bne        $a0, $v0, .Ltitlescreen_and_loading_80076DE8
    /* 2CB68 80076DCC 00000000 */   nop
  .Ltitlescreen_and_loading_80076DD0:
    /* 2CB6C 80076DD0 50002291 */  lbu        $v0, 0x50($t1)
    /* 2CB70 80076DD4 00000000 */  nop
    /* 2CB74 80076DD8 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_80076DE4
    /* 2CB78 80076DDC 00000000 */   nop
    /* 2CB7C 80076DE0 F401A524 */  addiu      $a1, $a1, 0x1F4
  .Ltitlescreen_and_loading_80076DE4:
    /* 2CB80 80076DE4 F401E724 */  addiu      $a3, $a3, 0x1F4
  .Ltitlescreen_and_loading_80076DE8:
    /* 2CB84 80076DE8 01002925 */  addiu      $t1, $t1, 0x1
    /* 2CB88 80076DEC 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2CB8C 80076DF0 1D00C228 */  slti       $v0, $a2, 0x1D
    /* 2CB90 80076DF4 C0FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80076CF8
    /* 2CB94 80076DF8 02004A25 */   addiu     $t2, $t2, 0x2
    /* 2CB98 80076DFC 40100500 */  sll        $v0, $a1, 1
    /* 2CB9C 80076E00 21104500 */  addu       $v0, $v0, $a1
    /* 2CBA0 80076E04 C0100200 */  sll        $v0, $v0, 3
    /* 2CBA4 80076E08 21104500 */  addu       $v0, $v0, $a1
    /* 2CBA8 80076E0C 80100200 */  sll        $v0, $v0, 2
    /* 2CBAC 80076E10 1A004700 */  div        $zero, $v0, $a3
    /* 2CBB0 80076E14 0200E014 */  bnez       $a3, .Ltitlescreen_and_loading_80076E20
    /* 2CBB4 80076E18 00000000 */   nop
    /* 2CBB8 80076E1C 0D000700 */  break      7
  .Ltitlescreen_and_loading_80076E20:
    /* 2CBBC 80076E20 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2CBC0 80076E24 0400E114 */  bne        $a3, $at, .Ltitlescreen_and_loading_80076E38
    /* 2CBC4 80076E28 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2CBC8 80076E2C 02004114 */  bne        $v0, $at, .Ltitlescreen_and_loading_80076E38
    /* 2CBCC 80076E30 00000000 */   nop
    /* 2CBD0 80076E34 0D000600 */  break      6
  .Ltitlescreen_and_loading_80076E38:
    /* 2CBD4 80076E38 12180000 */  mflo       $v1
    /* 2CBD8 80076E3C 0400A010 */  beqz       $a1, .Ltitlescreen_and_loading_80076E50
    /* 2CBDC 80076E40 00000000 */   nop
    /* 2CBE0 80076E44 02006014 */  bnez       $v1, .Ltitlescreen_and_loading_80076E50
    /* 2CBE4 80076E48 00000000 */   nop
    /* 2CBE8 80076E4C 01000324 */  addiu      $v1, $zero, 0x1
  .Ltitlescreen_and_loading_80076E50:
    /* 2CBEC 80076E50 000083AD */  sw         $v1, 0x0($t4)
    /* 2CBF0 80076E54 04008C25 */  addiu      $t4, $t4, 0x4
    /* 2CBF4 80076E58 0100AD25 */  addiu      $t5, $t5, 0x1
    /* 2CBF8 80076E5C 0300A229 */  slti       $v0, $t5, 0x3
    /* 2CBFC 80076E60 A0FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80076CE4
    /* 2CC00 80076E64 00066B25 */   addiu     $t3, $t3, 0x600
    /* 2CC04 80076E68 0800E003 */  jr         $ra
    /* 2CC08 80076E6C 00000000 */   nop
endlabel func_titlescreen_and_loading_80076CD4
