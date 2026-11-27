#ifndef __COMMON_H
#define __COMMON_H

#include "include_asm.h"
#include <sys/types.h>

#define SUB_ANGLE(a, b, c) a = (b - c) & 0xFFF; \
if(a > 0x800) a -= 0x1000
#define ADD_ANGLE(a, b, c) a = (b + c) & 0xFFF; \
if(a > 0x800) a -= 0x1000

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
    Vector3D normal;
    int offset;
} Plane;

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

/*
 * CollisionObject layout is provisional; only m_0x53 is currently identified.
 * Used by func_8001E454 and func_8001F618.
 */
typedef struct CollisionObject {
    unsigned char pad_0x00[0x0C];
    Vector3D m_Vector_0x0C;       // 0x0C–0x17
    unsigned char pad_0x18[0x3B]; // 0x18–0x52
    unsigned char m_0x53;         // 0x53
} CollisionObject;

typedef struct {
    Vector3D m_Position;               // 0x00–0x0B

    Angle m_Rotation_0x0C;             // 0x0C–0x0E First Euler-angle rotation
    char pad_0x0F[0x01];               // 0x0F
    Angle m_Rotation_0x10;             // 0x10–0x12 Second Euler-angle rotation
    char pad_0x13;                     // 0x13

    unsigned char m_0x14;              // 0x14; state used by func_80034E0C
    unsigned char m_0x15;              // 0x15; animation index
    unsigned char m_animationFrame_0x16; // 0x16; byte state used by func_80034E0C
    unsigned char m_0x17;              // 0x17; animation frame/index

    unsigned char m_0x18;              // 0x18; saved animation index
    unsigned char m_0x19;              // 0x19; current animation index
    unsigned char m_0x1A;              // 0x1A; saved animation frame
    unsigned char m_0x1B;              // 0x1B; current animation frame
    unsigned char m_0x1C;              // 0x1C; unknown
    unsigned char m_0x1D;              // 0x1D; animation progress/state; indexes D_80062868
    unsigned char m_0x1E;              // 0x1E
    char pad_0x1F;                     // 0x1F
    
    unsigned char m_0x20;              // 0x20
    unsigned char m_0x21;              // 0x21
    unsigned char m_0x22;              // 0x22
    unsigned char m_0x23;              // 0x23

    int m_0x24;                        // 0x24–0x27; flag bits
    int m_0x28;                        // 0x28–0x2B
    int m_0x2C;                        // 0x2C–0x2F
    SHORTMATRIX m_RotationMatrix_0x30;  // 0x30–0x43 First rotation matrix
    char pad_0x44[0x0C];               // 0x44–0x4F

    int m_0x50;                        // 0x50
    int m_0x54;                        // 0x54
    int m_0x58;                        // 0x58
    int m_0x5C;                        // 0x5C
    int m_0x60;                        // 0x60–0x63
    
    Vector3D m_Vector_0x64;            // 0x64–0x6F components shifted right 4 into 0x0C–0x0E
    Vector3D m_Vector_0x70;            // 0x70–0x7B; smoothed movement vector
    Vector3D m_Vector_0x7C;            // 0x7C–0x87; working movement vector
    Vector3D m_Vector_0x88;            // 0x88–0x93
    Vector3D m_Vector_0x94;            // 0x94–0x9F
    Vector3D m_Vector_0xA0;            // 0xA0–0xAB

    int m_0xAC;                        // 0xAC; 12-bit camera-relative movement angle
    int m_0xB0;                        // 0xB0; unknown
    int m_0xB4;                        // 0xB4; scaled movement magnitude/speed
    int m_0xB8;                        // 0xB8; current smoothed movement magnitude/speed

    int m_0xBC;                        // 0xBC; calculated vector magnitude
    int m_0xC0;                        // 0xC0; state/flag
    int m_0xC4;                        // 0xC4; incremented each invocation
    Vector3D m_Vector_0xC8;            // 0xC8–0xD3
    Vector3D m_Vector_0xD4;            // 0xD4–0xDF
    Vector3D m_Vector_0xE0;            // 0xE0–0xEB

    int m_0xEC;                        // 0xEC–0xEF
    Vector3D m_Vector_0xF0;            // 0xF0–0xFB
    int m_0xFC;                        // 0xFC–0xFF
    int m_0x100;                       // 0x100–0x103; loaded from D_800601B4
    unsigned char m_0x104;             // 0x104
    unsigned char m_0x105;             // 0x105
    unsigned char m_0x106;             // 0x106; existing flag; set when vector magnitude thresholds are met
    unsigned char m_0x107;             // 0x107
    unsigned char m_0x108;             // 0x108
    unsigned char m_0x109;             // 0x109; angular-state flag
    char pad_0x10A[0x06];              // 0x10A–0x10F

    int m_0x110;                       // 0x110; initialised to -1
    int m_0x114;                       // 0x114; initialised to -1
    int m_0x118;                       // 0x118; initialised to -1

    Vector3D m_Vector_0x11C;           // 0x11C–0x127
    int m_0x128;                       // 0x128–0x12B; backup of m_0x114
    Vector3D m_Vector_0x12C;           // 0x12C–0x137

    int m_0x138;                       // 0x138
    int m_0x13C;                       // 0x13C; cached angle
    CollisionObject *m_CollisionObject_0x140; // 0x140; helper result

    int m_0x144;                       // 0x144
    Moby *m_0x148;                       // 0x148
    int m_0x14C;                       // 0x14C
    int m_0x150;                       // 0x150

    char pad_0x154[0x18];              // 0x154–0x16B

    int m_animationFrame_0x16C;        // 0x16C
    char pad_0x170[0x04];              // 0x170–0x173
    int m_0x174;                       // 0x174
    int m_0x178;                       // 0x178
    int m_0x17C;                       // 0x17C
    int m_0x180;                       // 0x180
    Vector3D m_Vector_0x184;           // 0x184–0x18F; provisional grouping

    int m_0x190;                       // 0x190
    int m_0x194;                       // 0x194
    int m_0x198;                       // 0x198
    SHORTMATRIX m_RotationMatrix_0x19C; // 0x19C–0x1AF Second rotation matrix, overwritten with combined result
    char pad_0x1B0[0xC];                // 0x1B0–0x1BB
    unsigned char m_0x1BC;             // 0x1BC
    unsigned char m_0x1BD;             // 0x1BD
    unsigned char m_0x1BE;             // 0x1BE
    char pad_0x1BF;                    // 0x1BF
    unsigned char m_0x1C0;             // 0x1C0
    unsigned char m_0x1C1;             // 0x1C1
    unsigned char m_0x1C2;             // 0x1C2
    unsigned char m_0x1C3;             // 0x1C3

    int m_0x1C4;                       // 0x1C4 
    Vector3D m_Vector_0x1C8;           // 0x1C8–0x1D3 
    int m_0x1D4;                       // 0x1D4
    int m_0x1D8;                       // 0x1D8
    int m_0x1DC;                       // 0x1DC

    int m_0x1E0;                       // 0x1E0–0x1E3 32-bit flag/state
    int m_0x1E4;                       // 0x1E4-0x1E7
    int m_0x1E8;                       // 0x1E8–0x1EB
    int m_0x1EC;                       // 0x1EC–0x1EF
    int m_0x1F0;                       // 0x1F0–0x1F3
    int m_0x1F4;                       // 0x1F4–0x1F7    
    int m_0x1F8;                       // 0x1F8–0x1FB
    
    int m_0x1FC;                       // 0x1FC–0x1FF; animation transition index
    int m_0x200;                       // 0x200–0x203; animation transition state
    char pad_0x204[0x08];              // 0x204–0x20B
    int m_0x20C;                       // 0x20C; flag bits are tested and set
    int m_0x210;                       // 0x210–0x213
    int m_0x214;                       // 0x214–0x217; state (values 0, 1, 2)
    void *m_0x218;                     // 0x218–0x21B; temporary input pointer
    Vector3D m_Vector_0x21C;           // 0x21C–0x227; passed to func_8001BDA0

    unsigned char m_0x228;             // 0x228
    unsigned char m_0x229;             // 0x229
    unsigned char m_0x22A;             // 0x22A
    char pad_0x22B;                    // 0x22B
    
    Vector3D m_Vector_0x22C;           // 0x22C–0x237; copied into the position at 0x00

    int m_0x238;                       // 0x238; copied to Camera + 0x6C
    int m_0x23C;                       // 0x23C; tested against 0x29
    int m_0x240;                       // 0x240
    int m_0x244;                       // 0x244–0x247; movement flags
    Vector3D m_Vector_0x248;           // 0x248–0x253
    int m_0x254;                       // 0x254–0x257; movement threshold
    int m_timer_0x258;                 // 0x258; negative values are cleared
    int m_0x25C;                       // 0x25C–0x25F
    int m_0x260;                       // 0x260
    int m_0x264;                       // 0x264
    int m_0x268;                       // 0x268
    int m_0x26C;                       // 0x26C
    int m_0x270;                       // 0x270
    int m_0x274;                       // 0x274; angular value/sentinel
    int m_0x278;                       // 0x278

    void *m_0x27C;                     // 0x27C
    void *m_0x280;                     // 0x280
    
    Vector3D m_Vector_0x284;           // 0x284–0x28F
    Vector3D m_Vector_0x290;           // 0x290–0x29B
    
    int m_0x29C;                       // 0x29C; reset to -1
    Vector3D m_Vector_0x2A0[3];        // 0x2A0–0x2C3; three source vectors
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

extern ProgressFlags flags;

/*** Parts ***/

typedef struct {
    char unk0; // possible class
    unsigned char unk1;
    char unk2;
    char unk3;
    short unk4; // ShortVector3D?
    short unk6;
    short unk8;
    char unkA;
    char unkB;
    char unkC;
    char unkD;
    char unkE;
    char unkF;
    short unk10;
    short unk12; // ShortVector3D?
    short unk14;
    short unk16;
    short unk18; // ShortVector3D?
    short unk1A;
    short unk1C;
    short unk1E;
} Particle;

#endif
