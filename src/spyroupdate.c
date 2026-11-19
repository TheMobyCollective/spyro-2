#include "common.h"
#include "spyroupdate.h"
#include "camera.h"

extern void func_8001BB3C(Vector3D *vector, int targetMagnitude);
extern void func_8001BCC4(Vector3D *vector, int currentMagnitude, int targetMagnitude);
extern void func_8001BDB0(Vector3D *destination, Vector3D *source);
extern void func_8001BDCC(Vector3D *destination, Vector3D *source, Vector3D *offset);


void func_8002A164(void);
void func_8002A4C8(void);
void func_8002A78C(void);
void func_800313E4(void);
void func_80031E4C(void);
void func_800327F0(void);
void func_80032E74(void);
void func_8003305C(int frameIndex, Vector3D *outputVector);
void func_800347A4(void);
void func_80034E0C(void);
void func_800350D0(int arg0);

// https://decomp.me/scratch/ZlfJs
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002A07C);
void func_8002A07C(void) {
    func_8001BDA0(&g_Spyro.m_Vector_0x7C);
    func_80031EAC();
    func_80030C94();
    func_8002A164();
    func_8002A4C8();
    func_80035D38();
    func_8002FC20();
    func_8002E304();
    func_8002F08C();
    func_8002F7A8();
    func_80031E4C();
    func_800327F0();
    func_800313E4();
    if (g_Spyro.m_0x58 == 6) {
        func_8003305C(0x3F, &g_Spyro.m_Vector_0x284);
        func_8003305C(0x3E, &g_Spyro.m_Vector_0x290);
    }
    if ((D_800698BE != 0) && (g_Spyro.m_Rotation_0x10.pitch == 0)) {
        g_Spyro.m_Rotation_0x10.pitch = 1;
    }
}

// https://decomp.me/scratch/ONlbV
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002A164);
void func_8002A164(void) {
    int i;
    unsigned char *pBigHead;

    for (i = 0; i < D_80067018; i++) {
        func_80033300(i);
    }

    func_8002A78C();
    func_800347A4();
    func_80034E0C();

    for (i = 0; i < D_80067018; i++) {
        func_800350D0(i);
    }

    // Update Spyro's rotation values.
    g_Spyro.m_Rotation_0x0C.roll = g_Spyro.m_Vector_0x64.x >> 4;
    g_Spyro.m_Rotation_0x0C.pitch = g_Spyro.m_Vector_0x64.y >> 4;
    g_Spyro.m_Rotation_0x0C.yaw = g_Spyro.m_Vector_0x64.z >> 4;

    // Generate and combine Spyro's rotation matrices.
    func_8001B6C8(
        &g_Spyro.m_Rotation_0x0C,
        &g_Spyro.m_RotationMatrix_0x30,
        nullptr
    );

    func_8001B6C8(
        &g_Spyro.m_Rotation_0x10,
        &g_Spyro.m_RotationMatrix_0x19C,
        nullptr
    );

    func_80059D6C(
        &g_Spyro.m_RotationMatrix_0x30,
        &g_Spyro.m_RotationMatrix_0x19C,
        &g_Spyro.m_RotationMatrix_0x19C
    );

    // Apply the Big Head cheat.
    pBigHead = (unsigned char *)&D_800698BE;

    if (*pBigHead != 0) {
        func_80059E7C(
            &g_Spyro.m_RotationMatrix_0x19C,
            (char *)(pBigHead + 2)
        );
    }

    if (g_Spyro.m_Position.z < 0x400 ||
        (g_Spyro.m_0x50 == 6 &&
         g_Spyro.m_0x54 == 1 &&
         g_Spyro.m_0x5C >= 0x3C)) {

        func_80032E74();
        return;
    }

    // Handle the Z-position threshold.
    if (g_Spyro.m_Position.z < D_80060234[D_80066F54]) {

        if (g_Spyro.m_0x50 != 6) {
            func_800351D8(6);
        }

        g_Spyro.m_0x54 = 1;

        if (g_Camera.m_CameraMode != 9) {
            g_Camera.m_RequestedCameraMode = 9;
            func_800216D8(9);
            g_Camera.m_CameraSubstate = 2;

            func_8001BDB0(
                &g_Camera.m_MotionPositionOrigin,
                &g_Camera.m_Position
            );
        }

        func_8001BDB0(
            &g_Camera.m_0x184,
            &g_Spyro.m_Position
        );

        func_8001EE18(
            &g_Camera.m_0x170,
            &g_Camera.m_MotionPositionOrigin,
            &g_Spyro.m_Position
        );

        g_Camera.m_0x170.yaw = 0;
        g_Camera.m_0x170.pitch = 0;

        return;
    }

    // Handle the X/Y position boundary.
    if (g_Spyro.m_Position.x < 0x800 ||
        g_Spyro.m_Position.y < 0x800) {

        if (g_Spyro.m_0x50 == 6) {
            g_Spyro.m_Vector_0xA0.x = 0;
            g_Spyro.m_Vector_0xA0.y = 0;

            g_Spyro.m_Vector_0x94.x = 0;
            g_Spyro.m_Vector_0x94.y = 0;
        }
        else {
            func_8001BDA0(&g_Spyro.m_Vector_0xA0);
            func_8001BDA0(&g_Spyro.m_Vector_0x94);
            func_800351D8(6);
        }

        g_Spyro.m_0x54 = 1;

        if (g_Camera.m_CameraMode != 9) {
            g_Camera.m_RequestedCameraMode = 9;
            func_800216D8(9);
            g_Camera.m_CameraSubstate = 2;
        }

        func_8001BDB0(
            &g_Camera.m_0x184,
            &g_Spyro.m_Position
        );

        func_8001EE18(
            &g_Camera.m_0x170,
            &g_Camera.m_Position,
            &g_Spyro.m_Position
        );
    }
}

// https://decomp.me/scratch/rHWJ3
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002A4C8);
void func_8002A4C8(void) {
    int commandResult;

    // Process the command entries in sequence.
    commandResult = 0;
    if (g_Spyro.m_0xC0 == 0) {
        commandResult = func_8002AAFC(g_Spyro.m_0x114, 1);
    }

    if ((commandResult == 0) &&
        (func_8002AAFC(g_Spyro.m_0x110, 0) == 0)) {
        func_8002AAFC(g_Spyro.m_0x118, 2);

        // Select the state-dependent effect when the vertical trigger is active.
        if ((g_Spyro.m_0xFC != 0) && (g_Spyro.m_timer_0x258 >= 0)) {
            if (D_80069894 >= 0) {
                if (g_Spyro.m_0x58 != 8) {
                    func_800351D8(0x37);
                }
            } else if ((g_Spyro.m_0x58 == 0xB) ||
                       (g_Spyro.m_0x50 == 0x39)) {
                if (g_Spyro.m_Position.z >= g_Spyro.m_0xFC) {
                    if (g_Spyro.m_0x50 == 0x28) {
                        if (g_Spyro.m_0x54 != 1) {
                            func_800351D8(0x2C);
                        }
                    } else {
                        func_800351D8(0x2C);
                    }
                }
            } else if (g_Spyro.m_0x58 == 0xC) {
                if ((g_Spyro.m_Position.z >= g_Spyro.m_0xFC) &&
                    (g_Spyro.m_0x54 != 1)) {
                    func_800351D8(0x15);
                }
            } else if ((g_Spyro.m_Vector_0xA0.z <= 0) &&
                       (g_Spyro.m_0x58 != 0xA) &&
                       ((g_Spyro.m_0xFC + 0xB2) >= g_Spyro.m_Position.z)) {
                if ((g_Spyro.m_0x50 == 0x15) ||
                    (g_Spyro.m_0x50 == 0x2E)) {
                    if (D_80064682 != 0) {
                        if (func_8003EE3C(&g_Spyro.m_Position, 0x400, 1, 0) != 0) {
                            func_800351D8(0x2C);
                        } else {
                            func_800351D8(0x2A);
                        }
                    } else {
                        func_800351D8(0x2C);
                    }
                } else {
                    func_800351D8(0x2C);
                }
            }
        }
    }

    // Recalculate the vertical offset using Spyro's position first.
    g_Spyro.m_0x2C = 0;
    if ((func_8003EE84(&g_Spyro.m_Position, 0xC00) != 0) &&
        (func_8002B078(D_8006AB94) == 4)) {
        g_Spyro.m_0x2C = g_Spyro.m_Position.z - D_8006AB78;
    }

    // Fall back to the camera position if the Spyro check left the offset unset.
    if ((g_Spyro.m_0x2C == 0) &&
        (func_8003EE84(&g_Camera.m_Position, 0x1000) != 0) &&
        (func_8002B078(D_8006AB94) == 4)) {
        g_Spyro.m_0x2C = g_Spyro.m_Position.z - D_8006AB78;
    }
}

// https://decomp.me/scratch/3OgO1
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002A78C);
void func_8002A78C(void) {
    Vector3D movementVector;
    Vector3D adjustmentVector;
    int movementProjection;
    int projectionAngleY;
    int projectionAngleZ;
    int thresholdAngleY;
    int thresholdAngleZ;
    int movementMagnitude;
    int adjustedMagnitude;
    int magnitudeWithOffset;

    // Check whether movement adjustment is enabled.
    if (g_Spyro.m_0x244 & 1) {
        func_8001BDA0(&adjustmentVector);

        // Build a working vector from Spyro's current movement vector.
        func_8001BDB0(&movementVector, &g_Spyro.m_Vector_0x7C);
        func_8001BD48(&movementVector, 6);
        func_8001BDCC(
            &movementVector,
            &movementVector,
            &g_Spyro.m_Position
        );
        func_8001BE00(
            &movementVector,
            &g_Spyro.m_Vector_0x248,
            &movementVector
        );

        // Calculate the magnitude, optionally including the Z component.
        if (g_Spyro.m_0x244 & 4) {
            movementMagnitude = func_8001BA20(&movementVector, 1);
        } else {
            movementMagnitude = func_8001BA20(&movementVector, 0);
            movementVector.z = 0;
        }

        // Apply the directional projection adjustment.
        if (g_Spyro.m_0x244 & 2) {
            if (movementMagnitude >= g_Spyro.m_0x254) {
                func_8001BD48(&movementVector, 6);
                func_8001BB3C(&movementVector, 0x1000);

                // Calculate the movement vector's projection onto
                // Spyro's current movement vector (12-bit fixed point).
                movementProjection = (int) (
                    (movementVector.x * g_Spyro.m_Vector_0x7C.x) +
                    (movementVector.y * g_Spyro.m_Vector_0x7C.y) +
                    (movementVector.z * g_Spyro.m_Vector_0x7C.z)
                ) >> 0xC;

                if (movementProjection < 0) {
                    // Calculate the Y angular difference when enabled.
                    if (g_Spyro.m_0x244 & 4) {
                        projectionAngleY = (func_8001B4B8(
                            func_8001BA20(&movementVector, 0),
                            movementVector.z,
                            1
                        ) - g_Spyro.m_Vector_0x64.y) & 0xFFF;

                        adjustmentVector.y = projectionAngleY;

                        // Convert the 12-bit angle to a signed difference.
                        if (projectionAngleY >= 0x801) {
                            adjustmentVector.y = projectionAngleY - 0x1000;
                        }
                    }

                    // Calculate the Z angular difference.
                    projectionAngleZ = (func_8001B4B8(
                        movementVector.x,
                        movementVector.y,
                        1
                    ) - g_Spyro.m_Vector_0x64.z) & 0xFFF;

                    adjustmentVector.z = projectionAngleZ;

                    if (projectionAngleZ >= 0x801) {
                        adjustmentVector.z = projectionAngleZ - 0x1000;
                    }

                    func_8001BD48(&adjustmentVector, 5);

                    // Apply the angular corrections.
                    g_Spyro.m_Vector_0x64.y += adjustmentVector.y;
                    g_Spyro.m_Vector_0x64.z += adjustmentVector.z;

                    // Scale the movement vector and apply the correction.
                    func_8001BCC4(
                        &movementVector,
                        0x1000,
                        -movementProjection
                    );

                    func_8001BDCC(
                        &g_Spyro.m_Vector_0x7C,
                        &g_Spyro.m_Vector_0x7C,
                        &movementVector
                    );
                }
            }
        } else if ((g_Spyro.m_0x254 - 0x2000) < movementMagnitude) {
            // Calculate the amount of movement adjustment required.
            magnitudeWithOffset = movementMagnitude + 0x2000;
            adjustedMagnitude = magnitudeWithOffset - g_Spyro.m_0x254;

            func_8001BCC4(
                &movementVector,
                movementMagnitude,
                adjustedMagnitude
            );

            func_8001BDCC(
                &g_Spyro.m_Vector_0x7C,
                &g_Spyro.m_Vector_0x7C,
                &movementVector
            );

            // Calculate the Y angular difference when enabled.
            if (g_Spyro.m_0x244 & 4) {
                thresholdAngleY = (func_8001B4B8(
                    func_8001BA20(&movementVector, 0),
                    movementVector.z,
                    1
                ) - g_Spyro.m_Vector_0x64.y) & 0xFFF;

                adjustmentVector.y = thresholdAngleY;

                if (thresholdAngleY >= 0x801) {
                    adjustmentVector.y = thresholdAngleY - 0x1000;
                }
            }

            // Calculate the Z angular difference.
            thresholdAngleZ = (func_8001B4B8(
                movementVector.x,
                movementVector.y,
                1
            ) - g_Spyro.m_Vector_0x64.z) & 0xFFF;

            adjustmentVector.z = thresholdAngleZ;

            if (thresholdAngleZ >= 0x801) {
                adjustmentVector.z = thresholdAngleZ - 0x1000;
            }

            // Limit the adjustment magnitude to 0x2000.
            if (adjustedMagnitude >= 0x2001) {
                adjustedMagnitude = 0x2000;
            }

            func_8001BCC4(&adjustmentVector, 0x2000, adjustedMagnitude);
            func_8001BD48(&adjustmentVector, 3);

            // Apply the angular corrections.
            g_Spyro.m_Vector_0x64.y += adjustmentVector.y;
            g_Spyro.m_Vector_0x64.z += adjustmentVector.z;
        }
    }
}

