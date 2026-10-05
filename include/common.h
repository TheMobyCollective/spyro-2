#include "include_asm.h"
#include <sys/types.h>

typedef struct {
    int x, y, z;
} Vector3D;

typedef struct {
    unsigned char x, y, z;
} Vector3D8;

typedef struct {
    short x, y, z;
} Vector3D16;

typedef struct {
    int azimuth, elevation, radius;
} SphericalCoordinates;

typedef struct {
    unsigned char r, g, b, s;
} Color;

typedef struct {
    int r, g, b;
} ColorInt;

/*** Streaming / CD / Loading ***/

typedef struct {
	unsigned char minute;
	unsigned char second;
	unsigned char sector;
	unsigned char track;
} CdLoc; // LibCD

typedef struct {
	int unk0; // holds startLba or 0?
	int startLba;
	int endLba;
	int track;
	int* volumePtr;
} XaAudioData;

typedef struct {
	int wadSector; // 800682D8
	int size; // 800682DC
	CdLoc readLoc; // 800682E0
	void *outBuf; // 800682E4 
	volatile int isReading; // 800682E8 
	int readTime; // 800682EC 
	int maxReadTime; // 800682F0 
} CDState;

typedef struct {
    int dat_00;                  // +0x00 800682F4 - number of tracks?
    int dat_04;                  // +0x04 
    int dat_08;                  // +0x08 - musicFadeTarget?   
    int dat_0C;                  // +0x0C 
    int musicEnabled;            // +0x10  
    int dat_14;                  // +0x14 
    int dat_18;                  // +0x18   
    int dat_1C;                  // +0x1C
    int musicVolume;             // +0x20
    int speechVolume;            // +0x24 
    int dat_28;                  // +0x28
    XaAudioData activeAudio;     // +0x2C
    XaAudioData queuedMusic;     // +0x40
    XaAudioData currentSpeech;   // +0x54
    XaAudioData queuedSpeech;    // +0x68
} StreamingData;
