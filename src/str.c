#include "common.h"
#include "str.h"

// https://decomp.me/scratch/9CeXG
INCLUDE_ASM("asm/nonmatchings/str", func_80012B84);

// https://decomp.me/scratch/ve60n
//INCLUDE_ASM("asm/nonmatchings/str", func_80012C1C);

void func_80012C1C(int arg0, int arg1, int arg2) {
    D_80068334 = arg0;
    D_80068338 = arg0;
    D_8006833C = arg1;
    D_80068340 = arg2;
    D_800682F4 = 8;
    D_80068304 = 0;
}

// https://decomp.me/scratch/fsumm
//INCLUDE_ASM("asm/nonmatchings/str", func_80012C58);

void func_80012C58(int arg0, int arg1, int arg2) {
    if (*D_8006836C > 0) {
        D_8006835C = arg0;
        D_80068360 = arg0;
        D_80068364 = arg1;
        D_80068368 = arg2;
        if (D_800682F4 != 5) {
            D_800682F4 = 8;
        }
        D_80068304 = 0;
    }
}

// CDMusicUpdate() https://decomp.me/scratch/qJ2a6
INCLUDE_ASM("asm/nonmatchings/str", func_80012CBC);

// CDLoadTime() https://decomp.me/scratch/ocyYc
//INCLUDE_ASM("asm/nonmatchings/str", func_80013690);

int func_80013690(void) {
    char modeFlags;
    volatile int *isReading;

    if (D_800682F4 != 0) {
        D_80068304 = 1;
        func_80012CBC();
        return 1;
    }

    isReading = &D_800682E8;
    if (*isReading != 0) {
        // Check if the max disc read time is exceeded
        if (D_800682EC >= D_800682F0) {
            modeFlags = 0x80;
            // Reinitialize the CD subsystem
            func_800582B8();
            // Set the mode to double speed?
            func_80058858(0xE, &modeFlags, 0);
            func_800582A4(&func_8001379C);

            // Wait for the CD subsystem to be ready after the reinitialization
            while (func_80058810(1, 0) != 2);

            func_80058858(2, (void *)&D_800682E0, 0);
            D_800682EC = 0; // Reset the disc read time
            // Start the read
            func_80058108(D_800682DC, D_800682E4, 0x80);
        }
        return 1;
    }
    return func_80058810(1, 0) != 2;
}

// CDReadDone() https://decomp.me/scratch/M34pb 
//INCLUDE_ASM("asm/nonmatchings/str", func_8001379C);

void func_8001379C(unsigned char intr) {
    volatile int *isReading = &D_800682E8;

    if (*isReading != 0) {
        if (intr == 2) {
            *isReading = 0;
            return;
        }
        /* 
        * Interesting it doesn't load D_800682E0 directly.
        * Probably written in terms of a pointer to the state block rather than individually named globals
        */
        func_80058858(2, (unsigned char *)(isReading - 2), 0);
        D_800682EC = 0; // Disc read time reset
        func_80058108(D_800682DC, D_800682E4, 0x80);
    }
}

// CDLoadSync() https://decomp.me/scratch/ZcL8Y
//INCLUDE_ASM("asm/nonmatchings/str", func_80013810);

void func_80013810(int sector, void *buf, int len, int sectorOffset) {
    char modeFlags;
    
    modeFlags = 0x80;
    while (func_80013690());
    // Set the mode to double speed? 
    func_80058858(0xE, &modeFlags, 0);

    func_80058C98(sector + (sectorOffset / 2048), &D_800682E0);
    func_80058858(2, (unsigned char *)&D_800682E0, 0);

    D_800682DC = (len + 2047) / 2048;
    D_800682E8 = 1;    
    D_800682E4 = buf;
    D_800682F0 = D_800682DC + 0x78;
    D_800682EC = 0;
    // Start the read
    func_80058108(D_800682DC, D_800682E4, 0x80);
    while (func_80013690());
}

// CDLoadAsync() https://decomp.me/scratch/3I05y
//INCLUDE_ASM("asm/nonmatchings/str", func_80013918);

int func_80013918(int sector, void *buf, int len, int sectorOffset) {
    char modeFlags;

    modeFlags = 0x80;
    if (func_80013690() == 0) {
        // Set the mode to double speed? 
        func_80058858(0xE, &modeFlags, 0);

        func_80058C98(sector + (sectorOffset / 2048), &D_800682E0);
        func_80058858(2, (unsigned char *)&D_800682E0, 0);
      
        D_800682DC = (len + 2047) / 2048;
        D_800682E8 = 1;
        D_800682E4 = buf;
        D_800682F0 = D_800682DC + 0x78;
        D_800682EC = 0;
        // Start the read
        func_80058108(D_800682DC, buf, 0x80);
        return  1;
    }
    return 0;
}

INCLUDE_RODATA("asm/nonmatchings/str", D_800106F4);
