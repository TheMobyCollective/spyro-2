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

// https://decomp.me/scratch/yNVyU
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001E270);
void func_8001E270(void) {
    short *anglePtr;
    CameraPosition *position;
    int pitchOffset;

    // Reset the halfword at Camera offset 0x44.
    anglePtr = &g_Camera.m_Rotation.x;
    *anglePtr = 0;

    // Prepare the reference used to derive position[0].yaw
    // from position[2].yaw, with 12-bit angle wrapping.
    g_Camera.m_Rotation.y =
        (g_Camera.m_CameraPositions[0].pos.elevation +
         g_Camera.m_CameraPositions[2].yaw) & 0xFFF;

    // Prepare the reference used to derive position[0].pitch
    // from position[2].pitch.
    pitchOffset = g_Camera.m_CameraPositions[2].pitch + 0x800;

    g_Camera.m_Rotation.z =
        (g_Camera.m_CameraPositions[0].pos.azimuth +
         pitchOffset) & 0xFFF;

    position = &g_Camera.m_CameraPositions[0];

    func_8001EFA8(position, position);
}

// https://decomp.me/scratch/1pOaS
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001E2E4);
void func_8001E2E4(CameraPosition *arg0) {
    Vector3D localPosition;
    int angleOffset;
    unsigned int spyroState;
    int *flagPtr;

    // Initialise camera flags.
    func_8001FA24();

    // Build the camera reference position from Spyro's data.
    func_8001BDB0(&g_Camera.m_0x60, &g_Spyro);

    angleOffset = g_Spyro.m_0x6C;
    g_Camera.m_0x6C = angleOffset;

    // Copy the supplied camera position, applying Spyro's angle offset.
    func_8001ECCC(
        &g_Camera.m_CameraPositions[1],
        arg0,
        angleOffset
    );

    // Copy position 1 into positions 2 and 0.
    func_8001ECCC(
        &g_Camera.m_CameraPositions[2],
        &g_Camera.m_CameraPositions[1],
        0
    );

    func_8001ECCC(
        &g_Camera.m_CameraPositions[0],
        &g_Camera.m_CameraPositions[1],
        0
    );

    // Reset the working camera position at offset 0xCC.
    func_8001F008(&g_Camera.m_CameraPositions[4]);

    // Calculate the camera-relative vector and resulting position.
    func_8001ED20(
        &g_Camera.m_0x70,
        &g_Camera.m_CameraPositions[2],
        &g_Camera.m_0x60
    );

    func_8001BDB0(&g_Camera.m_Position, &g_Camera.m_0x70);

    // Update the reference angles.
    func_8001E270();

    // Clear the threshold/limit region and subsequent temporary data.
    g_Camera.m_0x134 = 0;
    g_Camera.m_SpyroOffCenterFrames = 0;

    func_8001B3C8(&g_Camera.m_RequestedCameraMode, 0, 0x6C);
    func_8001B3C8(&g_Camera.m_0x1D4[0], 0, 0xC);

    func_800216D8(1);

    // Special handling for Spyro states 0xB and 0xC.
    spyroState = g_Spyro.m_0x58;

    if ((unsigned int)(spyroState - 0xB) < 2) {
        func_8001BDB0(&localPosition, &g_Camera.m_Position);

        flagPtr = &D_8006ABA4;
        *flagPtr = 0;

        localPosition.z -= 0x1000;

        func_8003CE94(&g_Camera.m_Position, &localPosition);

        if (*flagPtr != 0) {
            g_Camera.m_0x40 = 0;
        }
    } else {
        g_Camera.m_0x40 = 0;
    }

    // Clear the remaining camera state fields.
    g_Camera.m_0x146 = 0;
    g_Camera.m_0x13C = 0;
}

