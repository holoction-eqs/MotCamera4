.class public abstract synthetic Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final _isSingleton(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static _values()[I
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getBegin(I)C
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x7b

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/16 v2, 0x5b

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getDebugMessage(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "No member resolution should be done on captured type, it used only during constraint system resolution"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "Scope for integer literal type (%s)"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "Error scope for erased receiver type"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "Scope for abbreviation %s"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "Scope for stub type %s"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "A scope for common supertype which is not a normal classifier"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string p0, "Scope for error type %s"

    return-object p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string p0, "Scope for unsupported type %s"

    return-object p0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string p0, "Error scope for class %s with arguments: %s"

    return-object p0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string p0, "Error resolution candidate for call %s"

    return-object p0

    :cond_9
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getEnd(I)C
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x7d

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/16 v2, 0x5d

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getIsCompatible(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p0, v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getIsStable(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getIsSynthesized(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getIsUpdatable(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    return v0

    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getKey(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x7f12046c

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const p0, 0x7f120445

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const p0, 0x7f120456

    return p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const p0, 0x7f120472

    return p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const p0, 0x7f12044c

    return p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const p0, 0x7f120429

    return p0

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMDiagonal(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    return v2

    :cond_5
    const/4 v1, 0x7

    if-ne p0, v1, :cond_6

    return v0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    return v2

    :cond_7
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMFshaderSourceId(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x7f110005

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const p0, 0x7f110007

    return p0

    :cond_1
    const/4 v0, 0x3

    const v1, 0x7f110013

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const p0, 0x7f110002

    return p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const p0, 0x7f110018

    return p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const p0, 0x7f11002c

    return p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const p0, 0x7f110024

    return p0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const p0, 0x7f110014

    return p0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const p0, 0x7f110027

    return p0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const p0, 0x7f11000c

    return p0

    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    const p0, 0x7f11000a

    return p0

    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    const p0, 0x7f11000b

    return p0

    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    const p0, 0x7f110026

    return p0

    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    const p0, 0x7f110022

    return p0

    :cond_e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    const p0, 0x7f11000e

    return p0

    :cond_f
    const/16 v0, 0x11

    if-ne p0, v0, :cond_10

    const p0, 0x7f110021

    return p0

    :cond_10
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMInvertX(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    return v2

    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    return v2

    :cond_5
    const/4 v1, 0x7

    if-ne p0, v1, :cond_6

    return v0

    :cond_6
    const/16 v1, 0x8

    if-ne p0, v1, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMInvertY(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x4

    if-ne p0, v2, :cond_3

    return v0

    :cond_3
    const/4 v2, 0x5

    if-ne p0, v2, :cond_4

    return v1

    :cond_4
    const/4 v2, 0x6

    if-ne p0, v2, :cond_5

    return v1

    :cond_5
    const/4 v2, 0x7

    if-ne p0, v2, :cond_6

    return v1

    :cond_6
    const/16 v1, 0x8

    if-ne p0, v1, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMPackageName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "com.motorola.imagertuning_u"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "com.motorola.imagertuning_V5"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "com.motorola.imagertuning_V2"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "com.motorola.imagertuning_V3"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "com.motorola.imagertuningbundle"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "com.motorola.imagertuning_V2_Bundle"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMRotation(I)F
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const/high16 p0, 0x43340000    # 180.0f

    return p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const/high16 p0, 0x43870000    # 270.0f

    return p0

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMVisibility(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    return v0

    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMVshaderSourceId(I)I
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x7f110006

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const p0, 0x7f110008

    return p0

    :cond_1
    const/4 v0, 0x3

    const v1, 0x7f110011

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const p0, 0x7f110012

    return p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const p0, 0x7f110003

    return p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const p0, 0x7f110019

    return p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const p0, 0x7f11002d

    return p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const p0, 0x7f110025

    return p0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const p0, 0x7f110015

    return p0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const p0, 0x7f110028

    return p0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const p0, 0x7f11000d

    return p0

    :cond_a
    const/16 v0, 0xc

    const v2, 0x7f110029

    if-ne p0, v0, :cond_b

    return v2

    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    return v2

    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    return v2

    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    const p0, 0x7f110023

    return p0

    :cond_e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    const p0, 0x7f11000f

    return p0

    :cond_f
    const/16 v0, 0x11

    if-ne p0, v0, :cond_10

    return v1

    :cond_10
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMX(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/high16 p0, -0x3db80000    # -50.0f

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/high16 p0, 0x42480000    # 50.0f

    return p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMX$1(I)F
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMXFactor(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x4

    if-ne p0, v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x5

    if-ne p0, v2, :cond_4

    return v0

    :cond_4
    const/4 v2, 0x6

    if-ne p0, v2, :cond_5

    return v0

    :cond_5
    const/4 v2, 0x7

    if-ne p0, v2, :cond_6

    return v0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    return v1

    :cond_7
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMY(I)F
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getMYFactor(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x4

    if-ne p0, v2, :cond_3

    return v0

    :cond_3
    const/4 v2, 0x5

    if-ne p0, v2, :cond_4

    return v0

    :cond_4
    const/4 v2, 0x6

    if-ne p0, v2, :cond_5

    return v1

    :cond_5
    const/4 v1, 0x7

    if-ne p0, v1, :cond_6

    return v0

    :cond_6
    const/16 v1, 0x8

    if-ne p0, v1, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getXSign(I)F
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getYSign(I)F
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic m()Ljava/util/Iterator;
    .locals 3

    .line 1
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lkotlinx/coroutines/CoroutineExceptionHandler;

    const/4 v1, 0x0

    new-instance v2, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;

    invoke-direct {v2}, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic m(ILjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->createParameterIsNullExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3
    const-class p1, Lkotlin/ExceptionsKt;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->sanitizeStackTrace(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 4
    throw p0
.end method

.method public static synthetic m(Lkotlin/coroutines/CoroutineContext$Element;)V
    .locals 0

    .line 5
    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static synthetic m$1()Ljava/util/Iterator;
    .locals 3

    .line 1
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lkotlinx/coroutines/internal/MainDispatcherFactory;

    const/4 v1, 0x0

    new-instance v2, Lkotlinx/coroutines/android/AndroidDispatcherFactory;

    invoke-direct {v2}, Lkotlinx/coroutines/android/AndroidDispatcherFactory;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic m$1(ILjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, " must not be null"

    .line 2
    invoke-static {p1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 4
    const-class p1, Lkotlin/ExceptionsKt;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->sanitizeStackTrace(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 5
    throw p0
.end method

.method public static synthetic name(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "IDLE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "INITIALIZED"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "PROCESSING"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "CANCEL"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "COMPLETE"

    return-object p0

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic stringValueOf(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "NO_UPDATE_AVAILABLE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "CAMERA_UPDATE_AVAILABLE"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "CAMERA_UPDATE_MANDATORY"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "CONTENT_UPDATE_AVAILABLE"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "CONTENT_UPDATE_MANDATORY"

    return-object p0

    :cond_4
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$1(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "DISABLE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "DEFAULT"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "ENABLE"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "CLICKED"

    return-object p0

    :cond_3
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$2(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "Immediately"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "FirstGlFrameDrawn"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "SetRepeatingComplete"

    return-object p0

    :cond_2
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$3(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "UNINITIALIZED"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "LAYOUT_ONLY"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "INITIALIZED"

    return-object p0

    :cond_2
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$4(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "UPDATE_AVAILABLE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "UPDATE_UNAVAILABLE"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "RETRY_UPDATE_FAILED"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "UPDATE_STATE"

    return-object p0

    :cond_3
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$5(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "INVARIANT"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "IN"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "OUT"

    return-object p0

    :cond_2
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$6(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "INFLEXIBLE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "FLEXIBLE_UPPER_BOUND"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "FLEXIBLE_LOWER_BOUND"

    return-object p0

    :cond_2
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$7(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "SUPERTYPE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "COMMON"

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$8(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "SUSPEND"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "DROP_OLDEST"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "DROP_LATEST"

    return-object p0

    :cond_2
    const-string p0, "null"

    return-object p0
.end method