// https://decomp.me/scratch/VT80W
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002AAFC);
int func_8002AAFC(int commandIndex, int mode) {
    unsigned char *commandEntry;
    unsigned char *effectObject;
    int *commandData;
    int *statusValuePtr;
    unsigned char commandType;
    int spyroState;
    int effectAngle;

    commandIndex &= 0x3F;

    if (commandIndex == 0x3F) {
        return 0;
    }

    commandEntry = D_800673E8[commandIndex];
    commandType = commandEntry[0];
    commandData = (int *)(commandEntry + 4);

    if (commandType >= 0xB) {
        return 0;
    }

    switch (commandType) {
        case 0:
            if (mode != 1) {
                return 0;
            }

            if (g_Spyro.m_Vector_0xA0.z > 0) {
                return 0;
            }

            if (g_Spyro.m_0x1D4 != 0) {
                return 0;
            }

            if (g_Spyro.m_0x50 == 0x1E) {
                return 1;
            }

            g_Spyro.m_0x25C = 0x5A;

            if (commandData[0] != 0) {
                g_Spyro.m_timer_0x258 = -1;
            } else if (g_Spyro.m_timer_0x258 >= 0) {
                g_Spyro.m_timer_0x258--;
            }

            func_800351D8(0x1E);
            return 1;

        case 2:
            if (g_Spyro.m_0x58 != 6) {
                return 0;
            }

            if (D_80069894 < 0) {
                return 0;
            }

            func_800351D8(0x3D);
            return 1;

        case 4:
            if (mode != 1) {
                return 0;
            }

            spyroState = g_Spyro.m_0x58;

            if (spyroState == 0x10) {
                return 0;
            }

            if (spyroState == 7 || spyroState == 8) {
                return 0;
            }

            if (spyroState == 0) {
                return 0;
            }

            if (g_Spyro.m_0x50 == 0xD) {
                return 0;
            }

            func_800351D8(9);
            return 1;

        case 5:
            if (mode == 2) {
                if (g_Spyro.m_0x50 != 0xD) {
                    func_800351D8(0xD);
                }

                func_8001BB3C(&g_Spyro.m_Vector_0xE0, 0x800);

                func_8001BDB0(
                    &g_Spyro.m_Vector_0x94,
                    &g_Spyro.m_Vector_0xE0
                );

                func_8001BDB0(
                    &g_Spyro.m_Vector_0x88,
                    &g_Spyro.m_Vector_0xE0
                );

                effectObject = D_800670B4(0x2CC, 0);

                if (effectObject != nullptr) {
                    func_8001BDB0(
                        (Vector3D *)(effectObject + 0xC),
                        &g_Spyro.m_Position
                    );

                    effectAngle = func_8001B4B8(
                        g_Spyro.m_Vector_0xE0.x,
                        g_Spyro.m_Vector_0xE0.y,
                        0
                    );

                    effectObject[0x46] = (unsigned char)effectAngle;
                }

                return 1;
            } else if (mode == 0) {
                if (g_Spyro.m_0x50 != 0xD) {
                    func_800351D8(0xD);
                }

                func_8001BB3C(&g_Spyro.m_Vector_0x11C, 0x800);

                func_8001BDB0(
                    &g_Spyro.m_Vector_0x94,
                    &g_Spyro.m_Vector_0x11C
                );

                func_8001BDB0(
                    &g_Spyro.m_Vector_0x88,
                    &g_Spyro.m_Vector_0x11C
                );

                effectObject = D_800670B4(0x2CC, 0);

                if (effectObject != nullptr) {
                    func_8001BDB0(
                        (Vector3D *)(effectObject + 0xC),
                        &g_Spyro.m_Position
                    );

                    effectAngle = func_8001B4B8(
                        g_Spyro.m_Vector_0x11C.x,
                        g_Spyro.m_Vector_0x11C.y,
                        0
                    );

                    effectObject[0x46] = (unsigned char)effectAngle;
                }

                return 1;
            }

            return 0;

        case 6:
            func_80019928(commandData[0]);
            return 0;

        case 7:
            if (mode != 1) {
                return 0;
            }

            if (g_Spyro.m_Vector_0xA0.z > 0) {
                return 0;
            }

            if (g_Spyro.m_0x1D4 != 0) {
                return 0;
            }

            if (g_Spyro.m_0x58 == 8) {
                return 0;
            }

            g_Spyro.m_0x25C = 0x5A;

            if (g_Spyro.m_timer_0x258 < 0 || --g_Spyro.m_timer_0x258 < 0) {
                if (*(int *)((unsigned char *)D_80068C94 + 0x124) != 0) {
                    func_800351D8(0x3A);
                } else {
                    func_800351D8(0x1F);
                }
            } else {
                func_800351D8(8);
            }

            return 1;

        case 1:
            if ((g_Spyro.m_0x20C & 0x40000) != 0) {
                return 0;
            }

            if (mode != 1) {
                return 0;
            }

            if (g_Spyro.m_0x1D4 != 0) {
                return 0;
            }

            spyroState = g_Spyro.m_0x58;

            if (spyroState == 8) {
                return 0;
            }

            if (spyroState == 2 || spyroState == 7) {
                if (g_Spyro.m_Vector_0xA0.z > 0) {
                    return 0;
                }
            }

            statusValuePtr = &D_80069894;

            if (*statusValuePtr >= 0) {
                if (g_Spyro.m_0x58 == 8) {
                    return 1;
                }

                func_800351D8(0x3A);
                return 1;
            }

            g_Spyro.m_0x25C = 0x5A;

            if (g_Spyro.m_timer_0x258 >= 0) {
                g_Spyro.m_timer_0x258--;

                if (g_Spyro.m_timer_0x258 >= 0) {
                    func_800351D8(0x1C);
                    return 1;
                }
            }

            if (*(int *)((unsigned char *)D_80068C94 + 0x124) != 0) {
                func_800351D8(0x3A);
                return 1;
            }

            func_800351D8(0x1F);

            if (*statusValuePtr < 0) {
                return 1;
            }

            g_Spyro.m_0x54 = 1;
            return 1;

        case 9:
            if (g_Spyro.m_0x50 != 0x3D) {
                return 0;
            }

            g_Spyro.m_0x54 = 1;
            return 0;

        case 10:
            if (mode != 1) {
                return 0;
            }

            spyroState = g_Spyro.m_0x58;

            if (spyroState == 0x11) {
                return 0;
            }

            if (spyroState == 7 || spyroState == 8) {
                return 0;
            }

            func_800351D8(0x31);
            return 1;

        default:
            return 0;
    }
}

// https://decomp.me/scratch/FvjTR
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002AFDC);
int func_8002AFDC(SHORTMATRIX *rotationMatrix, Vector3D *point1, Vector3D *point2) {
    int result;

    // Transform the first point using the supplied rotation matrix.
    func_8001B9A4(rotationMatrix, point1, point1);
    func_8001BDCC(point1, point1, &g_Spyro.m_Position);

    // Transform the second point using the currently loaded GTE matrix.
    func_8001B9A4(nullptr, point2, point2);
    func_8001BDCC(point2, point2, &g_Spyro.m_Position);

    if (func_8003CE94(point1, point2) != 0) {
        result = func_8002B078(D_8006AB94);
    } else {
        result = -1;
    }

    return result;
}

// https://decomp.me/scratch/FRUhP
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B078);

// https://decomp.me/scratch/ksfn1
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B0B8);
int func_8002B0B8(void) {
    int flags;
    int timer;
    int event;

    if (g_Spyro.m_0x25C != 0) {
        return 0;
    }

    if (g_Spyro.m_0x1D4 != 0) {
        return 0;
    }

    flags = g_Spyro.m_0x24;

    if ((flags & 0x1F9) != 0) {
        timer = g_Spyro.m_timer_0x258;
        g_Spyro.m_0x25C = 0x5A;

        if (timer >= 0) {
            g_Spyro.m_timer_0x258 = timer - 1;
        }

        if (flags & 0x1) {
            if (g_Spyro.m_0x58 == 0xB ||
                g_Spyro.m_0x58 == 0xC) {
                event = 0x39;
            } else {
                event = 0xF;
            }
        } else if (flags & 0x10) {
            event = 0x1A;
        } else if (flags & 0x20) {
            event = 0x8;
        } else if (flags & 0x80) {
            event = 0x1D;
        } else if (flags & 0x100) {
            event = 0x17;
        } else if (flags & 0x8) {
            if (g_Spyro.m_timer_0x258 < 0) {
                if (*(int *)((char *)D_80068C94 + 0x124) != 0) {
                    event = 0x3A;
                } else {
                    event = 0x1F;
                }
            } else {
                event = 0x1C;
            }
        } else if (flags & 0x40) {
            if (g_Spyro.m_timer_0x258 >= 0 ||
                *(int *)((char *)D_80068C94 + 0x128) == 0) {
                event = 0x38;
            } else {
                event = 0x3B;
            }
        } else {
            return 1;
        }

        func_800351D8(event);

        return 1;
    }

    return 0;
}

// https://decomp.me/scratch/zWIn9
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B228);
int func_8002B228(void) {
    int spyroState;
    int angleDifference;
    Vector3D relativeVector;

    spyroState = g_Spyro.m_0x58;

    if (spyroState == 9) {
        if ((g_Spyro.m_0x24 & 0x4000) == 0) {
            return 0;
        }

        func_800351D8(0xD);
        return 1;
    }

    switch (g_Spyro.m_0x24 & 0x6) {
        case 2:
            if (g_Spyro.m_CollisionObject_0x140 == nullptr) {
                return 0;
            }

            if (spyroState == 0xC) {
                return 0;
            }

            func_8001BE00(
                &relativeVector,
                &g_Spyro.m_CollisionObject_0x140->m_Vector_0x0C,
                &g_Spyro.m_Position
            );

            SUB_ANGLE(
                angleDifference,
                func_8001B4B8(relativeVector.x, relativeVector.y, 1),
                g_Spyro.m_Vector_0x64.z
            );

            if (ABS(angleDifference) > 0x1FF) {
                return 0;
            }

            func_800351D8(0xD);
            return 1;

        case 4:
            if (spyroState == 0xC) {
                return 0;
            }

            func_800351D8(0xD);
            return 1;

        case 6:
            return func_8002B0B8();

        default:
            return 0;
    }
}

// https://decomp.me/scratch/N666V
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B36C);

