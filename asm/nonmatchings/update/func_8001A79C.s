.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A79C, 0x174

glabel func_8001A79C
    /* AF9C 8001A79C 0780033C */  lui        $v1, %hi(D_800698F0)
    /* AFA0 8001A7A0 F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* AFA4 8001A7A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AFA8 8001A7A8 03006228 */  slti       $v0, $v1, 0x3
    /* AFAC 8001A7AC 07004010 */  beqz       $v0, .L8001A7CC
    /* AFB0 8001A7B0 1000BFAF */   sw        $ra, 0x10($sp)
    /* AFB4 8001A7B4 4500601C */  bgtz       $v1, .L8001A8CC
    /* AFB8 8001A7B8 00000000 */   nop
    /* AFBC 8001A7BC 08006010 */  beqz       $v1, .L8001A7E0
    /* AFC0 8001A7C0 00000000 */   nop
    /* AFC4 8001A7C4 406A0008 */  j          .L8001A900
    /* AFC8 8001A7C8 00000000 */   nop
  .L8001A7CC:
    /* AFCC 8001A7CC 03000224 */  addiu      $v0, $zero, 0x3
    /* AFD0 8001A7D0 44006210 */  beq        $v1, $v0, .L8001A8E4
    /* AFD4 8001A7D4 00000000 */   nop
    /* AFD8 8001A7D8 406A0008 */  j          .L8001A900
    /* AFDC 8001A7DC 00000000 */   nop
  .L8001A7E0:
    /* AFE0 8001A7E0 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* AFE4 8001A7E4 EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* AFE8 8001A7E8 00000000 */  nop
    /* AFEC 8001A7EC 02004228 */  slti       $v0, $v0, 0x2
    /* AFF0 8001A7F0 03004010 */  beqz       $v0, .L8001A800
    /* AFF4 8001A7F4 00000000 */   nop
    /* AFF8 8001A7F8 9675000C */  jal        func_8001D658
    /* AFFC 8001A7FC 00000000 */   nop
  .L8001A800:
    /* B000 8001A800 0680023C */  lui        $v0, %hi(D_80066F68)
    /* B004 8001A804 686F428C */  lw         $v0, %lo(D_80066F68)($v0)
    /* B008 8001A808 00000000 */  nop
    /* B00C 8001A80C 10004224 */  addiu      $v0, $v0, 0x10
    /* B010 8001A810 0680013C */  lui        $at, %hi(D_80066F68)
    /* B014 8001A814 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
    /* B018 8001A818 00014228 */  slti       $v0, $v0, 0x100
    /* B01C 8001A81C 38004014 */  bnez       $v0, .L8001A900
    /* B020 8001A820 00000000 */   nop
    /* B024 8001A824 2131010C */  jal        func_8004C484
    /* B028 8001A828 00000000 */   nop
    /* B02C 8001A82C 0100043C */  lui        $a0, (0x1C000 >> 16)
    /* B030 8001A830 5634010C */  jal        func_8004D158
    /* B034 8001A834 00C08434 */   ori       $a0, $a0, (0x1C000 & 0xFFFF)
    /* B038 8001A838 126A0008 */  j          .L8001A848
    /* B03C 8001A83C 00000000 */   nop
  .L8001A840:
    /* B040 8001A840 9675000C */  jal        func_8001D658
    /* B044 8001A844 00000000 */   nop
  .L8001A848:
    /* B048 8001A848 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* B04C 8001A84C EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* B050 8001A850 00000000 */  nop
    /* B054 8001A854 02004228 */  slti       $v0, $v0, 0x2
    /* B058 8001A858 F9FF4014 */  bnez       $v0, .L8001A840
    /* B05C 8001A85C 00000000 */   nop
    /* B060 8001A860 0680023C */  lui        $v0, %hi(D_8006712C)
    /* B064 8001A864 2C71428C */  lw         $v0, %lo(D_8006712C)($v0)
    /* B068 8001A868 00000000 */  nop
    /* B06C 8001A86C 07004004 */  bltz       $v0, .L8001A88C
    /* B070 8001A870 01000324 */   addiu     $v1, $zero, 0x1
    /* B074 8001A874 DDDC010C */  jal        func_titlescreen_and_loading_80077374
    /* B078 8001A878 21200000 */   addu      $a0, $zero, $zero
    /* B07C 8001A87C A96A000C */  jal        func_8001AAA4
    /* B080 8001A880 00000000 */   nop
    /* B084 8001A884 406A0008 */  j          .L8001A900
    /* B088 8001A888 00000000 */   nop
  .L8001A88C:
    /* B08C 8001A88C 0680023C */  lui        $v0, %hi(D_8006715C)
    /* B090 8001A890 5C71428C */  lw         $v0, %lo(D_8006715C)($v0)
    /* B094 8001A894 0680043C */  lui        $a0, %hi(D_80066F54)
    /* B098 8001A898 546F848C */  lw         $a0, %lo(D_80066F54)($a0)
    /* B09C 8001A89C 0780013C */  lui        $at, %hi(D_800698F0)
    /* B0A0 8001A8A0 F09823AC */  sw         $v1, %lo(D_800698F0)($at)
    /* B0A4 8001A8A4 0780013C */  lui        $at, %hi(D_800698EC)
    /* B0A8 8001A8A8 EC9820AC */  sw         $zero, %lo(D_800698EC)($at)
    /* B0AC 8001A8AC 0680013C */  lui        $at, %hi(D_800670C8)
    /* B0B0 8001A8B0 C87023AC */  sw         $v1, %lo(D_800670C8)($at)
    /* B0B4 8001A8B4 0680013C */  lui        $at, %hi(D_80066F90)
    /* B0B8 8001A8B8 906F22AC */  sw         $v0, %lo(D_80066F90)($at)
    /* B0BC 8001A8BC 0680013C */  lui        $at, %hi(D_80066FD0)
    /* B0C0 8001A8C0 D06F24AC */  sw         $a0, %lo(D_80066FD0)($at)
    /* B0C4 8001A8C4 406A0008 */  j          .L8001A900
    /* B0C8 8001A8C8 00000000 */   nop
  .L8001A8CC:
    /* B0CC 8001A8CC 44CD010C */  jal        func_titlescreen_and_loading_80073510
    /* B0D0 8001A8D0 00000000 */   nop
    /* B0D4 8001A8D4 406A0008 */  j          .L8001A900
    /* B0D8 8001A8D8 00000000 */   nop
  .L8001A8DC:
    /* B0DC 8001A8DC 9675000C */  jal        func_8001D658
    /* B0E0 8001A8E0 00000000 */   nop
  .L8001A8E4:
    /* B0E4 8001A8E4 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* B0E8 8001A8E8 EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* B0EC 8001A8EC 00000000 */  nop
    /* B0F0 8001A8F0 FAFF4104 */  bgez       $v0, .L8001A8DC
    /* B0F4 8001A8F4 00000000 */   nop
    /* B0F8 8001A8F8 6F5C000C */  jal        func_800171BC
    /* B0FC 8001A8FC 00000000 */   nop
  .L8001A900:
    /* B100 8001A900 1000BF8F */  lw         $ra, 0x10($sp)
    /* B104 8001A904 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B108 8001A908 0800E003 */  jr         $ra
    /* B10C 8001A90C 00000000 */   nop
endlabel func_8001A79C