// https://decomp.me/scratch/JuBAj
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001E454);
void func_8001E454(void)
{
    Vector3D delta;
    Vector3D position;
    Vector3D previousPosition;
    Vector3D testPosition;

    int steps;
    int step;
    int j;
    int found;

    CollisionObject *object;

    found = 0;
    g_Camera.m_0x144 = 0;

    if (g_Camera.m_0x140 != 0) {
        func_8001BDB0(
            &g_Camera.m_Position,
            &g_Camera.m_0x70
        );
    } else {
        /* Calculate the displacement and number of intermediate steps. */
        func_8001BE00(
            &delta,
            &g_Camera.m_0x70,
            &g_Camera.m_Position
        );

        steps = func_8001BA20(&delta, 1);
        steps = steps / 240 + 1;

        if (steps >= 2) {
            delta.x /= steps;
            delta.y /= steps;
            delta.z /= steps;
        }

        func_8001BDB0(
            &position,
            &g_Camera.m_Position
        );

        for (step = 0; step < steps; step++) {
            func_8001BDCC(
                &position,
                &position,
                &delta
            );

            func_8001BDB0(
                &previousPosition,
                &position
            );

            j = 0;

            for (;;) {
                object = nullptr;

                if (g_Camera.m_0x141 == 0) {
                    object = func_8004055C(
                        &position,
                        0x100,
                        0,
                        0,
                        0,
                        0
                    );
                }

                if (object != nullptr) {
                    if ((object->m_0x53 & 0x80) != 0) {
                        object = nullptr;
                    } else {
                        func_8001BDB0(
                            &position,
                            &D_8006AB7C
                        );

                        found = 1;
                    }
                }

                if (func_8003DCC0(&position, 0x100) == 0) {
                    if (object == nullptr) {
                        break;
                    }
                } else {
                    func_8001BDB0(
                        &position,
                        &D_8006AB7C
                    );

                    g_Camera.m_0x144 = 1;
                }

                j++;

                if (j >= 6) {
                    break;
                }
            }

            if (j >= 6 && found != 0) {
                func_8001BDB0(
                    &position,
                    &previousPosition
                );

                for (j = 0; j < 6; j++) {
                    if (func_8003DCC0(&position, 0x100) == 0) {
                        break;
                    }

                    func_8001BDB0(
                        &position,
                        &D_8006AB7C
                    );

                    g_Camera.m_0x144 = 1;
                }
            }
        }

        func_8001BDB0(
            &g_Camera.m_Position,
            &position
        );
    }

    /* Test the resulting camera position against the collision geometry. */
    func_8001BDB0(
        &testPosition,
        &g_Camera.m_Position
    );

    testPosition.z += 0x80;

    testPosition.z = func_8003EE84(
        &testPosition,
        0x300
    );

    if (testPosition.z != 0 && D_8006ABA4 != 0) {
        g_Camera.m_0x146 = 1;
        g_Camera.m_0x13C = testPosition.z;
    } else {
        if (g_Camera.m_0x146 == 0) {
            g_Camera.m_0x13C = 0;
        }

        g_Camera.m_0x146 = 0;
    }

    if (g_Camera.m_0x13C != 0) {
        if (g_Camera.m_Position.z < g_Camera.m_0x13C) {
            g_Camera.m_0x40 = 0x800;
        } else {
            g_Camera.m_0x40 = 0;
        }
    }
}

