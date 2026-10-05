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
    short m[3][3]; /* 3x3 rotation matrix */
    short _pad;    /* padding */
} SHORTMATRIX;

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

typedef struct {
    short value, paid;
} GemToll;

// This could also be an array with an enum as the argument
typedef struct {
    GemToll glacierBridge;
    GemToll aquariaSubmarine;
    GemToll magmaElevator;
    GemToll glimmerBridge;
    GemToll swim;       //D_80064682
    GemToll climb;      //D_80064686
    GemToll headbash;   //D_8006468A
    GemToll aquariaWall;
    GemToll unknown1;
    GemToll sfBrokenBridgeCleared;
    GemToll zephyrEntry;
    GemToll shadyEntry;
    GemToll icyEntry;
    GemToll crushDefeated;
    GemToll gulpDefeated;
    GemToll extendedSparxRange;
    GemToll cameraHunter;
    GemToll unknown2;
    GemToll canyonEntry;
    GemToll tunnelOfLoveToken;
    GemToll targetShootingToken1;
    GemToll targetShootingToken2;
    GemToll targetShootingToken3;
    GemToll coasterToken1;
    GemToll coasterToken2;
    GemToll coasterToken3;
    GemToll dunkTankToken1;
    GemToll dunkTankToken2;
    GemToll dunkTankToken3;
    GemToll crushEloraTalked;
    GemToll gulpEloraTalked;
    GemToll oceanEloraTalked;
    GemToll metroEloraTalked;
    GemToll doorProfessorTalked;
    GemToll unknown3;
    GemToll theaterUnlocked;
    GemToll professorDoorOpened;
    GemToll finalCutsceneWatched;
    GemToll unknown4;
} ProgressFlags;
