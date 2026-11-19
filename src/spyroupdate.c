#include "common.h"
#include "spyroupdate.h"
#include "camera.h"

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

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002AFDC);

// https://decomp.me/scratch/FRUhP
INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B078);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B0B8);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B228);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B36C);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B4E4);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B694);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002B9A0);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BB24);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BC68);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BD70);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BDBC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BE04);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002BFBC);

INCLUDE_ASM("asm/nonmatchings/spyroupdate", func_8002C038);

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