// https://decomp.me/scratch/Ozwac
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B4E4);
void func_8002B4E4(Vector3D *outputVector, int useCameraRotation) {
    int inputComponents[2];
    int relativeAngle;

    if (D_8006839E != 0) {
        inputComponents[0] = D_80066F38[0xE] - 0x7F;
        inputComponents[1] = 0x7F - D_80066F38[0xF];
    } else {
        if ((*(unsigned int *)D_80066F38 & 0x1000) != 0) {
            inputComponents[1] = 0x7F;
        } else if ((*(unsigned int *)D_80066F38 & 0x4000) != 0) {
            inputComponents[1] = -0x7F;
        } else {
            inputComponents[1] = 0;
        }

        if ((*(unsigned int *)D_80066F38 & 0x2000) != 0) {
            inputComponents[0] = 0x7F;
        } else if ((*(unsigned int *)D_80066F38 & 0x8000) != 0) {
            inputComponents[0] = -0x7F;
        } else {
            inputComponents[0] = 0;
        }
    }

    if (useCameraRotation != 0) {
        relativeAngle = (
            g_Spyro.m_Vector_0x64.z - g_Camera.m_Rotation.z
        ) & 0xFFF;

        outputVector->x = (
            (-inputComponents[0] * func_8001B664(relativeAngle)) -
            (inputComponents[1] * func_8001B61C(relativeAngle))
        ) >> 12;

        outputVector->y = (
            (inputComponents[1] * func_8001B664(relativeAngle)) -
            (inputComponents[0] * func_8001B61C(relativeAngle))
        ) >> 12;
    } else {
        outputVector->x = inputComponents[0];
        outputVector->y = inputComponents[1];
    }
}

// https://decomp.me/scratch/9waFL
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B694);
void func_8002B694(Vector3D *outputVector, Vector3D *controlVector, int forceControlY) {
    int adjustedComponents[2];
    int centeringAdjustment;

    if (D_8006839E != 0) {
        adjustedComponents[0] = D_80066F38[0xE] - 0x7F;
        adjustedComponents[1] = 0x7F - D_80066F38[0xF];

        adjustedComponents[0] -= controlVector->z;

        if (adjustedComponents[0] < -0x10) {
            adjustedComponents[0] = -0x10;
        }

        if (adjustedComponents[0] > 0x10) {
            adjustedComponents[0] = 0x10;
        }

        controlVector->z += adjustedComponents[0];

        if (controlVector->z < -0x7F) {
            controlVector->z = -0x7F;
        }

        if (controlVector->z >= 0x80) {
            controlVector->z = 0x7F;
        }

        adjustedComponents[0] = controlVector->z;

        adjustedComponents[1] -= controlVector->y;

        if (adjustedComponents[1] < -0x10) {
            adjustedComponents[1] = -0x10;
        }

        if (adjustedComponents[1] > 0x10) {
            adjustedComponents[1] = 0x10;
        }

        controlVector->y += adjustedComponents[1];

        if (controlVector->y < -0x7F) {
            controlVector->y = -0x7F;
        }

        if (controlVector->y >= 0x80) {
            controlVector->y = 0x7F;
        }

        adjustedComponents[1] = controlVector->y;
    } else {
        if ((*(unsigned int *)D_80066F38 & 0x1000) != 0) {
            controlVector->y += 0x10;

            if (controlVector->y >= 0x80) {
                controlVector->y = 0x7F;
            }
        } else if ((*(unsigned int *)D_80066F38 & 0x4000) != 0) {
            controlVector->y -= 0x10;

            if (controlVector->y < -0x7F) {
                controlVector->y = -0x7F;
            }
        } else {
            centeringAdjustment = -controlVector->y;

            if (centeringAdjustment >= 0x21) {
                centeringAdjustment = 0x20;
            }

            if (centeringAdjustment < -0x20) {
                centeringAdjustment = -0x20;
            }

            controlVector->y += centeringAdjustment;
        }

        adjustedComponents[1] = controlVector->y;

        if ((*(unsigned int *)D_80066F38 & 0x2000) != 0) {
            controlVector->z += 0x10;

            if (controlVector->z >= 0x80) {
                controlVector->z = 0x7F;
            }
        } else if ((*(unsigned int *)D_80066F38 & 0x8000) != 0) {
            controlVector->z -= 0x10;

            if (controlVector->z < -0x7F) {
                controlVector->z = -0x7F;
            }
        } else {
            centeringAdjustment = -controlVector->z;

            if (centeringAdjustment >= 0x21) {
                centeringAdjustment = 0x20;
            }

            if (centeringAdjustment < -0x20) {
                centeringAdjustment = -0x20;
            }

            controlVector->z += centeringAdjustment;
        }

        adjustedComponents[0] = controlVector->z;
    }

    outputVector->x = -adjustedComponents[0];

    if (adjustedComponents[1] != 0 || forceControlY != 0) {
        outputVector->y = adjustedComponents[1];
    } else {
        outputVector->y = g_Spyro.m_Vector_0x64.y >> 3;

        if (outputVector->y >= 0x80) {
            outputVector->y = 0x7F;
        }

        if (outputVector->y < -0x7F) {
            outputVector->y = -0x7F;
        }
    }
}

// https://decomp.me/scratch/r0Tpr
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B9A0);

// https://decomp.me/scratch/jRQZK
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BB24);
int func_8002BB24(int maxValue, int acceleration) {
    int angleDifference;

    // Calculate the shortest angular difference.
    angleDifference = (g_Spyro.m_0xAC - g_Spyro.m_Vector_0x64.z) & 0xFFF;

    if (angleDifference >= 0x801) {
        angleDifference -= 0x1000;
    }

    if (angleDifference > 0) {
        // Accelerate turning in the positive direction.
        if (g_Spyro.m_0xB0 < 0) {
            g_Spyro.m_0xB0 = 0;
        }

        g_Spyro.m_0xB0 += acceleration;

        if (g_Spyro.m_0xB0 > maxValue) {
            g_Spyro.m_0xB0 = maxValue;
        }

        // Prevent overshooting the target angle.
        if (g_Spyro.m_0xB0 > angleDifference) {
            g_Spyro.m_0xB0 = angleDifference;
        }
    }
    else if (angleDifference < 0) {
        // Accelerate turning in the negative direction.
        if (g_Spyro.m_0xB0 > 0) {
            g_Spyro.m_0xB0 = 0;
        }

        g_Spyro.m_0xB0 -= acceleration;

        if (g_Spyro.m_0xB0 < -maxValue) {
            g_Spyro.m_0xB0 = -maxValue;
        }

        // Prevent overshooting the target angle.
        if (g_Spyro.m_0xB0 < angleDifference) {
            g_Spyro.m_0xB0 = angleDifference;
        }
    }
    else {
        g_Spyro.m_0xB0 = 0;
        return 0;
    }

    func_8002B9A0(g_Spyro.m_0xB0);

    return angleDifference;
}

// https://decomp.me/scratch/vFmXh
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BC68);
int func_8002BC68(void) {
    Vector3D analogueInput;
    int inputMagnitude;
    int angleMagnitude;
    int angleDifference;
    int result;

    result = 0;

    if (D_8006839E != 0) {
        if ((g_Spyro.m_0x20C & 0x40) == 0) {

            // Ignore centred analogue input.
            if ((*(unsigned int *)(D_80066F38 + 0xC) & 0xFFFF0000) != 0x7F7F0000) {
                analogueInput.x = D_80066F38[0xE] - 0x7F;
                analogueInput.y = D_80066F38[0xF] - 0x7F;
                analogueInput.z = 0;

                inputMagnitude = func_8001BA20(&analogueInput, 0);

                if (inputMagnitude < 0x60) {
                    // Calculate the shortest angular difference.
                    angleDifference =
                        (g_Spyro.m_0xAC - g_Spyro.m_Vector_0x64.z) & 0xFFF;

                    if (angleDifference >= 0x801) {
                        angleDifference -= 0x1000;
                    }

                    // Flag significant angular differences.
                    angleMagnitude = ABS(angleDifference);

                    if (angleMagnitude >= 0x101) {
                        result = 1;
                    }

                    // Apply magnitude-scaled angular correction.
                    g_Spyro.m_0xAC =
                        (g_Spyro.m_Vector_0x64.z +
                         ((inputMagnitude * angleDifference) >> 9)) & 0xFFF;
                }
            }
        }
    }

    return result;
}

// https://decomp.me/scratch/ARvzX
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BD70);
void func_8002BD70(int increaseAmount, int decreaseAmount) {
    if (g_Spyro.m_0xB4 > g_Spyro.m_0xB8) {
        g_Spyro.m_0xB8 += increaseAmount;

        if (g_Spyro.m_0xB4 < g_Spyro.m_0xB8) {
            g_Spyro.m_0xB8 = g_Spyro.m_0xB4;
        }
    }
    else {
        g_Spyro.m_0xB8 -= decreaseAmount;

        if (g_Spyro.m_0xB8 < g_Spyro.m_0xB4) {
            g_Spyro.m_0xB8 = g_Spyro.m_0xB4;
        }
    }
}

// https://decomp.me/scratch/h7Esy
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BDBC);
void func_8002BDBC(void) {
    g_Spyro.m_Vector_0x88.x = g_Spyro.m_0xB8;
    g_Spyro.m_Vector_0x88.y = 0;
    g_Spyro.m_Vector_0x88.z = 0;

    func_8001B9A4(
        &g_Spyro.m_RotationMatrix_0x30,
        &g_Spyro.m_Vector_0x88,
        &g_Spyro.m_Vector_0x88
    );
}

// https://decomp.me/scratch/pCZKb
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BE04);
void func_8002BE04(void) {
    Vector3D rotatedPoint;
    Vector3D unrotatedPoint;

    if (g_Spyro.m_0x58 == 1 || g_Spyro.m_0x58 == 0x10) {        
        rotatedPoint.y = 0;
        rotatedPoint.x = 0;
        rotatedPoint.z = -g_Spyro.m_0x270 + 0x20;
        
        unrotatedPoint.y = 0;
        unrotatedPoint.x = g_Spyro.m_0x270 + 0x60;
        unrotatedPoint.z = rotatedPoint.z;
    } else if (g_Spyro.m_0x58 == 0xA) {        
        rotatedPoint.y = 0;
        rotatedPoint.x = 0;
        rotatedPoint.z = 0;

        unrotatedPoint.x = g_Spyro.m_0x270 + 0x60;
        unrotatedPoint.y = 0;
        unrotatedPoint.z = 0;
    } else if (g_Spyro.m_0x58 == 0xD) {        
        rotatedPoint.y = 0;
        rotatedPoint.x = 0;
        rotatedPoint.z = -g_Spyro.m_0x270;

        unrotatedPoint.y = 0;
        unrotatedPoint.x = g_Spyro.m_0x270 + 0xA0;
        unrotatedPoint.z = -g_Spyro.m_0x270 - 0x40;
    } else {       
        rotatedPoint.y = 0;
        rotatedPoint.x = 0;
        rotatedPoint.z = -g_Spyro.m_0x270;

        unrotatedPoint.y = 0;
        unrotatedPoint.x = g_Spyro.m_0x270 + 0x60;
        unrotatedPoint.z = -g_Spyro.m_0x270 - 0x40;
    }

    func_8001B9A4(
        &g_Spyro.m_RotationMatrix_0x30,
        &rotatedPoint,
        &rotatedPoint
    );

    func_8001BDCC(
        &rotatedPoint,
        &rotatedPoint,
        &g_Spyro.m_Position
    );

    func_8001B9A4(
        nullptr,
        &unrotatedPoint,
        &unrotatedPoint
    );

    func_8001BDCC(
        &unrotatedPoint,
        &unrotatedPoint,
        &g_Spyro.m_Position
    );

    if (func_8003CE94(&rotatedPoint, &unrotatedPoint) != 0) {
        if ((signed char)func_8001B4B8(
                D_8006AB90,
                func_8001BA20(&D_8006AB88, 0),
                0
            ) >= 0x17) {
            g_Spyro.m_0x106 = 1;

            func_8001BDB0(
                &g_Spyro.m_Vector_0xE0,
                &D_8006AB88
            );

            g_Spyro.m_0x118 = D_8006AB94;
        }
    }
}

// https://decomp.me/scratch/jXiWC
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BFBC);
void func_8002BFBC(void) {
    Vector3D vectorDifference;

    // Check the magnitude of the source vector, ignoring Z.
    if (func_8001BA20(&g_Spyro.m_Vector_0x94, 0) >= 0x181) {

        // Calculate the difference between the vectors at 0xA0 and 0x94.
        func_8001BE00(&vectorDifference, &g_Spyro.m_Vector_0xA0, &g_Spyro.m_Vector_0x94);

        // Check the magnitude of the resulting difference, ignoring Z.
        if (func_8001BA20(&vectorDifference, 0) >= 0xC1) {
            vectorDifference.z = 0;

            func_8001BDB0(&g_Spyro.m_Vector_0xE0, &vectorDifference);

            g_Spyro.m_0x106 = 1;
        }
    }
}

