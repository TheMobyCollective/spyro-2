.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001DC6C, 0x598

glabel func_8001DC6C
    /* E46C 8001DC6C 0680023C */  lui        $v0, %hi(D_80067F64)
    /* E470 8001DC70 647F428C */  lw         $v0, %lo(D_80067F64)($v0)
    /* E474 8001DC74 0680063C */  lui        $a2, %hi(D_80067F3C)
    /* E478 8001DC78 3C7FC68C */  lw         $a2, %lo(D_80067F3C)($a2)
    /* E47C 8001DC7C 00000000 */  nop
    /* E480 8001DC80 18004600 */  mult       $v0, $a2
    /* E484 8001DC84 0680053C */  lui        $a1, %hi(D_80067F50)
    /* E488 8001DC88 507FA524 */  addiu      $a1, $a1, %lo(D_80067F50)
    /* E48C 8001DC8C 0000A38C */  lw         $v1, 0x0($a1)
    /* E490 8001DC90 12200000 */  mflo       $a0
    /* E494 8001DC94 0680023C */  lui        $v0, %hi(D_80067F78)
    /* E498 8001DC98 787F428C */  lw         $v0, %lo(D_80067F78)($v0)
    /* E49C 8001DC9C 00000000 */  nop
    /* E4A0 8001DCA0 18004300 */  mult       $v0, $v1
    /* E4A4 8001DCA4 12100000 */  mflo       $v0
    /* E4A8 8001DCA8 23108200 */  subu       $v0, $a0, $v0
    /* E4AC 8001DCAC 83110200 */  sra        $v0, $v0, 6
    /* E4B0 8001DCB0 21186200 */  addu       $v1, $v1, $v0
    /* E4B4 8001DCB4 0000A3AC */  sw         $v1, 0x0($a1)
    /* E4B8 8001DCB8 0680023C */  lui        $v0, %hi(D_80067F8C)
    /* E4BC 8001DCBC 8C7F428C */  lw         $v0, %lo(D_80067F8C)($v0)
    /* E4C0 8001DCC0 02006104 */  bgez       $v1, .L8001DCCC
    /* E4C4 8001DCC4 00000000 */   nop
    /* E4C8 8001DCC8 23180300 */  negu       $v1, $v1
  .L8001DCCC:
    /* E4CC 8001DCCC 2A186200 */  slt        $v1, $v1, $v0
    /* E4D0 8001DCD0 0C006010 */  beqz       $v1, .L8001DD04
    /* E4D4 8001DCD4 C0110600 */   sll       $v0, $a2, 7
    /* E4D8 8001DCD8 0000A2AC */  sw         $v0, 0x0($a1)
    /* E4DC 8001DCDC 01014228 */  slti       $v0, $v0, 0x101
    /* E4E0 8001DCE0 02004014 */  bnez       $v0, .L8001DCEC
    /* E4E4 8001DCE4 00010224 */   addiu     $v0, $zero, 0x100
    /* E4E8 8001DCE8 0000A2AC */  sw         $v0, 0x0($a1)
  .L8001DCEC:
    /* E4EC 8001DCEC 0000A28C */  lw         $v0, 0x0($a1)
    /* E4F0 8001DCF0 00000000 */  nop
    /* E4F4 8001DCF4 00FF4228 */  slti       $v0, $v0, -0x100
    /* E4F8 8001DCF8 02004010 */  beqz       $v0, .L8001DD04
    /* E4FC 8001DCFC 00FF0224 */   addiu     $v0, $zero, -0x100
    /* E500 8001DD00 0000A2AC */  sw         $v0, 0x0($a1)
  .L8001DD04:
    /* E504 8001DD04 0680053C */  lui        $a1, %hi(D_80067FA0)
    /* E508 8001DD08 A07FA524 */  addiu      $a1, $a1, %lo(D_80067FA0)
    /* E50C 8001DD0C 0000A48C */  lw         $a0, 0x0($a1)
    /* E510 8001DD10 00000000 */  nop
    /* E514 8001DD14 0D008004 */  bltz       $a0, .L8001DD4C
    /* E518 8001DD18 23180400 */   negu      $v1, $a0
    /* E51C 8001DD1C B0FFA28C */  lw         $v0, -0x50($a1)
    /* E520 8001DD20 001A0300 */  sll        $v1, $v1, 8
    /* E524 8001DD24 2A104300 */  slt        $v0, $v0, $v1
    /* E528 8001DD28 02004010 */  beqz       $v0, .L8001DD34
    /* E52C 8001DD2C 00000000 */   nop
    /* E530 8001DD30 B0FFA3AC */  sw         $v1, -0x50($a1)
  .L8001DD34:
    /* E534 8001DD34 B0FFA28C */  lw         $v0, -0x50($a1)
    /* E538 8001DD38 001A0400 */  sll        $v1, $a0, 8
    /* E53C 8001DD3C 2A106200 */  slt        $v0, $v1, $v0
    /* E540 8001DD40 02004010 */  beqz       $v0, .L8001DD4C
    /* E544 8001DD44 00000000 */   nop
    /* E548 8001DD48 B0FFA3AC */  sw         $v1, -0x50($a1)
  .L8001DD4C:
    /* E54C 8001DD4C 0680043C */  lui        $a0, %hi(D_80067F28)
    /* E550 8001DD50 287F8424 */  addiu      $a0, $a0, %lo(D_80067F28)
    /* E554 8001DD54 0680023C */  lui        $v0, %hi(D_80067F50)
    /* E558 8001DD58 507F428C */  lw         $v0, %lo(D_80067F50)($v0)
    /* E55C 8001DD5C 0000838C */  lw         $v1, 0x0($a0)
    /* E560 8001DD60 03120200 */  sra        $v0, $v0, 8
    /* E564 8001DD64 21186200 */  addu       $v1, $v1, $v0
    /* E568 8001DD68 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* E56C 8001DD6C 01086228 */  slti       $v0, $v1, 0x801
    /* E570 8001DD70 03004014 */  bnez       $v0, .L8001DD80
    /* E574 8001DD74 000083AC */   sw        $v1, 0x0($a0)
    /* E578 8001DD78 00F06224 */  addiu      $v0, $v1, -0x1000
    /* E57C 8001DD7C 000082AC */  sw         $v0, 0x0($a0)
  .L8001DD80:
    /* E580 8001DD80 0680023C */  lui        $v0, %hi(D_80067F68)
    /* E584 8001DD84 687F428C */  lw         $v0, %lo(D_80067F68)($v0)
    /* E588 8001DD88 0680053C */  lui        $a1, %hi(D_80067F40)
    /* E58C 8001DD8C 407FA58C */  lw         $a1, %lo(D_80067F40)($a1)
    /* E590 8001DD90 00000000 */  nop
    /* E594 8001DD94 18004500 */  mult       $v0, $a1
    /* E598 8001DD98 0680033C */  lui        $v1, %hi(D_80067F54)
    /* E59C 8001DD9C 547F638C */  lw         $v1, %lo(D_80067F54)($v1)
    /* E5A0 8001DDA0 12200000 */  mflo       $a0
    /* E5A4 8001DDA4 0680023C */  lui        $v0, %hi(D_80067F7C)
    /* E5A8 8001DDA8 7C7F428C */  lw         $v0, %lo(D_80067F7C)($v0)
    /* E5AC 8001DDAC 00000000 */  nop
    /* E5B0 8001DDB0 18004300 */  mult       $v0, $v1
    /* E5B4 8001DDB4 12100000 */  mflo       $v0
    /* E5B8 8001DDB8 23108200 */  subu       $v0, $a0, $v0
    /* E5BC 8001DDBC 83110200 */  sra        $v0, $v0, 6
    /* E5C0 8001DDC0 21186200 */  addu       $v1, $v1, $v0
    /* E5C4 8001DDC4 0680023C */  lui        $v0, %hi(D_80067F90)
    /* E5C8 8001DDC8 907F428C */  lw         $v0, %lo(D_80067F90)($v0)
    /* E5CC 8001DDCC 0680013C */  lui        $at, %hi(D_80067F54)
    /* E5D0 8001DDD0 547F23AC */  sw         $v1, %lo(D_80067F54)($at)
    /* E5D4 8001DDD4 02006104 */  bgez       $v1, .L8001DDE0
    /* E5D8 8001DDD8 00000000 */   nop
    /* E5DC 8001DDDC 23180300 */  negu       $v1, $v1
  .L8001DDE0:
    /* E5E0 8001DDE0 2A186200 */  slt        $v1, $v1, $v0
    /* E5E4 8001DDE4 10006010 */  beqz       $v1, .L8001DE28
    /* E5E8 8001DDE8 C0110500 */   sll       $v0, $a1, 7
    /* E5EC 8001DDEC 0680013C */  lui        $at, %hi(D_80067F54)
    /* E5F0 8001DDF0 547F22AC */  sw         $v0, %lo(D_80067F54)($at)
    /* E5F4 8001DDF4 01014228 */  slti       $v0, $v0, 0x101
    /* E5F8 8001DDF8 03004014 */  bnez       $v0, .L8001DE08
    /* E5FC 8001DDFC 00010224 */   addiu     $v0, $zero, 0x100
    /* E600 8001DE00 0680013C */  lui        $at, %hi(D_80067F54)
    /* E604 8001DE04 547F22AC */  sw         $v0, %lo(D_80067F54)($at)
  .L8001DE08:
    /* E608 8001DE08 0680023C */  lui        $v0, %hi(D_80067F54)
    /* E60C 8001DE0C 547F428C */  lw         $v0, %lo(D_80067F54)($v0)
    /* E610 8001DE10 00000000 */  nop
    /* E614 8001DE14 00FF4228 */  slti       $v0, $v0, -0x100
    /* E618 8001DE18 03004010 */  beqz       $v0, .L8001DE28
    /* E61C 8001DE1C 00FF0224 */   addiu     $v0, $zero, -0x100
    /* E620 8001DE20 0680013C */  lui        $at, %hi(D_80067F54)
    /* E624 8001DE24 547F22AC */  sw         $v0, %lo(D_80067F54)($at)
  .L8001DE28:
    /* E628 8001DE28 0680053C */  lui        $a1, %hi(D_80067FA4)
    /* E62C 8001DE2C A47FA524 */  addiu      $a1, $a1, %lo(D_80067FA4)
    /* E630 8001DE30 0000A48C */  lw         $a0, 0x0($a1)
    /* E634 8001DE34 00000000 */  nop
    /* E638 8001DE38 0D008004 */  bltz       $a0, .L8001DE70
    /* E63C 8001DE3C 23180400 */   negu      $v1, $a0
    /* E640 8001DE40 B0FFA28C */  lw         $v0, -0x50($a1)
    /* E644 8001DE44 001A0300 */  sll        $v1, $v1, 8
    /* E648 8001DE48 2A104300 */  slt        $v0, $v0, $v1
    /* E64C 8001DE4C 02004010 */  beqz       $v0, .L8001DE58
    /* E650 8001DE50 00000000 */   nop
    /* E654 8001DE54 B0FFA3AC */  sw         $v1, -0x50($a1)
  .L8001DE58:
    /* E658 8001DE58 B0FFA28C */  lw         $v0, -0x50($a1)
    /* E65C 8001DE5C 001A0400 */  sll        $v1, $a0, 8
    /* E660 8001DE60 2A106200 */  slt        $v0, $v1, $v0
    /* E664 8001DE64 02004010 */  beqz       $v0, .L8001DE70
    /* E668 8001DE68 00000000 */   nop
    /* E66C 8001DE6C B0FFA3AC */  sw         $v1, -0x50($a1)
  .L8001DE70:
    /* E670 8001DE70 0680043C */  lui        $a0, %hi(D_80067F2C)
    /* E674 8001DE74 2C7F8424 */  addiu      $a0, $a0, %lo(D_80067F2C)
    /* E678 8001DE78 0680023C */  lui        $v0, %hi(D_80067F54)
    /* E67C 8001DE7C 547F428C */  lw         $v0, %lo(D_80067F54)($v0)
    /* E680 8001DE80 0000838C */  lw         $v1, 0x0($a0)
    /* E684 8001DE84 03120200 */  sra        $v0, $v0, 8
    /* E688 8001DE88 21186200 */  addu       $v1, $v1, $v0
    /* E68C 8001DE8C FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* E690 8001DE90 01086228 */  slti       $v0, $v1, 0x801
    /* E694 8001DE94 03004014 */  bnez       $v0, .L8001DEA4
    /* E698 8001DE98 000083AC */   sw        $v1, 0x0($a0)
    /* E69C 8001DE9C 00F06224 */  addiu      $v0, $v1, -0x1000
    /* E6A0 8001DEA0 000082AC */  sw         $v0, 0x0($a0)
  .L8001DEA4:
    /* E6A4 8001DEA4 0680023C */  lui        $v0, %hi(D_80067F6C)
    /* E6A8 8001DEA8 6C7F428C */  lw         $v0, %lo(D_80067F6C)($v0)
    /* E6AC 8001DEAC 0680053C */  lui        $a1, %hi(D_80067F44)
    /* E6B0 8001DEB0 447FA58C */  lw         $a1, %lo(D_80067F44)($a1)
    /* E6B4 8001DEB4 00000000 */  nop
    /* E6B8 8001DEB8 18004500 */  mult       $v0, $a1
    /* E6BC 8001DEBC 0680033C */  lui        $v1, %hi(D_80067F58)
    /* E6C0 8001DEC0 587F638C */  lw         $v1, %lo(D_80067F58)($v1)
    /* E6C4 8001DEC4 12200000 */  mflo       $a0
    /* E6C8 8001DEC8 0680023C */  lui        $v0, %hi(D_80067F80)
    /* E6CC 8001DECC 807F428C */  lw         $v0, %lo(D_80067F80)($v0)
    /* E6D0 8001DED0 00000000 */  nop
    /* E6D4 8001DED4 18004300 */  mult       $v0, $v1
    /* E6D8 8001DED8 12100000 */  mflo       $v0
    /* E6DC 8001DEDC 23108200 */  subu       $v0, $a0, $v0
    /* E6E0 8001DEE0 83110200 */  sra        $v0, $v0, 6
    /* E6E4 8001DEE4 21186200 */  addu       $v1, $v1, $v0
    /* E6E8 8001DEE8 0680023C */  lui        $v0, %hi(D_80067F94)
    /* E6EC 8001DEEC 947F428C */  lw         $v0, %lo(D_80067F94)($v0)
    /* E6F0 8001DEF0 0680013C */  lui        $at, %hi(D_80067F58)
    /* E6F4 8001DEF4 587F23AC */  sw         $v1, %lo(D_80067F58)($at)
    /* E6F8 8001DEF8 02006104 */  bgez       $v1, .L8001DF04
    /* E6FC 8001DEFC 00000000 */   nop
    /* E700 8001DF00 23180300 */  negu       $v1, $v1
  .L8001DF04:
    /* E704 8001DF04 2A186200 */  slt        $v1, $v1, $v0
    /* E708 8001DF08 10006010 */  beqz       $v1, .L8001DF4C
    /* E70C 8001DF0C C0110500 */   sll       $v0, $a1, 7
    /* E710 8001DF10 0680013C */  lui        $at, %hi(D_80067F58)
    /* E714 8001DF14 587F22AC */  sw         $v0, %lo(D_80067F58)($at)
    /* E718 8001DF18 01014228 */  slti       $v0, $v0, 0x101
    /* E71C 8001DF1C 03004014 */  bnez       $v0, .L8001DF2C
    /* E720 8001DF20 00010224 */   addiu     $v0, $zero, 0x100
    /* E724 8001DF24 0680013C */  lui        $at, %hi(D_80067F58)
    /* E728 8001DF28 587F22AC */  sw         $v0, %lo(D_80067F58)($at)
  .L8001DF2C:
    /* E72C 8001DF2C 0680023C */  lui        $v0, %hi(D_80067F58)
    /* E730 8001DF30 587F428C */  lw         $v0, %lo(D_80067F58)($v0)
    /* E734 8001DF34 00000000 */  nop
    /* E738 8001DF38 00FF4228 */  slti       $v0, $v0, -0x100
    /* E73C 8001DF3C 03004010 */  beqz       $v0, .L8001DF4C
    /* E740 8001DF40 00FF0224 */   addiu     $v0, $zero, -0x100
    /* E744 8001DF44 0680013C */  lui        $at, %hi(D_80067F58)
    /* E748 8001DF48 587F22AC */  sw         $v0, %lo(D_80067F58)($at)
  .L8001DF4C:
    /* E74C 8001DF4C 0680053C */  lui        $a1, %hi(D_80067FA8)
    /* E750 8001DF50 A87FA524 */  addiu      $a1, $a1, %lo(D_80067FA8)
    /* E754 8001DF54 0000A48C */  lw         $a0, 0x0($a1)
    /* E758 8001DF58 00000000 */  nop
    /* E75C 8001DF5C 0D008004 */  bltz       $a0, .L8001DF94
    /* E760 8001DF60 23180400 */   negu      $v1, $a0
    /* E764 8001DF64 B0FFA28C */  lw         $v0, -0x50($a1)
    /* E768 8001DF68 001A0300 */  sll        $v1, $v1, 8
    /* E76C 8001DF6C 2A104300 */  slt        $v0, $v0, $v1
    /* E770 8001DF70 02004010 */  beqz       $v0, .L8001DF7C
    /* E774 8001DF74 00000000 */   nop
    /* E778 8001DF78 B0FFA3AC */  sw         $v1, -0x50($a1)
  .L8001DF7C:
    /* E77C 8001DF7C B0FFA28C */  lw         $v0, -0x50($a1)
    /* E780 8001DF80 001A0400 */  sll        $v1, $a0, 8
    /* E784 8001DF84 2A106200 */  slt        $v0, $v1, $v0
    /* E788 8001DF88 02004010 */  beqz       $v0, .L8001DF94
    /* E78C 8001DF8C 00000000 */   nop
    /* E790 8001DF90 B0FFA3AC */  sw         $v1, -0x50($a1)
  .L8001DF94:
    /* E794 8001DF94 0680023C */  lui        $v0, %hi(D_80067F70)
    /* E798 8001DF98 707F428C */  lw         $v0, %lo(D_80067F70)($v0)
    /* E79C 8001DF9C 0680073C */  lui        $a3, %hi(D_80067F48)
    /* E7A0 8001DFA0 487FE78C */  lw         $a3, %lo(D_80067F48)($a3)
    /* E7A4 8001DFA4 00000000 */  nop
    /* E7A8 8001DFA8 18004700 */  mult       $v0, $a3
    /* E7AC 8001DFAC 0680043C */  lui        $a0, %hi(D_80067F5C)
    /* E7B0 8001DFB0 5C7F848C */  lw         $a0, %lo(D_80067F5C)($a0)
    /* E7B4 8001DFB4 12300000 */  mflo       $a2
    /* E7B8 8001DFB8 0680023C */  lui        $v0, %hi(D_80067F84)
    /* E7BC 8001DFBC 847F428C */  lw         $v0, %lo(D_80067F84)($v0)
    /* E7C0 8001DFC0 00000000 */  nop
    /* E7C4 8001DFC4 18004400 */  mult       $v0, $a0
    /* E7C8 8001DFC8 0680053C */  lui        $a1, %hi(D_80067F30)
    /* E7CC 8001DFCC 307FA524 */  addiu      $a1, $a1, %lo(D_80067F30)
    /* E7D0 8001DFD0 0680023C */  lui        $v0, %hi(D_80067F58)
    /* E7D4 8001DFD4 587F428C */  lw         $v0, %lo(D_80067F58)($v0)
    /* E7D8 8001DFD8 0000A38C */  lw         $v1, 0x0($a1)
    /* E7DC 8001DFDC 03120200 */  sra        $v0, $v0, 8
    /* E7E0 8001DFE0 21186200 */  addu       $v1, $v1, $v0
    /* E7E4 8001DFE4 0000A3AC */  sw         $v1, 0x0($a1)
    /* E7E8 8001DFE8 12480000 */  mflo       $t1
    /* E7EC 8001DFEC 2310C900 */  subu       $v0, $a2, $t1
    /* E7F0 8001DFF0 83110200 */  sra        $v0, $v0, 6
    /* E7F4 8001DFF4 21208200 */  addu       $a0, $a0, $v0
    /* E7F8 8001DFF8 0680023C */  lui        $v0, %hi(D_80067F98)
    /* E7FC 8001DFFC 987F428C */  lw         $v0, %lo(D_80067F98)($v0)
    /* E800 8001E000 0680013C */  lui        $at, %hi(D_80067F5C)
    /* E804 8001E004 5C7F24AC */  sw         $a0, %lo(D_80067F5C)($at)
    /* E808 8001E008 02008104 */  bgez       $a0, .L8001E014
    /* E80C 8001E00C 00000000 */   nop
    /* E810 8001E010 23200400 */  negu       $a0, $a0
  .L8001E014:
    /* E814 8001E014 2A208200 */  slt        $a0, $a0, $v0
    /* E818 8001E018 10008010 */  beqz       $a0, .L8001E05C
    /* E81C 8001E01C C0110700 */   sll       $v0, $a3, 7
    /* E820 8001E020 0680013C */  lui        $at, %hi(D_80067F5C)
    /* E824 8001E024 5C7F22AC */  sw         $v0, %lo(D_80067F5C)($at)
    /* E828 8001E028 01014228 */  slti       $v0, $v0, 0x101
    /* E82C 8001E02C 03004014 */  bnez       $v0, .L8001E03C
    /* E830 8001E030 00010224 */   addiu     $v0, $zero, 0x100
    /* E834 8001E034 0680013C */  lui        $at, %hi(D_80067F5C)
    /* E838 8001E038 5C7F22AC */  sw         $v0, %lo(D_80067F5C)($at)
  .L8001E03C:
    /* E83C 8001E03C 0680023C */  lui        $v0, %hi(D_80067F5C)
    /* E840 8001E040 5C7F428C */  lw         $v0, %lo(D_80067F5C)($v0)
    /* E844 8001E044 00000000 */  nop
    /* E848 8001E048 00FF4228 */  slti       $v0, $v0, -0x100
    /* E84C 8001E04C 03004010 */  beqz       $v0, .L8001E05C
    /* E850 8001E050 00FF0224 */   addiu     $v0, $zero, -0x100
    /* E854 8001E054 0680013C */  lui        $at, %hi(D_80067F5C)
    /* E858 8001E058 5C7F22AC */  sw         $v0, %lo(D_80067F5C)($at)
  .L8001E05C:
    /* E85C 8001E05C 0680053C */  lui        $a1, %hi(D_80067FAC)
    /* E860 8001E060 AC7FA524 */  addiu      $a1, $a1, %lo(D_80067FAC)
    /* E864 8001E064 0000A48C */  lw         $a0, 0x0($a1)
    /* E868 8001E068 00000000 */  nop
    /* E86C 8001E06C 0D008004 */  bltz       $a0, .L8001E0A4
    /* E870 8001E070 23180400 */   negu      $v1, $a0
    /* E874 8001E074 B0FFA28C */  lw         $v0, -0x50($a1)
    /* E878 8001E078 001A0300 */  sll        $v1, $v1, 8
    /* E87C 8001E07C 2A104300 */  slt        $v0, $v0, $v1
    /* E880 8001E080 02004010 */  beqz       $v0, .L8001E08C
    /* E884 8001E084 00000000 */   nop
    /* E888 8001E088 B0FFA3AC */  sw         $v1, -0x50($a1)
  .L8001E08C:
    /* E88C 8001E08C B0FFA28C */  lw         $v0, -0x50($a1)
    /* E890 8001E090 001A0400 */  sll        $v1, $a0, 8
    /* E894 8001E094 2A106200 */  slt        $v0, $v1, $v0
    /* E898 8001E098 02004010 */  beqz       $v0, .L8001E0A4
    /* E89C 8001E09C 00000000 */   nop
    /* E8A0 8001E0A0 B0FFA3AC */  sw         $v1, -0x50($a1)
  .L8001E0A4:
    /* E8A4 8001E0A4 0680043C */  lui        $a0, %hi(D_80067F34)
    /* E8A8 8001E0A8 347F8424 */  addiu      $a0, $a0, %lo(D_80067F34)
    /* E8AC 8001E0AC 0680023C */  lui        $v0, %hi(D_80067F5C)
    /* E8B0 8001E0B0 5C7F428C */  lw         $v0, %lo(D_80067F5C)($v0)
    /* E8B4 8001E0B4 0000838C */  lw         $v1, 0x0($a0)
    /* E8B8 8001E0B8 03120200 */  sra        $v0, $v0, 8
    /* E8BC 8001E0BC 21186200 */  addu       $v1, $v1, $v0
    /* E8C0 8001E0C0 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* E8C4 8001E0C4 01086228 */  slti       $v0, $v1, 0x801
    /* E8C8 8001E0C8 03004014 */  bnez       $v0, .L8001E0D8
    /* E8CC 8001E0CC 000083AC */   sw        $v1, 0x0($a0)
    /* E8D0 8001E0D0 00F06224 */  addiu      $v0, $v1, -0x1000
    /* E8D4 8001E0D4 000082AC */  sw         $v0, 0x0($a0)
  .L8001E0D8:
    /* E8D8 8001E0D8 0680023C */  lui        $v0, %hi(D_80067F74)
    /* E8DC 8001E0DC 747F428C */  lw         $v0, %lo(D_80067F74)($v0)
    /* E8E0 8001E0E0 0680053C */  lui        $a1, %hi(D_80067F4C)
    /* E8E4 8001E0E4 4C7FA58C */  lw         $a1, %lo(D_80067F4C)($a1)
    /* E8E8 8001E0E8 00000000 */  nop
    /* E8EC 8001E0EC 18004500 */  mult       $v0, $a1
    /* E8F0 8001E0F0 0680033C */  lui        $v1, %hi(D_80067F60)
    /* E8F4 8001E0F4 607F638C */  lw         $v1, %lo(D_80067F60)($v1)
    /* E8F8 8001E0F8 12200000 */  mflo       $a0
    /* E8FC 8001E0FC 0680023C */  lui        $v0, %hi(D_80067F88)
    /* E900 8001E100 887F428C */  lw         $v0, %lo(D_80067F88)($v0)
    /* E904 8001E104 00000000 */  nop
    /* E908 8001E108 18004300 */  mult       $v0, $v1
    /* E90C 8001E10C 12100000 */  mflo       $v0
    /* E910 8001E110 23108200 */  subu       $v0, $a0, $v0
    /* E914 8001E114 83110200 */  sra        $v0, $v0, 6
    /* E918 8001E118 21186200 */  addu       $v1, $v1, $v0
    /* E91C 8001E11C 0680023C */  lui        $v0, %hi(D_80067F9C)
    /* E920 8001E120 9C7F428C */  lw         $v0, %lo(D_80067F9C)($v0)
    /* E924 8001E124 0680013C */  lui        $at, %hi(D_80067F60)
    /* E928 8001E128 607F23AC */  sw         $v1, %lo(D_80067F60)($at)
    /* E92C 8001E12C 02006104 */  bgez       $v1, .L8001E138
    /* E930 8001E130 00000000 */   nop
    /* E934 8001E134 23180300 */  negu       $v1, $v1
  .L8001E138:
    /* E938 8001E138 2A186200 */  slt        $v1, $v1, $v0
    /* E93C 8001E13C 10006010 */  beqz       $v1, .L8001E180
    /* E940 8001E140 C0110500 */   sll       $v0, $a1, 7
    /* E944 8001E144 0680013C */  lui        $at, %hi(D_80067F60)
    /* E948 8001E148 607F22AC */  sw         $v0, %lo(D_80067F60)($at)
    /* E94C 8001E14C 01014228 */  slti       $v0, $v0, 0x101
    /* E950 8001E150 03004014 */  bnez       $v0, .L8001E160
    /* E954 8001E154 00010224 */   addiu     $v0, $zero, 0x100
    /* E958 8001E158 0680013C */  lui        $at, %hi(D_80067F60)
    /* E95C 8001E15C 607F22AC */  sw         $v0, %lo(D_80067F60)($at)
  .L8001E160:
    /* E960 8001E160 0680023C */  lui        $v0, %hi(D_80067F60)
    /* E964 8001E164 607F428C */  lw         $v0, %lo(D_80067F60)($v0)
    /* E968 8001E168 00000000 */  nop
    /* E96C 8001E16C 00FF4228 */  slti       $v0, $v0, -0x100
    /* E970 8001E170 03004010 */  beqz       $v0, .L8001E180
    /* E974 8001E174 00FF0224 */   addiu     $v0, $zero, -0x100
    /* E978 8001E178 0680013C */  lui        $at, %hi(D_80067F60)
    /* E97C 8001E17C 607F22AC */  sw         $v0, %lo(D_80067F60)($at)
  .L8001E180:
    /* E980 8001E180 0680053C */  lui        $a1, %hi(D_80067FB0)
    /* E984 8001E184 B07FA524 */  addiu      $a1, $a1, %lo(D_80067FB0)
    /* E988 8001E188 0000A48C */  lw         $a0, 0x0($a1)
    /* E98C 8001E18C 00000000 */  nop
    /* E990 8001E190 0D008004 */  bltz       $a0, .L8001E1C8
    /* E994 8001E194 23180400 */   negu      $v1, $a0
    /* E998 8001E198 B0FFA28C */  lw         $v0, -0x50($a1)
    /* E99C 8001E19C 001A0300 */  sll        $v1, $v1, 8
    /* E9A0 8001E1A0 2A104300 */  slt        $v0, $v0, $v1
    /* E9A4 8001E1A4 02004010 */  beqz       $v0, .L8001E1B0
    /* E9A8 8001E1A8 00000000 */   nop
    /* E9AC 8001E1AC B0FFA3AC */  sw         $v1, -0x50($a1)
  .L8001E1B0:
    /* E9B0 8001E1B0 B0FFA28C */  lw         $v0, -0x50($a1)
    /* E9B4 8001E1B4 001A0400 */  sll        $v1, $a0, 8
    /* E9B8 8001E1B8 2A106200 */  slt        $v0, $v1, $v0
    /* E9BC 8001E1BC 02004010 */  beqz       $v0, .L8001E1C8
    /* E9C0 8001E1C0 00000000 */   nop
    /* E9C4 8001E1C4 B0FFA3AC */  sw         $v1, -0x50($a1)
  .L8001E1C8:
    /* E9C8 8001E1C8 0680043C */  lui        $a0, %hi(D_80067F38)
    /* E9CC 8001E1CC 387F8424 */  addiu      $a0, $a0, %lo(D_80067F38)
    /* E9D0 8001E1D0 0680023C */  lui        $v0, %hi(D_80067F60)
    /* E9D4 8001E1D4 607F428C */  lw         $v0, %lo(D_80067F60)($v0)
    /* E9D8 8001E1D8 0000838C */  lw         $v1, 0x0($a0)
    /* E9DC 8001E1DC 03120200 */  sra        $v0, $v0, 8
    /* E9E0 8001E1E0 21186200 */  addu       $v1, $v1, $v0
    /* E9E4 8001E1E4 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* E9E8 8001E1E8 01086228 */  slti       $v0, $v1, 0x801
    /* E9EC 8001E1EC 03004014 */  bnez       $v0, .L8001E1FC
    /* E9F0 8001E1F0 000083AC */   sw        $v1, 0x0($a0)
    /* E9F4 8001E1F4 00F06224 */  addiu      $v0, $v1, -0x1000
    /* E9F8 8001E1F8 000082AC */  sw         $v0, 0x0($a0)
  .L8001E1FC:
    /* E9FC 8001E1FC 0800E003 */  jr         $ra
    /* EA00 8001E200 00000000 */   nop
endlabel func_8001DC6C
