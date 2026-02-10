.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002DED0, 0x13C

glabel func_8002DED0
    /* 1E6D0 8002DED0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1E6D4 8002DED4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1E6D8 8002DED8 21808000 */  addu       $s0, $a0, $zero
    /* 1E6DC 8002DEDC 21280000 */  addu       $a1, $zero, $zero
    /* 1E6E0 8002DEE0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1E6E4 8002DEE4 886E000C */  jal        func_8001BA20
    /* 1E6E8 8002DEE8 1000A0AF */   sw        $zero, 0x10($sp)
    /* 1E6EC 8002DEEC 21204000 */  addu       $a0, $v0, $zero
    /* 1E6F0 8002DEF0 1800A4AF */  sw         $a0, 0x18($sp)
    /* 1E6F4 8002DEF4 0800058E */  lw         $a1, 0x8($s0)
    /* 1E6F8 8002DEF8 2E6D000C */  jal        func_8001B4B8
    /* 1E6FC 8002DEFC 01000624 */   addiu     $a2, $zero, 0x1
    /* 1E700 8002DF00 0780063C */  lui        $a2, %hi(D_8006A054)
    /* 1E704 8002DF04 54A0C624 */  addiu      $a2, $a2, %lo(D_8006A054)
    /* 1E708 8002DF08 1000A38F */  lw         $v1, 0x10($sp)
    /* 1E70C 8002DF0C 0000C88C */  lw         $t0, 0x0($a2)
    /* 1E710 8002DF10 8E004424 */  addiu      $a0, $v0, 0x8E
    /* 1E714 8002DF14 1400A4AF */  sw         $a0, 0x14($sp)
    /* 1E718 8002DF18 23186800 */  subu       $v1, $v1, $t0
    /* 1E71C 8002DF1C FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 1E720 8002DF20 01086228 */  slti       $v0, $v1, 0x801
    /* 1E724 8002DF24 03004014 */  bnez       $v0, .L8002DF34
    /* 1E728 8002DF28 1000A3AF */   sw        $v1, 0x10($sp)
    /* 1E72C 8002DF2C 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E730 8002DF30 1000A2AF */  sw         $v0, 0x10($sp)
  .L8002DF34:
    /* 1E734 8002DF34 0400C78C */  lw         $a3, 0x4($a2)
    /* 1E738 8002DF38 00000000 */  nop
    /* 1E73C 8002DF3C 23108700 */  subu       $v0, $a0, $a3
    /* 1E740 8002DF40 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1E744 8002DF44 01086228 */  slti       $v0, $v1, 0x801
    /* 1E748 8002DF48 03004014 */  bnez       $v0, .L8002DF58
    /* 1E74C 8002DF4C 1400A3AF */   sw        $v1, 0x14($sp)
    /* 1E750 8002DF50 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E754 8002DF54 1400A2AF */  sw         $v0, 0x14($sp)
  .L8002DF58:
    /* 1E758 8002DF58 1000A38F */  lw         $v1, 0x10($sp)
    /* 1E75C 8002DF5C 0780053C */  lui        $a1, %hi(D_8006A060)
    /* 1E760 8002DF60 60A0A58C */  lw         $a1, %lo(D_8006A060)($a1)
    /* 1E764 8002DF64 1400A48F */  lw         $a0, 0x14($sp)
    /* 1E768 8002DF68 80180300 */  sll        $v1, $v1, 2
    /* 1E76C 8002DF6C 03190300 */  sra        $v1, $v1, 4
    /* 1E770 8002DF70 00110500 */  sll        $v0, $a1, 4
    /* 1E774 8002DF74 83110200 */  sra        $v0, $v0, 6
    /* 1E778 8002DF78 23186200 */  subu       $v1, $v1, $v0
    /* 1E77C 8002DF7C 2128A300 */  addu       $a1, $a1, $v1
    /* 1E780 8002DF80 80200400 */  sll        $a0, $a0, 2
    /* 1E784 8002DF84 03210400 */  sra        $a0, $a0, 4
    /* 1E788 8002DF88 0780013C */  lui        $at, %hi(D_8006A060)
    /* 1E78C 8002DF8C 60A025AC */  sw         $a1, %lo(D_8006A060)($at)
    /* 1E790 8002DF90 83280500 */  sra        $a1, $a1, 2
    /* 1E794 8002DF94 1000A5AF */  sw         $a1, 0x10($sp)
    /* 1E798 8002DF98 21280501 */  addu       $a1, $t0, $a1
    /* 1E79C 8002DF9C 0780033C */  lui        $v1, %hi(D_8006A064)
    /* 1E7A0 8002DFA0 64A0638C */  lw         $v1, %lo(D_8006A064)($v1)
    /* 1E7A4 8002DFA4 FF0FA530 */  andi       $a1, $a1, 0xFFF
    /* 1E7A8 8002DFA8 00110300 */  sll        $v0, $v1, 4
    /* 1E7AC 8002DFAC 83110200 */  sra        $v0, $v0, 6
    /* 1E7B0 8002DFB0 23208200 */  subu       $a0, $a0, $v0
    /* 1E7B4 8002DFB4 21186400 */  addu       $v1, $v1, $a0
    /* 1E7B8 8002DFB8 0780013C */  lui        $at, %hi(D_8006A064)
    /* 1E7BC 8002DFBC 64A023AC */  sw         $v1, %lo(D_8006A064)($at)
    /* 1E7C0 8002DFC0 83180300 */  sra        $v1, $v1, 2
    /* 1E7C4 8002DFC4 0108A228 */  slti       $v0, $a1, 0x801
    /* 1E7C8 8002DFC8 1400A3AF */  sw         $v1, 0x14($sp)
    /* 1E7CC 8002DFCC 03004014 */  bnez       $v0, .L8002DFDC
    /* 1E7D0 8002DFD0 0000C5AC */   sw        $a1, 0x0($a2)
    /* 1E7D4 8002DFD4 00F0A224 */  addiu      $v0, $a1, -0x1000
    /* 1E7D8 8002DFD8 0000C2AC */  sw         $v0, 0x0($a2)
  .L8002DFDC:
    /* 1E7DC 8002DFDC 2110E300 */  addu       $v0, $a3, $v1
    /* 1E7E0 8002DFE0 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1E7E4 8002DFE4 01086228 */  slti       $v0, $v1, 0x801
    /* 1E7E8 8002DFE8 03004014 */  bnez       $v0, .L8002DFF8
    /* 1E7EC 8002DFEC 0400C3AC */   sw        $v1, 0x4($a2)
    /* 1E7F0 8002DFF0 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1E7F4 8002DFF4 0400C2AC */  sw         $v0, 0x4($a2)
  .L8002DFF8:
    /* 1E7F8 8002DFF8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1E7FC 8002DFFC 2000B08F */  lw         $s0, 0x20($sp)
    /* 1E800 8002E000 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1E804 8002E004 0800E003 */  jr         $ra
    /* 1E808 8002E008 00000000 */   nop
endlabel func_8002DED0