// https://decomp.me/scratch/HFe14
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001E808);
void func_8001E808(void) {
    Vector3D target;
    Vector3D candidate;
    CameraPosition offset;
    CameraPosition *setting;
    int i;
    int mask;

    if (g_Camera.m_0x141 != 0 || D_800681C8 == 7) {
        g_Camera.m_0x134 = 0;
        g_Camera.m_SpyroOffCenterFrames = 0;
        return;
    }

    func_8001BDB0(&target, (Vector3D *)&g_Spyro);
    target.z -= 0x124;

    if (func_8001F618(&g_Camera.m_Position, &target, 1) == 0) {
        mask = 0;
        g_Camera.m_0x144 = 1;
        g_Camera.m_SpyroOffCenterFrames += D_80067018;

        if (g_Camera.m_SpyroOffCenterFrames >= 0x3D) {
            for (i = 0, setting = D_800618BC;
                 i < 5;
                 i++, setting++) {
                func_8001E2E4(setting);

                if (func_8003DCC0(&g_Camera.m_Position, 0x100) == 0) {
                    if (func_8001F618(&g_Camera.m_Position, &target, 1) != 0) {
                        return;
                    }
                }
            }

            return;
        }

        // First pass: test the configured offsets at scale 1.
        for (i = 0; i < 4; i++) {
            offset.pos.azimuth =
                (g_Camera.m_CameraPositions[0].pos.azimuth +
                 D_8006186C[i].pos.azimuth) & 0xFFF;

            if (offset.pos.azimuth >= 0x801) {
                offset.pos.azimuth -= 0x1000;
            }

            if (offset.pos.azimuth >= 0x401) {
                offset.pos.azimuth = 0x400;
            }

            // Use the interior alias with a CameraPosition-sized stride.
            offset.pos.elevation =
                (g_Camera.m_CameraPositions[0].pos.elevation +
                 D_8006186C[i].pos.elevation) & 0xFFF;

            offset.pos.radius =
                g_Camera.m_CameraPositions[0].pos.radius +
                D_8006186C[i].pos.radius;

            func_8001ED20(&candidate, &offset, &g_Camera.m_0x60);

            if (func_8003DCC0(&candidate, 0x100) == 0 &&
                func_8001F618(&g_Camera.m_Position, &candidate, 1) != 0) {
                mask |= 1 << i;

                if (func_8001F618(&candidate, &target, 1) != 0) {
                    func_8001EE18(&g_Camera.m_CameraPositions[1].pos,
                                  &candidate, &g_Camera.m_0x60);
                    g_Camera.m_0x134 = 0x10;
                    return;
                }
            }
        }

        if (mask == 0) {
            return;
        }

        // Second pass: test surviving offsets at scale 2.
        for (i = 0; i < 4; i++) {
            if ((mask & (1 << i)) == 0) {
                continue;
            }

            offset.pos.azimuth =
                (g_Camera.m_CameraPositions[0].pos.azimuth +
                 (D_8006186C[i].pos.azimuth << 1)) & 0xFFF;

            if (offset.pos.azimuth >= 0x801) {
                offset.pos.azimuth -= 0x1000;
            }

            if (offset.pos.azimuth >= 0x401) {
                offset.pos.azimuth = 0x400;
            }

            offset.pos.elevation =
                (g_Camera.m_CameraPositions[0].pos.elevation +
                 (D_8006186C[i].pos.elevation << 1)) & 0xFFF;

            offset.pos.radius =
                g_Camera.m_CameraPositions[0].pos.radius +
                (D_8006186C[i].pos.radius << 1);

            func_8001ED20(&candidate, &offset, &g_Camera.m_0x60);

            if (func_8003DCC0(&candidate, 0x100) == 0 &&
                func_8001F618(&g_Camera.m_Position, &candidate, 1) != 0) {
                if (func_8001F618(&candidate, &target, 1) != 0) {
                    func_8001EE18(&g_Camera.m_CameraPositions[1].pos,
                                  &candidate, &g_Camera.m_0x60);
                    g_Camera.m_0x134 = 0x10;
                    return;
                }
            } else {
                mask &= ~(1 << i);
            }
        }

        if (mask == 0) {
            return;
        }

        // Third pass: test surviving offsets at scale 4.
        for (i = 0; i < 4; i++) {
            if ((mask & (1 << i)) == 0) {
                continue;
            }

            offset.pos.azimuth =
                (g_Camera.m_CameraPositions[0].pos.azimuth +
                 (D_8006186C[i].pos.azimuth << 2)) & 0xFFF;

            if (offset.pos.azimuth >= 0x801) {
                offset.pos.azimuth -= 0x1000;
            }

            if (offset.pos.azimuth >= 0x401) {
                offset.pos.azimuth = 0x400;
            }

            offset.pos.elevation =
                (g_Camera.m_CameraPositions[0].pos.elevation +
                 (D_8006186C[i].pos.elevation << 2)) & 0xFFF;

            offset.pos.radius =
                g_Camera.m_CameraPositions[0].pos.radius +
                (D_8006186C[i].pos.radius << 2);

            func_8001ED20(&candidate, &offset, &g_Camera.m_0x60);

            if (func_8003DCC0(&candidate, 0x100) == 0 &&
                func_8001F618(&g_Camera.m_Position, &candidate, 1) != 0) {
                if (func_8001F618(&candidate, &target, 1) != 0) {
                    func_8001EE18(&g_Camera.m_CameraPositions[1].pos,
                                  &candidate, &g_Camera.m_0x60);
                    g_Camera.m_0x134 = 0x10;
                    return;
                }
            } else {
                mask &= ~(1 << i);
            }
        }
    } else {
        if (g_Camera.m_0x142 == 0) {
            g_Camera.m_SpyroOffCenterFrames = 0;
            return;
        }

        g_Camera.m_0x134 = 0;
        g_Camera.m_SpyroOffCenterFrames = 0;
        return;
    }
}

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

// https://decomp.me/scratch/MGyZN
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001F2E4);
void func_8001F2E4(int arg0) {
    int mode;
    int cameraAction;

    mode = g_Camera.m_CameraMode;

    if (mode == 9) {
        if (arg0 != 0) {
            func_8001BDB0(
                &g_Camera.m_0x184,
                &g_Spyro.m_Vector_0x00
            );

            func_8001ECCC(
                &g_Camera.m_0x170,
                &g_Camera.m_0x190,
                0
            );

            g_Camera.m_CameraSubstate = 0x80;
            g_Camera.m_CameraModeTimer = 0;
            return;
        }

        /* Initialise the camera for mode 9. */
        g_Camera.m_RequestedCameraMode = 0;

        func_8001BDB0(
            &g_Camera.m_0x60,
            &g_Spyro.m_Vector_0x00
        );

        g_Camera.m_SphericalFlipState = func_8001EE18(
            &g_Camera.m_CameraPositions[0].pos,
            &g_Camera.m_Position,
            &g_Camera.m_0x60
        );

        func_8001EFA8(
            &g_Camera.m_CameraPositions[0],
            &g_Camera.m_CameraPositions[0]
        );

        func_8001ECCC(
            &g_Camera.m_CameraPositions[2],
            &g_Camera.m_CameraPositions[0],
            0
        );

        cameraAction = D_80061468[g_Spyro.m_0x50];

        /*
         * Preserve this single-iteration loop: its structure is
         * required for the matching mode 9 dispatch.
         */
        do {
            if (cameraAction == 0) {
                cameraAction = 6;
                func_800216D8(cameraAction);
                return;
            }
        } while (0);

        func_800216D8(cameraAction);
        return;
    }

    if (mode != 10) {
        return;
    }

    if (arg0 == 0) {
        /* Initialise the camera for mode 10. Keep this block duplicated. */
        g_Camera.m_RequestedCameraMode = 0;

        func_8001BDB0(
            &g_Camera.m_0x60,
            &g_Spyro.m_Vector_0x00
        );

        g_Camera.m_SphericalFlipState = func_8001EE18(
            &g_Camera.m_CameraPositions[0].pos,
            &g_Camera.m_Position,
            &g_Camera.m_0x60
        );

        func_8001EFA8(
            &g_Camera.m_CameraPositions[0],
            &g_Camera.m_CameraPositions[0]
        );

        func_8001ECCC(
            &g_Camera.m_CameraPositions[2],
            &g_Camera.m_CameraPositions[0],
            0
        );

        cameraAction = D_80061468[g_Spyro.m_0x50];

        do {
            if (cameraAction != 0) {
                break;
            }

            cameraAction = 6;
        } while (0);

        func_800216D8(cameraAction);
        return;
    }

    if ((g_Camera.m_CameraSubstate & 0x80) != 0) {
        return;
    }

    g_Camera.m_CameraSubstate = 0x80;
    g_Camera.m_CameraModeTimer = 0;
}

