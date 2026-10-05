#include "common.h"
#include "init.h"

// https://decomp.me/scratch/JOKi3
//INCLUDE_ASM("asm/nonmatchings/init", func_80011B1C); InitSpu()

void func_80011B1C(void) { //InitSoundWrapper
    func_800518EC();
}

// https://decomp.me/scratch/BBEf4
//INCLUDE_ASM("asm/nonmatchings/init", func_80011B3C); InitCdAndWad()

void func_80011B3C(void) { //InitCdAndWad
    char sp10;

    sp10 = 0x80;
    func_800582B8(); //CdInit
    func_80058858(0xE, &sp10, 0); //CdControl
    func_800582A4(&func_8001379C); //CdReadCallback
    D_800682D8 = 0x1F4; //cdState.wadSector
    func_80013810(0x1F4, D_80011110, 0x800, 0); //CDLoadSync
    func_8001B40C(&D_800676D8, D_80011110, 0x628); //fMemcpy
}

// Graphics init
// https://decomp.me/scratch/ON2Ga - 100%
//INCLUDE_ASM("asm/nonmatchings/init", func_80011BBC); SetupDrawDispEnvs()

void func_80011BBC(void) {
    int* temp_s2;
    void* temp_s0;

    func_80058EDC(0);   //VSync(0);
    func_8005574C(0);   //SetDispMask(0);
    func_8005557C(0);   //ResetGraph(0);
    func_800556F0(0);   //SetGraphDebug(0);
    func_80058E1C(&D_80069928, 0, 0xC, 0x200, 0xD8);            //SetDefDrawEnv
    temp_s2 = &D_80069928 + 0x1D;
    func_80058E1C(temp_s2, 0, 0xF0, 0x200, 0xD8);               //SetDefDrawEnv
    func_800590EC(&D_80069928 + 0x17, 0, 0xE4, 0x200, 0xF0);    //SetDefDispEnv
    temp_s0 = &D_80069928 + 0x34;
    func_800590EC(temp_s0, 0, 0, 0x200, 0xF0);                  //SetDefDispEnv
    D_800699A6 = 0xE4;
    D_80069930 = 0;
    D_80069932 = 0;
    D_800699A4 = 0;
    D_80069A00 = 0;
    D_8006998C = 0;
    D_80069A02 = 0;
    D_8006998E = 0;
    D_80069940 = 1;
    D_800699B4 = 1;
    D_8006993E = 1;
    D_800699B2 = 1;
    func_8004C484();
    func_80058EDC(0);           //VSync(0);
    D_80066FC0 = temp_s2;
    func_80055CA0(temp_s0);     //PutDispEnv(temp_s0);
    func_80055BE0(D_80066FC0);  //PutDrawEnv(D_80066FC0);
    func_8005574C(1);           //SetDispMask(1);
}

// https://decomp.me/scratch/yOzuJ
//INCLUDE_ASM("asm/nonmatchings/init", func_80011D24); InitGTE()

void func_80011D24(void) { //InitGeometry
    func_80057B20();                //InitGeom();
    func_80057AF8(0x100, 0x78);     //SetGeomOffset(256, 120);
    func_80057AE8(0x155);           //SetGeomScreen(341);
}

// https://decomp.me/scratch/s8dkQ
//INCLUDE_ASM("asm/nonmatchings/init", func_80011D58);

void func_80011D58(void) { //SsUtReverbOff
    func_titlescreen_and_loading_8007CC38(0);
}

// Gamepad init?
// https://decomp.me/scratch/Mrr4l - 100%
//INCLUDE_ASM("asm/nonmatchings/init", func_80011D78);

void func_80011D78(void) {
    func_80054F1C(&D_8006A95C, &D_8006AB4C);
    func_80058408();
    func_80012B58();
    D_80068374 = 1;
    func_80054934(&func_800125C8);
}

INCLUDE_ASM("asm/nonmatchings/init", func_80011DD4);

// https://decomp.me/scratch/1STBX Probably need to get the WadHeader properly set up first for a match. Supposed to be 0x628 in size
INCLUDE_ASM("asm/nonmatchings/init", func_80011E9C);

// https://decomp.me/scratch/ByQF3
//INCLUDE_ASM("asm/nonmatchings/init", func_80011F30);

void func_80011F30(void) {
    func_8001D7E8();
}

