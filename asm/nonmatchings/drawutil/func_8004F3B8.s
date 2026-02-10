.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004F3B8, 0xF0

glabel func_8004F3B8
    /* 3FBB8 8004F3B8 0680023C */  lui        $v0, %hi(D_80067030)
    /* 3FBBC 8004F3BC 3070428C */  lw         $v0, %lo(D_80067030)($v0)
    /* 3FBC0 8004F3C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3FBC4 8004F3C4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3FBC8 8004F3C8 0780113C */  lui        $s1, %hi(D_80069924)
    /* 3FBCC 8004F3CC 24993126 */  addiu      $s1, $s1, %lo(D_80069924)
    /* 3FBD0 8004F3D0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3FBD4 8004F3D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3FBD8 8004F3D8 03008010 */  beqz       $a0, .L8004F3E8
    /* 3FBDC 8004F3DC 000022AE */   sw        $v0, 0x0($s1)
    /* 3FBE0 8004F3E0 803C010C */  jal        func_8004F200
    /* 3FBE4 8004F3E4 00000000 */   nop
  .L8004F3E8:
    /* 3FBE8 8004F3E8 B73C010C */  jal        func_8004F2DC
    /* 3FBEC 8004F3EC AA2A103C */   lui       $s0, (0x2AAAAAAB >> 16)
    /* 3FBF0 8004F3F0 0780043C */  lui        $a0, %hi(D_800698EC)
    /* 3FBF4 8004F3F4 EC98848C */  lw         $a0, %lo(D_800698EC)($a0)
    /* 3FBF8 8004F3F8 ABAA1036 */  ori        $s0, $s0, (0x2AAAAAAB & 0xFFFF)
    /* 3FBFC 8004F3FC 18009000 */  mult       $a0, $s0
    /* 3FC00 8004F400 C3170400 */  sra        $v0, $a0, 31
    /* 3FC04 8004F404 10300000 */  mfhi       $a2
    /* 3FC08 8004F408 43180600 */  sra        $v1, $a2, 1
    /* 3FC0C 8004F40C 23186200 */  subu       $v1, $v1, $v0
    /* 3FC10 8004F410 40100300 */  sll        $v0, $v1, 1
    /* 3FC14 8004F414 21104300 */  addu       $v0, $v0, $v1
    /* 3FC18 8004F418 80100200 */  sll        $v0, $v0, 2
    /* 3FC1C 8004F41C 23208200 */  subu       $a0, $a0, $v0
    /* 3FC20 8004F420 0680013C */  lui        $at, %hi(D_80063870)
    /* 3FC24 8004F424 21082400 */  addu       $at, $at, $a0
    /* 3FC28 8004F428 70382590 */  lbu        $a1, %lo(D_80063870)($at)
    /* 3FC2C 8004F42C 0000248E */  lw         $a0, 0x0($s1)
    /* 3FC30 8004F430 E52F010C */  jal        func_8004BF94
    /* 3FC34 8004F434 C000A524 */   addiu     $a1, $a1, 0xC0
    /* 3FC38 8004F438 0680023C */  lui        $v0, %hi(D_80067030)
    /* 3FC3C 8004F43C 3070428C */  lw         $v0, %lo(D_80067030)($v0)
    /* 3FC40 8004F440 D23C010C */  jal        func_8004F348
    /* 3FC44 8004F444 000022AE */   sw        $v0, 0x0($s1)
    /* 3FC48 8004F448 0780053C */  lui        $a1, %hi(D_800698EC)
    /* 3FC4C 8004F44C EC98A58C */  lw         $a1, %lo(D_800698EC)($a1)
    /* 3FC50 8004F450 00000000 */  nop
    /* 3FC54 8004F454 1800B000 */  mult       $a1, $s0
    /* 3FC58 8004F458 0000248E */  lw         $a0, 0x0($s1)
    /* 3FC5C 8004F45C C3170500 */  sra        $v0, $a1, 31
    /* 3FC60 8004F460 10300000 */  mfhi       $a2
    /* 3FC64 8004F464 43180600 */  sra        $v1, $a2, 1
    /* 3FC68 8004F468 23186200 */  subu       $v1, $v1, $v0
    /* 3FC6C 8004F46C 40100300 */  sll        $v0, $v1, 1
    /* 3FC70 8004F470 21104300 */  addu       $v0, $v0, $v1
    /* 3FC74 8004F474 80100200 */  sll        $v0, $v0, 2
    /* 3FC78 8004F478 2328A200 */  subu       $a1, $a1, $v0
    /* 3FC7C 8004F47C 0680013C */  lui        $at, %hi(D_80063870)
    /* 3FC80 8004F480 21082500 */  addu       $at, $at, $a1
    /* 3FC84 8004F484 70382590 */  lbu        $a1, %lo(D_80063870)($at)
    /* 3FC88 8004F488 E52F010C */  jal        func_8004BF94
    /* 3FC8C 8004F48C 00000000 */   nop
    /* 3FC90 8004F490 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3FC94 8004F494 1400B18F */  lw         $s1, 0x14($sp)
    /* 3FC98 8004F498 1000B08F */  lw         $s0, 0x10($sp)
    /* 3FC9C 8004F49C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3FCA0 8004F4A0 0800E003 */  jr         $ra
    /* 3FCA4 8004F4A4 00000000 */   nop
endlabel func_8004F3B8
