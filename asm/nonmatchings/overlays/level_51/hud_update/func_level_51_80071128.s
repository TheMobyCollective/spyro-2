.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_51_80071128, 0x6C

glabel func_level_51_80071128
    /* 38D66C4 80071128 0780023C */  lui        $v0, %hi(D_8006ABF8)
    /* 38D66C8 8007112C F8AB4290 */  lbu        $v0, %lo(D_8006ABF8)($v0)
    /* 38D66CC 80071130 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 38D66D0 80071134 0F004010 */  beqz       $v0, .Llevel_51_80071174
    /* 38D66D4 80071138 1000BFAF */   sw        $ra, 0x10($sp)
    /* 38D66D8 8007113C 0680023C */  lui        $v0, %hi(D_80067148)
    /* 38D66DC 80071140 48714290 */  lbu        $v0, %lo(D_80067148)($v0)
    /* 38D66E0 80071144 00000000 */  nop
    /* 38D66E4 80071148 02004230 */  andi       $v0, $v0, 0x2
    /* 38D66E8 8007114C 09004014 */  bnez       $v0, .Llevel_51_80071174
    /* 38D66EC 80071150 00000000 */   nop
    /* 38D66F0 80071154 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 38D66F4 80071158 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 38D66F8 8007115C 0680043C */  lui        $a0, %hi(D_80067674)
    /* 38D66FC 80071160 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 38D6700 80071164 6746010C */  jal        func_8005199C
    /* 38D6704 80071168 00000000 */   nop
    /* 38D6708 8007116C 61C40108 */  j          .Llevel_51_80071184
    /* 38D670C 80071170 00000000 */   nop
  .Llevel_51_80071174:
    /* 38D6710 80071174 0680043C */  lui        $a0, %hi(D_80067674)
    /* 38D6714 80071178 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 38D6718 8007117C 4047010C */  jal        func_80051D00
    /* 38D671C 80071180 21280000 */   addu      $a1, $zero, $zero
  .Llevel_51_80071184:
    /* 38D6720 80071184 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38D6724 80071188 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 38D6728 8007118C 0800E003 */  jr         $ra
    /* 38D672C 80071190 00000000 */   nop
endlabel func_level_51_80071128
