.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001AF18, 0x138

glabel func_8001AF18
    /* B718 8001AF18 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B71C 8001AF1C 1400B1AF */  sw         $s1, 0x14($sp)
    /* B720 8001AF20 0780113C */  lui        $s1, %hi(D_800698EC)
    /* B724 8001AF24 EC983126 */  addiu      $s1, $s1, %lo(D_800698EC)
    /* B728 8001AF28 1800BFAF */  sw         $ra, 0x18($sp)
    /* B72C 8001AF2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B730 8001AF30 0000228E */  lw         $v0, 0x0($s1)
    /* B734 8001AF34 0400238E */  lw         $v1, 0x4($s1)
    /* B738 8001AF38 01004224 */  addiu      $v0, $v0, 0x1
    /* B73C 8001AF3C 36006010 */  beqz       $v1, .L8001B018
    /* B740 8001AF40 000022AE */   sw        $v0, 0x0($s1)
    /* B744 8001AF44 C1B8000C */  jal        func_8002E304
    /* B748 8001AF48 00000000 */   nop
    /* B74C 8001AF4C 0000238E */  lw         $v1, 0x0($s1)
    /* B750 8001AF50 00000000 */  nop
    /* B754 8001AF54 09006228 */  slti       $v0, $v1, 0x9
    /* B758 8001AF58 05004010 */  beqz       $v0, .L8001AF70
    /* B75C 8001AF5C 08000224 */   addiu     $v0, $zero, 0x8
    /* B760 8001AF60 23104300 */  subu       $v0, $v0, $v1
    /* B764 8001AF64 40110200 */  sll        $v0, $v0, 5
    /* B768 8001AF68 0680013C */  lui        $at, %hi(D_80066F68)
    /* B76C 8001AF6C 686F22AC */  sw         $v0, %lo(D_80066F68)($at)
  .L8001AF70:
    /* B770 8001AF70 21006228 */  slti       $v0, $v1, 0x21
    /* B774 8001AF74 0D004010 */  beqz       $v0, .L8001AFAC
    /* B778 8001AF78 00000000 */   nop
    /* B77C 8001AF7C 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* B780 8001AF80 F89F4224 */  addiu      $v0, $v0, %lo(D_80069FF8)
    /* B784 8001AF84 0000438C */  lw         $v1, 0x0($v0)
    /* B788 8001AF88 0780043C */  lui        $a0, %hi(D_80069FFE)
    /* B78C 8001AF8C FE9F8490 */  lbu        $a0, %lo(D_80069FFE)($a0)
    /* B790 8001AF90 20006324 */  addiu      $v1, $v1, 0x20
    /* B794 8001AF94 08008424 */  addiu      $a0, $a0, 0x8
    /* B798 8001AF98 000043AC */  sw         $v1, 0x0($v0)
    /* B79C 8001AF9C 0780013C */  lui        $at, %hi(D_80069FFE)
    /* B7A0 8001AFA0 FE9F24A0 */  sb         $a0, %lo(D_80069FFE)($at)
    /* B7A4 8001AFA4 066C0008 */  j          .L8001B018
    /* B7A8 8001AFA8 00000000 */   nop
  .L8001AFAC:
    /* B7AC 8001AFAC 0780043C */  lui        $a0, %hi(D_8006B2C4)
    /* B7B0 8001AFB0 C4B28424 */  addiu      $a0, $a0, %lo(D_8006B2C4)
    /* B7B4 8001AFB4 E5C6000C */  jal        func_80031B94
    /* B7B8 8001AFB8 00000000 */   nop
    /* B7BC 8001AFBC 0780013C */  lui        $at, %hi(D_80069FFC)
    /* B7C0 8001AFC0 FC9F20A0 */  sb         $zero, %lo(D_80069FFC)($at)
    /* B7C4 8001AFC4 0780013C */  lui        $at, %hi(D_80069FFD)
    /* B7C8 8001AFC8 FD9F20A0 */  sb         $zero, %lo(D_80069FFD)($at)
    /* B7CC 8001AFCC 1F76000C */  jal        func_8001D87C
    /* B7D0 8001AFD0 21804000 */   addu      $s0, $v0, $zero
    /* B7D4 8001AFD4 10000016 */  bnez       $s0, .L8001B018
    /* B7D8 8001AFD8 00000000 */   nop
    /* B7DC 8001AFDC 76D4000C */  jal        func_800351D8
    /* B7E0 8001AFE0 21200000 */   addu      $a0, $zero, $zero
    /* B7E4 8001AFE4 03000224 */  addiu      $v0, $zero, 0x3
    /* B7E8 8001AFE8 0780013C */  lui        $at, %hi(D_800681C8)
    /* B7EC 8001AFEC C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* B7F0 8001AFF0 02000224 */  addiu      $v0, $zero, 0x2
    /* B7F4 8001AFF4 040022AE */  sw         $v0, 0x4($s1)
    /* B7F8 8001AFF8 01000224 */  addiu      $v0, $zero, 0x1
    /* B7FC 8001AFFC 000020AE */  sw         $zero, 0x0($s1)
    /* B800 8001B000 0780013C */  lui        $at, %hi(D_800698F8)
    /* B804 8001B004 F89820AC */  sw         $zero, %lo(D_800698F8)($at)
    /* B808 8001B008 0680013C */  lui        $at, %hi(D_80066F68)
    /* B80C 8001B00C 686F20AC */  sw         $zero, %lo(D_80066F68)($at)
    /* B810 8001B010 0680013C */  lui        $at, %hi(D_800670C8)
    /* B814 8001B014 C87022AC */  sw         $v0, %lo(D_800670C8)($at)
  .L8001B018:
    /* B818 8001B018 146C000C */  jal        func_8001B050
    /* B81C 8001B01C 63000424 */   addiu     $a0, $zero, 0x63
    /* B820 8001B020 0680023C */  lui        $v0, %hi(D_80067008)
    /* B824 8001B024 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* B828 8001B028 00000000 */  nop
    /* B82C 8001B02C 01004224 */  addiu      $v0, $v0, 0x1
    /* B830 8001B030 0680013C */  lui        $at, %hi(D_80067008)
    /* B834 8001B034 087022AC */  sw         $v0, %lo(D_80067008)($at)
    /* B838 8001B038 1800BF8F */  lw         $ra, 0x18($sp)
    /* B83C 8001B03C 1400B18F */  lw         $s1, 0x14($sp)
    /* B840 8001B040 1000B08F */  lw         $s0, 0x10($sp)
    /* B844 8001B044 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B848 8001B048 0800E003 */  jr         $ra
    /* B84C 8001B04C 00000000 */   nop
endlabel func_8001AF18
