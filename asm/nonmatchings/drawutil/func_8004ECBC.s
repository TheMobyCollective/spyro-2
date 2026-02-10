.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004ECBC, 0x544

glabel func_8004ECBC
    /* 3F4BC 8004ECBC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3F4C0 8004ECC0 3800B4AF */  sw         $s4, 0x38($sp)
    /* 3F4C4 8004ECC4 21A08000 */  addu       $s4, $a0, $zero
    /* 3F4C8 8004ECC8 2800B0AF */  sw         $s0, 0x28($sp)
    /* 3F4CC 8004ECCC 21800000 */  addu       $s0, $zero, $zero
    /* 3F4D0 8004ECD0 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 3F4D4 8004ECD4 3400B3AF */  sw         $s3, 0x34($sp)
    /* 3F4D8 8004ECD8 3000B2AF */  sw         $s2, 0x30($sp)
    /* 3F4DC 8004ECDC 2C00B1AF */  sw         $s1, 0x2C($sp)
  .L8004ECE0:
    /* 3F4E0 8004ECE0 0680013C */  lui        $at, %hi(D_800639B9)
    /* 3F4E4 8004ECE4 21083000 */  addu       $at, $at, $s0
    /* 3F4E8 8004ECE8 B9392590 */  lbu        $a1, %lo(D_800639B9)($at)
    /* 3F4EC 8004ECEC 0680013C */  lui        $at, %hi(D_800639BA)
    /* 3F4F0 8004ECF0 21083000 */  addu       $at, $at, $s0
    /* 3F4F4 8004ECF4 BA392690 */  lbu        $a2, %lo(D_800639BA)($at)
    /* 3F4F8 8004ECF8 0680013C */  lui        $at, %hi(D_800639BB)
    /* 3F4FC 8004ECFC 21083000 */  addu       $at, $at, $s0
    /* 3F500 8004ED00 BB392790 */  lbu        $a3, %lo(D_800639BB)($at)
    /* 3F504 8004ED04 0680013C */  lui        $at, %hi(D_800639B8)
    /* 3F508 8004ED08 21083000 */  addu       $at, $at, $s0
    /* 3F50C 8004ED0C B8392490 */  lbu        $a0, %lo(D_800639B8)($at)
    /* 3F510 8004ED10 04001026 */  addiu      $s0, $s0, 0x4
    /* 3F514 8004ED14 21209400 */  addu       $a0, $a0, $s4
    /* 3F518 8004ED18 8E38010C */  jal        func_8004E238
    /* 3F51C 8004ED1C 00018424 */   addiu     $a0, $a0, 0x100
    /* 3F520 8004ED20 C400022A */  slti       $v0, $s0, 0xC4
    /* 3F524 8004ED24 EEFF4014 */  bnez       $v0, .L8004ECE0
    /* 3F528 8004ED28 00000000 */   nop
    /* 3F52C 8004ED2C 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 3F530 8004ED30 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 3F534 8004ED34 00000000 */  nop
    /* 3F538 8004ED38 01004230 */  andi       $v0, $v0, 0x1
    /* 3F53C 8004ED3C 0D004010 */  beqz       $v0, .L8004ED74
    /* 3F540 8004ED40 01001124 */   addiu     $s1, $zero, 0x1
    /* 3F544 8004ED44 0680103C */  lui        $s0, %hi(D_80067690)
    /* 3F548 8004ED48 90761026 */  addiu      $s0, $s0, %lo(D_80067690)
    /* 3F54C 8004ED4C 0000028E */  lw         $v0, 0x0($s0)
    /* 3F550 8004ED50 00000000 */  nop
    /* 3F554 8004ED54 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3F558 8004ED58 0600401C */  bgtz       $v0, .L8004ED74
    /* 3F55C 8004ED5C 000002AE */   sw        $v0, 0x0($s0)
    /* 3F560 8004ED60 4B67010C */  jal        func_80059D2C
    /* 3F564 8004ED64 00000000 */   nop
    /* 3F568 8004ED68 3F004230 */  andi       $v0, $v0, 0x3F
    /* 3F56C 8004ED6C 28004224 */  addiu      $v0, $v0, 0x28
    /* 3F570 8004ED70 000002AE */  sw         $v0, 0x0($s0)
  .L8004ED74:
    /* 3F574 8004ED74 0680033C */  lui        $v1, %hi(D_80067690)
    /* 3F578 8004ED78 9076638C */  lw         $v1, %lo(D_80067690)($v1)
    /* 3F57C 8004ED7C 00000000 */  nop
    /* 3F580 8004ED80 06006228 */  slti       $v0, $v1, 0x6
    /* 3F584 8004ED84 05004010 */  beqz       $v0, .L8004ED9C
    /* 3F588 8004ED88 04006228 */   slti      $v0, $v1, 0x4
    /* 3F58C 8004ED8C 03004014 */  bnez       $v0, .L8004ED9C
    /* 3F590 8004ED90 21886000 */   addu      $s1, $v1, $zero
    /* 3F594 8004ED94 07000224 */  addiu      $v0, $zero, 0x7
    /* 3F598 8004ED98 23884300 */  subu       $s1, $v0, $v1
  .L8004ED9C:
    /* 3F59C 8004ED9C 6A019026 */  addiu      $s0, $s4, 0x16A
    /* 3F5A0 8004EDA0 21200002 */  addu       $a0, $s0, $zero
    /* 3F5A4 8004EDA4 30000524 */  addiu      $a1, $zero, 0x30
    /* 3F5A8 8004EDA8 E0FF0624 */  addiu      $a2, $zero, -0x20
    /* 3F5AC 8004EDAC 8E38010C */  jal        func_8004E238
    /* 3F5B0 8004EDB0 09000724 */   addiu     $a3, $zero, 0x9
    /* 3F5B4 8004EDB4 DFFF0624 */  addiu      $a2, $zero, -0x21
    /* 3F5B8 8004EDB8 2330D100 */  subu       $a2, $a2, $s1
    /* 3F5BC 8004EDBC 0A000724 */  addiu      $a3, $zero, 0xA
    /* 3F5C0 8004EDC0 0680013C */  lui        $at, %hi(D_800634E8)
    /* 3F5C4 8004EDC4 21083100 */  addu       $at, $at, $s1
    /* 3F5C8 8004EDC8 E8342490 */  lbu        $a0, %lo(D_800634E8)($at)
    /* 3F5CC 8004EDCC 0680013C */  lui        $at, %hi(D_800634F4)
    /* 3F5D0 8004EDD0 21083100 */  addu       $at, $at, $s1
    /* 3F5D4 8004EDD4 F4342590 */  lbu        $a1, %lo(D_800634F4)($at)
    /* 3F5D8 8004EDD8 21209000 */  addu       $a0, $a0, $s0
    /* 3F5DC 8004EDDC 8E38010C */  jal        func_8004E238
    /* 3F5E0 8004EDE0 3000A524 */   addiu     $a1, $a1, 0x30
    /* 3F5E4 8004EDE4 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* 3F5E8 8004EDE8 0680033C */  lui        $v1, %hi(D_8006700C)
    /* 3F5EC 8004EDEC 0C70638C */  lw         $v1, %lo(D_8006700C)($v1)
    /* 3F5F0 8004EDF0 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 3F5F4 8004EDF4 83300300 */  sra        $a2, $v1, 2
    /* 3F5F8 8004EDF8 1800C200 */  mult       $a2, $v0
    /* 3F5FC 8004EDFC 36018426 */  addiu      $a0, $s4, 0x136
    /* 3F600 8004EE00 4A000524 */  addiu      $a1, $zero, 0x4A
    /* 3F604 8004EE04 01000724 */  addiu      $a3, $zero, 0x1
    /* 3F608 8004EE08 C31F0300 */  sra        $v1, $v1, 31
    /* 3F60C 8004EE0C 10400000 */  mfhi       $t0
    /* 3F610 8004EE10 23180301 */  subu       $v1, $t0, $v1
    /* 3F614 8004EE14 40100300 */  sll        $v0, $v1, 1
    /* 3F618 8004EE18 21104300 */  addu       $v0, $v0, $v1
    /* 3F61C 8004EE1C 40100200 */  sll        $v0, $v0, 1
    /* 3F620 8004EE20 2330C200 */  subu       $a2, $a2, $v0
    /* 3F624 8004EE24 0C00C624 */  addiu      $a2, $a2, 0xC
    /* 3F628 8004EE28 8E38010C */  jal        func_8004E238
    /* 3F62C 8004EE2C 23300600 */   negu      $a2, $a2
    /* 3F630 8004EE30 0680023C */  lui        $v0, %hi(D_8006702C)
    /* 3F634 8004EE34 2C70428C */  lw         $v0, %lo(D_8006702C)($v0)
    /* 3F638 8004EE38 00000000 */  nop
    /* 3F63C 8004EE3C 0A004228 */  slti       $v0, $v0, 0xA
    /* 3F640 8004EE40 02004014 */  bnez       $v0, .L8004EE4C
    /* 3F644 8004EE44 AC018426 */   addiu     $a0, $s4, 0x1AC
    /* 3F648 8004EE48 9E018426 */  addiu      $a0, $s4, 0x19E
  .L8004EE4C:
    /* 3F64C 8004EE4C 47000524 */  addiu      $a1, $zero, 0x47
    /* 3F650 8004EE50 15000624 */  addiu      $a2, $zero, 0x15
    /* 3F654 8004EE54 8E38010C */  jal        func_8004E238
    /* 3F658 8004EE58 21380000 */   addu      $a3, $zero, $zero
    /* 3F65C 8004EE5C 0680023C */  lui        $v0, %hi(D_80067118)
    /* 3F660 8004EE60 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 3F664 8004EE64 0680033C */  lui        $v1, %hi(D_80066F54)
    /* 3F668 8004EE68 546F638C */  lw         $v1, %lo(D_80066F54)($v1)
    /* 3F66C 8004EE6C 40110200 */  sll        $v0, $v0, 5
    /* 3F670 8004EE70 21104300 */  addu       $v0, $v0, $v1
    /* 3F674 8004EE74 80100200 */  sll        $v0, $v0, 2
    /* 3F678 8004EE78 0680013C */  lui        $at, %hi(D_800649B4)
    /* 3F67C 8004EE7C 21082200 */  addu       $at, $at, $v0
    /* 3F680 8004EE80 B449248C */  lw         $a0, %lo(D_800649B4)($at)
    /* 3F684 8004EE84 F729010C */  jal        func_8004A7DC
    /* 3F688 8004EE88 00000000 */   nop
    /* 3F68C 8004EE8C 43100200 */  sra        $v0, $v0, 1
    /* 3F690 8004EE90 72FE4224 */  addiu      $v0, $v0, -0x18E
    /* 3F694 8004EE94 23288202 */  subu       $a1, $s4, $v0
    /* 3F698 8004EE98 6B000624 */  addiu      $a2, $zero, 0x6B
    /* 3F69C 8004EE9C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3F6A0 8004EEA0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3F6A4 8004EEA4 0680023C */  lui        $v0, %hi(D_80067118)
    /* 3F6A8 8004EEA8 1871428C */  lw         $v0, %lo(D_80067118)($v0)
    /* 3F6AC 8004EEAC 0680033C */  lui        $v1, %hi(D_80066F54)
    /* 3F6B0 8004EEB0 546F638C */  lw         $v1, %lo(D_80066F54)($v1)
    /* 3F6B4 8004EEB4 40110200 */  sll        $v0, $v0, 5
    /* 3F6B8 8004EEB8 21104300 */  addu       $v0, $v0, $v1
    /* 3F6BC 8004EEBC 80100200 */  sll        $v0, $v0, 2
    /* 3F6C0 8004EEC0 0680013C */  lui        $at, %hi(D_800649B4)
    /* 3F6C4 8004EEC4 21082200 */  addu       $at, $at, $v0
    /* 3F6C8 8004EEC8 B449248C */  lw         $a0, %lo(D_800649B4)($at)
    /* 3F6CC 8004EECC 6729010C */  jal        func_8004A59C
    /* 3F6D0 8004EED0 02000724 */   addiu     $a3, $zero, 0x2
    /* 3F6D4 8004EED4 0680043C */  lui        $a0, %hi(D_80066F90)
    /* 3F6D8 8004EED8 906F848C */  lw         $a0, %lo(D_80066F90)($a0)
    /* 3F6DC 8004EEDC 00000000 */  nop
    /* 3F6E0 8004EEE0 32008228 */  slti       $v0, $a0, 0x32
    /* 3F6E4 8004EEE4 20004010 */  beqz       $v0, .L8004EF68
    /* 3F6E8 8004EEE8 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 3F6EC 8004EEEC 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 3F6F0 8004EEF0 18008200 */  mult       $a0, $v0
    /* 3F6F4 8004EEF4 C3170400 */  sra        $v0, $a0, 31
    /* 3F6F8 8004EEF8 10400000 */  mfhi       $t0
    /* 3F6FC 8004EEFC 83180800 */  sra        $v1, $t0, 2
    /* 3F700 8004EF00 23186200 */  subu       $v1, $v1, $v0
    /* 3F704 8004EF04 80100300 */  sll        $v0, $v1, 2
    /* 3F708 8004EF08 21104300 */  addu       $v0, $v0, $v1
    /* 3F70C 8004EF0C 40100200 */  sll        $v0, $v0, 1
    /* 3F710 8004EF10 23108200 */  subu       $v0, $a0, $v0
    /* 3F714 8004EF14 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3F718 8004EF18 0400422C */  sltiu      $v0, $v0, 0x4
    /* 3F71C 8004EF1C 12004010 */  beqz       $v0, .L8004EF68
    /* 3F720 8004EF20 78019026 */   addiu     $s0, $s4, 0x178
    /* 3F724 8004EF24 21200002 */  addu       $a0, $s0, $zero
    /* 3F728 8004EF28 78000524 */  addiu      $a1, $zero, 0x78
    /* 3F72C 8004EF2C 18000624 */  addiu      $a2, $zero, 0x18
    /* 3F730 8004EF30 8E38010C */  jal        func_8004E238
    /* 3F734 8004EF34 21380000 */   addu      $a3, $zero, $zero
    /* 3F738 8004EF38 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 3F73C 8004EF3C 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 3F740 8004EF40 0780013C */  lui        $at, %hi(D_8006B264)
    /* 3F744 8004EF44 21082200 */  addu       $at, $at, $v0
    /* 3F748 8004EF48 64B22290 */  lbu        $v0, %lo(D_8006B264)($at)
    /* 3F74C 8004EF4C 00000000 */  nop
    /* 3F750 8004EF50 05004010 */  beqz       $v0, .L8004EF68
    /* 3F754 8004EF54 78000524 */   addiu     $a1, $zero, 0x78
    /* 3F758 8004EF58 21200002 */  addu       $a0, $s0, $zero
    /* 3F75C 8004EF5C 17000624 */  addiu      $a2, $zero, 0x17
    /* 3F760 8004EF60 8E38010C */  jal        func_8004E238
    /* 3F764 8004EF64 21380000 */   addu      $a3, $zero, $zero
  .L8004EF68:
    /* 3F768 8004EF68 0680053C */  lui        $a1, %hi(D_80066F54)
    /* 3F76C 8004EF6C 546FA58C */  lw         $a1, %lo(D_80066F54)($a1)
    /* 3F770 8004EF70 21800000 */  addu       $s0, $zero, $zero
    /* 3F774 8004EF74 0680013C */  lui        $at, %hi(D_80064834)
    /* 3F778 8004EF78 21082500 */  addu       $at, $at, $a1
    /* 3F77C 8004EF7C 34482290 */  lbu        $v0, %lo(D_80064834)($at)
    /* 3F780 8004EF80 90018426 */  addiu      $a0, $s4, 0x190
    /* 3F784 8004EF84 40180200 */  sll        $v1, $v0, 1
    /* 3F788 8004EF88 21186200 */  addu       $v1, $v1, $v0
    /* 3F78C 8004EF8C 80180300 */  sll        $v1, $v1, 2
    /* 3F790 8004EF90 23186200 */  subu       $v1, $v1, $v0
    /* 3F794 8004EF94 40180300 */  sll        $v1, $v1, 1
    /* 3F798 8004EF98 1E004010 */  beqz       $v0, .L8004F014
    /* 3F79C 8004EF9C 23208300 */   subu      $a0, $a0, $v1
    /* 3F7A0 8004EFA0 0680123C */  lui        $s2, %hi(D_80064854)
    /* 3F7A4 8004EFA4 54485226 */  addiu      $s2, $s2, %lo(D_80064854)
    /* 3F7A8 8004EFA8 21888000 */  addu       $s1, $a0, $zero
  .L8004EFAC:
    /* 3F7AC 8004EFAC 80100500 */  sll        $v0, $a1, 2
    /* 3F7B0 8004EFB0 21105200 */  addu       $v0, $v0, $s2
    /* 3F7B4 8004EFB4 21105000 */  addu       $v0, $v0, $s0
    /* 3F7B8 8004EFB8 0780013C */  lui        $at, %hi(D_80069FD0)
    /* 3F7BC 8004EFBC 21082500 */  addu       $at, $at, $a1
    /* 3F7C0 8004EFC0 D09F2390 */  lbu        $v1, %lo(D_80069FD0)($at)
    /* 3F7C4 8004EFC4 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F7C8 8004EFC8 00000000 */  nop
    /* 3F7CC 8004EFCC 07184300 */  srav       $v1, $v1, $v0
    /* 3F7D0 8004EFD0 01006330 */  andi       $v1, $v1, 0x1
    /* 3F7D4 8004EFD4 02006014 */  bnez       $v1, .L8004EFE0
    /* 3F7D8 8004EFD8 15000624 */   addiu     $a2, $zero, 0x15
    /* 3F7DC 8004EFDC 16000624 */  addiu      $a2, $zero, 0x16
  .L8004EFE0:
    /* 3F7E0 8004EFE0 21202002 */  addu       $a0, $s1, $zero
    /* 3F7E4 8004EFE4 C0000524 */  addiu      $a1, $zero, 0xC0
    /* 3F7E8 8004EFE8 8E38010C */  jal        func_8004E238
    /* 3F7EC 8004EFEC 21380000 */   addu      $a3, $zero, $zero
    /* 3F7F0 8004EFF0 0680053C */  lui        $a1, %hi(D_80066F54)
    /* 3F7F4 8004EFF4 546FA58C */  lw         $a1, %lo(D_80066F54)($a1)
    /* 3F7F8 8004EFF8 0680013C */  lui        $at, %hi(D_80064834)
    /* 3F7FC 8004EFFC 21082500 */  addu       $at, $at, $a1
    /* 3F800 8004F000 34482290 */  lbu        $v0, %lo(D_80064834)($at)
    /* 3F804 8004F004 01001026 */  addiu      $s0, $s0, 0x1
    /* 3F808 8004F008 2A100202 */  slt        $v0, $s0, $v0
    /* 3F80C 8004F00C E7FF4014 */  bnez       $v0, .L8004EFAC
    /* 3F810 8004F010 2C003126 */   addiu     $s1, $s1, 0x2C
  .L8004F014:
    /* 3F814 8004F014 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* 3F818 8004F018 0680033C */  lui        $v1, %hi(D_8006700C)
    /* 3F81C 8004F01C 0C70638C */  lw         $v1, %lo(D_8006700C)($v1)
    /* 3F820 8004F020 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 3F824 8004F024 83300300 */  sra        $a2, $v1, 2
    /* 3F828 8004F028 1800C200 */  mult       $a2, $v0
    /* 3F82C 8004F02C 36019026 */  addiu      $s0, $s4, 0x136
    /* 3F830 8004F030 21200002 */  addu       $a0, $s0, $zero
    /* 3F834 8004F034 97000524 */  addiu      $a1, $zero, 0x97
    /* 3F838 8004F038 01000724 */  addiu      $a3, $zero, 0x1
    /* 3F83C 8004F03C C31F0300 */  sra        $v1, $v1, 31
    /* 3F840 8004F040 10400000 */  mfhi       $t0
    /* 3F844 8004F044 23180301 */  subu       $v1, $t0, $v1
    /* 3F848 8004F048 40100300 */  sll        $v0, $v1, 1
    /* 3F84C 8004F04C 21104300 */  addu       $v0, $v0, $v1
    /* 3F850 8004F050 40100200 */  sll        $v0, $v0, 1
    /* 3F854 8004F054 2330C200 */  subu       $a2, $a2, $v0
    /* 3F858 8004F058 0C00C624 */  addiu      $a2, $a2, 0xC
    /* 3F85C 8004F05C 8E38010C */  jal        func_8004E238
    /* 3F860 8004F060 23300600 */   negu      $a2, $a2
    /* 3F864 8004F064 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* 3F868 8004F068 0680033C */  lui        $v1, %hi(D_8006700C)
    /* 3F86C 8004F06C 0C70638C */  lw         $v1, %lo(D_8006700C)($v1)
    /* 3F870 8004F070 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 3F874 8004F074 83300300 */  sra        $a2, $v1, 2
    /* 3F878 8004F078 1800C200 */  mult       $a2, $v0
    /* 3F87C 8004F07C 21200002 */  addu       $a0, $s0, $zero
    /* 3F880 8004F080 AA000524 */  addiu      $a1, $zero, 0xAA
    /* 3F884 8004F084 01000724 */  addiu      $a3, $zero, 0x1
    /* 3F888 8004F088 C31F0300 */  sra        $v1, $v1, 31
    /* 3F88C 8004F08C 10400000 */  mfhi       $t0
    /* 3F890 8004F090 23180301 */  subu       $v1, $t0, $v1
    /* 3F894 8004F094 40100300 */  sll        $v0, $v1, 1
    /* 3F898 8004F098 21104300 */  addu       $v0, $v0, $v1
    /* 3F89C 8004F09C 2330C200 */  subu       $a2, $a2, $v0
    /* 3F8A0 8004F0A0 1400C624 */  addiu      $a2, $a2, 0x14
    /* 3F8A4 8004F0A4 8E38010C */  jal        func_8004E238
    /* 3F8A8 8004F0A8 23300600 */   negu      $a2, $a2
    /* 3F8AC 8004F0AC 9E018526 */  addiu      $a1, $s4, 0x19E
    /* 3F8B0 8004F0B0 3D000624 */  addiu      $a2, $zero, 0x3D
    /* 3F8B4 8004F0B4 0680043C */  lui        $a0, %hi(D_8006712C)
    /* 3F8B8 8004F0B8 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* 3F8BC 8004F0BC B436010C */  jal        func_8004DAD0
    /* 3F8C0 8004F0C0 02000724 */   addiu     $a3, $zero, 0x2
    /* 3F8C4 8004F0C4 5C018526 */  addiu      $a1, $s4, 0x15C
    /* 3F8C8 8004F0C8 50000624 */  addiu      $a2, $zero, 0x50
    /* 3F8CC 8004F0CC 0680043C */  lui        $a0, %hi(D_800670CC)
    /* 3F8D0 8004F0D0 CC70848C */  lw         $a0, %lo(D_800670CC)($a0)
    /* 3F8D4 8004F0D4 B436010C */  jal        func_8004DAD0
    /* 3F8D8 8004F0D8 02000724 */   addiu     $a3, $zero, 0x2
    /* 3F8DC 8004F0DC 1CFE0524 */  addiu      $a1, $zero, -0x1E4
    /* 3F8E0 8004F0E0 2328B400 */  subu       $a1, $a1, $s4
    /* 3F8E4 8004F0E4 50000624 */  addiu      $a2, $zero, 0x50
    /* 3F8E8 8004F0E8 0680043C */  lui        $a0, %hi(D_8006702C)
    /* 3F8EC 8004F0EC 2C70848C */  lw         $a0, %lo(D_8006702C)($a0)
    /* 3F8F0 8004F0F0 B436010C */  jal        func_8004DAD0
    /* 3F8F4 8004F0F4 02000724 */   addiu     $a3, $zero, 0x2
    /* 3F8F8 8004F0F8 B4019326 */  addiu      $s3, $s4, 0x1B4
    /* 3F8FC 8004F0FC 21286002 */  addu       $a1, $s3, $zero
    /* 3F900 8004F100 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 3F904 8004F104 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 3F908 8004F108 9D000624 */  addiu      $a2, $zero, 0x9D
    /* 3F90C 8004F10C 0680013C */  lui        $at, %hi(D_800647F4)
    /* 3F910 8004F110 21082200 */  addu       $at, $at, $v0
    /* 3F914 8004F114 F4472290 */  lbu        $v0, %lo(D_800647F4)($at)
    /* 3F918 8004F118 02000724 */  addiu      $a3, $zero, 0x2
    /* 3F91C 8004F11C 40200200 */  sll        $a0, $v0, 1
    /* 3F920 8004F120 21208200 */  addu       $a0, $a0, $v0
    /* 3F924 8004F124 C0200400 */  sll        $a0, $a0, 3
    /* 3F928 8004F128 21208200 */  addu       $a0, $a0, $v0
    /* 3F92C 8004F12C B436010C */  jal        func_8004DAD0
    /* 3F930 8004F130 80200400 */   sll       $a0, $a0, 2
    /* 3F934 8004F134 0680123C */  lui        $s2, %hi(D_80066ED0)
    /* 3F938 8004F138 D06E5226 */  addiu      $s2, $s2, %lo(D_80066ED0)
    /* 3F93C 8004F13C 21204002 */  addu       $a0, $s2, $zero
    /* 3F940 8004F140 A5019126 */  addiu      $s1, $s4, 0x1A5
    /* 3F944 8004F144 21282002 */  addu       $a1, $s1, $zero
    /* 3F948 8004F148 9D000624 */  addiu      $a2, $zero, 0x9D
    /* 3F94C 8004F14C 02000724 */  addiu      $a3, $zero, 0x2
    /* 3F950 8004F150 6729010C */  jal        func_8004A59C
    /* 3F954 8004F154 1000A0AF */   sw        $zero, 0x10($sp)
    /* 3F958 8004F158 60FE1024 */  addiu      $s0, $zero, -0x1A0
    /* 3F95C 8004F15C 23801402 */  subu       $s0, $s0, $s4
    /* 3F960 8004F160 21280002 */  addu       $a1, $s0, $zero
    /* 3F964 8004F164 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 3F968 8004F168 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 3F96C 8004F16C 9D000624 */  addiu      $a2, $zero, 0x9D
    /* 3F970 8004F170 80100200 */  sll        $v0, $v0, 2
    /* 3F974 8004F174 0780013C */  lui        $at, %hi(D_8006AC04)
    /* 3F978 8004F178 21082200 */  addu       $at, $at, $v0
    /* 3F97C 8004F17C 04AC248C */  lw         $a0, %lo(D_8006AC04)($at)
    /* 3F980 8004F180 B436010C */  jal        func_8004DAD0
    /* 3F984 8004F184 02000724 */   addiu     $a3, $zero, 0x2
    /* 3F988 8004F188 21286002 */  addu       $a1, $s3, $zero
    /* 3F98C 8004F18C 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 3F990 8004F190 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 3F994 8004F194 AF000624 */  addiu      $a2, $zero, 0xAF
    /* 3F998 8004F198 0680013C */  lui        $at, %hi(D_80064814)
    /* 3F99C 8004F19C 21082200 */  addu       $at, $at, $v0
    /* 3F9A0 8004F1A0 14482490 */  lbu        $a0, %lo(D_80064814)($at)
    /* 3F9A4 8004F1A4 B436010C */  jal        func_8004DAD0
    /* 3F9A8 8004F1A8 02000724 */   addiu     $a3, $zero, 0x2
    /* 3F9AC 8004F1AC 21204002 */  addu       $a0, $s2, $zero
    /* 3F9B0 8004F1B0 21282002 */  addu       $a1, $s1, $zero
    /* 3F9B4 8004F1B4 AF000624 */  addiu      $a2, $zero, 0xAF
    /* 3F9B8 8004F1B8 02000724 */  addiu      $a3, $zero, 0x2
    /* 3F9BC 8004F1BC 6729010C */  jal        func_8004A59C
    /* 3F9C0 8004F1C0 1000A0AF */   sw        $zero, 0x10($sp)
    /* 3F9C4 8004F1C4 21280002 */  addu       $a1, $s0, $zero
    /* 3F9C8 8004F1C8 AF000624 */  addiu      $a2, $zero, 0xAF
    /* 3F9CC 8004F1CC 0680043C */  lui        $a0, %hi(D_80066FB0)
    /* 3F9D0 8004F1D0 B06F848C */  lw         $a0, %lo(D_80066FB0)($a0)
    /* 3F9D4 8004F1D4 B436010C */  jal        func_8004DAD0
    /* 3F9D8 8004F1D8 02000724 */   addiu     $a3, $zero, 0x2
    /* 3F9DC 8004F1DC 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 3F9E0 8004F1E0 3800B48F */  lw         $s4, 0x38($sp)
    /* 3F9E4 8004F1E4 3400B38F */  lw         $s3, 0x34($sp)
    /* 3F9E8 8004F1E8 3000B28F */  lw         $s2, 0x30($sp)
    /* 3F9EC 8004F1EC 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 3F9F0 8004F1F0 2800B08F */  lw         $s0, 0x28($sp)
    /* 3F9F4 8004F1F4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3F9F8 8004F1F8 0800E003 */  jr         $ra
    /* 3F9FC 8004F1FC 00000000 */   nop
endlabel func_8004ECBC
