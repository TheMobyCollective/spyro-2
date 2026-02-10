.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002DB08, 0x84

glabel func_8002DB08
    /* 1E308 8002DB08 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1E30C 8002DB0C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1E310 8002DB10 21888000 */  addu       $s1, $a0, $zero
    /* 1E314 8002DB14 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1E318 8002DB18 0780103C */  lui        $s0, %hi(D_8006A0E0)
    /* 1E31C 8002DB1C E0A01026 */  addiu      $s0, $s0, %lo(D_8006A0E0)
    /* 1E320 8002DB20 21200002 */  addu       $a0, $s0, $zero
    /* 1E324 8002DB24 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1E328 8002DB28 6C6F000C */  jal        func_8001BDB0
    /* 1E32C 8002DB2C E4FF0526 */   addiu     $a1, $s0, -0x1C
    /* 1E330 8002DB30 21200002 */  addu       $a0, $s0, $zero
    /* 1E334 8002DB34 CF6E000C */  jal        func_8001BB3C
    /* 1E338 8002DB38 21282002 */   addu      $a1, $s1, $zero
    /* 1E33C 8002DB3C 0000028E */  lw         $v0, 0x0($s0)
    /* 1E340 8002DB40 00000000 */  nop
    /* 1E344 8002DB44 23100200 */  negu       $v0, $v0
    /* 1E348 8002DB48 000002AE */  sw         $v0, 0x0($s0)
    /* 1E34C 8002DB4C 0780023C */  lui        $v0, %hi(D_8006A0E4)
    /* 1E350 8002DB50 E4A0428C */  lw         $v0, %lo(D_8006A0E4)($v0)
    /* 1E354 8002DB54 0780033C */  lui        $v1, %hi(D_8006A0E8)
    /* 1E358 8002DB58 E8A0638C */  lw         $v1, %lo(D_8006A0E8)($v1)
    /* 1E35C 8002DB5C 23100200 */  negu       $v0, $v0
    /* 1E360 8002DB60 23180300 */  negu       $v1, $v1
    /* 1E364 8002DB64 0780013C */  lui        $at, %hi(D_8006A0E4)
    /* 1E368 8002DB68 E4A022AC */  sw         $v0, %lo(D_8006A0E4)($at)
    /* 1E36C 8002DB6C 0780013C */  lui        $at, %hi(D_8006A0E8)
    /* 1E370 8002DB70 E8A023AC */  sw         $v1, %lo(D_8006A0E8)($at)
    /* 1E374 8002DB74 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1E378 8002DB78 1400B18F */  lw         $s1, 0x14($sp)
    /* 1E37C 8002DB7C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1E380 8002DB80 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1E384 8002DB84 0800E003 */  jr         $ra
    /* 1E388 8002DB88 00000000 */   nop
endlabel func_8002DB08
