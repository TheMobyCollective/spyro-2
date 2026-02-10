.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_42_8006F68C, 0x174

glabel func_level_42_8006F68C
    /* 2DD0C28 8006F68C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2DD0C2C 8006F690 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 2DD0C30 8006F694 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 2DD0C34 8006F698 15000224 */  addiu      $v0, $zero, 0x15
    /* 2DD0C38 8006F69C 45006210 */  beq        $v1, $v0, .Llevel_42_8006F7B4
    /* 2DD0C3C 8006F6A0 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2DD0C40 8006F6A4 16006228 */  slti       $v0, $v1, 0x16
    /* 2DD0C44 8006F6A8 05004010 */  beqz       $v0, .Llevel_42_8006F6C0
    /* 2DD0C48 8006F6AC 0D000224 */   addiu     $v0, $zero, 0xD
    /* 2DD0C4C 8006F6B0 08006210 */  beq        $v1, $v0, .Llevel_42_8006F6D4
    /* 2DD0C50 8006F6B4 00000000 */   nop
    /* 2DD0C54 8006F6B8 FCBD0108 */  j          .Llevel_42_8006F7F0
    /* 2DD0C58 8006F6BC 00000000 */   nop
  .Llevel_42_8006F6C0:
    /* 2DD0C5C 8006F6C0 17000224 */  addiu      $v0, $zero, 0x17
    /* 2DD0C60 8006F6C4 36006210 */  beq        $v1, $v0, .Llevel_42_8006F7A0
    /* 2DD0C64 8006F6C8 00000000 */   nop
    /* 2DD0C68 8006F6CC FCBD0108 */  j          .Llevel_42_8006F7F0
    /* 2DD0C6C 8006F6D0 00000000 */   nop
  .Llevel_42_8006F6D4:
    /* 2DD0C70 8006F6D4 0780023C */  lui        $v0, %hi(D_800683A0)
    /* 2DD0C74 8006F6D8 A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* 2DD0C78 8006F6DC 00000000 */  nop
    /* 2DD0C7C 8006F6E0 10004230 */  andi       $v0, $v0, 0x10
    /* 2DD0C80 8006F6E4 06004010 */  beqz       $v0, .Llevel_42_8006F700
    /* 2DD0C84 8006F6E8 00000000 */   nop
    /* 2DD0C88 8006F6EC 0780023C */  lui        $v0, %hi(D_8006A1B1)
    /* 2DD0C8C 8006F6F0 B1A14290 */  lbu        $v0, %lo(D_8006A1B1)($v0)
    /* 2DD0C90 8006F6F4 00000000 */  nop
    /* 2DD0C94 8006F6F8 3B004014 */  bnez       $v0, .Llevel_42_8006F7E8
    /* 2DD0C98 8006F6FC 07000424 */   addiu     $a0, $zero, 0x7
  .Llevel_42_8006F700:
    /* 2DD0C9C 8006F700 0780023C */  lui        $v0, %hi(D_800683A4)
    /* 2DD0CA0 8006F704 A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* 2DD0CA4 8006F708 00000000 */  nop
    /* 2DD0CA8 8006F70C 0F004230 */  andi       $v0, $v0, 0xF
    /* 2DD0CAC 8006F710 0E004010 */  beqz       $v0, .Llevel_42_8006F74C
    /* 2DD0CB0 8006F714 00000000 */   nop
    /* 2DD0CB4 8006F718 0780033C */  lui        $v1, %hi(D_800683A0)
    /* 2DD0CB8 8006F71C A083638C */  lw         $v1, %lo(D_800683A0)($v1)
    /* 2DD0CBC 8006F720 00000000 */  nop
    /* 2DD0CC0 8006F724 0A006230 */  andi       $v0, $v1, 0xA
    /* 2DD0CC4 8006F728 08004010 */  beqz       $v0, .Llevel_42_8006F74C
    /* 2DD0CC8 8006F72C 05006230 */   andi      $v0, $v1, 0x5
    /* 2DD0CCC 8006F730 06004010 */  beqz       $v0, .Llevel_42_8006F74C
    /* 2DD0CD0 8006F734 00000000 */   nop
    /* 2DD0CD4 8006F738 0780023C */  lui        $v0, %hi(D_8006A230)
    /* 2DD0CD8 8006F73C 30A2428C */  lw         $v0, %lo(D_8006A230)($v0)
    /* 2DD0CDC 8006F740 00000000 */  nop
    /* 2DD0CE0 8006F744 28004010 */  beqz       $v0, .Llevel_42_8006F7E8
    /* 2DD0CE4 8006F748 08000424 */   addiu     $a0, $zero, 0x8
  .Llevel_42_8006F74C:
    /* 2DD0CE8 8006F74C 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 2DD0CEC 8006F750 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 2DD0CF0 8006F754 00000000 */  nop
    /* 2DD0CF4 8006F758 0A008014 */  bnez       $a0, .Llevel_42_8006F784
    /* 2DD0CF8 8006F75C 00000000 */   nop
    /* 2DD0CFC 8006F760 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2DD0D00 8006F764 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2DD0D04 8006F768 00000000 */  nop
    /* 2DD0D08 8006F76C 80100200 */  sll        $v0, $v0, 2
    /* 2DD0D0C 8006F770 0680013C */  lui        $at, %hi(D_80061468)
    /* 2DD0D10 8006F774 21082200 */  addu       $at, $at, $v0
    /* 2DD0D14 8006F778 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 2DD0D18 8006F77C FABD0108 */  j          .Llevel_42_8006F7E8
    /* 2DD0D1C 8006F780 00000000 */   nop
  .Llevel_42_8006F784:
    /* 2DD0D20 8006F784 0680023C */  lui        $v0, %hi(D_80067ED0)
    /* 2DD0D24 8006F788 D07E428C */  lw         $v0, %lo(D_80067ED0)($v0)
    /* 2DD0D28 8006F78C 00000000 */  nop
    /* 2DD0D2C 8006F790 17008210 */  beq        $a0, $v0, .Llevel_42_8006F7F0
    /* 2DD0D30 8006F794 00000000 */   nop
    /* 2DD0D34 8006F798 FABD0108 */  j          .Llevel_42_8006F7E8
    /* 2DD0D38 8006F79C 00000000 */   nop
  .Llevel_42_8006F7A0:
    /* 2DD0D3C 8006F7A0 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 2DD0D40 8006F7A4 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 2DD0D44 8006F7A8 00000000 */  nop
    /* 2DD0D48 8006F7AC 0E008014 */  bnez       $a0, .Llevel_42_8006F7E8
    /* 2DD0D4C 8006F7B0 00000000 */   nop
  .Llevel_42_8006F7B4:
    /* 2DD0D50 8006F7B4 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2DD0D54 8006F7B8 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2DD0D58 8006F7BC 00000000 */  nop
    /* 2DD0D5C 8006F7C0 80100200 */  sll        $v0, $v0, 2
    /* 2DD0D60 8006F7C4 0680013C */  lui        $at, %hi(D_80061468)
    /* 2DD0D64 8006F7C8 21082200 */  addu       $at, $at, $v0
    /* 2DD0D68 8006F7CC 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 2DD0D6C 8006F7D0 00000000 */  nop
    /* 2DD0D70 8006F7D4 06008310 */  beq        $a0, $v1, .Llevel_42_8006F7F0
    /* 2DD0D74 8006F7D8 00000000 */   nop
    /* 2DD0D78 8006F7DC 02008014 */  bnez       $a0, .Llevel_42_8006F7E8
    /* 2DD0D7C 8006F7E0 00000000 */   nop
    /* 2DD0D80 8006F7E4 06000424 */  addiu      $a0, $zero, 0x6
  .Llevel_42_8006F7E8:
    /* 2DD0D84 8006F7E8 B685000C */  jal        func_800216D8
    /* 2DD0D88 8006F7EC 00000000 */   nop
  .Llevel_42_8006F7F0:
    /* 2DD0D8C 8006F7F0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2DD0D90 8006F7F4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2DD0D94 8006F7F8 0800E003 */  jr         $ra
    /* 2DD0D98 8006F7FC 00000000 */   nop
endlabel func_level_42_8006F68C
