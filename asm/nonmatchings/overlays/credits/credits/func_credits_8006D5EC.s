.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_credits_8006D5EC, 0x380

glabel func_credits_8006D5EC
    /* 2EDB88 8006D5EC 21608000 */  addu       $t4, $a0, $zero
    /* 2EDB8C 8006D5F0 21488001 */  addu       $t1, $t4, $zero
    /* 2EDB90 8006D5F4 2B102601 */  sltu       $v0, $t1, $a2
    /* 2EDB94 8006D5F8 D9004010 */  beqz       $v0, .Lcredits_8006D960
    /* 2EDB98 8006D5FC F0FFBD27 */   addiu     $sp, $sp, -0x10
    /* 2EDB9C 8006D600 0000228D */  lw         $v0, 0x0($t1)
    /* 2EDBA0 8006D604 00000000 */  nop
    /* 2EDBA4 8006D608 54004104 */  bgez       $v0, .Lcredits_8006D75C
    /* 2EDBA8 8006D60C 21500000 */   addu      $t2, $zero, $zero
    /* 2EDBAC 8006D610 21402001 */  addu       $t0, $t1, $zero
    /* 2EDBB0 8006D614 08000724 */  addiu      $a3, $zero, 0x8
    /* 2EDBB4 8006D618 21182001 */  addu       $v1, $t1, $zero
  .Lcredits_8006D61C:
    /* 2EDBB8 8006D61C 0800648C */  lw         $a0, 0x8($v1)
    /* 2EDBBC 8006D620 00000000 */  nop
    /* 2EDBC0 8006D624 05008010 */  beqz       $a0, .Lcredits_8006D63C
    /* 2EDBC4 8006D628 21100701 */   addu      $v0, $t0, $a3
    /* 2EDBC8 8006D62C 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDBCC 8006D630 02004010 */  beqz       $v0, .Lcredits_8006D63C
    /* 2EDBD0 8006D634 21108401 */   addu      $v0, $t4, $a0
    /* 2EDBD4 8006D638 080062AC */  sw         $v0, 0x8($v1)
  .Lcredits_8006D63C:
    /* 2EDBD8 8006D63C 0400E724 */  addiu      $a3, $a3, 0x4
    /* 2EDBDC 8006D640 01004A25 */  addiu      $t2, $t2, 0x1
    /* 2EDBE0 8006D644 02004229 */  slti       $v0, $t2, 0x2
    /* 2EDBE4 8006D648 F4FF4014 */  bnez       $v0, .Lcredits_8006D61C
    /* 2EDBE8 8006D64C 04006324 */   addiu     $v1, $v1, 0x4
    /* 2EDBEC 8006D650 10000225 */  addiu      $v0, $t0, 0x10
    /* 2EDBF0 8006D654 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDBF4 8006D658 05004010 */  beqz       $v0, .Lcredits_8006D670
    /* 2EDBF8 8006D65C 00000000 */   nop
    /* 2EDBFC 8006D660 1000028D */  lw         $v0, 0x10($t0)
    /* 2EDC00 8006D664 00000000 */  nop
    /* 2EDC04 8006D668 21108201 */  addu       $v0, $t4, $v0
    /* 2EDC08 8006D66C 100002AD */  sw         $v0, 0x10($t0)
  .Lcredits_8006D670:
    /* 2EDC0C 8006D670 0000028D */  lw         $v0, 0x0($t0)
    /* 2EDC10 8006D674 21500000 */  addu       $t2, $zero, $zero
    /* 2EDC14 8006D678 23100200 */  negu       $v0, $v0
    /* 2EDC18 8006D67C 33004018 */  blez       $v0, .Lcredits_8006D74C
    /* 2EDC1C 8006D680 000002AD */   sw        $v0, 0x0($t0)
    /* 2EDC20 8006D684 21380001 */  addu       $a3, $t0, $zero
    /* 2EDC24 8006D688 14000B24 */  addiu      $t3, $zero, 0x14
  .Lcredits_8006D68C:
    /* 2EDC28 8006D68C 21100B01 */  addu       $v0, $t0, $t3
    /* 2EDC2C 8006D690 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDC30 8006D694 05004010 */  beqz       $v0, .Lcredits_8006D6AC
    /* 2EDC34 8006D698 00000000 */   nop
    /* 2EDC38 8006D69C 1400E28C */  lw         $v0, 0x14($a3)
    /* 2EDC3C 8006D6A0 00000000 */  nop
    /* 2EDC40 8006D6A4 21108201 */  addu       $v0, $t4, $v0
    /* 2EDC44 8006D6A8 1400E2AC */  sw         $v0, 0x14($a3)
  .Lcredits_8006D6AC:
    /* 2EDC48 8006D6AC 1400E48C */  lw         $a0, 0x14($a3)
    /* 2EDC4C 8006D6B0 00000000 */  nop
    /* 2EDC50 8006D6B4 08008224 */  addiu      $v0, $a0, 0x8
    /* 2EDC54 8006D6B8 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDC58 8006D6BC 0F004010 */  beqz       $v0, .Lcredits_8006D6FC
    /* 2EDC5C 8006D6C0 0C008224 */   addiu     $v0, $a0, 0xC
    /* 2EDC60 8006D6C4 1000028D */  lw         $v0, 0x10($t0)
    /* 2EDC64 8006D6C8 08008394 */  lhu        $v1, 0x8($a0)
    /* 2EDC68 8006D6CC 23104400 */  subu       $v0, $v0, $a0
    /* 2EDC6C 8006D6D0 21186200 */  addu       $v1, $v1, $v0
    /* 2EDC70 8006D6D4 080083A4 */  sh         $v1, 0x8($a0)
    /* 2EDC74 8006D6D8 1400E48C */  lw         $a0, 0x14($a3)
    /* 2EDC78 8006D6DC 1000028D */  lw         $v0, 0x10($t0)
    /* 2EDC7C 8006D6E0 0A008394 */  lhu        $v1, 0xA($a0)
    /* 2EDC80 8006D6E4 23104400 */  subu       $v0, $v0, $a0
    /* 2EDC84 8006D6E8 21186200 */  addu       $v1, $v1, $v0
    /* 2EDC88 8006D6EC 0A0083A4 */  sh         $v1, 0xA($a0)
    /* 2EDC8C 8006D6F0 1400E48C */  lw         $a0, 0x14($a3)
    /* 2EDC90 8006D6F4 00000000 */  nop
    /* 2EDC94 8006D6F8 0C008224 */  addiu      $v0, $a0, 0xC
  .Lcredits_8006D6FC:
    /* 2EDC98 8006D6FC 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDC9C 8006D700 0C004010 */  beqz       $v0, .Lcredits_8006D734
    /* 2EDCA0 8006D704 00000000 */   nop
    /* 2EDCA4 8006D708 1000028D */  lw         $v0, 0x10($t0)
    /* 2EDCA8 8006D70C 0C008394 */  lhu        $v1, 0xC($a0)
    /* 2EDCAC 8006D710 23104400 */  subu       $v0, $v0, $a0
    /* 2EDCB0 8006D714 21186200 */  addu       $v1, $v1, $v0
    /* 2EDCB4 8006D718 0C0083A4 */  sh         $v1, 0xC($a0)
    /* 2EDCB8 8006D71C 1400E48C */  lw         $a0, 0x14($a3)
    /* 2EDCBC 8006D720 1000028D */  lw         $v0, 0x10($t0)
    /* 2EDCC0 8006D724 0E008394 */  lhu        $v1, 0xE($a0)
    /* 2EDCC4 8006D728 23104400 */  subu       $v0, $v0, $a0
    /* 2EDCC8 8006D72C 21186200 */  addu       $v1, $v1, $v0
    /* 2EDCCC 8006D730 0E0083A4 */  sh         $v1, 0xE($a0)
  .Lcredits_8006D734:
    /* 2EDCD0 8006D734 0400E724 */  addiu      $a3, $a3, 0x4
    /* 2EDCD4 8006D738 0000028D */  lw         $v0, 0x0($t0)
    /* 2EDCD8 8006D73C 01004A25 */  addiu      $t2, $t2, 0x1
    /* 2EDCDC 8006D740 2A104201 */  slt        $v0, $t2, $v0
    /* 2EDCE0 8006D744 D1FF4014 */  bnez       $v0, .Lcredits_8006D68C
    /* 2EDCE4 8006D748 04006B25 */   addiu     $t3, $t3, 0x4
  .Lcredits_8006D74C:
    /* 2EDCE8 8006D74C FF7F023C */  lui        $v0, (0x7FFFFFFF >> 16)
    /* 2EDCEC 8006D750 FFFF4234 */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
    /* 2EDCF0 8006D754 54B60108 */  j          .Lcredits_8006D950
    /* 2EDCF4 8006D758 24482201 */   and       $t1, $t1, $v0
  .Lcredits_8006D75C:
    /* 2EDCF8 8006D75C 14000724 */  addiu      $a3, $zero, 0x14
    /* 2EDCFC 8006D760 21182001 */  addu       $v1, $t1, $zero
  .Lcredits_8006D764:
    /* 2EDD00 8006D764 1400648C */  lw         $a0, 0x14($v1)
    /* 2EDD04 8006D768 00000000 */  nop
    /* 2EDD08 8006D76C 05008010 */  beqz       $a0, .Lcredits_8006D784
    /* 2EDD0C 8006D770 21102701 */   addu      $v0, $t1, $a3
    /* 2EDD10 8006D774 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDD14 8006D778 02004010 */  beqz       $v0, .Lcredits_8006D784
    /* 2EDD18 8006D77C 21108401 */   addu      $v0, $t4, $a0
    /* 2EDD1C 8006D780 140062AC */  sw         $v0, 0x14($v1)
  .Lcredits_8006D784:
    /* 2EDD20 8006D784 0400E724 */  addiu      $a3, $a3, 0x4
    /* 2EDD24 8006D788 01004A25 */  addiu      $t2, $t2, 0x1
    /* 2EDD28 8006D78C 08004229 */  slti       $v0, $t2, 0x8
    /* 2EDD2C 8006D790 F4FF4014 */  bnez       $v0, .Lcredits_8006D764
    /* 2EDD30 8006D794 04006324 */   addiu     $v1, $v1, 0x4
    /* 2EDD34 8006D798 34002225 */  addiu      $v0, $t1, 0x34
    /* 2EDD38 8006D79C 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDD3C 8006D7A0 06004010 */  beqz       $v0, .Lcredits_8006D7BC
    /* 2EDD40 8006D7A4 38002225 */   addiu     $v0, $t1, 0x38
    /* 2EDD44 8006D7A8 3400228D */  lw         $v0, 0x34($t1)
    /* 2EDD48 8006D7AC 00000000 */  nop
    /* 2EDD4C 8006D7B0 21108201 */  addu       $v0, $t4, $v0
    /* 2EDD50 8006D7B4 340022AD */  sw         $v0, 0x34($t1)
    /* 2EDD54 8006D7B8 38002225 */  addiu      $v0, $t1, 0x38
  .Lcredits_8006D7BC:
    /* 2EDD58 8006D7BC 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDD5C 8006D7C0 05004010 */  beqz       $v0, .Lcredits_8006D7D8
    /* 2EDD60 8006D7C4 00000000 */   nop
    /* 2EDD64 8006D7C8 3800228D */  lw         $v0, 0x38($t1)
    /* 2EDD68 8006D7CC 00000000 */  nop
    /* 2EDD6C 8006D7D0 21108201 */  addu       $v0, $t4, $v0
    /* 2EDD70 8006D7D4 380022AD */  sw         $v0, 0x38($t1)
  .Lcredits_8006D7D8:
    /* 2EDD74 8006D7D8 0000228D */  lw         $v0, 0x0($t1)
    /* 2EDD78 8006D7DC 00000000 */  nop
    /* 2EDD7C 8006D7E0 5B004018 */  blez       $v0, .Lcredits_8006D950
    /* 2EDD80 8006D7E4 21500000 */   addu      $t2, $zero, $zero
    /* 2EDD84 8006D7E8 21382001 */  addu       $a3, $t1, $zero
    /* 2EDD88 8006D7EC 3C000824 */  addiu      $t0, $zero, 0x3C
  .Lcredits_8006D7F0:
    /* 2EDD8C 8006D7F0 21102801 */  addu       $v0, $t1, $t0
    /* 2EDD90 8006D7F4 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDD94 8006D7F8 05004010 */  beqz       $v0, .Lcredits_8006D810
    /* 2EDD98 8006D7FC 00000000 */   nop
    /* 2EDD9C 8006D800 3C00E28C */  lw         $v0, 0x3C($a3)
    /* 2EDDA0 8006D804 00000000 */  nop
    /* 2EDDA4 8006D808 21108201 */  addu       $v0, $t4, $v0
    /* 2EDDA8 8006D80C 3C00E2AC */  sw         $v0, 0x3C($a3)
  .Lcredits_8006D810:
    /* 2EDDAC 8006D810 3C00E48C */  lw         $a0, 0x3C($a3)
    /* 2EDDB0 8006D814 00000000 */  nop
    /* 2EDDB4 8006D818 0C008224 */  addiu      $v0, $a0, 0xC
    /* 2EDDB8 8006D81C 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDDBC 8006D820 09004010 */  beqz       $v0, .Lcredits_8006D848
    /* 2EDDC0 8006D824 10008224 */   addiu     $v0, $a0, 0x10
    /* 2EDDC4 8006D828 3800228D */  lw         $v0, 0x38($t1)
    /* 2EDDC8 8006D82C 0C00838C */  lw         $v1, 0xC($a0)
    /* 2EDDCC 8006D830 00000000 */  nop
    /* 2EDDD0 8006D834 21104300 */  addu       $v0, $v0, $v1
    /* 2EDDD4 8006D838 0C0082AC */  sw         $v0, 0xC($a0)
    /* 2EDDD8 8006D83C 3C00E48C */  lw         $a0, 0x3C($a3)
    /* 2EDDDC 8006D840 00000000 */  nop
    /* 2EDDE0 8006D844 10008224 */  addiu      $v0, $a0, 0x10
  .Lcredits_8006D848:
    /* 2EDDE4 8006D848 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDDE8 8006D84C 06004010 */  beqz       $v0, .Lcredits_8006D868
    /* 2EDDEC 8006D850 00000000 */   nop
    /* 2EDDF0 8006D854 3800228D */  lw         $v0, 0x38($t1)
    /* 2EDDF4 8006D858 1000838C */  lw         $v1, 0x10($a0)
    /* 2EDDF8 8006D85C 00000000 */  nop
    /* 2EDDFC 8006D860 21104300 */  addu       $v0, $v0, $v1
    /* 2EDE00 8006D864 100082AC */  sw         $v0, 0x10($a0)
  .Lcredits_8006D868:
    /* 2EDE04 8006D868 3C00E48C */  lw         $a0, 0x3C($a3)
    /* 2EDE08 8006D86C 00000000 */  nop
    /* 2EDE0C 8006D870 14008224 */  addiu      $v0, $a0, 0x14
    /* 2EDE10 8006D874 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDE14 8006D878 09004010 */  beqz       $v0, .Lcredits_8006D8A0
    /* 2EDE18 8006D87C 18008224 */   addiu     $v0, $a0, 0x18
    /* 2EDE1C 8006D880 3800228D */  lw         $v0, 0x38($t1)
    /* 2EDE20 8006D884 1400838C */  lw         $v1, 0x14($a0)
    /* 2EDE24 8006D888 00000000 */  nop
    /* 2EDE28 8006D88C 21104300 */  addu       $v0, $v0, $v1
    /* 2EDE2C 8006D890 140082AC */  sw         $v0, 0x14($a0)
    /* 2EDE30 8006D894 3C00E48C */  lw         $a0, 0x3C($a3)
    /* 2EDE34 8006D898 00000000 */  nop
    /* 2EDE38 8006D89C 18008224 */  addiu      $v0, $a0, 0x18
  .Lcredits_8006D8A0:
    /* 2EDE3C 8006D8A0 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDE40 8006D8A4 09004010 */  beqz       $v0, .Lcredits_8006D8CC
    /* 2EDE44 8006D8A8 00000000 */   nop
    /* 2EDE48 8006D8AC 1800838C */  lw         $v1, 0x18($a0)
    /* 2EDE4C 8006D8B0 00000000 */  nop
    /* 2EDE50 8006D8B4 05006010 */  beqz       $v1, .Lcredits_8006D8CC
    /* 2EDE54 8006D8B8 00000000 */   nop
    /* 2EDE58 8006D8BC 3800228D */  lw         $v0, 0x38($t1)
    /* 2EDE5C 8006D8C0 00000000 */  nop
    /* 2EDE60 8006D8C4 21104300 */  addu       $v0, $v0, $v1
    /* 2EDE64 8006D8C8 180082AC */  sw         $v0, 0x18($a0)
  .Lcredits_8006D8CC:
    /* 2EDE68 8006D8CC 3C00E38C */  lw         $v1, 0x3C($a3)
    /* 2EDE6C 8006D8D0 00000000 */  nop
    /* 2EDE70 8006D8D4 1C006224 */  addiu      $v0, $v1, 0x1C
    /* 2EDE74 8006D8D8 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDE78 8006D8DC 0B004010 */  beqz       $v0, .Lcredits_8006D90C
    /* 2EDE7C 8006D8E0 00000000 */   nop
    /* 2EDE80 8006D8E4 1C00648C */  lw         $a0, 0x1C($v1)
    /* 2EDE84 8006D8E8 00000000 */  nop
    /* 2EDE88 8006D8EC 04008010 */  beqz       $a0, .Lcredits_8006D900
    /* 2EDE8C 8006D8F0 00000000 */   nop
    /* 2EDE90 8006D8F4 3800228D */  lw         $v0, 0x38($t1)
    /* 2EDE94 8006D8F8 41B60108 */  j          .Lcredits_8006D904
    /* 2EDE98 8006D8FC 21104400 */   addu      $v0, $v0, $a0
  .Lcredits_8006D900:
    /* 2EDE9C 8006D900 1400628C */  lw         $v0, 0x14($v1)
  .Lcredits_8006D904:
    /* 2EDEA0 8006D904 00000000 */  nop
    /* 2EDEA4 8006D908 1C0062AC */  sw         $v0, 0x1C($v1)
  .Lcredits_8006D90C:
    /* 2EDEA8 8006D90C 3C00E48C */  lw         $a0, 0x3C($a3)
    /* 2EDEAC 8006D910 00000000 */  nop
    /* 2EDEB0 8006D914 20008224 */  addiu      $v0, $a0, 0x20
    /* 2EDEB4 8006D918 2B104600 */  sltu       $v0, $v0, $a2
    /* 2EDEB8 8006D91C 06004010 */  beqz       $v0, .Lcredits_8006D938
    /* 2EDEBC 8006D920 00000000 */   nop
    /* 2EDEC0 8006D924 3800228D */  lw         $v0, 0x38($t1)
    /* 2EDEC4 8006D928 2000838C */  lw         $v1, 0x20($a0)
    /* 2EDEC8 8006D92C 00000000 */  nop
    /* 2EDECC 8006D930 21104300 */  addu       $v0, $v0, $v1
    /* 2EDED0 8006D934 200082AC */  sw         $v0, 0x20($a0)
  .Lcredits_8006D938:
    /* 2EDED4 8006D938 0400E724 */  addiu      $a3, $a3, 0x4
    /* 2EDED8 8006D93C 0000228D */  lw         $v0, 0x0($t1)
    /* 2EDEDC 8006D940 01004A25 */  addiu      $t2, $t2, 0x1
    /* 2EDEE0 8006D944 2A104201 */  slt        $v0, $t2, $v0
    /* 2EDEE4 8006D948 A9FF4014 */  bnez       $v0, .Lcredits_8006D7F0
    /* 2EDEE8 8006D94C 04000825 */   addiu     $t0, $t0, 0x4
  .Lcredits_8006D950:
    /* 2EDEEC 8006D950 80100500 */  sll        $v0, $a1, 2
    /* 2EDEF0 8006D954 0780013C */  lui        $at, %hi(D_80068C94)
    /* 2EDEF4 8006D958 21082200 */  addu       $at, $at, $v0
    /* 2EDEF8 8006D95C 948C29AC */  sw         $t1, %lo(D_80068C94)($at)
  .Lcredits_8006D960:
    /* 2EDEFC 8006D960 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 2EDF00 8006D964 0800E003 */  jr         $ra
    /* 2EDF04 8006D968 00000000 */   nop
endlabel func_credits_8006D5EC