// https://decomp.me/scratch/H9ldj
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002C038);
void func_8002C038(void) {
    int dotProduct;

    func_8001BDB0(
        &g_Spyro.m_Vector_0x94,
        &g_Spyro.m_Vector_0x88
    );

    if (g_Spyro.m_0x106 != 0) {
        g_Spyro.m_Vector_0xE0.z = 0;

        func_8001BB3C(
            &g_Spyro.m_Vector_0xE0,
            0x1000
        );

        dotProduct =
            ((-g_Spyro.m_Vector_0x94.x * g_Spyro.m_Vector_0xE0.x) -
             (g_Spyro.m_Vector_0x94.y * g_Spyro.m_Vector_0xE0.y)) >> 12;

        if (dotProduct > 0) {
            func_8001BCC4(
                &g_Spyro.m_Vector_0xE0,
                0x1000,
                dotProduct
            );

            func_8001BDCC(
                &g_Spyro.m_Vector_0x94,
                &g_Spyro.m_Vector_0x94,
                &g_Spyro.m_Vector_0xE0
            );
        }
    }
}

// https://decomp.me/scratch/HTGkv
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002C0F4);

// https://decomp.me/scratch/9PjBt
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002CC88);
void func_8002CC88(void) {
    int collisionAngle;
    int *stateCounter;
    int collisionCheckResult;
    int effectQueryResult;
    Vector3D *firstAngleVector;
    Vector3D *secondAngleVector;

    struct {
        int firstCollisionOffset[4];   // 0x00–0x0F
        int secondCollisionOffset[4];  // 0x10–0x1F
        int effectQueryPosition[4];    // 0x20–0x2F
    } collisionScratch;

    stateCounter = &g_Spyro.m_0xC0;
    firstAngleVector = (Vector3D *)(stateCounter + 5);

    *stateCounter += 1;
    func_8001BDA0(firstAngleVector);

    g_Spyro.m_Vector_0xD4.z = 0x1000;
    g_Spyro.m_0xEC = 0;
    g_Spyro.m_0x104 = 0;
    g_Spyro.m_0x29C = -1;

    if (g_Spyro.m_0x105 == 0) {
        collisionScratch.firstCollisionOffset[0] = 0;
        collisionScratch.secondCollisionOffset[0] = 0;
        collisionScratch.firstCollisionOffset[1] = 0;
        collisionScratch.secondCollisionOffset[1] = 0;

        collisionScratch.firstCollisionOffset[2] =
            -g_Spyro.m_0x270 + 0x60;

        collisionScratch.secondCollisionOffset[2] =
            -g_Spyro.m_0x270 - 0x60;

        func_8001B9A4(
            &g_Spyro.m_RotationMatrix_0x30,
            (Vector3D *)collisionScratch.firstCollisionOffset,
            (Vector3D *)collisionScratch.firstCollisionOffset
        );

        func_8001BDCC(
            (Vector3D *)collisionScratch.firstCollisionOffset,
            (Vector3D *)collisionScratch.firstCollisionOffset,
            &g_Spyro.m_Position
        );

        func_8001B9A4(
            nullptr,
            (Vector3D *)collisionScratch.secondCollisionOffset,
            (Vector3D *)collisionScratch.secondCollisionOffset
        );

        func_8001BDCC(
            (Vector3D *)collisionScratch.secondCollisionOffset,
            (Vector3D *)collisionScratch.secondCollisionOffset,
            &g_Spyro.m_Position
        );

        collisionCheckResult = func_8003CE38(
            (Vector3D *)collisionScratch.firstCollisionOffset,
            (Vector3D *)collisionScratch.secondCollisionOffset,
            4,
            0,
            0
        );

        if (collisionCheckResult != 0) {
            func_8001BDB0(
                firstAngleVector,
                &D_8006AB88
            );

            collisionAngle = func_8001BA20(&D_8006AB88, 0);

            collisionAngle = (signed char)func_8001B4B8(
                D_8006AB90,
                collisionAngle,
                0
            );

            g_Spyro.m_0xEC = collisionAngle;

            if (g_Spyro.m_0xEC < 0) {
                g_Spyro.m_0xEC = 0x400;
            }

            if (D_8006AB9C < 0) {
                g_Spyro.m_0x144 = D_8006ABA0;
            } else {
                g_Spyro.m_0x144 = 0;
            }

            if (g_Spyro.m_0xEC < 0x21) {
                g_Spyro.m_0xC0 = 0;
                g_Spyro.m_0x1BD = g_Spyro.m_0xEC < 0x17;
                g_Spyro.m_0x114 = D_8006AB94;
                g_Spyro.m_0x29C = D_8006AB9C;

                if (D_8006AB9C >= 0) {
                    func_8001C214(
                        D_8006AB9C,
                        &g_Spyro.m_Vector_0x2A0
                    );
                }

                collisionScratch.firstCollisionOffset[0] =
                    g_Spyro.m_0x270 - 0x60;

                collisionScratch.firstCollisionOffset[1] = 0;

                collisionScratch.firstCollisionOffset[2] =
                    -g_Spyro.m_0x270 + 0x60;

                collisionScratch.secondCollisionOffset[0] =
                    g_Spyro.m_0x270 + 0x60;

                collisionScratch.secondCollisionOffset[1] = 0;

                collisionScratch.secondCollisionOffset[2] =
                    -g_Spyro.m_0x270 - 0x60;

                func_8001B9A4(
                    &g_Spyro.m_RotationMatrix_0x30,
                    (Vector3D *)collisionScratch.firstCollisionOffset,
                    (Vector3D *)collisionScratch.firstCollisionOffset
                );

                func_8001BDCC(
                    (Vector3D *)collisionScratch.firstCollisionOffset,
                    (Vector3D *)collisionScratch.firstCollisionOffset,
                    &g_Spyro.m_Position
                );

                func_8001B9A4(
                    0,
                    (Vector3D *)collisionScratch.secondCollisionOffset,
                    (Vector3D *)collisionScratch.secondCollisionOffset
                );

                func_8001BDCC(
                    (Vector3D *)collisionScratch.secondCollisionOffset,
                    (Vector3D *)collisionScratch.secondCollisionOffset,
                    &g_Spyro.m_Position
                );

                if (func_8003CE94(
                        (Vector3D *)collisionScratch.firstCollisionOffset,
                        (Vector3D *)collisionScratch.secondCollisionOffset
                    ) == 0) {

                    g_Spyro.m_0x104 = 1;
                }
            }

        } else {
            g_Spyro.m_0x144 = 0;
        }

        if (g_Spyro.m_0x50 != 0xC &&
            g_Spyro.m_0x50 != 2 &&
            g_Spyro.m_0xC0 != 0 &&
            g_Spyro.m_0xC4 == 0) {

            collisionScratch.firstCollisionOffset[0] = 0;
            collisionScratch.firstCollisionOffset[1] = 0;
            collisionScratch.secondCollisionOffset[0] = 0;
            collisionScratch.secondCollisionOffset[1] = 0;

            collisionScratch.firstCollisionOffset[2] =
                -g_Spyro.m_0x270 + 0x60;

            collisionScratch.secondCollisionOffset[2] =
                -g_Spyro.m_0x270 - 0x60;

            func_8001BDCC(
                (Vector3D *)collisionScratch.firstCollisionOffset,
                (Vector3D *)collisionScratch.firstCollisionOffset,
                &g_Spyro.m_Position
            );

            func_8001BDCC(
                (Vector3D *)collisionScratch.secondCollisionOffset,
                (Vector3D *)collisionScratch.secondCollisionOffset,
                &g_Spyro.m_Position
            );

            collisionCheckResult = func_8003CE38(
                (Vector3D *)collisionScratch.firstCollisionOffset,
                (Vector3D *)collisionScratch.secondCollisionOffset,
                4,
                0,
                0
            );

            if (collisionCheckResult != 0) {
                secondAngleVector = &g_Spyro.m_Vector_0xD4;

                func_8001BDB0(
                    secondAngleVector,
                    &D_8006AB88
                );

                collisionAngle = func_8001BA20(secondAngleVector, 0);

                collisionAngle = (signed char)func_8001B4B8(
                    g_Spyro.m_Vector_0xD4.z,
                    collisionAngle,
                    0
                );

                g_Spyro.m_0xEC = collisionAngle;

                if (g_Spyro.m_0xEC < 0) {
                    g_Spyro.m_0xEC = 0x400;
                }

                if (g_Spyro.m_0xEC < 0x21) {
                    g_Spyro.m_0xC0 = 0;
                    g_Spyro.m_0x1BD = g_Spyro.m_0xEC < 0x17;
                    g_Spyro.m_0x114 = D_8006AB94;
                    g_Spyro.m_0x29C = D_8006AB9C;

                    if (D_8006AB9C >= 0) {
                        func_8001C214(
                            D_8006AB9C,
                            &g_Spyro.m_Vector_0x2A0
                        );
                    }
                }
            }
        }
    }

    func_8001BDB0(
        (Vector3D *)collisionScratch.effectQueryPosition,
        &g_Spyro.m_Position
    );

    collisionScratch.effectQueryPosition[2] += 0x264;

    effectQueryResult = func_8003EE84(
        collisionScratch.effectQueryPosition,
        0x4C8
    );

    collisionScratch.effectQueryPosition[2] = effectQueryResult;

    if (effectQueryResult != 0 && D_8006ABA4 != 0) {
        g_Spyro.m_0x108 = 1;
        g_Spyro.m_0xFC = effectQueryResult;

    } else {
        if (g_Spyro.m_0x108 == 0) {
            g_Spyro.m_0xFC = 0;
        }

        g_Spyro.m_0x108 = 0;
    }
}

// https://decomp.me/scratch/0TcrL
// INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D0F8);
void func_8002D0F8(void) {
    int angleResult;
    int componentMagnitude;
    int *angleVector;
    unsigned char *angleModeFlag;

    struct {
        int firstOffsetMatrix[4];       // 0x00–0x0F
        int secondOffsetMatrix[4];      // 0x10–0x1F
        Vector3D offsetVector;          // 0x20–0x2B
        char pad_0x2C[4];               // 0x2C–0x2F
        char angles[3];                 // 0x30–0x32
        char pad_0x33[5];               // 0x33–0x37
        Vector3D directionVector;       // 0x38–0x43
        char pad_0x44[0x10];            // 0x44–0x53
    } collisionScratch;

    angleModeFlag = &g_Spyro.m_0x106;

    if (*angleModeFlag != 0) {
        collisionScratch.angles[0] = 0;

        angleVector = (int *)(angleModeFlag - 0x26);

        angleResult = func_8001BA20(angleVector, 0);

        collisionScratch.angles[1] = -func_8001B4B8(
            angleResult,
            g_Spyro.m_Vector_0xE0.z,
            0
        );

        collisionScratch.angles[2] = func_8001B4B8(
            -angleVector[0],
            -g_Spyro.m_Vector_0xE0.y,
            0
        );

    } else {
        collisionScratch.angles[0] = g_Spyro.m_Vector_0x64.x >> 4;
        collisionScratch.angles[1] = g_Spyro.m_Vector_0x64.y >> 4;
        collisionScratch.angles[2] = g_Spyro.m_Vector_0x64.z >> 4;
    }

    func_8001B6C8(
        collisionScratch.angles,
        &collisionScratch.directionVector,
        nullptr
    );

    collisionScratch.offsetVector.x = g_Spyro.m_0x270;
    collisionScratch.offsetVector.y = 0;
    collisionScratch.offsetVector.z = 0;

    func_8001BDB0(
        (Vector3D *)collisionScratch.secondOffsetMatrix,
        &collisionScratch.offsetVector
    );

    collisionScratch.secondOffsetMatrix[0] += 0xA0;

    func_8001BDB0(
        (Vector3D *)collisionScratch.firstOffsetMatrix,
        &collisionScratch.offsetVector
    );

    collisionScratch.firstOffsetMatrix[0] -= 0x80;

    func_8001B9A4(
        &collisionScratch.directionVector,
        (Vector3D *)collisionScratch.firstOffsetMatrix,
        (Vector3D *)collisionScratch.firstOffsetMatrix
    );

    func_8001BDCC(
        (Vector3D *)collisionScratch.firstOffsetMatrix,
        &g_Spyro.m_Position,
        (Vector3D *)collisionScratch.firstOffsetMatrix
    );

    func_8001B9A4(
        nullptr,
        (Vector3D *)collisionScratch.secondOffsetMatrix,
        (Vector3D *)collisionScratch.secondOffsetMatrix
    );

    func_8001BDCC(
        (Vector3D *)collisionScratch.secondOffsetMatrix,
        &g_Spyro.m_Position,
        (Vector3D *)collisionScratch.secondOffsetMatrix
    );

    func_8001B9A4(
        0,
        &collisionScratch.offsetVector,
        &collisionScratch.offsetVector
    );

    func_8001BDCC(
        &collisionScratch.offsetVector,
        &g_Spyro.m_Position,
        &collisionScratch.offsetVector
    );

    if (func_8003CE94(
            (Vector3D *)collisionScratch.firstOffsetMatrix,
            (Vector3D *)collisionScratch.secondOffsetMatrix
        ) != 0) {

        func_8001BE00(
            &collisionScratch.offsetVector,
            &D_8006AB70,
            &collisionScratch.offsetVector
        );

        componentMagnitude = collisionScratch.offsetVector.x;
        if (componentMagnitude < 0) {
            componentMagnitude = -componentMagnitude;
        }

        if (componentMagnitude < 8) {
            collisionScratch.offsetVector.x = 0;
        }

        componentMagnitude = collisionScratch.offsetVector.y;
        if (componentMagnitude < 0) {
            componentMagnitude = -componentMagnitude;
        }

        if (componentMagnitude < 8) {
            collisionScratch.offsetVector.y = 0;
        }

        componentMagnitude = collisionScratch.offsetVector.z;
        if (componentMagnitude < 0) {
            componentMagnitude = -componentMagnitude;
        }

        if (componentMagnitude < 8) {
            collisionScratch.offsetVector.z = 0;
        }

        func_8001BDCC(
            &g_Spyro.m_Position,
            &g_Spyro.m_Position,
            &collisionScratch.offsetVector
        );
    }
}

