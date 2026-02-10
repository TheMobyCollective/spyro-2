.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80076674, 0x2C

glabel func_titlescreen_and_loading_80076674
    /* 2C410 80076674 0680023C */  lui        $v0, %hi(D_80067E24)
    /* 2C414 80076678 247E428C */  lw         $v0, %lo(D_80067E24)($v0)
    /* 2C418 8007667C 0C00838C */  lw         $v1, 0xC($a0)
    /* 2C41C 80076680 80100200 */  sll        $v0, $v0, 2
    /* 2C420 80076684 0680013C */  lui        $at, %hi(D_80067E54)
    /* 2C424 80076688 21082200 */  addu       $at, $at, $v0
    /* 2C428 8007668C 547E228C */  lw         $v0, %lo(D_80067E54)($at)
    /* 2C42C 80076690 00000000 */  nop
    /* 2C430 80076694 26104300 */  xor        $v0, $v0, $v1
    /* 2C434 80076698 0800E003 */  jr         $ra
    /* 2C438 8007669C 0100422C */   sltiu     $v0, $v0, 0x1
endlabel func_titlescreen_and_loading_80076674
