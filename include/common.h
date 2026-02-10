#include "include_asm.h"
#include <sys/types.h>

typedef struct {
    int x, y, z;
} Vector3D;

typedef struct {
    u_char x, y, z;
} Vector3D8;

typedef struct {
    short x, y, z;
} Vector3D16;

typedef struct {
    int azimuth, elevation, radius;
} SphericalCoordinates;


