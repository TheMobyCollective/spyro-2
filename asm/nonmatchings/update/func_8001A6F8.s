.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A6F8, 0xA4

glabel func_8001A6F8
    /* AEF8 8001A6F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AEFC 8001A6FC 0680033C */  lui        $v1, %hi(D_80066F90)
    /* AF00 8001A700 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* AF04 8001A704 09000224 */  addiu      $v0, $zero, 0x9
    /* AF08 8001A708 0780013C */  lui        $at, %hi(D_800681C8)
    /* AF0C 8001A70C C88122AC */  sw         $v0, %lo(D_800681C8)($at)
    /* AF10 8001A710 0B000224 */  addiu      $v0, $zero, 0xB
    /* AF14 8001A714 1000BFAF */  sw         $ra, 0x10($sp)
    /* AF18 8001A718 0780013C */  lui        $at, %hi(D_800698F0)
    /* AF1C 8001A71C F09820AC */  sw         $zero, %lo(D_800698F0)($at)
    /* AF20 8001A720 0680013C */  lui        $at, %hi(D_80066F68)
    /* AF24 8001A724 686F20AC */  sw         $zero, %lo(D_80066F68)($at)
    /* AF28 8001A728 06006214 */  bne        $v1, $v0, .L8001A744
    /* AF2C 8001A72C 00000000 */   nop
    /* AF30 8001A730 0780023C */  lui        $v0, %hi(D_8006B084)
    /* AF34 8001A734 84B04290 */  lbu        $v0, %lo(D_8006B084)($v0)
    /* AF38 8001A738 00000000 */  nop
    /* AF3C 8001A73C 0A004010 */  beqz       $v0, .L8001A768
    /* AF40 8001A740 00000000 */   nop
  .L8001A744:
    /* AF44 8001A744 0680023C */  lui        $v0, %hi(D_80066F54)
    /* AF48 8001A748 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* AF4C 8001A74C 0680013C */  lui        $at, %hi(D_80064B84)
    /* AF50 8001A750 21082200 */  addu       $at, $at, $v0
    /* AF54 8001A754 844B2290 */  lbu        $v0, %lo(D_80064B84)($at)
    /* AF58 8001A758 0680013C */  lui        $at, %hi(D_8006715C)
    /* AF5C 8001A75C 5C7122AC */  sw         $v0, %lo(D_8006715C)($at)
    /* AF60 8001A760 DC690008 */  j          .L8001A770
    /* AF64 8001A764 00000000 */   nop
  .L8001A768:
    /* AF68 8001A768 0680013C */  lui        $at, %hi(D_8006715C)
    /* AF6C 8001A76C 5C7123AC */  sw         $v1, %lo(D_8006715C)($at)
  .L8001A770:
    /* AF70 8001A770 0680013C */  lui        $at, %hi(D_80066EEC)
    /* AF74 8001A774 EC6E20AC */  sw         $zero, %lo(D_80066EEC)($at)
    /* AF78 8001A778 AB42010C */  jal        func_80050AAC
    /* AF7C 8001A77C 00000000 */   nop
    /* AF80 8001A780 01000224 */  addiu      $v0, $zero, 0x1
    /* AF84 8001A784 0780013C */  lui        $at, %hi(D_80068304)
    /* AF88 8001A788 048322AC */  sw         $v0, %lo(D_80068304)($at)
    /* AF8C 8001A78C 1000BF8F */  lw         $ra, 0x10($sp)
    /* AF90 8001A790 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AF94 8001A794 0800E003 */  jr         $ra
    /* AF98 8001A798 00000000 */   nop
endlabel func_8001A6F8