// https://decomp.me/scratch/JzGQb
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D328);

// https://decomp.me/scratch/CViIK
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D7F8);
void func_8002D7F8(void) {
    int componentMagnitude;
    int *collisionData;

    struct {
        Vector3D offsetVector;          // 0x00–0x0B
        char pad_0x0C[4];               // 0x0C–0x0F
        int positiveOffsetMatrix[4];    // 0x10–0x1F
        int negativeOffsetMatrix[4];    // 0x20–0x2F
    } collisionScratch;

    collisionScratch.offsetVector.x = 0;
    collisionScratch.offsetVector.y = 0;
    collisionScratch.offsetVector.z = -g_Spyro.m_0x270;

    func_8001BDB0(
        (Vector3D *)collisionScratch.negativeOffsetMatrix,
        &collisionScratch.offsetVector
    );

    collisionScratch.negativeOffsetMatrix[2] -= 0x80;

    func_8001BDB0(
        (Vector3D *)collisionScratch.positiveOffsetMatrix,
        &collisionScratch.offsetVector
    );

    collisionScratch.positiveOffsetMatrix[2] += 0x80;

    func_8001B9A4(
        &g_Spyro.m_RotationMatrix_0x30,
        collisionScratch.negativeOffsetMatrix,
        collisionScratch.negativeOffsetMatrix
    );

    func_8001BDCC(
        (Vector3D *)collisionScratch.negativeOffsetMatrix,
        &g_Spyro.m_Position,
        (Vector3D *)collisionScratch.negativeOffsetMatrix
    );

    func_8001B9A4(
        nullptr,
        (Vector3D *)collisionScratch.positiveOffsetMatrix,
        (Vector3D *)collisionScratch.positiveOffsetMatrix
    );

    func_8001BDCC(
        (Vector3D *)collisionScratch.positiveOffsetMatrix,
        &g_Spyro.m_Position,
        (Vector3D *)collisionScratch.positiveOffsetMatrix
    );

    func_8001B9A4(
        nullptr,
        &collisionScratch.offsetVector,
        &collisionScratch.offsetVector
    );

    func_8001BDCC(
        &collisionScratch.offsetVector,
        &g_Spyro.m_Position,
        &collisionScratch.offsetVector
    );

    if (func_8003CE94(
            (Vector3D *)collisionScratch.positiveOffsetMatrix,
            (Vector3D *)collisionScratch.negativeOffsetMatrix
        ) != 0 &&
        (collisionData = &D_8006AB90,
         *collisionData > 0)) {

        func_8001BE00(
            &collisionScratch.offsetVector,
            collisionData - 8,
            &collisionScratch.offsetVector
        );

        componentMagnitude = collisionScratch.offsetVector.x;
        if (componentMagnitude < 0) {
            componentMagnitude = -componentMagnitude;
        }

        if (componentMagnitude < 8) {
            collisionScratch.offsetVector.x = 0;
        }

        componentMagnitude = collisionScratch.offsetVector.y;
        if (componentMagnitude < 0) {
            componentMagnitude = -componentMagnitude;
        }

        if (componentMagnitude < 8) {
            collisionScratch.offsetVector.y = 0;
        }

        componentMagnitude = collisionScratch.offsetVector.z;
        if (componentMagnitude < 0) {
            componentMagnitude = -componentMagnitude;
        }

        if (componentMagnitude < 8) {
            collisionScratch.offsetVector.z = 0;
        }

        func_8001BDCC(
            &g_Spyro.m_Position,
            &g_Spyro.m_Position,
            &collisionScratch.offsetVector
        );

        g_Spyro.m_0xC0 = 0;
        g_Spyro.m_0x114 = D_8006AB94;
        return;
    }

    g_Spyro.m_0xC0++;
}

// https://decomp.me/scratch/9LtW3
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D9C4);
int func_8002D9C4(void) {
    int vectorIndex;

    struct {
        Vector3D transformedVectors[3];    // 0x00–0x23
        char pad_0x24[4];                  // 0x24–0x27
        Vector3D accumulatedVector;        // 0x28–0x33
    } vectorScratch;

    if (g_Spyro.m_0x29C >= 0) {
        func_8001BDA0(&vectorScratch.accumulatedVector);

        func_8001C214(
            g_Spyro.m_0x29C,
            vectorScratch.transformedVectors
        );

        vectorIndex = 0;

        do {
            func_8001BE00(
                &vectorScratch.transformedVectors[vectorIndex],
                &vectorScratch.transformedVectors[vectorIndex],
                &g_Spyro.m_Vector_0x2A0[vectorIndex]
            );

            func_8001BDCC(
                &vectorScratch.accumulatedVector,
                &vectorScratch.accumulatedVector,
                &vectorScratch.transformedVectors[vectorIndex]
            );

            vectorIndex++;
        } while (vectorIndex < 3);

        vectorScratch.accumulatedVector.x /= 3;
        vectorScratch.accumulatedVector.y /= 3;
        vectorScratch.accumulatedVector.z /= 3;

        func_8001BD20(&vectorScratch.accumulatedVector, 6);

        func_8001BDCC(
            &g_Spyro.m_Vector_0x7C,
            &g_Spyro.m_Vector_0x7C,
            &vectorScratch.accumulatedVector
        );

        if (func_8001BA20(&vectorScratch.accumulatedVector, 1) >= 0x21) {
            return 1;
        }
    }

    return 0;
}

// https://decomp.me/scratch/INMRv
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002DB08);
void func_8002DB08(int targetMagnitude) {
    func_8001BDB0(&g_Spyro.m_Vector_0xF0,  &g_Spyro.m_Vector_0xD4);
    func_8001BB3C(&g_Spyro.m_Vector_0xF0, targetMagnitude);
    
    g_Spyro.m_Vector_0xF0.x = -g_Spyro.m_Vector_0xF0.x;
    g_Spyro.m_Vector_0xF0.y = -g_Spyro.m_Vector_0xF0.y;
    g_Spyro.m_Vector_0xF0.z = -g_Spyro.m_Vector_0xF0.z;
}

// https://decomp.me/scratch/WwOiV
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002DB8C);
void func_8002DB8C(Vector3D *inputVector) {
    int cosineX;
    int sineX;
    int cosineY;
    int sineY;
    int angularVelocityX;

    struct {
        Vector3D workingVector;     // 0x00–0x0B
        char pad_0x0C[4];           // 0x0C–0x0F
        Vector3D angleAdjustment;   // 0x10–0x1B
        char pad_0x1C[4];           // 0x1C–0x1F
    } rotationScratch;

    if (g_Spyro.m_0xEC >= 0x17 && g_Spyro.m_0x58 != 0x11) {
        inputVector = nullptr;
    }

    if (inputVector != nullptr) {
        sineX = func_8001B664(g_Spyro.m_Vector_0x64.z);
        cosineX = func_8001B61C(g_Spyro.m_Vector_0x64.z);

        rotationScratch.workingVector.x =
            ((inputVector->x * sineX) + (inputVector->y * cosineX)) >> 12;

        sineY = func_8001B664(g_Spyro.m_Vector_0x64.z);
        cosineY = func_8001B61C(g_Spyro.m_Vector_0x64.z);

        rotationScratch.workingVector.y =
            ((inputVector->y * sineY) - (inputVector->x * cosineY)) >> 12;

        rotationScratch.workingVector.z = inputVector->z;

        rotationScratch.angleAdjustment.x = -func_8001B4B8(
            func_8001BFC0(
                (rotationScratch.workingVector.x * rotationScratch.workingVector.x) +
                (rotationScratch.workingVector.z * rotationScratch.workingVector.z)
            ),
            rotationScratch.workingVector.y,
            1
        );

        rotationScratch.angleAdjustment.y = -func_8001B4B8(
            rotationScratch.workingVector.z,
            rotationScratch.workingVector.x,
            1
        );
    } else {
        rotationScratch.angleAdjustment.x = 0;
        rotationScratch.angleAdjustment.y = 0;
    }

    SUB_ANGLE(
        rotationScratch.angleAdjustment.x,
        rotationScratch.angleAdjustment.x,
        g_Spyro.m_Vector_0x64.x
    );

    SUB_ANGLE(
        rotationScratch.angleAdjustment.y,
        rotationScratch.angleAdjustment.y,
        g_Spyro.m_Vector_0x64.y
    );

    angularVelocityX = g_Spyro.m_Vector_0x70.x;

    angularVelocityX +=
        ((rotationScratch.angleAdjustment.x << 2) >> 4) -
        ((angularVelocityX << 4) >> 6);

    g_Spyro.m_Vector_0x70.x = angularVelocityX;

    g_Spyro.m_Vector_0x70.y +=
        ((rotationScratch.angleAdjustment.y << 2) >> 4) -
        ((g_Spyro.m_Vector_0x70.y << 4) >> 6);

    rotationScratch.angleAdjustment.x = angularVelocityX >> 2;
    rotationScratch.angleAdjustment.y = g_Spyro.m_Vector_0x70.y >> 2;

    ADD_ANGLE(
        g_Spyro.m_Vector_0x64.x,
        g_Spyro.m_Vector_0x64.x,
        rotationScratch.angleAdjustment.x
    );

    ADD_ANGLE(
        g_Spyro.m_Vector_0x64.y,
        g_Spyro.m_Vector_0x64.y,
        rotationScratch.angleAdjustment.y
    );

    if (inputVector != nullptr &&
        (unsigned char)(g_Spyro.m_Rotation_0x0C.roll - 0x20) >= 0xC1 &&
        (unsigned char)(g_Spyro.m_Rotation_0x0C.pitch - 0x20) >= 0xC1) {

        rotationScratch.workingVector.y =
            ((-func_8001B61C(rotationScratch.angleAdjustment.x)) *
             (g_Spyro.m_0x270 + 0x10)) >> 12;

        rotationScratch.workingVector.x =
            ((-func_8001B61C(rotationScratch.angleAdjustment.y)) *
             (g_Spyro.m_0x270 + 0x10)) >> 12;

        rotationScratch.workingVector.z =
            ((0x2000
              - func_8001B664(rotationScratch.angleAdjustment.x)
              - func_8001B664(rotationScratch.angleAdjustment.y)) *
             (g_Spyro.m_0x270 + 0x10)) >> 12;

        func_8001B9A4(
            &g_Spyro.m_RotationMatrix_0x30,
            &rotationScratch.workingVector,
            &rotationScratch.workingVector
        );

        func_8001BDCC(
            &g_Spyro.m_Position,
            &g_Spyro.m_Position,
            &rotationScratch.workingVector
        );
    }
}

