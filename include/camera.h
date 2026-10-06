#ifndef __CAMERA_H
#define __CAMERA_H

#include "common.h"

// Size 0x1F4 / 500, possibly including padding

typedef struct {
    SHORTMATRIX m_ProjectionMatrix;
    SHORTMATRIX m_ViewMatrix;
    Vector3D m_Position;
    char pad_0x34[0xC];
    int m_0x40;
    char pad_0x44[0xC];
    int m_0x50;
    char pad_0x54[4];
    int m_0x58;
    char m_0x5C[0x10C];
    int m_0x168;
    int m_0x16C;
    char m_0x170[0x84];
} Camera;

extern Camera g_Camera;

typedef struct {
    SphericalCoordinates pos;
    int yaw;
    int pitch;
} CameraPosition;

extern void func_8001D8A4();                                  /* extern */
extern void func_80021DC0();                                  /* extern */


extern char D_800698BA;

#endif
