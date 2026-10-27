#include "common.h"
#include "camera.h"

// https://decomp.me/scratch/Y1tDj
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001D87C);

void func_8001D87C(void) {
    func_8001D8A4();
    func_80021DC0();
}

// https://decomp.me/scratch/zigZT
INCLUDE_ASM("asm/nonmatchings/camera", func_8001D8A4);

// https://decomp.me/scratch/SgE3O
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001DB58);
void func_8001DB58(void)
{
    int wrappedAzimuthDifference;
    int azimuthValue;
    int radius1;
    int radius2;
    int elevation1;
    int elevation2;
    int radiusDifference;
    int wrappedElevationDifference;
    int wrappedYawDifference;
    int wrappedPitchDifference;

    /*
     * Calculate the wrapped azimuth difference.
     * A nonzero value at 0x150 overrides the calculation.
     */
    azimuthValue = g_Camera.m_0x150;

    if (azimuthValue == 0) {
        wrappedAzimuthDifference =
            (g_Camera.m_CameraPositions[1].pos.azimuth -
             g_Camera.m_CameraPositions[2].pos.azimuth) & 0xFFF;

        g_Camera.m_CameraPositions[3].pos.azimuth =
            wrappedAzimuthDifference;

        if (wrappedAzimuthDifference >= 0x801) {
            azimuthValue = wrappedAzimuthDifference - 0x1000;
            g_Camera.m_CameraPositions[3].pos.azimuth = azimuthValue;
        }
    } else {
        g_Camera.m_CameraPositions[3].pos.azimuth = azimuthValue;
    }

    /*
     * Calculate the radius difference and wrapped elevation difference.
     */
    radius1 = g_Camera.m_CameraPositions[1].pos.radius;
    radius2 = g_Camera.m_CameraPositions[2].pos.radius;
    elevation1 = g_Camera.m_CameraPositions[1].pos.elevation;
    elevation2 = g_Camera.m_CameraPositions[2].pos.elevation;

    radiusDifference = radius1 - radius2;
    wrappedElevationDifference = (elevation1 - elevation2) & 0xFFF;

    g_Camera.m_CameraPositions[3].pos.radius = radiusDifference;
    g_Camera.m_CameraPositions[3].pos.elevation =
        wrappedElevationDifference;

    if (wrappedElevationDifference >= 0x801) {
        g_Camera.m_CameraPositions[3].pos.elevation =
            wrappedElevationDifference - 0x1000;
    }

    /* Calculate the wrapped yaw difference. */
    wrappedYawDifference =
        (g_Camera.m_CameraPositions[1].yaw -
         g_Camera.m_CameraPositions[2].yaw) & 0xFFF;

    g_Camera.m_CameraPositions[3].yaw = wrappedYawDifference;

    if (wrappedYawDifference >= 0x801) {
        g_Camera.m_CameraPositions[3].yaw =
            wrappedYawDifference - 0x1000;
    }

    /* Calculate the wrapped pitch difference. */
    wrappedPitchDifference =
        (g_Camera.m_CameraPositions[1].pitch -
         g_Camera.m_CameraPositions[2].pitch) & 0xFFF;

    g_Camera.m_CameraPositions[3].pitch = wrappedPitchDifference;

    if (wrappedPitchDifference >= 0x801) {
        g_Camera.m_CameraPositions[3].pitch =
            wrappedPitchDifference - 0x1000;
    }
}