// https://decomp.me/scratch/KXnuG - 100%
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F4A4);

// https://decomp.me/scratch/AssXr
INCLUDE_ASM("asm/nonmatchings/camera", func_8001F524);

INCLUDE_ASM("asm/nonmatchings/camera", func_8001F618);

// https://decomp.me/scratch/dzJBh
//INCLUDE_ASM("asm/nonmatchings/camera", func_8001F814);
void func_8001F814(void) {
    int input[2];
    CameraPosition *setting;

    switch (g_Camera.m_CameraMode) {
    case 1:
        setting = &D_80061560;

        if (func_8001BEBC(
                g_Spyro.m_0x6C,
                g_Camera.m_CameraPositions[0].pos.azimuth) < 0x280) {
            setting = &D_80061574;
        }
        break;

    case 2:
        setting = &D_80061588;
        break;

    case 3:
        setting = &D_800615C4;
        break;

    case 0:
    case 4:
    case 8:
    case 12:
    case 23:
        setting = &D_80061560;
        break;

    case 5:
        setting = &D_8006159C;
        break;

    case 6:
        func_800216D8(0);
        return;

    case 14:
        setting = &D_80061600;
        break;

    case 16:
        setting = &D_80061614;
        break;

    case 17:
    case 18:
        setting = &g_Camera.m_0x170;
        break;

    case 13:
        setting = &D_80061628;
        break;

    case 21:
        setting = &D_800616A0;
        break;

    case 22:
        setting = &D_800616B4;
        break;

    case 24:
        setting = &D_800616C8;
        break;

    case 25:
        setting = &D_800616DC;
        break;

    case 26:
        setting = &D_800616F0;
        break;

    case 15:
    case 29:
        setting = &D_800615EC;
        break;

    default:
        return;
    }

    func_8002B4E4(input, 0);

    // Apply only the first matching camera-control flag.
    if (D_800683A0 & 0x8) {
        setting->pos.radius -= input[1] >> 2;
    } else if (D_800683A0 & 0x4) {
        setting->pitch -= input[0] >> 3;
        setting->yaw += input[1] >> 3;
    } else if (D_800683A0 & 0x40) {
        setting->pos.azimuth += input[0] >> 3;
        setting->pos.elevation += input[1] >> 3;
    }
}

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
//INCLUDE_ASM("asm/nonmatchings/camera", func_80021558);
void func_80021558(void)
{
    int wrappedElevationDifference;

    switch (g_Camera.m_CameraMode) {
    case 6:
        /* Update the third camera position. */
        func_8001F008(&g_Camera.m_CameraPositions[3]);

        /*
         * Refresh the elevation difference when the relevant
         * camera flag is enabled or the camera offset is nonzero.
         */
        if ((g_Camera.m_CameraFlags & 0x4) != 0 ||
            g_Camera.m_0x40 != 0) {
            wrappedElevationDifference =
                (D_80061564 -
                 g_Camera.m_CameraPositions[2].pos.elevation) & 0xFFF;

            g_Camera.m_CameraPositions[3].pos.elevation =
                wrappedElevationDifference;

            if (wrappedElevationDifference >= 0x801) {
                g_Camera.m_CameraPositions[3].pos.elevation =
                    wrappedElevationDifference - 0x1000;
            }
        }

        /* Apply the explicit azimuth override when present. */
        if (g_Camera.m_0x150 != 0) {
            g_Camera.m_CameraPositions[3].pos.azimuth =
                g_Camera.m_0x150;
        }
        break;

    case 9:
    case 10:
    case 11:
        if (g_Camera.m_CameraSubstate == 0) {
            func_8001F008(&g_Camera.m_CameraPositions[3]);
            break;
        }

        if (g_Spyro.m_0x50 == 6 &&
            g_Spyro.m_0x54 == 1) {
            func_8001DB58();
            break;
        }

        /* This path handles the camera transition directly. */
        func_8001ECCC(
            &g_Camera.m_CameraPositions[2],
            &g_Camera.m_CameraPositions[1],
            0
        );
        return;

    default:
        /* Use the registered callback when one is available. */
        if (D_80067040 != nullptr) {
            D_80067040();
            return;
        }

        func_8001DB58();
        break;
    }

    func_8001DC6C();
}

