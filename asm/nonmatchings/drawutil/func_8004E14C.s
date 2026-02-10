.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004E14C, 0x80

glabel func_8004E14C
    /* 3E94C 8004E14C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3E950 8004E150 08010424 */  addiu      $a0, $zero, 0x108
    /* 3E954 8004E154 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3E958 8004E158 4134010C */  jal        func_8004D104
    /* 3E95C 8004E15C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3E960 8004E160 8064033C */  lui        $v1, (0x64808080 >> 16)
    /* 3E964 8004E164 80806334 */  ori        $v1, $v1, (0x64808080 & 0xFFFF)
    /* 3E968 8004E168 0680103C */  lui        $s0, %hi(D_80067030)
    /* 3E96C 8004E16C 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 3E970 8004E170 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* 3E974 8004E174 21200002 */  addu       $a0, $s0, $zero
    /* 3E978 8004E178 000002AE */  sw         $v0, 0x0($s0)
    /* 3E97C 8004E17C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3E980 8004E180 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 3E984 8004E184 78000224 */  addiu      $v0, $zero, 0x78
    /* 3E988 8004E188 0A0002A6 */  sh         $v0, 0xA($s0)
    /* 3E98C 8004E18C 00010224 */  addiu      $v0, $zero, 0x100
    /* 3E990 8004E190 100002A6 */  sh         $v0, 0x10($s0)
    /* 3E994 8004E194 6C000224 */  addiu      $v0, $zero, 0x6C
    /* 3E998 8004E198 040003AE */  sw         $v1, 0x4($s0)
    /* 3E99C 8004E19C 0C0000A2 */  sb         $zero, 0xC($s0)
    /* 3E9A0 8004E1A0 080000A6 */  sh         $zero, 0x8($s0)
    /* 3E9A4 8004E1A4 E46C000C */  jal        func_8001B390
    /* 3E9A8 8004E1A8 120002A6 */   sh        $v0, 0x12($s0)
    /* 3E9AC 8004E1AC 14001026 */  addiu      $s0, $s0, 0x14
    /* 3E9B0 8004E1B0 0680013C */  lui        $at, %hi(D_80067030)
    /* 3E9B4 8004E1B4 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 3E9B8 8004E1B8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3E9BC 8004E1BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 3E9C0 8004E1C0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3E9C4 8004E1C4 0800E003 */  jr         $ra
    /* 3E9C8 8004E1C8 00000000 */   nop
endlabel func_8004E14C