// https://decomp.me/scratch/NStcV
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001DC6C);
void func_8001DC6C(void) {
    // Five Camera Channels
    // Channel One: azimuth.
    {
        int input;
        int state;
        int magnitude;
        int angle;
        int threshold;
        int *azimuthPtr;

        azimuthPtr = &g_Camera.m_CameraPositions[4].pos.azimuth;
        state = *azimuthPtr;

        state += ((g_Camera.m_CameraPositions[5].pos.azimuth *
                   g_Camera.m_CameraPositions[3].pos.azimuth -
                   g_Camera.m_CameraPositions[6].pos.azimuth * state) >> 6);

        *azimuthPtr = state;

        input = g_Camera.m_CameraPositions[3].pos.azimuth;

        // If the updated state is below the threshold, reset it
        // towards the input value and clamp it to +/- 0x100.
        magnitude = state;
        threshold = g_Camera.m_CameraPositions[7].pos.azimuth;

        if (magnitude < 0) {
            magnitude = -magnitude;
        }

        magnitude = (magnitude < threshold);

        if (magnitude) {
            *azimuthPtr = input << 7;

            if (*azimuthPtr > 0x100) {
                *azimuthPtr = 0x100;
            }

            if (*azimuthPtr < -0x100) {
                *azimuthPtr = -0x100;
            }
        }

        // Apply the optional azimuth magnitude limit.
        if (g_Camera.m_CameraPositions[8].pos.azimuth >= 0) {
            if (g_Camera.m_CameraPositions[4].pos.azimuth <
                ((-g_Camera.m_CameraPositions[8].pos.azimuth) << 8)) {
                g_Camera.m_CameraPositions[4].pos.azimuth =
                    (-g_Camera.m_CameraPositions[8].pos.azimuth) << 8;
            }

            if ((g_Camera.m_CameraPositions[8].pos.azimuth << 8) <
                g_Camera.m_CameraPositions[4].pos.azimuth) {
                g_Camera.m_CameraPositions[4].pos.azimuth =
                    g_Camera.m_CameraPositions[8].pos.azimuth << 8;
            }
        }

        // Accumulate azimuth and wrap to the signed 12-bit range.
        angle = g_Camera.m_CameraPositions[2].pos.azimuth +
                (g_Camera.m_CameraPositions[4].pos.azimuth >> 8);
        angle &= 0xFFF;

        g_Camera.m_CameraPositions[2].pos.azimuth = angle;

        if (angle >= 0x801) {
            g_Camera.m_CameraPositions[2].pos.azimuth = angle - 0x1000;
        }
    }

    // Channel Two: elevation.
    {
        int input;
        int state;
        int magnitude;
        int angle;
        int threshold;

        state = g_Camera.m_CameraPositions[4].pos.elevation;

        state +=
            ((g_Camera.m_CameraPositions[5].pos.elevation *
              g_Camera.m_CameraPositions[3].pos.elevation -
              g_Camera.m_CameraPositions[6].pos.elevation * state) >> 6);

        g_Camera.m_CameraPositions[4].pos.elevation = state;

        input = g_Camera.m_CameraPositions[3].pos.elevation;
        threshold = g_Camera.m_CameraPositions[7].pos.elevation;

        magnitude = state;

        if (magnitude < 0) {
            magnitude = -magnitude;
        }

        magnitude = (magnitude < threshold);

        if (magnitude) {
            g_Camera.m_CameraPositions[4].pos.elevation = input << 7;

            if (g_Camera.m_CameraPositions[4].pos.elevation > 0x100) {
                g_Camera.m_CameraPositions[4].pos.elevation = 0x100;
            }

            if (g_Camera.m_CameraPositions[4].pos.elevation < -0x100) {
                g_Camera.m_CameraPositions[4].pos.elevation = -0x100;
            }
        }

        // Apply the optional elevation magnitude limit.
        if (g_Camera.m_CameraPositions[8].pos.elevation >= 0) {
            if (g_Camera.m_CameraPositions[4].pos.elevation <
                ((-g_Camera.m_CameraPositions[8].pos.elevation) << 8)) {
                g_Camera.m_CameraPositions[4].pos.elevation =
                    (-g_Camera.m_CameraPositions[8].pos.elevation) << 8;
            }

            if ((g_Camera.m_CameraPositions[8].pos.elevation << 8) <
                g_Camera.m_CameraPositions[4].pos.elevation) {
                g_Camera.m_CameraPositions[4].pos.elevation =
                    g_Camera.m_CameraPositions[8].pos.elevation << 8;
            }
        }

        // Accumulate elevation and wrap to the signed 12-bit range.
        angle = g_Camera.m_CameraPositions[2].pos.elevation +
                (g_Camera.m_CameraPositions[4].pos.elevation >> 8);
        angle &= 0xFFF;

        g_Camera.m_CameraPositions[2].pos.elevation = angle;

        if (angle >= 0x801) {
            g_Camera.m_CameraPositions[2].pos.elevation = angle - 0x1000;
        }
    }

    // Channel Three: radius.
    {
        int input;
        int state;
        int magnitude;
        int threshold;
        int coefficient;

        // Load the coefficient first to preserve the matched instruction order.
        coefficient = g_Camera.m_CameraPositions[5].pos.radius;

        input = g_Camera.m_CameraPositions[3].pos.radius;
        state = g_Camera.m_CameraPositions[4].pos.radius;

        state += ((coefficient * input -
                   g_Camera.m_CameraPositions[6].pos.radius * state) >> 6);

        threshold = g_Camera.m_CameraPositions[7].pos.radius;
        g_Camera.m_CameraPositions[4].pos.radius = state;

        magnitude = state;

        if (magnitude < 0) {
            magnitude = -magnitude;
        }

        magnitude = (magnitude < threshold);

        if (magnitude) {
            g_Camera.m_CameraPositions[4].pos.radius = input << 7;

            if (g_Camera.m_CameraPositions[4].pos.radius > 0x100) {
                g_Camera.m_CameraPositions[4].pos.radius = 0x100;
            }

            if (g_Camera.m_CameraPositions[4].pos.radius < -0x100) {
                g_Camera.m_CameraPositions[4].pos.radius = -0x100;
            }
        }

        // Apply the optional radius magnitude limit.
        if (g_Camera.m_CameraPositions[8].pos.radius >= 0) {
            if (g_Camera.m_CameraPositions[4].pos.radius <
                ((-g_Camera.m_CameraPositions[8].pos.radius) << 8)) {
                g_Camera.m_CameraPositions[4].pos.radius =
                    (-g_Camera.m_CameraPositions[8].pos.radius) << 8;
            }

            if ((g_Camera.m_CameraPositions[8].pos.radius << 8) <
                g_Camera.m_CameraPositions[4].pos.radius) {
                g_Camera.m_CameraPositions[4].pos.radius =
                    g_Camera.m_CameraPositions[8].pos.radius << 8;
            }
        }

        // Accumulate radius without 12-bit angle wrapping.
        g_Camera.m_CameraPositions[2].pos.radius +=
            (g_Camera.m_CameraPositions[4].pos.radius >> 8);
    }

    // Channel Four: yaw.
    {
        int input;
        int state;
        int magnitude;
        int angle;
        int threshold;
        int previousState;
        int coefficient;

        // Smooth the state at position[4].yaw.
        coefficient = g_Camera.m_CameraPositions[5].yaw;

        input = g_Camera.m_CameraPositions[3].yaw;
        previousState = g_Camera.m_CameraPositions[4].yaw;

        state = previousState +
                ((coefficient * input -
                  g_Camera.m_CameraPositions[6].yaw * previousState) >> 6);

        threshold = g_Camera.m_CameraPositions[7].yaw;
        g_Camera.m_CameraPositions[4].yaw = state;

        magnitude = state;

        if (magnitude < 0) {
            magnitude = -magnitude;
        }

        magnitude = (magnitude < threshold);

        if (magnitude) {
            g_Camera.m_CameraPositions[4].yaw = input << 7;

            if (g_Camera.m_CameraPositions[4].yaw > 0x100) {
                g_Camera.m_CameraPositions[4].yaw = 0x100;
            }

            if (g_Camera.m_CameraPositions[4].yaw < -0x100) {
                g_Camera.m_CameraPositions[4].yaw = -0x100;
            }
        }

        // Apply the optional yaw magnitude limit.
        if (g_Camera.m_CameraPositions[8].yaw >= 0) {
            if (g_Camera.m_CameraPositions[4].yaw <
                ((-g_Camera.m_CameraPositions[8].yaw) << 8)) {
                g_Camera.m_CameraPositions[4].yaw =
                    (-g_Camera.m_CameraPositions[8].yaw) << 8;
            }

            if ((g_Camera.m_CameraPositions[8].yaw << 8) <
                g_Camera.m_CameraPositions[4].yaw) {
                g_Camera.m_CameraPositions[4].yaw =
                    g_Camera.m_CameraPositions[8].yaw << 8;
            }
        }

        // Accumulate yaw and wrap to the signed 12-bit range.
        angle = g_Camera.m_CameraPositions[2].yaw +
                (g_Camera.m_CameraPositions[4].yaw >> 8);
        angle &= 0xFFF;

        g_Camera.m_CameraPositions[2].yaw = angle;

        if (angle >= 0x801) {
            g_Camera.m_CameraPositions[2].yaw = angle - 0x1000;
        }
    }

    // Channel Five: pitch.
    {
        int input;
        int state;
        int magnitude;
        int angle;
        int threshold;
        int coefficient;

        coefficient = g_Camera.m_CameraPositions[5].pitch;
        input = g_Camera.m_CameraPositions[3].pitch;

        // Smooth the state at position[4].pitch.
        state = g_Camera.m_CameraPositions[4].pitch;

        state += ((coefficient * input -
                   g_Camera.m_CameraPositions[6].pitch * state) >> 6);

        threshold = g_Camera.m_CameraPositions[7].pitch;
        g_Camera.m_CameraPositions[4].pitch = state;

        magnitude = state;

        if (magnitude < 0) {
            magnitude = -magnitude;
        }

        magnitude = (magnitude < threshold);

        if (magnitude) {
            g_Camera.m_CameraPositions[4].pitch = input << 7;

            if (g_Camera.m_CameraPositions[4].pitch > 0x100) {
                g_Camera.m_CameraPositions[4].pitch = 0x100;
            }

            if (g_Camera.m_CameraPositions[4].pitch < -0x100) {
                g_Camera.m_CameraPositions[4].pitch = -0x100;
            }
        }

        // Apply the optional pitch magnitude limit.
        if (g_Camera.m_CameraPositions[8].pitch >= 0) {
            if (g_Camera.m_CameraPositions[4].pitch <
                ((-g_Camera.m_CameraPositions[8].pitch) << 8)) {
                g_Camera.m_CameraPositions[4].pitch =
                    (-g_Camera.m_CameraPositions[8].pitch) << 8;
            }

            if ((g_Camera.m_CameraPositions[8].pitch << 8) <
                g_Camera.m_CameraPositions[4].pitch) {
                g_Camera.m_CameraPositions[4].pitch =
                    g_Camera.m_CameraPositions[8].pitch << 8;
            }
        }

        // Accumulate pitch and wrap to the signed 12-bit range.
        angle = g_Camera.m_CameraPositions[2].pitch +
                (g_Camera.m_CameraPositions[4].pitch >> 8);
        angle &= 0xFFF;

        g_Camera.m_CameraPositions[2].pitch = angle;

        if (angle >= 0x801) {
            g_Camera.m_CameraPositions[2].pitch = angle - 0x1000;
        }
    }
}

