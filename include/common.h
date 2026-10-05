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

typedef struct {
    short m[3][3]; /* 3x3 rotation matrix */
    short _pad;    /* padding */
} SHORTMATRIX;

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
