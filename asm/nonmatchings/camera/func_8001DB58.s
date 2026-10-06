.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001DB58, 0x114

glabel func_8001DB58
    /* E358 8001DB58 0680023C */  lui        $v0, %hi((g_Camera + 0x150))
    /* E35C 8001DB5C D47F428C */  lw         $v0, %lo((g_Camera + 0x150))($v0)
    /* E360 8001DB60 00000000 */  nop
    /* E364 8001DB64 0D004014 */  bnez       $v0, .L8001DB9C
    /* E368 8001DB68 00000000 */   nop
    /* E36C 8001DB6C 0680023C */  lui        $v0, %hi((g_Camera + 0x90))
    /* E370 8001DB70 147F428C */  lw         $v0, %lo((g_Camera + 0x90))($v0)
    /* E374 8001DB74 0680033C */  lui        $v1, %hi((g_Camera + 0xA4))
    /* E378 8001DB78 287F638C */  lw         $v1, %lo((g_Camera + 0xA4))($v1)
    /* E37C 8001DB7C 00000000 */  nop
    /* E380 8001DB80 23104300 */  subu       $v0, $v0, $v1
    /* E384 8001DB84 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* E388 8001DB88 01086228 */  slti       $v0, $v1, 0x801
    /* E38C 8001DB8C 0680013C */  lui        $at, %hi((g_Camera + 0xB8))
    /* E390 8001DB90 3C7F23AC */  sw         $v1, %lo((g_Camera + 0xB8))($at)
    /* E394 8001DB94 03004014 */  bnez       $v0, .L8001DBA4
    /* E398 8001DB98 00F06224 */   addiu     $v0, $v1, -0x1000
  .L8001DB9C:
    /* E39C 8001DB9C 0680013C */  lui        $at, %hi((g_Camera + 0xB8))
    /* E3A0 8001DBA0 3C7F22AC */  sw         $v0, %lo((g_Camera + 0xB8))($at)
  .L8001DBA4:
    /* E3A4 8001DBA4 0680023C */  lui        $v0, %hi((g_Camera + 0x98))
    /* E3A8 8001DBA8 1C7F428C */  lw         $v0, %lo((g_Camera + 0x98))($v0)
    /* E3AC 8001DBAC 0680043C */  lui        $a0, %hi((g_Camera + 0xAC))
    /* E3B0 8001DBB0 307F848C */  lw         $a0, %lo((g_Camera + 0xAC))($a0)
    /* E3B4 8001DBB4 0680033C */  lui        $v1, %hi((g_Camera + 0x94))
    /* E3B8 8001DBB8 187F638C */  lw         $v1, %lo((g_Camera + 0x94))($v1)
    /* E3BC 8001DBBC 0680053C */  lui        $a1, %hi((g_Camera + 0xA8))
    /* E3C0 8001DBC0 2C7FA58C */  lw         $a1, %lo((g_Camera + 0xA8))($a1)
    /* E3C4 8001DBC4 23104400 */  subu       $v0, $v0, $a0
    /* E3C8 8001DBC8 23186500 */  subu       $v1, $v1, $a1
    /* E3CC 8001DBCC FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* E3D0 8001DBD0 0680013C */  lui        $at, %hi((g_Camera + 0xC0))
    /* E3D4 8001DBD4 447F22AC */  sw         $v0, %lo((g_Camera + 0xC0))($at)
    /* E3D8 8001DBD8 01086228 */  slti       $v0, $v1, 0x801
    /* E3DC 8001DBDC 0680013C */  lui        $at, %hi((g_Camera + 0xBC))
    /* E3E0 8001DBE0 407F23AC */  sw         $v1, %lo((g_Camera + 0xBC))($at)
    /* E3E4 8001DBE4 03004014 */  bnez       $v0, .L8001DBF4
    /* E3E8 8001DBE8 00F06224 */   addiu     $v0, $v1, -0x1000
    /* E3EC 8001DBEC 0680013C */  lui        $at, %hi((g_Camera + 0xBC))
    /* E3F0 8001DBF0 407F22AC */  sw         $v0, %lo((g_Camera + 0xBC))($at)
  .L8001DBF4:
    /* E3F4 8001DBF4 0680023C */  lui        $v0, %hi((g_Camera + 0x9C))
    /* E3F8 8001DBF8 207F428C */  lw         $v0, %lo((g_Camera + 0x9C))($v0)
    /* E3FC 8001DBFC 0680033C */  lui        $v1, %hi((g_Camera + 0xB0))
    /* E400 8001DC00 347F638C */  lw         $v1, %lo((g_Camera + 0xB0))($v1)
    /* E404 8001DC04 00000000 */  nop
    /* E408 8001DC08 23104300 */  subu       $v0, $v0, $v1
    /* E40C 8001DC0C FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* E410 8001DC10 01086228 */  slti       $v0, $v1, 0x801
    /* E414 8001DC14 0680013C */  lui        $at, %hi((g_Camera + 0xC4))
    /* E418 8001DC18 487F23AC */  sw         $v1, %lo((g_Camera + 0xC4))($at)
    /* E41C 8001DC1C 03004014 */  bnez       $v0, .L8001DC2C
    /* E420 8001DC20 00F06224 */   addiu     $v0, $v1, -0x1000
    /* E424 8001DC24 0680013C */  lui        $at, %hi((g_Camera + 0xC4))
    /* E428 8001DC28 487F22AC */  sw         $v0, %lo((g_Camera + 0xC4))($at)
  .L8001DC2C:
    /* E42C 8001DC2C 0680023C */  lui        $v0, %hi((g_Camera + 0xA0))
    /* E430 8001DC30 247F428C */  lw         $v0, %lo((g_Camera + 0xA0))($v0)
    /* E434 8001DC34 0680033C */  lui        $v1, %hi((g_Camera + 0xB4))
    /* E438 8001DC38 387F638C */  lw         $v1, %lo((g_Camera + 0xB4))($v1)
    /* E43C 8001DC3C 00000000 */  nop
    /* E440 8001DC40 23104300 */  subu       $v0, $v0, $v1
    /* E444 8001DC44 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* E448 8001DC48 01086228 */  slti       $v0, $v1, 0x801
    /* E44C 8001DC4C 0680013C */  lui        $at, %hi((g_Camera + 0xC8))
    /* E450 8001DC50 4C7F23AC */  sw         $v1, %lo((g_Camera + 0xC8))($at)
    /* E454 8001DC54 03004014 */  bnez       $v0, .L8001DC64
    /* E458 8001DC58 00F06224 */   addiu     $v0, $v1, -0x1000
    /* E45C 8001DC5C 0680013C */  lui        $at, %hi((g_Camera + 0xC8))
    /* E460 8001DC60 4C7F22AC */  sw         $v0, %lo((g_Camera + 0xC8))($at)
  .L8001DC64:
    /* E464 8001DC64 0800E003 */  jr         $ra
    /* E468 8001DC68 00000000 */   nop
endlabel func_8001DB58
