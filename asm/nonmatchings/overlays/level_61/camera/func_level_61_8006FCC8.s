.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_61_8006FCC8, 0x184

glabel func_level_61_8006FCC8
    /* 3EBAA64 8006FCC8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3EBAA68 8006FCCC 0680043C */  lui        $a0, %hi(D_80067FBC)
    /* 3EBAA6C 8006FCD0 BC7F8424 */  addiu      $a0, $a0, %lo(D_80067FBC)
    /* 3EBAA70 8006FCD4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3EBAA74 8006FCD8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3EBAA78 8006FCDC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3EBAA7C 8006FCE0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3EBAA80 8006FCE4 0000828C */  lw         $v0, 0x0($a0)
    /* 3EBAA84 8006FCE8 00000000 */  nop
    /* 3EBAA88 8006FCEC 02004224 */  addiu      $v0, $v0, 0x2
    /* 3EBAA8C 8006FCF0 83880200 */  sra        $s1, $v0, 2
    /* 3EBAA90 8006FCF4 0500222A */  slti       $v0, $s1, 0x5
    /* 3EBAA94 8006FCF8 02004014 */  bnez       $v0, .Llevel_61_8006FD04
    /* 3EBAA98 8006FCFC 00000000 */   nop
    /* 3EBAA9C 8006FD00 04001124 */  addiu      $s1, $zero, 0x4
  .Llevel_61_8006FD04:
    /* 3EBAAA0 8006FD04 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 3EBAAA4 8006FD08 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 3EBAAA8 8006FD0C 17000224 */  addiu      $v0, $zero, 0x17
    /* 3EBAAAC 8006FD10 47006214 */  bne        $v1, $v0, .Llevel_61_8006FE30
    /* 3EBAAB0 8006FD14 00000000 */   nop
    /* 3EBAAB4 8006FD18 0680023C */  lui        $v0, %hi(D_80067FB8)
    /* 3EBAAB8 8006FD1C B87F428C */  lw         $v0, %lo(D_80067FB8)($v0)
    /* 3EBAABC 8006FD20 00000000 */  nop
    /* 3EBAAC0 8006FD24 10004014 */  bnez       $v0, .Llevel_61_8006FD68
    /* 3EBAAC4 8006FD28 00000000 */   nop
    /* 3EBAAC8 8006FD2C 0680063C */  lui        $a2, %hi(D_80067EF0)
    /* 3EBAACC 8006FD30 F07EC68C */  lw         $a2, %lo(D_80067EF0)($a2)
    /* 3EBAAD0 8006FD34 0680053C */  lui        $a1, %hi(D_80061560)
    /* 3EBAAD4 8006FD38 6015A524 */  addiu      $a1, $a1, %lo(D_80061560)
    /* 3EBAAD8 8006FD3C 337B000C */  jal        func_8001ECCC
    /* 3EBAADC 8006FD40 58FF8424 */   addiu     $a0, $a0, -0xA8
    /* 3EBAAE0 8006FD44 087C000C */  jal        func_8001F020
    /* 3EBAAE4 8006FD48 00040424 */   addiu     $a0, $zero, 0x400
    /* 3EBAAE8 8006FD4C 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 3EBAAEC 8006FD50 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 3EBAAF0 8006FD54 33000224 */  addiu      $v0, $zero, 0x33
    /* 3EBAAF4 8006FD58 03006214 */  bne        $v1, $v0, .Llevel_61_8006FD68
    /* 3EBAAF8 8006FD5C 00060224 */   addiu     $v0, $zero, 0x600
    /* 3EBAAFC 8006FD60 0680013C */  lui        $at, %hi(D_80067F1C)
    /* 3EBAB00 8006FD64 1C7F22AC */  sw         $v0, %lo(D_80067F1C)($at)
  .Llevel_61_8006FD68:
    /* 3EBAB04 8006FD68 0680123C */  lui        $s2, %hi(D_80067EE4)
    /* 3EBAB08 8006FD6C E47E5226 */  addiu      $s2, $s2, %lo(D_80067EE4)
    /* 3EBAB0C 8006FD70 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 3EBAB10 8006FD74 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 3EBAB14 8006FD78 6C6F000C */  jal        func_8001BDB0
    /* 3EBAB18 8006FD7C 21204002 */   addu      $a0, $s2, $zero
    /* 3EBAB1C 8006FD80 80004426 */  addiu      $a0, $s2, 0x80
    /* 3EBAB20 8006FD84 80801100 */  sll        $s0, $s1, 2
    /* 3EBAB24 8006FD88 21801102 */  addu       $s0, $s0, $s1
    /* 3EBAB28 8006FD8C 80801000 */  sll        $s0, $s0, 2
    /* 3EBAB2C 8006FD90 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 3EBAB30 8006FD94 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 3EBAB34 8006FD98 0780023C */  lui        $v0, %hi(D_8006A208)
    /* 3EBAB38 8006FD9C 08A2428C */  lw         $v0, %lo(D_8006A208)($v0)
    /* 3EBAB3C 8006FDA0 21280502 */  addu       $a1, $s0, $a1
    /* 3EBAB40 8006FDA4 46004290 */  lbu        $v0, 0x46($v0)
    /* 3EBAB44 8006FDA8 00000000 */  nop
    /* 3EBAB48 8006FDAC 00110200 */  sll        $v0, $v0, 4
    /* 3EBAB4C 8006FDB0 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 3EBAB50 8006FDB4 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 3EBAB54 8006FDB8 337B000C */  jal        func_8001ECCC
    /* 3EBAB58 8006FDBC 21300000 */   addu      $a2, $zero, $zero
    /* 3EBAB5C 8006FDC0 94004426 */  addiu      $a0, $s2, 0x94
    /* 3EBAB60 8006FDC4 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 3EBAB64 8006FDC8 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 3EBAB68 8006FDCC 21280502 */  addu       $a1, $s0, $a1
    /* 3EBAB6C 8006FDD0 337B000C */  jal        func_8001ECCC
    /* 3EBAB70 8006FDD4 21300000 */   addu      $a2, $zero, $zero
    /* 3EBAB74 8006FDD8 A8004426 */  addiu      $a0, $s2, 0xA8
    /* 3EBAB78 8006FDDC 0680053C */  lui        $a1, %hi(D_80061858)
    /* 3EBAB7C 8006FDE0 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 3EBAB80 8006FDE4 337B000C */  jal        func_8001ECCC
    /* 3EBAB84 8006FDE8 21300000 */   addu      $a2, $zero, $zero
    /* 3EBAB88 8006FDEC BC004426 */  addiu      $a0, $s2, 0xBC
    /* 3EBAB8C 8006FDF0 0680053C */  lui        $a1, %hi(D_80061844)
    /* 3EBAB90 8006FDF4 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 3EBAB94 8006FDF8 337B000C */  jal        func_8001ECCC
    /* 3EBAB98 8006FDFC 21300000 */   addu      $a2, $zero, $zero
    /* 3EBAB9C 8006FE00 0680023C */  lui        $v0, %hi(D_80067EDC)
    /* 3EBABA0 8006FE04 DC7E428C */  lw         $v0, %lo(D_80067EDC)($v0)
    /* 3EBABA4 8006FE08 00000000 */  nop
    /* 3EBABA8 8006FE0C 02004230 */  andi       $v0, $v0, 0x2
    /* 3EBABAC 8006FE10 07004014 */  bnez       $v0, .Llevel_61_8006FE30
    /* 3EBABB0 8006FE14 00000000 */   nop
    /* 3EBABB4 8006FE18 8000428E */  lw         $v0, 0x80($s2)
    /* 3EBABB8 8006FE1C 00000000 */  nop
    /* 3EBABBC 8006FE20 4C004228 */  slti       $v0, $v0, 0x4C
    /* 3EBABC0 8006FE24 02004010 */  beqz       $v0, .Llevel_61_8006FE30
    /* 3EBABC4 8006FE28 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 3EBABC8 8006FE2C 800042AE */  sw         $v0, 0x80($s2)
  .Llevel_61_8006FE30:
    /* 3EBABCC 8006FE30 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3EBABD0 8006FE34 1800B28F */  lw         $s2, 0x18($sp)
    /* 3EBABD4 8006FE38 1400B18F */  lw         $s1, 0x14($sp)
    /* 3EBABD8 8006FE3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3EBABDC 8006FE40 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3EBABE0 8006FE44 0800E003 */  jr         $ra
    /* 3EBABE4 8006FE48 00000000 */   nop
endlabel func_level_61_8006FCC8