// https://decomp.me/scratch/uJSzo
//INCLUDE_ASM("asm/nonmatchings/camera", func_800216D8);
void func_800216D8(int mode)
{
    int cameraFlags;
    int direction;
    int attempt;
    int collisionResult;
    int lookAngleOffset;

    Vector3D playerPosition; 
    Vector3D candidatePosition;
    Vector3D pathOffset;

    /*
     * Validate requests to switch into camera mode 6.
     */
    if (mode == 6) {
        if ((g_Camera.m_CameraFlags & 0x1) == 0 &&
            g_Camera.m_CameraMode != 8 &&
            g_Camera.m_0x154 != 3) {
            mode = 0;
        } else if (g_Spyro.m_0x58 == 13 ||
                   g_Camera.unk_0x5C != 0) {
            mode = 0;
        } else {
            cameraFlags = D_800683A0;

            if ((cameraFlags & 0xA) != 0 &&
                (cameraFlags & 0x5) != 0) {
                mode = 0;
            }
        }
    }

    g_Camera.m_0x147 = 0;
    D_80067114 = 0;

    if ((g_Spyro.m_0x210 & 0x2000) == 0) {
        g_Spyro.m_0x260 = 0;
    }

    switch (mode) {
    case 0:
    case 6:
        g_Camera.m_CameraSubstate = 0;

        g_Camera.m_0x140 = 0;
        g_Camera.m_0x141 = 0;
        g_Camera.m_0x142 = 0;
        g_Camera.m_0x145 = 0;

        func_8001BDB0(
            &g_Camera.m_0x60,
            &g_Spyro.m_Vector_0x00
        );

        g_Camera.m_0x6C = g_Spyro.m_0x6C;

        func_8001EE18(
            &g_Camera.m_CameraPositions[0].pos,
            &g_Camera.m_Position,
            &g_Spyro
        );

        func_8001EFA8(
            &g_Camera.m_CameraPositions[0],
            &g_Camera.m_CameraPositions[0]
        );

        func_8001ECCC(
            &g_Camera.m_CameraPositions[2],
            &g_Camera.m_CameraPositions[0],
            0
        );
        break;

    case 1:
        g_Camera.m_CameraSubstate = 0;

        g_Camera.m_0x140 = 0;
        g_Camera.m_0x141 = 0;
        g_Camera.m_0x142 = 1;
        g_Camera.m_0x145 = 0;

        func_8001BDB0(
            &g_Camera.m_0x60,
            &g_Spyro.m_Vector_0x00
        );

        g_Camera.m_0x6C = g_Spyro.m_0x6C;

        func_8001EE18(
            &g_Camera.m_CameraPositions[0].pos,
            &g_Camera.m_Position,
            &g_Spyro
        );

        func_8001EFA8(
            &g_Camera.m_CameraPositions[0],
            &g_Camera.m_CameraPositions[0]
        );

        func_8001ECCC(
            &g_Camera.m_CameraPositions[2],
            &g_Camera.m_CameraPositions[0],
            0
        );
        break;

    case 2:
    case 8:
        g_Camera.m_CameraSubstate = 0;

        g_Camera.m_0x140 = 0;
        g_Camera.m_0x141 = 0;
        g_Camera.m_0x142 = 1;
        g_Camera.m_0x145 = 0;
        g_Camera.unk_0x5C = 0;

        func_8001BDB0(
            &g_Camera.m_0x60,
            &g_Spyro.m_Vector_0x00
        );

        g_Camera.m_0x6C = g_Spyro.m_0x6C;

        func_8001EE18(
            &g_Camera.m_CameraPositions[0].pos,
            &g_Camera.m_Position,
            &g_Spyro
        );

        func_8001EFA8(
            &g_Camera.m_CameraPositions[0],
            &g_Camera.m_CameraPositions[0]
        );

        func_8001ECCC(
            &g_Camera.m_CameraPositions[2],
            &g_Camera.m_CameraPositions[0],
            0
        );
        break;

    case 7:
        g_Camera.m_CameraSubstate = 0;

        g_Camera.m_0x148 = 0;
        g_Camera.m_0x14C = 0;
        g_Camera.m_0x15C.y = 0;
        g_Camera.m_0x15C.z = 0;

        g_Camera.m_0x140 = 0;
        g_Camera.m_0x141 = 0;
        g_Camera.m_0x142 = 1;
        g_Camera.m_0x145 = 0;
        g_Camera.unk_0x5C = 0;

        func_8001BDB0(
            &g_Camera.m_0x60,
            &g_Spyro.m_Vector_0x00
        );

        g_Camera.m_0x6C = g_Spyro.m_0x6C;

        func_8001EE18(
            &g_Camera.m_CameraPositions[0].pos,
            &g_Camera.m_Position,
            &g_Spyro
        );

        func_8001EFA8(
            &g_Camera.m_CameraPositions[0],
            &g_Camera.m_CameraPositions[0]
        );

        func_8001ECCC(
            &g_Camera.m_CameraPositions[2],
            &g_Camera.m_CameraPositions[0],
            0
        );
        break;

    case 9:
    case 11:
        g_Camera.m_CameraSubstate = 0;

        g_Camera.m_0x134 = 0;
        g_Camera.m_SpyroOffCenterFrames = 0;
        g_Camera.m_0x140 = 1;
        g_Camera.m_0x141 = 1;
        g_Camera.unk_0x5C = 0;
        break;

    case 10:
        if ((g_Camera.m_0x1B4 & 0x2) != 0) {
            g_Camera.m_CameraSubstate = 3;

            func_8001BDB0(
                &g_Camera.m_0x1B8,
                &g_Camera.m_Position
            );

            g_Camera.m_0x145 = 1;
            g_Camera.m_0x1C4.x = g_Camera.m_Rotation.x;
            g_Camera.m_0x1C4.y = g_Camera.m_Rotation.y;
            g_Camera.m_0x1C4.z = g_Camera.m_Rotation.z;
        } else if ((unsigned int)(g_Camera.m_CameraMode - 9) >= 2) {
            g_Camera.m_CameraSubstate = 0;
        }

        g_Camera.m_0x134 = 0;
        g_Camera.m_SpyroOffCenterFrames = 0;
        g_Camera.m_0x140 = 1;
        g_Camera.m_0x141 = 1;
        g_Camera.unk_0x5C = 0;
        break;

    case 18: 
        g_Camera.m_CameraSubstate = 0;
        g_Camera.m_0x140 = 0;
        g_Camera.m_0x141 = 1;
        g_Camera.m_0x142 = 1;
        g_Camera.m_0x145 = 0;
        g_Camera.unk_0x5C = 0;        
        
        pathOffset.x =
            (D_80061C58[D_80066F78[0x46]] * 13) >> 5;
        pathOffset.y =
            (D_80061BD8[D_80066F78[0x46]] * 13) >> 5;
        pathOffset.z = 0x164;

        func_8001BDCC(
            &pathOffset,
            &pathOffset,
            (Vector3D *)(D_80066F78 + 0xC)
        );

        collisionResult = func_8003EE84(
            &pathOffset,
            0x800
        );

        pathOffset.z = collisionResult;

        if (collisionResult != 0) {
            pathOffset.z += 0x164;
        } else {
            func_8001BDB0(
                &pathOffset,
                &g_Spyro.m_Vector_0x00
            );
        }

        func_8001BDB0(
            &playerPosition,
            &g_Spyro.m_Vector_0x00
        );

        playerPosition.z -= 0x124;
        
        lookAngleOffset = (D_80066F78[0x46] << 4) + 0x800;

        direction =
            (g_Camera.m_CameraPositions[0].pos.azimuth -
             lookAngleOffset) & 0xFFF;

        if (direction >= 0x801) {
            direction -= 0x1000;
        }

        direction = (unsigned int)direction >> 31;
        
        for (attempt = 0; attempt < 2; attempt++) {
            func_8001ECCC(
                &g_Camera.m_CameraPositions[1],
                &D_8006163C[direction],
                lookAngleOffset
            );

            func_8001ED20(
                &candidatePosition,
                &g_Camera.m_CameraPositions[1],
                &pathOffset
            );

            collisionResult = func_8003DCC0(
                &candidatePosition,
                0x100
            );

            if (collisionResult == 0 &&
                func_8001F618(
                    &g_Camera.m_Position,
                    &candidatePosition,
                    0
                ) != 0 &&
                func_8001F618(
                    &candidatePosition,
                    &pathOffset,
                    0
                ) != 0) {
                break;
            }

            direction = 1 - direction;
        }

        if (attempt == 2) {
            direction = 2;
        }

        if (D_80066F5C >= 0) {
            direction = D_80066F5C;
        }

        D_80066F5C = direction;

        func_8001BDB0(
            &g_Camera.m_0x60,
            &g_Spyro.m_Vector_0x00
        );

        g_Camera.m_0x6C = g_Spyro.m_0x6C;

        func_8001ECCC(
            &g_Camera.m_0x170,
            &D_8006163C[D_80066F5C],
            0
        );

        func_8001EE18(
            &g_Camera.m_CameraPositions[0].pos,
            &g_Camera.m_Position,
            &g_Spyro
        );

        func_8001EFA8(
            &g_Camera.m_CameraPositions[0],
            &g_Camera.m_CameraPositions[0]
        );

        func_8001ECCC(
            &g_Camera.m_CameraPositions[2],
            &g_Camera.m_CameraPositions[0],
            0
        );
        break;

    default:
        if (D_800670AC != nullptr) {
            D_800670AC(mode);
        }
        break;
    }

    g_Camera.m_CameraMode = mode;
    g_Camera.m_CameraModeTimer = 0;
    g_Camera.m_0x154 = 0;
}

