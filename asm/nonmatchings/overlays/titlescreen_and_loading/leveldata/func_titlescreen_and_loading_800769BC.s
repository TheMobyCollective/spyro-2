.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_800769BC, 0x318

glabel func_titlescreen_and_loading_800769BC
    /* 2C758 800769BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2C75C 800769C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C760 800769C4 21808000 */  addu       $s0, $a0, $zero
    /* 2C764 800769C8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2C768 800769CC 00000292 */  lbu        $v0, 0x0($s0)
    /* 2C76C 800769D0 0680013C */  lui        $at, %hi(D_80066F90)
    /* 2C770 800769D4 906F22AC */  sw         $v0, %lo(D_80066F90)($at)
    /* 2C774 800769D8 01000292 */  lbu        $v0, 0x1($s0)
    /* 2C778 800769DC 0680013C */  lui        $at, %hi(D_8006712C)
    /* 2C77C 800769E0 2C7122AC */  sw         $v0, %lo(D_8006712C)($at)
    /* 2C780 800769E4 04004228 */  slti       $v0, $v0, 0x4
    /* 2C784 800769E8 03004010 */  beqz       $v0, .Ltitlescreen_and_loading_800769F8
    /* 2C788 800769EC 04000224 */   addiu     $v0, $zero, 0x4
    /* 2C78C 800769F0 0680013C */  lui        $at, %hi(D_8006712C)
    /* 2C790 800769F4 2C7122AC */  sw         $v0, %lo(D_8006712C)($at)
  .Ltitlescreen_and_loading_800769F8:
    /* 2C794 800769F8 02000292 */  lbu        $v0, 0x2($s0)
    /* 2C798 800769FC 0680013C */  lui        $at, %hi(D_800676A0)
    /* 2C79C 80076A00 A07622AC */  sw         $v0, %lo(D_800676A0)($at)
    /* 2C7A0 80076A04 03000292 */  lbu        $v0, 0x3($s0)
    /* 2C7A4 80076A08 0780013C */  lui        $at, %hi(D_800698BA)
    /* 2C7A8 80076A0C BA9822A0 */  sb         $v0, %lo(D_800698BA)($at)
    /* 2C7AC 80076A10 04000292 */  lbu        $v0, 0x4($s0)
    /* 2C7B0 80076A14 0780013C */  lui        $at, %hi(D_80068374)
    /* 2C7B4 80076A18 748322A0 */  sb         $v0, %lo(D_80068374)($at)
    /* 2C7B8 80076A1C 05000292 */  lbu        $v0, 0x5($s0)
    /* 2C7BC 80076A20 0680013C */  lui        $at, %hi(D_80067144)
    /* 2C7C0 80076A24 447122AC */  sw         $v0, %lo(D_80067144)($at)
    /* 2C7C4 80076A28 06000292 */  lbu        $v0, 0x6($s0)
    /* 2C7C8 80076A2C 6666043C */  lui        $a0, (0x66666667 >> 16)
    /* 2C7CC 80076A30 0680013C */  lui        $at, %hi(D_80066D48)
    /* 2C7D0 80076A34 486D22AC */  sw         $v0, %lo(D_80066D48)($at)
    /* 2C7D4 80076A38 07000292 */  lbu        $v0, 0x7($s0)
    /* 2C7D8 80076A3C 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
    /* 2C7DC 80076A40 801B0200 */  sll        $v1, $v0, 14
    /* 2C7E0 80076A44 23186200 */  subu       $v1, $v1, $v0
    /* 2C7E4 80076A48 18006400 */  mult       $v1, $a0
    /* 2C7E8 80076A4C 10000526 */  addiu      $a1, $s0, 0x10
    /* 2C7EC 80076A50 C31F0300 */  sra        $v1, $v1, 31
    /* 2C7F0 80076A54 0680013C */  lui        $at, %hi(D_80066D4C)
    /* 2C7F4 80076A58 4C6D22AC */  sw         $v0, %lo(D_80066D4C)($at)
    /* 2C7F8 80076A5C 10580000 */  mfhi       $t3
    /* 2C7FC 80076A60 83100B00 */  sra        $v0, $t3, 2
    /* 2C800 80076A64 23104300 */  subu       $v0, $v0, $v1
    /* 2C804 80076A68 0780013C */  lui        $at, %hi(D_80068314)
    /* 2C808 80076A6C 148322AC */  sw         $v0, %lo(D_80068314)($at)
    /* 2C80C 80076A70 08000292 */  lbu        $v0, 0x8($s0)
    /* 2C810 80076A74 0680013C */  lui        $at, %hi(D_80066D50)
    /* 2C814 80076A78 506D22AC */  sw         $v0, %lo(D_80066D50)($at)
    /* 2C818 80076A7C 09000292 */  lbu        $v0, 0x9($s0)
    /* 2C81C 80076A80 0780043C */  lui        $a0, %hi(D_8006B084)
    /* 2C820 80076A84 84B08424 */  addiu      $a0, $a0, %lo(D_8006B084)
    /* 2C824 80076A88 0780013C */  lui        $at, %hi(D_800698BB)
    /* 2C828 80076A8C BB9822A0 */  sb         $v0, %lo(D_800698BB)($at)
    /* 2C82C 80076A90 036D000C */  jal        func_8001B40C
    /* 2C830 80076A94 20000624 */   addiu     $a2, $zero, 0x20
    /* 2C834 80076A98 0780043C */  lui        $a0, %hi(D_8006A980)
    /* 2C838 80076A9C 80A98424 */  addiu      $a0, $a0, %lo(D_8006A980)
    /* 2C83C 80076AA0 30000526 */  addiu      $a1, $s0, 0x30
    /* 2C840 80076AA4 036D000C */  jal        func_8001B40C
    /* 2C844 80076AA8 20000624 */   addiu     $a2, $zero, 0x20
    /* 2C848 80076AAC 0680043C */  lui        $a0, %hi(D_80064670)
    /* 2C84C 80076AB0 70468424 */  addiu      $a0, $a0, %lo(D_80064670)
    /* 2C850 80076AB4 B8000526 */  addiu      $a1, $s0, 0xB8
    /* 2C854 80076AB8 036D000C */  jal        func_8001B40C
    /* 2C858 80076ABC 9C000624 */   addiu     $a2, $zero, 0x9C
    /* 2C85C 80076AC0 0680043C */  lui        $a0, %hi(D_8006470C)
    /* 2C860 80076AC4 0C478424 */  addiu      $a0, $a0, %lo(D_8006470C)
    /* 2C864 80076AC8 54010526 */  addiu      $a1, $s0, 0x154
    /* 2C868 80076ACC 036D000C */  jal        func_8001B40C
    /* 2C86C 80076AD0 14000624 */   addiu     $a2, $zero, 0x14
    /* 2C870 80076AD4 21380000 */  addu       $a3, $zero, $zero
    /* 2C874 80076AD8 21500002 */  addu       $t2, $s0, $zero
    /* 2C878 80076ADC 21300000 */  addu       $a2, $zero, $zero
    /* 2C87C 80076AE0 21480002 */  addu       $t1, $s0, $zero
    /* 2C880 80076AE4 0680083C */  lui        $t0, %hi(D_80061950)
    /* 2C884 80076AE8 50190825 */  addiu      $t0, $t0, %lo(D_80061950)
  .Ltitlescreen_and_loading_80076AEC:
    /* 2C888 80076AEC 21280000 */  addu       $a1, $zero, $zero
    /* 2C88C 80076AF0 21200001 */  addu       $a0, $t0, $zero
    /* 2C890 80076AF4 90002325 */  addiu      $v1, $t1, 0x90
  .Ltitlescreen_and_loading_80076AF8:
    /* 2C894 80076AF8 00006290 */  lbu        $v0, 0x0($v1)
    /* 2C898 80076AFC 01006324 */  addiu      $v1, $v1, 0x1
    /* 2C89C 80076B00 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2C8A0 80076B04 000082AC */  sw         $v0, 0x0($a0)
    /* 2C8A4 80076B08 0500A228 */  slti       $v0, $a1, 0x5
    /* 2C8A8 80076B0C FAFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80076AF8
    /* 2C8AC 80076B10 04008424 */   addiu     $a0, $a0, 0x4
    /* 2C8B0 80076B14 A400428D */  lw         $v0, 0xA4($t2)
    /* 2C8B4 80076B18 04004A25 */  addiu      $t2, $t2, 0x4
    /* 2C8B8 80076B1C 05002925 */  addiu      $t1, $t1, 0x5
    /* 2C8BC 80076B20 58000825 */  addiu      $t0, $t0, 0x58
    /* 2C8C0 80076B24 0680013C */  lui        $at, %hi(D_80061964)
    /* 2C8C4 80076B28 21082600 */  addu       $at, $at, $a2
    /* 2C8C8 80076B2C 641922AC */  sw         $v0, %lo(D_80061964)($at)
    /* 2C8CC 80076B30 21100702 */  addu       $v0, $s0, $a3
    /* 2C8D0 80076B34 B4004290 */  lbu        $v0, 0xB4($v0)
    /* 2C8D4 80076B38 0100E724 */  addiu      $a3, $a3, 0x1
    /* 2C8D8 80076B3C 0680013C */  lui        $at, %hi(D_80061970)
    /* 2C8DC 80076B40 21082600 */  addu       $at, $at, $a2
    /* 2C8E0 80076B44 701922AC */  sw         $v0, %lo(D_80061970)($at)
    /* 2C8E4 80076B48 0400E228 */  slti       $v0, $a3, 0x4
    /* 2C8E8 80076B4C E7FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80076AEC
    /* 2C8EC 80076B50 5800C624 */   addiu     $a2, $a2, 0x58
    /* 2C8F0 80076B54 21280000 */  addu       $a1, $zero, $zero
    /* 2C8F4 80076B58 0780063C */  lui        $a2, %hi(D_80069FD0)
    /* 2C8F8 80076B5C D09FC624 */  addiu      $a2, $a2, %lo(D_80069FD0)
    /* 2C8FC 80076B60 0780083C */  lui        $t0, %hi(D_8006AC04)
    /* 2C900 80076B64 04AC0825 */  addiu      $t0, $t0, %lo(D_8006AC04)
    /* 2C904 80076B68 21380002 */  addu       $a3, $s0, $zero
    /* 2C908 80076B6C 0680013C */  lui        $at, %hi(D_800670CC)
    /* 2C90C 80076B70 CC7020AC */  sw         $zero, %lo(D_800670CC)($at)
    /* 2C910 80076B74 0680013C */  lui        $at, %hi(D_80067108)
    /* 2C914 80076B78 087120AC */  sw         $zero, %lo(D_80067108)($at)
    /* 2C918 80076B7C 0680013C */  lui        $at, %hi(D_8006702C)
    /* 2C91C 80076B80 2C7020AC */  sw         $zero, %lo(D_8006702C)($at)
  .Ltitlescreen_and_loading_80076B84:
    /* 2C920 80076B84 6801E384 */  lh         $v1, 0x168($a3)
    /* 2C924 80076B88 0680023C */  lui        $v0, %hi(D_800670CC)
    /* 2C928 80076B8C CC70428C */  lw         $v0, %lo(D_800670CC)($v0)
    /* 2C92C 80076B90 21200502 */  addu       $a0, $s0, $a1
    /* 2C930 80076B94 21104300 */  addu       $v0, $v0, $v1
    /* 2C934 80076B98 000003AD */  sw         $v1, 0x0($t0)
    /* 2C938 80076B9C 0680013C */  lui        $at, %hi(D_800670CC)
    /* 2C93C 80076BA0 CC7022AC */  sw         $v0, %lo(D_800670CC)($at)
    /* 2C940 80076BA4 50008290 */  lbu        $v0, 0x50($a0)
    /* 2C944 80076BA8 0680013C */  lui        $at, %hi(D_800648F4)
    /* 2C948 80076BAC 21082500 */  addu       $at, $at, $a1
    /* 2C94C 80076BB0 F4482390 */  lbu        $v1, %lo(D_800648F4)($at)
    /* 2C950 80076BB4 0780013C */  lui        $at, %hi(D_8006B264)
    /* 2C954 80076BB8 21082500 */  addu       $at, $at, $a1
    /* 2C958 80076BBC 64B222A0 */  sb         $v0, %lo(D_8006B264)($at)
    /* 2C95C 80076BC0 08006010 */  beqz       $v1, .Ltitlescreen_and_loading_80076BE4
    /* 2C960 80076BC4 00000000 */   nop
    /* 2C964 80076BC8 50008390 */  lbu        $v1, 0x50($a0)
    /* 2C968 80076BCC 0680023C */  lui        $v0, %hi(D_80067108)
    /* 2C96C 80076BD0 0871428C */  lw         $v0, %lo(D_80067108)($v0)
    /* 2C970 80076BD4 00000000 */  nop
    /* 2C974 80076BD8 21104300 */  addu       $v0, $v0, $v1
    /* 2C978 80076BDC 0680013C */  lui        $at, %hi(D_80067108)
    /* 2C97C 80076BE0 087122AC */  sw         $v0, %lo(D_80067108)($at)
  .Ltitlescreen_and_loading_80076BE4:
    /* 2C980 80076BE4 70008290 */  lbu        $v0, 0x70($a0)
    /* 2C984 80076BE8 21180000 */  addu       $v1, $zero, $zero
    /* 2C988 80076BEC 0000C2A0 */  sb         $v0, 0x0($a2)
  .Ltitlescreen_and_loading_80076BF0:
    /* 2C98C 80076BF0 0000C290 */  lbu        $v0, 0x0($a2)
    /* 2C990 80076BF4 00000000 */  nop
    /* 2C994 80076BF8 07106200 */  srav       $v0, $v0, $v1
    /* 2C998 80076BFC 01004230 */  andi       $v0, $v0, 0x1
    /* 2C99C 80076C00 07004010 */  beqz       $v0, .Ltitlescreen_and_loading_80076C20
    /* 2C9A0 80076C04 00000000 */   nop
    /* 2C9A4 80076C08 0680023C */  lui        $v0, %hi(D_8006702C)
    /* 2C9A8 80076C0C 2C70428C */  lw         $v0, %lo(D_8006702C)($v0)
    /* 2C9AC 80076C10 00000000 */  nop
    /* 2C9B0 80076C14 01004224 */  addiu      $v0, $v0, 0x1
    /* 2C9B4 80076C18 0680013C */  lui        $at, %hi(D_8006702C)
    /* 2C9B8 80076C1C 2C7022AC */  sw         $v0, %lo(D_8006702C)($at)
  .Ltitlescreen_and_loading_80076C20:
    /* 2C9BC 80076C20 01006324 */  addiu      $v1, $v1, 0x1
    /* 2C9C0 80076C24 04006228 */  slti       $v0, $v1, 0x4
    /* 2C9C4 80076C28 F1FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80076BF0
    /* 2C9C8 80076C2C 00000000 */   nop
    /* 2C9CC 80076C30 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2C9D0 80076C34 04000825 */  addiu      $t0, $t0, 0x4
    /* 2C9D4 80076C38 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2C9D8 80076C3C 2000A228 */  slti       $v0, $a1, 0x20
    /* 2C9DC 80076C40 D0FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80076B84
    /* 2C9E0 80076C44 0200E724 */   addiu     $a3, $a3, 0x2
    /* 2C9E4 80076C48 0680023C */  lui        $v0, %hi(D_80064706)
    /* 2C9E8 80076C4C 06474284 */  lh         $v0, %lo(D_80064706)($v0)
    /* 2C9EC 80076C50 00000000 */  nop
    /* 2C9F0 80076C54 15004014 */  bnez       $v0, .Ltitlescreen_and_loading_80076CAC
    /* 2C9F4 80076C58 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C9F8 80076C5C 21200000 */  addu       $a0, $zero, $zero
  .Ltitlescreen_and_loading_80076C60:
    /* 2C9FC 80076C60 0680013C */  lui        $at, %hi(D_80064672)
    /* 2CA00 80076C64 21082400 */  addu       $at, $at, $a0
    /* 2CA04 80076C68 72462284 */  lh         $v0, %lo(D_80064672)($at)
    /* 2CA08 80076C6C 00000000 */  nop
    /* 2CA0C 80076C70 0A004514 */  bne        $v0, $a1, .Ltitlescreen_and_loading_80076C9C
    /* 2CA10 80076C74 00000000 */   nop
    /* 2CA14 80076C78 0680013C */  lui        $at, %hi(D_80064670)
    /* 2CA18 80076C7C 21082400 */  addu       $at, $at, $a0
    /* 2CA1C 80076C80 70462384 */  lh         $v1, %lo(D_80064670)($at)
    /* 2CA20 80076C84 0680023C */  lui        $v0, %hi(D_800670CC)
    /* 2CA24 80076C88 CC70428C */  lw         $v0, %lo(D_800670CC)($v0)
    /* 2CA28 80076C8C 00000000 */  nop
    /* 2CA2C 80076C90 23104300 */  subu       $v0, $v0, $v1
    /* 2CA30 80076C94 0680013C */  lui        $at, %hi(D_800670CC)
    /* 2CA34 80076C98 CC7022AC */  sw         $v0, %lo(D_800670CC)($at)
  .Ltitlescreen_and_loading_80076C9C:
    /* 2CA38 80076C9C 04008424 */  addiu      $a0, $a0, 0x4
    /* 2CA3C 80076CA0 9C008228 */  slti       $v0, $a0, 0x9C
    /* 2CA40 80076CA4 EEFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80076C60
    /* 2CA44 80076CA8 00000000 */   nop
  .Ltitlescreen_and_loading_80076CAC:
    /* 2CA48 80076CAC 0780043C */  lui        $a0, %hi(D_8006AC84)
    /* 2CA4C 80076CB0 84AC8424 */  addiu      $a0, $a0, %lo(D_8006AC84)
    /* 2CA50 80076CB4 A8010526 */  addiu      $a1, $s0, 0x1A8
    /* 2CA54 80076CB8 036D000C */  jal        func_8001B40C
    /* 2CA58 80076CBC 00040624 */   addiu     $a2, $zero, 0x400
    /* 2CA5C 80076CC0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2CA60 80076CC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2CA64 80076CC8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2CA68 80076CCC 0800E003 */  jr         $ra
    /* 2CA6C 80076CD0 00000000 */   nop
endlabel func_titlescreen_and_loading_800769BC
