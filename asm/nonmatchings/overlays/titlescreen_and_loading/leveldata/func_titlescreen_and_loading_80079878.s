.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80079878, 0x1E0

glabel func_titlescreen_and_loading_80079878
    /* 2F614 80079878 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 2F618 8007987C 3000B6AF */  sw         $s6, 0x30($sp)
    /* 2F61C 80079880 21B08000 */  addu       $s6, $a0, $zero
    /* 2F620 80079884 3400B7AF */  sw         $s7, 0x34($sp)
    /* 2F624 80079888 21B8A000 */  addu       $s7, $a1, $zero
    /* 2F628 8007988C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2F62C 80079890 2198C000 */  addu       $s3, $a2, $zero
    /* 2F630 80079894 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2F634 80079898 21A0E000 */  addu       $s4, $a3, $zero
    /* 2F638 8007989C 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 2F63C 800798A0 10001524 */  addiu      $s5, $zero, 0x10
    /* 2F640 800798A4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2F644 800798A8 0680113C */  lui        $s1, %hi(D_80067030)
    /* 2F648 800798AC 3070318E */  lw         $s1, %lo(D_80067030)($s1)
    /* 2F64C 800798B0 2000622A */  slti       $v0, $s3, 0x20
    /* 2F650 800798B4 3800BFAF */  sw         $ra, 0x38($sp)
    /* 2F654 800798B8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2F658 800798BC 0F004010 */  beqz       $v0, .Ltitlescreen_and_loading_800798FC
    /* 2F65C 800798C0 1800B0AF */   sw        $s0, 0x18($sp)
    /* 2F660 800798C4 40101300 */  sll        $v0, $s3, 1
    /* 2F664 800798C8 21105300 */  addu       $v0, $v0, $s3
    /* 2F668 800798CC 40100200 */  sll        $v0, $v0, 1
    /* 2F66C 800798D0 0680033C */  lui        $v1, %hi(D_80063F44)
    /* 2F670 800798D4 443F6324 */  addiu      $v1, $v1, %lo(D_80063F44)
    /* 2F674 800798D8 21904300 */  addu       $s2, $v0, $v1
    /* 2F678 800798DC 00004392 */  lbu        $v1, 0x0($s2)
    /* 2F67C 800798E0 F7FF6226 */  addiu      $v0, $s3, -0x9
    /* 2F680 800798E4 0C00422C */  sltiu      $v0, $v0, 0xC
    /* 2F684 800798E8 01004238 */  xori       $v0, $v0, 0x1
    /* 2F688 800798EC 00A90200 */  sll        $s5, $v0, 4
    /* 2F68C 800798F0 82190300 */  srl        $v1, $v1, 6
    /* 2F690 800798F4 49E60108 */  j          .Ltitlescreen_and_loading_80079924
    /* 2F694 800798F8 98006724 */   addiu     $a3, $v1, 0x98
  .Ltitlescreen_and_loading_800798FC:
    /* 2F698 800798FC 40101300 */  sll        $v0, $s3, 1
    /* 2F69C 80079900 21105300 */  addu       $v0, $v0, $s3
    /* 2F6A0 80079904 40100200 */  sll        $v0, $v0, 1
    /* 2F6A4 80079908 0680033C */  lui        $v1, %hi(D_80063F2C)
    /* 2F6A8 8007990C 2C3F6324 */  addiu      $v1, $v1, %lo(D_80063F2C)
    /* 2F6AC 80079910 21904300 */  addu       $s2, $v0, $v1
    /* 2F6B0 80079914 00004292 */  lbu        $v0, 0x0($s2)
    /* 2F6B4 80079918 00000000 */  nop
    /* 2F6B8 8007991C 82110200 */  srl        $v0, $v0, 6
    /* 2F6BC 80079920 1C004724 */  addiu      $a3, $v0, 0x1C
  .Ltitlescreen_and_loading_80079924:
    /* 2F6C0 80079924 21202002 */  addu       $a0, $s1, $zero
    /* 2F6C4 80079928 01000524 */  addiu      $a1, $zero, 0x1
    /* 2F6C8 8007992C 21300000 */  addu       $a2, $zero, $zero
    /* 2F6CC 80079930 0768010C */  jal        func_8005A01C
    /* 2F6D0 80079934 1000A0AF */   sw        $zero, 0x10($sp)
    /* 2F6D4 80079938 21202002 */  addu       $a0, $s1, $zero
    /* 2F6D8 8007993C D56C000C */  jal        func_8001B354
    /* 2F6DC 80079940 2128A002 */   addu      $a1, $s5, $zero
    /* 2F6E0 80079944 0C002326 */  addiu      $v1, $s1, 0xC
    /* 2F6E4 80079948 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* 2F6E8 8007994C 21806000 */  addu       $s0, $v1, $zero
    /* 2F6EC 80079950 0680013C */  lui        $at, %hi(D_80067030)
    /* 2F6F0 80079954 307023AC */  sw         $v1, %lo(D_80067030)($at)
    /* 2F6F4 80079958 04008016 */  bnez       $s4, .Ltitlescreen_and_loading_8007996C
    /* 2F6F8 8007995C 0C0022AE */   sw        $v0, 0xC($s1)
    /* 2F6FC 80079960 8064023C */  lui        $v0, (0x64808080 >> 16)
    /* 2F700 80079964 67E60108 */  j          .Ltitlescreen_and_loading_8007999C
    /* 2F704 80079968 80804234 */   ori       $v0, $v0, (0x64808080 & 0xFFFF)
  .Ltitlescreen_and_loading_8007996C:
    /* 2F708 8007996C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F70C 80079970 03008216 */  bne        $s4, $v0, .Ltitlescreen_and_loading_80079980
    /* 2F710 80079974 2064023C */   lui       $v0, (0x6420E0E0 >> 16)
    /* 2F714 80079978 67E60108 */  j          .Ltitlescreen_and_loading_8007999C
    /* 2F718 8007997C E0E04234 */   ori       $v0, $v0, (0x6420E0E0 & 0xFFFF)
  .Ltitlescreen_and_loading_80079980:
    /* 2F71C 80079980 02000224 */  addiu      $v0, $zero, 0x2
    /* 2F720 80079984 03008216 */  bne        $s4, $v0, .Ltitlescreen_and_loading_80079994
    /* 2F724 80079988 6064023C */   lui       $v0, (0x64606060 >> 16)
    /* 2F728 8007998C 67E60108 */  j          .Ltitlescreen_and_loading_8007999C
    /* 2F72C 80079990 60604234 */   ori       $v0, $v0, (0x64606060 & 0xFFFF)
  .Ltitlescreen_and_loading_80079994:
    /* 2F730 80079994 D064023C */  lui        $v0, (0x64D0D0D0 >> 16)
    /* 2F734 80079998 D0D04234 */  ori        $v0, $v0, (0x64D0D0D0 & 0xFFFF)
  .Ltitlescreen_and_loading_8007999C:
    /* 2F738 8007999C 100022AE */  sw         $v0, 0x10($s1)
    /* 2F73C 800799A0 2000662A */  slti       $a2, $s3, 0x20
    /* 2F740 800799A4 02004392 */  lbu        $v1, 0x2($s2)
    /* 2F744 800799A8 03004292 */  lbu        $v0, 0x3($s2)
    /* 2F748 800799AC 7F006330 */  andi       $v1, $v1, 0x7F
    /* 2F74C 800799B0 80110200 */  sll        $v0, $v0, 6
    /* 2F750 800799B4 20404224 */  addiu      $v0, $v0, 0x4020
    /* 2F754 800799B8 21106200 */  addu       $v0, $v1, $v0
    /* 2F758 800799BC 0300C014 */  bnez       $a2, .Ltitlescreen_and_loading_800799CC
    /* 2F75C 800799C0 0E0002A6 */   sh        $v0, 0xE($s0)
    /* 2F760 800799C4 10004224 */  addiu      $v0, $v0, 0x10
    /* 2F764 800799C8 0E0002A6 */  sh         $v0, 0xE($s0)
  .Ltitlescreen_and_loading_800799CC:
    /* 2F768 800799CC 080016A6 */  sh         $s6, 0x8($s0)
    /* 2F76C 800799D0 0A0017A6 */  sh         $s7, 0xA($s0)
    /* 2F770 800799D4 04004292 */  lbu        $v0, 0x4($s2)
    /* 2F774 800799D8 00000000 */  nop
    /* 2F778 800799DC 100002A6 */  sh         $v0, 0x10($s0)
    /* 2F77C 800799E0 05004292 */  lbu        $v0, 0x5($s2)
    /* 2F780 800799E4 00000000 */  nop
    /* 2F784 800799E8 120002A6 */  sh         $v0, 0x12($s0)
    /* 2F788 800799EC 00004292 */  lbu        $v0, 0x0($s2)
    /* 2F78C 800799F0 0300C014 */  bnez       $a2, .Ltitlescreen_and_loading_80079A00
    /* 2F790 800799F4 3F004230 */   andi      $v0, $v0, 0x3F
    /* 2F794 800799F8 81E60108 */  j          .Ltitlescreen_and_loading_80079A04
    /* 2F798 800799FC 80100200 */   sll       $v0, $v0, 2
  .Ltitlescreen_and_loading_80079A00:
    /* 2F79C 80079A00 40100200 */  sll        $v0, $v0, 1
  .Ltitlescreen_and_loading_80079A04:
    /* 2F7A0 80079A04 0C0002A2 */  sb         $v0, 0xC($s0)
    /* 2F7A4 80079A08 21200002 */  addu       $a0, $s0, $zero
    /* 2F7A8 80079A0C 01004292 */  lbu        $v0, 0x1($s2)
    /* 2F7AC 80079A10 2128A002 */  addu       $a1, $s5, $zero
    /* 2F7B0 80079A14 D56C000C */  jal        func_8001B354
    /* 2F7B4 80079A18 0D0002A2 */   sb        $v0, 0xD($s0)
    /* 2F7B8 80079A1C 14000226 */  addiu      $v0, $s0, 0x14
    /* 2F7BC 80079A20 0680013C */  lui        $at, %hi(D_80067030)
    /* 2F7C0 80079A24 307022AC */  sw         $v0, %lo(D_80067030)($at)
    /* 2F7C4 80079A28 3800BF8F */  lw         $ra, 0x38($sp)
    /* 2F7C8 80079A2C 3400B78F */  lw         $s7, 0x34($sp)
    /* 2F7CC 80079A30 3000B68F */  lw         $s6, 0x30($sp)
    /* 2F7D0 80079A34 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2F7D4 80079A38 2800B48F */  lw         $s4, 0x28($sp)
    /* 2F7D8 80079A3C 2400B38F */  lw         $s3, 0x24($sp)
    /* 2F7DC 80079A40 2000B28F */  lw         $s2, 0x20($sp)
    /* 2F7E0 80079A44 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2F7E4 80079A48 1800B08F */  lw         $s0, 0x18($sp)
    /* 2F7E8 80079A4C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 2F7EC 80079A50 0800E003 */  jr         $ra
    /* 2F7F0 80079A54 00000000 */   nop
endlabel func_titlescreen_and_loading_80079878
