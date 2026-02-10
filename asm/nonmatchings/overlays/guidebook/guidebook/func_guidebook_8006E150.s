.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_guidebook_8006E150, 0x104

glabel func_guidebook_8006E150
    /* 4856EC 8006E150 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 4856F0 8006E154 00FF0424 */  addiu      $a0, $zero, -0x100
    /* 4856F4 8006E158 01000524 */  addiu      $a1, $zero, 0x1
    /* 4856F8 8006E15C 0D000624 */  addiu      $a2, $zero, 0xD
    /* 4856FC 8006E160 21380000 */  addu       $a3, $zero, $zero
    /* 485700 8006E164 3000B2AF */  sw         $s2, 0x30($sp)
    /* 485704 8006E168 00011224 */  addiu      $s2, $zero, 0x100
    /* 485708 8006E16C 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 48570C 8006E170 00101124 */  addiu      $s1, $zero, 0x1000
    /* 485710 8006E174 2800B0AF */  sw         $s0, 0x28($sp)
    /* 485714 8006E178 80001024 */  addiu      $s0, $zero, 0x80
    /* 485718 8006E17C 3400BFAF */  sw         $ra, 0x34($sp)
    /* 48571C 8006E180 1000B2AF */  sw         $s2, 0x10($sp)
    /* 485720 8006E184 1400A0AF */  sw         $zero, 0x14($sp)
    /* 485724 8006E188 1800B1AF */  sw         $s1, 0x18($sp)
    /* 485728 8006E18C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 48572C 8006E190 51B9010C */  jal        func_guidebook_8006E544
    /* 485730 8006E194 2000A0AF */   sw        $zero, 0x20($sp)
    /* 485734 8006E198 20FF0424 */  addiu      $a0, $zero, -0xE0
    /* 485738 8006E19C 21280000 */  addu       $a1, $zero, $zero
    /* 48573C 8006E1A0 0E000624 */  addiu      $a2, $zero, 0xE
    /* 485740 8006E1A4 21380000 */  addu       $a3, $zero, $zero
    /* 485744 8006E1A8 1000B2AF */  sw         $s2, 0x10($sp)
    /* 485748 8006E1AC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 48574C 8006E1B0 1800B1AF */  sw         $s1, 0x18($sp)
    /* 485750 8006E1B4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 485754 8006E1B8 51B9010C */  jal        func_guidebook_8006E544
    /* 485758 8006E1BC 2000A0AF */   sw        $zero, 0x20($sp)
    /* 48575C 8006E1C0 20FF0424 */  addiu      $a0, $zero, -0xE0
    /* 485760 8006E1C4 D1000524 */  addiu      $a1, $zero, 0xD1
    /* 485764 8006E1C8 0F000624 */  addiu      $a2, $zero, 0xF
    /* 485768 8006E1CC 21380000 */  addu       $a3, $zero, $zero
    /* 48576C 8006E1D0 1000B2AF */  sw         $s2, 0x10($sp)
    /* 485770 8006E1D4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 485774 8006E1D8 1800B1AF */  sw         $s1, 0x18($sp)
    /* 485778 8006E1DC 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 48577C 8006E1E0 51B9010C */  jal        func_guidebook_8006E544
    /* 485780 8006E1E4 2000A0AF */   sw        $zero, 0x20($sp)
    /* 485784 8006E1E8 F0FF0424 */  addiu      $a0, $zero, -0x10
    /* 485788 8006E1EC 21280000 */  addu       $a1, $zero, $zero
    /* 48578C 8006E1F0 10000624 */  addiu      $a2, $zero, 0x10
    /* 485790 8006E1F4 21380000 */  addu       $a3, $zero, $zero
    /* 485794 8006E1F8 1000B2AF */  sw         $s2, 0x10($sp)
    /* 485798 8006E1FC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 48579C 8006E200 1800B1AF */  sw         $s1, 0x18($sp)
    /* 4857A0 8006E204 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4857A4 8006E208 51B9010C */  jal        func_guidebook_8006E544
    /* 4857A8 8006E20C 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4857AC 8006E210 F0FF0424 */  addiu      $a0, $zero, -0x10
    /* 4857B0 8006E214 D0000524 */  addiu      $a1, $zero, 0xD0
    /* 4857B4 8006E218 12000624 */  addiu      $a2, $zero, 0x12
    /* 4857B8 8006E21C 21380000 */  addu       $a3, $zero, $zero
    /* 4857BC 8006E220 1000B2AF */  sw         $s2, 0x10($sp)
    /* 4857C0 8006E224 1400A0AF */  sw         $zero, 0x14($sp)
    /* 4857C4 8006E228 1800B1AF */  sw         $s1, 0x18($sp)
    /* 4857C8 8006E22C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4857CC 8006E230 51B9010C */  jal        func_guidebook_8006E544
    /* 4857D0 8006E234 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4857D4 8006E238 3400BF8F */  lw         $ra, 0x34($sp)
    /* 4857D8 8006E23C 3000B28F */  lw         $s2, 0x30($sp)
    /* 4857DC 8006E240 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 4857E0 8006E244 2800B08F */  lw         $s0, 0x28($sp)
    /* 4857E4 8006E248 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4857E8 8006E24C 0800E003 */  jr         $ra
    /* 4857EC 8006E250 00000000 */   nop
endlabel func_guidebook_8006E150