// https://decomp.me/scratch/dg0nn - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001E204);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E270);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E2E4);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E454);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001E808);

// https://decomp.me/scratch/zNKgH
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001ECCC); SetCameraPosition()

void func_8001ECCC(CameraPosition* arg0, CameraPosition* arg1, int arg2) {
    int temp_v1;

    temp_v1 = (arg1->pos.azimuth + arg2) & 0xFFF;
    arg0->pos.azimuth = temp_v1;
    if (temp_v1 > 0x800) {
        arg0->pos.azimuth = (int) (temp_v1 - 0x1000);
    }
    arg0->pos.elevation = (int) arg1->pos.elevation;
    arg0->pos.radius = (int) arg1->pos.radius;
    arg0->yaw = (int) arg1->yaw;
    arg0->pitch = (int) arg1->pitch;
}

// https://decomp.me/scratch/9Fp5c
INCLUDE_ASM("asm/nonmatchings/camera", func_8001ED20);

// https://decomp.me/scratch/BTTNp
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001EE18);
int func_8001EE18(SphericalCoordinates* arg0, Vector3D* arg1, void* arg2) {
    Vector3D offset;
    int flipped;
    int planarDistance;
    int angle;
    int angleDelta;
    int magnitude;

    flipped = 0;

    // Calculate the offset using the appropriate coordinate transform.
    if (arg2 != 0) {
        func_8001BE00(&offset, arg1, arg2);
    } else {
        func_8001BDB0(&offset, arg1);
    }

    // Calculate elevation from the offset.
    planarDistance = func_8001BA20(&offset, 0);
    arg0->elevation = func_8001B4B8(planarDistance, offset.z, 1);

    // Calculate the new azimuth.
    angle = func_8001B4B8(offset.x, offset.y, 1);

    // Find the shortest signed angular difference.
    angleDelta = (angle - arg0->azimuth) & 0xFFF;
    

    if (angleDelta >= 0x801) {         
        angleDelta -= 0x1000;
    }

    magnitude = (angleDelta >= 0) ? angleDelta : -angleDelta;

    // For a large direction change, consider reversing the viewing direction.
    if (magnitude >= 0x401) {
        if (g_Camera.m_SphericalFlipState != 0 ||
            g_Camera.m_CameraMode == 7 ||
            g_Camera.m_CameraMode == 15) {
            angle = (angle + 0x800) & 0xFFF;
            flipped = 1;

            // Reverse the elevation when the azimuth is flipped.
            arg0->elevation = (0x800 - arg0->elevation) & 0xFFF;
        }
    }

    // Preserve the previous azimuth when the offset is nearly zero
    // in both of the first two coordinate axes.
    magnitude = offset.x;

    if (magnitude < 0) {
        magnitude = -magnitude;
    }

    if (magnitude < 0x80) {
        magnitude = offset.y;

        if (magnitude < 0) {
            magnitude = -magnitude;
        }

        if (magnitude < 0x80) {
            angle = g_Camera.m_CameraPositions[2].pos.azimuth;
        }
    }

    // Convert azimuth to the signed angle range.
    if (angle >= 0x801) {
        angle -= 0x1000;
    }

    arg0->azimuth = angle;

    // Convert elevation to the signed angle range.
    if (arg0->elevation >= 0x801) {
        arg0->elevation -= 0x1000;
    }

    // Calculate the full distance.
    arg0->radius = func_8001BA20(&offset, 1);

    return flipped;
}

