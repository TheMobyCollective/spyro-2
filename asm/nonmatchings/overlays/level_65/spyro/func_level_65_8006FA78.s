.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_65_8006FA78, 0x1C4

glabel func_level_65_8006FA78
    /* 42C3014 8006FA78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 42C3018 8006FA7C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 42C301C 8006FA80 0780103C */  lui        $s0, %hi(D_800698F4)
    /* 42C3020 8006FA84 F4981026 */  addiu      $s0, $s0, %lo(D_800698F4)
    /* 42C3024 8006FA88 1800BFAF */  sw         $ra, 0x18($sp)
    /* 42C3028 8006FA8C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 42C302C 8006FA90 0000038E */  lw         $v1, 0x0($s0)
    /* 42C3030 8006FA94 00000000 */  nop
    /* 42C3034 8006FA98 4B006014 */  bnez       $v1, .Llevel_65_8006FBC8
    /* 42C3038 8006FA9C 00000000 */   nop
    /* 42C303C 8006FAA0 0780113C */  lui        $s1, %hi(D_800683A4)
    /* 42C3040 8006FAA4 A4833126 */  addiu      $s1, $s1, %lo(D_800683A4)
    /* 42C3044 8006FAA8 F8FF028E */  lw         $v0, -0x8($s0)
    /* 42C3048 8006FAAC 0000238E */  lw         $v1, 0x0($s1)
    /* 42C304C 8006FAB0 01004224 */  addiu      $v0, $v0, 0x1
    /* 42C3050 8006FAB4 F8FF02AE */  sw         $v0, -0x8($s0)
    /* 42C3054 8006FAB8 10006230 */  andi       $v0, $v1, 0x10
    /* 42C3058 8006FABC 0C004010 */  beqz       $v0, .Llevel_65_8006FAF0
    /* 42C305C 8006FAC0 00506230 */   andi      $v0, $v1, 0x5000
    /* 42C3060 8006FAC4 C650010C */  jal        func_80054318
    /* 42C3064 8006FAC8 00000000 */   nop
    /* 42C3068 8006FACC 08000224 */  addiu      $v0, $zero, 0x8
    /* 42C306C 8006FAD0 FCFF02AE */  sw         $v0, -0x4($s0)
    /* 42C3070 8006FAD4 02000224 */  addiu      $v0, $zero, 0x2
    /* 42C3074 8006FAD8 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 42C3078 8006FADC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 42C307C 8006FAE0 000002AE */  sw         $v0, 0x0($s0)
    /* 42C3080 8006FAE4 17000224 */  addiu      $v0, $zero, 0x17
    /* 42C3084 8006FAE8 09BF0108 */  j          .Llevel_65_8006FC24
    /* 42C3088 8006FAEC F8FF02AE */   sw        $v0, -0x8($s0)
  .Llevel_65_8006FAF0:
    /* 42C308C 8006FAF0 19004010 */  beqz       $v0, .Llevel_65_8006FB58
    /* 42C3090 8006FAF4 40006230 */   andi      $v0, $v1, 0x40
    /* 42C3094 8006FAF8 7450010C */  jal        func_800541D0
    /* 42C3098 8006FAFC 00000000 */   nop
    /* 42C309C 8006FB00 0000228E */  lw         $v0, 0x0($s1)
    /* 42C30A0 8006FB04 00000000 */  nop
    /* 42C30A4 8006FB08 00104230 */  andi       $v0, $v0, 0x1000
    /* 42C30A8 8006FB0C 09004010 */  beqz       $v0, .Llevel_65_8006FB34
    /* 42C30AC 8006FB10 F8FF00AE */   sw        $zero, -0x8($s0)
    /* 42C30B0 8006FB14 0C00028E */  lw         $v0, 0xC($s0)
    /* 42C30B4 8006FB18 00000000 */  nop
    /* 42C30B8 8006FB1C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 42C30BC 8006FB20 40004104 */  bgez       $v0, .Llevel_65_8006FC24
    /* 42C30C0 8006FB24 0C0002AE */   sw        $v0, 0xC($s0)
    /* 42C30C4 8006FB28 0A000224 */  addiu      $v0, $zero, 0xA
    /* 42C30C8 8006FB2C 09BF0108 */  j          .Llevel_65_8006FC24
    /* 42C30CC 8006FB30 0C0002AE */   sw        $v0, 0xC($s0)
  .Llevel_65_8006FB34:
    /* 42C30D0 8006FB34 0C00028E */  lw         $v0, 0xC($s0)
    /* 42C30D4 8006FB38 00000000 */  nop
    /* 42C30D8 8006FB3C 01004224 */  addiu      $v0, $v0, 0x1
    /* 42C30DC 8006FB40 0C0002AE */  sw         $v0, 0xC($s0)
    /* 42C30E0 8006FB44 0B004228 */  slti       $v0, $v0, 0xB
    /* 42C30E4 8006FB48 36004014 */  bnez       $v0, .Llevel_65_8006FC24
    /* 42C30E8 8006FB4C 00000000 */   nop
    /* 42C30EC 8006FB50 09BF0108 */  j          .Llevel_65_8006FC24
    /* 42C30F0 8006FB54 0C0000AE */   sw        $zero, 0xC($s0)
  .Llevel_65_8006FB58:
    /* 42C30F4 8006FB58 32004010 */  beqz       $v0, .Llevel_65_8006FC24
    /* 42C30F8 8006FB5C 00000000 */   nop
    /* 42C30FC 8006FB60 0C00028E */  lw         $v0, 0xC($s0)
    /* 42C3100 8006FB64 00000000 */  nop
    /* 42C3104 8006FB68 40100200 */  sll        $v0, $v0, 1
    /* 42C3108 8006FB6C 0780013C */  lui        $at, %hi(D_level_65_8006DAFD)
    /* 42C310C 8006FB70 21082200 */  addu       $at, $at, $v0
    /* 42C3110 8006FB74 FDDA2490 */  lbu        $a0, %lo(D_level_65_8006DAFD)($at)
    /* 42C3114 8006FB78 8C64000C */  jal        func_80019230
    /* 42C3118 8006FB7C 00000000 */   nop
    /* 42C311C 8006FB80 0C00028E */  lw         $v0, 0xC($s0)
    /* 42C3120 8006FB84 00000000 */  nop
    /* 42C3124 8006FB88 40100200 */  sll        $v0, $v0, 1
    /* 42C3128 8006FB8C 0780013C */  lui        $at, %hi(D_level_65_8006DAFC)
    /* 42C312C 8006FB90 21082200 */  addu       $at, $at, $v0
    /* 42C3130 8006FB94 FCDA2390 */  lbu        $v1, %lo(D_level_65_8006DAFC)($at)
    /* 42C3134 8006FB98 0680013C */  lui        $at, %hi(D_80066F90)
    /* 42C3138 8006FB9C 906F23AC */  sw         $v1, %lo(D_80066F90)($at)
    /* 42C313C 8006FBA0 0780013C */  lui        $at, %hi(D_level_65_8006DAFD)
    /* 42C3140 8006FBA4 21082200 */  addu       $at, $at, $v0
    /* 42C3144 8006FBA8 FDDA2390 */  lbu        $v1, %lo(D_level_65_8006DAFD)($at)
    /* 42C3148 8006FBAC 01000224 */  addiu      $v0, $zero, 0x1
    /* 42C314C 8006FBB0 0680013C */  lui        $at, %hi(D_80066EEC)
    /* 42C3150 8006FBB4 EC6E20AC */  sw         $zero, %lo(D_80066EEC)($at)
    /* 42C3154 8006FBB8 0780013C */  lui        $at, %hi(D_800698BD)
    /* 42C3158 8006FBBC BD9822A0 */  sb         $v0, %lo(D_800698BD)($at)
    /* 42C315C 8006FBC0 09BF0108 */  j          .Llevel_65_8006FC24
    /* 42C3160 8006FBC4 000003AE */   sw        $v1, 0x0($s0)
  .Llevel_65_8006FBC8:
    /* 42C3164 8006FBC8 0780023C */  lui        $v0, %hi(D_800698EC)
    /* 42C3168 8006FBCC EC98428C */  lw         $v0, %lo(D_800698EC)($v0)
    /* 42C316C 8006FBD0 00000000 */  nop
    /* 42C3170 8006FBD4 21184300 */  addu       $v1, $v0, $v1
    /* 42C3174 8006FBD8 0780013C */  lui        $at, %hi(D_800698EC)
    /* 42C3178 8006FBDC EC9823AC */  sw         $v1, %lo(D_800698EC)($at)
    /* 42C317C 8006FBE0 06006014 */  bnez       $v1, .Llevel_65_8006FBFC
    /* 42C3180 8006FBE4 18000224 */   addiu     $v0, $zero, 0x18
    /* 42C3184 8006FBE8 000000AE */  sw         $zero, 0x0($s0)
    /* 42C3188 8006FBEC 0780013C */  lui        $at, %hi(D_80069900)
    /* 42C318C 8006FBF0 009920AC */  sw         $zero, %lo(D_80069900)($at)
    /* 42C3190 8006FBF4 09BF0108 */  j          .Llevel_65_8006FC24
    /* 42C3194 8006FBF8 00000000 */   nop
  .Llevel_65_8006FBFC:
    /* 42C3198 8006FBFC 09006214 */  bne        $v1, $v0, .Llevel_65_8006FC24
    /* 42C319C 8006FC00 00000000 */   nop
    /* 42C31A0 8006FC04 0780023C */  lui        $v0, %hi(D_800698F8)
    /* 42C31A4 8006FC08 F898428C */  lw         $v0, %lo(D_800698F8)($v0)
    /* 42C31A8 8006FC0C 000000AE */  sw         $zero, 0x0($s0)
    /* 42C31AC 8006FC10 0780013C */  lui        $at, %hi(D_80069900)
    /* 42C31B0 8006FC14 009920AC */  sw         $zero, %lo(D_80069900)($at)
    /* 42C31B4 8006FC18 01004224 */  addiu      $v0, $v0, 0x1
    /* 42C31B8 8006FC1C 0780013C */  lui        $at, %hi(D_800698F8)
    /* 42C31BC 8006FC20 F89822AC */  sw         $v0, %lo(D_800698F8)($at)
  .Llevel_65_8006FC24:
    /* 42C31C0 8006FC24 1800BF8F */  lw         $ra, 0x18($sp)
    /* 42C31C4 8006FC28 1400B18F */  lw         $s1, 0x14($sp)
    /* 42C31C8 8006FC2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 42C31CC 8006FC30 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 42C31D0 8006FC34 0800E003 */  jr         $ra
    /* 42C31D4 8006FC38 00000000 */   nop
endlabel func_level_65_8006FA78