// https://decomp.me/scratch/lzpbq
//INCLUDE_ASM("asm/nonmatchings/camera", func_80021DC0);
void func_80021DC0(void) {
    int mode;
    int expectedMode;
    int newSubstate;

    switch (g_Camera.m_CameraMode) {
    case 0:
        if (g_Camera.m_RequestedCameraMode != 0) {
            func_800216D8(g_Camera.m_RequestedCameraMode);
            return;
        }

        if ((D_800683A0 & 0x10) != 0 &&
            g_Spyro.m_0x1C1 != 0) {
            func_800216D8(7);
            return;
        }

        if ((D_800683A4 & 0xF) != 0) {
            if ((D_800683A0 & 0xA) != 0 &&
                (D_800683A0 & 0x5) != 0 &&
                g_Spyro.m_0x240 == 0) {
                func_800216D8(8);
                return;
            }
        }

        mode = g_Camera.m_CameraMode;
        expectedMode = D_80061468[g_Spyro.m_0x50];

        if (mode != expectedMode) {
            func_800216D8(expectedMode);
            return;
        }

        if (g_Camera.m_0x154 == 3) {
            func_800216D8(6);
            g_Camera.m_CameraSubstate = 1;
            return;
        }

        if ((g_Camera.m_CameraFlags & 1) == 0) {
            return;
        }

        if (g_Camera.m_0x130 >= 0x400) {
            return;
        }

        if (g_Camera.m_0x134 != 0) {
            return;
        }

        if (g_Camera.unk_0x5C != 0) {
            return;
        }

        if (g_Camera.m_CameraSubstate == 1 ||
            g_Camera.m_CameraSubstate == 2) {
            return;
        }

        func_800216D8(6);
        return;

    case 1:
        if (g_Camera.m_RequestedCameraMode != 0) {
            func_800216D8(g_Camera.m_RequestedCameraMode);
            return;
        }

        if ((D_800683A0 & 0x10) != 0 &&
            g_Spyro.m_0x1C1 != 0) {
            func_800216D8(7);
            return;
        }

        if ((D_800683A4 & 0xF) != 0) {
            if ((D_800683A0 & 0xA) != 0 &&
                (D_800683A0 & 0x5) != 0 &&
                g_Spyro.m_0x240 == 0) {
                func_800216D8(8);
                return;
            }
        }

        mode = g_Camera.m_CameraMode;
        expectedMode = D_80061468[g_Spyro.m_0x50];

        if (mode == expectedMode) {
            return;
        }

        if (expectedMode == 0) {
            func_800216D8(6);
        } else {
            func_800216D8(expectedMode);
        }

        return;

    case 2:
        if (g_Camera.m_RequestedCameraMode != 0) {
            func_800216D8(g_Camera.m_RequestedCameraMode);
            return;
        }

        mode = g_Camera.m_CameraMode;
        expectedMode = D_80061468[g_Spyro.m_0x50];

        if (mode == expectedMode) {
            return;
        }

        if (expectedMode != 0) {
            func_800216D8(expectedMode);
        } else {
            func_800216D8(6);
        }

        return;

    /*
     * Keep mode 7 before mode 6 to preserve the target's
     * emitted code order.
     */
    case 7:
        if (g_Camera.m_RequestedCameraMode != 0) {
            if (g_Camera.m_RequestedCameraMode != 12 &&
                g_Camera.m_RequestedCameraMode != 13 &&
                g_Camera.m_RequestedCameraMode != 14 &&
                g_Camera.m_RequestedCameraMode != 16 &&
                g_Camera.m_RequestedCameraMode != 17 &&
                g_Camera.m_RequestedCameraMode != 18 &&
                g_Camera.m_RequestedCameraMode != 19 &&
                g_Camera.m_RequestedCameraMode != 20 &&
                g_Camera.m_RequestedCameraMode != 22 &&
                g_Camera.m_RequestedCameraMode != 26 &&
                g_Camera.m_RequestedCameraMode != 24) {
                func_800216D8(g_Camera.m_RequestedCameraMode);
            }
        }

        if (g_Spyro.m_0x1C1 == 0) {
            g_Spyro.m_0x260 = 0;
            expectedMode = D_80061468[g_Spyro.m_0x50];

            D_80067114 = 0;

            func_800216D8(expectedMode);
            return;
        }

        if ((D_800683A0 & 0x10) == 0 &&
            ((D_800683A0 & 0xA) == 0 ||
             (D_800683A0 & 0x5) == 0)) {

            /* Substate-progression path. */
            {
                int *substate = &g_Camera.m_CameraSubstate;

                if (*substate == 3) {
                    *substate = 4;
                    g_Camera.m_CameraModeTimer = 0;
                    return;
                }

                if (*substate == 4) {
                    if (g_Spyro.m_0x16C == *substate) {
                        if (g_Camera.m_CameraModeTimer >= 0xE) {
                            g_Camera.m_CameraModeTimer = 0xD;
                        }

                        return;
                    }

                    if (g_Camera.m_CameraModeTimer < 0x10) {
                        return;
                    }
                }

                D_80067114 = 0;
                g_Spyro.m_0x260 = 0;

                func_800216D8(0);

                *substate = 2;
                return;
            }
        }

        /* Shared flag-handling path. */
        if (g_Camera.m_CameraSubstate == 4) {
            g_Camera.m_CameraSubstate = 3;
            return;
        }

        if (g_Camera.m_0x147 == 0) {
            return;
        }

        if (g_Spyro.m_0x1D8 != 0) {
            return;
        }

        if (g_Spyro.m_0x1DC != 0) {
            return;
        }

        if (g_Spyro.m_0x1E4 != 0) {
            return;
        }

        if (D_800698BB != 0) {
            return;
        }

        D_80067114 = 0;
        g_Spyro.m_0x260 = 0;
        g_Camera.m_0x147 = 0;
        return;

    case 6:
        if (g_Camera.m_RequestedCameraMode != 0 &&
            g_Camera.m_RequestedCameraMode != 17) {
            func_800216D8(g_Camera.m_RequestedCameraMode);
            return;
        }

        if ((D_800683A0 & 0x10) != 0 &&
            g_Spyro.m_0x1C1 != 0) {
            func_800216D8(7);
            return;
        }

        if ((D_800683A4 & 0xF) != 0) {
            if ((D_800683A0 & 0xA) != 0 &&
                (D_800683A0 & 0x5) != 0 &&
                g_Spyro.m_0x240 == 0) {
                func_800216D8(8);
                return;
            }
        }

        expectedMode = D_80061468[g_Spyro.m_0x50];

        if (expectedMode != 0) {
            func_800216D8(expectedMode);
            return;
        }

        if (g_Camera.m_0x134 != 0) {
            func_800216D8(0);
            return;
        }

        if (g_Camera.m_CameraSubstate != 1 &&
            g_Camera.m_CameraModeTimer >= 0x3C) {
            if (g_Camera.m_RequestedCameraMode == 17) {
                func_800216D8(17);
            } else {
                func_800216D8(0);
            }

            g_Camera.m_CameraSubstate = 1;
            return;
        }

        if ((g_Camera.m_CameraFlags & 1) == 0 &&
            g_Camera.m_CameraSubstate != 1) {
            func_800216D8(0);
            return;
        }

        if (g_Camera.unk_0x5C != 0) {
            func_800216D8(0);
            return;
        }

        if (g_Camera.m_0x154 != 3) {
            return;
        }

        g_Camera.m_CameraSubstate = 1;
        return;

    case 8:
        if (g_Camera.m_0x144 != 0) {
            func_800216D8(7);
        }

        if (g_Camera.m_0x130 < 0x1000) {
            func_800216D8(0);
        }

        return;

    case 9:
        if (g_Camera.m_CameraSubstate == 0x82) {
            g_Camera.m_RequestedCameraMode = 0;
            expectedMode = D_80061468[g_Spyro.m_0x50];

            func_800216D8(expectedMode);
        }

        return;

    case 10:
        if (g_Camera.m_CameraSubstate == 0x82) {
            g_Camera.m_RequestedCameraMode = 0;
            expectedMode = D_80061468[g_Spyro.m_0x50];

            func_800216D8(expectedMode);
            return;
        }

        if ((g_Camera.m_0x1B4 & 8) == 0) {
            return;
        }

        if (g_Camera.m_0x1A8 < g_Camera.m_0x1A4->m_SampleCount - 1) {
            return;
        }

        g_Camera.m_RequestedCameraMode = 0;
        expectedMode = D_80061468[g_Spyro.m_0x50];

        func_800216D8(expectedMode);
        D_80067100 = 0;
        return;

    case 11:
        if (g_Camera.m_RequestedCameraMode == 0) {
            expectedMode = D_80061468[g_Spyro.m_0x50];

            func_800216D8(expectedMode);
            return;
        }

        if (g_Camera.m_RequestedCameraMode != 9) {
            return;
        }

        newSubstate = (D_80066F68 >= 0x80) ? 0x10 : 0;

        func_800216D8(9);
        g_Camera.m_CameraModeTimer = newSubstate;
        return;

    case 18:
        if (g_Camera.m_RequestedCameraMode != 0 &&
            g_Camera.m_RequestedCameraMode != g_Camera.m_CameraMode) {
            func_800216D8(g_Camera.m_RequestedCameraMode);
            return;
        }

        if (D_800681C8 == 1) {
            return;
        }

        g_Camera.m_RequestedCameraMode = 0;
        expectedMode = D_80061468[g_Spyro.m_0x50];

        func_800216D8(expectedMode);
        return;

    /* These modes, and out-of-range modes, use the callback. */
    case 3:
    case 4:
    case 5:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    default:
        if (D_80067014 != 0) {
            D_80067014();
        }

        return;
    }
}