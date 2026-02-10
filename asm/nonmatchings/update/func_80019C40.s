.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019C40, 0x650

glabel func_80019C40
    /* A440 80019C40 0780033C */  lui        $v1, %hi(D_800698F0)
    /* A444 80019C44 F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* A448 80019C48 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A44C 80019C4C 3000BFAF */  sw         $ra, 0x30($sp)
    /* A450 80019C50 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* A454 80019C54 04006228 */  slti       $v0, $v1, 0x4
    /* A458 80019C58 07004010 */  beqz       $v0, .L80019C78
    /* A45C 80019C5C 2800B0AF */   sw        $s0, 0x28($sp)
    /* A460 80019C60 E800601C */  bgtz       $v1, .L8001A004
    /* A464 80019C64 00000000 */   nop
    /* A468 80019C68 08006010 */  beqz       $v1, .L80019C8C
    /* A46C 80019C6C 00000000 */   nop
    /* A470 80019C70 9E680008 */  j          .L8001A278
    /* A474 80019C74 00000000 */   nop
  .L80019C78:
    /* A478 80019C78 04000224 */  addiu      $v0, $zero, 0x4
    /* A47C 80019C7C E5006210 */  beq        $v1, $v0, .L8001A014
    /* A480 80019C80 00000000 */   nop
    /* A484 80019C84 9E680008 */  j          .L8001A278
    /* A488 80019C88 00000000 */   nop
  .L80019C8C:
    /* A48C 80019C8C 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* A490 80019C90 EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* A494 80019C94 00000000 */  nop
    /* A498 80019C98 0300401C */  bgtz       $v0, .L80019CA8
    /* A49C 80019C9C 00000000 */   nop
    /* A4A0 80019CA0 9675000C */  jal        func_8001D658
    /* A4A4 80019CA4 00000000 */   nop
  .L80019CA8:
    /* A4A8 80019CA8 0780023C */  lui        $v0, %hi(D_800698F8)
    /* A4AC 80019CAC F898428C */  lw         $v0, %lo(D_800698F8)($v0)
    /* A4B0 80019CB0 00000000 */  nop
    /* A4B4 80019CB4 A2004014 */  bnez       $v0, .L80019F40
    /* A4B8 80019CB8 00000000 */   nop
    /* A4BC 80019CBC 0780023C */  lui        $v0, %hi(D_800698EC)
    /* A4C0 80019CC0 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* A4C4 80019CC4 00000000 */  nop
    /* A4C8 80019CC8 03004014 */  bnez       $v0, .L80019CD8
    /* A4CC 80019CCC 00000000 */   nop
    /* A4D0 80019CD0 76D4000C */  jal        func_800351D8
    /* A4D4 80019CD4 10000424 */   addiu     $a0, $zero, 0x10
  .L80019CD8:
    /* A4D8 80019CD8 C1B8000C */  jal        func_8002E304
    /* A4DC 80019CDC 00000000 */   nop
    /* A4E0 80019CE0 0780113C */  lui        $s1, %hi(D_8006B2B8)
    /* A4E4 80019CE4 B8B23126 */  addiu      $s1, $s1, %lo(D_8006B2B8)
    /* A4E8 80019CE8 E5C6000C */  jal        func_80031B94
    /* A4EC 80019CEC 21202002 */   addu      $a0, $s1, $zero
    /* A4F0 80019CF0 00044228 */  slti       $v0, $v0, 0x400
    /* A4F4 80019CF4 0D004010 */  beqz       $v0, .L80019D2C
    /* A4F8 80019CF8 00000000 */   nop
    /* A4FC 80019CFC 0000228E */  lw         $v0, 0x0($s1)
    /* A500 80019D00 0780043C */  lui        $a0, %hi(D_8006B2C4)
    /* A504 80019D04 C4B2848C */  lw         $a0, %lo(D_8006B2C4)($a0)
    /* A508 80019D08 0780033C */  lui        $v1, %hi(D_8006B2BC)
    /* A50C 80019D0C BCB2638C */  lw         $v1, %lo(D_8006B2BC)($v1)
    /* A510 80019D10 0780053C */  lui        $a1, %hi(D_8006B2C8)
    /* A514 80019D14 C8B2A58C */  lw         $a1, %lo(D_8006B2C8)($a1)
    /* A518 80019D18 21104400 */  addu       $v0, $v0, $a0
    /* A51C 80019D1C 21186500 */  addu       $v1, $v1, $a1
    /* A520 80019D20 000022AE */  sw         $v0, 0x0($s1)
    /* A524 80019D24 0780013C */  lui        $at, %hi(D_8006B2BC)
    /* A528 80019D28 BCB223AC */  sw         $v1, %lo(D_8006B2BC)($at)
  .L80019D2C:
    /* A52C 80019D2C 0780033C */  lui        $v1, %hi(D_8006A00E)
    /* A530 80019D30 0EA06324 */  addiu      $v1, $v1, %lo(D_8006A00E)
    /* A534 80019D34 00006290 */  lbu        $v0, 0x0($v1)
    /* A538 80019D38 00000000 */  nop
    /* A53C 80019D3C 01004224 */  addiu      $v0, $v0, 0x1
    /* A540 80019D40 000062A0 */  sb         $v0, 0x0($v1)
    /* A544 80019D44 FF004230 */  andi       $v0, $v0, 0xFF
    /* A548 80019D48 4100422C */  sltiu      $v0, $v0, 0x41
    /* A54C 80019D4C 03004014 */  bnez       $v0, .L80019D5C
    /* A550 80019D50 1000A427 */   addiu     $a0, $sp, 0x10
    /* A554 80019D54 40000224 */  addiu      $v0, $zero, 0x40
    /* A558 80019D58 000062A0 */  sb         $v0, 0x0($v1)
  .L80019D5C:
    /* A55C 80019D5C 28002526 */  addiu      $a1, $s1, 0x28
    /* A560 80019D60 1C003126 */  addiu      $s1, $s1, 0x1C
    /* A564 80019D64 806F000C */  jal        func_8001BE00
    /* A568 80019D68 21302002 */   addu      $a2, $s1, $zero
    /* A56C 80019D6C 1000A427 */  addiu      $a0, $sp, 0x10
    /* A570 80019D70 0780063C */  lui        $a2, %hi(D_800698EC)
    /* A574 80019D74 EC98C68C */  lw         $a2, %lo(D_800698EC)($a2)
    /* A578 80019D78 8D6F000C */  jal        func_8001BE34
    /* A57C 80019D7C 21288000 */   addu      $a1, $a0, $zero
    /* A580 80019D80 1000A427 */  addiu      $a0, $sp, 0x10
    /* A584 80019D84 21288000 */  addu       $a1, $a0, $zero
    /* A588 80019D88 986F000C */  jal        func_8001BE60
    /* A58C 80019D8C 20000624 */   addiu     $a2, $zero, 0x20
    /* A590 80019D90 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* A594 80019D94 AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* A598 80019D98 21200002 */  addu       $a0, $s0, $zero
    /* A59C 80019D9C 21282002 */  addu       $a1, $s1, $zero
    /* A5A0 80019DA0 736F000C */  jal        func_8001BDCC
    /* A5A4 80019DA4 1000A627 */   addiu     $a2, $sp, 0x10
    /* A5A8 80019DA8 0780043C */  lui        $a0, %hi(D_8006B2EE)
    /* A5AC 80019DAC EEB28484 */  lh         $a0, %lo(D_8006B2EE)($a0)
    /* A5B0 80019DB0 996D000C */  jal        func_8001B664
    /* A5B4 80019DB4 00000000 */   nop
    /* A5B8 80019DB8 0780033C */  lui        $v1, %hi(D_8006B2F0)
    /* A5BC 80019DBC F0B2638C */  lw         $v1, %lo(D_8006B2F0)($v1)
    /* A5C0 80019DC0 00000000 */  nop
    /* A5C4 80019DC4 18004300 */  mult       $v0, $v1
    /* A5C8 80019DC8 0780023C */  lui        $v0, %hi(D_800698EC)
    /* A5CC 80019DCC EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* A5D0 80019DD0 00000000 */  nop
    /* A5D4 80019DD4 C0100200 */  sll        $v0, $v0, 3
    /* A5D8 80019DD8 12400000 */  mflo       $t0
    /* A5DC 80019DDC 0680013C */  lui        $at, %hi(D_80061BD8)
    /* A5E0 80019DE0 21082200 */  addu       $at, $at, $v0
    /* A5E4 80019DE4 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* A5E8 80019DE8 03130800 */  sra        $v0, $t0, 12
    /* A5EC 80019DEC 18004300 */  mult       $v0, $v1
    /* A5F0 80019DF0 0780043C */  lui        $a0, %hi(D_8006B2EE)
    /* A5F4 80019DF4 EEB28484 */  lh         $a0, %lo(D_8006B2EE)($a0)
    /* A5F8 80019DF8 0000028E */  lw         $v0, 0x0($s0)
    /* A5FC 80019DFC 12180000 */  mflo       $v1
    /* A600 80019E00 031B0300 */  sra        $v1, $v1, 12
    /* A604 80019E04 23104300 */  subu       $v0, $v0, $v1
    /* A608 80019E08 876D000C */  jal        func_8001B61C
    /* A60C 80019E0C 000002AE */   sw        $v0, 0x0($s0)
    /* A610 80019E10 0780033C */  lui        $v1, %hi(D_8006B2F0)
    /* A614 80019E14 F0B2638C */  lw         $v1, %lo(D_8006B2F0)($v1)
    /* A618 80019E18 00000000 */  nop
    /* A61C 80019E1C 18004300 */  mult       $v0, $v1
    /* A620 80019E20 0780023C */  lui        $v0, %hi(D_800698EC)
    /* A624 80019E24 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* A628 80019E28 00000000 */  nop
    /* A62C 80019E2C C0100200 */  sll        $v0, $v0, 3
    /* A630 80019E30 12400000 */  mflo       $t0
    /* A634 80019E34 0680013C */  lui        $at, %hi(D_80061BD8)
    /* A638 80019E38 21082200 */  addu       $at, $at, $v0
    /* A63C 80019E3C D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* A640 80019E40 03130800 */  sra        $v0, $t0, 12
    /* A644 80019E44 18004300 */  mult       $v0, $v1
    /* A648 80019E48 0780043C */  lui        $a0, %hi(D_8006B2EE)
    /* A64C 80019E4C EEB28484 */  lh         $a0, %lo(D_8006B2EE)($a0)
    /* A650 80019E50 0780053C */  lui        $a1, %hi(D_8006B2EC)
    /* A654 80019E54 ECB2A584 */  lh         $a1, %lo(D_8006B2EC)($a1)
    /* A658 80019E58 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* A65C 80019E5C B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* A660 80019E60 12180000 */  mflo       $v1
    /* A664 80019E64 031B0300 */  sra        $v1, $v1, 12
    /* A668 80019E68 23104300 */  subu       $v0, $v0, $v1
    /* A66C 80019E6C 0680013C */  lui        $at, %hi(D_80067EB0)
    /* A670 80019E70 B07E22AC */  sw         $v0, %lo(D_80067EB0)($at)
    /* A674 80019E74 C06F000C */  jal        func_8001BF00
    /* A678 80019E78 00000000 */   nop
    /* A67C 80019E7C 0780043C */  lui        $a0, %hi(D_800698EC)
    /* A680 80019E80 EC98848C */  lw         $a0, %lo(D_800698EC)($a0)
    /* A684 80019E84 00000000 */  nop
    /* A688 80019E88 18004400 */  mult       $v0, $a0
    /* A68C 80019E8C 12180000 */  mflo       $v1
    /* A690 80019E90 02006104 */  bgez       $v1, .L80019E9C
    /* A694 80019E94 00000000 */   nop
    /* A698 80019E98 1F006324 */  addiu      $v1, $v1, 0x1F
  .L80019E9C:
    /* A69C 80019E9C 0780023C */  lui        $v0, %hi(D_8006B2EC)
    /* A6A0 80019EA0 ECB24294 */  lhu        $v0, %lo(D_8006B2EC)($v0)
    /* A6A4 80019EA4 43190300 */  sra        $v1, $v1, 5
    /* A6A8 80019EA8 21104300 */  addu       $v0, $v0, $v1
    /* A6AC 80019EAC FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* A6B0 80019EB0 0680013C */  lui        $at, %hi(D_80067ECC)
    /* A6B4 80019EB4 CC7E22A4 */  sh         $v0, %lo(D_80067ECC)($at)
    /* A6B8 80019EB8 20008228 */  slti       $v0, $a0, 0x20
    /* A6BC 80019EBC 1C004010 */  beqz       $v0, .L80019F30
    /* A6C0 80019EC0 00000000 */   nop
    /* A6C4 80019EC4 0680053C */  lui        $a1, %hi(D_80067ECA)
    /* A6C8 80019EC8 CA7EA584 */  lh         $a1, %lo(D_80067ECA)($a1)
    /* A6CC 80019ECC C06F000C */  jal        func_8001BF00
    /* A6D0 80019ED0 21200000 */   addu      $a0, $zero, $zero
    /* A6D4 80019ED4 0780043C */  lui        $a0, %hi(D_800698EC)
    /* A6D8 80019ED8 EC98848C */  lw         $a0, %lo(D_800698EC)($a0)
    /* A6DC 80019EDC 20000324 */  addiu      $v1, $zero, 0x20
    /* A6E0 80019EE0 23186400 */  subu       $v1, $v1, $a0
    /* A6E4 80019EE4 1A004300 */  div        $zero, $v0, $v1
    /* A6E8 80019EE8 02006014 */  bnez       $v1, .L80019EF4
    /* A6EC 80019EEC 00000000 */   nop
    /* A6F0 80019EF0 0D000700 */  break      7
  .L80019EF4:
    /* A6F4 80019EF4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* A6F8 80019EF8 04006114 */  bne        $v1, $at, .L80019F0C
    /* A6FC 80019EFC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A700 80019F00 02004114 */  bne        $v0, $at, .L80019F0C
    /* A704 80019F04 00000000 */   nop
    /* A708 80019F08 0D000600 */  break      6
  .L80019F0C:
    /* A70C 80019F0C 12100000 */  mflo       $v0
    /* A710 80019F10 0680033C */  lui        $v1, %hi(D_80067ECA)
    /* A714 80019F14 CA7E6394 */  lhu        $v1, %lo(D_80067ECA)($v1)
    /* A718 80019F18 00000000 */  nop
    /* A71C 80019F1C 21186200 */  addu       $v1, $v1, $v0
    /* A720 80019F20 0680013C */  lui        $at, %hi(D_80067ECA)
    /* A724 80019F24 CA7E23A4 */  sh         $v1, %lo(D_80067ECA)($at)
    /* A728 80019F28 DB670008 */  j          .L80019F6C
    /* A72C 80019F2C 00000000 */   nop
  .L80019F30:
    /* A730 80019F30 0680013C */  lui        $at, %hi(D_80067ECA)
    /* A734 80019F34 CA7E20A4 */  sh         $zero, %lo(D_80067ECA)($at)
    /* A738 80019F38 DB670008 */  j          .L80019F6C
    /* A73C 80019F3C 00000000 */   nop
  .L80019F40:
    /* A740 80019F40 0780033C */  lui        $v1, %hi(D_800698EC)
    /* A744 80019F44 EC98638C */  lw         $v1, %lo(D_800698EC)($v1)
    /* A748 80019F48 00000000 */  nop
    /* A74C 80019F4C 1F006228 */  slti       $v0, $v1, 0x1F
    /* A750 80019F50 06004010 */  beqz       $v0, .L80019F6C
    /* A754 80019F54 01006224 */   addiu     $v0, $v1, 0x1
    /* A758 80019F58 0780013C */  lui        $at, %hi(D_800698EC)
    /* A75C 80019F5C EC9822AC */  sw         $v0, %lo(D_800698EC)($at)
    /* A760 80019F60 C0100200 */  sll        $v0, $v0, 3
    /* A764 80019F64 0680013C */  lui        $at, %hi(D_80066F68)
    /* A768 80019F68 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  .L80019F6C:
    /* A76C 80019F6C 0780103C */  lui        $s0, %hi(D_800698EC)
    /* A770 80019F70 EC981026 */  addiu      $s0, $s0, %lo(D_800698EC)
    /* A774 80019F74 0000038E */  lw         $v1, 0x0($s0)
    /* A778 80019F78 00000000 */  nop
    /* A77C 80019F7C 20006228 */  slti       $v0, $v1, 0x20
    /* A780 80019F80 03004010 */  beqz       $v0, .L80019F90
    /* A784 80019F84 01006224 */   addiu     $v0, $v1, 0x1
    /* A788 80019F88 000002AE */  sw         $v0, 0x0($s0)
    /* A78C 80019F8C 0000038E */  lw         $v1, 0x0($s0)
  .L80019F90:
    /* A790 80019F90 20000224 */  addiu      $v0, $zero, 0x20
    /* A794 80019F94 B8006214 */  bne        $v1, $v0, .L8001A278
    /* A798 80019F98 00000000 */   nop
    /* A79C 80019F9C 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* A7A0 80019FA0 EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* A7A4 80019FA4 00000000 */  nop
    /* A7A8 80019FA8 B3004018 */  blez       $v0, .L8001A278
    /* A7AC 80019FAC 00000000 */   nop
    /* A7B0 80019FB0 A44D000C */  jal        func_80013690
    /* A7B4 80019FB4 00000000 */   nop
    /* A7B8 80019FB8 AF004014 */  bnez       $v0, .L8001A278
    /* A7BC 80019FBC 0100043C */   lui       $a0, (0x1C000 >> 16)
    /* A7C0 80019FC0 5634010C */  jal        func_8004D158
    /* A7C4 80019FC4 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
    /* A7C8 80019FC8 0100043C */  lui        $a0, (0x16000 >> 16)
    /* A7CC 80019FCC 00608434 */  ori        $a0, $a0, (0x16000 & 0xFFFF)
    /* A7D0 80019FD0 0780033C */  lui        $v1, %hi(D_80069998)
    /* A7D4 80019FD4 9899638C */  lw         $v1, %lo(D_80069998)($v1)
    /* A7D8 80019FD8 01000224 */  addiu      $v0, $zero, 0x1
    /* A7DC 80019FDC 0680013C */  lui        $at, %hi(D_80067170)
    /* A7E0 80019FE0 707124AC */  sw         $a0, %lo(D_80067170)($at)
    /* A7E4 80019FE4 0780013C */  lui        $at, %hi(D_800698F0)
    /* A7E8 80019FE8 F09822AC */  sw         $v0, %lo(D_800698F0)($at)
    /* A7EC 80019FEC 000000AE */  sw         $zero, 0x0($s0)
    /* A7F0 80019FF0 21186400 */  addu       $v1, $v1, $a0
    /* A7F4 80019FF4 0780013C */  lui        $at, %hi(D_80069A0C)
    /* A7F8 80019FF8 0C9A23AC */  sw         $v1, %lo(D_80069A0C)($at)
    /* A7FC 80019FFC 9E680008 */  j          .L8001A278
    /* A800 8001A000 00000000 */   nop
  .L8001A004:
    /* A804 8001A004 F5C6010C */  jal        func_titlescreen_and_loading_80071BD4
    /* A808 8001A008 00000000 */   nop
    /* A80C 8001A00C 9E680008 */  j          .L8001A278
    /* A810 8001A010 00000000 */   nop
  .L8001A014:
    /* A814 8001A014 0780023C */  lui        $v0, %hi(D_800698EC)
    /* A818 8001A018 EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* A81C 8001A01C 00000000 */  nop
    /* A820 8001A020 5D004014 */  bnez       $v0, .L8001A198
    /* A824 8001A024 00000000 */   nop
    /* A828 8001A028 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* A82C 8001A02C EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* A830 8001A030 00000000 */  nop
    /* A834 8001A034 08004004 */  bltz       $v0, .L8001A058
    /* A838 8001A038 00000000 */   nop
  .L8001A03C:
    /* A83C 8001A03C 9675000C */  jal        func_8001D658
    /* A840 8001A040 00000000 */   nop
    /* A844 8001A044 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* A848 8001A048 EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* A84C 8001A04C 00000000 */  nop
    /* A850 8001A050 FAFF4104 */  bgez       $v0, .L8001A03C
    /* A854 8001A054 00000000 */   nop
  .L8001A058:
    /* A858 8001A058 0680043C */  lui        $a0, %hi(D_80067414)
    /* A85C 8001A05C 14748424 */  addiu      $a0, $a0, %lo(D_80067414)
    /* A860 8001A060 21280000 */  addu       $a1, $zero, $zero
    /* A864 8001A064 F26C000C */  jal        func_8001B3C8
    /* A868 8001A068 48020624 */   addiu     $a2, $zero, 0x248
    /* A86C 8001A06C 0680043C */  lui        $a0, %hi(D_8006718C)
    /* A870 8001A070 8C718424 */  addiu      $a0, $a0, %lo(D_8006718C)
    /* A874 8001A074 21280000 */  addu       $a1, $zero, $zero
    /* A878 8001A078 F26C000C */  jal        func_8001B3C8
    /* A87C 8001A07C 48020624 */   addiu     $a2, $zero, 0x248
    /* A880 8001A080 0680023C */  lui        $v0, %hi(D_80066F54)
    /* A884 8001A084 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* A888 8001A088 0680013C */  lui        $at, %hi(D_800632AC)
    /* A88C 8001A08C 21082200 */  addu       $at, $at, $v0
    /* A890 8001A090 AC322290 */  lbu        $v0, %lo(D_800632AC)($at)
    /* A894 8001A094 00000000 */  nop
    /* A898 8001A098 05004014 */  bnez       $v0, .L8001A0B0
    /* A89C 8001A09C 00000000 */   nop
    /* A8A0 8001A0A0 6F5C000C */  jal        func_800171BC
    /* A8A4 8001A0A4 00000000 */   nop
    /* A8A8 8001A0A8 66680008 */  j          .L8001A198
    /* A8AC 8001A0AC 00000000 */   nop
  .L8001A0B0:
    /* A8B0 8001A0B0 9BC2000C */  jal        func_80030A6C
    /* A8B4 8001A0B4 00000000 */   nop
    /* A8B8 8001A0B8 0780043C */  lui        $a0, %hi(D_8006B294)
    /* A8BC 8001A0BC 94B2848C */  lw         $a0, %lo(D_8006B294)($a0)
    /* A8C0 8001A0C0 CD71000C */  jal        func_8001C734
    /* A8C4 8001A0C4 00000000 */   nop
    /* A8C8 8001A0C8 0680023C */  lui        $v0, %hi(D_80066F54)
    /* A8CC 8001A0CC 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* A8D0 8001A0D0 0680013C */  lui        $at, %hi(D_80060140)
    /* A8D4 8001A0D4 21082200 */  addu       $at, $at, $v0
    /* A8D8 8001A0D8 40012290 */  lbu        $v0, %lo(D_80060140)($at)
    /* A8DC 8001A0DC 0680043C */  lui        $a0, %hi(D_80066D44)
    /* A8E0 8001A0E0 446D848C */  lw         $a0, %lo(D_80066D44)($a0)
    /* A8E4 8001A0E4 C0100200 */  sll        $v0, $v0, 3
    /* A8E8 8001A0E8 0680013C */  lui        $at, %hi(D_80064DE4)
    /* A8EC 8001A0EC 21082200 */  addu       $at, $at, $v0
    /* A8F0 8001A0F0 E44D238C */  lw         $v1, %lo(D_80064DE4)($at)
    /* A8F4 8001A0F4 0680013C */  lui        $at, %hi(D_80064DEA)
    /* A8F8 8001A0F8 21082200 */  addu       $at, $at, $v0
    /* A8FC 8001A0FC EA4D2694 */  lhu        $a2, %lo(D_80064DEA)($at)
    /* A900 8001A100 0680013C */  lui        $at, %hi(D_80064DE8)
    /* A904 8001A104 21082200 */  addu       $at, $at, $v0
    /* A908 8001A108 E84D2594 */  lhu        $a1, %lo(D_80064DE8)($at)
    /* A90C 8001A10C 21208300 */  addu       $a0, $a0, $v1
    /* A910 8001A110 074B000C */  jal        func_80012C1C
    /* A914 8001A114 21288500 */   addu      $a1, $a0, $a1
    /* A918 8001A118 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* A91C 8001A11C E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* A920 8001A120 00000000 */  nop
    /* A924 8001A124 1C004010 */  beqz       $v0, .L8001A198
    /* A928 8001A128 00000000 */   nop
    /* A92C 8001A12C 0780043C */  lui        $a0, %hi(D_80069FF0)
    /* A930 8001A130 F09F8424 */  addiu      $a0, $a0, %lo(D_80069FF0)
    /* A934 8001A134 0780103C */  lui        $s0, %hi(D_8006B2B8)
    /* A938 8001A138 B8B21026 */  addiu      $s0, $s0, %lo(D_8006B2B8)
    /* A93C 8001A13C 6C6F000C */  jal        func_8001BDB0
    /* A940 8001A140 21280002 */   addu      $a1, $s0, $zero
    /* A944 8001A144 0780023C */  lui        $v0, %hi(D_8006B2D0)
    /* A948 8001A148 D0B24284 */  lh         $v0, %lo(D_8006B2D0)($v0)
    /* A94C 8001A14C 0780013C */  lui        $at, %hi(D_8006A05C)
    /* A950 8001A150 5CA022AC */  sw         $v0, %lo(D_8006A05C)($at)
    /* A954 8001A154 76D4000C */  jal        func_800351D8
    /* A958 8001A158 10000424 */   addiu     $a0, $zero, 0x10
    /* A95C 8001A15C 0680043C */  lui        $a0, %hi(D_80061718)
    /* A960 8001A160 18178424 */  addiu      $a0, $a0, %lo(D_80061718)
    /* A964 8001A164 B978000C */  jal        func_8001E2E4
    /* A968 8001A168 00000000 */   nop
    /* A96C 8001A16C 01000224 */  addiu      $v0, $zero, 0x1
    /* A970 8001A170 0680013C */  lui        $at, %hi(D_80067FC4)
    /* A974 8001A174 C47F22A0 */  sb         $v0, %lo(D_80067FC4)($at)
    /* A978 8001A178 0680013C */  lui        $at, %hi(D_80067FC5)
    /* A97C 8001A17C C57F22A0 */  sb         $v0, %lo(D_80067FC5)($at)
    /* A980 8001A180 0680013C */  lui        $at, %hi(D_80067FC6)
    /* A984 8001A184 C67F20A0 */  sb         $zero, %lo(D_80067FC6)($at)
    /* A988 8001A188 E5C6000C */  jal        func_80031B94
    /* A98C 8001A18C 0C000426 */   addiu     $a0, $s0, 0xC
    /* A990 8001A190 1F76000C */  jal        func_8001D87C
    /* A994 8001A194 00000000 */   nop
  .L8001A198:
    /* A998 8001A198 0780113C */  lui        $s1, %hi(D_800698EC)
    /* A99C 8001A19C EC983126 */  addiu      $s1, $s1, %lo(D_800698EC)
    /* A9A0 8001A1A0 0000228E */  lw         $v0, 0x0($s1)
    /* A9A4 8001A1A4 00000000 */  nop
    /* A9A8 8001A1A8 01004324 */  addiu      $v1, $v0, 0x1
    /* A9AC 8001A1AC 09006228 */  slti       $v0, $v1, 0x9
    /* A9B0 8001A1B0 06004010 */  beqz       $v0, .L8001A1CC
    /* A9B4 8001A1B4 000023AE */   sw        $v1, 0x0($s1)
    /* A9B8 8001A1B8 08000224 */  addiu      $v0, $zero, 0x8
    /* A9BC 8001A1BC 23104300 */  subu       $v0, $v0, $v1
    /* A9C0 8001A1C0 40110200 */  sll        $v0, $v0, 5
    /* A9C4 8001A1C4 0680013C */  lui        $at, %hi(D_80066F68)
    /* A9C8 8001A1C8 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  .L8001A1CC:
    /* A9CC 8001A1CC 0680023C */  lui        $v0, %hi(D_80066EE4)
    /* A9D0 8001A1D0 E46E428C */  lw         $v0, %lo(D_80066EE4)($v0)
    /* A9D4 8001A1D4 00000000 */  nop
    /* A9D8 8001A1D8 27004010 */  beqz       $v0, .L8001A278
    /* A9DC 8001A1DC 00000000 */   nop
    /* A9E0 8001A1E0 C1B8000C */  jal        func_8002E304
    /* A9E4 8001A1E4 00000000 */   nop
    /* A9E8 8001A1E8 0000228E */  lw         $v0, 0x0($s1)
    /* A9EC 8001A1EC 00000000 */  nop
    /* A9F0 8001A1F0 0A004228 */  slti       $v0, $v0, 0xA
    /* A9F4 8001A1F4 1E004014 */  bnez       $v0, .L8001A270
    /* A9F8 8001A1F8 20000224 */   addiu     $v0, $zero, 0x20
    /* A9FC 8001A1FC 0780043C */  lui        $a0, %hi(D_8006B2C4)
    /* AA00 8001A200 C4B28424 */  addiu      $a0, $a0, %lo(D_8006B2C4)
    /* AA04 8001A204 E5C6000C */  jal        func_80031B94
    /* AA08 8001A208 00000000 */   nop
    /* AA0C 8001A20C 0780013C */  lui        $at, %hi(D_80069FFC)
    /* AA10 8001A210 FC9F20A0 */  sb         $zero, %lo(D_80069FFC)($at)
    /* AA14 8001A214 0780013C */  lui        $at, %hi(D_80069FFD)
    /* AA18 8001A218 FD9F20A0 */  sb         $zero, %lo(D_80069FFD)($at)
    /* AA1C 8001A21C 1F76000C */  jal        func_8001D87C
    /* AA20 8001A220 21804000 */   addu      $s0, $v0, $zero
    /* AA24 8001A224 12000016 */  bnez       $s0, .L8001A270
    /* AA28 8001A228 20000224 */   addiu     $v0, $zero, 0x20
    /* AA2C 8001A22C 76D4000C */  jal        func_800351D8
    /* AA30 8001A230 21200000 */   addu      $a0, $zero, $zero
    /* AA34 8001A234 03000224 */  addiu      $v0, $zero, 0x3
    /* AA38 8001A238 0780013C */  lui        $at, %hi(D_800681C8)
    /* AA3C 8001A23C C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* AA40 8001A240 02000224 */  addiu      $v0, $zero, 0x2
    /* AA44 8001A244 0780013C */  lui        $at, %hi(D_800698F0)
    /* AA48 8001A248 F09822AC */  sw         $v0, %lo(D_800698F0)($at)
    /* AA4C 8001A24C 01000224 */  addiu      $v0, $zero, 0x1
    /* AA50 8001A250 000020AE */  sw         $zero, 0x0($s1)
    /* AA54 8001A254 0780013C */  lui        $at, %hi(D_800698F8)
    /* AA58 8001A258 F89820AC */  sw         $zero, %lo(D_800698F8)($at)
    /* AA5C 8001A25C 0680013C */  lui        $at, %hi(D_80066F68)
    /* AA60 8001A260 686F20AC */  sw         $zero, %lo(D_80066F68)($at)
    /* AA64 8001A264 0680013C */  lui        $at, %hi(D_800670C8)
    /* AA68 8001A268 C87022AC */  sw         $v0, %lo(D_800670C8)($at)
    /* AA6C 8001A26C 20000224 */  addiu      $v0, $zero, 0x20
  .L8001A270:
    /* AA70 8001A270 0780013C */  lui        $at, %hi(D_8006A00E)
    /* AA74 8001A274 0EA022A0 */  sb         $v0, %lo(D_8006A00E)($at)
  .L8001A278:
    /* AA78 8001A278 3000BF8F */  lw         $ra, 0x30($sp)
    /* AA7C 8001A27C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* AA80 8001A280 2800B08F */  lw         $s0, 0x28($sp)
    /* AA84 8001A284 3800BD27 */  addiu      $sp, $sp, 0x38
    /* AA88 8001A288 0800E003 */  jr         $ra
    /* AA8C 8001A28C 00000000 */   nop
endlabel func_80019C40
