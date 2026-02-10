.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_61_8006FF38, 0x78

glabel func_level_61_8006FF38
    /* 3EBACD4 8006FF38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3EBACD8 8006FF3C 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 3EBACDC 8006FF40 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 3EBACE0 8006FF44 17000224 */  addiu      $v0, $zero, 0x17
    /* 3EBACE4 8006FF48 15006214 */  bne        $v1, $v0, .Llevel_61_8006FFA0
    /* 3EBACE8 8006FF4C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 3EBACEC 8006FF50 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 3EBACF0 8006FF54 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 3EBACF4 8006FF58 00000000 */  nop
    /* 3EBACF8 8006FF5C 0E008014 */  bnez       $a0, .Llevel_61_8006FF98
    /* 3EBACFC 8006FF60 00000000 */   nop
    /* 3EBAD00 8006FF64 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 3EBAD04 8006FF68 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 3EBAD08 8006FF6C 00000000 */  nop
    /* 3EBAD0C 8006FF70 80100200 */  sll        $v0, $v0, 2
    /* 3EBAD10 8006FF74 0680013C */  lui        $at, %hi(D_80061468)
    /* 3EBAD14 8006FF78 21082200 */  addu       $at, $at, $v0
    /* 3EBAD18 8006FF7C 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 3EBAD1C 8006FF80 00000000 */  nop
    /* 3EBAD20 8006FF84 06008310 */  beq        $a0, $v1, .Llevel_61_8006FFA0
    /* 3EBAD24 8006FF88 00000000 */   nop
    /* 3EBAD28 8006FF8C 02008014 */  bnez       $a0, .Llevel_61_8006FF98
    /* 3EBAD2C 8006FF90 00000000 */   nop
    /* 3EBAD30 8006FF94 06000424 */  addiu      $a0, $zero, 0x6
  .Llevel_61_8006FF98:
    /* 3EBAD34 8006FF98 B685000C */  jal        func_800216D8
    /* 3EBAD38 8006FF9C 00000000 */   nop
  .Llevel_61_8006FFA0:
    /* 3EBAD3C 8006FFA0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3EBAD40 8006FFA4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3EBAD44 8006FFA8 0800E003 */  jr         $ra
    /* 3EBAD48 8006FFAC 00000000 */   nop
endlabel func_level_61_8006FF38
