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
//INCLUDE_ASM("asm/nonmatchings/str", func_80012CBC);

void func_80012CBC(void) {
  int cdSyncResult;
  int cdStatus;

  CdMusic cdMusic;
  XaAudioData *currentAudio = nullptr;

  int *currentVolumePtr;
  int *streamingStatePtr;
  int *cdCommandStatePtr;

  cdSyncResult = func_80058810(1, cdMusic.syncData);
  cdStatus = func_800587B4();

  streamingStatePtr = &streamingData.dat_28;
  switch (*streamingStatePtr) {
  case 0:
    if (streamingData.queuedSpeech.unk0 == 0) {
      streamingData.dat_0C = 0;
    }
    break;
  case 1:
    if (streamingData.queuedSpeech.unk0 == 0) {
      streamingData.dat_0C = 0;
    }
    currentAudio = &streamingData.activeAudio;
    if (((unsigned int)(streamingData.dat_00 - 6) < 2U) &&
        streamingData.queuedSpeech.unk0 != 0) {
      streamingData.dat_00 = 8;
    }
    break;
  case 2:
    if (streamingData.dat_0C == 1) {
      streamingData.dat_00 = 8;
      streamingData.dat_0C = 0;
    }
    currentAudio = &streamingData.currentSpeech;
    break;
  }

  if (streamingData.musicEnabled == 0 && streamingData.dat_14 != 0 &&
      streamingData.dat_00 == 8) {
    streamingData.dat_00 = 6;
    streamingData.dat_14 = 0;
  }

  if (streamingData.musicEnabled != 0 && currentAudio != 0 &&
      streamingData.dat_14 == 0) {
    streamingData.dat_00 = 8;
    streamingData.dat_14 = 1;
  } else if (streamingData.musicEnabled != 0 && currentAudio == nullptr &&
             streamingData.dat_14 == 0 && streamingData.dat_00 != 0) {
    streamingData.dat_28 = 0;
    streamingData.dat_00 = 9;
  }

  /* CD status/error handling path. */
  if ((cdStatus & 0x10) != 0) {
    if (streamingData.dat_00 == 8) {
      streamingData.dat_08 = 0;
      streamingData.dat_28 = 0;
    } else if (streamingData.dat_00 != 0 && streamingData.dat_00 != 9) {
      streamingData.dat_08 = 0;
      streamingData.dat_00 = 1;
    }

    streamingData.dat_04 = 1;
    func_80058994(1, nullptr);
    return;
  }

  if (cdStatus & 0x4) {
    streamingData.dat_08 = 0;
    streamingData.dat_00 = 1;
  } else if ((cdStatus & 1) || (cdSyncResult == 5)) {
    if (streamingData.dat_00 == 8) {
      streamingData.dat_08 = 0;
      streamingData.dat_28 = 0;
    } else if (streamingData.dat_00 != 0 && streamingData.dat_00 != 9) {
      streamingData.dat_08 = 0;
      streamingData.dat_00 = 1;
    }

    func_80058994(1, nullptr);
    return;
  }

  /* Handle the active CD/music command state. */
  cdCommandStatePtr = &streamingData.dat_04;
  if (*cdCommandStatePtr == 1) {
    if (cdStatus & 0x2) {
      if (func_800587D4() == 2) {
        func_80058994(0x1B, nullptr);
        return;
      }
      if (cdStatus & 0x40) {
        *cdCommandStatePtr = 0;
        func_80058994(1, nullptr);
        return;
      }
      if (currentAudio != nullptr)
        func_80058C98(currentAudio->startLba, &cdMusic.cdPos);
      else
        func_80058C98(0x3E8, &cdMusic.cdPos);

      func_80058994(2, (void *)&cdMusic.cdPos);
      return;
    }
    func_80058994(9, nullptr);
    return;
  }

  if ((cdSyncResult == 2) && ((unsigned int)streamingData.dat_00 < 0xAU)) {
    switch (streamingData.dat_00) {
    case 9:
      /* Stop/release current music before selecting next stream. */
      if (streamingData.musicEnabled != 0 && (cdStatus & 0x20)) {
        func_80058994(9, nullptr);
      } else {
        streamingData.dat_00 = 0;
      }
    /* falls through to state 0 */
    case 0:
      /*  Select pending speech/music stream. */
      if (streamingData.musicEnabled != 0) {
        return;
      } else if (streamingData.queuedSpeech.unk0 != 0) {
        streamingData.currentSpeech = streamingData.queuedSpeech;
        streamingData.dat_28 = 2;
        streamingData.queuedSpeech.unk0 = 0;
        streamingData.dat_00 = 1;
      } else if (streamingData.queuedMusic.unk0 != 0) {
        streamingData.activeAudio = streamingData.queuedMusic;
        streamingData.queuedMusic.unk0 = 0;
        /* Activate the pending music stream. */
        streamingData.dat_28 = 1;
        streamingData.dat_00 = 1;
      } else if (streamingData.activeAudio.unk0 != 0) {
        /* Activate the pending music stream. */
        streamingData.dat_28 = 1;
        streamingData.dat_00 = 1;
      }

      func_80058994(1, nullptr);
      break;

    case 1:
      /* Set up command 0x0E and initialise volume. */
      cdMusic.commandParam[0] = 0xC8;
      func_80058994(0x0E, cdMusic.commandParam);

      cdMusic.attr.cd.volume.right = 0;
      cdMusic.attr.cd.volume.left = 0;
      cdMusic.attr.mask = SPU_COMMON_CDVOLL | SPU_COMMON_CDVOLR;
      func_8005912C(&cdMusic.attr);

      streamingData.dat_18 = 10;
      streamingData.dat_00 = 2;
      break;

    case 2:
      /* Position CD at start of XA stream. */
      func_80058C98(currentAudio->startLba, &cdMusic.cdPos);
      func_80058994(2, (void *)&cdMusic.cdPos);
      streamingData.dat_00 = 3;
      break;

    case 3:
      /* Select XA track. */
      cdMusic.trackParam[0] = 1;
      cdMusic.trackParam[1] = currentAudio->track;
      func_80058994(0xD, cdMusic.trackParam);
      streamingData.dat_00 = 4;
      break;

    case 4:
      /* Start XA playback. */
      func_80058994(0x1B, nullptr);
      streamingData.dat_18 = 300;
      streamingData.dat_00 = 5;
      break;

    case 5:
      /* Wait for XA playback to become ready. */
      if (func_800587D4() == 1 && (cdStatus & 0x60) == 0x20) {
        streamingData.dat_08 = 0;
        streamingData.dat_00 = 6;
      } else {
        streamingData.dat_18--;

        if (streamingData.dat_18 < 0) {
          streamingData.dat_00 = 2;
          streamingData.dat_1C--;
        }
      }

      func_80058994(1, nullptr);
      break;

    case 6:
      /* Fade the CD volume toward the stream's target volume. */
      {
        unsigned short volume;
        streamingData.dat_08 += *currentAudio->volumePtr / 2;

        if (streamingData.dat_08 >= *currentAudio->volumePtr) {
          streamingData.dat_08 = *currentAudio->volumePtr;
          streamingData.dat_00 = 7;
        }

        volume = streamingData.dat_08;

        cdMusic.attr.mask = SPU_COMMON_CDVOLL | SPU_COMMON_CDVOLR;
        cdMusic.attr.cd.volume.right = volume;
        cdMusic.attr.cd.volume.left = volume;

        func_8005912C(&cdMusic.attr);
      }

      func_80058994(0x11, nullptr);
      break;

    case 7:
      /* Monitor the active XA stream and maintain its volume. */
      {
        int trackPosition;

        if (streamingData.dat_08 != *currentAudio->volumePtr) {
          streamingData.dat_08 = *currentAudio->volumePtr;

          cdMusic.attr.cd.volume.right = streamingData.dat_08;
          cdMusic.attr.cd.volume.left = streamingData.dat_08;
          cdMusic.attr.mask = SPU_COMMON_CDVOLL | SPU_COMMON_CDVOLR;

          func_8005912C(&cdMusic.attr);
        }

        if (func_800587D4() == 0x11) {
          trackPosition = func_80058D9C((CdLoc *)&cdMusic.syncData[5]);

          if (currentAudio->unk0 < trackPosition) {
            currentAudio->startLba = trackPosition;
          }

          if ((currentAudio->endLba - 0x13 < trackPosition) ||
              (*currentAudio->volumePtr == 0)) {
            streamingData.dat_00 = 8;
          }
        }
        func_80058994(0x11, nullptr);
        break;
      }

    case 8:
      /* Fade current XA stream volume down and select next stream at zero. */
      if (currentAudio != nullptr) {
        int volume = *currentAudio->volumePtr;
        /* Preserve the local pointer alias used by the original compiler. */
        currentVolumePtr = &streamingData.dat_08;

        if (volume < 0) {
          volume += 7;
        }
        *currentVolumePtr -= volume >> 3;
      } else {
        streamingData.dat_08 = 0;
      }

      if (streamingData.dat_08 <= 0) {

        streamingData.dat_08 = 0;

        if (streamingData.musicEnabled != 0) {
          streamingData.dat_28 = 0;
          streamingData.dat_00 = 9;
          streamingData.dat_14 = 0;
        } else if (streamingData.queuedSpeech.unk0 != 0 &&
                   *streamingData.queuedSpeech.volumePtr > 0) {
          streamingData.currentSpeech = streamingData.queuedSpeech;
          streamingData.dat_28 = 2;
          streamingData.queuedSpeech.unk0 = 0;
          streamingData.dat_00 = 1;
        } else if (streamingData.queuedMusic.unk0 != 0 &&
                   *streamingData.queuedMusic.volumePtr > 0) {

          streamingData.activeAudio = streamingData.queuedMusic;
          streamingData.queuedMusic.unk0 = 0;
          streamingData.dat_28 = 1;
          streamingData.dat_00 = 1;
        } else if (streamingData.activeAudio.unk0 != 0 &&
                   *streamingData.activeAudio.volumePtr > 0) {
          if (streamingData.activeAudio.startLba <
                  streamingData.activeAudio.unk0 ||
              streamingData.activeAudio.startLba >
                  streamingData.activeAudio.endLba - 0x4C) {
            streamingData.activeAudio.startLba = streamingData.activeAudio.unk0;
          }
          streamingData.dat_28 = 1;
          streamingData.dat_00 = 1;
        } else {
          streamingData.dat_28 = 0;
          streamingData.dat_00 = 9;
        }
      }
      /* Apply the updated volume */
      {
        unsigned short volume;
        volume = streamingData.dat_08;
        cdMusic.attr.mask = SPU_COMMON_CDVOLL | SPU_COMMON_CDVOLR;
        cdMusic.attr.cd.volume.right = volume;
        cdMusic.attr.cd.volume.left = volume;
        func_8005912C(&cdMusic.attr);
      }
    }
  }
}

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

// this jump table is redundant now we have matched func_80012CBC
//INCLUDE_RODATA("asm/nonmatchings/str", D_800106F4);
