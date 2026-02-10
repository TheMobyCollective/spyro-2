.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_35_80079400, 0xBF8

glabel func_level_35_80079400
    /* 29DE99C 80079400 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 29DE9A0 80079404 8400B1AF */  sw         $s1, 0x84($sp)
    /* 29DE9A4 80079408 21888000 */  addu       $s1, $a0, $zero
    /* 29DE9A8 8007940C 9000B4AF */  sw         $s4, 0x90($sp)
    /* 29DE9AC 80079410 21A0A000 */  addu       $s4, $a1, $zero
    /* 29DE9B0 80079414 9800BFAF */  sw         $ra, 0x98($sp)
    /* 29DE9B4 80079418 9400B5AF */  sw         $s5, 0x94($sp)
    /* 29DE9B8 8007941C 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* 29DE9BC 80079420 8800B2AF */  sw         $s2, 0x88($sp)
    /* 29DE9C0 80079424 A404010C */  jal        func_80041290
    /* 29DE9C4 80079428 8000B0AF */   sw        $s0, 0x80($sp)
    /* 29DE9C8 8007942C 21984000 */  addu       $s3, $v0, $zero
    /* 29DE9CC 80079430 03006016 */  bnez       $s3, .Llevel_35_80079440
    /* 29DE9D0 80079434 21206002 */   addu      $a0, $s3, $zero
    /* 29DE9D4 80079438 F4E70108 */  j          .Llevel_35_80079FD0
    /* 29DE9D8 8007943C 21100000 */   addu      $v0, $zero, $zero
  .Llevel_35_80079440:
    /* 29DE9DC 80079440 21280000 */  addu       $a1, $zero, $zero
    /* 29DE9E0 80079444 0000708E */  lw         $s0, 0x0($s3)
    /* 29DE9E4 80079448 F26C000C */  jal        func_8001B3C8
    /* 29DE9E8 8007944C 58000624 */   addiu     $a2, $zero, 0x58
    /* 29DE9EC 80079450 21280000 */  addu       $a1, $zero, $zero
    /* 29DE9F0 80079454 18000624 */  addiu      $a2, $zero, 0x18
    /* 29DE9F4 80079458 21200002 */  addu       $a0, $s0, $zero
    /* 29DE9F8 8007945C F26C000C */  jal        func_8001B3C8
    /* 29DE9FC 80079460 000064AE */   sw        $a0, 0x0($s3)
    /* 29DEA00 80079464 16008012 */  beqz       $s4, .Llevel_35_800794C0
    /* 29DEA04 80079468 360071A6 */   sh        $s1, 0x36($s3)
    /* 29DEA08 8007946C 0680043C */  lui        $a0, %hi(D_80066F14)
    /* 29DEA0C 80079470 146F848C */  lw         $a0, %lo(D_80066F14)($a0)
    /* 29DEA10 80079474 00000000 */  nop
    /* 29DEA14 80079478 23208402 */  subu       $a0, $s4, $a0
    /* 29DEA18 8007947C 40190400 */  sll        $v1, $a0, 5
    /* 29DEA1C 80079480 23186400 */  subu       $v1, $v1, $a0
    /* 29DEA20 80079484 40190300 */  sll        $v1, $v1, 5
    /* 29DEA24 80079488 21186400 */  addu       $v1, $v1, $a0
    /* 29DEA28 8007948C C0100300 */  sll        $v0, $v1, 3
    /* 29DEA2C 80079490 21186200 */  addu       $v1, $v1, $v0
    /* 29DEA30 80079494 C0130300 */  sll        $v0, $v1, 15
    /* 29DEA34 80079498 23104300 */  subu       $v0, $v0, $v1
    /* 29DEA38 8007949C 80100200 */  sll        $v0, $v0, 2
    /* 29DEA3C 800794A0 21104400 */  addu       $v0, $v0, $a0
    /* 29DEA40 800794A4 23100200 */  negu       $v0, $v0
    /* 29DEA44 800794A8 C3180200 */  sra        $v1, $v0, 3
    /* 29DEA48 800794AC 0001622C */  sltiu      $v0, $v1, 0x100
    /* 29DEA4C 800794B0 04004010 */  beqz       $v0, .Llevel_35_800794C4
    /* 29DEA50 800794B4 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 29DEA54 800794B8 32E50108 */  j          .Llevel_35_800794C8
    /* 29DEA58 800794BC 3A0063A2 */   sb        $v1, 0x3A($s3)
  .Llevel_35_800794C0:
    /* 29DEA5C 800794C0 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_35_800794C4:
    /* 29DEA60 800794C4 3A0062A2 */  sb         $v0, 0x3A($s3)
  .Llevel_35_800794C8:
    /* 29DEA64 800794C8 72DD000C */  jal        func_800375C8
    /* 29DEA68 800794CC 21206002 */   addu      $a0, $s3, $zero
    /* 29DEA6C 800794D0 46010224 */  addiu      $v0, $zero, 0x146
    /* 29DEA70 800794D4 E7002212 */  beq        $s1, $v0, .Llevel_35_80079874
    /* 29DEA74 800794D8 4701222A */   slti      $v0, $s1, 0x147
    /* 29DEA78 800794DC 19004010 */  beqz       $v0, .Llevel_35_80079544
    /* 29DEA7C 800794E0 78000224 */   addiu     $v0, $zero, 0x78
    /* 29DEA80 800794E4 8B002212 */  beq        $s1, $v0, .Llevel_35_80079714
    /* 29DEA84 800794E8 7900222A */   slti      $v0, $s1, 0x79
    /* 29DEA88 800794EC 07004010 */  beqz       $v0, .Llevel_35_8007950C
    /* 29DEA8C 800794F0 1D000224 */   addiu     $v0, $zero, 0x1D
    /* 29DEA90 800794F4 66002212 */  beq        $s1, $v0, .Llevel_35_80079690
    /* 29DEA94 800794F8 63000224 */   addiu     $v0, $zero, 0x63
    /* 29DEA98 800794FC 72002212 */  beq        $s1, $v0, .Llevel_35_800796C8
    /* 29DEA9C 80079500 0C006426 */   addiu     $a0, $s3, 0xC
    /* 29DEAA0 80079504 E8E70108 */  j          .Llevel_35_80079FA0
    /* 29DEAA4 80079508 00000000 */   nop
  .Llevel_35_8007950C:
    /* 29DEAA8 8007950C D3000224 */  addiu      $v0, $zero, 0xD3
    /* 29DEAAC 80079510 2C002212 */  beq        $s1, $v0, .Llevel_35_800795C4
    /* 29DEAB0 80079514 D400222A */   slti      $v0, $s1, 0xD4
    /* 29DEAB4 80079518 05004010 */  beqz       $v0, .Llevel_35_80079530
    /* 29DEAB8 8007951C 81000224 */   addiu     $v0, $zero, 0x81
    /* 29DEABC 80079520 AF002212 */  beq        $s1, $v0, .Llevel_35_800797E0
    /* 29DEAC0 80079524 0C006426 */   addiu     $a0, $s3, 0xC
    /* 29DEAC4 80079528 E8E70108 */  j          .Llevel_35_80079FA0
    /* 29DEAC8 8007952C 00000000 */   nop
  .Llevel_35_80079530:
    /* 29DEACC 80079530 04010224 */  addiu      $v0, $zero, 0x104
    /* 29DEAD0 80079534 BA002212 */  beq        $s1, $v0, .Llevel_35_80079820
    /* 29DEAD4 80079538 00000000 */   nop
    /* 29DEAD8 8007953C E8E70108 */  j          .Llevel_35_80079FA0
    /* 29DEADC 80079540 00000000 */   nop
  .Llevel_35_80079544:
    /* 29DEAE0 80079544 07020224 */  addiu      $v0, $zero, 0x207
    /* 29DEAE4 80079548 FA012212 */  beq        $s1, $v0, .Llevel_35_80079D34
    /* 29DEAE8 8007954C 0802222A */   slti      $v0, $s1, 0x208
    /* 29DEAEC 80079550 0E004010 */  beqz       $v0, .Llevel_35_8007958C
    /* 29DEAF0 80079554 E3010224 */   addiu     $v0, $zero, 0x1E3
    /* 29DEAF4 80079558 41012212 */  beq        $s1, $v0, .Llevel_35_80079A60
    /* 29DEAF8 8007955C E401222A */   slti      $v0, $s1, 0x1E4
    /* 29DEAFC 80079560 05004010 */  beqz       $v0, .Llevel_35_80079578
    /* 29DEB00 80079564 E2010224 */   addiu     $v0, $zero, 0x1E2
    /* 29DEB04 80079568 26012212 */  beq        $s1, $v0, .Llevel_35_80079A04
    /* 29DEB08 8007956C 0C006426 */   addiu     $a0, $s3, 0xC
    /* 29DEB0C 80079570 E8E70108 */  j          .Llevel_35_80079FA0
    /* 29DEB10 80079574 00000000 */   nop
  .Llevel_35_80079578:
    /* 29DEB14 80079578 F7010224 */  addiu      $v0, $zero, 0x1F7
    /* 29DEB18 8007957C 00012212 */  beq        $s1, $v0, .Llevel_35_80079980
    /* 29DEB1C 80079580 0C006426 */   addiu     $a0, $s3, 0xC
    /* 29DEB20 80079584 E8E70108 */  j          .Llevel_35_80079FA0
    /* 29DEB24 80079588 00000000 */   nop
  .Llevel_35_8007958C:
    /* 29DEB28 8007958C 37020224 */  addiu      $v0, $zero, 0x237
    /* 29DEB2C 80079590 14022212 */  beq        $s1, $v0, .Llevel_35_80079DE4
    /* 29DEB30 80079594 3802222A */   slti      $v0, $s1, 0x238
    /* 29DEB34 80079598 05004010 */  beqz       $v0, .Llevel_35_800795B0
    /* 29DEB38 8007959C 1D020224 */   addiu     $v0, $zero, 0x21D
    /* 29DEB3C 800795A0 FC012212 */  beq        $s1, $v0, .Llevel_35_80079D94
    /* 29DEB40 800795A4 0C006426 */   addiu     $a0, $s3, 0xC
    /* 29DEB44 800795A8 E8E70108 */  j          .Llevel_35_80079FA0
    /* 29DEB48 800795AC 00000000 */   nop
  .Llevel_35_800795B0:
    /* 29DEB4C 800795B0 4E020224 */  addiu      $v0, $zero, 0x24E
    /* 29DEB50 800795B4 2F022212 */  beq        $s1, $v0, .Llevel_35_80079E74
    /* 29DEB54 800795B8 21208002 */   addu      $a0, $s4, $zero
    /* 29DEB58 800795BC E8E70108 */  j          .Llevel_35_80079FA0
    /* 29DEB5C 800795C0 00000000 */   nop
  .Llevel_35_800795C4:
    /* 29DEB60 800795C4 10000324 */  addiu      $v1, $zero, 0x10
    /* 29DEB64 800795C8 36006286 */  lh         $v0, 0x36($s3)
    /* 29DEB68 800795CC 0000718E */  lw         $s1, 0x0($s3)
    /* 29DEB6C 800795D0 18004314 */  bne        $v0, $v1, .Llevel_35_80079634
    /* 29DEB70 800795D4 00000000 */   nop
    /* 29DEB74 800795D8 0680043C */  lui        $a0, %hi(D_8006712C)
    /* 29DEB78 800795DC 2C71848C */  lw         $a0, %lo(D_8006712C)($a0)
    /* 29DEB7C 800795E0 00000000 */  nop
    /* 29DEB80 800795E4 04008228 */  slti       $v0, $a0, 0x4
    /* 29DEB84 800795E8 03004010 */  beqz       $v0, .Llevel_35_800795F8
    /* 29DEB88 800795EC 0A000324 */   addiu     $v1, $zero, 0xA
    /* 29DEB8C 800795F0 82E50108 */  j          .Llevel_35_80079608
    /* 29DEB90 800795F4 07000324 */   addiu     $v1, $zero, 0x7
  .Llevel_35_800795F8:
    /* 29DEB94 800795F8 07008228 */  slti       $v0, $a0, 0x7
    /* 29DEB98 800795FC 02004010 */  beqz       $v0, .Llevel_35_80079608
    /* 29DEB9C 80079600 00000000 */   nop
    /* 29DEBA0 80079604 09000324 */  addiu      $v1, $zero, 0x9
  .Llevel_35_80079608:
    /* 29DEBA4 80079608 0680043C */  lui        $a0, %hi(D_80061AAC)
    /* 29DEBA8 8007960C AC1A8424 */  addiu      $a0, $a0, %lo(D_80061AAC)
    /* 29DEBAC 80079610 0000828C */  lw         $v0, 0x0($a0)
    /* 29DEBB0 80079614 00000000 */  nop
    /* 29DEBB4 80079618 01004224 */  addiu      $v0, $v0, 0x1
    /* 29DEBB8 8007961C 000082AC */  sw         $v0, 0x0($a0)
    /* 29DEBBC 80079620 2A104300 */  slt        $v0, $v0, $v1
    /* 29DEBC0 80079624 03004014 */  bnez       $v0, .Llevel_35_80079634
    /* 29DEBC4 80079628 D3000224 */   addiu     $v0, $zero, 0xD3
    /* 29DEBC8 8007962C 000080AC */  sw         $zero, 0x0($a0)
    /* 29DEBCC 80079630 360062A6 */  sh         $v0, 0x36($s3)
  .Llevel_35_80079634:
    /* 29DEBD0 80079634 0E05010C */  jal        func_80041438
    /* 29DEBD4 80079638 21206002 */   addu      $a0, $s3, $zero
    /* 29DEBD8 8007963C 0C007026 */  addiu      $s0, $s3, 0xC
    /* 29DEBDC 80079640 21200002 */  addu       $a0, $s0, $zero
    /* 29DEBE0 80079644 6C6F000C */  jal        func_8001BDB0
    /* 29DEBE4 80079648 0C008526 */   addiu     $a1, $s4, 0xC
    /* 29DEBE8 8007964C 21202002 */  addu       $a0, $s1, $zero
    /* 29DEBEC 80079650 1400628E */  lw         $v0, 0x14($s3)
    /* 29DEBF0 80079654 21280002 */  addu       $a1, $s0, $zero
    /* 29DEBF4 80079658 00024224 */  addiu      $v0, $v0, 0x200
    /* 29DEBF8 8007965C 6C6F000C */  jal        func_8001BDB0
    /* 29DEBFC 80079660 140062AE */   sw        $v0, 0x14($s3)
    /* 29DEC00 80079664 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 29DEC04 80079668 1C0062AE */  sw         $v0, 0x1C($s3)
    /* 29DEC08 8007966C 02000224 */  addiu      $v0, $zero, 0x2
    /* 29DEC0C 80079670 470062A2 */  sb         $v0, 0x47($s3)
    /* 29DEC10 80079674 08070224 */  addiu      $v0, $zero, 0x708
    /* 29DEC14 80079678 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 29DEC18 8007967C 4B67010C */  jal        func_80059D2C
    /* 29DEC1C 80079680 110020A2 */   sb        $zero, 0x11($s1)
    /* 29DEC20 80079684 FC004230 */  andi       $v0, $v0, 0xFC
    /* 29DEC24 80079688 F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DEC28 8007968C 120022A2 */   sb        $v0, 0x12($s1)
  .Llevel_35_80079690:
    /* 29DEC2C 80079690 0C006426 */  addiu      $a0, $s3, 0xC
    /* 29DEC30 80079694 0000708E */  lw         $s0, 0x0($s3)
    /* 29DEC34 80079698 6C6F000C */  jal        func_8001BDB0
    /* 29DEC38 8007969C 0C008526 */   addiu     $a1, $s4, 0xC
    /* 29DEC3C 800796A0 0E05010C */  jal        func_80041438
    /* 29DEC40 800796A4 21206002 */   addu      $a0, $s3, $zero
    /* 29DEC44 800796A8 18000224 */  addiu      $v0, $zero, 0x18
    /* 29DEC48 800796AC 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 29DEC4C 800796B0 40000224 */  addiu      $v0, $zero, 0x40
    /* 29DEC50 800796B4 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 29DEC54 800796B8 02000224 */  addiu      $v0, $zero, 0x2
    /* 29DEC58 800796BC 540062A2 */  sb         $v0, 0x54($s3)
    /* 29DEC5C 800796C0 F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DEC60 800796C4 0C0000AE */   sw        $zero, 0xC($s0)
  .Llevel_35_800796C8:
    /* 29DEC64 800796C8 0000708E */  lw         $s0, 0x0($s3)
    /* 29DEC68 800796CC 6C6F000C */  jal        func_8001BDB0
    /* 29DEC6C 800796D0 0C008526 */   addiu     $a1, $s4, 0xC
    /* 29DEC70 800796D4 46008292 */  lbu        $v0, 0x46($s4)
    /* 29DEC74 800796D8 00000000 */  nop
    /* 29DEC78 800796DC 460062A2 */  sb         $v0, 0x46($s3)
    /* 29DEC7C 800796E0 4C008292 */  lbu        $v0, 0x4C($s4)
    /* 29DEC80 800796E4 00000000 */  nop
    /* 29DEC84 800796E8 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 29DEC88 800796EC 4E008292 */  lbu        $v0, 0x4E($s4)
    /* 29DEC8C 800796F0 21206002 */  addu       $a0, $s3, $zero
    /* 29DEC90 800796F4 0E05010C */  jal        func_80041438
    /* 29DEC94 800796F8 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* 29DEC98 800796FC 000014AE */  sw         $s4, 0x0($s0)
    /* 29DEC9C 80079700 53006292 */  lbu        $v0, 0x53($s3)
    /* 29DECA0 80079704 00000000 */  nop
    /* 29DECA4 80079708 80004234 */  ori        $v0, $v0, 0x80
    /* 29DECA8 8007970C F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DECAC 80079710 530062A2 */   sb        $v0, 0x53($s3)
  .Llevel_35_80079714:
    /* 29DECB0 80079714 0000708E */  lw         $s0, 0x0($s3)
    /* 29DECB4 80079718 0E05010C */  jal        func_80041438
    /* 29DECB8 8007971C 21206002 */   addu      $a0, $s3, $zero
    /* 29DECBC 80079720 78000224 */  addiu      $v0, $zero, 0x78
    /* 29DECC0 80079724 490060A2 */  sb         $zero, 0x49($s3)
    /* 29DECC4 80079728 000000A6 */  sh         $zero, 0x0($s0)
    /* 29DECC8 8007972C 080000A6 */  sh         $zero, 0x8($s0)
    /* 29DECCC 80079730 060000A6 */  sh         $zero, 0x6($s0)
    /* 29DECD0 80079734 040000A6 */  sh         $zero, 0x4($s0)
    /* 29DECD4 80079738 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 29DECD8 8007973C 100000AE */  sw         $zero, 0x10($s0)
    /* 29DECDC 80079740 06008012 */  beqz       $s4, .Llevel_35_8007975C
    /* 29DECE0 80079744 140000AE */   sw        $zero, 0x14($s0)
    /* 29DECE4 80079748 0C006426 */  addiu      $a0, $s3, 0xC
    /* 29DECE8 8007974C 6C6F000C */  jal        func_8001BDB0
    /* 29DECEC 80079750 0C008526 */   addiu     $a1, $s4, 0xC
    /* 29DECF0 80079754 F6E50108 */  j          .Llevel_35_800797D8
    /* 29DECF4 80079758 FF000224 */   addiu     $v0, $zero, 0xFF
  .Llevel_35_8007975C:
    /* 29DECF8 8007975C 0C006426 */  addiu      $a0, $s3, 0xC
    /* 29DECFC 80079760 0780053C */  lui        $a1, %hi(D_80069FFE)
    /* 29DED00 80079764 FE9FA524 */  addiu      $a1, $a1, %lo(D_80069FFE)
    /* 29DED04 80079768 0000A390 */  lbu        $v1, 0x0($a1)
    /* 29DED08 8007976C F2FFA524 */  addiu      $a1, $a1, -0xE
    /* 29DED0C 80079770 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 29DED10 80079774 FF006330 */  andi       $v1, $v1, 0xFF
    /* 29DED14 80079778 40180300 */  sll        $v1, $v1, 1
    /* 29DED18 8007977C 0680013C */  lui        $at, %hi(D_80061C58)
    /* 29DED1C 80079780 21082300 */  addu       $at, $at, $v1
    /* 29DED20 80079784 581C2784 */  lh         $a3, %lo(D_80061C58)($at)
    /* 29DED24 80079788 1000A627 */  addiu      $a2, $sp, 0x10
    /* 29DED28 8007978C 40110700 */  sll        $v0, $a3, 5
    /* 29DED2C 80079790 23104700 */  subu       $v0, $v0, $a3
    /* 29DED30 80079794 80100200 */  sll        $v0, $v0, 2
    /* 29DED34 80079798 21104700 */  addu       $v0, $v0, $a3
    /* 29DED38 8007979C 43120200 */  sra        $v0, $v0, 9
    /* 29DED3C 800797A0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 29DED40 800797A4 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 29DED44 800797A8 21082300 */  addu       $at, $at, $v1
    /* 29DED48 800797AC D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 29DED4C 800797B0 E8030224 */  addiu      $v0, $zero, 0x3E8
    /* 29DED50 800797B4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 29DED54 800797B8 40110300 */  sll        $v0, $v1, 5
    /* 29DED58 800797BC 23104300 */  subu       $v0, $v0, $v1
    /* 29DED5C 800797C0 80100200 */  sll        $v0, $v0, 2
    /* 29DED60 800797C4 21104300 */  addu       $v0, $v0, $v1
    /* 29DED64 800797C8 43120200 */  sra        $v0, $v0, 9
    /* 29DED68 800797CC 736F000C */  jal        func_8001BDCC
    /* 29DED6C 800797D0 1400A2AF */   sw        $v0, 0x14($sp)
    /* 29DED70 800797D4 FF000224 */  addiu      $v0, $zero, 0xFF
  .Llevel_35_800797D8:
    /* 29DED74 800797D8 F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DED78 800797DC 020002A2 */   sb        $v0, 0x2($s0)
  .Llevel_35_800797E0:
    /* 29DED7C 800797E0 6C6F000C */  jal        func_8001BDB0
    /* 29DED80 800797E4 0C008526 */   addiu     $a1, $s4, 0xC
    /* 29DED84 800797E8 0E05010C */  jal        func_80041438
    /* 29DED88 800797EC 21206002 */   addu      $a0, $s3, $zero
    /* 29DED8C 800797F0 003F023C */  lui        $v0, (0x3F005080 >> 16)
    /* 29DED90 800797F4 80504234 */  ori        $v0, $v0, (0x3F005080 & 0xFFFF)
    /* 29DED94 800797F8 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 29DED98 800797FC CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 29DED9C 80079800 40000424 */  addiu      $a0, $zero, 0x40
    /* 29DEDA0 80079804 4F0064A2 */  sb         $a0, 0x4F($s3)
    /* 29DEDA4 80079808 540062AE */  sw         $v0, 0x54($s3)
    /* 29DEDA8 8007980C 001C0300 */  sll        $v1, $v1, 16
    /* 29DEDAC 80079810 031D0300 */  sra        $v1, $v1, 20
    /* 29DEDB0 80079814 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 29DEDB4 80079818 F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DEDB8 8007981C 460063A2 */   sb        $v1, 0x46($s3)
  .Llevel_35_80079820:
    /* 29DEDBC 80079820 0E05010C */  jal        func_80041438
    /* 29DEDC0 80079824 21206002 */   addu      $a0, $s3, $zero
    /* 29DEDC4 80079828 02000224 */  addiu      $v0, $zero, 0x2
    /* 29DEDC8 8007982C 0E008012 */  beqz       $s4, .Llevel_35_80079868
    /* 29DEDCC 80079830 540062A2 */   sb        $v0, 0x54($s3)
    /* 29DEDD0 80079834 0C006426 */  addiu      $a0, $s3, 0xC
    /* 29DEDD4 80079838 0000628E */  lw         $v0, 0x0($s3)
    /* 29DEDD8 8007983C 0C008526 */  addiu      $a1, $s4, 0xC
    /* 29DEDDC 80079840 6C6F000C */  jal        func_8001BDB0
    /* 29DEDE0 80079844 000054AC */   sw        $s4, 0x0($v0)
    /* 29DEDE4 80079848 0A000224 */  addiu      $v0, $zero, 0xA
    /* 29DEDE8 8007984C 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 29DEDEC 80079850 1400628E */  lw         $v0, 0x14($s3)
    /* 29DEDF0 80079854 08000324 */  addiu      $v1, $zero, 0x8
    /* 29DEDF4 80079858 4C0063A2 */  sb         $v1, 0x4C($s3)
    /* 29DEDF8 8007985C 00044224 */  addiu      $v0, $v0, 0x400
    /* 29DEDFC 80079860 F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DEE00 80079864 140062AE */   sw        $v0, 0x14($s3)
  .Llevel_35_80079868:
    /* 29DEE04 80079868 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 29DEE08 8007986C F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DEE0C 80079870 1C0062AE */   sw        $v0, 0x1C($s3)
  .Llevel_35_80079874:
    /* 29DEE10 80079874 0C006426 */  addiu      $a0, $s3, 0xC
    /* 29DEE14 80079878 0000708E */  lw         $s0, 0x0($s3)
    /* 29DEE18 8007987C 6C6F000C */  jal        func_8001BDB0
    /* 29DEE1C 80079880 0C008526 */   addiu     $a1, $s4, 0xC
    /* 29DEE20 80079884 0E05010C */  jal        func_80041438
    /* 29DEE24 80079888 21206002 */   addu      $a0, $s3, $zero
    /* 29DEE28 8007988C 10000224 */  addiu      $v0, $zero, 0x10
    /* 29DEE2C 80079890 3B000324 */  addiu      $v1, $zero, 0x3B
    /* 29DEE30 80079894 000002A6 */  sh         $v0, 0x0($s0)
    /* 29DEE34 80079898 80000224 */  addiu      $v0, $zero, 0x80
    /* 29DEE38 8007989C 570063A2 */  sb         $v1, 0x57($s3)
    /* 29DEE3C 800798A0 540062A2 */  sb         $v0, 0x54($s3)
    /* 29DEE40 800798A4 550062A2 */  sb         $v0, 0x55($s3)
    /* 29DEE44 800798A8 560060A2 */  sb         $zero, 0x56($s3)
    /* 29DEE48 800798AC 36008486 */  lh         $a0, 0x36($s4)
    /* 29DEE4C 800798B0 98010224 */  addiu      $v0, $zero, 0x198
    /* 29DEE50 800798B4 04008210 */  beq        $a0, $v0, .Llevel_35_800798C8
    /* 29DEE54 800798B8 01000224 */   addiu     $v0, $zero, 0x1
    /* 29DEE58 800798BC C2020224 */  addiu      $v0, $zero, 0x2C2
    /* 29DEE5C 800798C0 05008214 */  bne        $a0, $v0, .Llevel_35_800798D8
    /* 29DEE60 800798C4 01000224 */   addiu     $v0, $zero, 0x1
  .Llevel_35_800798C8:
    /* 29DEE64 800798C8 020002A2 */  sb         $v0, 0x2($s0)
    /* 29DEE68 800798CC 030002A2 */  sb         $v0, 0x3($s0)
    /* 29DEE6C 800798D0 44E60108 */  j          .Llevel_35_80079910
    /* 29DEE70 800798D4 7F000224 */   addiu     $v0, $zero, 0x7F
  .Llevel_35_800798D8:
    /* 29DEE74 800798D8 70020224 */  addiu      $v0, $zero, 0x270
    /* 29DEE78 800798DC 0A008214 */  bne        $a0, $v0, .Llevel_35_80079908
    /* 29DEE7C 800798E0 60000224 */   addiu     $v0, $zero, 0x60
    /* 29DEE80 800798E4 02000224 */  addiu      $v0, $zero, 0x2
    /* 29DEE84 800798E8 020002A2 */  sb         $v0, 0x2($s0)
    /* 29DEE88 800798EC E0000224 */  addiu      $v0, $zero, 0xE0
    /* 29DEE8C 800798F0 540062A2 */  sb         $v0, 0x54($s3)
    /* 29DEE90 800798F4 550062A2 */  sb         $v0, 0x55($s3)
    /* 29DEE94 800798F8 560062A2 */  sb         $v0, 0x56($s3)
    /* 29DEE98 800798FC 60000224 */  addiu      $v0, $zero, 0x60
    /* 29DEE9C 80079900 43E60108 */  j          .Llevel_35_8007990C
    /* 29DEEA0 80079904 570063A2 */   sb        $v1, 0x57($s3)
  .Llevel_35_80079908:
    /* 29DEEA4 80079908 020000A2 */  sb         $zero, 0x2($s0)
  .Llevel_35_8007990C:
    /* 29DEEA8 8007990C 030000A2 */  sb         $zero, 0x3($s0)
  .Llevel_35_80079910:
    /* 29DEEAC 80079910 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 29DEEB0 80079914 0C006426 */  addiu      $a0, $s3, 0xC
    /* 29DEEB4 80079918 0680103C */  lui        $s0, %hi(D_80067EAC)
    /* 29DEEB8 8007991C AC7E1026 */  addiu      $s0, $s0, %lo(D_80067EAC)
    /* 29DEEBC 80079920 21280002 */  addu       $a1, $s0, $zero
    /* 29DEEC0 80079924 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 29DEEC4 80079928 DB6F000C */  jal        func_8001BF6C
    /* 29DEEC8 8007992C 470062A2 */   sb        $v0, 0x47($s3)
    /* 29DEECC 80079930 21204000 */  addu       $a0, $v0, $zero
    /* 29DEED0 80079934 0680023C */  lui        $v0, %hi(D_80067EB4)
    /* 29DEED4 80079938 B47E428C */  lw         $v0, %lo(D_80067EB4)($v0)
    /* 29DEED8 8007993C 1400658E */  lw         $a1, 0x14($s3)
    /* 29DEEDC 80079940 21300000 */  addu       $a2, $zero, $zero
    /* 29DEEE0 80079944 2E6D000C */  jal        func_8001B4B8
    /* 29DEEE4 80079948 23284500 */   subu      $a1, $v0, $a1
    /* 29DEEE8 8007994C 21300000 */  addu       $a2, $zero, $zero
    /* 29DEEEC 80079950 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 29DEEF0 80079954 450062A2 */  sb         $v0, 0x45($s3)
    /* 29DEEF4 80079958 0000038E */  lw         $v1, 0x0($s0)
    /* 29DEEF8 8007995C 0C00648E */  lw         $a0, 0xC($s3)
    /* 29DEEFC 80079960 0680023C */  lui        $v0, %hi(D_80067EB0)
    /* 29DEF00 80079964 B07E428C */  lw         $v0, %lo(D_80067EB0)($v0)
    /* 29DEF04 80079968 1000658E */  lw         $a1, 0x10($s3)
    /* 29DEF08 8007996C 23206400 */  subu       $a0, $v1, $a0
    /* 29DEF0C 80079970 2E6D000C */  jal        func_8001B4B8
    /* 29DEF10 80079974 23284500 */   subu      $a1, $v0, $a1
    /* 29DEF14 80079978 F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DEF18 8007997C 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_35_80079980:
    /* 29DEF1C 80079980 0C008526 */  addiu      $a1, $s4, 0xC
    /* 29DEF20 80079984 0000708E */  lw         $s0, 0x0($s3)
    /* 29DEF24 80079988 20000224 */  addiu      $v0, $zero, 0x20
    /* 29DEF28 8007998C 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 29DEF2C 80079990 03000224 */  addiu      $v0, $zero, 0x3
    /* 29DEF30 80079994 6C6F000C */  jal        func_8001BDB0
    /* 29DEF34 80079998 490062A2 */   sb        $v0, 0x49($s3)
    /* 29DEF38 8007999C 0E05010C */  jal        func_80041438
    /* 29DEF3C 800799A0 21206002 */   addu      $a0, $s3, $zero
    /* 29DEF40 800799A4 46008292 */  lbu        $v0, 0x46($s4)
    /* 29DEF44 800799A8 4B67010C */  jal        func_80059D2C
    /* 29DEF48 800799AC 460062A2 */   sb        $v0, 0x46($s3)
    /* 29DEF4C 800799B0 02004230 */  andi       $v0, $v0, 0x2
    /* 29DEF50 800799B4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 29DEF54 800799B8 4B67010C */  jal        func_80059D2C
    /* 29DEF58 800799BC 060002A6 */   sh        $v0, 0x6($s0)
    /* 29DEF5C 800799C0 02004230 */  andi       $v0, $v0, 0x2
    /* 29DEF60 800799C4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 29DEF64 800799C8 4B67010C */  jal        func_80059D2C
    /* 29DEF68 800799CC 080002A6 */   sh        $v0, 0x8($s0)
    /* 29DEF6C 800799D0 02004230 */  andi       $v0, $v0, 0x2
    /* 29DEF70 800799D4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 29DEF74 800799D8 0A0002A6 */  sh         $v0, 0xA($s0)
    /* 29DEF78 800799DC 1400828E */  lw         $v0, 0x14($s4)
    /* 29DEF7C 800799E0 00000000 */  nop
    /* 29DEF80 800799E4 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 29DEF84 800799E8 4B67010C */  jal        func_80059D2C
    /* 29DEF88 800799EC 100002AE */   sw        $v0, 0x10($s0)
    /* 29DEF8C 800799F0 0F004230 */  andi       $v0, $v0, 0xF
    /* 29DEF90 800799F4 20000324 */  addiu      $v1, $zero, 0x20
    /* 29DEF94 800799F8 23186200 */  subu       $v1, $v1, $v0
    /* 29DEF98 800799FC F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DEF9C 80079A00 0C0003AE */   sw        $v1, 0xC($s0)
  .Llevel_35_80079A04:
    /* 29DEFA0 80079A04 0000708E */  lw         $s0, 0x0($s3)
    /* 29DEFA4 80079A08 6C6F000C */  jal        func_8001BDB0
    /* 29DEFA8 80079A0C 0C008526 */   addiu     $a1, $s4, 0xC
    /* 29DEFAC 80079A10 0E05010C */  jal        func_80041438
    /* 29DEFB0 80079A14 21206002 */   addu      $a0, $s3, $zero
    /* 29DEFB4 80079A18 10000224 */  addiu      $v0, $zero, 0x10
    /* 29DEFB8 80079A1C 000002AE */  sw         $v0, 0x0($s0)
    /* 29DEFBC 80079A20 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 29DEFC0 80079A24 570062A2 */  sb         $v0, 0x57($s3)
    /* 29DEFC4 80079A28 80000224 */  addiu      $v0, $zero, 0x80
    /* 29DEFC8 80079A2C 540062A2 */  sb         $v0, 0x54($s3)
    /* 29DEFCC 80079A30 40000224 */  addiu      $v0, $zero, 0x40
    /* 29DEFD0 80079A34 550062A2 */  sb         $v0, 0x55($s3)
    /* 29DEFD4 80079A38 4B67010C */  jal        func_80059D2C
    /* 29DEFD8 80079A3C 560060A2 */   sb        $zero, 0x56($s3)
    /* 29DEFDC 80079A40 4B67010C */  jal        func_80059D2C
    /* 29DEFE0 80079A44 450062A2 */   sb        $v0, 0x45($s3)
    /* 29DEFE4 80079A48 460062A2 */  sb         $v0, 0x46($s3)
    /* 29DEFE8 80079A4C 46000224 */  addiu      $v0, $zero, 0x46
    /* 29DEFEC 80079A50 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 29DEFF0 80079A54 04000224 */  addiu      $v0, $zero, 0x4
    /* 29DEFF4 80079A58 F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DEFF8 80079A5C 470062A2 */   sb        $v0, 0x47($s3)
  .Llevel_35_80079A60:
    /* 29DEFFC 80079A60 0000728E */  lw         $s2, 0x0($s3)
    /* 29DF000 80079A64 0E05010C */  jal        func_80041438
    /* 29DF004 80079A68 21206002 */   addu      $a0, $s3, $zero
    /* 29DF008 80079A6C 40000224 */  addiu      $v0, $zero, 0x40
    /* 29DF00C 80079A70 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 29DF010 80079A74 9C008016 */  bnez       $s4, .Llevel_35_80079CE8
    /* 29DF014 80079A78 4E0062A2 */   sb        $v0, 0x4E($s3)
    /* 29DF018 80079A7C B8010224 */  addiu      $v0, $zero, 0x1B8
    /* 29DF01C 80079A80 0680053C */  lui        $a1, %hi(D_80067ED0)
    /* 29DF020 80079A84 D07EA524 */  addiu      $a1, $a1, %lo(D_80067ED0)
    /* 29DF024 80079A88 1000A2AF */  sw         $v0, 0x10($sp)
    /* 29DF028 80079A8C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 29DF02C 80079A90 1800A0AF */  sw         $zero, 0x18($sp)
    /* 29DF030 80079A94 0000A38C */  lw         $v1, 0x0($a1)
    /* 29DF034 80079A98 07000224 */  addiu      $v0, $zero, 0x7
    /* 29DF038 80079A9C 25006214 */  bne        $v1, $v0, .Llevel_35_80079B34
    /* 29DF03C 80079AA0 0C006426 */   addiu     $a0, $s3, 0xC
    /* 29DF040 80079AA4 0C007026 */  addiu      $s0, $s3, 0xC
    /* 29DF044 80079AA8 21200002 */  addu       $a0, $s0, $zero
    /* 29DF048 80079AAC 6C6F000C */  jal        func_8001BDB0
    /* 29DF04C 80079AB0 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 29DF050 80079AB4 4000A427 */  addiu      $a0, $sp, 0x40
    /* 29DF054 80079AB8 2000B127 */  addiu      $s1, $sp, 0x20
    /* 29DF058 80079ABC 21282002 */  addu       $a1, $s1, $zero
    /* 29DF05C 80079AC0 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* 29DF060 80079AC4 CC7E6394 */  lhu        $v1, %lo(D_80067ECC)($v1)
    /* 29DF064 80079AC8 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* 29DF068 80079ACC CA7E4294 */  lhu        $v0, %lo(D_80067ECA)($v0)
    /* 29DF06C 80079AD0 21300000 */  addu       $a2, $zero, $zero
    /* 29DF070 80079AD4 4000A0A3 */  sb         $zero, 0x40($sp)
    /* 29DF074 80079AD8 02190300 */  srl        $v1, $v1, 4
    /* 29DF078 80079ADC 00140200 */  sll        $v0, $v0, 16
    /* 29DF07C 80079AE0 03150200 */  sra        $v0, $v0, 20
    /* 29DF080 80079AE4 23100200 */  negu       $v0, $v0
    /* 29DF084 80079AE8 4100A2A3 */  sb         $v0, 0x41($sp)
    /* 29DF088 80079AEC B26D000C */  jal        func_8001B6C8
    /* 29DF08C 80079AF0 4200A3A3 */   sb        $v1, 0x42($sp)
    /* 29DF090 80079AF4 21202002 */  addu       $a0, $s1, $zero
    /* 29DF094 80079AF8 1000A527 */  addiu      $a1, $sp, 0x10
    /* 29DF098 80079AFC 696E000C */  jal        func_8001B9A4
    /* 29DF09C 80079B00 2130A000 */   addu      $a2, $a1, $zero
    /* 29DF0A0 80079B04 21200002 */  addu       $a0, $s0, $zero
    /* 29DF0A4 80079B08 21280002 */  addu       $a1, $s0, $zero
    /* 29DF0A8 80079B0C 736F000C */  jal        func_8001BDCC
    /* 29DF0AC 80079B10 1000A627 */   addiu     $a2, $sp, 0x10
    /* 29DF0B0 80079B14 21200002 */  addu       $a0, $s0, $zero
    /* 29DF0B4 80079B18 21280002 */  addu       $a1, $s0, $zero
    /* 29DF0B8 80079B1C 736F000C */  jal        func_8001BDCC
    /* 29DF0BC 80079B20 1000A627 */   addiu     $a2, $sp, 0x10
    /* 29DF0C0 80079B24 21200002 */  addu       $a0, $s0, $zero
    /* 29DF0C4 80079B28 21288000 */  addu       $a1, $a0, $zero
    /* 29DF0C8 80079B2C F5E60108 */  j          .Llevel_35_80079BD4
    /* 29DF0CC 80079B30 1000A627 */   addiu     $a2, $sp, 0x10
  .Llevel_35_80079B34:
    /* 29DF0D0 80079B34 6C6F000C */  jal        func_8001BDB0
    /* 29DF0D4 80079B38 DCFFA524 */   addiu     $a1, $a1, -0x24
    /* 29DF0D8 80079B3C 0780033C */  lui        $v1, %hi(D_80069FFD)
    /* 29DF0DC 80079B40 FD9F6390 */  lbu        $v1, %lo(D_80069FFD)($v1)
    /* 29DF0E0 80079B44 0780023C */  lui        $v0, %hi(D_8006A0B0)
    /* 29DF0E4 80079B48 B0A0428C */  lw         $v0, %lo(D_8006A0B0)($v0)
    /* 29DF0E8 80079B4C 6800A0A3 */  sb         $zero, 0x68($sp)
    /* 29DF0EC 80079B50 07004014 */  bnez       $v0, .Llevel_35_80079B70
    /* 29DF0F0 80079B54 6900A3A3 */   sb        $v1, 0x69($sp)
    /* 29DF0F4 80079B58 FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 29DF0F8 80079B5C FF004230 */  andi       $v0, $v0, 0xFF
    /* 29DF0FC 80079B60 F900422C */  sltiu      $v0, $v0, 0xF9
    /* 29DF100 80079B64 03004014 */  bnez       $v0, .Llevel_35_80079B74
    /* 29DF104 80079B68 6800A427 */   addiu     $a0, $sp, 0x68
    /* 29DF108 80079B6C 6900A0A3 */  sb         $zero, 0x69($sp)
  .Llevel_35_80079B70:
    /* 29DF10C 80079B70 6800A427 */  addiu      $a0, $sp, 0x68
  .Llevel_35_80079B74:
    /* 29DF110 80079B74 4800B027 */  addiu      $s0, $sp, 0x48
    /* 29DF114 80079B78 21280002 */  addu       $a1, $s0, $zero
    /* 29DF118 80079B7C 0780113C */  lui        $s1, %hi(D_80069FFE)
    /* 29DF11C 80079B80 FE9F3126 */  addiu      $s1, $s1, %lo(D_80069FFE)
    /* 29DF120 80079B84 00002292 */  lbu        $v0, 0x0($s1)
    /* 29DF124 80079B88 21300000 */  addu       $a2, $zero, $zero
    /* 29DF128 80079B8C B26D000C */  jal        func_8001B6C8
    /* 29DF12C 80079B90 6A00A2A3 */   sb        $v0, 0x6A($sp)
    /* 29DF130 80079B94 21200002 */  addu       $a0, $s0, $zero
    /* 29DF134 80079B98 1000A527 */  addiu      $a1, $sp, 0x10
    /* 29DF138 80079B9C 696E000C */  jal        func_8001B9A4
    /* 29DF13C 80079BA0 2130A000 */   addu      $a2, $a1, $zero
    /* 29DF140 80079BA4 21200002 */  addu       $a0, $s0, $zero
    /* 29DF144 80079BA8 0C007026 */  addiu      $s0, $s3, 0xC
    /* 29DF148 80079BAC 21280002 */  addu       $a1, $s0, $zero
    /* 29DF14C 80079BB0 21300002 */  addu       $a2, $s0, $zero
    /* 29DF150 80079BB4 F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 29DF154 80079BB8 0C0062AE */  sw         $v0, 0xC($s3)
    /* 29DF158 80079BBC 100060AE */  sw         $zero, 0x10($s3)
    /* 29DF15C 80079BC0 696E000C */  jal        func_8001B9A4
    /* 29DF160 80079BC4 140060AE */   sw        $zero, 0x14($s3)
    /* 29DF164 80079BC8 21200002 */  addu       $a0, $s0, $zero
    /* 29DF168 80079BCC 21288000 */  addu       $a1, $a0, $zero
    /* 29DF16C 80079BD0 F2FF2626 */  addiu      $a2, $s1, -0xE
  .Llevel_35_80079BD4:
    /* 29DF170 80079BD4 736F000C */  jal        func_8001BDCC
    /* 29DF174 80079BD8 00000000 */   nop
    /* 29DF178 80079BDC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 29DF17C 80079BE0 886E000C */  jal        func_8001BA20
    /* 29DF180 80079BE4 21280000 */   addu      $a1, $zero, $zero
    /* 29DF184 80079BE8 21204000 */  addu       $a0, $v0, $zero
    /* 29DF188 80079BEC 1800A58F */  lw         $a1, 0x18($sp)
    /* 29DF18C 80079BF0 2E6D000C */  jal        func_8001B4B8
    /* 29DF190 80079BF4 21300000 */   addu      $a2, $zero, $zero
    /* 29DF194 80079BF8 450062A2 */  sb         $v0, 0x45($s3)
    /* 29DF198 80079BFC 1000A48F */  lw         $a0, 0x10($sp)
    /* 29DF19C 80079C00 1400A58F */  lw         $a1, 0x14($sp)
    /* 29DF1A0 80079C04 2E6D000C */  jal        func_8001B4B8
    /* 29DF1A4 80079C08 21300000 */   addu      $a2, $zero, $zero
    /* 29DF1A8 80079C0C 460062A2 */  sb         $v0, 0x46($s3)
    /* 29DF1AC 80079C10 1000A28F */  lw         $v0, 0x10($sp)
    /* 29DF1B0 80079C14 0680033C */  lui        $v1, %hi(D_80066F14)
    /* 29DF1B4 80079C18 146F638C */  lw         $v1, %lo(D_80066F14)($v1)
    /* 29DF1B8 80079C1C 0680043C */  lui        $a0, %hi(D_800670BC)
    /* 29DF1BC 80079C20 BC70848C */  lw         $a0, %lo(D_800670BC)($a0)
    /* 29DF1C0 80079C24 000042A6 */  sh         $v0, 0x0($s2)
    /* 29DF1C4 80079C28 1400A28F */  lw         $v0, 0x14($sp)
    /* 29DF1C8 80079C2C 00000000 */  nop
    /* 29DF1CC 80079C30 020042A6 */  sh         $v0, 0x2($s2)
    /* 29DF1D0 80079C34 1800A28F */  lw         $v0, 0x18($sp)
    /* 29DF1D4 80079C38 00000000 */  nop
    /* 29DF1D8 80079C3C 040042A6 */  sh         $v0, 0x4($s2)
    /* 29DF1DC 80079C40 2B106400 */  sltu       $v0, $v1, $a0
    /* 29DF1E0 80079C44 0A004010 */  beqz       $v0, .Llevel_35_80079C70
    /* 29DF1E4 80079C48 44010524 */   addiu     $a1, $zero, 0x144
    /* 29DF1E8 80079C4C 07040624 */  addiu      $a2, $zero, 0x407
  .Llevel_35_80079C50:
    /* 29DF1EC 80079C50 36006284 */  lh         $v0, 0x36($v1)
    /* 29DF1F0 80079C54 00000000 */  nop
    /* 29DF1F4 80079C58 05004610 */  beq        $v0, $a2, .Llevel_35_80079C70
    /* 29DF1F8 80079C5C 00000000 */   nop
    /* 29DF1FC 80079C60 58006324 */  addiu      $v1, $v1, 0x58
    /* 29DF200 80079C64 2B106400 */  sltu       $v0, $v1, $a0
    /* 29DF204 80079C68 F9FF4014 */  bnez       $v0, .Llevel_35_80079C50
    /* 29DF208 80079C6C 00000000 */   nop
  .Llevel_35_80079C70:
    /* 29DF20C 80079C70 13006010 */  beqz       $v1, .Llevel_35_80079CC0
    /* 29DF210 80079C74 40100500 */   sll       $v0, $a1, 1
    /* 29DF214 80079C78 0000678C */  lw         $a3, 0x0($v1)
    /* 29DF218 80079C7C 21104500 */  addu       $v0, $v0, $a1
    /* 29DF21C 80079C80 0000E38C */  lw         $v1, 0x0($a3)
    /* 29DF220 80079C84 40100200 */  sll        $v0, $v0, 1
    /* 29DF224 80079C88 21186500 */  addu       $v1, $v1, $a1
    /* 29DF228 80079C8C 0000E3AC */  sw         $v1, 0x0($a3)
    /* 29DF22C 80079C90 2A186200 */  slt        $v1, $v1, $v0
    /* 29DF230 80079C94 02006014 */  bnez       $v1, .Llevel_35_80079CA0
    /* 29DF234 80079C98 10004426 */   addiu     $a0, $s2, 0x10
    /* 29DF238 80079C9C 0000E0AC */  sw         $zero, 0x0($a3)
  .Llevel_35_80079CA0:
    /* 29DF23C 80079CA0 0400E524 */  addiu      $a1, $a3, 0x4
    /* 29DF240 80079CA4 0000E28C */  lw         $v0, 0x0($a3)
    /* 29DF244 80079CA8 08000624 */  addiu      $a2, $zero, 0x8
    /* 29DF248 80079CAC 0C004224 */  addiu      $v0, $v0, 0xC
    /* 29DF24C 80079CB0 2110E200 */  addu       $v0, $a3, $v0
    /* 29DF250 80079CB4 080042AE */  sw         $v0, 0x8($s2)
    /* 29DF254 80079CB8 036D000C */  jal        func_8001B40C
    /* 29DF258 80079CBC 000040AC */   sw        $zero, 0x0($v0)
  .Llevel_35_80079CC0:
    /* 29DF25C 80079CC0 21206002 */  addu       $a0, $s3, $zero
    /* 29DF260 80079CC4 21280000 */  addu       $a1, $zero, $zero
    /* 29DF264 80079CC8 21300000 */  addu       $a2, $zero, $zero
    /* 29DF268 80079CCC 6E000224 */  addiu      $v0, $zero, 0x6E
    /* 29DF26C 80079CD0 070042A2 */  sb         $v0, 0x7($s2)
    /* 29DF270 80079CD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 29DF274 80079CD8 9241010C */  jal        func_80050648
    /* 29DF278 80079CDC 4B0062A2 */   sb        $v0, 0x4B($s3)
    /* 29DF27C 80079CE0 F4E70108 */  j          .Llevel_35_80079FD0
    /* 29DF280 80079CE4 21106002 */   addu      $v0, $s3, $zero
  .Llevel_35_80079CE8:
    /* 29DF284 80079CE8 0C006426 */  addiu      $a0, $s3, 0xC
    /* 29DF288 80079CEC 6C6F000C */  jal        func_8001BDB0
    /* 29DF28C 80079CF0 0C008526 */   addiu     $a1, $s4, 0xC
    /* 29DF290 80079CF4 30000224 */  addiu      $v0, $zero, 0x30
    /* 29DF294 80079CF8 070042A2 */  sb         $v0, 0x7($s2)
    /* 29DF298 80079CFC 7F000224 */  addiu      $v0, $zero, 0x7F
    /* 29DF29C 80079D00 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 29DF2A0 80079D04 07004392 */  lbu        $v1, 0x7($s2)
    /* 29DF2A4 80079D08 00000000 */  nop
    /* 29DF2A8 80079D0C 40100300 */  sll        $v0, $v1, 1
    /* 29DF2AC 80079D10 21104300 */  addu       $v0, $v0, $v1
    /* 29DF2B0 80079D14 43100200 */  sra        $v0, $v0, 1
    /* 29DF2B4 80079D18 540062A2 */  sb         $v0, 0x54($s3)
    /* 29DF2B8 80079D1C 07004392 */  lbu        $v1, 0x7($s2)
    /* 29DF2BC 80079D20 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 29DF2C0 80079D24 560060A2 */  sb         $zero, 0x56($s3)
    /* 29DF2C4 80079D28 570062A2 */  sb         $v0, 0x57($s3)
    /* 29DF2C8 80079D2C F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DF2CC 80079D30 550063A2 */   sb        $v1, 0x55($s3)
  .Llevel_35_80079D34:
    /* 29DF2D0 80079D34 20008426 */  addiu      $a0, $s4, 0x20
    /* 29DF2D4 80079D38 2000B027 */  addiu      $s0, $sp, 0x20
    /* 29DF2D8 80079D3C 21280002 */  addu       $a1, $s0, $zero
    /* 29DF2DC 80079D40 21300002 */  addu       $a2, $s0, $zero
    /* 29DF2E0 80079D44 E00A0224 */  addiu      $v0, $zero, 0xAE0
    /* 29DF2E4 80079D48 2000A2AF */  sw         $v0, 0x20($sp)
    /* 29DF2E8 80079D4C 60FD0224 */  addiu      $v0, $zero, -0x2A0
    /* 29DF2EC 80079D50 2400A0AF */  sw         $zero, 0x24($sp)
    /* 29DF2F0 80079D54 696E000C */  jal        func_8001B9A4
    /* 29DF2F4 80079D58 2800A2AF */   sw        $v0, 0x28($sp)
    /* 29DF2F8 80079D5C 0C006426 */  addiu      $a0, $s3, 0xC
    /* 29DF2FC 80079D60 21280002 */  addu       $a1, $s0, $zero
    /* 29DF300 80079D64 736F000C */  jal        func_8001BDCC
    /* 29DF304 80079D68 0C008626 */   addiu     $a2, $s4, 0xC
    /* 29DF308 80079D6C 46008292 */  lbu        $v0, 0x46($s4)
    /* 29DF30C 80079D70 00000000 */  nop
    /* 29DF310 80079D74 460062A2 */  sb         $v0, 0x46($s3)
    /* 29DF314 80079D78 4C008292 */  lbu        $v0, 0x4C($s4)
    /* 29DF318 80079D7C 00000000 */  nop
    /* 29DF31C 80079D80 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 29DF320 80079D84 4E008292 */  lbu        $v0, 0x4E($s4)
    /* 29DF324 80079D88 21206002 */  addu       $a0, $s3, $zero
    /* 29DF328 80079D8C F1E70108 */  j          .Llevel_35_80079FC4
    /* 29DF32C 80079D90 4E0062A2 */   sb        $v0, 0x4E($s3)
  .Llevel_35_80079D94:
    /* 29DF330 80079D94 0000708E */  lw         $s0, 0x0($s3)
    /* 29DF334 80079D98 6C6F000C */  jal        func_8001BDB0
    /* 29DF338 80079D9C 0C008526 */   addiu     $a1, $s4, 0xC
    /* 29DF33C 80079DA0 0E05010C */  jal        func_80041438
    /* 29DF340 80079DA4 21206002 */   addu      $a0, $s3, $zero
    /* 29DF344 80079DA8 18000224 */  addiu      $v0, $zero, 0x18
    /* 29DF348 80079DAC 000002AE */  sw         $v0, 0x0($s0)
    /* 29DF34C 80079DB0 30000224 */  addiu      $v0, $zero, 0x30
    /* 29DF350 80079DB4 570062A2 */  sb         $v0, 0x57($s3)
    /* 29DF354 80079DB8 64000224 */  addiu      $v0, $zero, 0x64
    /* 29DF358 80079DBC 540060A2 */  sb         $zero, 0x54($s3)
    /* 29DF35C 80079DC0 550060A2 */  sb         $zero, 0x55($s3)
    /* 29DF360 80079DC4 560060A2 */  sb         $zero, 0x56($s3)
    /* 29DF364 80079DC8 4F0062A2 */  sb         $v0, 0x4F($s3)
    /* 29DF368 80079DCC 4B67010C */  jal        func_80059D2C
    /* 29DF36C 80079DD0 470060A2 */   sb        $zero, 0x47($s3)
    /* 29DF370 80079DD4 4B67010C */  jal        func_80059D2C
    /* 29DF374 80079DD8 450062A2 */   sb        $v0, 0x45($s3)
    /* 29DF378 80079DDC F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DF37C 80079DE0 460062A2 */   sb        $v0, 0x46($s3)
  .Llevel_35_80079DE4:
    /* 29DF380 80079DE4 0C006426 */  addiu      $a0, $s3, 0xC
    /* 29DF384 80079DE8 0000708E */  lw         $s0, 0x0($s3)
    /* 29DF388 80079DEC 6C6F000C */  jal        func_8001BDB0
    /* 29DF38C 80079DF0 0C008526 */   addiu     $a1, $s4, 0xC
    /* 29DF390 80079DF4 46008292 */  lbu        $v0, 0x46($s4)
    /* 29DF394 80079DF8 00000000 */  nop
    /* 29DF398 80079DFC 460062A2 */  sb         $v0, 0x46($s3)
    /* 29DF39C 80079E00 4C008292 */  lbu        $v0, 0x4C($s4)
    /* 29DF3A0 80079E04 21206002 */  addu       $a0, $s3, $zero
    /* 29DF3A4 80079E08 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 29DF3A8 80079E0C 4E008392 */  lbu        $v1, 0x4E($s4)
    /* 29DF3AC 80079E10 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 29DF3B0 80079E14 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 29DF3B4 80079E18 0E05010C */  jal        func_80041438
    /* 29DF3B8 80079E1C 4E0063A2 */   sb        $v1, 0x4E($s3)
    /* 29DF3BC 80079E20 46006392 */  lbu        $v1, 0x46($s3)
    /* 29DF3C0 80079E24 00000000 */  nop
    /* 29DF3C4 80079E28 80006324 */  addiu      $v1, $v1, 0x80
    /* 29DF3C8 80079E2C FF006330 */  andi       $v1, $v1, 0xFF
    /* 29DF3CC 80079E30 40180300 */  sll        $v1, $v1, 1
    /* 29DF3D0 80079E34 0680013C */  lui        $at, %hi(D_80061C58)
    /* 29DF3D4 80079E38 21082300 */  addu       $at, $at, $v1
    /* 29DF3D8 80079E3C 581C2284 */  lh         $v0, %lo(D_80061C58)($at)
    /* 29DF3DC 80079E40 00000000 */  nop
    /* 29DF3E0 80079E44 43110200 */  sra        $v0, $v0, 5
    /* 29DF3E4 80079E48 000002AE */  sw         $v0, 0x0($s0)
    /* 29DF3E8 80079E4C 0680013C */  lui        $at, %hi(D_80061BD8)
    /* 29DF3EC 80079E50 21082300 */  addu       $at, $at, $v1
    /* 29DF3F0 80079E54 D81B2384 */  lh         $v1, %lo(D_80061BD8)($at)
    /* 29DF3F4 80079E58 80000224 */  addiu      $v0, $zero, 0x80
    /* 29DF3F8 80079E5C 080002AE */  sw         $v0, 0x8($s0)
    /* 29DF3FC 80079E60 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 29DF400 80079E64 0C0002AE */  sw         $v0, 0xC($s0)
    /* 29DF404 80079E68 43190300 */  sra        $v1, $v1, 5
    /* 29DF408 80079E6C F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DF40C 80079E70 040003AE */   sw        $v1, 0x4($s0)
  .Llevel_35_80079E74:
    /* 29DF410 80079E74 21280000 */  addu       $a1, $zero, $zero
    /* 29DF414 80079E78 0C007226 */  addiu      $s2, $s3, 0xC
    /* 29DF418 80079E7C 0000758E */  lw         $s5, 0x0($s3)
    /* 29DF41C 80079E80 0000918E */  lw         $s1, 0x0($s4)
    /* 29DF420 80079E84 CC05010C */  jal        func_80041730
    /* 29DF424 80079E88 21304002 */   addu      $a2, $s2, $zero
    /* 29DF428 80079E8C 21280000 */  addu       $a1, $zero, $zero
    /* 29DF42C 80079E90 3000B027 */  addiu      $s0, $sp, 0x30
    /* 29DF430 80079E94 2000248E */  lw         $a0, 0x20($s1)
    /* 29DF434 80079E98 CC05010C */  jal        func_80041730
    /* 29DF438 80079E9C 21300002 */   addu      $a2, $s0, $zero
    /* 29DF43C 80079EA0 01000524 */  addiu      $a1, $zero, 0x1
    /* 29DF440 80079EA4 2000248E */  lw         $a0, 0x20($s1)
    /* 29DF444 80079EA8 7000B127 */  addiu      $s1, $sp, 0x70
    /* 29DF448 80079EAC CC05010C */  jal        func_80041730
    /* 29DF44C 80079EB0 21302002 */   addu      $a2, $s1, $zero
    /* 29DF450 80079EB4 21200002 */  addu       $a0, $s0, $zero
    /* 29DF454 80079EB8 21280002 */  addu       $a1, $s0, $zero
    /* 29DF458 80079EBC 736F000C */  jal        func_8001BDCC
    /* 29DF45C 80079EC0 21302002 */   addu      $a2, $s1, $zero
    /* 29DF460 80079EC4 21200002 */  addu       $a0, $s0, $zero
    /* 29DF464 80079EC8 526F000C */  jal        func_8001BD48
    /* 29DF468 80079ECC 01000524 */   addiu     $a1, $zero, 0x1
    /* 29DF46C 80079ED0 21200002 */  addu       $a0, $s0, $zero
    /* 29DF470 80079ED4 21280002 */  addu       $a1, $s0, $zero
    /* 29DF474 80079ED8 806F000C */  jal        func_8001BE00
    /* 29DF478 80079EDC 21304002 */   addu      $a2, $s2, $zero
    /* 29DF47C 80079EE0 3000A48F */  lw         $a0, 0x30($sp)
    /* 29DF480 80079EE4 3400A58F */  lw         $a1, 0x34($sp)
    /* 29DF484 80079EE8 2E6D000C */  jal        func_8001B4B8
    /* 29DF488 80079EEC 21300000 */   addu      $a2, $zero, $zero
    /* 29DF48C 80079EF0 21200002 */  addu       $a0, $s0, $zero
    /* 29DF490 80079EF4 21280000 */  addu       $a1, $zero, $zero
    /* 29DF494 80079EF8 886E000C */  jal        func_8001BA20
    /* 29DF498 80079EFC 460062A2 */   sb        $v0, 0x46($s3)
    /* 29DF49C 80079F00 21204000 */  addu       $a0, $v0, $zero
    /* 29DF4A0 80079F04 3800A58F */  lw         $a1, 0x38($sp)
    /* 29DF4A4 80079F08 2E6D000C */  jal        func_8001B4B8
    /* 29DF4A8 80079F0C 21300000 */   addu      $a2, $zero, $zero
    /* 29DF4AC 80079F10 21200002 */  addu       $a0, $s0, $zero
    /* 29DF4B0 80079F14 450062A2 */  sb         $v0, 0x45($s3)
    /* 29DF4B4 80079F18 4C008292 */  lbu        $v0, 0x4C($s4)
    /* 29DF4B8 80079F1C 01000524 */  addiu      $a1, $zero, 0x1
    /* 29DF4BC 80079F20 4C0062A2 */  sb         $v0, 0x4C($s3)
    /* 29DF4C0 80079F24 4E008392 */  lbu        $v1, 0x4E($s4)
    /* 29DF4C4 80079F28 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 29DF4C8 80079F2C 4A0062A2 */  sb         $v0, 0x4A($s3)
    /* 29DF4CC 80079F30 886E000C */  jal        func_8001BA20
    /* 29DF4D0 80079F34 4E0063A2 */   sb        $v1, 0x4E($s3)
    /* 29DF4D4 80079F38 21184000 */  addu       $v1, $v0, $zero
    /* 29DF4D8 80079F3C 00046228 */  slti       $v0, $v1, 0x400
    /* 29DF4DC 80079F40 03004010 */  beqz       $v0, .Llevel_35_80079F50
    /* 29DF4E0 80079F44 01206228 */   slti      $v0, $v1, 0x2001
    /* 29DF4E4 80079F48 00040324 */  addiu      $v1, $zero, 0x400
    /* 29DF4E8 80079F4C 01206228 */  slti       $v0, $v1, 0x2001
  .Llevel_35_80079F50:
    /* 29DF4EC 80079F50 02004014 */  bnez       $v0, .Llevel_35_80079F5C
    /* 29DF4F0 80079F54 0200023C */   lui       $v0, (0x20000 >> 16)
    /* 29DF4F4 80079F58 00200324 */  addiu      $v1, $zero, 0x2000
  .Llevel_35_80079F5C:
    /* 29DF4F8 80079F5C 1A004300 */  div        $zero, $v0, $v1
    /* 29DF4FC 80079F60 02006014 */  bnez       $v1, .Llevel_35_80079F6C
    /* 29DF500 80079F64 00000000 */   nop
    /* 29DF504 80079F68 0D000700 */  break      7
  .Llevel_35_80079F6C:
    /* 29DF508 80079F6C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 29DF50C 80079F70 04006114 */  bne        $v1, $at, .Llevel_35_80079F84
    /* 29DF510 80079F74 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 29DF514 80079F78 02004114 */  bne        $v0, $at, .Llevel_35_80079F84
    /* 29DF518 80079F7C 00000000 */   nop
    /* 29DF51C 80079F80 0D000600 */  break      6
  .Llevel_35_80079F84:
    /* 29DF520 80079F84 12100000 */  mflo       $v0
    /* 29DF524 80079F88 21206002 */  addu       $a0, $s3, $zero
    /* 29DF528 80079F8C 0E05010C */  jal        func_80041438
    /* 29DF52C 80079F90 4F0062A2 */   sb        $v0, 0x4F($s3)
    /* 29DF530 80079F94 08000224 */  addiu      $v0, $zero, 0x8
    /* 29DF534 80079F98 F3E70108 */  j          .Llevel_35_80079FCC
    /* 29DF538 80079F9C 0000A2AE */   sw        $v0, 0x0($s5)
  .Llevel_35_80079FA0:
    /* 29DF53C 80079FA0 03008012 */  beqz       $s4, .Llevel_35_80079FB0
    /* 29DF540 80079FA4 0C006426 */   addiu     $a0, $s3, 0xC
    /* 29DF544 80079FA8 EEE70108 */  j          .Llevel_35_80079FB8
    /* 29DF548 80079FAC 0C008526 */   addiu     $a1, $s4, 0xC
  .Llevel_35_80079FB0:
    /* 29DF54C 80079FB0 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 29DF550 80079FB4 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
  .Llevel_35_80079FB8:
    /* 29DF554 80079FB8 6C6F000C */  jal        func_8001BDB0
    /* 29DF558 80079FBC 00000000 */   nop
    /* 29DF55C 80079FC0 21206002 */  addu       $a0, $s3, $zero
  .Llevel_35_80079FC4:
    /* 29DF560 80079FC4 0E05010C */  jal        func_80041438
    /* 29DF564 80079FC8 00000000 */   nop
  .Llevel_35_80079FCC:
    /* 29DF568 80079FCC 21106002 */  addu       $v0, $s3, $zero
  .Llevel_35_80079FD0:
    /* 29DF56C 80079FD0 9800BF8F */  lw         $ra, 0x98($sp)
    /* 29DF570 80079FD4 9400B58F */  lw         $s5, 0x94($sp)
    /* 29DF574 80079FD8 9000B48F */  lw         $s4, 0x90($sp)
    /* 29DF578 80079FDC 8C00B38F */  lw         $s3, 0x8C($sp)
    /* 29DF57C 80079FE0 8800B28F */  lw         $s2, 0x88($sp)
    /* 29DF580 80079FE4 8400B18F */  lw         $s1, 0x84($sp)
    /* 29DF584 80079FE8 8000B08F */  lw         $s0, 0x80($sp)
    /* 29DF588 80079FEC A000BD27 */  addiu      $sp, $sp, 0xA0
    /* 29DF58C 80079FF0 0800E003 */  jr         $ra
    /* 29DF590 80079FF4 00000000 */   nop
endlabel func_level_35_80079400
