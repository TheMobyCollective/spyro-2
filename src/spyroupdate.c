#include "common.h"
#include "spyroupdate.h"
#include "camera.h"

extern void func_8001BB3C(Vector3D *arg0, int arg1);
extern void func_8001BCC4(Vector3D *arg0, int arg1, int arg2);
extern void func_8001BDB0(Vector3D *destination, Vector3D *source);
extern void func_8001BDCC(Vector3D *destination, Vector3D *vector1, Vector3D *vector2);

void func_8003305C(int frameIndex, Vector3D *outputVector);

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
        if ((g_Spyro.m_0xFC != 0) && (g_Spyro.m_0x258 >= 0)) {
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
                        -movementProjection,
                        adjustmentVector.y
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
                g_Spyro.m_0x258 = -1;
            } else if (g_Spyro.m_0x258 >= 0) {
                g_Spyro.m_0x258--;
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

            if (g_Spyro.m_0x258 < 0 || --g_Spyro.m_0x258 < 0) {
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

            if (g_Spyro.m_0x258 >= 0) {
                g_Spyro.m_0x258--;

                if (g_Spyro.m_0x258 >= 0) {
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

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B0B8);

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

//
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BB24);

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

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002C0F4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002CC88);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D0F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D328);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D7F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002D9C4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002DB08);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002DB8C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002DED0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E00C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E2BC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E304);

// https://decomp.me/scratch/oeHZZ
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E3F8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E440);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E568);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002E64C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002EB00);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002EBC8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002F08C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002F7A8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002FC20);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800308D4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80030A14);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80030A6C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80030C94);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800313E4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031468);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800315BC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031960);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031B94);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031E4C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80031EAC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800327F0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800328E8);

// https://decomp.me/scratch/zm8aX
//INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032A90);
void func_80032A90(Vector3D *arg0) {
    func_8003305C(0xBB, arg0);
}


INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032AB4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032B94);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032C34);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80032E74);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8003305C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80033300);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800347A4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80034E0C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800350D0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_800351D8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_80035D38);
