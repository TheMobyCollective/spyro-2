.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_25_80070790, 0x204

glabel func_level_25_80070790
    /* 1BC8D2C 80070790 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1BC8D30 80070794 21708000 */  addu       $t6, $a0, $zero
    /* 1BC8D34 80070798 21500000 */  addu       $t2, $zero, $zero
    /* 1BC8D38 8007079C 21300000 */  addu       $a2, $zero, $zero
    /* 1BC8D3C 800707A0 08000D24 */  addiu      $t5, $zero, 0x8
    /* 1BC8D40 800707A4 06800C3C */  lui        $t4, %hi(D_80061950)
    /* 1BC8D44 800707A8 50198C25 */  addiu      $t4, $t4, %lo(D_80061950)
    /* 1BC8D48 800707AC 07800B3C */  lui        $t3, %hi(D_80069898)
    /* 1BC8D4C 800707B0 98986B25 */  addiu      $t3, $t3, %lo(D_80069898)
    /* 1BC8D50 800707B4 21406001 */  addu       $t0, $t3, $zero
    /* 1BC8D54 800707B8 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 1BC8D58 800707BC 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 1BC8D5C 800707C0 0780033C */  lui        $v1, %hi(D_8006AC04)
    /* 1BC8D60 800707C4 04AC6324 */  addiu      $v1, $v1, %lo(D_8006AC04)
    /* 1BC8D64 800707C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1BC8D68 800707CC 80100200 */  sll        $v0, $v0, 2
    /* 1BC8D6C 800707D0 21484300 */  addu       $t1, $v0, $v1
  .Llevel_25_800707D4:
    /* 1BC8D70 800707D4 0000028D */  lw         $v0, 0x0($t0)
    /* 1BC8D74 800707D8 00000000 */  nop
    /* 1BC8D78 800707DC 2B004D14 */  bne        $v0, $t5, .Llevel_25_8007088C
    /* 1BC8D7C 800707E0 80380600 */   sll       $a3, $a2, 2
    /* 1BC8D80 800707E4 FCFF638D */  lw         $v1, -0x4($t3)
    /* 1BC8D84 800707E8 00000000 */  nop
    /* 1BC8D88 800707EC 40100300 */  sll        $v0, $v1, 1
    /* 1BC8D8C 800707F0 21104300 */  addu       $v0, $v0, $v1
    /* 1BC8D90 800707F4 80100200 */  sll        $v0, $v0, 2
    /* 1BC8D94 800707F8 23104300 */  subu       $v0, $v0, $v1
    /* 1BC8D98 800707FC C0280200 */  sll        $a1, $v0, 3
    /* 1BC8D9C 80070800 2110AC00 */  addu       $v0, $a1, $t4
    /* 1BC8DA0 80070804 2110E200 */  addu       $v0, $a3, $v0
    /* 1BC8DA4 80070808 0000428C */  lw         $v0, 0x0($v0)
    /* 1BC8DA8 8007080C 00000000 */  nop
    /* 1BC8DAC 80070810 1E004014 */  bnez       $v0, .Llevel_25_8007088C
    /* 1BC8DB0 80070814 01004A25 */   addiu     $t2, $t2, 0x1
    /* 1BC8DB4 80070818 0680023C */  lui        $v0, %hi(D_800670CC)
    /* 1BC8DB8 8007081C CC70428C */  lw         $v0, %lo(D_800670CC)($v0)
    /* 1BC8DBC 80070820 0680013C */  lui        $at, %hi(D_8006196C)
    /* 1BC8DC0 80070824 21082500 */  addu       $at, $at, $a1
    /* 1BC8DC4 80070828 6C19248C */  lw         $a0, %lo(D_8006196C)($at)
    /* 1BC8DC8 8007082C 0000238D */  lw         $v1, 0x0($t1)
    /* 1BC8DCC 80070830 0680013C */  lui        $at, %hi(D_8006196C)
    /* 1BC8DD0 80070834 21082500 */  addu       $at, $at, $a1
    /* 1BC8DD4 80070838 6C19258C */  lw         $a1, %lo(D_8006196C)($at)
    /* 1BC8DD8 8007083C 21104400 */  addu       $v0, $v0, $a0
    /* 1BC8DDC 80070840 0680013C */  lui        $at, %hi(D_800670CC)
    /* 1BC8DE0 80070844 CC7022AC */  sw         $v0, %lo(D_800670CC)($at)
    /* 1BC8DE4 80070848 0680023C */  lui        $v0, %hi(D_800670B0)
    /* 1BC8DE8 8007084C B070428C */  lw         $v0, %lo(D_800670B0)($v0)
    /* 1BC8DEC 80070850 21186500 */  addu       $v1, $v1, $a1
    /* 1BC8DF0 80070854 000023AD */  sw         $v1, 0x0($t1)
    /* 1BC8DF4 80070858 FCFF638D */  lw         $v1, -0x4($t3)
    /* 1BC8DF8 8007085C 0C004224 */  addiu      $v0, $v0, 0xC
    /* 1BC8DFC 80070860 0680013C */  lui        $at, %hi(D_800670B0)
    /* 1BC8E00 80070864 B07022AC */  sw         $v0, %lo(D_800670B0)($at)
    /* 1BC8E04 80070868 40100300 */  sll        $v0, $v1, 1
    /* 1BC8E08 8007086C 21104300 */  addu       $v0, $v0, $v1
    /* 1BC8E0C 80070870 80100200 */  sll        $v0, $v0, 2
    /* 1BC8E10 80070874 23104300 */  subu       $v0, $v0, $v1
    /* 1BC8E14 80070878 C0100200 */  sll        $v0, $v0, 3
    /* 1BC8E18 8007087C 21104C00 */  addu       $v0, $v0, $t4
    /* 1BC8E1C 80070880 2110E200 */  addu       $v0, $a3, $v0
    /* 1BC8E20 80070884 01000324 */  addiu      $v1, $zero, 0x1
    /* 1BC8E24 80070888 000043AC */  sw         $v1, 0x0($v0)
  .Llevel_25_8007088C:
    /* 1BC8E28 8007088C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1BC8E2C 80070890 0400C228 */  slti       $v0, $a2, 0x4
    /* 1BC8E30 80070894 CFFF4014 */  bnez       $v0, .Llevel_25_800707D4
    /* 1BC8E34 80070898 04000825 */   addiu     $t0, $t0, 0x4
    /* 1BC8E38 8007089C 0780073C */  lui        $a3, %hi(D_80069894)
    /* 1BC8E3C 800708A0 9498E724 */  addiu      $a3, $a3, %lo(D_80069894)
    /* 1BC8E40 800708A4 0000E28C */  lw         $v0, 0x0($a3)
    /* 1BC8E44 800708A8 00000000 */  nop
    /* 1BC8E48 800708AC 40180200 */  sll        $v1, $v0, 1
    /* 1BC8E4C 800708B0 21186200 */  addu       $v1, $v1, $v0
    /* 1BC8E50 800708B4 80180300 */  sll        $v1, $v1, 2
    /* 1BC8E54 800708B8 23186200 */  subu       $v1, $v1, $v0
    /* 1BC8E58 800708BC C0300300 */  sll        $a2, $v1, 3
    /* 1BC8E5C 800708C0 0680013C */  lui        $at, %hi(D_80061960)
    /* 1BC8E60 800708C4 21082600 */  addu       $at, $at, $a2
    /* 1BC8E64 800708C8 6019228C */  lw         $v0, %lo(D_80061960)($at)
    /* 1BC8E68 800708CC 00000000 */  nop
    /* 1BC8E6C 800708D0 26004014 */  bnez       $v0, .Llevel_25_8007096C
    /* 1BC8E70 800708D4 04000224 */   addiu     $v0, $zero, 0x4
    /* 1BC8E74 800708D8 24004215 */  bne        $t2, $v0, .Llevel_25_8007096C
    /* 1BC8E78 800708DC 00000000 */   nop
    /* 1BC8E7C 800708E0 0780023C */  lui        $v0, %hi(D_8006AC04)
    /* 1BC8E80 800708E4 04AC4224 */  addiu      $v0, $v0, %lo(D_8006AC04)
    /* 1BC8E84 800708E8 0680043C */  lui        $a0, %hi(D_80066F54)
    /* 1BC8E88 800708EC 546F848C */  lw         $a0, %lo(D_80066F54)($a0)
    /* 1BC8E8C 800708F0 0680013C */  lui        $at, %hi(D_8006196C)
    /* 1BC8E90 800708F4 21082600 */  addu       $at, $at, $a2
    /* 1BC8E94 800708F8 6C19258C */  lw         $a1, %lo(D_8006196C)($at)
    /* 1BC8E98 800708FC 0680013C */  lui        $at, %hi(D_8006196C)
    /* 1BC8E9C 80070900 21082600 */  addu       $at, $at, $a2
    /* 1BC8EA0 80070904 6C19268C */  lw         $a2, %lo(D_8006196C)($at)
    /* 1BC8EA4 80070908 80200400 */  sll        $a0, $a0, 2
    /* 1BC8EA8 8007090C 21208200 */  addu       $a0, $a0, $v0
    /* 1BC8EAC 80070910 0680023C */  lui        $v0, %hi(D_800670CC)
    /* 1BC8EB0 80070914 CC70428C */  lw         $v0, %lo(D_800670CC)($v0)
    /* 1BC8EB4 80070918 0000838C */  lw         $v1, 0x0($a0)
    /* 1BC8EB8 8007091C 21104500 */  addu       $v0, $v0, $a1
    /* 1BC8EBC 80070920 0680013C */  lui        $at, %hi(D_800670CC)
    /* 1BC8EC0 80070924 CC7022AC */  sw         $v0, %lo(D_800670CC)($at)
    /* 1BC8EC4 80070928 0680023C */  lui        $v0, %hi(D_800670B0)
    /* 1BC8EC8 8007092C B070428C */  lw         $v0, %lo(D_800670B0)($v0)
    /* 1BC8ECC 80070930 21186600 */  addu       $v1, $v1, $a2
    /* 1BC8ED0 80070934 000083AC */  sw         $v1, 0x0($a0)
    /* 1BC8ED4 80070938 0000E38C */  lw         $v1, 0x0($a3)
    /* 1BC8ED8 8007093C 0C004224 */  addiu      $v0, $v0, 0xC
    /* 1BC8EDC 80070940 0680013C */  lui        $at, %hi(D_800670B0)
    /* 1BC8EE0 80070944 B07022AC */  sw         $v0, %lo(D_800670B0)($at)
    /* 1BC8EE4 80070948 40100300 */  sll        $v0, $v1, 1
    /* 1BC8EE8 8007094C 21104300 */  addu       $v0, $v0, $v1
    /* 1BC8EEC 80070950 80100200 */  sll        $v0, $v0, 2
    /* 1BC8EF0 80070954 23104300 */  subu       $v0, $v0, $v1
    /* 1BC8EF4 80070958 C0100200 */  sll        $v0, $v0, 3
    /* 1BC8EF8 8007095C 01000324 */  addiu      $v1, $zero, 0x1
    /* 1BC8EFC 80070960 0680013C */  lui        $at, %hi(D_80061960)
    /* 1BC8F00 80070964 21082200 */  addu       $at, $at, $v0
    /* 1BC8F04 80070968 601923AC */  sw         $v1, %lo(D_80061960)($at)
  .Llevel_25_8007096C:
    /* 1BC8F08 8007096C 0780013C */  lui        $at, %hi(D_800681C8)
    /* 1BC8F0C 80070970 C88120AC */  sw         $zero, %lo(D_800681C8)($at)
    /* 1BC8F10 80070974 0300C011 */  beqz       $t6, .Llevel_25_80070984
    /* 1BC8F14 80070978 00000000 */   nop
    /* 1BC8F18 8007097C 9DCB000C */  jal        func_80032E74
    /* 1BC8F1C 80070980 00000000 */   nop
  .Llevel_25_80070984:
    /* 1BC8F20 80070984 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1BC8F24 80070988 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1BC8F28 8007098C 0800E003 */  jr         $ra
    /* 1BC8F2C 80070990 00000000 */   nop
endlabel func_level_25_80070790
