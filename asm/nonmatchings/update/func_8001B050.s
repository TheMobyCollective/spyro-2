.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B050, 0xF0

glabel func_8001B050
    /* B850 8001B050 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B854 8001B054 1000B0AF */  sw         $s0, 0x10($sp)
    /* B858 8001B058 21808000 */  addu       $s0, $a0, $zero
    /* B85C 8001B05C 01000232 */  andi       $v0, $s0, 0x1
    /* B860 8001B060 0B004010 */  beqz       $v0, .L8001B090
    /* B864 8001B064 1400BFAF */   sw        $ra, 0x14($sp)
    /* B868 8001B068 0680043C */  lui        $a0, %hi(D_80067018)
    /* B86C 8001B06C 1870848C */  lw         $a0, %lo(D_80067018)($a0)
    /* B870 8001B070 7E89000C */  jal        func_800225F8
    /* B874 8001B074 00000000 */   nop
    /* B878 8001B078 DE8D000C */  jal        func_80023778
    /* B87C 8001B07C 00000000 */   nop
    /* B880 8001B080 658E000C */  jal        func_80023994
    /* B884 8001B084 00000000 */   nop
    /* B888 8001B088 A78E000C */  jal        func_80023A9C
    /* B88C 8001B08C 00000000 */   nop
  .L8001B090:
    /* B890 8001B090 02000232 */  andi       $v0, $s0, 0x2
    /* B894 8001B094 09004010 */  beqz       $v0, .L8001B0BC
    /* B898 8001B098 08000232 */   andi      $v0, $s0, 0x8
    /* B89C 8001B09C 0680023C */  lui        $v0, %hi(D_800670F0)
    /* B8A0 8001B0A0 F070428C */  lw         $v0, %lo(D_800670F0)($v0)
    /* B8A4 8001B0A4 00000000 */  nop
    /* B8A8 8001B0A8 03004010 */  beqz       $v0, .L8001B0B8
    /* B8AC 8001B0AC 00000000 */   nop
    /* B8B0 8001B0B0 09F84000 */  jalr       $v0
    /* B8B4 8001B0B4 00000000 */   nop
  .L8001B0B8:
    /* B8B8 8001B0B8 08000232 */  andi       $v0, $s0, 0x8
  .L8001B0BC:
    /* B8BC 8001B0BC 04004010 */  beqz       $v0, .L8001B0D0
    /* B8C0 8001B0C0 20000232 */   andi      $v0, $s0, 0x20
    /* B8C4 8001B0C4 1FA8000C */  jal        func_8002A07C
    /* B8C8 8001B0C8 00000000 */   nop
    /* B8CC 8001B0CC 20000232 */  andi       $v0, $s0, 0x20
  .L8001B0D0:
    /* B8D0 8001B0D0 0D004010 */  beqz       $v0, .L8001B108
    /* B8D4 8001B0D4 10000232 */   andi      $v0, $s0, 0x10
    /* B8D8 8001B0D8 0680023C */  lui        $v0, %hi(D_800670F8)
    /* B8DC 8001B0DC F870428C */  lw         $v0, %lo(D_800670F8)($v0)
    /* B8E0 8001B0E0 00000000 */  nop
    /* B8E4 8001B0E4 05004010 */  beqz       $v0, .L8001B0FC
    /* B8E8 8001B0E8 00000000 */   nop
    /* B8EC 8001B0EC 0680043C */  lui        $a0, %hi(D_80067018)
    /* B8F0 8001B0F0 1870848C */  lw         $a0, %lo(D_80067018)($a0)
    /* B8F4 8001B0F4 09F84000 */  jalr       $v0
    /* B8F8 8001B0F8 00000000 */   nop
  .L8001B0FC:
    /* B8FC 8001B0FC 2A41010C */  jal        func_800504A8
    /* B900 8001B100 00000000 */   nop
    /* B904 8001B104 10000232 */  andi       $v0, $s0, 0x10
  .L8001B108:
    /* B908 8001B108 04004010 */  beqz       $v0, .L8001B11C
    /* B90C 8001B10C 40000232 */   andi      $v0, $s0, 0x40
    /* B910 8001B110 1F76000C */  jal        func_8001D87C
    /* B914 8001B114 00000000 */   nop
    /* B918 8001B118 40000232 */  andi       $v0, $s0, 0x40
  .L8001B11C:
    /* B91C 8001B11C 03004010 */  beqz       $v0, .L8001B12C
    /* B920 8001B120 00000000 */   nop
    /* B924 8001B124 6547010C */  jal        func_80051D94
    /* B928 8001B128 00000000 */   nop
  .L8001B12C:
    /* B92C 8001B12C 1400BF8F */  lw         $ra, 0x14($sp)
    /* B930 8001B130 1000B08F */  lw         $s0, 0x10($sp)
    /* B934 8001B134 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B938 8001B138 0800E003 */  jr         $ra
    /* B93C 8001B13C 00000000 */   nop
endlabel func_8001B050