// https://decomp.me/scratch/eqtoS
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002DED0);
void func_8002DED0(Vector3D *inputVector) {
    int angularVelocityX;

    Vector3D angleAdjustment;

    angleAdjustment.x = 0;

    angleAdjustment.z = func_8001BA20(inputVector, 0);

    angleAdjustment.y =
        func_8001B4B8(angleAdjustment.z, inputVector->z, 1) + 0x8E;

    SUB_ANGLE(
        angleAdjustment.x,
        angleAdjustment.x,
        g_Spyro.m_Vector_0x64.x
    );

    SUB_ANGLE(
        angleAdjustment.y,
        angleAdjustment.y,
        g_Spyro.m_Vector_0x64.y
    );

    angularVelocityX = g_Spyro.m_Vector_0x70.x;

    angularVelocityX +=
        ((angleAdjustment.x << 2) >> 4) -
        ((angularVelocityX << 4) >> 6);

    g_Spyro.m_Vector_0x70.x = angularVelocityX;

    g_Spyro.m_Vector_0x70.y +=
        ((angleAdjustment.y << 2) >> 4) -
        ((g_Spyro.m_Vector_0x70.y << 4) >> 6);

    angleAdjustment.x = angularVelocityX >> 2;
    angleAdjustment.y = g_Spyro.m_Vector_0x70.y >> 2;

    ADD_ANGLE(
        g_Spyro.m_Vector_0x64.x,
        g_Spyro.m_Vector_0x64.x,
        angleAdjustment.x
    );

    ADD_ANGLE(
        g_Spyro.m_Vector_0x64.y,
        g_Spyro.m_Vector_0x64.y,
        angleAdjustment.y
    );
}

// https://decomp.me/scratch/uShQs
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E00C);
void func_8002E00C(Vector3D *inputVector) {
    int angle;
    int angularVelocityX;
    int angleValue;

    Vector3D angleAdjustment;
    Vector3D translation;

    struct {
        int transformMatrix[4];     // 0x00–0x0F
        char packedAngles[3];       // 0x10–0x12
        char pad_0x13[5];           // 0x13–0x17
        Vector3D localVector;       // 0x18–0x23
        char pad_0x24[0x14];        // 0x24–0x37
    } rotationScratch;

    angleAdjustment.x = 0;

    if (g_Spyro.m_0x106 != 0) {
        angle = func_8001BA20(inputVector, 0);

        angleAdjustment.y = func_8001B4B8(inputVector->z, angle, 1);
        angleAdjustment.z = func_8001B4B8(-inputVector->x, -inputVector->y, 1);
    } else {
        angleAdjustment.y = g_Spyro.m_Vector_0x64.y + 0x400;
        angleAdjustment.z = g_Spyro.m_Vector_0x64.z;
    }

    SUB_ANGLE(
        angleAdjustment.x,
        angleAdjustment.x,
        g_Spyro.m_Vector_0x64.x
    );

    angleValue = g_Spyro.m_Vector_0x64.y + 0x400;

    SUB_ANGLE(
        angleAdjustment.y,
        angleAdjustment.y,
        angleValue
    );

    SUB_ANGLE(
        angleAdjustment.z,
        angleAdjustment.z,
        g_Spyro.m_Vector_0x64.z
    );

    angleValue = angleAdjustment.x;
    angularVelocityX = g_Spyro.m_Vector_0x70.x;

    angularVelocityX +=
        ((angleValue << 2) >> 4) -
        ((angularVelocityX << 4) >> 6);

    g_Spyro.m_Vector_0x70.x = angularVelocityX;

    angle = angleAdjustment.y;

    g_Spyro.m_Vector_0x70.y +=
        ((angle << 2) >> 4) -
        ((g_Spyro.m_Vector_0x70.y << 4) >> 6);

    g_Spyro.m_Vector_0x70.z +=
        ((angleAdjustment.z << 2) >> 4) -
        ((g_Spyro.m_Vector_0x70.z << 4) >> 6);

    angleAdjustment.x = angularVelocityX >> 2;
    angleAdjustment.y = g_Spyro.m_Vector_0x70.y >> 2;
    angleAdjustment.z = g_Spyro.m_Vector_0x70.z >> 2;

    ADD_ANGLE(
        g_Spyro.m_Vector_0x64.x,
        g_Spyro.m_Vector_0x64.x,
        angleAdjustment.x
    );

    ADD_ANGLE(
        g_Spyro.m_Vector_0x64.y,
        g_Spyro.m_Vector_0x64.y,
        angleAdjustment.y
    );

    ADD_ANGLE(
        g_Spyro.m_Vector_0x64.z,
        g_Spyro.m_Vector_0x64.z,
        angleAdjustment.z
    );

    translation.x = 0x164;
    translation.z = 0;
    translation.y = 0;

    func_8001BDB0((Vector3D *)rotationScratch.transformMatrix, &translation);

    func_8001B9A4(
        &g_Spyro.m_RotationMatrix_0x30,
        &translation,
        &translation
    );

    rotationScratch.packedAngles[0] = g_Spyro.m_Vector_0x64.x >> 4;
    rotationScratch.packedAngles[1] = g_Spyro.m_Vector_0x64.y >> 4;
    rotationScratch.packedAngles[2] = g_Spyro.m_Vector_0x64.z >> 4;

    func_8001B6C8(
        rotationScratch.packedAngles,
        &rotationScratch.localVector,
        0
    );

    func_8001B9A4(
        &rotationScratch.localVector,
        rotationScratch.transformMatrix,
        rotationScratch.transformMatrix
    );

    func_8001BE00(
        rotationScratch.transformMatrix,
        rotationScratch.transformMatrix,
        &translation
    );

    func_8001BE00(
        &g_Spyro.m_Position,
        &g_Spyro.m_Position,
        rotationScratch.transformMatrix
    );
}

// https://decomp.me/scratch/oS4EW
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E2BC);
void func_8002E2BC(void) {
    func_8001BDA0(&g_Spyro.m_Vector_0xA0);
    func_8001BDA0(&g_Spyro.m_Vector_0x88);
    func_8001BDA0(&g_Spyro.m_Vector_0x94);

    g_Spyro.m_0xB8 = 0;
}

// https://decomp.me/scratch/O1eJr
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E304);

// https://decomp.me/scratch/oeHZZ
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E3F8);

// https://decomp.me/scratch/vYysm
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E440);

// https://decomp.me/scratch/U3nAH
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E568);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E64C);

// https://decomp.me/scratch/wYROl
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002EB00);

// https://decomp.me/scratch/rSQuO
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002EBC8);

// https://decomp.me/scratch/5Gqzq
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002F08C);

// https://decomp.me/scratch/99rQu
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002F7A8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002FC20);

// https://decomp.me/scratch/ibqi2
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800308D4);
void func_800308D4(void) {
    int angle;

    angle = (g_Spyro.m_Vector_0x184.x - g_Spyro.m_0x178) & 0xFFF;

    if (angle >= 0x801) {
        angle -= 0x1000;
    }

    g_Spyro.m_0x190 +=
        ((angle << 7) - (g_Spyro.m_0x190 << 4)) >> 6;

    g_Spyro.m_0x178 += g_Spyro.m_0x190 >> 6;


    angle = (g_Spyro.m_Vector_0x184.y - g_Spyro.m_0x17C) & 0xFFF;

    if (angle >= 0x801) {
        angle -= 0x1000;
    }

    g_Spyro.m_0x194 +=
        ((angle << 7) - (g_Spyro.m_0x194 << 4)) >> 6;

    g_Spyro.m_0x17C += g_Spyro.m_0x194 >> 6;


    angle = (g_Spyro.m_Vector_0x184.z - g_Spyro.m_0x180) & 0xFFF;

    if (angle >= 0x801) {
        angle -= 0x1000;
    }

    g_Spyro.m_0x198 +=
        ((angle << 7) - (g_Spyro.m_0x198 << 4)) >> 6;

    g_Spyro.m_0x180 += g_Spyro.m_0x198 >> 6;


    g_Spyro.m_Rotation_0x10.roll = g_Spyro.m_0x178 >> 4;
    g_Spyro.m_Rotation_0x10.pitch = g_Spyro.m_0x17C >> 4;
    g_Spyro.m_Rotation_0x10.yaw = g_Spyro.m_0x180 >> 4;
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80030A14);

// https://decomp.me/scratch/2pBX2
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80030A6C);
void func_80030A6C(void) {
    Vector3D savedPosition;
    Vector3D savedMovementVector;
    int timer;

    if (g_Spyro.m_0x264 >= 0) {
        if (func_80050B20(
                g_Spyro.m_0x268,
                g_Spyro.m_0x264
            ) != 0) {
            func_80050A40(g_Spyro.m_0x264);
        }
    }

    if (g_Spyro.m_0x26C >= 0) {
        if (func_80050B20(
                D_80067020[6],
                g_Spyro.m_0x26C
            ) != 0) {
            func_80050A40(g_Spyro.m_0x26C);
        }
    }

    func_8001BDB0(&savedPosition, &g_Spyro.m_Position);

    func_8001BDB0(
        &savedMovementVector,
        &g_Spyro.m_Vector_0x64
    );

    timer = g_Spyro.m_timer_0x258;

    func_8001B3C8(&g_Spyro, 0, 0x2C4);

    g_Spyro.m_0x264 = -1;
    g_Spyro.m_0x26C = -1;

    g_Spyro.m_0x110 = 0xFF;
    g_Spyro.m_0x114 = 0xFF;
    g_Spyro.m_0x118 = 0xFF;

    g_Spyro.m_0x29C = -1;

    func_8001BDB0(&g_Spyro.m_Position, &savedPosition);

    func_8001BDB0(
        &g_Spyro.m_Vector_0x12C,
        &g_Spyro.m_Position
    );

    func_8001BDB0(
        &g_Spyro.m_Vector_0x64,
        &savedMovementVector
    );

    func_8001B6C8(
        &g_Spyro.m_Rotation_0x0C,
        &g_Spyro.m_RotationMatrix_0x30,
        0
    );

    func_8001B6C8(
        &g_Spyro.m_Rotation_0x10,
        &g_Spyro.m_RotationMatrix_0x19C,
        0
    );

    func_80059D6C(
        &g_Spyro.m_RotationMatrix_0x30,
        &g_Spyro.m_RotationMatrix_0x19C,
        &g_Spyro.m_RotationMatrix_0x19C
    );

    g_Spyro.m_timer_0x258 = timer;

    if (D_80069894 >= 0) {
        func_800351D8(0x21);

        g_Spyro.m_0xB8 = 0x800;
        g_Spyro.m_0x100 = D_800601B4[D_80066F54];

        func_8002BDBC();

        func_8001BDB0(
            &g_Spyro.m_Vector_0x94,
            &g_Spyro.m_Vector_0x88
        );

        func_8001BDB0(
            &g_Spyro.m_Vector_0xA0,
            &g_Spyro.m_Vector_0x88
        );
    } else {
        func_800351D8(0);
    }

    g_Spyro.m_0x1C = 0x10;
    g_Spyro.m_0x1D = 0x10;

    g_Spyro.m_0x200 = 6;
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80030C94);

// https://decomp.me/scratch/lXc34
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800313E4);
void func_800313E4(void) {
    if (g_Spyro.m_0x20C & 0x2C142) {
        func_80012B1C(&D_80068238, &D_80068370);
    } else {
        g_Spyro.m_0x240 = 0;
    }
    if (!(g_Spyro.m_0x20C & 0x140)) {
        g_Spyro.m_0x214 = 0;
    }
    g_Spyro.m_0x210 = g_Spyro.m_0x20C;
    g_Spyro.m_0x20C = 0;
}

// https://decomp.me/scratch/z8lGX
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031468);
void func_80031468(unsigned char *sourceData) {
    Vector3D workingVector;
    int spyroState;
    int directionAngle;
    int tableValue;

    spyroState = g_Spyro.m_0x58;

    // Ignore invalid states.
    if (spyroState < 0) {
        return;
    }

    // States 10 and 11 use the source pointer without vector processing.
    if (spyroState >= 2) {
        if (spyroState >= 12) {
            return;
        }

        if (spyroState < 10) {
            return;
        }

        g_Spyro.m_0x218 = sourceData;
        g_Spyro.m_0x20C |= 0x10000800;

        return;
    }

    // Enable the vector-processing state flags.
    g_Spyro.m_0x20C |= 0x10000040;

    // Calculate the vector between Spyro's position and the reference position.
    func_8001BE00(
        &workingVector,
        &g_Spyro.m_Position,
        (Vector3D *)((char *)D_80066F78 + 0xC)
    );

    // Store the angle derived from the calculated vector.
    directionAngle = func_8001B4B8(
        -workingVector.x,
        -workingVector.y,
        0
    );

    g_Spyro.m_0x238 = directionAngle;

    // Calculate the X component using the source's indexed table value.
    tableValue = D_80061C58[((unsigned char *)sourceData)[0x46]];
    workingVector.x = (tableValue * 13) >> 5;

    // Calculate the Y component using the corresponding table.
    tableValue = D_80061BD8[((unsigned char *)sourceData)[0x46]];
    workingVector.y = (tableValue * 13) >> 5;

    workingVector.z = 0;

    // Transform the calculated vector using the source vector.
    func_8001BDCC(
        &g_Spyro.m_Vector_0x22C,
        &workingVector,
        (Vector3D *)((char *)sourceData + 0xC)
    );

    // Clear the temporary source pointer.
    g_Spyro.m_0x218 = nullptr;
}

