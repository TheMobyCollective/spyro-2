.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_41_8006F2FC, 0x15C

glabel func_level_41_8006F2FC
    /* 2BBA898 8006F2FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2BBA89C 8006F300 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 2BBA8A0 8006F304 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 2BBA8A4 8006F308 17000224 */  addiu      $v0, $zero, 0x17
    /* 2BBA8A8 8006F30C 1B006210 */  beq        $v1, $v0, .Llevel_41_8006F37C
    /* 2BBA8AC 8006F310 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2BBA8B0 8006F314 18006228 */  slti       $v0, $v1, 0x18
    /* 2BBA8B4 8006F318 05004010 */  beqz       $v0, .Llevel_41_8006F330
    /* 2BBA8B8 8006F31C 15000224 */   addiu     $v0, $zero, 0x15
    /* 2BBA8BC 8006F320 08006210 */  beq        $v1, $v0, .Llevel_41_8006F344
    /* 2BBA8C0 8006F324 00000000 */   nop
    /* 2BBA8C4 8006F328 12BD0108 */  j          .Llevel_41_8006F448
    /* 2BBA8C8 8006F32C 00000000 */   nop
  .Llevel_41_8006F330:
    /* 2BBA8CC 8006F330 18000224 */  addiu      $v0, $zero, 0x18
    /* 2BBA8D0 8006F334 24006210 */  beq        $v1, $v0, .Llevel_41_8006F3C8
    /* 2BBA8D4 8006F338 00000000 */   nop
    /* 2BBA8D8 8006F33C 12BD0108 */  j          .Llevel_41_8006F448
    /* 2BBA8DC 8006F340 00000000 */   nop
  .Llevel_41_8006F344:
    /* 2BBA8E0 8006F344 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2BBA8E4 8006F348 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2BBA8E8 8006F34C 00000000 */  nop
    /* 2BBA8EC 8006F350 80100200 */  sll        $v0, $v0, 2
    /* 2BBA8F0 8006F354 0680013C */  lui        $at, %hi(D_80061468)
    /* 2BBA8F4 8006F358 21082200 */  addu       $at, $at, $v0
    /* 2BBA8F8 8006F35C 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 2BBA8FC 8006F360 00000000 */  nop
    /* 2BBA900 8006F364 38008310 */  beq        $a0, $v1, .Llevel_41_8006F448
    /* 2BBA904 8006F368 00000000 */   nop
    /* 2BBA908 8006F36C 34008014 */  bnez       $a0, .Llevel_41_8006F440
    /* 2BBA90C 8006F370 00000000 */   nop
    /* 2BBA910 8006F374 10BD0108 */  j          .Llevel_41_8006F440
    /* 2BBA914 8006F378 06000424 */   addiu     $a0, $zero, 0x6
  .Llevel_41_8006F37C:
    /* 2BBA918 8006F37C 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 2BBA91C 8006F380 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 2BBA920 8006F384 00000000 */  nop
    /* 2BBA924 8006F388 2D008014 */  bnez       $a0, .Llevel_41_8006F440
    /* 2BBA928 8006F38C 00000000 */   nop
    /* 2BBA92C 8006F390 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2BBA930 8006F394 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2BBA934 8006F398 00000000 */  nop
    /* 2BBA938 8006F39C 80100200 */  sll        $v0, $v0, 2
    /* 2BBA93C 8006F3A0 0680013C */  lui        $at, %hi(D_80061468)
    /* 2BBA940 8006F3A4 21082200 */  addu       $at, $at, $v0
    /* 2BBA944 8006F3A8 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 2BBA948 8006F3AC 00000000 */  nop
    /* 2BBA94C 8006F3B0 25008310 */  beq        $a0, $v1, .Llevel_41_8006F448
    /* 2BBA950 8006F3B4 00000000 */   nop
    /* 2BBA954 8006F3B8 21008014 */  bnez       $a0, .Llevel_41_8006F440
    /* 2BBA958 8006F3BC 00000000 */   nop
    /* 2BBA95C 8006F3C0 10BD0108 */  j          .Llevel_41_8006F440
    /* 2BBA960 8006F3C4 06000424 */   addiu     $a0, $zero, 0x6
  .Llevel_41_8006F3C8:
    /* 2BBA964 8006F3C8 0780023C */  lui        $v0, %hi(D_800683A0)
    /* 2BBA968 8006F3CC A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* 2BBA96C 8006F3D0 00000000 */  nop
    /* 2BBA970 8006F3D4 10004230 */  andi       $v0, $v0, 0x10
    /* 2BBA974 8006F3D8 06004010 */  beqz       $v0, .Llevel_41_8006F3F4
    /* 2BBA978 8006F3DC 00000000 */   nop
    /* 2BBA97C 8006F3E0 0780023C */  lui        $v0, %hi(D_8006A1B1)
    /* 2BBA980 8006F3E4 B1A14290 */  lbu        $v0, %lo(D_8006A1B1)($v0)
    /* 2BBA984 8006F3E8 00000000 */  nop
    /* 2BBA988 8006F3EC 14004014 */  bnez       $v0, .Llevel_41_8006F440
    /* 2BBA98C 8006F3F0 07000424 */   addiu     $a0, $zero, 0x7
  .Llevel_41_8006F3F4:
    /* 2BBA990 8006F3F4 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 2BBA994 8006F3F8 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 2BBA998 8006F3FC 00000000 */  nop
    /* 2BBA99C 8006F400 0A008014 */  bnez       $a0, .Llevel_41_8006F42C
    /* 2BBA9A0 8006F404 00000000 */   nop
    /* 2BBA9A4 8006F408 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 2BBA9A8 8006F40C 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 2BBA9AC 8006F410 00000000 */  nop
    /* 2BBA9B0 8006F414 80100200 */  sll        $v0, $v0, 2
    /* 2BBA9B4 8006F418 0680013C */  lui        $at, %hi(D_80061468)
    /* 2BBA9B8 8006F41C 21082200 */  addu       $at, $at, $v0
    /* 2BBA9BC 8006F420 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 2BBA9C0 8006F424 10BD0108 */  j          .Llevel_41_8006F440
    /* 2BBA9C4 8006F428 00000000 */   nop
  .Llevel_41_8006F42C:
    /* 2BBA9C8 8006F42C 0680023C */  lui        $v0, %hi(D_80067ED0)
    /* 2BBA9CC 8006F430 D07E428C */  lw         $v0, %lo(D_80067ED0)($v0)
    /* 2BBA9D0 8006F434 00000000 */  nop
    /* 2BBA9D4 8006F438 03008210 */  beq        $a0, $v0, .Llevel_41_8006F448
    /* 2BBA9D8 8006F43C 00000000 */   nop
  .Llevel_41_8006F440:
    /* 2BBA9DC 8006F440 B685000C */  jal        func_800216D8
    /* 2BBA9E0 8006F444 00000000 */   nop
  .Llevel_41_8006F448:
    /* 2BBA9E4 8006F448 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2BBA9E8 8006F44C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2BBA9EC 8006F450 0800E003 */  jr         $ra
    /* 2BBA9F0 8006F454 00000000 */   nop
endlabel func_level_41_8006F2FC
