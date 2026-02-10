.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F1FC, 0x50

glabel func_8001F1FC
    /* F9FC 8001F1FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* FA00 8001F200 21288000 */  addu       $a1, $a0, $zero
    /* FA04 8001F204 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* FA08 8001F208 EC7F8424 */  addiu      $a0, $a0, %lo(D_80067FEC)
    /* FA0C 8001F20C 1000BFAF */  sw         $ra, 0x10($sp)
    /* FA10 8001F210 0000838C */  lw         $v1, 0x0($a0)
    /* FA14 8001F214 00000000 */  nop
    /* FA18 8001F218 03006010 */  beqz       $v1, .L8001F228
    /* FA1C 8001F21C 11000224 */   addiu     $v0, $zero, 0x11
    /* FA20 8001F220 06006214 */  bne        $v1, $v0, .L8001F23C
    /* FA24 8001F224 00000000 */   nop
  .L8001F228:
    /* FA28 8001F228 11000224 */  addiu      $v0, $zero, 0x11
    /* FA2C 8001F22C 000082AC */  sw         $v0, 0x0($a0)
    /* FA30 8001F230 08008424 */  addiu      $a0, $a0, 0x8
    /* FA34 8001F234 337B000C */  jal        func_8001ECCC
    /* FA38 8001F238 21300000 */   addu      $a2, $zero, $zero
  .L8001F23C:
    /* FA3C 8001F23C 1000BF8F */  lw         $ra, 0x10($sp)
    /* FA40 8001F240 1800BD27 */  addiu      $sp, $sp, 0x18
    /* FA44 8001F244 0800E003 */  jr         $ra
    /* FA48 8001F248 00000000 */   nop
endlabel func_8001F1FC
