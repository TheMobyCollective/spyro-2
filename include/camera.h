#ifndef __CAMERA_H
#define __CAMERA_H

#include "common.h"

typedef struct {
    unsigned short m_PositionX;  // 0x00; scaled by 4 when loaded
    unsigned short m_PositionY;  // 0x02; scaled by 4 when loaded
    unsigned short m_PositionZ;  // 0x04; scaled by 4 when loaded

    short m_AngleX;              // 0x06
    short m_AngleY;              // 0x08
    short m_AngleZ;              // 0x0A
} CameraMotionSample;            // Size: 0x0C

typedef struct {
    int m_SampleCount;                // 0x00; sample count / limit
    CameraMotionSample m_Samples[1];  // 0x04; first sample
} CameraMotionTable;

typedef struct {
    SphericalCoordinates pos;
    int yaw;
    int pitch;
} CameraPosition;

// Size 0x1F4 / 500, possibly including padding

typedef struct {
    SHORTMATRIX m_ProjectionMatrix; // 0x00
    SHORTMATRIX m_ViewMatrix;       // 0x14
    Vector3D m_Position;            // 0x28

    char pad_0x34[0xC];             // 0x34–0x3F

    int m_0x40;                     // 0x40
    Vector3D16 m_Rotation;          // 0x44–0x49;
    char pad_0x4A[2];               // 0x4A–0x4B

    int m_CameraMode;                // 0x4C
    int m_CameraSubstate;            // 0x50
    int m_CameraModeTimer;           // 0x54
    int m_CameraFlags;               // 0x58

    unsigned char unk_0x5C;         // 0x5C
    char pad_0x5D[3];               // 0x5D–0x5F

    Vector3D m_0x60;                // 0x60–0x6B
    int m_0x6C;                     // 0x6C
    Vector3D m_0x70;                // 0x70–0x7B

    CameraPosition m_CameraPositions[9]; // 0x7C–0x12F

    int m_0x130;                    // 0x130; provisional
    int m_0x134;                    // 0x134
    int m_SpyroOffCenterFrames;     // 0x138
    int m_0x13C;                    // 0x13C

    unsigned char m_0x140;          // 0x140; control flag
    unsigned char m_0x141;          // 0x141; inner-loop flag
    unsigned char m_0x142;          // 0x142
    unsigned char m_SphericalFlipState;          // 0x143
    unsigned char m_0x144;          // 0x144; cleared/set by func_8001E454
    unsigned char m_0x145;          // 0x145
    unsigned char m_0x146;          // 0x146; state flag
    unsigned char m_0x147;          // 0x147  

    int m_0x148;                    // 0x148
    int m_0x14C;                    // 0x14C
    int m_0x150;                    // 0x150
    int m_0x154;                    // 0x154
    int m_0x158;                    // 0x158
    
    Vector3D m_0x15C;            // 0x15C–0x167

    int m_RequestedCameraMode;      // 0x168
    int m_0x16C;                    // 0x16C

    CameraPosition m_0x170;         // 0x170–0x183; setting
    Vector3D m_0x184;               // 0x184–0x18F
    CameraPosition m_0x190;         // 0x190–0x1A3

    CameraMotionTable *m_0x1A4;     // 0x1A4; sample count and motion samples
    int m_0x1A8;                    // 0x1A8; current sample index/progress
    
    char pad_0x1AC[0x8];            // 0x1AC–0x1B3
    
    int m_0x1B4;                    // 0x1B4; motion/control flags
    Vector3D m_0x1B8;               // 0x1B8–0x1C3   
    Vector3D m_0x1C4;               // 0x1C4–0x1CF; rotation related
    
    char pad_0x1D0[0x4];            // 0x1D0–0x1D3    
    int m_0x1D4[3];                 // 0x1D4–0x1DF; not yet fully identified

    Vector3D m_0x1E0;               // 0x1E0–0x1EB; interpolation output
   
    short m_0x1EC;                  // 0x1EC
    short m_0x1EE;                  // 0x1EE
    short m_0x1F0;                  // 0x1F0
    char pad_0x1F2[2];              // 0x1F2–0x1F3
} Camera;

extern Camera g_Camera;


extern void func_8001D8A4();                                  /* extern */
extern void func_80021DC0();                                  /* extern */
extern void func_8001EFA8(CameraPosition*, CameraPosition*); 
extern void func_8001ECCC(CameraPosition* arg0, CameraPosition* arg1, int arg2);
extern void func_8001F008(CameraPosition* arg0);
extern void func_8001FA24(void);
extern void func_800216D8(int mode);




extern char D_800698BA;


// func_80021558
extern int D_80061564;
extern void (*D_80067040)(void);

// func_800216D8
extern int D_800683A0;
extern int D_80067114;

extern unsigned char *D_80066F78; // Object data used by camera mode 18.

extern short D_80061C58[]; // Cosine lookup table.
extern short D_80061BD8[]; // Sine lookup table.

extern CameraPosition D_8006163C[];
extern int D_80066F5C;

extern void (*D_800670AC)(int);

//func_80021DC0
extern int D_80061468[];
extern int D_80066F68;
extern int D_80067100;
extern int D_80067114;
extern int D_800681C8;
extern int D_800683A0;
extern int D_800683A4;
extern unsigned char D_800698BB;

/* Callback for unhandled camera modes. */
extern void (*D_80067014)(void);

//func_8001E2E4 and func_8001E454
extern int D_8006ABA4;

//func_8001E808
// Camera-position configuration table.
extern CameraPosition D_8006186C[9];

// Interior-symbol aliases into D_8006186C[0].
// These also serve as bases for corresponding fields in later entries.
extern int D_80061870; // pos.elevation, offset +0x04
extern int D_80061874; // pos.radius,    offset +0x08

// Alias for D_8006186C[4] through D_8006186C[8].
extern CameraPosition D_800618BC[5];

// Camera timer increment.
extern int D_80067018;

// Global state value compared against 7.
extern int D_800681C8;


/*  
Provisional collision-object layout; only m_0x53 is currently identified. 
Used in func_8001E454 and func_8001F618
*/
typedef struct CollisionObject {
    unsigned char pad_0x00[0x53];
    unsigned char m_0x53;
} CollisionObject;

//func_8001E454
// collision.s function
extern CollisionObject *func_8004055C(Vector3D *position, int flags, int arg2, int arg3, int arg4, int arg5);
extern Vector3D D_8006AB7C;

//func_8001F814
// Camera control flags
extern int D_800683A0;

// Camera position configuration records
extern CameraPosition D_80061560;
extern CameraPosition D_80061574;
extern CameraPosition D_80061588;
extern CameraPosition D_8006159C;
extern CameraPosition D_800615C4;
extern CameraPosition D_800615EC;
extern CameraPosition D_80061600;
extern CameraPosition D_80061614;
extern CameraPosition D_80061628;
extern CameraPosition D_800616A0;
extern CameraPosition D_800616B4;
extern CameraPosition D_800616C8;
extern CameraPosition D_800616DC;
extern CameraPosition D_800616F0;

#endif
