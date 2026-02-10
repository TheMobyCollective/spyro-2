.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BDBC, 0x48

glabel func_8002BDBC
    /* 1C5BC 8002BDBC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1C5C0 8002BDC0 0780053C */  lui        $a1, %hi(D_8006A078)
    /* 1C5C4 8002BDC4 78A0A524 */  addiu      $a1, $a1, %lo(D_8006A078)
    /* 1C5C8 8002BDC8 A8FFA424 */  addiu      $a0, $a1, -0x58
    /* 1C5CC 8002BDCC 0780023C */  lui        $v0, %hi(D_8006A0A8)
    /* 1C5D0 8002BDD0 A8A0428C */  lw         $v0, %lo(D_8006A0A8)($v0)
    /* 1C5D4 8002BDD4 2130A000 */  addu       $a2, $a1, $zero
    /* 1C5D8 8002BDD8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1C5DC 8002BDDC 0780013C */  lui        $at, %hi(D_8006A07C)
    /* 1C5E0 8002BDE0 7CA020AC */  sw         $zero, %lo(D_8006A07C)($at)
    /* 1C5E4 8002BDE4 0780013C */  lui        $at, %hi(D_8006A080)
    /* 1C5E8 8002BDE8 80A020AC */  sw         $zero, %lo(D_8006A080)($at)
    /* 1C5EC 8002BDEC 696E000C */  jal        func_8001B9A4
    /* 1C5F0 8002BDF0 0000A2AC */   sw        $v0, 0x0($a1)
    /* 1C5F4 8002BDF4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1C5F8 8002BDF8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1C5FC 8002BDFC 0800E003 */  jr         $ra
    /* 1C600 8002BE00 00000000 */   nop
endlabel func_8002BDBC
