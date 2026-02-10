.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80073C64, 0x1E4

glabel func_titlescreen_and_loading_80073C64
    /* 29A00 80073C64 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 29A04 80073C68 1800B0AF */  sw         $s0, 0x18($sp)
    /* 29A08 80073C6C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 29A0C 80073C70 2188A000 */  addu       $s1, $a1, $zero
    /* 29A10 80073C74 2000BFAF */  sw         $ra, 0x20($sp)
    /* 29A14 80073C78 0780013C */  lui        $at, %hi(D_80068C50)
    /* 29A18 80073C7C 508C31AC */  sw         $s1, %lo(D_80068C50)($at)
    /* 29A1C 80073C80 0B00C010 */  beqz       $a2, .Ltitlescreen_and_loading_80073CB0
    /* 29A20 80073C84 21808000 */   addu      $s0, $a0, $zero
    /* 29A24 80073C88 01002232 */  andi       $v0, $s1, 0x1
    /* 29A28 80073C8C 40180200 */  sll        $v1, $v0, 1
    /* 29A2C 80073C90 21186200 */  addu       $v1, $v1, $v0
    /* 29A30 80073C94 C0180300 */  sll        $v1, $v1, 3
    /* 29A34 80073C98 21186200 */  addu       $v1, $v1, $v0
    /* 29A38 80073C9C 80210300 */  sll        $a0, $v1, 6
    /* 29A3C 80073CA0 23208300 */  subu       $a0, $a0, $v1
    /* 29A40 80073CA4 00210400 */  sll        $a0, $a0, 4
    /* 29A44 80073CA8 36CF0108 */  j          .Ltitlescreen_and_loading_80073CD8
    /* 29A48 80073CAC 10108424 */   addiu     $a0, $a0, 0x1010
  .Ltitlescreen_and_loading_80073CB0:
    /* 29A4C 80073CB0 0200043C */  lui        $a0, (0x21010 >> 16)
    /* 29A50 80073CB4 10108434 */  ori        $a0, $a0, (0x21010 & 0xFFFF)
    /* 29A54 80073CB8 40101100 */  sll        $v0, $s1, 1
    /* 29A58 80073CBC 21105100 */  addu       $v0, $v0, $s1
    /* 29A5C 80073CC0 C0100200 */  sll        $v0, $v0, 3
    /* 29A60 80073CC4 21105100 */  addu       $v0, $v0, $s1
    /* 29A64 80073CC8 80190200 */  sll        $v1, $v0, 6
    /* 29A68 80073CCC 23186200 */  subu       $v1, $v1, $v0
    /* 29A6C 80073CD0 00190300 */  sll        $v1, $v1, 4
    /* 29A70 80073CD4 21206400 */  addu       $a0, $v1, $a0
  .Ltitlescreen_and_loading_80073CD8:
    /* 29A74 80073CD8 EF67010C */  jal        func_80059FBC
    /* 29A78 80073CDC 00000000 */   nop
    /* 29A7C 80073CE0 0000048E */  lw         $a0, 0x0($s0)
    /* 29A80 80073CE4 70620524 */  addiu      $a1, $zero, 0x6270
    /* 29A84 80073CE8 AA6A010C */  jal        func_8005AAA8
    /* 29A88 80073CEC 21200402 */   addu      $a0, $s0, $a0
  .Ltitlescreen_and_loading_80073CF0:
    /* 29A8C 80073CF0 5768010C */  jal        func_8005A15C
    /* 29A90 80073CF4 21200000 */   addu      $a0, $zero, $zero
    /* 29A94 80073CF8 FDFF4010 */  beqz       $v0, .Ltitlescreen_and_loading_80073CF0
    /* 29A98 80073CFC 00000000 */   nop
    /* 29A9C 80073D00 0780033C */  lui        $v1, %hi(D_80068C64)
    /* 29AA0 80073D04 648C6324 */  addiu      $v1, $v1, %lo(D_80068C64)
    /* 29AA4 80073D08 0000628C */  lw         $v0, 0x0($v1)
    /* 29AA8 80073D0C 00000000 */  nop
    /* 29AAC 80073D10 47004018 */  blez       $v0, .Ltitlescreen_and_loading_80073E30
    /* 29AB0 80073D14 21380000 */   addu      $a3, $zero, $zero
    /* 29AB4 80073D18 80301100 */  sll        $a2, $s1, 2
    /* 29AB8 80073D1C 21406000 */  addu       $t0, $v1, $zero
    /* 29ABC 80073D20 0780053C */  lui        $a1, %hi(D_80068C94)
    /* 29AC0 80073D24 948CA524 */  addiu      $a1, $a1, %lo(D_80068C94)
  .Ltitlescreen_and_loading_80073D28:
    /* 29AC4 80073D28 0000A38C */  lw         $v1, 0x0($a1)
    /* 29AC8 80073D2C 00000000 */  nop
    /* 29ACC 80073D30 3A006104 */  bgez       $v1, .Ltitlescreen_and_loading_80073E1C
    /* 29AD0 80073D34 00000000 */   nop
    /* 29AD4 80073D38 0000628C */  lw         $v0, 0x0($v1)
    /* 29AD8 80073D3C 00000000 */  nop
    /* 29ADC 80073D40 2A102202 */  slt        $v0, $s1, $v0
    /* 29AE0 80073D44 35004010 */  beqz       $v0, .Ltitlescreen_and_loading_80073E1C
    /* 29AE4 80073D48 2118C300 */   addu      $v1, $a2, $v1
    /* 29AE8 80073D4C 3C00628C */  lw         $v0, 0x3C($v1)
    /* 29AEC 80073D50 00000000 */  nop
    /* 29AF0 80073D54 21100202 */  addu       $v0, $s0, $v0
    /* 29AF4 80073D58 3C0062AC */  sw         $v0, 0x3C($v1)
    /* 29AF8 80073D5C 0000A28C */  lw         $v0, 0x0($a1)
    /* 29AFC 80073D60 00000000 */  nop
    /* 29B00 80073D64 2110C200 */  addu       $v0, $a2, $v0
    /* 29B04 80073D68 3C00438C */  lw         $v1, 0x3C($v0)
    /* 29B08 80073D6C 00000000 */  nop
    /* 29B0C 80073D70 0C00628C */  lw         $v0, 0xC($v1)
    /* 29B10 80073D74 00000000 */  nop
    /* 29B14 80073D78 21100202 */  addu       $v0, $s0, $v0
    /* 29B18 80073D7C 0C0062AC */  sw         $v0, 0xC($v1)
    /* 29B1C 80073D80 0000A38C */  lw         $v1, 0x0($a1)
    /* 29B20 80073D84 00000000 */  nop
    /* 29B24 80073D88 2110C300 */  addu       $v0, $a2, $v1
    /* 29B28 80073D8C 3C00448C */  lw         $a0, 0x3C($v0)
    /* 29B2C 80073D90 00000000 */  nop
    /* 29B30 80073D94 1000828C */  lw         $v0, 0x10($a0)
    /* 29B34 80073D98 00000000 */  nop
    /* 29B38 80073D9C 21186200 */  addu       $v1, $v1, $v0
    /* 29B3C 80073DA0 100083AC */  sw         $v1, 0x10($a0)
    /* 29B40 80073DA4 0000A38C */  lw         $v1, 0x0($a1)
    /* 29B44 80073DA8 00000000 */  nop
    /* 29B48 80073DAC 2110C300 */  addu       $v0, $a2, $v1
    /* 29B4C 80073DB0 3C00448C */  lw         $a0, 0x3C($v0)
    /* 29B50 80073DB4 00000000 */  nop
    /* 29B54 80073DB8 1400828C */  lw         $v0, 0x14($a0)
    /* 29B58 80073DBC 00000000 */  nop
    /* 29B5C 80073DC0 21186200 */  addu       $v1, $v1, $v0
    /* 29B60 80073DC4 140083AC */  sw         $v1, 0x14($a0)
    /* 29B64 80073DC8 0000A28C */  lw         $v0, 0x0($a1)
    /* 29B68 80073DCC 00000000 */  nop
    /* 29B6C 80073DD0 2110C200 */  addu       $v0, $a2, $v0
    /* 29B70 80073DD4 3C00428C */  lw         $v0, 0x3C($v0)
    /* 29B74 80073DD8 00000000 */  nop
    /* 29B78 80073DDC 180040AC */  sw         $zero, 0x18($v0)
    /* 29B7C 80073DE0 0000A28C */  lw         $v0, 0x0($a1)
    /* 29B80 80073DE4 00000000 */  nop
    /* 29B84 80073DE8 2110C200 */  addu       $v0, $a2, $v0
    /* 29B88 80073DEC 3C00428C */  lw         $v0, 0x3C($v0)
    /* 29B8C 80073DF0 00000000 */  nop
    /* 29B90 80073DF4 1C0040AC */  sw         $zero, 0x1C($v0)
    /* 29B94 80073DF8 0000A28C */  lw         $v0, 0x0($a1)
    /* 29B98 80073DFC 00000000 */  nop
    /* 29B9C 80073E00 2110C200 */  addu       $v0, $a2, $v0
    /* 29BA0 80073E04 3C00438C */  lw         $v1, 0x3C($v0)
    /* 29BA4 80073E08 00000000 */  nop
    /* 29BA8 80073E0C 2000628C */  lw         $v0, 0x20($v1)
    /* 29BAC 80073E10 00000000 */  nop
    /* 29BB0 80073E14 21100202 */  addu       $v0, $s0, $v0
    /* 29BB4 80073E18 200062AC */  sw         $v0, 0x20($v1)
  .Ltitlescreen_and_loading_80073E1C:
    /* 29BB8 80073E1C 0000028D */  lw         $v0, 0x0($t0)
    /* 29BBC 80073E20 0100E724 */  addiu      $a3, $a3, 0x1
    /* 29BC0 80073E24 2A10E200 */  slt        $v0, $a3, $v0
    /* 29BC4 80073E28 BFFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80073D28
    /* 29BC8 80073E2C 0400A524 */   addiu     $a1, $a1, 0x4
  .Ltitlescreen_and_loading_80073E30:
    /* 29BCC 80073E30 2000BF8F */  lw         $ra, 0x20($sp)
    /* 29BD0 80073E34 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 29BD4 80073E38 1800B08F */  lw         $s0, 0x18($sp)
    /* 29BD8 80073E3C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 29BDC 80073E40 0800E003 */  jr         $ra
    /* 29BE0 80073E44 00000000 */   nop
endlabel func_titlescreen_and_loading_80073C64
