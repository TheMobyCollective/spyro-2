.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003CAFC, 0xF4

glabel func_8003CAFC
    /* 2D2FC 8003CAFC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2D300 8003CB00 0680053C */  lui        $a1, %hi(D_80066F78)
    /* 2D304 8003CB04 786FA58C */  lw         $a1, %lo(D_80066F78)($a1)
    /* 2D308 8003CB08 0680023C */  lui        $v0, %hi(D_800670B4)
    /* 2D30C 8003CB0C B470428C */  lw         $v0, %lo(D_800670B4)($v0)
    /* 2D310 8003CB10 10010424 */  addiu      $a0, $zero, 0x110
    /* 2D314 8003CB14 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2D318 8003CB18 2800B2AF */  sw         $s2, 0x28($sp)
    /* 2D31C 8003CB1C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 2D320 8003CB20 09F84000 */  jalr       $v0
    /* 2D324 8003CB24 2000B0AF */   sw        $s0, 0x20($sp)
    /* 2D328 8003CB28 21904000 */  addu       $s2, $v0, $zero
    /* 2D32C 8003CB2C 28004012 */  beqz       $s2, .L8003CBD0
    /* 2D330 8003CB30 1000A427 */   addiu     $a0, $sp, 0x10
    /* 2D334 8003CB34 53004292 */  lbu        $v0, 0x53($s2)
    /* 2D338 8003CB38 0000518E */  lw         $s1, 0x0($s2)
    /* 2D33C 8003CB3C 80004234 */  ori        $v0, $v0, 0x80
    /* 2D340 8003CB40 530042A2 */  sb         $v0, 0x53($s2)
    /* 2D344 8003CB44 0680053C */  lui        $a1, %hi(D_80066F5C)
    /* 2D348 8003CB48 5C6FA58C */  lw         $a1, %lo(D_80066F5C)($a1)
    /* 2D34C 8003CB4C 0680023C */  lui        $v0, %hi(D_8006336C)
    /* 2D350 8003CB50 6C334224 */  addiu      $v0, $v0, %lo(D_8006336C)
    /* 2D354 8003CB54 00290500 */  sll        $a1, $a1, 4
    /* 2D358 8003CB58 6C6F000C */  jal        func_8001BDB0
    /* 2D35C 8003CB5C 2128A200 */   addu      $a1, $a1, $v0
    /* 2D360 8003CB60 0780103C */  lui        $s0, %hi(D_80069FFE)
    /* 2D364 8003CB64 FE9F1026 */  addiu      $s0, $s0, %lo(D_80069FFE)
    /* 2D368 8003CB68 22000426 */  addiu      $a0, $s0, 0x22
    /* 2D36C 8003CB6C 0680023C */  lui        $v0, %hi(D_80066F5C)
    /* 2D370 8003CB70 5C6F428C */  lw         $v0, %lo(D_80066F5C)($v0)
    /* 2D374 8003CB74 1000A527 */  addiu      $a1, $sp, 0x10
    /* 2D378 8003CB78 00110200 */  sll        $v0, $v0, 4
    /* 2D37C 8003CB7C 0680013C */  lui        $at, %hi(D_80063378)
    /* 2D380 8003CB80 21082200 */  addu       $at, $at, $v0
    /* 2D384 8003CB84 7833238C */  lw         $v1, %lo(D_80063378)($at)
    /* 2D388 8003CB88 00000292 */  lbu        $v0, 0x0($s0)
    /* 2D38C 8003CB8C 2130A000 */  addu       $a2, $a1, $zero
    /* 2D390 8003CB90 21104300 */  addu       $v0, $v0, $v1
    /* 2D394 8003CB94 696E000C */  jal        func_8001B9A4
    /* 2D398 8003CB98 460042A2 */   sb        $v0, 0x46($s2)
    /* 2D39C 8003CB9C 0C004426 */  addiu      $a0, $s2, 0xC
    /* 2D3A0 8003CBA0 F2FF0526 */  addiu      $a1, $s0, -0xE
    /* 2D3A4 8003CBA4 736F000C */  jal        func_8001BDCC
    /* 2D3A8 8003CBA8 1000A627 */   addiu     $a2, $sp, 0x10
    /* 2D3AC 8003CBAC 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 2D3B0 8003CBB0 4F0042A2 */  sb         $v0, 0x4F($s2)
    /* 2D3B4 8003CBB4 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D3B8 8003CBB8 020022A2 */  sb         $v0, 0x2($s1)
    /* 2D3BC 8003CBBC 02000224 */  addiu      $v0, $zero, 0x2
    /* 2D3C0 8003CBC0 010022A2 */  sb         $v0, 0x1($s1)
    /* 2D3C4 8003CBC4 00000292 */  lbu        $v0, 0x0($s0)
    /* 2D3C8 8003CBC8 00000000 */  nop
    /* 2D3CC 8003CBCC 030022A2 */  sb         $v0, 0x3($s1)
  .L8003CBD0:
    /* 2D3D0 8003CBD0 21104002 */  addu       $v0, $s2, $zero
    /* 2D3D4 8003CBD4 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2D3D8 8003CBD8 2800B28F */  lw         $s2, 0x28($sp)
    /* 2D3DC 8003CBDC 2400B18F */  lw         $s1, 0x24($sp)
    /* 2D3E0 8003CBE0 2000B08F */  lw         $s0, 0x20($sp)
    /* 2D3E4 8003CBE4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2D3E8 8003CBE8 0800E003 */  jr         $ra
    /* 2D3EC 8003CBEC 00000000 */   nop
endlabel func_8003CAFC
