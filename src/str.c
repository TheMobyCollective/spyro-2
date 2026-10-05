#include "common.h"
#include "str.h"

// https://decomp.me/scratch/5AfK2
//INCLUDE_ASM("asm/nonmatchings/str", func_80012B84);

void func_80012B84(void) {
    streamingData.dat_00 = 0;
    streamingData.musicEnabled = 1;
    streamingData.dat_04 = 0;
    streamingData.dat_08 = 0;
    streamingData.dat_0C = 0;
    
    streamingData.musicVolume = 0x3FFF;
    streamingData.speechVolume = 0x7FFF;
    streamingData.dat_28 = 0;
    
    streamingData.activeAudio.unk0 = 0;
    streamingData.queuedMusic.unk0 = 0;
    streamingData.currentSpeech.unk0 = 0;
    streamingData.queuedSpeech.unk0 = 0;
    
    streamingData.activeAudio.volumePtr = &streamingData.musicVolume;
    streamingData.queuedMusic.volumePtr = &streamingData.musicVolume;
    streamingData.currentSpeech.volumePtr = &streamingData.speechVolume;
    streamingData.queuedSpeech.volumePtr = &streamingData.speechVolume;
}

// https://decomp.me/scratch/ve60n
//INCLUDE_ASM("asm/nonmatchings/str", func_80012C1C);

void func_80012C1C(int startLba, int endLba, int track) {
    streamingData.queuedMusic.unk0 = startLba;
    streamingData.queuedMusic.startLba = startLba;
    streamingData.queuedMusic.endLba = endLba;
    streamingData.queuedMusic.track = track;
    streamingData.dat_00 = 8;
    streamingData.musicEnabled = 0;
}

// https://decomp.me/scratch/fsumm
//INCLUDE_ASM("asm/nonmatchings/str", func_80012C58);

void func_80012C58(int startLba, int endLba, int track) {
    if (*streamingData.queuedSpeech.volumePtr > 0) {
        streamingData.queuedSpeech.unk0 = startLba;
        streamingData.queuedSpeech.startLba = startLba;
        streamingData.queuedSpeech.endLba = endLba;
        streamingData.queuedSpeech.track  = track;
        if (streamingData.dat_00 != 5) {
            streamingData.dat_00 = 8;
        }
        streamingData.musicEnabled = 0;
    }
}

// CDMusicUpdate() https://decomp.me/scratch/qJ2a6
INCLUDE_ASM("asm/nonmatchings/str", func_80012CBC);

// CDLoadTime() https://decomp.me/scratch/ocyYc
//INCLUDE_ASM("asm/nonmatchings/str", func_80013690);

int func_80013690(void) {
    char modeFlags;
    volatile int *isReading;

    if (streamingData.dat_00 != 0) {
        streamingData.musicEnabled = 1;
        func_80012CBC();
        return 1;
    }

    isReading = &cdState.isReading;
    if (*isReading != 0) {
        // Check if the max disc read time is exceeded
        if (cdState.readTime >= cdState.maxReadTime) {
            modeFlags = 0x80;
            // Reinitialize the CD subsystem
            func_800582B8();
            // Set the mode to double speed?
            func_80058858(0xE, &modeFlags, 0);
            func_800582A4(&func_8001379C);

            // Wait for the CD subsystem to be ready after the reinitialization
            while (func_80058810(1, 0) != 2);

            func_80058858(2, (void *)&cdState.readLoc, 0);
            cdState.readTime = 0; // Reset the disc read time
            // Start the read
            func_80058108(cdState.size, cdState.outBuf, 0x80);
        }
        return 1;
    }
    return func_80058810(1, 0) != 2;
}

// CDReadDone() https://decomp.me/scratch/M34pb 
//INCLUDE_ASM("asm/nonmatchings/str", func_8001379C);

void func_8001379C(unsigned char intr) {
    volatile int *isReading = &cdState.isReading;

    if (*isReading != 0) {
        if (intr == 2) {
            *isReading = 0;
            return;
        }

        func_80058858(2, (unsigned char *)(isReading - 2), 0);
        cdState.readTime = 0; // Disc read time reset
        func_80058108(cdState.size, cdState.outBuf, 0x80);
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

    func_80058C98(sector + (sectorOffset / 2048), &cdState.readLoc);
    func_80058858(2, &cdState.readLoc.minute, 0);

    cdState.size = (len + 2047) / 2048;
    cdState.isReading = 1;    
    cdState.outBuf = buf;
    cdState.maxReadTime = cdState.size + 0x78;
    cdState.readTime = 0;
    // Start the read
    func_80058108(cdState.size, cdState.outBuf, 0x80);
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

        func_80058C98(sector + (sectorOffset / 2048), &cdState.readLoc);
        func_80058858(2, &cdState.readLoc.minute, 0);
      
        cdState.size = (len + 2047) / 2048;
        cdState.isReading = 1;
        cdState.outBuf = buf;
        cdState.maxReadTime = cdState.size + 0x78;
        cdState.readTime = 0;
        // Start the read
        func_80058108(cdState.size, cdState.outBuf, 0x80);
        return  1;
    }
    return 0;
}

INCLUDE_RODATA("asm/nonmatchings/str", D_800106F4);