// https://decomp.me/scratch/EAXFb
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800315BC);

// https://decomp.me/scratch/leZhf
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031960);

// https://decomp.me/scratch/4zH0E
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031B94);
int func_80031B94(Vector3D *targetPosition) {
    Vector3D offsetVector;
    int angle;
    int headingDifference;
    int maxHeadingStep;
    int movementScale;
    int targetDistance;

    // Calculate the offset between the target and Spyro.
    func_8001BE00(&offsetVector, targetPosition, &g_Spyro.m_Position);

    // Calculate the target heading and its angular difference from Spyro's yaw.
    angle = func_8001B4B8(offsetVector.x, offsetVector.y, 1);
    headingDifference = func_8001BEBC(angle, g_Spyro.m_Vector_0x64.z);

    // Determine movement speed and the maximum permitted heading adjustment.
    if (headingDifference >= 0x320) {
        movementScale = 0;
        maxHeadingStep = 0x80;
    } else {
        movementScale = (0x320 - headingDifference) >> 2;

        if (movementScale >= 0x65) {
            movementScale = 0x64;
        }

        maxHeadingStep = (headingDifference >> 3) + 4;
    }

    // Apply a clamped adjustment to Spyro's yaw.
    headingDifference = func_8001BF00(angle, g_Spyro.m_Vector_0x64.z);

    if (headingDifference < -maxHeadingStep) {
        headingDifference = -maxHeadingStep;
    }

    if (headingDifference > maxHeadingStep) {
        headingDifference = maxHeadingStep;
    }

    g_Spyro.m_Vector_0x64.z += headingDifference;

    // Reset the working movement vector and update the camera-relative state.
    func_8001BDA0(&g_Spyro.m_Vector_0x184);
    func_800308D4();

    // Correct Spyro's pitch, keeping the adjustment within the allowed range.
    angle = (-g_Spyro.m_Vector_0x64.y) & 0xFFF;

    if (angle >= 0x801) {
        angle -= 0x1000;
    }

    if (angle < -0x1E) {
        angle = -0x1E;
    }

    if (angle >= 0x1F) {
        angle = 0x1E;
    }

    g_Spyro.m_Vector_0x64.y += angle;

    // Correct Spyro's roll, also applying a limited angular adjustment.
    angle = ((-headingDifference << 3) - g_Spyro.m_Vector_0x64.x) & 0xFFF;

    if (angle >= 0x801) {
        angle -= 0x1000;
    }

    if (angle < -0x10) {
        angle = -0x10;
    }

    if (angle >= 0x11) {
        angle = 0x10;
    }

    g_Spyro.m_Vector_0x64.x += angle;

    // Convert the working angles into Spyro's rotation fields.
    g_Spyro.m_Rotation_0x0C.roll = g_Spyro.m_Vector_0x64.x >> 4;
    g_Spyro.m_Rotation_0x0C.pitch = g_Spyro.m_Vector_0x64.y >> 4;
    g_Spyro.m_Rotation_0x0C.yaw = g_Spyro.m_Vector_0x64.z >> 4;

    // Rebuild the rotation matrix.
    func_8001B6C8(
        &g_Spyro.m_Rotation_0x0C,
        &g_Spyro.m_RotationMatrix_0x30,
        0
    );

    // Calculate the remaining distance to the target.
    targetDistance = func_8001BA20(&offsetVector, 0);

    if (targetDistance < 0x101) {
        // Snap Spyro's position to the target when sufficiently close.
        func_8001BDB0(&g_Spyro.m_Position, targetPosition);
        return 0;
    } else {
        // Apply movement and advance Spyro towards the target.
        g_Spyro.m_0xB8 = movementScale;

        func_8002BDBC();

        g_Spyro.m_Position.x += g_Spyro.m_Vector_0x88.x;
        g_Spyro.m_Position.y += g_Spyro.m_Vector_0x88.y;
        g_Spyro.m_Position.z += offsetVector.z * movementScale / targetDistance;

        return targetDistance;
    }
}

// https://decomp.me/scratch/5xfUG
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031E4C);
void func_80031E4C(void) {
    g_Spyro.m_0x274 = -1;
    g_Spyro.m_0x24 = 0;

    if (g_Spyro.m_0x58 != 7) {
        g_Spyro.m_0x25C -= D_80067018;

        if (g_Spyro.m_0x25C < 0) {
            g_Spyro.m_0x25C = 0;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031EAC);

// https://decomp.me/scratch/YPqGB
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800327F0);
void func_800327F0(void) {
    Vector3D cameraTestPosition;
    int angle;

    func_8001BE00(
        &cameraTestPosition,
        &g_Camera.m_Position,
        &g_Spyro.m_Position
    );

    angle = func_8001B4B8(
        cameraTestPosition.x,
        cameraTestPosition.y,
        0
    );

    cameraTestPosition.x = (D_80061C58[angle] * 89) >> 10;
    cameraTestPosition.y = (D_80061BD8[angle] * 89) >> 10;
    cameraTestPosition.z = 0;

    func_8001BDCC(
        &cameraTestPosition,
        &cameraTestPosition,
        &g_Spyro.m_Position
    );

    if (func_8001F618(&g_Camera.m_Position, &cameraTestPosition, 0) == 0) {
        g_Spyro.m_0x1E = 0;
    } else {
        g_Spyro.m_0x1E = 5;
    }
}

// https://decomp.me/scratch/ky8E7
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800328E8);
void func_800328E8(Vector3D *targetPosition) {
    int transform[8];
    Vector3D targetOffset;

    targetOffset.x = 100;
    targetOffset.y = 0;
    targetOffset.z = 64;

    func_8001B9A4(&g_Spyro.m_RotationMatrix_0x30, &targetOffset, &targetOffset);
    func_8001BDCC(&targetOffset, &targetOffset, &g_Spyro.m_Position);
    func_8001BE00(&targetOffset, targetPosition, &targetOffset);

    func_8001B92C(transform, &g_Spyro.m_RotationMatrix_0x30);
    func_8001B9A4(transform, &targetOffset, &targetOffset);

    g_Spyro.m_Vector_0x184.y =
        func_8001B4B8(func_8001BA20(&targetOffset, 0), targetOffset.z, 1) & 0xFFF;

    if (g_Spyro.m_Vector_0x184.y >= 0x801) {
        g_Spyro.m_Vector_0x184.y -= 0x1000;
    }

    if (g_Spyro.m_Vector_0x184.y < -0x180) {
        g_Spyro.m_Vector_0x184.y = -0x180;
    }

    if (g_Spyro.m_Vector_0x184.y >= 0x181) {
        g_Spyro.m_Vector_0x184.y = 0x180;
    }

    g_Spyro.m_Vector_0x184.z = func_8001B4B8(targetOffset.x, targetOffset.y, 1) & 0xFFF;

    if (g_Spyro.m_Vector_0x184.z >= 0x801) {
        g_Spyro.m_Vector_0x184.z -= 0x1000;
    }

    if (g_Spyro.m_Vector_0x184.z < -0x200) {
        g_Spyro.m_Vector_0x184.z = -0x200;
    }

    if (g_Spyro.m_Vector_0x184.z >= 0x201) {
        g_Spyro.m_Vector_0x184.z = 0x200;
    }

    g_Spyro.m_0x20C |= 0x10000004;
}

// https://decomp.me/scratch/zm8aX
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032A90);
void func_80032A90(Vector3D *arg0) {
    func_8003305C(0xBB, arg0);
}

// https://decomp.me/scratch/9JfGE
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032AB4);
void func_80032AB4(void) {
    Vector3D collisionPosition;
    int collisionFlags = 0x80000;
    int *currentStatePtr;
    unsigned char *stateEntry;

    // Start with Spyro's position and apply the vertical offset.
    func_8001BDB0(&collisionPosition, &g_Spyro.m_Position);
    collisionPosition.z -= g_Spyro.m_0x270;

    // Perform the collision tests at the adjusted position.
    func_8004055C(&collisionPosition, 0x80, 1, 0, collisionFlags, 0);

    if (func_8003DC64(&collisionPosition, 0x80, 1, 0, collisionFlags, 0) != 0) {
        currentStatePtr = &D_8006AB94;

        if (func_8002B078(*currentStatePtr) == 3) {
            stateEntry = D_800673E8[*currentStatePtr & 0x3F];
            *(int *)(stateEntry + 4) |= collisionFlags;
        }
    }
}

// https://decomp.me/scratch/jtWfK
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032B94);
void func_80032B94(void) {
    int effectFlags;
    Vector3D effectPosition;

    // Select effect flags based on Spyro's state.
    if (g_Spyro.m_0x138 & 0x40000) {
        effectFlags = 0x600000;
    } else if (g_Spyro.m_0x138 & 0x20000) {
        effectFlags = 0x200000;
    } else {
        return;
    }

    // Calculate the effect position from Spyro's movement vector.
    func_8001BDB0(&effectPosition, &g_Spyro.m_Vector_0x88);
    func_8001BD48(&effectPosition, 3);
    func_8001BDCC(
        &effectPosition,
        &effectPosition,
        &g_Spyro.m_Position
    );

    // Apply the effect using the selected flags.
    func_8003CE38(&g_Spyro.m_Position, &effectPosition, 0, effectFlags, 0);
}

// https://decomp.me/scratch/Mff3m
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032C34);

// https://decomp.me/scratch/H6BJi
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032E74);
void func_80032E74(void) {
    int mode;
    int type;
    int status;
    int countdown;
    unsigned char state;

    mode = D_80067024;

    if (mode == 1) {
        D_80067178 = mode;
        return;
    }

    type = D_80066F90;

    if (type == 0x1A) {
        D_80066E78++;
    } else if (type == 0x2E) {
        D_80066E79++;
    } else if (type == 0x42) {
        state = *((unsigned char *)(*(void **)((char *)D_80066F14 + 0xB0)) + 6);

        if (state < 3) {
            D_80066E7A++;
        } else if (state < 4) {
            D_80066E7A++;
            D_80066E7B++;
        } else {
            D_80066E7A++;
            D_80066E7B++;
            D_80066E7C++;
        }
    }

    status = D_80069894;
    D_80061AAC = 0;

    if (status < 0) {
        countdown = D_8006712C - 1;

        g_Spyro.m_timer_0x258 = D_80061A8C;
        D_8006712C = countdown;

        if (countdown >= 0) {
            func_8004C1AC(&D_80067414);
            D_800698F8 = 1;
            g_Spyro.m_0x240 = 0;
        } else {
           func_8001A6F8();
        }
    } else {
        func_8004C1AC(&D_80067414);
    }
}