// https://decomp.me/scratch/FuNiS - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001EFA8);

// https://decomp.me/scratch/GBd7i
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001F008); ResetCameraPosition()

void func_8001F008(CameraPosition* arg0) {
    arg0->pos.azimuth = 0;
    arg0->pos.elevation = 0;
    arg0->pos.radius = 0;
    arg0->yaw = 0;
    arg0->pitch = 0;
}

// https://decomp.me/scratch/ZWw25 - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F020);

// https://decomp.me/scratch/1inpk
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F0BC);

// https://decomp.me/scratch/mW3JY
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001F1E4);

void func_8001F1E4(int arg0, int arg1) {
    g_Camera.m_RequestedCameraMode = arg1;
    g_Camera.m_0x16C = arg0;
}

// https://decomp.me/scratch/CRD8v - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F1FC);

// https://decomp.me/scratch/smjIy
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F24C);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F2E4);

// https://decomp.me/scratch/KXnuG - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F4A4);

// https://decomp.me/scratch/AssXr
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F524);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F618);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F814);

// https://decomp.me/scratch/eaquc
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001FA24);

void func_8001FA24(void) {
    if (D_800698BA != 0) {
        g_Camera.m_CameraFlags = 0;
    } else {
        g_Camera.m_CameraFlags = 7;
    }
}

INCLUDE_ASM("asm/nonmatchings/camera", func_8001FA58);

// https://decomp.me/scratch/AyB10
INCLUDE_ASM("asm/nonmatchings/camera", func_80021558);

INCLUDE_ASM("asm/nonmatchings/camera", func_800216D8);

INCLUDE_ASM("asm/nonmatchings/camera", func_80021DC0);
