.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C3D4, 0xB0

glabel func_8004C3D4
    /* 3CBD4 8004C3D4 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 3CBD8 8004C3D8 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 3CBDC 8004C3DC 21308000 */  addu       $a2, $a0, $zero
    /* 3CBE0 8004C3E0 2B10C300 */  sltu       $v0, $a2, $v1
    /* 3CBE4 8004C3E4 25004014 */  bnez       $v0, .L8004C47C
    /* 3CBE8 8004C3E8 00000000 */   nop
    /* 3CBEC 8004C3EC 0680023C */  lui        $v0, %hi(D_800670BC)
    /* 3CBF0 8004C3F0 BC70428C */  lw         $v0, %lo(D_800670BC)($v0)
    /* 3CBF4 8004C3F4 00000000 */  nop
    /* 3CBF8 8004C3F8 2B10C200 */  sltu       $v0, $a2, $v0
    /* 3CBFC 8004C3FC 1F004010 */  beqz       $v0, .L8004C47C
    /* 3CC00 8004C400 2320C300 */   subu      $a0, $a2, $v1
    /* 3CC04 8004C404 40110400 */  sll        $v0, $a0, 5
    /* 3CC08 8004C408 23104400 */  subu       $v0, $v0, $a0
    /* 3CC0C 8004C40C 40110200 */  sll        $v0, $v0, 5
    /* 3CC10 8004C410 21104400 */  addu       $v0, $v0, $a0
    /* 3CC14 8004C414 C0180200 */  sll        $v1, $v0, 3
    /* 3CC18 8004C418 21104300 */  addu       $v0, $v0, $v1
    /* 3CC1C 8004C41C C01B0200 */  sll        $v1, $v0, 15
    /* 3CC20 8004C420 23186200 */  subu       $v1, $v1, $v0
    /* 3CC24 8004C424 80180300 */  sll        $v1, $v1, 2
    /* 3CC28 8004C428 21186400 */  addu       $v1, $v1, $a0
    /* 3CC2C 8004C42C 23180300 */  negu       $v1, $v1
    /* 3CC30 8004C430 C3280300 */  sra        $a1, $v1, 3
    /* 3CC34 8004C434 1F00A530 */  andi       $a1, $a1, 0x1F
    /* 3CC38 8004C438 031A0300 */  sra        $v1, $v1, 8
    /* 3CC3C 8004C43C 0680023C */  lui        $v0, %hi(D_80067190)
    /* 3CC40 8004C440 90714224 */  addiu      $v0, $v0, %lo(D_80067190)
    /* 3CC44 8004C444 80180300 */  sll        $v1, $v1, 2
    /* 3CC48 8004C448 21186200 */  addu       $v1, $v1, $v0
    /* 3CC4C 8004C44C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3CC50 8004C450 0000648C */  lw         $a0, 0x0($v1)
    /* 3CC54 8004C454 0410A200 */  sllv       $v0, $v0, $a1
    /* 3CC58 8004C458 25208200 */  or         $a0, $a0, $v0
    /* 3CC5C 8004C45C 000064AC */  sw         $a0, 0x0($v1)
    /* 3CC60 8004C460 5300C290 */  lbu        $v0, 0x53($a2)
    /* 3CC64 8004C464 0680033C */  lui        $v1, %hi(D_80066FB0)
    /* 3CC68 8004C468 B06F638C */  lw         $v1, %lo(D_80066FB0)($v1)
    /* 3CC6C 8004C46C 7F004230 */  andi       $v0, $v0, 0x7F
    /* 3CC70 8004C470 21186200 */  addu       $v1, $v1, $v0
    /* 3CC74 8004C474 0680013C */  lui        $at, %hi(D_80066FB0)
    /* 3CC78 8004C478 B06F23AC */  sw         $v1, %lo(D_80066FB0)($at)
  .L8004C47C:
    /* 3CC7C 8004C47C 0800E003 */  jr         $ra
    /* 3CC80 8004C480 00000000 */   nop
endlabel func_8004C3D4
