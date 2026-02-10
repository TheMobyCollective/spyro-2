.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F020, 0x9C

glabel func_8001F020
    /* F820 8001F020 0680053C */  lui        $a1, %hi(D_80067FD4)
    /* F824 8001F024 D47FA524 */  addiu      $a1, $a1, %lo(D_80067FD4)
    /* F828 8001F028 0400A28C */  lw         $v0, 0x4($a1)
    /* F82C 8001F02C 01000624 */  addiu      $a2, $zero, 0x1
    /* F830 8001F030 03004614 */  bne        $v0, $a2, .L8001F040
    /* F834 8001F034 0000A0AC */   sw        $zero, 0x0($a1)
    /* F838 8001F038 03000224 */  addiu      $v0, $zero, 0x3
    /* F83C 8001F03C 0400A2AC */  sw         $v0, 0x4($a1)
  .L8001F040:
    /* F840 8001F040 0780023C */  lui        $v0, %hi(D_8006A230)
    /* F844 8001F044 30A2428C */  lw         $v0, %lo(D_8006A230)($v0)
    /* F848 8001F048 00000000 */  nop
    /* F84C 8001F04C 19004014 */  bnez       $v0, .L8001F0B4
    /* F850 8001F050 00000000 */   nop
    /* F854 8001F054 0780033C */  lui        $v1, %hi(D_800683A0)
    /* F858 8001F058 A083638C */  lw         $v1, %lo(D_800683A0)($v1)
    /* F85C 8001F05C 00000000 */  nop
    /* F860 8001F060 0A006230 */  andi       $v0, $v1, 0xA
    /* F864 8001F064 05004010 */  beqz       $v0, .L8001F07C
    /* F868 8001F068 05006230 */   andi      $v0, $v1, 0x5
    /* F86C 8001F06C 06004014 */  bnez       $v0, .L8001F088
    /* F870 8001F070 00000000 */   nop
    /* F874 8001F074 0000A4AC */  sw         $a0, 0x0($a1)
    /* F878 8001F078 0400A6AC */  sw         $a2, 0x4($a1)
  .L8001F07C:
    /* F87C 8001F07C 05006230 */  andi       $v0, $v1, 0x5
    /* F880 8001F080 0C004010 */  beqz       $v0, .L8001F0B4
    /* F884 8001F084 00000000 */   nop
  .L8001F088:
    /* F888 8001F088 0780023C */  lui        $v0, %hi(D_800683A0)
    /* F88C 8001F08C A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* F890 8001F090 00000000 */  nop
    /* F894 8001F094 0A004230 */  andi       $v0, $v0, 0xA
    /* F898 8001F098 06004014 */  bnez       $v0, .L8001F0B4
    /* F89C 8001F09C 23100400 */   negu      $v0, $a0
    /* F8A0 8001F0A0 0680013C */  lui        $at, %hi(D_80067FD4)
    /* F8A4 8001F0A4 D47F22AC */  sw         $v0, %lo(D_80067FD4)($at)
    /* F8A8 8001F0A8 01000224 */  addiu      $v0, $zero, 0x1
    /* F8AC 8001F0AC 0680013C */  lui        $at, %hi(D_80067FD8)
    /* F8B0 8001F0B0 D87F22AC */  sw         $v0, %lo(D_80067FD8)($at)
  .L8001F0B4:
    /* F8B4 8001F0B4 0800E003 */  jr         $ra
    /* F8B8 8001F0B8 00000000 */   nop
endlabel func_8001F020
