#ifndef __COMMON_H
#define __COMMON_H

#include "include_asm.h"
#include <sys/types.h>

#define nullptr ((void *)0)

/*** Maths ***/

#define ABS(x) ((x) >= 0 ? (x) : -(x))

typedef struct {
  int x, y;
} Vector2D;

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
    int roll, pitch, yaw;
} Angle12; // just a Vector3D with more obvious naming

typedef struct {
    short m[3][3]; /* 3x3 rotation matrix */
    short _pad;    /* padding */
} SHORTMATRIX;



typedef struct {
    int azimuth, elevation, radius;
} SphericalCoordinates;

/*** Moby ***/

typedef struct {
    unsigned char roll, pitch, yaw;
} Angle;

typedef struct {
    unsigned char id;
    unsigned char nextId;
    unsigned char frame;
    unsigned char nextFrame;
} Animation;

typedef struct {
    unsigned char r, g, b, a;
} Colour;

typedef struct Moby {
    void *mobyTag;                   // 0x00 void* (4 byte)
    struct Moby *nextCollision;      // 0x04 Moby* (4 byte)
    unsigned int unknownCollision;   // 0x08
    Vector3D position;               // 0x0C
    int damageFlags;                 // 0x18 // enum TODO
    int unknown;                     // 0x1C
    SHORTMATRIX rotationMatrix;      // 0x20 // formerly "unsigned char unknown1[20]"
    unsigned short collisionBlock;   // 0x34
    short mobyClass;                 // 0x36
    short distanceToGround;          // 0x38, used as mobyClass in cutscenes
    unsigned char linkedMoby;        // 0x3A
    unsigned char unknown2;          // 0x3B
    Animation animationState;        // 0x3C
    unsigned char animationProgress; // 0x40
    unsigned char unknown3[2];       // 0x41
    unsigned char animationRun;      // 0x43
    Angle angle;                     // 0x44
    unsigned char unknown4;          // 0x47
    unsigned char state;             // 0x48
    unsigned char substate;          // 0x49
    unsigned char updateDistance;    // 0x4A, 0xFF if the moby should be updated anywhere
    unsigned char unknown5;          // 0x4B, seems to be 1 if the Moby is to be updated
    unsigned char lowDrawDistance;   // 0x4C, if 0 moby is invisible
    unsigned char drawn;             // 0x4D, 0-2
    unsigned char highDrawDistance;  // 0x4E
    unsigned char size;              // 0x4F // increasing scales down
    unsigned char gemValue;          // 0x50
    unsigned char unkb;              // 0x51
    unsigned char subtype;           // 0x52
    char difficultyFlags;            // 0x53
    Colour colour;                   // 0x54
} Moby;

typedef struct {
    Vector3D m_Vector_0x00;       // 0x00–0x0B
    char pad_0x0C[0x44];          // 0x0C–0x4F

    int m_0x50;                   // 0x50; tested against 6
    int m_0x54;                   // 0x54; tested against 1
    int m_0x58;                   // 0x58; tested against states 0xB and 0xA

    char pad_0x5C[0x0C];          // 0x5C–0x67
    int m_0x68;                   // 0x68
    int m_0x6C;                   // 0x6C; copied to Camera and passed as an argument

    char pad_0x70[0x24];          // 0x70–0x93
    Vector3D m_Vector_0x94;       // 0x94–0x9F
    Vector3D m_Vector_0xA0;       // 0xA0–0xAB

    char pad_0xAC[0xC0];          // 0xAC–0x16B
    int m_0x16C;                  // 0x16C

    char pad_0x170[0x14];         // 0x170–0x183
    Vector3D m_Vector_0x184;      // 0x184–0x18F; provisional grouping
    char pad_0x190[0x31];         // 0x190–0x1C0

    unsigned char m_0x1C1;        // 0x1C1
    char pad_0x1C2[0x16];         // 0x1C2–0x1D7

    int m_0x1D8;                  // 0x1D8
    int m_0x1DC;                  // 0x1DC

    char pad_0x1E0[0x04];         // 0x1E0–0x1E3
    int m_0x1E4;                  // 0x1E4

    char pad_0x1E8[0x24];         // 0x1E8–0x20B
    int m_0x20C;                  // 0x20C; flag bits are tested and set

    int m_0x210;                  // 0x210–0x213
    char pad_0x214[0x08];         // 0x214–0x21B
    Vector3D m_Vector_0x21C;      // 0x21C–0x227; passed to func_8001BDA0

    char pad_0x228[0x04];         // 0x228–0x22B
    Vector3D m_Vector_0x22C;      // 0x22C–0x237; copied into the position at 0x00

    int m_0x238;                  // 0x238; copied to Camera + 0x6C
    int m_0x23C;                  // 0x23C; tested against 0x29
    int m_0x240;                  // 0x240

    char pad_0x244[0x14];         // 0x244–0x257
    int m_0x258;                  // 0x258; negative values are cleared
    char pad_0x25C[0x04];         // 0x25C–0x25F

    int m_0x260;                  // 0x260
} Spyro;

extern Spyro g_Spyro;

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

#endif
