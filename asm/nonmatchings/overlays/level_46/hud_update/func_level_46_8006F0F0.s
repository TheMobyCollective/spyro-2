.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_46_8006F0F0, 0xA8

glabel func_level_46_8006F0F0
    /* 3582E8C 8006F0F0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3582E90 8006F0F4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3582E94 8006F0F8 0680103C */  lui        $s0, %hi(D_80067678)
    /* 3582E98 8006F0FC 78761026 */  addiu      $s0, $s0, %lo(D_80067678)
    /* 3582E9C 8006F100 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 3582EA0 8006F104 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 3582EA4 8006F108 03000224 */  addiu      $v0, $zero, 0x3
    /* 3582EA8 8006F10C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3582EAC 8006F110 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3582EB0 8006F114 0680013C */  lui        $at, %hi(D_80067675)
    /* 3582EB4 8006F118 757622A0 */  sb         $v0, %lo(D_80067675)($at)
    /* 3582EB8 8006F11C 0000118E */  lw         $s1, 0x0($s0)
    /* 3582EBC 8006F120 6746010C */  jal        func_8005199C
    /* 3582EC0 8006F124 FCFF0426 */   addiu     $a0, $s0, -0x4
    /* 3582EC4 8006F128 0000108E */  lw         $s0, 0x0($s0)
    /* 3582EC8 8006F12C FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 3582ECC 8006F130 13001116 */  bne        $s0, $s1, .Llevel_46_8006F180
    /* 3582ED0 8006F134 10000424 */   addiu     $a0, $zero, 0x10
    /* 3582ED4 8006F138 3B000524 */  addiu      $a1, $zero, 0x3B
    /* 3582ED8 8006F13C 40101000 */  sll        $v0, $s0, 1
    /* 3582EDC 8006F140 21105000 */  addu       $v0, $v0, $s0
    /* 3582EE0 8006F144 80100200 */  sll        $v0, $v0, 2
    /* 3582EE4 8006F148 23105000 */  subu       $v0, $v0, $s0
    /* 3582EE8 8006F14C 00110200 */  sll        $v0, $v0, 4
    /* 3582EEC 8006F150 C0F84224 */  addiu      $v0, $v0, -0x740
    /* 3582EF0 8006F154 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3582EF4 8006F158 C4020224 */  addiu      $v0, $zero, 0x2C4
    /* 3582EF8 8006F15C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3582EFC 8006F160 000C0224 */  addiu      $v0, $zero, 0xC00
    /* 3582F00 8006F164 1000A627 */  addiu      $a2, $sp, 0x10
    /* 3582F04 8006F168 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3582F08 8006F16C 0680023C */  lui        $v0, %hi(D_800670FC)
    /* 3582F0C 8006F170 FC70428C */  lw         $v0, %lo(D_800670FC)($v0)
    /* 3582F10 8006F174 00000000 */  nop
    /* 3582F14 8006F178 09F84000 */  jalr       $v0
    /* 3582F18 8006F17C 21380000 */   addu      $a3, $zero, $zero
  .Llevel_46_8006F180:
    /* 3582F1C 8006F180 2800BF8F */  lw         $ra, 0x28($sp)
    /* 3582F20 8006F184 2400B18F */  lw         $s1, 0x24($sp)
    /* 3582F24 8006F188 2000B08F */  lw         $s0, 0x20($sp)
    /* 3582F28 8006F18C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3582F2C 8006F190 0800E003 */  jr         $ra
    /* 3582F30 8006F194 00000000 */   nop
endlabel func_level_46_8006F0F0