// https://decomp.me/scratch/gVXoj
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003305C);
void func_8003305C(int frameIndex, Vector3D *outputVector) {
    Vector3D blendVector;
    Vector3D decodedVector;
    Vector3D decodedSecondVector;
    int frameCount;
    int useSecondFrame;
    int blendWeight;
    int packedVector;

    frameCount = D_80066F24[0][2];
    useSecondFrame = 0;

    if (frameIndex >= frameCount) {
        useSecondFrame = 1;
        frameIndex -= frameCount;
    }

    func_800418C8(
        frameIndex,
        outputVector,
        g_Spyro.m_0x14,
        g_Spyro.m_animationFrame_0x16,
        useSecondFrame
    );

    blendWeight = D_80062868[g_Spyro.m_0x1C];

    if (blendWeight != 0) {
        func_800418C8(
            frameIndex,
            &blendVector,
            g_Spyro.m_0x15,
            g_Spyro.m_0x17,
            useSecondFrame
        );

        blendWeight = D_80062868[g_Spyro.m_0x1C];

        func_8001BE34(
            outputVector,
            outputVector,
            0x100 - blendWeight
        );

        blendWeight = D_80062868[g_Spyro.m_0x1C];

        func_8001BE34(
            &blendVector,
            &blendVector,
            blendWeight
        );

        func_8001BDCC(
            outputVector,
            outputVector,
            &blendVector
        );

        func_8001BD48(outputVector, 8);
    }

    if (useSecondFrame == 0) {
        func_8001B9A4(
            &g_Spyro.m_RotationMatrix_0x30,
            outputVector,
            outputVector
        );

        func_8001BDCC(
            outputVector,
            outputVector,
            &g_Spyro.m_Position
        );

        return;
    }

    packedVector = *(int *)(
        (((g_Spyro.m_animationFrame_0x16 * 5) << 2) +
        D_80066F24[g_Spyro.m_0x14]) + 0x1C
    );

    decodedVector.x = packedVector >> 21;
    decodedVector.y = (packedVector << 11) >> 21;
    decodedVector.z = (packedVector << 22) >> 21;

    blendWeight = D_80062868[g_Spyro.m_0x1C];

    if (blendWeight != 0) {
        packedVector = *(int *)(
            (((g_Spyro.m_0x17 * 5) << 2) +
            D_80066F24[g_Spyro.m_0x15]) + 0x1C
        );

        decodedSecondVector.x = packedVector >> 21;
        decodedSecondVector.y = (packedVector << 11) >> 21;
        decodedSecondVector.z = (packedVector << 22) >> 21;

        blendWeight = D_80062868[g_Spyro.m_0x1C];

        func_8001BE34(
            &decodedVector,
            &decodedVector,
            0x100 - blendWeight
        );

        blendWeight = D_80062868[g_Spyro.m_0x1C];

        func_8001BE34(
            &decodedSecondVector,
            &decodedSecondVector,
            blendWeight
        );

        func_8001BDCC(
            &decodedVector,
            &decodedVector,
            &decodedSecondVector
        );

        func_8001BD48(&decodedVector, 8);
    }

    func_8001B9A4(
        &g_Spyro.m_RotationMatrix_0x30,
        &decodedVector,
        &decodedVector
    );

    func_8001B9A4(
        &g_Spyro.m_RotationMatrix_0x19C,
        outputVector,
        outputVector
    );

    func_8001BDCC(
        outputVector,
        outputVector,
        &g_Spyro.m_Position
    );

    func_8001BDCC(
        outputVector,
        outputVector,
        &decodedVector
    );
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80033300);

// https://decomp.me/scratch/Ne6Jo
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800347A4);
void func_800347A4(void) {
    int movementSpeed;
    int vectorMagnitude;

    if (g_Spyro.m_0x20C & 0x8000) {
        return;
    }

    if (g_Spyro.m_0xC0 == 0) {
        g_Spyro.m_0x128 = g_Spyro.m_0x114;
    }

    switch (g_Spyro.m_0x50) {
    case 0:
    case 14:
        if (func_8002D9C4() == 0) {
            func_8002D7F8();
        }

        func_8002C0F4();
        g_Spyro.m_0xC4 = 0;
        func_8002CC88();
        g_Spyro.m_0x28 = 0;
        break;

    case 1:
    case 22:
        func_8002D9C4();
        func_8002C0F4();
        func_8002CC88();
        func_8002BE04();
        func_8002DB08(0xC00);

        if (g_Spyro.m_0xBC != 0) {
            movementSpeed = (g_Spyro.m_0xBC * 21) >> 8;
        } else {
            movementSpeed = g_Spyro.m_0xB0 << 2;
        }

        if (movementSpeed < 0x10) {
            movementSpeed = 0x10;
        }

        if (movementSpeed >= 0x61) {
            movementSpeed = 0x60;
        }

        func_8002E3F8(movementSpeed);
        g_Spyro.m_0x28 = 0;
        break;

    case 2:
        func_8002D9C4();
        func_8002C0F4();
        func_8002CC88();
        func_8002BE04();
        func_8002DB08(0xC00);
        g_Spyro.m_0x28 = 0;
        break;

    case 3:
        func_8002D9C4();
        func_8002C0F4();
        func_8002CC88();
        func_8002BE04();
        func_8002DB08(0xC00);

        if (D_800670FC != nullptr) {
            D_800670FC(1, 0x21, 0, 0);
        }

        g_Spyro.m_0x28 = 0;
        break;

    case 4:
        func_8002D9C4();
        func_8002C0F4();
        func_8002CC88();
        func_8002BE04();
        func_8002DB08(0xC00);

        if (D_800670FC != nullptr) {
            D_800670FC(1, 0x21, 0, 0);
        }

        g_Spyro.m_0x28 = 0;
        break;

    case 5:
        func_8002C0F4();
        func_8002CC88();
        func_8002BE04();

        if (g_Spyro.m_0x58 == 0xD) {
            func_8002D0F8();

            if (g_Spyro.m_Vector_0xA0.z < 0 &&
                g_Spyro.m_0x5C >= 4) {
                g_Spyro.m_0x54 =
                    (g_Spyro.m_0x54 & 0x80) | 1;
            } else if ((g_Spyro.m_0x54 & 0x80) == 0) {
                if ((D_800683A0 & 0x40) == 0) {
                    g_Spyro.m_0x54 = 2;
                }
            }

            if (g_Spyro.m_0x54 & 0x80) {
                if (g_Spyro.m_Position.z <= g_Spyro.m_0x14C) {
                    g_Spyro.m_0x54 &= ~0x80;
                }
            }
        } else {
            if (g_Spyro.m_Vector_0xA0.z < 0 &&
                g_Spyro.m_0x5C >= 4) {
                if ((unsigned int)(g_Spyro.m_0x54 - 3) < 2) {
                    g_Spyro.m_0x54 = 4;
                } else {
                    g_Spyro.m_0x54 = 1;
                }
            } else if (g_Spyro.m_0x54 == 0) {
                if ((D_800683A0 & 0x40) == 0 &&
                    g_Spyro.m_0x14C == 0) {
                    g_Spyro.m_0x54 = 2;
                }
            }
        }

        g_Spyro.m_0x28 = 0;
        break;

    case 12:
        func_8002D9C4();
        func_8002C0F4();
        func_8002CC88();

        if (g_Spyro.m_0xC0 != 0 && g_Spyro.m_0xC4 == 0) {
            vectorMagnitude = func_8001BA20(&g_Spyro.m_Vector_0xC8, 0);

            g_Spyro.m_0xEC = (signed char)func_8001B4B8(
                g_Spyro.m_Vector_0xC8.z,
                vectorMagnitude,
                0
            );
        }

        func_8002DB08(0xC00);
        func_80032B94();

        g_Spyro.m_0x28 = 0;

        if (func_80050B20(D_80067020[0x21], g_Spyro.m_0x264) == 0) {
            g_Spyro.m_0x264 = func_80050720(D_80067020[0x21], nullptr, 4);
            g_Spyro.m_0x268 = D_80067020[0x21];
        }
        break;

    case 6:
    case 7:
    case 13:
    case 31:
        func_8002C0F4();
        func_8002CC88();
        g_Spyro.m_0x28 = 0;
        break;

    case 15:
        func_8002C0F4();
        func_8002CC88();
        func_8002DB08(0xC00);
        g_Spyro.m_0x28 = 0;
        break;

    case 16:
    case 17:
    case 24:
        func_8002C0F4();
        func_8002CC88();
        func_8002BE04();
        g_Spyro.m_0x28 = 0;
        break;

    case 21:
        func_8002C0F4();
        func_8002CC88();
        func_8002BE04();
        func_80032B94();

        if (g_Spyro.m_0x58 == 9 && D_800670FC != nullptr) {
            D_800670FC(1, 9, 0, 0);
        }

        if (g_Spyro.m_Vector_0xA0.z < 0 &&
            g_Spyro.m_0x5C >= 4) {
            g_Spyro.m_0x54 = 1;
        } else if (g_Spyro.m_0x54 == 0 &&
                   (D_800683A0 & 0x40) == 0) {
            g_Spyro.m_0x54 = 2;
        }

        g_Spyro.m_0x28 = 0;
        break;

    case 46:
        func_8002C0F4();
        func_8002CC88();

        if (g_Spyro.m_0x54 == 1) {
            func_80032AB4();
        }

        g_Spyro.m_0x28 = 0;
        break;

    case 8:
    case 9:
    case 10:
    case 11:
    case 18:
    case 19:
    case 20:
    case 23:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    default:
        if (D_80067074 != nullptr) {
            D_80067074();
        }
        break;
    }

    if (g_Spyro.m_0xC0 != 0) {
        g_Spyro.m_0x114 = g_Spyro.m_0x128;
    }

    g_Spyro.m_0x105 = 0;
}

// https://decomp.me/scratch/dVZFf
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80034E0C);
void func_80034E0C(void) {
    int result;

    if ((unsigned int)(g_Spyro.m_0x58 - 0xB) < 2) {
        if (func_80050B20(D_80067020[6], g_Spyro.m_0x26C) == 0) {
            g_Spyro.m_0x26C = func_80050720(
                D_80067020[6],
                nullptr,
                4
            );
        }
    } else {
        if (func_80050B20(D_80067020[6], g_Spyro.m_0x26C) != 0) {
            func_80050A40(g_Spyro.m_0x26C);
            g_Spyro.m_0x26C = -1;
        }
    }

    if (g_Spyro.m_0x278 != g_Spyro.m_animationFrame_0x16) {
        switch (g_Spyro.m_0x14) {
        case 1:
            if (g_Spyro.m_animationFrame_0x16 == 5 || g_Spyro.m_animationFrame_0x16 == 13) {
                int surface = g_Spyro.m_0x114 >> 6;

                func_800506AC(nullptr, D_800602B4[D_80066F54][surface], 0);
                g_Spyro.m_0x278 = g_Spyro.m_animationFrame_0x16;
            }
            break;

        case 2:
            if (g_Spyro.m_animationFrame_0x16 == 7 ||
                g_Spyro.m_animationFrame_0x16 == 9 ||
                g_Spyro.m_animationFrame_0x16 == 0x11 ||
                g_Spyro.m_animationFrame_0x16 == 0) {
                int surface = g_Spyro.m_0x114 >> 6;

                func_800506AC(nullptr, D_800602B4[D_80066F54][surface], 0);
                g_Spyro.m_0x278 = g_Spyro.m_animationFrame_0x16;
            }
            break;

        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
            if (D_80066FC4 != nullptr) {
                D_80066FC4();
            }
            break;

        case 13:
            if (g_Spyro.m_animationFrame_0x16 == 2 || g_Spyro.m_animationFrame_0x16 == 5) {
                result = func_80050720(
                    D_80067020[0x12],
                    nullptr,
                    0
                );

                g_Spyro.m_0x278 = g_Spyro.m_animationFrame_0x16;

                if (result >= 0 && g_Spyro.m_animationFrame_0x16 == 5) {
                    func_80050CF4(result, 0xC00);
                    func_80050C64(result, 0xE00);
                }
            }
            break;

        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
            if (D_80066FC4 != nullptr) {
                D_80066FC4();
            }
            break;

        case 22:
            if (g_Spyro.m_animationFrame_0x16 == 2 || g_Spyro.m_animationFrame_0x16 == 12) {
                int surface = g_Spyro.m_0x114 >> 6;

                func_800506AC(nullptr, D_800602B4[D_80066F54][surface], 0);
                g_Spyro.m_0x278 = g_Spyro.m_animationFrame_0x16;
            }
            break;

        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
            if (D_80066FC4 != nullptr) {
                D_80066FC4();
            }
            break;

        case 31:
            break;

        default:
            if (D_80066FC4 != nullptr) {
                D_80066FC4();
            }
            break;
        }
    }

    if (g_Spyro.m_animationFrame_0x16 != g_Spyro.m_0x278) {
        g_Spyro.m_0x278 = -1;
    }
}

// https://decomp.me/scratch/lELxP
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800350D0);
void func_800350D0(int arg0) {
    
    if (g_Spyro.m_0x20C & 0x8000) {
        return;
    }

    D_80066F38 = &D_800683B0[arg0 << 4];

    switch (g_Spyro.m_0x50) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 7:
    case 12:
    case 13:
    case 14:
    case 15:
    case 22:
    case 31:
        func_8002DB8C(&g_Spyro.m_Vector_0xD4);
        break;

    case 5:
        if (g_Spyro.m_0x58 == 0xD) {
            func_8002E00C(&g_Spyro.m_Vector_0xE0);
        } else {
            func_8002DB8C(nullptr);
        }
        break;

    case 6:
    case 17:
    case 46:
        func_8002DB8C(nullptr);
        break;

    case 16:
    case 24:
        break;

    case 21:
        func_8002DED0(&g_Spyro.m_Vector_0x94);
        break;

    default:
        if (D_80067070 != nullptr) {
            D_80067070(arg0);
        }
        break;
    }

    g_Spyro.m_0x5C++;
}

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800351D8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80035D38);
