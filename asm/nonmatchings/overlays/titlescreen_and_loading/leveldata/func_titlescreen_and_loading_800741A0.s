.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_800741A0, 0x158

glabel func_titlescreen_and_loading_800741A0
    /* 29F3C 800741A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 29F40 800741A4 0780053C */  lui        $a1, %hi(D_80068C80)
    /* 29F44 800741A8 808CA524 */  addiu      $a1, $a1, %lo(D_80068C80)
    /* 29F48 800741AC 0680043C */  lui        $a0, %hi(D_80067068)
    /* 29F4C 800741B0 6870848C */  lw         $a0, %lo(D_80067068)($a0)
    /* 29F50 800741B4 14000624 */  addiu      $a2, $zero, 0x14
    /* 29F54 800741B8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 29F58 800741BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 29F5C 800741C0 036D000C */  jal        func_8001B40C
    /* 29F60 800741C4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 29F64 800741C8 0780043C */  lui        $a0, %hi(D_80068C94)
    /* 29F68 800741CC 948C8424 */  addiu      $a0, $a0, %lo(D_80068C94)
    /* 29F6C 800741D0 0780063C */  lui        $a2, %hi(D_80068C64)
    /* 29F70 800741D4 648CC68C */  lw         $a2, %lo(D_80068C64)($a2)
    /* 29F74 800741D8 0780053C */  lui        $a1, %hi(D_80068C78)
    /* 29F78 800741DC 788CA58C */  lw         $a1, %lo(D_80068C78)($a1)
    /* 29F7C 800741E0 036D000C */  jal        func_8001B40C
    /* 29F80 800741E4 80300600 */   sll       $a2, $a2, 2
    /* 29F84 800741E8 0780023C */  lui        $v0, %hi(D_80068C40)
    /* 29F88 800741EC 408C428C */  lw         $v0, %lo(D_80068C40)($v0)
    /* 29F8C 800741F0 00000000 */  nop
    /* 29F90 800741F4 02004228 */  slti       $v0, $v0, 0x2
    /* 29F94 800741F8 37004010 */  beqz       $v0, .Ltitlescreen_and_loading_800742D8
    /* 29F98 800741FC 0800033C */   lui       $v1, (0x86000 >> 16)
    /* 29F9C 80074200 00606334 */  ori        $v1, $v1, (0x86000 & 0xFFFF)
    /* 29FA0 80074204 00C80634 */  ori        $a2, $zero, 0xC800
    /* 29FA4 80074208 0780103C */  lui        $s0, %hi(D_8006B290)
    /* 29FA8 8007420C 90B21026 */  addiu      $s0, $s0, %lo(D_8006B290)
    /* 29FAC 80074210 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 29FB0 80074214 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 29FB4 80074218 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 29FB8 8007421C 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 29FBC 80074220 0780073C */  lui        $a3, %hi(D_8006B0A4)
    /* 29FC0 80074224 A4B0E78C */  lw         $a3, %lo(D_8006B0A4)($a3)
    /* 29FC4 80074228 00110200 */  sll        $v0, $v0, 4
    /* 29FC8 8007422C 0680013C */  lui        $at, %hi(D_80067750)
    /* 29FCC 80074230 21082200 */  addu       $at, $at, $v0
    /* 29FD0 80074234 5077228C */  lw         $v0, %lo(D_80067750)($at)
    /* 29FD4 80074238 0000058E */  lw         $a1, 0x0($s0)
    /* 29FD8 8007423C 2138E200 */  addu       $a3, $a3, $v0
    /* 29FDC 80074240 044E000C */  jal        func_80013810
    /* 29FE0 80074244 2138E300 */   addu      $a3, $a3, $v1
    /* 29FE4 80074248 EF67010C */  jal        func_80059FBC
    /* 29FE8 8007424C 10100424 */   addiu     $a0, $zero, 0x1010
    /* 29FEC 80074250 0000048E */  lw         $a0, 0x0($s0)
    /* 29FF0 80074254 AA6A010C */  jal        func_8005AAA8
    /* 29FF4 80074258 00C80534 */   ori       $a1, $zero, 0xC800
  .Ltitlescreen_and_loading_8007425C:
    /* 29FF8 8007425C 5768010C */  jal        func_8005A15C
    /* 29FFC 80074260 21200000 */   addu      $a0, $zero, $zero
    /* 2A000 80074264 FDFF4010 */  beqz       $v0, .Ltitlescreen_and_loading_8007425C
    /* 2A004 80074268 00F80324 */   addiu     $v1, $zero, -0x800
    /* 2A008 8007426C 0780113C */  lui        $s1, %hi(D_8006B290)
    /* 2A00C 80074270 90B23126 */  addiu      $s1, $s1, %lo(D_8006B290)
    /* 2A010 80074274 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 2A014 80074278 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 2A018 8007427C 0000258E */  lw         $a1, 0x0($s1)
    /* 2A01C 80074280 0780023C */  lui        $v0, %hi(D_80068C6C)
    /* 2A020 80074284 6C8C428C */  lw         $v0, %lo(D_80068C6C)($v0)
    /* 2A024 80074288 0780103C */  lui        $s0, %hi(D_80068C68)
    /* 2A028 8007428C 688C108E */  lw         $s0, %lo(D_80068C68)($s0)
    /* 2A02C 80074290 40100200 */  sll        $v0, $v0, 1
    /* 2A030 80074294 21800202 */  addu       $s0, $s0, $v0
    /* 2A034 80074298 FF071026 */  addiu      $s0, $s0, 0x7FF
    /* 2A038 8007429C 24800302 */  and        $s0, $s0, $v1
    /* 2A03C 800742A0 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 2A040 800742A4 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 2A044 800742A8 0780033C */  lui        $v1, %hi(D_8006B0B4)
    /* 2A048 800742AC B4B0638C */  lw         $v1, %lo(D_8006B0B4)($v1)
    /* 2A04C 800742B0 00110200 */  sll        $v0, $v0, 4
    /* 2A050 800742B4 0680013C */  lui        $at, %hi(D_80067750)
    /* 2A054 800742B8 21082200 */  addu       $at, $at, $v0
    /* 2A058 800742BC 5077278C */  lw         $a3, %lo(D_80067750)($at)
    /* 2A05C 800742C0 21300002 */  addu       $a2, $s0, $zero
    /* 2A060 800742C4 044E000C */  jal        func_80013810
    /* 2A064 800742C8 21386700 */   addu      $a3, $v1, $a3
    /* 2A068 800742CC 0000248E */  lw         $a0, 0x0($s1)
    /* 2A06C 800742D0 E6C0010C */  jal        func_titlescreen_and_loading_80070398
    /* 2A070 800742D4 21289000 */   addu      $a1, $a0, $s0
  .Ltitlescreen_and_loading_800742D8:
    /* 2A074 800742D8 0780013C */  lui        $at, %hi(D_8006A250)
    /* 2A078 800742DC 50A220AC */  sw         $zero, %lo(D_8006A250)($at)
    /* 2A07C 800742E0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2A080 800742E4 1400B18F */  lw         $s1, 0x14($sp)
    /* 2A084 800742E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2A088 800742EC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2A08C 800742F0 0800E003 */  jr         $ra
    /* 2A090 800742F4 00000000 */   nop
endlabel func_titlescreen_and_loading_800741A0
