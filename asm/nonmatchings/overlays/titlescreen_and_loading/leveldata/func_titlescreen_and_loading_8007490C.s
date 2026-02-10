.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8007490C, 0x710

glabel func_titlescreen_and_loading_8007490C
    /* 2A6A8 8007490C 58FFBD27 */  addiu      $sp, $sp, -0xA8
    /* 2A6AC 80074910 0780033C */  lui        $v1, %hi(D_80068C64)
    /* 2A6B0 80074914 648C6324 */  addiu      $v1, $v1, %lo(D_80068C64)
    /* 2A6B4 80074918 A400BFAF */  sw         $ra, 0xA4($sp)
    /* 2A6B8 8007491C A000B6AF */  sw         $s6, 0xA0($sp)
    /* 2A6BC 80074920 9C00B5AF */  sw         $s5, 0x9C($sp)
    /* 2A6C0 80074924 9800B4AF */  sw         $s4, 0x98($sp)
    /* 2A6C4 80074928 9400B3AF */  sw         $s3, 0x94($sp)
    /* 2A6C8 8007492C 9000B2AF */  sw         $s2, 0x90($sp)
    /* 2A6CC 80074930 8C00B1AF */  sw         $s1, 0x8C($sp)
    /* 2A6D0 80074934 8800B0AF */  sw         $s0, 0x88($sp)
    /* 2A6D4 80074938 0000628C */  lw         $v0, 0x0($v1)
    /* 2A6D8 8007493C 00000000 */  nop
    /* 2A6DC 80074940 37014018 */  blez       $v0, .Ltitlescreen_and_loading_80074E20
    /* 2A6E0 80074944 21A80000 */   addu      $s5, $zero, $zero
    /* 2A6E4 80074948 E8FF7624 */  addiu      $s6, $v1, -0x18
    /* 2A6E8 8007494C 21880000 */  addu       $s1, $zero, $zero
    /* 2A6EC 80074950 21A00000 */  addu       $s4, $zero, $zero
    /* 2A6F0 80074954 0780133C */  lui        $s3, %hi(D_80068C94)
    /* 2A6F4 80074958 948C7326 */  addiu      $s3, $s3, %lo(D_80068C94)
  .Ltitlescreen_and_loading_8007495C:
    /* 2A6F8 8007495C 0000628E */  lw         $v0, 0x0($s3)
    /* 2A6FC 80074960 00000000 */  nop
    /* 2A700 80074964 26014104 */  bgez       $v0, .Ltitlescreen_and_loading_80074E00
    /* 2A704 80074968 00000000 */   nop
    /* 2A708 8007496C 0780043C */  lui        $a0, %hi(D_80068C48)
    /* 2A70C 80074970 488C8424 */  addiu      $a0, $a0, %lo(D_80068C48)
    /* 2A710 80074974 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A714 80074978 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A718 8007497C 0000838C */  lw         $v1, 0x0($a0)
    /* 2A71C 80074980 21102202 */  addu       $v0, $s1, $v0
    /* 2A720 80074984 3C0043A0 */  sb         $v1, 0x3C($v0)
    /* 2A724 80074988 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A728 8007498C 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A72C 80074990 0000838C */  lw         $v1, 0x0($a0)
    /* 2A730 80074994 21102202 */  addu       $v0, $s1, $v0
    /* 2A734 80074998 3D0043A0 */  sb         $v1, 0x3D($v0)
    /* 2A738 8007499C 0000658E */  lw         $a1, 0x0($s3)
    /* 2A73C 800749A0 0000828C */  lw         $v0, 0x0($a0)
    /* 2A740 800749A4 0000A38C */  lw         $v1, 0x0($a1)
    /* 2A744 800749A8 00000000 */  nop
    /* 2A748 800749AC 2A104300 */  slt        $v0, $v0, $v1
    /* 2A74C 800749B0 25004014 */  bnez       $v0, .Ltitlescreen_and_loading_80074A48
    /* 2A750 800749B4 00000000 */   nop
    /* 2A754 800749B8 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A758 800749BC 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A75C 800749C0 00000000 */  nop
    /* 2A760 800749C4 21102202 */  addu       $v0, $s1, $v0
    /* 2A764 800749C8 3C0040A0 */  sb         $zero, 0x3C($v0)
    /* 2A768 800749CC 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A76C 800749D0 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A770 800749D4 00000000 */  nop
    /* 2A774 800749D8 21102202 */  addu       $v0, $s1, $v0
    /* 2A778 800749DC 3D0040A0 */  sb         $zero, 0x3D($v0)
    /* 2A77C 800749E0 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A780 800749E4 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A784 800749E8 00000000 */  nop
    /* 2A788 800749EC 21102202 */  addu       $v0, $s1, $v0
    /* 2A78C 800749F0 3E0040A0 */  sb         $zero, 0x3E($v0)
    /* 2A790 800749F4 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A794 800749F8 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A798 800749FC 00000000 */  nop
    /* 2A79C 80074A00 21102202 */  addu       $v0, $s1, $v0
    /* 2A7A0 80074A04 3F0040A0 */  sb         $zero, 0x3F($v0)
    /* 2A7A4 80074A08 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A7A8 80074A0C 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A7AC 80074A10 00000000 */  nop
    /* 2A7B0 80074A14 21102202 */  addu       $v0, $s1, $v0
    /* 2A7B4 80074A18 400040A0 */  sb         $zero, 0x40($v0)
    /* 2A7B8 80074A1C 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A7BC 80074A20 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A7C0 80074A24 00000000 */  nop
    /* 2A7C4 80074A28 21102202 */  addu       $v0, $s1, $v0
    /* 2A7C8 80074A2C 4C0040A0 */  sb         $zero, 0x4C($v0)
    /* 2A7CC 80074A30 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A7D0 80074A34 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A7D4 80074A38 00000000 */  nop
    /* 2A7D8 80074A3C 21102202 */  addu       $v0, $s1, $v0
    /* 2A7DC 80074A40 80D30108 */  j          .Ltitlescreen_and_loading_80074E00
    /* 2A7E0 80074A44 4D0040A0 */   sb        $zero, 0x4D($v0)
  .Ltitlescreen_and_loading_80074A48:
    /* 2A7E4 80074A48 0780023C */  lui        $v0, %hi(D_80068C48)
    /* 2A7E8 80074A4C 488C428C */  lw         $v0, %lo(D_80068C48)($v0)
    /* 2A7EC 80074A50 00000000 */  nop
    /* 2A7F0 80074A54 80100200 */  sll        $v0, $v0, 2
    /* 2A7F4 80074A58 21104500 */  addu       $v0, $v0, $a1
    /* 2A7F8 80074A5C 3C00448C */  lw         $a0, 0x3C($v0)
    /* 2A7FC 80074A60 00000000 */  nop
    /* 2A800 80074A64 00008390 */  lbu        $v1, 0x0($a0)
    /* 2A804 80074A68 01000224 */  addiu      $v0, $zero, 0x1
    /* 2A808 80074A6C 2B006214 */  bne        $v1, $v0, .Ltitlescreen_and_loading_80074B1C
    /* 2A80C 80074A70 21380000 */   addu      $a3, $zero, $zero
    /* 2A810 80074A74 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A814 80074A78 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A818 80074A7C 00000000 */  nop
    /* 2A81C 80074A80 21102202 */  addu       $v0, $s1, $v0
    /* 2A820 80074A84 3E0040A0 */  sb         $zero, 0x3E($v0)
    /* 2A824 80074A88 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A828 80074A8C 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A82C 80074A90 00000000 */  nop
    /* 2A830 80074A94 21102202 */  addu       $v0, $s1, $v0
    /* 2A834 80074A98 F0D20108 */  j          .Ltitlescreen_and_loading_80074BC0
    /* 2A838 80074A9C 3F0040A0 */   sb        $zero, 0x3F($v0)
  .Ltitlescreen_and_loading_80074AA0:
    /* 2A83C 80074AA0 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A840 80074AA4 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A844 80074AA8 00000000 */  nop
    /* 2A848 80074AAC 21102202 */  addu       $v0, $s1, $v0
    /* 2A84C 80074AB0 3E0046A0 */  sb         $a2, 0x3E($v0)
    /* 2A850 80074AB4 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A854 80074AB8 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A858 80074ABC 0100C324 */  addiu      $v1, $a2, 0x1
    /* 2A85C 80074AC0 21102202 */  addu       $v0, $s1, $v0
    /* 2A860 80074AC4 3F0043A0 */  sb         $v1, 0x3F($v0)
    /* 2A864 80074AC8 0000C28E */  lw         $v0, 0x0($s6)
    /* 2A868 80074ACC 00000000 */  nop
    /* 2A86C 80074AD0 23104700 */  subu       $v0, $v0, $a3
    /* 2A870 80074AD4 00110200 */  sll        $v0, $v0, 4
    /* 2A874 80074AD8 1A004500 */  div        $zero, $v0, $a1
    /* 2A878 80074ADC 0200A014 */  bnez       $a1, .Ltitlescreen_and_loading_80074AE8
    /* 2A87C 80074AE0 00000000 */   nop
    /* 2A880 80074AE4 0D000700 */  break      7
  .Ltitlescreen_and_loading_80074AE8:
    /* 2A884 80074AE8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2A888 80074AEC 0400A114 */  bne        $a1, $at, .Ltitlescreen_and_loading_80074B00
    /* 2A88C 80074AF0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2A890 80074AF4 02004114 */  bne        $v0, $at, .Ltitlescreen_and_loading_80074B00
    /* 2A894 80074AF8 00000000 */   nop
    /* 2A898 80074AFC 0D000600 */  break      6
  .Ltitlescreen_and_loading_80074B00:
    /* 2A89C 80074B00 12100000 */  mflo       $v0
    /* 2A8A0 80074B04 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 2A8A4 80074B08 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 2A8A8 80074B0C 00000000 */  nop
    /* 2A8AC 80074B10 21182302 */  addu       $v1, $s1, $v1
    /* 2A8B0 80074B14 DAD20108 */  j          .Ltitlescreen_and_loading_80074B68
    /* 2A8B4 80074B18 400062A0 */   sb        $v0, 0x40($v1)
  .Ltitlescreen_and_loading_80074B1C:
    /* 2A8B8 80074B1C FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 2A8BC 80074B20 11004018 */  blez       $v0, .Ltitlescreen_and_loading_80074B68
    /* 2A8C0 80074B24 21300000 */   addu      $a2, $zero, $zero
    /* 2A8C4 80074B28 0000C98E */  lw         $t1, 0x0($s6)
    /* 2A8C8 80074B2C 21404000 */  addu       $t0, $v0, $zero
  .Ltitlescreen_and_loading_80074B30:
    /* 2A8CC 80074B30 2800828C */  lw         $v0, 0x28($a0)
    /* 2A8D0 80074B34 00000000 */  nop
    /* 2A8D4 80074B38 001E4230 */  andi       $v0, $v0, 0x1E00
    /* 2A8D8 80074B3C 43120200 */  sra        $v0, $v0, 9
    /* 2A8DC 80074B40 01004524 */  addiu      $a1, $v0, 0x1
    /* 2A8E0 80074B44 2118E500 */  addu       $v1, $a3, $a1
    /* 2A8E4 80074B48 2A102301 */  slt        $v0, $t1, $v1
    /* 2A8E8 80074B4C D4FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80074AA0
    /* 2A8EC 80074B50 00000000 */   nop
    /* 2A8F0 80074B54 21386000 */  addu       $a3, $v1, $zero
    /* 2A8F4 80074B58 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2A8F8 80074B5C 2A10C800 */  slt        $v0, $a2, $t0
    /* 2A8FC 80074B60 F3FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80074B30
    /* 2A900 80074B64 08008424 */   addiu     $a0, $a0, 0x8
  .Ltitlescreen_and_loading_80074B68:
    /* 2A904 80074B68 0780023C */  lui        $v0, %hi(D_80068C48)
    /* 2A908 80074B6C 488C428C */  lw         $v0, %lo(D_80068C48)($v0)
    /* 2A90C 80074B70 0000638E */  lw         $v1, 0x0($s3)
    /* 2A910 80074B74 80100200 */  sll        $v0, $v0, 2
    /* 2A914 80074B78 21104300 */  addu       $v0, $v0, $v1
    /* 2A918 80074B7C 3C00428C */  lw         $v0, 0x3C($v0)
    /* 2A91C 80074B80 00000000 */  nop
    /* 2A920 80074B84 00004290 */  lbu        $v0, 0x0($v0)
    /* 2A924 80074B88 00000000 */  nop
    /* 2A928 80074B8C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2A92C 80074B90 1100C214 */  bne        $a2, $v0, .Ltitlescreen_and_loading_80074BD8
    /* 2A930 80074B94 0F00093C */   lui       $t1, (0xFFC00 >> 16)
    /* 2A934 80074B98 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A938 80074B9C 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A93C 80074BA0 00000000 */  nop
    /* 2A940 80074BA4 21102202 */  addu       $v0, $s1, $v0
    /* 2A944 80074BA8 3E0046A0 */  sb         $a2, 0x3E($v0)
    /* 2A948 80074BAC 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A94C 80074BB0 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A950 80074BB4 00000000 */  nop
    /* 2A954 80074BB8 21102202 */  addu       $v0, $s1, $v0
    /* 2A958 80074BBC 3F0046A0 */  sb         $a2, 0x3F($v0)
  .Ltitlescreen_and_loading_80074BC0:
    /* 2A95C 80074BC0 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2A960 80074BC4 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2A964 80074BC8 00000000 */  nop
    /* 2A968 80074BCC 21102202 */  addu       $v0, $s1, $v0
    /* 2A96C 80074BD0 400040A0 */  sb         $zero, 0x40($v0)
    /* 2A970 80074BD4 0F00093C */  lui        $t1, (0xFFC00 >> 16)
  .Ltitlescreen_and_loading_80074BD8:
    /* 2A974 80074BD8 F03F083C */  lui        $t0, (0x3FF00000 >> 16)
    /* 2A978 80074BDC 00FC2935 */  ori        $t1, $t1, (0xFFC00 & 0xFFFF)
    /* 2A97C 80074BE0 0680053C */  lui        $a1, %hi(D_80066F14)
    /* 2A980 80074BE4 146FA58C */  lw         $a1, %lo(D_80066F14)($a1)
    /* 2A984 80074BE8 00000000 */  nop
    /* 2A988 80074BEC 21282502 */  addu       $a1, $s1, $a1
    /* 2A98C 80074BF0 3C00A290 */  lbu        $v0, 0x3C($a1)
    /* 2A990 80074BF4 3000B027 */  addiu      $s0, $sp, 0x30
    /* 2A994 80074BF8 01004230 */  andi       $v0, $v0, 0x1
    /* 2A998 80074BFC 80100200 */  sll        $v0, $v0, 2
    /* 2A99C 80074C00 0780013C */  lui        $at, %hi(D_80068C70)
    /* 2A9A0 80074C04 21082200 */  addu       $at, $at, $v0
    /* 2A9A4 80074C08 708C248C */  lw         $a0, %lo(D_80068C70)($at)
    /* 2A9A8 80074C0C 3E00A390 */  lbu        $v1, 0x3E($a1)
    /* 2A9AC 80074C10 21108402 */  addu       $v0, $s4, $a0
    /* 2A9B0 80074C14 0C00428C */  lw         $v0, 0xC($v0)
    /* 2A9B4 80074C18 80180300 */  sll        $v1, $v1, 2
    /* 2A9B8 80074C1C 21208200 */  addu       $a0, $a0, $v0
    /* 2A9BC 80074C20 3D00A290 */  lbu        $v0, 0x3D($a1)
    /* 2A9C0 80074C24 21208300 */  addu       $a0, $a0, $v1
    /* 2A9C4 80074C28 01004230 */  andi       $v0, $v0, 0x1
    /* 2A9C8 80074C2C 80100200 */  sll        $v0, $v0, 2
    /* 2A9CC 80074C30 0780013C */  lui        $at, %hi(D_80068C70)
    /* 2A9D0 80074C34 21082200 */  addu       $at, $at, $v0
    /* 2A9D4 80074C38 708C268C */  lw         $a2, %lo(D_80068C70)($at)
    /* 2A9D8 80074C3C 0000828C */  lw         $v0, 0x0($a0)
    /* 2A9DC 80074C40 21188602 */  addu       $v1, $s4, $a2
    /* 2A9E0 80074C44 24104800 */  and        $v0, $v0, $t0
    /* 2A9E4 80074C48 0C00678C */  lw         $a3, 0xC($v1)
    /* 2A9E8 80074C4C 3F00A390 */  lbu        $v1, 0x3F($a1)
    /* 2A9EC 80074C50 03130200 */  sra        $v0, $v0, 12
    /* 2A9F0 80074C54 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2A9F4 80074C58 0000828C */  lw         $v0, 0x0($a0)
    /* 2A9F8 80074C5C 2000B227 */  addiu      $s2, $sp, 0x20
    /* 2A9FC 80074C60 24104900 */  and        $v0, $v0, $t1
    /* 2AA00 80074C64 83100200 */  sra        $v0, $v0, 2
    /* 2AA04 80074C68 2130C700 */  addu       $a2, $a2, $a3
    /* 2AA08 80074C6C 80180300 */  sll        $v1, $v1, 2
    /* 2AA0C 80074C70 1400A2AF */  sw         $v0, 0x14($sp)
    /* 2AA10 80074C74 0000828C */  lw         $v0, 0x0($a0)
    /* 2AA14 80074C78 2130C300 */  addu       $a2, $a2, $v1
    /* 2AA18 80074C7C FF034230 */  andi       $v0, $v0, 0x3FF
    /* 2AA1C 80074C80 00120200 */  sll        $v0, $v0, 8
    /* 2AA20 80074C84 1800A2AF */  sw         $v0, 0x18($sp)
    /* 2AA24 80074C88 0000C28C */  lw         $v0, 0x0($a2)
    /* 2AA28 80074C8C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 2AA2C 80074C90 24104800 */  and        $v0, $v0, $t0
    /* 2AA30 80074C94 03130200 */  sra        $v0, $v0, 12
    /* 2AA34 80074C98 2000A2AF */  sw         $v0, 0x20($sp)
    /* 2AA38 80074C9C 0000C28C */  lw         $v0, 0x0($a2)
    /* 2AA3C 80074CA0 21200002 */  addu       $a0, $s0, $zero
    /* 2AA40 80074CA4 24104900 */  and        $v0, $v0, $t1
    /* 2AA44 80074CA8 83100200 */  sra        $v0, $v0, 2
    /* 2AA48 80074CAC 2400A2AF */  sw         $v0, 0x24($sp)
    /* 2AA4C 80074CB0 0000C28C */  lw         $v0, 0x0($a2)
    /* 2AA50 80074CB4 21304002 */  addu       $a2, $s2, $zero
    /* 2AA54 80074CB8 FF034230 */  andi       $v0, $v0, 0x3FF
    /* 2AA58 80074CBC 00120200 */  sll        $v0, $v0, 8
    /* 2AA5C 80074CC0 806F000C */  jal        func_8001BE00
    /* 2AA60 80074CC4 2800A2AF */   sw        $v0, 0x28($sp)
    /* 2AA64 80074CC8 21200002 */  addu       $a0, $s0, $zero
    /* 2AA68 80074CCC 886E000C */  jal        func_8001BA20
    /* 2AA6C 80074CD0 01000524 */   addiu     $a1, $zero, 0x1
    /* 2AA70 80074CD4 00084228 */  slti       $v0, $v0, 0x800
    /* 2AA74 80074CD8 14004014 */  bnez       $v0, .Ltitlescreen_and_loading_80074D2C
    /* 2AA78 80074CDC 00000000 */   nop
    /* 2AA7C 80074CE0 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2AA80 80074CE4 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2AA84 80074CE8 00000000 */  nop
    /* 2AA88 80074CEC 21182202 */  addu       $v1, $s1, $v0
    /* 2AA8C 80074CF0 40006290 */  lbu        $v0, 0x40($v1)
    /* 2AA90 80074CF4 00000000 */  nop
    /* 2AA94 80074CF8 0800422C */  sltiu      $v0, $v0, 0x8
    /* 2AA98 80074CFC 06004014 */  bnez       $v0, .Ltitlescreen_and_loading_80074D18
    /* 2AA9C 80074D00 00000000 */   nop
    /* 2AAA0 80074D04 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2AAA4 80074D08 3F006290 */  lbu        $v0, 0x3F($v1)
    /* 2AAA8 80074D0C 21284002 */  addu       $a1, $s2, $zero
    /* 2AAAC 80074D10 6C6F000C */  jal        func_8001BDB0
    /* 2AAB0 80074D14 3E0062A0 */   sb        $v0, 0x3E($v1)
  .Ltitlescreen_and_loading_80074D18:
    /* 2AAB4 80074D18 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 2AAB8 80074D1C 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 2AABC 80074D20 00000000 */  nop
    /* 2AAC0 80074D24 21102202 */  addu       $v0, $s1, $v0
    /* 2AAC4 80074D28 400040A0 */  sb         $zero, 0x40($v0)
  .Ltitlescreen_and_loading_80074D2C:
    /* 2AAC8 80074D2C 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 2AACC 80074D30 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 2AAD0 80074D34 10000524 */  addiu      $a1, $zero, 0x10
    /* 2AAD4 80074D38 21202402 */  addu       $a0, $s1, $a0
    /* 2AAD8 80074D3C 40008290 */  lbu        $v0, 0x40($a0)
    /* 2AADC 80074D40 1000A38F */  lw         $v1, 0x10($sp)
    /* 2AAE0 80074D44 2310A200 */  subu       $v0, $a1, $v0
    /* 2AAE4 80074D48 18006200 */  mult       $v1, $v0
    /* 2AAE8 80074D4C 12500000 */  mflo       $t2
    /* 2AAEC 80074D50 1000AAAF */  sw         $t2, 0x10($sp)
    /* 2AAF0 80074D54 40008290 */  lbu        $v0, 0x40($a0)
    /* 2AAF4 80074D58 1400A38F */  lw         $v1, 0x14($sp)
    /* 2AAF8 80074D5C 2310A200 */  subu       $v0, $a1, $v0
    /* 2AAFC 80074D60 18006200 */  mult       $v1, $v0
    /* 2AB00 80074D64 12500000 */  mflo       $t2
    /* 2AB04 80074D68 1400AAAF */  sw         $t2, 0x14($sp)
    /* 2AB08 80074D6C 40008290 */  lbu        $v0, 0x40($a0)
    /* 2AB0C 80074D70 1800A38F */  lw         $v1, 0x18($sp)
    /* 2AB10 80074D74 2328A200 */  subu       $a1, $a1, $v0
    /* 2AB14 80074D78 18006500 */  mult       $v1, $a1
    /* 2AB18 80074D7C 2000A28F */  lw         $v0, 0x20($sp)
    /* 2AB1C 80074D80 12500000 */  mflo       $t2
    /* 2AB20 80074D84 1800AAAF */  sw         $t2, 0x18($sp)
    /* 2AB24 80074D88 40008390 */  lbu        $v1, 0x40($a0)
    /* 2AB28 80074D8C 00000000 */  nop
    /* 2AB2C 80074D90 18004300 */  mult       $v0, $v1
    /* 2AB30 80074D94 2400A28F */  lw         $v0, 0x24($sp)
    /* 2AB34 80074D98 12500000 */  mflo       $t2
    /* 2AB38 80074D9C 2000AAAF */  sw         $t2, 0x20($sp)
    /* 2AB3C 80074DA0 40008390 */  lbu        $v1, 0x40($a0)
    /* 2AB40 80074DA4 00000000 */  nop
    /* 2AB44 80074DA8 18004300 */  mult       $v0, $v1
    /* 2AB48 80074DAC 2800A28F */  lw         $v0, 0x28($sp)
    /* 2AB4C 80074DB0 12500000 */  mflo       $t2
    /* 2AB50 80074DB4 2400AAAF */  sw         $t2, 0x24($sp)
    /* 2AB54 80074DB8 40008390 */  lbu        $v1, 0x40($a0)
    /* 2AB58 80074DBC 00000000 */  nop
    /* 2AB5C 80074DC0 18004300 */  mult       $v0, $v1
    /* 2AB60 80074DC4 2000A627 */  addiu      $a2, $sp, 0x20
    /* 2AB64 80074DC8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2AB68 80074DCC 21288000 */  addu       $a1, $a0, $zero
    /* 2AB6C 80074DD0 12500000 */  mflo       $t2
    /* 2AB70 80074DD4 736F000C */  jal        func_8001BDCC
    /* 2AB74 80074DD8 2800AAAF */   sw        $t2, 0x28($sp)
    /* 2AB78 80074DDC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2AB7C 80074DE0 526F000C */  jal        func_8001BD48
    /* 2AB80 80074DE4 04000524 */   addiu     $a1, $zero, 0x4
    /* 2AB84 80074DE8 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 2AB88 80074DEC 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 2AB8C 80074DF0 1000A527 */  addiu      $a1, $sp, 0x10
    /* 2AB90 80074DF4 21209100 */  addu       $a0, $a0, $s1
    /* 2AB94 80074DF8 6C6F000C */  jal        func_8001BDB0
    /* 2AB98 80074DFC 0C008424 */   addiu     $a0, $a0, 0xC
  .Ltitlescreen_and_loading_80074E00:
    /* 2AB9C 80074E00 58003126 */  addiu      $s1, $s1, 0x58
    /* 2ABA0 80074E04 04009426 */  addiu      $s4, $s4, 0x4
    /* 2ABA4 80074E08 0780023C */  lui        $v0, %hi(D_80068C64)
    /* 2ABA8 80074E0C 648C428C */  lw         $v0, %lo(D_80068C64)($v0)
    /* 2ABAC 80074E10 0100B526 */  addiu      $s5, $s5, 0x1
    /* 2ABB0 80074E14 2A10A202 */  slt        $v0, $s5, $v0
    /* 2ABB4 80074E18 D0FE4014 */  bnez       $v0, .Ltitlescreen_and_loading_8007495C
    /* 2ABB8 80074E1C 04007326 */   addiu     $s3, $s3, 0x4
  .Ltitlescreen_and_loading_80074E20:
    /* 2ABBC 80074E20 07D4010C */  jal        func_titlescreen_and_loading_8007501C
    /* 2ABC0 80074E24 00000000 */   nop
    /* 2ABC4 80074E28 0780033C */  lui        $v1, %hi(D_80068C48)
    /* 2ABC8 80074E2C 488C6324 */  addiu      $v1, $v1, %lo(D_80068C48)
    /* 2ABCC 80074E30 2000B227 */  addiu      $s2, $sp, 0x20
    /* 2ABD0 80074E34 0000628C */  lw         $v0, 0x0($v1)
    /* 2ABD4 80074E38 21204002 */  addu       $a0, $s2, $zero
    /* 2ABD8 80074E3C 01004230 */  andi       $v0, $v0, 0x1
    /* 2ABDC 80074E40 80100200 */  sll        $v0, $v0, 2
    /* 2ABE0 80074E44 21186200 */  addu       $v1, $v1, $v0
    /* 2ABE4 80074E48 2800658C */  lw         $a1, 0x28($v1)
    /* 2ABE8 80074E4C 0780023C */  lui        $v0, %hi(D_80068C4C)
    /* 2ABEC 80074E50 4C8C428C */  lw         $v0, %lo(D_80068C4C)($v0)
    /* 2ABF0 80074E54 0800A38C */  lw         $v1, 0x8($a1)
    /* 2ABF4 80074E58 43100200 */  sra        $v0, $v0, 1
    /* 2ABF8 80074E5C 2188A300 */  addu       $s1, $a1, $v1
    /* 2ABFC 80074E60 40280200 */  sll        $a1, $v0, 1
    /* 2AC00 80074E64 2128A200 */  addu       $a1, $a1, $v0
    /* 2AC04 80074E68 80280500 */  sll        $a1, $a1, 2
    /* 2AC08 80074E6C 5970000C */  jal        func_8001C164
    /* 2AC0C 80074E70 21282502 */   addu      $a1, $s1, $a1
    /* 2AC10 80074E74 0780023C */  lui        $v0, %hi(D_80068C4C)
    /* 2AC14 80074E78 4C8C428C */  lw         $v0, %lo(D_80068C4C)($v0)
    /* 2AC18 80074E7C 4000A427 */  addiu      $a0, $sp, 0x40
    /* 2AC1C 80074E80 43100200 */  sra        $v0, $v0, 1
    /* 2AC20 80074E84 40280200 */  sll        $a1, $v0, 1
    /* 2AC24 80074E88 2128A200 */  addu       $a1, $a1, $v0
    /* 2AC28 80074E8C 80280500 */  sll        $a1, $a1, 2
    /* 2AC2C 80074E90 21282502 */  addu       $a1, $s1, $a1
    /* 2AC30 80074E94 6370000C */  jal        func_8001C18C
    /* 2AC34 80074E98 0600A524 */   addiu     $a1, $a1, 0x6
    /* 2AC38 80074E9C 0780033C */  lui        $v1, %hi(D_80068C4C)
    /* 2AC3C 80074EA0 4C8C638C */  lw         $v1, %lo(D_80068C4C)($v1)
    /* 2AC40 80074EA4 00000000 */  nop
    /* 2AC44 80074EA8 01006230 */  andi       $v0, $v1, 0x1
    /* 2AC48 80074EAC 48004010 */  beqz       $v0, .Ltitlescreen_and_loading_80074FD0
    /* 2AC4C 80074EB0 01006224 */   addiu     $v0, $v1, 0x1
    /* 2AC50 80074EB4 78004228 */  slti       $v0, $v0, 0x78
    /* 2AC54 80074EB8 45004010 */  beqz       $v0, .Ltitlescreen_and_loading_80074FD0
    /* 2AC58 80074EBC 5000B027 */   addiu     $s0, $sp, 0x50
    /* 2AC5C 80074EC0 21200002 */  addu       $a0, $s0, $zero
    /* 2AC60 80074EC4 43100300 */  sra        $v0, $v1, 1
    /* 2AC64 80074EC8 40280200 */  sll        $a1, $v0, 1
    /* 2AC68 80074ECC 2128A200 */  addu       $a1, $a1, $v0
    /* 2AC6C 80074ED0 80280500 */  sll        $a1, $a1, 2
    /* 2AC70 80074ED4 21282502 */  addu       $a1, $s1, $a1
    /* 2AC74 80074ED8 5970000C */  jal        func_8001C164
    /* 2AC78 80074EDC 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 2AC7C 80074EE0 21200002 */  addu       $a0, $s0, $zero
    /* 2AC80 80074EE4 21280002 */  addu       $a1, $s0, $zero
    /* 2AC84 80074EE8 806F000C */  jal        func_8001BE00
    /* 2AC88 80074EEC 21304002 */   addu      $a2, $s2, $zero
    /* 2AC8C 80074EF0 0780023C */  lui        $v0, %hi(D_80068C4C)
    /* 2AC90 80074EF4 4C8C428C */  lw         $v0, %lo(D_80068C4C)($v0)
    /* 2AC94 80074EF8 6000A427 */  addiu      $a0, $sp, 0x60
    /* 2AC98 80074EFC 43100200 */  sra        $v0, $v0, 1
    /* 2AC9C 80074F00 40280200 */  sll        $a1, $v0, 1
    /* 2ACA0 80074F04 2128A200 */  addu       $a1, $a1, $v0
    /* 2ACA4 80074F08 80280500 */  sll        $a1, $a1, 2
    /* 2ACA8 80074F0C 21282502 */  addu       $a1, $s1, $a1
    /* 2ACAC 80074F10 6370000C */  jal        func_8001C18C
    /* 2ACB0 80074F14 1200A524 */   addiu     $a1, $a1, 0x12
    /* 2ACB4 80074F18 6000A48F */  lw         $a0, 0x60($sp)
    /* 2ACB8 80074F1C 4000A58F */  lw         $a1, 0x40($sp)
    /* 2ACBC 80074F20 C06F000C */  jal        func_8001BF00
    /* 2ACC0 80074F24 00000000 */   nop
    /* 2ACC4 80074F28 6400A48F */  lw         $a0, 0x64($sp)
    /* 2ACC8 80074F2C 4400A58F */  lw         $a1, 0x44($sp)
    /* 2ACCC 80074F30 C06F000C */  jal        func_8001BF00
    /* 2ACD0 80074F34 6000A2AF */   sw        $v0, 0x60($sp)
    /* 2ACD4 80074F38 6800A48F */  lw         $a0, 0x68($sp)
    /* 2ACD8 80074F3C 4800A58F */  lw         $a1, 0x48($sp)
    /* 2ACDC 80074F40 C06F000C */  jal        func_8001BF00
    /* 2ACE0 80074F44 6400A2AF */   sw        $v0, 0x64($sp)
    /* 2ACE4 80074F48 21200002 */  addu       $a0, $s0, $zero
    /* 2ACE8 80074F4C 01000524 */  addiu      $a1, $zero, 0x1
    /* 2ACEC 80074F50 886E000C */  jal        func_8001BA20
    /* 2ACF0 80074F54 6800A2AF */   sw        $v0, 0x68($sp)
    /* 2ACF4 80074F58 00014228 */  slti       $v0, $v0, 0x100
    /* 2ACF8 80074F5C 1C004010 */  beqz       $v0, .Ltitlescreen_and_loading_80074FD0
    /* 2ACFC 80074F60 00000000 */   nop
    /* 2AD00 80074F64 6800A28F */  lw         $v0, 0x68($sp)
    /* 2AD04 80074F68 00000000 */  nop
    /* 2AD08 80074F6C FF004224 */  addiu      $v0, $v0, 0xFF
    /* 2AD0C 80074F70 FF01422C */  sltiu      $v0, $v0, 0x1FF
    /* 2AD10 80074F74 16004010 */  beqz       $v0, .Ltitlescreen_and_loading_80074FD0
    /* 2AD14 80074F78 21200002 */   addu      $a0, $s0, $zero
    /* 2AD18 80074F7C 526F000C */  jal        func_8001BD48
    /* 2AD1C 80074F80 01000524 */   addiu     $a1, $zero, 0x1
    /* 2AD20 80074F84 21204002 */  addu       $a0, $s2, $zero
    /* 2AD24 80074F88 21288000 */  addu       $a1, $a0, $zero
    /* 2AD28 80074F8C 736F000C */  jal        func_8001BDCC
    /* 2AD2C 80074F90 21300002 */   addu      $a2, $s0, $zero
    /* 2AD30 80074F94 6000A28F */  lw         $v0, 0x60($sp)
    /* 2AD34 80074F98 4000A38F */  lw         $v1, 0x40($sp)
    /* 2AD38 80074F9C 43100200 */  sra        $v0, $v0, 1
    /* 2AD3C 80074FA0 21186200 */  addu       $v1, $v1, $v0
    /* 2AD40 80074FA4 6400A28F */  lw         $v0, 0x64($sp)
    /* 2AD44 80074FA8 4000A3AF */  sw         $v1, 0x40($sp)
    /* 2AD48 80074FAC 4400A38F */  lw         $v1, 0x44($sp)
    /* 2AD4C 80074FB0 43100200 */  sra        $v0, $v0, 1
    /* 2AD50 80074FB4 21186200 */  addu       $v1, $v1, $v0
    /* 2AD54 80074FB8 6800A28F */  lw         $v0, 0x68($sp)
    /* 2AD58 80074FBC 4400A3AF */  sw         $v1, 0x44($sp)
    /* 2AD5C 80074FC0 4800A38F */  lw         $v1, 0x48($sp)
    /* 2AD60 80074FC4 43100200 */  sra        $v0, $v0, 1
    /* 2AD64 80074FC8 21186200 */  addu       $v1, $v1, $v0
    /* 2AD68 80074FCC 4800A3AF */  sw         $v1, 0x48($sp)
  .Ltitlescreen_and_loading_80074FD0:
    /* 2AD6C 80074FD0 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* 2AD70 80074FD4 AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* 2AD74 80074FD8 21200002 */  addu       $a0, $s0, $zero
    /* 2AD78 80074FDC 6C6F000C */  jal        func_8001BDB0
    /* 2AD7C 80074FE0 2000A527 */   addiu     $a1, $sp, 0x20
    /* 2AD80 80074FE4 1C000426 */  addiu      $a0, $s0, 0x1C
    /* 2AD84 80074FE8 6A70000C */  jal        func_8001C1A8
    /* 2AD88 80074FEC 4000A527 */   addiu     $a1, $sp, 0x40
    /* 2AD8C 80074FF0 A400BF8F */  lw         $ra, 0xA4($sp)
    /* 2AD90 80074FF4 A000B68F */  lw         $s6, 0xA0($sp)
    /* 2AD94 80074FF8 9C00B58F */  lw         $s5, 0x9C($sp)
    /* 2AD98 80074FFC 9800B48F */  lw         $s4, 0x98($sp)
    /* 2AD9C 80075000 9400B38F */  lw         $s3, 0x94($sp)
    /* 2ADA0 80075004 9000B28F */  lw         $s2, 0x90($sp)
    /* 2ADA4 80075008 8C00B18F */  lw         $s1, 0x8C($sp)
    /* 2ADA8 8007500C 8800B08F */  lw         $s0, 0x88($sp)
    /* 2ADAC 80075010 A800BD27 */  addiu      $sp, $sp, 0xA8
    /* 2ADB0 80075014 0800E003 */  jr         $ra
    /* 2ADB4 80075018 00000000 */   nop
endlabel func_titlescreen_and_loading_8007490C
